VERSION 5.00
Begin VB.Form RsPOSCustInfo
  Caption = "Customer Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsPOSCustInfo.frx":0
  LinkTopic = "Form1"
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6690
  ClientHeight = 3765
  StartUpPosition = 2 'CenterScreen
  Begin TextBox TxtCust
    Index = 7
    ForeColor = &HC00000&
    Left = 2310
    Top = 2745
    Width = 3645
    Height = 285
    TabIndex = 7
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
  Begin TextBox TxtCust
    Index = 6
    ForeColor = &HC00000&
    Left = 2310
    Top = 2430
    Width = 3645
    Height = 285
    TabIndex = 6
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
  Begin TextBox TxtCust
    Index = 5
    ForeColor = &HC00000&
    Left = 2310
    Top = 2115
    Width = 3645
    Height = 285
    TabIndex = 5
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
  Begin TextBox TxtCust
    Index = 4
    ForeColor = &HC00000&
    Left = 2310
    Top = 1800
    Width = 3645
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
  Begin Frame FrmFind
    Caption = "Frame1"
    Left = 1110
    Top = 5430
    Width = 11610
    Height = 2145
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin CommandButton cmdFind
      Caption = "&Find"
      Left = 5385
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      MaskColor = &H8000000F&
    End
    Begin CommandButton cmdClose
      Caption = "&Close"
      Left = 6465
      Top = 1545
      Width = 1080
      Height = 420
      TabIndex = 17
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
    Begin DataCombo TXT_GNAME
      Left = 2790
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 19
    End
    Begin DataCombo TXT_CITY
      Left = 7275
      Top = 420
      Width = 2985
      Height = 315
      TabIndex = 20
    End
    Begin DataCombo TXT_STATE
      Left = 2790
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 21
    End
    Begin DataCombo TXT_COUNTRY
      Left = 2790
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 22
    End
    Begin DataCombo TXT_TYPE
      Left = 7275
      Top = 1080
      Width = 2985
      Height = 315
      TabIndex = 23
    End
    Begin DataCombo TXT_NATION
      Left = 7275
      Top = 750
      Width = 2985
      Height = 315
      TabIndex = 24
    End
    Begin DataCombo TXT_FOLIONO
      Left = 2790
      Top = 90
      Width = 2985
      Height = 315
      TabIndex = 25
    End
    Begin Label Lbl
      Caption = "Country Type"
      Index = 75
      ForeColor = &H0&
      Left = 5955
      Top = 1125
      Width = 1140
      Height = 240
      TabIndex = 32
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
      Caption = "State"
      Index = 77
      ForeColor = &H0&
      Left = 1875
      Top = 780
      Width = 450
      Height = 240
      TabIndex = 31
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
      Caption = "Country"
      Index = 78
      ForeColor = &H0&
      Left = 1875
      Top = 1110
      Width = 660
      Height = 240
      TabIndex = 30
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
      Caption = "City"
      Index = 79
      ForeColor = &H0&
      Left = 5955
      Top = 495
      Width = 315
      Height = 240
      TabIndex = 29
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
      Caption = "Nationality"
      Index = 80
      ForeColor = &H0&
      Left = 5955
      Top = 795
      Width = 885
      Height = 240
      TabIndex = 28
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
      Caption = "Name"
      Index = 81
      ForeColor = &H0&
      Left = 1875
      Top = 450
      Width = 495
      Height = 240
      TabIndex = 27
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
      Caption = "Folio No."
      Index = 40
      ForeColor = &H0&
      Left = 1875
      Top = 135
      Width = 750
      Height = 240
      TabIndex = 26
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
  Begin CommandButton Command1
    Caption = "Search"
    Left = 6690
    Top = 3210
    Width = 1635
    Height = 480
    TabIndex = 15
  End
  Begin TextBox TxtCust
    Index = 1
    ForeColor = &HC00000&
    Left = 2310
    Top = 855
    Width = 3645
    Height = 285
    TabIndex = 1
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
  Begin TextBox TxtCust
    Index = 2
    ForeColor = &HC00000&
    Left = 2310
    Top = 1170
    Width = 3645
    Height = 285
    TabIndex = 2
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
  Begin TextBox TxtCust
    Index = 3
    ForeColor = &HC00000&
    Left = 2310
    Top = 1485
    Width = 3645
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
  Begin TextBox TxtCust
    Index = 0
    ForeColor = &HC00000&
    Left = 2310
    Top = 540
    Width = 2265
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin BtnEnh CmdOK
    Left = 1590
    Top = 3090
    Width = 1470
    Height = 480
    TabIndex = 8
  End
