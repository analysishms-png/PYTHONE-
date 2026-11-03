VERSION 5.00
Begin VB.Form RsBookingEntryAdvance
  Caption = "Payment Entry"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6810
  ClientHeight = 6465
  LockControls = -1  'True
  StartUpPosition = 3 'Windows Default
  Begin Frame FrComp
    Left = 60
    Top = 6480
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 41
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
  End
  Begin Frame FrEmp
    Left = 0
    Top = 6870
    Width = 4965
    Height = 255
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 3825
      Height = 255
      TabIndex = 38
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
      TabIndex = 39
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
    Left = 6960
    Top = 4200
    Width = 3150
    Height = 255
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 30
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 35
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
      TabIndex = 36
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
    Left = 6840
    Top = 1920
    Width = 2595
    Height = 525
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 270
      Width = 1440
      Height = 255
      TabIndex = 29
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
      Index = 21
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 0
      Width = 1440
      Height = 255
      TabIndex = 28
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
      Caption = "Cheque Dt."
      Index = 16
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 990
      Height = 240
      TabIndex = 31
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
      Caption = "Cheque No."
      Index = 15
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 1065
      Height = 240
      TabIndex = 30
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
    Left = 6840
    Top = 840
    Width = 4095
    Height = 795
    Visible = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 20
      BackColor = &HFFFFFF&
      Left = 1110
      Top = 540
      Width = 1575
      Height = 255
      TabIndex = 23
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
      TabIndex = 22
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
      TabIndex = 21
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
      Caption = "Exp.Dt."
      Index = 20
      ForeColor = &H0&
      Left = -15
      Top = 540
      Width = 630
      Height = 240
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
      Caption = "Holder"
      Index = 19
      ForeColor = &H0&
      Left = -15
      Top = 270
      Width = 615
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
      Caption = "C.C. No."
      Index = 18
      ForeColor = &H0&
      Left = -15
      Top = 0
      Width = 720
      Height = 240
      TabIndex = 24
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
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    Left = 1365
    Top = 2160
    Width = 5265
    Height = 255
    TabIndex = 17
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
    Left = 1365
    Top = 1605
    Width = 5295
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 1365
    Top = 1875
    Width = 1455
    Height = 255
    TabIndex = 9
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
    Index = 4
    BackColor = &HFFFFFF&
    Left = 1365
    Top = 960
    Width = 1170
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    Left = 3690
    Top = 1875
    Width = 1395
    Height = 255
    Visible = 0   'False
    TabIndex = 7
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
    Left = 1365
    Top = 1320
    Width = 5295
    Height = 255
    TabIndex = 6
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
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1395
    Top = 495
    Width = 930
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 5400
    Top = 495
    Width = 1155
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6810
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 3240
    Width = 6780
    Height = 1560
    TabIndex = 18
  End
  Begin MSHFlexGrid FGrid1
    Left = -120
    Top = 4920
    Width = 6780
    Height = 1515
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSFlexGrid FGPoint
    Left = 6960
    Top = 2640
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 32
  End
  Begin DataGrid DGPayType
    Left = 6960
    Top = 5040
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGRoom
    Left = 5040
    Top = 6840
    Width = 2355
    Height = 2430
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin DataGrid DGEmp
    Left = 8835
    Top = 3360
    Width = 4170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 44
  End
  Begin DataGrid DGFPNo
    Left = 120
    Top = 7320
    Width = 4560
    Height = 2430
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin Label LblNarr
    Caption = "Narration"
    ForeColor = &H0&
    Left = 135
    Top = 2205
    Width = 825
    Height = 240
    TabIndex = 16
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
    Left = 150
    Top = 1605
    Width = 480
    Height = 240
    TabIndex = 15
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
    Caption = "Amount"
    Index = 14
    ForeColor = &H0&
    Left = 150
    Top = 1875
    Width = 675
    Height = 240
    TabIndex = 14
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
  Begin Shape Shape1
    Index = 1
    BackColor = &H8000000F&
    BorderColor = &H400040&
    Left = 0
    Top = 915
    Width = 6765
    Height = 2295
    BorderWidth = 2
    FillColor = &H8000000F&
  End
  Begin Label Lbl
    Caption = "Booking  No."
    Index = 0
    ForeColor = &H0&
    Left = 150
    Top = 1080
    Width = 1155
    Height = 240
    TabIndex = 13
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
    Caption = "Tip"
    Index = 21
    ForeColor = &H0&
    Left = 3015
    Top = 1875
    Width = 300
    Height = 240
    Visible = 0   'False
    TabIndex = 12
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
    Caption = "Party Name"
    Index = 12
    ForeColor = &H0&
    Left = 150
    Top = 1350
    Width = 1065
    Height = 240
    TabIndex = 11
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
    Left = 0
    Top = 435
    Width = 6750
    Height = 405
    BorderWidth = 2
    FillColor = &HC0FFC0&
  End
  Begin Label Lbl
    Caption = "Rect No."
    Index = 36
    ForeColor = &H0&
    Left = 165
    Top = 495
    Width = 780
    Height = 240
    TabIndex = 5
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
    Caption = "Date"
    Index = 37
    ForeColor = &H0&
    Left = 4740
    Top = 495
    Width = 435
    Height = 240
    TabIndex = 4
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 2505
    Top = 495
    Width = 675
    Height = 240
    TabIndex = 3
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
End

