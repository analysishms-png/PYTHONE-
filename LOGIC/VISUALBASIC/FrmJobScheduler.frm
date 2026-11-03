VERSION 5.00
Begin VB.Form FrmJobScheduler
  Caption = "Task Scheduler"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 9510
  ClientHeight = 8880
  StartUpPosition = 1 'CenterOwner
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9510
    Height = 420
    TabIndex = 65
  End
  Begin Frame FrMonthly
    Left = 255
    Top = 3060
    Width = 8145
    Height = 870
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin ComboBox CMBMonthlyTheDay
      Style = 2
      Left = 2805
      Top = 435
      Width = 1770
      Height = 330
      TabIndex = 52
      List = "FrmJobScheduler.frx":0
      ItemData = "FrmJobScheduler.frx":5F
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
    Begin ComboBox CMBMonthlyThe
      Style = 2
      Left = 1380
      Top = 435
      Width = 1380
      Height = 330
      TabIndex = 51
      List = "FrmJobScheduler.frx":81
      ItemData = "FrmJobScheduler.frx":A8
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
    Begin Frame FrMonthlyFreq
      Caption = "Frame1"
      Left = 0
      Top = 90
      Width = 1095
      Height = 630
      TabIndex = 41
      BorderStyle = 0 'None
      Begin OptionButton OptMonthlyFreq
        Caption = "Day"
        Index = 0
        Left = 15
        Top = 30
        Width = 1365
        Height = 225
        TabIndex = 43
        Value = 255
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
      Begin OptionButton OptMonthlyFreq
        Caption = "The"
        Index = 1
        Left = 15
        Top = 375
        Width = 1365
        Height = 225
        TabIndex = 42
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
    End
    Begin UpDown UpDown1
      Index = 1
      Left = 2040
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 44
    End
    Begin TextBox TxtNumUpDown1
      Index = 1
      Left = 1380
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 45
      Locked = -1  'True
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
    Begin UpDown UpDown1
      Index = 2
      Left = 4305
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 46
    End
    Begin UpDown UpDown1
      Index = 3
      Left = 6465
      Top = 465
      Width = 240
      Height = 255
      TabIndex = 47
    End
    Begin TextBox TxtNumUpDown1
      Index = 3
      Left = 5805
      Top = 435
      Width = 930
      Height = 315
      TabIndex = 48
      Locked = -1  'True
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
    Begin TextBox TxtNumUpDown1
      Index = 2
      Left = 3645
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 64
      Locked = -1  'True
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
    Begin Label LblMonthlyTheMonthOfEvery
      Caption = "month(s)"
      ForeColor = &H0&
      Left = 6915
      Top = 480
      Width = 855
      Height = 210
      TabIndex = 54
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
    Begin Label LblMonthlyTheDayOfEvery
      Caption = "of every"
      ForeColor = &H0&
      Left = 4725
      Top = 480
      Width = 750
      Height = 210
      TabIndex = 53
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
    Begin Label LblMonthlyMonthOfEvery
      Caption = "month(s)"
      ForeColor = &H0&
      Left = 4725
      Top = 135
      Width = 855
      Height = 210
      TabIndex = 50
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
    Begin Label LblMonthlyDayOfEvery
      Caption = "of every"
      ForeColor = &H0&
      Left = 2445
      Top = 120
      Width = 750
      Height = 210
      TabIndex = 49
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
  End
  Begin Frame FrRecur
    Caption = "Frame1"
    Left = 315
    Top = 2640
    Width = 4125
    Height = 420
    TabIndex = 55
    BorderStyle = 0 'None
    Begin UpDown UpDown1
      Index = 0
      Left = 1980
      Top = 120
      Width = 240
      Height = 255
      TabIndex = 56
    End
    Begin TextBox TxtNumUpDown1
      Index = 0
      Left = 1320
      Top = 90
      Width = 930
      Height = 315
      TabIndex = 57
      Locked = -1  'True
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
    Begin Label LblFrequency
      Caption = "Recurs Every :"
      Index = 1
      ForeColor = &H0&
      Left = 0
      Top = 120
      Width = 1290
      Height = 210
      TabIndex = 59
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
    Begin Label LblFreqRecur
      Caption = "..."
      ForeColor = &H0&
      Left = 2310
      Top = 135
      Width = 180
      Height = 210
      TabIndex = 58
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
  End
  Begin Frame FrWeekly
    Left = 1515
    Top = 3060
    Width = 6825
    Height = 855
    Visible = 0   'False
    TabIndex = 32
    BorderStyle = 0 'None
    Begin CheckBox ChkWeekDay
      Caption = "Saturday"
      Index = 7
      Left = 5265
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 39
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
    Begin CheckBox ChkWeekDay
      Caption = "Friday"
      Index = 6
      Left = 3555
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 38
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
    Begin CheckBox ChkWeekDay
      Caption = "Thursday"
      Index = 5
      Left = 1845
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 37
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
    Begin CheckBox ChkWeekDay
      Caption = "Wednesday"
      Index = 4
      Left = 1845
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 36
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
    Begin CheckBox ChkWeekDay
      Caption = "Tuesday"
      Index = 3
      Left = 135
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 35
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
    Begin CheckBox ChkWeekDay
      Caption = "Monday"
      Index = 2
      Left = 135
      Top = 105
      Width = 1425
      Height = 315
      TabIndex = 34
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
    Begin CheckBox ChkWeekDay
      Caption = "Sunday"
      Index = 1
      Left = 5265
      Top = 435
      Width = 1425
      Height = 315
      TabIndex = 33
      Value = 1
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
  End
  Begin CommandButton CmdScheduledJobs
    Caption = "Scheduled Tasks"
    Left = 6360
    Top = 480
    Width = 2655
    Height = 315
    TabIndex = 28
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
  Begin CheckBox ChkEnabled
    Caption = "Enabled"
    Left = 6120
    Top = 960
    Width = 1110
    Height = 300
    TabIndex = 27
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 480
    Top = 7200
    Width = 6870
    Height = 1335
    TabIndex = 13
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 35
    Locked = -1  'True
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
  Begin Frame FrSchEndDate
    Caption = "Frame2"
    Left = 4515
    Top = 5565
    Width = 1410
    Height = 630
    TabIndex = 24
    BorderStyle = 0 'None
    Begin OptionButton OptSchEndDate
      Caption = "No End Date"
      Index = 1
      Left = 15
      Top = 375
      Width = 1470
      Height = 225
      TabIndex = 12
      Value = 255
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
    Begin OptionButton OptSchEndDate
      Caption = "End Date :"
      Index = 0
      Left = 15
      Top = 45
      Width = 1470
      Height = 225
      TabIndex = 10
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
  End
  Begin Frame FrDailyFreq
    Caption = "Frame1"
    Left = 270
    Top = 4230
    Width = 1830
    Height = 630
    TabIndex = 16
    BorderStyle = 0 'None
    Begin OptionButton OptDailyFreq
      Caption = "Occurs Every :"
      Index = 1
      Left = 0
      Top = 390
      Width = 1815
      Height = 225
      TabIndex = 5
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
    Begin OptionButton OptDailyFreq
      Caption = "Occurs Once at :"
      Index = 0
      Left = 0
      Top = 45
      Width = 1815
      Height = 225
      TabIndex = 3
      Value = 255
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
  End
  Begin ComboBox CMBOccurType
    Style = 2
    Left = 1635
    Top = 2310
    Width = 1380
    Height = 330
    TabIndex = 2
    List = "FrmJobScheduler.frx":BB
    ItemData = "FrmJobScheduler.frx":D7
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
  Begin ComboBox CMBSchduleType
    Style = 2
    Left = 1650
    Top = 930
    Width = 4320
    Height = 360
    TabIndex = 1
    List = "FrmJobScheduler.frx":E4
    ItemData = "FrmJobScheduler.frx":FD
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
  Begin DTPicker DTPSchStartDate
    Left = 2145
    Top = 5565
    Width = 1515
    Height = 315
    TabIndex = 9
  End
  Begin ComboBox CMBDFOccurUnit
    Style = 2
    Left = 3120
    Top = 4590
    Width = 1380
    Height = 330
    TabIndex = 6
    List = "FrmJobScheduler.frx":107
    ItemData = "FrmJobScheduler.frx":11F
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
  Begin DTPicker DTPDFOccurOnce
    Left = 2160
    Top = 4230
    Width = 1485
    Height = 315
    TabIndex = 4
  End
  Begin DataGrid DGHelp
    Left = 6240
    Top = 7455
    Width = 4395
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1650
    Top = 480
    Width = 4300
    Height = 315
    TabIndex = 0
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
  End
  Begin DTPicker DTPDFStartTime
    Left = 5955
    Top = 4590
    Width = 1485
    Height = 315
    TabIndex = 7
  End
  Begin DTPicker DTPDFEndTime
    Left = 5955
    Top = 4920
    Width = 1485
    Height = 315
    TabIndex = 8
  End
  Begin DTPicker DTPSchEndDate
    Left = 5955
    Top = 5565
    Width = 1515
    Height = 315
    TabIndex = 11
  End
  Begin UpDown UpDown1
    Index = 4
    Left = 2820
    Top = 4620
    Width = 240
    Height = 255
    TabIndex = 31
  End
  Begin TextBox TxtNumUpDown1
    Index = 4
    Left = 2160
    Top = 4590
    Width = 930
    Height = 315
    TabIndex = 30
    Locked = -1  'True
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
  Begin DTPicker DTPOTMDate
    Left = 1635
    Top = 1620
    Width = 1515
    Height = 315
    TabIndex = 60
  End
  Begin DTPicker DTPOTMTime
    Left = 3885
    Top = 1620
    Width = 1485
    Height = 315
    TabIndex = 63
  End
  Begin Label LblOneTime
    Caption = "Time :"
    Index = 1
    ForeColor = &H0&
    Left = 3255
    Top = 1650
    Width = 540
    Height = 210
    TabIndex = 62
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
  Begin Label LblOneTime
    Caption = "Date :"
    Index = 0
    ForeColor = &H0&
    Left = 1020
    Top = 1650
    Width = 555
    Height = 210
    TabIndex = 61
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
  Begin Label LblFrequency
    Caption = "Occurs :"
    Index = 0
    ForeColor = &H0&
    Left = 315
    Top = 2340
    Width = 720
    Height = 210
    TabIndex = 29
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
  Begin Label LblOcrEvry
    Caption = "Starting at :"
    Index = 0
    ForeColor = &H0&
    Left = 4755
    Top = 4635
    Width = 1140
    Height = 210
    TabIndex = 26
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
  Begin Label LblOcrEvry
    Caption = "Ending at :"
    Index = 1
    ForeColor = &H0&
    Left = 4755
    Top = 4965
    Width = 1005
    Height = 210
    TabIndex = 25
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
  Begin Label LblSch
    Caption = "Start Date :"
    Index = 2
    ForeColor = &H0&
    Left = 765
    Top = 5595
    Width = 1095
    Height = 210
    TabIndex = 23
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
    Caption = "FrmJobScheduler.frx":129
    Index = 4
    ForeColor = &HC00000&
    Left = 165
    Top = 6900
    Width = 9225
    Height = 195
    TabIndex = 22
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
    Caption = "FrmJobScheduler.frx":1BB
    Index = 3
    ForeColor = &HC00000&
    Left = 165
    Top = 5295
    Width = 9225
    Height = 195
    TabIndex = 21
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
    Caption = "FrmJobScheduler.frx":250
    Index = 1
    ForeColor = &HC00000&
    Left = 165
    Top = 2040
    Width = 9225
    Height = 195
    TabIndex = 20
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
    Caption = "FrmJobScheduler.frx":2E4
    Index = 2
    ForeColor = &HC00000&
    Left = 165
    Top = 3960
    Width = 9225
    Height = 195
    TabIndex = 19
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
    Caption = "FrmJobScheduler.frx":376
    Index = 0
    ForeColor = &HC00000&
    Left = 165
    Top = 1305
    Width = 9225
    Height = 195
    TabIndex = 18
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
  Begin Label LblSch
    Caption = "Schedule Type"
    Index = 1
    ForeColor = &H0&
    Left = 165
    Top = 975
    Width = 1320
    Height = 210
    TabIndex = 17
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
  Begin Label LblSch
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 180
    Top = 510
    Width = 495
    Height = 210
    TabIndex = 14
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
End

