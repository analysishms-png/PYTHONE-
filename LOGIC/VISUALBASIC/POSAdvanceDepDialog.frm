VERSION 5.00
Begin VB.Form POSAdvanceDepDialog
  Caption = "Order Booking Advance"
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
  ClientWidth = 6945
  ClientHeight = 8250
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 1 'CenterOwner
  Begin Frame FrTxnNo
    Left = 6975
    Top = 1320
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 59
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 8
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Txn. No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 675
      Height = 225
      TabIndex = 60
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6945
    Height = 450
    TabIndex = 58
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3885
    Top = 1065
    Width = 1290
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin DataGrid DGFPNo
    Left = 1335
    Top = 5535
    Width = 4560
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin Frame FrRem
    Left = 240
    Top = 2145
    Width = 6405
    Height = 255
    Visible = 0   'False
    TabIndex = 45
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
      Index = 19
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 5265
      Height = 255
      TabIndex = 15
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin Label LblNarr
      Caption = "Narration"
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 795
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
  End
  Begin Frame FrChqDet
    Left = 6975
    Top = 2655
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 42
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
      Index = 13
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 13
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 14
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 14
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Cheque No."
      Index = 15
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 960
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
    Begin Label LblName
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &HFF0000&
      Left = 0
      Top = 270
      Width = 915
      Height = 225
      TabIndex = 43
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
    Left = 6975
    Top = 495
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 40
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
      Index = 15
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 5
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Room No.#"
      Index = 26
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 915
      Height = 225
      TabIndex = 41
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
    Left = 6975
    Top = 1035
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 38
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
      Index = 17
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 7
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Staff"
      Index = 22
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 405
      Height = 225
      TabIndex = 39
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
  Begin Frame FrComp
    Left = 6975
    Top = 765
    Width = 4965
    Height = 255
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
      Index = 16
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 6
      BorderStyle = 0 'None
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Company"
      Index = 27
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 795
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
  Begin Frame FrCCDet
    Left = 6975
    Top = 1710
    Width = 4290
    Height = 795
    Visible = 0   'False
    TabIndex = 32
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
      Index = 12
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3285
      Top = 540
      Width = 990
      Height = 255
      TabIndex = 12
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 0
      Width = 2415
      Height = 255
      TabIndex = 9
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 270
      Width = 3165
      Height = 255
      TabIndex = 10
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 11
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1110
      Top = 540
      Width = 1290
      Height = 255
      TabIndex = 11
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Batch No."
      Index = 0
      ForeColor = &HFF0000&
      Left = 2475
      Top = 555
      Width = 810
      Height = 225
      TabIndex = 57
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
      ForeColor = &HFF0000&
      Left = 0
      Top = 0
      Width = 645
      Height = 225
      TabIndex = 35
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
      ForeColor = &HFF0000&
      Left = 0
      Top = 270
      Width = 555
      Height = 225
      TabIndex = 34
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
      ForeColor = &HFF0000&
      Left = 0
      Top = 540
      Width = 585
      Height = 225
      TabIndex = 33
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
  Begin DataGrid DGCompany
    Left = 5145
    Top = 8010
    Width = 4215
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 30
  End
  Begin DataGrid DGTable
    Left = 2565
    Top = 6210
    Width = 4290
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 28
  End
  Begin DataGrid DGRoom
    Left = 7395
    Top = 3510
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
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
    TabIndex = 27
  End
  Begin Frame FrRest
    Left = 0
    Top = 915
    Width = 6885
    Height = 2355
    Visible = 0   'False
    TabIndex = 24
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
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 420
      Width = 5295
      Height = 255
      TabIndex = 55
      BorderStyle = 0 'None
      MaxLength = 35
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 3780
      Top = 960
      Width = 1395
      Height = 255
      Visible = 0   'False
      TabIndex = 53
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 150
      Width = 1290
      Height = 255
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 50
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 960
      Width = 1455
      Height = 255
      TabIndex = 4
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 1350
      Top = 690
      Width = 3825
      Height = 255
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 20
      Appearance = 0 'Flat
    End
    Begin Label LblName
      Caption = "Party Name"
      Index = 12
      ForeColor = &HFF0000&
      Left = 240
      Top = 435
      Width = 990
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
    Begin Label LblName
      Caption = "Tip"
      Index = 21
      ForeColor = &HFF0000&
      Left = 3105
      Top = 960
      Width = 255
      Height = 225
      Visible = 0   'False
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
    Begin Label Lbl
      Caption = "Bill No."
      Index = 1
      ForeColor = &HFF0000&
      Left = 2970
      Top = 135
      Width = 570
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
    Begin Label Lbl
      Caption = "FP No."
      Index = 0
      ForeColor = &HFF0000&
      Left = 240
      Top = 165
      Width = 525
      Height = 225
      TabIndex = 51
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
      Caption = "Amount"
      Index = 14
      ForeColor = &HFF0000&
      Left = 240
      Top = 960
      Width = 660
      Height = 225
      TabIndex = 26
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
      Caption = "Type"
      Index = 13
      ForeColor = &HFF0000&
      Left = 240
      Top = 690
      Width = 405
      Height = 225
      TabIndex = 25
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 120
    Top = 3285
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 22
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
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5490
    Top = 555
    Width = 1155
    Height = 255
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1365
    Top = 555
    Width = 930
    Height = 255
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid
    Left = 75
    Top = 3255
    Width = 6780
    Height = 1560
    TabIndex = 23
  End
  Begin MSFlexGrid FGPoint
    Left = 6165
    Top = 6345
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid FGrid1
    Left = 90
    Top = 5055
    Width = 6780
    Height = 1515
    Visible = 0   'False
    TabIndex = 48
  End
  Begin Label Label1
    Caption = "Bill Details"
    Index = 1
    ForeColor = &HFF0000&
    Left = 75
    Top = 4815
    Width = 6780
    Height = 240
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 1 'Fixed Single
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Press Ctrl+S to Save"
    Index = 0
    ForeColor = &HFF0000&
    Left = 240
    Top = 75
    Width = 2970
    Height = 300
    TabIndex = 31
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
    ForeColor = &HFF0000&
    Left = 2520
    Top = 555
    Width = 630
    Height = 225
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "Date"
    Index = 37
    ForeColor = &HFF0000&
    Left = 4830
    Top = 555
    Width = 390
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
  Begin Label Lbl
    Caption = "Rect No."
    Index = 36
    ForeColor = &HFF0000&
    Left = 255
    Top = 555
    Width = 705
    Height = 225
    TabIndex = 19
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
  Begin Menu popup
    Visible = 0   'False
    Caption = ""
    Begin Menu Del
      Caption = "Delete"
    End
  End
End

Attribute VB_Name = "POSAdvanceDepDialog"

Private global_64 As Integer
Private global_112 As Long
Private global_116 As Long
Private global_140 As Double
Private global_84 As Recordset15
Private global_108 As Integer
Private global_168 As Integer

Private Sub DGTable_UnknownEvent_9 'F5D4D0
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5D3B0: On Error Goto loc_F5D4CA
  loc_F5D3C2: Me.DGTable.Visible = False
  loc_F5D3E1: If (Me.RecordCount > 0) Then
  loc_F5D420:   Set var_B4 = Me.Txt
  loc_F5D426:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5D42E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5D461:   var_B0 = Me.Fields.Item("Code")
  loc_F5D480:   Set var_B4 = Me.Txt
  loc_F5D486:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(5), var_B8)
  loc_F5D48E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5D4A4: End If
  loc_F5D4AF: Set var_A8 = Me.Txt
  loc_F5D4B5: Call 0.Method_DGTable_UnknownEvent_90 (CInt(5))
  loc_F5D4BD: var_B0.SetFocus
  loc_F5D4C9: Exit Sub
  loc_F5D4CA: ' Referenced from: F5D3B0
  loc_F5D4CA: Proc_6_60_E62BC4(var_B0)
  loc_F5D4CF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA36F8
  'Data Table: 531BC0
  Dim var_A8 As Variant
  loc_EA3678: Set var_88 = Me.DGTable
  loc_EA36A2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA36AA: Set var_BC = Me.DGTable
  loc_EA36E6: Proc_6_138_106D6F8(Me.DGTable, global_72, CInt(5), Me.FGPoint)
  loc_EA36F4: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 '110A468
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_BC As TextBox
  Dim var_E4 As TextBox
  loc_110A147: Me.DGPayType.Visible = False
  loc_110A155: var_AC = global_116
  loc_110A161: If (var_AC = 6) Then
  loc_110A17B:   If (Me.RecordCount > 0) Then
  loc_110A1BA:     Set var_B8 = Me.Txt
  loc_110A1C0:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110A1C8:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110A21A:     Set var_B8 = Me.Txt
  loc_110A220:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H13), var_BC)
  loc_110A228:     var_BC.Text = CStr(Me.Fields.Item("PayType").Value)
  loc_110A25B:     var_B4 = Me.Fields.Item("Code")
  loc_110A27A:     Set var_B8 = Me.Txt
  loc_110A280:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110A288:     var_BC.Tag = CStr(var_B4.Value)
  loc_110A29E:   End If
  loc_110A2A9:   Set var_A8 = Me.Txt
  loc_110A2AF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_B4)
  loc_110A2B7:   var_B4.SetFocus
  loc_110A2C6: Else
  loc_110A2CF:   If (var_AC = 5) Then
  loc_110A2E9:     If (Me.RecordCount > 0) Then
  loc_110A309:       var_B4 = Me.Fields.Item("Name")
  loc_110A31A:       var_D0 = CStr(var_B4.Value)
  loc_110A328:       Set var_B8 = Me.Txt
  loc_110A32E:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110A35D:       Set var_A8 = Me.Txt
  loc_110A363:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(4), var_B4, var_D0)
  loc_110A36B:       "Recd.Agnst.OrderNo. " = var_B4.Text
  loc_110A38C:       Set var_B8 = Me.Txt
  loc_110A392:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(1), var_BC)
  loc_110A3B1:       Set var_E0 = Me.Txt
  loc_110A3B7:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(&H13), var_E4)
  loc_110A3BF:       var_E4.Text = var_AC & var_D0 & ", R.No. " & var_D0
  loc_110A3FD:       var_B4 = Me.Fields.Item("Code")
  loc_110A41C:       Set var_B8 = Me.Txt
  loc_110A422:       Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6), var_BC)
  loc_110A42A:       var_BC.Tag = CStr(var_B4.Value)
  loc_110A440:     End If
  loc_110A44B:     Set var_A8 = Me.Txt
  loc_110A451:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(6))
  loc_110A459:     var_B4.SetFocus
  loc_110A465:   End If
  loc_110A465: End If
  loc_110A465: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'EA3570
  'Data Table: 531BC0
  Dim var_A8 As Variant
  loc_EA34F0: Set var_88 = Me.DGPayType
  loc_EA351A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA3522: Set var_BC = Me.DGPayType
  loc_EA355E: Proc_6_138_106D6F8(Me.DGPayType, global_60, CInt(6), Me.FGPoint)
  loc_EA356C: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_9 'F3F0E4
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3EFDB: Me.DGRoom.Visible = False
  loc_F3EFFA: If (Me.RecordCount > 0) Then
  loc_F3F039:   Set var_B4 = Me.Txt
  loc_F3F03F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3F047:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3F07A:   var_B0 = Me.Fields.Item("Code")
  loc_F3F099:   Set var_B4 = Me.Txt
  loc_F3F09F:   Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3F0A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3F0BD: End If
  loc_F3F0C8: Set var_A8 = Me.Txt
  loc_F3F0CE: Call 0.Method_DGRoom_UnknownEvent_90 (CInt(5))
  loc_F3F0D6: var_B0.SetFocus
  loc_F3F0E2: Exit Sub
End Sub

