VERSION 5.00
Begin VB.Form rFaRepView
  Caption = "Financ Report"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin PictureBox PictParameter
    BackColor = &HFFC0FF&
    Left = 0
    Top = 0
    Width = 6930
    Height = 3090
    TabIndex = 7
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    FillStyle = 0
    AutoSize = -1  'True
    BorderStyle = 0 'None
    TabStop = 0   'False
    Align = 3 'Align Left
    Begin MainCtrl TopCtrl1
      Left = 180
      Top = 6990
      Width = 375
      Height = 345
      Visible = 0   'False
      TabIndex = 71
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HC0FFFF&
      ForeColor = &H80000012&
      Left = 1860
      Top = 90
      Width = 690
      Height = 240
      Visible = 0   'False
      TabIndex = 70
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 1
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 240
      Top = 1845
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 65
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
    Begin CheckBox Check1
      Caption = "All"
      Index = 2
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 5010
      Top = 1830
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 64
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
    Begin TextBox TxtSearch
      BackColor = &H0&
      ForeColor = &HFFFFFF&
      Left = 1185
      Top = 2355
      Width = 2055
      Height = 240
      Visible = 0   'False
      TabIndex = 63
      BorderStyle = 0 'None
      HideSelection = 0   'False
      Appearance = 0 'Flat
    End
    Begin PictureBox Pic
      BackColor = &H800000&
      Left = 120
      Top = 9315
      Width = 11820
      Height = 435
      Enabled = 0   'False
      TabIndex = 61
      ScaleMode = 1
      AutoRedraw = False
      FontTransparent = True
      BorderStyle = 0 'None
      TabStop = 0   'False
      Begin Label LblTitle
        BackColor = &H0&
        ForeColor = &HC0C0FF&
        Left = 7230
        Top = 0
        Width = 4470
        Height = 315
        TabIndex = 62
        Alignment = 1 'Right Justify
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
        Appearance = 0 'Flat
      End
    End
    Begin CommandButton BTNPRINT
      Caption = "Windows &Print"
      Index = 0
      BackColor = &HC0C0C0&
      Left = 4635
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 60
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
    End
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      BackColor = &HC0C0C0&
      Left = 6255
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 59
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rFaRepView.frx":0
      ToolTipText = "Exit Form"
    End
    Begin TextBox TXTE_DATE
      Left = 9930
      Top = 2760
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 58
      Appearance = 0 'Flat
    End
    Begin TextBox TXTS_DATE
      Left = 9945
      Top = 3090
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 57
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin Frame FrmList
      Left = 7020
      Top = 210
      Width = 4560
      Height = 1830
      Visible = 0   'False
      TabIndex = 55
      BorderStyle = 0 'None
      Begin ListView ListView
        Left = 0
        Top = 0
        Width = 4560
        Height = 1830
        TabStop = 0   'False
        TabIndex = 56
      End
    End
    Begin TextBox TXTACC_CODE
      Left = 9930
      Top = 2100
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 54
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin TextBox TXTACC_CODE1
      Left = 9930
      Top = 2430
      Width = 1395
      Height = 315
      Visible = 0   'False
      TabIndex = 53
      TabStop = 0   'False
      Appearance = 0 'Flat
    End
    Begin CommandButton BTNPRINT
      Caption = "&Dos Print"
      Index = 1
      BackColor = &HC0C0C0&
      Left = 3015
      Top = 6090
      Width = 1620
      Height = 375
      TabIndex = 52
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Print Report"
    End
    Begin CommandButton BtnParam
      Caption = "Parameters"
      BackColor = &HC0C0C0&
      Left = 0
      Top = 0
      Width = 1305
      Height = 375
      Visible = 0   'False
      TabIndex = 51
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DownPicture = "rFaRepView.frx":3132
      ToolTipText = "Print Report"
    End
    Begin CheckBox Check1
      Caption = "All"
      Index = 3
      BackColor = &HFF8080&
      ForeColor = &HFFFF&
      Left = 5085
      Top = 3570
      Width = 870
      Height = 195
      Visible = 0   'False
      TabIndex = 50
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
    Begin TextBox TxtDetails
      BackColor = &HE0E0E0&
      Left = 210
      Top = 4005
      Width = 4980
      Height = 735
      Visible = 0   'False
      TabIndex = 49
      MultiLine = -1  'True
      TabStop = 0   'False
      MaxLength = 255
      Locked = -1  'True
      Appearance = 0 'Flat
    End
    Begin Frame FrDetail
      BackColor = &HFF8080&
      ForeColor = &H80000008&
      Left = 1275
      Top = 4860
      Width = 8160
      Height = 4335
      Visible = 0   'False
      TabIndex = 11
      Appearance = 0 'Flat
      BorderStyle = 0 'None
      Begin TextBox TEXT
        Index = 6
        Left = 1725
        Top = 1305
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "No"
        TabIndex = 26
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 4
        Left = 1725
        Top = 1005
        Width = 4440
        Height = 285
        Visible = 0   'False
        TabIndex = 25
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 3
        Left = 1725
        Top = 705
        Width = 4440
        Height = 285
        Visible = 0   'False
        TabIndex = 24
        BorderStyle = 0 'None
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 2
        Left = 4695
        Top = 1305
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 23
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 1
        Left = 1725
        Top = 405
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 22
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 0
        Left = 1725
        Top = 105
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "0"
        TabIndex = 21
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        Appearance = 0 'Flat
      End
      Begin TextBox TEXT
        Index = 5
        Left = 4695
        Top = 1605
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "10"
        TabIndex = 20
        BorderStyle = 0 'None
        Alignment = 1 'Right Justify
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 7
        Left = 1725
        Top = 1605
        Width = 1395
        Height = 285
        Visible = 0   'False
        Text = "No"
        TabIndex = 19
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin CommandButton BtnClose
        Caption = "Close"
        BackColor = &HC0C0C0&
        Left = 6360
        Top = 840
        Width = 1620
        Height = 375
        TabIndex = 18
        BeginProperty Font
          Name = "Arial"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        DownPicture = "rFaRepView.frx":6264
        ToolTipText = "Print Report"
      End
      Begin TextBox TEXT
        Index = 8
        Left = 1245
        Top = 105
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 17
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 9
        Left = 1245
        Top = 405
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 16
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 10
        Left = 4230
        Top = 1305
        Width = 330
        Height = 285
        Visible = 0   'False
        Text = ">="
        TabIndex = 15
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 11
        Left = 4770
        Top = 105
        Width = 990
        Height = 285
        Visible = 0   'False
        Text = "Yes"
        TabIndex = 14
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 12
        Left = 4770
        Top = 405
        Width = 2610
        Height = 285
        Visible = 0   'False
        TabIndex = 13
        BorderStyle = 0 'None
        MaxLength = 20
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin TextBox TEXT
        Index = 13
        Left = 6795
        Top = 105
        Width = 990
        Height = 285
        Visible = 0   'False
        Text = "Yes"
        TabIndex = 12
        BorderStyle = 0 'None
        MaxLength = 5
        Appearance = 0 'Flat
        ToolTipText = "Enter the Interest Rate."
      End
      Begin SSTab SSTab1
        Left = 45
        Top = 1995
        Width = 8070
        Height = 2310
        Visible = 0   'False
        TabIndex = 27
        Begin TextBox TxtFooter
          Index = 0
          Left = -74985
          Top = 465
          Width = 7980
          Height = 330
          TabIndex = 37
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 1
          Left = -74985
          Top = 795
          Width = 7980
          Height = 330
          TabIndex = 36
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 2
          Left = -74985
          Top = 1125
          Width = 7980
          Height = 330
          TabIndex = 35
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 3
          Left = -74985
          Top = 1455
          Width = 7980
          Height = 330
          TabIndex = 34
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtFooter
          Index = 4
          Left = -74985
          Top = 1785
          Width = 7980
          Height = 330
          TabIndex = 33
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 0
          Left = 15
          Top = 465
          Width = 7980
          Height = 330
          TabIndex = 32
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 1
          Left = 15
          Top = 795
          Width = 7980
          Height = 330
          TabIndex = 31
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 2
          Left = 15
          Top = 1125
          Width = 7980
          Height = 330
          TabIndex = 30
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 3
          Left = 15
          Top = 1455
          Width = 7980
          Height = 330
          TabIndex = 29
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
        Begin TextBox TxtHeader
          Index = 4
          Left = 15
          Top = 1785
          Width = 7980
          Height = 330
          TabIndex = 28
          MaxLength = 75
          BeginProperty Font
            Name = "Courier New"
            Size = 9
            Charset = 0
            Weight = 400
            Underline = 0 'False
            Italic = 0 'False
            Strikethrough = 0 'False
          EndProperty
          Appearance = 0 'Flat
        End
      End
      Begin Label Label1
        Caption = "As Per Detail"
        Index = 3
        ForeColor = &H80000006&
        Left = 120
        Top = 1350
        Width = 1125
        Height = 195
        Visible = 0   'False
        TabIndex = 48
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
        Caption = "TxN.Amt.  "
        Index = 2
        ForeColor = &H80000006&
        Left = 3180
        Top = 1350
        Width = 915
        Height = 195
        Visible = 0   'False
        TabIndex = 47
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
        Caption = "Cr.Balance "
        Index = 1
        ForeColor = &H80000006&
        Left = 120
        Top = 450
        Width = 990
        Height = 195
        Visible = 0   'False
        TabIndex = 46
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
        Caption = "Dr.Balance"
        Index = 0
        ForeColor = &H80000006&
        Left = 120
        Top = 150
        Width = 960
        Height = 195
        Visible = 0   'False
        TabIndex = 45
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
      Begin Label Label5
        Caption = "Narr. Having"
        ForeColor = &H80000006&
        Left = 120
        Top = 750
        Width = 1095
        Height = 195
        Visible = 0   'False
        TabIndex = 44
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
      Begin Label Label6
        Caption = "Narr. Not Having"
        ForeColor = &H80000006&
        Left = 120
        Top = 1050
        Width = 1455
        Height = 195
        Visible = 0   'False
        TabIndex = 43
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
      Begin Label Label4
        Caption = "Interest"
        ForeColor = &H80000006&
        Left = 3180
        Top = 1650
        Width = 660
        Height = 195
        Visible = 0   'False
        TabIndex = 42
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
        Caption = "Narration in Detail"
        Index = 4
        ForeColor = &H80000006&
        Left = 120
        Top = 1650
        Width = 1560
        Height = 195
        Visible = 0   'False
        TabIndex = 41
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
        Caption = "Print Narration"
        Index = 5
        ForeColor = &H80000006&
        Left = 3360
        Top = 150
        Width = 1245
        Height = 195
        Visible = 0   'False
        TabIndex = 40
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
        Caption = "For Site"
        Index = 6
        ForeColor = &H80000006&
        Left = 3360
        Top = 450
        Width = 675
        Height = 195
        Visible = 0   'False
        TabIndex = 39
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
        Caption = "Print Vr.No"
        Index = 7
        ForeColor = &H80000006&
        Left = 5790
        Top = 150
        Width = 945
        Height = 195
        Visible = 0   'False
        TabIndex = 38
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
    Begin DataGrid DGSite
      Left = 6675
      Top = 4110
      Width = 4230
      Height = 3330
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 8
    End
End

Attribute VB_Name = "rFaRepView"

Private global_164 As Variant
Private global_162 As Integer
Private global_180 As Integer
Private global_130 As Integer
Private global_128 As Integer
Private global_142 As Integer
Private global_140 As Integer
Private global_144 As Variant
Private global_132 As Double

Private Sub btnExit_Click() 'E18B0C
  'Data Table: 58C0C8
  loc_E18B01: Me.Global.Unload Me
  loc_E18B09: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 '10C9554
  'Data Table: 58C0C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Variant
  Dim var_D0 As TextBox
  Dim var_CC As TextBox
  loc_10C926C: On Error Goto loc_10C952C
  loc_10C9286: If ((GRepFormName = "DayBook") Or (GRepFormName = "JournalBook")) Then
  loc_10C9298:   Me.DGSite.Visible = False
  loc_10C92B7:   If (Me.RecordCount > 0) Then
  loc_10C9313:     Set var_CC = Me.TxtGrid
  loc_10C9319:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(Val(CStr(Me.DGSite.Tag))), var_D0)
  loc_10C9321:     var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_10C9345:     Set var_B4 = Me.DGSite
  loc_10C935B:     var_EC = Val(CStr(var_B4.Tag))
  loc_10C939A:     Set var_CC = Me.TxtGrid
  loc_10C93A0:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(var_EC), var_D0, CStr(Me.Fields.Item("Name").Value))
  loc_10C93A8:     var_D0.Text = var_EC
  loc_10C93C8:   End If
  loc_10C93E2:   var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10C93F0:   Set var_B0 = Me.TxtGrid
  loc_10C93F6:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(var_EC), var_B4)
  loc_10C93FE:   var_B4.SetFocus
  loc_10C9415: Else
  loc_10C9424:   Me.DGSite.Visible = False
  loc_10C9443:   If (Me.RecordCount > 0) Then
  loc_10C9482:     Set var_B4 = Me.TEXT
  loc_10C9488:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_CC, CStr(Me.Fields.Item("Code").Value))
  loc_10C9490:     var_CC.Tag = var_EC
  loc_10C94C3:     var_B0 = Me.Fields.Item("Name")
  loc_10C94D4:     var_C8 = CStr(var_B0.Value)
  loc_10C94E2:     Set var_B4 = Me.TEXT
  loc_10C94E8:     Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_CC)
  loc_10C94F0:     var_CC.Text = var_C8
  loc_10C9506:   End If
  loc_10C9511:   Set var_A8 = Me.TEXT
  loc_10C9517:   Call 0.Method_DGSite_UnknownEvent_90 (CInt(&HC), var_B0)
  loc_10C951F:   var_B0.SetFocus
  loc_10C952B: End If
  loc_10C952B: Exit Sub
  loc_10C952C: ' Referenced from: 10C926C
  loc_10C9532: Call 0.Method_arg_50 (var_C8)
  loc_10C9547: Proc_183_57_104AA84(var_C8, "DGSite_Click")
  loc_10C9553: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) '1067710
  'Data Table: 58C0C8
  Dim var_88 As TextBox
  Dim var_9C As Double
  Dim var_8C As String
  Dim var_178 As String
  loc_10674B4: On Error Goto loc_10676E5
  loc_10674C2: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_10674DF:   var_9C = Val(Me.TxtSearch.Tag)
  loc_10674ED:   Set var_90 = var_94(CInt(var_9C))
  loc_10674F3:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_106751B:   Me.TxtSearch.Visible = False
  loc_1067523: End If
  loc_106752D: If (CLng(KeyCode) = &H2E) Then
  loc_106753D:   Me.TxtSearch.Text = vbNullString
  loc_1067545: End If
  loc_106755A: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_1067577:   var_9C = Val(Me.TxtSearch.Tag)
  loc_1067585:   Set var_90 = var_94(CInt(var_9C))
  loc_106758B:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_10675B3:   Me.TxtSearch.Visible = False
  loc_10675BB: End If
  loc_10675F6: If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_1067602:   Set var_88 = var_90(1)
  loc_1067608:   Call 0.Method_TxtSearch_KeyDown0 (TxtSearch.DispID_8001)
  loc_1067630:   Set var_94 = var_B0(1)
  loc_1067636:   Call 0.Method_TxtSearch_KeyDown0 (3, CVar(CLng(TxtSearch.DispID_A)))
  loc_1067649:   var_8C = CStr(TxtSearch.DispID_41)
  loc_106765C:   Set var_104 = var_108(1)
  loc_1067662:   Call 0.Method_TxtSearch_KeyDown0 (var_8C & vbCrLf)
  loc_106768A:   Set var_11C = var_120(1)
  loc_1067690:   Call 0.Method_TxtSearch_KeyDown0 (4, CVar(CLng(TxtSearch.DispID_A)))
  loc_10676B4:   Me.TxtDetails.Text = TxtSearch.DispID_8001 & CStr(TxtSearch.DispID_41)
  loc_10676E4: End If
  loc_10676E4: Exit Sub
  loc_10676E5: ' Referenced from: 10674B4
  loc_10676EB: Call 0.Method_arg_50 (var_8C)
  loc_10676F3: var_178 = "TxtSearch_KeyDown"
  loc_1067700: Proc_183_57_104AA84(var_8C)
  loc_106770C: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E524D4
  'Data Table: 58C0C8
  Dim var_98 As Double
  loc_E524BA: var_98 = Val(Me.TxtSearch.Tag)
  loc_E524C7: Call GridSel_UnknownEvent_C()
  loc_E524D2: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E3CEB8
  'Data Table: 58C0C8
  loc_E3CE99: Me.TxtSearch.Text = vbNullString
  loc_E3CEAD: Me.TxtSearch.Visible = False
  loc_E3CEB5: Exit Sub
  loc_E3CEB6: Set arg_5000 = 
End Sub

Private Sub TxtSearch_Click() 'ECA060
  'Data Table: 58C0C8
  Dim var_9C As Double
  loc_EC9FC0: On Error Goto loc_ECA037
  loc_EC9FD0: Me.TxtSearch.Text = vbNullString
  loc_EC9FE5: var_8C = Me.TxtSearch.Tag
  loc_EC9FF2: var_9C = Val(var_8C)
  loc_ECA000: Set var_90 = var_94(CInt(var_9C))
  loc_ECA006: Call 0.Method_TxtSearch_Click0 (var_9C)
  loc_ECA02E: Me.TxtSearch.Visible = False
  loc_ECA036: Exit Sub
  loc_ECA037: ' Referenced from: EC9FC0
  loc_ECA03D: Call 0.Method_arg_50 (var_8C)
  loc_ECA052: Proc_183_57_104AA84(var_8C, "TxtSearch_Click")
  loc_ECA05E: Exit Sub
End Sub

Private Sub TEXT_GotFocus(Index As Integer) '10F56CC
  'Data Table: 58C0C8
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_108 As TextBox
  Dim var_134 As Variant
  loc_10F53C0: On Error Goto loc_10F56A1
  loc_10F53C6: var_8A = Index
  loc_10F53D1: If Not (var_8A = CInt(&HA)) Then
  loc_10F53DC:   If Not (var_8A = CInt(9)) Then
  loc_10F53E7:     If (var_8A = CInt(8)) Then
  loc_10F53EA:     End If
  loc_10F53EA:   End If
  loc_10F53F7:   ReDim var_90(0 To 5)
  loc_10F540E:   var_90(0) = "="
  loc_10F541D:   var_90(1) = "<"
  loc_10F542C:   var_90(2) = "<="
  loc_10F543B:   var_90(3) = ">"
  loc_10F544A:   var_90(4) = ">="
  loc_10F5459:   var_90(5) = "<>"
  loc_10F5470:   global_164 = Array(var_90)
  loc_10F5496:   Set var_108 = Me.TEXT
  loc_10F54B0:   Set global_184 = Proc_183_37_EFE3E8(Me.ListView, var_108, Index, global_164)
  loc_10F54C4: Else
  loc_10F54CC:   If (var_8A = CInt(&HC)) Then
  loc_10F54EB:     Me.Recordset15.CursorLocation = 3
  loc_10F5502:     var_B0 = CVar(MemVar_1F921DC) 'Address
  loc_10F5513:     Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", var_B0, 0
  loc_10F5521:     CVarUnk
  loc_10F5526:     VerifyVarObj
  loc_10F552C:     Set var_104 = Me.DGSite
  loc_10F5532:     LateIdStAd
  loc_10F5594:     Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), Me.TEXT, New)
  loc_10F559C:     1 = var_108.Text
  loc_10F55B4:     If (-1 Or (var_124 = vbNullString)) Then
  loc_10F55B7:       Exit Sub
  loc_10F55B8:     End If
  loc_10F55C5:     Set var_104 = Me.TEXT
  loc_10F55CB:     Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124)
  loc_10F55D3:     6 = var_108.Text
  loc_10F55DB:     var_134 = CVar(var_124) 'String
  loc_10F5620:     If CBool(var_134 <> Me.Fields.Item("Name").Value) Then
  loc_10F5629:       Me.MoveFirst
  loc_10F564E:       Set var_104 = Me.TEXT
  loc_10F5654:       Call 0.Method_TEXT_GotFocus0 (Index, var_108, var_124, "Name =", 0)
  loc_10F565C:       1 = var_108.Text
  loc_10F566A:       Proc_183_9_EAA760(var_134, CVar(var_124), var_B0)
  loc_10F5680:       Me.Find CStr(global_164 & var_134), var_8A, 
  loc_10F5698:     End If
  loc_10F5698:   End If
  loc_10F5698: End If
  loc_10F569D: Set var_88 = Nothing
  loc_10F56A0: Exit Sub
  loc_10F56A1: ' Referenced from: 10F53C0
  loc_10F56A7: Call 0.Method_arg_50 (var_124)
  loc_10F56AF: var_14C = "Text_GotFocus"
  loc_10F56BC: Proc_183_57_104AA84(var_124)
  loc_10F56C8: Exit Sub
End Sub

Private Sub TEXT_KeyDown(KeyCode As Integer, Shift As Integer) '109F134
  'Data Table: 58C0C8
  Dim var_8C As Integer
  Dim var_90 As Frame
  Dim var_98 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  loc_109EEA4: On Error Goto loc_109F109
  loc_109EEAD: If (Shift = &HD) Then
  loc_109EEB8:   var_88 = "	"
  loc_109EEBE:   Proc_303_0_FB9B68(var_88)
  loc_109EEC6: End If
  loc_109EEC9: var_8C = KeyCode
  loc_109EED2: If Not (var_8C = 0) Then
  loc_109EEDB:   If Not (var_8C = 1) Then
  loc_109EEE4:     If (var_8C = 2) Then
  loc_109EEE7:     End If
  loc_109EEE7:   End If
  loc_109EEF1:   Set var_90 = Me.TEXT
  loc_109EEF7:   Call 0.Method_TEXT_KeyDown0 (KeyCode, var_94)
  loc_109EF12:   Proc_183_21_FA163C(var_94, Shift, &HA)
  loc_109EF21: Else
  loc_109EF27:   If (var_8C = 5) Then
  loc_109EF34:     Set var_90 = Me.TEXT
  loc_109EF3A:     Call 0.Method_TEXT_KeyDown0 (KeyCode, var_94, 2)
  loc_109EF4F:     Set var_98 = var_94
  loc_109EF55:     Proc_183_21_FA163C(var_98, Shift, 3)
  loc_109EF64:   Else
  loc_109EF6C:     If Not (var_8C = CInt(&HA)) Then
  loc_109EF77:       If Not (var_8C = CInt(9)) Then
  loc_109EF82:         If (var_8C = CInt(8)) Then
  loc_109EF85:         End If
  loc_109EF85:       End If
  loc_109EFA7:       var_A0 = Me.FrDetail.Left
  loc_109EFB9:       Set var_94 = Me.TEXT
  loc_109EFBF:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_98, var_A4)
  loc_109EFC7:       2 = var_98.Left
  loc_109EFD9:       var_AC = Me.FrDetail.Top
  loc_109EFEB:       Set var_B0 = Me.TEXT
  loc_109EFF1:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_109EFF9:       var_8C = var_B4.Top
  loc_109F00B:       Set var_BC = Me.TEXT
  loc_109F011:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_C0)
  loc_109F019:       var_C4 = var_C0.Height
  loc_109F02B:       Set var_C8 = Me.TEXT
  loc_109F031:       Call 0.Method_TEXT_KeyDown0 (KeyCode, var_CC)
  loc_109F039:       var_D0 = var_CC.Width
  loc_109F08C:       Proc_183_23_11A24A0(Me.FrmList, Me.ListView, Me.TEXT, KeyCode, Shift, arg_14)
  loc_109F0B7:     Else
  loc_109F0BF:       If (var_8C = CInt(&HC)) Then
  loc_109F0F8:         Proc_183_34_1305540(Me.DGSite, Me.TEXT, KeyCode, global_80, Shift, &HFF)
  loc_109F108:       End If
  loc_109F108:     End If
  loc_109F108:   End If
  loc_109F108: End If
  loc_109F108: Exit Sub
  loc_109F109: ' Referenced from: 109EEA4
  loc_109F10F: Call 0.Method_arg_50 (var_88, 1, CInt((var_A0 + var_A4)), CInt((((var_AC + var_B8) + var_C4) + CDbl(&H19))))
  loc_109F124: Proc_183_57_104AA84(var_88, "Text_KeyDown", CInt(var_D0))
  loc_109F130: Exit Sub
End Sub

Private Sub TEXT_KeyPress(KeyAscii As Integer) 'FE90C0
  'Data Table: 58C0C8
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_FE8EE4: On Error Goto loc_FE9097
  loc_FE8EEA: var_86 = KeyAscii
  loc_FE8EF3: If Not (var_86 = 0) Then
  loc_FE8EFC:   If Not (var_86 = 1) Then
  loc_FE8F05:     If (var_86 = 2) Then
  loc_FE8F08:     End If
  loc_FE8F08:   End If
  loc_FE8F12:   Set var_8C = Me.TEXT
  loc_FE8F18:   Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90)
  loc_FE8F33:   Proc_183_22_129AEBC(var_90, arg_10, &HA)
  loc_FE8F42: Else
  loc_FE8F48:   If (var_86 = 5) Then
  loc_FE8F55:     Set var_8C = Me.TEXT
  loc_FE8F5B:     Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90)
  loc_FE8F76:     Proc_183_22_129AEBC(var_90, arg_10, 3)
  loc_FE8F85:   Else
  loc_FE8F8B:     If Not (var_86 = 6) Then
  loc_FE8F94:       If Not (var_86 = 7) Then
  loc_FE8F9F:         If Not (var_86 = CInt(&HB)) Then
  loc_FE8FAA:           If (var_86 = CInt(&HD)) Then
  loc_FE8FAD:           End If
  loc_FE8FAD:         End If
  loc_FE8FAD:       End If
  loc_FE8FBA:       If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_FE8FCA:         Set var_8C = Me.TEXT
  loc_FE8FD0:         Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90, "No")
  loc_FE8FD8:         var_90.Text = 2
  loc_FE8FE6:         arg_10 = 0
  loc_FE8FEC:       Else
  loc_FE8FF9:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_FE9009:           Set var_8C = Me.TEXT
  loc_FE900F:           Call 0.Method_TEXT_KeyPress0 (KeyAscii, var_90, "Yes")
  loc_FE9017:           var_90.Text = arg_10
  loc_FE9025:           arg_10 = 0
  loc_FE902B:         Else
  loc_FE902D:           arg_10 = 0
  loc_FE9030:         End If
  loc_FE9030:       End If
  loc_FE9033:     Else
  loc_FE903B:       If (var_86 = CInt(&HC)) Then
  loc_FE905A:         If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_FE906C:           var_AC = "Name"
  loc_FE9087:           Proc_183_41_1459C78(Me.TEXT, KeyAscii, global_80, arg_10, var_AC)
  loc_FE9096:         End If
  loc_FE9096:       End If
  loc_FE9096:     End If
  loc_FE9096:   End If
  loc_FE9096: End If
  loc_FE9096: Exit Sub
  loc_FE9097: ' Referenced from: FE8EE4
  loc_FE909D: Call 0.Method_arg_50 (var_AC, 0, arg_10)
  loc_FE90B2: Proc_183_57_104AA84(var_AC, "TEXT_KeyPress", arg_10)
  loc_FE90BE: Exit Sub
End Sub

Private Sub TEXT_KeyUp(KeyCode As Integer, Shift As Integer) 'F82E7C
  'Data Table: 58C0C8
  Dim var_86 As Integer
  loc_F82D34: On Error Goto loc_F82E53
  loc_F82D3A: var_86 = KeyCode
  loc_F82D45: If Not (var_86 = CInt(8)) Then
  loc_F82D50:   If Not (var_86 = CInt(9)) Then
  loc_F82D5B:     If (var_86 = CInt(&HA)) Then
  loc_F82D5E:     End If
  loc_F82D5E:   End If
  loc_F82D80:   If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F82D91:     Call TEXT_KeyDown(KeyCode, global_160)
  loc_F82D96:   End If
  loc_F82DC2:   Proc_183_35_F29A04(Me.ListView, Me.TEXT, KeyCode, Shift)
  loc_F82DD5: Else
  loc_F82DDD:   If (var_86 = CInt(&HC)) Then
  loc_F82E03:     If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_F82E14:       Call TEXT_KeyDown(KeyCode, global_160)
  loc_F82E28:       var_B0 = "Name"
  loc_F82E43:       Proc_183_41_1459C78(Me.TEXT, KeyCode, global_80, Shift, var_B0)
  loc_F82E52:     End If
  loc_F82E52:   End If
  loc_F82E52: End If
  loc_F82E52: Exit Sub
  loc_F82E53: ' Referenced from: F82D34
  loc_F82E59: Call 0.Method_arg_50 (var_B0, &HFF, 0)
  loc_F82E6E: Proc_183_57_104AA84(var_B0, "TExt_KeyUp", global_184)
  loc_F82E7A: Exit Sub
End Sub

Private Sub TEXT_LostFocus(Index As Integer) 'E8B0D0
  'Data Table: 58C0C8
  loc_E8B064: On Error Goto loc_E8B0A7
  loc_E8B06F: Call TEXT_Validate(Index)
  loc_E8B08F: If (Me.FrmList.Visible = &HFF) Then
  loc_E8B09E:   Me.FrmList.Visible = False
  loc_E8B0A6: End If
  loc_E8B0A6: Exit Sub
  loc_E8B0A7: ' Referenced from: E8B064
  loc_E8B0AD: Call 0.Method_arg_50 (var_90)
  loc_E8B0C2: Proc_183_57_104AA84(var_90, "TEXT_LostFocus")
  loc_E8B0CE: Exit Sub
End Sub

Private Sub TEXT_Validate(Cancel As Boolean) '10CD388
  'Data Table: 58C0C8
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  loc_10CD09C: On Error Goto loc_10CD35D
  loc_10CD0A2: var_86 = Cancel
  loc_10CD0AB: If Not (var_86 = 0) Then
  loc_10CD0B4:   If Not (var_86 = 1) Then
  loc_10CD0BD:     If Not (var_86 = 2) Then
  loc_10CD0C6:       If (var_86 = 5) Then
  loc_10CD0C9:       End If
  loc_10CD0C9:     End If
  loc_10CD0C9:   End If
  loc_10CD0D3:   Set var_8C = Me.TEXT
  loc_10CD0D9:   Call 0.Method_TEXT_Validate0 (Cancel, var_90)
  loc_10CD0E5:   Proc_183_6_EA3004(CVar(var_90))
  loc_10CD0EA:   var_104 = var_86
  loc_10CD122:   Set var_F4 = Me.TEXT
  loc_10CD128:   Call 0.Method_TEXT_Validate0 (Cancel, var_F8, CStr(Format(CVar(var_104), "0.00")))
  loc_10CD130:   var_F8.Text = 1
  loc_10CD14F: Else
  loc_10CD157:   If Not (var_86 = CInt(&HA)) Then
  loc_10CD162:     If Not (var_86 = CInt(9)) Then
  loc_10CD16D:       If (var_86 = CInt(8)) Then
  loc_10CD170:       End If
  loc_10CD170:     End If
  loc_10CD188:     Set var_90 = Me.ListView.SelectedItem
  loc_10CD18E:     var_FC = var_90.Text
  loc_10CD1A0:     Set var_F4 = Me.TEXT
  loc_10CD1A6:     Call 0.Method_TEXT_Validate0 (Cancel, var_F8, var_FC)
  loc_10CD1AE:     var_F8.Text = 1
  loc_10CD1C7:   Else
  loc_10CD1CF:     If (var_86 = CInt(&HC)) Then
  loc_10CD220:       Set var_8C = Me.TEXT
  loc_10CD226:       Call 0.Method_TEXT_Validate0 (Cancel, var_90, var_FC)
  loc_10CD22E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CD246:       If (var_104 Or (var_FC = vbNullString)) Then
  loc_10CD257:         Set var_8C = Me.TEXT
  loc_10CD25D:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_90)
  loc_10CD265:         var_90.Tag = vbNullString
  loc_10CD27F:         Set var_8C = Me.TEXT
  loc_10CD285:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_90)
  loc_10CD28D:         var_90.Text = vbNullString
  loc_10CD29C:       Else
  loc_10CD2D8:         Set var_F4 = Me.TEXT
  loc_10CD2DE:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_F8)
  loc_10CD2E6:         var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10CD32A:         var_FC = CStr(Me.Fields.Item("Code").Value)
  loc_10CD338:         Set var_F4 = Me.TEXT
  loc_10CD33E:         Call 0.Method_TEXT_Validate0 (CInt(&HC), var_F8)
  loc_10CD346:         var_F8.Tag = var_FC
  loc_10CD35C:       End If
  loc_10CD35C:     End If
  loc_10CD35C:   End If
  loc_10CD35C: End If
  loc_10CD35C: Exit Sub
  loc_10CD35D: ' Referenced from: 10CD09C
  loc_10CD363: Call 0.Method_arg_50 (var_FC)
  loc_10CD36B: var_114 = "TEXT_Validate"
  loc_10CD378: Proc_183_57_104AA84(var_FC)
  loc_10CD384: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '16A4D2C
  'Data Table: 58C0C8
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_C0 As TextBox
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_AC As TextBox
  Dim var_A8 As String
  loc_16A3400: On Error Goto loc_16A4D03
  loc_16A3410: Set var_AC = (CVar(CLng("16777215")))
  loc_16A3422: Set var_AC = (TxtGrid.DispID_26)
  loc_16A343A: Set var_C0 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_16A3452: Set var_F4 = (CVar(CLng(TxtGrid.DispID_B)))
  loc_16A3463: var_110 = CStr(TxtGrid.DispID_41)
  loc_16A346F: Set var_108 = Me.TxtGrid
  loc_16A3475: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C)
  loc_16A347D: var_10C.Tag = var_110
  loc_16A349F: Set var_AC = ()
  loc_16A34AE: var_114 = CLng(TxtGrid.DispID_A)
  loc_16A34BE: If (var_114 = CLng(0)) Then
  loc_16A34C7:   var_118 = GRepFormName
  loc_16A34D2:   If Not (var_118 = "BudgetVariance") Then
  loc_16A34DD:     If (var_118 = "Budget") Then
  loc_16A34E0:     End If
  loc_16A352E:     Set var_AC = Me.TxtGrid
  loc_16A3534:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110)
  loc_16A353C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16A3554:     If (var_114 Or (var_110 = vbNullString)) Then
  loc_16A3557:       Exit Sub
  loc_16A3558:     End If
  loc_16A3565:     Set var_AC = Me.TxtGrid
  loc_16A356B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3573:     var_110 = var_C0.Text
  loc_16A357B:     var_D0 = CVar(var_110) 'String
  loc_16A359C:     var_108 = Me.Fields.Item("Name")
  loc_16A35C0:     If CBool(var_D0 <> var_108.Value) Then
  loc_16A35C9:       Me.MoveFirst
  loc_16A35EE:       Set var_AC = Me.TxtGrid
  loc_16A35F4:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A35FC:       0 = var_C0.Text
  loc_16A360A:       Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A3620:       Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A3638:     End If
  loc_16A3645:     Set var_F4 = Me.TxtGrid
  loc_16A364B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A3665:     Set var_AC = Me.TxtGrid
  loc_16A366B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A367F:     var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A368E:     ("Name =").Top = 
  loc_16A36B3:     (CVar(CStr(Index))).Tag = 
  loc_16A36CB:     Set var_AC = Me.TxtGrid
  loc_16A36D1:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A36F0:     (CVar(var_C0.Left)).Left = 
  loc_16A36FE:   End If
  loc_16A3701: Else
  loc_16A3708:   If (var_114 = CLng(2)) Then
  loc_16A3711:     var_12C = GRepFormName
  loc_16A371C:     If (var_12C = "BankReg") Then
  loc_16A372C:       ReDim var_130(0 To 2)
  loc_16A3743:       var_130(0) = "All"
  loc_16A3752:       var_130(1) = "Debit"
  loc_16A3761:       var_130(2) = "Credit"
  loc_16A3778:       global_164 = Array(var_130)
  loc_16A37B8:       Set global_184 = Proc_183_37_EFE3E8(Me.ListView, Me.TxtGrid, Index)
  loc_16A37CC:     Else
  loc_16A37D4:       If (var_12C = "DUELIST") Then
  loc_16A37E4:         ReDim var_130(0 To 1)
  loc_16A37FB:         var_130(0) = "All"
  loc_16A380A:         var_130(1) = "Pending"
  loc_16A3861:         Set global_184 = Proc_183_37_EFE3E8(Me.ListView, Me.TxtGrid, Index, Array(var_130), 2)
  loc_16A3875:       Else
  loc_16A387D:         If Not (var_12C = "Led") Then
  loc_16A3888:           If Not (var_12C = "LedInt") Then
  loc_16A3893:             If Not (var_12C = "LedDeb") Then
  loc_16A389E:               If Not (var_12C = "LedCred") Then
  loc_16A38A9:                 If (var_12C = "AcCheckList") Then
  loc_16A38AC:                 End If
  loc_16A38AC:               End If
  loc_16A38AC:             End If
  loc_16A38AC:           End If
  loc_16A38B9:           ReDim var_130(0 To 4)
  loc_16A38D0:           var_130(0) = "Selected"
  loc_16A38DF:           var_130(1) = "Merge"
  loc_16A38EE:           var_130(2) = "Group(Selected)"
  loc_16A38FD:           var_130(3) = "Group(Range)"
  loc_16A390C:           var_130(4) = "City Wise"
  loc_16A3963:           Set global_184 = Proc_183_37_EFE3E8(Me.ListView, Me.TxtGrid, Index, Array(var_130), 5)
  loc_16A3977:         Else
  loc_16A397F:           If Not (var_12C = "CashBook") Then
  loc_16A398A:             If Not (var_12C = "BankBook") Then
  loc_16A3995:               If Not (var_12C = "DayBook") Then
  loc_16A39A0:                 If Not (var_12C = "RozNamcha") Then
  loc_16A39AB:                   If (var_12C = "DetailedTrial") Then
  loc_16A39AE:                   End If
  loc_16A39AE:                 End If
  loc_16A39AE:               End If
  loc_16A39AE:             End If
  loc_16A39BB:             ReDim var_130(0 To 1)
  loc_16A39D2:             var_130(0) = "Yes"
  loc_16A39D4:             var_A8 = "No"
  loc_16A39E1:             var_130(1) = var_A8
  loc_16A39F8:             global_164 = Array(var_130)
  loc_16A3A1E:             Set var_C0 = Me.TxtGrid
  loc_16A3A38:             Set global_184 = Proc_183_37_EFE3E8(Me.ListView, var_C0, Index, global_164, 2, global_164)
  loc_16A3A4C:           Else
  loc_16A3A54:             If Not (var_12C = "JournalBook") Then
  loc_16A3A5F:               If (var_12C = "Annexure") Then
  loc_16A3A62:               End If
  loc_16A3AB0:               Set var_AC = Me.TxtGrid
  loc_16A3AB6:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), global_164)
  loc_16A3ABE:               global_164 = var_C0.Text
  loc_16A3AD6:               If (global_164 Or (var_110 = vbNullString)) Then
  loc_16A3AD9:                 Exit Sub
  loc_16A3ADA:               End If
  loc_16A3AE7:               Set var_AC = Me.TxtGrid
  loc_16A3AED:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110)
  loc_16A3AF5:               3 = var_C0.Text
  loc_16A3AFD:               var_D0 = CVar(var_110) 'String
  loc_16A3B1E:               var_108 = Me.Fields.Item("Name")
  loc_16A3B42:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A3B4B:                 Me.MoveFirst
  loc_16A3B70:                 Set var_AC = Me.TxtGrid
  loc_16A3B76:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A3B7E:                 0 = var_C0.Text
  loc_16A3B8C:                 Proc_183_9_EAA760(var_D0, CVar(var_110), 1)
  loc_16A3BA2:                 Me.Find CStr(var_A8 & var_D0), global_164, 
  loc_16A3BBA:               End If
  loc_16A3BC7:               Set var_AC = Me.TxtGrid
  loc_16A3BCD:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3BEC:               (CVar(var_C0.Left)).Left = 
  loc_16A3C07:               Set var_F4 = Me.TxtGrid
  loc_16A3C0D:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A3C27:               Set var_AC = Me.TxtGrid
  loc_16A3C2D:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3C41:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A3C50:               (CVar(var_C0.Left)).Top = 
  loc_16A3C75:               (CVar(CStr(Index))).Tag = 
  loc_16A3C83:             Else
  loc_16A3C8B:               If Not (var_12C = "DailySumm") Then
  loc_16A3C96:                 If Not (var_12C = "AgingDr") Then
  loc_16A3CA1:                   If Not (var_12C = "AgingCr") Then
  loc_16A3CAC:                     If Not (var_12C = "Clg") Then
  loc_16A3CB7:                       If Not (var_12C = "ClgNot") Then
  loc_16A3CC2:                         If Not (var_12C = "AgingRepDr") Then
  loc_16A3CCD:                           If (var_12C = "AgingRepCr") Then
  loc_16A3CD0:                           End If
  loc_16A3CD0:                         End If
  loc_16A3CD0:                       End If
  loc_16A3CD0:                     End If
  loc_16A3CD0:                   End If
  loc_16A3CD0:                 End If
  loc_16A3D1E:                 Set var_AC = Me.TxtGrid
  loc_16A3D24:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3D44:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A3D47:                   Exit Sub
  loc_16A3D48:                 End If
  loc_16A3D55:                 Set var_AC = Me.TxtGrid
  loc_16A3D5B:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3D63:                 var_110 = var_C0.Text
  loc_16A3D6B:                 var_D0 = CVar(var_110) 'String
  loc_16A3D8C:                 var_108 = Me.Fields.Item("Name")
  loc_16A3DB0:                 If CBool(var_D0 <> var_108.Value) Then
  loc_16A3DB9:                   Me.MoveFirst
  loc_16A3DDE:                   Set var_AC = Me.TxtGrid
  loc_16A3DE4:                   Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A3DEC:                   0 = var_C0.Text
  loc_16A3DFA:                   Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A3E10:                   Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A3E28:                 End If
  loc_16A3E3A:                 (CVar(CDbl(0))).Left = 
  loc_16A3E4F:                 Set var_F4 = Me.TxtGrid
  loc_16A3E55:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A3E6F:                 Set var_AC = Me.TxtGrid
  loc_16A3E75:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A3E89:                 var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A3E98:                 (CVar(CDbl(0))).Top = 
  loc_16A3EBD:                 (CVar(CStr(Index))).Tag = 
  loc_16A3EC8:               End If
  loc_16A3EC8:             End If
  loc_16A3EC8:           End If
  loc_16A3EC8:         End If
  loc_16A3EC8:       End If
  loc_16A3EC8:     End If
  loc_16A3ECB:   Else
  loc_16A3ED2:     If (var_114 = CLng(3)) Then
  loc_16A3EDB:       var_144 = GRepFormName
  loc_16A3EE6:       If Not (var_144 = "Annexure") Then
  loc_16A3EF1:         If Not (var_144 = "RefReport") Then
  loc_16A3EFC:           If Not (var_144 = "JournalBook") Then
  loc_16A3F07:             If (var_144 = "DetailedTrial") Then
  loc_16A3F0A:             End If
  loc_16A3F0A:           End If
  loc_16A3F0A:         End If
  loc_16A3F17:         ReDim var_130(0 To 1)
  loc_16A3F2E:         var_130(0) = "Yes"
  loc_16A3F30:         var_A8 = "No"
  loc_16A3F3D:         var_130(1) = var_A8
  loc_16A3F54:         global_164 = Array(var_130)
  loc_16A3F7A:         Set var_C0 = Me.TxtGrid
  loc_16A3F94:         Set global_184 = Proc_183_37_EFE3E8(Me.ListView, var_C0, Index)
  loc_16A3FA8:       Else
  loc_16A3FB0:         If (var_144 = "DayBook") Then
  loc_16A4001:           Set var_AC = Me.TxtGrid
  loc_16A4007:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16A400F:           global_164 = var_C0.Text
  loc_16A4027:           If (2 Or (var_110 = vbNullString)) Then
  loc_16A402A:             Exit Sub
  loc_16A402B:           End If
  loc_16A4038:           Set var_AC = Me.TxtGrid
  loc_16A403E:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4046:           var_110 = var_C0.Text
  loc_16A404E:           var_D0 = CVar(var_110) 'String
  loc_16A406F:           var_108 = Me.Fields.Item("Name")
  loc_16A4093:           If CBool(var_D0 <> var_108.Value) Then
  loc_16A409C:             Me.MoveFirst
  loc_16A40C1:             Set var_AC = Me.TxtGrid
  loc_16A40C7:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A40CF:             0 = var_C0.Text
  loc_16A40DD:             Proc_183_9_EAA760(var_D0, CVar(var_110), 1)
  loc_16A40F3:             Me.Find CStr(var_A8 & var_D0), global_164, 
  loc_16A410B:           End If
  loc_16A411D:           (CVar(CDbl(0))).Left = 
  loc_16A4132:           Set var_F4 = Me.TxtGrid
  loc_16A4138:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4152:           Set var_AC = Me.TxtGrid
  loc_16A4158:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A416C:           var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A417B:           (CVar(CDbl(0))).Top = 
  loc_16A41A0:           (CVar(CStr(Index))).Tag = 
  loc_16A41AE:         Else
  loc_16A41B6:           If Not (var_144 = "Led") Then
  loc_16A41C1:             If Not (var_144 = "LedInt") Then
  loc_16A41CC:               If Not (var_144 = "LedDeb") Then
  loc_16A41D7:                 If Not (var_144 = "LedCred") Then
  loc_16A41E2:                   If (var_144 = "AcCheckList") Then
  loc_16A41E5:                   End If
  loc_16A41E5:                 End If
  loc_16A41E5:               End If
  loc_16A41E5:             End If
  loc_16A41FA:             Set var_AC = CVar(CLng(2))(1)
  loc_16A422D:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_16A427E:               Set var_AC = Me.TxtGrid
  loc_16A4284:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A42A4:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A42A7:                 Exit Sub
  loc_16A42A8:               End If
  loc_16A42B5:               Set var_AC = Me.TxtGrid
  loc_16A42BB:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A42C3:               var_110 = var_C0.Text
  loc_16A42CB:               var_D0 = CVar(var_110) 'String
  loc_16A42EC:               var_108 = Me.Fields.Item("Name")
  loc_16A4310:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A4319:                 Me.MoveFirst
  loc_16A433E:                 Set var_AC = Me.TxtGrid
  loc_16A4344:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A434C:                 0 = var_C0.Text
  loc_16A435A:                 Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A4370:                 Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A4388:               End If
  loc_16A4395:               Set var_AC = Me.TxtGrid
  loc_16A439B:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A43BA:               (CVar(var_C0.Left)).Left = 
  loc_16A43D5:               Set var_F4 = Me.TxtGrid
  loc_16A43DB:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A43F5:               Set var_AC = Me.TxtGrid
  loc_16A43FB:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A440F:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A441E:               (CVar(var_C0.Left)).Top = 
  loc_16A4443:               (CVar(CStr(Index))).Tag = 
  loc_16A4451:             Else
  loc_16A449F:               Set var_AC = Me.TxtGrid
  loc_16A44A5:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A44C5:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A44C8:                 Exit Sub
  loc_16A44C9:               End If
  loc_16A44D6:               Set var_AC = Me.TxtGrid
  loc_16A44DC:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A44E4:               var_110 = var_C0.Text
  loc_16A44EC:               var_D0 = CVar(var_110) 'String
  loc_16A450D:               var_108 = Me.Fields.Item("Name")
  loc_16A4531:               If CBool(var_D0 <> var_108.Value) Then
  loc_16A453A:                 Me.MoveFirst
  loc_16A455F:                 Set var_AC = Me.TxtGrid
  loc_16A4565:                 Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A456D:                 0 = var_C0.Text
  loc_16A457B:                 Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A4591:                 Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A45A9:               End If
  loc_16A45BB:               (CVar(CDbl(0))).Left = 
  loc_16A45D0:               Set var_F4 = Me.TxtGrid
  loc_16A45D6:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A45F0:               Set var_AC = Me.TxtGrid
  loc_16A45F6:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A460A:               var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4619:               (CVar(CDbl(0))).Top = 
  loc_16A463E:               (CVar(CStr(Index))).Tag = 
  loc_16A4649:             End If
  loc_16A4649:           End If
  loc_16A4649:         End If
  loc_16A4649:       End If
  loc_16A464C:     Else
  loc_16A4653:       If (var_114 = CLng(4)) Then
  loc_16A465C:         var_158 = GRepFormName
  loc_16A4667:         If Not (var_158 = "CashBook") Then
  loc_16A4672:           If Not (var_158 = "BankBook") Then
  loc_16A467D:             If Not (var_158 = "Led") Then
  loc_16A4688:               If Not (var_158 = "LedInt") Then
  loc_16A4693:                 If Not (var_158 = "AcCheckList") Then
  loc_16A469E:                   If Not (var_158 = "LedDeb") Then
  loc_16A46A9:                     If Not (var_158 = "LedCred") Then
  loc_16A46B4:                       If (var_158 = "RozNamcha") Then
  loc_16A46B7:                       End If
  loc_16A46B7:                     End If
  loc_16A46B7:                   End If
  loc_16A46B7:                 End If
  loc_16A46B7:               End If
  loc_16A46B7:             End If
  loc_16A46B7:           End If
  loc_16A4705:           Set var_AC = Me.TxtGrid
  loc_16A470B:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A472B:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A472E:             Exit Sub
  loc_16A472F:           End If
  loc_16A473C:           Set var_AC = Me.TxtGrid
  loc_16A4742:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A474A:           var_110 = var_C0.Text
  loc_16A4752:           var_D0 = CVar(var_110) 'String
  loc_16A4773:           var_108 = Me.Fields.Item("Name")
  loc_16A4797:           If CBool(var_D0 <> var_108.Value) Then
  loc_16A47A0:             Me.MoveFirst
  loc_16A47C5:             Set var_AC = Me.TxtGrid
  loc_16A47CB:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A47D3:             0 = var_C0.Text
  loc_16A47E1:             Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A47F7:             Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A480F:           End If
  loc_16A4821:           (CVar(CDbl(0))).Left = 
  loc_16A4836:           Set var_F4 = Me.TxtGrid
  loc_16A483C:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4856:           Set var_AC = Me.TxtGrid
  loc_16A485C:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4870:           var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A487F:           (CVar(CDbl(0))).Top = 
  loc_16A48A4:           (CVar(CStr(Index))).Tag = 
  loc_16A48B2:         Else
  loc_16A48BA:           If (var_158 = "JournalBook") Then
  loc_16A490B:             Set var_AC = Me.TxtGrid
  loc_16A4911:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4931:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A4934:               Exit Sub
  loc_16A4935:             End If
  loc_16A4942:             Set var_AC = Me.TxtGrid
  loc_16A4948:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4950:             var_110 = var_C0.Text
  loc_16A4958:             var_D0 = CVar(var_110) 'String
  loc_16A4979:             var_108 = Me.Fields.Item("Name")
  loc_16A499D:             If CBool(var_D0 <> var_108.Value) Then
  loc_16A49A6:               Me.MoveFirst
  loc_16A49CB:               Set var_AC = Me.TxtGrid
  loc_16A49D1:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A49D9:               0 = var_C0.Text
  loc_16A49E7:               Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A49FD:               Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A4A15:             End If
  loc_16A4A27:             (CVar(CDbl(0))).Left = 
  loc_16A4A3C:             Set var_F4 = Me.TxtGrid
  loc_16A4A42:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4A5C:             Set var_AC = Me.TxtGrid
  loc_16A4A62:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4A76:             var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4A85:             (CVar(CDbl(0))).Top = 
  loc_16A4AAA:             (CVar(CStr(Index))).Tag = 
  loc_16A4AB5:           End If
  loc_16A4AB5:         End If
  loc_16A4AB8:       Else
  loc_16A4ABF:         If (var_114 = CLng(5)) Then
  loc_16A4AC8:           var_15C = GRepFormName
  loc_16A4AD3:           If Not (var_15C = "Led") Then
  loc_16A4ADE:             If Not (var_15C = "LedInt") Then
  loc_16A4AE9:               If Not (var_15C = "LedDeb") Then
  loc_16A4AF4:                 If Not (var_15C = "LedCred") Then
  loc_16A4AFF:                   If (var_15C = "AcCheckList") Then
  loc_16A4B02:                   End If
  loc_16A4B02:                 End If
  loc_16A4B02:               End If
  loc_16A4B02:             End If
  loc_16A4B50:             Set var_AC = Me.TxtGrid
  loc_16A4B56:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4B76:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C0.Text = vbNullString)) Then
  loc_16A4B79:               Exit Sub
  loc_16A4B7A:             End If
  loc_16A4B87:             Set var_AC = Me.TxtGrid
  loc_16A4B8D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4B95:             var_110 = var_C0.Text
  loc_16A4B9D:             var_D0 = CVar(var_110) 'String
  loc_16A4BBE:             var_108 = Me.Fields.Item("Name")
  loc_16A4BE2:             If CBool(var_D0 <> var_108.Value) Then
  loc_16A4BEB:               Me.MoveFirst
  loc_16A4C10:               Set var_AC = Me.TxtGrid
  loc_16A4C16:               Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0, var_110, "Name =")
  loc_16A4C1E:               0 = var_C0.Text
  loc_16A4C2C:               Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16A4C42:               Me.Find CStr(1 & var_D0), var_A8, 
  loc_16A4C5A:             End If
  loc_16A4C6C:             (CVar(CDbl(0))).Left = 
  loc_16A4C81:             Set var_F4 = Me.TxtGrid
  loc_16A4C87:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_16A4CA1:             Set var_AC = Me.TxtGrid
  loc_16A4CA7:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_C0)
  loc_16A4CBB:             var_98 = CVar((var_C0.Top + var_108.Height)) 'Single
  loc_16A4CCA:             (CVar(CDbl(0))).Top = 
  loc_16A4CEF:             (CVar(CStr(Index))).Tag = 
  loc_16A4CFA:           End If
  loc_16A4CFA:         End If
  loc_16A4CFA:       End If
  loc_16A4CFA:     End If
  loc_16A4CFA:   End If
  loc_16A4CFA: End If
  loc_16A4CFF: Set var_88 = Nothing
  loc_16A4D02: Exit Sub
  loc_16A4D03: ' Referenced from: 16A3400
  loc_16A4D09: Call 0.Method_arg_50 (var_110)
  loc_16A4D11: var_160 = "TxtGrid_GotFocus"
  loc_16A4D1E: Proc_183_57_104AA84(var_110)
  loc_16A4D2A: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '14B8724
  'Data Table: 58C0C8
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_B0 As Long
  Dim var_FC As TextBox
  Dim var_130 As Variant
  Dim var_8C As ListView
  Dim var_98 As ColumnHeader
  Dim var_108 As TextBox
  loc_14B7A58: On Error Goto loc_14B86FB
  loc_14B7A65: If (CLng(Shift) = &H1B) Then
  loc_14B7A74:   Set var_8C = Me.TxtGrid
  loc_14B7A7A:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_14B7A82:   var_94 = var_90.Tag
  loc_14B7A93:   Set var_98 = Me.TxtGrid
  loc_14B7A99:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_14B7AA1:   var_9C.Text = var_94
  loc_14B7ABD:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14B7AC6:   Set var_8C = (arg_14)
  loc_14B7AE2:   Set var_8C = Me.TxtGrid
  loc_14B7AE8:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_14B7AF0:   var_90.Visible = False
  loc_14B7AFC:   Call Proc_245_60_EB6FA4(TxtGrid.DispID_8001)
  loc_14B7B01:   Exit Sub
  loc_14B7B02: End If
  loc_14B7B06: Set var_8C = ()
  loc_14B7B15: var_B0 = CLng(TxtGrid.DispID_A)
  loc_14B7B25: If (var_B0 = CLng(2)) Then
  loc_14B7B2E:   var_B4 = GRepFormName
  loc_14B7B39:   If (var_B4 = "BankReg") Then
  loc_14B7B49:     ReDim var_B8(0 To 2)
  loc_14B7B60:     var_B8(0) = "All"
  loc_14B7B6F:     var_B8(1) = "Debit"
  loc_14B7B7E:     var_B8(2) = "Credit"
  loc_14B7BA0:     Set var_9C = Me.ListView
  loc_14B7BBB:     Set var_90 = Me.TxtGrid
  loc_14B7BD5:     Set global_184 = Proc_183_37_EFE3E8(var_9C, var_90, KeyCode, Array(var_B8))
  loc_14B7C07:     Set var_8C = Me.TxtGrid
  loc_14B7C0D:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4)
  loc_14B7C15:     3 = var_90.Left
  loc_14B7C26:     Set var_98 = Me.TxtGrid
  loc_14B7C2C:     Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8)
  loc_14B7C34:     global_164 = var_9C.Top
  loc_14B7C45:     Set var_F0 = Me.TxtGrid
  loc_14B7C4B:     Call 0.Method_TxtGrid_KeyDown0 (0, var_FC)
  loc_14B7C53:     var_100 = var_FC.Height
  loc_14B7CA0:     Proc_183_23_11A24A0(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B7CC3:   Else
  loc_14B7CCB:     If (var_B4 = "DUELIST") Then
  loc_14B7CD6:       var_130 = 1
  loc_14B7CF6:       var_130 = Me.ListView.ColumnHeaders.ControlDefault
  loc_14B7CFE:       var_98.Width = var_98
  loc_14B7D1A:       var_130 = 2
  loc_14B7D34:       Set var_90 = Me.ListView.ColumnHeaders
  loc_14B7D3A:       var_130 = var_90.ControlDefault
  loc_14B7D42:       var_98.Width = var_98
  loc_14B7D78:       Set var_8C = Me.TxtGrid
  loc_14B7D7E:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4, CDbl(0), CDbl(1500))
  loc_14B7D86:       CInt(var_F4) = var_90.Left
  loc_14B7D97:       Set var_98 = Me.TxtGrid
  loc_14B7D9D:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8, CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14B7DA5:       1750 = var_9C.Top
  loc_14B7DB6:       Set var_F0 = Me.TxtGrid
  loc_14B7DBC:       Call 0.Method_TxtGrid_KeyDown0 (0, var_FC, var_100)
  loc_14B7DC4:       800 = var_FC.Height
  loc_14B7E02:       Set var_108 = Me.ListView
  loc_14B7E11:       Proc_183_23_11A24A0(Me.FrmList, var_108, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B7E34:     Else
  loc_14B7E3C:       If Not (var_B4 = "CashBook") Then
  loc_14B7E47:         If Not (var_B4 = "BankBook") Then
  loc_14B7E52:           If Not (var_B4 = "Led") Then
  loc_14B7E5D:             If Not (var_B4 = "LedInt") Then
  loc_14B7E68:               If Not (var_B4 = "LedDeb") Then
  loc_14B7E73:                 If Not (var_B4 = "LedCred") Then
  loc_14B7E7E:                   If Not (var_B4 = "AcCheckList") Then
  loc_14B7E89:                     If Not (var_B4 = "DayBook") Then
  loc_14B7E94:                       If Not (var_B4 = "RozNamcha") Then
  loc_14B7E9F:                         If (var_B4 = "DetailedTrial") Then
  loc_14B7EA2:                         End If
  loc_14B7EA2:                       End If
  loc_14B7EA2:                     End If
  loc_14B7EA2:                   End If
  loc_14B7EA2:                 End If
  loc_14B7EA2:               End If
  loc_14B7EA2:             End If
  loc_14B7EA2:           End If
  loc_14B7EA2:         End If
  loc_14B7EC3:         Set var_8C = Me.TxtGrid
  loc_14B7EC9:         Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4, CInt(var_F4))
  loc_14B7ED1:         CInt(((var_F8 + var_100) + CDbl(&H19))) = var_90.Left
  loc_14B7EE2:         Set var_98 = Me.TxtGrid
  loc_14B7EE8:         Call 0.Method_TxtGrid_KeyDown0 (0, var_9C, var_F8)
  loc_14B7EF0:         1750 = var_9C.Top
  loc_14B7F01:         Set var_F0 = Me.TxtGrid
  loc_14B7F07:         Call 0.Method_TxtGrid_KeyDown0 (0, var_FC, var_100)
  loc_14B7F0F:         800 = var_FC.Height
  loc_14B7F20:         Set var_104 = Me.TxtGrid
  loc_14B7F26:         Call 0.Method_TxtGrid_KeyDown0 (0, var_108)
  loc_14B7F2E:         var_134 = var_108.Width
  loc_14B7F7B:         Proc_183_23_11A24A0(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B7FA2:       Else
  loc_14B7FAA:         If Not (var_B4 = "JournalBook") Then
  loc_14B7FB5:           If (var_B4 = "Annexure") Then
  loc_14B7FB8:           End If
  loc_14B7FBC:           Set var_98 = CInt(((var_F8 + var_100) + CDbl(&H19)))(CInt(var_F4))
  loc_14B7FEE:           Proc_183_34_1305540(var_98, Me.TxtGrid, KeyCode, global_72, Shift)
  loc_14B8001:         Else
  loc_14B8009:           If Not (var_B4 = "DailySumm") Then
  loc_14B8014:             If Not (var_B4 = "AgingDr") Then
  loc_14B801F:               If Not (var_B4 = "AgingCr") Then
  loc_14B802A:                 If Not (var_B4 = "Clg") Then
  loc_14B8035:                   If Not (var_B4 = "ClgNot") Then
  loc_14B8040:                     If Not (var_B4 = "AgingRepDr") Then
  loc_14B804B:                       If (var_B4 = "AgingRepCr") Then
  loc_14B804E:                       End If
  loc_14B804E:                     End If
  loc_14B804E:                   End If
  loc_14B804E:                 End If
  loc_14B804E:               End If
  loc_14B804E:             End If
  loc_14B8059:             Set var_9C = Me.TxtGrid
  loc_14B8075:             Set var_90 = var_9C
  loc_14B8084:             Proc_183_34_1305540(1(&HFF), var_90, KeyCode, global_76, Shift)
  loc_14B8094:           End If
  loc_14B8094:         End If
  loc_14B8094:       End If
  loc_14B8094:     End If
  loc_14B8094:   End If
  loc_14B809E:   If (CLng(Shift) = &HD) Then
  loc_14B80AE:     Call Proc_245_58_19C587C(0, 0, var_110, &HFF)
  loc_14B80B9:     If (var_110 = &HFF) Then
  loc_14B80BC:       Call Proc_245_62_F2E5B8(1, CInt(var_134))
  loc_14B80C1:     End If
  loc_14B80C1:   End If
  loc_14B80C4: Else
  loc_14B80CB:   If (var_B0 = CLng(3)) Then
  loc_14B80D4:     var_140 = GRepFormName
  loc_14B80DF:     If Not (var_140 = "Annexure") Then
  loc_14B80EA:       If Not (var_140 = "RefReport") Then
  loc_14B80F5:         If Not (var_140 = "JournalBook") Then
  loc_14B8100:           If (var_140 = "DetailedTrial") Then
  loc_14B8103:           End If
  loc_14B8103:         End If
  loc_14B8103:       End If
  loc_14B8124:       Set var_8C = Me.TxtGrid
  loc_14B812A:       Call 0.Method_TxtGrid_KeyDown0 (0, var_90, var_F4)
  loc_14B8132:       0 = var_90.Left
  loc_14B8143:       Set var_98 = Me.TxtGrid
  loc_14B8149:       Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_14B8151:       var_F8 = var_9C.Top
  loc_14B8162:       Set var_F0 = Me.TxtGrid
  loc_14B8168:       Call 0.Method_TxtGrid_KeyDown0 (0, var_FC)
  loc_14B8170:       var_100 = var_FC.Height
  loc_14B8181:       Set var_104 = Me.TxtGrid
  loc_14B8187:       Call 0.Method_TxtGrid_KeyDown0 (0, var_108)
  loc_14B818F:       var_134 = var_108.Width
  loc_14B81DC:       Proc_183_23_11A24A0(Me.FrmList, Me.ListView, Me.TxtGrid, 0, Shift, arg_14)
  loc_14B8203:     Else
  loc_14B820B:       If (var_140 = "DayBook") Then
  loc_14B8244:         Proc_183_34_1305540(Me.DGSite, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_14B8257:       Else
  loc_14B825F:         If Not (var_140 = "Led") Then
  loc_14B826A:           If Not (var_140 = "LedInt") Then
  loc_14B8275:             If Not (var_140 = "LedDeb") Then
  loc_14B8280:               If Not (var_140 = "LedCred") Then
  loc_14B828B:                 If (var_140 = "AcCheckList") Then
  loc_14B828E:                 End If
  loc_14B828E:               End If
  loc_14B828E:             End If
  loc_14B828E:           End If
  loc_14B82A3:           Set var_8C = CVar(CLng(2))(1)
  loc_14B82D6:           If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_14B830F:             Proc_183_34_1305540(CInt(var_F4)(1), Me.TxtGrid, KeyCode, global_72, Shift, &HFF)
  loc_14B8322:           Else
  loc_14B8326:             Set var_98 = CInt(((var_F8 + var_100) + CDbl(&H19)))(1)
  loc_14B8358:             Proc_183_34_1305540(CInt(var_F4)(1), Me.TxtGrid, KeyCode, global_76, Shift)
  loc_14B8368:           End If
  loc_14B8368:         End If
  loc_14B8368:       End If
  loc_14B8368:     End If
  loc_14B8372:     If (CLng(Shift) = &HD) Then
  loc_14B8382:       Call Proc_245_58_19C587C(0, 0, var_110, &HFF)
  loc_14B838D:       If (var_110 = &HFF) Then
  loc_14B8390:         Call Proc_245_62_F2E5B8(1, CInt(var_134))
  loc_14B8395:       End If
  loc_14B8395:     End If
  loc_14B8398:   Else
  loc_14B839F:     If (var_B0 = CLng(4)) Then
  loc_14B83A8:       var_184 = GRepFormName
  loc_14B83B3:       If Not (var_184 = "CashBook") Then
  loc_14B83BE:         If Not (var_184 = "BankBook") Then
  loc_14B83C9:           If Not (var_184 = "Led") Then
  loc_14B83D4:             If Not (var_184 = "LedInt") Then
  loc_14B83DF:               If Not (var_184 = "LedDeb") Then
  loc_14B83EA:                 If Not (var_184 = "LedCred") Then
  loc_14B83F5:                   If Not (var_184 = "AcCheckList") Then
  loc_14B8400:                     If (var_184 = "RozNamcha") Then
  loc_14B8403:                     End If
  loc_14B8403:                   End If
  loc_14B8403:                 End If
  loc_14B8403:               End If
  loc_14B8403:             End If
  loc_14B8403:           End If
  loc_14B8403:         End If
  loc_14B8439:         Proc_183_34_1305540(var_B0(0), Me.TxtGrid, KeyCode, global_76)
  loc_14B844C:       Else
  loc_14B8454:         If (var_184 = "JournalBook") Then
  loc_14B848D:           Proc_183_34_1305540(Me.DGSite, Me.TxtGrid, KeyCode, global_80, Shift)
  loc_14B849D:         End If
  loc_14B849D:       End If
  loc_14B84A7:       If (CLng(Shift) = &HD) Then
  loc_14B84B7:         Call Proc_245_58_19C587C(0, 0, var_110, &HFF)
  loc_14B84C2:         If (var_110 = &HFF) Then
  loc_14B84C5:           Call Proc_245_62_F2E5B8(1, Shift)
  loc_14B84CA:         End If
  loc_14B84CA:       End If
  loc_14B84CD:     Else
  loc_14B84D4:       If (var_B0 = CLng(5)) Then
  loc_14B84DD:         var_188 = GRepFormName
  loc_14B84E8:         If Not (var_188 = "Led") Then
  loc_14B84F3:           If Not (var_188 = "LedInt") Then
  loc_14B84FE:             If Not (var_188 = "LedDeb") Then
  loc_14B8509:               If Not (var_188 = "LedCred") Then
  loc_14B8514:                 If (var_188 = "AcCheckList") Then
  loc_14B8517:                 End If
  loc_14B8517:               End If
  loc_14B8517:             End If
  loc_14B8517:           End If
  loc_14B854D:           Proc_183_34_1305540(1(&HFF), Me.TxtGrid, KeyCode, global_76)
  loc_14B855D:         End If
  loc_14B8567:         If (CLng(Shift) = &HD) Then
  loc_14B8577:           Call Proc_245_58_19C587C(0, 0, var_110)
  loc_14B8582:           If (var_110 = &HFF) Then
  loc_14B8585:             Call Proc_245_62_F2E5B8(Shift, &HFF)
  loc_14B858A:           End If
  loc_14B858A:         End If
  loc_14B858D:       Else
  loc_14B8594:         If (var_B0 = CLng(0)) Then
  loc_14B859D:           var_18C = GRepFormName
  loc_14B85A8:           If Not (var_18C = "BudgetVariance") Then
  loc_14B85B3:             If (var_18C = "Budget") Then
  loc_14B85B6:             End If
  loc_14B85EC:             Proc_183_34_1305540((1), Me.TxtGrid, KeyCode, global_76)
  loc_14B85FF:           Else
  loc_14B863F:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14B864F:               Call Proc_245_58_19C587C(0, 0, var_110)
  loc_14B865A:               If (var_110 = &HFF) Then
  loc_14B865D:                 Call Proc_245_62_F2E5B8(Shift, &HFF)
  loc_14B8662:               End If
  loc_14B8662:             End If
  loc_14B8662:           End If
  loc_14B8665:         Else
  loc_14B866C:           If Not (var_B0 = CLng(1)) Then
  loc_14B8676:             If Not (var_B0 = CLng(6)) Then
  loc_14B8680:               If Not (var_B0 = CLng(7)) Then
  loc_14B868A:                 If Not (var_B0 = CLng(8)) Then
  loc_14B8694:                   If (var_B0 = CLng(9)) Then
  loc_14B8697:                   End If
  loc_14B8697:                 End If
  loc_14B8697:               End If
  loc_14B8697:             End If
  loc_14B86D7:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14B86E7:               Call Proc_245_58_19C587C(0, 0)
  loc_14B86F2:               If (var_110 = &HFF) Then
  loc_14B86F5:                 Call Proc_245_62_F2E5B8(var_110)
  loc_14B86FA:               End If
  loc_14B86FA:             End If
  loc_14B86FA:           End If
  loc_14B86FA:         End If
  loc_14B86FA:       End If
  loc_14B86FA:     End If
  loc_14B86FA:   End If
  loc_14B86FA: End If
  loc_14B86FA: Exit Sub
  loc_14B86FB: ' Referenced from: 14B7A58
  loc_14B8701: Call 0.Method_arg_50 (var_94)
  loc_14B8716: Proc_183_57_104AA84(var_94, "TxtGrid_KeyDown")
  loc_14B8722: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '12A4808
  'Data Table: 58C0C8
  Dim var_9C As Long
  Dim var_88 As Variant
  loc_12A4208: On Error Goto loc_12A47DE
  loc_12A420E: Proc_183_46_E070C0(arg_10)
  loc_12A4217: Set var_88 = ()
  loc_12A4226: var_9C = CLng(TxtGrid.DispID_A)
  loc_12A4236: If (var_9C = CLng(0)) Then
  loc_12A423F:   var_A0 = GRepFormName
  loc_12A424A:   If Not (var_A0 = "BudgetVariance") Then
  loc_12A4255:     If (var_A0 = "Budget") Then
  loc_12A4258:     End If
  loc_12A4274:     If (CBool((var_9C).Visible) = &HFF) Then
  loc_12A4286:       var_A4 = "Name"
  loc_12A42A1:       Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_76)
  loc_12A42B0:     End If
  loc_12A42B0:   End If
  loc_12A42B3: Else
  loc_12A42BA:   If (var_9C = CLng(2)) Then
  loc_12A42C3:     var_B0 = GRepFormName
  loc_12A42CE:     If Not (var_B0 = "JournalBook") Then
  loc_12A42D9:       If (var_B0 = "Annexure") Then
  loc_12A42DC:       End If
  loc_12A42F8:       If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12A430A:         var_A4 = "Name"
  loc_12A4325:         Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_12A4334:       End If
  loc_12A4337:     Else
  loc_12A433F:       If Not (var_B0 = "DailySumm") Then
  loc_12A434A:         If Not (var_B0 = "AgingDr") Then
  loc_12A4355:           If Not (var_B0 = "AgingCr") Then
  loc_12A4360:             If Not (var_B0 = "Clg") Then
  loc_12A436B:               If Not (var_B0 = "ClgNot") Then
  loc_12A4376:                 If Not (var_B0 = "AgingRepDr") Then
  loc_12A4381:                   If (var_B0 = "AgingRepCr") Then
  loc_12A4384:                   End If
  loc_12A4384:                 End If
  loc_12A4384:               End If
  loc_12A4384:             End If
  loc_12A4384:           End If
  loc_12A4384:         End If
  loc_12A43A0:         If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A43A7:           Set var_AC = Me.TxtGrid
  loc_12A43B2:           var_A4 = "Name"
  loc_12A43CD:           Proc_183_41_1459C78(var_AC, KeyAscii, global_76, arg_10)
  loc_12A43DC:         End If
  loc_12A43DC:       End If
  loc_12A43DC:     End If
  loc_12A43DF:   Else
  loc_12A43E6:     If (var_9C = CLng(3)) Then
  loc_12A43EF:       var_B4 = GRepFormName
  loc_12A43FA:       If (var_B4 = "DueListPeriod") Then
  loc_12A4407:         Set var_88 = Me.TxtGrid
  loc_12A440D:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_12A4428:         Proc_183_22_129AEBC(var_AC, arg_10, 3)
  loc_12A4437:       Else
  loc_12A443F:         If Not (var_B4 = "CashBook") Then
  loc_12A444A:           If Not (var_B4 = "BankBook") Then
  loc_12A4455:             If (var_B4 = "RozNamcha") Then
  loc_12A4458:             End If
  loc_12A4458:           End If
  loc_12A4462:           Set var_88 = Me.TxtGrid
  loc_12A4468:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, 0)
  loc_12A4483:           Proc_183_22_129AEBC(var_AC, arg_10, 4)
  loc_12A4492:         Else
  loc_12A449A:           If (var_B4 = "DayBook") Then
  loc_12A44B9:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12A44E6:               Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_12A44F5:             End If
  loc_12A44F8:           Else
  loc_12A4500:             If Not (var_B4 = "Led") Then
  loc_12A450B:               If (var_B4 = "LedInt") Then
  loc_12A450E:               End If
  loc_12A4523:               Set var_88 = CVar(CLng(2))(1)
  loc_12A4556:               If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_12A4575:                 If (CBool(0(0).Visible) = &HFF) Then
  loc_12A4587:                   var_A4 = "Name"
  loc_12A45A2:                   Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_72, arg_10)
  loc_12A45B1:                 End If
  loc_12A45B4:               Else
  loc_12A45D0:                 If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A45E2:                   var_A4 = "Name"
  loc_12A45FD:                   Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_12A460C:                 End If
  loc_12A460C:               End If
  loc_12A460C:             End If
  loc_12A460C:           End If
  loc_12A460C:         End If
  loc_12A460C:       End If
  loc_12A460F:     Else
  loc_12A4616:       If (var_9C = CLng(4)) Then
  loc_12A461F:         var_140 = GRepFormName
  loc_12A462A:         If Not (var_140 = "CashBook") Then
  loc_12A4635:           If Not (var_140 = "BankBook") Then
  loc_12A4640:             If Not (var_140 = "Led") Then
  loc_12A464B:               If Not (var_140 = "LedInt") Then
  loc_12A4656:                 If Not (var_140 = "LedDeb") Then
  loc_12A4661:                   If Not (var_140 = "LedCred") Then
  loc_12A466C:                     If Not (var_140 = "AcCheckList") Then
  loc_12A4677:                       If (var_140 = "RozNamcha") Then
  loc_12A467A:                       End If
  loc_12A467A:                     End If
  loc_12A467A:                   End If
  loc_12A467A:                 End If
  loc_12A467A:               End If
  loc_12A467A:             End If
  loc_12A467A:           End If
  loc_12A4696:           If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12A46A8:             var_A4 = "Name"
  loc_12A46C3:             Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_76, arg_10)
  loc_12A46D2:           End If
  loc_12A46D5:         Else
  loc_12A46DD:           If (var_140 = "JournalBook") Then
  loc_12A46FC:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12A470E:               var_A4 = "Name"
  loc_12A4729:               Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_80, arg_10, var_A4)
  loc_12A4738:             End If
  loc_12A4738:           End If
  loc_12A4738:         End If
  loc_12A473B:       Else
  loc_12A4742:         If (var_9C = CLng(5)) Then
  loc_12A474B:           var_144 = GRepFormName
  loc_12A4756:           If Not (var_144 = "Led") Then
  loc_12A4761:             If Not (var_144 = "LedInt") Then
  loc_12A476C:               If Not (var_144 = "LedDeb") Then
  loc_12A4777:                 If Not (var_144 = "LedCred") Then
  loc_12A4782:                   If (var_144 = "AcCheckList") Then
  loc_12A4785:                   End If
  loc_12A4785:                 End If
  loc_12A4785:               End If
  loc_12A4785:             End If
  loc_12A47A1:             If (CBool(var_A4(0).Visible) = &HFF) Then
  loc_12A47B3:               var_A4 = "Name"
  loc_12A47CE:               Proc_183_41_1459C78(Me.TxtGrid, KeyAscii, global_76, arg_10, var_A4)
  loc_12A47DD:             End If
  loc_12A47DD:           End If
  loc_12A47DD:         End If
  loc_12A47DD:       End If
  loc_12A47DD:     End If
  loc_12A47DD:   End If
  loc_12A47DD: End If
  loc_12A47DD: Exit Sub
  loc_12A47DE: ' Referenced from: 12A4208
  loc_12A47E4: Call 0.Method_arg_50 (var_A4, 0, 0)
  loc_12A47F9: Proc_183_57_104AA84(var_A4, "TxtGrid_KeyPress")
  loc_12A4805: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1374024
  'Data Table: 58C0C8
  Dim var_9C As Long
  Dim var_88 As Variant
  loc_13737BC: On Error Goto loc_1373FFA
  loc_13737C3: Set var_88 = ()
  loc_13737D2: var_9C = CLng(TxtGrid.DispID_A)
  loc_13737E2: If (var_9C = CLng(0)) Then
  loc_13737EB:   var_A0 = GRepFormName
  loc_13737F6:   If Not (var_A0 = "BudgetVariance") Then
  loc_1373801:     If (var_A0 = "Budget") Then
  loc_1373804:     End If
  loc_1373827:     If ( And (CBool(var_9C((Shift <> &HD)).Visible) = 0)) Then
  loc_1373838:       Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_137384C:       var_A8 = "Name"
  loc_1373867:       Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_1373876:     End If
  loc_1373876:   End If
  loc_1373879: Else
  loc_1373880:   If (var_9C = CLng(2)) Then
  loc_1373889:     var_B0 = GRepFormName
  loc_1373894:     If Not (var_B0 = "JournalBook") Then
  loc_137389F:       If (var_B0 = "Annexure") Then
  loc_13738A2:       End If
  loc_13738C5:       If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_13738D6:         Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13738EA:         var_A8 = "Name"
  loc_1373905:         Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_72, Shift)
  loc_1373914:       End If
  loc_1373917:     Else
  loc_137391F:       If Not (var_B0 = "DailySumm") Then
  loc_137392A:         If Not (var_B0 = "AgingDr") Then
  loc_1373935:           If Not (var_B0 = "AgingCr") Then
  loc_1373940:             If Not (var_B0 = "Clg") Then
  loc_137394B:               If Not (var_B0 = "ClgNot") Then
  loc_1373956:                 If Not (var_B0 = "AgingRepDr") Then
  loc_1373961:                   If (var_B0 = "AgingRepCr") Then
  loc_1373964:                   End If
  loc_1373964:                 End If
  loc_1373964:               End If
  loc_1373964:             End If
  loc_1373964:           End If
  loc_1373964:         End If
  loc_1373987:         If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_1373998:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13739C7:           Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_13739D6:         End If
  loc_13739D9:       Else
  loc_13739FB:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1373A0C:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373A11:         End If
  loc_1373A3F:         Proc_183_35_F29A04(Me.ListView, Me.TxtGrid, 0, Shift, global_184)
  loc_1373A4F:       End If
  loc_1373A4F:     End If
  loc_1373A52:   Else
  loc_1373A59:     If (var_9C = CLng(3)) Then
  loc_1373A62:       var_BC = GRepFormName
  loc_1373A6D:       If Not (var_BC = "Annexure") Then
  loc_1373A78:         If Not (var_BC = "RefReport") Then
  loc_1373A83:           If (var_BC = "JournalBook") Then
  loc_1373A86:           End If
  loc_1373A86:         End If
  loc_1373AA8:         If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1373AB9:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373ABE:         End If
  loc_1373AEC:         Proc_183_35_F29A04(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_1373AFF:       Else
  loc_1373B07:         If (var_BC = "DayBook") Then
  loc_1373B2D:           If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_1373B3E:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373B6D:             Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_1373B7C:           End If
  loc_1373B7F:         Else
  loc_1373B87:           If Not (var_BC = "Led") Then
  loc_1373B92:             If Not (var_BC = "LedInt") Then
  loc_1373B9D:               If Not (var_BC = "LedDeb") Then
  loc_1373BA8:                 If Not (var_BC = "LedCred") Then
  loc_1373BB3:                   If (var_BC = "AcCheckList") Then
  loc_1373BB6:                   End If
  loc_1373BB6:                 End If
  loc_1373BB6:               End If
  loc_1373BB6:             End If
  loc_1373BCB:             Set var_88 = CVar(CLng(2))(1)
  loc_1373BFE:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_1373C24:               If (0 And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_1373C35:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373C64:                 Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_72, Shift, "Name", &HFF)
  loc_1373C73:               End If
  loc_1373C76:             Else
  loc_1373C99:               If (&HFF And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_1373CAA:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373CD9:                 Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_1373CE8:               End If
  loc_1373CE8:             End If
  loc_1373CE8:           End If
  loc_1373CE8:         End If
  loc_1373CE8:       End If
  loc_1373CEB:     Else
  loc_1373CF2:       If (var_9C = CLng(4)) Then
  loc_1373CFB:         var_140 = GRepFormName
  loc_1373D06:         If Not (var_140 = "CashBook") Then
  loc_1373D11:           If Not (var_140 = "BankBook") Then
  loc_1373D1C:             If Not (var_140 = "Led") Then
  loc_1373D27:               If Not (var_140 = "LedInt") Then
  loc_1373D32:                 If Not (var_140 = "LedDeb") Then
  loc_1373D3D:                   If Not (var_140 = "LedCred") Then
  loc_1373D48:                     If Not (var_140 = "AcCheckList") Then
  loc_1373D53:                       If (var_140 = "RozNamcha") Then
  loc_1373D56:                       End If
  loc_1373D56:                     End If
  loc_1373D56:                   End If
  loc_1373D56:                 End If
  loc_1373D56:               End If
  loc_1373D56:             End If
  loc_1373D56:           End If
  loc_1373D79:           If (0 And (CBool(&HFF((Shift <> &HD)).Visible) = 0)) Then
  loc_1373D8A:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373DB9:             Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_76, Shift, "Name")
  loc_1373DC8:           End If
  loc_1373DCB:         Else
  loc_1373DD3:           If (var_140 = "JournalBook") Then
  loc_1373DF9:             If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_1373E0A:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373E39:               Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_80, Shift, "Name", &HFF)
  loc_1373E48:             End If
  loc_1373E4B:           Else
  loc_1373E6D:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1373E7E:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373E83:             End If
  loc_1373EB1:             Proc_183_35_F29A04(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_1373EC1:           End If
  loc_1373EC1:         End If
  loc_1373EC4:       Else
  loc_1373ECB:         If (var_9C = CLng(5)) Then
  loc_1373ED4:           var_144 = GRepFormName
  loc_1373EDF:           If Not (var_144 = "Led") Then
  loc_1373EEA:             If Not (var_144 = "LedInt") Then
  loc_1373EF5:               If Not (var_144 = "LedDeb") Then
  loc_1373F00:                 If Not (var_144 = "LedCred") Then
  loc_1373F0B:                   If (var_144 = "AcCheckList") Then
  loc_1373F0E:                   End If
  loc_1373F0E:                 End If
  loc_1373F0E:               End If
  loc_1373F0E:             End If
  loc_1373F31:             If (&HFF And (CBool(0((Shift <> &HD)).Visible) = 0)) Then
  loc_1373F42:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373F56:               var_A8 = "Name"
  loc_1373F71:               Proc_183_41_1459C78(Me.TxtGrid, KeyCode, global_76, Shift, var_A8, &HFF)
  loc_1373F80:             End If
  loc_1373F83:           Else
  loc_1373FA5:             If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_1373FB6:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1373FBB:             End If
  loc_1373FE9:             Proc_183_35_F29A04(Me.ListView, Me.TxtGrid, 0, Shift, global_184, 0)
  loc_1373FF9:           End If
  loc_1373FF9:         End If
  loc_1373FF9:       End If
  loc_1373FF9:     End If
  loc_1373FF9:   End If
  loc_1373FF9: End If
  loc_1373FF9: Exit Sub
  loc_1373FFA: ' Referenced from: 13737BC
  loc_1374000: Call 0.Method_arg_50 (var_A8, 0, 0)
  loc_1374015: Proc_183_57_104AA84(var_A8, "TxtGrid_KeyUp", 0)
  loc_1374021: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5F330
  'Data Table: 58C0C8
  Dim arg_10 As Integer
  loc_E5F2EC: On Error Goto loc_E5F307
  loc_E5F2FA: Call Proc_245_58_19C587C(Cancel, &HFF)
  loc_E5F303: arg_10 = Not(var_88)
  loc_E5F306: Exit Sub
  loc_E5F307: ' Referenced from: E5F2EC
  loc_E5F30D: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E5F322: Proc_183_57_104AA84(var_8C, "TxtGrid_Validate")
  loc_E5F32E: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 '100E7A4
  'Data Table: 58C0C8
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_A0 As ListItem
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_100E5A0: On Error Goto loc_100E779
  loc_100E5BE: If (Me.FrDetail.Visible = &HFF) Then
  loc_100E5C5:   Set var_A8 = Me.ListView
  loc_100E60F:   Set var_C0 = Me.TEXT
  loc_100E615:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_100E61D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_100E649:   Me.FrmList.Visible = False
  loc_100E679:   Set var_A0 = Me.TEXT
  loc_100E67F:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_100E687:   var_A8.SetFocus
  loc_100E69E: Else
  loc_100E6A2:   Set var_A8 = Me.ListView
  loc_100E6B8:   var_CC = Val(CStr(var_A8.Tag))
  loc_100E6EC:   Set var_C0 = Me.TxtGrid
  loc_100E6F2:   Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_C4, Me.ListView.SelectedItem.Text)
  loc_100E6FA:   var_C4.Text = var_CC
  loc_100E726:   Me.FrmList.Visible = False
  loc_100E740:   var_A4 = CStr(Me.ListView.Tag)
  loc_100E748:   var_CC = Val(var_A4)
  loc_100E756:   Set var_A0 = Me.TxtGrid
  loc_100E75C:   Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8, var_CC)
  loc_100E764:   var_A8.SetFocus
  loc_100E778: End If
  loc_100E778: Exit Sub
  loc_100E779: ' Referenced from: 100E5A0
  loc_100E77F: Call 0.Method_arg_50 (var_A4, var_CC)
  loc_100E794: Proc_183_57_104AA84(var_A4, "ListView_Click")
  loc_100E7A0: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E60934
  'Data Table: 58C0C8
  Dim var_AC As TextBox
  loc_E608F9: Set var_A8 = (CVar(CLng("16777152")))
  loc_E60912: Set var_A8 = Me.TxtGrid
  loc_E60918: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60920: var_AC.Visible = False
  loc_E6092C: Call Proc_245_60_EB6FA4(TxtGrid.DispID_26)
  loc_E60931: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D0B0
  'Data Table: 58C0C8
  loc_E1D0A1: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1D0AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113BFA8
  'Data Table: 58C0C8
  Dim var_88 As TextBox
  Dim var_9C As String
  Dim var_AC As Variant
  Dim Cancel As Integer
  Dim var_D4 As TextBox
  Dim var_11C As Long
  Dim var_124 As Long
  loc_113BC30: On Error Goto loc_113BF7F
  loc_113BC6A: If ( And (CDbl(Val(CStr(((CLng(Cancel) = &H26)).Tag))) = CDbl(global_142))) Then
  loc_113BC7A:   Set var_88 = (CVar(CLng("16777215")))
  loc_113BC90:   var_9C = "+{Tab}"
  loc_113BC96:   Proc_303_0_FB9B68(CStr(((CLng(Cancel) = &H26)).Tag), 0)
  loc_113BCA0:   Cancel = 0
  loc_113BCA6: Else
  loc_113BCDD:   If (TxtGrid.DispID_26 And (CDbl(Val(CStr(Cancel((CLng(Cancel) = &H28)).Tag))) = CDbl(global_140))) Then
  loc_113BCED:     Set var_88 = (CVar(CLng("16777215")))
  loc_113BD03:     var_9C = "	"
  loc_113BD09:     Proc_303_0_FB9B68(var_9C, 0)
  loc_113BD13:     Cancel = 0
  loc_113BD16:   End If
  loc_113BD16: End If
  loc_113BD23: Set var_88 = Cancel(Cancel)
  loc_113BD42: TxtGrid.DispID_26(CVar(CStr(CLng(TxtGrid.DispID_A)))).Tag = 
  loc_113BD66: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_113BD6D:   Set var_88 = ()
  loc_113BD85:   Set var_D4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_113BDA9:   LateIdCallSt
  loc_113BDC5:   Set var_88 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_113BDD4:   var_AC = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_113BDEC:   Set var_D4 = 2(vbNullString)
  loc_113BDF2:   LateIdCallSt
  loc_113BE04: End If
  loc_113BE08: Set var_88 = var_AC(var_D4)
  loc_113BE17: var_11C = CLng(TxtGrid.DispID_B)
  loc_113BE27: If (var_11C = CLng(4)) Then
  loc_113BE30:   var_120 = GRepFormName
  loc_113BE3B:   If Not (var_120 = "CashBook") Then
  loc_113BE46:     If (var_120 = "BankBook") Then
  loc_113BE49:     End If
  loc_113BE4D:     Set var_88 = (var_11C)
  loc_113BE65:     Set var_D4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_113BE83:     Set var_118 = CVar(CLng(TxtGrid.DispID_B))(vbNullString)
  loc_113BE89:     LateIdCallSt
  loc_113BEA1:   End If
  loc_113BEA1: End If
  loc_113BEAB: If (CLng(Cancel) = &HD) Then
  loc_113BEB2:   Set var_88 = (var_118)
  loc_113BEC1:   var_124 = CLng(TxtGrid.DispID_A)
  loc_113BED1:   If Not (var_124 = CLng(0)) Then
  loc_113BEDB:     If Not (var_124 = CLng(1)) Then
  loc_113BEE5:       If Not (var_124 = CLng(2)) Then
  loc_113BEEF:         If Not (var_124 = CLng(3)) Then
  loc_113BEF9:           If Not (var_124 = CLng(4)) Then
  loc_113BF03:             If Not (var_124 = CLng(5)) Then
  loc_113BF0D:               If Not (var_124 = CLng(6)) Then
  loc_113BF17:                 If Not (var_124 = CLng(7)) Then
  loc_113BF21:                   If Not (var_124 = CLng(8)) Then
  loc_113BF2B:                     If (var_124 = CLng(9)) Then
  loc_113BF2E:                     End If
  loc_113BF2E:                   End If
  loc_113BF2E:                 End If
  loc_113BF2E:               End If
  loc_113BF2E:             End If
  loc_113BF2E:           End If
  loc_113BF2E:         End If
  loc_113BF2E:       End If
  loc_113BF2E:     End If
  loc_113BF44:     Set var_118 = Me.TxtGrid
  loc_113BF5F:     Proc_183_24_1044608(Me, (var_124))
  loc_113BF76:     global_162 = 0
  loc_113BF79:   End If
  loc_113BF79: End If
  loc_113BF7B: Cancel = 0
  loc_113BF7E: Exit Sub
  loc_113BF7F: ' Referenced from: 113BC30
  loc_113BF85: Call 0.Method_arg_50 (var_9C, Cancel, global_162)
  loc_113BF9A: Proc_183_57_104AA84(var_9C, "FGrid_KeyDown")
  loc_113BFA6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F2B678
  'Data Table: 58C0C8
  Dim var_9C As Long
  loc_F2B580: On Error Goto loc_F2B64F
  loc_F2B587: Set var_88 = ()
  loc_F2B596: var_9C = CLng(TxtGrid.DispID_A)
  loc_F2B5A6: If Not (var_9C = CLng(0)) Then
  loc_F2B5B0:   If Not (var_9C = CLng(1)) Then
  loc_F2B5BA:     If Not (var_9C = CLng(2)) Then
  loc_F2B5C4:       If Not (var_9C = CLng(3)) Then
  loc_F2B5CE:         If Not (var_9C = CLng(4)) Then
  loc_F2B5D8:           If Not (var_9C = CLng(5)) Then
  loc_F2B5E2:             If Not (var_9C = CLng(6)) Then
  loc_F2B5EC:               If Not (var_9C = CLng(7)) Then
  loc_F2B5F6:                 If Not (var_9C = CLng(8)) Then
  loc_F2B600:                   If (var_9C = CLng(9)) Then
  loc_F2B603:                   End If
  loc_F2B603:                 End If
  loc_F2B603:               End If
  loc_F2B603:             End If
  loc_F2B603:           End If
  loc_F2B603:         End If
  loc_F2B603:       End If
  loc_F2B603:     End If
  loc_F2B603:   End If
  loc_F2B619:   Set var_A4 = Me.TxtGrid
  loc_F2B634:   Proc_183_24_1044608(Me, (var_9C))
  loc_F2B646: End If
  loc_F2B64B: global_162 = 0
  loc_F2B64E: Exit Sub
  loc_F2B64F: ' Referenced from: F2B580
  loc_F2B655: Call 0.Method_arg_50 (var_B4, global_162)
  loc_F2B66A: Proc_183_57_104AA84(var_B4, "FGrid_DblClick")
  loc_F2B676: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1239870
  'Data Table: 58C0C8
  Dim var_A0 As Long
  Dim var_CC As String
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  Dim MeFF As Integer
  loc_1239350: On Error Goto loc_1239845
  loc_1239357: Set var_8C = ()
  loc_1239366: var_A0 = CLng(TxtGrid.DispID_A)
  loc_1239376: If Not (var_A0 = CLng(6)) Then
  loc_1239380:   If Not (var_A0 = CLng(7)) Then
  loc_123938A:     If Not (var_A0 = CLng(8)) Then
  loc_1239394:       If (var_A0 = CLng(9)) Then
  loc_1239397:       End If
  loc_1239397:     End If
  loc_1239397:   End If
  loc_12393D0:   Proc_183_26_1158124(Me, (var_A0), Me.TxtGrid)
  loc_12393E5: Else
  loc_12393EC:   If Not (var_A0 = CLng(0)) Then
  loc_12393F6:     If (var_A0 = CLng(1)) Then
  loc_12393F9:     End If
  loc_1239432:     Proc_183_26_1158124(Me, &HFF(0), Me.TxtGrid, 0)
  loc_1239447:   Else
  loc_123944E:     If (var_A0 = CLng(2)) Then
  loc_123948A:       Proc_183_26_1158124(Me, Cancel(0), Me.TxtGrid, 0)
  loc_123949F:     Else
  loc_12394A6:       If (var_A0 = CLng(3)) Then
  loc_12394E2:         Proc_183_26_1158124(Me, Cancel(0), Me.TxtGrid, 0)
  loc_12394F7:       Else
  loc_12394FE:         If Not (var_A0 = CLng(4)) Then
  loc_1239508:           If (var_A0 = CLng(5)) Then
  loc_123950B:           End If
  loc_1239544:           Proc_183_26_1158124(Me, Cancel(0), Me.TxtGrid, 0)
  loc_123955C:           var_B8 = GRepFormName
  loc_1239567:           If Not (var_B8 = "CashBook") Then
  loc_1239572:             If (var_B8 = "BankBook") Then
  loc_1239575:             End If
  loc_1239579:             Set var_B0 = Cancel(0)
  loc_123959D:             var_CC = CStr(Ucase(Chr(CLng(Cancel))))
  loc_12395BF:             Set var_A4 = var_B0
  loc_12395D1:             Proc_183_26_1158124(Me, var_A4, Me.TxtGrid, 0)
  loc_12395F9:             Set var_8C = Me.TxtGrid
  loc_12395FF:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_1239607:             0 = var_A4.Text
  loc_1239620:             If (Len(var_CC) <= 1) Then
  loc_123962F:               Set var_8C = Me.TxtGrid
  loc_1239635:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_123963D:               Asc(var_CC) = var_A4.Text
  loc_123964E:               Set var_A8 = Me.TxtGrid
  loc_1239654:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_123965C:               var_B0.Text = var_CC
  loc_123966F:             End If
  loc_123967B:             Set var_8C = Me.TxtGrid
  loc_1239681:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_123969B:             Set var_A8 = Me.TxtGrid
  loc_12396A1:             Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_12396A9:             var_B0.SelStart = Len(var_A4.Text)
  loc_12396BC:           End If
  loc_12396BF:         Else
  loc_12396C6:           If (var_A0 = CLng(0)) Then
  loc_12396CF:             var_D4 = GRepFormName
  loc_12396DA:             If Not (var_D4 = "BudgetVariance") Then
  loc_12396E5:               If (var_D4 = "Budget") Then
  loc_12396E8:               End If
  loc_12396EC:               Set var_B0 = (Cancel)
  loc_1239710:               var_CC = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1239732:               Set var_A4 = var_B0
  loc_1239744:               Proc_183_26_1158124(Me, var_A4, Me.TxtGrid)
  loc_123976C:               Set var_8C = Me.TxtGrid
  loc_1239772:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_123977A:               0 = var_A4.Text
  loc_1239793:               If (Len(var_CC) <= 1) Then
  loc_12397A2:                 Set var_8C = Me.TxtGrid
  loc_12397A8:                 Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4, var_CC)
  loc_12397B0:                 0 = var_A4.Text
  loc_12397C1:                 Set var_A8 = Me.TxtGrid
  loc_12397C7:                 Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_12397CF:                 var_B0.Text = var_CC
  loc_12397E2:               End If
  loc_12397EE:               Set var_8C = Me.TxtGrid
  loc_12397F4:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_A4)
  loc_12397FC:               var_CC = var_A4.Text
  loc_123980E:               Set var_A8 = Me.TxtGrid
  loc_1239814:               Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B0)
  loc_123981C:               var_B0.SelStart = Len(var_CC)
  loc_123982F:             End If
  loc_123982F:           End If
  loc_123982F:         End If
  loc_123982F:       End If
  loc_123982F:     End If
  loc_123982F:   End If
  loc_123982F: End If
  loc_1239839: If (CLng(Cancel) <> &HD) Then
  loc_1239841:   global_162 = &HFF
  loc_1239844: End If
  loc_1239844: Exit Sub
  loc_1239845: ' Referenced from: 1239350
  loc_123984B: Call 0.Method_arg_50 (var_CC, global_162)
  loc_1239860: Proc_183_57_104AA84(var_CC, "FGrid_KeyPress")
  loc_123986C: Exit Sub
  loc_123986D: MeFF = Asc(var_CC)
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D1F0
  'Data Table: 58C0C8
  loc_E1D1E1: Set var_A8 = (CVar(CLng("16777152")))
  loc_E1D1EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D060
  'Data Table: 58C0C8
  loc_E1D051: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1D05F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E45D3C
  'Data Table: 58C0C8
  Dim var_8C As TextBox
  loc_E45D1B: Set var_88 = Me.TxtGrid
  loc_E45D21: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E45D29: var_8C.Visible = False
  loc_E45D35: Call Proc_245_60_EB6FA4()
  loc_E45D3A: Exit Sub
End Sub

Private Sub BtnClose_Click() '1168D40
  'Data Table: 58C0C8
  Dim var_88 As Frame
  Dim var_CC As Variant
  Dim var_22C As Variant
  Dim var_38C As Variant
  Dim var_3E8 As String
  Dim unk_58C10D As Connection15
  loc_1168A64: On Error Goto loc_1168D16
  loc_1168A73: Me.FrDetail.Visible = False
  loc_1168A86: If (GRepFormName = "LedDeb") Then
  loc_1168AA9:   Set var_88 = Me.TxtHeader
  loc_1168AAF:   Call 0.Method_BtnClose_Click0 (0, var_8C, CVar("UPDATE FAENVIRO SET " & "TagadaHeader1="))
  loc_1168ABE:   Proc_183_9_EAA760(var_AC, CVar(var_8C), var_408)
  loc_1168AC6:   var_CC = -1 & var_AC 
  loc_1168ADC:   Set var_F0 = Me.TxtHeader
  loc_1168AE2:   Call 0.Method_BtnClose_Click0 (1, var_F4)
  loc_1168AF1:   Proc_183_9_EAA760(var_114, CVar(var_F4))
  loc_1168B0F:   Set var_148 = Me.TxtHeader
  loc_1168B15:   Call 0.Method_BtnClose_Click0 (2, var_14C)
  loc_1168B24:   Proc_183_9_EAA760(var_16C, CVar(var_14C))
  loc_1168B42:   Set var_1A0 = Me.TxtHeader
  loc_1168B48:   Call 0.Method_BtnClose_Click0 (3, var_1A4)
  loc_1168B57:   Proc_183_9_EAA760(var_1C4, CVar(var_1A4))
  loc_1168B75:   Set var_1F8 = Me.TxtHeader
  loc_1168B7B:   Call 0.Method_BtnClose_Click0 (4, var_1FC)
  loc_1168B8A:   Proc_183_9_EAA760(var_21C, CVar(var_1FC))
  loc_1168B92:   var_22C = var_CC & ",TagadaHeader2= " & var_114 & ",TagadaHeader3= " & var_16C & ",TagadaHeader4= " & var_1C4 & ",TagadaHeader5= " & var_21C 
  loc_1168BA8:   Set var_250 = Me.TxtFooter
  loc_1168BAE:   Call 0.Method_BtnClose_Click0 (0, var_254)
  loc_1168BBD:   Proc_183_9_EAA760(var_274, CVar(var_254))
  loc_1168BDB:   Set var_2A8 = Me.TxtFooter
  loc_1168BE1:   Call 0.Method_BtnClose_Click0 (1, var_2AC)
  loc_1168BF0:   Proc_183_9_EAA760(var_2CC, CVar(var_2AC))
  loc_1168C0E:   Set var_300 = Me.TxtFooter
  loc_1168C14:   Call 0.Method_BtnClose_Click0 (2, var_304)
  loc_1168C23:   Proc_183_9_EAA760(var_324, CVar(var_304))
  loc_1168C41:   Set var_358 = Me.TxtFooter
  loc_1168C47:   Call 0.Method_BtnClose_Click0 (3, var_35C)
  loc_1168C56:   Proc_183_9_EAA760(var_37C, CVar(var_35C))
  loc_1168C5E:   var_38C = var_22C & ",TagadaFooter1= " & var_274 & ",TagadaFooter2= " & var_2CC & ",TagadaFooter3= " & var_324 & ",TagadaFooter4= " & var_37C 
  loc_1168C74:   Set var_3B0 = Me.TxtFooter
  loc_1168C7A:   Call 0.Method_BtnClose_Click0 (4, var_3B4)
  loc_1168C89:   Proc_183_9_EAA760(var_3D4, CVar(var_3B4))
  loc_1168C95:   var_3E8 = CStr(var_38C & ",TagadaFooter5= " & var_3D4)
  loc_1168C9F:   unk_58C10D.Execute var_3E8, var_40C, 
  loc_1168D15: End If
  loc_1168D15: Exit Sub
  loc_1168D16: ' Referenced from: 1168A64
  loc_1168D1C: Call 0.Method_arg_50 (var_3E8)
  loc_1168D24: var_414 = "BTNCLOSE_Click"
  loc_1168D31: Proc_183_57_104AA84(var_3E8)
  loc_1168D3D: Exit Sub
End Sub

Private Sub DGAccount_UnknownEvent_9 'FD27A4
  'Data Table: 58C0C8
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD25EC: On Error Goto loc_FD2779
  loc_FD25FE: (False).Visible = 
  loc_FD261D: If (Me.RecordCount > 0) Then
  loc_FD263A:   var_EC = Val(CStr(().Tag))
  loc_FD2679:   Set var_CC = Me.TxtGrid
  loc_FD267F:   Call 0.Method_DGAccount_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD2687:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD26AB:   Set var_B4 = (var_EC)
  loc_FD26C1:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD2700:   Set var_CC = Me.TxtGrid
  loc_FD2706:   Call 0.Method_DGAccount_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD270E:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD272E: End If
  loc_FD2740: var_C8 = CStr((var_EC).Tag)
  loc_FD2756: Set var_B0 = Me.TxtGrid
  loc_FD275C: Call 0.Method_DGAccount_UnknownEvent_90 (CInt(Val(var_C8)), var_B4)
  loc_FD2764: var_B4.SetFocus
  loc_FD2778: Exit Sub
  loc_FD2779: ' Referenced from: FD25EC
  loc_FD277F: Call 0.Method_arg_50 (var_C8)
  loc_FD2794: Proc_183_57_104AA84(var_C8, "DGAccount_Click")
  loc_FD27A0: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) '1022120
  'Data Table: 58C0C8
  Dim var_8C As CheckBox
  Dim var_A0 As Variant
  loc_1021EF8: On Error Goto loc_10220F7
  loc_1021F08: Set var_88 = Me.Check1
  loc_1021F0E: Call 0.Method_Check1_Click0 (Index, var_8C)
  loc_1021F2C: If (CLng(var_8C.Value) = 0) Then
  loc_1021F3D:   Set var_88 = var_8C(Index)
  loc_1021F43:   Call 0.Method_Check1_Click0 (True)
  loc_1021F4B:   var_8C.Enabled = 
  loc_1021F61:   Set var_88 = var_8C(Index)
  loc_1021F67:   Call 0.Method_Check1_Click0 ()
  loc_1021F88:   If (CLng(Check1.DispID_4) > 1) Then
  loc_1021F9E:     Set var_88 = var_8C(Index)
  loc_1021FA4:     Call 0.Method_Check1_Click0 (1)
  loc_1021FCB:     Set var_88 = var_8C(Index)
  loc_1021FD1:     Call 0.Method_Check1_Click0 (1)
  loc_1021FE5:   End If
  loc_1021FE8: Else
  loc_1021FF7:   Set var_88 = var_8C(Index)
  loc_1021FFD:   Call 0.Method_Check1_Click0 (False, Check1.DispID_B)
  loc_1022005:   var_8C.Enabled = Check1.DispID_A
  loc_102201B:   Set var_88 = var_8C(Index)
  loc_1022021:   Call 0.Method_Check1_Click0 ()
  loc_1022042:   If (CLng(Check1.DispID_4) > 1) Then
  loc_1022058:     Set var_88 = var_8C(Index)
  loc_102205E:     Call 0.Method_Check1_Click0 (0)
  loc_1022085:     Set var_88 = var_8C(Index)
  loc_102208B:     Call 0.Method_Check1_Click0 (0)
  loc_10220A9:     Set var_88 = var_8C(Index)
  loc_10220AF:     Call 0.Method_Check1_Click0 (Check1.DispID_B)
  loc_10220C6:     var_A0 = CVar((CLng(Check1.DispID_4) - 1)) 'Long
  loc_10220D5:     Set var_C4 = var_C8(Index)
  loc_10220DB:     Call 0.Method_Check1_Click0 (0)
  loc_10220F6:   End If
  loc_10220F6: End If
  loc_10220F6: Exit Sub
  loc_10220F7: ' Referenced from: 1021EF8
  loc_10220FD: Call 0.Method_arg_50 (var_CC, Check1.DispID_C)
  loc_1022112: Proc_183_57_104AA84(var_CC, "Check1_Click")
  loc_102211E: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E430B4
  'Data Table: 58C0C8
  Dim var_8C As CheckBox
  loc_E43097: Set var_88 = Me.Check1
  loc_E4309D: Call 0.Method_Check1_GotFocus0 (Index, var_8C)
  loc_E430A5: var_8C.BackColor = &HFF
  loc_E430B1: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2009C
  'Data Table: 58C0C8
  loc_E20082: If (Shift = &HD) Then
  loc_E20093:   Proc_303_0_FB9B68("	")
  loc_E2009B: End If
  loc_E2009B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E43244
  'Data Table: 58C0C8
  Dim var_8C As CheckBox
  loc_E43227: Set var_88 = Me.Check1
  loc_E4322D: Call 0.Method_Check1_Validate0 (Cancel, var_8C)
  loc_E43235: var_8C.BackColor = &H800000
  loc_E43241: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E47528
  'Data Table: 58C0C8
  loc_E4750B: Set var_88 = var_8C(Cancel)
  loc_E47511: Call 0.Method_GridSel_UnknownEvent_00 (CVar(CLng("16777152")))
  loc_E47525: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E46FE0
  'Data Table: 58C0C8
  loc_E46FC3: Set var_88 = var_8C(Cancel)
  loc_E46FC9: Call 0.Method_GridSel_UnknownEvent_80 (CVar(CLng("15595518")))
  loc_E46FDD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 'FAABE8
  'Data Table: 58C0C8
  Dim var_F8 As String
  Dim arg_5003 As Double
  loc_FAAA88: On Error Goto loc_FAABBE
  loc_FAAA91: If (Cancel = 1) Then
  loc_FAAACF:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_FAAADB:     Set var_88 = var_8C(1)
  loc_FAAAE1:     Call 0.Method_GridSel_UnknownEvent_90 ()
  loc_FAAB09:     Set var_A0 = var_A4(1)
  loc_FAAB0F:     Call 0.Method_GridSel_UnknownEvent_90 (3)
  loc_FAAB22:     var_F8 = CStr(TxtDetails.DispID_41)
  loc_FAAB35:     Set var_FC = var_100(1)
  loc_FAAB3B:     Call 0.Method_GridSel_UnknownEvent_90 (var_F8 & vbCrLf)
  loc_FAAB63:     Set var_114 = var_118(1)
  loc_FAAB69:     Call 0.Method_GridSel_UnknownEvent_90 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_FAAB8D:     Me.TxtDetails.Text = CVar(CLng(TxtDetails.DispID_A)) & CStr(TxtDetails.DispID_41)
  loc_FAABBD:   End If
  loc_FAABBD: End If
  loc_FAABBD: Exit Sub
  loc_FAABBE: ' Referenced from: FAAA88
  loc_FAABC4: Call 0.Method_arg_50 (var_F8)
  loc_FAABD9: Proc_183_57_104AA84(var_F8)
  loc_FAABE5: Exit Sub
  loc_FAABE6: arg_5003 = "GridSel_Click"
End Sub

Private Sub GridSel_UnknownEvent_A '1221DD8
  'Data Table: 58C0C8
  Dim var_190 As Variant
  Dim var_8C As String
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_1E4 As Integer
  Dim var_1EC As String
  loc_122190C: On Error Goto loc_1221DB0
  loc_1221915: If (arg_10 = &HD) Then
  loc_1221926:   Proc_303_0_FB9B68("	")
  loc_122192E: End If
  loc_1221938: Set var_94 = var_98(Cancel)
  loc_122193E: Call 0.Method_GridSel_UnknownEvent_A0 (0)
  loc_122195F: If (CLng(TxtDetails.DispID_4) < 1) Then
  loc_1221962:   Exit Sub
  loc_1221963: End If
  loc_1221977: Set var_94 = var_98(Cancel)
  loc_122197D: Call 0.Method_GridSel_UnknownEvent_A0 ((CLng(arg_10) = &H20))
  loc_122199F: If ( And (CLng(TxtDetails.DispID_B) = 0)) Then
  loc_12219B2:   Set var_94 = var_98(Cancel)
  loc_12219B8:   Call 0.Method_GridSel_UnknownEvent_A0 ("WINGDINGS")
  loc_12219DE:   Set var_94 = var_98(Cancel)
  loc_12219E4:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CDbl(&HE)))
  loc_1221A02:   Set var_94 = var_98(Cancel)
  loc_1221A08:   Call 0.Method_GridSel_UnknownEvent_A0 (TxtDetails.DispID_4E)
  loc_1221A31:   Set var_CC = var_D0(Cancel)
  loc_1221A37:   Call 0.Method_GridSel_UnknownEvent_A0 (0, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221A55:   Set var_164 = var_168(Cancel)
  loc_1221A5B:   Call 0.Method_GridSel_UnknownEvent_A0 (TxtDetails.DispID_41)
  loc_1221A6C:   var_190 = CVar(CLng(TxtDetails.DispID_A)) 'Long
  loc_1221ABA:   Set var_17C = var_180(Cancel)
  loc_1221AC0:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_1221AC8:   LateIdCallSt
  loc_1221AFC:   var_1E2 = Cancel
  loc_1221B05:   If (var_1E2 = 1) Then
  loc_1221B19:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1221B2B:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_1221B3F:     Set var_94 = var_98(Cancel)
  loc_1221B45:     Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_1E2, var_180)
  loc_1221B61:     global_96(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221B6F:   Else
  loc_1221B75:     If (var_1E2 = 2) Then
  loc_1221B89:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1221B9B:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_1221BAF:       Set var_94 = var_98(Cancel)
  loc_1221BB5:       Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_190)
  loc_1221BD1:       global_100(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221BDF:     Else
  loc_1221BE5:       If (var_1E2 = 3) Then
  loc_1221BF9:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1221C0B:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_1221C1F:         Set var_94 = var_98(Cancel)
  loc_1221C25:         Call 0.Method_GridSel_UnknownEvent_A0 (var_86)
  loc_1221C41:         global_104(CLng(var_86)) = CInt(CLng(TxtDetails.DispID_A))
  loc_1221C4C:       End If
  loc_1221C4C:     End If
  loc_1221C4C:   End If
  loc_1221C4C: End If
  loc_1221C4F: var_1E4 = arg_10
  loc_1221C5C: If Not (var_1E4 = CInt(&H26)) Then
  loc_1221C69:   If Not (var_1E4 = CInt(&H28)) Then
  loc_1221C76:     If Not (var_1E4 = CInt(&H22)) Then
  loc_1221C83:       If (var_1E4 = CInt(&H21)) Then
  loc_1221C86:       End If
  loc_1221C86:     End If
  loc_1221C86:   End If
  loc_1221CC1:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_1221CCD:     Set var_94 = var_98(1)
  loc_1221CD3:     Call 0.Method_GridSel_UnknownEvent_A0 (var_1E4)
  loc_1221CFB:     Set var_CC = var_D0(1)
  loc_1221D01:     Call 0.Method_GridSel_UnknownEvent_A0 (3, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221D14:     var_8C = CStr(TxtDetails.DispID_41)
  loc_1221D27:     Set var_164 = var_168(1)
  loc_1221D2D:     Call 0.Method_GridSel_UnknownEvent_A0 (var_8C & vbCrLf)
  loc_1221D55:     Set var_17C = var_180(1)
  loc_1221D5B:     Call 0.Method_GridSel_UnknownEvent_A0 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_1221D7F:     Me.TxtDetails.Text = TxtDetails.DispID_4D & CStr(TxtDetails.DispID_41)
  loc_1221DAF:   End If
  loc_1221DAF: End If
  loc_1221DAF: Exit Sub
  loc_1221DB0: ' Referenced from: 122190C
  loc_1221DB6: Call 0.Method_arg_50 (var_8C)
  loc_1221DBE: var_1EC = "GridSel_KeyDown"
  loc_1221DCB: Proc_183_57_104AA84(var_8C)
  loc_1221DD7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '11DBC34
  'Data Table: 58C0C8
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Field20
  Dim arg_10 As Integer
  Dim var_D4 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_88 As TextBox
  loc_11DB7DC: On Error Goto loc_11DBC0A
  loc_11DB7E9: Set var_88 = var_8C(Cancel)
  loc_11DB7EF: Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DB810: Set var_A0 = var_A4(Cancel)
  loc_11DB816: Call 0.Method_GridSel_UnknownEvent_C0 ((CLng(TxtSearch.DispID_B) = 0))
  loc_11DB840: If ( Or (CLng(TxtSearch.DispID_A) = 0)) Then
  loc_11DB843:   Exit Sub
  loc_11DB844: End If
  loc_11DB847: var_B6 = Cancel
  loc_11DB850: If (var_B6 = 1) Then
  loc_11DB864:   Set var_88 = var_8C(Cancel)
  loc_11DB86A:   Call 0.Method_GridSel_UnknownEvent_C0 (var_B6)
  loc_11DB879:   Set var_A0 = var_A4(Cancel)
  loc_11DB87F:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DB8B1:   var_D0 = Me.Fields.Item(CVar(CLng(var_9C)))
  loc_11DB8E3:   Set var_DC = var_8C
  loc_11DB8F2:   Proc_183_11_113C750(Me.TxtSearch, var_DC, global_56, arg_10)
  loc_11DB918:   arg_10 = 0
  loc_11DB956:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_11DB962:     Set var_88 = var_8C(1)
  loc_11DB968:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_10, var_D0.Name, "16777152")
  loc_11DB990:     Set var_A0 = var_A4(1)
  loc_11DB996:     Call 0.Method_GridSel_UnknownEvent_C0 (3, CVar(CLng(TxtSearch.DispID_A)))
  loc_11DB9BC:     Set var_BC = var_D0(1)
  loc_11DB9C2:     Call 0.Method_GridSel_UnknownEvent_C0 (CStr(TxtSearch.DispID_41) & vbCrLf, "15595518")
  loc_11DB9EA:     Set var_D8 = var_DC(1)
  loc_11DB9F0:     Call 0.Method_GridSel_UnknownEvent_C0 (4, CVar(CLng(TxtSearch.DispID_A)))
  loc_11DBA14:     Me.TxtDetails.Text = TxtSearch.DispID_B & CStr(TxtSearch.DispID_41)
  loc_11DBA44:   End If
  loc_11DBA47: Else
  loc_11DBA4D:   If (var_B6 = 2) Then
  loc_11DBA61:     Set var_88 = var_8C(Cancel)
  loc_11DBA67:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBA76:     Set var_A0 = var_A4(Cancel)
  loc_11DBA7C:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11DBAB6:     var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11DBABE:     var_E8 = "15595518"
  loc_11DBAC7:     var_E4 = "16777152"
  loc_11DBAEF:     Proc_183_11_113C750(Me.TxtSearch, var_8C, global_60, arg_10)
  loc_11DBB15:     arg_10 = 0
  loc_11DBB1B:   Else
  loc_11DBB21:     If (var_B6 = 3) Then
  loc_11DBB35:       Set var_88 = var_8C(Cancel)
  loc_11DBB3B:       Call 0.Method_GridSel_UnknownEvent_C0 (arg_10, var_D4, var_E4)
  loc_11DBB4A:       Set var_A0 = var_A4(Cancel)
  loc_11DBB50:       Call 0.Method_GridSel_UnknownEvent_C0 (var_E8)
  loc_11DBB92:       var_E8 = "15595518"
  loc_11DBB9B:       var_E4 = "16777152"
  loc_11DBBC3:       Proc_183_11_113C750(Me.TxtSearch, var_8C, global_64, arg_10, Me.Fields.Item(CVar(CLng(var_9C))).Name)
  loc_11DBBE9:       arg_10 = 0
  loc_11DBBEC:     End If
  loc_11DBBEC:   End If
  loc_11DBBEC: End If
  loc_11DBBF1: var_D4 = CStr(Cancel)
  loc_11DBBFE: Me.TxtSearch.Tag = var_D4
  loc_11DBC09: Exit Sub
  loc_11DBC0A: ' Referenced from: 11DB7DC
  loc_11DBC10: Call 0.Method_arg_50 (var_D4, arg_10, var_E4)
  loc_11DBC25: Proc_183_57_104AA84(var_D4, "GridSel_KeyPress", var_E8)
  loc_11DBC31: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E817DC
  'Data Table: 58C0C8
  loc_E8177E: Set var_88 = var_8C(Cancel)
  loc_E81784: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E817A5: If (CLng(TxtSearch.DispID_B) <> 0) Then
  loc_E817A8:   Exit Sub
  loc_E817A9: End If
  loc_E817B3: Set var_88 = var_8C(Cancel)
  loc_E817B9: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E817CE: global_180 = CInt(CLng(TxtSearch.DispID_A))
  loc_E817DB: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '11455D0
  'Data Table: 58C0C8
  Dim var_E8 As String
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1145250: On Error Goto loc_11455A8
  loc_114525D: Set var_8C = var_90(Cancel)
  loc_1145263: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_114528E: If ((CLng(TxtSearch.DispID_B) <> 0) Or (global_180 = 0)) Then
  loc_1145291:   Exit Sub
  loc_1145292: End If
  loc_114529C: Set var_8C = var_90(Cancel)
  loc_11452A2: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_11452D3: For var_A4 = global_180 To CInt(CLng(TxtSearch.DispID_C)): var_88 = var_A4 'Integer
  loc_11452EC:   Set var_8C = var_90(Cancel)
  loc_11452F2:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CLng(var_88)), global_180)
  loc_1145319:   Set var_8C = var_90(Cancel)
  loc_114531F:   Call 0.Method_GridSel_UnknownEvent_100 (0, TxtSearch.DispID_A)
  loc_1145343:   Set var_8C = var_90(Cancel)
  loc_1145349:   Call 0.Method_GridSel_UnknownEvent_100 ("WINGDINGS", TxtSearch.DispID_B)
  loc_114536F:   Set var_8C = var_90(Cancel)
  loc_1145375:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CDbl(&HE)), TxtSearch.DispID_4D)
  loc_11453A5:   Set var_8C = var_90(Cancel)
  loc_11453AB:   Call 0.Method_GridSel_UnknownEvent_100 (0, CVar(CLng(var_88)))
  loc_11453EB:   var_E8 = CStr(var_A0)
  loc_1145411:   Set var_14C = var_150(Cancel)
  loc_1145417:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CStr(IIf((var_E8 = "ü"), " ", "ü"))), 0, CVar(CLng(var_88)))
  loc_114541F:   LateIdCallSt
  loc_1145447:   var_1B2 = Cancel
  loc_1145450:   If (var_1B2 = 1) Then
  loc_1145464:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1145476:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_114548A:     Set var_8C = var_90(Cancel)
  loc_1145490:     Call 0.Method_GridSel_UnknownEvent_100 (var_86, var_1B2, var_150)
  loc_11454AC:     global_96(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_11454BA:   Else
  loc_11454C0:     If (var_1B2 = 2) Then
  loc_11454D4:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_11454E6:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_11454FA:       Set var_8C = var_90(Cancel)
  loc_1145500:       Call 0.Method_GridSel_UnknownEvent_100 (var_86, TxtSearch.DispID_41)
  loc_114551C:       global_100(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_114552A:     Else
  loc_1145530:       If (var_1B2 = 3) Then
  loc_1145544:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1145556:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_114556A:         Set var_8C = var_90(Cancel)
  loc_1145570:         Call 0.Method_GridSel_UnknownEvent_100 (var_86, TxtSearch.DispID_4E)
  loc_114558C:         global_104(CLng(var_86)) = CInt(CLng(TxtSearch.DispID_A))
  loc_1145597:       End If
  loc_1145597:     End If
  loc_1145597:   End If
  loc_114559A: Next var_A4 'Integer
  loc_11455A4: global_180 = 0
  loc_11455A7: Exit Sub
  loc_11455A8: ' Referenced from: 1145250
  loc_11455AE: Call 0.Method_arg_50 (var_E8)
  loc_11455C3: Proc_183_57_104AA84(var_E8, "GridSel_MouseUp")
  loc_11455CF: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_12 'F8F4F8
  'Data Table: 58C0C8
  loc_F8F3CA: If (Cancel = 1) Then
  loc_F8F408:   If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_F8F414:     Set var_88 = var_8C(1)
  loc_F8F41A:     Call 0.Method_GridSel_UnknownEvent_120 ()
  loc_F8F442:     Set var_A0 = var_A4(1)
  loc_F8F448:     Call 0.Method_GridSel_UnknownEvent_120 (3)
  loc_F8F46E:     Set var_FC = var_100(1)
  loc_F8F474:     Call 0.Method_GridSel_UnknownEvent_120 (CStr(TxtDetails.DispID_41) & vbCrLf)
  loc_F8F49C:     Set var_114 = var_118(1)
  loc_F8F4A2:     Call 0.Method_GridSel_UnknownEvent_120 (4, CVar(CLng(TxtDetails.DispID_A)))
  loc_F8F4C6:     Me.TxtDetails.Text = CVar(CLng(TxtDetails.DispID_A)) & CStr(TxtDetails.DispID_41)
  loc_F8F4F6:   End If
  loc_F8F4F6: End If
  loc_F8F4F6: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E47730
  'Data Table: 58C0C8
  loc_E47713: Set var_88 = var_8C(Cancel)
  loc_E47719: Call 0.Method_GridSel_UnknownEvent_130 (CVar(CLng("16777152")))
  loc_E4772D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E473F0
  'Data Table: 58C0C8
  loc_E473D3: Set var_88 = var_8C(Cancel)
  loc_E473D9: Call 0.Method_GridSel_UnknownEvent_140 (CVar(CLng("15595518")))
  loc_E473ED: Exit Sub
End Sub

Private Sub Form_Load() '126FB8C
  'Data Table: 58C0C8
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_C4 As Variant
  Dim var_D0 As TextBox
  loc_126F5E8: On Error Goto loc_126FB62
  loc_126F5F2: Call 0.Method_arg_74 (CDbl(0))
  loc_126F5FE: Call 0.Method_arg_7C (CDbl(0))
  loc_126F60B: Call 0.Method_Me4 (CDbl(11900))
  loc_126F618: Call 0.Method_MeC (CDbl(7085))
  loc_126F61D: Call Proc_245_59_172F09C()
  loc_126F62C: Set var_A8 = Me.TopCtrl1
  loc_126F632: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005("Add")
  loc_126F646: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_126F657: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_126F668: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_126F679: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_126F68A: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_126F69B: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_126F6AC: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_126F6BD: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_126F6CE: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_126F6DF: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_126F6F9: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_126F707: Set var_A8 = MemVar_1F92044
  loc_126F716: Call 0.Method_Form_Load8 (var_A8)
  loc_126F72C: Me.TopCtrl1.Clone
  loc_126F746: Call 0.Method_arg_50 (var_A8, -1)
  loc_126F776: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C4, -1
  loc_126F787: Set global_68 = var_A8
  loc_126F7B3: If (Me.RecordCount > 0) Then
  loc_126F7C8:   var_A8 = Me.Fields
  loc_126F7ED:   Set var_CC = Me.TxtHeader
  loc_126F7F3:   Call 0.Method_Form_Load0 (0, var_D0)
  loc_126F7FB:   var_D0.Text = Proc_183_2_E5A304(CVar(var_A8.Item("TagadaHeader1")), var_A8)
  loc_126F846:   Set var_CC = Me.TxtHeader
  loc_126F84C:   Call 0.Method_Form_Load0 (1, var_D0)
  loc_126F854:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader2")))
  loc_126F89F:   Set var_CC = Me.TxtHeader
  loc_126F8A5:   Call 0.Method_Form_Load0 (2, var_D0)
  loc_126F8AD:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader3")))
  loc_126F8F8:   Set var_CC = Me.TxtHeader
  loc_126F8FE:   Call 0.Method_Form_Load0 (3, var_D0)
  loc_126F906:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader4")))
  loc_126F951:   Set var_CC = Me.TxtHeader
  loc_126F957:   Call 0.Method_Form_Load0 (4, var_D0)
  loc_126F95F:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader5")))
  loc_126F9AA:   Set var_CC = Me.TxtFooter
  loc_126F9B0:   Call 0.Method_Form_Load0 (0, var_D0)
  loc_126F9B8:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter1")))
  loc_126FA03:   Set var_CC = Me.TxtFooter
  loc_126FA09:   Call 0.Method_Form_Load0 (1, var_D0)
  loc_126FA11:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter2")))
  loc_126FA5C:   Set var_CC = Me.TxtFooter
  loc_126FA62:   Call 0.Method_Form_Load0 (2, var_D0)
  loc_126FA6A:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter3")))
  loc_126FAB5:   Set var_CC = Me.TxtFooter
  loc_126FABB:   Call 0.Method_Form_Load0 (3, var_D0)
  loc_126FAC3:   var_D0.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter4")))
  loc_126FB02:   var_B0 = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter5")))
  loc_126FB0E:   Set var_CC = Me.TxtFooter
  loc_126FB14:   Call 0.Method_Form_Load0 (4, var_D0)
  loc_126FB1C:   var_D0.Text = var_B0
  loc_126FB30: End If
  loc_126FB37: Call 0.Method_arg_74 (CDbl(0))
  loc_126FB43: Call 0.Method_arg_7C (CDbl(0))
  loc_126FB50: Call 0.Method_Me4 (CDbl(11900))
  loc_126FB5D: Call 0.Method_MeC (CDbl(7935))
  loc_126FB62: ' Referenced from: 126F5E8
  loc_126FB68: Call 0.Method_arg_50 (var_B0)
  loc_126FB7D: Proc_183_57_104AA84(var_B0, "Form_Load")
  loc_126FB89: Exit Sub
End Sub

Private Sub Form_Resize() 'EF5C08
  'Data Table: 58C0C8
  Dim var_94 As PictureBox
  loc_EF5B36: Call 0.Method_arg_100 (var_88)
  loc_EF5B42: If (var_88 > CDbl(0)) Then
  loc_EF5B5D:   Call 0.Method_arg_100 (var_88)
  loc_EF5B6E:   Set var_94 = ((var_88 - Me.PictParameter.ScaleWidth))
  loc_EF5B74:   var_94.Width = 
  loc_EF5B80: End If
  loc_EF5B92: (CVar(CDbl(0))).Top = 
  loc_EF5BAC: (CVar(CDbl(0))).Left = 
  loc_EF5BB8: Call 0.Method_arg_108 (var_88)
  loc_EF5BCF: (CVar(var_88)).Height = 
  loc_EF5BE4:  = (var_88).Width
  loc_EF5BFB: (CVar(var_88)).Width = 
  loc_EF5C07: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB0EC8
  'Data Table: 58C0C8
  loc_EB0E37: Set global_56 = Nothing
  loc_EB0E49: Set global_60 = Nothing
  loc_EB0E5B: Set global_184 = Nothing
  loc_EB0E6D: Set global_68 = Nothing
  loc_EB0E7F: Set global_72 = Nothing
  loc_EB0E91: Set global_76 = Nothing
  loc_EB0EA3: Set global_80 = Nothing
  loc_EB0EAF: MemVar_1F921E4 = Nothing
  loc_EB0EBE: Set global_188 = Nothing
  loc_EB0EC5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F096D0
  'Data Table: 58C0C8
  Dim var_86 As Integer
  loc_F095DF: var_86 = KeyCode
  loc_F095EC: If (var_86 = CInt(&H24)) Then
  loc_F095F9:   (var_86).SetFocus
  loc_F09606:   Call Command2_Click()
  loc_F0960E: Else
  loc_F09618:   If (var_86 = CInt(&H21)) Then
  loc_F09625:     (0).SetFocus
  loc_F09632:     Call Command2_Click()
  loc_F0963A:   Else
  loc_F09644:     If (var_86 = CInt(&H22)) Then
  loc_F09651:       (1).SetFocus
  loc_F0965E:       Call Command2_Click()
  loc_F09666:     Else
  loc_F09670:       If (var_86 = CInt(&H23)) Then
  loc_F0967D:         (2).SetFocus
  loc_F0968A:         Call Command2_Click()
  loc_F09692:       Else
  loc_F0969C:         If (var_86 = CInt(&H1B)) Then
  loc_F096AC:           Me.Global.Unload Me
  loc_F096B4:         End If
  loc_F096B4:       End If
  loc_F096B4:     End If
  loc_F096B4:   End If
  loc_F096B4: End If
  loc_F096C6: Proc_183_40_F30B0C(Me, KeyCode)
  loc_F096CE: Exit Sub
End Sub

Private Sub Command1_Click() 'E3C798
  'Data Table: 58C0C8
  loc_E3C772: Call 0.Method_arg_100 (var_88)
  loc_E3C789: Me.PictParameter.Width = (var_88 / CDbl(2))
  loc_E3C791: Call Form_Resize()
  loc_E3C796: Exit Sub
End Sub

Private Sub BtnParam_Click() '103C538
  'Data Table: 58C0C8
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  loc_103C2F8: On Error Goto loc_103C50E
  loc_103C307: Me.FrDetail.Visible = True
  loc_103C31E: Me.FrDetail.Left = CDbl(1395)
  loc_103C335: Me.FrDetail.Top = CDbl(1900)
  loc_103C343: var_8C = GRepFormName
  loc_103C34E: If Not (var_8C = "Led") Then
  loc_103C359:   If Not (var_8C = "LedInt") Then
  loc_103C364:     If Not (var_8C = "LedDeb") Then
  loc_103C36F:       If Not (var_8C = "LedCred") Then
  loc_103C37A:         If (var_8C = "AcCheckList") Then
  loc_103C37D:         End If
  loc_103C37D:       End If
  loc_103C37D:     End If
  loc_103C37D:   End If
  loc_103C388:   Set var_88 = Me.Label1
  loc_103C38E:   Call 0.Method_BtnParam_Click0 (7, var_90)
  loc_103C396:   var_90.Visible = True
  loc_103C3AF:   Set var_88 = Me.TEXT
  loc_103C3B5:   Call 0.Method_BtnParam_Click0 (CInt(&HD), var_90)
  loc_103C3BD:   var_90.Visible = True
  loc_103C3C9: End If
  loc_103C3D4: Set var_88 = Me.Label1
  loc_103C3DA: Call 0.Method_BtnParam_Click0 (6, var_90)
  loc_103C3E2: var_90.Visible = True
  loc_103C3FB: Set var_88 = Me.TEXT
  loc_103C401: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_90)
  loc_103C409: var_90.Visible = True
  loc_103C423: Set var_90 = Me.TEXT
  loc_103C429: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_98)
  loc_103C44F: var_AC = CVar((Me.FrDetail.Left + var_98.Left)) 'Single
  loc_103C45E: Me.DGSite.Left = var_AC
  loc_103C47C: Set var_90 = Me.TEXT
  loc_103C482: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_98)
  loc_103C49D: Set var_C0 = Me.TEXT
  loc_103C4A3: Call 0.Method_BtnParam_Click0 (CInt(&HC), var_C4)
  loc_103C4CD: var_AC = CVar(((Me.FrDetail.Top + var_98.Top) + var_C4.Height)) 'Single
  loc_103C4DC: Me.DGSite.Top = var_AC
  loc_103C502: Me.DGSite.Tag = CVar(CStr(&HC))
  loc_103C50D: Exit Sub
  loc_103C50E: ' Referenced from: 103C2F8
  loc_103C514: Call 0.Method_arg_50 (var_E0)
  loc_103C51C: var_E8 = "BtnParam_Click"
  loc_103C529: Proc_183_57_104AA84(var_E0)
  loc_103C535: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) 'EBB304
  'Data Table: 58C0C8
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_EBB260: On Error Resume Next
  loc_EBB268: var_86 = Index
  loc_EBB273: If (var_86 = 0) Then
  loc_EBB27C:   Set var_8C = (var_86)
  loc_EBB282:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_163
  loc_EBB290: Else
  loc_EBB298:   If (var_86 = 1) Then
  loc_EBB2A1:     Set var_8C = ()
  loc_EBB2A7:     Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_165
  loc_EBB2B5:   Else
  loc_EBB2BD:     If (var_86 = 2) Then
  loc_EBB2C6:       Set var_8C = ()
  loc_EBB2CC:       Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_164
  loc_EBB2DA:     Else
  loc_EBB2E2:       If (var_86 = 3) Then
  loc_EBB2EB:         Set var_8C = ()
  loc_EBB2F1:         Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_166
  loc_EBB2FC:       End If
  loc_EBB2FC:     End If
  loc_EBB2FC:   End If
  loc_EBB2FC: End If
  loc_EBB300: Exit Sub
  loc_EBB301: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '119EFBC
  'Data Table: 58C0C8
  Dim var_A0 As PictureBox
  loc_119EBB0: On Error Goto loc_119EF72
  loc_119EBB8: global_130 = &HFF
  loc_119EBC1: var_88 = GRepFormName
  loc_119EBCC: If (var_88 = "DayBook") Then
  loc_119EBD2:   Call Proc_245_77_161FC10(Index)
  loc_119EBDA: Else
  loc_119EBE2:   If (var_88 = "Led") Then
  loc_119EBF1:     Call Proc_245_79_1ED109C(Index, "Led")
  loc_119EBFC:   Else
  loc_119EC04:     If (var_88 = "LedInt") Then
  loc_119EC13:       Call Proc_245_79_1ED109C(Index, "LedInt")
  loc_119EC1E:     Else
  loc_119EC26:       If (var_88 = "CashBook") Then
  loc_119EC2C:         Call Proc_245_76_1930ABC(Index)
  loc_119EC34:       Else
  loc_119EC3C:         If (var_88 = "BankBook") Then
  loc_119EC42:           Call Proc_245_76_1930ABC(Index)
  loc_119EC4A:         Else
  loc_119EC52:           If (var_88 = "JournalBook") Then
  loc_119EC58:             Call Proc_245_75_1508E20(Index)
  loc_119EC60:           Else
  loc_119EC68:             If (var_88 = "Annexure") Then
  loc_119EC6E:               Call Proc_245_68_17BAD04(Index)
  loc_119EC76:             Else
  loc_119EC7E:               If (var_88 = "AgingDr") Then
  loc_119EC8D:                 Call Proc_245_69_17B4D14(Index, "Dr")
  loc_119EC98:               Else
  loc_119ECA0:                 If (var_88 = "AgingCr") Then
  loc_119ECAF:                   Call Proc_245_69_17B4D14(Index, "Cr")
  loc_119ECBA:                 Else
  loc_119ECC2:                   If (var_88 = "BankReg") Then
  loc_119ECC8:                     Call Proc_245_70_127D8B0(Index)
  loc_119ECD0:                   Else
  loc_119ECD8:                     If (var_88 = "Clg") Then
  loc_119ECDE:                       Call Proc_245_72_126F53C(Index)
  loc_119ECE6:                     Else
  loc_119ECEE:                       If (var_88 = "ClgNot") Then
  loc_119ECF4:                         Call Proc_245_73_11F8AA0(Index)
  loc_119ECFC:                       Else
  loc_119ED04:                         If (var_88 = "LedDeb") Then
  loc_119ED13:                           Call Proc_245_79_1ED109C(Index, "LedDeb")
  loc_119ED1E:                         Else
  loc_119ED26:                           If (var_88 = "LedCred") Then
  loc_119ED35:                             Call Proc_245_79_1ED109C(Index, "LedCred")
  loc_119ED40:                           Else
  loc_119ED48:                             If (var_88 = "DailySumm") Then
  loc_119ED4E:                               Call Proc_245_74_13B2538(Index)
  loc_119ED56:                             Else
  loc_119ED5E:                               If (var_88 = "NonTrans") Then
  loc_119ED64:                                 Call Proc_245_71_14C0E78(Index)
  loc_119ED6C:                               Else
  loc_119ED74:                                 If (var_88 = "DetailedTrial") Then
  loc_119ED7A:                                   Call Proc_245_78_15A619C(Index)
  loc_119ED82:                                 Else
  loc_119ED8A:                                   If (var_88 = "RefReport") Then
  loc_119ED95:                                     Call Proc_245_67_153E3E0(Index)
  loc_119ED9D:                                   Else
  loc_119EDA5:                                     If (var_88 = "AcCheckList") Then
  loc_119EDB4:                                       Call Proc_245_79_1ED109C(Index, "AcCheckList")
  loc_119EDBF:                                     Else
  loc_119EDC7:                                       If (var_88 = "DUELIST") Then
  loc_119EDCA:                                         Call Proc_245_80_1775E54(global_130)
  loc_119EDD2:                                       Else
  loc_119EDDA:                                         If (var_88 = "CONTROLLED") Then
  loc_119EDE0:                                           Call Proc_245_81_147DEB4(Index)
  loc_119EDE8:                                         Else
  loc_119EDF0:                                           If (var_88 = "RozNamcha") Then
  loc_119EDF6:                                             Call Proc_245_84_191D258(Index)
  loc_119EDFE:                                           Else
  loc_119EE06:                                             If (var_88 = "BudgetVariance") Then
  loc_119EE0C:                                               Call Proc_245_85_197218C(Index)
  loc_119EE14:                                             Else
  loc_119EE1C:                                               If (var_88 = "Budget") Then
  loc_119EE22:                                                 Call Proc_245_86_17DDF80(Index)
  loc_119EE2A:                                               Else
  loc_119EE32:                                                 If (var_88 = "AgingRepDr") Then
  loc_119EE38:                                                   var_8C = "Dr"
  loc_119EE41:                                                   Call Proc_245_89_17F3510(Index)
  loc_119EE4C:                                                 Else
  loc_119EE54:                                                   If (var_88 = "AgingRepCr") Then
  loc_119EE5A:                                                     var_8C = "Cr"
  loc_119EE63:                                                     Call Proc_245_89_17F3510(Index, var_8C)
  loc_119EE6B:                                                   End If
  loc_119EE6B:                                                 End If
  loc_119EE6B:                                               End If
  loc_119EE6B:                                             End If
  loc_119EE6B:                                           End If
  loc_119EE6B:                                         End If
  loc_119EE6B:                                       End If
  loc_119EE6B:                                     End If
  loc_119EE6B:                                   End If
  loc_119EE6B:                                 End If
  loc_119EE6B:                               End If
  loc_119EE6B:                             End If
  loc_119EE6B:                           End If
  loc_119EE6B:                         End If
  loc_119EE6B:                       End If
  loc_119EE6B:                     End If
  loc_119EE6B:                   End If
  loc_119EE6B:                 End If
  loc_119EE6B:               End If
  loc_119EE6B:             End If
  loc_119EE6B:           End If
  loc_119EE6B:         End If
  loc_119EE6B:       End If
  loc_119EE6B:     End If
  loc_119EE6B:   End If
  loc_119EE6B: End If
  loc_119EE74: If (global_130 = 0) Then
  loc_119EE85:   Me.PictParameter.Width = CDbl(0)
  loc_119EE8D:   Call Form_Resize()
  loc_119EE92:   Exit Sub
  loc_119EE93: End If
  loc_119EE99: If (Index = 1) Then
  loc_119EEA2:   var_A4 = GRepFormName
  loc_119EEAD:   If Not (var_A4 = "BudgetVariance") Then
  loc_119EEB8:     If (var_A4 = "Budget") Then
  loc_119EEBB:     End If
  loc_119EEBB:     Call Proc_245_65_17501C8(var_8C)
  loc_119EEC0:   End If
  loc_119EEC6:   Call 0.Method_arg_150 ()
  loc_119EEDC:   Call Proc_245_92_14984B0(MemVar_1F921E4, Index)
  loc_119EEE4: Else
  loc_119EEEA:   var_AC = GRepFormName
  loc_119EEF5:   If Not (var_AC = "AgingDr") Then
  loc_119EF00:     If Not (var_AC = "AgingCr") Then
  loc_119EF0B:       If Not (var_AC = "AgingRepDr") Then
  loc_119EF16:         If (var_AC = "AgingRepCr") Then
  loc_119EF19:         End If
  loc_119EF19:       End If
  loc_119EF19:     End If
  loc_119EF1C:   Else
  loc_119EF24:     If Not (var_AC = "BudgetVariance") Then
  loc_119EF2F:       If (var_AC = "Budget") Then
  loc_119EF32:       End If
  loc_119EF32:       Call Proc_245_65_17501C8(global_120)
  loc_119EF3A:     Else
  loc_119EF3A:       Call Proc_245_65_17501C8(&HFF)
  loc_119EF3F:     End If
  loc_119EF3F:   End If
  loc_119EF45:   Call 0.Method_arg_150 ()
  loc_119EF5B:   Call Proc_245_92_14984B0(MemVar_1F921E4, Index)
  loc_119EF60: End If
  loc_119EF65: global_128 = 0
  loc_119EF6D: MemVar_1F921E4 = Nothing
  loc_119EF71: Exit Sub
  loc_119EF72: ' Referenced from: 119EBB0
  loc_119EF7A: Set var_A0 = Err()
  loc_119EF80: Call 0.Method_arg_2C (var_8C, global_128)
  loc_119EF8B: Call 0.Method_arg_50 (var_B0, global_120)
  loc_119EFA7: MsgBox(CVar(var_8C), &H10, CVar(var_B0), var_E0, var_100)
  loc_119EFBA: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 'FD10F4
  'Data Table: 58C0C8
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD0F3C: On Error Goto loc_FD10C9
  loc_FD0F4E: (False).Visible = 
  loc_FD0F6D: If (Me.RecordCount > 0) Then
  loc_FD0F8A:   var_EC = Val(CStr(().Tag))
  loc_FD0FC9:   Set var_CC = Me.TxtGrid
  loc_FD0FCF:   Call 0.Method_DGGroup_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD0FD7:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FD0FFB:   Set var_B4 = (var_EC)
  loc_FD1011:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD1050:   Set var_CC = Me.TxtGrid
  loc_FD1056:   Call 0.Method_DGGroup_UnknownEvent_90 (CInt(var_EC), var_D0)
  loc_FD105E:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FD107E: End If
  loc_FD1090: var_C8 = CStr((var_EC).Tag)
  loc_FD10A6: Set var_B0 = Me.TxtGrid
  loc_FD10AC: Call 0.Method_DGGroup_UnknownEvent_90 (CInt(Val(var_C8)), var_B4)
  loc_FD10B4: var_B4.SetFocus
  loc_FD10C8: Exit Sub
  loc_FD10C9: ' Referenced from: FD0F3C
  loc_FD10CF: Call 0.Method_arg_50 (var_C8)
  loc_FD10E4: Proc_183_57_104AA84(var_C8, "DGGroup_Click")
  loc_FD10F0: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E0EB40
  'Data Table: 58C0C8
  Dim var_94 As Integer
  loc_E0EB28: var_94 = 0
  loc_E0EB36: Call global_192.PrinterSetup
  loc_E0EB3C: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_1D 'E0F124
  'Data Table: 58C0C8
  loc_E0F11A: ().SetFocus
  loc_E0F122: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FC5AD4
  'Data Table: 58C0C8
  Dim var_94 As Variant
  Dim var_BC As String
  Dim var_A8 As TextBox
  loc_FC5939: Set var_A8 = 0(True)
  loc_FC5947: On Error Goto loc_FC5ACF
  loc_FC595F: var_BC = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc|"
  loc_FC5975: Set var_A8 = TxtGrid.DispID_12(CVar(var_BC & "Adobe Acrobat(*.pdf)|*.pdf|" & "Other Formats(*.*)|*.*"))
  loc_FC599B: Set var_A8 = TxtGrid.DispID_3("Select File Name")
  loc_FC59B7: Set var_A8 = TxtGrid.DispID_2(global_208)
  loc_FC59C9: Set var_A8 = (TxtGrid.DispID_1)
  loc_FC59CF: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_1F
  loc_FC59DE: Set var_A8 = ()
  loc_FC59FD: If (CStr(TxtGrid.DispID_1) <> vbNullString) Then
  loc_FC5A19:   Set var_D4 = global_192.ExportOptions 
  loc_FC5A25:   Call 0.Method_arg_2C (1)
  loc_FC5A31:   Set var_A8 = (var_D8)
  loc_FC5A45:   Call Proc_245_90_EB029C(CByte(CInt(TxtGrid.DispID_17)))
  loc_FC5A52:   Call 0.Method_arg_24 (CLng(var_D8))
  loc_FC5A61:   Set var_A8 = ()
  loc_FC5A75:   Call 0.Method_arg_3C (CStr(TxtGrid.DispID_1))
  loc_FC5A85:   Set var_D4 = Nothing 
  loc_FC5A8D:   Set var_A8 = ()
  loc_FC5AA4:   If (CInt(TxtGrid.DispID_17) = 6) Then
  loc_FC5AA7:     var_94 = True
  loc_FC5AB3:     Call global_192.Export
  loc_FC5ABC:   Else
  loc_FC5ABC:     var_94 = False
  loc_FC5AC9:     Call global_192.Export
  loc_FC5ACF:   End If
  loc_FC5ACF:   ' Referenced from: FC5947
  loc_FC5ACF: End If
  loc_FC5ACF: Exit Sub
  loc_FC5AD0: Exit Sub
End Sub

Public Function GRepFormNameGet() '58E974
  GRepFormNameGet = GRepFormName
End Function

Public Sub GRepFormNamePut(Value) '58E983
  GRepFormName = Value
End Sub

Public Function mDetailTrial(Rst) '1045348
  'Data Table: 58C0C8
  Dim var_8C As Recordset15
  loc_10450E5: Set var_8C = Rst 
  loc_104510D: var_8C.Fields.Append "TT", 3, 0
  loc_1045139: var_8C.Fields.Append "GroupName", &HC8, &HFF
  loc_1045165: var_8C.Fields.Append "GRCODE", &HC8, &HFF
  loc_1045191: var_8C.Fields.Append "PARTYCODE", &HC8, &HFF
  loc_10451BD: var_8C.Fields.Append "PARTYNAME", &HC8, &HFF
  loc_10451E9: var_8C.Fields.Append "OP_CR", 5, 0
  loc_1045215: var_8C.Fields.Append "OP_dR", 5, 0
  loc_1045241: var_8C.Fields.Append "BALANCECR", 5, 0
  loc_104526D: var_8C.Fields.Append "BALANCEDR", 5, 0
  loc_1045299: var_8C.Fields.Append "Bal", 3, 0
  loc_10452C5: var_8C.Fields.Append "mgrcode", &HC8, &HFF
  loc_10452F1: var_8C.Fields.Append "GRName", &HC8, &HFF
  loc_1045301: var_8C.CursorType = 3
  loc_104530E: var_8C.LockType = 3
  loc_104532D: var_8C.Open var_A0, var_B0, -1
  loc_1045334: Set var_8C = Nothing 
  loc_104533B: Set var_88 = Rst 
  loc_104533F: mDetailTrial = -1
  loc_1045345: DOC
End Function

Public Function mAgeingReport(Rst) '10448B8
  'Data Table: 58C0C8
  Dim var_8C As Recordset15
  loc_1044655: Set var_8C = Rst 
  loc_104467D: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_10446A9: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_10446D5: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_1044701: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_104472D: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_1044759: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_1044785: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_10447B1: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_10447DD: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_1044809: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_1044835: var_8C.Fields.Append "CON_PER", &HC8, &H32
  loc_1044861: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_1044871: var_8C.CursorType = 3
  loc_104487E: var_8C.LockType = 3
  loc_104489D: var_8C.Open var_A0, var_B0, -1
  loc_10448A4: Set var_8C = Nothing 
  loc_10448AB: Set var_88 = Rst 
  loc_10448AF: mAgeingReport = -1
End Function

Public Sub Proc_245_58_19C587C(arg_C, arg_10) '19C587C
  'Data Table: 58C0C8
  Dim var_9C As String
  Dim var_B4 As Long
  Dim Me As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_138 As ListView
  Dim var_13C As Variant
  Dim var_194 As String
  loc_19C27A8: On Error Goto loc_19C584D
  loc_19C27B9: var_8C = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19C27CD: var_90 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19C27E1: var_94 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19C27F5: var_98 = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19C27FF: Set var_A0 = ()
  loc_19C280E: var_B4 = CLng(TxtGrid.DispID_A)
  loc_19C281E: If Not (var_B4 = CLng(5)) Then
  loc_19C2828:   If Not (var_B4 = CLng(6)) Then
  loc_19C2832:     If Not (var_B4 = CLng(7)) Then
  loc_19C283C:       If Not (var_B4 = CLng(8)) Then
  loc_19C2846:         If (var_B4 = CLng(9)) Then
  loc_19C2849:         End If
  loc_19C2849:       End If
  loc_19C2849:     End If
  loc_19C2849:   End If
  loc_19C284F:   var_B8 = GRepFormName
  loc_19C285A:   If Not (var_B8 = "Led") Then
  loc_19C2865:     If Not (var_B8 = "LedInt") Then
  loc_19C2870:       If Not (var_B8 = "LedDeb") Then
  loc_19C287B:         If Not (var_B8 = "LedCred") Then
  loc_19C2886:           If (var_B8 = "AcCheckList") Then
  loc_19C2889:           End If
  loc_19C2889:         End If
  loc_19C2889:       End If
  loc_19C2889:     End If
  loc_19C288D:     Set var_A0 = (var_B4)
  loc_19C28A6:     If (CLng(TxtGrid.DispID_A) = CLng(5)) Then
  loc_19C28F7:       Set var_A0 = Me.TxtGrid
  loc_19C28FD:       Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4)
  loc_19C291D:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_C4.Text = vbNullString)) Then
  loc_19C2924:         Set var_A0 = ()
  loc_19C293C:         Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C2960:         LateIdCallSt
  loc_19C297C:         Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C298B:         var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C29A3:         Set var_C4 = 2(vbNullString)
  loc_19C29A9:         LateIdCallSt
  loc_19C29BE:       Else
  loc_19C29C2:         Set var_138 = var_E4(var_C4)
  loc_19C29DA:         Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C2A2A:         LateIdCallSt
  loc_19C2A4E:         Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C2A5D:         var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C2A88:         var_C4 = Me.Fields.Item("Code")
  loc_19C2AA1:         Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C2AA7:         LateIdCallSt
  loc_19C2AC3:       End If
  loc_19C2AC3:     End If
  loc_19C2AC6:   Else
  loc_19C2ACA:     Set var_138 = var_F4(var_13C)
  loc_19C2AE2:     Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C2B02:     Set var_A0 = Me.TxtGrid
  loc_19C2B08:     Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C2B20:     Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_C4.Text))
  loc_19C2B26:     LateIdCallSt
  loc_19C2B44:   End If
  loc_19C2B47: Else
  loc_19C2B4E:   If (var_B4 = CLng(2)) Then
  loc_19C2B57:     var_164 = GRepFormName
  loc_19C2B62:     If Not (var_164 = "DUELIST") Then
  loc_19C2B6D:       If (var_164 = "BankReg") Then
  loc_19C2B70:       End If
  loc_19C2B7C:       Set var_A0 = Me.TxtGrid
  loc_19C2B82:       Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C2BA1:       If (var_C4.Text <> vbNullString) Then
  loc_19C2BA8:         Set var_138 = (var_160)
  loc_19C2BC0:         Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C2BF2:         var_9C = Me.ListView.SelectedItem.Text
  loc_19C2C08:         LateIdCallSt
  loc_19C2C3B:         var_E4 = CVar(CLng((CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))).MouseIcon)) 'Long
  loc_19C2C40:         var_104 = 2
  loc_19C2C63:         Set var_C4 = Me.ListView.SelectedItem
  loc_19C2C69:         1 = var_C4.SubItems
  loc_19C2C79:         Set var_13C = var_9C(CVar(var_9C))
  loc_19C2C7F:         LateIdCallSt
  loc_19C2C9B:       End If
  loc_19C2C9E:     Else
  loc_19C2CA6:       If Not (var_164 = "CashBook") Then
  loc_19C2CB1:         If Not (var_164 = "BankBook") Then
  loc_19C2CBC:           If Not (var_164 = "Led") Then
  loc_19C2CC7:             If Not (var_164 = "LedInt") Then
  loc_19C2CD2:               If Not (var_164 = "LedDeb") Then
  loc_19C2CDD:                 If Not (var_164 = "LedCred") Then
  loc_19C2CE8:                   If Not (var_164 = "AcCheckList") Then
  loc_19C2CF3:                     If Not (var_164 = "DayBook") Then
  loc_19C2CFE:                       If Not (var_164 = "RozNamcha") Then
  loc_19C2D09:                         If (var_164 = "DetailedTrial") Then
  loc_19C2D0C:                         End If
  loc_19C2D0C:                       End If
  loc_19C2D0C:                     End If
  loc_19C2D0C:                   End If
  loc_19C2D0C:                 End If
  loc_19C2D0C:               End If
  loc_19C2D0C:             End If
  loc_19C2D0C:           End If
  loc_19C2D0C:         End If
  loc_19C2D18:         Set var_A0 = Me.TxtGrid
  loc_19C2D1E:         Call 0.Method_Proc_245_58_19C587C0 (0, var_C4, var_9C)
  loc_19C2D26:         var_13C = var_C4.Text
  loc_19C2D3D:         If (var_9C <> vbNullString) Then
  loc_19C2D44:           Set var_138 = var_E4(var_104)
  loc_19C2D5C:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C2D9E:           Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(Me.ListView.SelectedItem.Text))
  loc_19C2DA4:           LateIdCallSt
  loc_19C2DC4:         End If
  loc_19C2DCA:         var_168 = GRepFormName
  loc_19C2DD5:         If Not (var_168 = "Led") Then
  loc_19C2DE0:           If Not (var_168 = "LedInt") Then
  loc_19C2DEB:             If Not (var_168 = "LedDeb") Then
  loc_19C2DF6:               If Not (var_168 = "LedCred") Then
  loc_19C2E01:                 If (var_168 = "AcCheckList") Then
  loc_19C2E04:                 End If
  loc_19C2E04:               End If
  loc_19C2E04:             End If
  loc_19C2E04:           End If
  loc_19C2E20:           Set var_C4 = (CVar(CLng((var_160).MouseIcon)))
  loc_19C2E38:           Set var_138 = (CVar(CLng(var_C4.MousePointer)))
  loc_19C2E75:           If (Ucase(CVar(CStr(ListView.DispID_41))) = "SELECTED") Then
  loc_19C2E84:             Me.TxtDetails.Visible = True
  loc_19C2E99:             Set var_A0 = var_C4(1)
  loc_19C2E9F:             Call 0.Method_Proc_245_58_19C587C0 (True)
  loc_19C2EA7:             var_C4.Visible = 
  loc_19C2EBE:             Set var_A0 = Me.Check1
  loc_19C2EC4:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C2ECC:             var_C4.Visible = True
  loc_19C2EE6:             Set var_A0 = var_C4(2)
  loc_19C2EEC:             Call 0.Method_Proc_245_58_19C587C0 (False)
  loc_19C2EF4:             var_C4.Visible = 
  loc_19C2F0B:             Set var_A0 = Me.Check1
  loc_19C2F11:             Call 0.Method_Proc_245_58_19C587C0 (2, var_C4)
  loc_19C2F19:             var_C4.Visible = False
  loc_19C2F3A:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C2F40:             LateIdCallSt
  loc_19C2F60:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C2F66:             LateIdCallSt
  loc_19C2F86:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C2F8C:             LateIdCallSt
  loc_19C2FB4:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C2FBC:           End If
  loc_19C2FC0:           Set var_A0 = var_A0(var_A0)
  loc_19C2FD8:           Set var_C4 = (CVar(CLng(Check1.DispID_A)))
  loc_19C2FF0:           Set var_138 = (CVar(CLng(Check1.DispID_B)))
  loc_19C302D:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "MERGE") Then
  loc_19C303C:             Me.TxtDetails.Visible = False
  loc_19C3047:             var_E4 = CVar(CLng(3)) 'Long
  loc_19C305F:             Set var_A0 = 0("From Account        ")
  loc_19C3065:             LateIdCallSt
  loc_19C3085:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C308B:             LateIdCallSt
  loc_19C3099:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C30B1:             Set var_A0 = 0("To Account          ")
  loc_19C30B7:             LateIdCallSt
  loc_19C30D7:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C30DD:             LateIdCallSt
  loc_19C30FD:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C3103:             LateIdCallSt
  loc_19C3123:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C3129:             LateIdCallSt
  loc_19C3149:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C314F:             LateIdCallSt
  loc_19C3177:             CInt(4)(CVar(CDbl(1550))).Height = CInt(4)(CVar(CDbl(1550)))
  loc_19C317F:             var_E4 = False
  loc_19C3193:             Call 0.Method_Proc_245_58_19C587C0 (var_E4, var_C4(1), var_C4(1), var_C4(1), var_C4(1))
  loc_19C319B:             var_C4.Visible = var_E4
  loc_19C31B8:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4, 0)
  loc_19C31C0:             var_C4.Visible = Me.Check1
  loc_19C31CC:             var_E4 = False
  loc_19C31E0:             Call 0.Method_Proc_245_58_19C587C0 (var_E4, var_C4(2))
  loc_19C31E8:             var_C4.Visible = var_E4
  loc_19C31FF:             Set var_A0 = Me.Check1
  loc_19C3205:             Call 0.Method_Proc_245_58_19C587C0 (2, var_C4)
  loc_19C320D:             var_C4.Visible = False
  loc_19C321C:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C3260:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C3266:             LateIdCallSt
  loc_19C3281:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C32C5:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C32CB:             LateIdCallSt
  loc_19C32E6:             var_F4 = CVar(CLng(4)) 'Long
  loc_19C332A:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C3330:             LateIdCallSt
  loc_19C3357:             Me.Filter = 0
  loc_19C335F:             var_F4 = CVar(CLng(4)) 'Long
  loc_19C33A3:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C33A9:             LateIdCallSt
  loc_19C33C1:           End If
  loc_19C33C5:           Set var_A0 = var_F4(var_138)
  loc_19C33DD:           Set var_C4 = var_138(CVar(CLng(Check1.DispID_A)))
  loc_19C33F5:           Set var_138 = var_F4(CVar(CLng(Check1.DispID_B)))
  loc_19C3432:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "GROUP(SELECTED)") Then
  loc_19C3441:             Me.TxtDetails.Visible = False
  loc_19C3457:             Call Proc_245_63_11E9F30(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName", var_138)
  loc_19C346D:             Set var_A0 = var_C4(1)
  loc_19C3473:             Call 0.Method_Proc_245_58_19C587C0 (False, var_F4)
  loc_19C347B:             var_C4.Visible = var_138
  loc_19C3492:             Set var_A0 = Me.Check1
  loc_19C3498:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C34A0:             var_C4.Visible = False
  loc_19C34B9:             Set var_A0 = var_C4(2)
  loc_19C34BF:             Call 0.Method_Proc_245_58_19C587C0 (True)
  loc_19C34C7:             var_C4.Visible = var_F4
  loc_19C34DE:             Set var_A0 = Me.Check1
  loc_19C34E4:             Call 0.Method_Proc_245_58_19C587C0 (2, var_C4)
  loc_19C34EC:             var_C4.Visible = True
  loc_19C3501:             Set var_A0 = var_C4(1)
  loc_19C3507:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3526:             Set var_138 = var_13C(2)
  loc_19C352C:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Height)))
  loc_19C3534:             var_13C.Height = 
  loc_19C3550:             Set var_A0 = var_C4(1)
  loc_19C3556:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3575:             Set var_138 = var_13C(2)
  loc_19C357B:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Left)))
  loc_19C3583:             var_13C.Left = 
  loc_19C359F:             Set var_A0 = var_C4(1)
  loc_19C35A5:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C35C4:             Set var_138 = var_13C(2)
  loc_19C35CA:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Width)))
  loc_19C35D2:             var_13C.Width = 
  loc_19C35EE:             Set var_A0 = var_C4(1)
  loc_19C35F4:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3613:             Set var_138 = var_13C(2)
  loc_19C3619:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Top)))
  loc_19C3621:             var_13C.Top = 
  loc_19C3640:             Set var_A0 = Me.Check1
  loc_19C3646:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C365F:             Set var_138 = Me.Check1
  loc_19C3665:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C366D:             var_13C.Height = var_C4.Height
  loc_19C3689:             Set var_A0 = Me.Check1
  loc_19C368F:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C36A8:             Set var_138 = Me.Check1
  loc_19C36AE:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C36B6:             var_13C.Left = var_C4.Left
  loc_19C36D2:             Set var_A0 = Me.Check1
  loc_19C36D8:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C36F1:             Set var_138 = Me.Check1
  loc_19C36F7:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C36FF:             var_13C.Width = var_C4.Width
  loc_19C371B:             Set var_A0 = Me.Check1
  loc_19C3721:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C373A:             Set var_138 = Me.Check1
  loc_19C3740:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C3748:             var_13C.Top = var_C4.Top
  loc_19C376D:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C3773:             LateIdCallSt
  loc_19C3793:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C3799:             LateIdCallSt
  loc_19C37B9:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C37BF:             LateIdCallSt
  loc_19C37E7:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C37EF:           End If
  loc_19C3804:           Set var_A0 = CVar(CLng(2))(1)
  loc_19C3837:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "GROUP(RANGE)") Then
  loc_19C3846:             Me.TxtDetails.Visible = False
  loc_19C3851:             var_E4 = CVar(CLng(3)) 'Long
  loc_19C3869:             Set var_A0 = 0("For Group           ")
  loc_19C386F:             LateIdCallSt
  loc_19C388F:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19C3895:             LateIdCallSt
  loc_19C38A3:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C38BB:             Set var_A0 = 0("From Account        ")
  loc_19C38C1:             LateIdCallSt
  loc_19C38E1:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19C38E7:             LateIdCallSt
  loc_19C38F5:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C390D:             Set var_A0 = 0("To Account          ")
  loc_19C3913:             LateIdCallSt
  loc_19C3933:             Set var_A0 = CVar(CLng(5))(&H10E)
  loc_19C3939:             LateIdCallSt
  loc_19C3947:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C398B:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19C3991:             LateIdCallSt
  loc_19C39AC:             var_F4 = CVar(CLng(3)) 'Long
  loc_19C39F0:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C39F6:             LateIdCallSt
  loc_19C3A1D:             Me.Filter = 0
  loc_19C3A22:             var_F4 = " GroupCode='"
  loc_19C3A44:             var_C4 = Me.Fields.Item("Code")
  loc_19C3A68:             Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19C3A80:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C3A98:             Set var_A0 = 1(vbNullString)
  loc_19C3A9E:             LateIdCallSt
  loc_19C3AAC:             var_E4 = CVar(CLng(4)) 'Long
  loc_19C3AC4:             Set var_A0 = 2(vbNullString)
  loc_19C3ACA:             LateIdCallSt
  loc_19C3AD8:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C3AF0:             Set var_A0 = 1(vbNullString)
  loc_19C3AF6:             LateIdCallSt
  loc_19C3B04:             var_E4 = CVar(CLng(5)) 'Long
  loc_19C3B1C:             Set var_A0 = 2(vbNullString)
  loc_19C3B22:             LateIdCallSt
  loc_19C3B4A:             CInt(5)(CVar(CDbl(1860))).Height = CInt(5)(CVar(CDbl(1860)))
  loc_19C3B52:             var_E4 = False
  loc_19C3B60:             Set var_A0 = var_C4(1)
  loc_19C3B66:             Call 0.Method_Proc_245_58_19C587C0 (var_E4, var_E4, var_A0, var_E4, var_A0, var_E4)
  loc_19C3B6E:             var_C4.Visible = var_A0
  loc_19C3B85:             Set var_A0 = Me.Check1
  loc_19C3B8B:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4, 0, var_E4)
  loc_19C3B93:             var_C4.Visible = var_138
  loc_19C3BAD:             Set var_A0 = var_C4(2)
  loc_19C3BB3:             Call 0.Method_Proc_245_58_19C587C0 (False, var_F4)
  loc_19C3BBB:             var_C4.Visible = var_138
  loc_19C3BD2:             Set var_A0 = Me.Check1
  loc_19C3BD8:             Call 0.Method_Proc_245_58_19C587C0 (2, var_C4)
  loc_19C3BE0:             var_C4.Visible = False
  loc_19C3BEC:           End If
  loc_19C3BF0:           Set var_A0 = (var_F4)
  loc_19C3C08:           Set var_C4 = (CVar(CLng(Check1.DispID_A)))
  loc_19C3C20:           Set var_138 = (CVar(CLng(Check1.DispID_B)))
  loc_19C3C5D:           If (Ucase(CVar(CStr(Check1.DispID_41))) = "CITY WISE") Then
  loc_19C3C6C:             Me.TxtDetails.Visible = False
  loc_19C3C77:             var_9C = "SELECT '' as O,CityName,CityCode as Code from City Order by CityName"
  loc_19C3C82:             Call Proc_245_63_11E9F30(2)
  loc_19C3C97:             Set var_A0 = var_C4(2)
  loc_19C3C9D:             Call 0.Method_Proc_245_58_19C587C0 (True)
  loc_19C3CA5:             var_C4.Visible = var_9C
  loc_19C3CBC:             Set var_A0 = Me.Check1
  loc_19C3CC2:             Call 0.Method_Proc_245_58_19C587C0 (2, var_C4)
  loc_19C3CCA:             var_C4.Visible = True
  loc_19C3CE4:             Set var_A0 = var_C4(1)
  loc_19C3CEA:             Call 0.Method_Proc_245_58_19C587C0 (False)
  loc_19C3CF2:             var_C4.Visible = 
  loc_19C3D09:             Set var_A0 = Me.Check1
  loc_19C3D0F:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C3D17:             var_C4.Visible = False
  loc_19C3D2C:             Set var_A0 = var_C4(1)
  loc_19C3D32:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3D51:             Set var_138 = var_13C(2)
  loc_19C3D57:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Height)))
  loc_19C3D5F:             var_13C.Height = 
  loc_19C3D7B:             Set var_A0 = var_C4(1)
  loc_19C3D81:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3DA0:             Set var_138 = var_13C(2)
  loc_19C3DA6:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Left)))
  loc_19C3DAE:             var_13C.Left = 
  loc_19C3DCA:             Set var_A0 = var_C4(1)
  loc_19C3DD0:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3DEF:             Set var_138 = var_13C(2)
  loc_19C3DF5:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Width)))
  loc_19C3DFD:             var_13C.Width = 
  loc_19C3E19:             Set var_A0 = var_C4(1)
  loc_19C3E1F:             Call 0.Method_Proc_245_58_19C587C0 ()
  loc_19C3E3E:             Set var_138 = var_13C(2)
  loc_19C3E44:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CDbl(var_C4.Top)))
  loc_19C3E4C:             var_13C.Top = 
  loc_19C3E6B:             Set var_A0 = Me.Check1
  loc_19C3E71:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C3E8A:             Set var_138 = Me.Check1
  loc_19C3E90:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C3E98:             var_13C.Height = var_C4.Height
  loc_19C3EB4:             Set var_A0 = Me.Check1
  loc_19C3EBA:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C3ED3:             Set var_138 = Me.Check1
  loc_19C3ED9:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C3EE1:             var_13C.Left = var_C4.Left
  loc_19C3EFD:             Set var_A0 = Me.Check1
  loc_19C3F03:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C3F1C:             Set var_138 = Me.Check1
  loc_19C3F22:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C3F2A:             var_13C.Width = var_C4.Width
  loc_19C3F46:             Set var_A0 = Me.Check1
  loc_19C3F4C:             Call 0.Method_Proc_245_58_19C587C0 (1, var_C4)
  loc_19C3F65:             Set var_138 = Me.Check1
  loc_19C3F6B:             Call 0.Method_Proc_245_58_19C587C0 (2, var_13C)
  loc_19C3F73:             var_13C.Top = var_C4.Top
  loc_19C3F98:             Set var_A0 = CVar(CLng(3))(0)
  loc_19C3F9E:             LateIdCallSt
  loc_19C3FBE:             Set var_A0 = CVar(CLng(4))(0)
  loc_19C3FC4:             LateIdCallSt
  loc_19C3FE4:             Set var_A0 = CVar(CLng(5))(0)
  loc_19C3FEA:             LateIdCallSt
  loc_19C4012:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19C401A:           End If
  loc_19C401A:         End If
  loc_19C401D:       Else
  loc_19C4025:         If Not (var_164 = "JournalBook") Then
  loc_19C4030:           If (var_164 = "Annexure") Then
  loc_19C4033:           End If
  loc_19C403C:           var_BC = Me.RecordCount
  loc_19C4087:           Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C)
  loc_19C408F:           ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C40A7:           If (Me.TxtGrid Or (var_9C = vbNullString)) Then
  loc_19C40AE:             Set var_A0 = (var_A0)
  loc_19C40C6:             Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C40EA:             LateIdCallSt
  loc_19C4106:             Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C4115:             var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C412D:             Set var_C4 = 2(vbNullString)
  loc_19C4133:             LateIdCallSt
  loc_19C4148:           Else
  loc_19C414C:             Set var_138 = var_E4(var_C4)
  loc_19C4164:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C41B4:             LateIdCallSt
  loc_19C41D8:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C41E7:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C422B:             Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C4231:             LateIdCallSt
  loc_19C424D:           End If
  loc_19C425E:           If (GRepFormName = "Annexure") Then
  loc_19C4279:             Set var_A0 = CVar(CLng(2))(2)
  loc_19C4295:             var_194 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(TxtGrid.DispID_41) & "' "
  loc_19C42AC:             Call Proc_245_63_11E9F30(1, var_194 & var_90 & " Order by Name")
  loc_19C42CE:             var_B0 = var_F4(var_13C).Height
  loc_19C42DE:             Set var_C4 = Me.Pic
  loc_19C42EF:             Call 0.Method_Me8 (var_BC)
  loc_19C4306:             var_E4 = CVar((((var_BC - CDbl(var_B0)) - var_C4.Height) - CDbl(1200))) 'Single
  loc_19C4314:             Set var_138 = var_13C(1)
  loc_19C431A:             Call 0.Method_Proc_245_58_19C587C0 (CVar(CLng(2)))
  loc_19C4322:             var_13C.Height = var_B0
  loc_19C4335:           End If
  loc_19C4338:         Else
  loc_19C4340:           If Not (var_164 = "DailySumm") Then
  loc_19C434B:             If Not (var_164 = "AgingDr") Then
  loc_19C4356:               If Not (var_164 = "AgingCr") Then
  loc_19C4361:                 If Not (var_164 = "Clg") Then
  loc_19C436C:                   If Not (var_164 = "ClgNot") Then
  loc_19C4377:                     If Not (var_164 = "AgingRepDr") Then
  loc_19C4382:                       If (var_164 = "AgingRepCr") Then
  loc_19C4385:                       End If
  loc_19C4385:                     End If
  loc_19C4385:                   End If
  loc_19C4385:                 End If
  loc_19C4385:               End If
  loc_19C4385:             End If
  loc_19C43D3:             Set var_A0 = Me.TxtGrid
  loc_19C43D9:             Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4)
  loc_19C43E1:             var_9C = var_C4.Text
  loc_19C43F9:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C = vbNullString)) Then
  loc_19C4400:               Set var_A0 = ()
  loc_19C4418:               Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C443C:               LateIdCallSt
  loc_19C4458:               Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C4467:               var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C447F:               Set var_C4 = 2(vbNullString)
  loc_19C4485:               LateIdCallSt
  loc_19C449A:             Else
  loc_19C449E:               Set var_138 = var_E4(var_C4)
  loc_19C44B6:               Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4506:               LateIdCallSt
  loc_19C452A:               Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C4539:               var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4564:               var_C4 = Me.Fields.Item("Code")
  loc_19C457D:               Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C4583:               LateIdCallSt
  loc_19C459F:             End If
  loc_19C459F:           End If
  loc_19C459F:         End If
  loc_19C459F:       End If
  loc_19C459F:     End If
  loc_19C45A2:   Else
  loc_19C45A9:     If (var_B4 = CLng(3)) Then
  loc_19C45B2:       var_1A4 = GRepFormName
  loc_19C45BD:       If (var_1A4 = "DUELIST") Then
  loc_19C45CC:         Set var_A0 = Me.TxtGrid
  loc_19C45D2:         Call 0.Method_Proc_245_58_19C587C0 (0, var_C4, var_9C)
  loc_19C45DA:         var_13C = var_C4.Text
  loc_19C45F1:         If (var_9C <> vbNullString) Then
  loc_19C45F8:           Set var_138 = (var_F4)
  loc_19C4610:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4630:           Set var_A0 = Me.TxtGrid
  loc_19C4636:           Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C464E:           Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_C4.Text))
  loc_19C4654:           LateIdCallSt
  loc_19C4672:         End If
  loc_19C4675:       Else
  loc_19C467D:         If Not (var_1A4 = "Annexure") Then
  loc_19C4688:           If Not (var_1A4 = "RefReport") Then
  loc_19C4693:             If Not (var_1A4 = "JournalBook") Then
  loc_19C469E:               If (var_1A4 = "DetailedTrial") Then
  loc_19C46A1:               End If
  loc_19C46A1:             End If
  loc_19C46A1:           End If
  loc_19C46AD:           Set var_A0 = Me.TxtGrid
  loc_19C46B3:           Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C46D2:           If (var_C4.Text <> vbNullString) Then
  loc_19C46D9:             Set var_138 = (var_160)
  loc_19C46F1:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C471D:             Set var_C4 = Me.ListView.SelectedItem
  loc_19C4723:             var_9C = var_C4.Text
  loc_19C4733:             Set var_160 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C4739:             LateIdCallSt
  loc_19C4759:           End If
  loc_19C4759:         End If
  loc_19C4759:       End If
  loc_19C475F:       var_1A8 = GRepFormName
  loc_19C476A:       If (var_1A8 = "DayBook") Then
  loc_19C47BB:         Set var_A0 = Me.TxtGrid
  loc_19C47C1:         Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C)
  loc_19C47C9:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C47E1:         If (var_160 Or (var_9C = vbNullString)) Then
  loc_19C47E8:           Set var_A0 = ()
  loc_19C4800:           Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4824:           LateIdCallSt
  loc_19C4840:           Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C484F:           var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4867:           Set var_C4 = 2(vbNullString)
  loc_19C486D:           LateIdCallSt
  loc_19C4882:         Else
  loc_19C4886:           Set var_138 = var_E4(var_C4)
  loc_19C489E:           Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C48EE:           LateIdCallSt
  loc_19C4912:           Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C4921:           var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C494C:           var_C4 = Me.Fields.Item("Code")
  loc_19C4965:           Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C496B:           LateIdCallSt
  loc_19C4987:         End If
  loc_19C498A:       Else
  loc_19C4992:         If Not (var_1A8 = "CashBook") Then
  loc_19C499D:           If Not (var_1A8 = "BankBook") Then
  loc_19C49A8:             If (var_1A8 = "RozNamcha") Then
  loc_19C49AB:             End If
  loc_19C49AB:           End If
  loc_19C49B7:           Set var_A0 = Me.TxtGrid
  loc_19C49BD:           Call 0.Method_Proc_245_58_19C587C0 (0, var_C4, var_9C)
  loc_19C49C5:           var_13C = var_C4.Text
  loc_19C49DC:           If (var_9C <> vbNullString) Then
  loc_19C49E3:             Set var_138 = (var_F4)
  loc_19C49FB:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4A1B:             Set var_A0 = Me.TxtGrid
  loc_19C4A21:             Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C4A29:             var_9C = var_C4.Text
  loc_19C4A34:             Proc_183_6_EA3004(CVar(var_9C))
  loc_19C4A43:             Set var_160 = (CVar(CStr(CVar(CLng(TxtGrid.DispID_B)))))
  loc_19C4A49:             LateIdCallSt
  loc_19C4A69:           End If
  loc_19C4A6C:         Else
  loc_19C4A74:           If Not (var_1A8 = "Led") Then
  loc_19C4A7F:             If Not (var_1A8 = "LedInt") Then
  loc_19C4A8A:               If Not (var_1A8 = "LedDeb") Then
  loc_19C4A95:                 If Not (var_1A8 = "LedCred") Then
  loc_19C4AA0:                   If (var_1A8 = "AcCheckList") Then
  loc_19C4AA3:                   End If
  loc_19C4AA3:                 End If
  loc_19C4AA3:               End If
  loc_19C4AA3:             End If
  loc_19C4AB8:             Set var_A0 = CVar(CLng(2))(1)
  loc_19C4AEB:             If (Ucase(CVar(CStr(TxtGrid.DispID_41))) = "GROUP(RANGE)") Then
  loc_19C4B3C:               Set var_A0 = Me.TxtGrid
  loc_19C4B42:               Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C)
  loc_19C4B4A:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C4B62:               If (var_160 Or (var_9C = vbNullString)) Then
  loc_19C4B69:                 Set var_A0 = ()
  loc_19C4B81:                 Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4BA5:                 LateIdCallSt
  loc_19C4BC1:                 Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C4BD0:                 var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4BE8:                 Set var_C4 = 2(vbNullString)
  loc_19C4BEE:                 LateIdCallSt
  loc_19C4C03:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C4C1B:                 Set var_A0 = 1(vbNullString)
  loc_19C4C21:                 LateIdCallSt
  loc_19C4C2F:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C4C47:                 Set var_A0 = 2(vbNullString)
  loc_19C4C4D:                 LateIdCallSt
  loc_19C4C5B:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C4C73:                 Set var_A0 = 1(vbNullString)
  loc_19C4C79:                 LateIdCallSt
  loc_19C4C87:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C4C9F:                 Set var_A0 = 2(vbNullString)
  loc_19C4CA5:                 LateIdCallSt
  loc_19C4CB3:               Else
  loc_19C4CB7:                 Set var_138 = var_E4(var_A0)
  loc_19C4CCF:                 Set var_13C = var_A0(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4CE9:                 var_E4 = "Name"
  loc_19C4D1F:                 LateIdCallSt
  loc_19C4D43:                 Set var_138 = var_E4(CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item(var_E4).Value))))
  loc_19C4D52:                 var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4D96:                 Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C4D9C:                 LateIdCallSt
  loc_19C4DBB:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C4DD3:                 Set var_A0 = 1(vbNullString)
  loc_19C4DD9:                 LateIdCallSt
  loc_19C4DE7:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19C4DFF:                 Set var_A0 = 2(vbNullString)
  loc_19C4E05:                 LateIdCallSt
  loc_19C4E13:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C4E2B:                 Set var_A0 = 1(vbNullString)
  loc_19C4E31:                 LateIdCallSt
  loc_19C4E3F:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19C4E57:                 Set var_A0 = 2(vbNullString)
  loc_19C4E5D:                 LateIdCallSt
  loc_19C4E77:                 Me.Filter = 0
  loc_19C4E87:                 var_E4 = "Code"
  loc_19C4E9E:                 var_C4 = Me.Fields.Item(var_E4)
  loc_19C4EC2:                 Me.Filter = " GroupCode='" & var_C4.Value & "'"
  loc_19C4ED7:               End If
  loc_19C4EDA:             Else
  loc_19C4F28:               Set var_A0 = Me.TxtGrid
  loc_19C4F2E:               Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_A0, var_E4, var_A0)
  loc_19C4F4E:               If (var_A0 Or (var_9C = vbNullString)) Then
  loc_19C4F55:                 Set var_A0 = var_A0(var_C4.Text)
  loc_19C4F6D:                 Set var_C4 = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C4F91:                 LateIdCallSt
  loc_19C4FAD:                 Set var_A0 = var_13C(CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C4FBC:                 var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C4FD4:                 Set var_C4 = 2(vbNullString)
  loc_19C4FDA:                 LateIdCallSt
  loc_19C4FEF:               Else
  loc_19C4FF3:                 Set var_138 = var_E4(var_C4)
  loc_19C500B:                 Set var_13C = CVar(CLng(TxtGrid.DispID_A))(CVar(CLng(TxtGrid.DispID_A)))
  loc_19C505B:                 LateIdCallSt
  loc_19C507F:                 Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C508E:                 var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C50B9:                 var_C4 = Me.Fields.Item("Code")
  loc_19C50D2:                 Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C50D8:                 LateIdCallSt
  loc_19C50F4:               End If
  loc_19C50F4:             End If
  loc_19C50F4:           End If
  loc_19C50F4:         End If
  loc_19C50F4:       End If
  loc_19C50F7:     Else
  loc_19C50FE:       If (var_B4 = CLng(4)) Then
  loc_19C5107:         var_1AC = GRepFormName
  loc_19C5112:         If Not (var_1AC = "CashBook") Then
  loc_19C511D:           If Not (var_1AC = "BankBook") Then
  loc_19C5128:             If Not (var_1AC = "Led") Then
  loc_19C5133:               If Not (var_1AC = "LedInt") Then
  loc_19C513E:                 If Not (var_1AC = "LedDeb") Then
  loc_19C5149:                   If Not (var_1AC = "LedCred") Then
  loc_19C5154:                     If Not (var_1AC = "AcCheckList") Then
  loc_19C515F:                       If (var_1AC = "RozNamcha") Then
  loc_19C5162:                       End If
  loc_19C5162:                     End If
  loc_19C5162:                   End If
  loc_19C5162:                 End If
  loc_19C5162:               End If
  loc_19C5162:             End If
  loc_19C5162:           End If
  loc_19C51B0:           Set var_A0 = Me.TxtGrid
  loc_19C51B6:           Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C)
  loc_19C51BE:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C51D6:           If (var_13C Or (var_9C = vbNullString)) Then
  loc_19C51DD:             Set var_A0 = (var_F4)
  loc_19C51F5:             Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C5219:             LateIdCallSt
  loc_19C5235:             Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C5244:             var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C525C:             Set var_C4 = 2(vbNullString)
  loc_19C5262:             LateIdCallSt
  loc_19C5277:           Else
  loc_19C527B:             Set var_138 = var_E4(var_C4)
  loc_19C5293:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C52E3:             LateIdCallSt
  loc_19C5307:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C5316:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C5341:             var_C4 = Me.Fields.Item("Code")
  loc_19C535A:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C5360:             LateIdCallSt
  loc_19C537C:           End If
  loc_19C537F:         Else
  loc_19C5387:           If (var_1AC = "JournalBook") Then
  loc_19C53D8:             Set var_A0 = Me.TxtGrid
  loc_19C53DE:             Call 0.Method_Proc_245_58_19C587C0 (arg_C, var_C4, var_9C)
  loc_19C53E6:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19C53FE:             If (var_13C Or (var_9C = vbNullString)) Then
  loc_19C5405:               Set var_A0 = (var_F4)
  loc_19C541D:               Set var_C4 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C5441:               LateIdCallSt
  loc_19C545D:               Set var_A0 = (CVar(CLng(TxtGrid.DispID_B))(vbNullString))
  loc_19C546C:               var_E4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C5484:               Set var_C4 = 2(vbNullString)
  loc_19C548A:               LateIdCallSt
  loc_19C549F:             Else
  loc_19C54A3:               Set var_138 = var_E4(var_C4)
  loc_19C54BB:               Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C550B:               LateIdCallSt
  loc_19C552F:               Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C553E:               var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C5582:               Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19C5588:               LateIdCallSt
  loc_19C55A4:             End If
  loc_19C55A4:           End If
  loc_19C55A4:         End If
  loc_19C55A7:       Else
  loc_19C55AE:         If (var_B4 = CLng(0)) Then
  loc_19C55B7:           var_1B0 = GRepFormName
  loc_19C55C2:           If Not (var_1B0 = "BudgetVariance") Then
  loc_19C55CD:             If (var_1B0 = "Budget") Then
  loc_19C55D0:             End If
  loc_19C55D4:             Set var_138 = var_F4(var_13C)
  loc_19C55EC:             Set var_13C = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C563C:             LateIdCallSt
  loc_19C5660:             Set var_138 = (CVar(CLng(TxtGrid.DispID_B))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_19C566F:             var_F4 = CVar(CLng(TxtGrid.DispID_A)) 'Long
  loc_19C569A:             var_C4 = Me.Fields.Item("Code")
  loc_19C56B3:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19C56B9:             LateIdCallSt
  loc_19C56D8:           Else
  loc_19C56E1:             Set var_A0 = Me.TxtGrid
  loc_19C56E7:             Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C56F0:             Set var_13C = var_F4(var_13C)
  loc_19C5708:             Set var_160 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C5731:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19C5741:             Set var_1B4 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C5747:             LateIdCallSt
  loc_19C5765:           End If
  loc_19C5768:         Else
  loc_19C576F:           If (var_B4 = CLng(1)) Then
  loc_19C577B:             Set var_A0 = Me.TxtGrid
  loc_19C5781:             Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C578A:             Set var_13C = (var_1B4)
  loc_19C57A2:             Set var_160 = (CVar(CLng(TxtGrid.DispID_A)))
  loc_19C57CB:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19C57DB:             Set var_1B4 = CVar(CLng(TxtGrid.DispID_B))(CVar(var_9C))
  loc_19C57E1:             LateIdCallSt
  loc_19C57FF:           End If
  loc_19C57FF:         End If
  loc_19C57FF:       End If
  loc_19C57FF:     End If
  loc_19C57FF:   End If
  loc_19C57FF: End If
  loc_19C580A: If (arg_10 = 0) Then
  loc_19C5811:   Set var_A0 = var_1B4(&HFF)
  loc_19C582D:   Set var_A0 = Me.TxtGrid
  loc_19C5833:   Call 0.Method_Proc_245_58_19C587C0 (0, var_C4)
  loc_19C583B:   var_C4.Visible = False
  loc_19C5847: End If
  loc_19C5847: Proc_245_58_19C587C = TxtGrid.DispID_8001
  loc_19C584D: ' Referenced from: 19C27A8
  loc_19C5853: Call 0.Method_arg_50 (var_9C)
  loc_19C5868: Proc_183_57_104AA84(var_9C)
  loc_19C5874: Proc_245_58_19C587C = "TxtGridLeave"
End Sub

Public Sub Proc_245_59_172F09C
  'Data Table: 58C0C8
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_88 As Integer
  Dim var_10C As Variant
  Dim var_120 As Variant
  Dim var_108 As TextBox
  loc_172D408: On Error Goto loc_172F073
  loc_172D423: Call 0.Method_arg_78 (var_8C)
  loc_172D438: Set var_98 = Me.Pic
  loc_172D43E: var_98.Top = ((var_8C - Me.Pic.Width) - CDbl(&HA))
  loc_172D456: Set var_90 = Me.TxtGrid
  loc_172D45C: Call 0.Method_Proc_245_59_172F09C0 (0, var_98)
  loc_172D464: var_98.Text = vbNullString
  loc_172D47A: var_A8 = ().Width
  loc_172D489: Call 0.Method_Me0 (var_8C)
  loc_172D49B: var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172D4A4: Set var_98 = var_A8(var_B8)
  loc_172D4AA: var_98.Left = 
  loc_172D4CB: (CVar(CDbl(&H4B))).Top = 
  loc_172D4E0: Set var_90 = (&HA)
  loc_172D4FB: Set var_90 = TxtGrid.DispID_4(3)
  loc_172D516: Set var_90 = TxtGrid.DispID_5(1)
  loc_172D53A: Set var_90 = 0(&H898)
  loc_172D540: LateIdCallSt
  loc_172D561: Set var_90 = 1(&H7D0)
  loc_172D567: LateIdCallSt
  loc_172D588: Set var_90 = 2(0)
  loc_172D58E: LateIdCallSt
  loc_172D5B0: Set var_90 = 1(CVar(CInt(1)))
  loc_172D5B6: LateIdCallSt
  loc_172D5CA: Set var_90 = 0(var_86)
  loc_172D5E6: For var_EC = var_90 To CInt((CLng(TxtGrid.DispID_4) - 1)): var_90 = var_EC 'Integer
  loc_172D602:   Set var_90 = CVar(CLng(var_86))(0)
  loc_172D608:   LateIdCallSt
  loc_172D616: Next var_EC 'Integer
  loc_172D61B: Call Proc_245_66_19E80A4()
  loc_172D627: For var_F0 = 1 To 2: var_86 = var_F0 'Integer
  loc_172D637:   Set var_90 = var_98(var_86)
  loc_172D63D:   Call 0.Method_Proc_245_59_172F09C0 (1)
  loc_172D65B:   If (CBool(var_98.Visible) = &HFF) Then
  loc_172D664:     var_88 = (var_88 + 1)
  loc_172D667:   End If
  loc_172D66A: Next var_F0 'Integer
  loc_172D68A: var_B8 = CVar(CDbl(((((global_140 - global_142) + 1) * CInt(220)) + 500))) 'Single
  loc_172D699: (CVar(CLng(var_86))).Height = 
  loc_172D6A7: var_100 = global_144 'Variant
  loc_172D6B6: If (var_100 = 0) Then
  loc_172D6CC:   (CVar(CDbl(1000))).Top = 
  loc_172D6D7: Else
  loc_172D6E2:   If (var_100 = 1) Then
  loc_172D6EB:     var_104 = GRepFormName
  loc_172D6F6:     If Not (var_104 = "Led") Then
  loc_172D701:       If Not (var_104 = "LedInt") Then
  loc_172D70C:         If Not (var_104 = "LedDeb") Then
  loc_172D717:           If Not (var_104 = "LedCred") Then
  loc_172D722:             If (var_104 = "AcCheckList") Then
  loc_172D725:             End If
  loc_172D725:           End If
  loc_172D725:         End If
  loc_172D725:       End If
  loc_172D730:       Set var_90 = Me.Label1
  loc_172D736:       Call 0.Method_Proc_245_59_172F09C0 (0, var_98)
  loc_172D73E:       var_98.Visible = True
  loc_172D755:       Set var_90 = Me.Label1
  loc_172D75B:       Call 0.Method_Proc_245_59_172F09C0 (1, var_98)
  loc_172D763:       var_98.Visible = True
  loc_172D77A:       Set var_90 = Me.Label1
  loc_172D780:       Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172D788:       var_98.Visible = True
  loc_172D79F:       Set var_90 = Me.Label1
  loc_172D7A5:       Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172D7AD:       var_98.Visible = True
  loc_172D7C4:       Set var_90 = Me.Label1
  loc_172D7CA:       Call 0.Method_Proc_245_59_172F09C0 (5, var_98)
  loc_172D7D2:       var_98.Visible = True
  loc_172D7EB:       Set var_90 = Me.TEXT
  loc_172D7F1:       Call 0.Method_Proc_245_59_172F09C0 (CInt(0), var_98)
  loc_172D7F9:       var_98.Visible = True
  loc_172D812:       Set var_90 = Me.TEXT
  loc_172D818:       Call 0.Method_Proc_245_59_172F09C0 (CInt(1), var_98)
  loc_172D820:       var_98.Visible = True
  loc_172D839:       Set var_90 = Me.TEXT
  loc_172D83F:       Call 0.Method_Proc_245_59_172F09C0 (CInt(8), var_98)
  loc_172D847:       var_98.Visible = True
  loc_172D860:       Set var_90 = Me.TEXT
  loc_172D866:       Call 0.Method_Proc_245_59_172F09C0 (CInt(9), var_98)
  loc_172D86E:       var_98.Visible = True
  loc_172D887:       Set var_90 = Me.TEXT
  loc_172D88D:       Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172D895:       var_98.Visible = True
  loc_172D8AE:       Set var_90 = Me.TEXT
  loc_172D8B4:       Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172D8BC:       var_98.Visible = True
  loc_172D8D5:       Set var_90 = Me.TEXT
  loc_172D8DB:       Call 0.Method_Proc_245_59_172F09C0 (CInt(&HB), var_98)
  loc_172D8E3:       var_98.Visible = True
  loc_172D8FC:       Set var_90 = Me.Label1
  loc_172D902:       Call 0.Method_Proc_245_59_172F09C0 (0, var_98)
  loc_172D90A:       var_98.Left = CDbl(&H78)
  loc_172D924:       Set var_90 = Me.Label1
  loc_172D92A:       Call 0.Method_Proc_245_59_172F09C0 (0, var_98)
  loc_172D932:       var_98.Top = CDbl(150)
  loc_172D94B:       Set var_90 = Me.Label1
  loc_172D951:       Call 0.Method_Proc_245_59_172F09C0 (1, var_98)
  loc_172D959:       var_98.Left = CDbl(&H78)
  loc_172D973:       Set var_90 = Me.Label1
  loc_172D979:       Call 0.Method_Proc_245_59_172F09C0 (1, var_98)
  loc_172D981:       var_98.Top = CDbl(450)
  loc_172D99D:       Set var_90 = Me.TEXT
  loc_172D9A3:       Call 0.Method_Proc_245_59_172F09C0 (CInt(0), var_98)
  loc_172D9AB:       var_98.Left = CDbl(1725)
  loc_172D9C6:       Set var_90 = Me.TEXT
  loc_172D9CC:       Call 0.Method_Proc_245_59_172F09C0 (CInt(0), var_98)
  loc_172D9D4:       var_98.Top = CDbl(&H69)
  loc_172D9EE:       Set var_90 = Me.TEXT
  loc_172D9F4:       Call 0.Method_Proc_245_59_172F09C0 (CInt(8), var_98)
  loc_172DA19:       Set var_108 = Me.TEXT
  loc_172DA1F:       Call 0.Method_Proc_245_59_172F09C0 (CInt(8), var_10C)
  loc_172DA27:       var_10C.Left = ((CDbl(1725) - var_98.Width) - CDbl(&H32))
  loc_172DA46:       Set var_90 = Me.TEXT
  loc_172DA4C:       Call 0.Method_Proc_245_59_172F09C0 (CInt(8), var_98)
  loc_172DA54:       var_98.Top = CDbl(&H69)
  loc_172DA70:       Set var_90 = Me.TEXT
  loc_172DA76:       Call 0.Method_Proc_245_59_172F09C0 (CInt(1), var_98)
  loc_172DA7E:       var_98.Left = CDbl(1725)
  loc_172DA9A:       Set var_90 = Me.TEXT
  loc_172DAA0:       Call 0.Method_Proc_245_59_172F09C0 (CInt(1), var_98)
  loc_172DAA8:       var_98.Top = CDbl(405)
  loc_172DAC2:       Set var_90 = Me.TEXT
  loc_172DAC8:       Call 0.Method_Proc_245_59_172F09C0 (CInt(9), var_98)
  loc_172DAED:       Set var_108 = Me.TEXT
  loc_172DAF3:       Call 0.Method_Proc_245_59_172F09C0 (CInt(9), var_10C)
  loc_172DAFB:       var_10C.Left = ((CDbl(1725) - var_98.Width) - CDbl(&H32))
  loc_172DB1B:       Set var_90 = Me.TEXT
  loc_172DB21:       Call 0.Method_Proc_245_59_172F09C0 (CInt(9), var_98)
  loc_172DB29:       var_98.Top = CDbl(405)
  loc_172DB40:       If (GRepFormName = "LedDeb") Then
  loc_172DB51:         Me.SSTab1.Visible = True
  loc_172DB59:       End If
  loc_172DB5F:       var_110 = GRepFormName
  loc_172DB6A:       If Not (var_110 = "Led") Then
  loc_172DB75:         If Not (var_110 = "LedDeb") Then
  loc_172DB80:           If (var_110 = "LedCred") Then
  loc_172DB83:           End If
  loc_172DB83:         End If
  loc_172DB90:         Set var_90 = Me.Label1
  loc_172DB96:         Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172DB9E:         var_98.Left = CDbl(&H78)
  loc_172DBB8:         Set var_90 = Me.Label1
  loc_172DBBE:         Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172DBC6:         var_98.Top = CDbl(750)
  loc_172DBDF:         Set var_90 = Me.Label1
  loc_172DBE5:         Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172DBED:         var_98.Left = CDbl(&H78)
  loc_172DC07:         Set var_90 = Me.Label1
  loc_172DC0D:         Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172DC15:         var_98.Top = CDbl(1050)
  loc_172DC31:         Set var_90 = Me.TEXT
  loc_172DC37:         Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172DC3F:         var_98.Left = CDbl(1725)
  loc_172DC5B:         Set var_90 = Me.TEXT
  loc_172DC61:         Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172DC69:         var_98.Top = CDbl(705)
  loc_172DC85:         Set var_90 = Me.TEXT
  loc_172DC8B:         Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172DC93:         var_98.Left = CDbl(1725)
  loc_172DCAF:         Set var_90 = Me.TEXT
  loc_172DCB5:         Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172DCBD:         var_98.Top = CDbl(1005)
  loc_172DCCC:       Else
  loc_172DCD4:         If (var_110 = "LedInt") Then
  loc_172DCE3:           Me.Label4.Visible = True
  loc_172DCF8:           Set var_90 = Me.TEXT
  loc_172DCFE:           Call 0.Method_Proc_245_59_172F09C0 (CInt(5), var_98)
  loc_172DD06:           var_98.Visible = True
  loc_172DD20:           Me.Label4.Left = CDbl(&H78)
  loc_172DD37:           Me.Label4.Top = CDbl(750)
  loc_172DD4C:           Set var_90 = Me.Label1
  loc_172DD52:           Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172DD5A:           var_98.Left = CDbl(&H78)
  loc_172DD74:           Set var_90 = Me.Label1
  loc_172DD7A:           Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172DD82:           var_98.Top = CDbl(1050)
  loc_172DD9B:           Set var_90 = Me.Label1
  loc_172DDA1:           Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172DDA9:           var_98.Left = CDbl(&H78)
  loc_172DDC3:           Set var_90 = Me.Label1
  loc_172DDC9:           Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172DDD1:           var_98.Top = CDbl(1350)
  loc_172DDED:           Set var_90 = Me.TEXT
  loc_172DDF3:           Call 0.Method_Proc_245_59_172F09C0 (CInt(5), var_98)
  loc_172DDFB:           var_98.Left = CDbl(1725)
  loc_172DE17:           Set var_90 = Me.TEXT
  loc_172DE1D:           Call 0.Method_Proc_245_59_172F09C0 (CInt(5), var_98)
  loc_172DE25:           var_98.Top = CDbl(705)
  loc_172DE41:           Set var_90 = Me.TEXT
  loc_172DE47:           Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172DE4F:           var_98.Left = CDbl(1725)
  loc_172DE6B:           Set var_90 = Me.TEXT
  loc_172DE71:           Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172DE79:           var_98.Top = CDbl(1005)
  loc_172DE95:           Set var_90 = Me.TEXT
  loc_172DE9B:           Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172DEA3:           var_98.Left = CDbl(1725)
  loc_172DEBF:           Set var_90 = Me.TEXT
  loc_172DEC5:           Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172DECD:           var_98.Top = CDbl(1305)
  loc_172DEDC:         Else
  loc_172DEE4:           If (var_110 = "AcCheckList") Then
  loc_172DEF2:             Set var_90 = Me.Label1
  loc_172DEF8:             Call 0.Method_Proc_245_59_172F09C0 (2, var_98)
  loc_172DF00:             var_98.Visible = True
  loc_172DF19:             Set var_90 = Me.TEXT
  loc_172DF1F:             Call 0.Method_Proc_245_59_172F09C0 (CInt(2), var_98)
  loc_172DF27:             var_98.Visible = True
  loc_172DF40:             Set var_90 = Me.TEXT
  loc_172DF46:             Call 0.Method_Proc_245_59_172F09C0 (CInt(&HA), var_98)
  loc_172DF4E:             var_98.Visible = True
  loc_172DF66:             Me.Label5.Visible = True
  loc_172DF7B:             Set var_90 = Me.TEXT
  loc_172DF81:             Call 0.Method_Proc_245_59_172F09C0 (CInt(3), var_98)
  loc_172DF89:             var_98.Visible = True
  loc_172DFA1:             Me.Label6.Visible = True
  loc_172DFB6:             Set var_90 = Me.TEXT
  loc_172DFBC:             Call 0.Method_Proc_245_59_172F09C0 (CInt(4), var_98)
  loc_172DFC4:             var_98.Visible = True
  loc_172DFDD:             Set var_90 = Me.Label1
  loc_172DFE3:             Call 0.Method_Proc_245_59_172F09C0 (2, var_98)
  loc_172DFEB:             var_98.Left = CDbl(&H78)
  loc_172E005:             Set var_90 = Me.Label1
  loc_172E00B:             Call 0.Method_Proc_245_59_172F09C0 (2, var_98)
  loc_172E013:             var_98.Top = CDbl(750)
  loc_172E02F:             Set var_90 = Me.TEXT
  loc_172E035:             Call 0.Method_Proc_245_59_172F09C0 (CInt(2), var_98)
  loc_172E03D:             var_98.Left = CDbl(1725)
  loc_172E059:             Set var_90 = Me.TEXT
  loc_172E05F:             Call 0.Method_Proc_245_59_172F09C0 (CInt(2), var_98)
  loc_172E067:             var_98.Top = CDbl(705)
  loc_172E081:             Set var_90 = Me.TEXT
  loc_172E087:             Call 0.Method_Proc_245_59_172F09C0 (CInt(&HA), var_98)
  loc_172E08F:             var_8C = var_98.Width
  loc_172E0AC:             Set var_108 = Me.TEXT
  loc_172E0B2:             Call 0.Method_Proc_245_59_172F09C0 (CInt(&HA), var_10C)
  loc_172E0BA:             var_10C.Left = ((CDbl(1725) - var_8C) - CDbl(&H32))
  loc_172E0DA:             Set var_90 = Me.TEXT
  loc_172E0E0:             Call 0.Method_Proc_245_59_172F09C0 (CInt(&HA), var_98)
  loc_172E0E8:             var_98.Top = CDbl(705)
  loc_172E101:             Set var_90 = Me.Label1
  loc_172E107:             Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172E10F:             var_98.Left = CDbl(&H78)
  loc_172E129:             Set var_90 = Me.Label1
  loc_172E12F:             Call 0.Method_Proc_245_59_172F09C0 (3, var_98)
  loc_172E137:             var_98.Top = CDbl(1050)
  loc_172E150:             Set var_90 = Me.Label1
  loc_172E156:             Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172E15E:             var_98.Left = CDbl(&H78)
  loc_172E178:             Set var_90 = Me.Label1
  loc_172E17E:             Call 0.Method_Proc_245_59_172F09C0 (4, var_98)
  loc_172E186:             var_98.Top = CDbl(1350)
  loc_172E1A2:             Set var_90 = Me.TEXT
  loc_172E1A8:             Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172E1B0:             var_98.Left = CDbl(1725)
  loc_172E1CC:             Set var_90 = Me.TEXT
  loc_172E1D2:             Call 0.Method_Proc_245_59_172F09C0 (CInt(6), var_98)
  loc_172E1DA:             var_98.Top = CDbl(1005)
  loc_172E1F6:             Set var_90 = Me.TEXT
  loc_172E1FC:             Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172E204:             var_98.Left = CDbl(1725)
  loc_172E220:             Set var_90 = Me.TEXT
  loc_172E226:             Call 0.Method_Proc_245_59_172F09C0 (CInt(7), var_98)
  loc_172E22E:             var_98.Top = CDbl(1305)
  loc_172E248:             Me.Label5.Left = CDbl(&H78)
  loc_172E25F:             Me.Label5.Top = CDbl(1650)
  loc_172E277:             Set var_90 = Me.TEXT
  loc_172E27D:             Call 0.Method_Proc_245_59_172F09C0 (CInt(3), var_98)
  loc_172E285:             var_98.Left = CDbl(1725)
  loc_172E2A1:             Set var_90 = Me.TEXT
  loc_172E2A7:             Call 0.Method_Proc_245_59_172F09C0 (CInt(3), var_98)
  loc_172E2AF:             var_98.Top = CDbl(1605)
  loc_172E2C9:             Me.Label6.Left = CDbl(&H78)
  loc_172E2E0:             Me.Label6.Top = CDbl(1950)
  loc_172E2F8:             Set var_90 = Me.TEXT
  loc_172E2FE:             Call 0.Method_Proc_245_59_172F09C0 (CInt(4), var_98)
  loc_172E306:             var_98.Left = CDbl(1725)
  loc_172E322:             Set var_90 = Me.TEXT
  loc_172E328:             Call 0.Method_Proc_245_59_172F09C0 (CInt(4), var_98)
  loc_172E330:             var_98.Top = CDbl(1905)
  loc_172E33C:           End If
  loc_172E33C:         End If
  loc_172E33C:       End If
  loc_172E33C:     End If
  loc_172E347:     If (GRepFormName = "AcCheckList") Then
  loc_172E353:       Set var_90 = var_98(1)
  loc_172E359:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E361:       var_A8 = var_98.Width
  loc_172E370:       Call 0.Method_Me0 (var_8C)
  loc_172E386:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172E394:       Set var_108 = var_10C(1)
  loc_172E39A:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E3A2:       var_10C.Left = var_A8
  loc_172E3BF:       var_120 = ().Height
  loc_172E3E6:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172E3F4:       Set var_108 = var_10C(1)
  loc_172E3FA:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E402:       var_10C.Top = 
  loc_172E423:       var_A8 = ().Height
  loc_172E433:       Set var_98 = Me.Pic
  loc_172E439:       var_94 = var_98.Height
  loc_172E444:       Call 0.Method_Me8 (var_8C)
  loc_172E45B:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(2200))) 'Single
  loc_172E469:       Set var_108 = var_10C(1)
  loc_172E46F:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E477:       var_10C.Height = var_A8
  loc_172E493:       Set var_90 = var_98(1)
  loc_172E499:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E4B8:       Set var_108 = Me.Check1
  loc_172E4BE:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172E4C6:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172E4E2:       Set var_90 = var_98(1)
  loc_172E4E8:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E507:       Set var_108 = Me.Check1
  loc_172E50D:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172E515:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172E52E:       Call 0.Method_Me0 (var_94)
  loc_172E53C:       Set var_90 = var_98(1)
  loc_172E542:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E54A:       var_A8 = var_98.Width
  loc_172E559:       Call 0.Method_Me0 (var_8C)
  loc_172E577:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_172E585:       Set var_108 = var_10C(3)
  loc_172E58B:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E593:       var_10C.Left = var_A8
  loc_172E5B0:       var_120 = ().Height
  loc_172E5D7:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172E5E5:       Set var_108 = var_10C(3)
  loc_172E5EB:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E5F3:       var_10C.Top = 
  loc_172E614:       var_A8 = ().Height
  loc_172E624:       Set var_98 = Me.Pic
  loc_172E635:       Call 0.Method_Me8 (var_8C)
  loc_172E64C:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172E65A:       Set var_108 = var_10C(3)
  loc_172E660:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E684:       Set var_90 = var_98(3)
  loc_172E68A:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E6A9:       Set var_108 = Me.Check1
  loc_172E6AF:       Call 0.Method_Proc_245_59_172F09C0 (3, var_10C)
  loc_172E6B7:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172E6D3:       Set var_90 = var_98(3)
  loc_172E6D9:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E6F8:       Set var_108 = Me.Check1
  loc_172E6FE:       Call 0.Method_Proc_245_59_172F09C0 (3, var_10C)
  loc_172E706:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172E754:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172E763:         Me.TxtDetails.Visible = True
  loc_172E774:         Set var_90 = var_98(1)
  loc_172E77A:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E796:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172E7B0:         Set var_90 = var_98(1)
  loc_172E7B6:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E7D2:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172E7EC:         Set var_108 = var_10C(1)
  loc_172E7F2:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E7FA:         var_120 = var_98.Width
  loc_172E80C:         Set var_90 = var_98(1)
  loc_172E812:         Call 0.Method_Proc_245_59_172F09C0 (var_120)
  loc_172E834:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172E84D:       End If
  loc_172E850:     Else
  loc_172E859:       Set var_90 = var_98(1)
  loc_172E85F:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E867:       var_A8 = var_98.Width
  loc_172E876:       Call 0.Method_Me0 (var_8C)
  loc_172E888:       var_B8 = CVar(((var_8C - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172E896:       Set var_108 = var_10C(1)
  loc_172E89C:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E8A4:       var_10C.Left = var_A8
  loc_172E8C1:       var_120 = ().Height
  loc_172E8E8:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172E8F6:       Set var_108 = var_10C(1)
  loc_172E8FC:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E904:       var_10C.Top = 
  loc_172E925:       var_A8 = ().Height
  loc_172E935:       Set var_98 = Me.Pic
  loc_172E946:       Call 0.Method_Me8 (var_8C)
  loc_172E95D:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172E96B:       Set var_108 = var_10C(1)
  loc_172E971:       Call 0.Method_Proc_245_59_172F09C0 (True)
  loc_172E995:       Set var_90 = var_98(1)
  loc_172E99B:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172E9BA:       Set var_108 = Me.Check1
  loc_172E9C0:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172E9C8:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172E9E4:       Set var_90 = var_98(1)
  loc_172E9EA:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EA09:       Set var_108 = Me.Check1
  loc_172EA0F:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172EA17:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172EA65:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172EA74:         Me.TxtDetails.Visible = True
  loc_172EA85:         Set var_90 = var_98(1)
  loc_172EA8B:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EAA7:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172EAC1:         Set var_90 = var_98(1)
  loc_172EAC7:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EAE3:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172EAFD:         Set var_108 = var_10C(1)
  loc_172EB03:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EB0B:         var_120 = var_98.Width
  loc_172EB1D:         Set var_90 = var_98(1)
  loc_172EB23:         Call 0.Method_Proc_245_59_172F09C0 (var_120)
  loc_172EB45:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172EB5E:       End If
  loc_172EB5E:     End If
  loc_172EB61:   Else
  loc_172EB6C:     If (var_100 = 2) Then
  loc_172EB78:       Set var_90 = var_98(1)
  loc_172EB7E:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EB86:       var_A8 = var_98.Width
  loc_172EB95:       Call 0.Method_Me0 (var_8C)
  loc_172EBAB:       var_B8 = CVar((((var_8C / CDbl(2)) - CDbl(var_A8)) / CDbl(2))) 'Single
  loc_172EBB9:       Set var_108 = var_10C(1)
  loc_172EBBF:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EBC7:       var_10C.Left = var_A8
  loc_172EBE4:       var_120 = ().Height
  loc_172EC0B:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172EC19:       Set var_108 = var_10C(1)
  loc_172EC1F:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EC27:       var_10C.Top = 
  loc_172EC48:       var_A8 = ().Height
  loc_172EC58:       Set var_98 = Me.Pic
  loc_172EC5E:       var_94 = var_98.Height
  loc_172EC69:       Call 0.Method_Me8 (var_8C)
  loc_172EC80:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_94) - CDbl(2200))) 'Single
  loc_172EC8E:       Set var_108 = var_10C(1)
  loc_172EC94:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EC9C:       var_10C.Height = var_A8
  loc_172ECB8:       Set var_90 = var_98(1)
  loc_172ECBE:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172ECDD:       Set var_108 = Me.Check1
  loc_172ECE3:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172ECEB:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172ED07:       Set var_90 = var_98(1)
  loc_172ED0D:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172ED2C:       Set var_108 = Me.Check1
  loc_172ED32:       Call 0.Method_Proc_245_59_172F09C0 (1, var_10C)
  loc_172ED3A:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172ED53:       Call 0.Method_Me0 (var_94)
  loc_172ED61:       Set var_90 = var_98(1)
  loc_172ED67:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172ED6F:       var_A8 = var_98.Width
  loc_172ED7E:       Call 0.Method_Me0 (var_8C)
  loc_172ED9C:       var_B8 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_A8)) / CDbl(2)))) 'Single
  loc_172EDAA:       Set var_108 = var_10C(2)
  loc_172EDB0:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EDB8:       var_10C.Left = var_A8
  loc_172EDD5:       var_120 = ().Height
  loc_172EDFC:       var_B8 = CVar(((CDbl((var_120).Top) + CDbl(var_120)) + CDbl(700))) 'Single
  loc_172EE0A:       Set var_108 = var_10C(2)
  loc_172EE10:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EE18:       var_10C.Top = 
  loc_172EE39:       var_A8 = ().Height
  loc_172EE49:       Set var_98 = Me.Pic
  loc_172EE5A:       Call 0.Method_Me8 (var_8C)
  loc_172EE71:       var_B8 = CVar((((var_8C - CDbl(var_A8)) - var_98.Height) - CDbl(2200))) 'Single
  loc_172EE7F:       Set var_108 = var_10C(2)
  loc_172EE85:       Call 0.Method_Proc_245_59_172F09C0 (2)
  loc_172EEA9:       Set var_90 = var_98(2)
  loc_172EEAF:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EECE:       Set var_108 = Me.Check1
  loc_172EED4:       Call 0.Method_Proc_245_59_172F09C0 (2, var_10C)
  loc_172EEDC:       var_10C.Top = (CDbl(var_98.Top) + CDbl(&H14))
  loc_172EEF8:       Set var_90 = var_98(2)
  loc_172EEFE:       Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EF1D:       Set var_108 = Me.Check1
  loc_172EF23:       Call 0.Method_Proc_245_59_172F09C0 (2, var_10C)
  loc_172EF2B:       var_10C.Left = (CDbl(var_98.Left) + CDbl(&H28))
  loc_172EF79:       If (((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_172EF88:         Me.TxtDetails.Visible = True
  loc_172EF99:         Set var_90 = var_98(1)
  loc_172EF9F:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EFBB:         Me.TxtDetails.Left = CDbl(var_98.Left)
  loc_172EFD5:         Set var_90 = var_98(1)
  loc_172EFDB:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172EFF7:         Me.TxtDetails.Width = CDbl(var_98.Width)
  loc_172F011:         Set var_108 = var_10C(1)
  loc_172F017:         Call 0.Method_Proc_245_59_172F09C0 ()
  loc_172F01F:         var_120 = var_98.Width
  loc_172F031:         Set var_90 = var_98(1)
  loc_172F037:         Call 0.Method_Proc_245_59_172F09C0 (var_120)
  loc_172F059:         Me.TxtDetails.Top = (CDbl(var_98.Top) + CDbl(var_120))
  loc_172F072:       End If
  loc_172F072:     End If
  loc_172F072:   End If
  loc_172F072: End If
  loc_172F072: Exit Sub
  loc_172F073: ' Referenced from: 172D408
  loc_172F079: Call 0.Method_arg_50 (var_128)
  loc_172F081: var_130 = "Global_Grid"
  loc_172F08E: Proc_183_57_104AA84(var_128)
  loc_172F09A: Exit Sub
End Sub

Public Sub Proc_245_60_EB6FA4
  'Data Table: 58C0C8
  loc_EB6F1F: If (Me.FrmList.Visible = &HFF) Then
  loc_EB6F2E:   Me.FrmList.Visible = False
  loc_EB6F36: End If
  loc_EB6F52: If (CBool(().Visible) = &HFF) Then
  loc_EB6F64:   (False).Visible = 
  loc_EB6F6C: End If
  loc_EB6F88: If (CBool(().Visible) = &HFF) Then
  loc_EB6F9A:   (False).Visible = 
  loc_EB6FA2: End If
  loc_EB6FA2: Exit Sub
End Sub

Public Sub Proc_245_61_127CCE4(arg_C, arg_10, arg_14) '127CCE4
  'Data Table: 58C0C8
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_104 As String
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_127C756: On Error Goto loc_127CCAE
  loc_127C75C: var_8C = vbNullString
  loc_127C767: CRefVarAry
  loc_127C76F: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127C790:   If (arg_C(var_8E) = 0) Then
  loc_127C793:     GoTo loc_127CB2B
  loc_127C796:   End If
  loc_127C7A7:   var_90 = CInt(arg_C(var_8E))
  loc_127C7C9:   Set var_DC = var_E0(arg_10)
  loc_127C7CF:   Call 0.Method_Proc_245_61_127CCE40 (0, CVar(CLng(var_90)))
  loc_127C7F7:   If (CStr(FrmList.DispID_41) = "ü") Then
  loc_127C803:     If (CInt(arg_14) = 0) Then
  loc_127C822:       Set var_DC = var_E0(arg_10)
  loc_127C828:       Call 0.Method_Proc_245_61_127CCE40 (2, CVar(CLng(var_90)))
  loc_127C861:       Set var_108 = var_10C(arg_10)
  loc_127C867:       Call 0.Method_Proc_245_61_127CCE40 (2, CVar(CLng(var_90)), ",", CVar(var_8C))
  loc_127C89F:       var_1AC = (var_90 + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar(FrmList.DispID_41 & CStr(FrmList.DispID_41))))
  loc_127C8A4:       var_8C = CStr(var_1AC)
  loc_127C8C9:     Else
  loc_127C8D2:       If (CInt(arg_14) = 1) Then
  loc_127C8F1:         Set var_DC = var_E0(arg_10)
  loc_127C8F7:         Call 0.Method_Proc_245_61_127CCE40 (2, CVar(CLng(var_90)))
  loc_127C937:         Set var_108 = var_10C(arg_10)
  loc_127C93D:         Call 0.Method_Proc_245_61_127CCE40 (2, CVar(CLng(var_90)), "," & "'")
  loc_127C98A:         var_1AC = (FrmList.DispID_41 + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CVar(var_8C) & CStr(FrmList.DispID_41) & "'")))
  loc_127C98F:         var_8C = CStr(var_1AC)
  loc_127C9BB:       End If
  loc_127C9BB:     End If
  loc_127C9DA:     Set var_DC = var_E0(arg_10)
  loc_127C9E0:     Call 0.Method_Proc_245_61_127CCE40 (1, CVar(CLng(var_90)))
  loc_127CA12:     If (Len(var_94 & CStr(FrmList.DispID_41)) < &HFF) Then
  loc_127CA31:       Set var_DC = var_E0(arg_10)
  loc_127CA37:       Call 0.Method_Proc_245_61_127CCE40 (1, CVar(CLng(var_90)))
  loc_127CA70:       Set var_108 = var_10C(arg_10)
  loc_127CA76:       Call 0.Method_Proc_245_61_127CCE40 (1, CVar(CLng(var_90)), ",")
  loc_127CA8D:       var_17C = CVar(CVar(var_94) & CStr(FrmList.DispID_41)) 'String
  loc_127CA94:       var_16C = CVar(CStr(var_C8)) 'String
  loc_127CAA6:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_127CAAE:       var_1AC = (FrmList.DispID_41 + var_18C)
  loc_127CAB3:       var_94 = CStr(var_1AC)
  loc_127CAD5:     End If
  loc_127CAD9:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_127CAF7:     Set var_DC = var_E0(arg_10)
  loc_127CAFD:     Call 0.Method_Proc_245_61_127CCE40 (vbNullString, 0)
  loc_127CB05:     LateIdCallSt
  loc_127CB17:   Else
  loc_127CB1E:     var_B8 = 0
  loc_127CB27:     VarIndexSt
  loc_127CB2B:   End If
  loc_127CB2B:   ' Referenced from: 127C793
  loc_127CB2E: Next var_98 'Integer
  loc_127CB3B: CRefVarAry
  loc_127CB43: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_127CB7B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_127CBA0:     Set var_DC = var_E0(arg_10)
  loc_127CBA6:     Call 0.Method_Proc_245_61_127CCE40 ("ü", 0, CVar(CLng(CInt(arg_C(var_8E)))))
  loc_127CBAE:     LateIdCallSt
  loc_127CBBD:   End If
  loc_127CBC0: Next var_1C0 'Integer
  loc_127CBCD: If (var_8C = vbNullString) Then
  loc_127CBD0:   var_A8 = 0
  loc_127CBEC:   Set var_DC = var_E0(arg_10)
  loc_127CBF2:   Call 0.Method_Proc_245_61_127CCE40 (1)
  loc_127CC1B:   var_104 = CStr(var_C8)
  loc_127CC22:   MsgBox(CVar("Select " & var_104), &H40, var_16C, var_17C, var_18C)
  loc_127CC48:   Set var_DC = var_E0(arg_10)
  loc_127CC4E:   Call 0.Method_Proc_245_61_127CCE40 (FrmList.DispID_41)
  loc_127CC6D:   Proc_245_61_127CCE4 = 0
  loc_127CC73: End If
  loc_127CC76: var_88 = var_8C
  loc_127CC7C: var_1C2 = arg_10
  loc_127CC85: If (var_1C2 = 1) Then
  loc_127CC8E:   global_108 = var_94
  loc_127CC95: Else
  loc_127CC9B:   If (var_1C2 = 2) Then
  loc_127CCA4:     global_112 = var_94
  loc_127CCA8:   End If
  loc_127CCA8: End If
  loc_127CCA8: Proc_245_61_127CCE4 = var_1C2
  loc_127CCAE: ' Referenced from: 127C756
  loc_127CCBC: Call 0.Method_arg_50 (var_104, 0)
  loc_127CCD1: Proc_183_57_104AA84(var_104, "FillString")
  loc_127CCDD: Proc_245_61_127CCE4 = FrmList.DispID_8001
End Sub

Public Sub Proc_245_62_F2E5B8
  'Data Table: 58C0C8
  Dim var_CC As Variant
  loc_F2E4B0: On Error Goto loc_F2E58E
  loc_F2E4B7: Set var_8C = ()
  loc_F2E4D4: If (CLng(FrmList.DispID_A) = CLng(global_140)) Then
  loc_F2E4DF:   var_A0 = "	"
  loc_F2E4E5:   Proc_303_0_FB9B68(var_A0)
  loc_F2E4ED:   Exit Sub
  loc_F2E4EE: End If
  loc_F2E4F2: Set var_8C = (0)
  loc_F2E509: Set var_A8 = CInt(CLng(FrmList.DispID_A))(var_86)
  loc_F2E52D: For var_BC =  To CInt((CLng(FrmList.DispID_4) - 1)):  = var_BC 'Integer
  loc_F2E53A:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2E543:   Set var_8C = (var_CC)
  loc_F2E561:   If (CLng(FrmList.DispID_3A) <> 0) Then
  loc_F2E56B:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2E574:     Set var_8C = (var_CC)
  loc_F2E582:     Exit For
  loc_F2E585:   End If
  loc_F2E588: Next var_BC 'Integer
  loc_F2E58D: ' Referenced from: F2E582
  loc_F2E58D: Exit Sub
  loc_F2E58E: ' Referenced from: F2E4B0
  loc_F2E594: Call 0.Method_arg_50 (var_A0)
  loc_F2E59C: var_E4 = "TxtKeyDown"
  loc_F2E5A9: Proc_183_57_104AA84(var_A0)
  loc_F2E5B5: Exit Sub
End Sub

Public Sub Proc_245_63_11E9F30(arg_C, arg_10) '11E9F30
  'Data Table: 58C0C8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As CheckBox
  Dim var_E8 As CheckBox
  loc_11E9AA4: On Error Goto loc_11E9F07
  loc_11E9AAA: var_86 = arg_C
  loc_11E9AB0: var_88 = var_86
  loc_11E9AB9: If (var_88 = 1) Then
  loc_11E9AD8:   Me.Recordset15.CursorLocation = 3
  loc_11E9B01:   Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E9B0F:   CVarUnk
  loc_11E9B14:   VerifyVarObj
  loc_11E9B20:   Set var_8C = var_B0(var_86)
  loc_11E9B26:   Call 0.Method_Proc_245_63_11E9F300 (New, 1, -1)
  loc_11E9B2E:   LateIdStAd
  loc_11E9B50:   ReDim Preserve global_96(0 To 0)
  loc_11E9B67:   global_96(0) = 0
  loc_11E9B6B: Else
  loc_11E9B71:   If (var_88 = 2) Then
  loc_11E9B90:     Me.Recordset15.CursorLocation = 3
  loc_11E9BB9:     Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E9BC7:     CVarUnk
  loc_11E9BCC:     VerifyVarObj
  loc_11E9BD8:     Set var_8C = var_B0(var_86)
  loc_11E9BDE:     Call 0.Method_Proc_245_63_11E9F300 (New, 1, -1)
  loc_11E9BE6:     LateIdStAd
  loc_11E9C08:     ReDim Preserve global_100(0 To 0)
  loc_11E9C1F:     global_100(0) = 0
  loc_11E9C23:   Else
  loc_11E9C29:     If (var_88 = 3) Then
  loc_11E9C48:       Me.Recordset15.CursorLocation = 3
  loc_11E9C71:       Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E9C7F:       CVarUnk
  loc_11E9C84:       VerifyVarObj
  loc_11E9C90:       Set var_8C = var_B0(var_86)
  loc_11E9C96:       Call 0.Method_Proc_245_63_11E9F300 (New, 1, -1, var_B0)
  loc_11E9C9E:       LateIdStAd
  loc_11E9CC0:       ReDim Preserve global_104(0 To 0)
  loc_11E9CD7:       global_104(0) = 0
  loc_11E9CD8:     End If
  loc_11E9CD8:   End If
  loc_11E9CD8: End If
  loc_11E9CEB: Set var_8C = var_B0(var_86)
  loc_11E9CF1: Call 0.Method_Proc_245_63_11E9F300 (CVar(CDbl(1700)), var_B0, var_B0)
  loc_11E9CF9: var_B0.Height = var_88
  loc_11E9D13: Set var_8C = var_B0(var_86)
  loc_11E9D19: Call 0.Method_Proc_245_63_11E9F300 (True)
  loc_11E9D21: var_B0.Visible = var_86
  loc_11E9D3B: Set var_8C = var_B0(var_86)
  loc_11E9D41: Call 0.Method_Proc_245_63_11E9F300 (True)
  loc_11E9D49: var_B0.Enabled = 
  loc_11E9D61: Set var_8C = Me.Check1
  loc_11E9D67: Call 0.Method_Proc_245_63_11E9F300 (var_86, var_B0)
  loc_11E9D6F: var_B0.Visible = True
  loc_11E9D8E: Set var_8C = var_B0(var_86)
  loc_11E9D94: Call 0.Method_Proc_245_63_11E9F300 (CVar(CDbl(5200)))
  loc_11E9D9C: var_B0.Width = 
  loc_11E9DA8: var_9C = 0
  loc_11E9DC4: Set var_8C = var_B0(var_86)
  loc_11E9DCA: Call 0.Method_Proc_245_63_11E9F300 (&H258)
  loc_11E9DD2: LateIdCallSt
  loc_11E9DFD: Set var_8C = var_B0(var_86)
  loc_11E9E03: Call 0.Method_Proc_245_63_11E9F300 (0, 2)
  loc_11E9E0B: LateIdCallSt
  loc_11E9E36: Set var_8C = var_B0(var_86)
  loc_11E9E3C: Call 0.Method_Proc_245_63_11E9F300 (&HFA0, 1, var_B0)
  loc_11E9E44: LateIdCallSt
  loc_11E9E62: Set var_8C = Me.Check1
  loc_11E9E68: Call 0.Method_Proc_245_63_11E9F300 (var_86, var_B0, CDbl(580))
  loc_11E9E70: var_B0.Width = var_B0
  loc_11E9E8F: Set var_8C = var_B0(var_86)
  loc_11E9E95: Call 0.Method_Proc_245_63_11E9F300 (0, var_B0)
  loc_11E9EBB: Set var_E4 = Me.Check1
  loc_11E9EC1: Call 0.Method_Proc_245_63_11E9F300 (var_86, var_E8)
  loc_11E9EC9: var_E8.Height = CDbl((CLng(Check1.DispID_3A) + &H14))
  loc_11E9EEC: Set var_8C = Me.Check1
  loc_11E9EF2: Call 0.Method_Proc_245_63_11E9F300 (var_86, var_B0)
  loc_11E9EFA: var_B0.Value = CInt(0)
  loc_11E9F06: Exit Sub
  loc_11E9F07: ' Referenced from: 11E9AA4
  loc_11E9F0D: Call 0.Method_arg_50 (var_EC)
  loc_11E9F22: Proc_183_57_104AA84(var_EC, "GridInitialise")
  loc_11E9F2E: Exit Sub
End Sub

Public Sub Proc_245_64_F51054(arg_C, arg_10) 'F51054
  'Data Table: 58C0C8
  Dim var_E0 As String
  Dim var_86 As Integer
  loc_F50F44: On Error Goto loc_F51024
  loc_F50F5D: Set var_CC = CVar(CLng(arg_C))(1)
  loc_F50F6E: var_E0 = CStr(Check1.DispID_41)
  loc_F50F7F: If (var_E0 = vbNullString) Then
  loc_F50FB4:   MsgBox(Trim(arg_10) & " Should not be Blank.", &H40, "Validation Check", var_110, var_130)
  loc_F50FCA:   Set var_CC = ()
  loc_F50FE8:   Set var_CC = Check1.DispID_8001(CVar(CLng(arg_C)))
  loc_F51003:   Set var_CC = Check1.DispID_A(1)
  loc_F51013:   var_86 = 0
  loc_F51019: Else
  loc_F5101B:   var_86 = &HFF
  loc_F5101E: End If
  loc_F5101E: Proc_245_64_F51054 = var_86
  loc_F51024: ' Referenced from: F50F44
  loc_F5102A: Call 0.Method_arg_50 (var_E0, var_86)
  loc_F5103F: Proc_183_57_104AA84(var_E0, "IsNotBlank")
  loc_F5104B: Proc_245_64_F51054 = Check1.DispID_B
End Sub

Public Sub Proc_245_65_17501C8
  'Data Table: 58C0C8
  Dim var_B4 As Variant
  Dim var_A4 As String
  Dim var_F0 As String
  Dim var_124 As String
  Dim var_C4 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Variant
  Dim var_188 As String
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim unk_58C10D As Connection15
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  loc_174E4AC: On Error Goto loc_175019F
  loc_174E4C0: Call 0.Method_arg_90 (var_94, var_98)
  loc_174E4C8: Call 0.Method_arg_24 (var_86)
  loc_174E4D4: For var_9C =  To CInt(var_98): 1 = var_9C 'Integer
  loc_174E4ED:   Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174E4F5:   Call 0.Method_arg_20 (var_A0)
  loc_174E4FD:   Call 0.Method_arg_30 (var_A4)
  loc_174E513:   var_D4 = Ucase(CVar(var_A4)) 'Variant
  loc_174E543:   If (var_D4 = Ucase("Title")) Then
  loc_174E54C:     var_EC = GRepFormName
  loc_174E55F:     var_A4 = CStr((GRepFormName = "DUELIST"))
  loc_174E567:     If (var_EC = var_A4) Then
  loc_174E573:       Call 0.Method_arg_50 (var_A4)
  loc_174E59B:       Set var_94 = CVar(CLng(3))(1)
  loc_174E5CA:       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174E5D2:       Call 0.Method_arg_20 (var_130)
  loc_174E5DA:       Call 0.Method_arg_38 ("'" & var_A4 & " More Than " & CStr(Check1.DispID_41) & " Days""'")
  loc_174E5FD:     Else
  loc_174E605:       If (var_EC = "DayBook") Then
  loc_174E611:         Call 0.Method_arg_50 (var_A4)
  loc_174E635:         Set var_94 = CVar(CLng(3))(1)
  loc_174E66F:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174E677:         Call 0.Method_arg_20 (var_130)
  loc_174E67F:         Call 0.Method_arg_38 ("'" & var_A4 & " (" & CStr(Check1.DispID_41) & ")" & "'")
  loc_174E6A4:       Else
  loc_174E6AC:         If (var_EC = "JournalBook") Then
  loc_174E6C4:           Set var_94 = CVar(CLng(4))(2)
  loc_174E6F7:           If CBool(Trim(CVar(CStr(Check1.DispID_41))) <> vbNullString) Then
  loc_174E714:             Set var_94 = CVar(CLng(2))(1)
  loc_174E738:             var_168 = (Trim(CVar(CStr(Check1.DispID_41))) + " (")
  loc_174E751:             Set var_A0 = CVar(CLng(4))(1)
  loc_174E770:             var_1E8 = (var_168 + Trim(CVar(CStr(Check1.DispID_41))))
  loc_174E779:             var_208 = (var_1E8 + ")")
  loc_174E79E:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174E7A6:             Call 0.Method_arg_20 (var_24C)
  loc_174E7AE:             Call 0.Method_arg_38 (CStr("'" & var_208 & "'"))
  loc_174E7DD:           Else
  loc_174E7F7:             Set var_94 = CVar(CLng(2))(1)
  loc_174E823:             var_A4 = CStr("'" & Trim(CVar(CStr(Check1.DispID_41))) & "'")
  loc_174E837:             Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174E83F:             Call 0.Method_arg_20 (var_130)
  loc_174E847:             Call 0.Method_arg_38 (var_A4)
  loc_174E865:           End If
  loc_174E868:         Else
  loc_174E870:           If Not (var_EC = "Annexure") Then
  loc_174E87B:             If Not (var_EC = "BankReg") Then
  loc_174E886:               If Not (var_EC = "CashBook") Then
  loc_174E891:                 If Not (var_EC = "BankBook") Then
  loc_174E89C:                   If Not (var_EC = "Clg") Then
  loc_174E8A7:                     If Not (var_EC = "ClgNot") Then
  loc_174E8B2:                       If Not (var_EC = "DailySumm") Then
  loc_174E8BD:                         If Not (var_EC = "RozNamcha") Then
  loc_174E8C8:                           If Not (var_EC = "CONTROLLED") Then
  loc_174E8D3:                             If Not (var_EC = "DUELIST") Then
  loc_174E8DE:                               If Not (var_EC = "RefReport") Then
  loc_174E8E9:                                 If (var_EC = "NonTrans") Then
  loc_174E8EC:                                 End If
  loc_174E8EC:                               End If
  loc_174E8EC:                             End If
  loc_174E8EC:                           End If
  loc_174E8EC:                         End If
  loc_174E8EC:                       End If
  loc_174E8EC:                     End If
  loc_174E8EC:                   End If
  loc_174E8EC:                 End If
  loc_174E8EC:               End If
  loc_174E8EC:             End If
  loc_174E8F7:             Set var_94 = Me.TEXT
  loc_174E8FD:             Call 0.Method_Proc_245_65_17501C80 (CInt(&HC))
  loc_174E926:             If CBool(Trim(CVar(var_A0)) <> vbNullString) Then
  loc_174E934:               Call 0.Method_arg_50 (var_A4, "'")
  loc_174E94E:               Set var_94 = Me.TEXT
  loc_174E954:               Call 0.Method_Proc_245_65_17501C80 (CInt(&HC), var_A0)
  loc_174E96B:               var_168 = (CVar(var_A4 & " (") + Trim(CVar(var_A0)))
  loc_174E974:               var_1B8 = ("'" & Trim(CVar(CStr(Check1.DispID_41))) + ")")
  loc_174E97D:               var_1C8 = ("'" & Trim(CVar(CStr(Check1.DispID_41))) & "'" + "'")
  loc_174E981:               var_1D8 = var_A0 & CVar(CStr(Check1.DispID_41)) 
  loc_174E999:               Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174E9A1:               Call 0.Method_arg_20 (var_24C)
  loc_174E9A9:               Call 0.Method_arg_38 (CStr(var_1D8))
  loc_174E9D2:             Else
  loc_174E9DB:               Call 0.Method_arg_50 (var_A4)
  loc_174E9FE:               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174EA06:               Call 0.Method_arg_20 (var_A0)
  loc_174EA0E:               Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_174EA23:             End If
  loc_174EA26:           Else
  loc_174EA2F:             Call 0.Method_arg_50 (var_A4)
  loc_174EA52:             Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174EA5A:             Call 0.Method_arg_20 (var_A0)
  loc_174EA62:             Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_174EA77:           End If
  loc_174EA77:         End If
  loc_174EA77:       End If
  loc_174EA77:     End If
  loc_174EA7A:   Else
  loc_174EA82:     var_B4 = "FORDATE"
  loc_174EA9C:     If Not (var_D4 = Ucase(var_B4)) Then
  loc_174EAC1:       If Not (var_D4 = Ucase("DATE")) Then
  loc_174EAE6:         If (var_D4 = Ucase("FROMDATE")) Then
  loc_174EAE9:         End If
  loc_174EAE9:       End If
  loc_174EAFA:       If (GRepFormName = "Annexure") Then
  loc_174EB30:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174EB38:         Call 0.Method_arg_20 (var_130)
  loc_174EB40:         Call 0.Method_arg_38 ("'Upto Date :   " & Me.TXTE_DATE.Text & "'")
  loc_174EB5A:       Else
  loc_174EB6F:         Set var_94 = CVar(CLng(0))(1)
  loc_174EB96:         Set var_A0 = CVar(CLng(1))(1)
  loc_174EBA8:         var_178 = "'From :'+ '"
  loc_174EBD8:         var_188 = "' + ' To ' + '"
  loc_174EC29:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'"), 1)
  loc_174EC31:         Call 0.Method_arg_20 (1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & var_188, 1, "'")
  loc_174EC39:         Call 0.Method_arg_38 (TXTE_DATE.DispID_41)
  loc_174EC67:       End If
  loc_174EC6A:     Else
  loc_174EC8C:       If (var_D4 = Ucase("PageNo")) Then
  loc_174ECE2:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174ECEA:         Call 0.Method_arg_20 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_174ECF2:         Call 0.Method_arg_38 (TXTE_DATE.DispID_41)
  loc_174ED11:       Else
  loc_174ED33:         If (var_D4 = Ucase("DT")) Then
  loc_174ED89:           Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174ED91:           Call 0.Method_arg_20 (var_24C)
  loc_174ED99:           Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("daterfill").Value & "'"))
  loc_174EDB8:         Else
  loc_174EDDA:           If (var_D4 = Ucase("SepPage")) Then
  loc_174EDFC:             var_A0 = Me.Fields.Item("CashBookPage")
  loc_174EE34:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_174EE3C:             Call 0.Method_arg_20 (var_24C)
  loc_174EE44:             Call 0.Method_arg_38 (CStr("'" & Ucase(CVar(var_A0)) & "'"))
  loc_174EE63:           Else
  loc_174EE85:             If (var_D4 = Ucase("PageNoIni")) Then
  loc_174EE9D:               Set var_94 = CVar(CLng(3))(1)
  loc_174EECB:               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174EED3:               Call 0.Method_arg_20 (var_130)
  loc_174EEDB:               Call 0.Method_arg_38 (CStr(Val(CStr(TXTE_DATE.DispID_41))))
  loc_174EEF6:             Else
  loc_174EF18:               If (var_D4 = Ucase("ACNAME")) Then
  loc_174EF21:                 var_278 = GRepFormName
  loc_174EF2C:                 If Not (var_278 = "CashBook") Then
  loc_174EF37:                   If (var_278 = "BankBook") Then
  loc_174EF3A:                   End If
  loc_174EF52:                   Set var_94 = CVar(CLng(4))(1)
  loc_174EF81:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174EF89:                   Call 0.Method_arg_20 (var_130)
  loc_174EF91:                   Call 0.Method_arg_38 ("'" & CStr(TXTE_DATE.DispID_41) & "'")
  loc_174EFAE:                 Else
  loc_174EFE1:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174EFE9:                   Call 0.Method_arg_20 (var_130)
  loc_174EFF1:                   Call 0.Method_arg_38 ("'From A/C :               " & Me.TXTACC_CODE.Text & "'")
  loc_174F008:                 End If
  loc_174F00B:               Else
  loc_174F02D:                 If Not (var_D4 = Ucase("PARTYNAME")) Then
  loc_174F052:                   If (var_D4 = Ucase("FORPARTY")) Then
  loc_174F055:                   End If
  loc_174F05F:                   Set var_94 = Me.TXTACC_CODE
  loc_174F088:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F090:                   Call 0.Method_arg_20 (var_130)
  loc_174F098:                   Call 0.Method_arg_38 ("'For A/c :               " & var_94.Text & "'")
  loc_174F0B2:                 Else
  loc_174F0D4:                   If (var_D4 = Ucase("MyOpBal")) Then
  loc_174F0F2:                     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F0FA:                     Call 0.Method_arg_20 (var_A0)
  loc_174F102:                     Call 0.Method_arg_38 (CStr(global_132))
  loc_174F114:                   Else
  loc_174F136:                     If (var_D4 = Ucase("VRTOT")) Then
  loc_174F151:                       Set var_94 = CVar(CLng(3))(1)
  loc_174F180:                       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F188:                       Call 0.Method_arg_20 (var_130)
  loc_174F190:                       Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_174F1AD:                     Else
  loc_174F1CF:                       If (var_D4 = Ucase("VRWISETOT")) Then
  loc_174F1EA:                         Set var_94 = CVar(CLng(2))(1)
  loc_174F219:                         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F221:                         Call 0.Method_arg_20 (var_130)
  loc_174F229:                         Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_174F246:                       Else
  loc_174F24E:                         var_B4 = "BetweenDate"
  loc_174F268:                         If (var_D4 = Ucase(var_B4)) Then
  loc_174F280:                           Set var_94 = CVar(CLng(0))(1)
  loc_174F292:                           var_178 = "'Upto Date :'+ '"
  loc_174F2DF:                           Call 0.Method_arg_90 (var_A0, CLng(var_86), var_130, CStr(1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & "'"))
  loc_174F2E7:                           Call 0.Method_arg_20 (1, "'")
  loc_174F2EF:                           Call 0.Method_arg_38 (TXTACC_CODE.DispID_41)
  loc_174F312:                         Else
  loc_174F334:                           If (var_D4 = Ucase("ForParty")) Then
  loc_174F343:                             Set var_94 = Me.Check1
  loc_174F349:                             Call 0.Method_Proc_245_65_17501C80 (1, var_A0)
  loc_174F367:                             If (CLng(var_A0.Value) = 0) Then
  loc_174F3AF:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F3B7:                               Call 0.Method_arg_20 (var_A0)
  loc_174F3BF:                               Call 0.Method_arg_38 (CStr(Trim(Left(CVar("'For Party :" & global_108), &HFF)) & "'"))
  loc_174F3DC:                             Else
  loc_174F3EF:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F3F7:                               Call 0.Method_arg_20 (var_A0)
  loc_174F3FF:                               Call 0.Method_arg_38 ("'For Party :                           All'")
  loc_174F40B:                             End If
  loc_174F40E:                           Else
  loc_174F430:                             If (var_D4 = Ucase("ForDrCr")) Then
  loc_174F44B:                               Set var_94 = CVar(CLng(2))(1)
  loc_174F45C:                               var_A4 = CStr(Check1.DispID_41)
  loc_174F460:                               var_F0 = "'For Dr/Cr :'+ '" & var_A4
  loc_174F47A:                               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_174F482:                               Call 0.Method_arg_20 (var_130)
  loc_174F48A:                               Call 0.Method_arg_38 ("'" & CStr(TXTACC_CODE.DispID_41) & "'")
  loc_174F4A4:                             End If
  loc_174F4A4:                           End If
  loc_174F4A4:                         End If
  loc_174F4A4:                       End If
  loc_174F4A4:                     End If
  loc_174F4A4:                   End If
  loc_174F4A4:                 End If
  loc_174F4A4:               End If
  loc_174F4A4:             End If
  loc_174F4A4:           End If
  loc_174F4A4:         End If
  loc_174F4A4:       End If
  loc_174F4A4:     End If
  loc_174F4A4:   End If
  loc_174F4A7: Next var_9C 'Integer
  loc_174F4B2: var_27C = GRepFormName
  loc_174F4BD: If (var_27C = "BudgetVariance") Then
  loc_174F4D1:   Call 0.Method_arg_90 (var_94, var_98)
  loc_174F4D9:   Call 0.Method_arg_24 (var_86)
  loc_174F4E5:   For var_280 =  To CInt(var_98): 1 = var_280 'Integer
  loc_174F4FE:     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F506:     Call 0.Method_arg_20 (var_A0)
  loc_174F50E:     Call 0.Method_arg_30 (var_A4)
  loc_174F554:     If (Ucase(CVar(var_A4)) = Ucase("ForBudget")) Then
  loc_174F563:       Set var_94 = Me.Check1
  loc_174F569:       Call 0.Method_Proc_245_65_17501C80 (1, var_A0)
  loc_174F587:       If (CLng(var_A0.Value) = 0) Then
  loc_174F599:         var_B4 = CVar("'For Budget: " & global_108) 'String
  loc_174F59F:         var_C4 = Left(var_B4, &HFF)
  loc_174F5CF:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F5D7:         Call 0.Method_arg_20 (var_A0)
  loc_174F5DF:         Call 0.Method_arg_38 (CStr(Trim(var_C4) & "'"))
  loc_174F5FC:       Else
  loc_174F60F:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F617:         Call 0.Method_arg_20 (var_A0)
  loc_174F61F:         Call 0.Method_arg_38 ("'For Budget:All'")
  loc_174F62B:       End If
  loc_174F62B:     End If
  loc_174F62E:   Next var_280 'Integer
  loc_174F636: Else
  loc_174F63E:   If (var_27C = "Budget") Then
  loc_174F656:     Set var_94 = CVar(CLng(0))(2)
  loc_174F67C:     var_A4 = CStr(var_B4)
  loc_174F680:     var_F0 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & var_A4
  loc_174F690:     unk_58C10D.Execute "'" & CStr(TXTACC_CODE.DispID_41) & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_C4, -1
  loc_174F69B:     Set var_90 = var_A0
  loc_174F6BB:     var_98 = var_90.RecordCount
  loc_174F6C9:     If (var_98 > 0) Then
  loc_174F6DB:       var_94 = var_90.Fields
  loc_174F6E3:       var_A0 = var_94.Item("FromDate")
  loc_174F6F7:       var_130 = var_90.Fields
  loc_174F6FF:       var_24C = var_130.Item("ToDate")
  loc_174F72C:       var_292 = CByte(DateDiff("m", CVar(var_A0), CVar(var_24C), 1, 1)) 'Byte
  loc_174F74B:       var_292 = CByte((CInt(var_292) + 1)) 'Byte
  loc_174F760:       Call 0.Method_arg_90 (var_94, var_98, var_86)
  loc_174F768:       Call 0.Method_arg_24 (1, var_A0)
  loc_174F774:       For var_296 =  To CInt(var_98):   Check1.DispID_41 = var_296 'Integer
  loc_174F78D:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_174F795:         Call 0.Method_arg_20 (var_A0)
  loc_174F79D:         Call 0.Method_arg_30 (var_A4)
  loc_174F7B3:         var_2A8 = Ucase(CVar(var_A4)) 'Variant
  loc_174F7E3:         If (var_2A8 = Ucase("Year1")) Then
  loc_174F84F:           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174F857:           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy") & "'"), 1)
  loc_174F85F:           Call 0.Method_arg_38 ("'")
  loc_174F880:         Else
  loc_174F8A2:           If (var_2A8 = Ucase("Year2")) Then
  loc_174F920:             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174F928:             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(1), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174F930:             Call 0.Method_arg_38 ("'")
  loc_174F953:           Else
  loc_174F975:             If (var_2A8 = Ucase("Year3")) Then
  loc_174F9F3:               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174F9FB:               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(2), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FA03:               Call 0.Method_arg_38 ("'")
  loc_174FA26:             Else
  loc_174FA48:               If (var_2A8 = Ucase("Year4")) Then
  loc_174FAC6:                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FACE:                 Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(3), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FAD6:                 Call 0.Method_arg_38 ("'")
  loc_174FAF9:               Else
  loc_174FB1B:                 If (var_2A8 = Ucase("Year5")) Then
  loc_174FB99:                   Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FBA1:                   Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(4), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FBA9:                   Call 0.Method_arg_38 ("'")
  loc_174FBCC:                 Else
  loc_174FBEE:                   If (var_2A8 = Ucase("Year6")) Then
  loc_174FC6C:                     Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FC74:                     Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(5), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FC7C:                     Call 0.Method_arg_38 ("'")
  loc_174FC9F:                   Else
  loc_174FCC1:                     If (var_2A8 = Ucase("Year7")) Then
  loc_174FD3F:                       Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FD47:                       Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(6), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FD4F:                       Call 0.Method_arg_38 ("'")
  loc_174FD72:                     Else
  loc_174FD94:                       If (var_2A8 = Ucase("Year8")) Then
  loc_174FE12:                         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FE1A:                         Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(7), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FE22:                         Call 0.Method_arg_38 ("'")
  loc_174FE45:                       Else
  loc_174FE67:                         If (var_2A8 = Ucase("Year9")) Then
  loc_174FEE5:                           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FEED:                           Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(8), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FEF5:                           Call 0.Method_arg_38 ("'")
  loc_174FF18:                         Else
  loc_174FF3A:                           If (var_2A8 = Ucase("Year10")) Then
  loc_174FFB8:                             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_174FFC0:                             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(9), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_174FFC8:                             Call 0.Method_arg_38 ("'")
  loc_174FFEB:                           Else
  loc_175000D:                             If (var_2A8 = Ucase("Year11")) Then
  loc_175008B:                               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750093:                               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(&HA), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175009B:                               Call 0.Method_arg_38 ("'")
  loc_17500BE:                             Else
  loc_17500E0:                               If (var_2A8 = Ucase("Year12")) Then
  loc_175014A:                                 var_A4 = CStr(1 & Format(DateAdd("m", CDbl(&HB), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'")
  loc_175015E:                                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1750166:                                 Call 0.Method_arg_20 (var_A4, 1)
  loc_175016E:                                 Call 0.Method_arg_38 ("'")
  loc_175018E:                               End If
  loc_175018E:                             End If
  loc_175018E:                           End If
  loc_175018E:                         End If
  loc_175018E:                       End If
  loc_175018E:                     End If
  loc_175018E:                   End If
  loc_175018E:                 End If
  loc_175018E:               End If
  loc_175018E:             End If
  loc_175018E:           End If
  loc_175018E:         End If
  loc_1750191:       Next var_296 'Integer
  loc_1750196:     End If
  loc_1750196:   End If
  loc_1750196: End If
  loc_175019B: Set var_90 = Nothing
  loc_175019E: Exit Sub
  loc_175019F: ' Referenced from: 174E4AC
  loc_17501A5: Call 0.Method_arg_50 (var_A4)
  loc_17501AD: var_124 = "Formulas"
  loc_17501BA: Proc_183_57_104AA84(var_A4)
  loc_17501C6: Exit Sub
End Sub

Public Sub Proc_245_66_19E80A4
  'Data Table: 58C0C8
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As Variant
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_160 As String
  loc_19E4EA0: On Error Goto loc_19E8079
  loc_19E4EB1: var_A0 = " Where (ACGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_19E4EC5: var_A4 = " And (ACGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_19E4ED9: var_90 = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19E4EED: var_94 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19E4F01: var_98 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19E4F15: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19E4F27: Me.TxtDetails.Visible = False
  loc_19E4F35: var_B0 = GRepFormName
  loc_19E4F40: If Not (var_B0 = "Led") Then
  loc_19E4F4B:   If Not (var_B0 = "LedInt") Then
  loc_19E4F56:     If Not (var_B0 = "LedDeb") Then
  loc_19E4F61:       If Not (var_B0 = "LedCred") Then
  loc_19E4F6C:         If (var_B0 = "AcCheckList") Then
  loc_19E4F6F:         End If
  loc_19E4F6F:       End If
  loc_19E4F6F:     End If
  loc_19E4F6F:   End If
  loc_19E4F7B:   Me.TxtDetails.Visible = True
  loc_19E4F86:   var_88 = vbNullString
  loc_19E4F8F:   var_B4 = GRepFormName
  loc_19E4F9A:   If (var_B4 = "LedDeb") Then
  loc_19E4FA4:     var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_19E4FAE:     var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_19E4FB4:   Else
  loc_19E4FBC:     If (var_B4 = "LedCred") Then
  loc_19E4FC6:       var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_19E4FD0:       var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_19E4FD6:     Else
  loc_19E4FD9:       var_88 = var_90
  loc_19E4FDF:       var_8C = var_98
  loc_19E4FE2:     End If
  loc_19E4FE2:   End If
  loc_19E4FE6:   Set var_B8 = ()
  loc_19E4FEC:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E4FF1:   var_E8 = 0
  loc_19E4FFA:   var_108 = "From Date           "
  loc_19E5003:   LateIdCallSt
  loc_19E500E:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E5013:   var_E8 = &H10E
  loc_19E501F:   LateIdCallSt
  loc_19E502A:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E502F:   var_E8 = 0
  loc_19E5038:   var_108 = "To Date             "
  loc_19E5041:   LateIdCallSt
  loc_19E504C:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E5051:   var_E8 = &H10E
  loc_19E505D:   LateIdCallSt
  loc_19E5068:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E506D:   var_E8 = 0
  loc_19E5076:   var_108 = "Account Selection   "
  loc_19E507F:   LateIdCallSt
  loc_19E508A:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E508F:   var_E8 = &H10E
  loc_19E509B:   LateIdCallSt
  loc_19E50A6:   var_C8 = CVar(CLng(3)) 'Long
  loc_19E50AB:   var_E8 = 0
  loc_19E50B4:   var_108 = "Form Account        "
  loc_19E50BD:   LateIdCallSt
  loc_19E50C8:   var_C8 = CVar(CLng(3)) 'Long
  loc_19E50CD:   var_E8 = 0
  loc_19E50D9:   LateIdCallSt
  loc_19E50E4:   var_C8 = CVar(CLng(4)) 'Long
  loc_19E50E9:   var_E8 = 0
  loc_19E50F2:   var_108 = "To Account          "
  loc_19E50FB:   LateIdCallSt
  loc_19E5106:   var_C8 = CVar(CLng(4)) 'Long
  loc_19E510B:   var_E8 = 0
  loc_19E5117:   LateIdCallSt
  loc_19E5122:   var_C8 = CVar(CLng(5)) 'Long
  loc_19E5127:   var_E8 = 0
  loc_19E5130:   var_108 = "To Account          "
  loc_19E5139:   LateIdCallSt
  loc_19E5144:   var_C8 = CVar(CLng(5)) 'Long
  loc_19E5149:   var_E8 = 0
  loc_19E5155:   LateIdCallSt
  loc_19E5160:   var_C8 = CVar(CLng(0)) 'Long
  loc_19E5165:   var_E8 = 1
  loc_19E5173:   var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E517A:   LateIdCallSt
  loc_19E5188:   var_C8 = CVar(CLng(1)) 'Long
  loc_19E518D:   var_E8 = 1
  loc_19E519B:   var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E51A2:   LateIdCallSt
  loc_19E51B0:   var_C8 = CVar(CLng(2)) 'Long
  loc_19E51B5:   var_E8 = 1
  loc_19E51BE:   var_108 = "Selected"
  loc_19E51C7:   LateIdCallSt
  loc_19E51D1:   Set var_B8 = Nothing 
  loc_19E51F6:   Me.ListView.Font.ColumnHeaders = 10
  loc_19E520C:   global_142 = CInt(0)
  loc_19E5225:   global_142(CVar(CLng(global_142))).MouseIcon = var_B8
  loc_19E5259:   Set var_AC = 0(&H7D0)
  loc_19E525F:   LateIdCallSt
  loc_19E5280:   Set var_AC = 1(&H1388)
  loc_19E5286:   LateIdCallSt
  loc_19E5291:   var_C8 = 0
  loc_19E52B0:   var_E8 = 1
  loc_19E52BD:   Set var_12C = CLng(ListView.DispID_39)(var_E8)
  loc_19E52D7:   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(ListView.DispID_39)) + &H64))) 'Single
  loc_19E52E6:   1(var_108).Width = CInt(2)
  loc_19E5305:   var_128 = var_E8(var_108).Width
  loc_19E5314:   Call 0.Method_Me0 (var_144, var_128, var_C8, var_B8, var_128)
  loc_19E5326:   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5335:   var_E8(var_C8).Left = var_C8
  loc_19E5350:   Set var_AC = var_B8(CVar(CDbl(&H4B)))
  loc_19E5356:   var_AC.Top = var_128
  loc_19E537A:   Me.var_AC.CursorLocation = 3
  loc_19E539D:   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E53AE:   Me.Open CVar(" And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_19E53C2:   CVarUnk
  loc_19E53C7:   VerifyVarObj
  loc_19E53CD:   Set var_AC = 1(New)
  loc_19E53D3:   LateIdStAd
  loc_19E53EA:   var_144 = Me.RecordCount
  loc_19E53F8:   If (var_144 > 0) Then
  loc_19E53FE:     var_D8 = CVar(CLng(3)) 'Long
  loc_19E5442:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E5448:     LateIdCallSt
  loc_19E5463:     var_D8 = CVar(CLng(3)) 'Long
  loc_19E54A7:     Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E54AD:     LateIdCallSt
  loc_19E54C8:     var_D8 = CVar(CLng(4)) 'Long
  loc_19E550C:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E5512:     LateIdCallSt
  loc_19E552D:     var_D8 = CVar(CLng(4)) 'Long
  loc_19E5558:     var_12C = Me.Fields.Item("Code")
  loc_19E5571:     Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_19E5577:     LateIdCallSt
  loc_19E558F:   End If
  loc_19E55AB:   Me.CursorLocation = 3
  loc_19E55C2:   var_D8 = CVar(MemVar_1F921DC) 'Address
  loc_19E55D3:   Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_19E55E1:   CVarUnk
  loc_19E55E6:   VerifyVarObj
  loc_19E55EC:   Set var_AC = 1(New)
  loc_19E55F2:   LateIdStAd
  loc_19E5607:   var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_19E5617:   Call Proc_245_63_11E9F30(1, " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & " order by name")
  loc_19E5631:   Call Proc_245_63_11E9F30(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_19E564C:   var_AC(CVar(CDbl(1500))).Height = -1
  loc_19E5662:   Set var_AC = var_12C(2)
  loc_19E5668:   Call 0.Method_Proc_245_66_19E80A40 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_19E5670:   var_12C.Visible = var_D8
  loc_19E5687:   Set var_AC = Me.Check1
  loc_19E568D:   Call 0.Method_Proc_245_66_19E80A40 (2, var_12C, 0, var_140)
  loc_19E5695:   var_12C.Visible = var_D8
  loc_19E56AC:   If (GRepFormName = "AcCheckList") Then
  loc_19E56BD:     Call Proc_245_63_11E9F30(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_19E56C5:   End If
  loc_19E56C8: Else
  loc_19E56D0:   If (var_B0 = "MemLed") Then
  loc_19E56D9:     Set var_AC = Me.TxtDetails
  loc_19E56DF:     var_AC.Visible = True
  loc_19E56EA:     var_88 = vbNullString
  loc_19E56F3:     var_150 = GRepFormName
  loc_19E56FE:     If (var_150 = "LedDeb") Then
  loc_19E5708:       var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_19E5712:       var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_19E5718:     Else
  loc_19E5720:       If (var_150 = "LedCred") Then
  loc_19E572A:         var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_19E5734:         var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_19E573A:       Else
  loc_19E573D:         var_88 = var_90
  loc_19E5743:         var_8C = var_98
  loc_19E5746:       End If
  loc_19E5746:     End If
  loc_19E574A:     Set var_154 = -1(var_AC)
  loc_19E5750:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E5755:     var_E8 = 0
  loc_19E575E:     var_108 = "From Date           "
  loc_19E5767:     LateIdCallSt
  loc_19E5772:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E5777:     var_E8 = &H10E
  loc_19E5783:     LateIdCallSt
  loc_19E578E:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E5793:     var_E8 = 0
  loc_19E579C:     var_108 = "To Date             "
  loc_19E57A5:     LateIdCallSt
  loc_19E57B0:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E57B5:     var_E8 = &H10E
  loc_19E57C1:     LateIdCallSt
  loc_19E57CC:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E57D1:     var_E8 = 0
  loc_19E57DA:     var_108 = "Account Selection   "
  loc_19E57E3:     LateIdCallSt
  loc_19E57EE:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E57F3:     var_E8 = &H10E
  loc_19E57FF:     LateIdCallSt
  loc_19E580A:     var_C8 = CVar(CLng(3)) 'Long
  loc_19E580F:     var_E8 = 0
  loc_19E5818:     var_108 = "Form Account        "
  loc_19E5821:     LateIdCallSt
  loc_19E582C:     var_C8 = CVar(CLng(3)) 'Long
  loc_19E5831:     var_E8 = 0
  loc_19E583D:     LateIdCallSt
  loc_19E5848:     var_C8 = CVar(CLng(4)) 'Long
  loc_19E584D:     var_E8 = 0
  loc_19E5856:     var_108 = "To Account          "
  loc_19E585F:     LateIdCallSt
  loc_19E586A:     var_C8 = CVar(CLng(4)) 'Long
  loc_19E586F:     var_E8 = 0
  loc_19E587B:     LateIdCallSt
  loc_19E5886:     var_C8 = CVar(CLng(5)) 'Long
  loc_19E588B:     var_E8 = 0
  loc_19E5894:     var_108 = "To Account          "
  loc_19E589D:     LateIdCallSt
  loc_19E58A8:     var_C8 = CVar(CLng(5)) 'Long
  loc_19E58AD:     var_E8 = 0
  loc_19E58B9:     LateIdCallSt
  loc_19E58C4:     var_C8 = CVar(CLng(0)) 'Long
  loc_19E58C9:     var_E8 = 1
  loc_19E58D7:     var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E58DE:     LateIdCallSt
  loc_19E58EC:     var_C8 = CVar(CLng(1)) 'Long
  loc_19E58F1:     var_E8 = 1
  loc_19E58FF:     var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E5906:     LateIdCallSt
  loc_19E5914:     var_C8 = CVar(CLng(2)) 'Long
  loc_19E5919:     var_E8 = 1
  loc_19E5922:     var_108 = "Selected"
  loc_19E592B:     LateIdCallSt
  loc_19E5935:     Set var_154 = Nothing 
  loc_19E595A:     Me.ListView.Font.ColumnHeaders = 10
  loc_19E5970:     global_142 = CInt(0)
  loc_19E5989:     global_142(CVar(CLng(global_142))).MouseIcon = var_154
  loc_19E59BD:     Set var_AC = 0(&H7D0)
  loc_19E59C3:     LateIdCallSt
  loc_19E59E4:     Set var_AC = 1(&H1388)
  loc_19E59EA:     LateIdCallSt
  loc_19E59F5:     var_C8 = 0
  loc_19E5A14:     var_E8 = 1
  loc_19E5A21:     Set var_12C = CLng(ListView.DispID_39)(var_E8)
  loc_19E5A3B:     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(ListView.DispID_39)) + &H64))) 'Single
  loc_19E5A4A:     1(var_108).Width = CInt(2)
  loc_19E5A69:     var_128 = var_E8(var_108).Width
  loc_19E5A78:     Call 0.Method_Me0 (var_144, var_128, var_C8, var_154, var_128)
  loc_19E5A8A:     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E5A99:     var_E8(var_C8).Left = var_C8
  loc_19E5AB4:     Set var_AC = var_154(CVar(CDbl(&H4B)))
  loc_19E5ABA:     var_AC.Top = var_128
  loc_19E5ADE:     Me.var_AC.CursorLocation = 3
  loc_19E5B01:     var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E5B08:     var_128 = CVar("SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description" & " order by SubGroup.Name") 'String
  loc_19E5B12:     Me.Open var_128, CVar(MemVar_1F921DC), 0
  loc_19E5B26:     CVarUnk
  loc_19E5B2B:     VerifyVarObj
  loc_19E5B31:     Set var_AC = 1(New)
  loc_19E5B37:     LateIdStAd
  loc_19E5B4E:     var_144 = Me.RecordCount
  loc_19E5B5C:     If (var_144 > 0) Then
  loc_19E5B62:       var_D8 = CVar(CLng(3)) 'Long
  loc_19E5BA6:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E5BAC:       LateIdCallSt
  loc_19E5BC7:       var_D8 = CVar(CLng(3)) 'Long
  loc_19E5C0B:       Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E5C11:       LateIdCallSt
  loc_19E5C2C:       var_D8 = CVar(CLng(4)) 'Long
  loc_19E5C70:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E5C76:       LateIdCallSt
  loc_19E5C91:       var_D8 = CVar(CLng(4)) 'Long
  loc_19E5CBC:       var_12C = Me.Fields.Item("Code")
  loc_19E5CD5:       Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_19E5CDB:       LateIdCallSt
  loc_19E5CF3:     End If
  loc_19E5D0F:     Me.CursorLocation = 3
  loc_19E5D26:     var_D8 = CVar(MemVar_1F921DC) 'Address
  loc_19E5D37:     Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_19E5D45:     CVarUnk
  loc_19E5D4A:     VerifyVarObj
  loc_19E5D50:     Set var_AC = 1(New)
  loc_19E5D56:     LateIdStAd
  loc_19E5D6B:     var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_19E5D7B:     Call Proc_245_63_11E9F30(1, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description" & " order by name")
  loc_19E5D95:     Call Proc_245_63_11E9F30(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_19E5DB0:     var_AC(CVar(CDbl(1500))).Height = -1
  loc_19E5DC6:     Set var_AC = var_12C(2)
  loc_19E5DCC:     Call 0.Method_Proc_245_66_19E80A40 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_19E5DD4:     var_12C.Visible = var_D8
  loc_19E5DEB:     Set var_AC = Me.Check1
  loc_19E5DF1:     Call 0.Method_Proc_245_66_19E80A40 (2, var_12C, 0, var_140)
  loc_19E5DF9:     var_12C.Visible = var_D8
  loc_19E5E10:     If (GRepFormName = "AcCheckList") Then
  loc_19E5E21:       Call Proc_245_63_11E9F30(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_19E5E29:     End If
  loc_19E5E2C:   Else
  loc_19E5E34:     If (var_B0 = "Annexure") Then
  loc_19E5E3B:       Set var_158 = -1(var_AC)
  loc_19E5E41:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E5E46:       var_E8 = 0
  loc_19E5E4F:       var_108 = "From Date        "
  loc_19E5E58:       LateIdCallSt
  loc_19E5E63:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E5E68:       var_E8 = &H10E
  loc_19E5E74:       LateIdCallSt
  loc_19E5E7F:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E5E84:       var_E8 = 0
  loc_19E5E8D:       var_108 = "UpTo Date        "
  loc_19E5E96:       LateIdCallSt
  loc_19E5EA1:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E5EA6:       var_E8 = &H10E
  loc_19E5EB2:       LateIdCallSt
  loc_19E5EBD:       var_C8 = CVar(CLng(2)) 'Long
  loc_19E5EC2:       var_E8 = 0
  loc_19E5ECB:       var_108 = "For Account      "
  loc_19E5ED4:       LateIdCallSt
  loc_19E5EDF:       var_C8 = CVar(CLng(2)) 'Long
  loc_19E5EE4:       var_E8 = &H10E
  loc_19E5EF0:       LateIdCallSt
  loc_19E5EFB:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E5F00:       var_E8 = 0
  loc_19E5F09:       var_108 = "Amount Slab Wise "
  loc_19E5F12:       LateIdCallSt
  loc_19E5F1D:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E5F22:       var_E8 = &H10E
  loc_19E5F2E:       LateIdCallSt
  loc_19E5F39:       var_C8 = CVar(CLng(0)) 'Long
  loc_19E5F3E:       var_E8 = 1
  loc_19E5F4C:       var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E5F53:       LateIdCallSt
  loc_19E5F61:       var_C8 = CVar(CLng(1)) 'Long
  loc_19E5F66:       var_E8 = 1
  loc_19E5F74:       var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E5F7B:       LateIdCallSt
  loc_19E5F89:       var_C8 = CVar(CLng(3)) 'Long
  loc_19E5F8E:       var_E8 = 1
  loc_19E5F97:       var_108 = "No"
  loc_19E5FA0:       LateIdCallSt
  loc_19E5FAA:       Set var_158 = Nothing 
  loc_19E5FB5:       global_142 = CInt(0)
  loc_19E5FC8:       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6002:       Set var_AC = 0(&H7D0)
  loc_19E6008:       LateIdCallSt
  loc_19E6029:       Set var_AC = 1(&HDAC)
  loc_19E602F:       LateIdCallSt
  loc_19E603A:       var_C8 = 0
  loc_19E6059:       var_E8 = 1
  loc_19E6066:       Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E6080:       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E608F:       1(var_108).Width = CInt(3)
  loc_19E60AE:       var_128 = var_158(Check1.DispID_A).Width
  loc_19E60BD:       Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E60CF:       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E60DE:       var_158(var_C8).Left = var_128
  loc_19E60F0:       var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E60F9:       Set var_AC = var_E8(var_C8)
  loc_19E60FF:       var_AC.Top = var_C8
  loc_19E6123:       Me.var_AC.CursorLocation = 3
  loc_19E614D:       var_128 = CVar("Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' " & var_A4 & " order by GroupName") 'String
  loc_19E6157:       Me.Open var_128, CVar(MemVar_1F921DC), 0
  loc_19E616B:       CVarUnk
  loc_19E6170:       VerifyVarObj
  loc_19E6176:       Set var_AC = 1(New)
  loc_19E617C:       LateIdStAd
  loc_19E6193:       var_144 = Me.RecordCount
  loc_19E61A1:       If (var_144 > 0) Then
  loc_19E61A7:         var_D8 = CVar(CLng(2)) 'Long
  loc_19E61EB:         Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19E61F1:         LateIdCallSt
  loc_19E620C:         var_D8 = CVar(CLng(2)) 'Long
  loc_19E6250:         Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19E6256:         LateIdCallSt
  loc_19E6286:         Set var_AC = CVar(CLng(2))(2)
  loc_19E62A9:         var_160 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(Check1.DispID_41) & "' " & var_94
  loc_19E62B9:         Call Proc_245_63_11E9F30(1, var_160 & " Order by Name")
  loc_19E62D1:       End If
  loc_19E62D4:     Else
  loc_19E62DC:       If (var_B0 = "DetailedTrial") Then
  loc_19E62E3:         Set var_168 = var_D8(var_140)
  loc_19E62E9:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E62EE:         var_E8 = 0
  loc_19E62F7:         var_108 = "From Date      "
  loc_19E6300:         LateIdCallSt
  loc_19E630B:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E6310:         var_E8 = &H10E
  loc_19E631C:         LateIdCallSt
  loc_19E6327:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E632C:         var_E8 = 0
  loc_19E6335:         var_108 = "UpTo Date      "
  loc_19E633E:         LateIdCallSt
  loc_19E6349:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E634E:         var_E8 = &H10E
  loc_19E635A:         LateIdCallSt
  loc_19E6365:         var_C8 = CVar(CLng(0)) 'Long
  loc_19E636A:         var_E8 = 1
  loc_19E6378:         var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E637F:         LateIdCallSt
  loc_19E638D:         var_C8 = CVar(CLng(1)) 'Long
  loc_19E6392:         var_E8 = 1
  loc_19E63A0:         var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E63A7:         LateIdCallSt
  loc_19E63B5:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E63BA:         var_E8 = 0
  loc_19E63C3:         var_108 = "With Op.Bal.   "
  loc_19E63CC:         LateIdCallSt
  loc_19E63D7:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E63DC:         var_E8 = &H10E
  loc_19E63E8:         LateIdCallSt
  loc_19E63F3:         var_C8 = CVar(CLng(2)) 'Long
  loc_19E63F8:         var_E8 = 1
  loc_19E6401:         var_108 = "Yes"
  loc_19E640A:         LateIdCallSt
  loc_19E6415:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E641A:         var_E8 = 0
  loc_19E6423:         var_108 = "Datailed       "
  loc_19E642C:         LateIdCallSt
  loc_19E6437:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E643C:         var_E8 = &H10E
  loc_19E6448:         LateIdCallSt
  loc_19E6453:         var_C8 = CVar(CLng(3)) 'Long
  loc_19E6458:         var_E8 = 1
  loc_19E6461:         var_108 = "Yes"
  loc_19E646A:         LateIdCallSt
  loc_19E6474:         Set var_168 = Nothing 
  loc_19E647F:         global_142 = CInt(0)
  loc_19E6492:         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E64CC:         Set var_AC = 0(&H5DC)
  loc_19E64D2:         LateIdCallSt
  loc_19E64F3:         Set var_AC = 1(&H5DC)
  loc_19E64F9:         LateIdCallSt
  loc_19E6504:         var_C8 = 0
  loc_19E6523:         var_E8 = 1
  loc_19E6530:         Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E654A:         var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E6559:         0(var_108).Width = CInt(3)
  loc_19E6578:         var_128 = var_168(Check1.DispID_A).Width
  loc_19E6587:         Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E6599:         var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E65A8:         var_168(var_C8).Left = var_E8
  loc_19E65C9:         CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_168
  loc_19E65D4:       Else
  loc_19E65DC:         If (var_B0 = "DayBook") Then
  loc_19E65E3:           Set var_16C = ()
  loc_19E65E9:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E65EE:           var_E8 = 0
  loc_19E65F7:           var_108 = "From Date         "
  loc_19E6600:           LateIdCallSt
  loc_19E660B:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E6610:           var_E8 = &H10E
  loc_19E661C:           LateIdCallSt
  loc_19E6627:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E662C:           var_E8 = 0
  loc_19E6635:           var_108 = "UpTo Date         "
  loc_19E663E:           LateIdCallSt
  loc_19E6649:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E664E:           var_E8 = &H10E
  loc_19E665A:           LateIdCallSt
  loc_19E6665:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E666A:           var_E8 = 0
  loc_19E6673:           var_108 = "Voucher Wise Total"
  loc_19E667C:           LateIdCallSt
  loc_19E6687:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E668C:           var_E8 = &H10E
  loc_19E6698:           LateIdCallSt
  loc_19E66A3:           var_C8 = CVar(CLng(0)) 'Long
  loc_19E66A8:           var_E8 = 1
  loc_19E66B6:           var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E66BD:           LateIdCallSt
  loc_19E66CB:           var_C8 = CVar(CLng(1)) 'Long
  loc_19E66D0:           var_E8 = 1
  loc_19E66DE:           var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E66E5:           LateIdCallSt
  loc_19E66F3:           var_C8 = CVar(CLng(2)) 'Long
  loc_19E66F8:           var_E8 = 1
  loc_19E6701:           var_108 = "No"
  loc_19E670A:           LateIdCallSt
  loc_19E6714:           Set var_16C = Nothing 
  loc_19E672E:           Set var_AC = 0(&H9C4)
  loc_19E6734:           LateIdCallSt
  loc_19E6755:           Set var_AC = 1(&H5DC)
  loc_19E675B:           LateIdCallSt
  loc_19E6766:           var_C8 = 0
  loc_19E6785:           var_E8 = 1
  loc_19E6792:           Set var_12C = CLng(Check1.DispID_39)(var_E8)
  loc_19E67AC:           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(Check1.DispID_39)) + &H64))) 'Single
  loc_19E67BB:           var_16C(var_108).Width = var_108
  loc_19E67DA:           var_128 = var_C8(var_E8).Width
  loc_19E67E9:           Call 0.Method_Me0 (var_144, var_128, var_16C, var_128, var_E8)
  loc_19E67FB:           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E680A:           var_C8(var_C8).Left = var_16C
  loc_19E682B:           var_128(CVar(CDbl(&H4B))).Top = var_E8
  loc_19E6836:           var_C8 = CVar(CLng(3)) 'Long
  loc_19E684E:           Set var_AC = 0("For Site")
  loc_19E6854:           LateIdCallSt
  loc_19E6874:           Set var_AC = CVar(CLng(3))(&H10E)
  loc_19E687A:           LateIdCallSt
  loc_19E6888:           var_C8 = CVar(CLng(3)) 'Long
  loc_19E68A0:           Set var_AC = 1(vbNullString)
  loc_19E68A6:           LateIdCallSt
  loc_19E68BB:           Set global_80 = New 
  loc_19E68CD:           Me.Recordset15.CursorLocation = 3
  loc_19E68F5:           Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F921DC), 0
  loc_19E6903:           CVarUnk
  loc_19E6908:           VerifyVarObj
  loc_19E690E:           Set var_AC = Me.DGSite
  loc_19E6914:           LateIdStAd
  loc_19E6929:           global_142 = CInt(0)
  loc_19E693C:           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6951:           global_140 = CInt(3)
  loc_19E695C:           global_144 = 0
  loc_19E6963:         Else
  loc_19E696B:           If Not (var_B0 = "CashBook") Then
  loc_19E6976:             If Not (var_B0 = "BankBook") Then
  loc_19E6981:               If (var_B0 = "RozNamcha") Then
  loc_19E6984:               End If
  loc_19E6984:             End If
  loc_19E6987:             var_88 = vbNullString
  loc_19E6990:             var_170 = GRepFormName
  loc_19E699B:             If Not (var_170 = "CashBook") Then
  loc_19E69A6:               If (var_170 = "RozNamcha") Then
  loc_19E69A9:               End If
  loc_19E69B0:               var_88 = " WHERE SubGroup.Nature='Cash' AND A.Nature='Cash'" & var_94
  loc_19E69B6:             Else
  loc_19E69BE:               If (var_170 = "BankBook") Then
  loc_19E69C8:                 var_88 = " WHERE SubGroup.Nature='Bank' AND A.Nature='Bank'" & var_94
  loc_19E69CB:               End If
  loc_19E69CB:             End If
  loc_19E69CF:             Set var_174 = global_140(global_144)
  loc_19E69D5:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E69DA:             var_E8 = 0
  loc_19E69E3:             var_108 = "From Date        "
  loc_19E69EC:             LateIdCallSt
  loc_19E69F7:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E69FC:             var_E8 = &H10E
  loc_19E6A08:             LateIdCallSt
  loc_19E6A13:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E6A18:             var_E8 = 0
  loc_19E6A21:             var_108 = "UpTo Date        "
  loc_19E6A2A:             LateIdCallSt
  loc_19E6A35:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E6A3A:             var_E8 = &H10E
  loc_19E6A46:             LateIdCallSt
  loc_19E6A51:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E6A56:             var_E8 = 0
  loc_19E6A5F:             var_108 = "As Per Detail    "
  loc_19E6A68:             LateIdCallSt
  loc_19E6A73:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E6A78:             var_E8 = &H10E
  loc_19E6A84:             LateIdCallSt
  loc_19E6A8F:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E6A94:             var_E8 = 0
  loc_19E6A9D:             var_108 = "Starting Page No."
  loc_19E6AA6:             LateIdCallSt
  loc_19E6AB1:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E6AB6:             var_E8 = &H10E
  loc_19E6AC2:             LateIdCallSt
  loc_19E6ACD:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E6AD2:             var_E8 = 0
  loc_19E6ADB:             var_108 = "For Account      "
  loc_19E6AE4:             LateIdCallSt
  loc_19E6AEF:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E6AF4:             var_E8 = &H10E
  loc_19E6B00:             LateIdCallSt
  loc_19E6B0B:             var_C8 = CVar(CLng(0)) 'Long
  loc_19E6B10:             var_E8 = 1
  loc_19E6B1E:             var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E6B25:             LateIdCallSt
  loc_19E6B33:             var_C8 = CVar(CLng(1)) 'Long
  loc_19E6B38:             var_E8 = 1
  loc_19E6B46:             var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E6B4D:             LateIdCallSt
  loc_19E6B5B:             var_C8 = CVar(CLng(2)) 'Long
  loc_19E6B60:             var_E8 = 1
  loc_19E6B69:             var_108 = "No"
  loc_19E6B72:             LateIdCallSt
  loc_19E6B7D:             var_C8 = CVar(CLng(3)) 'Long
  loc_19E6B82:             var_E8 = 1
  loc_19E6B8B:             var_108 = "1"
  loc_19E6B94:             LateIdCallSt
  loc_19E6B9F:             var_C8 = CVar(CLng(4)) 'Long
  loc_19E6BA4:             var_E8 = 1
  loc_19E6BAD:             var_108 = vbNullString
  loc_19E6BB6:             LateIdCallSt
  loc_19E6BC0:             Set var_174 = Nothing 
  loc_19E6BCB:             global_142 = CInt(0)
  loc_19E6BDE:             Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6C18:             Set var_AC = 0(&H7D0)
  loc_19E6C1E:             LateIdCallSt
  loc_19E6C3F:             Set var_AC = 1(&HDAC)
  loc_19E6C45:             LateIdCallSt
  loc_19E6C50:             var_C8 = 0
  loc_19E6C6F:             var_E8 = 1
  loc_19E6C7C:             Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E6C96:             var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E6CA5:             0(var_108).Width = CInt(4)
  loc_19E6CC4:             var_128 = var_174(DGSite.DispID_A).Width
  loc_19E6CD3:             Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E6CE5:             var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E6CF4:             var_174(var_C8).Left = var_108
  loc_19E6D06:             var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E6D0F:             Set var_AC = var_E8(var_C8)
  loc_19E6D15:             var_AC.Top = var_C8
  loc_19E6D39:             Me.var_AC.CursorLocation = 3
  loc_19E6D5C:             var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_19E6D6D:             Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_19E6D81:             CVarUnk
  loc_19E6D86:             VerifyVarObj
  loc_19E6D8C:             Set var_AC = 1(New)
  loc_19E6D92:             LateIdStAd
  loc_19E6DA3:           Else
  loc_19E6DAB:             If Not (var_B0 = "JournalBook") Then
  loc_19E6DB6:               If Not (var_B0 = "DailySumm") Then
  loc_19E6DC1:                 If Not (var_B0 = "Clg") Then
  loc_19E6DCC:                   If (var_B0 = "ClgNot") Then
  loc_19E6DCF:                   End If
  loc_19E6DCF:                 End If
  loc_19E6DCF:               End If
  loc_19E6DD3:               Set var_178 = -1(var_AC)
  loc_19E6DD9:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E6DDE:               var_E8 = 0
  loc_19E6DE7:               var_108 = "From Date   "
  loc_19E6DF0:               LateIdCallSt
  loc_19E6DFB:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E6E00:               var_E8 = &H10E
  loc_19E6E0C:               LateIdCallSt
  loc_19E6E17:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E6E1C:               var_E8 = 0
  loc_19E6E25:               var_108 = "UpTo Date   "
  loc_19E6E2E:               LateIdCallSt
  loc_19E6E39:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E6E3E:               var_E8 = &H10E
  loc_19E6E4A:               LateIdCallSt
  loc_19E6E55:               var_C8 = CVar(CLng(0)) 'Long
  loc_19E6E5A:               var_E8 = 1
  loc_19E6E68:               var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E6E6F:               LateIdCallSt
  loc_19E6E7D:               var_C8 = CVar(CLng(1)) 'Long
  loc_19E6E82:               var_E8 = 1
  loc_19E6E90:               var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E6E97:               LateIdCallSt
  loc_19E6EA5:               var_C8 = CVar(CLng(2)) 'Long
  loc_19E6EAA:               var_E8 = 1
  loc_19E6EB3:               var_108 = vbNullString
  loc_19E6EBC:               LateIdCallSt
  loc_19E6EC6:               Set var_178 = Nothing 
  loc_19E6ED1:               global_142 = CInt(0)
  loc_19E6EE4:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E6F1E:               Set var_AC = 0(&H6A4)
  loc_19E6F24:               LateIdCallSt
  loc_19E6F45:               Set var_AC = 1(&H9C4)
  loc_19E6F4B:               LateIdCallSt
  loc_19E6F56:               var_C8 = 0
  loc_19E6F75:               var_E8 = 1
  loc_19E6F82:               Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E6F9C:               var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E6FAB:               0(var_108).Width = CInt(2)
  loc_19E6FCA:               var_128 = var_178(DGSite.DispID_A).Width
  loc_19E6FD9:               Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E6FEB:               var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E6FFA:               var_178(var_C8).Left = var_128
  loc_19E700C:               var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E7015:               Set var_AC = var_E8(var_C8)
  loc_19E701B:               var_AC.Top = var_C8
  loc_19E7029:               var_17C = GRepFormName
  loc_19E7034:               If (var_17C = "JournalBook") Then
  loc_19E7053:                 Me.var_AC.CursorLocation = 3
  loc_19E705B:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E7073:                 Set var_AC = 0("Voucher Type")
  loc_19E7079:                 LateIdCallSt
  loc_19E7099:                 Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E709F:                 LateIdCallSt
  loc_19E70AD:                 var_C8 = CVar(CLng(3)) 'Long
  loc_19E70C5:                 Set var_AC = 0("Day Total")
  loc_19E70CB:                 LateIdCallSt
  loc_19E70EB:                 Set var_AC = CVar(CLng(3))(&H10E)
  loc_19E70F1:                 LateIdCallSt
  loc_19E70FF:                 var_C8 = CVar(CLng(3)) 'Long
  loc_19E7117:                 Set var_AC = 1("No")
  loc_19E711D:                 LateIdCallSt
  loc_19E712F:                 global_142 = CInt(0)
  loc_19E7142:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E7157:                 global_140 = CInt(3)
  loc_19E7162:                 global_144 = 0
  loc_19E717D:                 var_C8 = "Select DISTINCT V_TYPE AS Code,RTRIM(LTRIM(Description))+' Book' AS Name from Voucher_type WHERE Category='FA' AND V_TYPE<>'F_AO' order by RTRIM(LTRIM(Description))+' Book'"
  loc_19E7189:                 Me.Open 0, CVar(MemVar_1F921DC), 0
  loc_19E7197:                 CVarUnk
  loc_19E719C:                 VerifyVarObj
  loc_19E71A2:                 Set var_AC = 1(New)
  loc_19E71A8:                 LateIdStAd
  loc_19E71B9:                 var_C8 = CVar(CLng(4)) 'Long
  loc_19E71D1:                 Set var_AC = 0("For Site")
  loc_19E71D7:                 LateIdCallSt
  loc_19E71F7:                 Set var_AC = CVar(CLng(4))(&H10E)
  loc_19E71FD:                 LateIdCallSt
  loc_19E720B:                 var_C8 = CVar(CLng(4)) 'Long
  loc_19E7223:                 Set var_AC = 1(vbNullString)
  loc_19E7229:                 LateIdCallSt
  loc_19E723E:                 Set global_80 = New 
  loc_19E7250:                 Me.Recordset15.CursorLocation = 3
  loc_19E7278:                 Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F921DC), 0
  loc_19E7286:                 CVarUnk
  loc_19E728B:                 VerifyVarObj
  loc_19E7291:                 Set var_AC = Me.DGSite
  loc_19E7297:                 LateIdStAd
  loc_19E72AC:                 global_142 = CInt(0)
  loc_19E72BF:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E72D4:                 global_140 = CInt(4)
  loc_19E72DF:                 global_144 = 0
  loc_19E72E6:               Else
  loc_19E72EE:                 If (var_17C = "DailySumm") Then
  loc_19E730D:                   Me.Recordset15.CursorLocation = 3
  loc_19E7315:                   var_C8 = CVar(CLng(2)) 'Long
  loc_19E732D:                   Set var_AC = 0("For Account")
  loc_19E7333:                   LateIdCallSt
  loc_19E7353:                   Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E7359:                   LateIdCallSt
  loc_19E7382:                   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_90
  loc_19E7393:                   Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_19E73A7:                   CVarUnk
  loc_19E73AC:                   VerifyVarObj
  loc_19E73B2:                   Set var_AC = 1(New)
  loc_19E73B8:                   LateIdStAd
  loc_19E73C9:                 Else
  loc_19E73D1:                   If Not (var_17C = "Clg") Then
  loc_19E73DC:                     If (var_17C = "ClgNot") Then
  loc_19E73DF:                     End If
  loc_19E73FB:                     Me.CursorLocation = 3
  loc_19E7403:                     var_C8 = CVar(CLng(2)) 'Long
  loc_19E741B:                     Set var_AC = 0("For Account")
  loc_19E7421:                     LateIdCallSt
  loc_19E7441:                     Set var_AC = CVar(CLng(2))(&H10E)
  loc_19E7447:                     LateIdCallSt
  loc_19E7470:                     var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE Where SubGroup.nature='Bank' AND A.nature='Bank'  " & var_94
  loc_19E7481:                     Me.Open CVar(CStr(Check1.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_19E7495:                     CVarUnk
  loc_19E749A:                     VerifyVarObj
  loc_19E74A0:                     Set var_AC = 1(New)
  loc_19E74A6:                     LateIdStAd
  loc_19E74B4:                   End If
  loc_19E74B4:                 End If
  loc_19E74B4:               End If
  loc_19E74B7:             Else
  loc_19E74BF:               If (var_B0 = "BankReg") Then
  loc_19E74C6:                 Set var_180 = -1(var_AC)
  loc_19E74CC:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E74D1:                 var_E8 = 0
  loc_19E74DA:                 var_108 = "From Date"
  loc_19E74E3:                 LateIdCallSt
  loc_19E74EE:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E74F3:                 var_E8 = &H10E
  loc_19E74FF:                 LateIdCallSt
  loc_19E750A:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E750F:                 var_E8 = 0
  loc_19E7518:                 var_108 = "To Date  "
  loc_19E7521:                 LateIdCallSt
  loc_19E752C:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E7531:                 var_E8 = &H10E
  loc_19E753D:                 LateIdCallSt
  loc_19E7548:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E754D:                 var_E8 = 0
  loc_19E7556:                 var_108 = "For Dr/Cr"
  loc_19E755F:                 LateIdCallSt
  loc_19E756A:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E756F:                 var_E8 = &H10E
  loc_19E757B:                 LateIdCallSt
  loc_19E7586:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19E758B:                 var_E8 = 1
  loc_19E7599:                 var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E75A0:                 LateIdCallSt
  loc_19E75AE:                 var_C8 = CVar(CLng(1)) 'Long
  loc_19E75B3:                 var_E8 = 1
  loc_19E75C1:                 var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E75C8:                 LateIdCallSt
  loc_19E75D6:                 var_C8 = CVar(CLng(2)) 'Long
  loc_19E75DB:                 var_E8 = 1
  loc_19E75E4:                 var_108 = "All"
  loc_19E75ED:                 LateIdCallSt
  loc_19E75F7:                 Set var_180 = Nothing 
  loc_19E7602:                 global_142 = CInt(0)
  loc_19E7615:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E764F:                 Set var_AC = 0(&H4B0)
  loc_19E7655:                 LateIdCallSt
  loc_19E7676:                 Set var_AC = 1(&H5DC)
  loc_19E767C:                 LateIdCallSt
  loc_19E7687:                 var_C8 = 0
  loc_19E76A6:                 var_E8 = 1
  loc_19E76B3:                 Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E76CD:                 var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E76DC:                 1(var_108).Width = CInt(2)
  loc_19E76FB:                 var_128 = var_180(DGSite.DispID_A).Width
  loc_19E770A:                 Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_19E771C:                 var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E772B:                 var_180(var_C8).Left = var_128
  loc_19E773D:                 var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E774C:                 var_E8(var_C8).Top = var_C8
  loc_19E776B:                 Call Proc_245_63_11E9F30(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where nature='Bank' " & var_94 & " order by name ")
  loc_19E777A:               Else
  loc_19E7782:                 If Not (var_B0 = "NonTrans") Then
  loc_19E778D:                   If (var_B0 = "CONTROLLED") Then
  loc_19E7790:                   End If
  loc_19E7794:                   Set var_184 = ()
  loc_19E779A:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E779F:                   var_E8 = 0
  loc_19E77A8:                   var_108 = "From Date"
  loc_19E77B1:                   LateIdCallSt
  loc_19E77BC:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E77C1:                   var_E8 = &H10E
  loc_19E77CD:                   LateIdCallSt
  loc_19E77D8:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E77DD:                   var_E8 = 0
  loc_19E77E6:                   var_108 = "To Date  "
  loc_19E77EF:                   LateIdCallSt
  loc_19E77FA:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E77FF:                   var_E8 = &H10E
  loc_19E780B:                   LateIdCallSt
  loc_19E7816:                   var_C8 = CVar(CLng(0)) 'Long
  loc_19E781B:                   var_E8 = 1
  loc_19E7829:                   var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19E7830:                   LateIdCallSt
  loc_19E783E:                   var_C8 = CVar(CLng(1)) 'Long
  loc_19E7843:                   var_E8 = 1
  loc_19E7851:                   var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E7858:                   LateIdCallSt
  loc_19E7865:                   Set var_184 = Nothing 
  loc_19E7870:                   global_142 = CInt(0)
  loc_19E7883:                   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E78BD:                   Set var_AC = 0(&H4B0)
  loc_19E78C3:                   LateIdCallSt
  loc_19E78E4:                   Set var_AC = 1(&H5DC)
  loc_19E78EA:                   LateIdCallSt
  loc_19E78F5:                   var_C8 = 0
  loc_19E7914:                   var_E8 = 1
  loc_19E7921:                   Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E793B:                   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E794A:                   1(var_108).Width = CInt(1)
  loc_19E7969:                   var_128 = var_184(DGSite.DispID_A).Width
  loc_19E7978:                   Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19E798A:                   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E7999:                   var_184(var_C8).Left = var_128
  loc_19E79AB:                   var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19E79BA:                   var_E8(var_C8).Top = var_C8
  loc_19E79C9:                   var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup WHERE AliasYN<> 'Y' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_19E79D9:                   Call Proc_245_63_11E9F30(1, var_A8 & "' OR LOGSITE_CODE='HO') order by GroupName")
  loc_19E79E8:                 Else
  loc_19E79F0:                   If (var_B0 = "RefReport") Then
  loc_19E79F7:                     Set var_188 = ()
  loc_19E79FD:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E7A02:                     var_E8 = 0
  loc_19E7A0B:                     var_108 = "Pending Only"
  loc_19E7A14:                     LateIdCallSt
  loc_19E7A1F:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E7A24:                     var_E8 = &H10E
  loc_19E7A30:                     LateIdCallSt
  loc_19E7A3B:                     var_C8 = CVar(CLng(3)) 'Long
  loc_19E7A40:                     var_E8 = 1
  loc_19E7A49:                     var_108 = "Yes"
  loc_19E7A52:                     LateIdCallSt
  loc_19E7A5C:                     Set var_188 = Nothing 
  loc_19E7A67:                     global_142 = CInt(3)
  loc_19E7A7A:                     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E7A8F:                     global_140 = CInt(3)
  loc_19E7A9A:                     global_144 = 1
  loc_19E7AB5:                     Call Proc_245_63_11E9F30(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP  " & var_90 & " Order by Name")
  loc_19E7AC4:                   Else
  loc_19E7ACC:                     If Not (var_B0 = "AgingDr") Then
  loc_19E7AD7:                       If Not (var_B0 = "AgingCr") Then
  loc_19E7AE2:                         If Not (var_B0 = "AgingRepDr") Then
  loc_19E7AED:                           If (var_B0 = "AgingRepCr") Then
  loc_19E7AF0:                           End If
  loc_19E7AF0:                         End If
  loc_19E7AF0:                       End If
  loc_19E7AF4:                       Set var_18C = global_140(global_144)
  loc_19E7AFA:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E7AFF:                       var_E8 = 0
  loc_19E7B08:                       var_108 = "UpTo Date"
  loc_19E7B11:                       LateIdCallSt
  loc_19E7B1C:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E7B21:                       var_E8 = &H10E
  loc_19E7B2D:                       LateIdCallSt
  loc_19E7B38:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19E7B3D:                       var_E8 = 1
  loc_19E7B4B:                       var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E7B52:                       LateIdCallSt
  loc_19E7B5F:                       Set var_18C = Nothing 
  loc_19E7B6A:                       global_142 = CInt(0)
  loc_19E7B7D:                       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E7BB7:                       Set var_AC = 0(&H4B0)
  loc_19E7BBD:                       LateIdCallSt
  loc_19E7BDE:                       Set var_AC = 1(&H5DC)
  loc_19E7BE4:                       LateIdCallSt
  loc_19E7BEF:                       var_C8 = 0
  loc_19E7C0E:                       var_E8 = 1
  loc_19E7C1B:                       Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19E7C35:                       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_19E7C44:                       1(var_108).Width = CInt(0)
  loc_19E7C63:                       var_128 = var_18C(DGSite.DispID_A).Width
  loc_19E7C72:                       Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19E7C84:                       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19E7C8D:                       Set var_12C = var_18C(var_C8)
  loc_19E7C93:                       var_12C.Left = var_E8
  loc_19E7CB4:                       CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_18C
  loc_19E7CD3:                       If ((GRepFormName = "AgingDr") Or (GRepFormName = "AgingRepDr")) Then
  loc_19E7CDD:                         var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND Nature='Customer' " & var_A4
  loc_19E7CED:                         Call Proc_245_63_11E9F30(1, var_A8 & " order by GroupName")
  loc_19E7CFC:                       Else
  loc_19E7D13:                         If ((GRepFormName = "AgingCr") Or (GRepFormName = "AgingRepCr")) Then
  loc_19E7D1D:                           var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND  Nature='Supplier' " & var_A4
  loc_19E7D2D:                           Call Proc_245_63_11E9F30(1, var_A8 & " order by GroupName")
  loc_19E7D3C:                         Else
  loc_19E7D53:                           Call Proc_245_63_11E9F30(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order By GroupName")
  loc_19E7D5F:                         End If
  loc_19E7D5F:                       End If
  loc_19E7D62:                     Else
  loc_19E7D6A:                       If (var_B0 = "DUELIST") Then
  loc_19E7D71:                         Set var_190 = ()
  loc_19E7D77:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E7D7C:                         var_E8 = 0
  loc_19E7D85:                         var_108 = "UpTo Date"
  loc_19E7D8E:                         LateIdCallSt
  loc_19E7D99:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E7D9E:                         var_E8 = &H10E
  loc_19E7DAA:                         LateIdCallSt
  loc_19E7DB5:                         var_C8 = CVar(CLng(0)) 'Long
  loc_19E7DBA:                         var_E8 = 1
  loc_19E7DC8:                         var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19E7DCF:                         LateIdCallSt
  loc_19E7DDD:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E7DE2:                         var_E8 = 0
  loc_19E7DEB:                         var_108 = "All/Pending"
  loc_19E7DF4:                         LateIdCallSt
  loc_19E7DFF:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E7E04:                         var_E8 = &H10E
  loc_19E7E10:                         LateIdCallSt
  loc_19E7E1B:                         var_C8 = CVar(CLng(2)) 'Long
  loc_19E7E20:                         var_E8 = 1
  loc_19E7E29:                         var_108 = "Pending"
  loc_19E7E32:                         LateIdCallSt
  loc_19E7E3D:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E7E42:                         var_E8 = 0
  loc_19E7E4B:                         var_108 = "More Than Days"
  loc_19E7E54:                         LateIdCallSt
  loc_19E7E5F:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E7E64:                         var_E8 = &H10E
  loc_19E7E70:                         LateIdCallSt
  loc_19E7E7B:                         var_C8 = CVar(CLng(3)) 'Long
  loc_19E7E80:                         var_E8 = 1
  loc_19E7E89:                         var_108 = "0"
  loc_19E7E92:                         LateIdCallSt
  loc_19E7E9C:                         Set var_190 = Nothing 
  loc_19E7EA7:                         global_142 = CInt(0)
  loc_19E7EBA:                         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E7ECF:                         global_140 = CInt(2)
  loc_19E7EEF:                         var_A8 = "Select '' as O,SubGroup.Name as PartyName,SubGroup.Subcode as Code,RTrim(IsNull(Add1,''))+','+RTrim(IsNull(Add2,''))+','+RTrim(IsNull(CityName,'')) AS NameWithADDR From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where SubGroup.Nature='Customer' " & var_94
  loc_19E7EFF:                         Call Proc_245_63_11E9F30(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order by SubGroup.Name")
  loc_19E7F26:                         Set var_AC = var_12C(1)
  loc_19E7F2C:                         Call 0.Method_Proc_245_66_19E80A40 (0, 3, CInt(3), 1, CInt(3), DGSite.DispID_A)
  loc_19E7F34:                         LateIdCallSt
  loc_19E7F46:                       Else
  loc_19E7F4E:                         If Not (var_B0 = "BudgetVariance") Then
  loc_19E7F59:                           If (var_B0 = "Budget") Then
  loc_19E7F5C:                           End If
  loc_19E7F60:                           Set var_194 = var_190(var_12C)
  loc_19E7F66:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E7F6B:                           var_E8 = 0
  loc_19E7F74:                           var_108 = "Budget Period"
  loc_19E7F7D:                           LateIdCallSt
  loc_19E7F88:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E7F8D:                           var_E8 = &H10E
  loc_19E7F99:                           LateIdCallSt
  loc_19E7FA4:                           var_C8 = CVar(CLng(0)) 'Long
  loc_19E7FA9:                           var_E8 = 1
  loc_19E7FB2:                           var_108 = vbNullString
  loc_19E7FBB:                           LateIdCallSt
  loc_19E7FC5:                           Set var_194 = Nothing 
  loc_19E7FD0:                           global_142 = CInt(0)
  loc_19E7FE3:                           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19E7FF8:                           global_140 = CInt(0)
  loc_19E8003:                           global_144 = 1
  loc_19E8023:                           Me.Recordset15.CursorLocation = 3
  loc_19E803F:                           var_C8 = "Select Distinct CStr(FromDate) + '-' + CStr(ToDate) As Code,CStr(FromDate) + '-' + CStr(ToDate) as NAME From Budget ORDER BY CStr(FromDate) + '-' + CStr(ToDate)"
  loc_19E804B:                           Me.Open 1, CVar(MemVar_1F921DC), 0
  loc_19E8059:                           CVarUnk
  loc_19E805E:                           VerifyVarObj
  loc_19E8064:                           Set var_AC = 1(New)
  loc_19E806A:                           LateIdStAd
  loc_19E8078:                         End If
  loc_19E8078:                       End If
  loc_19E8078:                     End If
  loc_19E8078:                   End If
  loc_19E8078:                 End If
  loc_19E8078:               End If
  loc_19E8078:             End If
  loc_19E8078:           End If
  loc_19E8078:         End If
  loc_19E8078:       End If
  loc_19E8078:     End If
  loc_19E8078:   End If
  loc_19E8078: End If
  loc_19E8078: Exit Sub
  loc_19E8079: ' Referenced from: 19E4EA0
  loc_19E807F: Call 0.Method_arg_50 ("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4, var_AC, -1, global_144, global_140, DGSite.DispID_A, var_194)
  loc_19E8094: Proc_183_57_104AA84("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4, "Ini_Grid", var_108, var_E8)
  loc_19E80A0: Exit Sub
End Sub

Public Sub Proc_245_67_153E3E0
  'Data Table: 58C0C8
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As String
  Dim var_EC As Variant
  Dim unk_58C10D As Connection15
  Dim var_90 As Recordset15
  Dim var_FC As Variant
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_16C As String
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_9C As Recordset15
  Dim var_88 As Recordset15
  Dim var_C2 As Integer
  loc_153D434: On Error Goto loc_153E3AE
  loc_153D43D: global_84 = vbNullString
  loc_153D444: var_8C = vbNullString
  loc_153D453: Set var_BC = Me.Check1
  loc_153D459: Call 0.Method_Proc_245_67_153E3E00 (1, var_C0)
  loc_153D477: If (CLng(var_C0.Value) = 0) Then
  loc_153D495:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_153D4A0:   global_84 = var_DC
  loc_153D4B0:   If (global_130 = 0) Then
  loc_153D4B3:     Exit Sub
  loc_153D4B4:   End If
  loc_153D4B4: End If
  loc_153D4BF: If (global_84 <> vbNullString) Then
  loc_153D4D3:   var_8C = " Where SUBCODE IN (" & global_84 & ")"
  loc_153D4D9: End If
  loc_153D4E4: If (global_84 <> vbNullString) Then
  loc_153D4F1:   var_DC = " Where Ledger.SUBCODE IN (" & global_84
  loc_153D4F8:   var_A0 = var_DC & ")"
  loc_153D4FE: End If
  loc_153D509: Set var_BC = Me.TEXT
  loc_153D50F: Call 0.Method_Proc_245_67_153E3E00 (CInt(&HC), var_C0)
  loc_153D517: var_EC = CVar(var_C0) 'Address
  loc_153D538: If CBool(Trim(var_EC) <> vbNullString) Then
  loc_153D54C:   Set var_BC = Me.TEXT
  loc_153D552:   Call 0.Method_Proc_245_67_153E3E00 (CInt(&HC), var_C0, var_DC)
  loc_153D55A:   " And LEDGER.Site_Code='" = var_C0.Tag
  loc_153D56A:   var_B8 = var_DC & var_DC & "'"
  loc_153D57E: Else
  loc_153D58C:   var_B8 = " And LEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_153D592: End If
  loc_153D5A2: Set var_BC = New
  loc_153D5B1: Call 0.Method_arg_1A0 (var_BC)
  loc_153D5BC: Set var_88 = var_BC
  loc_153D5C5: Set var_88 = var_C0
  loc_153D5F3: Me.Connection15.Execute "SELECT SUBCODE,NAME FROM SUBGROUP  " & var_8C & " ORDER BY SUBCODE", var_EC, -1
  loc_153D5FE: Set var_90 = var_BC
  loc_153D622: var_DC = "SELECT Ledger.*,LEDGERREF.AGREFTYPE FROM Ledger LEFT JOIN ledgerRef ON (Ledger.V_SNo=ledgerRef.V_SNo) AND (Ledger.DocId = ledgerRef.DocId) " & var_A0
  loc_153D640: unk_58C10D.Execute var_DC & " " & var_B8 & " ORDER BY Ledger.SUBCODE,Ledger.V_DATE,Ledger.DOCId,Ledger.V_SNO", var_EC, -1
  loc_153D64B: Set var_94 = var_BC
  loc_153D673: var_DC = "SELECT LedgerRef.*  FROM LedgerRef " & var_8C
  loc_153D683: unk_58C10D.Execute var_DC & " ORDER BY SUBCode,V_DATE,DocId,V_SNO", var_EC, -1
  loc_153D68E: Set var_98 = var_BC
  loc_153D6B2: If (var_90.RecordCount <= 0) Then
  loc_153D6BB:   Call 0.Method_arg_50 (var_DC, var_BC, var_BC)
  loc_153D6DC:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153D6F1:   global_130 = 0
  loc_153D6F4:   Exit Sub
  loc_153D6F5: End If
  loc_153D709: If (var_94.RecordCount <= 0) Then
  loc_153D712:   Call 0.Method_arg_50 (var_DC, global_130)
  loc_153D733:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153D748:   global_130 = 0
  loc_153D74B:   Exit Sub
  loc_153D74C:   ' Referenced from: 153E293
  loc_153D74C: End If
  loc_153D75B: If Not(var_90.EOF) Then
  loc_153D772:   If (var_98.RecordCount > 0) Then
  loc_153D778:     var_98.MoveFirst
  loc_153D7CE:     var_98.Find CStr("SubCode='" & var_90.Fields.Item("subcode").Value & "'"), 0, 1
  loc_153D7F7:     If (var_98.EOF = 0) Then
  loc_153D7FA:       ' Referenced from: 153DE8B
  loc_153D7FC:       If &HFF Then
  loc_153D814:         Set var_BC = CVar(CLng(3))(1)
  loc_153D84B:         var_170 = var_98.Fields.Item("AgRefType")
  loc_153D880:         If CBool((CStr(TEXT.DispID_41) = "Yes") And (var_170.Value <> "On Account")) Then
  loc_153D8E1:           var_16C = "SELECT AgRefNo,SUM(Cr)-SUM(Dr) AS BalanceAmt From ledgerRef "
  loc_153D8EF:           var_14C = (CVar(var_8C) + IIf((var_8C = vbNullString), " Where ", " AND "))
  loc_153D8FC:           var_1B0 = "AgRefType" & (CStr(TEXT.DispID_41) = "Yes") And (var_170.Value <> "On Account") & " AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND AGREFNO='" 
  loc_153D91A:           unk_58C10D.Execute CStr(var_1B0 & var_98.Fields.Item("AgRefNo").Value & "' GROUP BY SubCode,AgRefNo"), var_210, -1
  loc_153D925:           Set var_9C = var_170
  loc_153D961:           If (var_9C.RecordCount > 0) Then
  loc_153D96A:             var_D4 = "BalanceAmt"
  loc_153D98E:             var_12C = 0
  loc_153D9A0:             If (var_9C.Fields.Item(var_D4).Value = var_12C) Then
  loc_153D9A3:               GoTo loc_153DDFE
  loc_153D9A6:             End If
  loc_153D9A6:           End If
  loc_153D9A6:         End If
  loc_153D9B1:         var_88.AddNew var_D4, var_12C
  loc_153D9D5:         var_EC = CVar(var_98.Fields.Item("DocID")) 'Address
  loc_153D9E3:         var_88.Collect = "DocID"
  loc_153DA0D:         var_EC = CVar(var_98.Fields.Item("V_SNo")) 'Address
  loc_153DA1B:         var_88.Collect = "V_SNo"
  loc_153DA56:         var_10C = Mid(CVar(var_98.Fields.Item("DocID")), 4, 5)
  loc_153DA68:         var_88.Collect = "V_Type"
  loc_153DAA4:         var_FC = Right(CVar(var_98.Fields.Item("DocID")), 8)
  loc_153DAB6:         var_88.Collect = "V_NO"
  loc_153DAE4:         var_EC = CVar(var_98.Fields.Item("V_DATE")) 'Address
  loc_153DAF2:         var_88.Collect = "V_DATE"
  loc_153DB1C:         var_EC = CVar(var_98.Fields.Item("subcode")) 'Address
  loc_153DB2A:         var_88.Collect = "subcode"
  loc_153DB54:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153DB62:         var_88.Collect = "Name"
  loc_153DB8C:         var_EC = CVar(var_98.Fields.Item("cr")) 'Address
  loc_153DB9A:         var_88.Collect = "cr"
  loc_153DBC4:         var_EC = CVar(var_98.Fields.Item("dr")) 'Address
  loc_153DBD2:         var_88.Collect = "dr"
  loc_153DC07:         var_220 = var_98.Fields.Item("AgRefType").Value 'Variant
  loc_153DC1D:         If Not (var_220 = "Advance") Then
  loc_153DC2B:           If (var_220 = "New Ref") Then
  loc_153DC2E:           End If
  loc_153DC4D:           var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153DC5B:           var_88.Collect = "AgRefType"
  loc_153DC8C:           var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153DC9E:           var_88.Collect = "AgRefNo"
  loc_153DCAD:           var_12C = "1"
  loc_153DCBC:           var_88.Collect = "RefSort"
  loc_153DCC1:           var_12C = "1"
  loc_153DCD0:           var_88.Collect = "GRPSort"
  loc_153DCD8:         Else
  loc_153DCE3:           If (var_220 = "Ag.Ref.") Then
  loc_153DD05:             var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153DD13:             var_88.Collect = "AgRefType"
  loc_153DD44:             var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153DD56:             var_88.Collect = "AgRefNo"
  loc_153DD65:             var_12C = "1"
  loc_153DD74:             var_88.Collect = "GRPSort"
  loc_153DD79:             var_12C = "2"
  loc_153DD88:             var_88.Collect = "RefSort"
  loc_153DD90:           Else
  loc_153DD9B:             If (var_220 = "On Account") Then
  loc_153DD9E:               var_12C = "On Account"
  loc_153DDAD:               var_88.Collect = "AgRefNo"
  loc_153DDB2:               var_12C = vbNullString
  loc_153DDC1:               var_88.Collect = "AgRefType"
  loc_153DDC6:               var_12C = "5"
  loc_153DDD5:               var_88.Collect = "GRPSort"
  loc_153DDDA:               var_12C = "1"
  loc_153DDE0:               var_D4 = "RefSort"
  loc_153DDE9:               var_88.Collect = var_D4
  loc_153DDEE:             End If
  loc_153DDEE:           End If
  loc_153DDEE:         End If
  loc_153DDF9:         var_88.Update var_D4, var_12C
  loc_153DDFE:         ' Referenced from: 153D9A3
  loc_153DE01:         var_98.MoveNext
  loc_153DE17:         If (var_98.EOF = &HFF) Then
  loc_153DE1A:           GoTo loc_153DE8E
  loc_153DE1D:         End If
  loc_153DE85:         If CBool(var_90.Fields.Item("subcode").Value <> var_98.Fields.Item("subcode").Value) Then
  loc_153DE88:           GoTo loc_153DE8E
  loc_153DE8B:         End If
  loc_153DE8B:         GoTo loc_153D7FA
  loc_153DE8E:         ' Referenced from: 153DE88
  loc_153DE8E:         ' Referenced from: 153DE1A
  loc_153DE8E:       End If
  loc_153DE8E:     End If
  loc_153DE8E:   End If
  loc_153DE91:   var_94.MoveFirst
  loc_153DEDC:   var_10C = "SubCode='" & var_90.Fields.Item("subcode").Value & "'" 
  loc_153DEE0:   var_DC = CStr(var_10C)
  loc_153DEE7:   var_94.Find var_DC, 0, 1
  loc_153DF10:   If (var_94.EOF = 0) Then
  loc_153DF13:     ' Referenced from: 153E288
  loc_153DF15:     If &HFF Then
  loc_153DF1B:       var_D4 = "AgRefType"
  loc_153DF4A:       var_12C = "AgRefType"
  loc_153DF6E:       var_13C = vbNullString
  loc_153DF78:       var_14C = IsNull(CVar(var_94.Fields.Item(var_D4))) Or (var_94.Fields.Item(var_12C).Value = var_13C)
  loc_153DF90:       If CBool(var_14C) Then
  loc_153DF9E:         var_88.AddNew var_D4, var_12C
  loc_153DFC2:         var_EC = CVar(var_94.Fields.Item("DocID")) 'Address
  loc_153DFD0:         var_88.Collect = "DocID"
  loc_153DFFA:         var_EC = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_153E008:         var_88.Collect = "V_SNo"
  loc_153E032:         var_EC = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_153E040:         var_88.Collect = "V_Type"
  loc_153E06A:         var_EC = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_153E078:         var_88.Collect = "V_NO"
  loc_153E0A2:         var_EC = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_153E0B0:         var_88.Collect = "V_DATE"
  loc_153E0DA:         var_EC = CVar(var_94.Fields.Item("subcode")) 'Address
  loc_153E0E8:         var_88.Collect = "subcode"
  loc_153E112:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153E120:         var_88.Collect = "Name"
  loc_153E14A:         var_EC = CVar(var_94.Fields.Item("AmtCr")) 'Address
  loc_153E158:         var_88.Collect = "cr"
  loc_153E182:         var_EC = CVar(var_94.Fields.Item("AmtDr")) 'Address
  loc_153E190:         var_88.Collect = "dr"
  loc_153E19B:         var_12C = "On Account"
  loc_153E1AA:         var_88.Collect = "AgRefNo"
  loc_153E1AF:         var_12C = vbNullString
  loc_153E1BE:         var_88.Collect = "AgRefType"
  loc_153E1C3:         var_12C = "5"
  loc_153E1D2:         var_88.Collect = "GRPSort"
  loc_153E1DD:         var_D4 = "RefSort"
  loc_153E1E6:         var_88.Collect = var_D4
  loc_153E1F6:         var_88.Update var_D4, "1"
  loc_153E1FB:       End If
  loc_153E1FE:       var_94.MoveNext
  loc_153E214:       If (var_94.EOF = &HFF) Then
  loc_153E217:         GoTo loc_153E28B
  loc_153E21A:       End If
  loc_153E24A:       var_12C = "subcode"
  loc_153E266:       var_EC = var_94.Fields.Item(var_12C).Value
  loc_153E282:       If CBool(var_90.Fields.Item("subcode").Value <> var_EC) Then
  loc_153E285:         GoTo loc_153E28B
  loc_153E288:       End If
  loc_153E288:       GoTo loc_153DF13
  loc_153E28B:       ' Referenced from: 153E285
  loc_153E28B:       ' Referenced from: 153E217
  loc_153E28B:     End If
  loc_153E28B:   End If
  loc_153E28E:   var_90.MoveNext
  loc_153E293:   GoTo loc_153D74C
  loc_153E296: End If
  loc_153E2AA: If (var_88.RecordCount <= 0) Then
  loc_153E2B3:   Call 0.Method_arg_50 (var_DC, var_12C, var_12C, var_12C, var_12C, var_EC)
  loc_153E2CE:   var_EC = "** No Records Found to Print **"
  loc_153E2D4:   MsgBox(var_EC, &H40, CVar(var_DC), var_10C, var_14C)
  loc_153E2E9:   global_130 = 0
  loc_153E2EC:   Exit Sub
  loc_153E2ED: End If
  loc_153E303: Set var_BC = var_88 
  loc_153E30F: var_C2 = CreateFieldDefFile(var_BC, MemVar_1F923B0 & "\FaAgRefNo.ttx", &HFF, global_130, var_EC)
  loc_153E31F: var_D4 = CVar(var_C2) 'Integer
  loc_153E322: var_B0 = var_D4 'Variant
  loc_153E33E: var_DC = MemVar_1F923B0 & "\FaAgRefNo.RPT"
  loc_153E347: Call 0.Method_arg_1C (var_DC, var_D4, var_BC, var_C2)
  loc_153E352: MemVar_1F921E4 = var_BC
  loc_153E375: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_12C, var_13C)
  loc_153E37D: Call 0.Method_arg_2C (var_EC, var_EC)
  loc_153E38A: Set var_88 = Nothing
  loc_153E392: Set var_90 = Nothing
  loc_153E39A: Set var_94 = Nothing
  loc_153E3A2: Set var_98 = Nothing
  loc_153E3AA: Set var_9C = Nothing
  loc_153E3AD: Exit Sub
  loc_153E3AE: ' Referenced from: 153D434
  loc_153E3BC: Call 0.Method_arg_50 (var_DC, 0)
  loc_153E3D1: Proc_183_57_104AA84(var_DC, "RefReport")
  loc_153E3DD: Exit Sub
End Sub

Public Sub Proc_245_68_17BAD04(arg_C) '17BAD04
  'Data Table: 58C0C8
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_1B4 As String
  Dim var_1A0 As Variant
  Dim unk_58C10D As Connection15
  Dim var_90 As Variant
  Dim var_170 As Fields15
  Dim var_1D0 As Variant
  Dim var_390 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_16C As String
  Dim var_200 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As String
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3B0 As Variant
  Dim var_420 As Variant
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_4A0 As String
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_5D0 As String
  Dim var_600 As Variant
  Dim var_630 As Variant
  Dim var_660 As Variant
  Dim var_690 As String
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F0 As String
  Dim var_770 As Variant
  Dim var_780 As String
  Dim var_790 As Variant
  Dim var_7D0 As String
  Dim var_810 As Variant
  Dim var_880 As Variant
  Dim var_930 As String
  Dim var_960 As Variant
  Dim var_1E0 As Variant
  Dim var_300 As Variant
  Dim var_350 As Variant
  Dim var_3A0 As Variant
  Dim var_560 As Variant
  Dim var_5B0 As Variant
  Dim var_7B0 As Variant
  Dim var_800 As Variant
  Dim var_992 As Integer
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_998 As Fields15
  Dim var_99C As Field20
  Dim var_9A0 As Fields15
  Dim var_9A4 As Field20
  Dim var_9AE As Integer
  loc_17B8E9C: On Error Goto loc_17BACD3
  loc_17B8EB4: Set var_170 = CVar(CLng(0))(0)
  loc_17B8ED8: Call Proc_245_64_F51054(CInt(0), CStr(var_180))
  loc_17B8EEC: If (var_18A = 0) Then
  loc_17B8EF4:   global_130 = 0
  loc_17B8EF7:   Exit Sub
  loc_17B8EF8: End If
  loc_17B8F0D: Set var_170 = CVar(CLng(1))(0)
  loc_17B8F31: Call Proc_245_64_F51054(CInt(1), CStr(var_180))
  loc_17B8F45: If (var_18A = 0) Then
  loc_17B8F4D:   global_130 = 0
  loc_17B8F50:   Exit Sub
  loc_17B8F51: End If
  loc_17B8F66: Set var_170 = CVar(CLng(2))(0)
  loc_17B8F8A: Call Proc_245_64_F51054(CInt(2), CStr(var_180))
  loc_17B8F9E: If (var_18A = 0) Then
  loc_17B8FA6:   global_130 = 0
  loc_17B8FA9:   Exit Sub
  loc_17B8FAA: End If
  loc_17B8FBF: Set var_170 = CVar(CLng(3))(0)
  loc_17B8FE3: Call Proc_245_64_F51054(CInt(3), CStr(var_180))
  loc_17B8FF7: If (var_18A = 0) Then
  loc_17B8FFF:   global_130 = 0
  loc_17B9002:   Exit Sub
  loc_17B9003: End If
  loc_17B9009: global_84 = vbNullString
  loc_17B9010: var_9C = vbNullString
  loc_17B9016: var_A0 = vbNullString
  loc_17B9025: Set var_170 = Me.Check1
  loc_17B902B: Call 0.Method_Proc_245_68_17BAD040 (1, var_190, var_182, global_130, var_18A, TXTE_DATE.DispID_41, global_130)
  loc_17B9033: var_18A = var_190.Value
  loc_17B9049: If (CLng(var_182) = 0) Then
  loc_17B9067:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_17B9072:   global_84 = var_188
  loc_17B9082:   If (global_130 = 0) Then
  loc_17B9085:     Exit Sub
  loc_17B9086:   End If
  loc_17B9086: End If
  loc_17B909B: Set var_170 = CVar(CLng(0))(1)
  loc_17B90B9: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_17B90E0: Set var_170 = CVar(CLng(1))(1)
  loc_17B90F1: var_188 = CStr(TXTS_DATE.DispID_41)
  loc_17B90F8: Set var_190 = Me.TXTE_DATE
  loc_17B90FE: var_190.Text = var_188
  loc_17B9127: If (Proc_183_48_F05F98(Me, var_188, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_17B912F:   global_130 = 0
  loc_17B9132:   Exit Sub
  loc_17B9133: End If
  loc_17B913E: Set var_170 = Me.TEXT
  loc_17B9144: Call 0.Method_Proc_245_68_17BAD040 (CInt(&HC), var_190, global_130, var_18A)
  loc_17B914C: var_180 = CVar(var_190) 'Address
  loc_17B916D: If CBool(Trim(var_180) <> vbNullString) Then
  loc_17B9181:   Set var_170 = Me.TEXT
  loc_17B9187:   Call 0.Method_Proc_245_68_17BAD040 (CInt(&HC), var_190, var_188, " And LEDGER.LOGSite_Code='")
  loc_17B918F:   TXTE_DATE.DispID_41 = var_190.Tag
  loc_17B919F:   var_128 = global_130 & var_188 & "'"
  loc_17B91C1:   Set var_170 = Me.TEXT
  loc_17B91C7:   Call 0.Method_Proc_245_68_17BAD040 (CInt(&HC), var_190, var_188)
  loc_17B91CF:   " And LEDGER.LOGSite_Code='" = var_190.Tag
  loc_17B91DF:   var_12C = var_18A & var_188 & "'"
  loc_17B91F3: Else
  loc_17B9201:   var_128 = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_17B9215:   var_12C = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_17B921B: End If
  loc_17B9230: Set var_170 = CVar(CLng(2))(1)
  loc_17B925D: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_17B928A: Set var_170 = CVar(CLng(2))(2)
  loc_17B92AA: var_C4 = CStr(Trim(CVar(CStr(TXTACC_CODE.DispID_41))))
  loc_17B92C4: If (global_84 <> vbNullString) Then
  loc_17B92D8:   var_9C = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_17B92DE: End If
  loc_17B92E9: If (global_84 <> vbNullString) Then
  loc_17B92FA:   var_1B4 = " AND (VIEWSUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR VIEWSUBGROUP.LOGSITE_CODE='HO') AND VIEWSUBGROUP.SUBCODE IN ("
  loc_17B930B:   var_A0 = var_1B4 & global_84 & ")"
  loc_17B9317: End If
  loc_17B933B: unk_58C10D.Execute "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_180, -1
  loc_17B9346: Set var_88 = var_170
  loc_17B9359: var_120 = vbNullString
  loc_17B9393: If (CStr(TXTACC_CODE.DispID_41) = "No") Then
  loc_17B93AA:   var_188 = "SELECT MAINGRCODE,GroupNature FROM ACGROUP WHERE GROUPCODE='" & var_C4
  loc_17B93BA:   unk_58C10D.Execute var_188 & "' AND ALIASYN='N'", var_180, -1
  loc_17B93C5:   Set var_90 = CVar(CLng(3))(1)
  loc_17B93E9:   If (var_90.RecordCount > 0) Then
  loc_17B9417:     var_120 = CStr(var_90.Fields.Item("MainGrCode").Value)
  loc_17B9446:     var_180 = var_90.Fields.Item("GroupNature").Value
  loc_17B9460:     Set var_90 = New 
  loc_17B9469:     Me.Recordset15.Sort = "PARTYNAME ASC,GrCode ASC,PARTYCODE ASC"
  loc_17B9471:     var_1C0 = CStr(var_180)
  loc_17B947C:     If Not (var_1C0 = "E") Then
  loc_17B9487:       If (var_1C0 = "R") Then
  loc_17B948A:       End If
  loc_17B9495:       Proc_183_7_EB0C44(var_180, MemVar_1F920F4)
  loc_17B94A5:       Proc_183_7_EB0C44(var_1E0, CVar(Me.TXTS_DATE))
  loc_17B94B5:       Proc_183_7_EB0C44(var_300, MemVar_1F920F4)
  loc_17B94C5:       Proc_183_7_EB0C44(var_350, CVar(Me.TXTS_DATE))
  loc_17B94D5:       Proc_183_7_EB0C44(var_3A0, CVar(Me.TXTE_DATE))
  loc_17B94EA:       var_4E0 = "SUBSTRING"
  loc_17B950F:       Proc_183_7_EB0C44(var_560, MemVar_1F920F4)
  loc_17B951F:       Proc_183_7_EB0C44(var_5B0, CVar(Me.TXTS_DATE))
  loc_17B9529:       var_750 = "MID"
  loc_17B9559:       Proc_183_7_EB0C44(var_7B0, MemVar_1F920F4)
  loc_17B9569:       Proc_183_7_EB0C44(var_800, CVar(Me.TXTS_DATE))
  loc_17B9579:       Proc_183_7_EB0C44(var_850, CVar(Me.TXTE_DATE))
  loc_17B9595:       var_14C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B959D:       var_1A0 = var_14C & var_180 
  loc_17B95DC:       var_280 = var_1A0 & " AND V_DATE<" & var_1E0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B95EF:       var_2C0 = var_280 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B95F3:       var_2D0 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B9608:       var_330 = var_2C0 & var_2D0 & var_300 & " AND V_DATE BETWEEN " 
  loc_17B964E:       var_450 = var_330 & var_350 & " AND " & var_3A0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B9665:       var_4A0 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B9671:       var_520 = var_450 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_4A0 & IIf((MemVar_1F923AC = "S"), var_4E0, "MID") 
  loc_17B9675:       var_530 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B96A4:       var_600 = var_520 & var_530 & var_560 & " AND V_DATE<" & var_5B0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B96CE:       var_690 = "')+3  "
  loc_17B96DD:       var_6C0 = var_600 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_690 & CVar(var_128) 
  loc_17B96EA:       var_6F0 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B96F6:       var_770 = var_6C0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_6F0 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", var_750) 
  loc_17B96FA:       var_780 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B972F:       var_880 = var_770 & var_780 & var_7B0 & " AND V_DATE BETWEEN " & var_800 & " AND " & var_850 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" 
  loc_17B9763:       var_930 = "')+3  "
  loc_17B9772:       var_960 = var_880 & CVar(var_120) & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_930 & CVar(var_128) 
  loc_17B9783:       var_90.Open var_960 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F921DC), 2
  loc_17B982C:     Else
  loc_17B9834:       If Not (var_1C0 = "A") Then
  loc_17B983F:         If (var_1C0 = "L") Then
  loc_17B9842:         End If
  loc_17B984D:         Proc_183_7_EB0C44(var_1A0, CVar(Me.TXTS_DATE), 3)
  loc_17B9856:         var_2A0 = CVar(Me.TXTS_DATE) 'Address
  loc_17B985D:         Proc_183_7_EB0C44(var_2C0, var_2A0, -1)
  loc_17B9866:         var_310 = CVar(Me.TXTE_DATE) 'Address
  loc_17B986D:         Proc_183_7_EB0C44(var_330, var_310)
  loc_17B98A7:         Proc_183_7_EB0C44(var_4E0, CVar(Me.TXTS_DATE))
  loc_17B98E1:         Proc_183_7_EB0C44(var_6C0, CVar(Me.TXTS_DATE))
  loc_17B98F1:         Proc_183_7_EB0C44(var_750, CVar(Me.TXTE_DATE))
  loc_17B990D:         var_13C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE<"
  loc_17B9915:         var_1B0 = var_13C & var_1A0 
  loc_17B991E:         var_1D0 = var_1B0 & " " 
  loc_17B9925:         var_15C = CVar(var_A0) 'String
  loc_17B9957:         var_260 = var_1D0 & var_15C & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B995B:         var_290 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B999D:         var_390 = var_260 & var_290 & var_2C0 & " AND " & var_330 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) 
  loc_17B99BD:         var_420 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(SUM(AMTCR),0) AS OP_CR,ISNULL(sum(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B99C9:         var_470 = var_390 & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_420 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", "MID") 
  loc_17B99CD:         var_4A0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE<"
  loc_17B99FF:         var_560 = var_470 & var_4A0 & var_4E0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) & "'))='" & CVar(var_120) 
  loc_17B9A16:         var_5D0 = "')+3  "
  loc_17B9A25:         var_5B0 = var_560 & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_128) 
  loc_17B9A32:         var_630 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B9A3E:         var_660 = var_5B0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_630 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", "MID") 
  loc_17B9A42:         var_6B0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE BETWEEN "
  loc_17B9A71:         var_790 = var_660 & var_6B0 & var_6C0 & " AND " & var_750 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B9A9B:         var_7D0 = "')+3  "
  loc_17B9AAA:         var_810 = var_790 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND V_DATE BETWEEN " & CVar(var_128) 
  loc_17B9ABB:         var_90.Open var_810 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F921DC), 2
  loc_17B9B49:       End If
  loc_17B9B49:     End If
  loc_17B9B49:   End If
  loc_17B9B5D:   If (var_90.RecordCount <= 0) Then
  loc_17B9B66:     Call 0.Method_arg_50 (var_188, 3, -1)
  loc_17B9B87:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B9B9C:     global_130 = 0
  loc_17B9B9F:     Exit Sub
  loc_17B9BA0:   End If
  loc_17B9BA3:   var_992 = arg_C
  loc_17B9BAC:   If (var_992 = 1) Then
  loc_17B9BB5:     var_14C = "Paper Setting"
  loc_17B9BBA:     var_1A0 = var_14C
  loc_17B9BD0:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_1A0, var_1B0, var_1D0)
  loc_17B9BE9:     Set var_190 = var_90
  loc_17B9BF2:     Set var_170 = Me 
  loc_17B9C02:     Call 0.Method_arg_16C (var_170, var_190, var_182, var_992)
  loc_17B9C0D:     Set var_90 = var_190
  loc_17B9C13:     var_92 = var_182
  loc_17B9C22:     global_130 = 0
  loc_17B9C25:     GoTo loc_17BACBA
  loc_17B9C2B:   Else
  loc_17B9C37:     Call 0.Method_arg_F0 (var_170, global_130, var_92)
  loc_17B9C42:     MemVar_1F921E4 = var_170
  loc_17B9C62:     Call 0.Method_arg_64 (var_170, CVar(var_90), var_14C, var_15C)
  loc_17B9C6A:     Call 0.Method_arg_2C (global_130, var_170)
  loc_17B9C72:   End If
  loc_17B9C75: Else
  loc_17B9C85:   Set var_170 = New
  loc_17B9C94:   Call 0.Method_arg_1B4 (var_170, var_190)
  loc_17B9C9F:   Set var_8C = var_170
  loc_17B9CA8:   Set var_8C = var_190
  loc_17B9CB6:   Set var_90 = New 
  loc_17B9CBF:   Me.Recordset15.Sort = "PARTYNAME ASC"
  loc_17B9CCF:   Proc_183_7_EB0C44(var_1A0, CVar(Me.TXTE_DATE))
  loc_17B9CDF:   Proc_183_7_EB0C44(var_2A0, MemVar_1F920F4)
  loc_17B9CEF:   Proc_183_7_EB0C44(var_310, CVar(Me.TXTE_DATE))
  loc_17B9D0B:   var_13C = "SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE<"
  loc_17B9D39:   var_200 = CVar(var_90) & var_1A0 & " " & CVar(var_9C) & " AND PARTY_LIST.GroupNature in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) 
  loc_17B9D59:   var_290 = " Union SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B9D88:   var_350 = var_200 & "'  " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY " & var_290 & var_2A0 & " AND " & var_310 & " " & CVar(var_9C) 
  loc_17B9DB7:   var_3B0 = var_350 & " AND PARTY_LIST.GroupNature NOT in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) & "' " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY" 
  loc_17B9DBF:   var_90.Open var_3B0, CVar(MemVar_1F921DC), 2
  loc_17B9DF7:   ' Referenced from:   17BA558
  loc_17B9DFD:   var_182 = var_90.EOF
  loc_17B9E06:   If Not(var_182) Then
  loc_17B9E0F:     var_13C = "Bal"
  loc_17B9E33:     var_14C = 0
  loc_17B9E45:     If CBool(var_90.Fields.Item(var_13C).Value <> var_14C) Then
  loc_17B9E53:       var_8C.AddNew var_13C, var_14C
  loc_17B9E83:       var_1A0 = Left(CVar(var_90.Fields.Item("PartyName")), &H23)
  loc_17B9E95:       var_8C.Collect = "ACC_NAME"
  loc_17B9EC3:       var_180 = CVar(var_90.Fields.Item("GroupName")) 'Address
  loc_17B9ED1:       var_8C.Collect = "AName"
  loc_17B9F48:       If (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt1").Value) Then
  loc_17B9F6A:         var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B9F78:         var_8C.Collect = "DEBIT1"
  loc_17B9F86:       Else
  loc_17BA03E:         var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt1").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt2").Value)
  loc_17BA062:         If CBool(var_240) Then
  loc_17BA084:           var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17BA092:           var_8C.Collect = "DEBIT2"
  loc_17BA0A0:         Else
  loc_17BA158:           var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt2").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt3").Value)
  loc_17BA17C:           If CBool(var_240) Then
  loc_17BA19E:             var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17BA1AC:             var_8C.Collect = "DEBIT3"
  loc_17BA1BA:           Else
  loc_17BA272:             var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt3").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt4").Value)
  loc_17BA296:             If CBool(var_240) Then
  loc_17BA2B8:               var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17BA2C6:               var_8C.Collect = "DEBIT4"
  loc_17BA2D4:             Else
  loc_17BA38C:               var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt4").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt5").Value)
  loc_17BA3B0:               If CBool(var_240) Then
  loc_17BA3D2:                 var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17BA3E0:                 var_8C.Collect = "DEBIT5"
  loc_17BA3EE:               Else
  loc_17BA42E:                 var_998 = var_88.Fields
  loc_17BA436:                 var_99C = var_998.Item("Amt5")
  loc_17BA43E:                 var_1B0 = var_99C.Value
  loc_17BA446:                 var_1D0 = (Abs(var_90.Fields.Item("Bal").Value) > var_1B0)
  loc_17BA45C:                 var_9A0 = var_90.Fields
  loc_17BA464:                 var_9A4 = var_9A0.Item("Bal")
  loc_17BA4CA:                 If CBool(var_1D0 And (Abs(var_9A4.Value) <= var_88.Fields.Item("Amt6").Value)) Then
  loc_17BA4EC:                   var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17BA4FA:                   var_8C.Collect = "DEBIT6"
  loc_17BA508:                 Else
  loc_17BA50B:                   var_13C = "Bal"
  loc_17BA527:                   var_180 = CVar(var_90.Fields.Item(var_13C)) 'Address
  loc_17BA52C:                   var_14C = "Debit"
  loc_17BA535:                   var_8C.Collect = var_14C
  loc_17BA540:                 End If
  loc_17BA540:               End If
  loc_17BA540:             End If
  loc_17BA540:           End If
  loc_17BA540:         End If
  loc_17BA540:       End If
  loc_17BA54B:       var_8C.Update var_13C, var_14C
  loc_17BA550:     End If
  loc_17BA553:     var_90.MoveNext
  loc_17BA558:     GoTo loc_17B9DF7
  loc_17BA55B:   End If
  loc_17BA561:   var_1BC = var_8C.RecordCount
  loc_17BA56F:   If (var_1BC <= 0) Then
  loc_17BA578:     Call 0.Method_arg_50 (var_188, var_180, var_180, var_180, var_180, var_180)
  loc_17BA599:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17BA5AE:     global_130 = 0
  loc_17BA5B1:     Exit Sub
  loc_17BA5B2:   End If
  loc_17BA5B5:   var_9AE = arg_C
  loc_17BA5BE:   If (var_9AE = 1) Then
  loc_17BA5CC:     var_1A0 = "Paper Setting"
  loc_17BA5DC:     var_180 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_17BA5E2:     MsgBox(var_180, &H40, var_1A0, var_1B0, var_1D0)
  loc_17BA5FB:     Set var_190 = var_8C
  loc_17BA604:     Set var_170 = Me 
  loc_17BA614:     Call 0.Method_arg_168 (var_170, var_190, var_182, var_9AE, global_130, var_180)
  loc_17BA61F:     Set var_8C = var_190
  loc_17BA625:     var_92 = var_182
  loc_17BA634:     global_130 = 0
  loc_17BA637:     GoTo loc_17BACBA
  loc_17BA63D:   Else
  loc_17BA649:     Call 0.Method_arg_F4 (var_170, global_130, var_92, var_180)
  loc_17BA654:     MemVar_1F921E4 = var_170
  loc_17BA66C:     Call 0.Method_arg_90 (var_170, var_1BC, var_BE, 1)
  loc_17BA674:     Call 0.Method_arg_24 (var_180, var_1A0)
  loc_17BA680:     For var_9B2 = -1 To CInt(var_1BC):     3 = var_9B2 'Integer
  loc_17BA699:       Call 0.Method_arg_90 (var_170, CLng(var_BE), var_190)
  loc_17BA6A1:       Call 0.Method_arg_20 (var_188)
  loc_17BA6A9:       Call 0.Method_arg_30 (-1)
  loc_17BA6BF:       var_9C4 = Ucase(CVar(var_188)) 'Variant
  loc_17BA6D8:       If (var_9C4 = "P1") Then
  loc_17BA6E0:         var_14C = "0 - "
  loc_17BA713:         var_1B0 = ("Paper Setting" + Str(CVar(var_88.Fields.Item("Amt1"))))
  loc_17BA738:         Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17BA740:         Call 0.Method_arg_20 (var_99C)
  loc_17BA748:         Call 0.Method_arg_38 (CStr("'" & var_1B0 & "'"))
  loc_17BA769:       Else
  loc_17BA774:         If (var_9C4 = "P2") Then
  loc_17BA7AB:           var_1A0 = (var_88.Fields.Item("Amt1").Value + 1)
  loc_17BA7BE:           var_16C = " - "
  loc_17BA816:           Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17BA81E:           Call 0.Method_arg_20 (var_9A4)
  loc_17BA826:           Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) & "'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17BA853:         Else
  loc_17BA85E:           If (var_9C4 = "P3") Then
  loc_17BA895:             var_1A0 = (var_88.Fields.Item("Amt2").Value + 1)
  loc_17BA8A4:             var_15C = " - "
  loc_17BA8A9:             var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17BA8DB:             var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt3"))))
  loc_17BA900:             Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17BA908:             Call 0.Method_arg_20 (var_9A4)
  loc_17BA910:             Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17BA93D:           Else
  loc_17BA948:             If (var_9C4 = "P4") Then
  loc_17BA97F:               var_1A0 = (var_88.Fields.Item("Amt3").Value + 1)
  loc_17BA98E:               var_15C = " - "
  loc_17BA993:               var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17BA9C5:               var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt4"))))
  loc_17BA9EA:               Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17BA9F2:               Call 0.Method_arg_20 (var_9A4)
  loc_17BA9FA:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17BAA27:             Else
  loc_17BAA32:               If (var_9C4 = "P5") Then
  loc_17BAA69:                 var_1A0 = (var_88.Fields.Item("Amt4").Value + 1)
  loc_17BAA78:                 var_15C = " - "
  loc_17BAA7D:                 var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17BAAAF:                 var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt5"))))
  loc_17BAAD4:                 Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17BAADC:                 Call 0.Method_arg_20 (var_9A4)
  loc_17BAAE4:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17BAB11:               Else
  loc_17BAB1C:                 If (var_9C4 = "P6") Then
  loc_17BAB53:                   var_1A0 = (var_88.Fields.Item("Amt5").Value + 1)
  loc_17BAB62:                   var_15C = " - "
  loc_17BAB67:                   var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17BAB7A:                   var_998 = var_88.Fields
  loc_17BAB82:                   var_99C = var_998.Item("Amt6")
  loc_17BAB99:                   var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_99C)))
  loc_17BABBE:                   Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17BABC6:                   Call 0.Method_arg_20 (var_9A4)
  loc_17BABCE:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17BABFB:                 Else
  loc_17BAC06:                   If (var_9C4 = "P7") Then
  loc_17BAC09:                     var_14C = "'Above "
  loc_17BAC1D:                     var_170 = var_88.Fields
  loc_17BAC49:                     var_188 = CStr(var_14C & Str(CVar(var_170.Item("Amt6"))) & "'")
  loc_17BAC5D:                     Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17BAC65:                     Call 0.Method_arg_20 (var_99C)
  loc_17BAC6D:                     Call 0.Method_arg_38 (var_188)
  loc_17BAC89:                   End If
  loc_17BAC89:                 End If
  loc_17BAC89:               End If
  loc_17BAC89:             End If
  loc_17BAC89:           End If
  loc_17BAC89:         End If
  loc_17BAC89:       End If
  loc_17BAC8C:     Next var_9B2 'Integer
  loc_17BACAA:     Call 0.Method_arg_64 (var_170, CVar(var_8C))
  loc_17BACB2:     Call 0.Method_arg_2C (var_14C)
  loc_17BACBA:   End If
  loc_17BACBA:   ' Referenced from:   17BA637
  loc_17BACBA: End If
  loc_17BACBA: ' Referenced from: 17B9C25
  loc_17BACBF: Set var_88 = Nothing
  loc_17BACC7: Set var_8C = Nothing
  loc_17BACCF: Set var_90 = Nothing
  loc_17BACD2: Exit Sub
  loc_17BACD3: ' Referenced from: 17B8E9C
  loc_17BACE1: Call 0.Method_arg_50 (var_188, 0)
  loc_17BACF6: Proc_183_57_104AA84(var_188, "Annexure")
  loc_17BAD02: Exit Sub
End Sub

Public Sub Proc_245_69_17B4D14
  'Data Table: 58C0C8
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  loc_17B2D9C: On Error Goto loc_17B4CE2
  loc_17B2DB4: Set var_160 = CVar(CLng(0))(0)
  loc_17B2DD8: Call Proc_245_64_F51054(CInt(0), CStr(var_170))
  loc_17B2DEC: If (var_17A = 0) Then
  loc_17B2DF4:   global_130 = 0
  loc_17B2DF7:   Exit Sub
  loc_17B2DF8: End If
  loc_17B2E03: Set var_160 = Me.TEXT
  loc_17B2E09: Call 0.Method_Proc_245_69_17B4D140 (CInt(&HC), var_180, global_130)
  loc_17B2E11: var_170 = CVar(var_180) 'Address
  loc_17B2E32: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17B2E46:   Set var_160 = Me.TEXT
  loc_17B2E4C:   Call 0.Method_Proc_245_69_17B4D140 (CInt(&HC), var_180, var_178)
  loc_17B2E54:   " And VIEWLEDGER.LOGSite_Code='" = var_180.Tag
  loc_17B2E64:   var_11C = var_17A & var_178 & "'"
  loc_17B2E78: Else
  loc_17B2E7F:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_17B2E86:   var_11C = var_178 & "'"
  loc_17B2E8C: End If
  loc_17B2E92: global_84 = vbNullString
  loc_17B2E99: var_A0 = vbNullString
  loc_17B2EA8: Set var_160 = Me.Check1
  loc_17B2EAE: Call 0.Method_Proc_245_69_17B4D140 (1, var_180)
  loc_17B2ECC: If (CLng(var_180.Value) = 0) Then
  loc_17B2EEA:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_17B2EF5:   global_84 = var_178
  loc_17B2F05:   If (global_130 = 0) Then
  loc_17B2F08:     Exit Sub
  loc_17B2F09:   End If
  loc_17B2F09: End If
  loc_17B2F14: If (global_84 <> vbNullString) Then
  loc_17B2F28:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17B2F2E: End If
  loc_17B2F43: Set var_160 = CVar(CLng(0))(1)
  loc_17B2F5B: Set var_180 = Me.TXTE_DATE
  loc_17B2F61: var_180.Text = CStr(Check1.DispID_41)
  loc_17B2F7A: Set var_160 = Me.TXTE_DATE
  loc_17B2FA9: If (Proc_183_49_EF3180(CDate(var_160.Text), "Date Upto") = 0) Then
  loc_17B2FB1:   global_130 = 0
  loc_17B2FB4:   Exit Sub
  loc_17B2FB5: End If
  loc_17B2FC9: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_17B2FD9: unk_58C10D.Execute var_178 & "'", var_170, -1
  loc_17B2FE4: Set var_88 = var_160
  loc_17B3008: If (var_88.RecordCount = 0) Then
  loc_17B3011:   Call 0.Method_arg_50 (var_178, var_160, global_130)
  loc_17B302C:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17B3032:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B3042:   Exit Sub
  loc_17B3043: End If
  loc_17B304B: If (arg_10 = "Dr") Then
  loc_17B3055:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17B3058: End If
  loc_17B3060: If (arg_10 = "Cr") Then
  loc_17B306A:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17B306D: End If
  loc_17B3081: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_17B309F: unk_58C10D.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17B30AA: Set var_8C = var_160
  loc_17B30C1: var_A4 = vbNullString
  loc_17B30D4: Set var_160 = New
  loc_17B30E3: Call 0.Method_arg_1B4 (var_160, var_180, var_160)
  loc_17B30EE: Set var_90 = var_160
  loc_17B30F7: Set var_90 = var_180
  loc_17B3107: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17B310C: ' Referenced from: 17B4155
  loc_17B311B: If Not(var_8C.EOF) Then
  loc_17B3121:   var_E4 = CDbl(0)
  loc_17B3127:   var_EC = CDbl(0)
  loc_17B312D:   var_F4 = CDbl(0)
  loc_17B3133:   var_FC = CDbl(0)
  loc_17B3139:   var_104 = CDbl(0)
  loc_17B313F:   var_10C = CDbl(0)
  loc_17B3145:   var_114 = CDbl(0)
  loc_17B3151:   var_B4 = CDbl(0)
  loc_17B3199:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17B31A8:   Proc_183_7_EB0C44(var_1D8, CVar(Me.TXTE_DATE), var_1A0, var_258, -1, var_25C, var_B4)
  loc_17B31D0:   var_178 = CStr(CDbl(0) & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17B31DA:   unk_58C10D.Execute var_178, var_114, var_10C
  loc_17B31E5:   Set var_94 = var_25C
  loc_17B320B:   ' Referenced from: 17B3DC2
  loc_17B321A:   If Not(var_94.EOF) Then
  loc_17B3225:     If (arg_10 = "Dr") Then
  loc_17B3264:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17B3298:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17B329D:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17B32B1:       Else
  loc_17B32FB:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17B334B:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B337F:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17B3384:           var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17B3398:         Else
  loc_17B341A:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B344E:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17B3453:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B3467:           Else
  loc_17B34E9:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B351D:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17B3522:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B3536:             Else
  loc_17B35B8:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B35EC:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17B35F1:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B3605:               Else
  loc_17B3687:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B36BB:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17B36C0:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B36D4:                 Else
  loc_17B3756:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17B378A:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17B378F:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B37A3:                   Else
  loc_17B37D4:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17B37D9:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B37EA:                   End If
  loc_17B37EA:                 End If
  loc_17B37EA:               End If
  loc_17B37EA:             End If
  loc_17B37EA:           End If
  loc_17B37EA:         End If
  loc_17B37EA:       End If
  loc_17B37ED:     Else
  loc_17B37F5:       If (arg_10 = "Cr") Then
  loc_17B3834:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17B3868:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17B386D:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B3881:         Else
  loc_17B38CB:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17B391B:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B394F:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17B3954:             var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17B3968:           Else
  loc_17B39EA:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B3A1E:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17B3A23:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B3A37:             Else
  loc_17B3AB9:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B3AED:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17B3AF2:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B3B06:               Else
  loc_17B3B88:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B3BBC:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17B3BC1:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B3BD5:                 Else
  loc_17B3C57:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B3C8B:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17B3C90:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B3CA4:                   Else
  loc_17B3CF2:                     var_25C = var_88.Fields
  loc_17B3CFA:                     var_260 = var_25C.Item("Age6")
  loc_17B3D0A:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17B3D26:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17B3D5A:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17B3D5F:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B3D73:                     Else
  loc_17B3DA4:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17B3DA9:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B3DBA:                     End If
  loc_17B3DBA:                   End If
  loc_17B3DBA:                 End If
  loc_17B3DBA:               End If
  loc_17B3DBA:             End If
  loc_17B3DBA:           End If
  loc_17B3DBA:         End If
  loc_17B3DBA:       End If
  loc_17B3DBA:     End If
  loc_17B3DBD:     var_94.MoveNext
  loc_17B3DC2:     GoTo loc_17B320B
  loc_17B3DC5:   End If
  loc_17B3DD0:   var_D8(0) = var_E4
  loc_17B3DDC:   var_D8(1) = var_EC
  loc_17B3DE8:   var_D8(2) = var_F4
  loc_17B3DF4:   var_D8(3) = var_FC
  loc_17B3E00:   var_D8(4) = var_104
  loc_17B3E0C:   var_D8(5) = var_10C
  loc_17B3E18:   var_D8(6) = var_114
  loc_17B3E1C:   var_BC = CDbl(7)
  loc_17B3E1F:   ' Referenced from: 17B3EB3
  loc_17B3E26:   If (var_BC <> CDbl(0)) Then
  loc_17B3E39:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17B3E4C:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17B3E5F:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17B3E70:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17B3E74:       Else
  loc_17B3E84:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17B3EA2:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17B3EA6:           var_B4 = CDbl(0)
  loc_17B3EA9:         End If
  loc_17B3EA9:       End If
  loc_17B3EA9:     End If
  loc_17B3EB0:     var_BC = (var_BC - CDbl(1))
  loc_17B3EB3:     GoTo loc_17B3E1F
  loc_17B3EB6:   End If
  loc_17B3EFB:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17B3F06:   var_12C = var_BC
  loc_17B3F16:   var_13C = 0
  loc_17B3F30:   var_1A0 = Round(var_B4, 2)
  loc_17B3F53:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17B3F59:     Set var_264 = var_90 
  loc_17B3F68:     var_264.AddNew var_12C, var_13C
  loc_17B3F76:     var_13C = CVar(var_D8(0)) 'Double
  loc_17B3F84:     var_264.Collect = "DEBIT1"
  loc_17B3F92:     var_13C = CVar(var_D8(1)) 'Double
  loc_17B3FA0:     var_264.Collect = "DEBIT2"
  loc_17B3FAE:     var_13C = CVar(var_D8(2)) 'Double
  loc_17B3FBC:     var_264.Collect = "DEBIT3"
  loc_17B3FCA:     var_13C = CVar(var_D8(3)) 'Double
  loc_17B3FD8:     var_264.Collect = "DEBIT4"
  loc_17B3FE6:     var_13C = CVar(var_D8(4)) 'Double
  loc_17B3FF4:     var_264.Collect = "DEBIT5"
  loc_17B4002:     var_13C = CVar(var_D8(5)) 'Double
  loc_17B4010:     var_264.Collect = "DEBIT6"
  loc_17B401E:     var_13C = CVar(var_D8(6)) 'Double
  loc_17B402C:     var_264.Collect = "Debit"
  loc_17B4076:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17B4084:     var_264.Collect = "TOTALDR"
  loc_17B408C:     var_13C = CVar(var_B4) 'Double
  loc_17B409A:     var_264.Collect = "Credit"
  loc_17B40CA:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17B40DC:     var_264.Collect = "ACC_NAME"
  loc_17B40EE:     var_12C = "GroupName"
  loc_17B40FA:     var_160 = var_8C.Fields
  loc_17B4102:     var_180 = var_160.Item(var_12C)
  loc_17B4116:     var_190 = Left(CVar(var_180), &H23)
  loc_17B411F:     var_13C = "AName"
  loc_17B4128:     var_264.Collect = var_13C
  loc_17B4142:     var_264.Update var_12C, var_13C
  loc_17B4149:     Set var_264 = Nothing 
  loc_17B414D:   End If
  loc_17B4150:   var_8C.MoveNext
  loc_17B4155:   GoTo loc_17B310C
  loc_17B4158: End If
  loc_17B415E: var_1B0 = var_90.RecordCount
  loc_17B416C: If (var_1B0 <= 0) Then
  loc_17B4175:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_13C, var_13C, var_13C, var_13C)
  loc_17B4196:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B41AB:   global_130 = 0
  loc_17B41AE:   Exit Sub
  loc_17B41AF: End If
  loc_17B41BB: Call 0.Method_arg_D0 (var_160, global_130, var_13C, var_13C, var_13C)
  loc_17B41C6: MemVar_1F921E4 = var_160
  loc_17B41DE: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17B41E6: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17B41F2: For var_268 = var_BC To CInt(var_1B0): var_BC = var_268 'Integer
  loc_17B420B:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17B4213:   Call 0.Method_arg_20 (var_178)
  loc_17B421B:   Call 0.Method_arg_30 (var_BC)
  loc_17B4223:   var_26C = var_178
  loc_17B4235:   If (var_26C = "title") Then
  loc_17B4249:     Call 0.Method_Proc_245_69_17B4D140 (CInt(&HC))
  loc_17B4272:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17B427E:       Call 0.Method_arg_50 (var_178, "'")
  loc_17B42A1:       Call 0.Method_arg_90 (Me.TEXT, CLng(var_BE))
  loc_17B42A9:       Call 0.Method_arg_20 (var_180)
  loc_17B42B1:       Call 0.Method_arg_38 (var_180 & var_178 & "'")
  loc_17B42C9:     Else
  loc_17B42D2:       Call 0.Method_arg_50 (var_178)
  loc_17B42F0:       Set var_160 = Me.TEXT
  loc_17B42F6:       Call 0.Method_Proc_245_69_17B4D140 (CInt(&HC), var_180)
  loc_17B430D:       var_1C0 = (CVar("'" & var_178 & " (") + Trim(CVar(var_180)))
  loc_17B4316:       var_1D8 = (var_1C0 + ")")
  loc_17B431F:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17B4337:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B433F:       Call 0.Method_arg_20 (var_260)
  loc_17B4347:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17B436D:     End If
  loc_17B4370:   Else
  loc_17B4378:     If (var_26C = "ACNAME") Then
  loc_17B43AE:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B43B6:       Call 0.Method_arg_20 (var_25C)
  loc_17B43BE:       Call 0.Method_arg_38 ("'For A/C  :   " & Me.TXTACC_CODE.Text & "'")
  loc_17B43D8:     Else
  loc_17B43E0:       If (var_26C = "DATE") Then
  loc_17B4416:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B441E:         Call 0.Method_arg_20 (var_25C)
  loc_17B4426:         Call 0.Method_arg_38 ("'Upto Date :     " & Me.TXTE_DATE.Text & "'")
  loc_17B4440:       Else
  loc_17B4448:         If (var_26C = "P1") Then
  loc_17B4450:           var_13C = "0 - "
  loc_17B4483:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17B44A8:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B44B0:           Call 0.Method_arg_20 (var_260)
  loc_17B44B8:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & Me.TXTE_DATE.Text & " (") & "'"))
  loc_17B44D9:         Else
  loc_17B44E1:           If (var_26C = "P2") Then
  loc_17B4518:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17B452B:             var_15C = " - "
  loc_17B4583:             Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B458B:             Call 0.Method_arg_20 (var_274)
  loc_17B4593:             Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B45C0:           Else
  loc_17B45C8:             If (var_26C = "P3") Then
  loc_17B45FF:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17B460E:               var_14C = " - "
  loc_17B4613:               var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B4645:               var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17B466A:               Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B4672:               Call 0.Method_arg_20 (var_274)
  loc_17B467A:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B46A7:             Else
  loc_17B46AF:               If (var_26C = "P4") Then
  loc_17B46E6:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17B46F5:                 var_14C = " - "
  loc_17B46FA:                 var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B472C:                 var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17B4751:                 Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B4759:                 Call 0.Method_arg_20 (var_274)
  loc_17B4761:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B478E:               Else
  loc_17B4796:                 If (var_26C = "P5") Then
  loc_17B47CD:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17B47DC:                   var_14C = " - "
  loc_17B47E1:                   var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B4813:                   var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17B4838:                   Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B4840:                   Call 0.Method_arg_20 (var_274)
  loc_17B4848:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B4875:                 Else
  loc_17B487D:                   If (var_26C = "P6") Then
  loc_17B48B4:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17B48C3:                     var_14C = " - "
  loc_17B48C8:                     var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B48DB:                     var_25C = var_88.Fields
  loc_17B48E3:                     var_260 = var_25C.Item("Age6")
  loc_17B48FA:                     var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_260)))
  loc_17B491F:                     Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B4927:                     Call 0.Method_arg_20 (var_274)
  loc_17B492F:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B495C:                   Else
  loc_17B4964:                     If (var_26C = "P7") Then
  loc_17B497B:                       var_160 = var_88.Fields
  loc_17B4983:                       var_180 = var_160.Item("Age6")
  loc_17B49BB:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B49C3:                       Call 0.Method_arg_20 (var_260)
  loc_17B49CB:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17B49EA:                     Else
  loc_17B49F2:                       If (var_26C = "P8") Then
  loc_17B49FD:                         If (arg_10 = "Dr") Then
  loc_17B4A13:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4A1B:                           Call 0.Method_arg_20 (var_180)
  loc_17B4A23:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B4A32:                         Else
  loc_17B4A3A:                           If (arg_10 = "Cr") Then
  loc_17B4A50:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4A58:                             Call 0.Method_arg_20 (var_180)
  loc_17B4A60:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B4A6C:                           End If
  loc_17B4A6C:                         End If
  loc_17B4A6F:                       Else
  loc_17B4A77:                         If (var_26C = "P9") Then
  loc_17B4A82:                           If (arg_10 = "Dr") Then
  loc_17B4A98:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4AA0:                             Call 0.Method_arg_20 (var_180)
  loc_17B4AA8:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B4AB7:                           Else
  loc_17B4ABF:                             If (arg_10 = "Cr") Then
  loc_17B4AD5:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4ADD:                               Call 0.Method_arg_20 (var_180)
  loc_17B4AE5:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B4AF1:                             End If
  loc_17B4AF1:                           End If
  loc_17B4AF4:                         Else
  loc_17B4AFC:                           If (var_26C = "HEADI") Then
  loc_17B4B07:                             If (arg_10 = "Dr") Then
  loc_17B4B1D:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4B25:                               Call 0.Method_arg_20 (var_180)
  loc_17B4B2D:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17B4B3C:                             Else
  loc_17B4B44:                               If (arg_10 = "Cr") Then
  loc_17B4B5A:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B4B62:                                 Call 0.Method_arg_20 (var_180)
  loc_17B4B6A:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17B4B76:                               End If
  loc_17B4B76:                             End If
  loc_17B4B79:                           Else
  loc_17B4B81:                             If (var_26C = "PageNo") Then
  loc_17B4BD7:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B4BDF:                               Call 0.Method_arg_20 (var_260)
  loc_17B4BE7:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17B4C06:                             Else
  loc_17B4C0E:                               If (var_26C = "DT") Then
  loc_17B4C11:                                 var_13C = "'"
  loc_17B4C2B:                                 var_160 = Me.Fields
  loc_17B4C50:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17B4C64:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B4C6C:                                 Call 0.Method_arg_20 (var_260)
  loc_17B4C74:                                 Call 0.Method_arg_38 (var_178)
  loc_17B4C90:                               End If
  loc_17B4C90:                             End If
  loc_17B4C90:                           End If
  loc_17B4C90:                         End If
  loc_17B4C90:                       End If
  loc_17B4C90:                     End If
  loc_17B4C90:                   End If
  loc_17B4C90:                 End If
  loc_17B4C90:               End If
  loc_17B4C90:             End If
  loc_17B4C90:           End If
  loc_17B4C90:         End If
  loc_17B4C90:       End If
  loc_17B4C90:     End If
  loc_17B4C90:   End If
  loc_17B4C93: Next var_268 'Integer
  loc_17B4CB1: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17B4CB9: Call 0.Method_arg_2C (var_13C)
  loc_17B4CC6: Set var_88 = Nothing
  loc_17B4CCE: Set var_8C = Nothing
  loc_17B4CD6: Set var_90 = Nothing
  loc_17B4CDE: Set var_94 = Nothing
  loc_17B4CE1: Exit Sub
  loc_17B4CE2: ' Referenced from: 17B2D9C
  loc_17B4CF0: Call 0.Method_arg_50 (var_178, 0)
  loc_17B4D05: Proc_183_57_104AA84(var_178, "Aging")
  loc_17B4D11: Exit Sub
End Sub

Public Sub Proc_245_70_127D8B0
  'Data Table: 58C0C8
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As Variant
  Dim var_1F0 As String
  Dim var_230 As Variant
  Dim var_360 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  loc_127D368: On Error Goto loc_127D87D
  loc_127D380: Set var_DC = CVar(CLng(0))(0)
  loc_127D3A4: Call Proc_245_64_F51054(CInt(0), CStr(var_EC))
  loc_127D3B8: If (var_F6 = 0) Then
  loc_127D3C0:   global_130 = 0
  loc_127D3C3:   Exit Sub
  loc_127D3C4: End If
  loc_127D3D9: Set var_DC = CVar(CLng(1))(0)
  loc_127D3FD: Call Proc_245_64_F51054(CInt(1), CStr(var_EC))
  loc_127D411: If (var_F6 = 0) Then
  loc_127D419:   global_130 = 0
  loc_127D41C:   Exit Sub
  loc_127D41D: End If
  loc_127D423: global_84 = vbNullString
  loc_127D42A: var_90 = vbNullString
  loc_127D439: Set var_DC = Me.Check1
  loc_127D43F: Call 0.Method_Proc_245_70_127D8B00 (1, var_FC, var_EE, global_130, var_F6)
  loc_127D447: TXTE_DATE.DispID_41 = var_FC.Value
  loc_127D45D: If (CLng(var_EE) = 0) Then
  loc_127D47B:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_127D486:   global_84 = var_F4
  loc_127D496:   If (global_130 = 0) Then
  loc_127D499:     Exit Sub
  loc_127D49A:   End If
  loc_127D49A: End If
  loc_127D4A5: If (global_84 <> vbNullString) Then
  loc_127D4B9:   var_90 = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_127D4BF: End If
  loc_127D4D4: Set var_DC = CVar(CLng(0))(1)
  loc_127D4F2: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_127D519: Set var_DC = CVar(CLng(1))(1)
  loc_127D52A: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_127D531: Set var_FC = Me.TXTE_DATE
  loc_127D537: var_FC.Text = var_F4
  loc_127D560: If (Proc_183_48_F05F98(Me, var_F4, global_130) = 0) Then
  loc_127D568:   global_130 = 0
  loc_127D56B:   Exit Sub
  loc_127D56C: End If
  loc_127D581: Set var_DC = CVar(CLng(2))(1)
  loc_127D5A3: If (CStr(TXTE_DATE.DispID_41) = "Debit") Then
  loc_127D5A9:   var_98 = " AND VIEWLEDGER.DEBIT>0 "
  loc_127D5AF: Else
  loc_127D5C4:   Set var_DC = CVar(CLng(2))(1)
  loc_127D5D5:   var_F4 = CStr(TXTE_DATE.DispID_41)
  loc_127D5E6:   If (var_F4 = "Credit") Then
  loc_127D5EC:     var_98 = " AND VIEWLEDGER.Credit>0 "
  loc_127D5EF:   End If
  loc_127D5EF: End If
  loc_127D5FA: Set var_DC = Me.TEXT
  loc_127D600: Call 0.Method_Proc_245_70_127D8B00 (CInt(&HC), var_FC, global_130)
  loc_127D60F: var_10C = Trim(CVar(var_FC))
  loc_127D629: If CBool(var_10C <> vbNullString) Then
  loc_127D63D:   Set var_DC = Me.TEXT
  loc_127D643:   Call 0.Method_Proc_245_70_127D8B00 (CInt(&HC), var_FC, var_F4)
  loc_127D64B:   " And VIEWLEDGER.LOGSite_Code='" = var_FC.Tag
  loc_127D65B:   var_94 = var_F6 & var_F4 & "'"
  loc_127D66F: Else
  loc_127D67D:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_127D683: End If
  loc_127D6A0: Proc_183_7_EB0C44(var_10C, CVar(Me.TXTS_DATE), "SELECT MAX(VIEWLEDGER.PARTY) AS PARTY_cODE,MAX(SUBGROUP.NAME) AS PARTY_NAME, ", var_380)
  loc_127D6A8: var_11C = -1 & var_10C 
  loc_127D6AC: var_B8 = " AS V_DATE,Sum(DEBIT) AS DR,Sum(CREDIT) AS CR,'' AS v_type, 0 AS v_no,'' AS v_add,'' AS CHQ_NO,'' AS CHQ_DATE,'' AS CLG_DATE,'' AS NARRATION,'Opening Balance' AS Name1 FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY WHERE V_DATE<"
  loc_127D6B1: var_130 = var_11C & var_B8 
  loc_127D6C0: Proc_183_7_EB0C44(var_150, CVar(Me.TXTS_DATE), var_130)
  loc_127D6CC: var_C8 = " "
  loc_127D6FB: var_1F0 = "Union SELECT VIEWLEDGER.PARTY AS PARTY_CODE,SUBGROUP.NAME AS PARTY_NAME,V_DATE,DEBIT AS DR,CREDIT AS CR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,SUBGROUP1.NAME AS NAME1 FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY) LEFT JOIN SUBGROUP SUBGROUP1 ON VIEWLEDGER.party1=SUBGROUP1.SUBCODE WHERE V_DATE BETWEEN "
  loc_127D70F: Proc_183_7_EB0C44(var_220, CVar(Me.TXTS_DATE))
  loc_127D717: var_230 = var_DC & var_150 & var_C8 & CVar(var_90) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & " GROUP BY PARTY " & var_1F0 & var_220 
  loc_127D72F: Proc_183_7_EB0C44(var_270, CVar(Me.TXTE_DATE))
  loc_127D779: var_360 = var_230 & " AND " & var_270 & " " & CVar(var_90) & " " & CVar(var_98) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & vbNullString 
  loc_127D77D: var_F4 = CStr(var_360)
  loc_127D787: unk_58C10D.Execute var_F4, TXTE_DATE.DispID_41, 
  loc_127D792: Set var_88 = var_DC
  loc_127D7EA: If (var_88.RecordCount <= 0) Then
  loc_127D7F3:   Call 0.Method_arg_50 (var_F4)
  loc_127D814:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_127D829:   global_130 = 0
  loc_127D82C:   Exit Sub
  loc_127D82D: End If
  loc_127D839: Call 0.Method_arg_110 (var_DC)
  loc_127D844: MemVar_1F921E4 = var_DC
  loc_127D864: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_127D86C: Call 0.Method_arg_2C (var_C8)
  loc_127D879: Set var_88 = Nothing
  loc_127D87C: Exit Sub
  loc_127D87D: ' Referenced from: 127D368
  loc_127D88B: Call 0.Method_arg_50 (var_F4, 0)
  loc_127D8A0: Proc_183_57_104AA84(var_F4, "BankReg")
  loc_127D8AC: Exit Sub
  loc_127D8AD: global_130 = 
End Sub

Public Sub Proc_245_71_14C0E78
  'Data Table: 58C0C8
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_D4 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_F8 As Fields15
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_10A As Integer
  Dim var_1F8 As Fields15
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_1E0 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_26C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  loc_14C0194: On Error Goto loc_14C0E48
  loc_14C01AC: Set var_F8 = CVar(CLng(0))(0)
  loc_14C01D0: Call Proc_245_64_F51054(CInt(0), CStr(var_108))
  loc_14C01E4: If (var_112 = 0) Then
  loc_14C01EC:   global_130 = 0
  loc_14C01EF:   Exit Sub
  loc_14C01F0: End If
  loc_14C0205: Set var_F8 = CVar(CLng(1))(0)
  loc_14C0229: Call Proc_245_64_F51054(CInt(1), CStr(var_108))
  loc_14C023D: If (var_112 = 0) Then
  loc_14C0245:   global_130 = 0
  loc_14C0248:   Exit Sub
  loc_14C0249: End If
  loc_14C024F: global_84 = vbNullString
  loc_14C0256: var_A0 = vbNullString
  loc_14C0265: Set var_F8 = Me.Check1
  loc_14C026B: Call 0.Method_Proc_245_71_14C0E780 (1, var_118, var_10A, global_130, var_112)
  loc_14C0273: TXTS_DATE.DispID_41 = var_118.Value
  loc_14C0289: If (CLng(var_10A) = 0) Then
  loc_14C02A7:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_14C02B2:   global_84 = var_110
  loc_14C02C2:   If (global_130 = 0) Then
  loc_14C02C5:     Exit Sub
  loc_14C02C6:   End If
  loc_14C02C6: End If
  loc_14C02D1: If (global_84 <> vbNullString) Then
  loc_14C02F6:   var_A0 = " AND SUBGROUP.GROUPCODE IN (" & global_84 & ") AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_14C0302: End If
  loc_14C0317: Set var_F8 = CVar(CLng(0))(1)
  loc_14C0335: Me.TXTS_DATE.Text = CStr(Check1.DispID_41)
  loc_14C035C: Set var_F8 = CVar(CLng(1))(1)
  loc_14C036D: var_110 = CStr(TXTS_DATE.DispID_41)
  loc_14C0374: Set var_118 = Me.TXTE_DATE
  loc_14C037A: var_118.Text = var_110
  loc_14C03A3: If (Proc_183_48_F05F98(Me, var_110, global_130) = 0) Then
  loc_14C03AB:   global_130 = 0
  loc_14C03AE:   Exit Sub
  loc_14C03AF: End If
  loc_14C03BA: Set var_F8 = Me.TEXT
  loc_14C03C0: Call 0.Method_Proc_245_71_14C0E780 (CInt(&HC), var_118, global_130)
  loc_14C03CF: var_130 = Trim(CVar(var_118))
  loc_14C03E9: If CBool(var_130 <> vbNullString) Then
  loc_14C03FD:   Set var_F8 = Me.TEXT
  loc_14C0403:   Call 0.Method_Proc_245_71_14C0E780 (CInt(&HC), var_118, var_110)
  loc_14C040B:   " And LEDGER.Site_Code='" = var_118.Tag
  loc_14C041B:   var_B4 = var_112 & var_110 & "'"
  loc_14C042F: Else
  loc_14C043D:   var_B4 = " And LEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_14C0443: End If
  loc_14C0450: var_C4 = "Select SUBGROUP.GroupCode,Name,SubCode,MAX(GroupName) AS GNAME From SubGroup LEFT JOIN AcGroup on AcGroup.GROUPCODE=SUBGROUP.GROUPCODE Where SubCode Not In (Select DISTINCT SubCode From Ledger Where V_Date Between "
  loc_14C0460: Proc_183_7_EB0C44(var_130, CVar(Me.TXTS_DATE), var_C4, var_1E0)
  loc_14C0468: var_140 = -1 & var_130 
  loc_14C0471: var_150 = var_140 & " And " 
  loc_14C0479: var_160 = CVar(Me.TXTE_DATE) 'Address
  loc_14C0480: Proc_183_7_EB0C44(var_170, var_160, var_150)
  loc_14C04A4: var_1C0 = var_F8 & var_170 & ") " & CVar(var_A0) & " GROUP BY SubGroup.GroupCode,SubGroup.Name,SubGroup.SubCode" 
  loc_14C04A8: var_110 = CStr(var_1C0)
  loc_14C04B2: unk_58C10D.Execute var_110, TXTS_DATE.DispID_41, 
  loc_14C04BD: Set var_88 = var_F8
  loc_14C04F3: If (var_88.RecordCount <= 0) Then
  loc_14C04FC:   Call 0.Method_arg_50 (var_110)
  loc_14C051D:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_140, var_150)
  loc_14C0532:   global_130 = 0
  loc_14C0535:   Exit Sub
  loc_14C0536: End If
  loc_14C0546: Set var_F8 = New
  loc_14C0555: Call 0.Method_arg_1A8 (var_F8, var_118)
  loc_14C0560: Set var_8C = var_F8
  loc_14C0569: Set var_8C = var_118
  loc_14C0573: ' Referenced from: 14C0D8E
  loc_14C0582: If Not(Me.Recordset15.EOF) Then
  loc_14C0588:   var_98 = vbNullString
  loc_14C058E:   var_9C = vbNullString
  loc_14C059E:   var_D4 = "Select ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) As OpBal  From Ledger Where SubCode='"
  loc_14C05E5:   Proc_183_7_EB0C44(var_160, CVar(Me.TXTS_DATE), " And " & var_88.Fields.Item("subcode").Value & "' And V_DATE<", var_1C0)
  loc_14C05ED:   var_170 = -1 & var_160 
  loc_14C0617:   unk_58C10D.Execute CStr(var_170 & " " & CVar(var_B4) & vbNullString), var_1F8, global_130
  loc_14C0622:   Set var_90 = var_1F8
  loc_14C065C:   If (var_90.RecordCount > 0) Then
  loc_14C0699:     var_1F8 = var_90.Fields
  loc_14C06C5:     var_A8 = CSng(IIf(IsNull(CVar(var_90.Fields.Item("OpBal"))), 0, CVar(var_1F8.Item("OpBal"))))
  loc_14C06DC:   End If
  loc_14C06E9:   var_D4 = "SELECT ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) AS ClBal FROM Ledger Where SubCode='"
  loc_14C0730:   Proc_183_7_EB0C44(var_160, CVar(Me.TXTE_DATE), "OpBal" & var_88.Fields.Item("subcode").Value & "' And V_Date<=", var_1C0)
  loc_14C0738:   var_170 = -1 & var_160 
  loc_14C0762:   unk_58C10D.Execute CStr(var_170 & " " & CVar(var_B4) & vbNullString), var_1F8, var_A8
  loc_14C076D:   Set var_90 = var_1F8
  loc_14C07A7:   If (var_90.RecordCount > 0) Then
  loc_14C07D2:     var_10A = IsNull(CVar(var_90.Fields.Item("clbal")))
  loc_14C07E4:     var_1F8 = var_90.Fields
  loc_14C0810:     var_B0 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("clbal"))))
  loc_14C0827:   End If
  loc_14C0834:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTCR,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C087B:   Proc_183_7_EB0C44(var_160, CVar(Me.TXTS_DATE), var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<", var_1C0, -1)
  loc_14C08AD:   unk_58C10D.Execute CStr(var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC"), var_B0, var_10A
  loc_14C08B8:   Set var_90 = var_1F8
  loc_14C08F2:   If (var_90.RecordCount > 0) Then
  loc_14C0934:     var_150 = (CVar(CStr(var_90.Fields.Item("V_DATE").Value)) + Space(1))
  loc_14C094A:     var_1F8 = var_90.Fields
  loc_14C095A:     var_160 = var_1F8.Item("V_Type").Value
  loc_14C0967:     var_180 = (CVar(Me.TXTS_DATE) + CVar(CStr(var_160)))
  loc_14C097B:     var_1A0 = (var_1F8 & var_160 & " AND AMTDR>0 " + Space(1))
  loc_14C09A1:     var_1C0 = var_90.Fields.Item("V_NO").Value
  loc_14C09AE:     var_214 = (var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_1C0)))
  loc_14C09C2:     var_234 = (var_214 + Space(1))
  loc_14C09F5:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtDr").Value)))
  loc_14C09FA:     var_98 = CStr(var_26C)
  loc_14C0A35:   End If
  loc_14C0A42:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTcr,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C0A89:   Proc_183_7_EB0C44(var_160, CVar(Me.TXTS_DATE), var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<", var_1C0)
  loc_14C0A91:   var_170 = -1 & var_160 
  loc_14C0AB1:   var_110 = CStr(CVar(CStr(var_160)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC")
  loc_14C0ABB:   unk_58C10D.Execute var_110, var_1F8, var_10A
  loc_14C0AC6:   Set var_90 = var_1F8
  loc_14C0B00:   If (var_90.RecordCount > 0) Then
  loc_14C0B09:     var_C4 = "V_DATE"
  loc_14C0B2F:     var_140 = CVar(CStr(var_90.Fields.Item(var_C4).Value)) 'String
  loc_14C0B42:     var_150 = (var_140 + Space(1))
  loc_14C0B4C:     var_D4 = "V_Type"
  loc_14C0B75:     var_180 = (CVar(Me.TXTS_DATE) + CVar(CStr(var_90.Fields.Item(var_D4).Value)))
  loc_14C0B89:     var_1A0 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " + Space(1))
  loc_14C0BBC:     var_214 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_90.Fields.Item("V_NO").Value)))
  loc_14C0BD0:     var_234 = (var_214 + Space(1))
  loc_14C0C03:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtCr").Value)))
  loc_14C0C08:     var_9C = CStr(var_26C)
  loc_14C0C43:   End If
  loc_14C0C46:   Set var_270 = var_8C 
  loc_14C0C55:   var_270.AddNew var_C4, var_D4
  loc_14C0C79:   var_108 = CVar(var_88.Fields.Item("Name")) 'Address
  loc_14C0C87:   var_270.Collect = "ACCNAME"
  loc_14C0CB2:   var_130 = Format(var_A8, "0.00")
  loc_14C0CC4:   var_270.Collect = "OpBal"
  loc_14C0CF0:   var_130 = Format(var_B0, "0.00")
  loc_14C0CF9:   var_E4 = "clbal"
  loc_14C0D02:   var_270.Collect = var_E4
  loc_14C0D11:   var_D4 = CVar(var_98) 'String
  loc_14C0D1E:   var_270.Collect = "LastDrVNo"
  loc_14C0D26:   var_D4 = CVar(var_9C) 'String
  loc_14C0D33:   var_270.Collect = "LastCrVNo"
  loc_14C0D3B:   var_C4 = "GName"
  loc_14C0D47:   var_F8 = var_88.Fields
  loc_14C0D57:   var_108 = CVar(var_F8.Item(var_C4)) 'Address
  loc_14C0D5C:   var_D4 = "GroupName"
  loc_14C0D65:   var_270.Collect = var_D4
  loc_14C0D7B:   var_270.Update var_C4, var_D4
  loc_14C0D82:   Set var_270 = Nothing 
  loc_14C0D89:   var_88.MoveNext
  loc_14C0D8E:   GoTo loc_14C0573
  loc_14C0D91: End If
  loc_14C0DA5: If (var_8C.RecordCount <= 0) Then
  loc_14C0DAE:   Call 0.Method_arg_50 (var_110, var_108, var_D4, var_D4, var_130, 1)
  loc_14C0DBC:   var_130 = CVar(var_110) 'String
  loc_14C0DCF:   MsgBox("** No Records Found to Print **", &H40, var_130, var_140, CVar(Me.TXTS_DATE))
  loc_14C0DE4:   global_130 = 0
  loc_14C0DE7:   Exit Sub
  loc_14C0DE8: End If
  loc_14C0DF4: Call 0.Method_arg_10C (var_F8, global_130, 1, var_130)
  loc_14C0DFF: MemVar_1F921E4 = var_F8
  loc_14C0E1F: Call 0.Method_arg_64 (var_F8, CVar(var_8C), var_D4, var_E4)
  loc_14C0E27: Call 0.Method_arg_2C (1, 1)
  loc_14C0E34: Set var_88 = Nothing
  loc_14C0E3C: Set var_8C = Nothing
  loc_14C0E44: Set var_90 = Nothing
  loc_14C0E47: Exit Sub
  loc_14C0E48: ' Referenced from: 14C0194
  loc_14C0E56: Call 0.Method_arg_50 (var_110, 0)
  loc_14C0E6B: Proc_183_57_104AA84(var_110, "NonTrans")
  loc_14C0E77: Exit Sub
End Sub

Public Sub Proc_245_72_126F53C
  'Data Table: 58C0C8
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_230 As Variant
  Dim var_240 As String
  Dim var_2B0 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  loc_126EFF4: On Error Goto loc_126F509
  loc_126F00C: Set var_DC = CVar(CLng(0))(0)
  loc_126F030: Call Proc_245_64_F51054(CInt(0), CStr(var_EC))
  loc_126F044: If (var_F6 = 0) Then
  loc_126F04C:   global_130 = 0
  loc_126F04F:   Exit Sub
  loc_126F050: End If
  loc_126F065: Set var_DC = CVar(CLng(1))(0)
  loc_126F089: Call Proc_245_64_F51054(CInt(1), CStr(var_EC))
  loc_126F09D: If (var_F6 = 0) Then
  loc_126F0A5:   global_130 = 0
  loc_126F0A8:   Exit Sub
  loc_126F0A9: End If
  loc_126F0BE: Set var_DC = CVar(CLng(2))(0)
  loc_126F0E2: Call Proc_245_64_F51054(CInt(2), CStr(var_EC))
  loc_126F0F6: If (var_F6 = 0) Then
  loc_126F0FE:   global_130 = 0
  loc_126F101:   Exit Sub
  loc_126F102: End If
  loc_126F117: Set var_DC = CVar(CLng(0))(1)
  loc_126F135: Me.TXTS_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_126F15C: Set var_DC = CVar(CLng(1))(1)
  loc_126F16D: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_126F174: Set var_FC = Me.TXTE_DATE
  loc_126F17A: var_FC.Text = var_F4
  loc_126F1A3: If (Proc_183_48_F05F98(Me, global_130, var_F6, TXTS_DATE.DispID_41, global_130) = 0) Then
  loc_126F1AB:   global_130 = 0
  loc_126F1AE:   Exit Sub
  loc_126F1AF: End If
  loc_126F1BA: Set var_DC = Me.TEXT
  loc_126F1C0: Call 0.Method_Proc_245_72_126F53C0 (CInt(&HC), var_FC, global_130, var_F6)
  loc_126F1E9: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_126F1FD:   Set var_DC = Me.TEXT
  loc_126F203:   Call 0.Method_Proc_245_72_126F53C0 (CInt(&HC), var_FC, var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_126F20B:   TXTS_DATE.DispID_41 = var_FC.Tag
  loc_126F21B:   var_98 = global_130 & var_F4 & "'"
  loc_126F22F: Else
  loc_126F23D:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_126F243: End If
  loc_126F258: Set var_DC = CVar(CLng(2))(1)
  loc_126F285: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_126F2B2: Set var_DC = CVar(CLng(2))(2)
  loc_126F2C3: var_10C = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_126F2D2: var_8C = CStr(Trim(var_10C))
  loc_126F2FD: Proc_183_7_EB0C44(var_10C, CVar(Me.TXTS_DATE), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "))
  loc_126F316: var_150 = CVar(Me.TXTE_DATE) 'Address
  loc_126F31D: Proc_183_7_EB0C44(var_160, var_150)
  loc_126F36B: Proc_183_7_EB0C44(var_10C, CVar(Me.TXTS_DATE), "SELECT 1 AS TT,", var_2F0)
  loc_126F373: var_11C = -1 & var_10C 
  loc_126F377: var_B8 = " AS V_DATE,SUM(credit) AS CR,SUM(debit) AS DR,'OP' AS v_type,0 AS v_no,'' AS v_add,'' AS CHQ_NO,NULL AS CHQ_DATE,"
  loc_126F37C: var_130 = CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN ") & var_B8 
  loc_126F38B: Proc_183_7_EB0C44(var_150, CVar(Me.TXTS_DATE), var_130)
  loc_126F397: var_C8 = " AS CLG_DATE,'' AS NARRATION,MAX(PARTY_NAME) AS PARTYNAME,MAX(PARTY_LIST.ADD1) AS ADDRESS1,MAX(PARTY_LIST.ADD2) AS ADDRESS2,MAX(CITY_NAME) AS CITYNAME,'Opening Balance' AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE WHERE PARTY='"
  loc_126F3BE: Proc_183_7_EB0C44(var_1C0, CVar(Me.TXTS_DATE))
  loc_126F3E2: var_230 = var_DC & var_150 & var_C8 & CVar(var_8C) & "' AND CLG_DATE<" & var_1C0 & " AND CLG_DATE IS NOT NULL " & CVar(var_98) & " GROUP BY VIEWLEDGER.PARTY " 
  loc_126F3E6: var_240 = "UNION SELECT 2 AS TT,V_DATE,credit AS CR,debit AS DR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,MNARR+' '+NARR AS NARRATION,PARTY_NAME AS PARTYNAME,PARTY_LIST.ADD1 AS ADDRESS1,PARTY_LIST.ADD2 AS ADDRESS2,CITY_NAME AS CITYNAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE "
  loc_126F408: var_2B0 = var_230 & var_240 & CVar(CStr(var_F6 & var_10C & " AND " & var_DC & var_150 & " AND CLG_DATE IS NOT NULL")) & " " & CVar(var_98) 
  loc_126F415: var_F4 = CStr(var_2B0 & vbNullString)
  loc_126F41F: unk_58C10D.Execute var_F4, TXTS_DATE.DispID_41, 
  loc_126F42A: Set var_88 = var_DC
  loc_126F476: If (var_88.RecordCount <= 0) Then
  loc_126F47F:   Call 0.Method_arg_50 (var_F4)
  loc_126F4A0:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "), var_130)
  loc_126F4B5:   global_130 = 0
  loc_126F4B8:   Exit Sub
  loc_126F4B9: End If
  loc_126F4C5: Call 0.Method_arg_118 (var_DC)
  loc_126F4D0: MemVar_1F921E4 = var_DC
  loc_126F4F0: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_126F4F8: Call 0.Method_arg_2C (var_C8)
  loc_126F505: Set var_88 = Nothing
  loc_126F508: Exit Sub
  loc_126F509: ' Referenced from: 126EFF4
  loc_126F517: Call 0.Method_arg_50 (var_F4, 0)
  loc_126F52C: Proc_183_57_104AA84(var_F4, "Clg")
  loc_126F538: Exit Sub
  loc_126F539: VarIndexSt
End Sub

Public Sub Proc_245_73_11F8AA0
  'Data Table: 58C0C8
  Dim var_C8 As Long
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  loc_11F8624: On Error Goto loc_11F8A6D
  loc_11F863C: Set var_DC = CVar(CLng(0))(0)
  loc_11F8660: Call Proc_245_64_F51054(CInt(0), CStr(var_EC))
  loc_11F8674: If (var_F6 = 0) Then
  loc_11F867C:   global_130 = 0
  loc_11F867F:   Exit Sub
  loc_11F8680: End If
  loc_11F8695: Set var_DC = CVar(CLng(1))(0)
  loc_11F86B9: Call Proc_245_64_F51054(CInt(1), CStr(var_EC))
  loc_11F86CD: If (var_F6 = 0) Then
  loc_11F86D5:   global_130 = 0
  loc_11F86D8:   Exit Sub
  loc_11F86D9: End If
  loc_11F86EE: Set var_DC = CVar(CLng(2))(0)
  loc_11F8712: Call Proc_245_64_F51054(CInt(2), CStr(var_EC))
  loc_11F8726: If (var_F6 = 0) Then
  loc_11F872E:   global_130 = 0
  loc_11F8731:   Exit Sub
  loc_11F8732: End If
  loc_11F8747: Set var_DC = CVar(CLng(0))(1)
  loc_11F8765: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_11F878C: Set var_DC = CVar(CLng(1))(1)
  loc_11F879D: var_F4 = CStr(TXTS_DATE.DispID_41)
  loc_11F87A4: Set var_FC = Me.TXTE_DATE
  loc_11F87AA: var_FC.Text = var_F4
  loc_11F87D3: If (Proc_183_48_F05F98(Me, global_130, var_F6, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_11F87DB:   global_130 = 0
  loc_11F87DE:   Exit Sub
  loc_11F87DF: End If
  loc_11F87EA: Set var_DC = Me.TEXT
  loc_11F87F0: Call 0.Method_Proc_245_73_11F8AA00 (CInt(&HC), var_FC, global_130, var_F6)
  loc_11F8819: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_11F882D:   Set var_DC = Me.TEXT
  loc_11F8833:   Call 0.Method_Proc_245_73_11F8AA00 (CInt(&HC), var_FC, var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_11F883B:   TXTE_DATE.DispID_41 = var_FC.Tag
  loc_11F884B:   var_98 = global_130 & var_F4 & "'"
  loc_11F885F: Else
  loc_11F886D:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_11F8873: End If
  loc_11F8888: Set var_DC = CVar(CLng(2))(1)
  loc_11F88B5: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_11F88D5: var_C8 = 2
  loc_11F88E2: Set var_DC = CVar(CLng(2))(var_C8)
  loc_11F88F3: var_10C = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_11F891F: var_11C = CVar(" WHERE PARTY='" & CStr(Trim(var_10C)) & "' AND V_date BETWEEN ") 'String
  loc_11F8926: var_EC = CVar(Me.TXTS_DATE) 'Address
  loc_11F892D: Proc_183_7_EB0C44(var_10C, var_EC, var_11C)
  loc_11F8935: var_130 = var_F6 & var_10C 
  loc_11F894D: Proc_183_7_EB0C44(var_160, CVar(Me.TXTE_DATE))
  loc_11F8959: var_B8 = " AND CHQ_NO<> '' AND CHQ_NO IS NOT NULL AND CLG_DATE IS NULL"
  loc_11F8992: var_F4 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,PARTY_NAME,PARTY_LIST.ADD1,PARTY_LIST.ADD2,CITY_NAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE " & CStr(var_130 & " AND " & var_160 & var_B8)
  loc_11F89A9: unk_58C10D.Execute var_F4 & " " & var_98, var_EC, -1
  loc_11F89B4: Set var_88 = var_DC
  loc_11F89DA: If (var_88.RecordCount <= 0) Then
  loc_11F89E3:   Call 0.Method_arg_50 (var_F4, var_DC)
  loc_11F8A04:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_11F8A19:   global_130 = 0
  loc_11F8A1C:   Exit Sub
  loc_11F8A1D: End If
  loc_11F8A29: Call 0.Method_arg_114 (var_DC, global_130)
  loc_11F8A34: MemVar_1F921E4 = var_DC
  loc_11F8A54: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_11F8A5C: Call 0.Method_arg_2C (var_C8)
  loc_11F8A69: Set var_88 = Nothing
  loc_11F8A6C: Exit Sub
  loc_11F8A6D: ' Referenced from: 11F8624
  loc_11F8A7B: Call 0.Method_arg_50 (var_F4, 0)
  loc_11F8A90: Proc_183_57_104AA84(var_F4, "ClgNot")
  loc_11F8A9C: Exit Sub
End Sub

Public Sub Proc_245_74_13B2538(arg_C) '13B2538
  'Data Table: 58C0C8
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_1DA As Integer
  Dim var_1D8 As Variant
  Dim var_9A As Integer
  loc_13B1C20: On Error Goto loc_13B2508
  loc_13B1C38: Set var_E8 = CVar(CLng(0))(0)
  loc_13B1C5C: Call Proc_245_64_F51054(CInt(0), CStr(var_F8))
  loc_13B1C70: If (var_102 = 0) Then
  loc_13B1C78:   global_130 = 0
  loc_13B1C7B:   Exit Sub
  loc_13B1C7C: End If
  loc_13B1C91: Set var_E8 = CVar(CLng(1))(0)
  loc_13B1CB5: Call Proc_245_64_F51054(CInt(1), CStr(var_F8))
  loc_13B1CC9: If (var_102 = 0) Then
  loc_13B1CD1:   global_130 = 0
  loc_13B1CD4:   Exit Sub
  loc_13B1CD5: End If
  loc_13B1CEA: Set var_E8 = CVar(CLng(2))(0)
  loc_13B1D0E: Call Proc_245_64_F51054(CInt(2), CStr(var_F8))
  loc_13B1D22: If (var_102 = 0) Then
  loc_13B1D2A:   global_130 = 0
  loc_13B1D2D:   Exit Sub
  loc_13B1D2E: End If
  loc_13B1D43: Set var_E8 = CVar(CLng(0))(1)
  loc_13B1D61: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_13B1D88: Set var_E8 = CVar(CLng(1))(1)
  loc_13B1D99: var_100 = CStr(TXTS_DATE.DispID_41)
  loc_13B1DA0: Set var_108 = Me.TXTE_DATE
  loc_13B1DA6: var_108.Text = var_100
  loc_13B1DCF: If (Proc_183_48_F05F98(Me, global_130, var_102, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_13B1DD7:   global_130 = 0
  loc_13B1DDA:   Exit Sub
  loc_13B1DDB: End If
  loc_13B1DE6: Set var_E8 = Me.TEXT
  loc_13B1DEC: Call 0.Method_Proc_245_74_13B25380 (CInt(&HC), var_108, global_130, var_102)
  loc_13B1E15: If CBool(Trim(CVar(var_108)) <> vbNullString) Then
  loc_13B1E29:   Set var_E8 = Me.TEXT
  loc_13B1E2F:   Call 0.Method_Proc_245_74_13B25380 (CInt(&HC), var_108, var_100, " And VIEWLEDGER.LOGSite_Code='")
  loc_13B1E37:   TXTE_DATE.DispID_41 = var_108.Tag
  loc_13B1E47:   var_A0 = global_130 & var_100 & "'"
  loc_13B1E5B: Else
  loc_13B1E62:   var_100 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_13B1E69:   var_A0 = var_100 & "'"
  loc_13B1E6F: End If
  loc_13B1E7A: Set var_E8 = Me.TEXT
  loc_13B1E80: Call 0.Method_Proc_245_74_13B25380 (CInt(&HC), var_108)
  loc_13B1E88: var_F8 = CVar(var_108) 'Address
  loc_13B1EA9: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_13B1EBD:   Set var_E8 = Me.TEXT
  loc_13B1EC3:   Call 0.Method_Proc_245_74_13B25380 (CInt(&HC), var_108, var_100)
  loc_13B1ECB:   " And LEDGER.LOGSite_Code='" = var_108.Tag
  loc_13B1EDB:   var_A4 = var_102 & var_100 & "'"
  loc_13B1EEF: Else
  loc_13B1EFD:   var_A4 = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_13B1F03: End If
  loc_13B1F18: Set var_E8 = CVar(CLng(2))(1)
  loc_13B1F45: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_13B1F83: var_118 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_13B1F92: var_90 = CStr(Trim(var_118))
  loc_13B1FC5: unk_58C10D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "'", var_F8, -1
  loc_13B1FD0: Set var_88 = CVar(CLng(2))(2)
  loc_13B1FF4: If (var_88.RecordCount > 0) Then
  loc_13B2009:   var_E8 = var_88.Fields
  loc_13B2077:   If CBool((var_E8.Item("GroupNature").Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_13B208E:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B209C:     var_F8 = CVar(Me.TXTS_DATE) 'Address
  loc_13B20A3:     Proc_183_7_EB0C44(var_118, var_F8, CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<"), var_188)
  loc_13B20AB:     var_148 = -1 & var_118 
  loc_13B20BE:     var_168 = var_148 & " " & CVar(var_A0) 
  loc_13B20D5:     unk_58C10D.Execute CStr(var_168 & vbNullString), var_E8, var_E8
  loc_13B20E0:     Set var_8C = var_E8
  loc_13B2103:   Else
  loc_13B2117:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B211E:     var_118 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_dATE>=") 'String
  loc_13B212C:     Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, var_118, var_1D8)
  loc_13B2134:     var_128 = -1 & var_F8 
  loc_13B214C:     Proc_183_7_EB0C44(var_168, CVar(Me.TXTS_DATE), CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<") & " AND V_DATE<")
  loc_13B2154:     var_178 = var_E8 & var_168 
  loc_13B217E:     unk_58C10D.Execute CStr(var_178 & " " & CVar(var_A0) & vbNullString), TXTE_DATE.DispID_41, 
  loc_13B2189:     Set var_8C = var_E8
  loc_13B21AF:   End If
  loc_13B21AF: End If
  loc_13B21C3: If (var_8C.RecordCount > 0) Then
  loc_13B21D5:   var_E8 = var_8C.Fields
  loc_13B21E5:   var_F8 = CVar(var_E8.Item("OpBal")) 'Address
  loc_13B21EC:   Proc_183_3_E7D1C8(var_118)
  loc_13B21F8:   global_132 = CSng(var_118)
  loc_13B2208: Else
  loc_13B220E:   global_132 = CDbl(0)
  loc_13B2211: End If
  loc_13B2214: var_1DA = arg_C
  loc_13B221D: If (var_1DA = 1) Then
  loc_13B2234:   var_100 = "SELECT ISNULL(SUM(AMTDR),0) AS DEB,ISNULL(SUM(AMTCR),0) AS CRED,V_DATE from LEDGER WHERE SUBCODE='" & var_90
  loc_13B223B:   var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B2242:   var_F8 = CVar(Me.TXTS_DATE) 'Address
  loc_13B2249:   Proc_183_7_EB0C44(var_118, var_F8, var_128, var_1EC, -1)
  loc_13B2251:   var_148 = var_E8 & var_118 
  loc_13B2269:   Proc_183_7_EB0C44(var_178, CVar(Me.TXTE_DATE), var_148 & " AND ", var_1DA)
  loc_13B229B:   unk_58C10D.Execute CStr(global_132 & var_178 & " " & CVar(var_A4) & " GROUP BY V_DATE ORDER BY V_DATE"), global_132, var_F8
  loc_13B22A6:   Set var_88 = var_E8
  loc_13B22E2:   If (var_88.RecordCount <= 0) Then
  loc_13B22EB:     Call 0.Method_arg_50 (var_100)
  loc_13B230C:     MsgBox("No Records To Print....", &H40, CVar(var_100), var_128, var_148)
  loc_13B2321:     global_130 = 0
  loc_13B2327:   Else
  loc_13B2332:     var_118 = "Paper Setting"
  loc_13B2348:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_118, var_128, var_148)
  loc_13B2367:     Set var_108 = var_88
  loc_13B2370:     Set var_E8 = Me 
  loc_13B2380:     Call 0.Method_arg_170 (var_E8, var_108, global_132)
  loc_13B238B:     Set var_88 = var_108
  loc_13B2391:     var_9A = var_FA
  loc_13B23A0:     global_130 = 0
  loc_13B23A3:     GoTo loc_13B24F7
  loc_13B23A9:   Else
  loc_13B23BD:     var_100 = "SELECT V_TYPE,V_NO,V_ADD,V_SNO,PARTY,0 AS OPBAL,DEBIT AS DEB,CREDIT AS CRED,V_DATE,GROUPNATURE from VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE PARTY='" & var_90
  loc_13B23C4:     var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B23D2:     Proc_183_7_EB0C44(var_118, CVar(Me.TXTS_DATE), var_128, var_1EC, -1)
  loc_13B23DA:     var_148 = var_E8 & var_118 
  loc_13B23F2:     Proc_183_7_EB0C44(var_178, CVar(Me.TXTE_DATE), var_148 & " AND ", global_130)
  loc_13B23FE:     var_C4 = " "
  loc_13B240A:     var_D4 = CVar(var_A0) 'String
  loc_13B2424:     unk_58C10D.Execute CStr(var_9A & var_178 & var_C4 & var_D4 & vbNullString), var_FA, global_130
  loc_13B242F:     Set var_88 = var_E8
  loc_13B246B:     If (var_88.RecordCount <= 0) Then
  loc_13B2474:       Call 0.Method_arg_50 (var_100)
  loc_13B2495:       MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_148)
  loc_13B24AA:       global_130 = 0
  loc_13B24B0:     Else
  loc_13B24BC:       Call 0.Method_arg_C0 (var_E8)
  loc_13B24C7:       MemVar_1F921E4 = var_E8
  loc_13B24E7:       Call 0.Method_arg_64 (var_E8, CVar(var_88), var_C4)
  loc_13B24EF:       Call 0.Method_arg_2C (var_D4)
  loc_13B24F7:     End If
  loc_13B24F7:   End If
  loc_13B24F7:   ' Referenced from:   13B23A3
  loc_13B24F7: End If
  loc_13B24FC: Set var_88 = Nothing
  loc_13B2504: Set var_8C = Nothing
  loc_13B2507: Exit Sub
  loc_13B2508: ' Referenced from: 13B1C20
  loc_13B2516: Call 0.Method_arg_50 (var_100, 0)
  loc_13B252B: Proc_183_57_104AA84(var_100, "DailySumm")
  loc_13B2537: Exit Sub
End Sub

Public Sub Proc_245_75_1508E20(arg_C) '1508E20
  'Data Table: 58C0C8
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_1507FA4: On Error Goto loc_1508DEF
  loc_1507FBC: Set var_E4 = CVar(CLng(0))(0)
  loc_1507FE0: Call Proc_245_64_F51054(CInt(0), CStr(var_F4))
  loc_1507FF4: If (var_FE = 0) Then
  loc_1507FFC:   global_130 = 0
  loc_1507FFF:   Exit Sub
  loc_1508000: End If
  loc_1508015: Set var_E4 = CVar(CLng(1))(0)
  loc_1508039: Call Proc_245_64_F51054(CInt(1), CStr(var_F4))
  loc_150804D: If (var_FE = 0) Then
  loc_1508055:   global_130 = 0
  loc_1508058:   Exit Sub
  loc_1508059: End If
  loc_150806E: Set var_E4 = CVar(CLng(2))(0)
  loc_1508092: Call Proc_245_64_F51054(CInt(2), CStr(var_F4))
  loc_15080A6: If (var_FE = 0) Then
  loc_15080AE:   global_130 = 0
  loc_15080B1:   Exit Sub
  loc_15080B2: End If
  loc_15080C7: Set var_E4 = CVar(CLng(0))(1)
  loc_15080E5: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_150810C: Set var_E4 = CVar(CLng(1))(1)
  loc_150812A: Me.TXTE_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_1508153: If (Proc_183_48_F05F98(Me, global_130, var_FE, TXTE_DATE.DispID_41, global_130) = 0) Then
  loc_150815B:   global_130 = 0
  loc_150815E:   Exit Sub
  loc_150815F: End If
  loc_1508174: Set var_E4 = CVar(CLng(2))(1)
  loc_150819B: Set var_104 = Me.TXTACC_CODE
  loc_15081A1: var_104.Text = CStr(Trim(CVar(CStr(TXTE_DATE.DispID_41))))
  loc_15081CE: Set var_E4 = CVar(CLng(2))(2)
  loc_15081EE: var_90 = CStr(Trim(CVar(CStr(TXTACC_CODE.DispID_41))))
  loc_1508212: Set var_E4 = CVar(CLng(4))(2)
  loc_1508245: If CBool(Trim(CVar(CStr(TXTACC_CODE.DispID_41))) <> vbNullString) Then
  loc_1508262:   Set var_E4 = CVar(CLng(4))(2)
  loc_1508273:   var_114 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_150828F:   var_A0 = CStr(" And VIEWLEDGER.Site_Code='" & Trim(var_114) & "'")
  loc_15082A5: Else
  loc_15082B3:   var_A0 = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_15082B9: End If
  loc_15082C6: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGER.SITE_CODE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_15082D6: Proc_183_7_EB0C44(var_114, CVar(Me.TXTS_DATE), var_B0, var_204, -1, var_E4)
  loc_15082DE: var_124 = global_130 & var_114 
  loc_15082E7: var_144 = var_124 & " AND " 
  loc_15082F6: Proc_183_7_EB0C44(var_174, CVar(Me.TXTE_DATE), var_144, var_FE)
  loc_150832D: var_1E4 = TXTE_DATE.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_1508331: var_FC = CStr(var_1E4)
  loc_150833B: unk_58C10D.Execute var_FC, global_130, var_FE
  loc_1508346: Set var_88 = var_E4
  loc_1508380: If (var_88.RecordCount <= 0) Then
  loc_1508389:   Call 0.Method_arg_50 (var_FC)
  loc_15083AA:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_15083BF:   global_130 = 0
  loc_15083C2:   Exit Sub
  loc_15083C3: End If
  loc_15083D3: Set var_E4 = New
  loc_15083E2: Call 0.Method_arg_1B0 (var_E4, var_104)
  loc_15083ED: Set var_8C = var_E4
  loc_15083F6: Set var_8C = var_104
  loc_1508400: ' Referenced from: 1508C70
  loc_1508406: var_F6 = Me.Recordset15.EOF
  loc_150840F: If Not(var_F6) Then
  loc_1508415:   Set var_20C = var_8C 
  loc_1508532:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1508537:   var_94 = CStr(var_254)
  loc_15085F0:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_1508621:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_1508626:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_1508680:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_15086B2:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_15086B7:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_15086E1:   var_C0 = vbNullString
  loc_15086F4:   var_B0 = (var_94 = vbNullString)
  loc_1508703:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_1508740:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_150876B:   var_20C.AddNew var_B0, var_C0
  loc_1508798:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("V_ADD")), global_130)) 'String
  loc_15087A5:   var_20C.Collect = "V_ADD"
  loc_15087D3:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_15087E1:   var_20C.Collect = "V_NO"
  loc_15087FC:   var_20C.Collect = "DOCNO"
  loc_1508829:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_1508841:   var_20C.Collect = "Name"
  loc_1508891:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_15088BA:     Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_15088D4:     If (var_114 > 0) Then
  loc_150891A:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_1508922:       var_164 = ("To " + var_144)
  loc_1508930:       var_20C.Collect = "Name"
  loc_1508948:     Else
  loc_150898B:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_1508993:       var_164 = ("By " + var_144)
  loc_15089A1:       var_20C.Collect = "Name"
  loc_15089B6:     End If
  loc_15089B6:   End If
  loc_15089E1:   var_114 = "dd/MMM/yyyy"
  loc_1508A03:   var_20C.Collect = "V_DATE"
  loc_1508A33:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_1508A41:   var_20C.Collect = "Credit"
  loc_1508A6B:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_1508A79:   var_20C.Collect = "Debit"
  loc_1508AA3:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_1508AB1:   var_20C.Collect = "V_Type"
  loc_1508AE2:   Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_1508AF4:   var_20C.Collect = "V_SNo"
  loc_1508B22:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_1508B30:   var_20C.Collect = "mNarr"
  loc_1508B5A:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1508B68:   var_20C.Collect = "NARR"
  loc_1508B9B:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1508BA1:   var_124 = Trim(var_114)
  loc_1508BBD:   If CBool(var_124 <> vbNullString) Then
  loc_1508BDF:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_1508BED:     var_20C.Collect = "Chq_No"
  loc_1508BF8:   End If
  loc_1508C27:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1508C49:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1508C57:     var_20C.Collect = "Chq_Date"
  loc_1508C62:   End If
  loc_1508C64:   Set var_20C = Nothing 
  loc_1508C6B:   var_88.MoveNext
  loc_1508C70:   GoTo loc_1508400
  loc_1508C73: End If
  loc_1508C87: If (var_8C.RecordCount > 0) Then
  loc_1508C8D:   var_8C.MoveFirst
  loc_1508C92: End If
  loc_1508C95: var_256 = arg_C
  loc_1508C9E: If (var_256 = 1) Then
  loc_1508CA7:   var_C0 = "Paper Setting"
  loc_1508CBC:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1508CC2:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_1508CDA:   var_D0 = 1
  loc_1508CE7:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_1508D0A:   Set var_210 = var_8C
  loc_1508D23:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, TXTE_DATE.DispID_41, var_256)
  loc_1508D2E:   Set var_8C = var_210
  loc_1508D34:   var_9A = var_F6
  loc_1508D4B:   global_130 = 0
  loc_1508D4E:   GoTo loc_1508DDE
  loc_1508D54: Else
  loc_1508D5D:   var_FC = MemVar_1F923B0 & "\FaJRNL.ttx"
  loc_1508D6A:   Set var_E4 = var_8C 
  loc_1508D76:   var_F6 = CreateFieldDefFile(var_E4, var_FC, &HFF, global_130, var_9A, var_F4)
  loc_1508D89:   var_268 = CVar(var_F6) 'Variant
  loc_1508DA3:   Call 0.Method_arg_C4 (var_E4, var_F6, var_F4, 1)
  loc_1508DAE:   MemVar_1F921E4 = var_E4
  loc_1508DCE:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0)
  loc_1508DD6:   Call 0.Method_arg_2C (1, CVar(var_88.Fields.Item("V_NO")))
  loc_1508DDE: End If
  loc_1508DDE: ' Referenced from: 1508D4E
  loc_1508DE3: Set var_88 = Nothing
  loc_1508DEB: Set var_8C = Nothing
  loc_1508DEE: Exit Sub
  loc_1508DEF: ' Referenced from: 1507FA4
  loc_1508DFD: Call 0.Method_arg_50 (var_FC, 0)
  loc_1508E12: Proc_183_57_104AA84(var_FC, "JournalBook")
  loc_1508E1E: Exit Sub
End Sub

Public Sub Proc_245_76_1930ABC(arg_C) '1930ABC
  'Data Table: 58C0C8
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_14C As String
  Dim var_154 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_AC As Double
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_110 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_214 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Double
  Dim var_94 As Recordset15
  Dim var_D4 As Double
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_E8 As Integer
  Dim var_EA As Integer
  Dim var_CC As Double
  Dim Me As Recordset15
  Dim var_238 As Fields15
  Dim var_2A4 As Variant
  Dim var_234 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2A6 As Integer
  Dim var_DE As Integer
  loc_192DEA0: On Error Goto loc_1930A8A
  loc_192DEB8: Set var_134 = CVar(CLng(0))(0)
  loc_192DEDC: Call Proc_245_64_F51054(CInt(0), CStr(var_144))
  loc_192DEF0: If (var_14E = 0) Then
  loc_192DEF8:   global_130 = 0
  loc_192DEFB:   Exit Sub
  loc_192DEFC: End If
  loc_192DF11: Set var_134 = CVar(CLng(1))(0)
  loc_192DF35: Call Proc_245_64_F51054(CInt(1), CStr(var_144))
  loc_192DF49: If (var_14E = 0) Then
  loc_192DF51:   global_130 = 0
  loc_192DF54:   Exit Sub
  loc_192DF55: End If
  loc_192DF6A: Set var_134 = CVar(CLng(2))(0)
  loc_192DF8E: Call Proc_245_64_F51054(CInt(2), CStr(var_144))
  loc_192DFA2: If (var_14E = 0) Then
  loc_192DFAA:   global_130 = 0
  loc_192DFAD:   Exit Sub
  loc_192DFAE: End If
  loc_192DFC3: Set var_134 = CVar(CLng(3))(0)
  loc_192DFE7: Call Proc_245_64_F51054(CInt(3), CStr(var_144))
  loc_192DFFB: If (var_14E = 0) Then
  loc_192E003:   global_130 = 0
  loc_192E006:   Exit Sub
  loc_192E007: End If
  loc_192E01C: Set var_134 = CVar(CLng(4))(0)
  loc_192E040: Call Proc_245_64_F51054(CInt(4), CStr(var_144))
  loc_192E054: If (var_14E = 0) Then
  loc_192E05C:   global_130 = 0
  loc_192E05F:   Exit Sub
  loc_192E060: End If
  loc_192E075: Set var_134 = CVar(CLng(0))(1)
  loc_192E093: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_192E0BA: Set var_134 = CVar(CLng(1))(1)
  loc_192E0CB: var_14C = CStr(TXTS_DATE.DispID_41)
  loc_192E0D2: Set var_154 = Me.TXTE_DATE
  loc_192E0D8: var_154.Text = var_14C
  loc_192E101: If (Proc_183_48_F05F98(Me, global_130, var_14E, TXTE_DATE.DispID_41, global_130, var_14E, TXTE_DATE.DispID_41) = 0) Then
  loc_192E109:   global_130 = 0
  loc_192E10C:   Exit Sub
  loc_192E10D: End If
  loc_192E118: Set var_134 = Me.TEXT
  loc_192E11E: Call 0.Method_Proc_245_76_1930ABC0 (CInt(&HC), var_154, global_130, global_130, var_14E)
  loc_192E126: var_144 = CVar(var_154) 'Address
  loc_192E147: If CBool(Trim(var_144) <> vbNullString) Then
  loc_192E15B:   Set var_134 = Me.TEXT
  loc_192E161:   Call 0.Method_Proc_245_76_1930ABC0 (CInt(&HC), var_154, var_14C, " And VIEWLEDGER.LOGSite_Code='")
  loc_192E169:   TXTE_DATE.DispID_41 = var_154.Tag
  loc_192E179:   var_F0 = global_130 & var_14C & "'"
  loc_192E18D: Else
  loc_192E19B:   var_F0 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_192E1A1: End If
  loc_192E1B6: Set var_134 = CVar(CLng(4))(1)
  loc_192E1E3: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_192E221: var_164 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_192E230: var_B0 = CStr(Trim(var_164))
  loc_192E242: var_A0 = vbNullString
  loc_192E248: var_A4 = vbNullString
  loc_192E275: unk_58C10D.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_144, -1
  loc_192E280: Set var_88 = CVar(CLng(4))(2)
  loc_192E2A4: If (var_88.RecordCount > 0) Then
  loc_192E2B6:   var_134 = var_88.Fields
  loc_192E2C6:   var_144 = CVar(var_134.Item("RepToBy")) 'Address
  loc_192E2CF:   var_BC = Proc_183_2_E5A304(var_144, var_134, CDbl(0))
  loc_192E2D8: End If
  loc_192E2FC: unk_58C10D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_144, -1
  loc_192E307: Set var_88 = var_134
  loc_192E32B: If (var_88.RecordCount <= 0) Then
  loc_192E32E:   Exit Sub
  loc_192E32F: End If
  loc_192E341: var_134 = var_88.Fields
  loc_192E349: var_154 = var_134.Item("GroupNature")
  loc_192E3AF: If CBool((var_154.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_192E3B6:   var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192E3BD:   Proc_183_7_EB0C44(var_164, var_144, var_134)
  loc_192E3C8:   var_130 = 0
  loc_192E3E5:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_192E405:   var_1B4 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_164 & " " & CVar(var_F0) 
  loc_192E413:   unk_58C10D.Execute CStr(var_1B4), var_1C4, -1
  loc_192E41B:   var_134 = var_134.Fields
  loc_192E423:   var_130 = var_154.Item(var_154)
  loc_192E42B:   var_180 = var_180.Value
  loc_192E434:   var_AC = CSng(var_1D4)
  loc_192E45D: Else
  loc_192E460:   var_100 = MemVar_1F920F4
  loc_192E468:   Proc_183_7_EB0C44(var_144, var_100, var_AC)
  loc_192E478:   Proc_183_7_EB0C44(var_1B4, CVar(Me.TXTS_DATE), var_1D4)
  loc_192E483:   var_214 = 0
  loc_192E4A0:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_192E4A7:   var_164 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_192E4B1:   var_110 = " AND V_DATE<"
  loc_192E4BD:   var_1C4 = var_164 & var_144 & var_110 & var_1B4 
  loc_192E4DE:   unk_58C10D.Execute CStr(var_1C4 & " " & CVar(var_F0)), var_204, -1
  loc_192E4E6:   var_134 = var_134.Fields
  loc_192E4EE:   var_214 = var_154.Item(var_154)
  loc_192E4F6:   var_180 = var_180.Value
  loc_192E4FF:   var_AC = CSng(var_224)
  loc_192E52B: End If
  loc_192E53B: Set var_134 = New
  loc_192E54A: Call 0.Method_arg_1B8 (var_134, var_154, var_AC)
  loc_192E555: Set var_8C = var_134
  loc_192E55E: Set var_8C = var_154
  loc_192E56F: If (var_AC <> CDbl(0)) Then
  loc_192E57D:   Me.Recordset15.AddNew var_100, var_110
  loc_192E586:   var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192E594:   var_8C.Collect = "V_DATE"
  loc_192E5A3:   If (var_AC < CDbl(0)) Then
  loc_192E5A6:     var_110 = "OPENING BALANCE"
  loc_192E5B5:     var_8C.Collect = "Name"
  loc_192E5BE:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_192E5CC:     var_8C.Collect = "cr"
  loc_192E5D4:   Else
  loc_192E5D4:     var_110 = "OPENING BALANCE"
  loc_192E5E3:     var_8C.Collect = "Name1"
  loc_192E5EC:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_192E5F1:     var_100 = "ADJAMT"
  loc_192E5FA:     var_8C.Collect = var_100
  loc_192E5FF:   End If
  loc_192E60A:   var_8C.Update var_100, var_110
  loc_192E60F: End If
  loc_192E623: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.CREDIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_192E631: var_144 = CVar(Me.TXTS_DATE) 'Address
  loc_192E638: Proc_183_7_EB0C44(var_164, var_144, CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "), var_234, -1, var_134, var_110)
  loc_192E658: Proc_183_7_EB0C44(var_1C4, CVar(Me.TXTE_DATE), var_110 & var_164 & " And ", var_110, var_110)
  loc_192E67C: var_224 = var_144 & var_1C4 & " AND CREDIT>0  " & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO" 
  loc_192E68A: unk_58C10D.Execute CStr(var_224), var_224, var_14E
  loc_192E695: Set var_90 = var_134
  loc_192E6D1: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.DEBIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_192E6E6: Proc_183_7_EB0C44(var_164, CVar(Me.TXTS_DATE), CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "), var_234)
  loc_192E6EE: var_194 = -1 & var_164 
  loc_192E706: Proc_183_7_EB0C44(var_1C4, CVar(Me.TXTE_DATE), " AND CREDIT>0  " & var_164 & " And ")
  loc_192E712: var_110 = " AND DEBIT>0  "
  loc_192E738: unk_58C10D.Execute CStr(var_134 & var_1C4 & var_110 & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO"), TXTE_DATE.DispID_41, 
  loc_192E743: Set var_94 = var_134
  loc_192E77A: If Not(var_90.EOF) Then
  loc_192E7A9:   var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_192E7B6: End If
  loc_192E7C5: If Not(var_94.EOF) Then
  loc_192E7CE:   var_100 = "V_DATE"
  loc_192E7F4:   var_D4 = CDate(var_94.Fields.Item(var_100).Value)
  loc_192E801: End If
  loc_192E803: var_E0 = 0
  loc_192E808: var_E2 = 0
  loc_192E80D: var_E4 = 0
  loc_192E812: var_E6 = 0
  loc_192E817: var_E8 = 0
  loc_192E81C: var_EA = 0
  loc_192E822: var_C0 = vbNullString
  loc_192E828: var_C4 = vbNullString
  loc_192E842: var_CC = CDate(Me.TXTS_DATE.Text)
  loc_192E84B: ' Referenced from: 19307E3
  loc_192E869: If Not((var_90.EOF And var_94.EOF)) Then
  loc_192E87B:   If ((var_D4 = var_CC) Or (var_DC = var_CC)) Then
  loc_192E889:     var_8C.AddNew var_100, var_110
  loc_192E895:     If (var_D4 = var_CC) Then
  loc_192E8B7:       var_144 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_192E8C5:       var_8C.Collect = "V_Type"
  loc_192E8D3:       var_110 = CDate(var_D4)
  loc_192E8E1:       var_8C.Collect = "V_DATE"
  loc_192E905:       var_144 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_192E913:       var_8C.Collect = "V_NO"
  loc_192E93D:       var_144 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_192E94B:       var_8C.Collect = "V_SNo"
  loc_192E9C5:       var_238 = Me.Fields
  loc_192EA6F:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_192EA74:       var_B4 = CStr(var_2A4)
  loc_192EB2D:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192EB5E:       var_234 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_192EB63:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_192EBBD:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192EBEF:       var_1C4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_192EBF4:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_192EC40:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_192EC7D:       var_1D4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_192ECAD:       var_8C.Collect = "DOCNO"
  loc_192ECC6:       If (((var_E0 = 0) Or (var_E4 = 0)) Or (var_E8 = 0)) Then
  loc_192ECF3:         var_144 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_192ED07:         var_14C = Proc_183_2_E5A304(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144, var_144, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144)
  loc_192ED1C:         If (var_14C <> vbNullString) Then
  loc_192ED5F:           var_1A4 = (var_E8 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_CC, var_EA))))
  loc_192ED68:           var_1B4 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_192ED97:           var_130 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("ChqDate")), Str(CVar(var_94.Fields.Item("V_NO"))), var_E6)) 'String
  loc_192ED9A:           var_1D4 = (var_E4 + var_130)
  loc_192ED9F:           var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_192EDBF:         End If
  loc_192EDFB:         var_194 = (var_E2 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("mNarr")), CVar(var_C0)))))
  loc_192EE27:         var_1B4 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("NARR")))) 'String
  loc_192EE2D:         var_1C4 = Trim(var_1B4)
  loc_192EE35:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_192EE3A:         var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_192EE92:         If (Len(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_192EEBD:           var_164 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) 'String
  loc_192EECA:           var_8C.Collect = "Name"
  loc_192EF26:           var_8C.Collect = "cr"
  loc_192EF3F:           If (var_BC = "Yes") Then
  loc_192EF6A:             var_164 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")), Format(CVar(var_94.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_192EF8D:             var_1A4 = ("By " + Left(Trim(var_164), &H2F))
  loc_192EF9B:             var_8C.Collect = "Name"
  loc_192EFB0:           End If
  loc_192EFCF:           var_120 = CVar(var_AC) 'Double
  loc_192EFFA:           var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192EFFF:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192F010:           var_E8 = &HFF
  loc_192F015:           var_E4 = &HFF
  loc_192F01B:         Else
  loc_192F03A:           Set var_134 = CVar(CLng(2))(1)
  loc_192F077:           If CBool((var_E4 = 0) And (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes")) Then
  loc_192F080:             If (var_E8 = 0) Then
  loc_192F0BE:               var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_192F0D0:               var_8C.Collect = "cr"
  loc_192F100:               var_120 = CVar(var_AC) 'Double
  loc_192F12B:               var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192F130:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192F13F:               var_110 = "As Per Detail"
  loc_192F14E:               var_8C.Collect = "Name"
  loc_192F155:               var_E8 = &HFF
  loc_192F16D:               Set var_134 = CVar(CLng(2))(1)
  loc_192F1A0:               If (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes") Then
  loc_192F1B0:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_192F224:                 unk_58C10D.Execute CStr(var_110 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_192F22F:                 Set var_98 = var_238
  loc_192F251:               End If
  loc_192F254:             Else
  loc_192F263:               If Not(var_98.EOF) Then
  loc_192F290:                 var_110 = 0
  loc_192F2A2:                 If (var_98.Fields.Item("Debit").Value > var_110) Then
  loc_192F2CF:                   var_120 = "Debit"
  loc_192F2F2:                   Proc_183_4_EABBA8(var_1C4, CVar(var_98.Fields.Item(var_120)), var_238, var_E8, var_110)
  loc_192F31C:                   var_194 = (1 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_192F325:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_192F33B:                   var_1D4 = CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_192F33E:                   var_1E4 = (var_120 + var_1D4)
  loc_192F347:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_192F355:                   var_8C.Collect = "Name"
  loc_192F384:                 Else
  loc_192F3D1:                   Proc_183_4_EABBA8(var_1C4, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_192F3FB:                   var_194 = (CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))))
  loc_192F404:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_192F41D:                   var_1E4 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC)))
  loc_192F426:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_192F434:                   var_8C.Collect = "Name"
  loc_192F460:                 End If
  loc_192F463:                 var_98.MoveNext
  loc_192F468:               End If
  loc_192F479:               If (var_98.EOF = &HFF) Then
  loc_192F47E:                 var_E4 = &HFF
  loc_192F481:               End If
  loc_192F481:             End If
  loc_192F484:           Else
  loc_192F4BC:             var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_192F4CA:             var_8C.Collect = "Name"
  loc_192F517:             var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_192F529:             var_8C.Collect = "cr"
  loc_192F559:             var_120 = CVar(var_AC) 'Double
  loc_192F584:             var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_192F589:             var_AC = CSng(Trim(Mid(var_C0, 1, 36)))
  loc_192F5C1:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_192F5CF:             var_E8 = &HFF
  loc_192F5D4:             var_E4 = &HFF
  loc_192F5D7:           End If
  loc_192F5D7:         End If
  loc_192F5EF:         If (((Len(var_C0) <= 0) And (var_E4 = &HFF)) And (var_E8 = &HFF)) Then
  loc_192F5F4:           var_E0 = 0
  loc_192F5F9:           var_E4 = 0
  loc_192F5FE:           var_E8 = 0
  loc_192F604:           var_94.MoveNext
  loc_192F618:           If Not(var_94.EOF) Then
  loc_192F647:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_192F657:           Else
  loc_192F673:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192F67D:           End If
  loc_192F67D:         End If
  loc_192F680:       Else
  loc_192F694:         var_C0 = CStr(Trim(var_C0))
  loc_192F6D2:         var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_192F6E0:         var_8C.Collect = "Name"
  loc_192F731:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_192F736:           var_E0 = 0
  loc_192F73B:           var_E4 = 0
  loc_192F740:           var_E8 = 0
  loc_192F746:           var_94.MoveNext
  loc_192F75A:           If Not(var_94.EOF) Then
  loc_192F789:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_192F799:           Else
  loc_192F7B5:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_192F7BF:           End If
  loc_192F7BF:         End If
  loc_192F7BF:       End If
  loc_192F7BF:     End If
  loc_192F7C6:     If (var_DC = var_CC) Then
  loc_192F7E8:       var_144 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_192F7F6:       var_8C.Collect = "vType"
  loc_192F820:       var_144 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_192F82E:       var_8C.Collect = "VNo"
  loc_192F83C:       var_110 = CDate(var_DC)
  loc_192F84A:       var_8C.Collect = "V_DATE"
  loc_192F86E:       var_144 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_192F87C:       var_8C.Collect = "VSno"
  loc_192F8F6:       var_238 = Me.Fields
  loc_192F9A0:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_192F9A5:       var_B8 = CStr(var_2A4)
  loc_192FA5E:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192FA8F:       var_234 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_192FA94:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_192FAEE:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192FB20:       var_1C4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_192FB25:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_192FB71:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_192FBAE:       var_1D4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_192FBDE:       var_8C.Collect = "DocNo1"
  loc_192FBF7:       If (((var_E2 = 0) Or (var_E6 = 0)) Or (var_EA = 0)) Then
  loc_192FC24:         var_144 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_192FC38:         var_14C = Proc_183_2_E5A304(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, var_144)
  loc_192FC4D:         If (var_14C <> vbNullString) Then
  loc_192FC90:           var_1A4 = (var_E8 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D4, var_D4))))
  loc_192FC99:           var_1B4 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_192FCC8:           var_130 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("ChqDate")), Str(CVar(var_90.Fields.Item("V_NO"))), var_E4)) 'String
  loc_192FCCB:           var_1D4 = (var_E0 + var_130)
  loc_192FCD0:           var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_192FCF0:         End If
  loc_192FD2C:         var_194 = (CVar(var_90.Fields.Item("V_NO")) + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), CVar(var_C4)))))
  loc_192FD58:         var_1B4 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR")))) 'String
  loc_192FD5E:         var_1C4 = Trim(var_1B4)
  loc_192FD66:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_192FD6B:         var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_192FDC3:         If (Len(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_192FDE5:           var_144 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_192FDF3:           var_8C.Collect = "Name1"
  loc_192FE4B:           var_8C.Collect = "ADJAMT"
  loc_192FE64:           If (var_BC = "Yes") Then
  loc_192FE8F:             var_164 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), Format(CVar(var_90.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_192FEB2:             var_1A4 = ("To " + Left(Trim(var_164), &H2F))
  loc_192FEC0:             var_8C.Collect = "Name1"
  loc_192FED5:           End If
  loc_192FEF4:           var_120 = CVar(var_AC) 'Double
  loc_192FF1F:           var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_192FF24:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_192FF37:           var_EA = &HFF
  loc_192FF3C:           var_E6 = &HFF
  loc_192FF42:         Else
  loc_192FF61:           Set var_134 = CVar(CLng(2))(1)
  loc_192FF9E:           If CBool((var_E6 = 0) And (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes")) Then
  loc_192FFA7:             If (var_EA = 0) Then
  loc_192FFE5:               var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_192FFF7:               var_8C.Collect = "ADJAMT"
  loc_1930027:               var_120 = CVar(var_AC) 'Double
  loc_1930052:               var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_1930057:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1930068:               var_110 = "As Per Detail"
  loc_1930077:               var_8C.Collect = "Name1"
  loc_193007E:               var_EA = &HFF
  loc_1930096:               Set var_134 = CVar(CLng(2))(1)
  loc_19300C9:               If (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes") Then
  loc_19300D9:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_1930143:                 var_14C = CStr(var_110 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)
  loc_193014D:                 unk_58C10D.Execute var_14C, var_1B4, -1
  loc_1930158:                 Set var_9C = var_238
  loc_193017A:               End If
  loc_193017D:             Else
  loc_193018C:               If Not(var_9C.EOF) Then
  loc_19301B9:                 var_110 = 0
  loc_19301CB:                 If (var_9C.Fields.Item("Debit").Value > var_110) Then
  loc_19301F8:                   var_120 = "Debit"
  loc_193021B:                   Proc_183_4_EABBA8(var_1C4, CVar(var_9C.Fields.Item(var_120)), var_238, var_EA, var_110)
  loc_1930245:                   var_194 = (1 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_193024E:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_1930264:                   var_1D4 = CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_1930267:                   var_1E4 = (var_120 + var_1D4)
  loc_1930270:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_193027E:                   var_8C.Collect = "Name1"
  loc_19302AD:                 Else
  loc_19302FA:                   Proc_183_4_EABBA8(var_1C4, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_1930324:                   var_194 = (CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))))
  loc_193032D:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_1930346:                   var_1E4 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC)))
  loc_193034F:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_193035D:                   var_8C.Collect = "Name1"
  loc_1930389:                 End If
  loc_193038C:                 var_9C.MoveNext
  loc_1930391:               End If
  loc_19303A2:               If (var_9C.EOF = &HFF) Then
  loc_19303A7:                 var_E6 = &HFF
  loc_19303AA:               End If
  loc_19303AA:             End If
  loc_19303AD:           Else
  loc_19303E5:             var_1A4 = (Space(2) + Trim(Mid(var_C4, 1, 36)))
  loc_19303F3:             var_8C.Collect = "Name1"
  loc_193042E:             var_C4 = CStr(Trim(Mid(var_C4, &H25, 510)))
  loc_1930475:             var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_1930487:             var_8C.Collect = "ADJAMT"
  loc_19304B7:             var_120 = CVar(var_AC) 'Double
  loc_19304C5:             var_110 = "0.00"
  loc_19304E2:             var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), var_110))
  loc_19304E7:             var_AC = CSng(Trim(Mid(var_C4, 1, 36)))
  loc_19304FA:             var_EA = &HFF
  loc_19304FF:             var_E6 = &HFF
  loc_1930502:           End If
  loc_1930502:         End If
  loc_193051A:         If (((Len(var_C4) <= 0) And (var_E6 = &HFF)) And (var_EA = &HFF)) Then
  loc_193051F:           var_E2 = 0
  loc_1930524:           var_E6 = 0
  loc_1930529:           var_EA = 0
  loc_193052F:           var_90.MoveNext
  loc_1930543:           If Not(var_90.EOF) Then
  loc_1930572:             var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_1930582:           Else
  loc_193059E:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_19305A8:           End If
  loc_19305A8:         End If
  loc_19305AB:       Else
  loc_19305BF:         var_C4 = CStr(Trim(var_C4))
  loc_19305F5:         var_194 = Trim(Mid(var_C4, 1, 36))
  loc_19305FD:         var_1A4 = (Space(2) + var_194)
  loc_193060B:         var_8C.Collect = "Name1"
  loc_193063D:         var_174 = Trim(Mid(var_C4, &H25, 510))
  loc_193065C:         If (Len(CStr(var_174)) <= 0) Then
  loc_1930661:           var_E2 = 0
  loc_1930666:           var_E6 = 0
  loc_193066B:           var_EA = 0
  loc_1930671:           var_90.MoveNext
  loc_193067C:           var_146 = var_90.EOF
  loc_1930685:           If Not(var_146) Then
  loc_193068E:             var_100 = "V_DATE"
  loc_19306B4:             var_DC = CDate(var_90.Fields.Item(var_100).Value)
  loc_19306C4:           Else
  loc_19306E0:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_19306EA:           End If
  loc_19306EA:         End If
  loc_19306EA:       End If
  loc_19306EA:     End If
  loc_19306F5:     var_8C.Update var_100, var_110
  loc_19306FD:   Else
  loc_1930704:     If (var_D4 <= var_DC) Then
  loc_1930710:       If (var_D4 = CDate("12:00:00 AM")) Then
  loc_1930716:         var_CC = var_DC
  loc_193071C:       Else
  loc_193071F:         var_CC = var_D4
  loc_1930722:       End If
  loc_1930725:     Else
  loc_193072E:       If (var_DC = CDate("12:00:00 AM")) Then
  loc_1930734:         var_CC = var_D4
  loc_193073A:       Else
  loc_193073D:         var_CC = var_DC
  loc_1930740:       End If
  loc_1930740:     End If
  loc_1930747:     If (var_AC <> CDbl(0)) Then
  loc_1930755:       var_8C.AddNew var_100, var_110
  loc_193075D:       var_110 = CDate(var_CC)
  loc_193076B:       var_8C.Collect = "V_DATE"
  loc_1930777:       If (var_AC < CDbl(0)) Then
  loc_193077A:         var_110 = "OPENING BALANCE"
  loc_1930789:         var_8C.Collect = "Name"
  loc_1930792:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_19307A0:         var_8C.Collect = "cr"
  loc_19307A8:       Else
  loc_19307A8:         var_110 = "OPENING BALANCE"
  loc_19307B7:         var_8C.Collect = "Name1"
  loc_19307C0:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_19307C5:         var_100 = "ADJAMT"
  loc_19307CE:         var_8C.Collect = var_100
  loc_19307D3:       End If
  loc_19307DE:       var_8C.Update var_100, var_110
  loc_19307E3:     End If
  loc_19307E3:   End If
  loc_19307E3:   GoTo loc_192E84B
  loc_19307E6: End If
  loc_19307FA: If (var_8C.RecordCount > 0) Then
  loc_1930800:   var_8C.MoveFirst
  loc_1930805: End If
  loc_1930819: If (var_8C.RecordCount <= 0) Then
  loc_1930822:   Call 0.Method_arg_50 (var_14C, var_110, var_110, var_110, var_110, var_110, var_CC)
  loc_1930843:   MsgBox("** No Records Found to Print **", &H40, CVar(var_14C), var_174, var_194)
  loc_1930858:   global_130 = 0
  loc_193085B:   Exit Sub
  loc_193085C: End If
  loc_193085F: var_2A6 = arg_C
  loc_1930868: If (var_2A6 = 1) Then
  loc_193088C:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_174, var_194)
  loc_19308B1:   Set var_134 = CVar(CLng(3))(1)
  loc_19308C2:   var_14C = CStr(TXTE_DATE.DispID_41)
  loc_19308DD:   Set var_180 = var_8C
  loc_19308F6:   Call 0.Method_arg_164 (Me, var_180, CLng(Val(var_14C)), var_146, Val(var_14C), var_2A6, global_130)
  loc_1930901:   Set var_8C = var_180
  loc_1930907:   var_DE = var_146
  loc_193091E:   global_130 = 0
  loc_1930921:   GoTo loc_1930A59
  loc_1930927: Else
  loc_193093C:   var_134 = Me.Fields
  loc_1930954:   var_110 = "No"
  loc_1930964:   var_120 = "LedSiteCode"
  loc_19309D0:   var_1D4 = (var_134.Item("LedDivCode").Value = var_110) And (Me.Fields.Item(var_120).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_19309EE:   If CBool(var_1D4) Then
  loc_19309FD:     Call 0.Method_arg_E4 (var_134, global_130, var_DE, var_CC, var_CC)
  loc_1930A08:     MemVar_1F921E4 = var_134
  loc_1930A12:   Else
  loc_1930A1E:     Call 0.Method_arg_E0 (var_134, var_CC, var_DC)
  loc_1930A29:     MemVar_1F921E4 = var_134
  loc_1930A30:   End If
  loc_1930A49:   Call 0.Method_arg_64 (var_134, CVar(var_8C), var_110, var_120)
  loc_1930A51:   Call 0.Method_arg_2C (var_DC, var_EA)
  loc_1930A59: End If
  loc_1930A59: ' Referenced from: 1930921
  loc_1930A5E: Set var_88 = Nothing
  loc_1930A66: Set var_90 = Nothing
  loc_1930A6E: Set var_94 = Nothing
  loc_1930A76: Set var_98 = Nothing
  loc_1930A7E: Set var_9C = Nothing
  loc_1930A86: Set var_8C = Nothing
  loc_1930A89: Exit Sub
  loc_1930A8A: ' Referenced from: 192DEA0
  loc_1930A98: Call 0.Method_arg_50 (var_14C, 0)
  loc_1930AAD: Proc_183_57_104AA84(var_14C, "CashBook")
  loc_1930AB9: Exit Sub
End Sub

Public Sub Proc_245_77_161FC10(arg_C) '161FC10
  'Data Table: 58C0C8
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_D8 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_58C10D As Connection15
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_FC As Fields15
  Dim var_B0 As Double
  Dim var_B8 As Long
  Dim var_1E4 As Recordset15
  Dim Me As Recordset15
  Dim var_1E8 As Fields15
  Dim var_26C As Variant
  Dim var_21C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_8E As Integer
  Dim var_10E As Integer
  loc_161E770: On Error Goto loc_161FBDF
  loc_161E788: Set var_FC = CVar(CLng(0))(0)
  loc_161E7AC: Call Proc_245_64_F51054(CInt(0), CStr(var_10C))
  loc_161E7C0: If (var_116 = 0) Then
  loc_161E7C8:   global_130 = 0
  loc_161E7CB:   Exit Sub
  loc_161E7CC: End If
  loc_161E7E1: Set var_FC = CVar(CLng(1))(0)
  loc_161E805: Call Proc_245_64_F51054(CInt(1), CStr(var_10C))
  loc_161E819: If (var_116 = 0) Then
  loc_161E821:   global_130 = 0
  loc_161E824:   Exit Sub
  loc_161E825: End If
  loc_161E83A: Set var_FC = CVar(CLng(0))(1)
  loc_161E858: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_161E87F: Set var_FC = CVar(CLng(1))(1)
  loc_161E897: Set var_11C = Me.TXTE_DATE
  loc_161E89D: var_11C.Text = CStr(TXTS_DATE.DispID_41)
  loc_161E8C6: If (Proc_183_48_F05F98(Me, global_130, var_116, TXTE_DATE.DispID_41) = 0) Then
  loc_161E8CE:   global_130 = 0
  loc_161E8D1:   Exit Sub
  loc_161E8D2: End If
  loc_161E8E7: Set var_FC = CVar(CLng(3))(2)
  loc_161E8F8: var_12C = CVar(CStr(TXTE_DATE.DispID_41)) 'String
  loc_161E91A: If CBool(Trim(var_12C) <> vbNullString) Then
  loc_161E935:   Set var_FC = CVar(CLng(3))(2)
  loc_161E951:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & CStr(TXTE_DATE.DispID_41) & "'"
  loc_161E964: Else
  loc_161E972:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_161E978: End If
  loc_161E985: var_C8 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE V_dATE BETWEEN "
  loc_161E995: Proc_183_7_EB0C44(var_12C, CVar(Me.TXTS_DATE), var_C8, var_1E0, -1)
  loc_161E9B5: Proc_183_7_EB0C44(var_180, CVar(Me.TXTE_DATE), var_FC & var_12C & " AND ", global_130)
  loc_161E9E7: unk_58C10D.Execute CStr(global_130 & var_180 & " " & CVar(var_94) & " ORDER BY V_DATE,V_TYPE,V_NO,V_SNo"), var_116, TXTE_DATE.DispID_41
  loc_161E9F2: Set var_88 = var_FC
  loc_161EA24: Set var_FC = New
  loc_161EA33: Call 0.Method_arg_1C0 (var_FC)
  loc_161EA3E: Set var_8C = var_FC
  loc_161EA47: Set var_8C = var_11C
  loc_161EA56: var_98 = 0
  loc_161EA59: ' Referenced from: 161FA19
  loc_161EA68: If Not(Me.Recordset15.EOF) Then
  loc_161EA74:   If (var_98 = 0) Then
  loc_161EAA3:     var_98 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_161EAB0:   End If
  loc_161EAB9:   var_A0 = vbNullString
  loc_161EABF:   var_A4 = vbNullString
  loc_161EAC5:   var_A8 = vbNullString
  loc_161EB01:   If (Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), var_98) <> vbNullString) Then
  loc_161EB44:     var_170 = (var_98 + Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_161EB49:     var_9C = CStr(CVar(Me.TXTE_DATE))
  loc_161EB5C:   End If
  loc_161EB8B:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_161EBB1:     var_114 = var_9C & " Dt: "
  loc_161EBE1:     var_9C = 1 & CStr(Format(CVar(var_88.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_161EBF9:   End If
  loc_161EC21:   var_A0 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("NARR")), 1)
  loc_161EC52:   var_A4 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("mNarr")), var_114)
  loc_161EC81:   var_D8 = "dd/MMM/yyyy"
  loc_161ECA0:   var_B0 = CDate(Format(CVar(var_88.Fields.Item("V_DATE")), var_D8))
  loc_161ECDA:   var_B4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_161ECED:   var_C8 = "V_SNo"
  loc_161ED13:   var_B8 = CLng(var_88.Fields.Item(var_C8).Value)
  loc_161ED23:   Set var_1E4 = var_8C 
  loc_161ED32:   var_1E4.AddNew var_C8, var_D8
  loc_161ED56:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161ED64:   var_1E4.Collect = "PDate"
  loc_161ED8E:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161ED9C:   var_1E4.Collect = "V_DATE"
  loc_161EDC6:   var_10C = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_161EDD4:   var_1E4.Collect = "V_Type"
  loc_161EDFE:   var_10C = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_161EE0C:   var_1E4.Collect = "V_NO"
  loc_161EE36:   var_10C = CVar(var_88.Fields.Item("V_SNo")) 'Address
  loc_161EE44:   var_1E4.Collect = "V_SNo"
  loc_161EE77:   var_12C = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")))) 'String
  loc_161EE84:   var_1E4.Collect = "subcode"
  loc_161EEBB:   var_12C = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), var_12C, var_B8, var_B0)) 'String
  loc_161EEC8:   var_1E4.Collect = "Name"
  loc_161EF12:   var_13C = Format(CVar(var_88.Fields.Item("Credit")), "0.00")
  loc_161EF24:   var_1E4.Collect = "cr"
  loc_161EF70:   var_13C = Format(CVar(var_88.Fields.Item("Debit")), "0.00")
  loc_161EF82:   var_1E4.Collect = "dr"
  loc_161F0AC:   var_26C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_161F0B1:   var_A8 = CStr(var_26C)
  loc_161F16A:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161F19B:   var_21C = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_161F1A0:   var_A8 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_161F1FA:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161F22C:   var_190 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_161F231:   var_A8 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_161F27D:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161F2BA:   var_1A0 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_161F2BF:   var_A8 = CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))
  loc_161F2E1:   var_C8 = "DOCNO"
  loc_161F2EA:   var_1E4.Collect = var_C8
  loc_161F2FA:   var_1E4.Update var_C8, CVar(var_A8)
  loc_161F301:   Set var_1E4 = Nothing 
  loc_161F323:   If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161F326:     ' Referenced from: 161F5F9
  loc_161F330:     If (Len(var_A0) > 0) Then
  loc_161F336:       Set var_270 = var_8C 
  loc_161F33D:       var_270.MoveLast
  loc_161F345:       var_C8 = "Name"
  loc_161F370:       var_D8 = vbNullString
  loc_161F382:       If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161F390:         var_270.AddNew var_C8, var_D8
  loc_161F395:       End If
  loc_161F3CD:       var_270.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161F41F:       var_270.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_161F473:       var_270.Fields.Item("PDate").Value = CVar(var_88.Fields.Item("V_DATE"))
  loc_161F487:       var_D8 = CVar(var_B8) 'Long
  loc_161F495:       var_270.Collect = "V_SNo"
  loc_161F49D:       var_D8 = CVar(var_A8) 'String
  loc_161F4AA:       var_270.Collect = "DOCNO"
  loc_161F4EB:       If (var_88.Fields.Item("V_Type").Value = "OP") Then
  loc_161F513:         var_270.Fields.Item("Val").Value = "1"
  loc_161F522:       Else
  loc_161F528:         var_C8 = "Credit"
  loc_161F559:         var_15C = "2"
  loc_161F562:         var_D8 = 0
  loc_161F56C:         var_13C = (var_88.Fields.Item(var_C8).Value > var_D8) 'Variant
  loc_161F59E:         var_270.Fields.Item("Val").Value = IIf(var_13C, var_15C, "3")
  loc_161F5BB:       End If
  loc_161F5C6:       var_270.Update var_C8, var_D8
  loc_161F5CD:       Set var_270 = Nothing 
  loc_161F5EF:       var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161F5F9:       GoTo loc_161F326
  loc_161F5FC:     End If
  loc_161F5FC:   End If
  loc_161F5FF:   var_88.MoveNext
  loc_161F60A:   var_10E = var_88.EOF
  loc_161F615:   If (var_10E = &HFF) Then
  loc_161F618:     ' Referenced from: 161FA16
  loc_161F636:     If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161F639:       ' Referenced from: 161F7EE
  loc_161F643:       If (Len(var_A0) > 0) Then
  loc_161F649:         Set var_274 = var_8C 
  loc_161F650:         var_274.MoveLast
  loc_161F658:         var_C8 = "Name"
  loc_161F683:         var_D8 = vbNullString
  loc_161F695:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161F6A3:           var_274.AddNew var_C8, var_D8
  loc_161F6A8:         End If
  loc_161F6E0:         var_274.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161F715:         var_274.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161F748:         var_274.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161F757:         var_D8 = CVar(var_B8) 'Long
  loc_161F765:         var_274.Collect = "V_SNo"
  loc_161F76D:         var_D8 = CVar(var_A8) 'String
  loc_161F77A:         var_274.Collect = "DOCNO"
  loc_161F77F:         var_D8 = "4"
  loc_161F788:         var_C8 = "Val"
  loc_161F7A4:         var_274.Fields.Item(var_C8).Value = var_D8
  loc_161F7BB:         var_274.Update var_C8, var_D8
  loc_161F7C2:         Set var_274 = Nothing 
  loc_161F7E4:         var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161F7EE:         GoTo loc_161F639
  loc_161F7F1:       End If
  loc_161F7F1:     End If
  loc_161F80F:     If CBool(Trim(var_A4) <> vbNullString) Then
  loc_161F812:       ' Referenced from: 161F9C7
  loc_161F81C:       If (Len(var_A4) > 0) Then
  loc_161F822:         Set var_278 = var_8C 
  loc_161F829:         var_278.MoveLast
  loc_161F831:         var_C8 = "Name"
  loc_161F85C:         var_D8 = vbNullString
  loc_161F86E:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161F87C:           var_278.AddNew var_C8, var_D8
  loc_161F881:         End If
  loc_161F8B9:         var_278.Fields.Item("Name").Value = Left(var_A4, &H32)
  loc_161F8EE:         var_278.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161F921:         var_278.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161F930:         var_D8 = CVar(var_B8) 'Long
  loc_161F93E:         var_278.Collect = "V_SNo"
  loc_161F946:         var_D8 = CVar(var_A8) 'String
  loc_161F953:         var_278.Collect = "DOCNO"
  loc_161F958:         var_D8 = "5"
  loc_161F961:         var_C8 = "Val"
  loc_161F97D:         var_278.Fields.Item(var_C8).Value = var_D8
  loc_161F994:         var_278.Update var_C8, var_D8
  loc_161F99B:         Set var_278 = Nothing 
  loc_161F9BD:         var_A4 = CStr(Mid(var_A4, &H33, 300))
  loc_161F9C7:         GoTo loc_161F812
  loc_161F9CA:       End If
  loc_161F9CA:     End If
  loc_161F9CD:   Else
  loc_161F9D0:     var_D8 = CVar(var_98) 'Long
  loc_161FA0B:     If CBool(var_D8 <> var_88.Fields.Item("V_NO").Value) Then
  loc_161FA13:       var_98 = 0
  loc_161FA16:       GoTo loc_161F618
  loc_161FA19:     End If
  loc_161FA19:   End If
  loc_161FA19:   GoTo loc_161EA59
  loc_161FA1C: End If
  loc_161FA30: If (var_88.RecordCount <= 0) Then
  loc_161FA39:   Call 0.Method_arg_50 (var_114, var_98, var_D8, var_D8, var_D8, var_D8)
  loc_161FA5A:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_13C, var_15C)
  loc_161FA6F:   global_130 = 0
  loc_161FA72:   Exit Sub
  loc_161FA73: End If
  loc_161FA79: global_124 = "DayBook"
  loc_161FA80: var_27E = arg_C
  loc_161FA89: If (var_27E = 1) Then
  loc_161FA92:   var_D8 = "Paper Setting"
  loc_161FAA7:   var_10C = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_161FAAD:   MsgBox(var_10C, &H40, var_D8, var_13C, var_15C)
  loc_161FAC5:   var_E8 = 1
  loc_161FAD2:   Set var_FC = CVar(CLng(2))(var_E8)
  loc_161FAF5:   Set var_1E8 = var_8C
  loc_161FB0E:   Call 0.Method_arg_174 (Me, var_1E8, CStr(var_10C), var_10E, TXTE_DATE.DispID_41, var_27E, global_130)
  loc_161FB19:   Set var_8C = var_1E8
  loc_161FB1F:   var_8E = var_10E
  loc_161FB36:   global_130 = 0
  loc_161FB39:   GoTo loc_161FBCE
  loc_161FB3F: Else
  loc_161FB45:   If (var_27E = 0) Then
  loc_161FB51:     var_114 = MemVar_1F923B0 & "\FaDayBook.ttx"
  loc_161FB5E:     Set var_FC = var_8C 
  loc_161FB6A:     var_10E = CreateFieldDefFile(var_FC, var_114, &HFF, global_130, var_8E, var_D8)
  loc_161FB93:     Call 0.Method_arg_FC (var_FC, var_10E, var_10E, var_D8)
  loc_161FB9E:     MemVar_1F921E4 = var_FC
  loc_161FBBE:     Call 0.Method_arg_64 (var_FC, CVar(var_FC), var_D8, var_E8)
  loc_161FBC6:     Call 0.Method_arg_2C (var_D8, var_13C)
  loc_161FBCE:   End If
  loc_161FBCE:   ' Referenced from: 161FB39
  loc_161FBCE: End If
  loc_161FBD3: Set var_88 = Nothing
  loc_161FBDB: Set var_8C = Nothing
  loc_161FBDE: Exit Sub
  loc_161FBDF: ' Referenced from: 161E770
  loc_161FBED: Call 0.Method_arg_50 (var_114, 0)
  loc_161FC02: Proc_183_57_104AA84(var_114, "DayBook")
  loc_161FC0E: Exit Sub
End Sub

Public Sub Proc_245_78_15A619C(arg_C) '15A619C
  'Data Table: 58C0C8
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_C4 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_E4 As String
  Dim var_198 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_238 As Variant
  Dim var_248 As String
  Dim var_25C As String
  Dim var_260 As String
  Dim var_F8 As Variant
  Dim var_98 As Recordset15
  Dim var_268 As String
  Dim unk_58C10D As Connection15
  Dim var_26C As Recordset15
  Dim var_9C As Recordset15
  Dim var_E8 As Fields15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_A2 As Integer
  Dim var_FA As Integer
  loc_15A4FD8: On Error Goto loc_15A616B
  loc_15A4FF0: Set var_E8 = CVar(CLng(0))(0)
  loc_15A5014: Call Proc_245_64_F51054(CInt(0), CStr(var_F8))
  loc_15A5028: If (var_102 = 0) Then
  loc_15A5030:   global_130 = 0
  loc_15A5033:   Exit Sub
  loc_15A5034: End If
  loc_15A5049: Set var_E8 = CVar(CLng(1))(0)
  loc_15A506D: Call Proc_245_64_F51054(CInt(1), CStr(var_F8))
  loc_15A5081: If (var_102 = 0) Then
  loc_15A5089:   global_130 = 0
  loc_15A508C:   Exit Sub
  loc_15A508D: End If
  loc_15A50A2: Set var_E8 = CVar(CLng(0))(1)
  loc_15A50C0: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_15A50E7: Set var_E8 = CVar(CLng(1))(1)
  loc_15A5105: Me.TXTE_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_15A512E: If (Proc_183_48_F05F98(Me, global_130, var_102, TXTE_DATE.DispID_41) = 0) Then
  loc_15A5136:   global_130 = 0
  loc_15A5139:   Exit Sub
  loc_15A513A: End If
  loc_15A514F: Set var_E8 = CVar(CLng(3))(1)
  loc_15A5171: If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A5184:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, " Where ((V_DATE>=", global_130)
  loc_15A51A4:   Proc_183_7_EB0C44(var_148, CVar(Me.TXTS_DATE), global_130 & var_F8 & " AND V_DATE<")
  loc_15A51C4:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTS_DATE))
  loc_15A51D5:   var_1B8 = var_102 & var_148 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE<" & var_188 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))" 
  loc_15A5206:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A5226:   Proc_183_7_EB0C44(var_148, CVar(Me.TXTS_DATE))
  loc_15A5246:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTE_DATE))
  loc_15A5257:   var_1B8 = " Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE BETWEEN " 
  loc_15A5266:   Proc_183_7_EB0C44(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A5286:   Proc_183_7_EB0C44(var_228, CVar(Me.TXTE_DATE))
  loc_15A529C:   var_88 = CStr(var_1B8 & var_1D8 & " AND " & var_228 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A52CC:   Set var_98 = New 
  loc_15A52E4:   Set var_E8 = CVar(CLng(2))(1)
  loc_15A5306:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A5327:     var_100 = "SELECT 1 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) " & CStr(var_1B8)
  loc_15A5335:     var_260 = var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE Union " & "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) "
  loc_15A534A:     Me.Recordset15.Open CVar(var_260 & var_88 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE "), CVar(MemVar_1F921DC), 2
  loc_15A5360:   Else
  loc_15A537E:     var_100 = "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE " & var_88
  loc_15A5385:     var_F8 = CVar(var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE ") 'String
  loc_15A538C:     var_98.Open var_F8, CVar(MemVar_1F921DC), 2
  loc_15A5397:   End If
  loc_15A539A: Else
  loc_15A53AA:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, " Where (((V_DATE>=", 3)
  loc_15A53B2:   var_118 = -1 & var_F8 
  loc_15A53CA:   Proc_183_7_EB0C44(var_148, CVar(Me.TXTS_DATE), " Where ((V_DATE>=" & var_F8 & " AND V_DATE<")
  loc_15A53D6:   var_E4 = " AND AA.GroupNature IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A53EA:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTS_DATE), 3 & var_148 & var_E4)
  loc_15A53F2:   var_198 = -1 & var_188 
  loc_15A53F6:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A542C:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A544C:   Proc_183_7_EB0C44(var_148, CVar(Me.TXTS_DATE))
  loc_15A5458:   var_E4 = " AND AA.GroupNature IN ('E','R')  AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A546C:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTS_DATE))
  loc_15A5478:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A5482:   var_94 = CStr(" Where (((V_DATE>=" & var_F8 & " AND V_DATE<" & var_148 & var_E4 & var_188 & var_1A8)
  loc_15A54AE:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A54CE:   Proc_183_7_EB0C44(var_148, CVar(Me.TXTS_DATE))
  loc_15A54EE:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTE_DATE))
  loc_15A54FA:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A550E:   Proc_183_7_EB0C44(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A552E:   Proc_183_7_EB0C44(var_228, CVar(Me.TXTE_DATE))
  loc_15A5536:   var_238 = "  Where (((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & var_1A8 & var_1D8 & " AND " & var_228 
  loc_15A553A:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A5544:   var_88 = CStr(var_238 & var_248)
  loc_15A5570:   var_C4 = " Where (((V_DATE>="
  loc_15A5580:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A5591:   var_128 = var_C4 & var_F8 & " AND V_DATE BETWEEN " 
  loc_15A5599:   var_138 = CVar(Me.TXTS_DATE) 'Address
  loc_15A55A0:   Proc_183_7_EB0C44(var_148, var_138)
  loc_15A55C0:   Proc_183_7_EB0C44(var_188, CVar(Me.TXTE_DATE))
  loc_15A55CC:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A55E0:   Proc_183_7_EB0C44(var_1D8, CVar(Me.TXTS_DATE))
  loc_15A5600:   Proc_183_7_EB0C44(var_228, CVar(Me.TXTE_DATE))
  loc_15A560C:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A5616:   var_8C = CStr(var_128 & var_148 & " AND " & var_188 & var_1A8 & var_1D8 & " AND " & var_228 & var_248)
  loc_15A5645:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A5657:   Set var_E8 = var_B4(1)
  loc_15A5679:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A5690:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & CStr(" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN " & var_148 & " AND " & var_188 & var_1A8)
  loc_15A569E:     var_260 = var_100 & "   AND BB.AliasYN='N'   GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 UNION " & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) "
  loc_15A56B5:     unk_58C10D.Execute var_260 & var_88 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A56C0:     Set var_9C = var_E8
  loc_15A56D9:   Else
  loc_15A56ED:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & var_88
  loc_15A56FD:     unk_58C10D.Execute var_100 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A5708:     Set var_9C = var_E8
  loc_15A5718:   End If
  loc_15A572D:   Set var_98 = mDetailTrial(New)
  loc_15A5730:   ' Referenced from:   15A5B21
  loc_15A573F:   If Not(Me.Recordset15.EOF) Then
  loc_15A5745:     Set var_26C = var_98 
  loc_15A5754:     var_26C.AddNew var_B4, var_C4
  loc_15A579C:     var_26C.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A57D2:     var_26C.Fields.Item("GroupName").Value = vbNullString
  loc_15A5803:     var_26C.Fields.Item("GRCODE").Value = vbNullString
  loc_15A5852:     var_26C.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A58A6:     var_26C.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A58FA:     var_26C.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A594E:     var_26C.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A59A2:     var_26C.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A59F6:     var_26C.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A5A4A:     var_26C.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A5A9E:     var_26C.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A5AB2:     var_B4 = "GRName"
  loc_15A5ACE:     var_F8 = CVar(var_9C.Fields.Item(var_B4)) 'Address
  loc_15A5AD6:     var_C4 = "GRName"
  loc_15A5AF2:     var_26C.Fields.Item(var_C4).Value = var_F8
  loc_15A5B0E:     var_26C.Update var_B4, var_C4
  loc_15A5B15:     Set var_26C = Nothing 
  loc_15A5B1C:     var_9C.MoveNext
  loc_15A5B21:     GoTo loc_15A5730
  loc_15A5B24:   End If
  loc_15A5B27:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A5B2C:   var_D4 = 1
  loc_15A5B39:   Set var_E8 = var_B4(var_D4)
  loc_15A5B5B:   If (CStr(TXTE_DATE.DispID_41) = "Yes") Then
  loc_15A5B72:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_94
  loc_15A5B79:     var_25C = var_100 & "    GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3 UNION "
  loc_15A5B80:     var_260 = var_25C & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE "
  loc_15A5B8E:     var_268 = var_260 & var_8C & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A5B97:     unk_58C10D.Execute var_268, var_F8, -1
  loc_15A5BA2:     Set var_9C = var_E8
  loc_15A5BBB:   Else
  loc_15A5BCF:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_8C
  loc_15A5BD6:     var_25C = var_100 & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A5BDF:     unk_58C10D.Execute var_25C, var_F8, -1
  loc_15A5BEA:     Set var_9C = var_E8
  loc_15A5BFA:     ' Referenced from:     15A5FEB
  loc_15A5BFA:   End If
  loc_15A5C00:   var_FA = var_9C.EOF
  loc_15A5C09:   If Not(var_FA) Then
  loc_15A5C0F:     Set var_278 = var_98 
  loc_15A5C1E:     var_278.AddNew var_B4, var_C4
  loc_15A5C66:     var_278.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A5C9C:     var_278.Fields.Item("GroupName").Value = vbNullString
  loc_15A5CCD:     var_278.Fields.Item("GRCODE").Value = vbNullString
  loc_15A5D1C:     var_278.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A5D70:     var_278.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A5DC4:     var_278.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A5E18:     var_278.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A5E6C:     var_278.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A5EC0:     var_278.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A5F14:     var_278.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A5F68:     var_278.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A5F7C:     var_B4 = "GRName"
  loc_15A5F88:     var_E8 = var_9C.Fields
  loc_15A5FA0:     var_C4 = "GRName"
  loc_15A5FBC:     var_278.Fields.Item(var_C4).Value = CVar(var_E8.Item(var_B4))
  loc_15A5FD8:     var_278.Update var_B4, var_C4
  loc_15A5FDF:     Set var_278 = Nothing 
  loc_15A5FE6:     var_9C.MoveNext
  loc_15A5FEB:     GoTo loc_15A5BFA
  loc_15A5FEE:   End If
  loc_15A5FEE: End If
  loc_15A6002: If (var_98.RecordCount <= 0) Then
  loc_15A600B:   Call 0.Method_arg_50 (var_100, var_E8, var_E8)
  loc_15A602C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_138)
  loc_15A6041:   global_130 = 0
  loc_15A6044:   Exit Sub
  loc_15A6045: End If
  loc_15A6048: var_27E = arg_C
  loc_15A6051: If (var_27E = 1) Then
  loc_15A605A:   var_C4 = "Paper Setting"
  loc_15A6075:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_C4, var_128, var_138)
  loc_15A608E:   Set var_108 = var_98
  loc_15A60A7:   Call 0.Method_arg_148 (Me, var_108, var_FA, var_27E)
  loc_15A60B2:   Set var_98 = var_108
  loc_15A60B8:   var_A2 = var_FA
  loc_15A60C2:   GoTo loc_15A6152
  loc_15A60C8: Else
  loc_15A60D1:   var_100 = MemVar_1F923B0 & "\FaDetTrial.ttx"
  loc_15A60DE:   Set var_E8 = var_98 
  loc_15A60EA:   var_FA = CreateFieldDefFile(var_E8, var_100, &HFF, var_A2)
  loc_15A60FD:   var_290 = CVar(var_FA) 'Variant
  loc_15A6117:   Call 0.Method_arg_F8 (var_E8, var_FA, global_130)
  loc_15A6122:   MemVar_1F921E4 = var_E8
  loc_15A6142:   Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_C4, var_D4)
  loc_15A614A:   Call 0.Method_arg_2C (var_E8, var_E8)
  loc_15A6152: End If
  loc_15A6152: ' Referenced from: 15A60C2
  loc_15A6157: Set var_9C = Nothing
  loc_15A615F: Set var_98 = Nothing
  loc_15A6167: Set var_A0 = Nothing
  loc_15A616A: Exit Sub
  loc_15A616B: ' Referenced from: 15A4FD8
  loc_15A6179: Call 0.Method_arg_50 (var_100, 0)
  loc_15A618E: Proc_183_57_104AA84(var_100, "DetailedTrial")
  loc_15A619A: Exit Sub
End Sub

Public Sub Proc_245_79_1ED109C(arg_C, arg_10) '1ED109C
  'Data Table: 58C0C8
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_18C As String
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_124 As Variant
  Dim var_1C8 As Variant
  Dim var_144 As Variant
  Dim var_1E0 As Variant
  Dim var_178 As Variant
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_194 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_260 As Variant
  Dim Me As Variant
  Dim var_2A4 As Variant
  Dim var_100 As Recordset15
  Dim var_EC As Double
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_330 As Recordset15
  Dim var_15A As Integer
  Dim var_162 As Integer
  Dim var_338 As Fields15
  Dim var_33C As Field20
  Dim var_2B4 As Variant
  Dim var_90 As Recordset15
  Dim var_334 As Field20
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_94 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_350 As Recordset15
  Dim var_354 As Recordset15
  Dim var_8C As Recordset15
  Dim var_358 As Recordset15
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim var_364 As Recordset15
  Dim var_394 As Variant
  Dim var_3A8 As Recordset15
  Dim var_3AC As Recordset15
  Dim var_3B0 As Recordset15
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_3BC As Recordset15
  Dim var_3C0 As Recordset15
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_F4 As Double
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_3D4 As Recordset15
  Dim var_3D8 As Recordset15
  Dim var_3DC As Recordset15
  Dim var_3E0 As Recordset15
  Dim var_3E4 As Recordset15
  Dim var_3E8 As Recordset15
  Dim var_3EC As Recordset15
  Dim var_30C As Variant
  Dim var_3A4 As Variant
  Dim var_4BC As Variant
  Dim var_562 As Integer
  Dim var_1E4 As String
  loc_1EC4784: On Error Goto loc_1EC1071
  loc_1EC479C: Set var_148 = CVar(CLng(0))(0)
  loc_1EC47C0: Call Proc_245_64_F51054(CInt(0), CStr(var_158))
  loc_1EC47D4: If (var_162 = 0) Then
  loc_1EC47D7:   GoTo loc_1EC1005
  loc_1EC47DA: End If
  loc_1EC47EF: Set var_148 = CVar(CLng(1))(0)
  loc_1EC4813: Call Proc_245_64_F51054(CInt(1), CStr(var_158))
  loc_1EC4827: If (var_162 = 0) Then
  loc_1EC482A:   GoTo loc_1EC1005
  loc_1EC482D: End If
  loc_1EC4842: Set var_148 = CVar(CLng(2))(0)
  loc_1EC4866: Call Proc_245_64_F51054(CInt(2), CStr(var_158))
  loc_1EC487A: If (var_162 = 0) Then
  loc_1EC487D:   GoTo loc_1EC1005
  loc_1EC4880: End If
  loc_1EC4895: Set var_148 = CVar(CLng(0))(1)
  loc_1EC48B3: Me.TXTS_DATE.Text = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC48DA: Set var_148 = CVar(CLng(1))(1)
  loc_1EC48EB: var_160 = CStr(TXTS_DATE.DispID_41)
  loc_1EC48F2: Set var_168 = Me.TXTE_DATE
  loc_1EC48F8: var_168.Text = var_160
  loc_1EC4915: Set var_148 = Me.TEXT
  loc_1EC491B: Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HC), var_168, var_162, TXTACC_CODE1.DispID_41)
  loc_1EC4923: var_158 = CVar(var_168) 'Address
  loc_1EC4944: If CBool(Trim(var_158) <> vbNullString) Then
  loc_1EC4958:   Set var_148 = Me.TEXT
  loc_1EC495E:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HC), var_168, var_160, " And VIEWLEDGER.LOGSite_Code='")
  loc_1EC4966:   var_162 = var_168.Tag
  loc_1EC4976:   var_E4 = TXTACC_CODE1.DispID_41 & var_160 & "'"
  loc_1EC498A: Else
  loc_1EC4998:   var_E4 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_1EC499E: End If
  loc_1EC49C2: unk_58C10D.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_158, -1
  loc_1EC49CD: Set var_88 = var_148
  loc_1EC49F1: If (var_88.RecordCount > 0) Then
  loc_1EC4A03:   var_148 = var_88.Fields
  loc_1EC4A0B:   var_168 = var_148.Item("RepToBy")
  loc_1EC4A1C:   var_FC = Proc_183_2_E5A304(CVar(var_168), var_148)
  loc_1EC4A25: End If
  loc_1EC4A2D: If (arg_10 = "LedInt") Then
  loc_1EC4A3B:   Set var_148 = Me.TEXT
  loc_1EC4A41:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(5), var_168)
  loc_1EC4A49:   var_160 = "Enter Interest Rate"
  loc_1EC4A6A:   If (Proc_183_19_E8DAFC(var_168, var_160) = 0) Then
  loc_1EC4A6D:     GoTo loc_1EC1005
  loc_1EC4A70:   End If
  loc_1EC4A70: End If
  loc_1EC4A85: Set var_148 = CVar(CLng(2))(1)
  loc_1EC4A96: var_98 = CStr(TEXT.DispID_41)
  loc_1EC4AA7: If (arg_10 = "AcCheckList") Then
  loc_1EC4AAD:   var_E0 = vbNullString
  loc_1EC4AB6:   global_92 = vbNullString
  loc_1EC4AC6:   Set var_148 = Me.Check1
  loc_1EC4ACC:   Call 0.Method_Proc_245_79_1ED109C0 (3, var_168, var_15A)
  loc_1EC4AD4:   var_162 = var_168.Value
  loc_1EC4AEA:   If (CLng(var_15A) = 0) Then
  loc_1EC4B08:     Call Proc_245_61_127CCE4(global_104, 3, CByte(1))
  loc_1EC4B13:     global_92 = var_160
  loc_1EC4B23:     If (global_130 = 0) Then
  loc_1EC4B26:       GoTo loc_1EC1005
  loc_1EC4B29:     End If
  loc_1EC4B29:   End If
  loc_1EC4B34:   If (global_92 <> vbNullString) Then
  loc_1EC4B41:     var_160 = " AND V_TYPE IN (" & global_92
  loc_1EC4B48:     var_E0 = var_160 & ") "
  loc_1EC4B4E:   End If
  loc_1EC4B5C:   Set var_148 = Me.TEXT
  loc_1EC4B62:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(2), var_168, var_160)
  loc_1EC4B6A:   var_160 = var_168.Text
  loc_1EC4B86:   If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1EC4B90:     var_188 = CVar(var_E0 & " AND VIEWLEDGER.DEBIT+VIEWLEDGER.CREDIT") 'String
  loc_1EC4B9C:     Set var_148 = Me.TEXT
  loc_1EC4BA2:     Call 0.Method_Proc_245_79_1ED109C0 (&HA, var_168)
  loc_1EC4BC2:     var_1B4 = var_188 & Trim(CVar(var_168)) & " " 
  loc_1EC4BD4:     Set var_194 = Me.TEXT
  loc_1EC4BDA:     Call 0.Method_Proc_245_79_1ED109C0 (CInt(2), var_1B8, var_160)
  loc_1EC4BE2:     var_1B4 = var_1B8.Text
  loc_1EC4BF8:     var_E0 = CStr(TXTACC_CODE1.DispID_41 & CVar(Val(var_160)))
  loc_1EC4C16:   End If
  loc_1EC4C21:   Set var_148 = Me.TEXT
  loc_1EC4C27:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(3))
  loc_1EC4C50:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1EC4C68:     Set var_148 = Me.TEXT
  loc_1EC4C6E:     Call 0.Method_Proc_245_79_1ED109C0 (CInt(3), var_168)
  loc_1EC4C93:     var_E0 = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC4CA6:   End If
  loc_1EC4CB1:   Set var_148 = Me.TEXT
  loc_1EC4CB7:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(4), var_168)
  loc_1EC4CE0:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1EC4CF8:     Set var_148 = Me.TEXT
  loc_1EC4CFE:     Call 0.Method_Proc_245_79_1ED109C0 (CInt(4), var_168)
  loc_1EC4D23:     var_E0 = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC4D36:   End If
  loc_1EC4D36: End If
  loc_1EC4D39: var_1CC = var_98
  loc_1EC4D44: If (var_1CC = "Selected") Then
  loc_1EC4D4D:   global_84 = vbNullString
  loc_1EC4D54:   var_9C = vbNullString
  loc_1EC4D63:   Set var_148 = Me.Check1
  loc_1EC4D69:   Call 0.Method_Proc_245_79_1ED109C0 (1, var_168)
  loc_1EC4D71:   var_15A = var_168.Value
  loc_1EC4D87:   If (CLng(var_15A) = 0) Then
  loc_1EC4DA5:     Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_1EC4DB0:     global_84 = var_160
  loc_1EC4DC0:     If (global_130 = 0) Then
  loc_1EC4DC3:       GoTo loc_1EC1005
  loc_1EC4DC6:     End If
  loc_1EC4DC6:   End If
  loc_1EC4DD1:   If (global_84 <> vbNullString) Then
  loc_1EC4DE5:     var_9C = " WHERE SUBCODE IN (" & global_84 & ") "
  loc_1EC4DEB:   End If
  loc_1EC4DEE:   var_1D0 = arg_10
  loc_1EC4DF9:   If (var_1D0 = "LedDeb") Then
  loc_1EC4E2F:     var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1EC4E38:     var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1EC4E3D:     var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC4E52:   Else
  loc_1EC4E5A:     If (var_1D0 = "LedCred") Then
  loc_1EC4E73:       var_158 = " Where"
  loc_1EC4E88:       var_188 = IIf((var_9C = vbNullString), var_158, " AND")
  loc_1EC4E90:       var_1A4 = (CVar(var_9C) + var_188)
  loc_1EC4E99:       var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1EC4E9E:       var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC4EB0:     End If
  loc_1EC4EB0:   End If
  loc_1EC4ED4:   unk_58C10D.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1EC4EDF:   Set var_88 = var_148
  loc_1EC4EF2: Else
  loc_1EC4EFA:   If (var_1CC = "Merge") Then
  loc_1EC4F12:     Set var_148 = CVar(CLng(3))(0)
  loc_1EC4F36:     Call Proc_245_64_F51054(CInt(3), CStr(var_158))
  loc_1EC4F4A:     If (var_162 = 0) Then
  loc_1EC4F4D:       GoTo loc_1EC1005
  loc_1EC4F50:     End If
  loc_1EC4F65:     Set var_148 = CVar(CLng(4))(0)
  loc_1EC4F89:     Call Proc_245_64_F51054(CInt(4), CStr(var_158))
  loc_1EC4F9D:     If (var_162 = 0) Then
  loc_1EC4FA0:       GoTo loc_1EC1005
  loc_1EC4FA3:     End If
  loc_1EC4FB8:     Set var_148 = CVar(CLng(3))(1)
  loc_1EC4FD6:     Me.TXTACC_CODE.Text = CStr(Check1.DispID_41)
  loc_1EC4FFD:     Set var_148 = CVar(CLng(3))(2)
  loc_1EC501B:     Me.TXTACC_CODE.Tag = CStr(TXTACC_CODE.DispID_41)
  loc_1EC5042:     Set var_148 = CVar(CLng(4))(1)
  loc_1EC5060:     Me.TXTACC_CODE1.Text = CStr(TXTACC_CODE.DispID_41)
  loc_1EC5087:     Set var_148 = CVar(CLng(4))(2)
  loc_1EC50A5:     Me.TXTACC_CODE1.Tag = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC50D9:     var_160 = Me.TXTACC_CODE1.Text
  loc_1EC50F1:     If (Me.TXTACC_CODE.Text = var_160) Then
  loc_1EC50FA:       Call 0.Method_arg_50 (var_160, var_162, Check1.DispID_41, var_162)
  loc_1EC5108:       var_178 = CVar(var_160) 'String
  loc_1EC5115:       var_158 = " ** Both A/C are Same** "
  loc_1EC511B:       MsgBox(var_158, &H10, var_178, var_188, CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(Me.TXTACC_CODE)))
  loc_1EC512B:       GoTo loc_1EC1005
  loc_1EC512E:     End If
  loc_1EC514B:     var_160 = Me.TXTACC_CODE.Tag
  loc_1EC5165:     Set var_168 = Me.TXTACC_CODE1
  loc_1EC5174:     var_1EC = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE SUBCODE IN ('" & var_160 & "','" & var_168.Tag
  loc_1EC5184:     unk_58C10D.Execute var_1EC & "') ORDER BY NAME", var_158, -1
  loc_1EC518F:     Set var_88 = var_194
  loc_1EC51B0:   Else
  loc_1EC51B8:     If (var_1CC = "Group(Selected)") Then
  loc_1EC51C1:       global_88 = vbNullString
  loc_1EC51C8:       var_9C = vbNullString
  loc_1EC51D7:       Set var_148 = Me.Check1
  loc_1EC51DD:       Call 0.Method_Proc_245_79_1ED109C0 (2, var_168, var_15A, var_194)
  loc_1EC51E5:       Check1.DispID_41 = var_168.Value
  loc_1EC51FB:       If (CLng(var_15A) = 0) Then
  loc_1EC5219:         Call Proc_245_61_127CCE4(global_100, 2, CByte(1))
  loc_1EC5224:         global_88 = var_160
  loc_1EC5234:         If (global_130 = 0) Then
  loc_1EC5237:           GoTo loc_1EC1005
  loc_1EC523A:         End If
  loc_1EC523A:       End If
  loc_1EC5245:       If (global_88 <> vbNullString) Then
  loc_1EC5259:         var_9C = " WHERE CODE IN (" & global_88 & ") "
  loc_1EC525F:       End If
  loc_1EC5283:       unk_58C10D.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1EC528E:       Set var_88 = var_148
  loc_1EC52A1:     Else
  loc_1EC52A9:       If (var_1CC = "Group(Range)") Then
  loc_1EC52C1:         Set var_148 = CVar(CLng(3))(0)
  loc_1EC52E5:         Call Proc_245_64_F51054(CInt(3), CStr(var_158))
  loc_1EC52F9:         If (var_162 = 0) Then
  loc_1EC52FC:           GoTo loc_1EC1005
  loc_1EC52FF:         End If
  loc_1EC5314:         Set var_148 = CVar(CLng(4))(0)
  loc_1EC5338:         Call Proc_245_64_F51054(CInt(4), CStr(var_158))
  loc_1EC534C:         If (var_162 = 0) Then
  loc_1EC534F:           GoTo loc_1EC1005
  loc_1EC5352:         End If
  loc_1EC5367:         Set var_148 = CVar(CLng(5))(0)
  loc_1EC538B:         Call Proc_245_64_F51054(CInt(5), CStr(var_158))
  loc_1EC539F:         If (var_162 = 0) Then
  loc_1EC53A2:           GoTo loc_1EC1005
  loc_1EC53A5:         End If
  loc_1EC53BA:         Set var_148 = CVar(CLng(4))(1)
  loc_1EC53D8:         Me.TXTACC_CODE.Text = CStr(Check1.DispID_41)
  loc_1EC53FF:         Set var_148 = CVar(CLng(4))(2)
  loc_1EC541D:         Me.TXTACC_CODE.Tag = CStr(TXTACC_CODE.DispID_41)
  loc_1EC5444:         Set var_148 = CVar(CLng(5))(1)
  loc_1EC5462:         Me.TXTACC_CODE1.Text = CStr(TXTACC_CODE.DispID_41)
  loc_1EC5489:         Set var_148 = CVar(CLng(5))(2)
  loc_1EC54A7:         Me.TXTACC_CODE1.Tag = CStr(TXTACC_CODE1.DispID_41)
  loc_1EC54CE:         Set var_148 = CVar(CLng(3))(2)
  loc_1EC54E7:         Set var_168 = Me.TXTACC_CODE
  loc_1EC54F9:         Set var_194 = Me.TXTACC_CODE1
  loc_1EC5518:         var_160 = CStr(var_158)
  loc_1EC5523:         var_1E8 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE CODE='" & var_160 & "' AND NAME BETWEEN '"
  loc_1EC5548:         unk_58C10D.Execute var_1E8 & var_168.Text & "' AND '" & var_194.Text & "' ORDER BY NAME", var_178, -1
  loc_1EC5553:         Set var_88 = var_1B8
  loc_1EC5580:       Else
  loc_1EC5588:         If (var_1CC = "City Wise") Then
  loc_1EC5591:           global_88 = vbNullString
  loc_1EC5598:           var_9C = vbNullString
  loc_1EC55A7:           Set var_148 = Me.Check1
  loc_1EC55AD:           Call 0.Method_Proc_245_79_1ED109C0 (2, var_168, var_15A, var_1B8, TXTACC_CODE1.DispID_41, var_162, Check1.DispID_41)
  loc_1EC55B5:           var_162 = var_168.Value
  loc_1EC55CB:           If (CLng(var_15A) = 0) Then
  loc_1EC55E9:             Call Proc_245_61_127CCE4(global_100, 2, CByte(1))
  loc_1EC55F4:             global_88 = var_160
  loc_1EC5604:             If (global_130 = 0) Then
  loc_1EC5607:               GoTo loc_1EC1005
  loc_1EC560A:             End If
  loc_1EC560A:           End If
  loc_1EC5615:           If (global_88 <> vbNullString) Then
  loc_1EC5629:             var_9C = " WHERE CITYCODE IN (" & global_88 & ") "
  loc_1EC562F:           End If
  loc_1EC5632:           var_200 = arg_10
  loc_1EC563D:           If (var_200 = "LedDeb") Then
  loc_1EC5673:             var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1EC567C:             var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1EC5681:             var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC5696:           Else
  loc_1EC569E:             If (var_200 = "LedCred") Then
  loc_1EC56AC:               var_178 = " AND"
  loc_1EC56B7:               var_158 = " Where"
  loc_1EC56CC:               var_188 = IIf((var_9C = vbNullString), var_158, var_178)
  loc_1EC56D4:               var_1A4 = (CVar(var_9C) + var_188)
  loc_1EC56DD:               var_1B4 = (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1EC56E2:               var_9C = CStr(CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)) & ")
  loc_1EC56F4:             End If
  loc_1EC56F4:           End If
  loc_1EC5708:           var_160 = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C
  loc_1EC5718:           unk_58C10D.Execute var_160 & " ORDER BY NAME", var_158, -1
  loc_1EC5723:           Set var_88 = var_148
  loc_1EC5733:         End If
  loc_1EC5733:       End If
  loc_1EC5733:     End If
  loc_1EC5733:   End If
  loc_1EC5733: End If
  loc_1EC5747: If (var_88.RecordCount <= 0) Then
  loc_1EC5763:   MsgBox("No A/c to Print", 0, var_178, var_188, CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String & Trim(CVar(var_168)))
  loc_1EC5773:   GoTo loc_1EC1005
  loc_1EC5776: End If
  loc_1EC5786: Set var_148 = New
  loc_1EC5795: Call 0.Method_arg_1AC (var_148, var_168, var_148, var_160, Check1.DispID_41)
  loc_1EC57A0: Set var_8C = var_148
  loc_1EC57A9: Set var_8C = var_168
  loc_1EC57B6: var_A0 = vbNullString
  loc_1EC57BC: var_A4 = vbNullString
  loc_1EC57BF: ' Referenced from: 1EC5929
  loc_1EC57CE: If Not(Me.Recordset15.EOF) Then
  loc_1EC581C:   var_210 = (CVar(var_A0) + IIf((Trim(var_A0) = vbNullString), vbNullString, ","))
  loc_1EC5825:   var_230 = (var_210 + "'")
  loc_1EC5857:   var_270 = (var_230 + Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1EC5860:   var_290 = (var_270 + "'")
  loc_1EC5865:   var_A0 = CStr(var_290)
  loc_1EC58CF:   var_210 = (CVar(var_A4) + IIf((Trim(var_A4) = vbNullString), vbNullString, ","))
  loc_1EC5901:   var_260 = (var_210 + Trim(CVar(var_88.Fields.Item("Name"))))
  loc_1EC5906:   var_A4 = CStr(Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1EC5924:   var_88.MoveNext
  loc_1EC5929:   GoTo loc_1EC57BF
  loc_1EC592C: End If
  loc_1EC5932: var_294 = GRepFormName
  loc_1EC593D: If Not (var_294 = "Led") Then
  loc_1EC5948:   If Not (var_294 = "LedInt") Then
  loc_1EC5953:     If (var_294 = "AcCheckList") Then
  loc_1EC5956:     End If
  loc_1EC5956:   End If
  loc_1EC596B:   var_148 = Me.Fields
  loc_1EC5973:   var_168 = var_148.Item("ShowCityName")
  loc_1EC5995:   If (var_168.Value = "Yes") Then
  loc_1EC59AC:     var_160 = "SELECT VIEWLEDGER.*,NameWithCity AS NAME FROM VIEWLEDGER LEFT JOIN ViewSubgroup ON VIEWLEDGER.PARTY1=ViewSubgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1EC59C1:     Proc_183_7_EB0C44(var_178, CVar(Me.TXTS_DATE), CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "), var_2B4, -1, var_148)
  loc_1EC59E1:     Proc_183_7_EB0C44(var_210, CVar(Me.TXTE_DATE), var_162 & var_178 & " And ", Check1.DispID_41)
  loc_1EC5A18:     var_2A4 = var_148 & var_210 & " " & CVar(var_E0) & "  " & CVar(var_E4) & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo" 
  loc_1EC5A26:     unk_58C10D.Execute CStr(var_2A4), var_160, var_148
  loc_1EC5A31:     Set var_90 = var_148
  loc_1EC5A60:   Else
  loc_1EC5A74:     var_160 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1EC5A89:     Proc_183_7_EB0C44(var_178, CVar(Me.TXTS_DATE), CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))
  loc_1EC5AA2:     var_1C8 = CVar(Me.TXTE_DATE) 'Address
  loc_1EC5AA9:     Proc_183_7_EB0C44(var_210, var_1C8, var_2B4 & var_178 & " And ")
  loc_1EC5AB1:     var_230 = -1 & var_210 
  loc_1EC5ACD:     var_270 = var_148 & var_210 & " " & CVar(var_E0) & "  " 
  loc_1EC5AD7:     var_290 = var_270 & CVar(var_E4) 
  loc_1EC5AEE:     unk_58C10D.Execute CStr(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo"), var_148, 
  loc_1EC5AF9:     Set var_90 = var_148
  loc_1EC5B25:   End If
  loc_1EC5B25: End If
  loc_1EC5B39: If (var_88.RecordCount > 0) Then
  loc_1EC5B3F:   var_88.MoveFirst
  loc_1EC5B44:   ' Referenced from: 1ECFED5
  loc_1EC5B44: End If
  loc_1EC5B53: Loop Until Not(var_88.EOF) 'do at: 1EBFED8
  loc_1EC5B64: Set var_148 = Me.TEXT
  loc_1EC5B6A: Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_168)
  loc_1EC5B8E: If (CDbl(Val(var_168.Text)) > CDbl(0)) Then
  loc_1EC5B9E:   var_124 = "SELECT ISNULL(SUM(DEBIT),0)-ISNULL(SUM(CREDIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1EC5BBA:   var_168 = var_88.Fields.Item("subcode")
  loc_1EC5BC9:   Proc_183_9_EAA760(var_178, CVar(var_168), " ")
  loc_1EC5BE9:   Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTE_DATE), var_88.Fields & var_210 & var_178 & " AND V_DATE<=")
  loc_1EC5BF1:   var_210 = -1 & var_1C8 
  loc_1EC5BF5:   var_160 = CStr(var_210)
  loc_1EC5BFF:   unk_58C10D.Execute var_160, var_194, 
  loc_1EC5C0A:   Set var_100 = var_194
  loc_1EC5C3E:   If (var_100.RecordCount > 0) Then
  loc_1EC5C4A:     Set var_148 = Me.TEXT
  loc_1EC5C50:     Call 0.Method_Proc_245_79_1ED109C0 (8)
  loc_1EC5C5F:     var_178 = Trim(CVar(var_168))
  loc_1EC5C67:     var_2C4 = var_178 'Variant
  loc_1EC5C7C:     If (var_2C4 = "=") Then
  loc_1EC5C99:       var_168 = var_100.Fields.Item("Balance")
  loc_1EC5CA1:       var_158 = var_168.Value
  loc_1EC5CB7:       Set var_194 = Me.TEXT
  loc_1EC5CBD:       Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8, var_160)
  loc_1EC5CC5:       var_158 = var_1B8.Text
  loc_1EC5CEA:       If CBool(var_168 <> CVar(Val(var_160))) Then
  loc_1EC5CED:         GoTo loc_1EBFECD
  loc_1EC5CF0:       End If
  loc_1EC5CF3:     Else
  loc_1EC5CFE:       If (var_2C4 = "<") Then
  loc_1EC5D39:         Set var_194 = Me.TEXT
  loc_1EC5D3F:         Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8)
  loc_1EC5D6C:         If (var_100.Fields.Item("Balance").Value >= CVar(Val(var_1B8.Text))) Then
  loc_1EC5D6F:           GoTo loc_1EBFECD
  loc_1EC5D72:         End If
  loc_1EC5D75:       Else
  loc_1EC5D80:         If (var_2C4 = "<=") Then
  loc_1EC5DBB:           Set var_194 = Me.TEXT
  loc_1EC5DC1:           Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8)
  loc_1EC5DEE:           If (var_100.Fields.Item("Balance").Value > CVar(Val(var_1B8.Text))) Then
  loc_1EC5DF1:             GoTo loc_1EBFECD
  loc_1EC5DF4:           End If
  loc_1EC5DF7:         Else
  loc_1EC5E02:           If (var_2C4 = ">") Then
  loc_1EC5E3D:             Set var_194 = Me.TEXT
  loc_1EC5E43:             Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8)
  loc_1EC5E70:             If (var_100.Fields.Item("Balance").Value <= CVar(Val(var_1B8.Text))) Then
  loc_1EC5E73:               GoTo loc_1EBFECD
  loc_1EC5E76:             End If
  loc_1EC5E79:           Else
  loc_1EC5E84:             If (var_2C4 = ">=") Then
  loc_1EC5EBF:               Set var_194 = Me.TEXT
  loc_1EC5EC5:               Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8)
  loc_1EC5EF2:               If (var_100.Fields.Item("Balance").Value < CVar(Val(var_1B8.Text))) Then
  loc_1EC5EF5:                 GoTo loc_1EBFECD
  loc_1EC5EF8:               End If
  loc_1EC5EFB:             Else
  loc_1EC5F06:               If (var_2C4 = "<>") Then
  loc_1EC5F23:                 var_168 = var_100.Fields.Item("Balance")
  loc_1EC5F41:                 Set var_194 = Me.TEXT
  loc_1EC5F47:                 Call 0.Method_Proc_245_79_1ED109C0 (CInt(0), var_1B8)
  loc_1EC5F74:                 If (var_168.Value = CVar(Val(var_1B8.Text))) Then
  loc_1EC5F77:                   GoTo loc_1EBFECD
  loc_1EC5F7A:                 End If
  loc_1EC5F7A:               End If
  loc_1EC5F7A:             End If
  loc_1EC5F7A:           End If
  loc_1EC5F7A:         End If
  loc_1EC5F7A:       End If
  loc_1EC5F7A:     End If
  loc_1EC5F7A:   End If
  loc_1EC5F7A: End If
  loc_1EC5F88: Set var_148 = Me.TEXT
  loc_1EC5F8E: Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_168)
  loc_1EC5FB2: If (CDbl(Val(var_168.Text)) > CDbl(0)) Then
  loc_1EC5FC2:   var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1EC5FDE:   var_168 = var_88.Fields.Item("subcode")
  loc_1EC5FED:   Proc_183_9_EAA760(var_178, CVar(var_168), CVar(Val(var_1B8.Text)))
  loc_1EC600D:   Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTE_DATE), var_88.Fields & var_210 & var_178 & " AND V_DATE<=")
  loc_1EC6015:   var_210 = -1 & var_1C8 
  loc_1EC6019:   var_160 = CStr(var_210)
  loc_1EC6023:   unk_58C10D.Execute var_160, var_194, 
  loc_1EC602E:   Set var_100 = var_194
  loc_1EC6062:   If (var_100.RecordCount > 0) Then
  loc_1EC606E:     Set var_148 = Me.TEXT
  loc_1EC6074:     Call 0.Method_Proc_245_79_1ED109C0 (9)
  loc_1EC608B:     var_2D4 = Trim(CVar(var_168)) 'Variant
  loc_1EC60A0:     If (var_2D4 = "=") Then
  loc_1EC60BD:       var_168 = var_100.Fields.Item("Balance")
  loc_1EC60C5:       var_158 = var_168.Value
  loc_1EC60DB:       Set var_194 = Me.TEXT
  loc_1EC60E1:       Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8, var_160)
  loc_1EC60E9:       var_158 = var_1B8.Text
  loc_1EC610E:       If CBool(var_168 <> CVar(Val(var_160))) Then
  loc_1EC6111:         GoTo loc_1EBFECD
  loc_1EC6114:       End If
  loc_1EC6117:     Else
  loc_1EC6122:       If (var_2D4 = "<") Then
  loc_1EC615D:         Set var_194 = Me.TEXT
  loc_1EC6163:         Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8)
  loc_1EC6190:         If (var_100.Fields.Item("Balance").Value >= CVar(Val(var_1B8.Text))) Then
  loc_1EC6193:           GoTo loc_1EBFECD
  loc_1EC6196:         End If
  loc_1EC6199:       Else
  loc_1EC61A4:         If (var_2D4 = "<=") Then
  loc_1EC61DF:           Set var_194 = Me.TEXT
  loc_1EC61E5:           Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8)
  loc_1EC6212:           If (var_100.Fields.Item("Balance").Value > CVar(Val(var_1B8.Text))) Then
  loc_1EC6215:             GoTo loc_1EBFECD
  loc_1EC6218:           End If
  loc_1EC621B:         Else
  loc_1EC6226:           If (var_2D4 = ">") Then
  loc_1EC6261:             Set var_194 = Me.TEXT
  loc_1EC6267:             Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8)
  loc_1EC6294:             If (var_100.Fields.Item("Balance").Value <= CVar(Val(var_1B8.Text))) Then
  loc_1EC6297:               GoTo loc_1EBFECD
  loc_1EC629A:             End If
  loc_1EC629D:           Else
  loc_1EC62A8:             If (var_2D4 = ">=") Then
  loc_1EC62E3:               Set var_194 = Me.TEXT
  loc_1EC62E9:               Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8)
  loc_1EC6316:               If (var_100.Fields.Item("Balance").Value < CVar(Val(var_1B8.Text))) Then
  loc_1EC6319:                 GoTo loc_1EBFECD
  loc_1EC631C:               End If
  loc_1EC631F:             Else
  loc_1EC632A:               If (var_2D4 = "<>") Then
  loc_1EC6365:                 Set var_194 = Me.TEXT
  loc_1EC636B:                 Call 0.Method_Proc_245_79_1ED109C0 (CInt(1), var_1B8)
  loc_1EC6398:                 If (var_100.Fields.Item("Balance").Value = CVar(Val(var_1B8.Text))) Then
  loc_1EC639B:                   GoTo loc_1EBFECD
  loc_1EC639E:                 End If
  loc_1EC639E:               End If
  loc_1EC639E:             End If
  loc_1EC639E:           End If
  loc_1EC639E:         End If
  loc_1EC639E:       End If
  loc_1EC639E:     End If
  loc_1EC639E:   End If
  loc_1EC639E: End If
  loc_1EC63A1: var_EC = CDbl(0)
  loc_1EC63E4: var_A8 = CStr(IIf((var_98 = "Merge"), 0, CVar(var_88.Fields.Item("subcode"))))
  loc_1EC63FD: If (var_98 <> "Merge") Then
  loc_1EC6426:   var_178 = Trim(CVar(var_88.Fields.Item("Name")))
  loc_1EC642F:   var_A4 = CStr(var_178)
  loc_1EC643C: End If
  loc_1EC6455: var_A4 = CStr(Left(var_A4, &H32))
  loc_1EC645E: var_2D8 = arg_10
  loc_1EC6469: If (var_2D8 = "LedDeb") Then
  loc_1EC64BA:   var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1EC64EC:   If CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) Then
  loc_1EC6515:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")))
  loc_1EC6525:     Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTE_DATE))
  loc_1EC6530:     var_280 = 0
  loc_1EC6571:     var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE <=" & var_1C8 & " AND CREDIT >0 " & CVar(var_E4) 
  loc_1EC6588:     unk_58C10D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1EC6590:     var_194 = var_194.Fields
  loc_1EC6598:     var_280 = var_1B8.Item(var_1B8)
  loc_1EC65A0:     var_2DC = var_2DC.Value
  loc_1EC65A9:     var_EC = CSng(var_290)
  loc_1EC65FB:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EC6604:     var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1EC660B:     Proc_183_7_EB0C44(var_1C8, var_1B4)
  loc_1EC6613:     var_2EC = CVar(var_EC) 'Double
  loc_1EC661D:     var_280 = 0
  loc_1EC665E:     var_250 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND DEBIT>0 " & CVar(var_E4) 
  loc_1EC6675:     unk_58C10D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1EC667D:     var_194 = var_194.Fields
  loc_1EC6685:     var_280 = var_1B8.Item(var_1B8)
  loc_1EC668D:     var_2DC = var_2DC.Value
  loc_1EC6695:     var_2A4 = (var_290 - var_290)
  loc_1EC669A:     var_EC = CSng(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo")
  loc_1EC66C9:   Else
  loc_1EC66EF:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EC66FF:     Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4, var_2EC)
  loc_1EC670F:     Proc_183_7_EB0C44(var_250, CVar(Me.TXTE_DATE))
  loc_1EC671A:     var_2FC = 0
  loc_1EC6758:     var_260 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 
  loc_1EC6782:     unk_58C10D.Execute CStr(var_260 & " AND CREDIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1EC678A:     var_194 = var_194.Fields
  loc_1EC6792:     var_2FC = var_1B8.Item(var_1B8)
  loc_1EC679A:     var_2DC = var_2DC.Value
  loc_1EC67A3:     var_EC = CSng(var_30C)
  loc_1EC67D8:     var_114 = "subcode"
  loc_1EC67FB:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1EC680B:     Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4, var_30C)
  loc_1EC681B:     Proc_183_7_EB0C44(var_250, CVar(Me.TXTS_DATE))
  loc_1EC6823:     var_31C = CVar(var_EC) 'Double
  loc_1EC682D:     var_2FC = 0
  loc_1EC6843:     var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EC6887:     var_2A4 = var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND DEBIT>0 " & CVar(var_E4) & vbNullString 
  loc_1EC6895:     unk_58C10D.Execute CStr(var_2A4), var_2B4, -1
  loc_1EC689D:     var_194 = var_194.Fields
  loc_1EC68A5:     var_2FC = var_1B8.Item(var_1B8)
  loc_1EC68AD:     var_2DC = var_2DC.Value
  loc_1EC68B5:     var_32C = (var_30C - var_30C)
  loc_1EC68BA:     var_EC = CSng(var_32C)
  loc_1EC68EC:   End If
  loc_1EC68F3:   If (var_EC < CDbl(0)) Then
  loc_1EC68F9:     Set var_330 = var_8C 
  loc_1EC6908:     var_330.AddNew var_114, var_124
  loc_1EC690D:     var_124 = vbNullString
  loc_1EC691C:     var_330.Collect = "V_Type"
  loc_1EC6921:     var_124 = 0
  loc_1EC6930:     var_330.Collect = "V_NO"
  loc_1EC6935:     var_124 = vbNullString
  loc_1EC6944:     var_330.Collect = "V_ADD"
  loc_1EC6949:     var_124 = 0
  loc_1EC6958:     var_330.Collect = "V_SNo"
  loc_1EC695D:     var_124 = "Opening Balance"
  loc_1EC696C:     var_330.Collect = "Name"
  loc_1EC6997:     var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1EC69A9:     var_330.Collect = "V_DATE"
  loc_1EC69F2:     var_330.Collect = "PDate"
  loc_1EC6A07:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC6A15:     var_330.Collect = "cr"
  loc_1EC6A1E:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC6A2C:     var_330.Collect = "ADJQTY"
  loc_1EC6A31:     var_124 = "0"
  loc_1EC6A40:     var_330.Collect = "Val"
  loc_1EC6A48:     var_124 = CVar(var_A4) 'String
  loc_1EC6A55:     var_330.Collect = "Name1"
  loc_1EC6A6A:     var_330.Collect = "subcode"
  loc_1EC6A97:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy"))) 'String
  loc_1EC6AA4:     var_330.Collect = "CITY_NAME"
  loc_1EC6AB6:     var_114 = "Add1"
  loc_1EC6ADB:     var_15A = IsNull(CVar(var_88.Fields.Item(var_114)))
  loc_1EC6B06:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1EC6B0C:     var_124 = "Add1"
  loc_1EC6B18:     var_194 = var_88.Fields
  loc_1EC6B31:     var_178 = vbNullString
  loc_1EC6B70:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1EC6B78:     var_210 = (", " + var_1C8)
  loc_1EC6B9C:     var_260 = Trim(IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<"))
  loc_1EC6BA4:     var_270 = (IIf(var_15A, var_178, CVar(var_194.Item(var_124))) + var_260)
  loc_1EC6BAB:     var_290 = Trim(var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & " AND DEBIT>0 ")
  loc_1EC6BBD:     var_330.Collect = "Address1"
  loc_1EC6BF9:     var_330.Update var_114, var_124
  loc_1EC6C00:     Set var_330 = Nothing 
  loc_1EC6C07:     var_EC = CDbl(0)
  loc_1EC6C0A:   End If
  loc_1EC6C17:   var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1EC6C42:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1, var_194, var_EC)
  loc_1EC6C4A:   var_188 = var_290 & var_178 
  loc_1EC6C62:   Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTS_DATE), var_188 & " AND VIEWLEDGER.V_DATE BETWEEN ", var_162, var_15A)
  loc_1EC6C82:   Proc_183_7_EB0C44(var_260, CVar(Me.TXTE_DATE), var_178 & var_1C8 & " AND ")
  loc_1EC6CB4:   unk_58C10D.Execute CStr(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), 1, var_188
  loc_1EC6CBF:   Set var_90 = var_194
  loc_1EC6CED:   ' Referenced from: 1EC947A
  loc_1EC6CFC:   If Not(var_90.EOF) Then
  loc_1EC6D3D:     If (CVar(var_EC) >= var_90.Fields.Item("Debit").Value) Then
  loc_1EC6D71:       var_178 = (CVar(var_EC) - var_90.Fields.Item("Debit").Value)
  loc_1EC6D76:       var_EC = CSng(var_178)
  loc_1EC6D86:     Else
  loc_1EC6D8F:       var_B0 = vbNullString
  loc_1EC6D95:       var_B4 = vbNullString
  loc_1EC6D9B:       var_B8 = vbNullString
  loc_1EC6DE8:       If CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1EC6E2B:         var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EC6E30:         var_AC = CStr(CVar(Me.TXTS_DATE))
  loc_1EC6E43:       End If
  loc_1EC6E72:       If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1EC6E98:         var_160 = var_AC & " Dt:   "
  loc_1EC6EC8:         var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))
  loc_1EC6EE0:       End If
  loc_1EC6F96:       var_290 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1))) <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1EC6F9F:       var_B0 = CStr(var_290)
  loc_1EC7047:       var_250 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))) <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString)
  loc_1EC7050:       var_B4 = CStr(var_250)
  loc_1EC715E:       var_2B4 = vbNullString
  loc_1EC717E:       var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), var_2B4)
  loc_1EC7186:       var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1EC718B:       var_B8 = CStr(var_32C)
  loc_1EC7244:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EC7275:       var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EC727A:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1EC72D4:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EC7306:       var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1EC730B:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1EC7335:       var_124 = vbNullString
  loc_1EC7348:       var_114 = (var_B8 = vbNullString)
  loc_1EC7357:       var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1EC7394:       var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1EC73B7:       Set var_340 = var_8C 
  loc_1EC73C6:       var_340.AddNew var_114, var_124
  loc_1EC73F3:       var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1EC7400:       var_340.Collect = "V_ADD"
  loc_1EC742E:       var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1EC743C:       var_340.Collect = "V_NO"
  loc_1EC746D:       var_340.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1EC74A7:       var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1EC74B9:       var_340.Collect = "Name"
  loc_1EC7505:       var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC7517:       var_340.Collect = "V_DATE"
  loc_1EC7547:       var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1EC7555:       var_340.Collect = "cr"
  loc_1EC7591:       var_178 = (var_90.Fields.Item("Debit").Value - CVar(var_EC))
  loc_1EC759F:       var_340.Collect = "ADJQTY"
  loc_1EC75CD:       var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1EC75DB:       var_340.Collect = "V_Type"
  loc_1EC7605:       var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1EC7613:       var_340.Collect = "V_SNo"
  loc_1EC7621:       var_124 = CVar(var_A4) 'String
  loc_1EC762E:       var_340.Collect = "Name1"
  loc_1EC7643:       var_340.Collect = "subcode"
  loc_1EC7670:       var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1EC767D:       var_340.Collect = "CITY_NAME"
  loc_1EC76B4:       var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1EC76C6:       var_2DC = var_88.Fields
  loc_1EC76DF:       var_162 = IsNull(CVar(var_2DC.Item("Add2")))
  loc_1EC7751:       var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1EC777D:       var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1EC7784:       var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EC7796:       var_340.Collect = "Address1"
  loc_1EC780A:       var_340.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EC787E:       var_340.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC78D1:       If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC78D4:         var_124 = "1"
  loc_1EC78E3:         var_340.Collect = "Val"
  loc_1EC78EB:       Else
  loc_1EC7951:         var_340.Collect = "Val"
  loc_1EC7972:         If (var_FC = "Yes") Then
  loc_1EC799F:           var_124 = 0
  loc_1EC79B1:           If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1EC79DC:             var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1, 1, var_290)) 'String
  loc_1EC79FF:             var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1EC7A0D:             var_340.Collect = "Name"
  loc_1EC7A25:           Else
  loc_1EC7A28:             var_114 = "Name"
  loc_1EC7A3C:             var_168 = var_90.Fields.Item(var_114)
  loc_1EC7A58:             var_124 = "To "
  loc_1EC7A70:             var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_168), "2", var_162, var_15A))), &H2F))
  loc_1EC7A7E:             var_340.Collect = "Name"
  loc_1EC7A93:           End If
  loc_1EC7A93:         End If
  loc_1EC7A93:       End If
  loc_1EC7A9E:       var_340.Update var_114, var_124
  loc_1EC7AA5:       Set var_340 = Nothing 
  loc_1EC7AB7:       Set var_148 = Me.TEXT
  loc_1EC7ABD:       Call 0.Method_Proc_245_79_1ED109C0 (CInt(6), var_168, var_160, "2")
  loc_1EC7AC5:       var_178 = var_168.Text
  loc_1EC7B29:       If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1EC7B2F:         Set var_344 = var_8C 
  loc_1EC7B36:         var_344.MoveLast
  loc_1EC7B60:         var_344.Fields.Item("Name").Value = "As Per Detail"
  loc_1EC7BAF:         var_344.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EC7BE6:         var_344.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC7C18:         var_344.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EC7C27:         var_114 = "V_DATE"
  loc_1EC7C4A:         var_124 = "dd/MMM/yyyy"
  loc_1EC7C4F:         var_178 = var_124
  loc_1EC7C87:         var_344.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1EC7CA9:         var_344.Update var_114, var_124
  loc_1EC7CB0:         Set var_344 = Nothing 
  loc_1EC7CC1:         var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1EC7CEC:         Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, Trim(Str(CVar(var_90.Fields.Item("V_NO")))), -1, var_2DC)
  loc_1EC7CF4:         var_188 = 1 & var_178 
  loc_1EC7D39:         unk_58C10D.Execute CStr(var_188 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, var_188
  loc_1EC7D44:         Set var_94 = var_2DC
  loc_1EC7D66:         ' Referenced from:   1EC8A19
  loc_1EC7D75:         If Not(var_94.EOF) Then
  loc_1EC7D81:           var_D8 = vbNullString
  loc_1EC7D87:           var_DC = vbNullString
  loc_1EC7DC3:           If (Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), 1) <> vbNullString) Then
  loc_1EC7E06:             var_1B4 = (1 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EC7E0B:             var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1EC7E1E:           End If
  loc_1EC7E4D:           If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1EC7E73:             var_160 = var_D4 & " Dt:   "
  loc_1EC7E80:             var_124 = "dd/MM/yy"
  loc_1EC7EA3:             var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1EC7EBB:           End If
  loc_1EC7EBE:           var_114 = "NARR"
  loc_1EC7EF2:           var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1EC7F04:           Set var_348 = var_8C 
  loc_1EC7F13:           var_348.AddNew var_114, var_124
  loc_1EC7F54:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC7F57:             var_124 = "1"
  loc_1EC7F66:             var_348.Collect = "Val"
  loc_1EC7F6E:           Else
  loc_1EC7FC2:             var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1EC7FD4:             var_348.Collect = "Val"
  loc_1EC7FED:           End If
  loc_1EC8050:           var_348.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC808D:           var_348.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC80DC:           var_348.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EC8129:           If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1EC8151:             var_348.Fields.Item("Sub").Value = "*"
  loc_1EC81A3:             var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1EC81AA:             Proc_183_4_EABBA8(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), var_1C8, 1, 1)
  loc_1EC81D4:             var_1A4 = (var_1C8 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1EC81D8:             var_124 = " "
  loc_1EC81DD:             var_1B4 = ("3" + var_124)
  loc_1EC81F6:             var_250 = (var_124 + CVar(Proc_183_16_EAECDC(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC, "2")))
  loc_1EC81FF:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Dr")
  loc_1EC8223:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1EC8256:           Else
  loc_1EC827B:             var_348.Fields.Item("Sub").Value = "*"
  loc_1EC828D:             var_114 = "Name"
  loc_1EC82A1:             var_168 = var_94.Fields.Item(var_114)
  loc_1EC82D4:             Proc_183_4_EABBA8(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), CVar(var_94.Fields.Item("Credit")))
  loc_1EC82FE:             var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1EC8302:             var_124 = " "
  loc_1EC8307:             var_1B4 = ("3" + var_124)
  loc_1EC8320:             var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC)))
  loc_1EC8329:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Cr")
  loc_1EC834D:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1EC837D:           End If
  loc_1EC8388:           var_348.Update var_114, var_124
  loc_1EC838F:           Set var_348 = Nothing 
  loc_1EC83A1:           Set var_148 = Me.TEXT
  loc_1EC83A7:           Call 0.Method_Proc_245_79_1ED109C0 (CInt(7), var_168)
  loc_1EC83C6:           If (var_168.Text = "Yes") Then
  loc_1EC83CC:             var_114 = var_D4
  loc_1EC83DC:             var_124 = vbNullString
  loc_1EC83E7:             If CBool(Trim(var_114) <> var_124) Then
  loc_1EC83EA:               ' Referenced from:   1EC86EA
  loc_1EC83F4:               If (Len(var_D4) > 0) Then
  loc_1EC83FA:                 Set var_34C = var_8C 
  loc_1EC8409:                 var_34C.AddNew var_114, var_124
  loc_1EC8436:                 var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1EC845A:                 var_34C.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_34C.Fields.Item("Name").Value), &H14))
  loc_1EC84B2:                 var_34C.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EC84E9:                 var_34C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC851A:                 var_34C.Fields.Item("Sub").Value = "*"
  loc_1EC8589:                 var_34C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC85DC:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC8604:                   var_34C.Fields.Item("Val").Value = "1"
  loc_1EC8613:                 Else
  loc_1EC8619:                   var_114 = "Credit"
  loc_1EC8653:                   var_124 = 0
  loc_1EC868F:                   var_34C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EC86AC:                 End If
  loc_1EC86B7:                 var_34C.Update var_114, var_124
  loc_1EC86BE:                 Set var_34C = Nothing 
  loc_1EC86E0:                 var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1EC86EA:                 GoTo loc_1EC83EA
  loc_1EC86ED:               End If
  loc_1EC86ED:             End If
  loc_1EC86F0:             var_114 = var_DC
  loc_1EC8700:             var_124 = vbNullString
  loc_1EC870B:             If CBool(Trim(var_114) <> var_124) Then
  loc_1EC870E:               ' Referenced from:   1EC8A0E
  loc_1EC8718:               If (Len(var_DC) > 0) Then
  loc_1EC871E:                 Set var_350 = var_8C 
  loc_1EC872D:                 var_350.AddNew var_114, var_124
  loc_1EC875A:                 var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1EC877E:                 var_350.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1EC87D6:                 var_350.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EC880D:                 var_350.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC883E:                 var_350.Fields.Item("Sub").Value = "*"
  loc_1EC88AD:                 var_350.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC8900:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC8928:                   var_350.Fields.Item("Val").Value = "1"
  loc_1EC8937:                 Else
  loc_1EC893D:                   var_114 = "Credit"
  loc_1EC8977:                   var_124 = 0
  loc_1EC89B3:                   var_350.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EC89D0:                 End If
  loc_1EC89DB:                 var_350.Update var_114, var_124
  loc_1EC89E2:                 Set var_350 = Nothing 
  loc_1EC8A04:                 var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1EC8A0E:                 GoTo loc_1EC870E
  loc_1EC8A11:               End If
  loc_1EC8A11:             End If
  loc_1EC8A11:           End If
  loc_1EC8A14:           var_94.MoveNext
  loc_1EC8A19:           GoTo loc_1EC7D66
  loc_1EC8A1C:         End If
  loc_1EC8A1C:       End If
  loc_1EC8A3A:       If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1EC8A3D:         ' Referenced from:   1EC8D89
  loc_1EC8A47:         If (Len(var_AC) > 0) Then
  loc_1EC8A4D:           Set var_354 = var_8C 
  loc_1EC8A54:           var_354.MoveLast
  loc_1EC8A5C:           var_114 = "Name"
  loc_1EC8A87:           var_124 = vbNullString
  loc_1EC8A99:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EC8AA7:             var_354.AddNew var_114, var_124
  loc_1EC8AAC:           End If
  loc_1EC8AD4:           var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1EC8AF8:           var_354.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1EC8B50:           var_354.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EC8B87:           var_354.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC8BB9:           var_354.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EC8C28:           var_354.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC8C7B:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC8CA3:             var_354.Fields.Item("Val").Value = "1"
  loc_1EC8CB2:           Else
  loc_1EC8CB8:             var_114 = "Credit"
  loc_1EC8CF2:             var_124 = 0
  loc_1EC8D2E:             var_354.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EC8D4B:           End If
  loc_1EC8D56:           var_354.Update var_114, var_124
  loc_1EC8D5D:           Set var_354 = Nothing 
  loc_1EC8D7F:           var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1EC8D89:           GoTo loc_1EC8A3D
  loc_1EC8D8C:         End If
  loc_1EC8D8C:       End If
  loc_1EC8DAA:       If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1EC8DAD:         ' Referenced from:   1EC90F9
  loc_1EC8DB7:         If (Len(var_B0) > 0) Then
  loc_1EC8DBD:           Set var_358 = var_8C 
  loc_1EC8DC4:           var_358.MoveLast
  loc_1EC8DCC:           var_114 = "Name"
  loc_1EC8DF7:           var_124 = vbNullString
  loc_1EC8E09:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EC8E17:             var_358.AddNew var_114, var_124
  loc_1EC8E1C:           End If
  loc_1EC8E44:           var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1EC8E68:           var_358.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1EC8EA3:           var_358.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EC8ED5:           var_358.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC8F44:           var_358.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC8F97:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC8FBF:             var_358.Fields.Item("Val").Value = "1"
  loc_1EC8FCE:           Else
  loc_1EC904A:             var_358.Fields.Item("Val").Value = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1EC9067:           End If
  loc_1EC906A:           var_114 = "DocID"
  loc_1EC908E:           var_124 = "DocId"
  loc_1EC90AA:           var_358.Fields.Item(var_124).Value = CVar(var_90.Fields.Item(var_114))
  loc_1EC90C6:           var_358.Update var_114, var_124
  loc_1EC90CD:           Set var_358 = Nothing 
  loc_1EC90EF:           var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1EC90F9:           GoTo loc_1EC8DAD
  loc_1EC90FC:         End If
  loc_1EC90FC:       End If
  loc_1EC911A:       If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1EC911D:         ' Referenced from:   1EC9469
  loc_1EC9127:         If (Len(var_B4) > 0) Then
  loc_1EC912D:           Set var_35C = var_8C 
  loc_1EC9134:           var_35C.MoveLast
  loc_1EC913C:           var_114 = "Name"
  loc_1EC9167:           var_124 = vbNullString
  loc_1EC9179:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1EC9187:             var_35C.AddNew var_114, var_124
  loc_1EC918C:           End If
  loc_1EC91B4:           var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1EC91D8:           var_35C.Fields.Item("Name").Value = (var_90.Fields.Item("Credit").Value > 0)
  loc_1EC9230:           var_35C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EC9267:           var_35C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EC9299:           var_35C.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EC9308:           var_35C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EC935B:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1EC9383:             var_35C.Fields.Item("Val").Value = "1"
  loc_1EC9392:           Else
  loc_1EC9398:             var_114 = "Credit"
  loc_1EC93D2:             var_124 = 0
  loc_1EC940E:             var_35C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EC942B:           End If
  loc_1EC9436:           var_35C.Update var_114, var_124
  loc_1EC943D:           Set var_35C = Nothing 
  loc_1EC944E:           var_114 = var_B4
  loc_1EC945F:           var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1EC9469:           GoTo loc_1EC911D
  loc_1EC946C:         End If
  loc_1EC946C:       End If
  loc_1EC946F:       var_EC = CDbl(0)
  loc_1EC9472:     End If
  loc_1EC9475:     var_90.MoveNext
  loc_1EC947A:     GoTo loc_1EC6CED
  loc_1EC947D:   End If
  loc_1EC9484:   If (var_EC > CDbl(0)) Then
  loc_1EC948A:     Set var_360 = var_8C 
  loc_1EC9499:     var_360.AddNew var_114, var_124
  loc_1EC949E:     var_124 = vbNullString
  loc_1EC94AD:     var_360.Collect = "V_Type"
  loc_1EC94B2:     var_124 = 0
  loc_1EC94C1:     var_360.Collect = "V_NO"
  loc_1EC94C6:     var_124 = vbNullString
  loc_1EC94D5:     var_360.Collect = "V_ADD"
  loc_1EC94DA:     var_124 = 0
  loc_1EC94E9:     var_360.Collect = "V_SNo"
  loc_1EC94EE:     var_124 = "Excess Credit"
  loc_1EC94FD:     var_360.Collect = "Name"
  loc_1EC9506:     var_158 = CVar(Me.TXTE_DATE) 'Address
  loc_1EC9514:     var_360.Collect = "V_DATE"
  loc_1EC9520:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC952E:     var_360.Collect = "ADJAMT"
  loc_1EC9536:     var_124 = CVar(var_A4) 'String
  loc_1EC9543:     var_360.Collect = "Name1"
  loc_1EC954B:     var_124 = CVar(var_A8) 'String
  loc_1EC9558:     var_360.Collect = "subcode"
  loc_1EC9585:     var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1EC95B0:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1EC95B6:     var_124 = "Add1"
  loc_1EC961A:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1EC9622:     var_210 = (", " + var_1C8)
  loc_1EC964E:     var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1EC9655:     var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EC9667:     var_360.Collect = "Address1"
  loc_1EC969B:     var_114 = "CITY_NAME"
  loc_1EC96C0:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1EC96C4:     var_124 = "CITY_NAME"
  loc_1EC96CD:     var_360.Collect = var_124
  loc_1EC96E7:     var_360.Update var_114, var_124
  loc_1EC96EE:     Set var_360 = Nothing 
  loc_1EC96F2:   End If
  loc_1EC96F2:   GoTo loc_1EBFECD
  loc_1EC96F5: End If
  loc_1EC96FD: Loop Until (var_2D8 = "LedCred") 'do at: 1EBCA0B
  loc_1EC972A: var_124 = "E"
  loc_1EC974E: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1EC9780: If CBool((var_88.Fields.Item("GroupNature").Value <> var_124) And (var_1B8.Value <> "R")) Then
  loc_1EC97A2:   var_158 = CVar(var_88.Fields.Item("subcode")) 'Address
  loc_1EC97A9:   Proc_183_9_EAA760(var_178, var_158, var_178, var_124)
  loc_1EC97B9:   Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTE_DATE), var_158)
  loc_1EC97C4:   var_280 = 0
  loc_1EC97DA:   var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EC981C:   unk_58C10D.Execute CStr(var_124 & var_178 & " AND V_DATE <=" & var_1C8 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1EC9824:   var_194 = var_194.Fields
  loc_1EC9829:   ' Referenced from: 1ED970D
  loc_1EC982C:   var_280 = var_1B8.Item(var_1B8)
  loc_1EC9834:   var_2DC = var_2DC.Value
  loc_1EC983D:   var_EC = CSng(var_290)
  loc_1EC988F:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC, var_290)
  loc_1EC9898:   var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1EC989F:   Proc_183_7_EB0C44(var_1C8, var_1B4, var_124)
  loc_1EC98A7:   var_2EC = CVar(var_EC) 'Double
  loc_1EC98B1:   var_280 = 0
  loc_1EC98F2:   var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND CREDIT>0 " & CVar(var_E4) 
  loc_1EC9909:   unk_58C10D.Execute CStr(var_250 & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1EC9911:   var_194 = var_194.Fields
  loc_1EC9919:   var_280 = var_1B8.Item(var_1B8)
  loc_1EC9921:   var_2DC = var_2DC.Value
  loc_1EC9929:   var_2A4 = (var_290 - var_290)
  loc_1EC992E:   var_EC = CSng((Me.Fields.Item("LedSiteCode").Value = "Yes"))
  loc_1EC995D: Else
  loc_1EC9983:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1EC9993:   Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4, var_2EC)
  loc_1EC99A3:   Proc_183_7_EB0C44(var_250, CVar(Me.TXTE_DATE))
  loc_1EC99AE:   var_2FC = 0
  loc_1EC99EC:   var_260 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE BETWEEN " & var_1B4 & " AND " & var_250 
  loc_1EC9A16:   unk_58C10D.Execute CStr(var_260 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1EC9A1E:   Do 'loop at:   1ED99C4
  loc_1EC9A1E:   var_194 = var_194.Fields
  loc_1EC9A26:   var_2FC = var_1B8.Item(var_1B8)
  loc_1EC9A2E:   var_2DC = var_2DC.Value
  loc_1EC9A37:   var_EC = CSng(var_30C)
  loc_1EC9A6C:   var_114 = "subcode"
  loc_1EC9A8F:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1EC9A9F:   Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4, var_30C)
  loc_1EC9AAF:   Proc_183_7_EB0C44(var_250, CVar(Me.TXTS_DATE))
  loc_1EC9AB7:   var_31C = CVar(var_EC) 'Double
  loc_1EC9AC1:   var_2FC = 0
  loc_1EC9AD7:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1EC9AFC:   Do 'loop at:   1ED9848
  loc_1EC9B1F:   var_160 = CStr(var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND CREDIT>0 " & CVar(var_E4) & vbNullString)
  loc_1EC9B29:   unk_58C10D.Execute var_160, var_2B4, -1
  loc_1EC9B31:   var_194 = var_194.Fields
  loc_1EC9B39:   var_2FC = var_1B8.Item(var_1B8)
  loc_1EC9B41:   var_2DC = var_2DC.Value
  loc_1EC9B49:   var_32C = (var_30C - var_30C)
  loc_1EC9B4E:   var_EC = CSng(var_32C)
  loc_1EC9B5F:   ' Referenced from:   1ED9AF9
  loc_1EC9B5F:   Do 'loop at:   1ED9831
  loc_1EC9B5F:   
  loc_1EC9B5F:
  loc_1EC9B80: End If
  loc_1EC9B87: If (var_EC < CDbl(0)) Then
  loc_1EC9B8D:   Set var_364 = var_8C 
  loc_1EC9B9C:   var_364.AddNew var_114, var_124
  loc_1EC9BA1:   var_124 = vbNullString
  loc_1EC9BB0:   var_364.Collect = "V_Type"
  loc_1EC9BB5:   var_124 = 0
  loc_1EC9BC4:   var_364.Collect = "V_NO"
  loc_1EC9BC9:   var_124 = vbNullString
  loc_1EC9BD8:   var_364.Collect = "V_ADD"
  loc_1EC9BDD:   var_124 = 0
  loc_1EC9BEC:   var_364.Collect = "V_SNo"
  loc_1EC9BF1:   var_124 = "Opening Balance"
  loc_1EC9C00:   var_364.Collect = "Name"
  loc_1EC9C2B:   var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1EC9C3D:   var_364.Collect = "V_DATE"
  loc_1EC9C52:   var_158 = CVar(Me.TXTS_DATE) 'Address
  loc_1EC9C60:   var_364.Collect = "PDate"
  loc_1EC9C6C:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC9C7A:   var_364.Collect = "cr"
  loc_1EC9C83:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1EC9C91:   var_364.Collect = "ADJQTY"
  loc_1EC9C96:   var_124 = "0"
  loc_1EC9CA5:   var_364.Collect = "Val"
  loc_1EC9CAD:   var_124 = CVar(var_A4) 'String
  loc_1EC9CBA:   var_364.Collect = "Name1"
  loc_1EC9CCF:   var_364.Collect = "subcode"
  loc_1EC9CFC:   var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("Add1")))) 'String
  loc_1EC9D02:   var_188 = Trim(var_178)
  loc_1EC9D2F:   var_260 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add2")), var_188, 1, 1)) 'String
  loc_1EC9D49:   var_194 = var_88.Fields
  loc_1EC9D62:   var_1C8 = vbNullString
  loc_1EC9D6B:   var_124 = vbNullString
  loc_1EC9DB6:   var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1EC9DD2:   var_30C = (Trim(var_260) = vbNullString) 'Variant
  loc_1EC9DEF:   var_394 = (IIf((var_188 = var_124), var_1C8, CVar(var_194.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, var_2B4)))
  loc_1EC9E08:   var_364.Collect = "Address1"
  loc_1EC9E44:   var_114 = "CITY_NAME"
  loc_1EC9E69:   var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1EC9E6D:   var_124 = "CITY_NAME"
  loc_1EC9E76:   var_364.Collect = var_124
  loc_1EC9E90:   var_364.Update var_114, var_124
  loc_1EC9E97:   Set var_364 = Nothing 
  loc_1EC9E9E:   var_EC = CDbl(0)
  loc_1EC9EA1: End If
  loc_1EC9EAE: var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1EC9ED9: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1)
  loc_1EC9EF9: Proc_183_7_EB0C44(var_1C8, CVar(Me.TXTS_DATE), var_194 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ", var_EC)
  loc_1EC9F19: Proc_183_7_EB0C44(var_260, CVar(Me.TXTE_DATE), var_178 & var_1C8 & " AND ")
  loc_1EC9F45: Do 'loop at: 1ED9594
  loc_1EC9F45: Do 'loop at: 1ED9B66
  loc_1EC9F4B: unk_58C10D.Execute CStr(var_124 & var_260 & " AND VIEWLEDGER.CREDIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), var_124, 
  loc_1EC9F56: Set var_90 = var_194
  loc_1EC9F84: ' Referenced from: 1ECC72F
  loc_1EC9F93: If Not(var_90.EOF) Then
  loc_1EC9FD4:   If (CVar(var_EC) >= var_90.Fields.Item("Credit").Value) Then
  loc_1EC9FDA:     var_124 = CVar(var_EC) 'Double
  loc_1EC9FE1:     ' Referenced from: 1EDCA4B
  loc_1ECA008:     var_178 = (var_124 - var_90.Fields.Item("Credit").Value)
  loc_1ECA00D:     var_EC = CSng(var_178)
  loc_1ECA01D:   Else
  loc_1ECA026:     var_B0 = vbNullString
  loc_1ECA02C:     var_B4 = vbNullString
  loc_1ECA032:     var_B8 = vbNullString
  loc_1ECA06E:     If (Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No"))) <> vbNullString) Then
  loc_1ECA0B1:       var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECA0B6:       var_AC = CStr(CVar(Me.TXTS_DATE))
  loc_1ECA0C9:     End If
  loc_1ECA0F8:     If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ECA11E:       var_160 = var_AC & " Dt:   "
  loc_1ECA14E:       var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ECA166:     End If
  loc_1ECA20F:     var_230 = IIf((Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1) <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ECA218:     var_B0 = CStr(var_230)
  loc_1ECA2A7:     var_160 = Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")))
  loc_1ECA2BF:     var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString))
  loc_1ECA3F0:     var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString)
  loc_1ECA3F8:     var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ECA3FD:     var_B8 = CStr(vbNullString)
  loc_1ECA4B6:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECA4E7:     var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ECA4EC:     var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ECA546:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECA578:     var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ECA57D:     var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ECA5A7:     var_124 = vbNullString
  loc_1ECA5BA:     var_114 = (var_B8 = vbNullString)
  loc_1ECA5C9:     var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ECA606:     var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ECA629:     Set var_3A8 = var_8C 
  loc_1ECA638:     var_3A8.AddNew var_114, var_124
  loc_1ECA665:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ECA672:     var_3A8.Collect = "V_ADD"
  loc_1ECA6A0:     var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ECA6AE:     var_3A8.Collect = "V_NO"
  loc_1ECA6DF:     var_3A8.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ECA719:     var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ECA72B:     var_3A8.Collect = "Name"
  loc_1ECA789:     var_3A8.Collect = "V_DATE"
  loc_1ECA7B9:     var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ECA7C7:     var_3A8.Collect = "cr"
  loc_1ECA803:     var_178 = (var_90.Fields.Item("Credit").Value - CVar(var_EC))
  loc_1ECA811:     var_3A8.Collect = "ADJQTY"
  loc_1ECA83F:     var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ECA84D:     var_3A8.Collect = "V_Type"
  loc_1ECA877:     var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ECA885:     var_3A8.Collect = "V_SNo"
  loc_1ECA893:     var_124 = CVar(var_A4) 'String
  loc_1ECA8A0:     var_3A8.Collect = "Name1"
  loc_1ECA8B5:     var_3A8.Collect = "subcode"
  loc_1ECA8E2:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ECA8EF:     var_3A8.Collect = "CITY_NAME"
  loc_1ECA926:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), var_178, Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy"), 1)) 'String
  loc_1ECA92C:     var_188 = Trim(var_178)
  loc_1ECA940:     var_2DC = var_88.Fields
  loc_1ECA983:     var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ECA9E0:     var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECAA11:     var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, var_188))) = vbNullString), vbNullString, vbNullString))
  loc_1ECAA19:     var_394 = (IIf((var_188 = vbNullString), vbNullString, var_210) + var_384)
  loc_1ECAA20:     var_3A4 = Trim(var_394)
  loc_1ECAA32:     var_3A8.Collect = "Address1"
  loc_1ECAAAE:     var_3A8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECAB22:     var_3A8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECAB75:     If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECAB78:       var_124 = "0"
  loc_1ECAB87:       var_3A8.Collect = "Val"
  loc_1ECAB8F:     Else
  loc_1ECABF5:       var_3A8.Collect = "Val"
  loc_1ECAC16:       If (var_FC = "Yes") Then
  loc_1ECAC43:         var_124 = 0
  loc_1ECAC55:         If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ECAC80:           var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1)) 'String
  loc_1ECAC8B:           var_124 = "By "
  loc_1ECAC9B:           var_1A4 = Left(Trim(var_178), &H2F)
  loc_1ECACA3:           ' Referenced from:     1EDAC32
  loc_1ECACA3:           ' Referenced from:     1EDAAF8
  loc_1ECACA3:           Do 'loop at:     1EDAB82
  loc_1ECACA3:           var_1B4 = (var_124 + var_1A4)
  loc_1ECACB1:           var_3A8.Collect = "Name"
  loc_1ECACC9:         Else
  loc_1ECACCC:           var_114 = "Name"
  loc_1ECACE0:           var_168 = var_90.Fields.Item(var_114)
  loc_1ECACFC:           var_124 = "To "
  loc_1ECAD14:           var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_168), "2", 1))), &H2F))
  loc_1ECAD22:           var_3A8.Collect = "Name"
  loc_1ECAD37:         End If
  loc_1ECAD37:       End If
  loc_1ECAD37:     End If
  loc_1ECAD42:     var_3A8.Update var_114, var_124
  loc_1ECAD49:     Set var_3A8 = Nothing 
  loc_1ECAD5B:     Set var_148 = Me.TEXT
  loc_1ECAD61:     Call 0.Method_Proc_245_79_1ED109C0 (CInt(6), var_168, var_160, "2")
  loc_1ECAD69:     var_3A4 = var_168.Text
  loc_1ECADCD:     If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ECADD3:       Set var_3AC = var_8C 
  loc_1ECADDA:       var_3AC.MoveLast
  loc_1ECAE04:       var_3AC.Fields.Item("Name").Value = "As Per Detail"
  loc_1ECAE53:       var_3AC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECAE8A:       var_3AC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECAEBC:       var_3AC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECAECB:       var_114 = "V_DATE"
  loc_1ECAEEE:       var_124 = "dd/MMM/yyyy"
  loc_1ECAEF3:       var_178 = var_124
  loc_1ECAF2B:       var_3AC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ECAF4D:       var_3AC.Update var_114, var_124
  loc_1ECAF54:       Set var_3AC = Nothing 
  loc_1ECAF65:       var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ECAF90:       Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1)
  loc_1ECAFD3:       var_160 = CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1ECAFDD:       unk_58C10D.Execute var_160, 1, 1
  loc_1ECAFE8:       Set var_94 = var_2DC
  loc_1ECB00A:       ' Referenced from:   1ECBCCE
  loc_1ECB019:       If Not(var_94.EOF) Then
  loc_1ECB025:         var_D8 = vbNullString
  loc_1ECB02B:         var_DC = vbNullString
  loc_1ECB078:         If CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), var_178))))) <> vbNullString) Then
  loc_1ECB0BB:           var_1B4 = (var_160 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECB0C0:           var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ECB0D3:         End If
  loc_1ECB102:         If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ECB128:           var_160 = var_D4 & " Dt:   "
  loc_1ECB135:           var_124 = "dd/MM/yy"
  loc_1ECB158:           var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ECB170:         End If
  loc_1ECB173:         var_114 = "NARR"
  loc_1ECB1A7:         var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ECB1B9:         Set var_3B0 = var_8C 
  loc_1ECB1C8:         var_3B0.AddNew var_114, var_124
  loc_1ECB209:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECB20C:           var_124 = "1"
  loc_1ECB21B:           var_3B0.Collect = "Val"
  loc_1ECB223:         Else
  loc_1ECB277:           var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ECB280:           var_1E0 = "Val"
  loc_1ECB285:           ' Referenced from:     1EDBF38
  loc_1ECB289:           var_3B0.Collect = var_1E0
  loc_1ECB2A2:         End If
  loc_1ECB305:         var_3B0.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECB342:         var_3B0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECB391:         var_3B0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECB3DE:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ECB406:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ECB458:           var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ECB45F:           Proc_183_4_EABBA8(var_210, var_1C8, 1, 1)
  loc_1ECB489:           var_1A4 = (var_1C8 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ECB48D:           Do 'loop at:   1EDB473
  loc_1ECB48D:           var_124 = " "
  loc_1ECB492:           var_1B4 = ("3" + var_124)
  loc_1ECB4AB:           var_250 = (var_124 + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC, "2")))
  loc_1ECB4B4:           var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1ECB4D8:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2)))))
  loc_1ECB50B:         Else
  loc_1ECB530:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ECB542:           var_114 = "Name"
  loc_1ECB556:           var_168 = var_94.Fields.Item(var_114)
  loc_1ECB589:           Proc_183_4_EABBA8(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1ECB5B3:           var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1ECB5B7:           var_124 = " "
  loc_1ECB5BC:           var_1B4 = ("3" + var_124)
  loc_1ECB5D5:           var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC)))
  loc_1ECB5DE:           var_260 = (CVar(var_3B0.Fields.Item("Add2")) + " Cr")
  loc_1ECB602:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14))))
  loc_1ECB632:         End If
  loc_1ECB63D:         var_3B0.Update var_114, var_124
  loc_1ECB644:         Set var_3B0 = Nothing 
  loc_1ECB656:         Set var_148 = Me.TEXT
  loc_1ECB65C:         Call 0.Method_Proc_245_79_1ED109C0 (CInt(7), var_168)
  loc_1ECB67B:         If (var_168.Text = "Yes") Then
  loc_1ECB681:           var_114 = var_D4
  loc_1ECB691:           var_124 = vbNullString
  loc_1ECB69C:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ECB69F:             ' Referenced from:   1ECB99F
  loc_1ECB6A9:             If (Len(var_D4) > 0) Then
  loc_1ECB6AF:               Set var_3B4 = var_8C 
  loc_1ECB6BE:               var_3B4.AddNew var_114, var_124
  loc_1ECB6EB:               var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ECB70F:               var_3B4.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_3B4.Fields.Item("Name").Value), &H14))
  loc_1ECB767:               var_3B4.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECB775:               Do 'loop at:   1EDB648
  loc_1ECB79E:               var_3B4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECB7CF:               var_3B4.Fields.Item("Sub").Value = "*"
  loc_1ECB83E:               var_3B4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECB891:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECB8B9:                 var_3B4.Fields.Item("Val").Value = "1"
  loc_1ECB8C8:               Else
  loc_1ECB8CE:                 var_114 = "Credit"
  loc_1ECB908:                 var_124 = 0
  loc_1ECB944:                 var_3B4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECB961:               End If
  loc_1ECB96C:               var_3B4.Update var_114, var_124
  loc_1ECB973:               Set var_3B4 = Nothing 
  loc_1ECB995:               var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ECB99F:               GoTo loc_1ECB69F
  loc_1ECB9A2:             End If
  loc_1ECB9A2:           End If
  loc_1ECB9A5:           var_114 = var_DC
  loc_1ECB9B5:           var_124 = vbNullString
  loc_1ECB9C0:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ECB9C3:             ' Referenced from:   1ECBCC3
  loc_1ECB9CD:             If (Len(var_DC) > 0) Then
  loc_1ECB9D3:               Set var_3B8 = var_8C 
  loc_1ECB9E2:               var_3B8.AddNew var_114, var_124
  loc_1ECBA0F:               var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ECBA33:               var_3B8.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ECBA8B:               var_3B8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECBAC2:               var_3B8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECBAF3:               var_3B8.Fields.Item("Sub").Value = "*"
  loc_1ECBB62:               var_3B8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECBBB5:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECBBDD:                 var_3B8.Fields.Item("Val").Value = "1"
  loc_1ECBBEC:               Else
  loc_1ECBBF2:                 var_114 = "Credit"
  loc_1ECBC2C:                 var_124 = 0
  loc_1ECBC68:                 var_3B8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECBC85:               End If
  loc_1ECBC90:               var_3B8.Update var_114, var_124
  loc_1ECBC97:               Set var_3B8 = Nothing 
  loc_1ECBCB9:               var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ECBCC3:               GoTo loc_1ECB9C3
  loc_1ECBCC6:             End If
  loc_1ECBCC6:           End If
  loc_1ECBCC6:         End If
  loc_1ECBCC9:         var_94.MoveNext
  loc_1ECBCCE:         GoTo loc_1ECB00A
  loc_1ECBCD1:       End If
  loc_1ECBCD1:     End If
  loc_1ECBCEF:     If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ECBCF2:       ' Referenced from:   1ECC03E
  loc_1ECBCFC:       If (Len(var_AC) > 0) Then
  loc_1ECBD02:         Set var_3BC = var_8C 
  loc_1ECBD09:         var_3BC.MoveLast
  loc_1ECBD11:         var_114 = "Name"
  loc_1ECBD3C:         var_124 = vbNullString
  loc_1ECBD4E:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECBD5C:           var_3BC.AddNew var_114, var_124
  loc_1ECBD61:         End If
  loc_1ECBD89:         var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ECBDAD:         var_3BC.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ECBE05:         var_3BC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECBE3C:         var_3BC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECBE6E:         var_3BC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECBEDD:         var_3BC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECBF30:         Do 'loop at:   1EDB8E5
  loc_1ECBF30:         Do 'loop at:   1EDBC2A
  loc_1ECBF30:         Do 'loop at:   1EDBC37
  loc_1ECBF30:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ECBF58:           var_3BC.Fields.Item("Val").Value = "1"
  loc_1ECBF67:         Else
  loc_1ECBF6D:           var_114 = "Credit"
  loc_1ECBFA7:           var_124 = 0
  loc_1ECBFE3:           var_3BC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECC000:         End If
  loc_1ECC00B:         var_3BC.Update var_114, var_124
  loc_1ECC012:         Set var_3BC = Nothing 
  loc_1ECC034:         var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ECC03E:         GoTo loc_1ECBCF2
  loc_1ECC041:       End If
  loc_1ECC041:     End If
  loc_1ECC05F:     If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ECC062:       ' Referenced from:   1ECC3AE
  loc_1ECC06C:       If (Len(var_B0) > 0) Then
  loc_1ECC072:         Set var_3C0 = var_8C 
  loc_1ECC079:         var_3C0.MoveLast
  loc_1ECC081:         var_114 = "Name"
  loc_1ECC0AC:         var_124 = vbNullString
  loc_1ECC0BE:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECC0CC:           var_3C0.AddNew var_114, var_124
  loc_1ECC0D1:         End If
  loc_1ECC0F9:         var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ECC11D:         var_3C0.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ECC175:         var_3C0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECC1AC:         var_3C0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECC1DE:         var_3C0.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECC24D:         var_3C0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECC286:         var_158 = var_90.Fields.Item("V_Type").Value
  loc_1ECC28E:         var_124 = "OP"
  loc_1ECC2A0:         ' Referenced from:   1EDC204
  loc_1ECC2A0:         If (var_158 = var_124) Then
  loc_1ECC2C8:           var_3C0.Fields.Item("Val").Value = "1"
  loc_1ECC2D7:         Else
  loc_1ECC2DD:           var_114 = "Credit"
  loc_1ECC317:           var_124 = 0
  loc_1ECC353:           var_3C0.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECC370:         End If
  loc_1ECC37B:         var_3C0.Update var_114, var_124
  loc_1ECC382:         Set var_3C0 = Nothing 
  loc_1ECC3A4:         var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ECC3AE:         GoTo loc_1ECC062
  loc_1ECC3B1:       End If
  loc_1ECC3B1:     End If
  loc_1ECC3CF:     If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ECC3D2:       ' Referenced from:   1ECC71E
  loc_1ECC3DC:       If (Len(var_B4) > 0) Then
  loc_1ECC3E2:         Set var_3C4 = var_8C 
  loc_1ECC3E9:         var_3C4.MoveLast
  loc_1ECC3F1:         var_114 = "Name"
  loc_1ECC41C:         var_124 = vbNullString
  loc_1ECC42E:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ECC43C:           var_3C4.AddNew var_114, var_124
  loc_1ECC441:         End If
  loc_1ECC469:         var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ECC48D:         var_3C4.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1ECC4E5:         var_3C4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECC51C:         var_3C4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECC54E:         var_3C4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECC5BD:         var_3C4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECC5F6:         var_158 = var_90.Fields.Item("V_Type").Value
  loc_1ECC5FE:         var_124 = "OP"
  loc_1ECC610:         ' Referenced from:   1EDC574
  loc_1ECC610:         If (var_158 = var_124) Then
  loc_1ECC638:           var_3C4.Fields.Item("Val").Value = "1"
  loc_1ECC647:         Else
  loc_1ECC64D:           var_114 = "Credit"
  loc_1ECC687:           var_124 = 0
  loc_1ECC6C3:           var_3C4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECC6E0:         End If
  loc_1ECC6EB:         var_3C4.Update var_114, var_124
  loc_1ECC6F2:         Set var_3C4 = Nothing 
  loc_1ECC703:         var_114 = var_B4
  loc_1ECC714:         var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ECC71E:         GoTo loc_1ECC3D2
  loc_1ECC721:       End If
  loc_1ECC721:     End If
  loc_1ECC724:     var_EC = CDbl(0)
  loc_1ECC727:   End If
  loc_1ECC72A:   var_90.MoveNext
  loc_1ECC72F:   GoTo loc_1EC9F84
  loc_1ECC732: End If
  loc_1ECC739: Loop Until (var_EC > CDbl(0)) 'do at: 1EBCA08
  loc_1ECC73F: Set var_3C8 = var_8C 
  loc_1ECC74E: var_3C8.AddNew var_114, var_124
  loc_1ECC753: var_124 = vbNullString
  loc_1ECC762: var_3C8.Collect = "V_Type"
  loc_1ECC767: var_124 = 0
  loc_1ECC776: var_3C8.Collect = "V_NO"
  loc_1ECC77B: var_124 = vbNullString
  loc_1ECC78A: var_3C8.Collect = "V_ADD"
  loc_1ECC78F: var_124 = 0
  loc_1ECC79E: var_3C8.Collect = "V_SNo"
  loc_1ECC7A3: var_124 = "Excess Debit"
  loc_1ECC7B2: var_3C8.Collect = "Name"
  loc_1ECC7EF: var_3C8.Collect = "V_DATE"
  loc_1ECC804: var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ECC812: var_3C8.Collect = "ADJAMT"
  loc_1ECC81A: var_124 = CVar(var_A4) 'String
  loc_1ECC827: var_3C8.Collect = "Name1"
  loc_1ECC82F: var_124 = CVar(var_A8) 'String
  loc_1ECC83C: var_3C8.Collect = "subcode"
  loc_1ECC869: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, Format(CVar(Me.TXTE_DATE), "dd/MMM/yyyy"), 1, 1)) 'String
  loc_1ECC8A2: var_270 = Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add2")), var_124, var_124, var_124)))
  loc_1ECC8CF: var_1C8 = vbNullString
  loc_1ECC8D8: var_124 = vbNullString
  loc_1ECC923: var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECC93F: var_30C = (var_270 = vbNullString) 'Variant
  loc_1ECC95C: var_394 = (IIf((Trim(var_178) = var_124), var_1C8, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, vbNullString)))
  loc_1ECC975: var_3C8.Collect = "Address1"
  loc_1ECC9B1: var_114 = "CITY_NAME"
  loc_1ECC9D6: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1ECC9DA: var_124 = "CITY_NAME"
  loc_1ECC9E3: var_3C8.Collect = var_124
  loc_1ECC9FD: var_3C8.Update var_114, var_124
  loc_1ECCA04: Set var_3C8 = Nothing 
  loc_1ECCA08: GoTo loc_1EBFECD
  loc_1ECCA13: Loop Until (arg_10 <> "AcCheckList") 'do at: 1EBD3C4
  loc_1ECCA59: Do 'loop at: 1ED26C9
  loc_1ECCA64: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ECCA96: Loop Until CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) 'do at: 1EBCB8F
  loc_1ECCABF: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_178)
  loc_1ECCAC8: var_1B4 = CVar(Me.TXTS_DATE) 'Address
  loc_1ECCACF: Proc_183_7_EB0C44(var_1C8, var_1B4)
  loc_1ECCAE1: var_280 = 0
  loc_1ECCAF7: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECCB22: var_250 = "E" & var_178 & " AND V_DATE<" & var_1C8 & "  " & CVar(var_E4) 
  loc_1ECCB39: unk_58C10D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ECCB41: var_194 = var_194.Fields
  loc_1ECCB49: var_280 = var_1B8.Item(var_1B8)
  loc_1ECCB51: var_2DC = var_2DC.Value
  loc_1ECCB59: var_2A4 = (Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)) + Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ECCB5E: var_EC = CSng(var_88.Fields.Item("Add2").Value)
  loc_1ECCB8C: GoTo loc_1EBCCA8
  loc_1ECCBB5: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ECCBC5: Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4, CVar(var_EC))
  loc_1ECCBD5: Proc_183_7_EB0C44(var_250, CVar(Me.TXTS_DATE))
  loc_1ECCBDD: var_31C = CVar(var_EC) 'Double
  loc_1ECCBE7: var_2FC = 0
  loc_1ECCBFD: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ECCC4F: unk_58C10D.Execute CStr("E" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & "  " & CVar(var_E4) & vbNullString), vbNullString, -1
  loc_1ECCC57: var_194 = var_194.Fields
  loc_1ECCC5F: var_2FC = var_1B8.Item(var_1B8)
  loc_1ECCC67: var_2DC = var_2DC.Value
  loc_1ECCC6F: var_32C = (var_30C + var_30C)
  loc_1ECCC74: var_EC = CSng(vbNullString)
  loc_1ECCCB0: Loop Until (arg_10 = "LedInt") 'do at: 1EBCFDE
  loc_1ECCCC7: Loop Until (var_90.RecordCount > 0) 'do at: 1EBCF7B
  loc_1ECCCCD: var_90.MoveFirst
  loc_1ECCD23: var_90.Find CStr("Party='" & var_88.Fields.Item("subcode").Value & "'"), 0, 1
  loc_1ECCD4C: Loop Until (var_90.EOF = 0) 'do at: 1EBCF15
  loc_1ECCD56: Loop Until (var_EC = CDbl(0)) 'do at: 1EBCD61
  loc_1ECCD5C: var_90.MoveNext
  loc_1ECCD72: Loop Until (var_90.EOF = &HFF) 'do at: 1EBCDDB
  loc_1ECCDC4: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECCDD8: GoTo loc_1EBCF00
  loc_1ECCDFD: var_178 = var_90.Fields.Item("Party").Value
  loc_1ECCE0B: var_124 = "subcode"
  loc_1ECCE17: var_194 = var_88.Fields
  loc_1ECCE1F: ' Referenced from: 1EDCE16
  loc_1ECCE43: Loop Until (var_178 = var_194.Item(var_124).Value) 'do at: 1EBCE9D
  loc_1ECCE49: var_114 = "V_DATE"
  loc_1ECCE8B: var_F4 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))
  loc_1ECCE9A: GoTo loc_1EBCF00
  loc_1ECCEEC: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECCF07: Loop Until (var_EC = CDbl(0)) 'do at: 1EBCF12
  loc_1ECCF0D: var_90.MovePrevious
  loc_1ECCF12: GoTo loc_1EBCF78
  loc_1ECCF64: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECCF6A: ' Referenced from: 1EDCF1A
  loc_1ECCF6A: ' Referenced from: 1EDCEEE
  loc_1ECCF6A: Do 'loop at: 1EDCF3B
  loc_1ECCF6D: Do 'loop at: 1EDCE2B
  loc_1ECCF6D: 
  loc_1ECCF6D:
  loc_1ECCF78: GoTo loc_1EBCFDE
  loc_1ECCFAF: var_124 = "dd/MMM/yyyy"
  loc_1ECCFCA: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), var_124))
  loc_1ECCFE5: Loop Until (var_EC <> CDbl(0)) 'do at: 1EBD3C4
  loc_1ECCFEB: Set var_3CC = var_8C 
  loc_1ECCFFA: var_3CC.AddNew var_114, var_124
  loc_1ECCFFF: var_124 = vbNullString
  loc_1ECD00E: var_3CC.Collect = "V_Type"
  loc_1ECD013: var_124 = 0
  loc_1ECD022: var_3CC.Collect = "V_NO"
  loc_1ECD027: var_124 = vbNullString
  loc_1ECD036: var_3CC.Collect = "V_ADD"
  loc_1ECD03B: var_124 = 0
  loc_1ECD04A: var_3CC.Collect = "V_SNo"
  loc_1ECD04F: var_124 = "OPENING BALANCE"
  loc_1ECD05E: var_3CC.Collect = "Name"
  loc_1ECD089: var_188 = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1ECD09B: var_3CC.Collect = "V_DATE"
  loc_1ECD0C7: var_188 = IIf((var_EC > CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ECD0D9: var_3CC.Collect = "cr"
  loc_1ECD0DE: ' Referenced from: 1EDD059
  loc_1ECD0DE: ' Referenced from: 1EDCFEA
  loc_1ECD0DE: ' Referenced from: 1EDCF6A
  loc_1ECD0DE: ' Referenced from: 1EDCDCD
  loc_1ECD0DE: Do 'loop at: 1EDD07A
  loc_1ECD0DE: 
  loc_1ECD0DE:
  loc_1ECD104: var_188 = IIf((var_EC < CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ECD116: var_3CC.Collect = "ADJAMT"
  loc_1ECD126: var_124 = "1"
  loc_1ECD135: var_3CC.Collect = "Val"
  loc_1ECD13D: var_124 = CVar(var_A4) 'String
  loc_1ECD14A: var_3CC.Collect = "Name1"
  loc_1ECD177: var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ECD1A2: var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ECD1A8: var_124 = "Add1"
  loc_1ECD1C8: var_144 = " "
  loc_1ECD214: var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ECD240: var_270 = (IIf(var_15A, var_144, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<")))
  loc_1ECD247: var_290 = Trim("E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & "  ")
  loc_1ECD259: var_3CC.Collect = "Address1"
  loc_1ECD2B2: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1ECD2BF: var_3CC.Collect = "CITY_NAME"
  loc_1ECD2D1: var_124 = CVar(var_A8) 'String
  loc_1ECD2DE: var_3CC.Collect = "subcode"
  loc_1ECD331: var_3CC.Fields.Item("PDate").Value = Format(CVar(Me.TXTS_DATE), "dd/MMM/yyyy")
  loc_1ECD350: Loop Until (arg_10 = "LedInt") 'do at: 1EBD3AE
  loc_1ECD35D: var_124 = "dd/MMM/yyyy"
  loc_1ECD36B: var_114 = var_F4
  loc_1ECD373: var_178 = Format(var_114, var_124)
  loc_1ECD390: Do 'loop at: 1EDD308
  loc_1ECD39B: var_3CC.Fields.Item("NextDate").Value = var_178
  loc_1ECD3B9: var_3CC.Update var_114, var_124
  loc_1ECD3C0: Set var_3CC = Nothing 
  loc_1ECD3D8: Loop Until (var_90.RecordCount > 0) 'do at: 1EBFECD
  loc_1ECD3DE: var_90.MoveFirst
  loc_1ECD434: var_90.Find CStr("Party='" & var_88.Fields.Item("subcode").Value & "'"), 0, 1
  loc_1ECD439: Do 'loop at: 1EDD3A3
  loc_1ECD43C: Do 'loop at: 1EDD398
  loc_1ECD43C: 
  loc_1ECD43C:
  loc_1ECD45D: Loop Until (var_90.EOF = 0) 'do at: 1EBFECD
  loc_1ECD462: Loop Until &HFF 'do at: 1EBFECD
  loc_1ECD4E3: Loop Until CBool((arg_10 = "LedInt") And (var_88.Fields.Item("subcode").Value = var_90.Fields.Item("Party").Value)) 'do at: 1EBD6AC
  loc_1ECD4FA: Loop Until (var_90.RecordCount > 0) 'do at: 1EBD6AC
  loc_1ECD500: var_90.MoveNext
  loc_1ECD516: Loop Until (var_90.EOF = &HFF) 'do at: 1EBD57F
  loc_1ECD52E: Do 'loop at: 1EDD520
  loc_1ECD568: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), "dd/MMM/yyyy"))
  loc_1ECD57C: GoTo loc_1EBD6A4
  loc_1ECD5E7: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1EBD641
  loc_1ECD5ED: var_114 = "V_DATE"
  loc_1ECD62F: var_F4 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))
  loc_1ECD63E: GoTo loc_1EBD6A4
  loc_1ECD675: var_124 = "dd/MMM/yyyy"
  loc_1ECD67D: Do 'loop at: 1EDD615
  loc_1ECD690: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(Me.TXTE_DATE.Text))), var_124))
  loc_1ECD6A7: var_90.MovePrevious
  loc_1ECD6AF: Set var_3D0 = var_8C 
  loc_1ECD6BE: var_3D0.AddNew var_114, var_124
  loc_1ECD6EB: var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")), var_F4, 1, 1, var_F4, 1, 1)) 'String
  loc_1ECD6F8: var_3D0.Collect = "V_ADD"
  loc_1ECD726: var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ECD734: var_3D0.Collect = "V_NO"
  loc_1ECD748: var_B0 = vbNullString
  loc_1ECD74E: var_B4 = vbNullString
  loc_1ECD754: var_B8 = vbNullString
  loc_1ECD7A1: Loop Until CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), var_178, var_F4, 1)), var_F4, 1))) <> vbNullString) 'do at: 1EBD7FC
  loc_1ECD7CD: Do 'loop at: 1EDD765
  loc_1ECD7E4: var_1B4 = (var_144 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"), 1))))
  loc_1ECD82B: Loop Until Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) 'do at: 1EBD899
  loc_1ECD83D: Do 'loop at: 1EDD7D5
  loc_1ECD881: var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ECD8AD: Do 'loop at: 1EDD845
  loc_1ECD942: var_230 = IIf((Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1, CStr(CVar(var_88.Fields.Item("Add2"))) & " Dt: ") <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ECD94B: var_B0 = CStr(var_230)
  loc_1ECD9E2: var_160 = Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")))
  loc_1ECD9FA: var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))), vbNullString))
  loc_1ECD9FD: Do 'loop at: 1EDD995
  loc_1ECD9FD: 
  loc_1ECD9FD:
  loc_1ECDB35: var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1ECDB3A: var_B8 = CStr(vbNullString)
  loc_1ECDBBB: var_230 = Trim(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ECDBF3: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECDBFC: var_260 = vbNullString
  loc_1ECDC12: var_250 = (Me.Fields.Item("LedPrefix").Value = "Yes") 'Variant
  loc_1ECDC1C: ' Referenced from: 1ED12E4
  loc_1ECDC24: var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf(var_250, var_230, var_260))
  loc_1ECDC29: var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ECDC83: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECDCB5: var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ECDCBA: var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ECDD06: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ECDD43: var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ECDD89: var_3D0.Fields.Item("DocNo").Value = CVar(CStr(var_230))
  loc_1ECDDC3: var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))))
  loc_1ECDDD5: var_3D0.Collect = "Name"
  loc_1ECDE21: var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECDE33: var_3D0.Collect = "V_DATE"
  loc_1ECDE63: var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ECDE71: var_3D0.Collect = "cr"
  loc_1ECDE9B: var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1ECDEA9: var_3D0.Collect = "ADJAMT"
  loc_1ECDED3: var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ECDEE1: var_3D0.Collect = "V_Type"
  loc_1ECDF0B: var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ECDF19: var_3D0.Collect = "V_SNo"
  loc_1ECDF60: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBDF7A
  loc_1ECDF63: var_124 = "1"
  loc_1ECDF72: var_3D0.Collect = "Val"
  loc_1ECDF77: GoTo loc_1EBE122
  loc_1ECDFE0: var_3D0.Collect = "Val"
  loc_1ECE001: Loop Until (var_FC = "Yes") 'do at: 1EBE122
  loc_1ECE02E: var_124 = 0
  loc_1ECE040: Loop Until (var_90.Fields.Item("Credit").Value > var_124) 'do at: 1EBE0B4
  loc_1ECE06B: var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))) 'String
  loc_1ECE071: var_188 = Trim(var_178)
  loc_1ECE08E: var_1B4 = ("By " + Left(var_188, &H2F))
  loc_1ECE09C: var_3D0.Collect = "Name"
  loc_1ECE0B1: GoTo loc_1EBE122
  loc_1ECE0FF: var_1B4 = ("To " + Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), var_188)))))), &H2F))
  loc_1ECE10D: var_3D0.Collect = "Name"
  loc_1ECE125: var_124 = CVar(var_A4) 'String
  loc_1ECE132: var_3D0.Collect = "Name1"
  loc_1ECE147: var_3D0.Collect = "subcode"
  loc_1ECE18E: var_2DC = var_88.Fields
  loc_1ECE1D1: var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ECE1F7: var_230 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), "2"))) = vbNullString), vbNullString, var_210)
  loc_1ECE21E: var_33C = var_88.Fields.Item("Add2")
  loc_1ECE22E: var_2B4 = (", " + var_33C.Value)
  loc_1ECE25F: var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1))) = vbNullString), vbNullString, vbNullString))
  loc_1ECE267: var_394 = (var_230 + var_384)
  loc_1ECE280: var_3D0.Collect = "Address1"
  loc_1ECE2E1: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), Trim(var_394))) 'String
  loc_1ECE2EE: var_3D0.Collect = "CITY_NAME"
  loc_1ECE340: var_3D0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECE3B4: var_3D0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECE3D3: Loop Until (arg_10 = "LedInt") 'do at: 1EBE431
  loc_1ECE3E0: var_124 = "dd/MMM/yyyy"
  loc_1ECE3EE: var_114 = var_F4
  loc_1ECE3F6: var_178 = Format(var_114, var_124)
  loc_1ECE416: var_168 = var_3D0.Fields.Item("NextDate")
  loc_1ECE41E: var_168.Value = var_178
  loc_1ECE43C: var_3D0.Update var_114, var_124
  loc_1ECE443: Set var_3D0 = Nothing 
  loc_1ECE455: Set var_148 = Me.TEXT
  loc_1ECE45B: Call 0.Method_Proc_245_79_1ED109C0 (CInt(6), var_168, var_160, 1, 1)
  loc_1ECE463: 1 = var_168.Text
  loc_1ECE4C7: Loop Until CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) 'do at: 1EBF3BA
  loc_1ECE4CD: Set var_3D4 = var_8C 
  loc_1ECE4D4: var_3D4.MoveLast
  loc_1ECE4FE: var_3D4.Fields.Item("Name").Value = "As Per Detail"
  loc_1ECE54D: var_3D4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECE584: var_3D4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECE5B6: var_3D4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECE5C5: var_114 = "V_DATE"
  loc_1ECE5E8: var_124 = "dd/MMM/yyyy"
  loc_1ECE5ED: var_178 = var_124
  loc_1ECE625: var_3D4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ECE647: var_3D4.Update var_114, var_124
  loc_1ECE64E: Set var_3D4 = Nothing 
  loc_1ECE65F: var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ECE68A: Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1, var_2DC)
  loc_1ECE6D7: unk_58C10D.Execute CStr(1 & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, 1
  loc_1ECE6E2: Set var_94 = var_2DC
  loc_1ECE713: Loop Until Not(var_94.EOF) 'do at: 1EBF3BA
  loc_1ECE71F: var_D8 = vbNullString
  loc_1ECE725: var_DC = vbNullString
  loc_1ECE761: Loop Until (Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), var_178) <> vbNullString) 'do at: 1EBE7BC
  loc_1ECE7A4: var_1B4 = (Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))) + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ECE7EB: Loop Until Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) 'do at: 1EBE859
  loc_1ECE81E: var_124 = "dd/MM/yy"
  loc_1ECE841: var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ECE85C: var_114 = "NARR"
  loc_1ECE890: var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ECE8A2: Set var_3D8 = var_8C 
  loc_1ECE8B1: var_3D8.AddNew var_114, var_124
  loc_1ECE8F2: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBE90C
  loc_1ECE8F5: var_124 = "1"
  loc_1ECE904: var_3D8.Collect = "Val"
  loc_1ECE909: GoTo loc_1EBE98B
  loc_1ECE960: var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ECE972: var_3D8.Collect = "Val"
  loc_1ECE9EE: var_3D8.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECEA2B: var_3D8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECEA7A: var_3D8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECEAC7: Loop Until (var_94.Fields.Item("Debit").Value > 0) 'do at: 1EBEBF4
  loc_1ECEACA: var_124 = "*"
  loc_1ECEAEF: var_3D8.Fields.Item("Sub").Value = var_124
  loc_1ECEB41: var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ECEB48: Proc_183_4_EABBA8(var_210, var_1C8, 1, 1)
  loc_1ECEB72: var_1A4 = (var_124 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2), var_1C8)))
  loc_1ECEB7B: var_1B4 = ("3" + " ")
  loc_1ECEB94: var_250 = (CStr(var_90.Fields.Item("V_SNo").Value) & " Dt: " + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC, "2")))
  loc_1ECEB9D: var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1ECEBC1: var_3D8.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1ECEBF1: GoTo loc_1EBED1B
  loc_1ECEC19: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1ECEC2B: var_114 = "Name"
  loc_1ECEC3F: var_168 = var_94.Fields.Item(var_114)
  loc_1ECEC72: Proc_183_4_EABBA8(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1ECEC9C: var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1ECECA0: var_124 = " "
  loc_1ECECA5: var_1B4 = ("3" + var_124)
  loc_1ECECBE: var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC)))
  loc_1ECECC7: var_260 = (CVar(var_3D8.Fields.Item("Add2")) + " Cr")
  loc_1ECECE3: var_334 = var_3D8.Fields.Item("Name")
  loc_1ECECEB: var_334.Value = CVar(Proc_183_2_E5A304(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1ECED26: var_3D8.Update var_114, var_124
  loc_1ECED2D: Set var_3D8 = Nothing 
  loc_1ECED3F: Set var_148 = Me.TEXT
  loc_1ECED45: Call 0.Method_Proc_245_79_1ED109C0 (CInt(7), var_168)
  loc_1ECED4D: var_160 = var_168.Text
  loc_1ECED64: Loop Until (var_160 = "Yes") 'do at: 1EBF3AF
  loc_1ECED6A: var_114 = var_D4
  loc_1ECED7A: var_124 = vbNullString
  loc_1ECED85: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1EBF08B
  loc_1ECED92: Loop Until (Len(var_D4) > 0) 'do at: 1EBF08B
  loc_1ECED98: Set var_3DC = var_8C 
  loc_1ECEDA7: var_3DC.AddNew var_114, var_124
  loc_1ECEDD4: var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ECEDF8: var_3DC.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_3DC.Fields.Item("Name").Value), &H14))
  loc_1ECEE50: var_3DC.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECEE87: var_3DC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECEEB8: var_3DC.Fields.Item("Sub").Value = "*"
  loc_1ECEF27: var_3DC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECEF7A: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBEFB1
  loc_1ECEFA2: var_3DC.Fields.Item("Val").Value = "1"
  loc_1ECEFAE: GoTo loc_1EBF04A
  loc_1ECEFB7: var_114 = "Credit"
  loc_1ECEFF1: var_124 = 0
  loc_1ECF02D: var_3DC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECF055: var_3DC.Update var_114, var_124
  loc_1ECF05C: Set var_3DC = Nothing 
  loc_1ECF07E: var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ECF088: GoTo loc_1EBED88
  loc_1ECF08E: var_114 = var_DC
  loc_1ECF09E: var_124 = vbNullString
  loc_1ECF0A9: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1EBF3AF
  loc_1ECF0B6: Loop Until (Len(var_DC) > 0) 'do at: 1EBF3AF
  loc_1ECF0BC: Set var_3E0 = var_8C 
  loc_1ECF0CB: var_3E0.AddNew var_114, var_124
  loc_1ECF0F8: var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ECF11C: var_3E0.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ECF174: var_3E0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ECF1AB: var_3E0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECF1DC: var_3E0.Fields.Item("Sub").Value = "*"
  loc_1ECF24B: var_3E0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECF29E: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBF2D5
  loc_1ECF2C6: var_3E0.Fields.Item("Val").Value = "1"
  loc_1ECF2D2: GoTo loc_1EBF36E
  loc_1ECF2DB: var_114 = "Credit"
  loc_1ECF2EF: var_168 = var_90.Fields.Item(var_114)
  loc_1ECF315: var_124 = 0
  loc_1ECF351: var_3E0.Fields.Item("Val").Value = IIf((var_168.Value > var_124), "3", "2")
  loc_1ECF379: var_3E0.Update var_114, var_124
  loc_1ECF380: Set var_3E0 = Nothing 
  loc_1ECF3A2: var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ECF3AC: GoTo loc_1EBF0AC
  loc_1ECF3B2: var_94.MoveNext
  loc_1ECF3B7: GoTo loc_1EBE704
  loc_1ECF3C8: Set var_148 = Me.TEXT
  loc_1ECF3CE: Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HB), var_168, var_160, 1)
  loc_1ECF3D6: 1 = var_168.Text
  loc_1ECF3ED: Loop Until (var_160 = "Yes") 'do at: 1EBFE40
  loc_1ECF40E: Loop Until CBool(Trim(var_AC) <> vbNullString) 'do at: 1EBF760
  loc_1ECF41B: Loop Until (Len(var_AC) > 0) 'do at: 1EBF760
  loc_1ECF421: Set var_3E4 = var_8C 
  loc_1ECF428: var_3E4.MoveLast
  loc_1ECF430: var_114 = "Name"
  loc_1ECF45B: var_124 = vbNullString
  loc_1ECF46D: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EBF480
  loc_1ECF47B: var_3E4.AddNew var_114, var_124
  loc_1ECF4A8: var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ECF4CC: var_3E4.Fields.Item("Name").Value = (var_3E4.Fields.Item("Name").Value > "Name")
  loc_1ECF524: var_3E4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECF55B: var_3E4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECF58D: var_3E4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECF5FC: var_3E4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECF64F: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBF686
  loc_1ECF677: var_3E4.Fields.Item("Val").Value = "1"
  loc_1ECF683: GoTo loc_1EBF71F
  loc_1ECF68C: var_114 = "Credit"
  loc_1ECF6C6: var_124 = 0
  loc_1ECF702: var_3E4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECF72A: var_3E4.Update var_114, var_124
  loc_1ECF731: Set var_3E4 = Nothing 
  loc_1ECF753: var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ECF75D: GoTo loc_1EBF411
  loc_1ECF77E: Loop Until CBool(Trim(var_B0) <> vbNullString) 'do at: 1EBFAD0
  loc_1ECF78B: Loop Until (Len(var_B0) > 0) 'do at: 1EBFAD0
  loc_1ECF791: Set var_3E8 = var_8C 
  loc_1ECF798: var_3E8.MoveLast
  loc_1ECF7A0: var_114 = "Name"
  loc_1ECF7CB: var_124 = vbNullString
  loc_1ECF7DD: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EBF7F0
  loc_1ECF7EB: var_3E8.AddNew var_114, var_124
  loc_1ECF818: var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ECF83C: var_3E8.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ECF894: var_3E8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECF8CB: var_3E8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECF8FD: var_3E8.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECF96C: var_3E8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECF9BF: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBF9F6
  loc_1ECF9E7: var_3E8.Fields.Item("Val").Value = "1"
  loc_1ECF9F3: GoTo loc_1EBFA8F
  loc_1ECF9FC: var_114 = "Credit"
  loc_1ECFA36: var_124 = 0
  loc_1ECFA72: var_3E8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ECFA9A: var_3E8.Update var_114, var_124
  loc_1ECFAA1: Set var_3E8 = Nothing 
  loc_1ECFAC3: var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ECFACD: GoTo loc_1EBF781
  loc_1ECFAEE: Loop Until CBool(Trim(var_B4) <> vbNullString) 'do at: 1EBFE40
  loc_1ECFAFB: Loop Until (Len(var_B4) > 0) 'do at: 1EBFE40
  loc_1ECFB01: Set var_3EC = var_8C 
  loc_1ECFB08: var_3EC.MoveLast
  loc_1ECFB10: var_114 = "Name"
  loc_1ECFB3B: var_124 = vbNullString
  loc_1ECFB4D: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1EBFB60
  loc_1ECFB5B: var_3EC.AddNew var_114, var_124
  loc_1ECFB88: var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ECFBAC: var_3EC.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1ECFC04: var_3EC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ECFC3B: var_3EC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ECFC6D: var_3EC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ECFCDC: var_3EC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ECFD2F: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1EBFD66
  loc_1ECFD57: var_3EC.Fields.Item("Val").Value = "1"
  loc_1ECFD63: GoTo loc_1EBFDFF
  loc_1ECFD6C: var_114 = "Credit"
  loc_1ECFD9D: var_1A4 = "3"
  loc_1ECFDA6: var_124 = 0
  loc_1ECFDB0: var_188 = (var_90.Fields.Item(var_114).Value > var_124) 'Variant
  loc_1ECFDBA: var_1C8 = IIf(var_188, var_1A4, "2")
  loc_1ECFDE2: var_3EC.Fields.Item("Val").Value = var_1C8
  loc_1ECFE0A: var_3EC.Update var_114, var_124
  loc_1ECFE11: Set var_3EC = Nothing 
  loc_1ECFE33: var_B4 = CStr(Mid(var_B4, &H31, 300))
  loc_1ECFE3D: GoTo loc_1EBFAF1
  loc_1ECFE43: var_90.MoveNext
  loc_1ECFE56: Loop Until var_90.EOF 'do at: 1EBFE5C
  loc_1ECFE59: GoTo loc_1EBFECD
  loc_1ECFE76: var_168 = var_90.Fields.Item("Party")
  loc_1ECFEA0: var_1B8 = var_88.Fields.Item("subcode")
  loc_1ECFEC4: Loop Until CBool(var_168.Value <> var_1B8.Value) 'do at: 1EBFECA
  loc_1ECFEC7: GoTo loc_1EBFECD
  loc_1ECFECA: GoTo loc_1EBD460
  loc_1ECFED0: var_88.MoveNext
  loc_1ECFED5: GoTo loc_1EC5B44
  loc_1ECFEE4: Me.FrDetail.Visible = False
  loc_1ECFEF2: var_190 = var_8C.RecordCount
  loc_1ECFF00: Loop Until (var_190 <= 0) 'do at: 1EBFF3D
  loc_1ECFF09: Call 0.Method_arg_50 (var_160, 1, 1, 1, 1)
  loc_1ECFF17: var_178 = CVar(var_160) 'String
  loc_1ECFF2A: MsgBox("** No Records Found to Print **", &H40, var_178, var_188, var_1A4)
  loc_1ECFF3A: GoTo loc_1EC1005
  loc_1ECFF53: Set var_148 = var_8C 
  loc_1ECFF5F: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaLEDGER.ttx", &HFF, 1)
  loc_1ECFF6F: var_114 = CVar(var_15A) 'Integer
  loc_1ECFF72: var_C8 = var_114 'Variant
  loc_1ECFF8F: Loop Until ((arg_10 = "LedDeb") And (arg_C = 1)) 'do at: 1EC0246
  loc_1ECFFA9: Call 0.Method_arg_1C (MemVar_1F923B0 & "\FaTAGADALET.RPT", var_114, var_148, var_15A)
  loc_1ECFFB4: MemVar_1F921E4 = var_148
  loc_1ECFFD9: Set var_148 = Me.TxtHeader
  loc_1ECFFDF: Call 0.Method_Proc_245_79_1ED109C0 (0, var_168, "UPDATE FaEnviro SET TagadaHeader1=", var_55C, -1)
  loc_1ECFFEE: Proc_183_9_EAA760(var_178, CVar(var_168), var_560, 1)
  loc_1ECFFF6: var_188 = 1 & var_178 
  loc_1ECFFFF: var_1A4 = var_188 & ",TagadaHeader2=" 
  loc_1ED000C: Set var_194 = Me.TxtHeader
  loc_1ED0012: Call 0.Method_Proc_245_79_1ED109C0 (1, var_1B8, var_1A4)
  loc_1ED0021: Proc_183_9_EAA760(var_1C8, CVar(var_1B8))
  loc_1ED003F: Set var_2DC = Me.TxtHeader
  loc_1ED0045: Call 0.Method_Proc_245_79_1ED109C0 (2, var_334)
  loc_1ED0054: Proc_183_9_EAA760(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1)), CVar(var_334))
  loc_1ED0072: Set var_338 = Me.TxtHeader
  loc_1ED0078: Call 0.Method_Proc_245_79_1ED109C0 (3, var_33C)
  loc_1ED0087: Proc_183_9_EAA760(vbNullString, CVar(var_33C))
  loc_1ED008F: var_30C = 1 & var_1C8 & ",TagadaHeader3=" & CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1)) & ",TagadaHeader4=" & vbNullString 
  loc_1ED00A5: Set var_3F0 = Me.TxtHeader
  loc_1ED00AB: Call 0.Method_Proc_245_79_1ED109C0 (4, var_3F4)
  loc_1ED00BA: Proc_183_9_EAA760(var_384, CVar(var_3F4))
  loc_1ED00D8: Set var_3F8 = Me.TxtFooter
  loc_1ED00DE: Call 0.Method_Proc_245_79_1ED109C0 (0, var_3FC)
  loc_1ED00ED: Proc_183_9_EAA760(var_41C, CVar(var_3FC))
  loc_1ED010B: Set var_440 = Me.TxtFooter
  loc_1ED0111: Call 0.Method_Proc_245_79_1ED109C0 (1, var_444)
  loc_1ED0120: Proc_183_9_EAA760(var_464, CVar(var_444))
  loc_1ED013E: Set var_488 = Me.TxtFooter
  loc_1ED0144: Call 0.Method_Proc_245_79_1ED109C0 (2, var_48C)
  loc_1ED0153: Proc_183_9_EAA760(var_4AC, CVar(var_48C))
  loc_1ED015B: var_4BC = var_30C & ",TagadaHeader5=" & var_384 & ",TagadaFooter1=" & var_41C & ",TagadaFooter2=" & var_464 & ",TagadaFooter3=" & var_4AC 
  loc_1ED0171: Set var_4D0 = Me.TxtFooter
  loc_1ED0177: Call 0.Method_Proc_245_79_1ED109C0 (3, var_4D4)
  loc_1ED0186: Proc_183_9_EAA760(var_4F4, CVar(var_4D4))
  loc_1ED01A4: Set var_518 = Me.TxtFooter
  loc_1ED01AA: Call 0.Method_Proc_245_79_1ED109C0 (4, var_51C)
  loc_1ED01B9: Proc_183_9_EAA760(var_53C, CVar(var_51C))
  loc_1ED01C5: var_160 = CStr(var_4BC & ",TagadaFooter4=" & var_4F4 & ",TagadaFooter5=" & var_53C)
  loc_1ED01CF: unk_58C10D.Execute var_160, 1, 
  loc_1ED0243: GoTo loc_1EC053E
  loc_1ED024C: Call 0.Method_arg_50 (var_160)
  loc_1ED0283: Loop Until (MsgBox("Do You Want Each A/C on Separate Page", &H124, CVar(var_160), var_188, var_1A4) = 6) 'do at: 1EC028F
  loc_1ED0289: var_D0 = "Y"
  loc_1ED028C: GoTo loc_1EC0295
  loc_1ED0292: var_D0 = "N"
  loc_1ED02A1: Loop Until (arg_C = 1) 'do at: 1EC03D8
  loc_1ED02A7: var_568 = arg_10
  loc_1ED02B2: Loop Until Not (var_568 = "Led") 'do at: 1EC02C0
  loc_1ED02BD: Loop Until (var_568 = "AcCheckList") 'do at: 1EC0367
  loc_1ED02D6: var_114 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1ED02E1: MsgBox(var_114, &H40, "Paper Setting", var_188, var_1A4)
  loc_1ED02FF: Set var_148 = Me.TEXT
  loc_1ED0305: Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HD), var_168)
  loc_1ED0325: Set var_1B8 = var_148
  loc_1ED032E: Set var_194 = Me 
  loc_1ED033E: Call 0.Method_arg_154 (var_194, var_1B8, var_D0)
  loc_1ED0360: GoTo loc_1EC1005
  loc_1ED0363: Exit Sub
  loc_1ED0364: GoTo loc_1EC03D5
  loc_1ED036F: Loop Until (var_568 = "LedInt") 'do at: 1EC0393
  loc_1ED037E: Call 0.Method_arg_CC (var_148, var_15A, var_168.Text)
  loc_1ED0389: MemVar_1F921E4 = var_148
  loc_1ED0390: GoTo loc_1EC03D5
  loc_1ED039B: Loop Until Not (var_568 = "LedDeb") 'do at: 1EC03A9
  loc_1ED03A6: Loop Until (var_568 = "LedCred") 'do at: 1EC03D5
  loc_1ED03C0: Call 0.Method_arg_1C (MemVar_1F923B0 & "\FaTAGADADR.RPT", var_114, var_148)
  loc_1ED03CB: MemVar_1F921E4 = var_148
  loc_1ED03D5: GoTo loc_1EC053E
  loc_1ED03DB: var_56C = arg_10
  loc_1ED03E6: Loop Until Not (var_56C = "Led") 'do at: 1EC03F4
  loc_1ED03F1: Loop Until (var_56C = "AcCheckList") 'do at: 1EC0458
  loc_1ED040A: Set var_148 = var_1B8 
  loc_1ED0416: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaLedger.ttx", &HFF)
  loc_1ED0429: var_C8 = CVar(var_15A) 'Variant
  loc_1ED0443: Call 0.Method_arg_C8 (var_148, var_15A)
  loc_1ED044E: MemVar_1F921E4 = var_148
  loc_1ED0455: GoTo loc_1EC053E
  loc_1ED0460: Loop Until (var_56C = "LedInt") 'do at: 1EC04C7
  loc_1ED0479: Set var_148 = var_148 
  loc_1ED0485: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaINTEREST.ttx", &HFF)
  loc_1ED0498: var_C8 = CVar(var_15A) 'Variant
  loc_1ED04B2: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1ED04BD: MemVar_1F921E4 = var_148
  loc_1ED04C4: GoTo loc_1EC053E
  loc_1ED04CF: Loop Until Not (var_56C = "LedDeb") 'do at: 1EC04DD
  loc_1ED04DA: Loop Until (var_56C = "LedCred") 'do at: 1EC053E
  loc_1ED04E6: var_160 = MemVar_1F923B0 & "\FaTAGADADR.ttx"
  loc_1ED04EC: var_18C = var_160
  loc_1ED04F3: Set var_148 = var_148 
  loc_1ED04FF: var_15A = CreateFieldDefFile(var_148, var_18C, &HFF)
  loc_1ED0509: Set var_8C = var_148
  loc_1ED0512: var_C8 = CVar(var_15A) 'Variant
  loc_1ED052C: Call 0.Method_arg_120 (var_148, var_15A)
  loc_1ED0537: MemVar_1F921E4 = var_148
  loc_1ED054F: Call 0.Method_arg_90 (var_148, var_190, var_F6)
  loc_1ED0557: Call 0.Method_arg_24 (1, var_15A)
  loc_1ED0563: For var_570 =  To CInt(var_190): var_562 = var_570 'Integer
  loc_1ED057C:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED0584:   Call 0.Method_arg_20 (var_168)
  loc_1ED058C:   Call 0.Method_arg_30 (var_160)
  loc_1ED0594:   var_574 = var_160
  loc_1ED05A6:   Loop Until (var_574 = "TITLE") 'do at: 1EC06D0
  loc_1ED05B4:   Set var_148 = Me.TEXT
  loc_1ED05BA:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HC))
  loc_1ED05E3:   Loop Until CBool(Trim(CVar(var_168)) <> vbNullString) 'do at: 1EC067C
  loc_1ED05EF:   Call 0.Method_arg_50 (var_160, "'")
  loc_1ED05FB:   var_1E4 = var_160 & " ("
  loc_1ED0612:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HC), var_168, var_18C)
  loc_1ED061A:   var_1E4 = Me.TEXT.Text
  loc_1ED0648:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED0650:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED0658:   Call 0.Method_arg_38 (var_168 & var_18C & ")" & "'")
  loc_1ED0679:   GoTo loc_1EC06CD
  loc_1ED0685:   Call 0.Method_arg_50 (var_160)
  loc_1ED06A8:   Call 0.Method_arg_90 (Me.TEXT, CLng(var_F6))
  loc_1ED06B0:   Call 0.Method_arg_20 (var_168)
  loc_1ED06B8:   Call 0.Method_arg_38 ("'" & var_160 & "'")
  loc_1ED06CD:   GoTo loc_1EC0F69
  loc_1ED06D8:   Loop Until (var_574 = "DT") 'do at: 1EC0760
  loc_1ED0705:   Set var_168 = Me.TXTE_DATE
  loc_1ED072E:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED0736:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED073E:   Call 0.Method_arg_38 ("'From : " & Me.TXTS_DATE.Text & " To : " & var_168.Text & "'")
  loc_1ED075D:   GoTo loc_1EC0F69
  loc_1ED0768:   Loop Until (var_574 = "INT_RATE") 'do at: 1EC07F0
  loc_1ED0773:   Loop Until (arg_10 = "LedInt") 'do at: 1EC07ED
  loc_1ED0787:   Set var_148 = Me.TEXT
  loc_1ED078D:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(5), var_168)
  loc_1ED07C2:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED07CA:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED07D2:   Call 0.Method_arg_38 (vbNullString & CStr(Val(var_168.Text)) & vbNullString)
  loc_1ED07ED:   GoTo loc_1EC0F69
  loc_1ED07F8:   Loop Until (var_574 = "END_DATE") 'do at: 1EC089C
  loc_1ED0803:   Loop Until (arg_10 = "LedInt") 'do at: 1EC0899
  loc_1ED080D:   Set var_148 = Me.TXTE_DATE
  loc_1ED082C:   var_178 = "YYYY,MM,DD"
  loc_1ED0867:   Call 0.Method_arg_90 (var_168, CLng(var_F6), var_194)
  loc_1ED086F:   Call 0.Method_arg_20 (CStr(1 & Format(CDate(CDate(var_148.Text)), var_178) & "#)"), 1)
  loc_1ED0877:   Call 0.Method_arg_38 ("DATE(#")
  loc_1ED0899:   GoTo loc_1EC0F69
  loc_1ED08A4:   Loop Until (var_574 = "SEPRATEPAGE") 'do at: 1EC08EE
  loc_1ED08C8:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED08D0:   Call 0.Method_arg_20 (var_168)
  loc_1ED08D8:   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1ED08EB:   GoTo loc_1EC0F69
  loc_1ED08F6:   Loop Until (var_574 = "PrintVrNo") 'do at: 1EC0967
  loc_1ED090A:   Set var_148 = Me.TEXT
  loc_1ED0910:   Call 0.Method_Proc_245_79_1ED109C0 (CInt(&HD), var_168)
  loc_1ED093B:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED0943:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED094B:   Call 0.Method_arg_38 ("'" & var_168.Text & "'")
  loc_1ED0964:   GoTo loc_1EC0F69
  loc_1ED096F:   Loop Until (var_574 = "DRCRTYPE") 'do at: 1EC09F2
  loc_1ED0975:   var_578 = arg_10
  loc_1ED0980:   Loop Until (var_578 = "LedDeb") 'do at: 1EC09B5
  loc_1ED0996:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED099E:   Call 0.Method_arg_20 (var_168)
  loc_1ED09A6:   Call 0.Method_arg_38 ("'DR'")
  loc_1ED09B2:   GoTo loc_1EC09EF
  loc_1ED09BD:   Loop Until (var_578 = "LedCred") 'do at: 1EC09EF
  loc_1ED09D3:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1ED09DB:   Call 0.Method_arg_20 (var_168)
  loc_1ED09E3:   Call 0.Method_arg_38 ("'CR'")
  loc_1ED09EF:   GoTo loc_1EC0F69
  loc_1ED09FA:   Loop Until (var_574 = "TagadaHeader1") 'do at: 1EC0A62
  loc_1ED0A06:   Set var_148 = Me.TxtHeader
  loc_1ED0A0C:   Call 0.Method_Proc_245_79_1ED109C0 (0)
  loc_1ED0A1B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0A37:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0A3F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0A47:   Call 0.Method_arg_38 (var_168)
  loc_1ED0A5F:   GoTo loc_1EC0F69
  loc_1ED0A6A:   Loop Until (var_574 = "TagadaHeader2") 'do at: 1EC0AD2
  loc_1ED0A76:   Set var_148 = Me.TxtHeader
  loc_1ED0A7C:   Call 0.Method_Proc_245_79_1ED109C0 (1)
  loc_1ED0A8B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0AA7:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0AAF:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0AB7:   Call 0.Method_arg_38 (var_168)
  loc_1ED0ACF:   GoTo loc_1EC0F69
  loc_1ED0ADA:   Loop Until (var_574 = "TagadaHeader3") 'do at: 1EC0B42
  loc_1ED0AE6:   Set var_148 = Me.TxtHeader
  loc_1ED0AEC:   Call 0.Method_Proc_245_79_1ED109C0 (2)
  loc_1ED0AFB:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0B17:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0B1F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0B27:   Call 0.Method_arg_38 (var_168)
  loc_1ED0B3F:   GoTo loc_1EC0F69
  loc_1ED0B4A:   Loop Until (var_574 = "TagadaHeader4") 'do at: 1EC0BB2
  loc_1ED0B56:   Set var_148 = Me.TxtHeader
  loc_1ED0B5C:   Call 0.Method_Proc_245_79_1ED109C0 (3)
  loc_1ED0B6B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0B87:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0B8F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0B97:   Call 0.Method_arg_38 (var_168)
  loc_1ED0BAF:   GoTo loc_1EC0F69
  loc_1ED0BBA:   Loop Until (var_574 = "TagadaHeader5") 'do at: 1EC0C22
  loc_1ED0BC6:   Set var_148 = Me.TxtHeader
  loc_1ED0BCC:   Call 0.Method_Proc_245_79_1ED109C0 (4)
  loc_1ED0BDB:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0BF7:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0BFF:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0C07:   Call 0.Method_arg_38 (var_168)
  loc_1ED0C1F:   GoTo loc_1EC0F69
  loc_1ED0C2A:   Loop Until (var_574 = "TagadaFooter1") 'do at: 1EC0C92
  loc_1ED0C36:   Set var_148 = Me.TxtFooter
  loc_1ED0C3C:   Call 0.Method_Proc_245_79_1ED109C0 (0)
  loc_1ED0C4B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0C67:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0C6F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0C77:   Call 0.Method_arg_38 (var_168)
  loc_1ED0C8F:   GoTo loc_1EC0F69
  loc_1ED0C9A:   Loop Until (var_574 = "TagadaFooter2") 'do at: 1EC0D02
  loc_1ED0CA6:   Set var_148 = Me.TxtFooter
  loc_1ED0CAC:   Call 0.Method_Proc_245_79_1ED109C0 (1)
  loc_1ED0CBB:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0CD7:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0CDF:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0CE7:   Call 0.Method_arg_38 (var_168)
  loc_1ED0CFF:   GoTo loc_1EC0F69
  loc_1ED0D0A:   Loop Until (var_574 = "TagadaFooter3") 'do at: 1EC0D72
  loc_1ED0D16:   Set var_148 = Me.TxtFooter
  loc_1ED0D1C:   Call 0.Method_Proc_245_79_1ED109C0 (2)
  loc_1ED0D2B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0D47:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0D4F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0D57:   Call 0.Method_arg_38 (var_168)
  loc_1ED0D6F:   GoTo loc_1EC0F69
  loc_1ED0D7A:   Loop Until (var_574 = "TagadaFooter4") 'do at: 1EC0DE2
  loc_1ED0D86:   Set var_148 = Me.TxtFooter
  loc_1ED0D8C:   Call 0.Method_Proc_245_79_1ED109C0 (3)
  loc_1ED0D9B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0DB7:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0DBF:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0DC7:   Call 0.Method_arg_38 (var_168)
  loc_1ED0DDF:   GoTo loc_1EC0F69
  loc_1ED0DEA:   Loop Until (var_574 = "TagadaFooter5") 'do at: 1EC0E52
  loc_1ED0DF6:   Set var_148 = Me.TxtFooter
  loc_1ED0DFC:   Call 0.Method_Proc_245_79_1ED109C0 (4)
  loc_1ED0E0B:   Proc_183_9_EAA760(var_178, CVar(var_168))
  loc_1ED0E27:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1ED0E2F:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1ED0E37:   Call 0.Method_arg_38 (var_168)
  loc_1ED0E4F:   GoTo loc_1EC0F69
  loc_1ED0E5A:   Loop Until (var_574 = "PageNo") 'do at: 1EC0EDF
  loc_1ED0EB0:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED0EB8:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED0EC0:   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_1ED0EDC:   GoTo loc_1EC0F69
  loc_1ED0EE7:   Loop Until (var_574 = "Date1") 'do at: 1EC0F69
  loc_1ED0EEA:   var_124 = "'"
  loc_1ED0F04:   var_148 = Me.Fields
  loc_1ED0F20:   var_134 = "'"
  loc_1ED0F29:   var_160 = CStr(var_124 & var_148.Item("daterfill").Value & var_134)
  loc_1ED0F3D:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1ED0F45:   Call 0.Method_arg_20 (var_1B8)
  loc_1ED0F4D:   Call 0.Method_arg_38 (var_160)
  loc_1ED0F6C: Next var_570 'Integer
  loc_1ED0F8A: Call 0.Method_arg_64 (var_148, CVar(var_8C))
  loc_1ED0F92: Call 0.Method_arg_2C (var_124)
  loc_1ED0FA0: Call 0.Method_arg_150 (var_134)
  loc_1ED0FB3: Loop Until (arg_10 = "Led") 'do at: 1EC0FDE
  loc_1ED0FBC: Call 0.Method_arg_50 (var_160)
  loc_1ED0FD3: Call Proc_245_92_14984B0(MemVar_1F921E4, arg_C)
  loc_1ED0FDB: GoTo loc_1EC1005
  loc_1ED0FE4: Call 0.Method_arg_50 (var_160, var_160)
  loc_1ED0FFD: Call Proc_245_92_14984B0(MemVar_1F921E4, 0, var_160)
  loc_1ED100A: Set var_88 = Nothing
  loc_1ED1012: Set var_90 = Nothing
  loc_1ED101A: Set var_8C = Nothing
  loc_1ED1022: Set var_94 = Nothing
  loc_1ED102A: Set var_100 = Nothing
  loc_1ED1032: Set var_104 = Nothing
  loc_1ED1042: Me.TXTACC_CODE.Text = vbNullString
  loc_1ED1057: Me.TXTACC_CODE1.Text = vbNullString
  loc_1ED1064: MemVar_1F921E4 = Nothing
  loc_1ED1070: Exit Sub
  loc_1ED1077: Call 0.Method_arg_50 (var_160, 0)
  loc_1ED108C: Proc_183_57_104AA84(var_160, "Led")
  loc_1ED1098: Exit Sub
End Sub

Public Sub Proc_245_80_1775E54
  'Data Table: 58C0C8
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_16C As String
  Dim var_130 As Variant
  Dim var_1F8 As Variant
  Dim var_228 As Variant
  Dim var_150 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim unk_58C10D As Connection15
  Dim var_218 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_A0 As Recordset15
  Dim var_154 As Fields15
  Dim var_166 As Integer
  Dim var_30C As Fields15
  Dim var_194 As Variant
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_A8 As Recordset15
  Dim var_184 As Variant
  Dim var_318 As Variant
  Dim var_238 As Variant
  Dim var_320 As Recordset15
  Dim var_16E As Integer
  Dim var_A4 As Recordset15
  Dim var_334 As Recordset15
  Dim var_FC As Double
  Dim var_8C As Recordset15
  loc_177406C: On Error Goto loc_1775E21
  loc_1774084: Set var_154 = CVar(CLng(0))(0)
  loc_17740A8: Call Proc_245_64_F51054(CInt(0), CStr(var_164))
  loc_17740BC: If (var_16E = 0) Then
  loc_17740C4:   global_130 = 0
  loc_17740C7:   Exit Sub
  loc_17740C8: End If
  loc_17740D3: Set var_154 = Me.TEXT
  loc_17740D9: Call 0.Method_Proc_245_80_1775E540 (CInt(&HC), var_174, global_130)
  loc_17740E8: var_184 = Trim(CVar(var_174))
  loc_1774102: If CBool(var_184 <> vbNullString) Then
  loc_1774116:   Set var_154 = Me.TEXT
  loc_177411C:   Call 0.Method_Proc_245_80_1775E540 (CInt(&HC), var_174, var_16C)
  loc_1774124:   " And VIEWLEDGER.Site_Code='" = var_174.Tag
  loc_1774134:   var_100 = var_16E & var_16C & "'"
  loc_1774148: Else
  loc_177414F:   var_16C = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078
  loc_1774156:   var_100 = var_16C & "'"
  loc_177415C: End If
  loc_1774168: Set var_154 = Me.Check1
  loc_177416E: Call 0.Method_Proc_245_80_1775E540 (1, var_174)
  loc_177418C: If (CLng(var_174.Value) = 0) Then
  loc_17741AA:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_17741B5:   global_84 = var_16C
  loc_17741C5:   If (global_130 = 0) Then
  loc_17741C8:     Exit Sub
  loc_17741C9:   End If
  loc_17741C9: End If
  loc_17741DE: Set var_154 = CVar(CLng(3))(1)
  loc_1774200: If (CStr(Check1.DispID_41) = vbNullString) Then
  loc_177421C:   MsgBox("Specify More Than Days", 0, var_184, var_194, var_1A8)
  loc_1774231:   global_130 = 0
  loc_1774234:   Exit Sub
  loc_1774235: End If
  loc_1774242: Call Proc_245_82_11EB7A0(New, var_154, global_130)
  loc_177424A: Set var_8C = var_154
  loc_1774258: If (global_84 = vbNullString) Then
  loc_177426B:   var_164 = "Supplier"
  loc_177429D:   Set var_154 = CVar(CLng(0))(1)
  loc_17742B4:   Proc_183_7_EB0C44(var_238, CVar(CStr(Check1.DispID_41)))
  loc_17742C6:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_17742E7:   var_268 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND VIEWLEDGER.V_DATE<=" & var_238 & "  " 
  loc_1774308:   unk_58C10D.Execute CStr(var_268 & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID"), var_2C8, -1
  loc_1774313:   Set var_A0 = var_174
  loc_1774355:   unk_58C10D.Execute "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_1774360:   Set var_A4 = var_154
  loc_177437F:   unk_58C10D.Execute "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_177438A:   Set var_A8 = var_154
  loc_1774396: Else
  loc_17743A6:   var_164 = "Supplier"
  loc_17743C6:   var_1F8 = CVar(CLng(0)) 'Long
  loc_17743D8:   Set var_154 = var_1F8(1)
  loc_17743EF:   Proc_183_7_EB0C44(var_268, CVar(CStr(Check1.DispID_41)), var_154, var_154)
  loc_1774401:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_177441F:   var_218 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND SG.SUBCODE IN (" & CVar(global_84) 
  loc_177444B:   var_2E8 = var_218 & ") AND VIEWLEDGER.V_DATE<=" & var_268 & " " & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID" 
  loc_1774459:   unk_58C10D.Execute CStr(var_2E8), var_308, -1
  loc_1774464:   Set var_A0 = var_174
  loc_17744AB:   var_16C = "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_17744BB:   unk_58C10D.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_17744C6:   Set var_A4 = var_154
  loc_17744ED:   var_16C = "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_17744FD:   unk_58C10D.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_1774508:   Set var_A8 = var_154
  loc_1774518:   ' Referenced from:   1775A51
  loc_1774518: End If
  loc_1774527: If Not(var_A0.EOF) Then
  loc_177457D:   var_184 = vbNullString
  loc_17745A1:   var_BC = CStr(Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))))
  loc_17745E5:   var_C0 = CStr(var_A0.Fields.Item("Party").Value)
  loc_17745F5:   var_D8 = CDbl(0)
  loc_17745FB:   var_E0 = CDbl(0)
  loc_1774601:   var_108 = CDbl(0)
  loc_1774607:   var_110 = CDbl(0)
  loc_177460A:   ' Referenced from: 1775A4E
  loc_1774647:   If (var_A0.Fields.Item("Party").Value = CVar(var_C0)) Then
  loc_177467C:     Proc_183_3_E7D1C8(var_184, CVar(var_A0.Fields.Item("Debit")), CDbl(0), CDbl(0), var_110, var_108, var_E0)
  loc_1774696:     If (var_184 > 0) Then
  loc_17746AD:       If (var_A8.RecordCount > 0) Then
  loc_17746B3:         var_A8.MoveFirst
  loc_17746B8:       End If
  loc_17746F5:       var_130 = "-"
  loc_17746FA:       var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_1774728:       var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_177472C:       var_150 = "-"
  loc_1774731:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name"))) + vbNullString)
  loc_1774763:       var_238 = (Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))) + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_177477B:       var_A8.Find CStr("SCODE='" & var_238 & "'"), 0, 1
  loc_17747AD:       var_166 = var_A8.EOF
  loc_17747B8:       If (var_166 = 0) Then
  loc_17747E1:         Proc_183_3_E7D1C8(var_184, CVar(var_A8.Fields.Item("ADJDR")), var_1F8, var_D8, var_166)
  loc_17747EA:         var_C8 = CSng(var_184)
  loc_17747F7:       End If
  loc_1774816:       var_120 = CVar(CLng(2)) 'Long
  loc_1774828:       Set var_154 = var_120(1)
  loc_1774841:       var_258 = (CStr(Check1.DispID_41) = "Pending")
  loc_1774864:       var_1A8 = Format(CVar(var_A0.Fields.Item("Debit")), "0.00")
  loc_1774894:       var_228 = (1 - Format(var_C8, "0.00"))
  loc_17748C3:       If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_17748C6:         GoTo loc_1775A2F
  loc_17748C9:       End If
  loc_17748CC:       Set var_320 = var_8C 
  loc_17748DB:       var_320.AddNew var_120, 0
  loc_1774923:       var_320.Fields.Item("VDATE1").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_1774977:       var_320.Fields.Item("VNO1").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_17749CB:       var_320.Fields.Item("VTYPE1").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_1774A1F:       var_320.Fields.Item("VSNO1").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_1774A73:       var_320.Fields.Item("VADD1").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_1774AC7:       var_320.Fields.Item("Dr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_1774AFA:       var_164 = var_A0.Fields.Item("Debit").Value
  loc_1774B09:       var_184 = (var_164 - CVar(var_C8))
  loc_1774B2D:       var_320.Fields.Item("PendDr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_1774B71:       Set var_30C = CVar(CLng(0))(1)
  loc_1774BCF:       var_320.Fields.Item("AgeDr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_1774C30:       var_320.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_1774C84:       var_320.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_1774CE8:       var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_1774D30:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_1774D65:       var_1F8 = var_16E
  loc_1774D74:       var_268 = ("0.00" + IIf(var_1F8, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_1774D98:       var_320.Fields.Item("ADDRESS").Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_1774E52:       var_320.Fields.Item("CITY_NAME").Value = IIf(IsNull(CVar(var_A0.Fields.Item("CityName"))), vbNullString, CVar(var_A0.Fields.Item("CityName")))
  loc_1774EFA:       var_320.Fields.Item("ConPerson").Value = IIf(IsNull(CVar(var_A0.Fields.Item("ConPerson"))), vbNullString, CVar(var_A0.Fields.Item("ConPerson")))
  loc_1774FA2:       var_320.Fields.Item("PIN").Value = IIf(IsNull(CVar(var_A0.Fields.Item("Pin"))), vbNullString, CVar(var_A0.Fields.Item("Pin")))
  loc_1774FE7:       var_166 = IsNull(CVar(var_A0.Fields.Item("Email")))
  loc_1775022:       var_1A8 = IIf(var_166, vbNullString, CVar(var_A0.Fields.Item("Email")))
  loc_177504A:       var_320.Fields.Item("EMail").Value = var_1A8
  loc_17750B2:       var_320.Fields.Item("NARRATION1").Value = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item("mNarr")), var_166, var_166, var_166, var_166, var_16E))
  loc_17750CA:       var_120 = "NARR"
  loc_17750EF:       var_184 = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item(var_120)), var_166, Check1.DispID_41, var_1A8)) 'String
  loc_17750F6:       var_130 = "NARRATION2"
  loc_1775112:       var_320.Fields.Item(var_130).Value = var_184
  loc_1775132:       var_320.Update var_120, var_130
  loc_1775139:       Set var_320 = Nothing 
  loc_1775140:     Else
  loc_1775166:       Proc_183_3_E7D1C8(var_184, CVar(var_A0.Fields.Item("Credit")), 1)
  loc_1775180:       If (var_184 > 0) Then
  loc_1775197:         If (var_A4.RecordCount > 0) Then
  loc_177519D:           var_A4.MoveFirst
  loc_17751A2:         End If
  loc_17751DF:         var_130 = "-"
  loc_17751E4:         var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_1775212:         var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_1775216:         var_150 = "-"
  loc_177521B:         var_1C8 = (var_1A8 + vbNullString)
  loc_177524D:         var_238 = ("0.00" + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_1775265:         var_A4.Find CStr("SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"), 0, 1
  loc_17752A2:         If (var_A4.EOF = 0) Then
  loc_17752CB:           Proc_183_3_E7D1C8(var_184, CVar(var_A4.Fields.Item("ADJCR")), var_1F8)
  loc_17752D4:           var_D0 = CSng(var_184)
  loc_17752E1:         End If
  loc_1775300:         var_120 = CVar(CLng(2)) 'Long
  loc_1775312:         Set var_154 = var_120(1)
  loc_177532B:         var_258 = (CStr(Check1.DispID_41) = "Pending")
  loc_177534E:         var_1A8 = Format(CVar(var_A0.Fields.Item("Credit")), "0.00")
  loc_177537E:         var_228 = (1 - Format(var_D0, "0.00"))
  loc_17753AD:         If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_17753B0:           GoTo loc_1775A2F
  loc_17753B3:         End If
  loc_17753B6:         Set var_334 = var_8C 
  loc_17753C5:         var_334.AddNew var_120, 0
  loc_177540D:         var_334.Fields.Item("VDATE2").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_1775461:         var_334.Fields.Item("VNO2").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_17754B5:         var_334.Fields.Item("VTYPE2").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_1775509:         var_334.Fields.Item("VSNO2").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_177555D:         var_334.Fields.Item("VADD2").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_17755B1:         var_334.Fields.Item("Cr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_17755E4:         var_164 = var_A0.Fields.Item("Credit").Value
  loc_17755F3:         var_184 = (var_164 - CVar(var_D0))
  loc_1775617:         var_334.Fields.Item("PendCr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_177565B:         Set var_30C = CVar(CLng(0))(1)
  loc_17756B9:         var_334.Fields.Item("AgeCr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_177571A:         var_334.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_177576E:         var_334.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_17757D2:         var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_177581A:         var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_177585E:         var_268 = ("0.00" + IIf(var_16E, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_1775866:         var_258 = "ADDRESS"
  loc_1775882:         var_334.Fields.Item(var_258).Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_17758D9:         var_166 = IsNull(CVar(var_A0.Fields.Item("CityName")))
  loc_17758FB:         var_194 = CVar(var_A0.Fields.Item("CityName")) 'Address
  loc_1775914:         var_1A8 = IIf(var_166, vbNullString, var_194)
  loc_177593C:         var_334.Fields.Item("CITY_NAME").Value = var_1A8
  loc_1775981:         var_184 = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item("mNarr")), var_166, var_16E, var_166, Check1.DispID_41, var_1A8)) 'String
  loc_17759A4:         var_334.Fields.Item("NARRATION1").Value = var_184
  loc_17759BC:         var_120 = "NARR"
  loc_17759E8:         var_130 = "NARRATION2"
  loc_1775A04:         var_334.Fields.Item(var_130).Value = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item(var_120)), 1, 1, var_258))
  loc_1775A24:         var_334.Update var_120, var_130
  loc_1775A2B:         Set var_334 = Nothing 
  loc_1775A2F:         ' Referenced from:   17753B0
  loc_1775A2F:       End If
  loc_1775A2F:       ' Referenced from: 17748C6
  loc_1775A2F:     End If
  loc_1775A32:     var_A0.MoveNext
  loc_1775A48:     If (var_A0.EOF = &HFF) Then
  loc_1775A4B:       GoTo loc_1775A51
  loc_1775A4E:     End If
  loc_1775A4E:     GoTo loc_177460A
  loc_1775A51:     ' Referenced from: 1775A4B
  loc_1775A51:   End If
  loc_1775A51:   GoTo loc_1774518
  loc_1775A54: End If
  loc_1775A68: If (var_A0.RecordCount > 0) Then
  loc_1775A6E:   var_A0.MoveFirst
  loc_1775A73:   ' Referenced from: 1775CBD
  loc_1775A73: End If
  loc_1775A82: If Not(var_A0.EOF) Then
  loc_1775AB0:   var_F4 = CStr(var_A0.Fields.Item("Party").Value)
  loc_1775AC0:   var_FC = CDbl(0)
  loc_1775ACF:   var_8C.Filter = 0
  loc_1775AE8:   If (var_8C.RecordCount > 0) Then
  loc_1775AEE:     var_8C.MoveFirst
  loc_1775AF3:     ' Referenced from: 1775BE2
  loc_1775AF3:   End If
  loc_1775B02:   If Not(var_8C.EOF) Then
  loc_1775B40:     var_140 = "AgeDr"
  loc_1775B5C:     var_1A8 = var_8C.Fields.Item(var_140).Value
  loc_1775B79:     Set var_318 = CVar(CLng(3))(1)
  loc_1775BBA:     If CBool((var_8C.Fields.Item("subcode").Value = CVar(var_F4)) And (var_1A8 >= CVar(Val(CStr(Check1.DispID_41))))) Then
  loc_1775BC4:       var_FC = (var_FC + CDbl(1))
  loc_1775BCE:       If (var_FC > CDbl(0)) Then
  loc_1775BD1:         GoTo loc_1775CB5
  loc_1775BD7:       Else
  loc_1775BDA:       Else
  loc_1775BDA:       End If
  loc_1775BDD:       var_8C.MoveNext
  loc_1775BE2:       GoTo loc_1775AF3
  loc_1775BE5:     End If
  loc_1775BEC:     If (var_FC = CDbl(0)) Then
  loc_1775BEF:       GoTo loc_1775BF8
  loc_1775BF5:     Else
  loc_1775BF8:     Else
  loc_1775BF8:       ' Referenced from:     1775BEF
  loc_1775BF8:     End If
  loc_1775BFB:     var_130 = CVar(var_F4) 'String
  loc_1775C35:     If (var_130 = var_A0.Fields.Item("Party").Value) Then
  loc_1775C4C:       If (var_8C.RecordCount > 0) Then
  loc_1775C52:         var_8C.MoveFirst
  loc_1775C57:       End If
  loc_1775C5E:       var_16C = "SubCode='" & var_F4
  loc_1775C6C:       var_8C.Filter = CVar(var_16C & "'")
  loc_1775C88:       If (var_8C.EOF = 0) Then
  loc_1775C8B:         ' Referenced from:   1775CB2
  loc_1775C9A:         If Not(var_8C.EOF) Then
  loc_1775CA5:           var_8C.Delete
  loc_1775CAD:           var_8C.MoveNext
  loc_1775CB2:           GoTo loc_1775C8B
  loc_1775CB5:         End If
  loc_1775CB5:         ' Referenced from: 1775BD1
  loc_1775CB5:       End If
  loc_1775CB5:     End If
  loc_1775CB5:   End If
  loc_1775CB8:   var_A0.MoveNext
  loc_1775CBD:   GoTo loc_1775A73
  loc_1775CC0: End If
  loc_1775CCC: var_8C.Filter = 0
  loc_1775CD6: Set var_A0 = Nothing
  loc_1775CDE: Set var_A4 = Nothing
  loc_1775CE6: Set var_A8 = Nothing
  loc_1775CEE: Set var_AC = Nothing
  loc_1775CF6: Set var_B0 = Nothing
  loc_1775D0D: If (var_8C.RecordCount <= 0) Then
  loc_1775D16:   Call 0.Method_arg_50 (var_16C, 1, var_FC, var_FC)
  loc_1775D37:   MsgBox("** No Records Found to Print **", &H40, CVar(var_16C), var_194, var_1A8)
  loc_1775D4C:   global_130 = 0
  loc_1775D4F: End If
  loc_1775D55: Call 0.Method_arg_50 (var_16C, global_130, var_D0)
  loc_1775D72: global_120 = CStr(Ucase(CVar(var_16C)))
  loc_1775D96: Set var_154 = var_8C 
  loc_1775DA2: var_166 = CreateFieldDefFile(var_154, MemVar_1F923B0 & "\FaDueList.ttx", &HFF)
  loc_1775DB2: var_120 = CVar(var_166) 'Integer
  loc_1775DB5: var_9C = var_120 'Variant
  loc_1775DD1: var_16C = MemVar_1F923B0 & "\FaDueList.RPT"
  loc_1775DDA: Call 0.Method_arg_1C (var_16C, var_120, var_154)
  loc_1775DE5: MemVar_1F921E4 = var_154
  loc_1775E08: Call 0.Method_arg_64 (var_154, CVar(var_154), var_130, var_140)
  loc_1775E10: Call 0.Method_arg_2C (var_166, 1)
  loc_1775E1D: Set var_8C = Nothing
  loc_1775E20: Exit Sub
  loc_1775E21: ' Referenced from: 177406C
  loc_1775E2F: Call 0.Method_arg_50 (var_16C, 0)
  loc_1775E44: Proc_183_57_104AA84(var_16C, "DUELIST")
  loc_1775E50: Exit Sub
End Sub

Public Sub Proc_245_81_147DEB4(arg_C) '147DEB4
  'Data Table: 58C0C8
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_118 As String
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_DC As Variant
  Dim var_154 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim unk_58C10D As Connection15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_100 As Fields15
  Dim var_22C As Recordset15
  Dim var_130 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_232 As Integer
  Dim var_A2 As Integer
  Dim var_112 As Integer
  loc_147D2C4: On Error Goto loc_147DE83
  loc_147D2DC: Set var_100 = CVar(CLng(0))(0)
  loc_147D300: Call Proc_245_64_F51054(CInt(0), CStr(var_110))
  loc_147D314: If (var_11A = 0) Then
  loc_147D31C:   global_130 = 0
  loc_147D31F:   Exit Sub
  loc_147D320: End If
  loc_147D335: Set var_100 = CVar(CLng(1))(0)
  loc_147D359: Call Proc_245_64_F51054(CInt(1), CStr(var_110))
  loc_147D36D: If (var_11A = 0) Then
  loc_147D375:   global_130 = 0
  loc_147D378:   Exit Sub
  loc_147D379: End If
  loc_147D38E: Set var_100 = CVar(CLng(0))(1)
  loc_147D3AC: Me.TXTS_DATE.Text = CStr(TXTS_DATE.DispID_41)
  loc_147D3D3: Set var_100 = CVar(CLng(1))(1)
  loc_147D3E4: var_118 = CStr(TXTS_DATE.DispID_41)
  loc_147D3EB: Set var_120 = Me.TXTE_DATE
  loc_147D3F1: var_120.Text = var_118
  loc_147D41A: If (Proc_183_48_F05F98(Me, global_130, var_11A, TXTS_DATE.DispID_41) = 0) Then
  loc_147D422:   global_130 = 0
  loc_147D425:   Exit Sub
  loc_147D426: End If
  loc_147D431: Set var_100 = Me.TEXT
  loc_147D437: Call 0.Method_Proc_245_81_147DEB40 (CInt(&HC), var_120, global_130)
  loc_147D446: var_130 = Trim(CVar(var_120))
  loc_147D460: If CBool(var_130 <> vbNullString) Then
  loc_147D474:   Set var_100 = Me.TEXT
  loc_147D47A:   Call 0.Method_Proc_245_81_147DEB40 (CInt(&HC), var_120, var_118, " And VIEWLEDGER.LOGSite_Code='")
  loc_147D482:   global_130 = var_120.Tag
  loc_147D492:   var_BC = var_11A & var_118 & "'"
  loc_147D4A6: Else
  loc_147D4AD:   var_118 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_147D4B4:   var_BC = var_118 & "'"
  loc_147D4BA: End If
  loc_147D4C6: Set var_100 = Me.Check1
  loc_147D4CC: Call 0.Method_Proc_245_81_147DEB40 (1, var_120)
  loc_147D4EA: If (CLng(var_120.Value) = 0) Then
  loc_147D508:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_147D513:   global_84 = var_118
  loc_147D523:   If (global_130 = 0) Then
  loc_147D526:     GoTo loc_147DE62
  loc_147D529:   End If
  loc_147D529: End If
  loc_147D534: If (global_84 <> vbNullString) Then
  loc_147D548:   var_A8 = " AND GROUPCODE IN (" & global_84 & ") "
  loc_147D54E: End If
  loc_147D55B: Call Proc_245_83_102376C(New, var_100)
  loc_147D563: Set var_8C = var_100
  loc_147D573: var_CC = "SELECT SUM(CREDIT)-SUM(DEBIT) AS BALANCE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date<"
  loc_147D583: Proc_183_7_EB0C44(var_130, CVar(Me.TXTS_DATE), global_96, var_1D4)
  loc_147D58B: var_140 = -1 & var_130 
  loc_147D5A7: var_174 = var_140 & " " & CVar(var_A8) & " " 
  loc_147D5C8: unk_58C10D.Execute CStr(var_174 & CVar(var_BC) & vbNullString), var_100, CStr(var_174 & CVar(var_BC) & vbNullString)
  loc_147D5D3: Set var_94 = var_100
  loc_147D5FE: var_CC = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE V_dATE BETWEEN "
  loc_147D60E: Proc_183_7_EB0C44(var_130, CVar(Me.TXTS_DATE), var_CC, var_1F4)
  loc_147D616: var_140 = -1 & var_130 
  loc_147D62E: Proc_183_7_EB0C44(var_174, CVar(Me.TXTE_DATE), var_140 & " AND ")
  loc_147D660: unk_58C10D.Execute CStr(var_100 & var_174 & " " & CVar(var_BC) & " ORDER BY DOCID"), TXTS_DATE.DispID_41, 
  loc_147D66B: Set var_90 = var_100
  loc_147D6AA: Proc_183_7_EB0C44(var_130, CVar(Me.TXTS_DATE), "SELECT DISTINCT DOCID FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN ")
  loc_147D6BB: var_154 = var_224 & var_130 & " AND " 
  loc_147D6CA: Proc_183_7_EB0C44(var_174, CVar(Me.TXTE_DATE), var_154)
  loc_147D6D2: var_194 = -1 & var_174 
  loc_147D6E2: var_FC = CVar(var_A8) 'String
  loc_147D70F: unk_58C10D.Execute CStr(var_100 & var_174 & " " & var_FC & " " & CVar(var_BC) & " ORDER BY DOCID"), var_100, 
  loc_147D71A: Set var_88 = var_100
  loc_147D754: If (var_94.RecordCount > 0) Then
  loc_147D75D:   var_CC = "Balance"
  loc_147D781:   var_DC = 0
  loc_147D793:   If CBool(var_94.Fields.Item(var_CC).Value <> var_DC) Then
  loc_147D799:     Set var_22C = var_8C 
  loc_147D7A8:     var_22C.AddNew var_CC, var_DC
  loc_147D7B1:     var_110 = CVar(Me.TXTS_DATE) 'Address
  loc_147D7BF:     var_22C.Collect = "V_DATE"
  loc_147D803:     If (var_94.Fields.Item("Balance").Value > 0) Then
  loc_147D830:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147D83E:       var_22C.Collect = "Credit"
  loc_147D84D:       var_DC = 0
  loc_147D85C:       var_22C.Collect = "Debit"
  loc_147D864:     Else
  loc_147D864:       var_DC = 0
  loc_147D873:       var_22C.Collect = "Credit"
  loc_147D8A2:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147D8B0:       var_22C.Collect = "Debit"
  loc_147D8BF:     End If
  loc_147D8BF:     var_DC = "OP"
  loc_147D8CE:     var_22C.Collect = "V_Type"
  loc_147D8D3:     var_DC = 0
  loc_147D8E2:     var_22C.Collect = "V_NO"
  loc_147D8E7:     var_DC = vbNullString
  loc_147D8F6:     var_22C.Collect = "V_ADD"
  loc_147D901:     var_CC = "Chq_No"
  loc_147D90A:     var_22C.Collect = var_CC
  loc_147D91A:     var_22C.Update var_CC, vbNullString
  loc_147D921:     Set var_22C = Nothing 
  loc_147D925:     ' Referenced from: 147DCF3
  loc_147D925:   End If
  loc_147D925: End If
  loc_147D934: If Not(var_88.EOF) Then
  loc_147D93A:   var_90.MoveFirst
  loc_147D980:   var_EC = "'"
  loc_147D985:   var_140 = "DocId='" & var_88.Fields.Item("DocID").Value & var_EC 
  loc_147D989:   var_118 = CStr(var_140)
  loc_147D990:   var_90.Find var_118, 0, 1
  loc_147D9D3:   var_A0 = CStr(var_88.Fields.Item("DocID").Value)
  loc_147D9F1:   If (var_90.EOF = 0) Then
  loc_147D9F4:     ' Referenced from: 147DCE8
  loc_147D9F7:     var_DC = CVar(var_A0) 'String
  loc_147DA01:     var_CC = "DocID"
  loc_147DA31:     If (var_DC = var_90.Fields.Item(var_CC).Value) Then
  loc_147DA37:       Set var_230 = var_8C 
  loc_147DA46:       var_230.AddNew var_CC, var_DC
  loc_147DA6A:       var_110 = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_147DA78:       var_230.Collect = "V_DATE"
  loc_147DAA2:       var_110 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_147DAB0:       var_230.Collect = "Credit"
  loc_147DADA:       var_110 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_147DAE8:       var_230.Collect = "Debit"
  loc_147DB12:       var_110 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_147DB20:       var_230.Collect = "V_Type"
  loc_147DB4A:       var_110 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_147DB58:       var_230.Collect = "V_NO"
  loc_147DB82:       var_110 = CVar(var_90.Fields.Item("V_ADD")) 'Address
  loc_147DB90:       var_230.Collect = "V_ADD"
  loc_147DBBA:       var_110 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_147DBC8:       var_230.Collect = "Chq_No"
  loc_147DBF2:       var_110 = CVar(var_90.Fields.Item("Chq_Date")) 'Address
  loc_147DC00:       var_230.Collect = "Chq_Date"
  loc_147DC2A:       var_110 = CVar(var_90.Fields.Item("NARR")) 'Address
  loc_147DC38:       var_230.Collect = "NARR"
  loc_147DC62:       var_110 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_147DC70:       var_230.Collect = "Name"
  loc_147DC7E:       var_CC = "mNarr"
  loc_147DC9A:       var_110 = CVar(var_90.Fields.Item(var_CC)) 'Address
  loc_147DC9F:       var_DC = "mNarr"
  loc_147DCA8:       var_230.Collect = var_DC
  loc_147DCBE:       var_230.Update var_CC, var_DC
  loc_147DCC5:       Set var_230 = Nothing 
  loc_147DCCC:       var_90.MoveNext
  loc_147DCD7:       var_112 = var_90.EOF
  loc_147DCE2:       If (var_112 = &HFF) Then
  loc_147DCE5:         GoTo loc_147DCEB
  loc_147DCE8:       End If
  loc_147DCE8:       GoTo loc_147D9F4
  loc_147DCEB:       ' Referenced from: 147DCE5
  loc_147DCEB:     End If
  loc_147DCEB:   End If
  loc_147DCEE:   var_88.MoveNext
  loc_147DCF3:   GoTo loc_147D925
  loc_147DCF6: End If
  loc_147DD0A: If (var_8C.RecordCount <= 0) Then
  loc_147DD13:   Call 0.Method_arg_50 (var_118, var_110, var_110, var_110, var_110, var_110, var_110)
  loc_147DD34:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_140, var_154)
  loc_147DD49:   global_130 = 0
  loc_147DD4C:   Exit Sub
  loc_147DD4D: End If
  loc_147DD50: var_232 = arg_C
  loc_147DD59: If (var_232 = 1) Then
  loc_147DD62:   var_DC = "Paper Setting"
  loc_147DD77:   var_110 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_147DD7D:   MsgBox(var_110, &H40, var_DC, var_140, var_154)
  loc_147DD96:   Set var_120 = var_8C
  loc_147DDAF:   Call 0.Method_arg_160 (Me, var_120, var_112, var_232, global_130, var_110)
  loc_147DDBA:   Set var_8C = var_120
  loc_147DDC0:   var_A2 = var_112
  loc_147DDCF:   global_130 = 0
  loc_147DDD2:   GoTo loc_147DE62
  loc_147DDD8: Else
  loc_147DDE1:   var_118 = MemVar_1F923B0 & "\FaControlLed.ttx"
  loc_147DDEE:   Set var_100 = var_8C 
  loc_147DDFA:   var_112 = CreateFieldDefFile(var_100, var_118, &HFF, global_130, var_A2, var_110)
  loc_147DE0D:   var_B8 = CVar(var_112) 'Variant
  loc_147DE27:   Call 0.Method_arg_11C (var_100, var_112, var_110, var_110)
  loc_147DE32:   MemVar_1F921E4 = var_100
  loc_147DE52:   Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC, var_EC)
  loc_147DE5A:   Call 0.Method_arg_2C (var_110, var_FC)
  loc_147DE62: End If
  loc_147DE62: ' Referenced from: 147DDD2
  loc_147DE62: ' Referenced from: 147D526
  loc_147DE67: Set var_88 = Nothing
  loc_147DE6F: Set var_8C = Nothing
  loc_147DE77: Set var_90 = Nothing
  loc_147DE7F: Set var_94 = Nothing
  loc_147DE82: Exit Sub
  loc_147DE83: ' Referenced from: 147D2C4
  loc_147DE91: Call 0.Method_arg_50 (var_118, 0)
  loc_147DEA6: Proc_183_57_104AA84(var_118, "ControlLed")
  loc_147DEB2: Exit Sub
End Sub

Public Sub Proc_245_82_11EB7A0(arg_C) '11EB7A0
  'Data Table: 58C0C8
  Dim var_8C As Recordset15
  loc_11EB301: Set var_8C = arg_C 
  loc_11EB329: var_8C.Fields.Append "VDATE1", 7, 0
  loc_11EB355: var_8C.Fields.Append "VNO1", 3, 0
  loc_11EB381: var_8C.Fields.Append "VTYPE1", &HC8, 5
  loc_11EB3AD: var_8C.Fields.Append "VSNO1", 3, 0
  loc_11EB3D9: var_8C.Fields.Append "VADD1", &HC8, 5
  loc_11EB405: var_8C.Fields.Append "VDATE2", 7, 0
  loc_11EB431: var_8C.Fields.Append "VNO2", 3, 0
  loc_11EB45D: var_8C.Fields.Append "VTYPE2", &HC8, 5
  loc_11EB489: var_8C.Fields.Append "VSNO2", 3, 0
  loc_11EB4B5: var_8C.Fields.Append "VADD2", &HC8, 5
  loc_11EB4E1: var_8C.Fields.Append "Cr", 5, 0
  loc_11EB50D: var_8C.Fields.Append "Dr", 5, 0
  loc_11EB539: var_8C.Fields.Append "PendCr", 5, 0
  loc_11EB565: var_8C.Fields.Append "PendDr", 5, 0
  loc_11EB591: var_8C.Fields.Append "AgeCr", 3, 0
  loc_11EB5BD: var_8C.Fields.Append "AgeDr", 3, 0
  loc_11EB5E9: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11EB615: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_11EB641: var_8C.Fields.Append "ADDRESS", &HC8, &H96
  loc_11EB66D: var_8C.Fields.Append "CITY_NAME", &HC8, &H32
  loc_11EB699: var_8C.Fields.Append "ConPerson", &HC8, &H32
  loc_11EB6C5: var_8C.Fields.Append "PIN", &HC8, 6
  loc_11EB6F1: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_11EB71D: var_8C.Fields.Append "NARRATION1", &HC8, &HFF
  loc_11EB749: var_8C.Fields.Append "NARRATION2", &HC8, &HFF
  loc_11EB759: var_8C.CursorType = 3
  loc_11EB766: var_8C.LockType = 3
  loc_11EB785: var_8C.Open var_A0, var_B0, -1
  loc_11EB78C: Set var_8C = Nothing 
  loc_11EB793: Set var_88 = arg_C 
  loc_11EB797: Proc_245_82_11EB7A0 = -1
  loc_11EB79D: DOC
End Sub

Public Sub Proc_245_83_102376C(arg_C) '102376C
  'Data Table: 58C0C8
  Dim var_8C As Recordset15
  loc_1023535: Set var_8C = arg_C 
  loc_102355D: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1023589: var_8C.Fields.Append "credit", 5, 0
  loc_10235B5: var_8C.Fields.Append "debit", 5, 0
  loc_10235E1: var_8C.Fields.Append "v_type", &HC8, 5
  loc_102360D: var_8C.Fields.Append "v_no", 3, 0
  loc_1023639: var_8C.Fields.Append "v_add", &HC8, 5
  loc_1023665: var_8C.Fields.Append "Chq_No", &HC8, &H14
  loc_1023691: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_10236BD: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_10236E9: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_1023715: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_1023725: var_8C.CursorType = 3
  loc_1023732: var_8C.LockType = 3
  loc_1023751: var_8C.Open var_A0, var_B0, -1
  loc_1023758: Set var_8C = Nothing 
  loc_102375F: Set var_88 = arg_C 
  loc_1023763: Proc_245_83_102376C = -1
End Sub

Public Sub Proc_245_84_191D258(arg_C) '191D258
  'Data Table: 58C0C8
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_150 As String
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_AC As Double
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1E8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_8C As Recordset15
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_90 As Recordset15
  Dim var_D8 As Double
  Dim var_94 As Recordset15
  Dim var_D0 As Double
  Dim var_DC As Integer
  Dim var_DE As Integer
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_C8 As Double
  Dim Me As Recordset15
  Dim var_26C As Fields15
  Dim var_258 As Variant
  Dim var_2A8 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2AA As Integer
  Dim var_DA As Integer
  Dim var_14A As Integer
  loc_191A72C: On Error Goto loc_191D226
  loc_191A744: Set var_138 = CVar(CLng(0))(0)
  loc_191A768: Call Proc_245_64_F51054(CInt(0), CStr(var_148))
  loc_191A77C: If (var_152 = 0) Then
  loc_191A784:   global_130 = 0
  loc_191A787:   Exit Sub
  loc_191A788: End If
  loc_191A79D: Set var_138 = CVar(CLng(1))(0)
  loc_191A7C1: Call Proc_245_64_F51054(CInt(1), CStr(var_148))
  loc_191A7D5: If (var_152 = 0) Then
  loc_191A7DD:   global_130 = 0
  loc_191A7E0:   Exit Sub
  loc_191A7E1: End If
  loc_191A7F6: Set var_138 = CVar(CLng(2))(0)
  loc_191A81A: Call Proc_245_64_F51054(CInt(2), CStr(var_148))
  loc_191A82E: If (var_152 = 0) Then
  loc_191A836:   global_130 = 0
  loc_191A839:   Exit Sub
  loc_191A83A: End If
  loc_191A84F: Set var_138 = CVar(CLng(3))(0)
  loc_191A873: Call Proc_245_64_F51054(CInt(3), CStr(var_148))
  loc_191A887: If (var_152 = 0) Then
  loc_191A88F:   global_130 = 0
  loc_191A892:   Exit Sub
  loc_191A893: End If
  loc_191A8A8: Set var_138 = CVar(CLng(4))(0)
  loc_191A8CC: Call Proc_245_64_F51054(CInt(4), CStr(var_148))
  loc_191A8E0: If (var_152 = 0) Then
  loc_191A8E8:   global_130 = 0
  loc_191A8EB:   Exit Sub
  loc_191A8EC: End If
  loc_191A901: Set var_138 = CVar(CLng(0))(1)
  loc_191A91F: Me.TXTS_DATE.Text = CStr(TXTE_DATE.DispID_41)
  loc_191A946: Set var_138 = CVar(CLng(1))(1)
  loc_191A957: var_150 = CStr(TXTS_DATE.DispID_41)
  loc_191A95E: Set var_158 = Me.TXTE_DATE
  loc_191A964: var_158.Text = var_150
  loc_191A98D: If (Proc_183_48_F05F98(Me, global_130, var_152, TXTE_DATE.DispID_41, global_130, var_152, TXTE_DATE.DispID_41) = 0) Then
  loc_191A995:   global_130 = 0
  loc_191A998:   Exit Sub
  loc_191A999: End If
  loc_191A9A4: Set var_138 = Me.TEXT
  loc_191A9AA: Call 0.Method_Proc_245_84_191D2580 (CInt(&HC), var_158, global_130, global_130, var_152)
  loc_191A9B2: var_148 = CVar(var_158) 'Address
  loc_191A9D3: If CBool(Trim(var_148) <> vbNullString) Then
  loc_191A9E7:   Set var_138 = Me.TEXT
  loc_191A9ED:   Call 0.Method_Proc_245_84_191D2580 (CInt(&HC), var_158, var_150, " And VIEWLEDGER.Site_Code='")
  loc_191A9F5:   TXTE_DATE.DispID_41 = var_158.Tag
  loc_191AA05:   var_EC = global_130 & var_150 & "'"
  loc_191AA19: Else
  loc_191AA27:   var_EC = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_191AA2D: End If
  loc_191AA42: Set var_138 = CVar(CLng(4))(1)
  loc_191AA6F: Me.TXTACC_CODE.Text = CStr(Trim(CVar(CStr(TEXT.DispID_41))))
  loc_191AAAD: var_168 = CVar(CStr(TXTACC_CODE.DispID_41)) 'String
  loc_191AABC: var_B0 = CStr(Trim(var_168))
  loc_191AACE: var_A0 = vbNullString
  loc_191AAD4: var_A4 = vbNullString
  loc_191AADA: var_AC = CDbl(0)
  loc_191AB01: unk_58C10D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_148, -1
  loc_191AB0C: Set var_88 = CVar(CLng(4))(2)
  loc_191AB30: If (var_88.RecordCount <= 0) Then
  loc_191AB33:   Exit Sub
  loc_191AB34: End If
  loc_191AB46: var_138 = var_88.Fields
  loc_191AB4E: var_158 = var_138.Item("GroupNature")
  loc_191ABB4: If CBool((var_158.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191ABBB:   var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191ABC2:   Proc_183_7_EB0C44(var_168, var_148, var_138)
  loc_191ABCD:   var_1E8 = 0
  loc_191ABEA:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191AC0A:   var_1B8 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_168 & " " & CVar(var_EC) 
  loc_191AC21:   unk_58C10D.Execute CStr(var_1B8 & vbNullString), var_1D8, -1
  loc_191AC29:   var_138 = var_138.Fields
  loc_191AC31:   var_1E8 = var_158.Item(var_158)
  loc_191AC39:   var_184 = var_184.Value
  loc_191AC42:   var_AC = CSng(var_1F8)
  loc_191AC6D: Else
  loc_191AC70:   var_104 = MemVar_1F920F4
  loc_191AC78:   Proc_183_7_EB0C44(var_148, var_104, var_AC, var_1F8)
  loc_191AC88:   Proc_183_7_EB0C44(var_1B8, CVar(Me.TXTS_DATE), var_AC)
  loc_191AC93:   var_238 = 0
  loc_191ACB0:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191ACB7:   var_168 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_191ACC1:   var_114 = " AND V_DATE<"
  loc_191ACF7:   unk_58C10D.Execute CStr(var_168 & var_148 & var_114 & var_1B8 & " " & CVar(var_EC) & vbNullString), var_228, -1
  loc_191ACFF:   var_138 = var_138.Fields
  loc_191AD07:   var_238 = var_158.Item(var_158)
  loc_191AD0F:   var_184 = var_184.Value
  loc_191AD18:   var_AC = CSng(var_248)
  loc_191AD46: End If
  loc_191AD56: Set var_138 = New
  loc_191AD65: Call 0.Method_arg_1B8 (var_138, var_158, var_AC)
  loc_191AD70: Set var_8C = var_138
  loc_191AD79: Set var_8C = var_158
  loc_191AD8A: If (var_AC <> CDbl(0)) Then
  loc_191AD98:   Me.Recordset15.AddNew var_104, var_114
  loc_191ADA1:   var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191ADAF:   var_8C.Collect = "V_DATE"
  loc_191ADBE:   If (var_AC < CDbl(0)) Then
  loc_191ADC1:     var_114 = "OPENING BALANCE"
  loc_191ADD0:     var_8C.Collect = "Name"
  loc_191ADD9:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191ADE7:     var_8C.Collect = "cr"
  loc_191ADEF:   Else
  loc_191ADEF:     var_114 = "OPENING BALANCE"
  loc_191ADFE:     var_8C.Collect = "Name1"
  loc_191AE07:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191AE0C:     var_104 = "ADJAMT"
  loc_191AE15:     var_8C.Collect = var_104
  loc_191AE1A:   End If
  loc_191AE25:   var_8C.Update var_104, var_114
  loc_191AE2A: End If
  loc_191AE37: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Credit) Credit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191AE40: var_148 = CVar(Me.TXTS_DATE) 'Address
  loc_191AE47: Proc_183_7_EB0C44(var_168, var_148, var_104, var_268, -1, var_138, var_114)
  loc_191AE53: var_114 = " And "
  loc_191AE67: Proc_183_7_EB0C44(var_1B8, CVar(Me.TXTE_DATE), var_114 & var_168 & var_114, var_114, var_114)
  loc_191AE9E: var_248 = var_148 & var_1B8 & " AND CREDIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name" 
  loc_191AEAC: unk_58C10D.Execute CStr(var_248), var_248, var_152
  loc_191AEB7: Set var_94 = var_138
  loc_191AEEA: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Debit) Debit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191AEFA: Proc_183_7_EB0C44(var_168, CVar(Me.TXTS_DATE), var_104, var_268)
  loc_191AF02: var_178 = -1 & var_168 
  loc_191AF06: var_114 = " And "
  loc_191AF1A: Proc_183_7_EB0C44(var_1B8, CVar(Me.TXTE_DATE), var_114 & var_168 & var_114)
  loc_191AF5F: unk_58C10D.Execute CStr(var_138 & var_1B8 & " AND DEBIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name"), TXTE_DATE.DispID_41, 
  loc_191AF6A: Set var_90 = var_138
  loc_191AF9F: If Not(var_90.EOF) Then
  loc_191AFCE:   var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191AFDB: End If
  loc_191AFEA: If Not(var_94.EOF) Then
  loc_191AFF3:   var_104 = "V_DATE"
  loc_191B019:   var_D0 = CDate(var_94.Fields.Item(var_104).Value)
  loc_191B026: End If
  loc_191B028: var_DC = 0
  loc_191B02D: var_DE = 0
  loc_191B032: var_E0 = 0
  loc_191B037: var_E2 = 0
  loc_191B03C: var_E4 = 0
  loc_191B041: var_E6 = 0
  loc_191B047: var_BC = vbNullString
  loc_191B04D: var_C0 = vbNullString
  loc_191B067: var_C8 = CDate(Me.TXTS_DATE.Text)
  loc_191B070: ' Referenced from: 191CC8B
  loc_191B08E: If Not((var_90.EOF And var_94.EOF)) Then
  loc_191B0A0:   If ((var_D0 = var_C8) Or (var_D8 = var_C8)) Then
  loc_191B0AE:     var_8C.AddNew var_104, var_114
  loc_191B0BA:     If (var_D0 = var_C8) Then
  loc_191B0DC:       var_148 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_191B0EA:       var_8C.Collect = "V_Type"
  loc_191B0F8:       var_114 = CDate(var_D0)
  loc_191B106:       var_8C.Collect = "V_DATE"
  loc_191B12A:       var_148 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_191B138:       var_8C.Collect = "V_NO"
  loc_191B162:       var_148 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_191B170:       var_8C.Collect = "V_SNo"
  loc_191B1EA:       var_26C = Me.Fields
  loc_191B294:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191B299:       var_B4 = CStr(var_2A8)
  loc_191B352:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191B383:       var_248 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_191B388:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_191B3E2:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191B414:       var_1C8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_191B419:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_191B443:       var_114 = vbNullString
  loc_191B465:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), var_114, "/"))
  loc_191B4A2:       var_1D8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_191B4A7:       var_B4 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191B4D6:       If (((var_DC = 0) Or (var_E0 = 0)) Or (var_E4 = 0)) Then
  loc_191B503:         var_148 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_191B52C:         If (Proc_183_2_E5A304(Trim(var_148), &HFF, var_148, var_148, var_114, var_148, var_C8) <> vbNullString) Then
  loc_191B56F:           var_1A8 = (var_E2 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E6, var_E4))))
  loc_191B578:           var_1B8 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191B59B:           var_1C8 = CVar(var_94.Fields.Item("ChqDate")) 'Address
  loc_191B5AA:           var_1D8 = (var_DE + CVar(Proc_183_2_E5A304(var_1C8, Str(CVar(var_94.Fields.Item("V_NO"))), var_E0)))
  loc_191B5AF:           var_BC = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191B5CF:         End If
  loc_191B60A:         If (Len(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_191B635:           var_168 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) 'String
  loc_191B642:           var_8C.Collect = "Name"
  loc_191B68C:           var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191B69E:           var_8C.Collect = "cr"
  loc_191B6B1:           var_E4 = &HFF
  loc_191B6B6:           var_E0 = &HFF
  loc_191B6BC:         Else
  loc_191B6DB:           Set var_138 = CVar(CLng(2))(1)
  loc_191B718:           If CBool((var_E0 = 0) And (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes")) Then
  loc_191B721:             If (var_E4 = 0) Then
  loc_191B75F:               var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191B771:               var_8C.Collect = "cr"
  loc_191B782:               var_114 = "As Per Detail"
  loc_191B791:               var_8C.Collect = "Name"
  loc_191B798:               var_E4 = &HFF
  loc_191B7B0:               Set var_138 = CVar(CLng(2))(1)
  loc_191B7E3:               If (Trim(CVar(CStr(TXTS_DATE.DispID_41))) = "Yes") Then
  loc_191B7F3:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191B867:                 unk_58C10D.Execute CStr(var_114 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), Str(CVar(var_94.Fields.Item("V_NO"))), -1
  loc_191B872:                 Set var_98 = var_26C
  loc_191B894:               End If
  loc_191B897:             Else
  loc_191B8A6:               If Not(var_98.EOF) Then
  loc_191B8D3:                 var_114 = 0
  loc_191B8E5:                 If (var_98.Fields.Item("Debit").Value > var_114) Then
  loc_191B935:                   Proc_183_4_EABBA8(var_1C8, CVar(var_98.Fields.Item("Debit")), var_26C, var_E4, var_114)
  loc_191B95F:                   var_198 = (1 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191B968:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191B97E:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_191B981:                   var_1F8 = (1 + var_1D8)
  loc_191B98A:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191B998:                   var_8C.Collect = "Name"
  loc_191B9C7:                 Else
  loc_191BA14:                   Proc_183_4_EABBA8(var_1C8, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_191BA3E:                   var_198 = (var_E0 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191BA47:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191BA60:                   var_1F8 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC)))
  loc_191BA69:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191BA77:                   var_8C.Collect = "Name"
  loc_191BAA3:                 End If
  loc_191BAA6:                 var_98.MoveNext
  loc_191BAAB:               End If
  loc_191BABC:               If (var_98.EOF = &HFF) Then
  loc_191BAC1:                 var_E0 = &HFF
  loc_191BAC4:               End If
  loc_191BAC4:             End If
  loc_191BAC7:           Else
  loc_191BB02:             var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191BB14:             var_8C.Collect = "cr"
  loc_191BB4E:             var_BC = CStr(Trim(Mid(var_BC, &H25, 510)))
  loc_191BB5C:             var_E4 = &HFF
  loc_191BB61:             var_E0 = &HFF
  loc_191BB64:           End If
  loc_191BB64:         End If
  loc_191BB7C:         If (((Len(var_BC) <= 0) And (var_E0 = &HFF)) And (var_E4 = &HFF)) Then
  loc_191BB81:           var_DC = 0
  loc_191BB87:           var_94.MoveNext
  loc_191BB9B:           If Not(var_94.EOF) Then
  loc_191BBCA:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191BBDA:           Else
  loc_191BBF6:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191BC00:           End If
  loc_191BC00:         End If
  loc_191BC03:       Else
  loc_191BC42:         If (Len(CStr(Trim(Mid(var_BC, &H25, 510)))) <= 0) Then
  loc_191BC47:           var_DC = 0
  loc_191BC4C:           var_E0 = 0
  loc_191BC51:           var_E4 = 0
  loc_191BC57:           var_94.MoveNext
  loc_191BC6B:           If Not(var_94.EOF) Then
  loc_191BC9A:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191BCAA:           Else
  loc_191BCC6:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191BCD0:           End If
  loc_191BCD0:         End If
  loc_191BCD0:       End If
  loc_191BCD0:     End If
  loc_191BCD7:     If (var_D8 = var_C8) Then
  loc_191BCF9:       var_148 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_191BD07:       var_8C.Collect = "vType"
  loc_191BD31:       var_148 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_191BD3F:       var_8C.Collect = "VNo"
  loc_191BD4D:       var_114 = CDate(var_D8)
  loc_191BD5B:       var_8C.Collect = "V_DATE"
  loc_191BD7F:       var_148 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_191BD8D:       var_8C.Collect = "VSno"
  loc_191BE07:       var_26C = Me.Fields
  loc_191BEB1:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191BEB6:       var_B8 = CStr(var_2A8)
  loc_191BF6F:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191BF98:       var_228 = IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString)
  loc_191BFA0:       var_248 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + var_228)
  loc_191BFA5:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_191BFFF:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191C031:       var_1C8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_191C036:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_191C060:       var_114 = vbNullString
  loc_191C082:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), var_114, "/"))
  loc_191C0BF:       var_1D8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_191C0C4:       var_B8 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191C0F3:       If (((var_DE = 0) Or (var_E2 = 0)) Or (var_E6 = 0)) Then
  loc_191C120:         var_148 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_191C149:         If (Proc_183_2_E5A304(Trim(var_148), &HFF, var_148, var_114, var_148, var_148, var_D0) <> vbNullString) Then
  loc_191C18C:           var_1A8 = (var_E0 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D0, var_E4))))
  loc_191C195:           var_1B8 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191C1B8:           var_1C8 = CVar(var_90.Fields.Item("ChqDate")) 'Address
  loc_191C1C7:           var_1D8 = (var_D0 + CVar(Proc_183_2_E5A304(var_1C8, Str(CVar(var_90.Fields.Item("V_NO"))), var_DC)))
  loc_191C1CC:           var_C0 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191C1EC:         End If
  loc_191C227:         If (Len(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_191C249:           var_148 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_191C257:           var_8C.Collect = "Name1"
  loc_191C29D:           var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191C2AF:           var_8C.Collect = "ADJAMT"
  loc_191C2C2:           var_E6 = &HFF
  loc_191C2C7:           var_E2 = &HFF
  loc_191C2CD:         Else
  loc_191C2EC:           Set var_138 = CVar(CLng(2))(1)
  loc_191C329:           If CBool((var_E2 = 0) And (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes")) Then
  loc_191C332:             If (var_E6 = 0) Then
  loc_191C370:               var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191C382:               var_8C.Collect = "ADJAMT"
  loc_191C393:               var_114 = "As Per Detail"
  loc_191C3A2:               var_8C.Collect = "Name1"
  loc_191C3A9:               var_E6 = &HFF
  loc_191C3C1:               Set var_138 = CVar(CLng(2))(1)
  loc_191C3F4:               If (Trim(CVar(CStr(TXTE_DATE.DispID_41))) = "Yes") Then
  loc_191C404:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191C478:                 unk_58C10D.Execute CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), Str(CVar(var_90.Fields.Item("V_NO"))), -1
  loc_191C483:                 Set var_9C = var_26C
  loc_191C4A5:               End If
  loc_191C4A8:             Else
  loc_191C4B7:               If Not(var_9C.EOF) Then
  loc_191C4E4:                 var_114 = 0
  loc_191C4F6:                 If (var_9C.Fields.Item("Debit").Value > var_114) Then
  loc_191C546:                   Proc_183_4_EABBA8(var_1C8, CVar(var_9C.Fields.Item("Debit")), var_26C, var_E6, var_114)
  loc_191C570:                   var_198 = (1 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191C579:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191C58F:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_191C592:                   var_1F8 = (1 + var_1D8)
  loc_191C59B:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191C5A9:                   var_8C.Collect = "Name1"
  loc_191C5D8:                 Else
  loc_191C625:                   Proc_183_4_EABBA8(var_1C8, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_191C64F:                   var_198 = (var_E2 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191C658:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191C66E:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC)) 'String
  loc_191C671:                   var_1F8 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + var_1D8)
  loc_191C67A:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191C688:                   var_8C.Collect = "Name1"
  loc_191C6B4:                 End If
  loc_191C6B7:                 var_9C.MoveNext
  loc_191C6BC:               End If
  loc_191C6CD:               If (var_9C.EOF = &HFF) Then
  loc_191C6D2:                 var_E2 = &HFF
  loc_191C6D5:               End If
  loc_191C6D5:             End If
  loc_191C6D8:           Else
  loc_191C701:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_191C733:             var_114 = "0.00"
  loc_191C748:             var_178 = Format(CVar(var_90.Fields.Item("Debit")), var_114)
  loc_191C75A:             var_8C.Collect = "ADJAMT"
  loc_191C76D:             var_E6 = &HFF
  loc_191C772:             var_E2 = &HFF
  loc_191C775:           End If
  loc_191C775:         End If
  loc_191C78D:         If (((Len(var_C0) <= 0) And (var_E2 = &HFF)) And (var_E6 = &HFF)) Then
  loc_191C792:           var_DE = 0
  loc_191C798:           var_90.MoveNext
  loc_191C7AC:           If Not(var_90.EOF) Then
  loc_191C7DB:             var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191C7EB:           Else
  loc_191C807:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191C811:           End If
  loc_191C811:         End If
  loc_191C814:       Else
  loc_191C853:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_191C858:           var_DE = 0
  loc_191C85D:           var_E2 = 0
  loc_191C862:           var_E6 = 0
  loc_191C868:           var_90.MoveNext
  loc_191C873:           var_14A = var_90.EOF
  loc_191C87C:           If Not(var_14A) Then
  loc_191C885:             var_104 = "V_DATE"
  loc_191C8AB:             var_D8 = CDate(var_90.Fields.Item(var_104).Value)
  loc_191C8BB:           Else
  loc_191C8D7:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(Me.TXTE_DATE)))
  loc_191C8E1:           End If
  loc_191C8E1:         End If
  loc_191C8E1:       End If
  loc_191C8E1:     End If
  loc_191C8EC:     var_8C.Update var_104, var_114
  loc_191C8F4:   Else
  loc_191C90E:     var_158 = var_88.Fields.Item("GroupNature")
  loc_191C916:     var_148 = var_158.Value
  loc_191C974:     If CBool((var_148 = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191C982:       Proc_183_7_EB0C44(var_148, var_C8, var_D8, var_D8, var_E6, var_E2)
  loc_191C98D:       var_218 = 0
  loc_191C9AA:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191C9B1:       var_168 = CVar(CStr("A" & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191C9CA:       var_1A8 = var_168 & var_148 & " " & CVar(var_EC) 
  loc_191C9E1:       unk_58C10D.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191C9E9:       var_138 = var_138.Fields
  loc_191C9F1:       var_218 = var_158.Item(var_158)
  loc_191C9F9:       var_184 = var_184.Value
  loc_191CA02:       var_AC = CSng(var_1D8)
  loc_191CA2B:     Else
  loc_191CA2E:       var_104 = MemVar_1F920F4
  loc_191CA36:       Proc_183_7_EB0C44(var_148, var_104, var_AC, var_1D8, var_DE)
  loc_191CA46:       Proc_183_7_EB0C44(var_1A8, var_C8, var_D8, var_D8)
  loc_191CA51:       var_258 = 0
  loc_191CA6E:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191CA75:       var_168 = CVar(CStr(" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191CA7F:       var_114 = " AND V_DATE<="
  loc_191CA94:       var_1C8 = var_168 & var_148 & var_114 & var_1A8 & " " 
  loc_191CA9E:       var_1D8 = var_1C8 & CVar(var_EC) 
  loc_191CAB5:       unk_58C10D.Execute CStr(var_1D8 & vbNullString), vbNullString, -1
  loc_191CABD:       var_138 = var_138.Fields
  loc_191CAC5:       var_258 = var_158.Item(var_158)
  loc_191CACD:       var_184 = var_184.Value
  loc_191CAD6:       var_AC = CSng(var_228)
  loc_191CB02:     End If
  loc_191CB09:     If (var_AC <> CDbl(0)) Then
  loc_191CB17:       var_8C.AddNew var_104, var_114
  loc_191CB1F:       var_114 = CDate(var_C8)
  loc_191CB2D:       var_8C.Collect = "V_DATE"
  loc_191CB39:       If (var_AC > CDbl(0)) Then
  loc_191CB3C:         var_114 = "CLOSING BALANCE"
  loc_191CB4B:         var_8C.Collect = "Name"
  loc_191CB54:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CB62:         var_8C.Collect = "cr"
  loc_191CB6A:       Else
  loc_191CB6A:         var_114 = "CLOSING BALANCE"
  loc_191CB79:         var_8C.Collect = "Name1"
  loc_191CB82:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CB87:         var_104 = "ADJAMT"
  loc_191CB90:         var_8C.Collect = var_104
  loc_191CB95:       End If
  loc_191CBA0:       var_8C.Update var_104, var_114
  loc_191CBA5:     End If
  loc_191CBAC:     If (var_D0 <= var_D8) Then
  loc_191CBB8:       If (var_D0 = CDate("12:00:00 AM")) Then
  loc_191CBBE:         var_C8 = var_D8
  loc_191CBC4:       Else
  loc_191CBC7:         var_C8 = var_D0
  loc_191CBCA:       End If
  loc_191CBCD:     Else
  loc_191CBD6:       If (var_D8 = CDate("12:00:00 AM")) Then
  loc_191CBDC:         var_C8 = var_D0
  loc_191CBE2:       Else
  loc_191CBE5:         var_C8 = var_D8
  loc_191CBE8:       End If
  loc_191CBE8:     End If
  loc_191CBEF:     If (var_AC <> CDbl(0)) Then
  loc_191CBFD:       var_8C.AddNew var_104, var_114
  loc_191CC05:       var_114 = CDate(var_C8)
  loc_191CC13:       var_8C.Collect = "V_DATE"
  loc_191CC1F:       If (var_AC < CDbl(0)) Then
  loc_191CC22:         var_114 = "OPENING BALANCE"
  loc_191CC31:         var_8C.Collect = "Name"
  loc_191CC3A:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CC48:         var_8C.Collect = "cr"
  loc_191CC50:       Else
  loc_191CC50:         var_114 = "OPENING BALANCE"
  loc_191CC5F:         var_8C.Collect = "Name1"
  loc_191CC68:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CC6D:         var_104 = "ADJAMT"
  loc_191CC76:         var_8C.Collect = var_104
  loc_191CC7B:       End If
  loc_191CC86:       var_8C.Update var_104, var_114
  loc_191CC8B:     End If
  loc_191CC8B:   End If
  loc_191CC8B:   GoTo loc_191B070
  loc_191CC8E: End If
  loc_191CCA8: var_158 = var_88.Fields.Item("GroupNature")
  loc_191CCB0: var_148 = var_158.Value
  loc_191CCB8: var_114 = "A"
  loc_191CD0E: If CBool((var_148 = var_114) Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191CD1C:   Proc_183_7_EB0C44(var_148, var_C8, var_114, var_114, var_114, var_114)
  loc_191CD27:   var_218 = 0
  loc_191CD44:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191CD4B:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191CD55:   var_114 = " "
  loc_191CD64:   var_1A8 = var_168 & var_148 & var_114 & CVar(var_EC) 
  loc_191CD7B:   unk_58C10D.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191CD83:   var_138 = var_138.Fields
  loc_191CD8B:   var_218 = var_158.Item(var_158)
  loc_191CD93:   var_184 = var_184.Value
  loc_191CD9C:   var_AC = CSng(var_1D8)
  loc_191CDC5: Else
  loc_191CDC8:   var_104 = MemVar_1F920F4
  loc_191CDD0:   Proc_183_7_EB0C44(var_148, var_104, var_AC, var_1D8, var_114)
  loc_191CDE0:   Proc_183_7_EB0C44(var_1A8, var_C8, var_C8, var_C8)
  loc_191CDEB:   var_258 = 0
  loc_191CE08:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191CE0F:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191CE15:   var_178 = var_168 & var_148 
  loc_191CE19:   var_114 = " AND V_DATE<="
  loc_191CE1E:   var_198 = var_178 & var_114 
  loc_191CE4F:   unk_58C10D.Execute CStr(var_198 & var_1A8 & " " & CVar(var_EC) & vbNullString), vbNullString, -1
  loc_191CE57:   var_138 = var_138.Fields
  loc_191CE5F:   var_258 = var_158.Item(var_158)
  loc_191CE67:   var_184 = var_184.Value
  loc_191CE70:   var_AC = CSng(var_228)
  loc_191CE9C: End If
  loc_191CEA3: If (var_AC <> CDbl(0)) Then
  loc_191CEB1:   var_8C.AddNew var_104, var_114
  loc_191CEB9:   var_114 = CDate(var_C8)
  loc_191CEC7:   var_8C.Collect = "V_DATE"
  loc_191CED3:   If (var_AC > CDbl(0)) Then
  loc_191CED6:     var_114 = "CLOSING BALANCE"
  loc_191CEE5:     var_8C.Collect = "Name"
  loc_191CEEE:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CEFC:     var_8C.Collect = "cr"
  loc_191CF04:   Else
  loc_191CF04:     var_114 = "CLOSING BALANCE"
  loc_191CF13:     var_8C.Collect = "Name1"
  loc_191CF1C:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191CF21:     var_104 = "ADJAMT"
  loc_191CF2A:     var_8C.Collect = var_104
  loc_191CF2F:   End If
  loc_191CF3A:   var_8C.Update var_104, var_114
  loc_191CF3F: End If
  loc_191CF53: If (var_8C.RecordCount > 0) Then
  loc_191CF59:   var_8C.MoveFirst
  loc_191CF5E: End If
  loc_191CF72: If (var_8C.RecordCount <= 0) Then
  loc_191CF7B:   Call 0.Method_arg_50 (CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), var_114, var_114, var_114, var_114, var_114)
  loc_191CF9C:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)), var_178, var_198)
  loc_191CFB1:   global_130 = 0
  loc_191CFB4:   Exit Sub
  loc_191CFB5: End If
  loc_191CFB8: var_2AA = arg_C
  loc_191CFC1: If (var_2AA = 1) Then
  loc_191CFE5:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_178, var_198)
  loc_191D00A:   Set var_138 = CVar(CLng(3))(1)
  loc_191D036:   Set var_184 = var_8C
  loc_191D04F:   Call 0.Method_arg_1E4 (Me, var_184, CLng(Val(CStr(TXTE_DATE.DispID_41))), var_14A, Val(CStr(TXTE_DATE.DispID_41)), var_2AA)
  loc_191D05A:   Set var_8C = var_184
  loc_191D060:   var_DA = var_14A
  loc_191D077:   global_130 = 0
  loc_191D07A:   GoTo loc_191D1F5
  loc_191D080: Else
  loc_191D089:   var_150 = MemVar_1F923B0 & "\FaRozNamch.ttx"
  loc_191D096:   Set var_138 = var_8C 
  loc_191D0A2:   var_14A = CreateFieldDefFile(var_138, var_150, &HFF, global_130, var_DA, global_130)
  loc_191D0AC:   Set var_8C = var_138
  loc_191D0B5:   var_2C4 = CVar(var_14A) 'Variant
  loc_191D0D8:   var_138 = Me.Fields
  loc_191D0F0:   var_114 = "No"
  loc_191D100:   var_124 = "LedSiteCode"
  loc_191D16C:   var_1D8 = (var_138.Item("LedDivCode").Value = var_114) And (Me.Fields.Item(var_124).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_191D18A:   If CBool(var_1D8) Then
  loc_191D199:     Call 0.Method_arg_EC (var_138, var_14A, var_AC, var_228)
  loc_191D1A4:     MemVar_1F921E4 = var_138
  loc_191D1AE:   Else
  loc_191D1BA:     Call 0.Method_arg_E8 (var_138, var_C8)
  loc_191D1C5:     MemVar_1F921E4 = var_138
  loc_191D1CC:   End If
  loc_191D1E5:   Call 0.Method_arg_64 (var_138, CVar(var_8C), var_114)
  loc_191D1ED:   Call 0.Method_arg_2C (var_124, var_C8)
  loc_191D1F5: End If
  loc_191D1F5: ' Referenced from: 191D07A
  loc_191D1FA: Set var_88 = Nothing
  loc_191D202: Set var_90 = Nothing
  loc_191D20A: Set var_94 = Nothing
  loc_191D212: Set var_98 = Nothing
  loc_191D21A: Set var_9C = Nothing
  loc_191D222: Set var_8C = Nothing
  loc_191D225: Exit Sub
  loc_191D226: ' Referenced from: 191A72C
  loc_191D234: Call 0.Method_arg_50 (var_150, 0)
  loc_191D249: Proc_183_57_104AA84(var_150, "RozNamcha")
  loc_191D255: Exit Sub
End Sub

Public Sub Proc_245_85_197218C
  'Data Table: 58C0C8
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_BC As Recordset15
  Dim var_10C As Fields15
  Dim var_11C As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Recordset15
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Recordset15
  Dim var_144 As Variant
  Dim var_C4 As Double
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Variant
  Dim unk_58C10D As Connection15
  Dim var_C8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_244 As Recordset15
  loc_196F44C: On Error Goto loc_1972159
  loc_196F464: Set var_10C = CVar(CLng(0))(0)
  loc_196F488: Call Proc_245_64_F51054(CInt(0), CStr(var_11C))
  loc_196F49C: If (var_126 = 0) Then
  loc_196F4A4:   global_130 = 0
  loc_196F4A7:   Exit Sub
  loc_196F4A8: End If
  loc_196F4AF: var_124 = var_8C & " Where Convert(Varchar(11),FromDate,103) +'-'+ Convert(Varchar(11),ToDate,103) in ('"
  loc_196F4C7: Set var_10C = CVar(CLng(0))(2)
  loc_196F502: Call Proc_245_87_115F924(New, var_10C, global_130)
  loc_196F50A: Set var_B8 = var_10C
  loc_196F514: var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_124 & CStr(TXTE_DATE.DispID_41) & "') "
  loc_196F537: Me.Connection15.Execute var_124 & " Order By B.BudgetCrAmt,B.BudgetDrAmt", var_11C, -1
  loc_196F542: Set var_BC = var_10C
  loc_196F5A1: var_AC = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("FromDate"))), "DD/MM/YYYY"))
  loc_196F608: var_B0 = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"))
  loc_196F62D: If (var_BC.RecordCount > 0) Then
  loc_196F630:   ' Referenced from: 1971FE7
  loc_196F63F:   If Not(var_BC.EOF) Then
  loc_196F648:     var_D8 = "BudgetCRAmt"
  loc_196F66C:     var_E8 = 0
  loc_196F67E:     If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196F684:       Set var_16C = var_B8 
  loc_196F693:       var_B8.AddNew var_D8, var_E8
  loc_196F6F7:       var_F8 = "-"
  loc_196F6FC:       var_164 = (Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_196F718:       var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196F727:       var_1C4 = (1 + Format(var_184, "DD/MM/YYYY"))
  loc_196F735:       var_16C.Collect = "BudgetPeriod"
  loc_196F773:       var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196F781:       var_16C.Collect = "FromDate"
  loc_196F7AB:       var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196F7B9:       var_16C.Collect = "ToDate"
  loc_196F7EC:       var_124 = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), var_1C4, 1, Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"), 1)
  loc_196F7FD:       If (var_124 <> vbNullString) Then
  loc_196F81F:         var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196F82D:         var_16C.Collect = "AcCode"
  loc_196F860:         var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, 1)) 'String
  loc_196F86D:         var_16C.Collect = "AcName"
  loc_196F87F:       Else
  loc_196F8B8:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, 1) <> vbNullString) Then
  loc_196F8DA:           var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196F8E8:           var_16C.Collect = "AcGroupCode"
  loc_196F91B:           var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), 1)) 'String
  loc_196F928:           var_16C.Collect = "AcGroupName"
  loc_196F937:         End If
  loc_196F937:       End If
  loc_196F956:       var_11C = CVar(var_BC.Fields.Item("BudgetCRAmt")) 'Address
  loc_196F964:       var_16C.Collect = "BudgetedAmt"
  loc_196F97E:       var_16C.Collect = "BudgetCrDr"
  loc_196F9C2:       If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CDbl(0), "Cr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196F9D2:         var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196F9E9:         var_10C = var_BC.Fields
  loc_196FA01:         var_144 = "Cr" & var_10C.Item("AcCode").Value 
  loc_196FA34:         Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_23C, -1)
  loc_196FA6F:         Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196FA8E:         unk_58C10D.Execute CStr(var_144 & var_1EC & "'"), 1, var_10C
  loc_196FA99:         Set var_C8 = var_240
  loc_196FADB:         If (var_C8.RecordCount > 0) Then
  loc_196FAFD:           var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196FB04:           Proc_183_3_E7D1C8(var_144)
  loc_196FB0D:           var_C4 = CSng(var_144)
  loc_196FB1A:         End If
  loc_196FB1D:       Else
  loc_196FB56:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196FB66:           var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196FB8D:           var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196FB95:           var_144 = "Cr" & var_11C 
  loc_196FBC8:           Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_23C)
  loc_196FBD0:           var_1A4 = -1 & var_184 
  loc_196FC03:           Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196FC14:           var_21C = var_240 & var_1EC & vbNullString 
  loc_196FC22:           unk_58C10D.Execute CStr(var_21C), var_11C, 
  loc_196FC2D:           Set var_C8 = var_240
  loc_196FC6F:           If (var_C8.RecordCount > 0) Then
  loc_196FC91:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196FC98:             Proc_183_3_E7D1C8(var_144)
  loc_196FCA1:             var_C4 = CSng(var_144)
  loc_196FCAE:           End If
  loc_196FCAE:         End If
  loc_196FCAE:       End If
  loc_196FCB2:       var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196FCC0:       var_16C.Collect = "ActualAmt"
  loc_196FD01:       If (var_16C.Fields.Item("ActualAmt").Value > 0) Then
  loc_196FD28:         var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196FD3A:         var_16C.Collect = "ActualCrDr"
  loc_196FD9E:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196FDAC:         var_16C.Collect = "Varience"
  loc_196FE17:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196FE45:         var_184 = (var_154 / var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196FE4E:         var_1A4 = (var_184 * 100)
  loc_196FE5C:         var_16C.Collect = "VariencePer"
  loc_196FE79:       End If
  loc_196FE88:       var_16C.Collect = "GroupType"
  loc_196FEC6:       If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196FED0:         var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196FED7:         var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) & "-"
  loc_196FF12:         var_154 = CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196FF16:         var_E8 = "' Order By B.BudgetCrAmt"
  loc_196FF20:         var_88 = CStr(var_154 & var_E8)
  loc_196FF41:       Else
  loc_196FF7A:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196FF84:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196FF8B:           var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196FFAE:           var_10C = var_BC.Fields
  loc_196FFBE:           var_11C = var_10C.Item("AcGroupCode").Value
  loc_196FFD4:           var_88 = CStr(CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "' Order By B.BudgetCrAmt")
  loc_196FFF2:         End If
  loc_196FFF2:       End If
  loc_1970008:       unk_58C10D.Execute var_88, var_11C, -1
  loc_1970013:       Set var_B4 = var_10C
  loc_1970030:       If (var_B4.RecordCount > 0) Then
  loc_197006F:         If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_1970091:           var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_197009F:           var_16C.Collect = "PreBudgetedAmt"
  loc_19700B9:           var_16C.Collect = "PreBudgetCrDr"
  loc_19700C1:           var_C4 = CDbl(0)
  loc_19700FD:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_197010D:             var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_1970124:             var_10C = var_B4.Fields
  loc_1970134:             var_11C = var_10C.Item("AcCode").Value
  loc_197013C:             var_144 = "Cr" & var_11C 
  loc_197016F:             Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_19701AA:             Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_19701C0:             unk_58C10D.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_19701CB:             Set var_C8 = var_240
  loc_197020B:             If (var_C8.RecordCount > 0) Then
  loc_197022D:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1970234:               Proc_183_3_E7D1C8(var_144)
  loc_197023D:               var_C4 = CSng(var_144)
  loc_197024A:             End If
  loc_197024D:           Else
  loc_1970286:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_1970296:               var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_19702BD:               var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_19702C5:               var_144 = "Cr" & var_11C 
  loc_19702F8:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_1970300:               var_1A4 = -1 & var_184 
  loc_1970333:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_1970349:               unk_58C10D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_1970354:               Set var_C8 = var_240
  loc_1970394:               If (var_C8.RecordCount > 0) Then
  loc_19703B6:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_19703BD:                 Proc_183_3_E7D1C8(var_144)
  loc_19703C6:                 var_C4 = CSng(var_144)
  loc_19703D3:               End If
  loc_19703D3:             End If
  loc_19703D3:           End If
  loc_19703D7:           var_E8 = CVar(Abs(var_C4)) 'Double
  loc_19703E5:           var_16C.Collect = "PreActualAmt"
  loc_1970426:           If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_197044D:             var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_197045F:             var_16C.Collect = "PreActualCrDr"
  loc_19704C3:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_19704D1:             var_16C.Collect = "PreVarience"
  loc_197053C:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_197056A:             var_184 = (var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_1970573:             var_1A4 = (var_184 * 100)
  loc_1970581:             var_16C.Collect = "PreVariencePer"
  loc_197059E:           End If
  loc_19705A1:         Else
  loc_19705DD:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_19705FF:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_197060D:             var_16C.Collect = "PreBudgetedAmt"
  loc_1970627:             var_16C.Collect = "PreBudgetCrDr"
  loc_197062F:             var_C4 = CDbl(0)
  loc_197066B:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode")), var_1A4) <> vbNullString) Then
  loc_197067B:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_19706A2:               var_11C = var_B4.Fields.Item("AcCode").Value
  loc_19706AA:               var_144 = "Dr" & var_11C 
  loc_19706B3:               var_154 = var_144 & "' And L.V_Date Between " 
  loc_19706DD:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_1970718:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_197072E:               unk_58C10D.Execute CStr("Dr" & var_1EC), var_C4, var_11C
  loc_1970739:               Set var_C8 = var_240
  loc_1970779:               If (var_C8.RecordCount > 0) Then
  loc_197079B:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_19707A2:                 Proc_183_3_E7D1C8(var_144)
  loc_19707AB:                 var_C4 = CSng(var_144)
  loc_19707B8:               End If
  loc_19707BB:             Else
  loc_19707F4:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_1970804:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_197082B:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_1970833:                 var_144 = "Dr" & var_11C 
  loc_1970866:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_197086E:                 var_1A4 = -1 & var_184 
  loc_19708A1:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_19708B7:                 unk_58C10D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_19708C2:                 Set var_C8 = var_240
  loc_1970902:                 If (var_C8.RecordCount > 0) Then
  loc_1970924:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_197092B:                   Proc_183_3_E7D1C8(var_144)
  loc_1970934:                   var_C4 = CSng(var_144)
  loc_1970941:                 End If
  loc_1970941:               End If
  loc_1970941:             End If
  loc_1970945:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_1970953:             var_16C.Collect = "PreActualAmt"
  loc_1970994:             If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_19709BB:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_19709CD:               var_16C.Collect = "PreActualCrDr"
  loc_1970A31:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_1970A3F:               var_16C.Collect = "PreVarience"
  loc_1970AAA:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_1970AE1:               var_1A4 = ((var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value) * 100)
  loc_1970AEF:               var_16C.Collect = "PreVariencePer"
  loc_1970B0C:             End If
  loc_1970B0C:           End If
  loc_1970B0C:         End If
  loc_1970B0C:       End If
  loc_1970B0E:       Set var_16C = Nothing 
  loc_1970B15:     Else
  loc_1970B1B:       var_D8 = "BudgetDrAmt"
  loc_1970B3F:       var_E8 = 0
  loc_1970B51:       If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_1970B57:         Set var_244 = var_B8 
  loc_1970B66:         var_B8.AddNew var_D8, var_E8
  loc_1970BC2:         var_154 = Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY")
  loc_1970BCA:         var_F8 = "-"
  loc_1970BCF:         var_164 = (var_154 + "PreBudgetedAmt")
  loc_1970BE2:         var_1A4 = "DD/MM/YYYY"
  loc_1970BEB:         var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_1970BFA:         var_1C4 = (1 + Format(var_184, var_1A4))
  loc_1970C08:         var_244.Collect = "BudgetPeriod"
  loc_1970C46:         var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_1970C54:         var_244.Collect = "FromDate"
  loc_1970C7E:         var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_1970C8C:         var_244.Collect = "ToDate"
  loc_1970CBF:         var_124 = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("ToDate")), 1, var_16C.Fields.Item("PreBudgetedAmt").Value, 1)
  loc_1970CD0:         If (var_124 <> vbNullString) Then
  loc_1970CF2:           var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_1970D00:           var_244.Collect = "AcCode"
  loc_1970D33:           var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, var_1A4)) 'String
  loc_1970D40:           var_244.Collect = "AcName"
  loc_1970D52:         Else
  loc_1970D8B:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, var_154) <> vbNullString) Then
  loc_1970DAD:             var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_1970DBB:             var_244.Collect = "AcGroupCode"
  loc_1970DEE:             var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), var_154)) 'String
  loc_1970DFB:             var_244.Collect = "AcGroupName"
  loc_1970E0A:           End If
  loc_1970E0A:         End If
  loc_1970E29:         var_11C = CVar(var_BC.Fields.Item("BudgetDrAmt")) 'Address
  loc_1970E37:         var_244.Collect = "BudgetedAmt"
  loc_1970E51:         var_244.Collect = "BudgetCrDr"
  loc_1970E59:         var_C4 = CDbl(0)
  loc_1970E95:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_1970EA5:           var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_1970ED4:           var_144 = "Dr" & var_BC.Fields.Item("AcCode").Value 
  loc_1970F07:           Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_1970F42:           Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_1970F58:           unk_58C10D.Execute CStr(var_144 & var_1EC), "Dr", var_C4
  loc_1970F63:           Set var_C8 = var_240
  loc_1970FA3:           If (var_C8.RecordCount > 0) Then
  loc_1970FC5:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1970FCC:             Proc_183_3_E7D1C8(var_144)
  loc_1970FD5:             var_C4 = CSng(var_144)
  loc_1970FE2:           End If
  loc_1970FE5:         Else
  loc_197101E:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_197102E:             var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_1971055:             var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_197105D:             var_144 = "Dr" & var_11C 
  loc_1971090:             Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_1971098:             var_1A4 = -1 & var_184 
  loc_19710CB:             Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_19710E1:             unk_58C10D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_19710EC:             Set var_C8 = var_240
  loc_197112C:             If (var_C8.RecordCount > 0) Then
  loc_197114E:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1971155:               Proc_183_3_E7D1C8(var_144)
  loc_197115E:               var_C4 = CSng(var_144)
  loc_197116B:             End If
  loc_197116B:           End If
  loc_197116B:         End If
  loc_197116F:         var_E8 = CVar(Abs(var_C4)) 'Double
  loc_197117D:         var_244.Collect = "ActualAmt"
  loc_19711BE:         If (var_244.Fields.Item("ActualAmt").Value > 0) Then
  loc_19711E5:           var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_19711F7:           var_244.Collect = "ActualCrDr"
  loc_197125B:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_1971269:           var_244.Collect = "Varience"
  loc_19712D4:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_1971302:           var_184 = (var_154 / var_244.Fields.Item("BudgetedAmt").Value)
  loc_197130B:           var_1A4 = (var_184 * 100)
  loc_1971319:           var_244.Collect = "VariencePer"
  loc_1971336:         End If
  loc_1971345:         var_244.Collect = "GroupType"
  loc_1971383:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_197138D:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_1971394:           var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) & "-"
  loc_19713CF:           var_154 = CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_19713D3:           var_E8 = "'"
  loc_19713DD:           var_88 = CStr(var_154 & var_E8)
  loc_19713FE:         Else
  loc_1971437:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_1971441:             var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_1971448:             var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_197146B:             var_10C = var_BC.Fields
  loc_197147B:             var_11C = var_10C.Item("AcGroupCode").Value
  loc_1971491:             var_88 = CStr(CVar(CStr(TXTE_DATE.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "'")
  loc_19714AF:           End If
  loc_19714AF:         End If
  loc_19714C5:         unk_58C10D.Execute var_88, var_11C, -1
  loc_19714D0:         Set var_B4 = var_10C
  loc_19714ED:         If (var_B4.RecordCount > 0) Then
  loc_197152C:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_197154E:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_197155C:             var_244.Collect = "PreBudgetedAmt"
  loc_1971576:             var_244.Collect = "PreBudgetCrDr"
  loc_197157E:             var_C4 = CDbl(0)
  loc_19715BA:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_19715CA:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_19715E1:               var_10C = var_B4.Fields
  loc_19715F1:               var_11C = var_10C.Item("AcCode").Value
  loc_19715F9:               var_144 = "Dr" & var_11C 
  loc_197162C:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_1971667:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_197167D:               unk_58C10D.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_1971688:               Set var_C8 = var_240
  loc_19716C8:               If (var_C8.RecordCount > 0) Then
  loc_19716EA:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_19716F1:                 Proc_183_3_E7D1C8(var_144)
  loc_19716FA:                 var_C4 = CSng(var_144)
  loc_1971707:               End If
  loc_197170A:             Else
  loc_1971743:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_1971753:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_197177A:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_1971782:                 var_144 = "Dr" & var_11C 
  loc_19717B5:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_19717BD:                 var_1A4 = -1 & var_184 
  loc_19717F0:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_1971806:                 unk_58C10D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_1971811:                 Set var_C8 = var_240
  loc_1971851:                 If (var_C8.RecordCount > 0) Then
  loc_1971873:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_197187A:                   Proc_183_3_E7D1C8(var_144)
  loc_1971883:                   var_C4 = CSng(var_144)
  loc_1971890:                 End If
  loc_1971890:               End If
  loc_1971890:             End If
  loc_1971894:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_19718A2:             var_244.Collect = "PreActualAmt"
  loc_19718E3:             If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_197190A:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_197191C:               var_244.Collect = "PreActualCrDr"
  loc_1971980:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_197198E:               var_244.Collect = "PreVarience"
  loc_19719F9:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_1971A27:               var_184 = (var_154 / var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_1971A30:               var_1A4 = (var_184 * 100)
  loc_1971A3E:               var_244.Collect = "PreVariencePer"
  loc_1971A5B:             End If
  loc_1971A5E:           Else
  loc_1971A9A:             If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_1971ABC:               var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_1971ACA:               var_244.Collect = "PreBudgetedAmt"
  loc_1971AE4:               var_244.Collect = "PreBudgetCrDr"
  loc_1971AEC:               var_C4 = CDbl(0)
  loc_1971B17:               var_124 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode")), var_1A4)
  loc_1971B28:               If (var_124 <> vbNullString) Then
  loc_1971B38:                 var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_1971B5F:                 var_11C = var_B4.Fields.Item("AcCode").Value
  loc_1971B67:                 var_144 = "Cr" & var_11C 
  loc_1971B70:                 var_154 = var_144 & "' And L.V_Date Between " 
  loc_1971B9A:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_1971BD5:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_1971BEB:                 unk_58C10D.Execute CStr("Cr" & var_1EC), var_C4, var_11C
  loc_1971BF6:                 Set var_C8 = var_240
  loc_1971C36:                 If (var_C8.RecordCount > 0) Then
  loc_1971C58:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1971C5F:                   Proc_183_3_E7D1C8(var_144)
  loc_1971C68:                   var_C4 = CSng(var_144)
  loc_1971C75:                 End If
  loc_1971C78:               Else
  loc_1971CB1:                 If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_1971CC1:                   var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_1971CE8:                   var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_1971CF0:                   var_144 = "Cr" & var_11C 
  loc_1971D23:                   Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_1971D2B:                   var_1A4 = -1 & var_184 
  loc_1971D5E:                   Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_1971D6A:                   var_124 = CStr(var_240 & var_1EC)
  loc_1971D74:                   unk_58C10D.Execute var_124, var_11C, 
  loc_1971D7F:                   Set var_C8 = var_240
  loc_1971DBF:                   If (var_C8.RecordCount > 0) Then
  loc_1971DE1:                     var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_1971DE8:                     Proc_183_3_E7D1C8(var_144)
  loc_1971DF1:                     var_C4 = CSng(var_144)
  loc_1971DFE:                   End If
  loc_1971DFE:                 End If
  loc_1971DFE:               End If
  loc_1971E02:               var_E8 = CVar(Abs(var_C4)) 'Double
  loc_1971E10:               var_244.Collect = "PreActualAmt"
  loc_1971E51:               If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_1971E78:                 var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_1971E8A:                 var_244.Collect = "PreActualCrDr"
  loc_1971EEE:                 var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_1971EFC:                 var_244.Collect = "PreVarience"
  loc_1971F19:                 var_D8 = "PreActualAmt"
  loc_1971F43:                 var_E8 = "PreBudgetedAmt"
  loc_1971F67:                 var_154 = (var_244.Fields.Item(var_D8).Value - var_244.Fields.Item(var_E8).Value)
  loc_1971F71:                 var_F8 = "PreBudgetedAmt"
  loc_1971F8D:                 var_164 = var_244.Fields.Item(var_F8).Value
  loc_1971F9E:                 var_1A4 = ((var_154 / var_164) * 100)
  loc_1971FAC:                 var_244.Collect = "PreVariencePer"
  loc_1971FC9:               End If
  loc_1971FC9:             End If
  loc_1971FC9:           End If
  loc_1971FC9:         End If
  loc_1971FCB:         Set var_244 = Nothing 
  loc_1971FCF:       End If
  loc_1971FCF:     End If
  loc_1971FD2:     var_BC.MoveNext
  loc_1971FE2:     var_B8.Update var_D8, var_E8
  loc_1971FE7:     GoTo loc_196F630
  loc_1971FEA:   End If
  loc_1971FEA: End If
  loc_1971FFE: If (var_B8.RecordCount <= 0) Then
  loc_1972007:   Call 0.Method_arg_50 (var_124, var_1A4, var_154, var_154)
  loc_197201D:   var_D8 = "** No Records Found to Print **"
  loc_1972028:   MsgBox(var_D8, &H40, CVar(var_124), var_154, var_164)
  loc_197203D:   global_130 = 0
  loc_1972040:   Exit Sub
  loc_1972041: End If
  loc_1972047: global_124 = "FABudgetVarience"
  loc_1972051: Call 0.Method_arg_50 (var_124, global_130, var_E8)
  loc_197206E: global_120 = CStr(Ucase(CVar(var_124)))
  loc_1972085: If (global_130 = 0) Then
  loc_1972088:   Exit Sub
  loc_1972089: End If
  loc_19720B0: Set var_10C = var_B8 
  loc_19720B7: CreateFieldDefFile(var_10C, MemVar_1F923B0 & "\" & global_124 & ".ttx", &HFF)
  loc_19720E2: var_124 = MemVar_1F923B0 & "\"
  loc_19720FC: Call 0.Method_arg_1C (var_124 & global_124 & ".RPT", var_D8, var_10C)
  loc_1972107: MemVar_1F921E4 = var_10C
  loc_1972130: Call 0.Method_arg_64 (var_10C, CVar(var_10C), var_E8)
  loc_1972138: Call 0.Method_arg_2C (var_F8, var_C4)
  loc_1972145: Set var_B4 = Nothing
  loc_197214D: Set var_B8 = Nothing
  loc_1972155: Set var_BC = Nothing
  loc_1972158: Exit Sub
  loc_1972159: ' Referenced from: 196F44C
  loc_1972167: Call 0.Method_arg_50 (var_124, 0)
  loc_197217C: Proc_183_57_104AA84(var_124, "FaBudgetVariance")
  loc_1972188: Exit Sub
End Sub

Public Sub Proc_245_86_17DDF80
  'Data Table: 58C0C8
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim unk_58C10D As Connection15
  Dim var_B4 As Recordset15
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_9E As Integer
  Dim var_AA As Integer
  Dim var_B0 As Recordset15
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_140 As Recordset15
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_B8 As Recordset15
  Dim var_A8 As Double
  Dim var_230 As Variant
  Dim var_2BC As Recordset15
  loc_17DBE58: On Error Goto loc_17DDF50
  loc_17DBE70: Set var_100 = CVar(CLng(0))(0)
  loc_17DBE94: Call Proc_245_64_F51054(CInt(0), CStr(var_110))
  loc_17DBEA8: If (var_11A = 0) Then
  loc_17DBEB0:   global_130 = 0
  loc_17DBEB3:   Exit Sub
  loc_17DBEB4: End If
  loc_17DBEC0: Set var_100 = Me.Check1
  loc_17DBEC6: Call 0.Method_Proc_245_86_17DDF800 (1, var_120, var_112)
  loc_17DBECE: global_130 = var_120.Value
  loc_17DBEE4: If (CLng(var_112) = 0) Then
  loc_17DBEEE:   var_118 = var_8C & " Where CStr(FromDate) +'-'+ CStr(ToDate) in ('"
  loc_17DBF06:   Set var_100 = CVar(CLng(0))(2)
  loc_17DBF22:   var_8C = var_118 & CStr(Check1.DispID_41) & "') "
  loc_17DBF34: End If
  loc_17DBF41: Call Proc_245_88_1273CF0(New, var_100)
  loc_17DBF49: Set var_B0 = var_100
  loc_17DBF60: var_118 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_8C
  loc_17DBF70: unk_58C10D.Execute var_118 & " Order By B.BudgetDrAmt,B.BudgetCrAmt", var_110, -1
  loc_17DBF7B: Set var_B4 = var_100
  loc_17DBF9F: If (var_B4.RecordCount > 0) Then
  loc_17DBFA2:   ' Referenced from: 17DDE07
  loc_17DBFB1:   If Not(var_B4.EOF) Then
  loc_17DBFBA:     var_CC = "BudgetCRAmt"
  loc_17DBFDE:     var_DC = 0
  loc_17DBFF0:     If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DBFF5:       var_9E = 0
  loc_17DC000:       Set var_140 = var_B0 
  loc_17DC00F:       var_B0.AddNew var_CC, var_DC
  loc_17DC073:       var_EC = "-"
  loc_17DC078:       var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_17DC094:       var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DC0A3:       var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DC0B1:       var_140.Collect = "BudgetPeriod"
  loc_17DC0EF:       var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DC0FD:       var_140.Collect = "FromDate"
  loc_17DC127:       var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DC135:       var_140.Collect = "ToDate"
  loc_17DC168:       var_118 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), var_1B8, 1, var_160, 1)
  loc_17DC179:       If (var_118 <> vbNullString) Then
  loc_17DC19B:         var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DC1A9:         var_140.Collect = "AcCode"
  loc_17DC1DC:         var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), 1, 0)) 'String
  loc_17DC1E9:         var_140.Collect = "AcName"
  loc_17DC1FB:       Else
  loc_17DC234:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, var_9E) <> vbNullString) Then
  loc_17DC256:           var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DC264:           var_140.Collect = "AcGroupCode"
  loc_17DC27E:           var_100 = var_B4.Fields
  loc_17DC297:           var_13C = CVar(Proc_183_2_E5A304(CVar(var_100.Item("AcGroupName")), CVar(var_100.Item("AcGroupName")), var_100)) 'String
  loc_17DC2A4:           var_140.Collect = "AcGroupName"
  loc_17DC2B3:         End If
  loc_17DC2B3:       End If
  loc_17DC2D2:       var_110 = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_17DC2E0:       var_140.Collect = "BudgetedAmt"
  loc_17DC2FA:       var_140.Collect = "BudgetCrDr"
  loc_17DC338:       If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DC348:         var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DC377:         var_13C = "Cr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DC3AA:         Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DC3E5:         Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DC404:         unk_58C10D.Execute CStr(var_13C & var_1E0 & vbNullString), var_11A, Check1.DispID_41
  loc_17DC40F:         Set var_B8 = var_234
  loc_17DC451:         If (var_B8.RecordCount > 0) Then
  loc_17DC47F:           var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DC48F:         Else
  loc_17DC492:           var_A8 = CDbl(0)
  loc_17DC495:         End If
  loc_17DC498:       Else
  loc_17DC4D1:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DC4E1:           var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DC543:           Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DC54B:           var_198 = -1 & var_178 
  loc_17DC57E:           Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DC59D:           unk_58C10D.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DC5A8:           Set var_B8 = var_234
  loc_17DC5EA:           If (var_B8.RecordCount > 0) Then
  loc_17DC618:             var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DC628:           Else
  loc_17DC62B:             var_A8 = CDbl(0)
  loc_17DC62E:           End If
  loc_17DC62E:         End If
  loc_17DC62E:       End If
  loc_17DC632:       var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DC640:       var_140.Collect = "ActualAmt"
  loc_17DC681:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DC6A8:         var_150 = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DC6BA:         var_140.Collect = "ActualCrDr"
  loc_17DC6CA:       End If
  loc_17DC706:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DC75D:         var_150 = (var_140.Fields.Item("ActualAmt").Value - var_140.Fields.Item("BudgetedAmt").Value)
  loc_17DC794:         var_198 = ((var_150 / var_140.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DC7A2:         var_140.Collect = "VariencePer"
  loc_17DC7BF:       End If
  loc_17DC7BF:       var_DC = "CrGroup"
  loc_17DC7CE:       var_140.Collect = "Flag"
  loc_17DC808:       var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DC844:       var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DC883:       For var_238 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2: var_A0 = var_238 'Integer
  loc_17DC94D:         If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DC989:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DC999:             var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DC9D1:             var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DC9EE:             var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DCA21:             Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DCA5C:             Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DCA7B:             unk_58C10D.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DCA86:             Set var_B8 = var_234
  loc_17DCAD0:             If (var_B8.RecordCount > 0) Then
  loc_17DCAFE:               var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DCB0E:             Else
  loc_17DCB11:               var_A8 = CDbl(0)
  loc_17DCB14:             End If
  loc_17DCB3D:             var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DCB86:             If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DCBBF:               var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DCBD9:               var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DCBF0:             End If
  loc_17DCBF3:           Else
  loc_17DCC2C:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DCC3C:               var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DCC87:               var_178 = "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) & " And Year(L.V_Date)=" 
  loc_17DCCC4:               Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_178 & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DCCCC:               var_1F0 = -1 & var_1E0 
  loc_17DCCF8:               var_230 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DCCFF:               Proc_183_7_EB0C44(var_268, var_230, CDbl(0) & var_1E0 & " And ")
  loc_17DCD1E:               unk_58C10D.Execute CStr(var_234 & var_268 & vbNullString), var_A8, 
  loc_17DCD29:               Set var_B8 = var_234
  loc_17DCD73:               If (var_B8.RecordCount > 0) Then
  loc_17DCDA1:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DCDB1:               Else
  loc_17DCDB4:                 var_A8 = CDbl(0)
  loc_17DCDB7:               End If
  loc_17DCDE0:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DCE29:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DCE62:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DCE7C:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DCE93:               End If
  loc_17DCE93:             End If
  loc_17DCE93:           End If
  loc_17DCE99:           If (var_9E = &HC) Then
  loc_17DCE9E:             var_9E = 0
  loc_17DCEA7:             var_AA = (var_AA + 1)
  loc_17DCEAA:           End If
  loc_17DCEB0:           var_9E = (var_9E + 1)
  loc_17DCEB3:         End If
  loc_17DCEBE:         var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DCEC5:       Next var_238 'Integer
  loc_17DCECC:       Set var_140 = Nothing 
  loc_17DCED3:     Else
  loc_17DCED9:       var_CC = "BudgetDrAmt"
  loc_17DCEFD:       var_DC = 0
  loc_17DCF0F:       If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DCF14:         var_9E = 0
  loc_17DCF19:         var_AA = 0
  loc_17DCF1F:         Set var_2BC = var_B0 
  loc_17DCF2E:         var_B0.AddNew var_CC, var_DC
  loc_17DCF92:         var_EC = "-"
  loc_17DCF97:         var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + "Dr")
  loc_17DCFB3:         var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DCFC2:         var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DCFD0:         var_2BC.Collect = "BudgetPeriod"
  loc_17DD00E:         var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DD01C:         var_2BC.Collect = "FromDate"
  loc_17DD046:         var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DD054:         var_2BC.Collect = "ToDate"
  loc_17DD087:         var_118 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("FromDate")), 1)
  loc_17DD098:         If (var_118 <> vbNullString) Then
  loc_17DD0BA:           var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DD0C8:           var_2BC.Collect = "AcCode"
  loc_17DD0FB:           var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E), 1)) 'String
  loc_17DD108:           var_2BC.Collect = "AcName"
  loc_17DD11A:         Else
  loc_17DD153:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, 1) <> vbNullString) Then
  loc_17DD175:             var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DD183:             var_2BC.Collect = "AcGroupCode"
  loc_17DD1B6:             var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")))) 'String
  loc_17DD1C3:             var_2BC.Collect = "AcGroupName"
  loc_17DD1D2:           End If
  loc_17DD1D2:         End If
  loc_17DD1F1:         var_110 = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_17DD1FF:         var_2BC.Collect = "BudgetedAmt"
  loc_17DD219:         var_2BC.Collect = "BudgetCrDr"
  loc_17DD257:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DD267:           var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where SubCode='"
  loc_17DD296:           var_13C = "Dr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DD2C9:           Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DD304:           Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DD323:           unk_58C10D.Execute CStr(var_13C & var_1E0 & vbNullString), var_AA, var_9E
  loc_17DD32E:           Set var_B8 = var_234
  loc_17DD370:           If (var_B8.RecordCount > 0) Then
  loc_17DD39E:             var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DD3AE:           Else
  loc_17DD3B1:             var_A8 = CDbl(0)
  loc_17DD3B4:           End If
  loc_17DD3B7:         Else
  loc_17DD3F0:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DD400:             var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where L.GroupCode ='"
  loc_17DD462:             Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DD46A:             var_198 = -1 & var_178 
  loc_17DD49D:             Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DD4BC:             unk_58C10D.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DD4C7:             Set var_B8 = var_234
  loc_17DD509:             If (var_B8.RecordCount > 0) Then
  loc_17DD537:               var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DD547:             Else
  loc_17DD54A:               var_A8 = CDbl(0)
  loc_17DD54D:             End If
  loc_17DD54D:           End If
  loc_17DD54D:         End If
  loc_17DD551:         var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DD55F:         var_2BC.Collect = "ActualAmt"
  loc_17DD5A0:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DD5C7:           var_150 = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DD5D9:           var_2BC.Collect = "ActualCrDr"
  loc_17DD5E9:         End If
  loc_17DD625:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DD67C:           var_150 = (var_2BC.Fields.Item("ActualAmt").Value - var_2BC.Fields.Item("BudgetedAmt").Value)
  loc_17DD6B3:           var_198 = ((var_150 / var_2BC.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DD6C1:           var_2BC.Collect = "VariencePer"
  loc_17DD6DE:         End If
  loc_17DD6DE:         var_DC = "DrGroup"
  loc_17DD6ED:         var_2BC.Collect = "Flag"
  loc_17DD727:         var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DD763:         var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DD7A2:         For var_2C0 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2:   var_A0 = var_2C0 'Integer
  loc_17DD86C:           If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DD8A8:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DD8B8:               var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DD8F0:               var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DD90D:               var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DD940:               Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DD97B:               Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DD99A:               unk_58C10D.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DD9A5:               Set var_B8 = var_234
  loc_17DD9EF:               If (var_B8.RecordCount > 0) Then
  loc_17DDA1D:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DDA2D:               Else
  loc_17DDA30:                 var_A8 = CDbl(0)
  loc_17DDA33:               End If
  loc_17DDA5C:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DDAA5:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DDADE:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DDAF8:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DDB0F:               End If
  loc_17DDB12:             Else
  loc_17DDB4B:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DDB5B:                 var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DDB9D:                 var_160 = "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) 
  loc_17DDBE3:                 Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_160 & " And Year(L.V_Date)=" & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DDBEB:                 var_1F0 = -1 & var_1E0 
  loc_17DDC1E:                 Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ")
  loc_17DDC33:                 var_118 = CStr(var_234 & var_268 & vbNullString)
  loc_17DDC3D:                 unk_58C10D.Execute var_118, var_A8, 
  loc_17DDC48:                 Set var_B8 = var_234
  loc_17DDC92:                 If (var_B8.RecordCount > 0) Then
  loc_17DDCC0:                   var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DDCD0:                 Else
  loc_17DDCD3:                   var_A8 = CDbl(0)
  loc_17DDCD6:                 End If
  loc_17DDCFF:                 var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DDD48:                 If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DDD4B:                   var_EC = "Cr"
  loc_17DDD56:                   var_DC = "Dr"
  loc_17DDD68:                   var_CC = (var_A8 > CDbl(0))
  loc_17DDD6F:                   var_150 = IIf(var_CC, var_DC, var_EC)
  loc_17DDD81:                   var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DDD9B:                   var_B0.Fields.Item(CVar(var_9E)).Value = var_150
  loc_17DDDB2:                 End If
  loc_17DDDB2:               End If
  loc_17DDDB2:             End If
  loc_17DDDB8:             If (var_9E = &HC) Then
  loc_17DDDBD:               var_9E = 0
  loc_17DDDC6:               var_AA = (var_AA + 1)
  loc_17DDDC9:             End If
  loc_17DDDCF:             var_9E = (var_9E + 1)
  loc_17DDDD2:           End If
  loc_17DDDDD:           var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DDDE4:         Next var_2C0 'Integer
  loc_17DDDEB:         Set var_2BC = Nothing 
  loc_17DDDEF:       End If
  loc_17DDDEF:     End If
  loc_17DDDF2:     var_B4.MoveNext
  loc_17DDE02:     var_B0.Update var_CC, var_DC
  loc_17DDE07:     GoTo loc_17DBFA2
  loc_17DDE0A:   End If
  loc_17DDE0A: End If
  loc_17DDE1E: If (var_B0.RecordCount <= 0) Then
  loc_17DDE27:   Call 0.Method_arg_50 (var_118)
  loc_17DDE3D:   var_CC = "** No Records Found to Print **"
  loc_17DDE48:   MsgBox(var_CC, &H40, CVar(var_118), var_150, var_160)
  loc_17DDE5D:   global_130 = 0
  loc_17DDE60:   Exit Sub
  loc_17DDE61: End If
  loc_17DDE67: global_124 = "FABudgetRep"
  loc_17DDE74: If (global_130 = 0) Then
  loc_17DDE77:   Exit Sub
  loc_17DDE78: End If
  loc_17DDE9F: Set var_100 = var_B0 
  loc_17DDEA6: CreateFieldDefFile(var_100, MemVar_1F923B0 & "\" & global_124 & ".ttx")
  loc_17DDED1: var_118 = MemVar_1F923B0 & "\"
  loc_17DDEEB: Call 0.Method_arg_1C (var_118 & global_124 & ".RPT", var_CC, var_100)
  loc_17DDEF6: MemVar_1F921E4 = var_100
  loc_17DDF1F: Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC)
  loc_17DDF27: Call 0.Method_arg_2C (var_EC, &HFF)
  loc_17DDF34: Set var_B0 = Nothing
  loc_17DDF3C: Set var_B4 = Nothing
  loc_17DDF44: Set var_B8 = Nothing
  loc_17DDF4C: Set var_B4 = Nothing
  loc_17DDF4F: Exit Sub
  loc_17DDF50: ' Referenced from: 17DBE58
  loc_17DDF5E: Call 0.Method_arg_50 (var_118, 0)
  loc_17DDF73: Proc_183_57_104AA84(var_118, "FaBudget")
  loc_17DDF7F: Exit Sub
End Sub

Public Sub Proc_245_87_115F924(arg_C) '115F924
  'Data Table: 58C0C8
  Dim var_8C As Recordset15
  Dim var_150 As String
  loc_115F561: Set var_8C = arg_C 
  loc_115F589: var_8C.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_115F5B5: var_8C.Fields.Append "FromDate", &H85, 0
  loc_115F5E1: var_8C.Fields.Append "ToDate", &H85, 0
  loc_115F60D: var_8C.Fields.Append "AcGroupCode", &HC8, 8
  loc_115F639: var_8C.Fields.Append "AcGroupName", &HC8, &H32
  loc_115F665: var_8C.Fields.Append "AcCode", &HC8, 8
  loc_115F691: var_8C.Fields.Append "AcName", &HC8, &H32
  loc_115F6BD: var_8C.Fields.Append "BudgetedAmt", 5, 0
  loc_115F6E9: var_8C.Fields.Append "BudgetCrDr", &HC8, 2
  loc_115F715: var_8C.Fields.Append "ActualAmt", 5, 0
  loc_115F741: var_8C.Fields.Append "ActualCrDr", &HC8, 2
  loc_115F76D: var_8C.Fields.Append "Varience", 5, 0
  loc_115F799: var_8C.Fields.Append "VariencePer", 5, 0
  loc_115F7C5: var_8C.Fields.Append "PreBudgetedAmt", 5, 0
  loc_115F7F1: var_8C.Fields.Append "PreBudgetCrDr", &HC8, 2
  loc_115F81D: var_8C.Fields.Append "PreActualAmt", 5, 0
  loc_115F849: var_8C.Fields.Append "PreActualCrDr", &HC8, 2
  loc_115F875: var_8C.Fields.Append "PreVarience", 5, 0
  loc_115F8A1: var_8C.Fields.Append "PreVariencePer", 5, 0
  loc_115F8CD: var_8C.Fields.Append "GroupType", &HC8, 7
  loc_115F8DD: var_8C.CursorType = 3
  loc_115F8EA: var_8C.LockType = 3
  loc_115F909: var_8C.Open var_A0, var_B0, -1
  loc_115F910: Set var_8C = Nothing 
  loc_115F917: Set var_88 = arg_C 
  loc_115F91B: Proc_245_87_115F924 = -1
  loc_115F921: var_150 = -1
End Sub

Public Sub Proc_245_88_1273CF0(arg_C) '1273CF0
  'Data Table: 58C0C8
  Dim var_94 As Recordset15
  Dim var_98 As Fields
  Dim var_A8 As Variant
  Dim var_F4 As String
  Dim unk_58C10D As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As String
  Dim var_EC As Variant
  loc_1273769: Set var_94 = arg_C 
  loc_1273791: var_94.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_12737BD: var_94.Fields.Append "FromDate", &H85, 0
  loc_12737E9: var_94.Fields.Append "ToDate", &H85, 0
  loc_1273815: var_94.Fields.Append "AcGroupCode", &HC8, 8
  loc_1273841: var_94.Fields.Append "AcGroupName", &HC8, &H32
  loc_127386D: var_94.Fields.Append "AcCode", &HC8, 8
  loc_1273899: var_94.Fields.Append "AcName", &HC8, &H32
  loc_12738C5: var_94.Fields.Append "BudgetedAmt", 5, 0
  loc_12738F1: var_94.Fields.Append "BudgetCrDr", &HC8, 2
  loc_127391D: var_94.Fields.Append "ActualAmt", 5, 0
  loc_1273949: var_94.Fields.Append "ActualCrDr", &HC8, 2
  loc_1273975: var_94.Fields.Append "VariencePer", 5, 0
  loc_12739A1: var_94.Fields.Append "Flag", &HC8, 7
  loc_12739BE: Set var_98 = CVar(CLng(0))(2)
  loc_12739E8: var_F4 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & CStr(var_EC)
  loc_12739F8: unk_58C10D.Execute var_F4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_118, -1
  loc_1273A03: Set var_90 = var_11C
  loc_1273A31: If (var_90.RecordCount > 0) Then
  loc_1273A3B:   For var_124 = 1 To &HC: var_8A = var_124 'Integer
  loc_1273A47:     If (var_8A = 1) Then
  loc_1273AB2:       var_94.Fields.Append CStr(Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), 5, 0
  loc_1273B3B:       var_94.Fields.Append CStr("mCrDr" & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), &HC8, 2
  loc_1273B58:     Else
  loc_1273B89:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item("FromDate")))
  loc_1273BD6:       var_94.Fields.Append CStr(Format("MMM/yy", "MMM/yy")), 5, 0
  loc_1273BF3:       var_A8 = "FromDate"
  loc_1273C21:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item(var_A8)))
  loc_1273C30:       var_BC = "MMM/yy"
  loc_1273C77:       var_94.Fields.Append CStr("mCrDr" & Format("MMM/yy", var_BC)), &HC8, 2
  loc_1273C93:     End If
  loc_1273C96:   Next var_124 'Integer
  loc_1273C9B: End If
  loc_1273CA3: var_94.CursorType = 3
  loc_1273CB0: var_94.LockType = 3
  loc_1273CCF: var_94.Open var_A8, var_BC, -1
  loc_1273CD6: Set var_94 = Nothing 
  loc_1273CDD: Set var_88 = arg_C 
  loc_1273CE6: Set var_90 = Nothing
  loc_1273CE9: Proc_245_88_1273CF0 = -1
End Sub

Public Sub Proc_245_89_17F3510
  'Data Table: 58C0C8
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58C10D As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim var_172 As Integer
  Dim Me As Recordset15
  loc_17F1388: On Error Goto loc_17F34DE
  loc_17F13A0: Set var_160 = CVar(CLng(0))(0)
  loc_17F13C4: Call Proc_245_64_F51054(CInt(0), CStr(var_170))
  loc_17F13D8: If (var_17A = 0) Then
  loc_17F13E0:   global_130 = 0
  loc_17F13E3:   Exit Sub
  loc_17F13E4: End If
  loc_17F13EF: Set var_160 = Me.TEXT
  loc_17F13F5: Call 0.Method_Proc_245_89_17F35100 (CInt(&HC), var_180, global_130)
  loc_17F13FD: var_170 = CVar(var_180) 'Address
  loc_17F141E: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17F1432:   Set var_160 = Me.TEXT
  loc_17F1438:   Call 0.Method_Proc_245_89_17F35100 (CInt(&HC), var_180, var_178)
  loc_17F1440:   " And VIEWLEDGER.LOGSite_Code='" = var_180.Tag
  loc_17F1450:   var_11C = var_17A & var_178 & "'"
  loc_17F1464: Else
  loc_17F146B:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_17F1472:   var_11C = var_178 & "'"
  loc_17F1478: End If
  loc_17F147E: global_84 = vbNullString
  loc_17F1485: var_A0 = vbNullString
  loc_17F1494: Set var_160 = Me.Check1
  loc_17F149A: Call 0.Method_Proc_245_89_17F35100 (1, var_180)
  loc_17F14B8: If (CLng(var_180.Value) = 0) Then
  loc_17F14D6:   Call Proc_245_61_127CCE4(global_96, 1, CByte(1))
  loc_17F14E1:   global_84 = var_178
  loc_17F14F1:   If (global_130 = 0) Then
  loc_17F14F4:     Exit Sub
  loc_17F14F5:   End If
  loc_17F14F5: End If
  loc_17F1500: If (global_84 <> vbNullString) Then
  loc_17F1514:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17F151A: End If
  loc_17F152F: Set var_160 = CVar(CLng(0))(1)
  loc_17F154D: Me.TXTE_DATE.Text = CStr(Check1.DispID_41)
  loc_17F1566: Set var_160 = Me.TXTE_DATE
  loc_17F1595: If (Proc_183_49_EF3180(CDate(var_160.Text), "Date Upto") = 0) Then
  loc_17F159D:   global_130 = 0
  loc_17F15A0:   Exit Sub
  loc_17F15A1: End If
  loc_17F15B5: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_17F15C5: unk_58C10D.Execute var_178 & "'", var_170, -1
  loc_17F15D0: Set var_88 = var_160
  loc_17F15F4: If (var_88.RecordCount = 0) Then
  loc_17F15FD:   Call 0.Method_arg_50 (var_178, var_160, global_130)
  loc_17F1618:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17F161E:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17F162E:   Exit Sub
  loc_17F162F: End If
  loc_17F1637: If (arg_10 = "Dr") Then
  loc_17F1641:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17F1644: End If
  loc_17F164C: If (arg_10 = "Cr") Then
  loc_17F1656:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17F1659: End If
  loc_17F166D: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,SUBGROUP.CONPERSON,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_17F168B: unk_58C10D.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17F1696: Set var_8C = var_160
  loc_17F16AD: var_A4 = vbNullString
  loc_17F16C5: Set var_90 = mAgeingReport(New)
  loc_17F16CE: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17F16D3: ' Referenced from: 17F2768
  loc_17F16E2: If Not(var_8C.EOF) Then
  loc_17F16E8:   var_E4 = CDbl(0)
  loc_17F16EE:   var_EC = CDbl(0)
  loc_17F16F4:   var_F4 = CDbl(0)
  loc_17F16FA:   var_FC = CDbl(0)
  loc_17F1700:   var_104 = CDbl(0)
  loc_17F1706:   var_10C = CDbl(0)
  loc_17F170C:   var_114 = CDbl(0)
  loc_17F1718:   var_B4 = CDbl(0)
  loc_17F1760:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17F176F:   Proc_183_7_EB0C44(var_1D8, CVar(Me.TXTE_DATE), var_1A0, var_258, -1, var_25C, var_B4)
  loc_17F1797:   var_178 = CStr(CDbl(0) & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17F17A1:   unk_58C10D.Execute var_178, var_114, var_10C
  loc_17F17AC:   Set var_94 = var_25C
  loc_17F17D2:   ' Referenced from: 17F2389
  loc_17F17E1:   If Not(var_94.EOF) Then
  loc_17F17EC:     If (arg_10 = "Dr") Then
  loc_17F182B:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17F185F:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17F1864:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17F1878:       Else
  loc_17F18C2:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17F1912:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17F1946:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17F194B:           var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17F195F:         Else
  loc_17F19E1:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17F1A15:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17F1A1A:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17F1A2E:           Else
  loc_17F1AB0:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17F1AE4:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17F1AE9:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17F1AFD:             Else
  loc_17F1B7F:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17F1BB3:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17F1BB8:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17F1BCC:               Else
  loc_17F1C4E:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17F1C82:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17F1C87:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17F1C9B:                 Else
  loc_17F1D1D:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17F1D51:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17F1D56:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F1D6A:                   Else
  loc_17F1D9B:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17F1DA0:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F1DB1:                   End If
  loc_17F1DB1:                 End If
  loc_17F1DB1:               End If
  loc_17F1DB1:             End If
  loc_17F1DB1:           End If
  loc_17F1DB1:         End If
  loc_17F1DB1:       End If
  loc_17F1DB4:     Else
  loc_17F1DBC:       If (arg_10 = "Cr") Then
  loc_17F1DFB:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17F1E2F:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17F1E34:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F1E48:         Else
  loc_17F1E92:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(Me.TXTE_DATE), 1, 1))
  loc_17F1EE2:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17F1F16:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17F1F1B:             var_E4 = CSng(CVar(Me.TXTE_DATE))
  loc_17F1F2F:           Else
  loc_17F1FB1:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17F1FE5:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17F1FEA:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17F1FFE:             Else
  loc_17F2080:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17F20B4:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17F20B9:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17F20CD:               Else
  loc_17F214F:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17F2183:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17F2188:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17F219C:                 Else
  loc_17F221E:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17F2252:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17F2257:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17F226B:                   Else
  loc_17F22B9:                     var_25C = var_88.Fields
  loc_17F22C1:                     var_260 = var_25C.Item("Age6")
  loc_17F22D1:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17F22ED:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17F2321:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17F2326:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F233A:                     Else
  loc_17F236B:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17F2370:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F2381:                     End If
  loc_17F2381:                   End If
  loc_17F2381:                 End If
  loc_17F2381:               End If
  loc_17F2381:             End If
  loc_17F2381:           End If
  loc_17F2381:         End If
  loc_17F2381:       End If
  loc_17F2381:     End If
  loc_17F2384:     var_94.MoveNext
  loc_17F2389:     GoTo loc_17F17D2
  loc_17F238C:   End If
  loc_17F2397:   var_D8(0) = var_E4
  loc_17F23A3:   var_D8(1) = var_EC
  loc_17F23AF:   var_D8(2) = var_F4
  loc_17F23BB:   var_D8(3) = var_FC
  loc_17F23C7:   var_D8(4) = var_104
  loc_17F23D3:   var_D8(5) = var_10C
  loc_17F23DF:   var_D8(6) = var_114
  loc_17F23E3:   var_BC = CDbl(7)
  loc_17F23E6:   ' Referenced from: 17F247A
  loc_17F23ED:   If (var_BC <> CDbl(0)) Then
  loc_17F2400:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17F2413:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17F2426:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17F2437:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17F243B:       Else
  loc_17F244B:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17F2469:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17F246D:           var_B4 = CDbl(0)
  loc_17F2470:         End If
  loc_17F2470:       End If
  loc_17F2470:     End If
  loc_17F2477:     var_BC = (var_BC - CDbl(1))
  loc_17F247A:     GoTo loc_17F23E6
  loc_17F247D:   End If
  loc_17F24C2:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17F24CD:   var_12C = var_BC
  loc_17F24DD:   var_13C = 0
  loc_17F24F7:   var_1A0 = Round(var_B4, 2)
  loc_17F251A:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17F2520:     Set var_264 = var_90 
  loc_17F252F:     var_264.AddNew var_12C, var_13C
  loc_17F253D:     var_13C = CVar(var_D8(0)) 'Double
  loc_17F254B:     var_264.Collect = "DEBIT1"
  loc_17F2559:     var_13C = CVar(var_D8(1)) 'Double
  loc_17F2567:     var_264.Collect = "DEBIT2"
  loc_17F2575:     var_13C = CVar(var_D8(2)) 'Double
  loc_17F2583:     var_264.Collect = "DEBIT3"
  loc_17F2591:     var_13C = CVar(var_D8(3)) 'Double
  loc_17F259F:     var_264.Collect = "DEBIT4"
  loc_17F25AD:     var_13C = CVar(var_D8(4)) 'Double
  loc_17F25BB:     var_264.Collect = "DEBIT5"
  loc_17F25C9:     var_13C = CVar(var_D8(5)) 'Double
  loc_17F25D7:     var_264.Collect = "DEBIT6"
  loc_17F25E5:     var_13C = CVar(var_D8(6)) 'Double
  loc_17F25F3:     var_264.Collect = "Debit"
  loc_17F263D:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17F264B:     var_264.Collect = "TOTALDR"
  loc_17F2653:     var_13C = CVar(var_B4) 'Double
  loc_17F2661:     var_264.Collect = "Credit"
  loc_17F2691:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17F26A3:     var_264.Collect = "ACC_NAME"
  loc_17F26DD:     var_190 = Left(CVar(var_8C.Fields.Item("ConPerson")), &H32)
  loc_17F26EF:     var_264.Collect = "CON_PER"
  loc_17F2701:     var_12C = "GroupName"
  loc_17F2715:     var_180 = var_8C.Fields.Item(var_12C)
  loc_17F2729:     var_190 = Left(CVar(var_180), &H23)
  loc_17F2732:     var_13C = "AName"
  loc_17F273B:     var_264.Collect = var_13C
  loc_17F2755:     var_264.Update var_12C, var_13C
  loc_17F275C:     Set var_264 = Nothing 
  loc_17F2760:   End If
  loc_17F2763:   var_8C.MoveNext
  loc_17F2768:   GoTo loc_17F16D3
  loc_17F276B: End If
  loc_17F2771: var_1B0 = var_90.RecordCount
  loc_17F277F: If (var_1B0 <= 0) Then
  loc_17F2788:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_190, var_13C, var_13C, var_13C)
  loc_17F27A9:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17F27BE:   global_130 = 0
  loc_17F27C1:   Exit Sub
  loc_17F27C2: End If
  loc_17F27D8: Set var_160 = var_90 
  loc_17F27E4: var_172 = CreateFieldDefFile(var_160, MemVar_1F923B0 & "\AGEINGREPORT.ttx", &HFF, global_130, var_13C, var_13C)
  loc_17F27EE: Set var_90 = var_160
  loc_17F27F4: var_12C = CVar(var_172) 'Integer
  loc_17F27F7: var_274 = var_12C 'Variant
  loc_17F2813: var_178 = MemVar_1F923B0 & "\AGEINGREPORT.RPT"
  loc_17F281C: Call 0.Method_arg_1C (var_178, var_12C, var_160, var_172, var_13C)
  loc_17F2827: MemVar_1F921E4 = var_160
  loc_17F2842: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17F284A: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17F2856: For var_278 = var_BC To CInt(var_1B0): var_13C = var_278 'Integer
  loc_17F286F:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17F2877:   Call 0.Method_arg_20 (var_178)
  loc_17F287F:   Call 0.Method_arg_30 (var_BC)
  loc_17F2895:   var_288 = Ucase(CVar(var_178)) 'Variant
  loc_17F28C5:   If (var_288 = Ucase("title")) Then
  loc_17F28D9:     Call 0.Method_Proc_245_89_17F35100 (CInt(&HC))
  loc_17F2902:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17F290E:       Call 0.Method_arg_50 (var_178, "'")
  loc_17F2931:       Call 0.Method_arg_90 (Me.TEXT, CLng(var_BE))
  loc_17F2939:       Call 0.Method_arg_20 (var_180)
  loc_17F2941:       Call 0.Method_arg_38 (var_180 & var_178 & "'")
  loc_17F2959:     Else
  loc_17F2962:       Call 0.Method_arg_50 (var_178)
  loc_17F2980:       Set var_160 = Me.TEXT
  loc_17F2986:       Call 0.Method_Proc_245_89_17F35100 (CInt(&HC), var_180)
  loc_17F299D:       var_1C0 = (CVar("'" & var_178 & " (") + Trim(CVar(var_180)))
  loc_17F29A6:       var_1D8 = (var_1C0 + ")")
  loc_17F29AF:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17F29C7:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F29CF:       Call 0.Method_arg_20 (var_260)
  loc_17F29D7:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17F29FD:     End If
  loc_17F2A00:   Else
  loc_17F2A22:     If (var_288 = Ucase("ACNAME")) Then
  loc_17F2A58:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F2A60:       Call 0.Method_arg_20 (var_25C)
  loc_17F2A68:       Call 0.Method_arg_38 ("'For A/C  :   " & Me.TXTACC_CODE.Text & "'")
  loc_17F2A82:     Else
  loc_17F2AA4:       If (var_288 = Ucase("DATE")) Then
  loc_17F2ADA:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F2AE2:         Call 0.Method_arg_20 (var_25C)
  loc_17F2AEA:         Call 0.Method_arg_38 ("'Upto Date :     " & Me.TXTE_DATE.Text & "'")
  loc_17F2B04:       Else
  loc_17F2B26:         If (var_288 = Ucase("P1")) Then
  loc_17F2B2E:           var_13C = "0 - "
  loc_17F2B61:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17F2B86:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F2B8E:           Call 0.Method_arg_20 (var_260)
  loc_17F2B96:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & Me.TXTE_DATE.Text & " (") & "'"))
  loc_17F2BB7:         Else
  loc_17F2BD9:           If (var_288 = Ucase("P2")) Then
  loc_17F2C10:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17F2C23:             var_15C = " - "
  loc_17F2C7B:             Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F2C83:             Call 0.Method_arg_20 (var_290)
  loc_17F2C8B:             Call 0.Method_arg_38 (CStr("'" & Str(Ucase("P2")) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F2CB8:           Else
  loc_17F2CDA:             If (var_288 = Ucase("P3")) Then
  loc_17F2D11:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17F2D20:               var_14C = " - "
  loc_17F2D25:               var_1C0 = (Str(Ucase("P3")) + "'")
  loc_17F2D57:               var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17F2D7C:               Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F2D84:               Call 0.Method_arg_20 (var_290)
  loc_17F2D8C:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F2DB9:             Else
  loc_17F2DDB:               If (var_288 = Ucase("P4")) Then
  loc_17F2E12:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17F2E21:                 var_14C = " - "
  loc_17F2E26:                 var_1C0 = (Str(Ucase("P4")) + "'")
  loc_17F2E58:                 var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17F2E7D:                 Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F2E85:                 Call 0.Method_arg_20 (var_290)
  loc_17F2E8D:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F2EBA:               Else
  loc_17F2EDC:                 If (var_288 = Ucase("P5")) Then
  loc_17F2F13:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17F2F22:                   var_14C = " - "
  loc_17F2F27:                   var_1C0 = (Str(Ucase("P5")) + "'")
  loc_17F2F59:                   var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17F2F7E:                   Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F2F86:                   Call 0.Method_arg_20 (var_290)
  loc_17F2F8E:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F2FBB:                 Else
  loc_17F2FDD:                   If (var_288 = Ucase("P6")) Then
  loc_17F3014:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17F3023:                     var_14C = " - "
  loc_17F3028:                     var_1C0 = (Str(Ucase("P6")) + "'")
  loc_17F303B:                     var_25C = var_88.Fields
  loc_17F3043:                     var_260 = var_25C.Item("Age6")
  loc_17F305A:                     var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_260)))
  loc_17F307F:                     Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F3087:                     Call 0.Method_arg_20 (var_290)
  loc_17F308F:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F30BC:                   Else
  loc_17F30DE:                     If (var_288 = Ucase("P7")) Then
  loc_17F30F5:                       var_160 = var_88.Fields
  loc_17F30FD:                       var_180 = var_160.Item("Age6")
  loc_17F3135:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F313D:                       Call 0.Method_arg_20 (var_260)
  loc_17F3145:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17F3164:                     Else
  loc_17F3186:                       If (var_288 = Ucase("P8")) Then
  loc_17F3191:                         If (arg_10 = "Dr") Then
  loc_17F31A7:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F31AF:                           Call 0.Method_arg_20 (var_180)
  loc_17F31B7:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F31C6:                         Else
  loc_17F31CE:                           If (arg_10 = "Cr") Then
  loc_17F31E4:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F31EC:                             Call 0.Method_arg_20 (var_180)
  loc_17F31F4:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F3200:                           End If
  loc_17F3200:                         End If
  loc_17F3203:                       Else
  loc_17F3225:                         If (var_288 = Ucase("P9")) Then
  loc_17F3230:                           If (arg_10 = "Dr") Then
  loc_17F3246:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F324E:                             Call 0.Method_arg_20 (var_180)
  loc_17F3256:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F3265:                           Else
  loc_17F326D:                             If (arg_10 = "Cr") Then
  loc_17F3283:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F328B:                               Call 0.Method_arg_20 (var_180)
  loc_17F3293:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F329F:                             End If
  loc_17F329F:                           End If
  loc_17F32A2:                         Else
  loc_17F32C4:                           If (var_288 = Ucase("HEADI")) Then
  loc_17F32CF:                             If (arg_10 = "Dr") Then
  loc_17F32E5:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F32ED:                               Call 0.Method_arg_20 (var_180)
  loc_17F32F5:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17F3304:                             Else
  loc_17F330C:                               If (arg_10 = "Cr") Then
  loc_17F3322:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F332A:                                 Call 0.Method_arg_20 (var_180)
  loc_17F3332:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17F333E:                               End If
  loc_17F333E:                             End If
  loc_17F3341:                           Else
  loc_17F3363:                             If (var_288 = Ucase("PageNo")) Then
  loc_17F33B9:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F33C1:                               Call 0.Method_arg_20 (var_260)
  loc_17F33C9:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17F33E8:                             Else
  loc_17F340A:                               If (var_288 = Ucase("DT")) Then
  loc_17F340D:                                 var_13C = "'"
  loc_17F3427:                                 var_160 = Me.Fields
  loc_17F344C:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17F3460:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F3468:                                 Call 0.Method_arg_20 (var_260)
  loc_17F3470:                                 Call 0.Method_arg_38 (var_178)
  loc_17F348C:                               End If
  loc_17F348C:                             End If
  loc_17F348C:                           End If
  loc_17F348C:                         End If
  loc_17F348C:                       End If
  loc_17F348C:                     End If
  loc_17F348C:                   End If
  loc_17F348C:                 End If
  loc_17F348C:               End If
  loc_17F348C:             End If
  loc_17F348C:           End If
  loc_17F348C:         End If
  loc_17F348C:       End If
  loc_17F348C:     End If
  loc_17F348C:   End If
  loc_17F348F: Next var_278 'Integer
  loc_17F34AD: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17F34B5: Call 0.Method_arg_2C (var_13C)
  loc_17F34C2: Set var_88 = Nothing
  loc_17F34CA: Set var_8C = Nothing
  loc_17F34D2: Set var_90 = Nothing
  loc_17F34DA: Set var_94 = Nothing
  loc_17F34DD: Exit Sub
  loc_17F34DE: ' Referenced from: 17F1388
  loc_17F34EC: Call 0.Method_arg_50 (var_178, 0)
  loc_17F3501: Proc_183_57_104AA84(var_178, "AgeingReport")
  loc_17F350D: Exit Sub
End Sub

Public Sub Proc_245_90_EB029C(arg_C) 'EB029C
  'Data Table: 58C0C8
  loc_EB0205: If (CInt(arg_C) = 1) Then
  loc_EB020F:   var_86 = CByte(5) 'Byte
  loc_EB0216: Else
  loc_EB021F:   If (CInt(arg_C) = 2) Then
  loc_EB0229:     var_86 = CByte(&H1D) 'Byte
  loc_EB0230:   Else
  loc_EB0239:     If (CInt(arg_C) = 3) Then
  loc_EB0243:       var_86 = CByte(8) 'Byte
  loc_EB024A:     Else
  loc_EB0253:       If (CInt(arg_C) = 4) Then
  loc_EB025D:         var_86 = CByte(&HE) 'Byte
  loc_EB0264:       Else
  loc_EB026D:         If (CInt(arg_C) = 5) Then
  loc_EB0277:           var_86 = CByte(&H1F) 'Byte
  loc_EB027E:         Else
  loc_EB0287:           If (CInt(arg_C) = 6) Then
  loc_EB0291:             var_86 = CByte(0) 'Byte
  loc_EB0295:           End If
  loc_EB0295:         End If
  loc_EB0295:       End If
  loc_EB0295:     End If
  loc_EB0295:   End If
  loc_EB0295: End If
  loc_EB0295: Proc_245_90_EB029C = 
End Sub

Public Sub Proc_245_91_F3A288
  'Data Table: 58C0C8
  Dim var_B0 As Variant
  Dim var_B4 As TextBox
  loc_F3A182: Set var_B4 = (CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|"))
  loc_F3A1A0: Set var_B4 = TXTE_DATE.DispID_3("Select File Name")
  loc_F3A1B2: Set var_B4 = (TXTE_DATE.DispID_2)
  loc_F3A1B8: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_1F
  loc_F3A1C7: Set var_B4 = ()
  loc_F3A1E6: If (CStr(TXTE_DATE.DispID_1) <> vbNullString) Then
  loc_F3A202:   Set var_C8 = global_192.ExportOptions 
  loc_F3A20E:   Call 0.Method_arg_2C (1)
  loc_F3A21A:   Set var_B4 = (var_CC)
  loc_F3A22E:   Call Proc_245_90_EB029C(CByte(CInt(TXTE_DATE.DispID_17)))
  loc_F3A23B:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F3A24A:   Set var_B4 = ()
  loc_F3A25E:   Call 0.Method_arg_3C (CStr(TXTE_DATE.DispID_1))
  loc_F3A26E:   Set var_C8 = Nothing 
  loc_F3A272:   var_B0 = False
  loc_F3A27F:   Call global_192.Export
  loc_F3A285: End If
  loc_F3A285: Exit Sub
End Sub

Public Sub Proc_245_92_14984B0(arg_C, arg_10, arg_14, arg_18) '14984B0
  'Data Table: 58C0C8
  Dim var_CC As Long
  Dim var_FC As String
  Dim var_DC As Variant
  Dim var_11C As String
  Dim var_12C As Variant
  Dim var_A4 As String
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_288 As Variant
  Dim var_2A8 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  Dim var_18C As String
  Dim var_184 As TextBox
  loc_1497878: On Error Goto loc_1498475
  loc_1497881: If (arg_10 = 1) Then
  loc_149788A:   Call 0.Method_arg_7C (var_C8)
  loc_1497892:   var_CC = var_C8
  loc_149789E:   If (var_CC = &H10C) Then
  loc_14978C2:     MsgBox("Please Set 132 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_14978D5:   Else
  loc_14978DE:     If (var_CC = &H107) Then
  loc_1497902:       MsgBox("Please Set 80 Column Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_1497915:     Else
  loc_149791E:       If (var_CC = 9) Then
  loc_1497942:         MsgBox("Please Set A4 Paper in Your Printer on 12 cpi & Put it On", &H40, "Paper Setting", var_12C, var_14C)
  loc_1497955:       Else
  loc_149795B:         Call 0.Method_arg_7C (var_C8)
  loc_149798D:         var_12C = ("Paper Size No. is " + Str(CVar(var_C8)))
  loc_1497991:         MsgBox(var_12C, &H40, "Paper Setting", var_15C, var_17C)
  loc_14979A5:       End If
  loc_14979A5:     End If
  loc_14979A5:   End If
  loc_14979A9:   var_BA = CByte(0) 'Byte
  loc_14979B9:   Call 0.Method_Proc_245_92_14984B08 ("C:\REPTMP", var_17E)
  loc_14979C4:   If (var_17E = 0) Then
  loc_14979D3:     Call 0.Method_arg_74 ("C:\REPTMP", var_184)
  loc_14979DB:     ' Referenced from: 1497B82
  loc_14979DB:   End If
  loc_14979DD:   If &HFF Then
  loc_14979E9:     If (CInt(var_BA) >= &H64) Then
  loc_14979F7:       For var_188 = CByte(1) To CByte(&H64): var_BA = var_188 'Byte
  loc_1497A20:         var_12C = ("C:\REPTMP\REP" + Trim(Str(var_BA)))
  loc_1497A55:         var_A4 = var_18C
  loc_1497A60:         var_10C = (Trim(CStr(var_12C)) + ".TXT")
  loc_1497A6E:         Call 0.Method_Proc_245_92_14984B04 (CStr(Trim(Str(var_BA))), var_17E, var_A4)
  loc_1497A84:         If var_17E Then
  loc_1497AA6:           var_A4 = var_18C
  loc_1497AB1:           var_10C = (Trim(var_A4) + ".TXT")
  loc_1497ABF:           Call 0.Method_arg_5C (CStr(Trim(Str(var_BA))), 0)
  loc_1497AD2:         End If
  loc_1497AD5:       Next var_188 'Byte
  loc_1497ADF:       var_BA = CByte(1) 'Byte
  loc_1497AE3:     End If
  loc_1497B06:     var_12C = ("C:\REPTMP\REP" + Trim(Str(var_BA)))
  loc_1497B3B:     var_A4 = var_18C
  loc_1497B46:     var_10C = (Trim(CStr(var_12C)) + ".TXT")
  loc_1497B54:     Call 0.Method_Proc_245_92_14984B04 (CStr(Trim(Str(var_BA))), var_17E)
  loc_1497B6A:     If var_17E Then
  loc_1497B78:       var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_1497B7F:     Else
  loc_1497B82:     Else
  loc_1497B82:       GoTo loc_14979DB
  loc_1497B85:     End If
  loc_1497B85:   End If
  loc_1497BA2:   var_A4 = var_18C
  loc_1497BAD:   var_10C = (Trim(var_A4) + ".TXT")
  loc_1497BBB:   Call 0.Method_arg_DC (var_184, CStr(Trim(Str(var_BA))))
  loc_1497BC3:   Call 0.Method_arg_3C (var_A4)
  loc_1497BDF:   If (arg_18 = &HFF) Then
  loc_1497BED:     Call 0.Method_arg_DC (var_184)
  loc_1497BF5:     Call 0.Method_arg_24 (&HA)
  loc_1497C00:   Else
  loc_1497C0B:     Call 0.Method_arg_DC (var_184)
  loc_1497C13:     Call 0.Method_arg_24 (8)
  loc_1497C1B:   End If
  loc_1497C23:   Call 0.Method_arg_DC (var_184)
  loc_1497C2B:   Call 0.Method_arg_64 (&H3C)
  loc_1497C3E:   Call 0.Method_arg_DC (var_184)
  loc_1497C46:   Call 0.Method_arg_2C (1)
  loc_1497C5C:   Call 0.Method_arg_90 (var_184, var_C8)
  loc_1497C64:   Call 0.Method_arg_24 (var_C2)
  loc_1497C70:   For var_194 =  To CInt(var_C8): 1 = var_194 'Integer
  loc_1497C86:     Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497C8E:     Call 0.Method_arg_20 (var_198)
  loc_1497C96:     Call 0.Method_arg_30 (var_18C)
  loc_1497CAC:     var_1A8 = Ucase(CVar(var_18C)) 'Variant
  loc_1497CDC:     If (var_1A8 = Ucase("comp_name")) Then
  loc_1497CF9:       var_10C = (Chr(&H1B) + "W1")
  loc_1497D05:       var_12C = Chr(&H1B)
  loc_1497D0D:       var_14C = (Ucase("comp_name") + var_12C)
  loc_1497D16:       var_15C = ("Paper Setting" + "W1")
  loc_1497D2A:       var_1B8 = (var_15C + Chr(&H1B))
  loc_1497D33:       var_1C8 = (var_1B8 + "E")
  loc_1497D47:       var_1E8 = (var_1C8 + Chr(&H1B))
  loc_1497D50:       var_1F8 = (var_1E8 + "G")
  loc_1497D5A:       var_208 = (var_1F8 + CVar(MemVar_1F92130))
  loc_1497D6E:       var_228 = (var_208 + Chr(&H1B))
  loc_1497D77:       var_248 = (var_228 + "H")
  loc_1497D8B:       var_268 = (var_248 + Chr(&H1B))
  loc_1497D94:       var_288 = (var_268 + "F")
  loc_1497DA8:       var_2A8 = (var_288 + Chr(&H1B))
  loc_1497DB1:       var_2C8 = (var_2A8 + "W0")
  loc_1497DC5:       var_2E8 = (var_2C8 + Chr(&H1B))
  loc_1497DCE:       var_308 = (var_2E8 + "W0")
  loc_1497DF0:       Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497DF8:       Call 0.Method_arg_20 (var_198)
  loc_1497E00:       Call 0.Method_arg_38 (CStr("'" & var_308 & "'"))
  loc_1497E49:     Else
  loc_1497E6B:       If (var_1A8 = Ucase("comp_add1")) Then
  loc_1497E8C:         Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497E94:         Call 0.Method_arg_20 (var_198)
  loc_1497E9C:         Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1497EB2:       Else
  loc_1497ED4:         If (var_1A8 = Ucase("comp_pin")) Then
  loc_1497EF5:           Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497EFD:           Call 0.Method_arg_20 (var_198)
  loc_1497F05:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_1497F1B:         Else
  loc_1497F3D:           If (var_1A8 = Ucase("comp_GSTIN")) Then
  loc_1497F47:             var_18C = "'" & MemVar_1F92154
  loc_1497F5E:             Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1497F66:             Call 0.Method_arg_20 (var_198)
  loc_1497F6E:             Call 0.Method_arg_38 (var_18C & "'")
  loc_1497F81:           End If
  loc_1497F81:         End If
  loc_1497F81:       End If
  loc_1497F81:     End If
  loc_1497F84:   Next var_194 'Integer
  loc_1497F91:   Call 0.Method_arg_D8 (False)
  loc_1497FB3:   var_A4 = var_18C
  loc_1497FCD:   var_10C = (Trim(var_A4) + ".TXT")
  loc_1497FDB:   Call 0.Method_arg_7C (CStr(Ucase("comp_GSTIN")), 8, 0)
  loc_1497FE6:   Set var_C0 = var_184
  loc_1498011:   Call 0.Method_arg_38 (CStr(Chr(&HC)), 0)
  loc_149801F:   Call 0.Method_Proc_245_92_14984B0C (var_184)
  loc_149803C:   Call 0.Method_arg_7C ("C:\REPTMP\REPPRINT.BAT", 2, &HFF)
  loc_1498047:   Set var_C0 = var_184
  loc_1498054:   var_18C = "TYPE &H23>" & MemVar_1F923B4
  loc_149805A:   Call 0.Method_arg_38 (var_18C, 0)
  loc_1498065:   Call 0.Method_Proc_245_92_14984B0C (var_184)
  loc_1498072:   If (MemVar_1F923B8 = "Y") Then
  loc_1498081:     Call 0.Method_Proc_245_92_14984B04 ("C:\REPTMP\REPPRINT.PIF")
  loc_149808C:     If (var_17E = 0) Then
  loc_14980A8:       MsgBox("C:\REPTMP\REPPRINT.PIF File Not Exist", 0, Ucase("comp_GSTIN"), var_12C, "Paper Setting")
  loc_14980B8:       Exit Sub
  loc_14980B9:     End If
  loc_14980D6:     var_A4 = var_18C
  loc_14980E6:     var_10C = ("C:\REPTMP\REPPRINT.PIF " + Trim(var_A4))
  loc_14980EF:     var_12C = (Ucase("comp_GSTIN") + ".TXT")
  loc_14980FC:     var_B4 = CVar(Shell(var_12C, 0)) 'Variant
  loc_149810F:   Else
  loc_149811B:     Call 0.Method_Proc_245_92_14984B04 ("C:\REPTMP\REPPRINT.BAT", var_17E)
  loc_1498126:     If (var_17E = 0) Then
  loc_1498142:       MsgBox("C:\REPTMP\REPPRINT.BAT File Not Exist", 0, Ucase("comp_GSTIN"), var_12C, "Paper Setting")
  loc_1498152:       Exit Sub
  loc_1498153:     End If
  loc_1498170:     var_A4 = var_18C
  loc_1498178:     var_FC = "C:\REPTMP\REPPRINT.BAT "
  loc_1498180:     var_10C = (var_FC + Trim(var_A4))
  loc_1498184:     var_11C = ".TXT"
  loc_1498189:     var_12C = (Ucase("comp_GSTIN") + var_11C)
  loc_1498196:     var_B4 = CVar(Shell(var_12C, 0)) 'Variant
  loc_14981A6:   End If
  loc_14981A9: Else
  loc_14981B0:   var_18C = "* " & arg_14
  loc_14981BB:   Proc_183_13_F040E4(var_18C & " * ")
  loc_14981D5:   Call 0.Method_arg_90 (var_184, var_C8, var_C2)
  loc_14981DD:   Call 0.Method_arg_24 (1)
  loc_14981E9:   For var_34C =  To CInt(var_C8):   var_17E = var_34C 'Integer
  loc_14981FF:     Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1498207:     Call 0.Method_arg_20 (var_198)
  loc_149820F:     Call 0.Method_arg_30 (var_18C)
  loc_1498225:     var_35C = Ucase(CVar(var_18C)) 'Variant
  loc_1498255:     If (var_35C = Ucase("comp_name")) Then
  loc_1498276:       Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_149827E:       Call 0.Method_arg_20 (var_198)
  loc_1498286:       Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_149829C:     Else
  loc_14982BE:       If (var_35C = Ucase("comp_add1")) Then
  loc_14982DF:         Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_14982E7:         Call 0.Method_arg_20 (var_198)
  loc_14982EF:         Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_1498305:       Else
  loc_1498327:         If (var_35C = Ucase("comp_pin")) Then
  loc_1498348:           Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_1498350:           Call 0.Method_arg_20 (var_198)
  loc_1498358:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_149836E:         Else
  loc_149837F:           var_10C = Ucase("comp_GSTIN")
  loc_1498390:           If (var_35C = var_10C) Then
  loc_14983B1:             Call 0.Method_arg_90 (var_184, CLng(var_C2))
  loc_14983B9:             Call 0.Method_arg_20 (var_198)
  loc_14983C1:             Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_14983D4:           End If
  loc_14983D4:         End If
  loc_14983D4:       End If
  loc_14983D4:     End If
  loc_14983D7:   Next var_34C 'Integer
  loc_14983E2:   If (arg_10 = 0) Then
  loc_14983EC:     var_18C = "* " & arg_14
  loc_14983F9:     Call 0.Method_arg_54 (var_18C & " *")
  loc_149840B:     global_192 = arg_C
  loc_1498412:     var_DC = CVar(arg_C) 'Address
  loc_149841B:     Set var_184 = (var_DC)
  loc_149842D:     Set var_184 = (TXTE_DATE.DispID_FA)
  loc_1498433:     Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_109
  loc_1498441:   Else
  loc_1498458:     Call 0.Method_Me8 (var_DC, var_FC, var_11C)
  loc_149845D:   End If
  loc_149845D: End If
  loc_1498462: IStAdFunc
  loc_1498468: var_B4 = Nothing 'Address
  loc_1498471: Set var_B8 = Nothing
  loc_1498474: Exit Sub
  loc_1498475: ' Referenced from: 1497878
  loc_149847D: Set var_184 = Err()
  loc_1498483: Call 0.Method_arg_2C (var_18C, Nothing)
  loc_149849C: MsgBox(CVar(var_18C), &H10, var_10C, var_12C, "Paper Setting")
  loc_14984AF: Exit Sub
End Sub