Attribute VB_Name = "FrmJobScheduler"

Private global_72 As Long

Private Sub TxtNumUpDown1_Change(Index As Integer) '102DE7C
  'Data Table: 527B94
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_E0 As Variant
  Dim var_94 As String
  loc_102DC4F: var_86 = Index
  loc_102DC58: If (var_86 = 2) Then
  loc_102DC6B:   Set var_8C = Me.TxtNumUpDown1
  loc_102DC71:   Call 0.Method_TxtNumUpDown1_Change0 (Index, var_90, var_94)
  loc_102DC79:   "01/" = var_90.Text
  loc_102DC8B:   var_A8 = CVar(Proc_6_34_14ECF20(var_86 & var_94)) 'String
  loc_102DCCF:   Set var_DC = Me.UpDown1
  loc_102DCD5:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_102DD0A:   Set var_DC = Me.UpDown1
  loc_102DD10:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_102DD18:   var_E0.Min = var_E0.Max
  loc_102DD2F:   Set var_8C = Me.TxtNumUpDown1
  loc_102DD35:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_102DD63:   If (CDbl(Val(var_90.Text)) < CDbl(CLng(var_A8))) Then
  loc_102DD71:     Set var_8C = Me.UpDown1
  loc_102DD77:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_102DD7F:     var_90.Min = CVar(CLng(Day(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), var_A8)))))
  loc_102DD98:     Set var_DC = Me.TxtNumUpDown1
  loc_102DD9E:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_102DDA6:     var_E0.Text = CStr(CLng())
  loc_102DDBC:   End If
  loc_102DDC7:   Set var_DC = Me.UpDown1
  loc_102DDCD:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1))
  loc_102DDD5:   var_E0.Max = var_E0
  loc_102DDEC:   Set var_8C = Me.TxtNumUpDown1
  loc_102DDF2:   Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_90)
  loc_102DE20:   If (CDbl(Val(var_90.Text)) > CDbl(CLng(var_A8))) Then
  loc_102DE2E:     Set var_8C = Me.UpDown1
  loc_102DE34:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1))
  loc_102DE3C:     var_90.Max = var_90
  loc_102DE55:     Set var_DC = Me.TxtNumUpDown1
  loc_102DE5B:     Call 0.Method_TxtNumUpDown1_Change0 (CInt(1), var_E0)
  loc_102DE63:     var_E0.Text = CStr(CLng())
  loc_102DE79:   End If
  loc_102DE79: End If
  loc_102DE79: Exit Sub
  loc_102DE7A: BranchFVar 7423
End Sub

Private Sub TxtNumUpDown1_KeyDown(KeyCode As Integer, Shift As Integer) 'E3EF1C
  'Data Table: 527B94
  loc_E3EEF2: If (CLng(Shift) = &H28) Then
  loc_E3EEFB:   Call UpDown1_UnknownEvent_A()
  loc_E3EF00: End If
  loc_E3EF0A: If (CLng(Shift) = &H26) Then
  loc_E3EF13:   Call UpDown1_UnknownEvent_B()
  loc_E3EF18: End If
  loc_E3EF18: Exit Sub
End Sub

Private Sub OptMonthlyFreq_Click() 'F28A7C
  'Data Table: 527B94
  Dim var_8C As OptionButton
  Dim var_88 As ComboBox
  loc_F28974: Set var_88 = Me.OptMonthlyFreq
  loc_F2897A: Call 0.Method_OptMonthlyFreq_Click0 (0, var_8C)
  loc_F28994: If (var_8C.Value = &HFF) Then
  loc_F289A3:   Call Proc_320_43_E6B250(CInt(1))
  loc_F289B2:   Call Proc_320_43_E6B250(2, &HFF)
  loc_F289BA: Else
  loc_F289C6:   Call Proc_320_43_E6B250(CInt(1), 0)
  loc_F289D5:   Call Proc_320_43_E6B250(2, 0)
  loc_F289DA: End If
  loc_F289E6: Set var_88 = Me.OptMonthlyFreq
  loc_F289EC: Call 0.Method_OptMonthlyFreq_Click0 (1, var_8C)
  loc_F28A06: If (var_8C.Value = &HFF) Then
  loc_F28A15:   Me.CMBMonthlyThe.Enabled = True
  loc_F28A29:   Me.CMBMonthlyTheDay.Enabled = True
  loc_F28A3B:   Call Proc_320_43_E6B250(3, &HFF)
  loc_F28A43: Else
  loc_F28A4F:   Me.CMBMonthlyThe.Enabled = False
  loc_F28A63:   Me.CMBMonthlyTheDay.Enabled = False
  loc_F28A75:   Call Proc_320_43_E6B250(3, 0)
  loc_F28A7A: End If
  loc_F28A7A: Exit Sub
End Sub

Private Sub OptDailyFreq_Click() 'F62D60
  'Data Table: 527B94
  Dim var_8C As OptionButton
  Dim var_88 As Variant
  loc_F62C34: Set var_88 = Me.OptDailyFreq
  loc_F62C3A: Call 0.Method_OptDailyFreq_Click0 (0, var_8C)
  loc_F62C54: If (var_8C.Value = &HFF) Then
  loc_F62C65:   Me.DTPDFOccurOnce.Enabled = True
  loc_F62C70: Else
  loc_F62C7F:   Me.DTPDFOccurOnce.Enabled = False
  loc_F62C87: End If
  loc_F62C93: Set var_88 = Me.OptDailyFreq
  loc_F62C99: Call 0.Method_OptDailyFreq_Click0 (1, var_8C)
  loc_F62CB3: If (var_8C.Value = &HFF) Then
  loc_F62CC2:   Call Proc_320_43_E6B250(CInt(4))
  loc_F62CD3:   Me.CMBDFOccurUnit.Enabled = True
  loc_F62CE9:   Me.DTPDFStartTime.Enabled = True
  loc_F62CFF:   Me.DTPDFEndTime.Enabled = True
  loc_F62D0A: Else
  loc_F62D16:   Call Proc_320_43_E6B250(CInt(4), 0)
  loc_F62D27:   Me.CMBDFOccurUnit.Enabled = False
  loc_F62D3E:   Me.DTPDFStartTime.Enabled = False
  loc_F62D55:   Me.DTPDFEndTime.Enabled = False
  loc_F62D5D: End If
  loc_F62D5D: Exit Sub
End Sub

Private Sub OptSchEndDate_Click() 'E76F9C
  'Data Table: 527B94
  Dim var_8C As OptionButton
  Dim var_88 As DTPicker
  loc_E76F48: Set var_88 = Me.OptSchEndDate
  loc_E76F4E: Call 0.Method_OptSchEndDate_Click0 (0, var_8C)
  loc_E76F68: If (var_8C.Value = &HFF) Then
  loc_E76F79:   Me.DTPSchEndDate.Enabled = True
  loc_E76F84: Else
  loc_E76F93:   Me.DTPSchEndDate.Enabled = False
  loc_E76F9B: End If
  loc_E76F9B: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F12950
  'Data Table: 527B94
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F1286C: On Error Goto loc_F12926
  loc_F1287E: Me.DGHelp.Visible = False
  loc_F1289D: If (Me.RecordCount > 0) Then
  loc_F128BD:   var_B0 = Me.Fields.Item("ScheduleName")
  loc_F128CE:   var_CC = CStr(var_B0.Value)
  loc_F128DC:   Set var_B4 = Me.Txt
  loc_F128E2:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F128EA:   var_B8.Text = var_CC
  loc_F12900: End If
  loc_F1290B: Set var_A8 = Me.Txt
  loc_F12911: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F12919: var_B0.SetFocus
  loc_F12925: Exit Sub
  loc_F12926: ' Referenced from: F1286C
  loc_F1292C: Call 0.Method_arg_50 (var_CC)
  loc_F12941: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F1294D: Exit Sub
End Sub

Public Sub UpDown1_UnknownEvent_A(Index As Integer) 'EF8E90
  'Data Table: 527B94
  Dim var_98 As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  loc_EF8DD2: Set var_94 = Me.UpDown1
  loc_EF8DD8: Call 0.Method_UpDown1_UnknownEvent_A0 (Index)
  loc_EF8DE0: var_98.Min = var_98
  loc_EF8DF6: Set var_88 = Me.TxtNumUpDown1
  loc_EF8DFC: Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_8C)
  loc_EF8E2A: If (CDbl(Val(var_8C.Text)) > CDbl(CLng(var_A8))) Then
  loc_EF8E3A:   Set var_88 = Me.TxtNumUpDown1
  loc_EF8E40:   Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_8C)
  loc_EF8E5B:   var_AC = CStr((Val(var_8C.Text) - CDbl(1)))
  loc_EF8E68:   Set var_94 = Me.TxtNumUpDown1
  loc_EF8E6E:   Call 0.Method_UpDown1_UnknownEvent_A0 (Index, var_98)
  loc_EF8E76:   var_98.Text = var_AC
  loc_EF8E8D: End If
  loc_EF8E8D: Exit Sub
End Sub