Private Sub DGRoom_UnknownEvent_1F 'EA3634
  'Data Table: 531BC0
  Dim var_A8 As Variant
  loc_EA35B4: Set var_88 = Me.DGRoom
  loc_EA35DE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA35E6: Set var_BC = Me.DGRoom
  loc_EA3622: Proc_6_138_106D6F8(Me.DGRoom, global_76, CInt(5), Me.FGPoint)
  loc_EA3630: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E09A24
  'Data Table: 531BC0
  loc_E09A10: Call Proc_221_78_13B11FC()
  loc_E09A1B: Call Proc_221_75_1156D34(global_156)
  loc_E09A20: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'FE07CC
  'Data Table: 531BC0
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE0600: Set var_88 = Me.TopCtrl1
  loc_FE0606: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE061F: If (CStr() = "Browse") Then
  loc_FE0622:   Exit Sub
  loc_FE0623: End If
  loc_FE0640: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FE0643:   Exit Sub
  loc_FE0644: End If
  loc_FE0655: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE0677:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FE06B1:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE06D3:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FE06E9:         var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE06F2:         Set var_110 = Me.FGrid
  loc_FE070D:       Else
  loc_FE0720:         Me.FGrid.Rows = 1
  loc_FE0744:         var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_FE074C:         Set var_110 = Me.FGrid
  loc_FE0779:         Me.FGrid.FixedRows = 1
  loc_FE0781:       End If
  loc_FE0781:     End If
  loc_FE0784:   Else
  loc_FE07A5:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE07B5:   End If
  loc_FE07B9:   Set var_88 = Me.FGrid
  loc_FE07CA: End If
  loc_FE07CA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E41754
  'Data Table: 531BC0
  loc_E4172A: If (Cancel = 2) Then
  loc_E41745:   Call 0.Method_arg_2BC (Me.popup, var_98, var_A8)
  loc_E4174D:   Call FGrid_UnknownEvent_9()
  loc_E41752: End If
  loc_E41752: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F63E94
  'Data Table: 531BC0
  Dim var_88 As String
  Dim var_D4 As TextBox
  Dim var_D8 As Long
  loc_F63D68: On Error Goto loc_F63E8E
  loc_F63D8E: Call Proc_221_65_F71E6C(Proc_5_1_100CB50("ADD", Me))
  loc_F63D99: Call Proc_221_66_F66B9C(global_56)
  loc_F63DC6: var_88 = CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy"))
  loc_F63DD5: Set var_8C = Me.Txt
  loc_F63DDB: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_D4, var_88)
  loc_F63DE3: var_D4.Text = 1
  loc_F63DFF: var_D8 = global_116
  loc_F63E0B: If (var_D8 = 6) Then
  loc_F63E19:   Set var_8C = Me.Txt
  loc_F63E1F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F63E27:   var_D4.SetFocus
  loc_F63E39:   Call Proc_221_72_117CAB8(MemVar_1F92044, var_88)
  loc_F63E41:   Call Fgrid1_UnknownEvent_9()
  loc_F63E49: Else
  loc_F63E52:   If (var_D8 = 5) Then
  loc_F63E60:     Set var_8C = Me.Txt
  loc_F63E66:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_D4)
  loc_F63E6E:     var_D4.SetFocus
  loc_F63E80:     Call Proc_221_72_117CAB8(MemVar_1F92044, var_88)
  loc_F63E88:     Call Fgrid1_UnknownEvent_9()
  loc_F63E8D:   End If
  loc_F63E8D: End If
  loc_F63E8D: Exit Sub
  loc_F63E8E: ' Referenced from: F63D68
  loc_F63E8E: Proc_6_60_E62BC4(var_D8)
  loc_F63E93: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC3A8C
  'Data Table: 531BC0
  loc_EC39F4: On Error Goto loc_EC3A84
  loc_EC3A2E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC3A3D:   Set var_110 = Me
  loc_EC3A54:   Call Proc_221_65_F71E6C(Proc_5_1_100CB50("INI", var_110))
  loc_EC3A5F:   Call Proc_221_70_FB6D50(global_56)
  loc_EC3A64:   Call Proc_221_68_150DB10()
  loc_EC3A6C: Else
  loc_EC3A72:   Call 0.Method_arg_1E8 (var_110)
  loc_EC3A7A:   Call var_110.SetFocus
  loc_EC3A83: End If
  loc_EC3A83: Exit Sub
  loc_EC3A84: ' Referenced from: EC39F4
  loc_EC3A84: Proc_6_60_E62BC4()
  loc_EC3A89: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '13F081C
  'Data Table: 531BC0
  Dim var_A0 As Long
  Dim var_144 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Fields15
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_531BD6 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_C8 As Variant
  Dim var_1AC As Integer
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_9C As Double
  Dim var_12C As Variant
  Dim var_19C As Variant
  loc_13EFE4C: On Error Goto loc_13F07CB
  loc_13EFE55: var_A0 = global_116
  loc_13EFE61: If (var_A0 = 6) Then
  loc_13EFE6A:   var_144 = 0
  loc_13EFEBB:   var_108 = "SELECT count(*) FROM Ledger WHERE DocId='" & Me.Fields.Item("PostDocId").Value & "' AND V_Type='BREC'" 
  loc_13EFEC9:   unk_531BD6.Execute CStr(var_108), var_12C, -1
  loc_13EFED1:   var_130 = var_130.Fields
  loc_13EFED9:   var_144 = var_134.Item(var_134)
  loc_13EFEE1:   var_148 = var_148.Value
  loc_13EFF0E:   If (var_158 > 0) Then
  loc_13EFF38:     MsgBox(CVar("Recrod can not delete." & vbCrLf & "Related entry exist!"), &H10, "Delete...", var_108, var_12C)
  loc_13EFF4B:     Exit Sub
  loc_13EFF4C:   End If
  loc_13EFF83:   If (MsgBox("Delete Record ?", &H24, "Confirmation", var_108, var_12C) = 6) Then
  loc_13EFF8F:     unk_531BD6.BeginTrans var_17C
  loc_13EFF9D:     var_C8 = Me.Bookmark
  loc_13EFFA5:     var_94 = var_C8 'Variant
  loc_13EFFC6:     Proc_6_7_F25D88(var_C8, MemVar_1F920EC, "UPDATE HallBook SET Advance=0,U_EntDt=", var_210)
  loc_13EFFCE:     var_E8 = -1 & var_C8 
  loc_13EFFE1:     var_1AC = 0
  loc_13F0021:     var_12C = Me.Fields.Item("SearchCode").Value
  loc_13F0029:     var_158 = "SELECT ContraDocId FROM PayChargeH Where VType In ('AD','AR') AND Docid='" & var_12C 
  loc_13F0032:     var_178 = var_158 & "'" 
  loc_13F0040:     unk_531BD6.Execute CStr(var_178), var_19C, -1
  loc_13F0048:     var_130 = var_130.Fields
  loc_13F0050:     var_1AC = var_134.Item(var_134)
  loc_13F0058:     var_148 = var_148.Value
  loc_13F0077:     unk_531BD6.Execute CStr(var_1BC & var_1BC & "'"), "Confirmation" & " WHERE Docid='", var_214
  loc_13F0101:     unk_531BD6.Execute CStr("Delete From PayChargeH Where VType In ('AD','AR') AND Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_13F014C:     var_248 = 0
  loc_13F015F:     var_240 = 0
  loc_13F016A:     var_23C = 0
  loc_13F017D:     var_234 = 0
  loc_13F0188:     var_230 = 0
  loc_13F019B:     var_228 = 0
  loc_13F01E4:     Proc_154_5_10E33A4(MemVar_1F92044, "PayChargeH", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F0254:     var_108 = "Delete From lEDGER Where Docid='" & Me.Fields.Item("PostDocId").Value & "'" 
  loc_13F0262:     unk_531BD6.Execute CStr(var_108), var_12C, -1
  loc_13F02AD:     var_248 = 0
  loc_13F02C0:     var_240 = 0
  loc_13F02CB:     var_23C = 0
  loc_13F02DE:     var_234 = 0
  loc_13F02E9:     var_230 = 0
  loc_13F02FC:     var_228 = 0
  loc_13F0345:     Proc_154_5_10E33A4(MemVar_1F92044, "Ledger", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F0373:     unk_531BD6.CommitTrans
  loc_13F0383:     Me.Requery -1
  loc_13F0391:     var_17C = Me.RecordCount
  loc_13F03A3:     If (CVar(var_17C) >= var_94) Then
  loc_13F03B0:       Me.Bookmark = var_94
  loc_13F03B8:     Else
  loc_13F03CC:       If (Me.EOF = 0) Then
  loc_13F03D5:         Me.MoveLast
  loc_13F03DA:       End If
  loc_13F03DA:     End If
  loc_13F03DA:     Call Proc_221_68_150DB10(var_228, 0, var_230, var_234)
  loc_13F03FB:     Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_13F0403:   End If
  loc_13F0406: Else
  loc_13F040F:   If (var_A0 = 5) Then
  loc_13F0449:     If (MsgBox("Delete Record ?", &H24, "Confirmation", var_108, var_12C) = 6) Then
  loc_13F0455:       unk_531BD6.BeginTrans var_17C
  loc_13F046B:       var_94 = Me.Bookmark 'Variant
  loc_13F04C5:       unk_531BD6.Execute CStr("Delete From PayCharge Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_12C, -1
  loc_13F0510:       var_248 = 0
  loc_13F0523:       var_240 = 0
  loc_13F052E:       var_23C = 0
  loc_13F0541:       var_234 = 0
  loc_13F05A8:       Proc_154_5_10E33A4(MemVar_1F92044, "PayCharge", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_13F05F5:       var_C8 = Me.Fields.Item("ContraDocId").Value
  loc_13F0600:       var_144 = 0
  loc_13F0635:       unk_531BD6.Execute CStr("SELECT Sum(AmtCr) FROM PayCharge Where ContraDocid='" & var_C8 & "'"), var_12C, -1
  loc_13F063D:       var_130 = var_130.Fields
  loc_13F0645:       var_144 = var_134.Item(var_134)
  loc_13F064D:       var_148 = var_148.Value
  loc_13F0658:       Proc_6_39_E7C810(var_178, var_158, var_158, 0, 0)
  loc_13F0661:       var_9C = CSng(var_178)
  loc_13F068E:       Proc_6_7_F25D88(var_C8, MemVar_1F920EC, var_9C, 0)
  loc_13F06D2:       var_10C = CStr(var_9C)
  loc_13F06E3:       var_108 = CVar("UPDATE PackingOrder SET AdvAmt=" & var_10C & ",U_EntDt=") & var_C8 
  loc_13F06EC:       var_12C = var_108 & " Where DocId='" 
  loc_13F070A:       unk_531BD6.Execute CStr(var_12C & Me.Fields.Item("ContraDocId").Value & "'"), var_1BC, -1
  loc_13F073A:       unk_531BD6.CommitTrans
  loc_13F074A:       Me.Requery -1
  loc_13F076A:       If (CVar(Me.RecordCount) >= var_94) Then
  loc_13F0777:         Me.Bookmark = var_94
  loc_13F077F:       Else
  loc_13F0793:         If (Me.EOF = 0) Then
  loc_13F079C:           Me.MoveLast
  loc_13F07A1:         End If
  loc_13F07A1:       End If
  loc_13F07A1:       Call Proc_221_68_150DB10(var_130, var_234, 0)
  loc_13F07C2:       Proc_5_0_110649C(&HFF, Me, global_56)
  loc_13F07CA:     End If
  loc_13F07CA:   End If
  loc_13F07CA: End If
  loc_13F07CA: Exit Sub
  loc_13F07CB: ' Referenced from: 13EFE4C
  loc_13F07D1: unk_531BD6.RollbackTrans
  loc_13F07DE: Set var_A4 = Err()
  loc_13F07E4: Call 0.Method_arg_2C (var_10C, 0)
  loc_13F0805: MsgBox(CVar(var_10C), &H30, " Deletion Error ", var_108, var_12C)
  loc_13F0818: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E9F594
  'Data Table: 531BC0
  Dim var_94 As TextBox
  loc_E9F510: On Error Goto loc_E9F58E
  loc_E9F536: Call Proc_221_65_F71E6C(Proc_5_1_100CB50("EDIT", Me))
  loc_E9F54E: Set var_8C = Me.Txt
  loc_E9F554: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_E9F55C: var_94.Enabled = False
  loc_E9F573: Set var_8C = Me.Txt
  loc_E9F579: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_94)
  loc_E9F581: var_94.SetFocus
  loc_E9F58D: Exit Sub
  loc_E9F58E: ' Referenced from: E9F510
  loc_E9F58E: Proc_6_60_E62BC4(global_56)
  loc_E9F593: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A9A0
  'Data Table: 531BC0
  loc_E1A995: Me.Global.Unload Me
  loc_E1A99D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FAB184
  'Data Table: 531BC0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As Long
  Dim var_110 As String
  Dim MemVar_1F920E4 As String
  loc_FAB004: On Error Goto loc_FAB11D
  loc_FAB010: var_88 = Me.RecordCount
  loc_FAB01E: If (var_88 <= 0) Then
  loc_FAB027:   var_B8 = "Information"
  loc_FAB042:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_FAB052:   Exit Sub
  loc_FAB053: End If
  loc_FAB059: var_10C = global_116
  loc_FAB065: If (var_10C = 6) Then
  loc_FAB072:   var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,AmtCr As Amount FROM PayChargeH Where Vtype='" & global_124
  loc_FAB092:   MemVar_1F920E4 = var_110 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId & "'"
  loc_FAB0A4: Else
  loc_FAB0AD:   If (var_10C = 5) Then
  loc_FAB0BA:     var_110 = "SELECT Distinct Docid as Code,VNo As Rect_No,Convert(Varchar(11),Vdate,106) As V_Date,Comments,PayType,AmtCr As Amount FROM PayCharge Where Vtype='" & global_124
  loc_FAB0DA:     MemVar_1F920E4 = var_110 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId & "'"
  loc_FAB0E9:   End If
  loc_FAB0E9: End If
  loc_FAB0EF: MemVar_1F92120 = Me
  loc_FAB0F6: var_110 = "800,1000,4000,1000,1000"
  loc_FAB0FC: Proc_6_126_F1BCC0(var_110, MemVar_1F920E4)
  loc_FAB117: Call 0.Method_arg_2B0 (1, var_B8)
  loc_FAB11C: Exit Sub
  loc_FAB11D: ' Referenced from: FAB004
  loc_FAB125: Set var_120 = Err()
  loc_FAB12B: Call 0.Method_arg_1C (var_88, MemVar_1F920E4)
  loc_FAB13C: If (var_88 <> 0) Then
  loc_FAB147:   Set var_120 = Err()
  loc_FAB14D:   Call 0.Method_arg_2C (var_110)
  loc_FAB16E:   MsgBox(CVar(var_110), &H40, "Validation", var_E8, var_108)
  loc_FAB181: End If
  loc_FAB181: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3DB78
  'Data Table: 531BC0
  loc_E3DB68: Proc_5_0_110649C(&HFF, Me)
  loc_E3DB70: Call Proc_221_68_150DB10(global_56)
  loc_E3DB75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3DED8
  'Data Table: 531BC0
  loc_E3DEC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3DED0: Call Proc_221_68_150DB10(global_56)
  loc_E3DED5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DE78
  'Data Table: 531BC0
  loc_E3DE68: Proc_5_0_110649C(&HFF, Me)
  loc_E3DE70: Call Proc_221_68_150DB10(global_56)
  loc_E3DE75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DE18
  'Data Table: 531BC0
  loc_E3DE08: Proc_5_0_110649C(&HFF, Me)
  loc_E3DE10: Call Proc_221_68_150DB10(global_56)
  loc_E3DE15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E7E9D0
  'Data Table: 531BC0
  Dim var_8C As TextBox
  loc_E7E986: Set var_88 = Me.Txt
  loc_E7E98C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_8C)
  loc_E7E9A2: var_9C = "Order Booking"
  loc_E7E9B8: Call Proc_221_69_13368D8(var_8C.Text, "W")
  loc_E7E9CD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E7E948
  'Data Table: 531BC0
  Dim Me As Recordset15
  loc_E7E8E3: Me.Requery -1
  loc_E7E8F3: Me.Requery -1
  loc_E7E903: Me.Requery -1
  loc_E7E914: If (global_116 = 6) Then
  loc_E7E922:   Me.Requery -1
  loc_E7E927: End If
  loc_E7E932: Me.Requery -1
  loc_E7E942: Me.Requery -1
  loc_E7E947: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '19A9F94
  'Data Table: 531BC0
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_124 As String
  Dim var_EC As Variant
  Dim var_158 As Long
  Dim var_15C As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_16C As Double
  Dim unk_531BD6 As Connection15
  Dim var_17C As String
  Dim var_178 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_18C As String
  Dim var_CC As Variant
  Dim var_1A8 As Long
  Dim var_164 As String
  Dim var_1FC As String
  Dim var_1C8 As Variant
  Dim var_230 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_174 As Variant
  Dim var_2D0 As Variant
  Dim var_320 As Variant
  Dim var_340 As Variant
  Dim var_360 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_184 As MSHFlexGrid
  Dim var_430 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_188 As Variant
  Dim var_4C0 As Variant
  Dim var_510 As Variant
  Dim var_530 As Variant
  Dim var_1A0 As MSHFlexGrid
  Dim var_BDC As Double
  Dim var_5E8 As Variant
  Dim var_BE4 As Double
  Dim var_6F8 As Variant
  Dim var_78C As Variant
  Dim var_810 As MSHFlexGrid
  Dim var_820 As Variant
  Dim var_8A4 As MSHFlexGrid
  Dim var_9EC As MSHFlexGrid
  Dim var_B24 As Variant
  Dim var_204 As String
  Dim var_220 As String
  Dim var_19C As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_310 As Variant
  Dim var_380 As Variant
  Dim var_3B0 As Variant
  Dim var_440 As Variant
  Dim var_470 As Variant
  Dim var_4E0 As Variant
  Dim var_500 As Variant
  Dim var_574 As Variant
  Dim var_62C As Variant
  Dim var_63C As Variant
  Dim var_64C As Variant
  Dim var_6A4 As Variant
  Dim var_708 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_830 As Variant
  Dim var_9A8 As Variant
  Dim var_A2C As Variant
  Dim var_A6C As Variant
  Dim var_B48 As Variant
  Dim var_B78 As Variant
  Dim var_B88 As Variant
  Dim var_BAC As String
  Dim var_240 As Variant
  Dim var_2C0 As Variant
  Dim var_650 As MSHFlexGrid
  Dim var_420 As Variant
  Dim var_654 As MSHFlexGrid
  Dim var_B20 As Variant
  Dim var_BD0 As MSHFlexGrid
  Dim var_BF0 As TextBox
  Dim var_C18 As Recordset15
  Dim var_C1C As Fields15
  Dim var_BCC As Variant
  Dim var_98 As Recordset15
  Dim var_674 As Variant
  Dim var_C4 As Double
  Dim var_B28 As String
  Dim var_CE0 As Double
  Dim var_A1C As Variant
  Dim var_AAC As Variant
  Dim var_CE4 As Long
  Dim Me As Recordset15
  Dim var_CE8 As Long
  loc_19A71F8: On Error Goto loc_19A9EE3
  loc_19A71FB: var_DC = 1
  loc_19A7204: var_FC = 1
  loc_19A7233: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_19A7257:   MsgBox("Please Fill Payment Details Before Saving..", &H40, "Save Data", var_144, var_154)
  loc_19A7267:   Exit Sub
  loc_19A7268: End If
  loc_19A727A: If (global_116 = 6) Then
  loc_19A7281:   Set var_15C = Me.FGrid1
  loc_19A7297:   var_16C = Val(CStr(var_15C.Tag))
  loc_19A72C0:   var_164 = POSAdvanceDepDialog.AdvType
  loc_19A72E5:   If ((CDbl(Val(CStr(Me.FGrid.Tag))) <> CDbl(var_16C)) And (var_164 <> "AD")) Then
  loc_19A72EE:     var_DC = "Bill Sattlement..."
  loc_19A72F3:     var_134 = var_DC
  loc_19A7305:     var_124 = "Bill Amount and Received Amount Not Matched" & vbCrLf
  loc_19A7328:     If (MsgBox(CVar(var_124 & "Are you want save?"), &H14, var_134, var_144, var_154) = 7) Then
  loc_19A732B:       Exit Sub
  loc_19A732C:     End If
  loc_19A732C:   End If
  loc_19A732C: End If
  loc_19A7330: var_86 = CByte(0) 'Byte
  loc_19A733D: unk_531BD6.BeginTrans var_170
  loc_19A7346: var_86 = CByte(1) 'Byte
  loc_19A7368: Set var_110 = Me.Txt
  loc_19A736E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayChargeH Where Docid='", var_19C, -1)
  loc_19A7397: Set var_174 = Me.Txt
  loc_19A739D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164, var_16C & var_124 & "' AND VNo=")
  loc_19A73A5: var_158 = var_178.Text
  loc_19A73C3: Set var_184 = Me.Txt
  loc_19A73C9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A73D8: Proc_6_7_F25D88(var_134, CVar(var_188))
  loc_19A73EE: unk_531BD6.Execute CStr(CVar(var_FC & var_164 & " AND VDate=") & var_134), var_DC, 
  loc_19A743C: Set var_110 = Me.Txt
  loc_19A7442: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "Delete From PayCharge Where Docid='")
  loc_19A744A: var_19C = var_15C.Text
  loc_19A7453: var_160 = -1 & var_124
  loc_19A745A: var_17C = var_16C & var_124 & "' AND VNo="
  loc_19A746B: Set var_174 = Me.Txt
  loc_19A7471: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164)
  loc_19A7479: var_17C = var_178.Text
  loc_19A7497: Set var_184 = Me.Txt
  loc_19A749D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A74AC: Proc_6_7_F25D88(var_134, CVar(var_188))
  loc_19A74C2: unk_531BD6.Execute CStr(CVar(var_15C.Text & var_164 & " AND VDate=") & var_134), , 
  loc_19A7517: For var_1A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_AA = var_1A4 'Integer
  loc_19A7521:   var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7526:   var_FC = 2
  loc_19A7555:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_19A755C:     var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A7561:     var_FC = 8
  loc_19A7587:     var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A7591:     var_CC = (var_CC + var_16C)
  loc_19A75A3:     var_1A8 = global_116
  loc_19A75AF:     If (var_1A8 = 6) Then
  loc_19A75B6:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A75BB:       var_FC = 2
  loc_19A75EA:       If (CStr(Me.FGrid.TextMatrix)) = "Cheque") Then
  loc_19A7621:         var_17C = "Adv.Recd.Agnst.BillNo." & CStr(Val(CStr(Right(global_100, 8)))) & " Chq."
  loc_19A7628:         var_EC = CVar(CLng(var_AA)) 'Long
  loc_19A7655:         var_1FC = CVar(CLng(&HD)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_19A765C:         var_1C8 = CVar(CLng(var_AA)) 'Long
  loc_19A766D:         Set var_15C = Me.FGrid
  loc_19A7682:         var_94 = CVar(CLng(&HE)) & CStr(var_15C.TextMatrix))
  loc_19A76AB:       Else
  loc_19A76AF:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A76B7:         var_FC = CVar(CLng(&HF)) 'Long
  loc_19A76D9:         var_94 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), var_FC, var_DC, var_1C8, var_1FC, var_EC, var_17C, var_FC)
  loc_19A76E6:       End If
  loc_19A76FC:       If (POSAdvanceDepDialog.AdvType = "AD") Then
  loc_19A7703:         Set var_110 = Me.TopCtrl1
  loc_19A7709:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DC)
  loc_19A7711:         var_124 = CStr(var_1A8)
  loc_19A7722:         If (var_124 = "Add") Then
  loc_19A772B:           Call Proc_221_72_117CAB8(MemVar_1F92044, var_124, var_CC, var_16C)
  loc_19A7736:           global_100 = var_124
  loc_19A773D:         End If
  loc_19A7750:         var_120 = Right(global_100, 8)
  loc_19A7761:         var_16C = Val(CStr(var_120))
  loc_19A7772:         var_134 = Trim(global_104)
  loc_19A7782:         Set var_110 = Me.Txt
  loc_19A7788:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_19A7797:         Proc_6_7_F25D88(var_240, CVar(var_15C), var_FC)
  loc_19A77C8:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A77D0:         var_1F8 = CVar(CLng(&H11)) 'Long
  loc_19A77EF:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A77F4:         var_340 = &H15
  loc_19A7801:         Set var_178 = Me.FGrid
  loc_19A7817:         var_3F0 = CVar(CLng(var_AA)) 'Long
  loc_19A781C:         var_410 = 1
  loc_19A783F:         var_480 = CVar(CLng(var_AA)) 'Long
  loc_19A7851:         Set var_188 = Me.FGrid
  loc_19A7857:         var_4C0 = var_188.TextMatrix)
  loc_19A7892:         var_BDC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A78C4:         var_BE4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A78D2:         Set var_650 = Me.Txt
  loc_19A78D8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_654, var_BE4, &H12, CVar(CLng(var_AA)), var_BDC, 8)
  loc_19A78E7:         Proc_6_39_E7C810(var_674, CVar(var_654), CVar(CLng(var_AA)), var_4C0, 2)
  loc_19A7907:         var_6F8 = Me.FGrid.TextMatrix)
  loc_19A792E:         var_78C = Me.FGrid.TextMatrix)
  loc_19A7955:         var_820 = Me.FGrid.TextMatrix)
  loc_19A7976:         Set var_8A4 = Me.FGrid
  loc_19A798D:         Proc_6_7_F25D88(var_8D4, CVar(CStr(var_8A4.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_820, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_78C)
  loc_19A79BF:         Proc_6_17_EAA2B0(var_978, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A79F0:         Proc_6_7_F25D88(var_A1C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_6F8)
  loc_19A7A00:         Proc_183_7_EB0C44(var_AAC, MemVar_1F920EC, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_19A7A13:         Set var_B20 = Me.Txt
  loc_19A7A19:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B24, var_B28)
  loc_19A7A21:         var_480 = var_B24.Tag
  loc_19A7A3A:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A7A48:         var_164 = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_19A7A9E:         var_220 = var_164 & "'" & global_100 & "'," & CStr(var_AA) & ",'" & global_124 & "'," & CStr(var_16C) & ",'" & MemVar_1F92070
  loc_19A7AC4:         var_260 = CVar(var_220 & "','") & var_134 & "'," & var_240 & ",'" 
  loc_19A7AF6:         var_380 = var_260 & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_178.TextMatrix))) 
  loc_19A7B45:         var_574 = var_380 & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_4C0)) & "'," & CVar(var_BDC) 
  loc_19A7B9A:         var_7AC = var_574 & "," & CVar(var_BE4) & "," & vbNullString & var_674 & ",'" & CVar(CStr(var_6F8)) & "','" & CVar(CStr(var_78C)) 
  loc_19A7BF1:         var_A6C = var_7AC & "','" & CVar(CStr(var_820)) & "'," & var_8D4 & "," & var_978 & "," & var_A1C & ",'" & CVar(MemVar_1F920C8) 
  loc_19A7C3D:         var_B88 = var_A6C & "'," & var_AAC & ",'A','" & CVar(global_52) & "','" & CVar(var_B28) & "',0,'" & CVar(MemVar_1F92078) 
  loc_19A7C54:         unk_531BD6.Execute CStr(var_B88 & "')"), var_BCC, -1
  loc_19A7D60:         Set var_110 = Me.Txt
  loc_19A7D66:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_164)
  loc_19A7D6E:         var_BD0 = var_15C.Text
  loc_19A7DA1:         var_18C = "UPDATE HallSale1 SET Advance=" & CStr(var_CC) & " WHERE BookDocId='" & var_164 & "'"
  loc_19A7DAA:         unk_531BD6.Execute var_18C, var_120, -1
  loc_19A7DD8:         Set var_110 = Me.Txt
  loc_19A7DDE:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_15C, var_164)
  loc_19A7DE6:         var_174 = var_15C.Text
  loc_19A7DF6:         Set var_174 = Me.Txt
  loc_19A7DFC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_178)
  loc_19A7E0B:         Proc_6_7_F25D88(var_134, CVar(var_178))
  loc_19A7E1E:         Set var_184 = Me.Txt
  loc_19A7E24:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_188, var_18C)
  loc_19A7E2C:         var_430 = var_188.Text
  loc_19A7E51:         var_17C = "UPDATE HallBook SET Advance=" & CStr(var_CC) & ",RectNo="
  loc_19A7E78:         var_240 = CVar(var_17C & var_164 & ",rectDate=") & var_134 & " WHERE DocId='" & CVar(var_18C) 
  loc_19A7E8F:         unk_531BD6.Execute CStr(var_240 & "'"), var_260, -1
  loc_19A7ECA:       Else
  loc_19A7ED0:         global_124 = "IDC"
  loc_19A7EDA:         POSAdvanceDepDialog.AdvType = "IDC"
  loc_19A7EED:         Set var_110 = Me.Txt
  loc_19A7EF3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_17C)
  loc_19A7EFB:         var_1A0 = var_15C.Text
  loc_19A7F0E:         Set var_174 = Me.Txt
  loc_19A7F14:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178)
  loc_19A7F3C:         Set var_184 = Me.Txt
  loc_19A7F42:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A7F51:         Proc_6_7_F25D88(var_240, CVar(var_188))
  loc_19A7F82:         var_1B8 = CVar(CLng(var_AA)) 'Long
  loc_19A7F8A:         var_1D8 = CVar(CLng(&H11)) 'Long
  loc_19A7FA9:         var_2C0 = CVar(CLng(var_AA)) 'Long
  loc_19A7FAE:         var_320 = &H15
  loc_19A7FD1:         var_3B0 = CVar(CLng(var_AA)) 'Long
  loc_19A7FD6:         var_3F0 = 1
  loc_19A7FF9:         var_420 = CVar(CLng(var_AA)) 'Long
  loc_19A8011:         var_4C0 = Me.FGrid.TextMatrix)
  loc_19A804C:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A806B:         var_5E8 = Me.FGrid.TextMatrix)
  loc_19A807E:         var_BDC = Val(CStr(var_5E8))
  loc_19A808C:         Set var_810 = Me.Txt
  loc_19A8092:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_8A4, var_BDC, &H12, CVar(CLng(var_AA)), var_16C, 8)
  loc_19A80A1:         Proc_6_39_E7C810(var_674, CVar(var_8A4), CVar(CLng(var_AA)), var_4C0, 2)
  loc_19A80C1:         var_6F8 = Me.FGrid.TextMatrix)
  loc_19A80E8:         var_78C = Me.FGrid.TextMatrix)
  loc_19A8109:         Set var_B20 = Me.FGrid
  loc_19A810F:         var_820 = var_B20.TextMatrix)
  loc_19A8147:         Proc_6_7_F25D88(var_8D4, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_820, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_78C)
  loc_19A8179:         Proc_6_17_EAA2B0(var_978, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A81AA:         Proc_6_7_F25D88(var_A1C, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_6F8)
  loc_19A81BA:         Proc_183_7_EB0C44(var_AAC, MemVar_1F920EC, CVar(CLng(9)), CVar(CLng(var_AA)))
  loc_19A81CD:         Set var_BEC = Me.Txt
  loc_19A81D3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BF0, var_B28)
  loc_19A81DB:         var_420 = var_BF0.Tag
  loc_19A81F6:         var_B78 = 0
  loc_19A8215:         unk_531BD6.Execute "SELECT NCUR FROM Enviro", var_C14, -1
  loc_19A821D:         var_C18 = var_C18.Fields
  loc_19A8225:         var_B78 = var_C1C.Item(var_C1C)
  loc_19A8234:         Proc_6_7_F25D88(var_C40, CVar(var_C20), var_C20)
  loc_19A824D:         var_124 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A825B:         var_164 = var_124 & "FPNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,SettleDate,LogSite_Code) Values ("
  loc_19A827C:         var_204 = var_164 & "'" & var_17C & "'," & CStr(var_AA)
  loc_19A82B6:         var_154 = CVar(var_204 & ",'" & global_124 & "'," & var_178.Text & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_19A82F6:         var_310 = var_154 & "'," & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_19A8331:         var_470 = var_310 & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" 
  loc_19A8386:         var_6A4 = var_470 & CVar(CStr(var_4C0)) & "'," & CVar(var_16C) & "," & CVar(var_BDC) & "," & vbNullString & var_674 & ",'" 
  loc_19A83B6:         var_830 = CVar(CStr(var_820)) 'String
  loc_19A83E2:         var_9A8 = var_6A4 & CVar(CStr(var_6F8)) & "','" & CVar(CStr(var_78C)) & "','" & var_830 & "'," & var_8D4 & "," & var_978 & "," 
  loc_19A83FC:         var_A6C = var_9A8 & var_A1C & ",'" & CVar(MemVar_1F920C8) 
  loc_19A8449:         var_BCC = var_A6C & "'," & var_AAC & ",'A','" & CVar(global_52) & "','" & CVar(var_B28) & "'," & CVar(CStr(Me.FGrid1.Tag)) 
  loc_19A8479:         var_BAC = CStr(var_BCC & "," & var_C40 & ",'" & CVar(MemVar_1F92078) & "')")
  loc_19A8483:         unk_531BD6.Execute var_BAC, var_CB0, -1
  loc_19A85A1:       End If
  loc_19A85A5:       var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A85AA:       var_FC = 2
  loc_19A85B7:       Set var_110 = Me.FGrid
  loc_19A85BD:       var_120 = var_110.TextMatrix)
  loc_19A85D9:       If (CStr(var_120) = "Room") Then
  loc_19A8607:         unk_531BD6.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_19A8612:         Set var_98 = var_110
  loc_19A8638:         If (var_98.RecordCount > 0) Then
  loc_19A8667:           var_15C = var_98.Fields.Item("TaxStru")
  loc_19A8677:           var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_19A867B:           var_FC = "' Order by Sno"
  loc_19A8680:           var_144 = var_134 & var_FC 
  loc_19A8684:           var_124 = CStr(var_144)
  loc_19A868E:           unk_531BD6.Execute var_124, var_154, -1
  loc_19A8699:           Set var_A0 = var_174
  loc_19A86B6:         Else
  loc_19A86CF:           MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_19A86E5:           unk_531BD6.RollbackTrans
  loc_19A86EA:           Exit Sub
  loc_19A86EB:         End If
  loc_19A86FF:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_174, Me.Txt, var_FC)
  loc_19A8707:         var_DC = var_15C.Text
  loc_19A871A:         Set var_174 = Me.Txt
  loc_19A8720:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_204, var_CB4)
  loc_19A8728:         var_B88 = var_178.Text
  loc_19A8748:         Set var_184 = Me.Txt
  loc_19A874E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A875D:         Proc_6_7_F25D88(var_240, CVar(var_188))
  loc_19A878E:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A8793:         var_1F8 = 1
  loc_19A87B6:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A87BB:         var_340 = 2
  loc_19A8809:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A8828:         var_470 = Me.FGrid.TextMatrix)
  loc_19A883F:         Proc_183_7_EB0C44(var_5E8, MemVar_1F920EC, var_470, &H17, CVar(CLng(var_AA)), var_16C, 8, CVar(CLng(var_AA)))
  loc_19A8858:         var_160 = "Insert Into PayChargeH (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_19A885F:         var_164 = var_160 & var_124
  loc_19A88A6:         var_144 = CVar(var_164 & "'," & CStr(var_AC) & ",'" & global_124 & "'," & var_204 & ",'" & MemVar_1F92070 & "','") 'String
  loc_19A88E2:         var_2D0 = var_144 & Trim(CVar(Me.LblVPrefix)) & "'," & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(var_94) 
  loc_19A891E:         var_440 = var_2D0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(var_16C) 
  loc_19A8970:         var_62C = var_440 & "," & CVar(CStr(var_470)) & ",'','',0,''," & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_5E8 & ",'A','" 
  loc_19A89A7:         unk_531BD6.Execute CStr(var_62C & CVar(global_52) & "','" & CVar(MemVar_1F92078) & "')"), var_6A4, -1
  loc_19A8A43:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8A48:         var_FC = &H13
  loc_19A8A66:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_19A8A73:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8A78:         var_FC = &H13
  loc_19A8ABA:         var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_19A8ACF:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8AD4:         var_FC = &H17
  loc_19A8AFC:         var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A8B0C:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8B11:         var_FC = &H13
  loc_19A8B4D:         var_B0 = CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 3, 5))
  loc_19A8B62:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8B67:         var_FC = 8
  loc_19A8B97:         var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A8BA3:       End If
  loc_19A8BA6:     Else
  loc_19A8BAF:       If (var_1A8 = 5) Then
  loc_19A8BB6:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8BBB:         var_FC = 2
  loc_19A8BD9:         var_124 = CStr(Me.FGrid.TextMatrix))
  loc_19A8BEA:         If (var_124 = "Cheque") Then
  loc_19A8BFE:           Set var_110 = Me.Txt
  loc_19A8C04:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_15C, var_124, "Recd.Agnst.OrderNo. ", var_FC, var_DC, var_C4)
  loc_19A8C0C:           var_16C = var_15C.Text
  loc_19A8C2D:           Set var_174 = Me.Txt
  loc_19A8C33:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_164, var_FC & var_124 & ", R.No. ", var_DC)
  loc_19A8C3B:           var_120 = var_178.Text
  loc_19A8C4B:           var_18C = var_FC & var_164 & " Chq."
  loc_19A8C52:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8C7F:           var_204 = CVar(CLng(&HD)) & CStr(Me.FGrid.TextMatrix)) & " Dt."
  loc_19A8C86:           var_1B8 = CVar(CLng(var_AA)) 'Long
  loc_19A8CAC:           var_94 = CVar(CLng(&HE)) & CStr(Me.FGrid.TextMatrix))
  loc_19A8CDF:         Else
  loc_19A8CE3:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A8D0D:           var_94 = Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), var_DC, var_1B8, var_204)
  loc_19A8D1A:         End If
  loc_19A8D1E:         Set var_110 = Me.TopCtrl1
  loc_19A8D24:         Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_DC)
  loc_19A8D2C:         var_124 = CStr(var_18C)
  loc_19A8D3D:         If (var_124 = "Add") Then
  loc_19A8D46:           Call Proc_221_72_117CAB8(MemVar_1F92044, var_124)
  loc_19A8D51:           global_100 = var_124
  loc_19A8D58:         End If
  loc_19A8D6B:         var_120 = Right(global_100, 8)
  loc_19A8D7C:         var_16C = Val(CStr(var_120))
  loc_19A8D9D:         Set var_110 = Me.Txt
  loc_19A8DA3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_16C)
  loc_19A8DB2:         Proc_6_7_F25D88(var_240, CVar(var_15C))
  loc_19A8DE3:         var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A8DEB:         var_1F8 = CVar(CLng(&H11)) 'Long
  loc_19A8DF4:         Set var_174 = Me.FGrid
  loc_19A8E0A:         var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A8E0F:         var_340 = &H15
  loc_19A8E1C:         Set var_178 = Me.FGrid
  loc_19A8E32:         var_3F0 = CVar(CLng(var_AA)) 'Long
  loc_19A8E37:         var_410 = 1
  loc_19A8E5A:         var_480 = CVar(CLng(var_AA)) 'Long
  loc_19A8E5F:         var_4A0 = 2
  loc_19A8E6C:         Set var_188 = Me.FGrid
  loc_19A8E82:         var_510 = CVar(CLng(var_AA)) 'Long
  loc_19A8E87:         var_530 = 8
  loc_19A8ECC:         var_5E8 = Me.FGrid.TextMatrix)
  loc_19A8EDF:         var_BE4 = Val(CStr(var_5E8))
  loc_19A8EE6:         var_63C = CVar(CLng(var_AA)) 'Long
  loc_19A8EFD:         var_64C = Me.FGrid.TextMatrix)
  loc_19A8F24:         var_6A4 = Me.FGrid.TextMatrix)
  loc_19A8F4B:         var_738 = Me.FGrid.TextMatrix)
  loc_19A8F83:         Proc_6_7_F25D88(var_830, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_738, CVar(CLng(&HD)), CVar(CLng(var_AA)), var_6A4)
  loc_19A8FB5:         Proc_6_17_EAA2B0(var_8D4, CVar(CStr(Me.FGrid.TextMatrix))), &H18, CVar(CLng(var_AA)), CVar(CLng(&HA)), CVar(CLng(var_AA)))
  loc_19A8FE6:         Proc_6_7_F25D88(var_978, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_64C)
  loc_19A9019:         var_CE0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A9027:         Proc_183_7_EB0C44(var_A6C, MemVar_1F920EC, var_CE0, CVar(CLng(&HC)), CVar(CLng(var_AA)))
  loc_19A903A:         Set var_9EC = Me.Txt
  loc_19A9040:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_B20, var_BAC, CVar(CLng(9)))
  loc_19A9048:         var_63C = var_B20.Tag
  loc_19A9061:         var_124 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime, " & "GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,AmtCr,TipAmt,"
  loc_19A906F:         var_164 = var_124 & "CardNo,CardHolder,ChqNo,ChqDate,TxnNo," & "ExpDate,BatchNo,U_Name,U_EntDt,U_AE,RestCode,ContraDociD,BillAmount,LogSite_Code) Values ("
  loc_19A909A:         var_204 = var_164 & "'" & global_100 & "'," & CStr(var_AA) & ",'"
  loc_19A90DB:         var_19C = CVar(var_204 & global_124 & "'," & CStr(var_16C) & ",'" & MemVar_1F92070 & "','") & Trim(global_104) & "'," 
  loc_19A911D:         var_380 = var_19C & var_240 & ",'" & CVar(Format$(Time, "HH:mm")) & "','','" & CVar(CStr(var_174.TextMatrix))) & "','" & CVar(CStr(var_178.TextMatrix))) 
  loc_19A9161:         var_500 = var_380 & "','" & CVar(var_94) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_188.TextMatrix))) & "'," 
  loc_19A91A8:         var_708 = var_500 & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_BE4) & ",'" & CVar(CStr(var_64C)) & "','" & CVar(CStr(var_6A4)) 
  loc_19A9213:         var_A2C = var_708 & "','" & CVar(CStr(var_738)) & "'," & var_830 & "," & var_8D4 & "," & var_978 & "," & CVar(var_CE0) & ",'" & CVar(MemVar_1F920C8) 
  loc_19A925F:         var_B48 = var_A2C & "'," & var_A6C & ",'A','" & CVar(global_52) & "','" & CVar(var_BAC) & "',0,'" & CVar(MemVar_1F92078) 
  loc_19A9276:         unk_531BD6.Execute CStr(var_B48 & "')"), var_B88, -1
  loc_19A938F:         Proc_6_7_F25D88(var_120, MemVar_1F920EC, "UPDATE PackingOrder SET AdvAmt=P1.AmtCr,U_EntDt=", var_240, -1)
  loc_19A93B2:         Set var_110 = Me.Txt
  loc_19A93B8:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_15C, var_124, var_174 & var_120 & " From (SELECT ContraDocId,Sum(AmtCr) As AmtCr FROM PayCharge Where ContraDocid='")
  loc_19A93C0:         var_B24 = var_15C.Tag
  loc_19A93C8:         var_154 = CVar(var_124) 'String
  loc_19A93E2:         unk_531BD6.Execute CStr(var_BE4 & var_154 & "' Group By ContraDocid) P1 WHERE PackingOrder.Docid=P1.ContraDocid"), &H12, CVar(CLng(var_AA))
  loc_19A9408:         var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A940D:         var_FC = 2
  loc_19A941A:         Set var_110 = Me.FGrid
  loc_19A9420:         var_120 = var_110.TextMatrix)
  loc_19A943C:         If (CStr(var_120) = "Room") Then
  loc_19A946A:           unk_531BD6.Execute "SELECT * FROM REVMAST WHERE CODE='" & MemVar_1F92078 & "TOUT" & "'", var_120, -1
  loc_19A9475:           Set var_98 = var_110
  loc_19A949B:           If (var_98.RecordCount > 0) Then
  loc_19A94CA:             var_15C = var_98.Fields.Item("TaxStru")
  loc_19A94DA:             var_134 = "Select * from taxstru where Code='" & var_15C.Value 
  loc_19A94E3:             var_144 = var_134 & "' Order by Sno" 
  loc_19A94E7:             var_124 = CStr(var_144)
  loc_19A94F1:             unk_531BD6.Execute var_124, var_154, -1
  loc_19A94FC:             Set var_A0 = var_174
  loc_19A9519:           Else
  loc_19A9532:             MsgBox("System Defined Revenue is not defined", 0, var_134, var_144, var_154)
  loc_19A9548:             unk_531BD6.RollbackTrans
  loc_19A954D:             Exit Sub
  loc_19A954E:           End If
  loc_19A955C:           Set var_110 = Me.Txt
  loc_19A9562:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, var_174)
  loc_19A956A:           var_110 = var_15C.Text
  loc_19A957D:           Set var_174 = Me.Txt
  loc_19A9583:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_178, var_204)
  loc_19A958B:           var_FC = var_178.Text
  loc_19A95AB:           Set var_184 = Me.Txt
  loc_19A95B1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_188)
  loc_19A95C0:           Proc_6_7_F25D88(var_240, CVar(var_188))
  loc_19A95DC:           var_280 = "HH:mm"
  loc_19A95F1:           var_1D8 = CVar(CLng(var_AA)) 'Long
  loc_19A95F6:           var_1F8 = 1
  loc_19A9603:           Set var_1A0 = Me.FGrid
  loc_19A9619:           var_320 = CVar(CLng(var_AA)) 'Long
  loc_19A961E:           var_340 = 2
  loc_19A966C:           var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_19A968B:           var_470 = Me.FGrid.TextMatrix)
  loc_19A96A2:           Proc_183_7_EB0C44(var_5E8, MemVar_1F920EC, var_470, &H17, CVar(CLng(var_AA)), var_16C, 8, CVar(CLng(var_AA)))
  loc_19A96BB:           var_160 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,Comments,PayCode,PayType,AmtCr,AmtDr,FPNo,CardNo,CardHolder,BookNo,BookType,U_Name,U_EntDt,U_AE,RestCode,LOGSITE_CODE)Values " & "('"
  loc_19A96D5:           var_18C = var_160 & var_124 & "'," & CStr(var_AC)
  loc_19A970F:           var_154 = CVar(var_18C & ",'" & global_124 & "'," & var_204 & ",'" & MemVar_1F92070 & "','") & Trim(CVar(Me.LblVPrefix)) 
  loc_19A9759:           var_360 = var_154 & "'," & var_240 & ",'" & CVar(Format$(Time, var_280)) & "','','" & CVar(var_94) & "','" & CVar(CStr(var_1A0.TextMatrix))) 
  loc_19A979E:           var_4E0 = var_360 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "',0," & CVar(var_16C) & "," & CVar(CStr(var_470)) & ",'','',0,''," 
  loc_19A97F3:           var_674 = var_4E0 & vbNullString & "'" & CVar(MemVar_1F920C8) & "'," & var_5E8 & ",'A','" & CVar(global_52) & "','" & CVar(MemVar_1F92078) 
  loc_19A980A:           unk_531BD6.Execute CStr(var_674 & "')"), var_6A4, -1
  loc_19A98A6:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A98AB:           var_FC = &H13
  loc_19A98C9:           var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_19A98D6:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A98DB:           var_FC = &H13
  loc_19A991D:           var_B8 = CStr(LTrim(Left(CVar(CStr(Me.FGrid.TextMatrix))), 2)))
  loc_19A9932:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A9937:           var_FC = &H17
  loc_19A995F:           var_BC = CStr(Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A996F:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A9974:           var_FC = &H13
  loc_19A99A1:           var_134 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_19A99B0:           var_B0 = CStr(Mid(var_134, 3, 5))
  loc_19A99C5:           var_DC = CVar(CLng(var_AA)) 'Long
  loc_19A99CA:           var_FC = 8
  loc_19A99FA:           var_C4 = (var_C4 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_19A9A06:         End If
  loc_19A9A06:       End If
  loc_19A9A06:     End If
  loc_19A9A06:   End If
  loc_19A9A09: Next var_1A4 'Integer
  loc_19A9A24: If (POSAdvanceDepDialog.AdvType = "AD") Then
  loc_19A9A35:   Set var_110 = Me.Txt
  loc_19A9A3B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_15C)
  loc_19A9A53:   Set var_174 = Me.Txt
  loc_19A9A59:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_19A9A68:   Proc_6_7_F25D88(var_134, CVar(var_178))
  loc_19A9A7B:   Set var_184 = Me.Txt
  loc_19A9A81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_188)
  loc_19A9ACC:   var_240 = CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & ",advance=" & CVar(var_CC) & " where Docid='" 
  loc_19A9AD3:   var_250 = CVar(var_188.Tag) 'String
  loc_19A9AED:   unk_531BD6.Execute CStr(var_240 & var_250 & "'"), var_280, -1
  loc_19A9B23: End If
  loc_19A9B27: Set var_110 = Me.TopCtrl1
  loc_19A9B2D: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1A0)
  loc_19A9B46: If (CStr(var_178) = "Add") Then
  loc_19A9B5D:   var_124 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_19A9B83:   var_144 = CVar(var_124 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_124 & "' And VP.Date_From<=") 'String
  loc_19A9B94:   Set var_110 = Me.Txt
  loc_19A9B9A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_15C, var_18C, var_144)
  loc_19A9BA2:   var_230 = var_15C.Text
  loc_19A9BB0:   Proc_6_7_F25D88(var_134, CVar(var_18C))
  loc_19A9BB8:   var_154 = -1 & var_134 
  loc_19A9BCF:   unk_531BD6.Execute CStr(CVar("Update hallbook set rectno=" & var_15C.Text & ",RectDate=") & var_134 & " Order By VP.Date_From DESC"), var_174, 
  loc_19A9BDA:   Set var_90 = var_174
  loc_19A9C1B:   If (Me.Recordset15.RecordCount > 0) Then
  loc_19A9C32:     var_124 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F92070
  loc_19A9C50:     var_DC = "V_Type"
  loc_19A9C67:     var_15C = Me.Recordset15.Fields.Item(var_DC)
  loc_19A9C77:     var_144 = CVar(var_124 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_15C.Value 
  loc_19A9C80:     var_154 = var_144 & "' and Date_From=" 
  loc_19A9CAD:     Proc_6_7_F25D88(var_230, CVar(Me.Recordset15.Fields.Item("Date_From")), var_154)
  loc_19A9CC3:     unk_531BD6.Execute CStr(var_250 & var_230), -1, var_184
  loc_19A9CF1:   End If
  loc_19A9CF1: End If
  loc_19A9D03: Me.FGrid.Tag = CVar(CStr(0))
  loc_19A9D14: unk_531BD6.CommitTrans
  loc_19A9D1F: var_CE4 = global_116
  loc_19A9D2B: If (var_CE4 = 6) Then
  loc_19A9D2E: End If
  loc_19A9D33: Set var_98 = Nothing
  loc_19A9D3B: Set var_9C = Nothing
  loc_19A9D43: Set var_A0 = Nothing
  loc_19A9D4B: Set var_A4 = Nothing
  loc_19A9D5F: If (OpenMode = 2) Then
  loc_19A9D68:   var_124 = POSAdvanceDepDialog.AdvType
  loc_19A9D78:   If (var_124 <> "AD") Then
  loc_19A9D7B:     Call Proc_221_64_11FC67C(var_CE4)
  loc_19A9D83:   Else
  loc_19A9D90:     Me.Global.Unload Me
  loc_19A9D98:     Exit Sub
  loc_19A9D99:   End If
  loc_19A9D99: End If
  loc_19A9D9D: var_86 = CByte(0) 'Byte
  loc_19A9DAC: Me.Requery -1
  loc_19A9DBC: Me.Requery -1
  loc_19A9DC7: var_CE8 = global_116
  loc_19A9DD3: If (var_CE8 = 6) Then
  loc_19A9DE1:   Me.Requery -1
  loc_19A9DE6: End If
  loc_19A9E05: Set var_110 = Me.Txt
  loc_19A9E0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_15C, var_124, "SearchCode='")
  loc_19A9E13: 0 = var_15C.Text
  loc_19A9E2C: Me.Find 1 & var_124 & "'", var_DC, var_CE8
  loc_19A9E56: var_124 = "INI"
  loc_19A9E64: Call Proc_221_65_F71E6C(Proc_5_1_100CB50(var_124, Me))
  loc_19A9E6F: Call Proc_221_70_FB6D50(global_56)
  loc_19A9E74: Call Proc_221_68_150DB10()
  loc_19A9E8A: If (OpenMode = 1) Then
  loc_19A9E98:   var_134 = "Payment Entry..."
  loc_19A9EC4:   If (MsgBox("Print Recpt.", &H24, var_134, var_144, var_154) = 6) Then
  loc_19A9EC7:     Call TopCtrl1_UnknownEvent_14()
  loc_19A9ECC:   End If
  loc_19A9ED9:   Me.Global.Unload Me
  loc_19A9EE1:   Exit Sub
  loc_19A9EE2: End If
  loc_19A9EE2: Exit Sub
  loc_19A9EE3: ' Referenced from: 19A71F8
  loc_19A9EEC: If (CInt(var_86) = 1) Then
  loc_19A9EF5:   unk_531BD6.RollbackTrans
  loc_19A9EFA: End If
  loc_19A9F02: Set var_110 = Err()
  loc_19A9F08: Call 0.Method_arg_2C (var_124)
  loc_19A9F21: MsgBox(CVar(var_124), &H10, var_134, var_144, var_154)
  loc_19A9F34: Exit Sub
  loc_19A9F3E: If (CInt(var_86) = 1) Then
  loc_19A9F47:   unk_531BD6.RollbackTrans
  loc_19A9F4C: End If
  loc_19A9F6D: MsgBox("Please Check Party Account.", &H10, "Payment Entry...", var_144, var_154)
  loc_19A9F8A: Me.Global.Unload Me
  loc_19A9F92: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '15DB2C0
  'Data Table: 531BC0
  Dim var_AC As String
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim var_D4 As String
  Dim var_CC As Variant
  Dim var_D8 As String
  Dim unk_531BD6 As Connection15
  Dim var_94 As Recordset15
  Dim var_EC As Variant
  Dim var_98 As Variant
  Dim var_F8 As Variant
  Dim var_F0 As Variant
  Dim var_A8 As Variant
  Dim var_8E As Integer
  Dim var_108 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_140 As Variant
  Dim var_120 As Variant
  Dim var_1D4 As Variant
  Dim var_180 As Variant
  Dim var_110 As MSHFlexGrid
  Dim var_8C As Double
  Dim var_1F0 As Long
  Dim Me As Recordset15
  loc_15D9F88: Set var_98 = Me.TopCtrl1
  loc_15D9F8E: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15D9FA7: If (CStr() = "Add") Then
  loc_15D9FB0:   var_B0 = global_116
  loc_15D9FBC:   If (var_B0 = 6) Then
  loc_15D9FD3:     var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_15D9FE1:     var_B8 = var_AC & " ST.TipAmt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.ContraDOCId," & " CC.Name as CompName,CompCode"
  loc_15D9FEF:     var_C0 = var_B8 & " FROM ((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)" & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)"
  loc_15DA004:     var_D4 = var_C0 & " LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_15DA015:     Set var_98 = Me.Txt
  loc_15DA01B:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_CC, var_D0, var_D4)
  loc_15DA023:     var_A8 = var_CC.Text
  loc_15DA02C:     var_D8 = -1 & var_D0
  loc_15DA03C:     unk_531BD6.Execute var_D8 & "' And AmtCr>0", var_F0, var_B0
  loc_15DA047:     Set var_94 = var_F0
  loc_15DA072:   Else
  loc_15DA07B:     If (var_B0 = 5) Then
  loc_15DA092:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_15DA099:       var_B4 = var_AC & " ST.TipAmt, Cast(Substring(ST.ContraDocId,14,8) As int) As FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_15DA0A7:       var_BC = var_B4 & " CC.Name as CompName,CompCode" & " FROM ((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_15DA0C3:       var_D4 = var_BC & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " LEFT JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode where ST.Docid='"
  loc_15DA0D4:       Set var_98 = Me.Txt
  loc_15DA0DA:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_CC, var_D0, var_D4)
  loc_15DA0E2:       var_A8 = var_CC.Text
  loc_15DA0EB:       var_D8 = -1 & var_D0
  loc_15DA0FB:       unk_531BD6.Execute var_D8 & "' And AmtCr>0", var_F0, 
  loc_15DA106:       Set var_94 = var_F0
  loc_15DA12E:     End If
  loc_15DA12E:   End If
  loc_15DA145:   If (var_94.RecordCount > 0) Then
  loc_15DA184:     Set var_F0 = Me.Txt
  loc_15DA18A:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8)
  loc_15DA192:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15DA1DC:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_15DA229:     Set var_F0 = Me.Txt
  loc_15DA22F:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(1), var_F8)
  loc_15DA237:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("VNo").Value)
  loc_15DA289:     Set var_F0 = Me.Txt
  loc_15DA28F:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(2), var_F8)
  loc_15DA297:     var_F8.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_15DA2E8:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_15DA335:     Set var_F0 = Me.Txt
  loc_15DA33B:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(9), var_F8)
  loc_15DA343:     var_F8.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_15DA390:     Set var_F0 = Me.Txt
  loc_15DA396:     Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DA39E:     var_F8.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_15DA3B2:   End If
  loc_15DA3C1:   Me.FGrid.Redraw = False
  loc_15DA3D6:   Set var_98 = Me.FGrid
  loc_15DA3DC:   var_98.Rows = 1
  loc_15DA3E6:   var_8E = 1
  loc_15DA400:   If (Me.var_98.RecordCount > 0) Then
  loc_15DA403:     ' Referenced from: 15DAC09
  loc_15DA415:     If Not(Me.Recordset15.EOF) Then
  loc_15DA418:       var_EC = vbNullString
  loc_15DA422:       Set var_98 = Me.FGrid
  loc_15DA437:       Set var_110 = Me.FGrid
  loc_15DA43E:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA443:       var_130 = 0
  loc_15DA47A:       var_150 = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_15DA481:       LateIdCallSt
  loc_15DA4D4:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_110, var_150)) 'String
  loc_15DA4DB:       LateIdCallSt
  loc_15DA4F1:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA4F6:       var_130 = 1
  loc_15DA52D:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_15DA534:       LateIdCallSt
  loc_15DA587:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_110, var_150, 3, CVar(CLng(var_8E)))) 'String
  loc_15DA58E:       LateIdCallSt
  loc_15DA5DB:       Proc_6_39_E7C810(var_150, CVar(Me.Recordset15.Fields.Item("FPNo")), &H17, CVar(CLng(var_8E)), var_110, var_150)
  loc_15DA5E4:       var_170 = CVar(CStr(var_150)) 'String
  loc_15DA5EB:       LateIdCallSt
  loc_15DA63D:       var_140 = 0
  loc_15DA672:       unk_531BD6.Execute CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'"), var_180, -1
  loc_15DA67A:       var_F0 = var_F0.Fields
  loc_15DA682:       var_140 = var_F8.Item(var_F8)
  loc_15DA693:       var_1D4 = CVar(Proc_6_38_E68A98(CVar(var_184), var_184, CVar(CLng(7)), CVar(CLng(var_8E)), var_110)) 'String
  loc_15DA69A:       LateIdCallSt
  loc_15DA6E2:       var_120 = CVar(CLng(var_8E)) 'Long
  loc_15DA6E7:       var_140 = 8
  loc_15DA718:       var_180 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_15DA71F:       LateIdCallSt
  loc_15DA739:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_15DA73E:       var_120 = 8
  loc_15DA74A:       var_A8 = var_110.TextMatrix)
  loc_15DA767:       var_8C = (var_8C + Val(CStr(var_A8)))
  loc_15DA774:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA77C:       var_130 = CVar(CLng(9)) 'Long
  loc_15DA7AF:       var_150 = CVar(CStr(Me.var_A8.Fields.Item("CardNo").Value)) 'String
  loc_15DA7B6:       LateIdCallSt
  loc_15DA7D0:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA7D8:       var_130 = CVar(CLng(&HA)) 'Long
  loc_15DA80B:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_15DA812:       LateIdCallSt
  loc_15DA864:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_15DA86B:       LateIdCallSt
  loc_15DA8B9:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_110, var_150, var_110)) 'String
  loc_15DA8C0:       LateIdCallSt
  loc_15DA90F:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H18, CVar(CLng(var_8E)), var_110, var_150)) 'String
  loc_15DA916:       LateIdCallSt
  loc_15DA92C:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA934:       var_130 = CVar(CLng(&HD)) 'Long
  loc_15DA967:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_15DA96E:       LateIdCallSt
  loc_15DA9C0:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_15DA9C7:       LateIdCallSt
  loc_15DA9DD:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DA9E5:       var_130 = CVar(CLng(&HF)) 'Long
  loc_15DAA18:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_15DAA1F:       LateIdCallSt
  loc_15DAA71:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_110, var_150, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_15DAA78:       LateIdCallSt
  loc_15DAA8E:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DAA96:       var_130 = CVar(CLng(&H11)) 'Long
  loc_15DAAC9:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_15DAAD0:       LateIdCallSt
  loc_15DAB23:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H15, CVar(CLng(var_8E)), var_110, var_150, &H15, CVar(CLng(var_8E)))) 'String
  loc_15DAB2A:       LateIdCallSt
  loc_15DAB79:       var_150 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H16, CVar(CLng(var_8E)), var_110, var_150, var_110)) 'String
  loc_15DAB80:       LateIdCallSt
  loc_15DAB96:       var_108 = CVar(CLng(var_8E)) 'Long
  loc_15DAB9B:       var_130 = &H12
  loc_15DABD2:       var_150 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_15DABD9:       LateIdCallSt
  loc_15DABF1:       Set var_110 = Nothing 
  loc_15DABFB:       var_8E = (var_8E + 1)
  loc_15DAC04:       Me.Recordset15.MoveNext
  loc_15DAC09:       GoTo loc_15DA403
  loc_15DAC0C:     End If
  loc_15DAC1F:     Me.FGrid.FixedRows = 1
  loc_15DAC31:     var_A8 = Me.FGrid1.Tag
  loc_15DAC47:     var_150 = CVar(CStr((Val(CStr(var_A8)) + var_8C))) 'String
  loc_15DAC4F:     Set var_CC = Me.FGrid1
  loc_15DAC55:     var_CC.Tag = var_150
  loc_15DAC6E:   Else
  loc_15DAC74:     var_1F0 = global_116
  loc_15DAC80:     If (var_1F0 = 6) Then
  loc_15DACA6:       Call Proc_221_65_F71E6C(Proc_5_1_100CB50("ADD", Me, global_56, var_1F0, var_8E, var_110, var_150, var_130), var_108, var_110, var_150, var_150)
  loc_15DACBB:       Set var_98 = Me.FGrid
  loc_15DACCC:       Call Proc_221_66_F66B9C(FGrid.DispID_10000, vbNullString, var_110)
  loc_15DACDE:       Set var_98 = Me.Txt
  loc_15DACE4:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC, &HFF)
  loc_15DACEC:       var_CC.Enabled = var_150
  loc_15DAD03:       Set var_98 = Me.Lbl
  loc_15DAD09:       Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_CC, 0)
  loc_15DAD11:       var_CC.Visible = var_110
  loc_15DAD30:       Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_CC)
  loc_15DAD38:       var_CC.Visible = False
  loc_15DAD5B:       var_AC = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_15DAD84:       unk_531BD6.Execute var_AC & "' AND HallbOOK.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_A8, -1
  loc_15DAD95:       Set global_88 = Me.Txt
  loc_15DADC7:       If (Me.RecordCount <> 0) Then
  loc_15DADD0:         Call Proc_221_72_117CAB8(MemVar_1F92044, var_AC)
  loc_15DADED:         var_98 = Me.Fields
  loc_15DAE14:         Set var_F0 = Me.Txt
  loc_15DAE1A:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8, CStr(var_98.Item("Code").Value))
  loc_15DAE22:         var_F8.Text = var_98
  loc_15DAE74:         Set var_F0 = Me.Txt
  loc_15DAE7A:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DAE82:         var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15DAED4:         Set var_F0 = Me.Txt
  loc_15DAEDA:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DAEE2:         var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15DAF12:         var_CC = Me.Fields.Item("PartyName")
  loc_15DAF1A:         var_A8 = CVar(var_CC) 'Address
  loc_15DAF31:         Set var_F0 = Me.Txt
  loc_15DAF37:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_F8)
  loc_15DAF3F:         var_F8.Text = Proc_6_38_E68A98(var_A8)
  loc_15DAF5E:         Set var_98 = Me.Txt
  loc_15DAF64:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DAF6C:         var_CC.SetFocus
  loc_15DAF78:       End If
  loc_15DAF7B:     Else
  loc_15DAF84:       If (var_1F0 = 5) Then
  loc_15DAFAA:         Call Proc_221_65_F71E6C(Proc_5_1_100CB50("ADD", Me), global_56)
  loc_15DAFBF:         Set var_98 = Me.FGrid
  loc_15DAFD0:         Call Proc_221_66_F66B9C(FGrid.DispID_10000, vbNullString)
  loc_15DAFE2:         Set var_98 = Me.Txt
  loc_15DAFE8:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DAFF0:         var_CC.Enabled = True
  loc_15DB007:         Set var_98 = Me.Lbl
  loc_15DB00D:         Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_CC)
  loc_15DB015:         var_CC.Visible = False
  loc_15DB034:         Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(3), var_CC)
  loc_15DB03C:         var_CC.Visible = False
  loc_15DB05F:         var_AC = "SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName FROM PackingOrder PD WHERE PD.RestCode='" & global_52
  loc_15DB088:         unk_531BD6.Execute var_AC & "' AND PD.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_A8, -1
  loc_15DB099:         Set global_88 = Me.Txt
  loc_15DB0CB:         If (Me.RecordCount <> 0) Then
  loc_15DB0D4:           Call Proc_221_72_117CAB8(MemVar_1F92044, var_AC)
  loc_15DB0F1:           var_98 = Me.Fields
  loc_15DB118:           Set var_F0 = Me.Txt
  loc_15DB11E:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_F8, CStr(var_98.Item("Code").Value))
  loc_15DB126:           var_F8.Text = var_98
  loc_15DB178:           Set var_F0 = Me.Txt
  loc_15DB17E:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DB186:           var_F8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15DB1D8:           Set var_F0 = Me.Txt
  loc_15DB1DE:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(4), var_F8)
  loc_15DB1E6:           var_F8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15DB216:           var_CC = Me.Fields.Item("PartyName")
  loc_15DB235:           Set var_F0 = Me.Txt
  loc_15DB23B:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(5), var_F8)
  loc_15DB243:           var_F8.Text = Proc_6_38_E68A98(CVar(var_CC))
  loc_15DB262:           Set var_98 = Me.Txt
  loc_15DB268:           Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DB270:           var_CC.SetFocus
  loc_15DB27C:         End If
  loc_15DB27C:       End If
  loc_15DB27C:     End If
  loc_15DB27C:   End If
  loc_15DB28A:   Me.FGrid.Redraw = True
  loc_15DB297:   Set var_94 = Nothing
  loc_15DB2A5:   Set var_98 = Me.Txt
  loc_15DB2AB:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(6), var_CC)
  loc_15DB2B3:   var_CC.SetFocus
  loc_15DB2BF: End If
  loc_15DB2BF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1525224
  'Data Table: 531BC0
  Dim var_92 As Integer
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_8C As TextBox
  Dim var_B8 As Variant
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_88 As Frame
  loc_15242B2: Set var_88 = Me.Txt
  loc_15242B8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_15242C6: Proc_6_74_E226B0(var_8C)
  loc_15242D2: Call Proc_221_70_FB6D50(var_8C)
  loc_15242DA: var_92 = Index
  loc_15242E5: If (var_92 = CInt(6)) Then
  loc_1524308:   Set var_A0 = Me.Txt
  loc_152430E:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_A4)
  loc_1524329:   Set var_88 = Me.Txt
  loc_152432F:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_1524347:   var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_1524356:   Me.DGPayType.Top = var_B8
  loc_152438A:   Set var_88 = Me.Txt
  loc_1524390:   Call 0.Method_Txt_GotFocus0 (CInt(6), var_8C)
  loc_15243A4:   var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15243B3:   Me.DGPayType.Left = var_B8
  loc_15243DA:   If (Me.RecordCount > 0) Then
  loc_15243E8:     Set var_8C = Me.FGPoint
  loc_1524400:     Proc_6_137_1193554(Me.DGPayType, global_60, Index)
  loc_152440E:   End If
  loc_152445C:   Set var_88 = Me.Txt
  loc_1524462:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_152446A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1524482:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_1524485:     Exit Sub
  loc_1524486:   End If
  loc_1524493:   Set var_88 = Me.Txt
  loc_1524499:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15244A1:   var_D4 = var_8C.Text
  loc_15244B3:   var_B8 = "Name"
  loc_15244EE:   If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_15244F7:     Me.MoveFirst
  loc_152451A:     Set var_88 = Me.Txt
  loc_1524520:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_1524528:     0 = var_8C.Text
  loc_1524541:     Me.Find 1 & var_D4 & "'", var_B8, var_92
  loc_1524556:   End If
  loc_1524559: Else
  loc_1524561:   If (var_92 = CInt(&H11)) Then
  loc_152457B:     If (Me.RecordCount > 0) Then
  loc_1524589:       Set var_8C = Me.FGPoint
  loc_15245A1:       Proc_6_137_1193554(Me.DGEmp, global_68)
  loc_15245AF:     End If
  loc_15245FD:     Set var_88 = Me.Txt
  loc_1524603:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_152460B:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1524623:     If (Index Or (var_D4 = vbNullString)) Then
  loc_1524626:       Exit Sub
  loc_1524627:     End If
  loc_1524634:     Set var_88 = Me.Txt
  loc_152463A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524642:     var_D4 = var_8C.Text
  loc_1524654:     var_B8 = "Name"
  loc_152468F:     If CBool(CVar(var_D4) <> Me.Fields.Item(var_B8).Value) Then
  loc_1524698:       Me.MoveFirst
  loc_15246BB:       Set var_88 = Me.Txt
  loc_15246C1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name ='")
  loc_15246C9:       0 = var_8C.Text
  loc_15246E2:       Me.Find 1 & var_D4 & "'", var_B8, var_8C
  loc_15246F7:     End If
  loc_15246FA:   Else
  loc_1524702:     If (var_92 = CInt(5)) Then
  loc_1524725:       Set var_A0 = Me.Txt
  loc_152472B:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_A4)
  loc_1524746:       Set var_88 = Me.Txt
  loc_152474C:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_1524764:       var_B8 = CVar(((var_8C.Top + Me.FrRest.Top) + var_A4.Height)) 'Single
  loc_1524773:       Me.DGTable.Top = var_B8
  loc_15247A7:       Set var_88 = Me.Txt
  loc_15247AD:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_15247C1:       var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_15247D0:       Me.DGTable.Left = var_B8
  loc_15247F7:       If (Me.RecordCount > 0) Then
  loc_1524805:         Set var_8C = Me.FGPoint
  loc_152481D:         Proc_6_137_1193554(Me.DGTable, global_72)
  loc_152482B:       End If
  loc_1524879:       Set var_88 = Me.Txt
  loc_152487F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1524887:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152489F:       If (Index Or (var_D4 = vbNullString)) Then
  loc_15248A2:         Exit Sub
  loc_15248A3:       End If
  loc_15248B0:       Set var_88 = Me.Txt
  loc_15248B6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_15248BE:       var_D4 = var_8C.Text
  loc_15248C6:       var_F4 = CVar(var_D4) 'String
  loc_152490B:       If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_1524914:         Me.MoveFirst
  loc_1524939:         Set var_88 = Me.Txt
  loc_152493F:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1524947:         0 = var_8C.Text
  loc_1524955:         Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_152496B:         Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1524983:       End If
  loc_1524986:     Else
  loc_152498E:       If (var_92 = CInt(&HF)) Then
  loc_15249B1:         Set var_A0 = Me.Txt
  loc_15249B7:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A4)
  loc_15249D2:         Set var_88 = Me.Txt
  loc_15249D8:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_15249F0:         var_B8 = CVar(((var_8C.Top + Me.FrSendRoom.Top) + var_A4.Height)) 'Single
  loc_15249FF:         Me.DGRoom.Top = "Name ="
  loc_1524A33:         Set var_88 = Me.Txt
  loc_1524A39:         Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_8C)
  loc_1524A4D:         var_B8 = CVar((var_8C.Left + Me.FrSendRoom.Left)) 'Single
  loc_1524A5C:         Me.DGRoom.Left = "Name ="
  loc_1524A83:         If (Me.RecordCount > 0) Then
  loc_1524A91:           Set var_8C = Me.FGPoint
  loc_1524AA9:           Proc_6_137_1193554(Me.DGRoom, global_76)
  loc_1524AB7:         End If
  loc_1524B05:         Set var_88 = Me.Txt
  loc_1524B0B:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1524B13:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1524B2B:         If (Index Or (var_D4 = vbNullString)) Then
  loc_1524B2E:           Exit Sub
  loc_1524B2F:         End If
  loc_1524B3C:         Set var_88 = Me.Txt
  loc_1524B42:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524B4A:         var_D4 = var_8C.Text
  loc_1524B52:         var_F4 = CVar(var_D4) 'String
  loc_1524B6B:         var_90 = Me.Fields
  loc_1524B97:         If CBool(var_F4 <> var_90.Item("Name").Value) Then
  loc_1524BA0:           Me.MoveFirst
  loc_1524BC5:           Set var_88 = Me.Txt
  loc_1524BCB:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1524BD3:           0 = var_8C.Text
  loc_1524BE1:           Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_1524BF7:           Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1524C0F:         End If
  loc_1524C12:       Else
  loc_1524C1A:         If (var_92 = CInt(&H10)) Then
  loc_1524C2B:           Set var_8C = Me.Txt
  loc_1524C31:           Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_90)
  loc_1524C57:           var_B8 = CVar((Me.FrComp.Top + var_90.Height)) 'Single
  loc_1524C66:           Me.DGCompany.Top = "Name ="
  loc_1524CA8:           Set var_88 = Me.Txt
  loc_1524CAE:           Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_1524CC6:           var_B8 = CVar(((var_8C.Left + Me.FrRest.Left) + Me.FrComp.Left)) 'Single
  loc_1524CD5:           Me.DGCompany.Left = "Name ="
  loc_1524CFE:           If (Me.RecordCount > 0) Then
  loc_1524D0C:             Set var_8C = Me.FGPoint
  loc_1524D24:             Proc_6_137_1193554(Me.DGCompany, global_80)
  loc_1524D32:           End If
  loc_1524D80:           Set var_88 = Me.Txt
  loc_1524D86:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1524D8E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1524DA6:           If (Index Or (var_D4 = vbNullString)) Then
  loc_1524DA9:             Exit Sub
  loc_1524DAA:           End If
  loc_1524DB7:           Set var_88 = Me.Txt
  loc_1524DBD:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524DC5:           var_D4 = var_8C.Text
  loc_1524DCD:           var_F4 = CVar(var_D4) 'String
  loc_1524DEE:           var_A0 = Me.Fields.Item("Name")
  loc_1524E12:           If CBool(var_F4 <> var_A0.Value) Then
  loc_1524E1B:             Me.MoveFirst
  loc_1524E40:             Set var_88 = Me.Txt
  loc_1524E46:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_1524E4E:             0 = var_8C.Text
  loc_1524E5C:             Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_1524E72:             Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1524E8A:           End If
  loc_1524E8D:         Else
  loc_1524E95:           If (var_92 = CInt(7)) Then
  loc_1524EA7:             Set var_88 = Me.Txt
  loc_1524EAD:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524EB5:             var_8C.SelStart = 0
  loc_1524ECE:             Set var_88 = Me.Txt
  loc_1524ED4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524EEF:             Set var_90 = Me.Txt
  loc_1524EF5:             Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_1524EFD:             var_A0.SelLength = Len(var_8C.Text)
  loc_1524F13:           Else
  loc_1524F1B:             If (var_92 = CInt(8)) Then
  loc_1524F2D:               Set var_88 = Me.Txt
  loc_1524F33:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524F3B:               var_8C.SelStart = 0
  loc_1524F54:               Set var_88 = Me.Txt
  loc_1524F5A:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1524F62:               var_D4 = var_8C.Text
  loc_1524F75:               Set var_90 = Me.Txt
  loc_1524F7B:               Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_1524F83:               var_A0.SelLength = Len(var_D4)
  loc_1524F99:             Else
  loc_1524FA1:               If (var_92 = CInt(4)) Then
  loc_1524FB2:                 Set var_90 = Me.Txt
  loc_1524FB8:                 Call 0.Method_Txt_GotFocus0 (CInt(&HF), var_A0)
  loc_1524FE5:                 Set var_88 = Me.Txt
  loc_1524FEB:                 Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1525003:                 var_B8 = CVar(((var_8C.Top + var_A0.Height) + Me.FrRest.Top)) 'Single
  loc_1525012:                 Me.DGFPNo.Top = "Name ="
  loc_1525046:                 Set var_88 = Me.Txt
  loc_152504C:                 Call 0.Method_Txt_GotFocus0 (CInt(4), var_8C)
  loc_1525060:                 var_B8 = CVar((var_8C.Left + Me.FrRest.Left)) 'Single
  loc_152506F:                 Me.DGFPNo.Left = "Name ="
  loc_1525096:                 If (Me.RecordCount > 0) Then
  loc_15250A4:                   Set var_8C = Me.FGPoint
  loc_15250BC:                   Proc_6_137_1193554(Me.DGFPNo, global_88)
  loc_15250CA:                 End If
  loc_1525118:                 Set var_88 = Me.Txt
  loc_152511E:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4)
  loc_1525126:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_152513E:                 If (Index Or (var_D4 = vbNullString)) Then
  loc_1525141:                   Exit Sub
  loc_1525142:                 End If
  loc_152514F:                 Set var_88 = Me.Txt
  loc_1525155:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_152515D:                 var_D4 = var_8C.Text
  loc_1525165:                 var_F4 = CVar(var_D4) 'String
  loc_15251AA:                 If CBool(var_F4 <> Me.Fields.Item("Name").Value) Then
  loc_15251B3:                   Me.MoveFirst
  loc_15251D8:                   Set var_88 = Me.Txt
  loc_15251DE:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_D4, "Name =")
  loc_15251E6:                   0 = var_8C.Text
  loc_15251F4:                   Proc_6_17_EAA2B0(var_F4, CVar(var_D4), 1)
  loc_152520A:                   Me.Find CStr(var_C8 & var_F4), var_8C, 
  loc_1525222:                 End If
  loc_1525222:               End If
  loc_1525222:             End If
  loc_1525222:           End If
  loc_1525222:         End If
  loc_1525222:       End If
  loc_1525222:     End If
  loc_1525222:   End If
  loc_1525222: End If
  loc_1525222: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13C5480
  'Data Table: 531BC0
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
  loc_13C4B0B: var_88 = Shift
  loc_13C4B18: If (CLng(Shift) = &H1B) Then
  loc_13C4B1B:   Call Proc_221_70_FB6D50(var_88)
  loc_13C4B20:   Exit Sub
  loc_13C4B21: End If
  loc_13C4B24: var_8A = KeyCode
  loc_13C4B2F: If (var_8A = CInt(6)) Then
  loc_13C4B4F:   Set var_A4 = Me.FGPoint
  loc_13C4B5A:   Set var_A0 = Nothing
  loc_13C4B8C:   Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(6), global_60, Shift, 0)
  loc_13C4BFB:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C4C21:     Proc_6_138_106D6F8(Me.DGPayType, global_60, KeyCode, Me.FGPoint, 1)
  loc_13C4C2F:   End If
  loc_13C4C32: Else
  loc_13C4C3A:   If (var_8A = CInt(4)) Then
  loc_13C4C65:     Set var_A0 = Nothing
  loc_13C4C97:     Proc_6_69_134A198(Me.DGFPNo, Me.Txt, CInt(4), global_88, Shift, 0, 1)
  loc_13C4D06:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C4D0D:       Set var_A0 = Me.DGFPNo
  loc_13C4D2C:       Proc_6_138_106D6F8(var_A0, global_88, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_13C4D3A:     End If
  loc_13C4D3D:   Else
  loc_13C4D45:     If (var_8A = CInt(&H11)) Then
  loc_13C4DA2:       Proc_6_69_134A198(Me.DGEmp, Me.Txt, CInt(&H11), global_68, Shift, 0, 1, Nothing)
  loc_13C4E11:       If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C4E37:         Proc_6_138_106D6F8(Me.DGEmp, global_68, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C4E45:       End If
  loc_13C4E48:     Else
  loc_13C4E50:       If (var_8A = CInt(5)) Then
  loc_13C4EAD:         Proc_6_69_134A198(Me.DGTable, Me.Txt, CInt(5), global_72, Shift, 0, 1, Nothing)
  loc_13C4F1C:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C4F42:           Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C4F50:         End If
  loc_13C4F53:       Else
  loc_13C4F5B:         If (var_8A = CInt(&HF)) Then
  loc_13C4FB8:           Proc_6_69_134A198(Me.DGRoom, Me.Txt, CInt(&HF), global_76, Shift, 0, 1, Nothing)
  loc_13C5027:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C504D:             Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13C505B:           End If
  loc_13C505E:         Else
  loc_13C5066:           If (var_8A = CInt(&H10)) Then
  loc_13C5086:             Set var_A4 = Me.FGPoint
  loc_13C50C3:             Proc_6_69_134A198(Me.DGCompany, Me.Txt, CInt(&H10), global_80, Shift, 0, 1, Nothing)
  loc_13C5132:             If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_13C5139:               Set var_A0 = Me.DGCompany
  loc_13C5140:               Set var_94 = Me.FGPoint
  loc_13C5158:               Proc_6_138_106D6F8(var_A0, global_80, KeyCode, var_94, var_A4, 0)
  loc_13C5166:             End If
  loc_13C5169:           Else
  loc_13C5171:             If (var_8A = CInt(&H13)) Then
  loc_13C517E:               If (CLng(Shift) = &H2D) Then
  loc_13C5184:                 Call Proc_221_79_EE32B8(var_BC, 0, var_A0)
  loc_13C5196:                 Set var_90 = Me.Txt
  loc_13C519C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C51C0:                 Set var_90 = Me.Txt
  loc_13C51C6:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_94, var_BC)
  loc_13C51CE:                 0 = var_A4
  loc_13C51E1:                 Set var_A0 = Me.Txt
  loc_13C51E7:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4)
  loc_13C51EF:                 var_A4.SelStart = Len(var_BC)
  loc_13C5202:                 Exit Sub
  loc_13C5203:               End If
  loc_13C5203:             End If
  loc_13C5203:           End If
  loc_13C5203:         End If
  loc_13C5203:       End If
  loc_13C5203:     End If
  loc_13C5203:   End If
  loc_13C5203: End If
  loc_13C523A: var_EC = Me.DGRoom.Visible
  loc_13C5251: var_FC = Me.DGPayType.Visible
  loc_13C52AA: If ((((((CBool(Me.DGFPNo.Visible) = 0) And (CBool(Me.DGTable.Visible) = 0)) And (CBool(var_EC) = 0)) And (CBool(var_FC) = 0)) And (CBool(Me.DGEmp.Visible) = 0)) And (CBool(Me.DGCompany.Visible) = 0)) Then
  loc_13C52CD:   If (((CLng(Shift) = &H26) And (global_116 = 6)) And (KeyCode = CInt(6))) Then
  loc_13C52D0:     Exit Sub
  loc_13C52D1:   End If
  loc_13C52EF:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_13C52FC:     If (CLng(Shift) = &H28) Then
  loc_13C52FF:       Exit Sub
  loc_13C5300:     End If
  loc_13C5337:     If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C533A:       Call Proc_221_76_167AEC0(var_8A)
  loc_13C5341:       Shift = 0
  loc_13C5344:     End If
  loc_13C5344:     Exit Sub
  loc_13C5348:   Else
  loc_13C5366:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H13))) Then
  loc_13C5373:       If (CLng(Shift) = &H28) Then
  loc_13C5376:         Exit Sub
  loc_13C5377:       End If
  loc_13C53AE:       If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C53B1:         Call Proc_221_76_167AEC0(Shift)
  loc_13C53B8:         Shift = 0
  loc_13C53BB:       End If
  loc_13C53BB:       Exit Sub
  loc_13C53BF:     Else
  loc_13C53DD:       If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HF))) Then
  loc_13C53EA:         If (CLng(Shift) = &H28) Then
  loc_13C53ED:           Exit Sub
  loc_13C53EE:         End If
  loc_13C53FA:         Call Txt_Validate(CInt(&HF))
  loc_13C5436:         If (MsgBox("OK?", 4, "Save Detail", var_EC, var_FC) = 6) Then
  loc_13C5439:           Call Proc_221_76_167AEC0(0)
  loc_13C5440:           Shift = 0
  loc_13C5443:         End If
  loc_13C5443:         Exit Sub
  loc_13C5444:       End If
  loc_13C5444:     End If
  loc_13C5444:   End If
  loc_13C5459:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13C5462:     Proc_6_75_E527CC(Shift, arg_14)
  loc_13C5467:   End If
  loc_13C5471:   If (CLng(Shift) = &H26) Then
  loc_13C547A:     Proc_6_76_E52838(Shift, arg_14)
  loc_13C547F:   End If
  loc_13C547F: End If
  loc_13C547F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE7E10
  'Data Table: 531BC0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_EE7D52: If (arg_10 = &HD) Then
  loc_EE7D57:   arg_10 = 0
  loc_EE7D5A: End If
  loc_EE7D5D: Proc_6_58_E054C0(arg_10)
  loc_EE7D68: Proc_6_133_E7EF78(var_94, arg_10)
  loc_EE7D71: arg_10 = CInt(var_94)
  loc_EE7D7A: var_96 = KeyAscii
  loc_EE7D85: If Not (var_96 = CInt(7)) Then
  loc_EE7D90:   If (var_96 = CInt(8)) Then
  loc_EE7D93:   End If
  loc_EE7D9D:   Set var_9C = Me.Txt
  loc_EE7DA3:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_EE7DBE:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EE7DCD: Else
  loc_EE7DD5:   If (var_96 = CInt(&HC)) Then
  loc_EE7DE2:     Set var_9C = Me.Txt
  loc_EE7DE8:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 2)
  loc_EE7E03:     Proc_6_42_129A86C(var_A0, arg_10, 4)
  loc_EE7E0F:   End If
  loc_EE7E0F: End If
  loc_EE7E0F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1182F10
  'Data Table: 531BC0
  Dim var_86 As Integer
  loc_1182B2B: var_86 = KeyCode
  loc_1182B36: If (var_86 = CInt(6)) Then
  loc_1182B55:   If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_1182B69:     var_A4 = "Name"
  loc_1182B8D:     Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyCode, global_60)
  loc_1182BC3:     Proc_6_138_106D6F8(Me.DGPayType, global_60, KeyCode, Me.FGPoint)
  loc_1182BD1:   End If
  loc_1182BD4: Else
  loc_1182BDC:   If (var_86 = CInt(4)) Then
  loc_1182BFB:     If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_1182C0F:       var_A4 = "Name"
  loc_1182C33:       Proc_6_68_129FB34(Me.DGFPNo, Me.Txt, KeyCode, global_88, Shift)
  loc_1182C69:       Proc_6_138_106D6F8(Me.DGFPNo, global_88, KeyCode, Me.FGPoint)
  loc_1182C77:     End If
  loc_1182C7A:   Else
  loc_1182C82:     If (var_86 = CInt(&H11)) Then
  loc_1182CA1:       If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_1182CD9:         Proc_6_68_129FB34(Me.DGEmp, Me.Txt, KeyCode, global_68, Shift)
  loc_1182D0F:         Proc_6_138_106D6F8(Me.DGEmp, global_68, KeyCode, Me.FGPoint, "Name")
  loc_1182D1D:       End If
  loc_1182D20:     Else
  loc_1182D28:       If (var_86 = CInt(5)) Then
  loc_1182D47:         If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_1182D7F:           Proc_6_68_129FB34(Me.DGTable, Me.Txt, KeyCode, global_72, Shift)
  loc_1182DB5:           Proc_6_138_106D6F8(Me.DGTable, global_72, KeyCode, Me.FGPoint, "Name")
  loc_1182DC3:         End If
  loc_1182DC6:       Else
  loc_1182DCE:         If (var_86 = CInt(&HF)) Then
  loc_1182DED:           If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_1182E25:             Proc_6_68_129FB34(Me.DGRoom, Me.Txt, KeyCode, global_76, Shift)
  loc_1182E5B:             Proc_6_138_106D6F8(Me.DGRoom, global_76, KeyCode, Me.FGPoint, "Name")
  loc_1182E69:           End If
  loc_1182E6C:         Else
  loc_1182E74:           If (var_86 = CInt(&H10)) Then
  loc_1182E93:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_1182ECB:               Proc_6_68_129FB34(Me.DGCompany, Me.Txt, KeyCode, global_80, Shift)
  loc_1182F01:               Proc_6_138_106D6F8(Me.DGCompany, global_80, KeyCode, Me.FGPoint, "Name")
  loc_1182F0F:             End If
  loc_1182F0F:           End If
  loc_1182F0F:         End If
  loc_1182F0F:       End If
  loc_1182F0F:     End If
  loc_1182F0F:   End If
  loc_1182F0F: End If
  loc_1182F0F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46274
  'Data Table: 531BC0
  loc_E46252: Set var_88 = Me.Txt
  loc_E46258: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46266: Proc_6_73_E22704(var_8C)
  loc_E46272: Exit Sub