End
Begin BtnEnh CmdCancel
  Left = 4515
  Top = 3075
  Width = 1470
  Height = 480
  TabIndex = 10
End
Begin BtnEnh CmdReset
  Left = 3045
  Top = 3075
  Width = 1470
  Height = 480
  TabIndex = 9
End
Begin Label LblRewardPoint
  Caption = "Reward Points Balance:"
  ForeColor = &HFF&
  Left = 240
  Top = 90
  Width = 2145
  Height = 300
  TabIndex = 37
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Arial Narrow"
    Size = 11.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "Anniversary"
  Index = 7
  ForeColor = &HC00000&
  Left = 735
  Top = 2775
  Width = 1125
  Height = 240
  TabIndex = 36
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
  Caption = "BirthDate"
  Index = 8
  ForeColor = &HC00000&
  Left = 735
  Top = 2445
  Width = 885
  Height = 240
  TabIndex = 35
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
  Caption = "DisLike"
  Index = 9
  ForeColor = &HC00000&
  Left = 735
  Top = 2130
  Width = 690
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
End
Begin Label Label1
  Caption = "Like"
  Index = 10
  ForeColor = &HC00000&
  Left = 735
  Top = 1845
  Width = 405
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
Begin Label Label1
  Caption = "Customer Name"
  Index = 13
  ForeColor = &HC00000&
  Left = 735
  Top = 870
  Width = 1515
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
Begin Label Label1
  Caption = "Address"
  Index = 12
  ForeColor = &HC00000&
  Left = 735
  Top = 1200
  Width = 750
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
Begin Label Label1
  Caption = "City"
  Index = 11
  ForeColor = &HC00000&
  Left = 735
  Top = 1515
  Width = 360
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
Begin Label Label1
  Caption = "Phone No"
  Index = 14
  ForeColor = &HC00000&
  Left = 750
  Top = 555
  Width = 930
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
End

Attribute VB_Name = "RsPOSCustInfo"