Public Sub UpDown1_UnknownEvent_B(Index As Integer) 'EF8D7C
  'Data Table: 527B94
  Dim var_98 As Variant
  Dim var_8C As TextBox
  Dim var_AC As String
  loc_EF8CBE: Set var_94 = Me.UpDown1
  loc_EF8CC4: Call 0.Method_UpDown1_UnknownEvent_B0 (Index)
  loc_EF8CCC: var_98.Max = var_98
  loc_EF8CE2: Set var_88 = Me.TxtNumUpDown1
  loc_EF8CE8: Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_8C)
  loc_EF8D16: If (CDbl(Val(var_8C.Text)) < CDbl(CLng(var_A8))) Then
  loc_EF8D26:   Set var_88 = Me.TxtNumUpDown1
  loc_EF8D2C:   Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_8C)
  loc_EF8D47:   var_AC = CStr((Val(var_8C.Text) + CDbl(1)))
  loc_EF8D54:   Set var_94 = Me.TxtNumUpDown1
  loc_EF8D5A:   Call 0.Method_UpDown1_UnknownEvent_B0 (Index, var_98)
  loc_EF8D62:   var_98.Text = var_AC
  loc_EF8D79: End If
  loc_EF8D79: Exit Sub
End Sub

Private Sub Form_Load() '101A000
  'Data Table: 527B94
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_527BB0 As Connection15
  loc_1019DE8: On Error Goto loc_1019FD8
  loc_1019DF2: Call 0.Method_arg_74 (CDbl(0))
  loc_1019DFE: Call 0.Method_arg_7C (CDbl(0))
  loc_1019E11: Set var_8C = Me.Txt
  loc_1019E17: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1019E36: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1019E52: Set var_B8 = Me.Txt
  loc_1019E58: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1019E79: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1019E91: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1019EA0: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1019EB2: Call Proc_320_36_F1F2A8()
  loc_1019ED2: var_CC = "SELECT Schedule_Id Code,ScheduleName Name FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName"
  loc_1019EDB: unk_527BB0.Execute var_CC, var_DC, -1
  loc_1019F0A: CVarUnk
  loc_1019F0F: VerifyVarObj
  loc_1019F1B: LateIdStAd
  loc_1019F3D: var_C8 = "SELECT Schedule_Id AS SchCode,ScheduleName AS SchName,Site_Code AS CSite_Code,U_Name AS CU_Name,U_EntDt AS CU_EntDt,U_AE AS CU_AE,Site_Code,LogSite_Code FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1019F4D: unk_527BB0.Execute var_C8 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName", var_DC, -1
  loc_1019F88: var_C8 = "INI"
  loc_1019F96: Call Proc_320_37_11A5E3C(Proc_5_1_100CB50(var_C8, Me, Me.DGHelp, Me), Me)
  loc_1019FA1: Call Proc_320_39_14320F8(Me.Txt)
  loc_1019FB7: If (OpenMode = 1) Then
  loc_1019FC4:   Set var_8C = Me.TopCtrl1
  loc_1019FCA:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AE*P")
  loc_1019FD2:   Call TopCtrl1_UnknownEvent_A()
  loc_1019FD7: End If
  loc_1019FD7: Exit Sub
  loc_1019FD8: ' Referenced from: 1019DE8
  loc_1019FDE: Call 0.Method_arg_50 (var_C8)
  loc_1019FF3: Proc_183_57_104AA84(var_C8, "Form_Load")
  loc_1019FFF: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E29720
  'Data Table: 527B94
  loc_E29703: Set global_52 = Nothing
  loc_E29715: Set global_56 = Nothing
  loc_E2971C: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E69B10
  'Data Table: 527B94
  loc_E69AC8: On Error Goto loc_E69AE6
  loc_E69ADD: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E69AE5: Exit Sub
  loc_E69AE6: ' Referenced from: E69AC8
  loc_E69AEC: Call 0.Method_arg_50 (var_8C)
  loc_E69B01: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E69B0D: Exit Sub
End Sub

Private Sub CMBOccurType_Click() 'FDBB80
  'Data Table: 527B94
  loc_FDB9B1: Me.LblFreqRecur.Caption = vbNullString
  loc_FDB9C5: Me.FrWeekly.Visible = False
  loc_FDB9D9: Me.FrMonthly.Visible = False
  loc_FDB9ED: Me.FrRecur.Visible = False
  loc_FDBA15: If (Me.CMBOccurType.Text = "Daily") Then
  loc_FDBA2A:   Call Proc_320_42_FDB0FC(CInt(0), 365)
  loc_FDBA3C:   Me.LblFreqRecur.Caption = "day(s)"
  loc_FDBA50:   Me.FrRecur.Visible = True
  loc_FDBA5B: Else
  loc_FDBA7B:   If (Me.CMBOccurType.Text = "Weekly") Then
  loc_FDBA8F:     Call Proc_320_42_FDB0FC(CInt(0), &H34)
  loc_FDBAA1:     Me.LblFreqRecur.Caption = "week(s) on"
  loc_FDBAB5:     Me.FrRecur.Visible = True
  loc_FDBAC9:     Me.FrWeekly.Visible = True
  loc_FDBAD4:   Else
  loc_FDBAF4:     If (Me.CMBOccurType.Text = "Monthly") Then
  loc_FDBB06:       Call Proc_320_42_FDB0FC(3, &HC, 1)
  loc_FDBB1A:       Call Proc_320_42_FDB0FC(2, &HC, 1)
  loc_FDBB30:       Call Proc_320_42_FDB0FC(CInt(1), &H1F, 1)
  loc_FDBB54:       Me.FrMonthly.Top = Me.FrRecur.Top
  loc_FDBB6C:       Me.FrMonthly.Visible = True
  loc_FDBB79:       Call OptMonthlyFreq_Click()
  loc_FDBB7E:     End If
  loc_FDBB7E:   End If
  loc_FDBB7E: End If
  loc_FDBB7E: Exit Sub
End Sub

Private Sub CMBDFOccurUnit_Click() 'E8C9D4
  'Data Table: 527B94
  Dim arg_1C01 As Single
  loc_E8C97C: If (Me.CMBDFOccurUnit.Text = "hour(s)") Then
  loc_E8C990:   Call Proc_320_42_FDB0FC(CInt(4), &H18)
  loc_E8C998: Else
  loc_E8C9B8:   If (Me.CMBDFOccurUnit.Text = "minute(s)") Then
  loc_E8C9CC:     Call Proc_320_42_FDB0FC(CInt(4), &H3B)
  loc_E8C9D1:   End If
  loc_E8C9D1: End If
  loc_E8C9D1: Exit Sub
  loc_E8C9D2: arg_1C01 = 1
End Sub