End Sub

Private Sub Txt_Click() 'DFB98C
  'Data Table: 531BC0
  Dim Txt_ClickFF As Integer
  loc_DFB988: Exit Sub
  loc_DFB989: Txt_ClickFF = 
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '143646C
  'Data Table: 531BC0
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim var_9C As String
  Dim var_BC As TextBox
  Dim var_D4 As String
  Dim var_D8 As TextBox
  Dim var_E0 As TextBox
  Dim var_B8 As MSHFlexGrid
  Dim var_13C As Double
  loc_1435997: var_8E = Cancel
  loc_14359A2: If (var_8E = CInt(1)) Then
  loc_14359B3:   Set var_94 = Me.Txt
  loc_14359B9:   Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_14359C1:   var_9C = var_98.Text
  loc_14359D8:   If (var_9C <> vbNullString) Then
  loc_14359E1:     Call Proc_221_72_117CAB8(MemVar_1F92044, var_9C)
  loc_14359EC:   Else
  loc_14359EE:     arg_10 = &HFF
  loc_14359F1:     Exit Sub
  loc_14359F2:   End If
  loc_14359F5: Else
  loc_14359FD:   If (var_8E = CInt(&HF)) Then
  loc_1435A4E:     Set var_94 = Me.Txt
  loc_1435A54:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1435A5C:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1435A74:     If (arg_10 Or (var_9C = vbNullString)) Then
  loc_1435A84:       Set var_94 = Me.Txt
  loc_1435A8A:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435A92:       var_98.Text = vbNullString
  loc_1435AAB:       Set var_94 = Me.Txt
  loc_1435AB1:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435AB9:       var_98.Tag = vbNullString
  loc_1435AC8:     Else
  loc_1435B03:       Set var_B8 = Me.Txt
  loc_1435B09:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435B11:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1435B44:       var_98 = Me.Fields.Item("Code")
  loc_1435B55:       var_9C = CStr(var_98.Value)
  loc_1435B62:       Set var_B8 = Me.Txt
  loc_1435B68:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435B70:       var_BC.Tag = var_9C
  loc_1435B86:     End If
  loc_1435B89:   Else
  loc_1435B91:     If (var_8E = CInt(4)) Then
  loc_1435BE2:       Set var_94 = Me.Txt
  loc_1435BE8:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_1435BF0:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1435C08:       If (var_8E Or (var_9C = vbNullString)) Then
  loc_1435C18:         Set var_94 = Me.Txt
  loc_1435C1E:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435C26:         var_98.Text = vbNullString
  loc_1435C3F:         Set var_94 = Me.Txt
  loc_1435C45:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435C4D:         var_98.Tag = vbNullString
  loc_1435C67:         Set var_94 = Me.Txt
  loc_1435C6D:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1435C75:         var_98.Text = vbNullString
  loc_1435C8F:         Set var_94 = Me.Txt
  loc_1435C95:         Call 0.Method_Txt_Validate0 (CInt(3), var_98)
  loc_1435C9D:         var_98.Tag = vbNullString
  loc_1435CAC:       Else
  loc_1435CE7:         Set var_B8 = Me.Txt
  loc_1435CED:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435CF5:         var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1435D46:         Set var_B8 = Me.Txt
  loc_1435D4C:         Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435D54:         var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1435D84:         var_98 = Me.Fields.Item("PartyName")
  loc_1435DA3:         Set var_B8 = Me.Txt
  loc_1435DA9:         Call 0.Method_Txt_Validate0 (CInt(5), var_BC)
  loc_1435DB1:         var_BC.Text = Proc_6_38_E68A98(CVar(var_98))
  loc_1435DC5:       End If
  loc_1435DC8:     Else
  loc_1435DD0:       If (var_8E = CInt(2)) Then
  loc_1435DE1:         Set var_94 = Me.Txt
  loc_1435DE7:         Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1435E0E:         Set var_B8 = Me.Txt
  loc_1435E14:         Call 0.Method_Txt_Validate0 (CInt(2), var_BC)
  loc_1435E1C:         var_BC.Text = Proc_6_34_14ECF20(var_98.Text)
  loc_1435E39:         Call Proc_221_72_117CAB8(MemVar_1F92044)
  loc_1435E4F:         Set var_94 = Me.Txt
  loc_1435E55:         Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1435E74:         If (var_98.Text = vbNullString) Then
  loc_1435E79:           arg_10 = &HFF
  loc_1435E7C:         End If
  loc_1435E7F:       Else
  loc_1435E87:         If Not (var_8E = CInt(&HE)) Then
  loc_1435E92:           If (var_8E = CInt(&HB)) Then
  loc_1435E95:           End If
  loc_1435E9F:           Set var_94 = Me.Txt
  loc_1435EA5:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435EC5:           Set var_BC = Me.Txt
  loc_1435ECB:           Call 0.Method_Txt_Validate0 (Cancel, var_D8)
  loc_1435ED3:           var_D8.Text = Proc_6_33_1512840(var_98, arg_10)
  loc_1435EE9:         Else
  loc_1435EF1:           If (var_8E = CInt(6)) Then
  loc_1435F01:             Set var_94 = Me.Txt
  loc_1435F07:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1435F26:             If (var_98.Text <> vbNullString) Then
  loc_1435F64:               Set var_B8 = Me.Txt
  loc_1435F6A:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435FC3:               Set var_B8 = Me.Txt
  loc_1435FC9:               Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1435FD1:               var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1436001:               var_98 = Me.Fields.Item("PayType")
  loc_1436012:               var_9C = Proc_6_38_E68A98(CVar(var_98))
  loc_1436018:               global_156 = var_9C
  loc_1436036:               Set var_94 = Me.Txt
  loc_143603C:               Call 0.Method_Txt_Validate0 (CInt(4), var_98, var_9C)
  loc_1436044:               "Recd.Agnst.OrderNo. " = var_98.Text
  loc_1436065:               Set var_B8 = Me.Txt
  loc_143606B:               Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_143608A:               Set var_D8 = Me.Txt
  loc_1436090:               Call 0.Method_Txt_Validate0 (CInt(&H13), var_E0)
  loc_1436098:               var_E0.Text = var_9C & var_9C & ", R.No. " & CStr(Me.Fields.Item("Name").Value)
  loc_14360C5:               Me.FrEmp.Visible = False
  loc_14360D9:               Me.FrTxnNo.Visible = False
  loc_14360ED:               Me.FrChqDet.Visible = False
  loc_1436101:               Me.FrCCDet.Visible = False
  loc_1436138:               Call Proc_221_75_1156D34(Proc_6_38_E68A98(CVar(Me.Fields.Item("PayType"))))
  loc_1436176:               var_B4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_1436188:               Set var_98 = Me.FGrid1
  loc_14361A7:               var_D4 = CStr((Val(CStr(var_98.TextMatrix))) - Val(CStr(Me.FGrid.Tag))))
  loc_14361B5:               Set var_BC = Me.Txt
  loc_14361BB:               Call 0.Method_Txt_Validate0 (CInt(7), var_D8, CStr(Me.Fields.Item("Name").Value))
  loc_14361C3:               var_D8.Text = 4
  loc_14361EA:             Else
  loc_14361F7:               Set var_94 = Me.Txt
  loc_14361FD:               Call 0.Method_Txt_Validate0 (Cancel, var_98, vbNullString)
  loc_1436205:               var_98.Text = var_B4
  loc_143621E:               Set var_94 = Me.Txt
  loc_1436224:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_143622C:               var_98.Tag = vbNullString
  loc_1436238:             End If
  loc_143623B:           Else
  loc_1436243:             If Not (var_8E = CInt(7)) Then
  loc_143624E:               If (var_8E = CInt(8)) Then
  loc_1436251:               End If
  loc_143625B:               Set var_94 = Me.Txt
  loc_1436261:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_143626D:               Proc_6_40_EA50F0(CVar(var_98))
  loc_143629C:               var_9C = CStr(Format(CVar(var_13C), "0.00"))
  loc_14362AA:               Set var_B8 = Me.Txt
  loc_14362B0:               Call 0.Method_Txt_Validate0 (Cancel, var_BC, var_9C)
  loc_14362B8:               var_BC.Text = 1
  loc_14362D7:             Else
  loc_14362DF:               If (var_8E = CInt(&H10)) Then
  loc_1436330:                 Set var_94 = Me.Txt
  loc_1436336:                 Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_143633E:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1436356:                 If (1 Or (var_9C = vbNullString)) Then
  loc_1436366:                   Set var_94 = Me.Txt
  loc_143636C:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1436374:                   var_98.Text = vbNullString
  loc_143638D:                   Set var_94 = Me.Txt
  loc_1436393:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_143639B:                   var_98.Tag = vbNullString
  loc_14363AA:                 Else
  loc_14363E5:                   Set var_B8 = Me.Txt
  loc_14363EB:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14363F3:                   var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1436444:                   Set var_B8 = Me.Txt
  loc_143644A:                   Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1436452:                   var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1436468:                 End If
  loc_1436468:               End If
  loc_1436468:             End If
  loc_1436468:           End If
  loc_1436468:         End If
  loc_1436468:       End If
  loc_1436468:     End If
  loc_1436468:   End If
  loc_1436468: End If
  loc_1436468: Exit Sub