Private Sub CmdOK_UnknownEvent_9 '106156C
  'Data Table: 46BF54
  Dim var_A0 As Byte
  Dim var_C0 As Variant
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_10612EC: var_A0 = 0
  loc_10612FE: Set var_88 = Me.TxtCust
  loc_1061304: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(0), var_8C)
  loc_106130C: var_C0 = CVar(var_8C) 'Address
  loc_1061314: var_90 = ParentForm
  loc_106131C: LateMemCallSt
  loc_106133E: Set var_88 = Me.TxtCust
  loc_1061344: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(1), var_8C, 1)
  loc_106134C: var_C0 = CVar(var_8C) 'Address
  loc_106135C: LateMemCallSt
  loc_106137A: Set var_88 = Me.TxtCust
  loc_1061380: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(1), var_8C, var_D4, ParentForm)
  loc_1061388: var_C0 = var_8C.Tag
  loc_106139E: var_90 = ParentForm
  loc_10613AE: var_90.TxtCust.Tag = 1
  loc_10613D4: Set var_88 = var_8C(CInt(2))
  loc_10613DA: Call 0.Method_CmdOK_UnknownEvent_90 (2, CVar(var_D4), var_90)
  loc_10613F2: LateMemCallSt
  loc_1061414: Set var_88 = var_8C(CInt(3))
  loc_106141A: Call 0.Method_CmdOK_UnknownEvent_90 (3, ParentForm, CVar(var_8C))
  loc_1061432: LateMemCallSt
  loc_1061454: Set var_88 = var_8C(CInt(4))
  loc_106145A: Call 0.Method_CmdOK_UnknownEvent_90 (4, ParentForm, CVar(var_8C))
  loc_1061472: LateMemCallSt
  loc_1061494: Set var_88 = var_8C(CInt(5))
  loc_106149A: Call 0.Method_CmdOK_UnknownEvent_90 (5, ParentForm, CVar(var_8C))
  loc_10614B2: LateMemCallSt
  loc_10614D4: Set var_88 = var_8C(CInt(6))
  loc_10614DA: Call 0.Method_CmdOK_UnknownEvent_90 (6, ParentForm, CVar(var_8C))
  loc_10614F2: LateMemCallSt
  loc_1061514: Set var_88 = var_8C(CInt(7))
  loc_106151A: Call 0.Method_CmdOK_UnknownEvent_90 (7, ParentForm, CVar(var_8C))
  loc_1061522: var_C0 = CVar(var_8C) 'Address
  loc_106152A: var_90 = ParentForm
  loc_1061532: LateMemCallSt
  loc_106154D: Call ParentForm.UpdateDetail
  loc_1061563: Me.Global.Unload Me
  loc_106156B: Exit Sub
End Sub

Private Sub CmdReset_UnknownEvent_9 'DFED84
  'Data Table: 46BF54
  loc_DFED7C: Call Proc_208_13_EE121C()
  loc_DFED81: Exit Sub
  loc_DFED82:  = 
End Sub

Private Sub Form_Load() '10A81CC
  'Data Table: 46BF54
  Dim var_88 As Label
  Dim var_C0 As Variant
  loc_10A7F03: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10A7F15: Me.LblRewardPoint.Caption = vbNullString
  loc_10A7F27: var_88 = ParentForm
  loc_10A7F46: Set var_AC = var_B0(CInt(0))
  loc_10A7F4C: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A7F54: var_88.TextBox.Text = 0
  loc_10A7F72: var_88 = ParentForm
  loc_10A7F91: Set var_AC = var_B0(CInt(1))
  loc_10A7F97: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A7F9F: var_88.TextBox.Text = 1
  loc_10A7FC5: var_C0 = ParentForm.TxtCust
  loc_10A7FE2: Set var_AC = var_B0(CInt(1))
  loc_10A7FE8: Call 0.Method_Form_Load0 (CStr(var_C0.Tag))
  loc_10A7FF0: var_C0.TextBox.Tag = 1
  loc_10A8012: var_88 = ParentForm
  loc_10A8031: Set var_AC = var_B0(CInt(2))
  loc_10A8037: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A803F: var_88.TextBox.Text = 2
  loc_10A805D: var_88 = ParentForm
  loc_10A807C: Set var_AC = var_B0(CInt(3))
  loc_10A8082: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A808A: var_88.TextBox.Text = 3
  loc_10A80A8: var_88 = ParentForm
  loc_10A80C7: Set var_AC = var_B0(CInt(4))
  loc_10A80CD: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A80D5: var_88.TextBox.Text = 4
  loc_10A80F3: var_88 = ParentForm
  loc_10A8112: Set var_AC = var_B0(CInt(5))
  loc_10A8118: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A8120: var_88.TextBox.Text = 5
  loc_10A813E: var_88 = ParentForm
  loc_10A815D: Set var_AC = var_B0(CInt(6))
  loc_10A8163: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A816B: var_88.TextBox.Text = 6
  loc_10A8189: var_88 = ParentForm
  loc_10A81A8: Set var_AC = var_B0(CInt(7))
  loc_10A81AE: Call 0.Method_Form_Load0 (CStr(var_88.TxtCust))
  loc_10A81B6: var_88.TextBox.Text = 7
  loc_10A81CA: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E91670
  'Data Table: 46BF54
  Dim var_88 As Variant
  loc_E91604: On Error Goto loc_E9162A
  loc_E91611: If (CLng(KeyCode) = &H1B) Then
  loc_E91621:   Me.Global.Unload Me
  loc_E91629: End If
  loc_E91629: Exit Sub
  loc_E9162A: ' Referenced from: E91604
  loc_E91632: Set var_88 = Err()
  loc_E91638: Call 0.Method_arg_2C (var_8C)
  loc_E91659: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E9166C: Exit Sub
  loc_E9166D: Exit Sub
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E160E4
  'Data Table: 46BF54
  Dim var_23F8 As Variant
  loc_E160D9: Me.Global.Unload Me
  loc_E160E1: Exit Sub
  loc_E160E2: var_23F8 = CVar() 'String