Private Sub CMBSchduleType_Click() 'E99960
  'Data Table: 527B94
  loc_E998FC: If (Me.CMBSchduleType.Text = "One Time") Then
  loc_E9990D:   Me.DTPOTMDate.Enabled = True
  loc_E99923:   Me.DTPOTMTime.Enabled = True
  loc_E9992E: Else
  loc_E9993D:   Me.DTPOTMDate.Enabled = False
  loc_E99954:   Me.DTPOTMTime.Enabled = False
  loc_E9995C: End If
  loc_E9995C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E88924
  'Data Table: 527B94
  Dim var_92 As Integer
  loc_E888C0: On Error Goto loc_E888F9
  loc_E888CD: Set var_88 = Me.Txt
  loc_E888D3: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E888E1: Proc_183_28_E20B20(var_8C)
  loc_E888ED: Call Proc_320_41_E534EC(var_8C)
  loc_E888F5: var_92 = Index
  loc_E888F8: Exit Sub
  loc_E888F9: ' Referenced from: E888C0
  loc_E888FF: Call 0.Method_arg_50 (var_98)
  loc_E88914: Proc_183_57_104AA84(var_98, "Txt_GotFocus")
  loc_E88920: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6EB00
  'Data Table: 527B94
  loc_F6E9D4: On Error Goto loc_F6EAD5
  loc_F6E9E1: If (CLng(Shift) = &H1B) Then
  loc_F6E9E4:   Call Proc_320_41_E534EC()
  loc_F6E9E9:   Exit Sub
  loc_F6E9EA: End If
  loc_F6E9F8: If (KeyCode = CInt(0)) Then
  loc_F6EA35:   Proc_183_31_100809C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_F6EA45: End If
  loc_F6EA61: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_F6EA77:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_F6EA80:     Proc_183_30_E53180(Shift, arg_14, Shift)
  loc_F6EA85:   End If
  loc_F6EAA3:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_F6EAA6:     GoTo loc_F6EACC
  loc_F6EAA9:   End If
  loc_F6EABE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6EAC7:     Proc_183_29_E52C04(Shift, arg_14, 0)
  loc_F6EACC:     ' Referenced from: F6EAA6
  loc_F6EACC:   End If
  loc_F6EACC: End If
  loc_F6EAD1: Set var_88 = Nothing
  loc_F6EAD4: Exit Sub
  loc_F6EAD5: ' Referenced from: F6E9D4
  loc_F6EADB: Call 0.Method_arg_50 (var_B8, 1)
  loc_F6EAF0: Proc_183_57_104AA84(var_B8, "Txt_KeyDown")
  loc_F6EAFC: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E6CC0C
  'Data Table: 527B94
  Dim var_96 As Integer
  loc_E6CBBC: On Error Goto loc_E6CBE3
  loc_E6CBC5: Proc_183_52_E7F478(var_94)
  loc_E6CBD7: Proc_183_46_E070C0(CInt(var_94), CInt(var_94))
  loc_E6CBDF: var_96 = KeyAscii
  loc_E6CBE2: Exit Sub
  loc_E6CBE3: ' Referenced from: E6CBBC
  loc_E6CBE9: Call 0.Method_arg_50 (var_9C, var_96)
  loc_E6CBFE: Proc_183_57_104AA84(var_9C, "TXT_KeyPress")
  loc_E6CC0A: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EBCB00
  'Data Table: 527B94
  loc_EBCA6C: On Error Goto loc_EBCAD8
  loc_EBCA7D: If (KeyCode = CInt(0)) Then
  loc_EBCA9C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBCAA9:     var_A4 = "Name"
  loc_EBCAC8:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_EBCAD7:   End If
  loc_EBCAD7: End If
  loc_EBCAD7: Exit Sub
  loc_EBCAD8: ' Referenced from: EBCA6C
  loc_EBCADE: Call 0.Method_arg_50 (var_A4, Shift)
  loc_EBCAF3: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_EBCAFF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4CBAC
  'Data Table: 527B94
  loc_E4CB8A: Set var_88 = Me.Txt
  loc_E4CB90: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4CB9E: Proc_183_27_E22608(var_8C)
  loc_E4CBAA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E6D120
  'Data Table: 527B94
  Dim arg_10 As Integer
  loc_E6D0CC: On Error Goto loc_E6D0F8
  loc_E6D0DD: If (Cancel = CInt(0)) Then
  loc_E6D0E3:   Call Proc_320_40_108E2E8(var_88)
  loc_E6D0EE:   If (var_88 = &HFF) Then
  loc_E6D0F3:     arg_10 = &HFF
  loc_E6D0F6:     Exit Sub
  loc_E6D0F7:   End If
  loc_E6D0F7: End If
  loc_E6D0F7: Exit Sub
  loc_E6D0F8: ' Referenced from: E6D0CC
  loc_E6D0FE: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E6D113: Proc_183_57_104AA84(var_8C, "Txt_Validate")
  loc_E6D11F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EBD1E4
  'Data Table: 527B94
  Dim var_8C As CheckBox
  Dim var_94 As TextBox
  loc_EBD14C: On Error Goto loc_EBD1BC
  loc_EBD164: var_88 = "ADD"
  loc_EBD172: Call Proc_320_37_11A5E3C(Proc_5_1_100CB50(var_88, Me))
  loc_EBD17D: Call Proc_320_38_101F788(global_52)
  loc_EBD18E: Me.ChkEnabled.Enabled = False
  loc_EBD1A1: Set var_8C = Me.Txt
  loc_EBD1A7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EBD1AF: var_94.SetFocus
  loc_EBD1BB: Exit Sub
  loc_EBD1BC: ' Referenced from: EBD14C
  loc_EBD1C2: Call 0.Method_arg_50 (var_88)
  loc_EBD1D7: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_EBD1E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEA8C0
  'Data Table: 527B94
  loc_EEA808: On Error Goto loc_EEA898
  loc_EEA842: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEA851:   Set var_110 = Me
  loc_EEA85A:   var_10C = "INI"
  loc_EEA868:   Call Proc_320_37_11A5E3C(Proc_5_1_100CB50(var_10C, var_110))
  loc_EEA873:   Call Proc_320_41_E534EC(global_52)
  loc_EEA878:   Call Proc_320_39_14320F8()
  loc_EEA880: Else
  loc_EEA886:   Call 0.Method_arg_1E8 (var_110)
  loc_EEA88E:   Call var_110.SetFocus
  loc_EEA897: End If
  loc_EEA897: Exit Sub
  loc_EEA898: ' Referenced from: EEA808
  loc_EEA89E: Call 0.Method_arg_50 (var_10C)
  loc_EEA8A6: var_11C = "TopCtrl1_eCancel"
  loc_EEA8B3: Proc_183_57_104AA84(var_10C)
  loc_EEA8BF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '104FB1C
  'Data Table: 527B94
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_527BB0 As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_104F8CC: On Error Goto loc_104FADE
  loc_104F8DD: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_104F8E0:   Exit Sub
  loc_104F8E1: End If
  loc_104F906: var_C8 = Me.Fields.Item("SchCode").Value
  loc_104F90E: var_D4 = "Message Schedule"
  loc_104F956: If (Proc_183_53_FE2130(MemVar_1F921DC, "JobScheduledDetail", "Schedule_Id") = 0) Then
  loc_104F959:   Exit Sub
  loc_104F95A: End If
  loc_104F991: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_104F996:   var_96 = 0
  loc_104F9A2:   unk_527BB0.BeginTrans var_D0
  loc_104F9A9:   var_96 = &HFF
  loc_104FA11:   var_B4 = CStr("Delete From JobSchedule Where Schedule_Id='" & Me.Fields.Item("SchCode").Value & "'")
  loc_104FA1B:   unk_527BB0.Execute var_B4, var_134, -1
  loc_104FA3D:   unk_527BB0.CommitTrans
  loc_104FA44:   var_96 = 0
  loc_104FA52:   Me.Requery -1
  loc_104FA62:   Me.Requery -1
  loc_104FA7E:   If (Me.RecordCount > 0) Then
  loc_104FA98:     If (Me.AbsolutePosition > 1) Then
  loc_104FAA3:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_104FAAF:       Me.AbsolutePosition = CLng(Me.Fields.Item("SchCode").Value)
  loc_104FAB4:     End If
  loc_104FAB4:   End If
  loc_104FAB4:   Call Proc_320_39_14320F8(var_96, var_138, var_96, var_96)
  loc_104FAD5:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_104FADD: End If
  loc_104FADD: Exit Sub
  loc_104FADE: ' Referenced from: 104F8CC
  loc_104FAE4: If (var_96 = &HFF) Then
  loc_104FAED:   unk_527BB0.RollbackTrans
  loc_104FAF2: End If
  loc_104FAF8: Call 0.Method_arg_50 (var_B4, CStr(Me.Fields.Item("SchCode").Value))
  loc_104FB0D: Proc_183_57_104AA84(var_B4, "TopCtrl1_eDel")
  loc_104FB19: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF0650
  'Data Table: 527B94
  Dim var_94 As TextBox
  loc_EF0588: On Error Goto loc_EF0626
  loc_EF0599: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_EF059C:   Exit Sub
  loc_EF059D: End If
  loc_EF05C0: Call Proc_320_37_11A5E3C(Proc_5_1_100CB50("EDIT", Me))
  loc_EF05D9: Set var_8C = Me.Txt
  loc_EF05DF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF05E7: var_88 = var_94.Text
  loc_EF05F2: global_64 = var_88
  loc_EF060B: Set var_8C = Me.Txt
  loc_EF0611: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF0619: var_94.SetFocus
  loc_EF0625: Exit Sub
  loc_EF0626: ' Referenced from: EF0588
  loc_EF062C: Call 0.Method_arg_50 (var_88)
  loc_EF0641: Proc_183_57_104AA84(var_88, "TopCtrl1_eEdit")
  loc_EF064D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E162AC
  'Data Table: 527B94
  loc_E162A1: Me.Global.Unload Me
  loc_E162A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEFBD0
  'Data Table: 527B94
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEFB10: On Error Goto loc_EEFBA8
  loc_EEFB2A: If (Me.RecordCount <= 0) Then
  loc_EEFB33:   var_B8 = "Information"
  loc_EEFB4E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEFB5E:   Exit Sub
  loc_EEFB5F: End If
  loc_EEFB6D: MemVar_1F920E4 = "Select Schedule_Id As SearchCode,ScheduleName as JobSchedule FROM JobSchedule WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY ScheduleName"
  loc_EEFB7A: MemVar_1F92120 = Me
  loc_EEFB81: var_10C = "3000"
  loc_EEFB87: Proc_183_54_F1DE80(var_10C)
  loc_EEFBA2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEFBA7: Exit Sub
  loc_EEFBA8: ' Referenced from: EEFB10
  loc_EEFBAE: Call 0.Method_arg_50 (var_10C)
  loc_EEFBC3: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEFBCF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E76C04
  'Data Table: 527B94
  loc_E76BAC: On Error Goto loc_E76BD9
  loc_E76BCB: Proc_5_0_110649C(&HFF, Me)
  loc_E76BD3: Call Proc_320_39_14320F8(global_52)
  loc_E76BD8: Exit Sub
  loc_E76BD9: ' Referenced from: E76BAC
  loc_E76BDF: Call 0.Method_arg_50 (var_94)
  loc_E76BF4: Proc_183_57_104AA84(var_94, "TopCtrl1_eFirst")
  loc_E76C00: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E7A634
  'Data Table: 527B94
  loc_E7A5DC: On Error Goto loc_E7A609
  loc_E7A5FB: Proc_5_0_110649C(&HFF, Me)
  loc_E7A603: Call Proc_320_39_14320F8(global_52)
  loc_E7A608: Exit Sub
  loc_E7A609: ' Referenced from: E7A5DC
  loc_E7A60F: Call 0.Method_arg_50 (var_94)
  loc_E7A624: Proc_183_57_104AA84(var_94, "TopCtrl1_eLast")
  loc_E7A630: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E7A504
  'Data Table: 527B94
  loc_E7A4AC: On Error Goto loc_E7A4D9
  loc_E7A4CB: Proc_5_0_110649C(&HFF, Me)
  loc_E7A4D3: Call Proc_320_39_14320F8(global_52)
  loc_E7A4D8: Exit Sub
  loc_E7A4D9: ' Referenced from: E7A4AC
  loc_E7A4DF: Call 0.Method_arg_50 (var_94)
  loc_E7A4F4: Proc_183_57_104AA84(var_94, "TopCtrl1_eNext")
  loc_E7A500: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E794FC
  'Data Table: 527B94
  loc_E794A4: On Error Goto loc_E794D1
  loc_E794C3: Proc_5_0_110649C(&HFF, Me)
  loc_E794CB: Call Proc_320_39_14320F8(global_52)
  loc_E794D0: Exit Sub
  loc_E794D1: ' Referenced from: E794A4
  loc_E794D7: Call 0.Method_arg_50 (var_94)
  loc_E794EC: Proc_183_57_104AA84(var_94, "TopCtrl1_ePrev")
  loc_E794F8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1039130
  'Data Table: 527B94
  Dim unk_527BB0 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  loc_1038EF8: On Error Goto loc_1039107
  loc_1038F11: unk_527BB0.Execute "SELECT Schedule_Id AS SchCode, ScheduleName AS SchName, Site_Code AS CSite_Code, U_Name AS CU_Name, U_EntDt AS CU_EntDt, U_AE AS CU_AE FROM JobSchedule ORDER BY ScheduleName", var_BC, -1
  loc_1038F1C: Set var_88 = var_C0
  loc_1038F2B: var_C4 = var_88.RecordCount
  loc_1038F39: If (var_C4 = 0) Then
  loc_1038F55:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_1038F65:   Exit Sub
  loc_1038F66: End If
  loc_1038F7C: Set var_C0 = var_88 
  loc_1038F88: var_12E = CreateFieldDefFile(var_C0, MemVar_1F920B4 & "\JobSchedule.ttx")
  loc_1038F92: Set var_88 = var_C0
  loc_1038F98: var_AC = CVar(var_12E) 'Integer
  loc_1038F9B: var_98 = var_AC 'Variant
  loc_1038FB7: var_128 = MemVar_1F920B4 & "\JobSchedule.RPT"
  loc_1038FC0: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1038FCB: MemVar_1F921E4 = var_C0
  loc_1038FE6: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1038FEE: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1038FFA: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1039013:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103901B:   Call 0.Method_arg_20 (var_138)
  loc_1039023:   Call 0.Method_arg_30 (var_128)
  loc_1039069:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_103907F:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_1039087:     Call 0.Method_arg_20 (var_138)
  loc_103908F:     Call 0.Method_arg_38 ("'JobSchedule Master'")
  loc_103909B:   End If
  loc_103909E: Next var_132 'Integer
  loc_10390BC: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_10390C4: Call 0.Method_arg_2C (var_D4)
  loc_10390D2: Call 0.Method_arg_150 (var_F4)
  loc_10390DD: Call 0.Method_arg_50 (var_128)
  loc_10390F6: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_1039103: Set var_88 = Nothing
  loc_1039106: Exit Sub
  loc_1039107: ' Referenced from: 1038EF8
  loc_103910D: Call 0.Method_arg_50 (var_128, var_128)
  loc_1039122: Proc_183_57_104AA84(var_128, "TopCtrl1_ePrn")
  loc_103912E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E5BB64
  'Data Table: 527B94
  Dim Me As Recordset15
  loc_E5BB28: On Error Goto loc_E5BB3C
  loc_E5BB36: Me.Requery -1
  loc_E5BB3B: Exit Sub
  loc_E5BB3C: ' Referenced from: E5BB28
  loc_E5BB42: Call 0.Method_arg_50 (var_88)
  loc_E5BB4A: var_90 = "TopCtrl1_eRef"
  loc_E5BB57: Proc_183_57_104AA84(var_88)
  loc_E5BB63: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1587640
  'Data Table: 527B94
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_F0 As Variant
  Dim unk_527BB0 As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_24C As OptionButton
  Dim var_260 As Variant
  Dim var_33C As Variant
  Dim var_3D4 As TextBox
  Dim var_45C As OptionButton
  Dim var_490 As Variant
  Dim var_4F8 As TextBox
  Dim var_A14 As Double
  Dim var_544 As TextBox
  Dim var_A1C As Double
  Dim var_630 As TextBox
  Dim var_A24 As Double
  Dim var_67C As OptionButton
  Dim var_6B0 As Variant
  Dim var_768 As TextBox
  Dim var_A2C As Double
  Dim var_85C As Variant
  Dim var_C4 As Variant
  Dim var_1B8 As Variant
  Dim var_1F8 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_37C As Variant
  Dim var_4D0 As Variant
  Dim var_53C As Variant
  Dim var_588 As Variant
  Dim var_760 As Variant
  Dim var_7DC As Variant
  Dim var_89C As Variant
  Dim var_93C As Variant
  Dim var_9BC As Variant
  Dim var_2B4 As Variant
  Dim var_188 As Variant
  Dim var_39C As Variant
  Dim var_5F8 As Variant
  Dim var_730 As Variant
  Dim var_86C As Variant
  Dim var_8BC As Variant
  Dim var_95C As Variant
  Dim var_9AC As Variant
  Dim var_634 As String
  loc_15866A8: On Error Goto loc_1587601
  loc_15866AF: var_86 = CByte(0) 'Byte
  loc_15866C1: Set var_94 = Me.Txt
  loc_15866C7: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_15866D7: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_15866ED:   Set var_94 = Me.Txt
  loc_15866F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_1586703:   var_B4 = CVar(var_A0.Text) 'String
  loc_1586709:   var_C4 = Trim(var_B4)
  loc_1586722:   Set var_C8 = Me.Txt
  loc_1586728:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_1586730:   var_CC.Text = CStr(var_C4)
  loc_158674D: Next var_9A 'Byte
  loc_158675E: Set var_94 = Me.Txt
  loc_1586764: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_158678D: If (Proc_183_19_E8DAFC(var_A0, "Name") = 0) Then
  loc_1586797:   Call Txt_GotFocus(CInt(0))
  loc_158679C:   Exit Sub
  loc_158679D: End If
  loc_15867A0: Call Proc_320_40_108E2E8(var_96)
  loc_15867AB: If (var_96 = &HFF) Then
  loc_15867AE:   Exit Sub
  loc_15867AF: End If
  loc_15867B3: Set var_94 = Me.TopCtrl1
  loc_15867B9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A0)
  loc_15867D2: If (CStr() = "Add") Then
  loc_15867DB:   var_F0 = 0
  loc_15867F8:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(Schedule_Id,3,9) AS INT)),0)+1 AS MyCode From JobSchedule WHERE SITE_CODE='" & MemVar_1F92070
  loc_1586808:   unk_527BB0.Execute CStr() & "'", var_B4, -1
  loc_1586810:   var_94 = var_94.Fields
  loc_1586818:   var_F0 = var_A0.Item(var_A0)
  loc_1586820:   var_C8 = var_C8.Value
  loc_1586859:   var_104 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)) 'String
  loc_158687F:   var_C4 = Format(CStr(var_C4), "000000000")
  loc_1586887:   var_114 = (1 + var_C4)
  loc_1586892:   global_60 = CStr(var_114)
  loc_15868A7: Else
  loc_15868C4:   var_A0 = Me.Fields.Item("SchCode")
  loc_15868CC:   var_B4 = var_A0.Value
  loc_15868D5:   var_A4 = CStr(var_B4)
  loc_15868DB:   global_60 = var_A4
  loc_15868EC: End If
  loc_15868FA: Set var_94 = Me.Txt
  loc_1586900: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_1586908: 1 = var_A0.Text
  loc_158691B: var_90 = Proc_183_20_FB3974(var_A4, var_104)
  loc_1586935: unk_527BB0.BeginTrans var_118
  loc_158693E: var_86 = CByte(1) 'Byte
  loc_1586946: Set var_94 = Me.TopCtrl1
  loc_158694C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_1586965: If (CStr() = "Add") Then
  loc_158696E:   var_E0 = global_60
  loc_1586976:   Proc_6_17_EAA2B0(var_B4)
  loc_1586986:   Set var_94 = Me.Txt
  loc_158698C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_158699B:   Proc_6_17_EAA2B0(var_138, CVar(var_A0))
  loc_15869AB:   Proc_6_17_EAA2B0(var_188, CVar(Me.CMBSchduleType))
  loc_15869BD:   var_96 = Me.ChkEnabled.Value
  loc_15869CD:   Proc_6_7_F25D88(var_218, CVar(Me.DTPSchStartDate))
  loc_15869DE:   Set var_CC = Me.OptSchEndDate
  loc_15869E4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_24C)
  loc_15869EC:   var_24E = var_24C.Value
  loc_15869F5:   var_260 = CVar(Me.DTPSchEndDate) 'Address
  loc_15869FC:   Proc_6_7_F25D88(var_270, var_260)
  loc_1586A1B:   Proc_6_7_F25D88(var_2B4, CDate(CDate(Me.DTPSchEndDate.MaxDate)))
  loc_1586A5A:   var_33C = (Me.DTPOTMDate._Value + Me.DTPOTMTime._Value)
  loc_1586A61:   Proc_6_8_EB0DE4(var_34C, var_33C)
  loc_1586A71:   Proc_6_17_EAA2B0(var_39C, CVar(Me.CMBOccurType))
  loc_1586A84:   Set var_3D0 = Me.TxtNumUpDown1
  loc_1586A8A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3D4)
  loc_1586A92:   var_F4 = var_3D4.Text
  loc_1586A9F:   var_A0C = Val(var_F4)
  loc_1586AAE:   Set var_458 = Me.OptMonthlyFreq
  loc_1586AB4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_45C, var_45E)
  loc_1586AEB:   Set var_4F4 = Me.TxtNumUpDown1
  loc_1586AF1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8)
  loc_1586AF9:   var_4FC = var_4F8.Text
  loc_1586B06:   var_A14 = Val(var_4FC)
  loc_1586B15:   Set var_540 = Me.TxtNumUpDown1
  loc_1586B1B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_544, var_548)
  loc_1586B30:   var_A1C = Val(var_548)
  loc_1586B3E:   Proc_6_17_EAA2B0(var_5A8, CVar(Me.CMBMonthlyThe))
  loc_1586B4E:   Proc_6_17_EAA2B0(var_5F8, CVar(Me.CMBMonthlyTheDay))
  loc_1586B5F:   Set var_62C = Me.TxtNumUpDown1
  loc_1586B65:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_630, var_634)
  loc_1586B7A:   var_A24 = Val(var_634)
  loc_1586B89:   Set var_678 = Me.OptDailyFreq
  loc_1586B8F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_67C, var_67E)
  loc_1586BB3:   var_6E0 = IIf((var_67E = &HFF), 0, 1)
  loc_1586BC3:   Proc_6_8_EB0DE4(var_730, CVar(Me.DTPDFOccurOnce))
  loc_1586BD6:   Set var_764 = Me.TxtNumUpDown1
  loc_1586BDC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_768)
  loc_1586BF1:   var_A2C = Val(var_768.Text)
  loc_1586BFF:   Proc_6_17_EAA2B0(var_7CC, CVar(Me.CMBDFOccurUnit))
  loc_1586C0F:   Proc_6_8_EB0DE4(var_81C, CVar(Me.DTPDFStartTime))
  loc_1586C18:   var_85C = CVar(Me.DTPDFEndTime) 'Address
  loc_1586C1F:   Proc_6_8_EB0DE4(var_86C, var_85C)
  loc_1586C2F:   Proc_6_17_EAA2B0(var_8BC, MemVar_1F92070)
  loc_1586C3F:   Proc_6_17_EAA2B0(var_90C, MemVar_1F920C8)
  loc_1586C49:   var_94C = CVar(Proc_6_14_EF349C(var_A2C)) 'String
  loc_1586C4F:   Proc_6_8_EB0DE4(var_95C, var_94C)
  loc_1586C5F:   Proc_6_17_EAA2B0(var_9AC, MemVar_1F92078)
  loc_1586C78:   var_A4 = "INSERT INTO JobSchedule(Schedule_Id,ScheduleName,ScheduleType,ScheduleEnabled," & "ScheduleStartDate,ScheduleEndDate,OneTimeOccur,FreqOccurs,FreqRecurs,FreqWeekdays,FreqMonth,FreqMonthDay,"
  loc_1586C86:   var_C4 = CVar(var_A4 & "FreqMonthDayOfEveryMonth,FreqMonthThe,FreqMonthTheDay,FreqMonthTheDayOfEveryMonth,DFreq,DFreqOccursOnce," & "DFreqOccursEvery,DFreqOccursType,DFreqOccursStartTime,DFreqOccursEndTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values(") 'String
  loc_1586CB5:   var_1B8 = var_C4 & var_B4 & "," & var_138 & "," & var_188 & "," 
  loc_1586CE8:   var_304 = var_1B8 & CVar(var_96) & "," & var_218 & "," & IIf((var_24E = &HFF), var_270, var_2B4) & "," 
  loc_1586D3A:   var_4D0 = var_304 & var_34C & "," & var_39C & "," & CVar(var_45C.Value) & "," & CVar(global_68) & "," & IIf((var_45E = &HFF), 0, 1) 
  loc_1586D57:   var_53C = var_4D0 & "," & CVar(var_544.Text) & "," 
  loc_1586DBF:   var_760 = var_53C & CVar(var_630.Text) & "," & var_5A8 & "," & var_5F8 & "," & CVar(var_67C.Value) & "," & var_6E0 & "," & var_730 & "," 
  loc_1586E03:   var_89C = var_760 & CVar(var_A2C) & "," & var_7CC & "," & var_81C & "," & var_86C & "," 
  loc_1586E3A:   var_9BC = var_89C & var_8BC & "," & var_90C & "," & var_95C & ",'A'," & var_9AC 
  loc_1586E51:   unk_527BB0.Execute CStr(var_9BC & ")"), var_A00, -1
  loc_1586F64: Else
  loc_1586F6F:   Set var_94 = Me.Txt
  loc_1586F75:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0)
  loc_1586F84:   Proc_6_17_EAA2B0(var_C4, CVar(var_A0))
  loc_1586F94:   Proc_6_17_EAA2B0(var_138, CVar(Me.CMBSchduleType))
  loc_1586FA6:   var_96 = Me.ChkEnabled.Value
  loc_1586FB6:   Proc_6_7_F25D88(var_1B8, CVar(Me.DTPSchStartDate))
  loc_1586FC7:   Set var_CC = Me.OptSchEndDate
  loc_1586FCD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_24C, var_24E)
  loc_1586FD5:   var_A04 = var_24C.Value
  loc_1586FE5:   Proc_6_7_F25D88(var_218, CVar(Me.DTPSchEndDate))
  loc_1587004:   Proc_6_7_F25D88(var_260, CDate(CDate(Me.DTPSchEndDate.MaxDate)))
  loc_1587043:   var_2E4 = (Me.DTPOTMDate._Value + Me.DTPOTMTime._Value)
  loc_158704A:   Proc_6_8_EB0DE4(var_304, var_1B8 & CVar(var_96) & "," & var_218 & "," & IIf((var_24E = &HFF), IIf((var_24E = &HFF), var_218, var_260), Me.DTPOTMDate._Value))
  loc_158705A:   Proc_6_17_EAA2B0(var_34C, CVar(Me.CMBOccurType))
  loc_158706D:   Set var_3D0 = Me.TxtNumUpDown1
  loc_1587073:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3D4)
  loc_1587088:   var_A0C = Val(var_3D4.Text)
  loc_1587097:   Set var_458 = Me.OptMonthlyFreq
  loc_158709D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_45C, var_45E)
  loc_15870D4:   Set var_4F4 = Me.TxtNumUpDown1
  loc_15870DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_4F8)
  loc_15870EF:   var_A14 = Val(var_4F8.Text)
  loc_15870FE:   Set var_540 = Me.TxtNumUpDown1
  loc_1587104:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_544, var_F4)
  loc_1587119:   var_A1C = Val(var_F4)
  loc_1587127:   Proc_6_17_EAA2B0(var_53C, CVar(Me.CMBMonthlyThe))
  loc_1587137:   Proc_6_17_EAA2B0(var_5A8, CVar(Me.CMBMonthlyTheDay))
  loc_1587148:   Set var_62C = Me.TxtNumUpDown1
  loc_158714E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_630, var_4FC)
  loc_1587163:   var_A24 = Val(var_4FC)
  loc_1587172:   Set var_678 = Me.OptDailyFreq
  loc_1587178:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_67C, var_67E)
  loc_15871AC:   Proc_6_8_EB0DE4(var_6E0, CVar(Me.DTPDFOccurOnce))
  loc_15871BF:   Set var_764 = Me.TxtNumUpDown1
  loc_15871C5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_768)
  loc_15871DA:   var_A2C = Val(var_768.Text)
  loc_15871E8:   Proc_6_17_EAA2B0(var_760, CVar(Me.CMBDFOccurUnit))
  loc_15871F8:   Proc_6_8_EB0DE4(var_7CC, CVar(Me.DTPDFStartTime))
  loc_1587208:   Proc_6_8_EB0DE4(var_81C, CVar(Me.DTPDFEndTime))
  loc_1587218:   Proc_6_17_EAA2B0(var_85C, MemVar_1F92070)
  loc_1587228:   Proc_6_17_EAA2B0(var_89C, MemVar_1F920C8)
  loc_1587238:   Proc_6_8_EB0DE4(var_90C, CVar(Proc_6_14_EF349C(var_A2C)))
  loc_1587248:   Proc_6_17_EAA2B0(var_94C, MemVar_1F92078)
  loc_158725A:   var_E0 = "UPDATE JobSchedule SET ScheduleName="
  loc_158729E:   var_1F8 = var_E0 & var_C4 & ",ScheduleType=" & var_138 & ",ScheduleEnabled=" & CVar(var_96) & ",ScheduleStartDate=" & var_1B8 & ",ScheduleEndDate=" 
  loc_15872CE:   var_37C = var_1F8 & IIf((var_24E = &HFF), var_218, var_260) & ",OneTimeOccur=" & var_304 & ",FreqOccurs=" & var_34C & ",FreqRecurs=" 
  loc_1587309:   var_490 = var_37C & CVar(var_45C.Value) & ",FreqWeekdays=" & CVar(global_68) & ",FreqMonth=" & IIf((var_45E = &HFF), 0, 1) & ",FreqMonthDay=" 
  loc_1587341:   var_588 = var_490 & CVar(var_544.Text) & ",FreqMonthDayOfEveryMonth=" & CVar(var_630.Text) & ",FreqMonthThe=" & var_53C & ",FreqMonthTheDay=" 
  loc_1587375:   var_6B0 = var_588 & var_5A8 & ",FreqMonthTheDayOfEveryMonth=" & CVar(var_67C.Value) & ",DFreq=" & IIf((var_67E = &HFF), 0, 1) & ",DFreqOccursOnce=" 
  loc_15873B0:   var_7DC = var_6B0 & var_6E0 & ",DFreqOccursEvery=" & CVar(var_A2C) & ",DFreqOccursType=" & var_760 & ",DFreqOccursStartTime=" & var_7CC 
  loc_15873F9:   var_93C = var_7DC & ",DFreqOccursEndTime=" & var_81C & ",Site_Code=" & var_85C & ",U_Name=" & var_89C & ",U_EntDt=" & var_90C & ",U_AE='E',LogSite_Code=" 
  loc_158742D:   unk_527BB0.Execute CStr(var_93C & var_94C & " WHERE Schedule_Id='" & CVar(global_60) & "'"), var_9BC, -1
  loc_1587535: End If
  loc_158753B: unk_527BB0.CommitTrans
  loc_1587544: var_86 = CByte(0) 'Byte
  loc_1587553: Me.Requery -1
  loc_1587563: Me.Requery -1
  loc_1587590: Me.Find "SchCode='" & global_60 & "'", 0, 1
  loc_15875A0: Set var_94 = Me.TopCtrl1
  loc_15875A6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E0)
  loc_15875BF: If (CStr(var_A04) = "Add") Then
  loc_15875C2:   Call TopCtrl1_UnknownEvent_A()
  loc_15875C7:   Exit Sub
  loc_15875C8: End If
  loc_15875DD: var_A4 = "INI"
  loc_15875EB: Call Proc_320_37_11A5E3C(Proc_5_1_100CB50(var_A4, Me), global_52)
  loc_15875F6: Call Proc_320_41_E534EC(var_E0)
  loc_15875FB: Call Proc_320_39_14320F8()
  loc_1587600: Exit Sub
  loc_1587601: ' Referenced from: 15866A8
  loc_158760A: If (CInt(var_86) = 1) Then
  loc_1587613:   unk_527BB0.RollbackTrans
  loc_1587618: End If
  loc_158761E: Call 0.Method_arg_50 (var_A4)
  loc_1587626: var_F4 = "TopCtrl1_eSave"
  loc_1587633: Proc_183_57_104AA84(var_A4)
  loc_158763F: Exit Sub