End Sub

Private Sub Form_Load() '13C6834
  'Data Table: 531BC0
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_94 As Variant
  Dim var_C0 As String
  Dim var_D4 As String
  Dim unk_531BD6 As Connection15
  Dim var_90 As Recordset15
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E4 As Long
  Dim var_D8 As Variant
  Dim MemVar_1F92E80 As String
  Dim var_BC As Integer
  Dim var_F8 As Field20
  loc_13C5EC8: On Error Goto loc_13C67ED
  loc_13C5EE3: Proc_6_23_DFBA28(Me, 6195)
  loc_13C5EF1: var_9C = global_116
  loc_13C5EFD: If (var_9C = 6) Then
  loc_13C5F18:   Proc_6_23_DFBA28(Me, 7200, 6975)
  loc_13C5F23: Else
  loc_13C5F2C:   If (var_9C = 5) Then
  loc_13C5F47:     Proc_6_23_DFBA28(Me, 7200, 6975)
  loc_13C5F4F:   End If
  loc_13C5F4F: End If
  loc_13C5F59: Set var_94 = Me.TopCtrl1
  loc_13C5F5F: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_13C5F6D: Call 0.Method_arg_50 (var_C0, var_9C)
  loc_13C5F75: var_D0 = CVar(var_C0) 'String
  loc_13C5F7D: Set var_94 = Me.TopCtrl1
  loc_13C5F83: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_D0)
  loc_13C5F9F: global_124 = POSAdvanceDepDialog.AdvType
  loc_13C5FAD: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13C5FC0: Me.FrRest.BackColor = CLng(MemVar_1F921B0)
  loc_13C5FD6: Me.FrCCDet.BackColor = CLng(MemVar_1F921B0)
  loc_13C5FEC: Me.FrTxnNo.BackColor = CLng(MemVar_1F921B0)
  loc_13C6002: Me.FrChqDet.BackColor = CLng(MemVar_1F921B0)
  loc_13C6018: Me.FrComp.BackColor = CLng(MemVar_1F921B0)
  loc_13C602E: Me.FrEmp.BackColor = CLng(MemVar_1F921B0)
  loc_13C6044: Me.FrRem.BackColor = CLng(MemVar_1F921B0)
  loc_13C605A: Me.FrSendRoom.BackColor = CLng(MemVar_1F921B0)
  loc_13C6075: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13C608A: Set var_94 = Me.FGrid1
  loc_13C6090: var_94.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13C60BC: unk_531BD6.Execute "Select * from Enviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_D0, -1
  loc_13C60E6: var_94 = var_94.Fields
  loc_13C60F6: var_D0 = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_13C6110: If (Proc_6_38_E68A98(var_D0, var_94) = "Y") Then
  loc_13C6119:   global_172 = "Y"
  loc_13C611D: End If
  loc_13C6138: var_D4 = "SELECT Code,Name,PayType FROM RevMast Where (LogSite_Code='" & MemVar_1F92078 & "' OR LogSite_Code='HO') and FieldType='P' ORDER BY Name"
  loc_13C6141: unk_531BD6.Execute var_D4, var_D0, -1
  loc_13C6152: Set global_60 = var_94
  loc_13C6170: CVarUnk
  loc_13C6175: VerifyVarObj
  loc_13C6181: LateIdStAd
  loc_13C61B3: unk_531BD6.Execute "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' or LogSite_Code='HO') ORDER BY Name", var_D0, -1
  loc_13C61E2: CVarUnk
  loc_13C61E7: VerifyVarObj
  loc_13C61F3: LateIdStAd
  loc_13C6215: var_C0 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (T.LogSite_Code='" & MemVar_1F92078
  loc_13C622A: var_E0 = "SELECT Code,Name FROM Employee Where (LogSite_Code='" & MemVar_1F92078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F92078 & "')  and T.Type in ('HL') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_13C6233: unk_531BD6.Execute var_E0, var_D0, -1
  loc_13C6266: CVarUnk
  loc_13C626B: VerifyVarObj
  loc_13C6277: LateIdStAd
  loc_13C62A0: var_D4 = "Select SubCode as Code,Name From SubGroup where LogSite_Code in ('HO','" & MemVar_1F92078 & "') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_13C62A9: unk_531BD6.Execute var_D4, var_D0, -1
  loc_13C62D8: CVarUnk
  loc_13C62DD: VerifyVarObj
  loc_13C62E9: LateIdStAd
  loc_13C630B: var_C0 = "SELECT PD.DocId AS Code, PD.VNo AS Name,PD.CustName As PartyName,LogSite_Code,Site_Code FROM PackingOrder PD WHERE LogSite_Code='" & MemVar_1F92078
  loc_13C632C: unk_531BD6.Execute var_C0 & "' and RestCode='" & global_52 & "'", var_D0, -1
  loc_13C635F: CVarUnk
  loc_13C6364: VerifyVarObj
  loc_13C636A: Set var_94 = Me.DGFPNo
  loc_13C6370: LateIdStAd
  loc_13C638A: Call 0.Method_arg_38 (MemVar_1F923AC, var_94, Me.DGCompany, var_94, var_94, Me.DGRoom, var_94, var_94)
  loc_13C639B: Call 0.Method_arg_3C (MemVar_1F920EC, Me.DGEmp, var_94, var_94)
  loc_13C63AC: Call 0.Method_arg_54 (MemVar_1F9206C, Me.DGPayType, var_94)
  loc_13C63BD: Call 0.Method_arg_1C (MemVar_1F92070, var_94)
  loc_13C63CE: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_13C63DF: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_13C63F0: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_13C6401: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_13C6412: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_13C6423: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_13C643D: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_13C644B: Set var_94 = MemVar_1F92044
  loc_13C645A: Call 0.Method_Form_Load8 (var_94)
  loc_13C6470: Me.DGFPNo.Clone
  loc_13C648A: Call 0.Method_arg_50 (var_94, -1)
  loc_13C649C: var_E4 = global_116
  loc_13C64A8: If (var_E4 = 6) Then
  loc_13C64BF:   var_C0 = "SELECT Distinct Docid as SearchCode,PostDocId,LogSite_Code,Site_Code FROM PayChargeH Where LogSite_Code='" & MemVar_1F92078
  loc_13C64F9:   Me.Connection15.Execute var_C0 & "' And ContraDocId='" & POSAdvanceDepDialog.pDocId & "' AND Vtype='" & global_124 & "'", var_D0, -1
  loc_13C650A:   Set global_56 = var_94
  loc_13C652C: Else
  loc_13C6538:   If (global_112 = 1) Then
  loc_13C654F:     var_C0 = "SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge Where LogSite_Code='" & MemVar_1F92078
  loc_13C6589:     unk_531BD6.Execute var_C0 & "' And ContraDocId='" & POSAdvanceDepDialog.pDocId & "' And Vtype='" & global_124 & "'", var_D0, -1
  loc_13C659A:     Set global_56 = var_94
  loc_13C65BC:   Else
  loc_13C65D0:     var_C0 = "SELECT Distinct Docid as SearchCode,ContraDocId,LogSite_Code,Site_Code FROM PayCharge Where LogSite_Code='" & MemVar_1F92078
  loc_13C65F1:     unk_531BD6.Execute var_C0 & "' And Vtype='" & global_124 & "'", var_D0, -1
  loc_13C6602:     Set global_56 = var_94
  loc_13C661B:   End If
  loc_13C661B: End If
  loc_13C661E: MemVar_1F92E80 = "A**P"
  loc_13C6644: var_DC = "SELECT Param_Str AS UPrivilege,Module_Name FROM menuHelp WHERE UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_13C6665: unk_531BD6.Execute var_DC & "' AND OutletCode='" & global_52 & "' AND [Option]='Order Booking Advance'", var_D0, -1
  loc_13C6670: Set var_8C = var_94
  loc_13C669F: If (Me.Recordset15.RecordCount > 0) Then
  loc_13C66BF:   var_D8 = Me.Recordset15.Fields.Item("UPrivilege")
  loc_13C66C7:   var_D0 = var_D8.Value
  loc_13C66D0:   MemVar_1F92E80 = CStr(var_D0)
  loc_13C66DE: End If
  loc_13C66E4: var_BC = 0
  loc_13C6713: var_DC = "Select Count(*) From PackingOrderDetail Where DocId='" & POSAdvanceDepDialog.pDocId & "' And isnull(Contradocid,'')='' And IsNull(VoidYN,'')<>'Y'"
  loc_13C671C: unk_531BD6.Execute var_DC, var_D0, -1
  loc_13C672C: var_BC = var_D8.Item(var_D8)
  loc_13C6734: var_F8 = var_F8.Value
  loc_13C673F: Proc_6_39_E7C810(var_118, var_108, var_108, MemVar_1F92E80, var_94.Fields)
  loc_13C677E: If CBool((var_118 = 0) And (MemVar_1F920B8 <> 1)) Then
  loc_13C6784:   MemVar_1F92E80 = "***P"
  loc_13C6788: End If
  loc_13C6794: Set var_94 = Me
  loc_13C679D: var_C0 = "INI"
  loc_13C67AB: Call Proc_221_65_F71E6C(Proc_5_1_100CB50(var_C0, var_94, global_56, var_94), var_94)
  loc_13C67B6: Call Proc_221_67_12AC934(var_94)
  loc_13C67BB: Call Proc_221_73_11FFD98(var_E4)
  loc_13C67D4: If (global_112 = 2) Then
  loc_13C67D7:   Call Proc_221_68_150DB10(&HFF)
  loc_13C67DC: End If
  loc_13C67E1: Set var_8C = Nothing
  loc_13C67E9: Set var_90 = Nothing
  loc_13C67EC: Exit Sub
  loc_13C67ED: ' Referenced from: 13C5EC8
  loc_13C67F5: Set var_94 = Err()
  loc_13C67FB: Call 0.Method_arg_2C (var_C0)
  loc_13C681C: MsgBox(CVar(var_C0), &H40, "Information", var_118, var_138)
  loc_13C682F: Exit Sub
  loc_13C6830: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E82A78
  'Data Table: 531BC0
  loc_E82A13: Set global_72 = Nothing
  loc_E82A25: Set global_56 = Nothing
  loc_E82A37: Set global_60 = Nothing
  loc_E82A49: Set global_68 = Nothing
  loc_E82A5B: Set global_84 = Nothing
  loc_E82A6D: Set global_88 = Nothing
  loc_E82A74: Exit Sub
End Sub

Private Sub Form_Activate() '13490DC
  'Data Table: 531BC0
  Dim var_88 As Long
  Dim var_8C As String
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_531BD6 As Connection15
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D4 As TextBox
  Dim var_BC As Variant
  Dim var_D8 As Long
  Dim var_DC As Long
  Dim var_D0 As Variant
  Dim var_F4 As TextBox
  Dim var_100 As Long
  loc_13488F1: If (global_64 = &HFF) Then
  loc_13488F9:   global_64 = 0
  loc_13488FF: Else
  loc_13488FF:   Exit Sub
  loc_1348900: End If
  loc_1348906: var_88 = global_116
  loc_1348912: If (var_88 = 6) Then
  loc_134891B:   Call 0.Method_arg_1C0 (var_8C, var_88)
  loc_1348930:   If (CDbl(Val(var_8C)) > CDbl(0)) Then
  loc_1348951:     var_94 = "SELECT Distinct Docid as SearchCode,PostDocId,ContraDocId FROM PayChargeH Where Vtype='" & global_124 & "' AND ContraDocID='"
  loc_1348973:     unk_531BD6.Execute var_94 & POSAdvanceDepDialog.pDocId & "'", var_BC, -1
  loc_13489B6:     If (Me.RecordCount <= 0) Then
  loc_13489DC:       Call Proc_221_65_F71E6C(Proc_5_1_100CB50("ADD", Me, Me), Me)
  loc_13489E7:       Call Proc_221_66_F66B9C(global_64)
  loc_13489F9:       Set var_C0 = Me.Txt
  loc_13489FF:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348A07:       var_C4.Enabled = True
  loc_1348A1E:       Set var_C0 = Me.Lbl
  loc_1348A24:       Call 0.Method_Form_Activate0 (1, var_C4)
  loc_1348A2C:       var_C4.Visible = False
  loc_1348A4B:       Call 0.Method_Form_Activate0 (CInt(3), var_C4)
  loc_1348A53:       var_C4.Visible = False
  loc_1348A76:       var_8C = "SELECT HallBook.DocId AS Code, HallBook.VNo AS Name,HallBook.PartyName FROM HallBook WHERE HallBook.RestCode='" & global_52
  loc_1348A9F:       unk_531BD6.Execute var_8C & "' AND HallbOOK.Docid='" & POSAdvanceDepDialog.pDocId & "'", var_BC, -1
  loc_1348AB0:       Set global_88 = Me.Txt
  loc_1348AE2:       If (Me.RecordCount <> 0) Then
  loc_1348AEB:         Call Proc_221_72_117CAB8(MemVar_1F92044, var_8C)
  loc_1348B2F:         Set var_D0 = Me.Txt
  loc_1348B35:         Call 0.Method_Form_Activate0 (CInt(0), var_D4)
  loc_1348B3D:         var_D4.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1348B8F:         Set var_D0 = Me.Txt
  loc_1348B95:         Call 0.Method_Form_Activate0 (CInt(4), var_D4)
  loc_1348B9D:         var_D4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1348BEF:         Set var_D0 = Me.Txt
  loc_1348BF5:         Call 0.Method_Form_Activate0 (CInt(4), var_D4)
  loc_1348BFD:         var_D4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1348C2D:         var_C4 = Me.Fields.Item("PartyName")
  loc_1348C35:         var_BC = CVar(var_C4) 'Address
  loc_1348C4C:         Set var_D0 = Me.Txt
  loc_1348C52:         Call 0.Method_Form_Activate0 (CInt(5), var_D4)
  loc_1348C5A:         var_D4.Text = Proc_6_38_E68A98(var_BC)
  loc_1348C79:         Set var_C0 = Me.Txt
  loc_1348C7F:         Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348C87:         var_C4.SetFocus
  loc_1348C93:       End If
  loc_1348C96:     Else
  loc_1348C96:       Call Proc_221_68_150DB10(var_C0)
  loc_1348C9B:     End If
  loc_1348CA5:     Call 0.Method_arg_1C4 (CStr(0))
  loc_1348CB0:   Else
  loc_1348CE0:     var_98 = "SELECT Distinct Docid as SearchCode,PostDocId FROM PayChargeH Where Vtype='" & global_124 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId
  loc_1348CF0:     unk_531BD6.Execute var_98 & "'", var_BC, -1
  loc_1348D01:     Set global_56 = var_C0
  loc_1348D1C:   End If
  loc_1348D1F: Else
  loc_1348D28:   If (var_88 = 5) Then
  loc_1348D5B:     var_98 = "SELECT Distinct Docid as SearchCode,ContraDocId FROM PayCharge Where Vtype='" & global_124 & "' AND ContraDocID='" & POSAdvanceDepDialog.pDocId
  loc_1348D6B:     unk_531BD6.Execute var_98 & "'", var_BC, -1
  loc_1348D7C:     Set global_56 = var_C0
  loc_1348D97:   End If
  loc_1348D97: End If
  loc_1348DAE: If (OpenMode = 1) Then
  loc_1348DB4:   var_C8 = OpenType
  loc_1348DBC:   var_DC = var_C8
  loc_1348DC8:   If (var_DC = 6) Then
  loc_1348DD6:     Set var_C0 = Me.Txt
  loc_1348DDC:     Call 0.Method_Form_Activate0 (CInt(6), var_C4, var_DC)
  loc_1348DE4:     var_C4.SetFocus
  loc_1348DFE:     Set var_C0 = Me.Txt
  loc_1348E04:     Call 0.Method_Form_Activate0 (CInt(6), var_C4, var_C8)
  loc_1348E0C:     var_D8 = var_C4.Left
  loc_1348E1D:     Set var_D0 = Me.DGPayType
  loc_1348E23:     var_D0.Left = CVar(var_C8)
  loc_1348E3F:     Set var_C4 = Me.Txt
  loc_1348E45:     Call 0.Method_Form_Activate0 (CInt(6), var_D0, var_F0)
  loc_1348E4D:     var_C0 = var_D0.Top
  loc_1348E60:     Set var_D4 = Me.Txt
  loc_1348E66:     Call 0.Method_Form_Activate0 (CInt(6), var_F4)
  loc_1348E94:     var_AC = CVar((((Me.FrRest.Top + var_F0) + var_F4.Height) + CDbl(&HF))) 'Single
  loc_1348EA3:     Me.DGPayType.Top = CVar(Me.FrRest.Top)
  loc_1348EBA:   Else
  loc_1348EC3:     If (var_DC = 5) Then
  loc_1348ED2:       Set var_C0 = Me.Lbl
  loc_1348ED8:       Call 0.Method_Form_Activate0 (0, var_C4)
  loc_1348EE0:       var_C4.Caption = "Booking No."
  loc_1348EF7:       Set var_C0 = Me.Lbl
  loc_1348EFD:       Call 0.Method_Form_Activate0 (1, var_C4)
  loc_1348F05:       var_C4.Visible = False
  loc_1348F1E:       Set var_C0 = Me.Txt
  loc_1348F24:       Call 0.Method_Form_Activate0 (CInt(3), var_C4)
  loc_1348F2C:       var_C4.Visible = False
  loc_1348F46:       Set var_C0 = Me.Txt
  loc_1348F4C:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348F66:       If (var_C4.Enabled = &HFF) Then
  loc_1348F74:         Set var_C0 = Me.Txt
  loc_1348F7A:         Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348F82:         var_C4.SetFocus
  loc_1348F8E:       End If
  loc_1348F9C:       Set var_C0 = Me.Txt
  loc_1348FA2:       Call 0.Method_Form_Activate0 (CInt(6), var_C4)
  loc_1348FBB:       Set var_D0 = Me.DGPayType
  loc_1348FC1:       var_D0.Left = CVar(var_C4.Left)
  loc_1348FDD:       Set var_C4 = Me.Txt
  loc_1348FE3:       Call 0.Method_Form_Activate0 (CInt(6), var_D0)
  loc_1348FFE:       Set var_D4 = Me.Txt
  loc_1349004:       Call 0.Method_Form_Activate0 (CInt(6), var_F4)
  loc_1349018:       Set var_C0 = Me.FrRest
  loc_1349032:       var_AC = CVar((((var_C0.Top + var_D0.Top) + var_F4.Height) + CDbl(&HF))) 'Single
  loc_1349041:       Me.DGPayType.Top = CVar(var_C4.Left)
  loc_1349055:       Call Proc_221_68_150DB10(var_C0)
  loc_134905A:     End If
  loc_134905A:   End If
  loc_134905D: Else
  loc_1349066:   If (var_D8 = 2) Then
  loc_1349074:     var_100 = OpenType
  loc_1349080:     If (var_100 = 6) Then
  loc_1349099:       If (POSAdvanceDepDialog.AdvType <> "AD") Then
  loc_134909C:         Call Proc_221_80_1100C54(var_100)
  loc_13490A1:         Call Proc_221_64_11FC67C()
  loc_13490A6:         Exit Sub
  loc_13490A7:       End If
  loc_13490AA:     Else
  loc_13490B3:       If (var_100 = 5) Then
  loc_13490CC:         If (POSAdvanceDepDialog.AdvType <> "AD") Then
  loc_13490CF:           Call Proc_221_80_1100C54()
  loc_13490D4:           Call Proc_221_64_11FC67C()
  loc_13490D9:           Exit Sub
  loc_13490DA:         End If
  loc_13490DA:       End If
  loc_13490DA:     End If
  loc_13490DA:   End If
  loc_13490DA: End If
  loc_13490DA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F024C8
  'Data Table: 531BC0
  Dim var_B4 As DataGrid
  loc_F0240C: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_F02440:   Set var_B4 = Me.DGEmp
  loc_F02465:   If (((CBool(Me.DGTable.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) And (CBool(var_B4.Visible) = 0)) Then
  loc_F02475:     Me.var_B4.Unload Me
  loc_F0247D:     Exit Sub
  loc_F0247E:   End If
  loc_F0247E: End If
  loc_F0249C: If (((CLng(KeyCode) = &H53) And (Shift = 2)) And (global_112 = 1)) Then
  loc_F0249F:   Call Proc_221_76_167AEC0()
  loc_F024A4:   Call TopCtrl1_UnknownEvent_16()
  loc_F024A9:   Exit Sub
  loc_F024AA: End If
  loc_F024BE: Proc_6_88_FE81B4(Me, KeyCode)
  loc_F024C6: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F38024
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37F1B: Me.DGEmp.Visible = False
  loc_F37F3A: If (Me.RecordCount > 0) Then
  loc_F37F79:   Set var_B4 = Me.Txt
  loc_F37F7F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F37F87:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F37FBA:   var_B0 = Me.Fields.Item("Code")
  loc_F37FD9:   Set var_B4 = Me.Txt
  loc_F37FDF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F37FE7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F37FFD: End If
  loc_F38008: Set var_A8 = Me.Txt
  loc_F3800E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H11))
  loc_F38016: var_B0.SetFocus
  loc_F38022: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_1F 'EA34AC
  'Data Table: 531BC0
  Dim var_A8 As Variant
  loc_EA342C: Set var_88 = Me.DGEmp
  loc_EA3456: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA345E: Set var_BC = Me.DGEmp
  loc_EA349A: Proc_6_138_106D6F8(Me.DGEmp, global_68, CInt(&H11), Me.FGPoint)
  loc_EA34A8: Exit Sub
End Sub

Private Sub DGFPNo_UnknownEvent_9 'F49064
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F48F5B: Me.DGFPNo.Visible = False
  loc_F48F7A: If (Me.RecordCount > 0) Then
  loc_F48FB9:   Set var_B4 = Me.Txt
  loc_F48FBF:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F48FC7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F48FFA:   var_B0 = Me.Fields.Item("Code")
  loc_F49019:   Set var_B4 = Me.Txt
  loc_F4901F:   Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4), var_B8)
  loc_F49027:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4903D: End If
  loc_F49048: Set var_A8 = Me.Txt
  loc_F4904E: Call 0.Method_DGFPNo_UnknownEvent_90 (CInt(4))
  loc_F49056: var_B0.SetFocus
  loc_F49062: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'F356E4
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F355DB: Me.DGCompany.Visible = False
  loc_F355FA: If (Me.RecordCount > 0) Then
  loc_F35639:   Set var_B4 = Me.Txt
  loc_F3563F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F35647:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3567A:   var_B0 = Me.Fields.Item("Code")
  loc_F35699:   Set var_B4 = Me.Txt
  loc_F3569F:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10), var_B8)
  loc_F356A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F356BD: End If
  loc_F356C8: Set var_A8 = Me.Txt
  loc_F356CE: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&H10))
  loc_F356D6: var_B0.SetFocus
  loc_F356E2: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_1F 'EA37BC
  'Data Table: 531BC0
  Dim var_A8 As Variant
  loc_EA373C: Set var_88 = Me.DGCompany
  loc_EA3766: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA376E: Set var_BC = Me.DGCompany
  loc_EA37AA: Proc_6_138_106D6F8(Me.DGCompany, global_80, CInt(&H10), Me.FGPoint)
  loc_EA37B8: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED0C98
  'Data Table: 531BC0
  loc_ED0BFC: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_ED0BFF:   Call DGTable_UnknownEvent_9()
  loc_ED0C04: End If
  loc_ED0C20: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_ED0C23:   Call DGEmp_UnknownEvent_9()
  loc_ED0C28: End If
  loc_ED0C44: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_ED0C47:   Call DGPayType_UnknownEvent_9()
  loc_ED0C4C: End If
  loc_ED0C68: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_ED0C6B:   Call DGRoom_UnknownEvent_9()
  loc_ED0C70: End If
  loc_ED0C8C: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_ED0C8F:   Call DGCompany_UnknownEvent_9()
  loc_ED0C94: End If
  loc_ED0C94: Exit Sub