End Sub

Private Sub Command1_Click() '1102F88
  'Data Table: 46BF54
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As String
  Dim MemVar_1F920E4 As String
  Dim unk_46BF6B As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_1102C58: On Error Goto loc_1102F81
  loc_1102C7E: If (CStr(Me.TXT_GNAME.BoundText) <> vbNullString) Then
  loc_1102CA8:   var_88 = var_88 & " And GUESTPROF.Name='" & CStr(Me.TXT_GNAME.Text) & "'"
  loc_1102CBA: End If
  loc_1102CDD: If (CStr(Me.TXT_STATE.BoundText) <> vbNullString) Then
  loc_1102D07:   var_88 = var_88 & " And GUESTPROF.StateName='" & CStr(Me.TXT_STATE.Text) & "'"
  loc_1102D19: End If
  loc_1102D3C: If (CStr(Me.TXT_CITY.BoundText) <> vbNullString) Then
  loc_1102D66:   var_88 = var_88 & " And GUESTPROF.CityName='" & CStr(Me.TXT_CITY.Text) & "'"
  loc_1102D78: End If
  loc_1102D9B: If (CStr(Me.TXT_COUNTRY.BoundText) <> vbNullString) Then
  loc_1102DC5:   var_88 = var_88 & " And GUESTPROF.CountryName='" & CStr(Me.TXT_COUNTRY.Text) & "'"
  loc_1102DD7: End If
  loc_1102DFA: If (CStr(Me.TXT_NATION.BoundText) <> vbNullString) Then
  loc_1102E24:   var_88 = var_88 & " And GUESTPROF.Nationality='" & CStr(Me.TXT_NATION.Text) & "'"
  loc_1102E36: End If
  loc_1102E59: If (CStr(Me.TXT_TYPE.BoundText) <> vbNullString) Then
  loc_1102E6A:   Set var_90 = Me.TXT_TYPE
  loc_1102E70:   var_A0 = var_90.Text
  loc_1102E83:   var_88 = var_88 & " And GUESTPROF.Type='" & CStr(var_A0) & "'"
  loc_1102E95: End If
  loc_1102E9C: var_A4 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_1102EB1: MemVar_1F920E4 = var_A4 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " Order by GuestProf.Name"
  loc_1102ED4: unk_46BF6B.Execute MemVar_1F920E4, var_A0, -1
  loc_1102EFC: If (var_90.RecordCount <= 0) Then
  loc_1102F05:   var_D0 = "Information"
  loc_1102F20:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_1102F30:   Exit Sub
  loc_1102F31: End If
  loc_1102F37: Set var_90 = Me.FrmFind
  loc_1102F3D: var_90.Visible = False
  loc_1102F4B: MemVar_1F92120 = Me
  loc_1102F58: Proc_6_126_F1BCC0("3200,2500,2500,2400", var_90)
  loc_1102F73: Call 0.Method_arg_2B0 (1, var_D0)
  loc_1102F7D: Set var_8C = Nothing
  loc_1102F80: Exit Sub
  loc_1102F81: ' Referenced from: 1102C58
  loc_1102F81: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_1102F86: Exit Sub