End Sub

Public Property Get OpenMode() 'E09340
  'Data Table: 527B94
  loc_E09339: OpenMode = global_72
End Sub

Public Property Let OpenMode(vNewValue) 'E018EC
  'Data Table: 527B94
  loc_E018E6: global_72 = vNewValue
  loc_E018E9: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E923D4
  'Data Table: 527B94
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E92366: On Error Goto loc_E923AB
  loc_E9236F: Me.MoveFirst
  loc_E92389: var_8C = "SchCode='" & MyValue
  loc_E92399: Me.Find var_8C & "'", 0, 1
  loc_E923A5: Call Proc_320_39_14320F8(var_A0)
  loc_E923AA: Exit Sub
  loc_E923AB: ' Referenced from: E92366
  loc_E923B1: Call 0.Method_arg_50 (var_8C)
  loc_E923B9: var_A4 = "SEARCHBACK"
  loc_E923C6: Proc_183_57_104AA84(var_8C)
  loc_E923D2: Exit Sub
End Sub

Public Sub Proc_320_36_F1F2A8
  'Data Table: 527B94
  Dim var_8C As Double
  Dim var_94 As Double
  loc_F1F1AA: var_8C = CDate(Proc_6_15_EF2C1C())
  loc_F1F1B5: var_94 = CDate("01/Jan/1900 12:00:00 AM")
  loc_F1F1CA: Me.DTPOTMTime.Value = CDate(var_94)
  loc_F1F1E4: Me.DTPDFOccurOnce.Value = CDate(var_94)
  loc_F1F1FE: Me.DTPDFStartTime.Value = CDate(var_94)
  loc_F1F22B: Me.DTPDFEndTime.Value = DateAdd("s", CDbl(&HFF), var_94)
  loc_F1F248: Me.DTPOTMDate.Value = CDate(var_8C)
  loc_F1F262: Me.DTPSchStartDate.Value = CDate(var_8C)
  loc_F1F27C: Me.DTPSchEndDate.Value = CDate(var_8C)
  loc_F1F284: Call CMBSchduleType_Click()
  loc_F1F289: Call CMBOccurType_Click()
  loc_F1F293: Call OptDailyFreq_Click()
  loc_F1F298: Call CMBDFOccurUnit_Click()
  loc_F1F2A2: Call OptSchEndDate_Click()
  loc_F1F2A7: Exit Sub