Attribute VB_Name = "RsBookingEntryAdvance"


Private Sub Form_Load() '104E850
  'Data Table: 460870
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim unk_46087D As Connection15
  loc_104E5FC: On Error Goto loc_104E80B
  loc_104E617: Proc_6_23_DFBA28(Me, 6195)
  loc_104E629: Set var_90 = Me.TopCtrl1
  loc_104E62F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_104E63D: Call 0.Method_arg_50 (var_B8)
  loc_104E645: var_C8 = CVar(var_B8) 'String
  loc_104E653: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_6803000F(var_C8)
  loc_104E65C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_104E67F: var_B8 = "SELECT P.DocId AS Code, P.BNo AS Name,P.CustName,LogSite_Code,Site_Code FROM PackingOrder P WHERE LogSite_Code='" & MemVar_1F92078
  loc_104E6A0: unk_46087D.Execute var_B8 & "' and P.RestCode='" & global_52 & "'", var_C8, -1
  loc_104E6D3: CVarUnk
  loc_104E6D8: VerifyVarObj
  loc_104E6E4: LateIdStAd
  loc_104E6FE: Call 0.Method_arg_38 (MemVar_1F923AC, Me.DGFPNo)
  loc_104E70F: Call 0.Method_arg_3C (MemVar_1F920EC, Me.TopCtrl1)
  loc_104E720: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_104E731: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_104E742: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_104E753: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_104E764: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_104E775: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_104E786: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_104E797: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_104E7B1: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_104E7BF: Set var_90 = MemVar_1F92044
  loc_104E7CE: Call 0.Method_Form_Load8 (var_90)
  loc_104E7E4: Me.DGFPNo.Clone
  loc_104E7FE: Call 0.Method_arg_50 (var_90, -1)
  loc_104E80A: Exit Sub
  loc_104E80B: ' Referenced from: 104E5FC
  loc_104E819: Call 0.Method_arg_2C (var_B8, Err())
  loc_104E83A: MsgBox(CVar(var_B8), &H40, "Information", var_E8, var_118)
  loc_104E84D: Exit Sub
  loc_104E84E: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E6EC
  'Data Table: 460870
  loc_E4E6C4: Set var_88 = MemVar_1F92244.Picture3
  loc_E4E6D5: Call 0.Method_arg_74 (MDIForm1.Picture3.Left)
  loc_E4E6E5: Call 0.Method_arg_7C (CDbl(590))
  loc_E4E6EA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E207D4
  'Data Table: 460870
  loc_E207C8: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E207D0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18568
  'Data Table: 460870
  loc_E1855D: Me.Global.Unload Me
  loc_E18565: Exit Sub
End Sub

Public Function global_52Get() '46154C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '46155B
  global_52 = Value
End Sub