End Sub

Private Sub TxtCust_GotFocus(Index As Integer) 'EEA198
  'Data Table: 46BF54
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  loc_EEA0E2: Set var_88 = Me.TxtCust
  loc_EEA0E8: Call 0.Method_TxtCust_GotFocus0 (Index)
  loc_EEA0F6: Proc_6_74_E226B0(var_8C)
  loc_EEA105: var_92 = Index
  loc_EEA110: If Not (var_92 = CInt(6)) Then
  loc_EEA11B:   If (var_92 = CInt(7)) Then
  loc_EEA11E:   End If
  loc_EEA12D:   Set var_88 = Me.TxtCust
  loc_EEA133:   Call 0.Method_TxtCust_GotFocus0 (Index, var_8C, 0)
  loc_EEA13B:   var_8C.SelStart = var_92
  loc_EEA154:   Set var_88 = Me.TxtCust
  loc_EEA15A:   Call 0.Method_TxtCust_GotFocus0 (Index, var_8C)
  loc_EEA175:   Set var_90 = Me.TxtCust
  loc_EEA17B:   Call 0.Method_TxtCust_GotFocus0 (Index, var_9C)
  loc_EEA183:   var_9C.SelLength = Len(var_8C.Text)
  loc_EEA196: End If
  loc_EEA196: Exit Sub
End Sub

Private Sub TxtCust_KeyDown(KeyCode As Integer, Shift As Integer) 'E6B028
  'Data Table: 46BF54
  Dim var_88 As Integer
  loc_E6AFD6: If (CLng(Shift) = &H1B) Then
  loc_E6AFD9:   Exit Sub
  loc_E6AFDA: End If
  loc_E6AFDD: var_88 = KeyCode
  loc_E6AFF3: If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_E6AFFC:   Proc_6_76_E52838(Shift, arg_14)
  loc_E6B001: End If
  loc_E6B016: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6B01F:   Proc_6_75_E527CC(Shift, arg_14)
  loc_E6B024: End If
  loc_E6B024: Exit Sub
End Sub

Private Sub TxtCust_KeyPress(KeyAscii As Integer) 'E1EC30
  'Data Table: 46BF54
  Dim arg_10 As Integer
  Dim var_96 As Integer
  loc_E1EC1A: Proc_6_133_E7EF78(var_94)
  loc_E1EC23: arg_10 = CInt(var_94)
  loc_E1EC2C: var_96 = KeyAscii
  loc_E1EC2F: Exit Sub
End Sub

Private Sub TxtCust_LostFocus(Index As Integer) 'E4C664
  'Data Table: 46BF54
  loc_E4C642: Set var_88 = Me.TxtCust
  loc_E4C648: Call 0.Method_TxtCust_LostFocus0 (Index)
  loc_E4C656: Proc_6_73_E22704(var_8C)
  loc_E4C662: Exit Sub
End Sub