End Sub

Private Sub Del_Click() 'F9114C
  'Data Table: 531BC0
  Dim var_98 As Variant
  Dim var_A8 As Variant
  loc_F9100B: If (CLng(Me.FGrid.Row) >= 1) Then
  loc_F91045:   If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_E8, var_108) = 6) Then
  loc_F91067:     If (CLng(Me.FGrid.Rows) > 2) Then
  loc_F9107D:       var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F91086:       Set var_10C = Me.FGrid
  loc_F910A1:     Else
  loc_F910B4:       Me.FGrid.Rows = 1
  loc_F910D8:       var_98 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0))) 'String
  loc_F910E0:       Set var_10C = Me.FGrid
  loc_F9110D:       Me.FGrid.FixedRows = 1
  loc_F91115:     End If
  loc_F91115:   End If
  loc_F91118: Else
  loc_F91139:   MsgBox("No Entries To Delete", &H10, "Delete Module", var_E8, var_108)
  loc_F91149: End If
  loc_F91149: Exit Sub
End Sub

Public Function global_52Get() '533564
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '533573
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EC3FC4
  'Data Table: 531BC0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC3F3A: On Error Goto loc_EC3F7F
  loc_EC3F43: Me.MoveFirst
  loc_EC3F5D: var_8C = "Searchcode='" & MyValue
  loc_EC3F6D: Me.Find var_8C & "'", 0, 1
  loc_EC3F79: Call Proc_221_68_150DB10(var_A0)
  loc_EC3F7E: Exit Sub
  loc_EC3F7F: ' Referenced from: EC3F3A
  loc_EC3F87: Set var_A4 = Err()
  loc_EC3F8D: Call 0.Method_arg_2C (var_8C)
  loc_EC3FAE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC3FC1: Exit Sub
  loc_EC3FC2: Exit Sub
End Sub

Public Property Get OpenMode() 'E035C0
  'Data Table: 531BC0
  loc_E035B9: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E02120
  'Data Table: 531BC0
  loc_E0211A: global_112 = vNewValue
  loc_E0211D: Exit Sub
End Sub

Public Property Get OpenType() 'E05080
  'Data Table: 531BC0
  loc_E05079: OpenType = global_116
End Sub

Public Property Let OpenType(vNewValue) 'E02684
  'Data Table: 531BC0
  loc_E0267E: global_116 = vNewValue
  loc_E02681: Exit Sub
End Sub

Public Property Get AdvType() 'E0E1F4
  'Data Table: 531BC0
  loc_E0E1E8: var_88 = global_124
  loc_E0E1EB: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E11E6C
  'Data Table: 531BC0
  loc_E11E64: global_124 = vNewValue
  loc_E11E68: Exit Sub
End Sub

Public Property Get IdNo() 'E1288C
  'Data Table: 531BC0
  loc_E12880: var_88 = global_120
  loc_E12883: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E0EC5C
  'Data Table: 531BC0
  loc_E0EC54: global_120 = vNewValue
  loc_E0EC58: Exit Sub
End Sub

Public Property Get PersonCode() 'E0ED7C
  'Data Table: 531BC0
  loc_E0ED70: var_88 = global_132
  loc_E0ED73: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E0F2D4
  'Data Table: 531BC0
  loc_E0F2CC: global_132 = vNewValue
  loc_E0F2D0: Exit Sub
  loc_E0F2D1: StAryRecCopy
End Sub

Public Property Get pDocId() 'E0F43C
  'Data Table: 531BC0
  loc_E0F430: var_88 = global_128
  loc_E0F433: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E0F514
  'Data Table: 531BC0
  loc_E0F50C: global_128 = vNewValue
  loc_E0F510: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E0F55C
  'Data Table: 531BC0
  loc_E0F550: var_88 = global_136
  loc_E0F553: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0F5EC
  'Data Table: 531BC0
  loc_E0F5E4: global_136 = vNewValue
  loc_E0F5E8: Exit Sub
End Sub

Public Property Get PRoomCat() 'E0F9DC
  'Data Table: 531BC0
  loc_E0F9D0: var_88 = global_160
  loc_E0F9D3: PRoomCat = 
End Sub

Public Property Let PRoomCat(vNewValue) 'E0FAFC
  'Data Table: 531BC0
  loc_E0FAF4: global_160 = vNewValue
  loc_E0FAF8: Exit Sub
End Sub

Public Property Get PRoomtype() 'E0FE5C
  'Data Table: 531BC0
  loc_E0FE50: var_88 = global_164
  loc_E0FE53: PRoomtype = 
  loc_E0FE59: StAryRecCopy
End Sub

Public Property Let PRoomtype(vNewValue) 'E0FEEC
  'Data Table: 531BC0
  loc_E0FEE4: global_164 = vNewValue
  loc_E0FEE8: Exit Sub
End Sub

Public Property Get PBillAmt() 'E0FFC4
  'Data Table: 531BC0
  loc_E0FFBA: var_88 = CStr(global_140)
  loc_E0FFBD: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E10324
  'Data Table: 531BC0
  loc_E1031E: global_140 = CDbl(vNewValue)
  loc_E10321: Exit Sub
End Sub