End Sub

Public Sub Proc_320_37_11A5E3C(arg_C) '11A5E3C
  'Data Table: 527B94
  Dim var_98 As Variant
  Dim var_8C As Variant
  loc_11A5A0C: On Error Goto loc_11A5E11
  loc_11A5A1D: Set var_8C = Me.Txt
  loc_11A5A23: Call 0.Method_Proc_320_37_11A5E3CC (var_8E, var_86)
  loc_11A5A33: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_11A5A49:   Set var_8C = Me.Txt
  loc_11A5A4F:   Call 0.Method_Proc_320_37_11A5E3C0 (CInt(var_86), var_98)
  loc_11A5A57:   var_98.Enabled = arg_C
  loc_11A5A66: Next var_92 'Byte
  loc_11A5A7A: Me.CmdScheduledJobs.Enabled = Not(arg_C)
  loc_11A5A8F: Me.CMBSchduleType.Enabled = arg_C
  loc_11A5AA4: Me.ChkEnabled.Enabled = arg_C
  loc_11A5ABD: Me.DTPOTMDate.Enabled = arg_C
  loc_11A5AD6: Me.DTPOTMTime.Enabled = arg_C
  loc_11A5AEB: Me.CMBOccurType.Enabled = arg_C
  loc_11A5AFF: Set var_8C = Me.TxtNumUpDown1
  loc_11A5B05: Call 0.Method_Proc_320_37_11A5E3CC (var_8E, var_88)
  loc_11A5B13: For var_AC =  To (var_8E - 1): 0 = var_AC 'Integer
  loc_11A5B1F:   Call Proc_320_43_E6B250(var_88)
  loc_11A5B27: Next var_AC 'Integer
  loc_11A5B38: Set var_8C = Me.OptMonthlyFreq
  loc_11A5B3E: Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98)
  loc_11A5B46: var_98.Enabled = arg_C
  loc_11A5B5E: Set var_8C = Me.OptMonthlyFreq
  loc_11A5B64: Call 0.Method_Proc_320_37_11A5E3C0 (1, var_98)
  loc_11A5B6C: var_98.Enabled = arg_C
  loc_11A5B85: Me.CMBMonthlyThe.Enabled = arg_C
  loc_11A5B9A: Me.CMBMonthlyTheDay.Enabled = arg_C
  loc_11A5BB0: Set var_8C = Me.ChkWeekDay
  loc_11A5BB6: Call 0.Method_Proc_320_37_11A5E3CC (var_8E, var_86)
  loc_11A5BC3: For var_B0 =  To CByte(var_8E): CByte(1) = var_B0 'Byte
  loc_11A5BD9:   Set var_8C = Me.ChkWeekDay
  loc_11A5BDF:   Call 0.Method_Proc_320_37_11A5E3C0 (CInt(var_86), var_98)
  loc_11A5BE7:   var_98.Enabled = arg_C
  loc_11A5BF6: Next var_B0 'Byte
  loc_11A5C08: Set var_8C = Me.OptDailyFreq
  loc_11A5C0E: Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98)
  loc_11A5C16: var_98.Enabled = arg_C
  loc_11A5C2E: Set var_8C = Me.OptDailyFreq
  loc_11A5C34: Call 0.Method_Proc_320_37_11A5E3C0 (1, var_98)
  loc_11A5C3C: var_98.Enabled = arg_C
  loc_11A5C59: Me.DTPDFOccurOnce.Enabled = arg_C
  loc_11A5C6E: Me.CMBDFOccurUnit.Enabled = arg_C
  loc_11A5C87: Me.DTPDFStartTime.Enabled = arg_C
  loc_11A5CA0: Me.DTPDFEndTime.Enabled = arg_C
  loc_11A5CB9: Me.DTPSchStartDate.Enabled = arg_C
  loc_11A5CCD: Set var_8C = Me.OptSchEndDate
  loc_11A5CD3: Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98)
  loc_11A5CDB: var_98.Enabled = arg_C
  loc_11A5CF3: Set var_8C = Me.OptSchEndDate
  loc_11A5CF9: Call 0.Method_Proc_320_37_11A5E3C0 (1, var_98)
  loc_11A5D01: var_98.Enabled = arg_C
  loc_11A5D1E: Me.DTPSchEndDate.Enabled = arg_C
  loc_11A5D2C: If (arg_C = &HFF) Then
  loc_11A5D2F:   Call CMBOccurType_Click()
  loc_11A5D34:   Call CMBSchduleType_Click()
  loc_11A5D39:   Call CMBDFOccurUnit_Click()
  loc_11A5D4A:   Set var_8C = Me.OptSchEndDate
  loc_11A5D50:   Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98)
  loc_11A5D58:   var_8E = var_98.Value
  loc_11A5D6A:   If (var_8E = &HFF) Then
  loc_11A5D72:     Call OptSchEndDate_Click()
  loc_11A5D7A:   Else
  loc_11A5D7F:     Call OptSchEndDate_Click()
  loc_11A5D84:   End If
  loc_11A5D90:   Set var_8C = Me.OptMonthlyFreq
  loc_11A5D96:   Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98, var_8E)
  loc_11A5D9E:   1 = var_98.Value
  loc_11A5DB0:   If (var_8E = &HFF) Then
  loc_11A5DB8:     Call OptMonthlyFreq_Click()
  loc_11A5DC0:   Else
  loc_11A5DC5:     Call OptMonthlyFreq_Click()
  loc_11A5DCA:   End If
  loc_11A5DD6:   Set var_8C = Me.OptDailyFreq
  loc_11A5DDC:   Call 0.Method_Proc_320_37_11A5E3C0 (0, var_98, var_8E)
  loc_11A5DE4:   1 = var_98.Value
  loc_11A5DF6:   If (var_8E = &HFF) Then
  loc_11A5DFE:     Call OptDailyFreq_Click()
  loc_11A5E06:   Else
  loc_11A5E0B:     Call OptDailyFreq_Click()
  loc_11A5E10:   End If
  loc_11A5E10: End If
  loc_11A5E10: Exit Sub
  loc_11A5E11: ' Referenced from: 11A5A0C
  loc_11A5E17: Call 0.Method_arg_50 (var_B4, 1, 0)
  loc_11A5E2C: Proc_183_57_104AA84(var_B4, "Disp_Text")
  loc_11A5E38: Exit Sub