Private Sub TxtCust_Validate(Cancel As Boolean) '1439CEC
  'Data Table: 46BF54
  Dim var_8E As Integer
  Dim var_A8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim unk_46BF6B As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Variant
  Dim var_128 As Variant
  Dim var_98 As Variant
  Dim var_8C As Recordset15
  Dim var_120 As Variant
  Dim var_B8 As Variant
  Dim var_12C As String
  Dim var_13C As TextBox
  Dim arg_10 As Integer
  loc_143920F: var_8E = Cancel
  loc_143921A: If (var_8E = CInt(0)) Then
  loc_1439227:   Set var_94 = Me.TxtCust
  loc_143922D:   Call 0.Method_TxtCust_Validate0 (Cancel, var_98)
  loc_1439256:   If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_1439276:     Set var_94 = Me.TxtCust
  loc_143927C:     Call 0.Method_TxtCust_Validate0 (CInt(0), var_98, "Select * from guestprof Where MobileNo='", var_11C)
  loc_1439293:     var_D8 = -1 & Trim(CVar(var_98)) 
  loc_143929C:     var_F8 = var_D8 & "' And POS=1" 
  loc_14392AA:     unk_46BF6B.Execute CStr(var_F8), var_120, var_8E
  loc_14392B5:     Set var_88 = var_120
  loc_14392E3:     If (var_88.RecordCount > 0) Then
  loc_14392E9:       var_88.MoveLast
  loc_14392FB:       Me.LblRewardPoint.Caption = vbNullString
  loc_1439339:       Set var_120 = Me.TxtCust
  loc_143933F:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_128)
  loc_1439347:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_1439391:       Set var_120 = Me.TxtCust
  loc_1439397:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_128)
  loc_143939F:       var_128.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Code")))
  loc_14393E9:       Set var_120 = Me.TxtCust
  loc_14393EF:       Call 0.Method_TxtCust_Validate0 (CInt(2), var_128)
  loc_14393F7:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Add1")))
  loc_1439441:       Set var_120 = Me.TxtCust
  loc_1439447:       Call 0.Method_TxtCust_Validate0 (CInt(3), var_128)
  loc_143944F:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CityName")))
  loc_1439499:       Set var_120 = Me.TxtCust
  loc_143949F:       Call 0.Method_TxtCust_Validate0 (CInt(4), var_128)
  loc_14394A7:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Likes")))
  loc_14394F1:       Set var_120 = Me.TxtCust
  loc_14394F7:       Call 0.Method_TxtCust_Validate0 (CInt(5), var_128)
  loc_14394FF:       var_128.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DisLikes")))
  loc_1439565:       Set var_120 = Me.TxtCust
  loc_143956B:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_128, CStr(Format(CVar(var_88.Fields.Item("BirthDate")), "dd/MMM/yyyy")))
  loc_1439573:       var_128.Text = 1
  loc_143959C:       var_94 = var_88.Fields
  loc_14395C1:       var_A8 = CVar(var_94.Item("Anniversary")) 'Address
  loc_14395C8:       var_D8 = Format(var_A8, "dd/MMM/yyyy")
  loc_14395D0:       var_FC = CStr(var_D8)
  loc_14395DF:       Set var_120 = Me.TxtCust
  loc_14395E5:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_128, var_FC)
  loc_14395ED:       var_128.Text = 1
  loc_143961D:       unk_46BF6B.Execute "Select ncur from enviro", var_A8, -1
  loc_1439643:       var_94 = var_88.Fields
  loc_143964B:       var_98 = var_94.Item("BirthDate")
  loc_1439699:       If (var_98.Value = var_94.Fields.Item("Ncur").Value) Then
  loc_14396A2:         Call 0.Method_arg_50 (var_FC, var_94)
  loc_14396C3:         MsgBox("Happy Birthday", &H40, CVar(var_FC), var_D8, var_F8)
  loc_14396D3:         Exit Sub
  loc_14396D4:       End If
  loc_14396DF:       var_A8 = ParentForm.CmdRedeem
  loc_14396FA:       If (var_A8.Visible = True) Then
  loc_143971B:         Set var_94 = var_98(CInt(1))
  loc_1439721:         Call 0.Method_TxtCust_Validate0 (var_FC, "Select (RewardPoint-RedeemPoint) RewardPointBal From SmartCardRegistration Where MemberCode='", var_A8, -1)
  loc_1439732:         var_12C = 1 & var_FC
  loc_1439750:         unk_46BF6B.Execute var_12C & "' And CardType='Cash Card' And LogSite_Code='" & MemVar_1F92078 & "'", 1, 
  loc_143975B:         Set var_8C = var_A8.TextBox.Tag
  loc_143978B:         If (var_8C.RecordCount > 0) Then
  loc_14397AD:           var_98 = var_8C.Fields.Item("RewardpointBal")
  loc_14397BD:           var_B8 = "Reward Points Balance: " & var_98.Value 
  loc_14397CF:           Me.LblRewardPoint.Caption = CStr(var_B8)
  loc_14397E7:         End If
  loc_14397E7:       End If
  loc_14397EA:     Else
  loc_14397F7:       Me.LblRewardPoint.Caption = vbNullString
  loc_143980D:       Set var_94 = Me.TxtCust
  loc_1439813:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_98)
  loc_143981B:       var_98.Text = vbNullString
  loc_1439835:       Set var_94 = Me.TxtCust
  loc_143983B:       Call 0.Method_TxtCust_Validate0 (CInt(1), var_98)
  loc_1439843:       var_98.Tag = vbNullString
  loc_143985D:       Set var_94 = Me.TxtCust
  loc_1439863:       Call 0.Method_TxtCust_Validate0 (CInt(2), var_98)
  loc_143986B:       var_98.Text = vbNullString
  loc_1439885:       Set var_94 = Me.TxtCust
  loc_143988B:       Call 0.Method_TxtCust_Validate0 (CInt(3), var_98)
  loc_1439893:       var_98.Text = vbNullString
  loc_14398AD:       Set var_94 = Me.TxtCust
  loc_14398B3:       Call 0.Method_TxtCust_Validate0 (CInt(4), var_98)
  loc_14398BB:       var_98.Text = vbNullString
  loc_14398D5:       Set var_94 = Me.TxtCust
  loc_14398DB:       Call 0.Method_TxtCust_Validate0 (CInt(5), var_98)
  loc_14398E3:       var_98.Text = vbNullString
  loc_14398FD:       Set var_94 = Me.TxtCust
  loc_1439903:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_143990B:       var_98.Text = vbNullString
  loc_1439925:       Set var_94 = Me.TxtCust
  loc_143992B:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98)
  loc_1439933:       var_98.Text = vbNullString
  loc_143993F:     End If
  loc_143993F:   End If
  loc_1439942: Else
  loc_143994A:   If Not (var_8E = CInt(6)) Then
  loc_1439955:     If (var_8E = CInt(7)) Then
  loc_1439958:     End If
  loc_1439962:     Set var_94 = Me.TxtCust
  loc_1439968:     Call 0.Method_TxtCust_Validate0 (Cancel)
  loc_1439988:     Set var_128 = Me.TxtCust
  loc_143998E:     Call 0.Method_TxtCust_Validate0 (Cancel, var_13C)
  loc_1439996:     var_13C.Text = Proc_6_33_1512840(var_98)
  loc_14399B7:     Set var_94 = Me.TxtCust
  loc_14399BD:     Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_14399E0:     Set var_120 = Me.TxtCust
  loc_14399E6:     Call 0.Method_TxtCust_Validate0 (CInt(7), var_128, var_12C)
  loc_14399EE:     (var_98.Text <> vbNullString) = var_128.Text
  loc_1439A0E:     If (var_98 And (var_12C <> vbNullString)) Then
  loc_1439A1F:       Set var_120 = Me.TxtCust
  loc_1439A25:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_128)
  loc_1439A40:       Set var_94 = Me.TxtCust
  loc_1439A46:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_1439A70:       If (CDate(var_98.Text) > CDate(var_128.Text)) Then
  loc_1439A8C:         MsgBox("Birth Date Should be Less Than Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_1439A9E:         arg_10 = &HFF
  loc_1439AA1:         Exit Sub
  loc_1439AA2:       End If
  loc_1439AB8:       Set var_94 = Me.TxtCust
  loc_1439ABE:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_1439AC6:       var_FC = var_98.Text
  loc_1439AE7:       If (CDate(var_FC) > CDate(Now)) Then
  loc_1439B03:         MsgBox("Invalid Birth Date ", 0, var_B8, var_D8, var_F8)
  loc_1439B15:         arg_10 = &HFF
  loc_1439B18:         Exit Sub
  loc_1439B19:       End If
  loc_1439B2F:       Set var_94 = Me.TxtCust
  loc_1439B35:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98, var_FC)
  loc_1439B3D:       arg_10 = var_98.Text
  loc_1439B5E:       If (CDate(var_FC) > CDate(Now)) Then
  loc_1439B7A:         MsgBox("Invalid Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_1439B8C:         arg_10 = &HFF
  loc_1439B8F:         Exit Sub
  loc_1439B90:       End If
  loc_1439B90:     End If
  loc_1439B9E:     Set var_94 = Me.TxtCust
  loc_1439BA4:     Call 0.Method_TxtCust_Validate0 (CInt(6), var_98, var_FC)
  loc_1439BAC:     arg_10 = var_98.Text
  loc_1439BC3:     If (var_FC <> vbNullString) Then
  loc_1439BDC:       Set var_94 = Me.TxtCust
  loc_1439BE2:       Call 0.Method_TxtCust_Validate0 (CInt(6), var_98)
  loc_1439BEA:       var_FC = var_98.Text
  loc_1439C0B:       If (CDate(var_FC) > CDate(Now)) Then
  loc_1439C27:         MsgBox("Invalid Birth Date ", 0, var_B8, var_D8, var_F8)
  loc_1439C39:         arg_10 = &HFF
  loc_1439C3C:         Exit Sub
  loc_1439C3D:       End If
  loc_1439C3D:     End If
  loc_1439C4B:     Set var_94 = Me.TxtCust
  loc_1439C51:     Call 0.Method_TxtCust_Validate0 (CInt(7), var_98, var_FC)
  loc_1439C59:     arg_10 = var_98.Text
  loc_1439C70:     If (var_FC <> vbNullString) Then
  loc_1439C89:       Set var_94 = Me.TxtCust
  loc_1439C8F:       Call 0.Method_TxtCust_Validate0 (CInt(7), var_98)
  loc_1439CB8:       If (CDate(var_98.Text) > CDate(Now)) Then
  loc_1439CD4:         MsgBox("Invalid Anniversary Date", 0, var_B8, var_D8, var_F8)
  loc_1439CE6:         arg_10 = &HFF
  loc_1439CE9:         Exit Sub
  loc_1439CEA:       End If
  loc_1439CEA:     End If
  loc_1439CEA:   End If
  loc_1439CEA: End If
  loc_1439CEA: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E0DD74
  'Data Table: 46BF54
  loc_E0DD6D: Set global_52 = vNewValue
  loc_E0DD71: Exit Sub
End Sub

Public Property Get ParentForm() 'E0C4B4
  'Data Table: 46BF54
  loc_E0C4A8: Set var_88 = global_52 
  loc_E0C4AC: ParentForm = 
End Sub

Public Sub Proc_208_13_EE121C
  'Data Table: 46BF54
  Dim var_98 As TextBox
  Dim var_8C As Label
  loc_EE1166: Set var_8C = Me.TxtCust
  loc_EE116C: Call 0.Method_Proc_208_13_EE121CC (var_8E, var_86)
  loc_EE117C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE1192:   Set var_8C = Me.TxtCust
  loc_EE1198:   Call 0.Method_Proc_208_13_EE121C0 (CInt(var_86), var_98)
  loc_EE11A0:   var_98.Text = vbNullString
  loc_EE11BC:   Set var_8C = Me.TxtCust
  loc_EE11C2:   Call 0.Method_Proc_208_13_EE121C0 (CInt(var_86), var_98)
  loc_EE11CA:   var_98.Tag = vbNullString
  loc_EE11D9: Next var_92 'Byte
  loc_EE11EC: Me.LblRewardPoint.Caption = vbNullString
  loc_EE11FF: Set var_8C = Me.TxtCust
  loc_EE1205: Call 0.Method_Proc_208_13_EE121C0 (CInt(0))
  loc_EE120D: var_98.SetFocus
  loc_EE1219: Exit Sub
End Sub