Public Sub Proc_221_64_11FC67C
  'Data Table: 531BC0
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_531BD6 As Connection15
  Dim var_A8 As Variant
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_E4 As Variant
  Dim var_CC As Variant
  loc_11FC1E3: Me.FGrid1.Rows = 1
  loc_11FC1EB: var_98 = vbNullString
  loc_11FC1F5: Set var_AC = Me.FGrid1
  loc_11FC213: Set var_AC = Me.FGrid1
  loc_11FC219: var_AC.FixedRows = 1
  loc_11FC227: var_B0 = global_116
  loc_11FC233: If (var_B0 = 6) Then
  loc_11FC24A:   var_B4 = "SELECT max(H.DocId) AS DocId,max(H.BooKDocId) AS BookDocId,max(H.VNo) as FPNo,max(H.Party) AS Party, " & "max(H.VDate) AS FPDate,max(H.NetAmt-H.Advance) AS Amount,Sum(IsNull(P.AmtCr,0)) AS PaidAmount, "
  loc_11FC251:   var_B8 = var_B4 & "max(H.NetAmt-H.Advance) - IsNull(Sum(P.AmtCr),0) AS Balance FROM (HallSale1 AS H LEFT JOIN PayChargeH AS P ON H.DocId=P.DocId) "
  loc_11FC261:   unk_531BD6.Execute var_B8 & "GROUP By H.DocId ORDER BY H.DocId", var_CC, -1
  loc_11FC272:   Set global_84 = var_AC
  loc_11FC28C: Else
  loc_11FC295:   If (var_B0 = 5) Then
  loc_11FC2AC:     var_B4 = "SELECT max(H.DocId) AS DocId,max(P.ContraDocid) AS BookDocId,max(H.VNo) as FPNo,max(H.CustName) AS Party, " & "max(H.VDate) AS FPDate,max(H.NetAmt-H.AdvAmt) AS Amount,Sum(IsNull(P.AmtCr,0)) AS PaidAmount, "
  loc_11FC2B3:     var_B8 = var_B4 & "max(H.NetAmt-H.AdvAmt) - IsNull(Sum(P.AmtCr),0) AS Balance FROM (PackingOrder AS H LEFT JOIN PayCharge AS P ON H.DocId=P.ContraDocid) "
  loc_11FC2C3:     unk_531BD6.Execute var_B8 & "GROUP By H.DocId ORDER BY H.DocId", var_CC, -1
  loc_11FC2D4:     Set global_84 = var_AC
  loc_11FC2EB:   End If
  loc_11FC2EB: End If
  loc_11FC2F9: global_84.Requery -1
  loc_11FC2FE: ' Referenced from: 11FC66A
  loc_11FC313: If Not(Me.Recordset15.EOF) Then
  loc_11FC358:   If (Me.Recordset15.Fields.Item("Balance").Value > 0) Then
  loc_11FC361:     var_86 = (var_86 + 1)
  loc_11FC36B:     var_98 = CVar(CLng((var_86 + 1))) 'Long
  loc_11FC37A:     Me.FGrid1.Rows = "Balance"
  loc_11FC386:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC38B:     var_104 = 0
  loc_11FC3C5:     var_E4 = CVar(CStr(Me.var_AC.Fields.Item("DocID").Value)) 'String
  loc_11FC3CD:     Set var_128 = Me.FGrid1
  loc_11FC3D3:     LateIdCallSt
  loc_11FC3EF:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC3F4:     var_104 = 1
  loc_11FC42E:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("FPNo").Value)) 'String
  loc_11FC436:     Set var_128 = Me.FGrid1
  loc_11FC43C:     LateIdCallSt
  loc_11FC458:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC45D:     var_104 = 2
  loc_11FC497:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Party").Value)) 'String
  loc_11FC49F:     Set var_128 = Me.FGrid1
  loc_11FC4A5:     LateIdCallSt
  loc_11FC4C1:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC4C6:     var_104 = 3
  loc_11FC500:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("FPDate").Value)) 'String
  loc_11FC508:     Set var_128 = Me.FGrid1
  loc_11FC50E:     LateIdCallSt
  loc_11FC52A:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC52F:     var_104 = 4
  loc_11FC569:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Balance").Value)) 'String
  loc_11FC571:     Set var_128 = Me.FGrid1
  loc_11FC577:     LateIdCallSt
  loc_11FC593:     var_A8 = CVar(CLng(var_86)) 'Long
  loc_11FC598:     var_104 = 5
  loc_11FC5D2:     var_E4 = CVar(CStr(Me.FGrid1.Fields.Item("Amount").Value)) 'String
  loc_11FC5E0:     LateIdCallSt
  loc_11FC638:     var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.FGrid1.Fields.Item("BOOKDOCID")), 6, CVar(CLng(var_86)), Me.FGrid1, var_E4, 6, CVar(CLng(var_86)))) 'String
  loc_11FC640:     Set var_128 = Me.FGrid1
  loc_11FC646:     LateIdCallSt
  loc_11FC65C:   End If
  loc_11FC665:   global_84.MoveNext
  loc_11FC66A:   GoTo loc_11FC2FE
  loc_11FC66D: End If
  loc_11FC676: global_84.Close
  loc_11FC67B: Exit Sub
End Sub

Public Sub Proc_221_65_F71E6C(arg_C) 'F71E6C
  'Data Table: 531BC0
  Dim var_98 As TextBox
  loc_F71D2E: Set var_8C = Me.Txt
  loc_F71D34: Call 0.Method_Proc_221_65_F71E6C8 (var_8E, var_86)
  loc_F71D41: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F71D57:   Set var_8C = Me.Txt
  loc_F71D5D:   Call 0.Method_Proc_221_65_F71E6C0 (CInt(var_86), var_98)
  loc_F71D65:   var_98.Enabled = arg_C
  loc_F71D74: Next var_92 'Byte
  loc_F71D86: If (global_112 = 1) Then
  loc_F71D96:   Set var_8C = Me.Txt
  loc_F71D9C:   Call 0.Method_Proc_221_65_F71E6C0 (CInt(1), var_98)
  loc_F71DA4:   var_98.Enabled = False
  loc_F71DB0: End If
  loc_F71DBD: Set var_8C = Me.Txt
  loc_F71DC3: Call 0.Method_Proc_221_65_F71E6C0 (CInt(2), var_98)
  loc_F71DCB: var_98.Enabled = False
  loc_F71DE4: Set var_8C = Me.Txt
  loc_F71DEA: Call 0.Method_Proc_221_65_F71E6C0 (CInt(0), var_98)
  loc_F71DF2: var_98.Enabled = False
  loc_F71E0B: Set var_8C = Me.Txt
  loc_F71E11: Call 0.Method_Proc_221_65_F71E6C0 (CInt(5), var_98)
  loc_F71E19: var_98.Enabled = False
  loc_F71E3C: If (OpenMode = 1) Then
  loc_F71E4C:   Set var_8C = Me.Txt
  loc_F71E52:   Call 0.Method_Proc_221_65_F71E6C0 (CInt(5), var_98)
  loc_F71E5A:   var_98.Enabled = False
  loc_F71E66:   GoTo loc_F71E69
  loc_F71E69:   ' Referenced from: F71E66
  loc_F71E69: End If
  loc_F71E69: Exit Sub
End Sub

Public Sub Proc_221_66_F66B9C
  'Data Table: 531BC0
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As MSHFlexGrid
  loc_F66A76: Set var_8C = Me.Txt
  loc_F66A7C: Call 0.Method_Proc_221_66_F66B9C8 (var_8E, var_86)
  loc_F66A89: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F66A9F:   Set var_8C = Me.Txt
  loc_F66AA5:   Call 0.Method_Proc_221_66_F66B9C0 (CInt(var_86), var_98)
  loc_F66AAD:   var_98.Text = vbNullString
  loc_F66AC9:   Set var_8C = Me.Txt
  loc_F66ACF:   Call 0.Method_Proc_221_66_F66B9C0 (CInt(var_86), var_98)
  loc_F66AD7:   var_98.Tag = vbNullString
  loc_F66AE6: Next var_92 'Byte
  loc_F66B23: Set var_8C = Me.Txt
  loc_F66B29: Call 0.Method_Proc_221_66_F66B9C0 (CInt(2), var_98, CStr(Format(MemVar_1F920EC, "dd/MMM/yyyy")))
  loc_F66B31: var_98.Text = 1
  loc_F66B5A: Me.FGrid.Rows = 1
  loc_F66B62: var_A8 = "1"
  loc_F66B6C: Set var_8C = Me.FGrid
  loc_F66B90: Me.FGrid.FixedRows = 1
  loc_F66B98: Exit Sub
  loc_F66B99: If FGrid.DispID_10000 Then Exit Sub
  loc_F66B99: End If
End Sub

Public Sub Proc_221_67_12AC934
  'Data Table: 531BC0
  Dim var_90 As Long
  Dim var_A0 As Variant
  Dim var_B8 As Variant
  Dim var_C4 As TextBox
  Dim var_DC As Variant
  Dim var_B4 As Variant
  loc_12AC313: Me.FrRest.Top = CDbl(915)
  loc_12AC329: Me.FrRest.Left = CDbl(0)
  loc_12AC33C: var_90 = OpenType
  loc_12AC348: If (var_90 = 6) Then
  loc_12AC35E:   Me.FGrid.Top = CVar(CDbl(3270))
  loc_12AC369: Else
  loc_12AC372:   If (var_90 = 5) Then
  loc_12AC388:     Me.FGrid.Top = CVar(CDbl(3270))
  loc_12AC390:   End If
  loc_12AC390: End If
  loc_12AC3A2: Me.FGrid.Left = CVar(CDbl(&H4B))
  loc_12AC3B8: Set var_B4 = Me.Txt
  loc_12AC3BE: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8)
  loc_12AC3D9: Set var_C0 = Me.Txt
  loc_12AC3DF: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC418: Me.FrTxnNo.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12AC43B: Me.FrTxnNo.Left = CDbl(240)
  loc_12AC451: Set var_B4 = Me.Txt
  loc_12AC457: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8)
  loc_12AC472: Set var_C0 = Me.Txt
  loc_12AC478: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC4B1: Me.FrChqDet.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12AC4D4: Me.FrChqDet.Left = CDbl(240)
  loc_12AC4EA: Set var_B4 = Me.Txt
  loc_12AC4F0: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8)
  loc_12AC4F8: var_BC = var_B8.Top
  loc_12AC50B: Set var_C0 = Me.Txt
  loc_12AC511: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC54A: Me.FrCCDet.Top = (((Me.FrRest.Top + var_BC) + var_C4.Height) + CDbl(&H14))
  loc_12AC56D: Me.FrCCDet.Left = CDbl(240)
  loc_12AC597: Me.DGPayType.Top = CVar(CDbl(Me.FGrid.Top))
  loc_12AC5C8: Me.DGPayType.Height = CVar(CDbl(Me.FGrid.Height))
  loc_12AC605: var_A0 = CVar((Me.FrRest.Top + CDbl(Me.FGrid.Top))) 'Single
  loc_12AC60E: Set var_B8 = Me.DGTable
  loc_12AC614: var_B8.Top = CVar(CDbl(Me.FGrid.Height))
  loc_12AC647: Me.DGTable.Height = CVar(CDbl(Me.FGrid.Height))
  loc_12AC664: Set var_B4 = Me.Txt
  loc_12AC66A: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8, var_BC)
  loc_12AC672: var_DC = var_B8.Top
  loc_12AC685: Set var_C0 = Me.Txt
  loc_12AC68B: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC6C4: Me.FrSendRoom.Top = (((Me.FrRest.Top + var_BC) + var_C4.Height) + CDbl(&H14))
  loc_12AC6E7: Me.FrSendRoom.Left = CDbl(240)
  loc_12AC6FD: Set var_B4 = Me.Txt
  loc_12AC703: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8)
  loc_12AC71E: Set var_C0 = Me.Txt
  loc_12AC724: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC75D: Me.FrEmp.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12AC780: Me.FrEmp.Left = CDbl(240)
  loc_12AC796: Set var_B4 = Me.Txt
  loc_12AC79C: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_B8)
  loc_12AC7B7: Set var_C0 = Me.Txt
  loc_12AC7BD: Call 0.Method_Proc_221_67_12AC9340 (CInt(7), var_C4)
  loc_12AC7F6: Me.FrComp.Top = (((Me.FrRest.Top + var_B8.Top) + var_C4.Height) + CDbl(&H14))
  loc_12AC819: Me.FrComp.Left = CDbl(240)
  loc_12AC834: Me.DGRoom.Top = CVar(CDbl(405))
  loc_12AC84F: Me.DGRoom.Left = CVar(CDbl(5415))
  loc_12AC86A: Me.DGEmp.Top = CVar(CDbl(405))
  loc_12AC885: Me.DGEmp.Left = CVar(CDbl(5550))
  loc_12AC8A0: Me.DGCompany.Top = CVar(CDbl(405))
  loc_12AC8BB: Me.DGCompany.Left = CVar(CDbl(5550))
  loc_12AC8CF: If (global_116 = 6) Then
  loc_12AC8E1:   Me.FrRem.Width = CDbl(4925)
  loc_12AC8E9: End If
  loc_12AC90E: Me.FrRem.Top = (Me.FrRest.Top + CDbl(960))
  loc_12AC929: Me.FrRem.Left = CDbl(240)
  loc_12AC931: Exit Sub
End Sub

Public Sub Proc_221_68_150DB10
  'Data Table: 531BC0
  Dim Me As Recordset15
  Dim var_98 As Long
  Dim var_9C As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Field20
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_531BD6 As Connection15
  Dim var_148 As Variant
  Dim var_144 As Variant
  Dim var_DC As Variant
  Dim var_8E As Integer
  Dim var_160 As Variant
  Dim var_184 As Long
  Dim var_170 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_1C8 As Variant
  loc_150CC30: On Error Goto loc_150DACB
  loc_150CC39: Proc_183_45_E5C118(global_56)
  loc_150CC55: If (Me.RecordCount <= 0) Then
  loc_150CC58:   Call Proc_221_66_F66B9C()
  loc_150CC60: Else
  loc_150CC66:   var_98 = global_116
  loc_150CC72:   If (var_98 = 6) Then
  loc_150CC89:     var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_150CC97:     var_A4 = var_9C & " ST.TipAmt, ST.FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.ContraDOCId," & " CC.Name as CompName,CompCode"
  loc_150CCA5:     var_AC = var_A4 & " FROM ((((PayChargeH AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)" & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)"
  loc_150CCBA:     var_EC = CVar(var_AC & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") 'String
  loc_150CD01:     unk_531BD6.Execute CStr(var_EC & Me.Fields.Item("SearchCode").Value & "' And AmtCr>0"), var_140, -1
  loc_150CD0C:     Set var_88 = var_144
  loc_150CD3B:   Else
  loc_150CD44:     If (var_98 = 5) Then
  loc_150CD5B:       var_9C = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf, GP.Name AS GPName," & " ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, ST.AmtCr,"
  loc_150CD62:       var_A0 = var_9C & " ST.TipAmt,  Cast(Substring(ST.ContraDocId,14,8) As int) As FPNo, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.TxnNo, ST.ExpDate,ST.BatchNo,ST.ContraDOCId,"
  loc_150CD70:       var_A8 = var_A0 & " CC.Name as CompName,CompCode" & " FROM ((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code)"
  loc_150CD8C:       var_EC = CVar(var_A8 & " LEFT JOIN Employee AS E ON ST.EmpCode = E.Code)" & " Inner JOIN RevMast AS P ON ST.PayCode = P.Code)" & ")" & " Left join SubGroup CC on CC.SubCode=ST.CompCode Where ST.Docid='") 'String
  loc_150CDC5:       var_11C = var_EC & Me.Fields.Item("SearchCode").Value & "'" 
  loc_150CDD3:       unk_531BD6.Execute CStr(var_11C), var_140, -1
  loc_150CDDE:       Set var_88 = var_144
  loc_150CE0A:     End If
  loc_150CE0A:   End If
  loc_150CE3E:   global_96 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_150CE66:   If (Me.Recordset15.RecordCount > 0) Then
  loc_150CEAB:     Call 0.Method_Proc_221_68_150DB100 (CInt(0), var_148, CStr(Me.Recordset15.Fields.Item("DocID").Value))
  loc_150CEB3:     var_148.Text = Me.Txt
  loc_150CEFD:     global_100 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_150CF50:     Call 0.Method_Proc_221_68_150DB100 (CInt(1), var_148, CStr(Me.Recordset15.Fields.Item("VNo").Value))
  loc_150CF58:     var_148.Text = Me.Txt
  loc_150CFAA:     Set var_144 = Me.Txt
  loc_150CFB0:     Call 0.Method_Proc_221_68_150DB100 (CInt(2), var_148)
  loc_150CFB8:     var_148.Text = CStr(Me.Recordset15.Fields.Item("VDate").Value)
  loc_150D009:     Me.LblVPrefix.Caption = CStr(Me.Recordset15.Fields.Item("vPrefix").Value)
  loc_150D056:     Set var_144 = Me.Txt
  loc_150D05C:     Call 0.Method_Proc_221_68_150DB100 (CInt(9), var_148)
  loc_150D064:     var_148.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CardNo")))
  loc_150D0B1:     Set var_144 = Me.Txt
  loc_150D0B7:     Call 0.Method_Proc_221_68_150DB100 (CInt(4), var_148)
  loc_150D0BF:     var_148.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ContraDocId")))
  loc_150D0D3:   End If
  loc_150D0E2:   Me.FGrid.Redraw = False
  loc_150D0F7:   Set var_B8 = Me.FGrid
  loc_150D0FD:   var_B8.Rows = 1
  loc_150D107:   var_8E = 1
  loc_150D121:   If (Me.var_B8.RecordCount > 0) Then
  loc_150D124:     ' Referenced from:   150D9D3
  loc_150D136:     If Not(Me.Recordset15.EOF) Then
  loc_150D139:       var_C8 = vbNullString
  loc_150D143:       Set var_B8 = Me.FGrid
  loc_150D158:       Set var_150 = Me.FGrid
  loc_150D15F:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D164:       var_160 = 0
  loc_150D19B:       var_EC = CVar(CStr(Me.FGrid.Fields.Item("SNo").Value)) 'String
  loc_150D1A2:       LateIdCallSt
  loc_150D1F5:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")), 2, CVar(CLng(var_8E)), var_150, var_EC, 2)) 'String
  loc_150D1FC:       LateIdCallSt
  loc_150D212:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D217:       var_160 = 1
  loc_150D24E:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_150D255:       LateIdCallSt
  loc_150D2A8:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), 3, CVar(CLng(var_8E)), var_150, var_EC, 3, CVar(CLng(var_8E)))) 'String
  loc_150D2AF:       LateIdCallSt
  loc_150D2FC:       Proc_6_39_E7C810(var_EC, CVar(Me.Recordset15.Fields.Item("FPNo")), &H17, CVar(CLng(var_8E)), var_150, var_EC)
  loc_150D305:       var_FC = CVar(CStr(var_EC)) 'String
  loc_150D30C:       LateIdCallSt
  loc_150D326:       var_184 = global_116
  loc_150D332:       If (var_184 = 6) Then
  loc_150D373:         var_170 = 0
  loc_150D3A8:         unk_531BD6.Execute CStr("SELECT PartyName FROM HallBook WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'"), var_11C, -1
  loc_150D3B0:         var_144 = var_144.Fields
  loc_150D3B8:         var_170 = var_148.Item(var_148)
  loc_150D3C9:         var_1C8 = CVar(Proc_6_38_E68A98(CVar(var_188), var_188, CVar(CLng(7)), CVar(CLng(var_8E)), var_184)) 'String
  loc_150D3D0:         LateIdCallSt
  loc_150D3F8:       Else
  loc_150D401:         If (var_184 = 5) Then
  loc_150D442:           var_170 = 0
  loc_150D46D:           var_9C = CStr("SELECT CustName FROM PackingOrder WHERE DocId='" & Me.Recordset15.Fields.Item("ContraDocId").Value & "'")
  loc_150D477:           unk_531BD6.Execute var_9C, var_11C, -1
  loc_150D47F:           var_144 = var_144.Fields
  loc_150D487:           var_170 = var_148.Item(var_148)
  loc_150D498:           var_1C8 = CVar(Proc_6_38_E68A98(CVar(var_188), var_188, CVar(CLng(7)), CVar(CLng(var_8E)), var_150)) 'String
  loc_150D49F:           LateIdCallSt
  loc_150D4C4:         End If
  loc_150D4C4:       End If
  loc_150D4E7:       var_130 = CVar(CLng(var_8E)) 'Long
  loc_150D4EC:       var_170 = 8
  loc_150D514:       var_FC = Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00")
  loc_150D51D:       var_11C = CVar(CStr(var_FC)) 'String
  loc_150D524:       LateIdCallSt
  loc_150D53E:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D546:       var_160 = CVar(CLng(9)) 'Long
  loc_150D579:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardNo").Value)) 'String
  loc_150D580:       LateIdCallSt
  loc_150D59A:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D5A2:       var_160 = CVar(CLng(&HA)) 'Long
  loc_150D5D5:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_150D5DC:       LateIdCallSt
  loc_150D62E:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HB)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HB)), CVar(CLng(var_8E)))) 'String
  loc_150D635:       LateIdCallSt
  loc_150D683:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("BatchNo")), CVar(CLng(&HC)), CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_150D68A:       LateIdCallSt
  loc_150D6D9:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), &H18, CVar(CLng(var_8E)), var_150, var_EC)) 'String
  loc_150D6E0:       LateIdCallSt
  loc_150D6F6:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D6FE:       var_160 = CVar(CLng(&HD)) 'Long
  loc_150D731:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_150D738:       LateIdCallSt
  loc_150D78A:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HE)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&HE)), CVar(CLng(var_8E)))) 'String
  loc_150D791:       LateIdCallSt
  loc_150D7A7:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D7AF:       var_160 = CVar(CLng(&HF)) 'Long
  loc_150D7E2:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_150D7E9:       LateIdCallSt
  loc_150D83B:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H10)), CVar(CLng(var_8E)), var_150, var_EC, CVar(CLng(&H10)), CVar(CLng(var_8E)))) 'String
  loc_150D842:       LateIdCallSt
  loc_150D858:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D860:       var_160 = CVar(CLng(&H11)) 'Long
  loc_150D893:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_150D89A:       LateIdCallSt
  loc_150D8ED:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), &H15, CVar(CLng(var_8E)), var_150, var_EC, &H15, CVar(CLng(var_8E)))) 'String
  loc_150D8F4:       LateIdCallSt
  loc_150D943:       var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), &H16, CVar(CLng(var_8E)), var_150, var_EC, var_150)) 'String
  loc_150D94A:       LateIdCallSt
  loc_150D960:       var_10C = CVar(CLng(var_8E)) 'Long
  loc_150D965:       var_160 = &H12
  loc_150D99C:       var_EC = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_150D9A3:       LateIdCallSt
  loc_150D9BB:       Set var_150 = Nothing 
  loc_150D9C5:       var_8E = (var_8E + 1)
  loc_150D9CE:       Me.Recordset15.MoveNext
  loc_150D9D3:       GoTo loc_150D124
  loc_150D9D6:     End If
  loc_150D9E9:     Me.FGrid.FixedRows = 1
  loc_150D9F1:   End If
  loc_150D9FF:   Me.FGrid.Redraw = True
  loc_150DA0D:   If (var_8E = 1) Then
  loc_150DA23:     Me.FGrid.Rows = 1
  loc_150DA47:     var_DC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, var_8E, var_150, var_EC, var_160, var_10C))) 'String
  loc_150DA4F:     Set var_CC = Me.FGrid
  loc_150DA7C:     Me.FGrid.FixedRows = 1
  loc_150DA84:   End If
  loc_150DAAF:   Call Proc_221_75_1156D34(CStr(Me.FGrid.TextMatrix)), 2, 1, FGrid.DispID_10000, Me.FGrid.TextMatrix), var_150)
  loc_150DABD:   Call Proc_221_78_13B11FC(var_EC, var_EC, var_150)
  loc_150DAC2: End If
  loc_150DAC7: Set var_88 = Nothing
  loc_150DACA: Exit Sub
  loc_150DACB: ' Referenced from: 150CC30
  loc_150DAD3: Set var_B8 = Err()
  loc_150DAD9: Call 0.Method_arg_2C (var_9C, var_EC)
  loc_150DAFA: MsgBox(CVar(var_9C), &H40, "Information", var_FC, var_11C)
  loc_150DB0D: Exit Sub
End Sub

Public Sub Proc_221_69_13368D8(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24) '13368D8
  'Data Table: 531BC0
  Dim var_B8 As String
  Dim unk_531BD6 As Connection15
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_86 As Integer
  Dim var_E8 As Fields15
  Dim var_114 As Field20
  Dim var_14C As Variant
  Dim var_16C As String
  Dim var_134 As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_214 As Variant
  Dim var_224 As Variant
  Dim var_E4 As Variant
  Dim var_10C As Variant
  Dim var_15C As Variant
  Dim var_1AC As Variant
  loc_1336170: On Error Goto loc_13368D0
  loc_1336187: var_B8 = "SELECT P.VNO AS RECTNO,P.VDATE AS RECTDATE,P.PAYTYPE AS RECTMODE,P.U_Name As UserName,P.CardNo AS CCardNo,P.Cardholder As CCardholder,P.ChqNo As ChqNo,P.ChqDate AS ChqDate,P.ExpDate AS CCExpDate,P.BatchNo As BatchNo,P.AMTCR AS RECTAMT,PO.VType+'/'+Cast(PO.VNO As Char)AS BOOKNO,PO.CUSTNAME,P.TxnNo FROM (PAYCHARGE P left join PackingOrder PO On P.ContraDocid=PO.DocId) WHERE P.DOCID IN ('" & arg_C
  loc_13361A5: unk_531BD6.Execute var_B8 & "') AND P.VTYPE='" & arg_18 & "'", var_E4, -1
  loc_13361B0: Set var_A8 = var_E8
  loc_13361C6: Close 1
  loc_13361CF: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_13361D5: var_88 = 1
  loc_13361DB: MemVar_1F923C0 = "N"
  loc_13361E2: MemVar_1F923C4 = "N"
  loc_13361E9: MemVar_1F923C8 = "M"
  loc_13361F3: var_EC = var_A8.RecordCount
  loc_1336201: If (var_EC > 0) Then
  loc_1336222:   If CBool(Trim(arg_10) <> "W") Then
  loc_1336225:     ' Referenced from: 1336662
  loc_1336234:     If Not(var_A8.EOF) Then
  loc_1336243:       If (var_86 = 0) Then
  loc_133625E:         Print 1, vbNullString
  loc_1336269:         Print 1, vbNullString
  loc_1336290:         Print 1, Proc_6_128_10272A8(" ADVANCE RECEIPT ", "B", &H50)
  loc_13362A4:         Print 1, vbNullString
  loc_13362AF:         Print 1, vbNullString
  loc_133630F:         Proc_6_39_E7C810(var_15C, CVar(var_A8.Fields.Item("GRCNo")), Proc_6_129_12B6C1C(var_88, var_86, &H50))
  loc_133637C:         var_134 = (CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("RectNo").Value)) + Space(8))
  loc_1336383:         var_18C = CVar(Proc_6_45_EAD428(CStr("GRC No. :" & var_15C), &HE)) 'String
  loc_1336386:         var_19C = (var_134 + var_18C)
  loc_133638D:         var_1BC = (var_19C + Space(8))
  loc_1336396:         var_1DC = (var_1BC + "Date :")
  loc_13363A0:         var_224 = (var_1DC + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88)))
  loc_13363A6:         Print 1, var_224
  loc_13363E8:         Print 1, vbNullString
  loc_13363F3:         Print 1, vbNullString
  loc_1336421:         var_10C = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("GuestName")))) 'String
  loc_1336434:         var_134 = ("Recieved with thanks from Mr. " + Ucase(var_10C))
  loc_133643A:         Print 1, var_134
  loc_1336453:         Print 1, vbNullString
  loc_1336470:         var_114 = var_A8.Fields.Item("RectAmt")
  loc_133647F:         Proc_6_39_E7C810(var_10C, CVar(var_114))
  loc_133648E:         var_FC = "0.00"
  loc_13364CA:         Proc_6_39_E7C810(var_18C, CVar(var_A8.Fields.Item("RectAmt")), 1)
  loc_133651C:         var_16C = "A Sum of Rs. "
  loc_1336524:         var_14C = (var_16C + Format(var_10C, var_FC))
  loc_133652D:         var_15C = (CVar(var_A8.Fields.Item("GRCNo")) + " (")
  loc_1336537:         var_1AC = (var_15C + CVar(Proc_6_43_10041F4(CSng(var_18C), "Rs", vbNullString)))
  loc_1336540:         var_1BC = (Space(8) + ") by ")
  loc_133654A:         var_214 = (var_1BC + CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectMode")), 1)))
  loc_1336550:         Print 1, CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("RectDate")), var_88))
  loc_133658E:         Print 1, vbNullString
  loc_13365A0:         Print 1, "towards (Room Charge/Others)" & "______________________________________________"
  loc_13365AE:         Print 1, vbNullString
  loc_13365B9:         Print 1, vbNullString
  loc_13365C4:         Print 1, vbNullString
  loc_13365CF:         Print 1, vbNullString
  loc_13365DA:         Print 1, vbNullString
  loc_13365FE:         Print 1, Proc_6_52_EAD4F4("Autho. Signature", &H46)
  loc_1336612:         Print 1, vbNullString
  loc_133661D:         Print 1, "---------------------------------------------------------------------------------------"
  loc_1336623:       End If
  loc_1336629:       var_86 = (var_86 + &H18)
  loc_133662C:       ' Referenced from: 1336649
  loc_1336632:       If (Proc_6_129_12B6C1C(var_88, var_86, &H50) < &H22) Then
  loc_133663A:         Print 1, vbNullString
  loc_1336646:         var_86 = (var_86 + 1)
  loc_1336649:         GoTo loc_133662C
  loc_133664C:       End If
  loc_133664E:       var_86 = 0
  loc_1336657:       var_88 = (var_88 + 1)
  loc_133665D:       var_A8.MoveNext
  loc_1336662:       GoTo loc_1336225
  loc_1336665:     End If
  loc_1336668:   Else
  loc_133666F:     var_AC = arg_14 & " Advance Receipt"
  loc_1336675:     var_D4 = arg_14
  loc_1336686:     var_B0 = CStr(Ucase(var_D4))
  loc_13366B0:     Set var_E8 = var_A8 
  loc_13366B7:     CreateFieldDefFile(var_E8, MemVar_1F920B4 & "\" & var_AC & ".ttx", &HFF, var_88)
  loc_13366E2:     var_B8 = MemVar_1F920B4 & "\"
  loc_13366F9:     Call 0.Method_arg_1C (var_B8 & var_AC & ".RPT", var_D4, var_E8, var_86)
  loc_1336704:     MemVar_1F921E4 = var_E8
  loc_133672D:     Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_FC, var_16C)
  loc_1336735:     Call 0.Method_arg_2C (var_86, var_86)
  loc_1336743:     Call 0.Method_arg_150 (var_E8)
  loc_1336759:     Call 0.Method_arg_90 (var_E8, var_EC)
  loc_1336761:     Call 0.Method_arg_24 (var_B2)
  loc_133676D:     For var_250 =  To CInt(var_EC):   1 = var_250 'Integer
  loc_1336786:       Call 0.Method_arg_90 (var_E8, CLng(var_B2))
  loc_133678E:       Call 0.Method_arg_20 (var_114)
  loc_1336796:       Call 0.Method_arg_30 (var_B8)
  loc_13367C5:       If (Ucase(CVar(var_B8)) = "TITLE") Then
  loc_13367E9:         Call 0.Method_arg_90 (var_E8, CLng(var_B2))
  loc_13367F1:         Call 0.Method_arg_20 (var_114)
  loc_13367F9:         Call 0.Method_arg_38 ("'" & arg_14 & "'")
  loc_133680C:       End If
  loc_133680F:     Next var_250 'Integer
  loc_1336819:     Set var_114 = Nothing
  loc_133682F:     Set var_E8 = MemVar_1F921E4 
  loc_133683B:     Proc_6_99_1483714(var_E8, 0, var_B0)
  loc_1336846:     MemVar_1F921E4 = var_E8
  loc_1336851:   End If
  loc_1336851: End If
  loc_1336853: Close 1
  loc_133685C: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_133686C: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_1336877: Close 1
  loc_1336881: If (MemVar_1F923B8 = "Y") Then
  loc_133689D:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_13368A7: Else
  loc_13368C0:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_13368C7: End If
  loc_13368CC: Set var_A8 = Nothing
  loc_13368CF: Exit Sub
  loc_13368D0: ' Referenced from: 1336170
  loc_13368D0: Proc_6_60_E62BC4(&HFF)
  loc_13368D5: Exit Sub