End Sub

Public Sub Proc_320_38_101F788
  'Data Table: 527B94
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_8C As Variant
  loc_101F55C: On Error Goto loc_101F75D
  loc_101F565: global_64 = vbNullString
  loc_101F577: Set var_8C = Me.Txt
  loc_101F57D: Call 0.Method_Proc_320_38_101F788C (var_8E, var_86)
  loc_101F58D: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101F5A3:   Set var_8C = Me.Txt
  loc_101F5A9:   Call 0.Method_Proc_320_38_101F7880 (CInt(var_86), var_98)
  loc_101F5B1:   var_98.Text = vbNullString
  loc_101F5CD:   Set var_8C = Me.Txt
  loc_101F5D3:   Call 0.Method_Proc_320_38_101F7880 (CInt(var_86), var_98)
  loc_101F5DB:   var_98.Tag = vbNullString
  loc_101F5EA: Next var_92 'Byte
  loc_101F5FE: Set var_8C = Me.TxtNumUpDown1
  loc_101F604: Call 0.Method_Proc_320_38_101F788C (var_8E, var_86)
  loc_101F614: For var_9C =  To CByte((var_8E - 1)): CByte(0) = var_9C 'Byte
  loc_101F62E:   Set var_8C = Me.TxtNumUpDown1
  loc_101F634:   Call 0.Method_Proc_320_38_101F7880 (CInt(var_86), var_98)
  loc_101F63C:   var_98.Text = CStr(1)
  loc_101F64E: Next var_9C 'Byte
  loc_101F664: Me.ChkEnabled.Value = CInt(1)
  loc_101F68D: Me.CMBSchduleType.Text = Me.CMBSchduleType.List(0)
  loc_101F6BD: Me.CMBOccurType.Text = Me.CMBOccurType.List(0)
  loc_101F6ED: Me.CMBDFOccurUnit.Text = Me.CMBDFOccurUnit.List(0)
  loc_101F71D: Me.CMBMonthlyThe.Text = Me.CMBMonthlyThe.List(0)
  loc_101F73B: var_A0 = Me.CMBMonthlyTheDay.List(0)
  loc_101F74D: Me.CMBMonthlyTheDay.Text = var_A0
  loc_101F75C: Exit Sub
  loc_101F75D: ' Referenced from: 101F55C
  loc_101F763: Call 0.Method_arg_50 (var_A0)
  loc_101F76B: var_A8 = "BlankText"
  loc_101F778: Proc_183_57_104AA84(var_A0)
  loc_101F784: Exit Sub
End Sub