End Sub

Public Sub Proc_221_70_FB6D50
  'Data Table: 531BC0
  loc_FB6BB8: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB6BCA:   Me.DGPayType.Visible = False
  loc_FB6BD2: End If
  loc_FB6BEE: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_FB6C00:   Me.DGPayType.Visible = False
  loc_FB6C08: End If
  loc_FB6C24: If (CBool(Me.DGEmp.Visible) = &HFF) Then
  loc_FB6C36:   Me.DGEmp.Visible = False
  loc_FB6C3E: End If
  loc_FB6C5A: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_FB6C6C:   Me.DGTable.Visible = False
  loc_FB6C74: End If
  loc_FB6C90: If (CBool(Me.DGRoom.Visible) = &HFF) Then
  loc_FB6CA2:   Me.DGRoom.Visible = False
  loc_FB6CAA: End If
  loc_FB6CC6: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FB6CD8:   Me.DGCompany.Visible = False
  loc_FB6CE0: End If
  loc_FB6CFC: If (CBool(Me.DGFPNo.Visible) = &HFF) Then
  loc_FB6D0E:   Me.DGFPNo.Visible = False
  loc_FB6D16: End If
  loc_FB6D32: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_FB6D44:   Me.FGPoint.Visible = False
  loc_FB6D4C: End If
  loc_FB6D4C: Exit Sub
  loc_FB6D4D: If  Then Exit Sub
  loc_FB6D4D: End If
End Sub

Public Sub Proc_221_71_E907AC(arg_C) 'E907AC
  'Data Table: 531BC0
  Dim var_10C As TextBox
  loc_E90740: Call Proc_221_70_FB6D50()
  loc_E9077C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E9077F:   Call TopCtrl1_UnknownEvent_16()
  loc_E90787: Else
  loc_E90791:   Set var_108 = Me.Txt
  loc_E90797:   Call 0.Method_Proc_221_71_E907AC0 (arg_C)
  loc_E9079F:   var_10C.SetFocus
  loc_E907AB: End If
  loc_E907AB: Exit Sub
End Sub

Public Sub Proc_221_72_117CAB8
  'Data Table: 531BC0
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
  loc_117C720: var_90 = global_124
  loc_117C737: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_117C768: Set var_A8 = Me.Txt
  loc_117C76E: Call 0.Method_Proc_221_72_117CAB80 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_117C77D: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_117C785: var_EC = -1 & var_CC 
  loc_117C799: Me.Txt.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_117C7A4: Set var_8C = var_134
  loc_117C7E0: If (var_8C.RecordCount > 0) Then
  loc_117C81F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_117C822:     GoTo loc_117C8AF
  loc_117C825:   End If
  loc_117C856:   global_104 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_117C881:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_117C896:   var_CC = (var_AC.Value + 1)
  loc_117C89E:   global_108 = CInt(var_CC)
  loc_117C8AF:   ' Referenced from: 117C822
  loc_117C8DA:   var_BC = Space((5 - Len(var_90)))
  loc_117C8E2:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_117C8F6:   var_EC = Space((5 - Len(global_104)))
  loc_117C8FE:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_117C90B:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_104))
  loc_117C924:   var_14C = Space((8 - Len(CStr(global_108))))
  loc_117C92C:   var_15C = (var_130 + var_14C)
  loc_117C93B:   var_17C = (var_15C + CVar(CStr(global_108)))
  loc_117C946:   global_100 = CStr(var_17C)
  loc_117C97C:   Me.LblVPrefix.Caption = global_104
  loc_117C995:   Set var_A8 = Me.Txt
  loc_117C99B:   Call 0.Method_Proc_221_72_117CAB80 (CInt(0), var_AC)
  loc_117C9A3:   var_AC.Text = global_100
  loc_117C9C5:   Set var_A8 = Me.Txt
  loc_117C9CB:   Call 0.Method_Proc_221_72_117CAB80 (CInt(1), var_AC)
  loc_117C9D3:   var_AC.Text = CStr(global_108)
  loc_117C9E8:   var_88 = global_100
  loc_117C9EE: Else
  loc_117C9F4:   global_100 = vbNullString
  loc_117CA16:   Set var_A8 = Me.Txt
  loc_117CA1C:   Call 0.Method_Proc_221_72_117CAB80 (global_108, var_AC)
  loc_117CA24:   var_AC.Text = CStr(0)
  loc_117CA43:   Me.LblVPrefix.Caption = vbNullString
  loc_117CA5C:   Set var_A8 = Me.Txt
  loc_117CA62:   Call 0.Method_Proc_221_72_117CAB80 (CInt(0), var_AC)
  loc_117CA6A:   var_AC.Text = global_100
  loc_117CA84:   Set var_A8 = Me.Txt
  loc_117CA8A:   Call 0.Method_Proc_221_72_117CAB80 (CInt(1), var_AC)
  loc_117CA92:   var_AC.Text = vbNullString
  loc_117CAA4:   var_88 = global_100
  loc_117CAA7: End If
  loc_117CAAC: Set var_8C = Nothing
  loc_117CAAF: Proc_221_72_117CAB8 = global_108
End Sub

Public Sub Proc_221_73_11FFD98
  'Data Table: 531BC0
  Dim var_88 As Long
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_11FF8D6: var_88 = global_116
  loc_11FF8E2: If (var_88 = 6) Then
  loc_11FF8F1:   Me.FrRest.Visible = True
  loc_11FF8FC: Else
  loc_11FF905:   If (var_88 = 5) Then
  loc_11FF914:     Me.FrRest.Visible = True
  loc_11FF91C:   End If
  loc_11FF91C: End If
  loc_11FF92F: Me.FGrid.Cols = &H19
  loc_11FF937: var_A0 = CVar(CLng(9)) 'Long
  loc_11FF93C: var_C0 = 0
  loc_11FF948: LateIdCallSt
  loc_11FF953: var_A0 = CVar(CLng(&HA)) 'Long
  loc_11FF958: var_C0 = 0
  loc_11FF964: LateIdCallSt
  loc_11FF96F: var_A0 = CVar(CLng(&HB)) 'Long
  loc_11FF974: var_C0 = 0
  loc_11FF980: LateIdCallSt
  loc_11FF98B: var_A0 = CVar(CLng(&HC)) 'Long
  loc_11FF990: var_C0 = 0
  loc_11FF99C: LateIdCallSt
  loc_11FF9A4: var_A0 = &H18
  loc_11FF9AD: var_C0 = 0
  loc_11FF9B9: LateIdCallSt
  loc_11FF9C4: var_A0 = CVar(CLng(&HD)) 'Long
  loc_11FF9C9: var_C0 = 0
  loc_11FF9D5: LateIdCallSt
  loc_11FF9E0: var_A0 = CVar(CLng(&HE)) 'Long
  loc_11FF9E5: var_C0 = 0
  loc_11FF9F1: LateIdCallSt
  loc_11FF9FC: var_A0 = CVar(CLng(&HF)) 'Long
  loc_11FFA01: var_C0 = 0
  loc_11FFA0D: LateIdCallSt
  loc_11FFA18: var_A0 = CVar(CLng(&H10)) 'Long
  loc_11FFA1D: var_C0 = 0
  loc_11FFA29: LateIdCallSt
  loc_11FFA34: var_A0 = CVar(CLng(&H11)) 'Long
  loc_11FFA39: var_C0 = 0
  loc_11FFA45: LateIdCallSt
  loc_11FFA4D: var_A0 = &H12
  loc_11FFA56: var_C0 = 0
  loc_11FFA62: LateIdCallSt
  loc_11FFA6A: var_A0 = 1
  loc_11FFA73: var_C0 = 0
  loc_11FFA7F: LateIdCallSt
  loc_11FFA87: var_A0 = 4
  loc_11FFA90: var_C0 = 0
  loc_11FFA9C: LateIdCallSt
  loc_11FFAA4: var_A0 = 5
  loc_11FFAAD: var_C0 = 0
  loc_11FFAB9: LateIdCallSt
  loc_11FFAC4: var_A0 = CVar(CLng(6)) 'Long
  loc_11FFAC9: var_C0 = 0
  loc_11FFAD5: LateIdCallSt
  loc_11FFAE0: var_A0 = CVar(CLng(7)) 'Long
  loc_11FFAE5: var_C0 = 0
  loc_11FFAF1: LateIdCallSt
  loc_11FFAF9: var_A0 = 2
  loc_11FFB02: var_C0 = 0
  loc_11FFB0E: LateIdCallSt
  loc_11FFB16: var_A0 = 0
  loc_11FFB1F: var_C0 = &HFA
  loc_11FFB2B: LateIdCallSt
  loc_11FFB33: var_A0 = 0
  loc_11FFB3C: var_C0 = 0
  loc_11FFB45: var_E0 = "SNo"
  loc_11FFB4E: LateIdCallSt
  loc_11FFB56: var_A0 = 0
  loc_11FFB5F: var_C0 = &H1C2
  loc_11FFB6B: LateIdCallSt
  loc_11FFB73: var_A0 = 0
  loc_11FFB7C: var_C0 = 3
  loc_11FFB85: var_E0 = "Payment Type"
  loc_11FFB8E: LateIdCallSt
  loc_11FFB96: var_A0 = 3
  loc_11FFBA5: var_C0 = CVar(CInt(1)) 'Integer
  loc_11FFBAC: LateIdCallSt
  loc_11FFBB4: var_A0 = 3
  loc_11FFBBD: var_C0 = &HDAC
  loc_11FFBC9: LateIdCallSt
  loc_11FFBD1: var_A0 = 0
  loc_11FFBDA: var_C0 = 8
  loc_11FFBE3: var_E0 = "Amount"
  loc_11FFBEC: LateIdCallSt
  loc_11FFBF4: var_A0 = 8
  loc_11FFC03: var_C0 = CVar(CInt(7)) 'Integer
  loc_11FFC0A: LateIdCallSt
  loc_11FFC12: var_A0 = 8
  loc_11FFC21: var_C0 = CVar(CInt(7)) 'Integer
  loc_11FFC28: LateIdCallSt
  loc_11FFC30: var_A0 = 8
  loc_11FFC39: var_C0 = &H578
  loc_11FFC45: LateIdCallSt
  loc_11FFC4D: var_A0 = 0
  loc_11FFC56: var_C0 = &H12
  loc_11FFC5F: var_E0 = "Tip"
  loc_11FFC68: LateIdCallSt
  loc_11FFC70: var_A0 = &H12
  loc_11FFC7F: var_C0 = CVar(CInt(7)) 'Integer
  loc_11FFC86: LateIdCallSt
  loc_11FFC8E: var_A0 = &H12
  loc_11FFC9D: var_C0 = CVar(CInt(7)) 'Integer
  loc_11FFCA4: LateIdCallSt
  loc_11FFCAC: var_A0 = &H12
  loc_11FFCB5: var_C0 = &H514
  loc_11FFCC1: LateIdCallSt
  loc_11FFCC9: var_A0 = &H13
  loc_11FFCD2: var_C0 = 0
  loc_11FFCDE: LateIdCallSt
  loc_11FFCE6: var_A0 = &H14
  loc_11FFCEF: var_C0 = 0
  loc_11FFCFB: LateIdCallSt
  loc_11FFD03: var_A0 = &H15
  loc_11FFD0C: var_C0 = 0
  loc_11FFD18: LateIdCallSt
  loc_11FFD20: var_A0 = &H16
  loc_11FFD29: var_C0 = 0
  loc_11FFD35: LateIdCallSt
  loc_11FFD3D: var_A0 = &H17
  loc_11FFD46: var_C0 = 0
  loc_11FFD52: LateIdCallSt
  loc_11FFD84: LateIdCallSt
  loc_11FFD92: Call Proc_221_74_F95478(Me.FGrid, CVar(CStr(1)), 0, 1, Nothing, 0, 1, Nothing)
  loc_11FFD97: Exit Sub
End Sub

Public Sub Proc_221_74_F95478
  'Data Table: 531BC0
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_F9531A: Set global_72 = New 
  loc_F9532C: Me.Recordset15.CursorLocation = 3
  loc_F95348: If (OpenType = 6) Then
  loc_F95357:   Set var_8C = Me.LblName
  loc_F9535D:   Call 0.Method_Proc_221_74_F954780 (&HC, var_98)
  loc_F95365:   var_98.Caption = "Party"
  loc_F95381:   Set var_8C = Me.DGTable
  loc_F95392:   Set var_98 = DGTable.DispID_69
  loc_F953A0:   var_98.Item(1).Caption = "Hall #"
  loc_F953E3:   Me.Open CVar("Select T.Code,T.nAME As Name From VenueMast T where Departcode='" & global_52 & "' Order By T.Code"), CVar(MemVar_1F92044), 3
  loc_F953F4:   global_148 = "HALL"
  loc_F953FE:   global_152 = "HL"
  loc_F9540D:   Set var_8C = Me.Lbl
  loc_F95413:   Call 0.Method_Proc_221_74_F954780 (1, var_98, 0)
  loc_F9541B:   var_98.Visible = True
  loc_F95434:   Set var_8C = Me.Txt
  loc_F9543A:   Call 0.Method_Proc_221_74_F954780 (CInt(3), var_98, 0)
  loc_F95442:   var_98.Visible = True
  loc_F95457:   CVarUnk
  loc_F9545C:   VerifyVarObj
  loc_F95462:   Set var_8C = Me.DGTable
  loc_F95468:   LateIdStAd
  loc_F95476: End If
  loc_F95476: Exit Sub
End Sub

Public Sub Proc_221_75_1156D34(arg_C) '1156D34
  'Data Table: 531BC0
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_1156990: Me.FrChqDet.Visible = False
  loc_11569A4: Me.FrRem.Visible = False
  loc_11569B8: Me.FrCCDet.Visible = False
  loc_11569CC: Me.FrEmp.Visible = False
  loc_11569E0: Me.FrComp.Visible = False
  loc_11569F4: Me.FrSendRoom.Visible = False
  loc_1156A08: Me.FrTxnNo.Visible = False
  loc_1156A16: var_8C = global_116
  loc_1156A22: If Not (var_8C = 6) Then
  loc_1156A2E:   If (var_8C = 5) Then
  loc_1156A31:   End If
  loc_1156A34:   var_90 = arg_C
  loc_1156A3F:   If (var_90 = "Cheque") Then
  loc_1156A4E:     Me.FrChqDet.Visible = True
  loc_1156A62:     Me.FrRem.Visible = True
  loc_1156AA4:     Me.FrRem.Top = ((Me.FrChqDet.Top + Me.FrChqDet.Height) + CDbl(&HF))
  loc_1156AB5:   Else
  loc_1156ABD:     If (var_90 = "Credit Card") Then
  loc_1156ACC:       Me.FrCCDet.Visible = True
  loc_1156AE0:       Me.FrRem.Visible = False
  loc_1156AEB:     Else
  loc_1156AF3:       If (var_90 = "Staff") Then
  loc_1156B02:         Me.FrEmp.Visible = True
  loc_1156B16:         Me.FrRem.Visible = True
  loc_1156B58:         Me.FrRem.Top = ((Me.FrEmp.Top + Me.FrEmp.Height) + CDbl(&HF))
  loc_1156B69:       Else
  loc_1156B71:         If (var_90 = "Company") Then
  loc_1156B80:           Me.FrComp.Visible = True
  loc_1156B94:           Me.FrRem.Visible = True
  loc_1156BD6:           Me.FrRem.Top = ((Me.FrComp.Top + Me.FrComp.Height) + CDbl(&HF))
  loc_1156BE7:         Else
  loc_1156BEF:           If (var_90 = "Room") Then
  loc_1156BFE:             Me.FrSendRoom.Visible = True
  loc_1156C12:             Me.FrRem.Visible = False
  loc_1156C1D:           Else
  loc_1156C25:             If (var_90 = "UPI") Then
  loc_1156C34:               Me.FrTxnNo.Visible = True
  loc_1156C48:               Me.FrRem.Visible = True
  loc_1156C84:               Set var_A0 = Me.FrRem
  loc_1156C8A:               var_A0.Top = ((Me.FrTxnNo.Top + Me.FrTxnNo.Height) + CDbl(&HF))
  loc_1156C9B:             Else
  loc_1156CA7:               Me.FrRem.Visible = True
  loc_1156CBD:               Set var_98 = Me.Txt
  loc_1156CC3:               Call 0.Method_Proc_221_75_1156D340 (CInt(7), var_A0)
  loc_1156CDE:               Set var_A4 = Me.Txt
  loc_1156CE4:               Call 0.Method_Proc_221_75_1156D340 (CInt(7), var_A8)
  loc_1156D1D:               Me.FrRem.Top = (((Me.FrRest.Top + var_A0.Top) + var_A8.Height) + CDbl(&HF))
  loc_1156D31:             End If
  loc_1156D31:           End If
  loc_1156D31:         End If
  loc_1156D31:       End If
  loc_1156D31:     End If
  loc_1156D31:   End If
  loc_1156D31: End If
  loc_1156D31: Exit Sub
End Sub

Public Sub Proc_221_76_167AEC0
  'Data Table: 531BC0
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_AC As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_94 As String
  Dim var_86 As Integer
  Dim var_104 As Long
  Dim var_114 As Double
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim Me As Variant
  Dim var_150 As Variant
  Dim var_10C As String
  Dim var_158 As TextBox
  loc_1679704: On Error Goto loc_167AE83
  loc_1679715: Set var_8C = Me.Txt
  loc_167971B: Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90)
  loc_167973A: If (var_90.Tag = vbNullString) Then
  loc_167973D:   Exit Sub
  loc_167973E: End If
  loc_167974C: Set var_8C = Me.Txt
  loc_1679752: Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_90)
  loc_1679776: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1679787:   Set var_8C = Me.Txt
  loc_167978D:   Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_90)
  loc_1679795:   var_90.Text = vbNullString
  loc_16797A1: End If
  loc_16797AF: Set var_8C = Me.Txt
  loc_16797B5: Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_90)
  loc_16797CF: If (var_90.Visible = &HFF) Then
  loc_16797DD:   Set var_8C = Me.Txt
  loc_16797E3:   Call 0.Method_Proc_221_76_167AEC00 (CInt(7))
  loc_16797EB:   var_94 = "Amount"
  loc_167980C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_167980F:     Exit Sub
  loc_1679810:   End If
  loc_1679810: End If
  loc_1679829: Set var_8C = Me.Txt
  loc_167982F: Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11), var_90, var_94)
  loc_1679837: (global_156 = "Staff") = var_90.Text
  loc_167984F: If (var_90 And (var_94 = vbNullString)) Then
  loc_167985D:   Set var_8C = Me.Txt
  loc_1679863:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11))
  loc_167986B:   var_94 = "Staff Name"
  loc_167988C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_167988F:     Exit Sub
  loc_1679890:   End If
  loc_1679890: End If
  loc_16798A9: Set var_8C = Me.Txt
  loc_16798AF: Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF), var_90, var_94)
  loc_16798B7: (global_156 = "Room") = var_90.Text
  loc_16798CF: If (var_90 And (var_94 = vbNullString)) Then
  loc_16798DD:   Set var_8C = Me.Txt
  loc_16798E3:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF))
  loc_16798EB:   var_94 = "Room Name"
  loc_167990C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_167990F:     Exit Sub
  loc_1679910:   End If
  loc_1679910: End If
  loc_1679929: Set var_8C = Me.Txt
  loc_167992F: Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10), var_90, var_94)
  loc_1679937: (global_156 = "Company") = var_90.Text
  loc_167994F: If (var_90 And (var_94 = vbNullString)) Then
  loc_167995D:   Set var_8C = Me.Txt
  loc_1679963:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10))
  loc_167996B:   var_94 = "Company Name"
  loc_167998C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_167998F:     Exit Sub
  loc_1679990:   End If
  loc_1679990: End If
  loc_167999B: If (global_172 = "Y") Then
  loc_16799B7:   Set var_8C = Me.Txt
  loc_16799BD:   Call 0.Method_Proc_221_76_167AEC00 (CInt(9), var_90, var_94)
  loc_16799C5:   (global_156 = "Credit Card") = var_90.Text
  loc_16799DD:   If (var_90 And (var_94 = vbNullString)) Then
  loc_16799EB:     Set var_8C = Me.Txt
  loc_16799F1:     Call 0.Method_Proc_221_76_167AEC00 (CInt(9))
  loc_16799F9:     var_94 = "Credit Card No."
  loc_1679A1A:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1679A1D:       Exit Sub
  loc_1679A1E:     End If
  loc_1679A1E:   End If
  loc_1679A37:   Set var_8C = Me.Txt
  loc_1679A3D:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HA), var_90, var_94)
  loc_1679A45:   (global_156 = "Credit Card") = var_90.Text
  loc_1679A5D:   If (var_90 And (var_94 = vbNullString)) Then
  loc_1679A6B:     Set var_8C = Me.Txt
  loc_1679A71:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HA))
  loc_1679A79:     var_94 = "Holder's Name"
  loc_1679A9A:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1679A9D:       Exit Sub
  loc_1679A9E:     End If
  loc_1679A9E:   End If
  loc_1679A9E: End If
  loc_1679AB7: Set var_8C = Me.Txt
  loc_1679ABD: Call 0.Method_Proc_221_76_167AEC00 (CInt(&H12), var_90, var_94)
  loc_1679AC5: (global_156 = "UPI") = var_90.Text
  loc_1679ADD: If (var_90 And (var_94 = vbNullString)) Then
  loc_1679AEB:   Set var_8C = Me.Txt
  loc_1679AF1:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H12))
  loc_1679AF9:   var_94 = "Txn. No."
  loc_1679B1A:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1679B1D:     Exit Sub
  loc_1679B1E:   End If
  loc_1679B1E: End If
  loc_1679B37: Set var_8C = Me.Txt
  loc_1679B3D: Call 0.Method_Proc_221_76_167AEC00 (CInt(&HD), var_90, var_94)
  loc_1679B45: (global_156 = "Cheque") = var_90.Text
  loc_1679B5D: If (var_90 And (var_94 = vbNullString)) Then
  loc_1679B6B:   Set var_8C = Me.Txt
  loc_1679B71:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HD))
  loc_1679B79:   var_94 = "Cheque No."
  loc_1679B9A:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1679B9D:     Exit Sub
  loc_1679B9E:   End If
  loc_1679B9E: End If
  loc_1679BB7: Set var_8C = Me.Txt
  loc_1679BBD: Call 0.Method_Proc_221_76_167AEC00 (CInt(&HE), var_90, var_94)
  loc_1679BC5: (global_156 = "Cheque") = var_90.Text
  loc_1679BDD: If (var_90 And (var_94 = vbNullString)) Then
  loc_1679BEB:   Set var_8C = Me.Txt
  loc_1679BF1:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HE))
  loc_1679C1A:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_1679C1D:     Exit Sub
  loc_1679C1E:   End If
  loc_1679C1E: End If
  loc_1679C27: If (global_168 = 0) Then
  loc_1679C43:   var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1679C7F:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_1679C9E:     var_AC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, 0, 3))) 'String
  loc_1679CA6:     Set var_90 = Me.FGrid
  loc_1679CC0:   End If
  loc_1679CDA:   var_86 = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_1679CE6: Else
  loc_1679CFA:   var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1679D03: End If
  loc_1679D0E: var_104 = OpenType
  loc_1679D1A: If (var_104 = 6) Then
  loc_1679D21:   Set var_90 = Me.FGrid1
  loc_1679D37:   var_114 = Val(CStr(var_90.Tag))
  loc_1679D4C:   var_94 = CStr(Me.FGrid.Tag)
  loc_1679D85:   If ((CDbl(Val(var_94)) >= CDbl(var_114)) And (POSAdvanceDepDialog.AdvType <> "AD")) Then
  loc_1679D88:     GoTo loc_167AC54
  loc_1679D8B:   End If
  loc_1679D8F:   Set var_118 = Me.FGrid
  loc_1679DB2:   Set var_8C = Me.Txt
  loc_1679DB8:   Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90, var_94, 1, CVar(CLng(var_86)), var_114, var_104)
  loc_1679DC0:   var_86 = var_90.Tag
  loc_1679DC8:   var_AC = CVar(var_94) 'String
  loc_1679DCF:   LateIdCallSt
  loc_1679DE5:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1679DEA:   var_DC = 2
  loc_1679E00:   LateIdCallSt
  loc_1679E28:   Set var_8C = Me.Txt
  loc_1679E2E:   Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90, var_94, 3, CVar(CLng(var_86)), var_118, global_156)
  loc_1679E36:   var_DC = var_90.Text
  loc_1679E3E:   var_AC = CVar(var_94) 'String
  loc_1679E45:   LateIdCallSt
  loc_1679E5B:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1679E60:   var_DC = 4
  loc_1679E76:   LateIdCallSt
  loc_1679E82:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1679E87:   var_DC = 5
  loc_1679E9D:   LateIdCallSt
  loc_1679EC4:   Set var_8C = Me.Txt
  loc_1679ECA:   Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_118, global_152)
  loc_1679ED2:   var_DC = var_90.Tag
  loc_1679EE1:   LateIdCallSt
  loc_1679F12:   Set var_8C = Me.Txt
  loc_1679F18:   Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_118, CVar(var_94))
  loc_1679F20:   var_BC = var_90.Text
  loc_1679F28:   var_AC = CVar(var_94) 'String
  loc_1679F2F:   LateIdCallSt
  loc_1679F61:   Set var_8C = Me.Txt
  loc_1679F67:   Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_90, var_94, 8, CVar(CLng(var_86)), var_118)
  loc_1679F6F:   var_AC = var_90.Text
  loc_1679F77:   var_AC = CVar(var_94) 'String
  loc_1679F7E:   LateIdCallSt
  loc_1679FAF:   Set var_8C = Me.Txt
  loc_1679FB5:   Call 0.Method_Proc_221_76_167AEC00 (CInt(9), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_118)
  loc_1679FBD:   var_AC = var_90.Text
  loc_1679FC5:   var_AC = CVar(var_94) 'String
  loc_1679FCC:   LateIdCallSt
  loc_1679FFD:   Set var_8C = Me.Txt
  loc_167A003:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HA), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_118)
  loc_167A00B:   var_AC = var_90.Text
  loc_167A013:   var_AC = CVar(var_94) 'String
  loc_167A01A:   LateIdCallSt
  loc_167A04B:   Set var_8C = Me.Txt
  loc_167A051:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HB), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_118)
  loc_167A059:   var_AC = var_90.Text
  loc_167A061:   var_AC = CVar(var_94) 'String
  loc_167A068:   LateIdCallSt
  loc_167A099:   Set var_8C = Me.Txt
  loc_167A09F:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HC), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_118)
  loc_167A0A7:   var_AC = var_90.Text
  loc_167A0AF:   var_AC = CVar(var_94) 'String
  loc_167A0B6:   LateIdCallSt
  loc_167A0E8:   Set var_8C = Me.Txt
  loc_167A0EE:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H12), var_90, var_94, &H18, CVar(CLng(var_86)), var_118)
  loc_167A0F6:   var_AC = var_90.Text
  loc_167A0FE:   var_AC = CVar(var_94) 'String
  loc_167A105:   LateIdCallSt
  loc_167A136:   Set var_8C = Me.Txt
  loc_167A13C:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HD), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_118)
  loc_167A144:   var_AC = var_90.Text
  loc_167A14C:   var_AC = CVar(var_94) 'String
  loc_167A153:   LateIdCallSt
  loc_167A184:   Set var_8C = Me.Txt
  loc_167A18A:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HE), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_118)
  loc_167A192:   var_AC = var_90.Text
  loc_167A19A:   var_AC = CVar(var_94) 'String
  loc_167A1A1:   LateIdCallSt
  loc_167A1D2:   Set var_8C = Me.Txt
  loc_167A1D8:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H13), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_118)
  loc_167A1E0:   var_AC = var_90.Text
  loc_167A1E8:   var_AC = CVar(var_94) 'String
  loc_167A1EF:   LateIdCallSt
  loc_167A220:   Set var_8C = Me.Txt
  loc_167A226:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_118)
  loc_167A22E:   var_AC = var_90.Text
  loc_167A236:   var_AC = CVar(var_94) 'String
  loc_167A23D:   LateIdCallSt
  loc_167A26E:   Set var_8C = Me.Txt
  loc_167A274:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_118)
  loc_167A27C:   var_AC = var_90.Tag
  loc_167A284:   var_AC = CVar(var_94) 'String
  loc_167A28B:   LateIdCallSt
  loc_167A2BD:   Set var_8C = Me.Txt
  loc_167A2C3:   Call 0.Method_Proc_221_76_167AEC00 (CInt(8), var_90, var_94, &H12, CVar(CLng(var_86)), var_118)
  loc_167A2CB:   var_AC = var_90.Text
  loc_167A2D3:   var_AC = CVar(var_94) 'String
  loc_167A2DA:   LateIdCallSt
  loc_167A30C:   Set var_8C = Me.Txt
  loc_167A312:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF), var_90, var_94, &H13, CVar(CLng(var_86)), var_118)
  loc_167A31A:   var_AC = var_90.Tag
  loc_167A322:   var_AC = CVar(var_94) 'String
  loc_167A329:   LateIdCallSt
  loc_167A35B:   Set var_8C = Me.Txt
  loc_167A361:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_118)
  loc_167A369:   var_AC = var_90.Text
  loc_167A371:   var_AC = CVar(var_94) 'String
  loc_167A378:   LateIdCallSt
  loc_167A3AA:   Set var_8C = Me.Txt
  loc_167A3B0:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10), var_90, var_94, &H15, CVar(CLng(var_86)), var_118)
  loc_167A3B8:   var_AC = var_90.Tag
  loc_167A3C0:   var_AC = CVar(var_94) 'String
  loc_167A3C7:   LateIdCallSt
  loc_167A3F9:   Set var_8C = Me.Txt
  loc_167A3FF:   Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_118)
  loc_167A407:   var_AC = var_90.Text
  loc_167A40F:   var_AC = CVar(var_94) 'String
  loc_167A416:   LateIdCallSt
  loc_167A448:   Set var_8C = Me.Txt
  loc_167A44E:   Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, &H13, CVar(CLng(var_86)), var_118)
  loc_167A456:   var_AC = var_90.Tag
  loc_167A45E:   var_AC = CVar(var_94) 'String
  loc_167A465:   LateIdCallSt
  loc_167A482:   If (global_156 = "Room") Then
  loc_167A489:     var_CC = CVar(CLng(var_86)) 'Long
  loc_167A48E:     var_EC = &H17
  loc_167A4B4:     var_90 = Me.Fields.Item("FolioNo")
  loc_167A4C5:     var_FC = CVar(CStr(var_90.Value)) 'String
  loc_167A4CC:     LateIdCallSt
  loc_167A4E2:   End If
  loc_167A4E4:   Set var_118 = Nothing 
  loc_167A4EB: Else
  loc_167A4F4:   If (var_104 = 5) Then
  loc_167A4FB:     Set var_13C = Me.FGrid
  loc_167A51E:     Set var_8C = Me.Txt
  loc_167A524:     Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90, var_94, 1, CVar(CLng(var_86)), var_118, var_FC)
  loc_167A52C:     var_EC = var_90.Tag
  loc_167A534:     var_AC = CVar(var_94) 'String
  loc_167A53B:     LateIdCallSt
  loc_167A551:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167A556:     var_DC = 2
  loc_167A56C:     LateIdCallSt
  loc_167A594:     Set var_8C = Me.Txt
  loc_167A59A:     Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90, var_94, 3, CVar(CLng(var_86)), var_13C, global_156)
  loc_167A5A2:     var_DC = var_90.Text
  loc_167A5AA:     var_AC = CVar(var_94) 'String
  loc_167A5B1:     LateIdCallSt
  loc_167A5C7:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167A5CC:     var_DC = 4
  loc_167A5E2:     LateIdCallSt
  loc_167A5EE:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167A5F3:     var_DC = 5
  loc_167A609:     LateIdCallSt
  loc_167A630:     Set var_8C = Me.Txt
  loc_167A636:     Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, CVar(CLng(6)), CVar(CLng(var_86)), var_13C, global_152)
  loc_167A63E:     var_DC = var_90.Tag
  loc_167A64D:     LateIdCallSt
  loc_167A67E:     Set var_8C = Me.Txt
  loc_167A684:     Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, CVar(CLng(7)), CVar(CLng(var_86)), var_13C, CVar(var_94))
  loc_167A68C:     var_BC = var_90.Text
  loc_167A694:     var_AC = CVar(var_94) 'String
  loc_167A69B:     LateIdCallSt
  loc_167A6CD:     Set var_8C = Me.Txt
  loc_167A6D3:     Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_90, var_94, 8, CVar(CLng(var_86)), var_13C)
  loc_167A6DB:     var_AC = var_90.Text
  loc_167A6E3:     var_AC = CVar(var_94) 'String
  loc_167A6EA:     LateIdCallSt
  loc_167A71B:     Set var_8C = Me.Txt
  loc_167A721:     Call 0.Method_Proc_221_76_167AEC00 (CInt(9), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_13C)
  loc_167A729:     var_AC = var_90.Text
  loc_167A731:     var_AC = CVar(var_94) 'String
  loc_167A738:     LateIdCallSt
  loc_167A769:     Set var_8C = Me.Txt
  loc_167A76F:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HA), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_13C)
  loc_167A777:     var_AC = var_90.Text
  loc_167A77F:     var_AC = CVar(var_94) 'String
  loc_167A786:     LateIdCallSt
  loc_167A7B7:     Set var_8C = Me.Txt
  loc_167A7BD:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HB), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_13C)
  loc_167A7C5:     var_AC = var_90.Text
  loc_167A7CD:     var_AC = CVar(var_94) 'String
  loc_167A7D4:     LateIdCallSt
  loc_167A805:     Set var_8C = Me.Txt
  loc_167A80B:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HC), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_13C)
  loc_167A813:     var_AC = var_90.Text
  loc_167A81B:     var_AC = CVar(var_94) 'String
  loc_167A822:     LateIdCallSt
  loc_167A854:     Set var_8C = Me.Txt
  loc_167A85A:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H12), var_90, var_94, &H18, CVar(CLng(var_86)), var_13C)
  loc_167A862:     var_AC = var_90.Text
  loc_167A86A:     var_AC = CVar(var_94) 'String
  loc_167A871:     LateIdCallSt
  loc_167A8A2:     Set var_8C = Me.Txt
  loc_167A8A8:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HD), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_13C)
  loc_167A8B0:     var_AC = var_90.Text
  loc_167A8B8:     var_AC = CVar(var_94) 'String
  loc_167A8BF:     LateIdCallSt
  loc_167A8F0:     Set var_8C = Me.Txt
  loc_167A8F6:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HE), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_13C)
  loc_167A8FE:     var_AC = var_90.Text
  loc_167A906:     var_AC = CVar(var_94) 'String
  loc_167A90D:     LateIdCallSt
  loc_167A93E:     Set var_8C = Me.Txt
  loc_167A944:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H13), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_13C)
  loc_167A94C:     var_AC = var_90.Text
  loc_167A954:     var_AC = CVar(var_94) 'String
  loc_167A95B:     LateIdCallSt
  loc_167A98C:     Set var_8C = Me.Txt
  loc_167A992:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_13C)
  loc_167A99A:     var_AC = var_90.Text
  loc_167A9A2:     var_AC = CVar(var_94) 'String
  loc_167A9A9:     LateIdCallSt
  loc_167A9DA:     Set var_8C = Me.Txt
  loc_167A9E0:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H11), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_13C)
  loc_167A9E8:     var_AC = var_90.Tag
  loc_167A9F0:     var_AC = CVar(var_94) 'String
  loc_167A9F7:     LateIdCallSt
  loc_167AA29:     Set var_8C = Me.Txt
  loc_167AA2F:     Call 0.Method_Proc_221_76_167AEC00 (CInt(8), var_90, var_94, &H12, CVar(CLng(var_86)), var_13C)
  loc_167AA37:     var_AC = var_90.Text
  loc_167AA3F:     var_AC = CVar(var_94) 'String
  loc_167AA46:     LateIdCallSt
  loc_167AA78:     Set var_8C = Me.Txt
  loc_167AA7E:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF), var_90, var_94, &H13, CVar(CLng(var_86)), var_13C)
  loc_167AA86:     var_AC = var_90.Tag
  loc_167AA8E:     var_AC = CVar(var_94) 'String
  loc_167AA95:     LateIdCallSt
  loc_167AAC7:     Set var_8C = Me.Txt
  loc_167AACD:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&HF), var_90, var_94, &H14, CVar(CLng(var_86)), var_13C)
  loc_167AAD5:     var_AC = var_90.Text
  loc_167AADD:     var_AC = CVar(var_94) 'String
  loc_167AAE4:     LateIdCallSt
  loc_167AB16:     Set var_8C = Me.Txt
  loc_167AB1C:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10), var_90, var_94, &H15, CVar(CLng(var_86)), var_13C)
  loc_167AB24:     var_AC = var_90.Tag
  loc_167AB2C:     var_AC = CVar(var_94) 'String
  loc_167AB33:     LateIdCallSt
  loc_167AB65:     Set var_8C = Me.Txt
  loc_167AB6B:     Call 0.Method_Proc_221_76_167AEC00 (CInt(&H10), var_90, var_94, &H16, CVar(CLng(var_86)), var_13C)
  loc_167AB73:     var_AC = var_90.Text
  loc_167AB7B:     var_AC = CVar(var_94) 'String
  loc_167AB82:     LateIdCallSt
  loc_167ABB4:     Set var_8C = Me.Txt
  loc_167ABBA:     Call 0.Method_Proc_221_76_167AEC00 (CInt(5), var_90, var_94, &H13, CVar(CLng(var_86)), var_13C)
  loc_167ABC2:     var_AC = var_90.Tag
  loc_167ABCA:     var_AC = CVar(var_94) 'String
  loc_167ABD1:     LateIdCallSt
  loc_167ABEE:     If (global_156 = "Room") Then
  loc_167ABF5:       var_CC = CVar(CLng(var_86)) 'Long
  loc_167ABFA:       var_EC = &H17
  loc_167AC31:       var_FC = CVar(CStr(Me.Fields.Item("FolioNo").Value)) 'String
  loc_167AC38:       LateIdCallSt
  loc_167AC4E:     End If
  loc_167AC50:     Set var_13C = Nothing 
  loc_167AC54:   End If
  loc_167AC54:   ' Referenced from: 1679D88
  loc_167AC54: End If
  loc_167AC60: If (global_116 = 6) Then
  loc_167AC73:   Me.FGrid.Tag = vbNullString
  loc_167ACA0:   For var_140 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_140 'Integer
  loc_167ACAA:     var_BC = CVar(CLng(var_86)) 'Long
  loc_167ACAF:     var_DC = 8
  loc_167ACF8:     var_150 = CVar(CStr((Val(CStr(Me.FGrid.Tag)) + Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_167AD06:     Me.FGrid.Tag = var_150
  loc_167AD27:   Next var_140 'Integer
  loc_167AD36:   var_150 = Me.FGrid.Tag
  loc_167AD5C:   var_BC = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_167AD8D:   var_10C = CStr((Val(CStr(Me.FGrid1.TextMatrix))) - Val(CStr(var_150))))
  loc_167AD9B:   Set var_154 = Me.Txt
  loc_167ADA1:   Call 0.Method_Proc_221_76_167AEC00 (CInt(7), var_158, POSAdvanceDepDialog.AdvType)
  loc_167ADA9:   var_158.Text = 4
  loc_167ADD1:   Set var_90 = Me.FGrid
  loc_167ADD7:   var_FC = var_90.Tag
  loc_167ADE7:   var_114 = Val(CStr(var_FC))
  loc_167ADFC:   var_94 = CStr(Me.FGrid1.Tag)
  loc_167AE1F:   If (CDbl(Val(var_94)) = CDbl(var_114)) Then
  loc_167AE22:     Call TopCtrl1_UnknownEvent_16()
  loc_167AE27:     Exit Sub
  loc_167AE2B:   Else
  loc_167AE36:     Set var_8C = Me.Txt
  loc_167AE3C:     Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90, var_114)
  loc_167AE44:     var_90.SetFocus
  loc_167AE50:   End If
  loc_167AE50: End If
  loc_167AE50: Call Proc_221_77_10198D8(var_BC)
  loc_167AE60: Set var_8C = Me.Txt
  loc_167AE66: Call 0.Method_Proc_221_76_167AEC00 (CInt(6), var_90)
  loc_167AE6E: var_90.SetFocus
  loc_167AE7F: global_168 = 0
  loc_167AE82: Exit Sub
  loc_167AE83: ' Referenced from: 1679704
  loc_167AE99: Set var_8C = Err()
  loc_167AE9F: Call 0.Method_arg_2C (var_94, 0, var_FC, var_150)
  loc_167AEAA: MsgBox(CVar(var_94), var_168, global_168, var_114, )
  loc_167AEBD: Exit Sub
End Sub

Public Sub Proc_221_77_10198D8
  'Data Table: 531BC0
  Dim var_8C As TextBox
  loc_10196B2: Set var_88 = Me.Txt
  loc_10196B8: Call 0.Method_Proc_221_77_10198D80 (CInt(6), var_8C)
  loc_10196C0: var_8C.Text = vbNullString
  loc_10196DA: Set var_88 = Me.Txt
  loc_10196E0: Call 0.Method_Proc_221_77_10198D80 (CInt(6), var_8C)
  loc_10196E8: var_8C.Tag = vbNullString
  loc_1019702: Set var_88 = Me.Txt
  loc_1019708: Call 0.Method_Proc_221_77_10198D80 (CInt(7), var_8C)
  loc_1019710: var_8C.Text = vbNullString
  loc_101972A: Set var_88 = Me.Txt
  loc_1019730: Call 0.Method_Proc_221_77_10198D80 (CInt(8), var_8C)
  loc_1019738: var_8C.Text = vbNullString
  loc_1019752: Set var_88 = Me.Txt
  loc_1019758: Call 0.Method_Proc_221_77_10198D80 (CInt(&H11), var_8C)
  loc_1019760: var_8C.Text = vbNullString
  loc_101977A: Set var_88 = Me.Txt
  loc_1019780: Call 0.Method_Proc_221_77_10198D80 (CInt(&H13), var_8C)
  loc_1019788: var_8C.Text = vbNullString
  loc_10197A2: Set var_88 = Me.Txt
  loc_10197A8: Call 0.Method_Proc_221_77_10198D80 (CInt(9), var_8C)
  loc_10197B0: var_8C.Text = vbNullString
  loc_10197CA: Set var_88 = Me.Txt
  loc_10197D0: Call 0.Method_Proc_221_77_10198D80 (CInt(&HA), var_8C)
  loc_10197D8: var_8C.Text = vbNullString
  loc_10197F2: Set var_88 = Me.Txt
  loc_10197F8: Call 0.Method_Proc_221_77_10198D80 (CInt(&HB), var_8C)
  loc_1019800: var_8C.Text = vbNullString
  loc_101981A: Set var_88 = Me.Txt
  loc_1019820: Call 0.Method_Proc_221_77_10198D80 (CInt(&HC), var_8C)
  loc_1019828: var_8C.Text = vbNullString
  loc_1019842: Set var_88 = Me.Txt
  loc_1019848: Call 0.Method_Proc_221_77_10198D80 (CInt(&HD), var_8C)
  loc_1019850: var_8C.Text = vbNullString
  loc_101986A: Set var_88 = Me.Txt
  loc_1019870: Call 0.Method_Proc_221_77_10198D80 (CInt(&HE), var_8C)
  loc_1019878: var_8C.Text = vbNullString
  loc_1019892: Set var_88 = Me.Txt
  loc_1019898: Call 0.Method_Proc_221_77_10198D80 (CInt(&H10), var_8C)
  loc_10198A0: var_8C.Text = vbNullString
  loc_10198BA: Set var_88 = Me.Txt
  loc_10198C0: Call 0.Method_Proc_221_77_10198D80 (CInt(&H10), var_8C)
  loc_10198C8: var_8C.Tag = vbNullString
  loc_10198D4: Exit Sub
End Sub

Public Sub Proc_221_78_13B11FC
  'Data Table: 531BC0
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_158 As Variant
  Dim var_200 As TextBox
  loc_13B08D7: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B08DC: var_C8 = 1
  loc_13B0913: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_13B091A:   Set var_F4 = Me.FGrid
  loc_13B095A:   Set var_DC = Me.Txt
  loc_13B0960:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), 1)
  loc_13B0968:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B0993:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0998:   var_C8 = 2
  loc_13B09B5:   global_156 = CStr(var_F4.TextMatrix))
  loc_13B09DE:   var_C8 = 3
  loc_13B0A03:   Set var_DC = Me.Txt
  loc_13B0A09:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(6), var_F8, CStr(var_F4.TextMatrix)), var_C8, CVar(CLng(Me.FGrid.Row)))
  loc_13B0A11:   var_F8.Text = var_C8
  loc_13B0A3C:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0A41:   var_C8 = 4
  loc_13B0A5E:   global_148 = CStr(var_F4.TextMatrix))
  loc_13B0A82:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0A87:   var_C8 = 5
  loc_13B0AA4:   global_152 = CStr(var_F4.TextMatrix))
  loc_13B0AC8:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0AF1:   Set var_DC = Me.Txt
  loc_13B0AF7:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(5), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(6)), var_A8, CVar(CLng(6)))
  loc_13B0AFF:   var_F8.Tag = var_A8
  loc_13B0B2A:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0B32:   var_C8 = CVar(CLng(7)) 'Long
  loc_13B0B69:   var_158 = var_F4.TextMatrix)
  loc_13B0B79:   Set var_F8 = Me.FGrid
  loc_13B0BD7:   Set var_1FC = Me.Txt
  loc_13B0BDD:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(5), var_200, CStr(IIf((CStr(var_F4.TextMatrix)) = vbNullString), CVar(CStr(var_158)), CVar(CStr(var_F4.TextMatrix))))), CVar(CLng(7)), CVar(CLng(var_F8.Row)), var_158, CVar(CLng(6)))
  loc_13B0BE5:   var_200.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0C28:   var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13B0C2D:   var_C8 = &H17
  loc_13B0C39:   var_EC = var_F4.TextMatrix)
  loc_13B0C4A:   Proc_6_39_E7C810(var_158, CVar(CStr(var_EC)), var_C8, var_A8, var_EC)
  loc_13B0C61:   Set var_DC = Me.Txt
  loc_13B0C67:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(4), var_F8, CStr(var_158), var_C8)
  loc_13B0C6F:   var_F8.Text = var_A8
  loc_13B0CC8:   Set var_DC = Me.Txt
  loc_13B0CCE:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(7), var_F8, CStr(var_F4.TextMatrix)), 8)
  loc_13B0CD6:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0D2A:   Set var_DC = Me.Txt
  loc_13B0D30:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(9), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(9)))
  loc_13B0D38:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0D8C:   Set var_DC = Me.Txt
  loc_13B0D92:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&HA), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HA)))
  loc_13B0D9A:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0DEE:   Set var_DC = Me.Txt
  loc_13B0DF4:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&HB), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HB)))
  loc_13B0DFC:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0E50:   Set var_DC = Me.Txt
  loc_13B0E56:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&HC), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HC)))
  loc_13B0E5E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0EB3:   Set var_DC = Me.Txt
  loc_13B0EB9:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H12), var_F8, CStr(var_F4.TextMatrix)), &H18)
  loc_13B0EC1:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0F15:   Set var_DC = Me.Txt
  loc_13B0F1B:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&HD), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HD)))
  loc_13B0F23:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0F77:   Set var_DC = Me.Txt
  loc_13B0F7D:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&HE), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HE)))
  loc_13B0F85:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B0FD9:   Set var_DC = Me.Txt
  loc_13B0FDF:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H13), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&HF)))
  loc_13B0FE7:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B103B:   Set var_DC = Me.Txt
  loc_13B1041:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H10)))
  loc_13B1049:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B109D:   Set var_DC = Me.Txt
  loc_13B10A3:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H11), var_F8, CStr(var_F4.TextMatrix)), CVar(CLng(&H11)))
  loc_13B10AB:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B1100:   Set var_DC = Me.Txt
  loc_13B1106:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(8), var_F8, CStr(var_F4.TextMatrix)), &H12)
  loc_13B110E:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B1163:   Set var_DC = Me.Txt
  loc_13B1169:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H15)
  loc_13B1171:   var_F8.Tag = CVar(CLng(Me.FGrid.Row))
  loc_13B11C6:   Set var_DC = Me.Txt
  loc_13B11CC:   Call 0.Method_Proc_221_78_13B11FC0 (CInt(&H10), var_F8, CStr(var_F4.TextMatrix)), &H16)
  loc_13B11D4:   var_F8.Text = CVar(CLng(Me.FGrid.Row))
  loc_13B11F1:   global_168 = &HFF
  loc_13B11F6:   Set var_F4 = Nothing 
  loc_13B11FA: End If
  loc_13B11FA: Exit Sub
End Sub

Public Sub Proc_221_79_EE32B8
  'Data Table: 531BC0
  loc_EE3206: On Error Goto loc_EE324C
  loc_EE321E: Call 0.Method_arg_18C (var_8C)
  loc_EE3226: Call var_8C.Show
  loc_EE323B: Call 0.Method_arg_188 (var_B0)
  loc_EE3243: var_88 = var_B0
  loc_EE3246: Proc_221_79_EE32B8 = 1
  loc_EE324C: ' Referenced from: EE3206
  loc_EE3254: Set var_8C = Err()
  loc_EE325A: Call 0.Method_arg_1C (var_B4)
  loc_EE326B: If (var_B4 <> 0) Then
  loc_EE3276:   Set var_8C = Err()
  loc_EE327C:   Call 0.Method_arg_2C (var_B0)
  loc_EE329D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE32B0: End If
  loc_EE32B0: Proc_221_79_EE32B8 = 
End Sub

Public Sub Proc_221_80_1100C54
  'Data Table: 531BC0
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  loc_1100919: Set var_88 = Me.Txt
  loc_110091F: Call 0.Method_Proc_221_80_1100C540 (CInt(3), var_8C)
  loc_1100927: var_8C.Visible = False
  loc_110093E: Set var_88 = Me.Lbl
  loc_1100944: Call 0.Method_Proc_221_80_1100C540 (1, var_8C)
  loc_110094C: var_8C.Visible = False
  loc_110095C: Set var_94 = Me.FGrid1
  loc_110096B: var_94.Cols = 7
  loc_1100970: var_A4 = 0
  loc_1100979: var_C4 = 0
  loc_1100985: LateIdCallSt
  loc_110098D: var_A4 = 0
  loc_1100996: var_C4 = 1
  loc_110099F: var_E4 = "FP No"
  loc_11009A8: LateIdCallSt
  loc_11009B0: var_A4 = 1
  loc_11009BF: var_C4 = CVar(CInt(1)) 'Integer
  loc_11009C6: LateIdCallSt
  loc_11009CE: var_A4 = 1
  loc_11009D7: var_C4 = &H3B6
  loc_11009E3: LateIdCallSt
  loc_11009EB: var_A4 = 0
  loc_11009F4: var_C4 = 2
  loc_11009FD: var_E4 = "Party Name"
  loc_1100A06: LateIdCallSt
  loc_1100A0E: var_A4 = 2
  loc_1100A1D: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100A24: LateIdCallSt
  loc_1100A2C: var_A4 = 2
  loc_1100A3B: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100A42: LateIdCallSt
  loc_1100A4A: var_A4 = 2
  loc_1100A53: var_C4 = &HAF0
  loc_1100A5F: LateIdCallSt
  loc_1100A67: var_A4 = 0
  loc_1100A70: var_C4 = 3
  loc_1100A79: var_E4 = "FP Date"
  loc_1100A82: LateIdCallSt
  loc_1100A8A: var_A4 = 3
  loc_1100A99: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100AA0: LateIdCallSt
  loc_1100AA8: var_A4 = 3
  loc_1100AB7: var_C4 = CVar(CInt(1)) 'Integer
  loc_1100ABE: LateIdCallSt
  loc_1100AC6: var_A4 = 3
  loc_1100ACF: var_C4 = &H578
  loc_1100ADB: LateIdCallSt
  loc_1100AE3: var_A4 = 0
  loc_1100AEC: var_C4 = 4
  loc_1100AF5: var_E4 = "Amount"
  loc_1100AFE: LateIdCallSt
  loc_1100B06: var_A4 = 4
  loc_1100B15: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100B1C: LateIdCallSt
  loc_1100B24: var_A4 = 4
  loc_1100B33: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100B3A: LateIdCallSt
  loc_1100B42: var_A4 = 4
  loc_1100B4B: var_C4 = &H5DC
  loc_1100B57: LateIdCallSt
  loc_1100B5F: var_A4 = 0
  loc_1100B68: var_C4 = 5
  loc_1100B71: var_E4 = "Balance"
  loc_1100B7A: LateIdCallSt
  loc_1100B82: var_A4 = 5
  loc_1100B91: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100B98: LateIdCallSt
  loc_1100BA0: var_A4 = 5
  loc_1100BAF: var_C4 = CVar(CInt(7)) 'Integer
  loc_1100BB6: LateIdCallSt
  loc_1100BBE: var_A4 = 5
  loc_1100BC7: var_C4 = 0
  loc_1100BD3: LateIdCallSt
  loc_1100BDB: var_A4 = 0
  loc_1100BE4: var_C4 = 6
  loc_1100BF6: LateIdCallSt
  loc_1100BFE: var_A4 = 6
  loc_1100C13: LateIdCallSt
  loc_1100C1B: var_A4 = True
  loc_1100C22: var_94.Visible = var_A4
  loc_1100C32: Set var_88 = Me.Label1
  loc_1100C38: Call 0.Method_Proc_221_80_1100C540 (1, var_8C, &HFF, var_94, 0, var_A4, var_94)
  loc_1100C40: var_8C.Visible = "Book DocId"
  loc_1100C4E: Set var_94 = Nothing 
  loc_1100C52: Exit Sub
End Sub