Public Sub Proc_320_39_14320F8
  'Data Table: 527B94
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As String
  Dim var_DC As Variant
  Dim unk_527BCA As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As TextBox
  Dim var_114 As Variant
  Dim var_110 As Integer
  Dim var_CC As Variant
  loc_1431628: On Error Goto loc_14320D0
  loc_1431631: Proc_183_45_E5C118(global_52)
  loc_143164D: If (Me.RecordCount <= 0) Then
  loc_1431650:   Call Proc_320_38_101F788()
  loc_1431658: Else
  loc_143168C:   global_60 = CStr(Me.Fields.Item("SchCode").Value)
  loc_14316B1:   var_B8 = "Select Schedule_Id,ScheduleName,ScheduleType,ScheduleEnabled," & "ScheduleStartDate,ScheduleEndDate,OneTimeOccur,FreqOccurs,FreqRecurs,FreqWeekdays,FreqMonth,FreqMonthDay,"
  loc_14316BF:   var_DC = CVar(var_B8 & "FreqMonthDayOfEveryMonth,FreqMonthThe,FreqMonthTheDay,FreqMonthTheDayOfEveryMonth,DFreq,DFreqOccursOnce," & "DFreqOccursEvery,DFreqOccursType,DFreqOccursStartTime,DFreqOccursEndTime,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code From JobSchedule Where Schedule_Id=") 'String
  loc_14316EB:   Proc_6_17_EAA2B0(var_CC, CVar(Me.Fields.Item("SchCode")), var_DC)
  loc_1431701:   unk_527BCA.Execute CStr(var_110 & var_CC), -1, var_114
  loc_143170C:   Set var_88 = var_114
  loc_1431740:   If (var_88.RecordCount > 0) Then
  loc_143177C:     Set var_114 = Me.Txt
  loc_1431782:     Call 0.Method_Proc_320_39_14320F80 (CInt(0), var_118)
  loc_143178A:     var_118.Tag = CStr(var_88.Fields.Item("Schedule_Id").Value)
  loc_14317D9:     Set var_114 = Me.Txt
  loc_14317DF:     Call 0.Method_Proc_320_39_14320F80 (CInt(0), var_118)
  loc_14317E7:     var_118.Text = CStr(var_88.Fields.Item("ScheduleName").Value)
  loc_1431835:     Me.CMBSchduleType.Text = CStr(var_88.Fields.Item("ScheduleType").Value)
  loc_14318A2:     Me.ChkEnabled.Value = CInt(IIf((var_88.Fields.Item("ScheduleEnabled").Value = True), 1, 0))
  loc_143190B:     Me.DTPSchStartDate._Value = Format(CVar(var_88.Fields.Item("ScheduleStartDate")), "dd/MMM/yyyy")
  loc_143196E:     Me.DTPSchEndDate._Value = Format(CVar(var_88.Fields.Item("ScheduleEndDate")), "dd/MMM/yyyy")
  loc_143198D:     var_CC = Me.DTPSchEndDate.MaxDate
  loc_14319B0:     var_A4 = var_88.Fields.Item("ScheduleEndDate")
  loc_14319D8:     If (CDate(var_A4.Value) <> CDate(var_CC)) Then
  loc_14319E6:       Set var_90 = Me.OptSchEndDate
  loc_14319EC:       Call 0.Method_Proc_320_39_14320F80 (0, var_A4, &HFF, var_CC)
  loc_14319F4:       var_A4.Value = True
  loc_1431A03:     Else
  loc_1431A0E:       Set var_90 = Me.OptSchEndDate
  loc_1431A14:       Call 0.Method_Proc_320_39_14320F80 (1, var_A4, &HFF)
  loc_1431A1C:       var_A4.Value = True
  loc_1431A28:     End If
  loc_1431A76:     Me.DTPOTMDate._Value = Format(CVar(var_88.Fields.Item("OneTimeOccur")), "dd/MMM/yyyy")
  loc_1431AB6:     var_CC = "hh:nn:ss"
  loc_1431AD9:     Me.DTPOTMTime._Value = Format(CVar(var_88.Fields.Item("OneTimeOccur")), var_CC)
  loc_1431B14:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqOccurs")), 1, 1)
  loc_1431B2A:     Me.CMBOccurType.Text = CStr(var_CC)
  loc_1431B66:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqRecurs")), 1)
  loc_1431B7D:     Set var_114 = Me.TxtNumUpDown1
  loc_1431B83:     Call 0.Method_Proc_320_39_14320F80 (CInt(0), var_118, CStr(var_CC))
  loc_1431B8B:     var_118.Text = 1
  loc_1431BC9:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqWeekdays")))
  loc_1431BFA:     var_A4 = var_88.Fields.Item("FreqMonth")
  loc_1431C09:     Proc_6_39_E7C810(var_CC, CVar(var_A4), CLng(var_CC))
  loc_1431C23:     If (var_CC = 0) Then
  loc_1431C31:       Set var_90 = Me.OptMonthlyFreq
  loc_1431C37:       Call 0.Method_Proc_320_39_14320F80 (0, var_A4, &HFF)
  loc_1431C3F:       var_A4.Value = True
  loc_1431C4E:     Else
  loc_1431C59:       Set var_90 = Me.OptMonthlyFreq
  loc_1431C5F:       Call 0.Method_Proc_320_39_14320F80 (1, var_A4)
  loc_1431C67:       var_A4.Value = True
  loc_1431C73:     End If
  loc_1431C99:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqMonthDay")))
  loc_1431CB0:     Set var_114 = Me.TxtNumUpDown1
  loc_1431CB6:     Call 0.Method_Proc_320_39_14320F80 (CInt(1), var_118)
  loc_1431CBE:     var_118.Text = CStr(var_CC)
  loc_1431CFC:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqMonthDayOfEveryMonth")))
  loc_1431D11:     Set var_114 = Me.TxtNumUpDown1
  loc_1431D17:     Call 0.Method_Proc_320_39_14320F80 (2, var_118)
  loc_1431D1F:     var_118.Text = CStr(var_CC)
  loc_1431D52:     If (Me.CMBMonthlyThe.Enabled = &HFF) Then
  loc_1431D8A:       Me.CMBMonthlyThe.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FreqMonthThe")))
  loc_1431D9C:     End If
  loc_1431DB7:     If (Me.CMBMonthlyTheDay.Enabled = &HFF) Then
  loc_1431DEF:       Me.CMBMonthlyTheDay.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FreqMonthTheDay")))
  loc_1431E01:     End If
  loc_1431E27:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("FreqMonthTheDayOfEveryMonth")))
  loc_1431E3C:     Set var_114 = Me.TxtNumUpDown1
  loc_1431E42:     Call 0.Method_Proc_320_39_14320F80 (3, var_118)
  loc_1431E4A:     var_118.Text = CStr(var_CC)
  loc_1431E79:     var_A4 = var_88.Fields.Item("DFreq")
  loc_1431E88:     Proc_6_39_E7C810(var_CC, CVar(var_A4))
  loc_1431EA2:     If (var_CC = 0) Then
  loc_1431EB0:       Set var_90 = Me.OptDailyFreq
  loc_1431EB6:       Call 0.Method_Proc_320_39_14320F80 (0, var_A4)
  loc_1431EBE:       var_A4.Value = True
  loc_1431ECD:     Else
  loc_1431ED8:       Set var_90 = Me.OptDailyFreq
  loc_1431EDE:       Call 0.Method_Proc_320_39_14320F80 (1, var_A4)
  loc_1431EE6:       var_A4.Value = True
  loc_1431EF2:     End If
  loc_1431F1D:     var_CC = "hh:nn:ss"
  loc_1431F40:     Me.DTPDFOccurOnce._Value = Format(CVar(var_88.Fields.Item("DFreqOccursOnce")), var_CC)
  loc_1431F7B:     Proc_6_39_E7C810(var_CC, CVar(var_88.Fields.Item("DFreqOccursEvery")), 1)
  loc_1431F92:     Set var_114 = Me.TxtNumUpDown1
  loc_1431F98:     Call 0.Method_Proc_320_39_14320F80 (CInt(4), var_118, CStr(var_CC))
  loc_1431FA0:     var_118.Text = 1
  loc_1431FE0:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DFreqOccursType")))
  loc_1431FED:     Me.CMBDFOccurUnit.Text = var_B8
  loc_143204D:     Me.DTPDFStartTime._Value = Format(CVar(var_88.Fields.Item("DFreqOccursStartTime")), "hh:nn:ss")
  loc_14320B0:     Me.DTPDFEndTime._Value = Format(CVar(var_88.Fields.Item("DFreqOccursEndTime")), "hh:nn:ss")
  loc_14320C5:   End If
  loc_14320C5: End If
  loc_14320CA: Call Proc_320_37_11A5E3C(0)
  loc_14320CF: Exit Sub
  loc_14320D0: ' Referenced from: 1431628
  loc_14320D6: Call 0.Method_arg_50 (var_B8, 1, 1)
  loc_14320EB: Proc_183_57_104AA84(var_B8, "MoveRec", 1)
  loc_14320F7: Exit Sub
End Sub

Public Sub Proc_320_40_108E2E8
  'Data Table: 527B94
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_527BB0 As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108E058: On Error Goto loc_108E2B9
  loc_108E072: If (Me.RecordCount = 0) Then
  loc_108E075:   Proc_320_40_108E2E8 = 
  loc_108E07B: End If
  loc_108E07F: Set var_90 = Me.TopCtrl1
  loc_108E085: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108E08D: var_A4 = CStr()
  loc_108E09E: If (var_A4 = "Add") Then
  loc_108E0CE:   Set var_90 = Me.Txt
  loc_108E0D4:   Call 0.Method_Proc_320_40_108E2E80 (CInt(0), var_A8, var_A4, "Select Count(*) From JobSchedule Where ScheduleName='", var_A0, -1)
  loc_108E0F5:   unk_527BB0.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108E105:    = var_C8.Item()
  loc_108E10D:    = var_DC.Value
  loc_108E13A:   If (var_A8.Text.Fields > 0) Then
  loc_108E158:     var_A0 = "Duplicate Name"
  loc_108E15E:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108E179:     Set var_90 = Me.Txt
  loc_108E17F:     Call 0.Method_Proc_320_40_108E2E80 (CInt(0))
  loc_108E187:     var_A8.SetFocus
  loc_108E198:     Proc_320_40_108E2E8 = &HFF
  loc_108E19E:   End If
  loc_108E1A1: Else
  loc_108E1CE:   Set var_90 = Me.Txt
  loc_108E1D4:   Call 0.Method_Proc_320_40_108E2E80 (CInt(0), var_A8, var_A4, "Select Count(*) From JobSchedule Where ScheduleName='", var_A0, -1)
  loc_108E206:   unk_527BB0.Execute var_C8 & var_A4 & "' And ScheduleName<>'" & global_64 & "'", 0, var_DC
  loc_108E216:    = var_C8.Item(var_A8)
  loc_108E21E:    = var_DC.Value
  loc_108E24F:   If (var_A8.Text.Fields > 0) Then
  loc_108E273:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108E28E:     Set var_90 = Me.Txt
  loc_108E294:     Call 0.Method_Proc_320_40_108E2E80 (CInt(0))
  loc_108E29C:     var_A8.SetFocus
  loc_108E2AD:     Proc_320_40_108E2E8 = &HFF
  loc_108E2B3:   End If
  loc_108E2B3: End If
  loc_108E2B3: Proc_320_40_108E2E8 = var_A8
  loc_108E2B9: ' Referenced from: 108E058
  loc_108E2BF: Call 0.Method_arg_50 (var_A4)
  loc_108E2D4: Proc_183_57_104AA84(var_A4)
  loc_108E2E0: Proc_320_40_108E2E8 = "ValidateName"
  loc_108E2E6: Set arg_1C74 = 
End Sub

Public Sub Proc_320_41_E534EC
  'Data Table: 527B94
  loc_E534D0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E534E2:   Me.DGHelp.Visible = False
  loc_E534EA: End If
  loc_E534EA: Exit Sub
End Sub

Public Sub Proc_320_42_FDB0FC(arg_C, arg_10, arg_14) 'FDB0FC
  'Data Table: 527B94
  Dim var_9C As Variant
  Dim var_8C As Variant
  Dim var_B8 As Variant
  loc_FDAF30: var_9C = CVar(CLng(arg_10)) 'Long
  loc_FDAF3F: Set var_88 = Me.UpDown1
  loc_FDAF45: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_8C)
  loc_FDAF5D: var_9C = CVar(CLng(arg_14)) 'Long
  loc_FDAF6C: Set var_88 = Me.UpDown1
  loc_FDAF72: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_8C, var_9C)
  loc_FDAF90: Set var_B4 = Me.UpDown1
  loc_FDAF96: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_B8, var_8C.Min)
  loc_FDAF9E: var_B8.Min = var_8C.Max
  loc_FDAFB4: Set var_88 = Me.TxtNumUpDown1
  loc_FDAFBA: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_8C)
  loc_FDAFE8: If (CDbl(Val(var_8C.Text)) < CDbl(CLng(var_C8))) Then
  loc_FDAFF5:   Set var_88 = Me.UpDown1
  loc_FDAFFB:   Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_8C)
  loc_FDB003:   var_8C.Min = var_9C
  loc_FDB01B:   Set var_B4 = Me.TxtNumUpDown1
  loc_FDB021:   Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_B8)
  loc_FDB029:   var_B8.Text = CStr(CLng())
  loc_FDB03F: End If
  loc_FDB049: Set var_B4 = Me.UpDown1
  loc_FDB04F: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C)
  loc_FDB057: var_B8.Max = var_B8
  loc_FDB06D: Set var_88 = Me.TxtNumUpDown1
  loc_FDB073: Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_8C)
  loc_FDB0A1: If (CDbl(Val(var_8C.Text)) > CDbl(CLng(var_C8))) Then
  loc_FDB0AE:   Set var_88 = Me.UpDown1
  loc_FDB0B4:   Call 0.Method_Proc_320_42_FDB0FC0 (arg_C)
  loc_FDB0BC:   var_8C.Max = var_8C
  loc_FDB0D4:   Set var_B4 = Me.TxtNumUpDown1
  loc_FDB0DA:   Call 0.Method_Proc_320_42_FDB0FC0 (arg_C, var_B8)
  loc_FDB0E2:   var_B8.Text = CStr(CLng())
  loc_FDB0F8: End If
  loc_FDB0F8: Exit Sub
End Sub

Public Sub Proc_320_43_E6B250(arg_C, arg_10) 'E6B250
  'Data Table: 527B94
  Dim var_8C As Variant
  loc_E6B209: Set var_88 = Me.TxtNumUpDown1
  loc_E6B20F: Call 0.Method_Proc_320_43_E6B2500 (arg_C, var_8C)
  loc_E6B217: var_8C.Enabled = arg_10
  loc_E6B234: Set var_88 = Me.UpDown1
  loc_E6B23A: Call 0.Method_Proc_320_43_E6B2500 (arg_C, var_8C)
  loc_E6B242: var_8C.Enabled = arg_10
  loc_E6B24E: Exit Sub
End Sub
