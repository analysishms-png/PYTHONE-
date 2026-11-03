VERSION 5.00
Begin VB.Form pGIss
  Caption = "Goods Issue Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "pGIss.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 10440
  ClientHeight = 8475
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
  WhatsThisHelp = -1  'True
  Begin Frame FrBanq
    Caption = "Frame1"
    Left = 480
    Top = 1950
    Width = 5430
    Height = 300
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 10
      ForeColor = &HC00000&
      Left = 1290
      Top = 0
      Width = 735
      Height = 285
      TabIndex = 6
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
    Begin TextBox Txt
      Index = 11
      ForeColor = &HC00000&
      Left = 2055
      Top = 0
      Width = 3375
      Height = 285
      TabIndex = 7
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
    Begin Label Label1
      Caption = "Banq. Party"
      Index = 8
      ForeColor = &HC00000&
      Left = 0
      Top = 0
      Width = 1110
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
  End
  Begin DataGrid DGBookNo
    Left = 6150
    Top = 2295
    Width = 6300
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 33
  End
  Begin DataGrid DGGodown
    Left = 10875
    Top = 2505
    Width = 4260
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin TextBox Txt
    Index = 9
    ForeColor = &HC00000&
    Left = 7020
    Top = 1320
    Width = 4140
    Height = 285
    TabIndex = 4
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
  Begin Timer Timer1
    Interval = 1
    Left = 13725
    Top = 510
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10440
    Height = 450
    TabIndex = 28
  End
  Begin DataGrid DGDepart
    Left = 12570
    Top = 1755
    Width = 4260
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin TextBox Txt
    Index = 8
    ForeColor = &HC00000&
    Left = 7020
    Top = 1635
    Width = 1260
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
  Begin DataGrid DGCompany
    Left = 12000
    Top = 1035
    Width = 4245
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin TextBox Txt
    Index = 7
    ForeColor = &HC00000&
    Left = 7020
    Top = 1950
    Width = 4125
    Height = 285
    TabIndex = 8
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
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 5220
    Top = 1005
    Width = 690
    Height = 285
    TabIndex = 20
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 1770
    Top = 1635
    Width = 4140
    Height = 285
    TabIndex = 5
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
    Index = 0
    Left = 12915
    Top = 8880
    Width = 1995
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &H80000012&
    Left = 13395
    Top = 8310
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 1770
    Top = 1320
    Width = 4140
    Height = 285
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 1770
    Top = 1005
    Width = 1425
    Height = 285
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
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3780
    Top = 1005
    Width = 1425
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin TextBox Txt
    Index = 1
    Left = 9915
    Top = 8880
    Width = 2310
    Height = 240
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
    Locked = -1  'True
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
  Begin MSHFlexGrid FGrid
    Left = 510
    Top = 2265
    Width = 10230
    Height = 5820
    TabIndex = 9
  End
  Begin Label LblCurStockStr
    Caption = "Item Current Stock"
    ForeColor = &HC0&
    Left = 60
    Top = 8250
    Width = 2130
    Height = 285
    TabIndex = 32
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Godown"
    Index = 7
    ForeColor = &HC00000&
    Left = 5985
    Top = 1320
    Width = 795
    Height = 240
    TabIndex = 30
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
  Begin Label LblAlaram
    Caption = "Some Requisition  are Pending......"
    ForeColor = &H80&
    Left = -15
    Top = 8745
    Width = 4770
    Height = 330
    TabIndex = 29
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
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
    Left = 12030
    Top = 6525
    Width = 2790
    Height = 285
    TabIndex = 27
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 12390
    Top = 5910
    Width = 2880
    Height = 255
    TabIndex = 26
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 25
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
  Begin Label Label1
    Caption = "Total"
    Index = 6
    ForeColor = &HC00000&
    Left = 5970
    Top = 1635
    Width = 480
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
  Begin Label Label1
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 5985
    Top = 1950
    Width = 900
    Height = 240
    TabIndex = 21
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
    Caption = "Remark"
    Index = 24
    ForeColor = &HC00000&
    Left = 495
    Top = 1635
    Width = 735
    Height = 240
    TabIndex = 19
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H0&
    Left = 14295
    Top = 7560
    Width = 690
    Height = 240
    Visible = 0   'False
    TabIndex = 18
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
    Caption = "DOC ID"
    Index = 5
    ForeColor = &HFF&
    Left = 3915
    Top = 4920
    Width = 540
    Height = 210
    Visible = 0   'False
    TabIndex = 17
    AutoSize = -1  'True
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
  Begin Label Label1
    Caption = "Department"
    Index = 4
    ForeColor = &HC00000&
    Left = 480
    Top = 1320
    Width = 1110
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
  Begin Label Label1
    Caption = "Issue No."
    Index = 1
    ForeColor = &HC00000&
    Left = 495
    Top = 1020
    Width = 855
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3285
    Top = 1020
    Width = 435
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
    Caption = "Vr. Type"
    Index = 0
    ForeColor = &H0&
    Left = 13845
    Top = 7860
    Width = 720
    Height = 210
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
End

Attribute VB_Name = "pGIss"

Private global_88 As Integer
Private global_90 As Integer

Private Sub DGDepart_UnknownEvent_9 'F49B64
  'Data Table: 4DEA20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F49A5B: Me.DGDepart.Visible = False
  loc_F49A7A: If (Me.RecordCount > 0) Then
  loc_F49AB9:   Set var_B4 = Me.Txt
  loc_F49ABF:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F49AC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F49AFA:   var_B0 = Me.Fields.Item("Name")
  loc_F49B19:   Set var_B4 = Me.Txt
  loc_F49B1F:   Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6), var_B8)
  loc_F49B27:   var_B8.Text = CStr(var_B0.Value)
  loc_F49B3D: End If
  loc_F49B48: Set var_A8 = Me.Txt
  loc_F49B4E: Call 0.Method_DGDepart_UnknownEvent_90 (CInt(6))
  loc_F49B56: var_B0.SetFocus
  loc_F49B62: Exit Sub
End Sub

Private Sub DGGodown_UnknownEvent_9 'F49744
  'Data Table: 4DEA20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4963B: Me.DGGodown.Visible = False
  loc_F4965A: If (Me.RecordCount > 0) Then
  loc_F49699:   Set var_B4 = Me.Txt
  loc_F4969F:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F496A7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F496DA:   var_B0 = Me.Fields.Item("Name")
  loc_F496F9:   Set var_B4 = Me.Txt
  loc_F496FF:   Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9), var_B8)
  loc_F49707:   var_B8.Text = CStr(var_B0.Value)
  loc_F4971D: End If
  loc_F49728: Set var_A8 = Me.Txt
  loc_F4972E: Call 0.Method_DGGodown_UnknownEvent_90 (CInt(9))
  loc_F49736: var_B0.SetFocus
  loc_F49742: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '123E5AC
  'Data Table: 4DEA20
  Dim var_A2 As Integer
  Dim Me As Recordset15
  Dim var_9C As TextBox
  Dim var_E4 As Variant
  Dim var_C0 As Variant
  Dim var_F8 As String
  loc_123E09E: Set var_98 = Me.Txt
  loc_123E0A4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_123E0B2: Proc_6_74_E226B0(var_9C)
  loc_123E0BE: Call Proc_41_51_EF8B68(var_9C)
  loc_123E0C6: var_A2 = Index
  loc_123E0D1: If (var_A2 = CInt(6)) Then
  loc_123E122:   Set var_98 = Me.Txt
  loc_123E128:   Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_123E130:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_9C.Text
  loc_123E148:   If (var_A2 Or (var_B0 = vbNullString)) Then
  loc_123E14B:     Exit Sub
  loc_123E14C:   End If
  loc_123E159:   Set var_98 = Me.Txt
  loc_123E15F:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123E167:   var_B0 = var_9C.Text
  loc_123E179:   var_C0 = "Name"
  loc_123E1B4:   If CBool(CVar(var_B0) <> Me.Fields.Item(var_C0).Value) Then
  loc_123E1BD:     Me.MoveFirst
  loc_123E1E0:     Set var_98 = Me.Txt
  loc_123E1E6:     Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name ='")
  loc_123E1EE:     0 = var_9C.Text
  loc_123E207:     Me.Find 1 & var_B0 & "'", var_C0, 
  loc_123E21C:   End If
  loc_123E21F: Else
  loc_123E227:   If (var_A2 = CInt(9)) Then
  loc_123E278:     Set var_98 = Me.Txt
  loc_123E27E:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123E29E:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_9C.Text = vbNullString)) Then
  loc_123E2A1:       Exit Sub
  loc_123E2A2:     End If
  loc_123E2AF:     Set var_98 = Me.Txt
  loc_123E2B5:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_123E2BD:     var_B0 = var_9C.Text
  loc_123E2CF:     var_C0 = "Name"
  loc_123E30A:     If CBool(CVar(var_B0) <> Me.Fields.Item(var_C0).Value) Then
  loc_123E313:       Me.MoveFirst
  loc_123E336:       Set var_98 = Me.Txt
  loc_123E33C:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name ='")
  loc_123E344:       0 = var_9C.Text
  loc_123E35D:       Me.Find 1 & var_B0 & "'", var_C0, 
  loc_123E372:     End If
  loc_123E375:   Else
  loc_123E37D:     If (var_A2 = CInt(&HA)) Then
  loc_123E39C:       Me.Recordset15.CursorLocation = 3
  loc_123E3AF:       Set var_98 = Me.Txt
  loc_123E3B5:       Call 0.Method_Txt_GotFocus0 (CInt(6), var_9C)
  loc_123E3BD:       var_B0 = var_9C.Tag
  loc_123E3E0:       var_F8 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid in (Select RefDocId from Indent Where Department='" & var_B0
  loc_123E3F1:       Me.Open CVar(var_F8 & "' And ClearYN<>'Y') Order by VNo"), CVar(MemVar_1F92044), 3
  loc_123E410:       CVarUnk
  loc_123E415:       VerifyVarObj
  loc_123E41B:       Set var_98 = Me.DGBookNo
  loc_123E421:       LateIdStAd
  loc_123E47D:       Set var_98 = Me.Txt
  loc_123E483:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_123E48B:       var_98 = var_9C.Text
  loc_123E4A3:       If (New Or (var_B0 = vbNullString)) Then
  loc_123E4A6:         Exit Sub
  loc_123E4A7:       End If
  loc_123E4B4:       Set var_98 = Me.Txt
  loc_123E4BA:       Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0)
  loc_123E4C2:       1 = var_9C.Text
  loc_123E4CA:       var_E4 = CVar(var_B0) 'String
  loc_123E50F:       If CBool(var_E4 <> Me.Fields.Item("Name").Value) Then
  loc_123E518:         Me.MoveFirst
  loc_123E53D:         Set var_98 = Me.Txt
  loc_123E543:         Call 0.Method_Txt_GotFocus0 (Index, var_9C, var_B0, "Name =")
  loc_123E54B:         0 = var_9C.Text
  loc_123E559:         Proc_6_17_EAA2B0(var_E4, CVar(var_B0), 1)
  loc_123E56F:         Me.Find CStr(var_10C & var_E4), -1, 
  loc_123E587:       End If
  loc_123E58A:     Else
  loc_123E592:       If (var_A2 = CInt(3)) Then
  loc_123E59D:         var_B0 = "{Home}+{End}"
  loc_123E5A3:         Proc_303_0_FB9B68(var_B0)
  loc_123E5AB:       End If
  loc_123E5AB:     End If
  loc_123E5AB:   End If
  loc_123E5AB: End If
  loc_123E5AB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1103DA4
  'Data Table: 4DEA20
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As DataGrid
  loc_1103A82: If (CLng(Shift) = &H1B) Then
  loc_1103A85:   Call Proc_41_51_EF8B68()
  loc_1103A8A:   Exit Sub
  loc_1103A8B: End If
  loc_1103A8E: var_86 = KeyCode
  loc_1103A99: If (var_86 = CInt(6)) Then
  loc_1103AB4:   Set var_9C = Nothing
  loc_1103ABF:   Set var_98 = Nothing
  loc_1103AED:   Proc_6_69_134A198(Me.DGDepart, Me.Txt, KeyCode, global_52, Shift, &HFF)
  loc_1103B04: Else
  loc_1103B0C:   If (var_86 = CInt(9)) Then
  loc_1103B27:     Set var_9C = Nothing
  loc_1103B60:     Proc_6_69_134A198(Me.DGGodown, Me.Txt, KeyCode, global_56, Shift, &HFF, 1, Nothing)
  loc_1103B77:   Else
  loc_1103B7F:     If (var_86 = CInt(&HA)) Then
  loc_1103B9A:       Set var_9C = Nothing
  loc_1103BD3:       Proc_6_69_134A198(Me.DGBookNo, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_1103BEA:     Else
  loc_1103BF2:       If (var_86 = CInt(7)) Then
  loc_1103C00:         If (global_144 = "Yes") Then
  loc_1103C1B:           Set var_9C = Nothing
  loc_1103C54:           Proc_6_69_134A198(Me.DGCompany, Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1103C68:         End If
  loc_1103C68:       End If
  loc_1103C68:     End If
  loc_1103C68:   End If
  loc_1103C68: End If
  loc_1103C99: Set var_98 = Me.DGCompany
  loc_1103CB0: Set var_9C = Me.DGBookNo
  loc_1103CD9: If ((((CBool(Me.DGDepart.Visible) = 0) And (CBool(Me.DGGodown.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (CBool(var_9C.Visible) = 0)) Then
  loc_1103CF1:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1103CFA:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, var_9C)
  loc_1103CFF:   End If
  loc_1103D03:   Set var_8C = Me.TopCtrl1
  loc_1103D09:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_1103D2B:   If ((CStr(var_9C) = "Add") And (KeyCode <> CInt(1))) Then
  loc_1103D43:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1103D4C:       Proc_6_76_E52838(Shift, arg_14, 0)
  loc_1103D51:     End If
  loc_1103D51:   End If
  loc_1103D55:   Set var_8C = Me.TopCtrl1
  loc_1103D5B:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1103D7D:   If ((CStr(var_98) = "Edit") And (KeyCode <> CInt(3))) Then
  loc_1103D95:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1103D9E:       Proc_6_76_E52838(Shift)
  loc_1103DA3:     End If
  loc_1103DA3:   End If
  loc_1103DA3: End If
  loc_1103DA3: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'FF7E5C
  'Data Table: 4DEA20
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_FF7C67: Proc_6_58_E054C0(arg_10)
  loc_FF7C6F: var_86 = KeyAscii
  loc_FF7C7A: If (var_86 = CInt(6)) Then
  loc_FF7C99:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_FF7CAB:     var_A0 = "Name"
  loc_FF7CC6:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_52, arg_10)
  loc_FF7CD5:   End If
  loc_FF7CD8: Else
  loc_FF7CE0:   If (var_86 = CInt(9)) Then
  loc_FF7CFF:     If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_FF7D2C:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10, "Name")
  loc_FF7D3B:     End If
  loc_FF7D3E:   Else
  loc_FF7D46:     If (var_86 = CInt(&HA)) Then
  loc_FF7D65:       If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_FF7D6C:         Set var_A8 = Me.Txt
  loc_FF7D92:         Proc_6_89_146F1AC(var_A8, KeyAscii, global_76, arg_10, "Name")
  loc_FF7DA1:       End If
  loc_FF7DA4:     Else
  loc_FF7DAC:       If (var_86 = CInt(2)) Then
  loc_FF7DB9:         Set var_8C = Me.Txt
  loc_FF7DBF:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0, 0)
  loc_FF7DDA:         Proc_6_42_129A86C(var_A8, arg_10, 8, 0)
  loc_FF7DE9:       Else
  loc_FF7DF1:         If (var_86 = CInt(7)) Then
  loc_FF7DFF:           If (global_144 = "Yes") Then
  loc_FF7E1E:             If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_FF7E4B:               Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10, "Name")
  loc_FF7E5A:             End If
  loc_FF7E5A:           End If
  loc_FF7E5A:         End If
  loc_FF7E5A:       End If
  loc_FF7E5A:     End If
  loc_FF7E5A:   End If
  loc_FF7E5A: End If
  loc_FF7E5A: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF6B4
  'Data Table: 4DEA20
  Dim var_86 As Integer
  loc_DFF6AF: var_86 = KeyCode
  loc_DFF6B2: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46BCC
  'Data Table: 4DEA20
  loc_E46BAA: Set var_88 = Me.Txt
  loc_E46BB0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46BBE: Proc_6_73_E22704(var_8C)
  loc_E46BCA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '147B93C
  'Data Table: 4DEA20
  Dim var_8A As Integer
  Dim var_94 As Variant
  Dim arg_10 As Integer
  Dim var_C0 As TextBox
  Dim var_9C As String
  Dim var_D8 As Long
  Dim var_FC As TextBox
  Dim Me As Recordset15
  Dim var_90 As Variant
  loc_147AD13: var_8A = Cancel
  loc_147AD1E: If (var_8A = CInt(1)) Then
  loc_147AD2C:   Set var_90 = Me.Txt
  loc_147AD32:   Call 0.Method_Txt_Validate0 (CInt(1), var_94)
  loc_147AD5B:   If (Proc_6_27_EA565C(var_94, "Voucher Type") = 0) Then
  loc_147AD68:     Set var_90 = Me.Txt
  loc_147AD6E:     Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AD76:     var_94.SetFocus
  loc_147AD84:     arg_10 = &HFF
  loc_147AD87:     Exit Sub
  loc_147AD88:   End If
  loc_147AD8B: Else
  loc_147AD93:   If (var_8A = CInt(2)) Then
  loc_147ADA1:     Set var_90 = Me.Txt
  loc_147ADA7:     Call 0.Method_Txt_Validate0 (CInt(2), var_94)
  loc_147ADD0:     If (Proc_6_27_EA565C(var_94, "Voucher Number") = 0) Then
  loc_147ADDD:       Set var_90 = Me.Txt
  loc_147ADE3:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147ADEB:       var_94.SetFocus
  loc_147ADF9:       arg_10 = &HFF
  loc_147ADFC:       Exit Sub
  loc_147ADFD:     End If
  loc_147AE08:     Set var_90 = Me.Txt
  loc_147AE0E:     Call 0.Method_Txt_Validate0 (CInt(0), var_94, arg_10)
  loc_147AE20:     Set var_98 = Me.Txt
  loc_147AE26:     Call 0.Method_Txt_Validate0 (Cancel, var_C0, var_C4)
  loc_147AE2E:     arg_10 = var_C0.Text
  loc_147AE4A:     var_9C = CStr(Right(CVar(var_94), 8))
  loc_147AE71:     If (CDbl(Val(var_9C)) <> CDbl(var_C4)) Then
  loc_147AE7C:       Call Proc_41_52_126C5D8(0, var_9C)
  loc_147AE8F:       Set var_90 = Me.Txt
  loc_147AE95:       Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_147AE9D:       var_94.Text = var_9C
  loc_147AEAC:     End If
  loc_147AEAF:   Else
  loc_147AEB7:     If (var_8A = CInt(3)) Then
  loc_147AEC7:       Set var_90 = Me.Txt
  loc_147AECD:       Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AEE3:       var_BC = Trim(CVar(var_94.Text))
  loc_147AEEB:       var_D8 = Len(var_BC)
  loc_147AF05:       If (var_D8 = 0) Then
  loc_147AF1A:         Set var_90 = Me.Txt
  loc_147AF20:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AF28:         var_94.Text = CStr(MemVar_1F920EC)
  loc_147AF3A:       Else
  loc_147AF44:         Set var_90 = Me.Txt
  loc_147AF4A:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147AF6A:         Set var_C0 = Me.Txt
  loc_147AF70:         Call 0.Method_Txt_Validate0 (Cancel, var_FC)
  loc_147AF78:         var_FC.Text = Proc_6_33_1512840(var_94)
  loc_147AF8B:       End If
  loc_147AF8F:       Set var_90 = Me.TopCtrl1
  loc_147AF95:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_147AF9D:       var_9C = CStr()
  loc_147AFAE:       If (var_9C = "Add") Then
  loc_147AFB9:         Call Proc_41_52_126C5D8(&HFF)
  loc_147AFCC:         Set var_90 = Me.Txt
  loc_147AFD2:         Call 0.Method_Txt_Validate0 (CInt(0), var_94)
  loc_147AFDA:         var_94.Text = var_9C
  loc_147AFE9:         Call Proc_41_47_1406468(var_9C)
  loc_147AFEE:       End If
  loc_147AFF1:     Else
  loc_147AFF9:       If (var_8A = CInt(6)) Then
  loc_147B04A:         Set var_90 = Me.Txt
  loc_147B050:         Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B070:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B080:           Set var_90 = Me.Txt
  loc_147B086:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B08E:           var_94.Text = vbNullString
  loc_147B0A7:           Set var_90 = Me.Txt
  loc_147B0AD:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B0B5:           var_94.Tag = vbNullString
  loc_147B0C4:         Else
  loc_147B0FF:           Set var_98 = Me.Txt
  loc_147B105:           Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B10D:           var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B140:           var_94 = Me.Fields.Item("Code")
  loc_147B15E:           Set var_98 = Me.Txt
  loc_147B164:           Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B16C:           var_C0.Tag = CStr(var_94.Value)
  loc_147B186:           Set var_90 = Me.TopCtrl1
  loc_147B18C:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_147B1A5:           If (CStr() = "Add") Then
  loc_147B1A8:             Call Proc_41_47_1406468()
  loc_147B1AD:           End If
  loc_147B1AD:         End If
  loc_147B1BB:         Set var_90 = Me.Txt
  loc_147B1C1:         Call 0.Method_Txt_Validate0 (CInt(6), var_94)
  loc_147B1E3:         If (var_94.Tag = global_148) Then
  loc_147B1F2:           Me.FrBanq.Visible = True
  loc_147B1FD:         Else
  loc_147B209:           Me.FrBanq.Visible = False
  loc_147B211:         End If
  loc_147B214:       Else
  loc_147B21C:         If (var_8A = CInt(9)) Then
  loc_147B26D:           Set var_90 = Me.Txt
  loc_147B273:           Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B293:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B2A3:             Set var_90 = Me.Txt
  loc_147B2A9:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B2B1:             var_94.Text = vbNullString
  loc_147B2CA:             Set var_90 = Me.Txt
  loc_147B2D0:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B2D8:             var_94.Tag = vbNullString
  loc_147B2E7:           Else
  loc_147B322:             Set var_98 = Me.Txt
  loc_147B328:             Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B330:             var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B363:             var_94 = Me.Fields.Item("Code")
  loc_147B381:             Set var_98 = Me.Txt
  loc_147B387:             Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B38F:             var_C0.Tag = CStr(var_94.Value)
  loc_147B3A9:             Set var_90 = Me.TopCtrl1
  loc_147B3AF:             Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_147B3C8:             If (CStr() = "Add") Then
  loc_147B3CB:               Call Proc_41_47_1406468()
  loc_147B3D0:             End If
  loc_147B3D0:           End If
  loc_147B3D3:         Else
  loc_147B3DB:           If (var_8A = CInt(7)) Then
  loc_147B42C:             Set var_90 = Me.Txt
  loc_147B432:             Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B452:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B462:               Set var_90 = Me.Txt
  loc_147B468:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B470:               var_94.Text = vbNullString
  loc_147B489:               Set var_90 = Me.Txt
  loc_147B48F:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B497:               var_94.Tag = vbNullString
  loc_147B4A6:             Else
  loc_147B4B4:               Set var_90 = Me.Txt
  loc_147B4BA:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_147B4C2:               var_94.Text = vbNullString
  loc_147B4DC:               Set var_90 = Me.Txt
  loc_147B4E2:               Call 0.Method_Txt_Validate0 (CInt(&HA), var_94)
  loc_147B4EA:               var_94.Tag = vbNullString
  loc_147B504:               Set var_90 = Me.Txt
  loc_147B50A:               Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_147B512:               var_94.Text = vbNullString
  loc_147B559:               Set var_98 = Me.Txt
  loc_147B55F:               Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B567:               var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B59A:               var_94 = Me.Fields.Item("Code")
  loc_147B5B8:               Set var_98 = Me.Txt
  loc_147B5BE:               Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B5C6:               var_C0.Tag = CStr(var_94.Value)
  loc_147B5DC:             End If
  loc_147B5E0:             Set var_90 = Me.TopCtrl1
  loc_147B5E6:             Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_147B5FF:             If (CStr() = "Add") Then
  loc_147B602:               Call Proc_41_47_1406468()
  loc_147B607:             End If
  loc_147B60A:           Else
  loc_147B612:             If (var_8A = CInt(&HA)) Then
  loc_147B663:               Set var_90 = Me.Txt
  loc_147B669:               Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B689:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_94.Text = vbNullString)) Then
  loc_147B699:                 Set var_90 = Me.Txt
  loc_147B69F:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B6A7:                 var_94.Text = vbNullString
  loc_147B6C0:                 Set var_90 = Me.Txt
  loc_147B6C6:                 Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_147B6CE:                 var_94.Tag = vbNullString
  loc_147B6E8:                 Set var_90 = Me.Txt
  loc_147B6EE:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_94)
  loc_147B6F6:                 var_94.Text = vbNullString
  loc_147B705:               Else
  loc_147B713:                 Set var_90 = Me.Txt
  loc_147B719:                 Call 0.Method_Txt_Validate0 (CInt(7), var_94)
  loc_147B721:                 var_94.Text = vbNullString
  loc_147B73B:                 Set var_90 = Me.Txt
  loc_147B741:                 Call 0.Method_Txt_Validate0 (CInt(7), var_94)
  loc_147B749:                 var_94.Tag = vbNullString
  loc_147B790:                 Set var_98 = Me.Txt
  loc_147B796:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B79E:                 var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_147B7EF:                 Set var_98 = Me.Txt
  loc_147B7F5:                 Call 0.Method_Txt_Validate0 (Cancel, var_C0)
  loc_147B7FD:                 var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_147B84F:                 Set var_98 = Me.Txt
  loc_147B855:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_C0)
  loc_147B8AE:                 Set var_98 = Me.Txt
  loc_147B8B4:                 Call 0.Method_Txt_Validate0 (CInt(3), var_C0)
  loc_147B8DE:                 If (Me.Fields.Item("VDate").Value > CDate(CDate(CStr(Me.Fields.Item("Party").Value)))) Then
  loc_147B8FA:                   MsgBox("Bill Date can't be before Booking Date", 0, var_BC, var_D8, var_F8)
  loc_147B90C:                   arg_10 = &HFF
  loc_147B90F:                   Exit Sub
  loc_147B910:                 End If
  loc_147B910:               End If
  loc_147B914:               Set var_90 = Me.TopCtrl1
  loc_147B91A:               Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_147B933:               If (CStr() = "Add") Then
  loc_147B936:                 Call Proc_41_47_1406468()
  loc_147B93B:               End If
  loc_147B93B:             End If
  loc_147B93B:           End If
  loc_147B93B:         End If
  loc_147B93B:       End If
  loc_147B93B:     End If
  loc_147B93B:   End If
  loc_147B93B: End If
  loc_147B93B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F75380
  'Data Table: 4DEA20
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F75250: On Error Goto loc_F7537A
  loc_F75253: Call Proc_41_51_EF8B68()
  loc_F7526B: var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F75274: Set var_A0 = Me.FGrid
  loc_F752A9: Set var_108 = Me.TxtGrid
  loc_F752AF: Call 0.Method_TxtGrid_GotFocus0 (0, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F752B7: var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_F752E4: Set var_8C = Me.TxtGrid
  loc_F752EA: Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0)
  loc_F752F2: var_A0.MaxLength = 0
  loc_F75311: var_114 = CLng(Me.FGrid.Col)
  loc_F75321: If Not (var_114 = CLng(8)) Then
  loc_F7532B:   If (var_114 = CLng(4)) Then
  loc_F7532E:   End If
  loc_F7533D:   Set var_8C = Me.TxtGrid
  loc_F75343:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_F7534B:   var_A0.MaxLength = var_114
  loc_F75360:   If (global_90 = 0) Then
  loc_F7536B:     var_110 = "{Home}+{End}"
  loc_F75371:     Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F75379:   End If
  loc_F75379: End If
  loc_F75379: Exit Sub
  loc_F7537A: ' Referenced from: F75250
  loc_F7537A: Proc_6_60_E62BC4(var_C0)
  loc_F7537F: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '11704C0
  'Data Table: 4DEA20
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As String
  loc_11700F4: On Error Goto loc_11704B9
  loc_1170101: If (CLng(Shift) = &H1B) Then
  loc_1170110:   Set var_88 = Me.TxtGrid
  loc_1170116:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_117012F:   Set var_94 = Me.TxtGrid
  loc_1170135:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_117013D:   var_98.Text = var_8C.Tag
  loc_1170159:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1170162:   Set var_88 = Me.FGrid
  loc_117017E:   Set var_88 = Me.TxtGrid
  loc_1170184:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0)
  loc_117018C:   var_8C.Visible = FGrid.DispID_8001
  loc_1170198:   Exit Sub
  loc_1170199: End If
  loc_11701AC: var_AC = CLng(Me.FGrid.Col)
  loc_11701BC: If (var_AC = CLng(8)) Then
  loc_11701FF:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_117020F:     Call Proc_41_46_128AEDC(0, 0, var_B2)
  loc_117021A:     If (var_B2 = &HFF) Then
  loc_1170238:       var_C8 = CStr((CLng(Me.FGrid.Rows) - 1))
  loc_117027B:       If (CDbl(Val(CStr(CLng(Me.FGrid.Row)))) < CDbl(Val(var_C8))) Then
  loc_11702C1:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC)
  loc_11702D1:       End If
  loc_11702D1:     End If
  loc_11702D1:   End If
  loc_11702D4: Else
  loc_11702DB:   If (var_AC = CLng(4)) Then
  loc_117031E:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_117032E:       Call Proc_41_46_128AEDC(0, 0, var_B2, 0, 0)
  loc_1170339:       If (var_B2 = &HFF) Then
  loc_117037F:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC, 0)
  loc_117038F:       End If
  loc_117038F:     End If
  loc_1170392:   Else
  loc_1170399:     If (var_AC = CLng(5)) Then
  loc_11703DC:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_90 = &HFF))) Then
  loc_11703EC:         Call Proc_41_46_128AEDC(0, 0, var_B2, 0, 0)
  loc_11703F7:         If (var_B2 = &HFF) Then
  loc_1170405:           If (global_152 <> "No") Then
  loc_1170452:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, CByte((CInt(8) + 1)), 0)
  loc_1170465:           Else
  loc_11704A8:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_90, &HC, 0, 0)
  loc_11704B8:           End If
  loc_11704B8:         End If
  loc_11704B8:       End If
  loc_11704B8:     End If
  loc_11704B8:   End If
  loc_11704B8: End If
  loc_11704B8: Exit Sub
  loc_11704B9: ' Referenced from: 11700F4
  loc_11704B9: Proc_6_60_E62BC4(0, 8, 0, 0)
  loc_11704BE: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EE47C4
  'Data Table: 4DEA20
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_EE4704: On Error Goto loc_EE47BB
  loc_EE470A: Proc_6_58_E054C0(arg_10)
  loc_EE4722: var_9C = CLng(Me.FGrid.Col)
  loc_EE4732: If (var_9C = CLng(8)) Then
  loc_EE473F:   Set var_88 = Me.TxtGrid
  loc_EE4745:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EE4760:   Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EE476F: Else
  loc_EE4776:   If Not (var_9C = CLng(3)) Then
  loc_EE4780:     If (var_9C = CLng(4)) Then
  loc_EE4783:     End If
  loc_EE478D:     Set var_88 = Me.TxtGrid
  loc_EE4793:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EE47AE:     Proc_6_42_129A86C(var_A0, arg_10, 8)
  loc_EE47BA:   End If
  loc_EE47BA: End If
  loc_EE47BA: Exit Sub
  loc_EE47BB: ' Referenced from: EE4704
  loc_EE47BB: Proc_6_60_E62BC4(3, 2)
  loc_EE47C0: Exit Sub
  loc_EE47C1: StUdtVar
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10327EC
  'Data Table: 4DEA20
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_170 As Variant
  Dim var_23C As Double
  Dim var_174 As MSHFlexGrid
  Dim var_1E0 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  loc_10325D4: On Error Goto loc_10327E6
  loc_10325E3: If (KeyCode = 0) Then
  loc_10325F9:   var_A0 = CLng(Me.FGrid.Col)
  loc_1032609:   If Not (var_A0 = CLng(8)) Then
  loc_1032613:     If Not (var_A0 = CLng(4)) Then
  loc_103261D:       If (var_A0 = CLng(5)) Then
  loc_1032620:       End If
  loc_1032620:     End If
  loc_103262D:     Set var_8C = Me.TxtGrid
  loc_1032633:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_103263B:     var_A0 = var_A4.Text
  loc_103265E:     var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1032676:     var_140 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10326A3:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_10326AB:     Set var_174 = Me.FGrid
  loc_10326B1:     LateIdCallSt
  loc_10326EB:     var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10326F3:     var_120 = CVar(CLng(4)) 'Long
  loc_103272B:     var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1032733:     var_170 = CVar(CLng(5)) 'Long
  loc_1032755:     var_23C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_103276B:     var_1E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1032773:     var_200 = CVar(CLng(6)) 'Long
  loc_10327A4:     var_220 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * var_23C)), "0.00"))) 'String
  loc_10327AC:     Set var_234 = Me.FGrid
  loc_10327B2:     LateIdCallSt
  loc_10327E5:   End If
  loc_10327E5: End If
  loc_10327E5: Exit Sub
  loc_10327E6: ' Referenced from: 10325D4
  loc_10327E6: Proc_6_60_E62BC4(var_234, var_220, 1, 1, var_200, var_1E0, var_23C, var_170)
  loc_10327EB: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23814
  'Data Table: 4DEA20
  Dim arg_10 As Integer
  loc_E237F0: On Error Goto loc_E2380B
  loc_E237FE: Call Proc_41_46_128AEDC(Cancel, &HFF)
  loc_E23807: arg_10 = Not(var_88)
  loc_E2380A: Exit Sub
  loc_E2380B: ' Referenced from: E237F0
  loc_E2380B: Proc_6_60_E62BC4(arg_10)
  loc_E23810: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'EA41B4
  'Data Table: 4DEA20
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_EA414F: If (CDbl(CLng(Me.FGrid.BackColorSel)) = CDbl(global_136)) Then
  loc_EA4165:   Me.FGrid.Col = 4
  loc_EA416D: End If
  loc_EA4180: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EA4193: Set var_88 = Me.TxtGrid
  loc_EA4199: Call 0.Method_FGrid_UnknownEvent_00 (0, var_BC)
  loc_EA41A1: var_BC.Visible = False
  loc_EA41AD: Call Proc_41_51_EF8B68()
  loc_EA41B2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68D48
  'Data Table: 4DEA20
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68D04: Set var_88 = Me.TxtGrid
  loc_E68D0A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E68D24: If (var_8C.Visible = 0) Then
  loc_E68D3D:   Me.FGrid.BackColorSel = CVar(CLng(global_136))
  loc_E68D45: End If
  loc_E68D45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1C610
  'Data Table: 4DEA20
  loc_E1C607: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1C60F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E2DDF4
  'Data Table: 4DEA20
  Dim var_8C As TextBox
  loc_E2DDD7: Set var_88 = Me.TxtGrid
  loc_E2DDDD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E2DDE5: var_8C.Visible = False
  loc_E2DDF1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '118D358
  'Data Table: 4DEA20
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_160 As Long
  loc_118CF6C: On Error Goto loc_118D34F
  loc_118CF73: Set var_88 = Me.TopCtrl1
  loc_118CF79: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_118CF92: If (CStr() = "Browse") Then
  loc_118CF95:   Exit Sub
  loc_118CF96: End If
  loc_118D00A: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_118D023:   Me.FGrid.CellBackColor = CVar(CLng(global_136))
  loc_118D033:   var_9C = "+{Tab}"
  loc_118D039:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_118D043:   Cancel = 0
  loc_118D049: Else
  loc_118D053:   var_B0 = Me.FGrid.Rows
  loc_118D0A0:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_118D0B9:     Me.FGrid.CellBackColor = CVar(CLng(global_136))
  loc_118D0C6:     Call Proc_41_55_ED55A0(0, var_B0, Cancel)
  loc_118D0CB:   End If
  loc_118D0CB: End If
  loc_118D0D1: global_88 = Cancel
  loc_118D0F7: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_118D11B: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_118D131:   var_EC = CLng(Me.FGrid.Col)
  loc_118D141:   If (var_EC = CLng(4)) Then
  loc_118D157:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D16F:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118D174:     var_11C = vbNullString
  loc_118D17E:     Set var_B4 = Me.FGrid
  loc_118D184:     LateIdCallSt
  loc_118D1AF:     var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D1B7:     var_11C = CVar(CLng(9)) 'Long
  loc_118D1E2:     var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_118D1EA:     Set var_A0 = Me.FGrid
  loc_118D1F0:     LateIdCallSt
  loc_118D20F:   Else
  loc_118D216:     If (var_EC = CLng(8)) Then
  loc_118D224:       If (global_152 <> "No") Then
  loc_118D23A:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D252:         var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_118D257:         var_11C = vbNullString
  loc_118D261:         Set var_B4 = Me.FGrid
  loc_118D267:         LateIdCallSt
  loc_118D292:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_118D29A:         var_11C = CVar(CLng(9)) 'Long
  loc_118D2C5:         var_14C = CVar(CStr(Format(0, "0.00"))) 'String
  loc_118D2CD:         Set var_A0 = Me.FGrid
  loc_118D2D3:         LateIdCallSt
  loc_118D2EF:       End If
  loc_118D2EF:     End If
  loc_118D2EF:   End If
  loc_118D2EF: End If
  loc_118D2F5: If (Cancel = &HD) Then
  loc_118D30B:   var_160 = CLng(Me.FGrid.Col)
  loc_118D31B:   If (var_160 = CLng(1)) Then
  loc_118D330:     Me.FGrid.Col = CVar(CLng(4))
  loc_118D338:   End If
  loc_118D338: End If
  loc_118D33E: If (Cancel = &HD) Then
  loc_118D346:   global_90 = 0
  loc_118D349: End If
  loc_118D34B: Cancel = 0
  loc_118D34E: Exit Sub
  loc_118D34F: ' Referenced from: 118CF6C
  loc_118D34F: Proc_6_60_E62BC4(Cancel, global_90, var_160, var_A0, var_14C, 1, 1, var_11C)
  loc_118D354: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E14A50
  'Data Table: 4DEA20
  loc_E14A41: Call FGrid_UnknownEvent_C()
  loc_E14A4B: global_90 = 0
  loc_E14A4E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FE995C
  'Data Table: 4DEA20
  Dim var_B0 As Long
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  loc_FE979F: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_FE97A9: On Error Goto loc_FE9954
  loc_FE97BF: var_B0 = CLng(Me.FGrid.Col)
  loc_FE97CF: If (var_B0 = CLng(4)) Then
  loc_FE9810:   Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_FE9825: Else
  loc_FE982C:   If (var_B0 = CLng(8)) Then
  loc_FE983A:     If (global_152 <> "No") Then
  loc_FE987B:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel)
  loc_FE988D:     End If
  loc_FE9890:   Else
  loc_FE9897:     If (var_B0 = CLng(5)) Then
  loc_FE98AD:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE98B5:       var_F8 = CVar(CLng(5)) 'Long
  loc_FE992C:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Cancel, 0, Val(CStr(Me.FGrid.TextMatrix))))
  loc_FE993E:     End If
  loc_FE993E:   End If
  loc_FE993E: End If
  loc_FE9948: If (CLng(Cancel) <> &HD) Then
  loc_FE9950:   global_90 = &HFF
  loc_FE9953: End If
  loc_FE9953: Exit Sub
  loc_FE9954: ' Referenced from: FE97A9
  loc_FE9954: Proc_6_60_E62BC4(global_90, var_F8, var_D8, 0)
  loc_FE9959: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1130164
  'Data Table: 4DEA20
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As TextBox
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_150 As Integer
  Dim var_110 As String
  Dim unk_4DEA36 As Connection15
  Dim var_13C As Recordset15
  Dim var_140 As Fields15
  Dim var_154 As Field20
  loc_112FE1C: On Error Goto loc_113015E
  loc_112FE23: Set var_8C = Me.TopCtrl1
  loc_112FE29: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_112FE42: If (CStr() = "Browse") Then
  loc_112FE45:   Exit Sub
  loc_112FE46: End If
  loc_112FE63: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_112FE66:   Exit Sub
  loc_112FE67: End If
  loc_112FE78: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_112FE9A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_112FEA1:     Set var_8C = Me.TopCtrl1
  loc_112FEA7:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_112FEC0:     If (CStr() = "Edit") Then
  loc_112FED1:       Set var_8C = Me.Txt
  loc_112FED7:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(0), var_A4)
  loc_112FEF7:       var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_112FEFF:       var_E4 = CVar(CLng(0)) 'Long
  loc_112FF2A:       var_150 = 0
  loc_112FF5C:       var_110 = "select count(*) from STOCK where stock.DOCID='" & var_A4.Text & "' AND STOCK.U_NAME='" & MemVar_1F920C8 & "' AND stock.sno="
  loc_112FF71:       unk_4DEA36.Execute var_110 & CStr(Val(CStr(Me.FGrid.TextMatrix)))), var_138, -1
  loc_112FF79:       var_13C = var_13C.Fields
  loc_112FF81:       var_150 = var_140.Item(var_140)
  loc_112FF89:       var_154 = var_154.Value
  loc_112FFC8:       If (var_164 <= 0) Then
  loc_112FFEC:         MsgBox("Material Already Issued ", &H10, "Delete Validation", var_138, var_164)
  loc_1130000:         Set var_8C = Me.FGrid
  loc_1130011:         Exit Sub
  loc_1130012:       End If
  loc_1130012:     End If
  loc_1130049:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_138, var_164) = 6) Then
  loc_113006B:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1130081:         var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_113008A:         Set var_A4 = Me.FGrid
  loc_11300A5:       Else
  loc_11300B8:         Me.FGrid.Rows = 1
  loc_11300D5:         var_108 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11300DD:         Set var_A4 = Me.FGrid
  loc_113010C:         Me.FGrid.FixedRows = 1
  loc_1130114:       End If
  loc_1130114:     End If
  loc_1130117:   Else
  loc_1130122:     var_108 = "Delete Module"
  loc_113012D:     var_C4 = "No Entries To Delete"
  loc_1130138:     MsgBox(var_C4, &H10, var_108, var_138, var_164)
  loc_1130148:   End If
  loc_113014C:   Set var_8C = Me.FGrid
  loc_113015D: End If
  loc_113015D: Exit Sub
  loc_113015E: ' Referenced from: 112FE1C
  loc_113015E: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000, var_108, FGrid.DispID_10000, var_C4)
  loc_1130163: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9DF00
  'Data Table: 4DEA20
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9DEA3: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E9DEBB: var_DC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_E9DEE3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9DEFE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E42BA0
  'Data Table: 4DEA20
  Dim var_8C As TextBox
  loc_E42B7F: Set var_88 = Me.TxtGrid
  loc_E42B85: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E42B8D: var_8C.Visible = False
  loc_E42B99: Call Proc_41_51_EF8B68()
  loc_E42B9E: Exit Sub
End Sub

Private Sub DGCompany_UnknownEvent_9 'FADA10
  'Data Table: 4DEA20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FAD88F: Me.DGCompany.Visible = False
  loc_FAD8AE: If (Me.RecordCount > 0) Then
  loc_FAD8BF:   Set var_A8 = Me.Txt
  loc_FAD8C5:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAD8CD:   var_B0.Text = vbNullString
  loc_FAD8E7:   Set var_A8 = Me.Txt
  loc_FAD8ED:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HA), var_B0)
  loc_FAD8F5:   var_B0.Tag = vbNullString
  loc_FAD90F:   Set var_A8 = Me.Txt
  loc_FAD915:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_FAD91D:   var_B0.Text = vbNullString
  loc_FAD965:   Set var_B4 = Me.Txt
  loc_FAD96B:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FAD973:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAD9A6:   var_B0 = Me.Fields.Item("Code")
  loc_FAD9C5:   Set var_B4 = Me.Txt
  loc_FAD9CB:   Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7), var_B8)
  loc_FAD9D3:   var_B8.Tag = CStr(var_B0.Value)
  loc_FAD9E9: End If
  loc_FAD9F4: Set var_A8 = Me.Txt
  loc_FAD9FA: Call 0.Method_DGCompany_UnknownEvent_90 (CInt(7))
  loc_FADA02: var_B0.SetFocus
  loc_FADA0E: Exit Sub
  loc_FADA0F: var_B0() = 
End Sub

Private Sub Form_Load() '1348034
  'Data Table: 4DEA20
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_BC As Variant
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_4DEA36 As Connection15
  Dim Me As Variant
  Dim var_E4 As Variant
  loc_1347844: On Error Goto loc_134802C
  loc_1347855: Set var_8C = Me.Txt
  loc_134785B: Call 0.Method_Form_Load0 (CInt(6), var_90)
  loc_134787A: Me.DGDepart.Left = CVar(var_90.Left)
  loc_1347896: Set var_B8 = Me.Txt
  loc_134789C: Call 0.Method_Form_Load0 (CInt(6), var_BC)
  loc_13478B7: Set var_8C = Me.Txt
  loc_13478BD: Call 0.Method_Form_Load0 (CInt(6), var_90)
  loc_13478D5: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_13478DE: Set var_C4 = Me.DGDepart
  loc_13478E4: var_C4.Top = CVar(var_90.Left)
  loc_1347904: Set var_90 = Me.Txt
  loc_134790A: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_1347930: var_A4 = CVar((Me.FrBanq.Left + var_B8.Left)) 'Single
  loc_134793F: Me.DGBookNo.Left = CVar(var_90.Left)
  loc_134795D: Set var_90 = Me.Txt
  loc_1347963: Call 0.Method_Form_Load0 (CInt(&HA), var_B8)
  loc_134797E: Set var_BC = Me.Txt
  loc_1347984: Call 0.Method_Form_Load0 (CInt(&HA), var_C4)
  loc_13479B2: var_A4 = CVar((((Me.FrBanq.Top + var_B8.Top) + var_C4.Height) + CDbl(&H1E))) 'Single
  loc_13479C1: Me.DGBookNo.Top = CVar(var_90.Left)
  loc_13479E3: Set var_8C = Me.Txt
  loc_13479E9: Call 0.Method_Form_Load0 (CInt(9), var_90)
  loc_1347A08: Me.DGGodown.Left = CVar(var_90.Left)
  loc_1347A24: Set var_B8 = Me.Txt
  loc_1347A2A: Call 0.Method_Form_Load0 (CInt(9), var_BC)
  loc_1347A45: Set var_8C = Me.Txt
  loc_1347A4B: Call 0.Method_Form_Load0 (CInt(9), var_90)
  loc_1347A63: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1347A72: Me.DGGodown.Top = CVar(var_90.Left)
  loc_1347A92: Set var_8C = Me.Txt
  loc_1347A98: Call 0.Method_Form_Load0 (CInt(7), var_90)
  loc_1347AB7: Me.DGCompany.Left = CVar(var_90.Left)
  loc_1347AD3: Set var_B8 = Me.Txt
  loc_1347AD9: Call 0.Method_Form_Load0 (CInt(7), var_BC)
  loc_1347AF4: Set var_8C = Me.Txt
  loc_1347AFA: Call 0.Method_Form_Load0 (CInt(7), var_90)
  loc_1347B12: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1347B21: Me.DGCompany.Top = CVar(var_90.Left)
  loc_1347B42: Me.LblUser.Left = CDbl(13500)
  loc_1347B59: Me.LblUser.Top = CDbl(7800)
  loc_1347B70: Me.LblLDt.Top = CDbl(8160)
  loc_1347B87: Me.LblLDt.Left = CDbl(13500)
  loc_1347B96: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1347BA9: Me.FrBanq.BackColor = CLng(MemVar_1F921B0)
  loc_1347BC4: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1347BDA: Me.LblAlaram.BackColor = CLng(MemVar_1F921B0)
  loc_1347BEA: Set var_8C = Me.LblCurStockStr
  loc_1347BF0: var_8C.BackColor = CLng(MemVar_1F921B0)
  loc_1347BF8: Call Proc_41_53_121C9D4()
  loc_1347C11: var_D0 = "Select ReqCompWise,BanquetKitchen,RateEditableInStockIssue,NegativeStockAllowYN,DateEditableOnRequisitionYN from Enviro Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1347C21: unk_4DEA36.Execute var_D0 & "' or LOGSITE_CODE='HO')", var_E4, -1
  loc_1347C32: Set global_140 = var_8C
  loc_1347C78: global_144 = Proc_6_38_E68A98(CVar(Me.Fields.Item("ReqCompWise")))
  loc_1347CB6: global_148 = Proc_6_38_E68A98(CVar(Me.Fields.Item("BanquetKitchen")))
  loc_1347CF4: global_152 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RateEditableInStockIssue")))
  loc_1347D32: global_120 = Proc_6_38_E68A98(CVar(Me.Fields.Item("DateEditableOnRequisitionYN")))
  loc_1347D59: var_90 = Me.Fields.Item("NegativeStockAllowYN")
  loc_1347D7B: If (Proc_6_38_E68A98(CVar(var_90)) <> "No") Then
  loc_1347D83:   global_132 = &HFF
  loc_1347D86: End If
  loc_1347D91: If (global_144 <> "Yes") Then
  loc_1347DA1:   Set var_8C = Me.Txt
  loc_1347DA7:   Call 0.Method_Form_Load0 (CInt(7), var_90, 0)
  loc_1347DAF:   var_90.Visible = global_132
  loc_1347DC6:   Set var_8C = Me.Label1
  loc_1347DCC:   Call 0.Method_Form_Load0 (3, var_90)
  loc_1347DD4:   var_90.Visible = False
  loc_1347DE0: End If
  loc_1347DEA: Set global_52 = New 
  loc_1347DFC: Me.CursorLocation = 3
  loc_1347E26: var_E4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')Order by Name") 'String
  loc_1347E30: Me.Open var_E4, CVar(MemVar_1F92044), 2
  loc_1347E44: CVarUnk
  loc_1347E49: VerifyVarObj
  loc_1347E4F: Set var_8C = Me.DGDepart
  loc_1347E55: LateIdStAd
  loc_1347E6D: Set global_56 = New 
  loc_1347E7F: Me.DGDepart.CursorLocation = 3
  loc_1347EA9: var_E4 = CVar("Select Code,Name From GodownMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')Order by Name") 'String
  loc_1347EB3: Me.Open var_E4, CVar(MemVar_1F92044), 2
  loc_1347EC7: CVarUnk
  loc_1347ECC: VerifyVarObj
  loc_1347ED2: Set var_8C = Me.DGGodown
  loc_1347ED8: LateIdStAd
  loc_1347EF1: If (global_144 = "Yes") Then
  loc_1347EFE:   Set global_64 = New 
  loc_1347F10:   Me.DGGodown.CursorLocation = 3
  loc_1347F33:   var_D0 = "Select Sub.Subcode as Code, Sub.Name from Subgroup Sub Inner Join Acgroup AcG On Sub.Groupcode=AcG.Groupcode where AcG.GroupName='SUNDRY DEBTORS' and Sub.CompanyType='Corporate' and (Sub.LOGSITE_CODE='" & MemVar_1F92078
  loc_1347F44:   Me.Open CVar(var_D0 & "' or Sub.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 3
  loc_1347F58:   CVarUnk
  loc_1347F5D:   VerifyVarObj
  loc_1347F63:   Set var_8C = Me.DGCompany
  loc_1347F69:   LateIdStAd
  loc_1347F77: End If
  loc_1347F93: Me.CursorLocation = 3
  loc_1347FBD: var_D4 = "Select Distinct DocID as SearchCode,LogSite_Code,Site_Code From Stock Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and vtype in (SELECT V_TYPE FROM voucher_type WHERE CATEGORY='REQISS' and Site_Code='"
  loc_1347FE3: Me.Open CVar(var_D4 & MemVar_1F92070 & "' and LogSite_Code='" & MemVar_1F92078 & "') order by  DocID"), CVar(MemVar_1F92044), 2
  loc_1348004: Set var_8C = Me
  loc_134801B: Call Proc_41_50_FB2A94(Proc_5_1_100CB50("INI", var_8C, New, 3, -1, var_8C, global_64, 1), -1, var_8C, global_56)
  loc_1348026: Call Proc_41_49_15BC8D4(3, -1)
  loc_134802B: Exit Sub
  loc_134802C: ' Referenced from: 1347844
  loc_134802C: Proc_6_60_E62BC4(var_8C)
  loc_1348031: Exit Sub
End Sub

Private Sub Form_Resize() 'ED4F18
  'Data Table: 4DEA20
  Dim var_8C As Label
  loc_ED4E76: Call 0.Method_arg_50 (var_88)
  loc_ED4E88: Me.LblFormCaption.Caption = var_88
  loc_ED4EA1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED4EAD: Set var_A0 = Me.TopCtrl1
  loc_ED4EB3: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4EC0: Set var_8C = Me.TopCtrl1
  loc_ED4EC6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4EE0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED4EFB: Call 0.Method_arg_100 (var_B8)
  loc_ED4F0D: Me.LblFormCaption.Width = var_B8
  loc_ED4F15: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6BCE8
  'Data Table: 4DEA20
  loc_E6BC97: Set global_60 = Nothing
  loc_E6BCA9: Set global_76 = Nothing
  loc_E6BCBB: Set global_64 = Nothing
  loc_E6BCCD: Set global_52 = Nothing
  loc_E6BCDF: Set global_56 = Nothing
  loc_E6BCE6: Exit Sub
End Sub

Private Sub Form_Activate() 'E2B814
  'Data Table: 4DEA20
  loc_E2B7F0: Set var_88 = Me.TopCtrl1
  loc_E2B7F6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E2B80B: If (CLng(CInt()) = &H2D) Then
  loc_E2B80E:   Call TopCtrl1_UnknownEvent_15()
  loc_E2B813: End If
  loc_E2B813: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B0A4
  'Data Table: 4DEA20
  loc_E2B07C: On Error Goto loc_E2B09C
  loc_E2B093: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2B09B: Exit Sub
  loc_E2B09C: ' Referenced from: E2B07C
  loc_E2B09C: Proc_6_60_E62BC4(Shift)
  loc_E2B0A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1126030
  'Data Table: 4DEA20
  Dim var_8C As String
  Dim var_98 As Variant
  Dim var_90 As Variant
  Dim unk_4DEA36 As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As TextBox
  loc_1125CD0: On Error Goto loc_1126028
  loc_1125CF6: Call Proc_41_50_FB2A94(Proc_5_1_100CB50("ADD", Me))
  loc_1125D01: Call Proc_41_48_F565C0(global_60)
  loc_1125D19: Set var_90 = Me.Txt
  loc_1125D1F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_98)
  loc_1125D27: var_98.Text = CStr(MemVar_1F920EC)
  loc_1125D3D: Set var_90 = Me.LblVPrefix
  loc_1125D43: var_90.Caption = vbNullString
  loc_1125D61: unk_4DEA36.Execute "Select Description,V_Type From Voucher_Type Where NCat='RQI'", var_B8, -1
  loc_1125D6C: Set var_88 = var_90
  loc_1125D89: If (var_88.RecordCount > 0) Then
  loc_1125DC5:   Set var_C0 = Me.Txt
  loc_1125DCB:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C4)
  loc_1125DD3:   var_C4.Text = CStr(var_88.Fields.Item("Description").Value)
  loc_1125DFB:   var_90 = var_88.Fields
  loc_1125E0B:   var_B8 = var_90.Item("V_Type").Value
  loc_1125E22:   Set var_C0 = Me.Txt
  loc_1125E28:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_C4)
  loc_1125E30:   var_C4.Tag = CStr(var_B8)
  loc_1125E46: End If
  loc_1125E5A: var_8C = "Select E.PurchaseGodown,G.Name as GodownName From Enviro E Left Join GodownMast G on E.PurchaseGodown=G.Code Where E.Logsite_code='" & MemVar_1F92078
  loc_1125E6A: unk_4DEA36.Execute var_8C & "'", var_B8, -1
  loc_1125E75: Set var_88 = var_90
  loc_1125E99: If (var_88.RecordCount > 0) Then
  loc_1125EAE:   var_90 = var_88.Fields
  loc_1125ED5:   Set var_C0 = Me.Txt
  loc_1125EDB:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4, CStr(var_90.Item("GodownName").Value))
  loc_1125EE3:   var_C4.Text = var_90
  loc_1125F13:   var_98 = var_88.Fields.Item("PurchaseGodown")
  loc_1125F24:   var_8C = CStr(var_98.Value)
  loc_1125F32:   Set var_C0 = Me.Txt
  loc_1125F38:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_C4)
  loc_1125F40:   var_C4.Tag = var_8C
  loc_1125F56: End If
  loc_1125F5E: Call Proc_41_52_126C5D8(&HFF, var_8C)
  loc_1125F69: global_92 = var_8C
  loc_1125FAA: Set var_90 = Me.Txt
  loc_1125FB0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_98, CStr(Format(Time, "HH:nn")))
  loc_1125FB8: var_98.Text = 1
  loc_1125FDB: Set var_90 = Me.Txt
  loc_1125FE1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_98)
  loc_1125FE9: var_98.SetFocus
  loc_1125FFA: Set var_88 = Nothing
  loc_112600A: Me.LblUser.Caption = vbNullString
  loc_112601F: Me.LblLDt.Caption = vbNullString
  loc_1126027: Exit Sub
  loc_1126028: ' Referenced from: 1125CD0
  loc_1126028: Proc_6_60_E62BC4(1)
  loc_112602D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC6F28
  'Data Table: 4DEA20
  loc_EC6E8C: On Error Goto loc_EC6F21
  loc_EC6EC6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EC6ED5:   Set var_10C = Me
  loc_EC6EEC:   Call Proc_41_50_FB2A94(Proc_5_1_100CB50("INI", var_10C))
  loc_EC6EF7:   Call Proc_41_49_15BC8D4(global_60)
  loc_EC6F02:   global_116 = vbNullString
  loc_EC6F09: Else
  loc_EC6F0F:   Call 0.Method_arg_1E8 (var_10C)
  loc_EC6F17:   Call var_10C.SetFocus
  loc_EC6F20: End If
  loc_EC6F20: Exit Sub
  loc_EC6F21: ' Referenced from: EC6E8C
  loc_EC6F21: Proc_6_60_E62BC4()
  loc_EC6F26: Exit Sub
  loc_EC6F27: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1130910
  'Data Table: 4DEA20
  Dim unk_4DEA36 As Connection15
  Dim Me As Recordset15
  Dim var_12C As Variant
  Dim var_134 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_130 As String
  Dim var_C0 As Variant
  loc_11305AC: On Error Goto loc_11308C2
  loc_11305BD: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_11305C0:   Exit Sub
  loc_11305C1: End If
  loc_11305F8: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_100, var_120) = 6) Then
  loc_1130604:   unk_4DEA36.BeginTrans var_124
  loc_113061A:   var_94 = Me.Bookmark 'Variant
  loc_113063C:   Set var_128 = Me.Txt
  loc_1130642:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_12C, var_130, "Select V_Type From Voucher_Type Where ContraType='")
  loc_113064A:   var_C0 = var_12C.Tag
  loc_1130653:   var_134 = -1 & var_130
  loc_1130663:   unk_4DEA36.Execute var_134 & "'", var_13C, 
  loc_113066E:   Set var_9C = var_13C
  loc_113069A:   If (var_9C.RecordCount > 0) Then
  loc_11306C8:     var_A0 = CStr(var_9C.Fields.Item(0).Value)
  loc_11306D5:   End If
  loc_1130714:   var_E0 = "Update Indent Set ClearYN='' Where DocId In (Select distinct Contradocid From Stock Where DocID='" & Me.Fields.Item("SearchCode").Value 
  loc_113072B:   unk_4DEA36.Execute CStr(var_E0 & "')"), var_120, -1
  loc_113079D:   unk_4DEA36.Execute CStr("Delete from Stock where ContraDocId ='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_1130801:   var_100 = "Delete From Stock Where DocID='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1130805:   var_130 = CStr(var_100)
  loc_113080F:   unk_4DEA36.Execute var_130, var_120, -1
  loc_1130831:   unk_4DEA36.CommitTrans
  loc_1130841:   Me.Requery -1
  loc_1130861:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_113086E:     Me.Bookmark = var_94
  loc_1130876:   Else
  loc_113088A:     If (Me.EOF = 0) Then
  loc_1130893:       Me.MoveLast
  loc_1130898:     End If
  loc_1130898:   End If
  loc_1130898:   Call Proc_41_49_15BC8D4(var_13C, var_13C)
  loc_11308B9:   Proc_5_0_110649C(&HFF, Me, global_60)
  loc_11308C1: End If
  loc_11308C1: Exit Sub
  loc_11308C2: ' Referenced from: 11305AC
  loc_11308C8: unk_4DEA36.RollbackTrans
  loc_11308D5: Set var_128 = Err()
  loc_11308DB: Call 0.Method_arg_2C (var_130, 0)
  loc_11308FC: MsgBox(CVar(var_130), &H10, " Deletion Message", var_100, var_120)
  loc_113090F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2B010
  'Data Table: 4DEA20
  Dim var_8C As Label
  Dim var_A4 As TextBox
  loc_F2AF04: On Error Goto loc_F2B008
  loc_F2AF15: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_F2AF18:   Exit Sub
  loc_F2AF19: End If
  loc_F2AF3C: Call Proc_41_50_FB2A94(Proc_5_1_100CB50("EDIT", Me))
  loc_F2AF54: Me.LblUser.Caption = vbNullString
  loc_F2AF69: Me.LblLDt.Caption = vbNullString
  loc_F2AF75: Set var_8C = Me.TopCtrl1
  loc_F2AF7B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_60)
  loc_F2AF94: If (CStr() = "Add") Then
  loc_F2AFA2:   Set var_8C = Me.Txt
  loc_F2AFA8:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6))
  loc_F2AFB0:   var_A4.SetFocus
  loc_F2AFBC: End If
  loc_F2AFC0: Set var_8C = Me.TopCtrl1
  loc_F2AFC6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_F2AFDF: If (CStr() = "Edit") Then
  loc_F2AFED:   Set var_8C = Me.Txt
  loc_F2AFF3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5))
  loc_F2AFFB:   var_A4.SetFocus
  loc_F2B007: End If
  loc_F2B007: Exit Sub
  loc_F2B008: ' Referenced from: F2AF04
  loc_F2B008: Proc_6_60_E62BC4(var_A4)
  loc_F2B00D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E15128
  'Data Table: 4DEA20
  loc_E1511D: Me.Global.Unload Me
  loc_E15125: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F14758
  'Data Table: 4DEA20
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_124 As String
  Dim MemVar_1F920E4 As String
  loc_F14680: On Error Goto loc_F14750
  loc_F1469A: If (Me.RecordCount <= 0) Then
  loc_F146A3:   var_B8 = "Information"
  loc_F146BE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F146CE:   Exit Sub
  loc_F146CF: End If
  loc_F146D6: var_10C = "Select Distinct SH.Docid,SH.Vtype,SH.Vno,SH.Vdate,SH.Vtime,SH.Remarks,D.NAME AS Location,VT.Description From (Stock SH INNER Join GodownMast D on D.Code=SH.GodownCode) INNER join Voucher_Type VT on Vt.V_type=SH.VType where SH.LOGSITE_CODE='" & MemVar_1F92078
  loc_F14700: var_124 = var_10C & "' AND SH.SITE_CODE='" & MemVar_1F92070 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND VT.SITE_CODE='" & MemVar_1F92070
  loc_F14707: MemVar_1F920E4 = var_124 & "' AND VT.Ncat in ('RQI')"
  loc_F14725: Proc_6_126_F1BCC0("650,500,1100,650,2000,2000,2000")
  loc_F14733: MemVar_1F92120 = Me
  loc_F1474A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F1474F: Exit Sub
  loc_F14750: ' Referenced from: F14680
  loc_F14750: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F14755: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2B2D8
  'Data Table: 4DEA20
  loc_E2B2C8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B2D0: Call Proc_41_49_15BC8D4(global_60)
  loc_E2B2D5: Exit Sub
  loc_E2B2D6: Set var_5800 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2B9F8
  'Data Table: 4DEA20
  loc_E2B9E8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B9F0: Call Proc_41_49_15BC8D4(global_60)
  loc_E2B9F5: Exit Sub
  loc_E2B9F6: Set var_5800 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2B4B8
  'Data Table: 4DEA20
  loc_E2B4A8: Proc_5_0_110649C(&HFF, Me)
  loc_E2B4B0: Call Proc_41_49_15BC8D4(global_60)
  loc_E2B4B5: Exit Sub
  loc_E2B4B6: Set var_5800 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2BE18
  'Data Table: 4DEA20
  Dim var_5701 As Double
  loc_E2BE08: Proc_5_0_110649C(&HFF, Me)
  loc_E2BE10: Call Proc_41_49_15BC8D4(global_60)
  loc_E2BE15: Exit Sub
  loc_E2BE16: var_5701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '116F430
  'Data Table: 4DEA20
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_C4 As Variant
  Dim var_B4 As Fields15
  Dim var_C8 As Field20
  Dim var_108 As String
  Dim unk_4DEA36 As Connection15
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_D8 As Variant
  Dim var_A4 As Recordset15
  loc_116F088: On Error Goto loc_116F42A
  loc_116F094: var_AC = Me.RecordCount
  loc_116F0A2: If (var_AC <= 0) Then
  loc_116F0A5:   Exit Sub
  loc_116F0A6: End If
  loc_116F0AD: var_B0 = "SELECT S.VNo, S.Vdate, S.VTime, D.Name DepartName, S.Remarks, I.Name ItemName, S.RecdUnit As Unit, Indent1.Qty, S.RecdQty As QtyIss, S.Rate, S.Amount " & " FROM ((Stock AS S INNER JOIN ItemMast AS I ON S.Item = I.Code And I.ItemType='Store') iNNER JOIN GodownMast AS D ON S.GodownCode = D.Code) INNER JOIN Indent1 ON (S.ContraSno = Indent1.Sno) AND (S.ContraDocId = Indent1.DocId) "
  loc_116F0CC: var_B4 = Me.Fields
  loc_116F0DC: var_D8 = var_B4.Item("SearchCode").Value
  loc_116F0F2: var_88 = CStr(CVar(var_B0 & " Where S.DocID='") & var_D8 & "' Order By S.Sno")
  loc_116F112: If (var_88 = vbNullString) Then
  loc_116F115:   Exit Sub
  loc_116F116: End If
  loc_116F12C: unk_4DEA36.Execute var_88, var_D8, -1
  loc_116F140: var_108 = "Select S.GodownCode,G.Name as GodName From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code Where S.ContraDocID='"
  loc_116F15A: var_B4 = Me.Fields
  loc_116F162: var_C8 = var_B4.Item("SearchCode")
  loc_116F16A: var_D8 = var_C8.Value
  loc_116F1A9: unk_4DEA36.Execute CStr(var_108 & var_D8 & "'"), var_D8, -1
  loc_116F1B4: Set var_A4 = var_B4
  loc_116F1D3: Set var_B4 = var_B4 
  loc_116F1DF: var_12E = CreateFieldDefFile(var_B4, MemVar_1F920B4 & "\StoreIss.ttx", &HFF)
  loc_116F1E9: Set var_A0 = var_B4
  loc_116F1EF: var_C4 = CVar(var_12E) 'Integer
  loc_116F1F2: var_9C = var_C4 'Variant
  loc_116F20E: var_B0 = MemVar_1F920B4 & "\StoreIss.RPT"
  loc_116F217: Call 0.Method_arg_1C (var_B0, var_C4, var_B4)
  loc_116F222: MemVar_1F921E4 = var_B4
  loc_116F23D: Call 0.Method_arg_90 (var_B4, var_AC, var_A6, 1)
  loc_116F245: Call 0.Method_arg_24 (var_12E, var_B4)
  loc_116F251: For var_132 =  To CInt(var_AC): var_B4 = var_132 'Integer
  loc_116F26A:   Call 0.Method_arg_90 (var_B4, CLng(var_A6))
  loc_116F272:   Call 0.Method_arg_20 (var_C8)
  loc_116F27A:   Call 0.Method_arg_30 (var_B0)
  loc_116F290:   var_144 = Ucase(CVar(var_B0)) 'Variant
  loc_116F2C0:   If (var_144 = Ucase("Title")) Then
  loc_116F2D6:     Call 0.Method_arg_90 (var_B4, CLng(var_A6))
  loc_116F2DE:     Call 0.Method_arg_20 (var_C8)
  loc_116F2E6:     Call 0.Method_arg_38 ("'Store Issue Slip'")
  loc_116F2F5:   Else
  loc_116F317:     If (var_144 = Ucase("Godown")) Then
  loc_116F31A:       var_108 = "'"
  loc_116F331:       var_B4 = var_A4.Fields
  loc_116F34D:       var_128 = "'"
  loc_116F356:       var_B0 = CStr(var_108 & var_B4.Item("GodName").Value & var_128)
  loc_116F36A:       Call 0.Method_arg_90 (var_148, CLng(var_A6))
  loc_116F372:       Call 0.Method_arg_20 (var_14C)
  loc_116F37A:       Call 0.Method_arg_38 (var_B0)
  loc_116F396:     End If
  loc_116F396:   End If
  loc_116F399: Next var_132 'Integer
  loc_116F3B7: Call 0.Method_arg_64 (var_B4, CVar(var_A0))
  loc_116F3BF: Call 0.Method_arg_2C (var_108)
  loc_116F3CD: Call 0.Method_arg_150 (var_128)
  loc_116F3D8: Call 0.Method_arg_50 (var_B0)
  loc_116F3E2: Set var_C8 = Nothing
  loc_116F3FC: Set var_B4 = MemVar_1F921E4 
  loc_116F408: Proc_6_99_1483714(var_B4, 0, var_B0)
  loc_116F413: MemVar_1F921E4 = var_B4
  loc_116F426: Set var_A0 = Nothing
  loc_116F429: Exit Sub
  loc_116F42A: ' Referenced from: 116F088
  loc_116F42A: Proc_6_60_E62BC4(&HFF)
  loc_116F42F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3FB38
  'Data Table: 4DEA20
  Dim Me As Recordset15
  loc_E3FB0F: Me.Requery -1
  loc_E3FB1F: Me.Requery -1
  loc_E3FB2F: Me.Requery -1
  loc_E3FB34: Exit Sub
  loc_E3FB35: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16F7E6C
  'Data Table: 4DEA20
  Dim var_9E As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_AC As Variant
  Dim var_144 As String
  Dim unk_4DEA36 As Connection15
  Dim var_88 As Variant
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_8A As Variant
  Dim var_138 As String
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_140 As TextBox
  Dim var_210 As TextBox
  Dim var_228 As Variant
  Dim var_238 As MSHFlexGrid
  Dim var_274 As Variant
  Dim var_288 As Variant
  Dim var_B14 As Double
  Dim var_2DC As MSHFlexGrid
  Dim var_2F0 As TextBox
  Dim var_304 As TextBox
  Dim var_330 As Variant
  Dim var_37C As TextBox
  Dim var_3C8 As Variant
  Dim var_41C As Variant
  Dim var_43C As Variant
  Dim var_460 As Variant
  Dim var_4B4 As Variant
  Dim var_4D4 As Variant
  Dim var_B24 As Double
  Dim var_590 As Variant
  Dim var_624 As Variant
  Dim var_B2C As Double
  Dim var_7B0 As Variant
  Dim var_7D0 As Variant
  Dim var_848 As Variant
  Dim var_868 As Variant
  Dim var_8E0 As Variant
  Dim var_900 As Variant
  Dim var_978 As Variant
  Dim var_A10 As Variant
  Dim var_A30 As Variant
  Dim var_A54 As Variant
  Dim var_1E4 As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_298 As String
  Dim var_1DC As Variant
  Dim var_354 As Variant
  Dim var_51C As Variant
  Dim var_5C0 As Variant
  Dim var_658 As Variant
  Dim var_668 As Variant
  Dim var_698 As Variant
  Dim var_780 As Variant
  Dim var_938 As Variant
  Dim var_948 As Variant
  Dim var_968 As Variant
  Dim var_9D0 As Variant
  Dim var_AB4 As Variant
  Dim var_AD4 As Variant
  Dim var_42C As Variant
  Dim var_224 As MSHFlexGrid
  Dim var_2EC As TextBox
  Dim var_314 As TextBox
  Dim var_5F0 As Variant
  Dim var_318 As MSHFlexGrid
  Dim var_32C As MSHFlexGrid
  Dim var_378 As MSHFlexGrid
  Dim var_200 As String
  Dim var_3C4 As MSHFlexGrid
  Dim var_214 As String
  Dim var_C7C As Variant
  Dim var_C9C As Variant
  Dim var_6C8 As Variant
  Dim var_70C As Variant
  Dim var_AF8 As Variant
  Dim var_BEC As Variant
  Dim var_CDC As Variant
  Dim var_1EC As String
  loc_16F65AC: On Error Goto loc_16F7E52
  loc_16F65B1: var_9E = 0
  loc_16F65BF: Set var_A8 = Me.Txt
  loc_16F65C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_16F65EE: If (Proc_6_27_EA565C(var_AC, "Voucher Number") = 0) Then
  loc_16F65F1:   Exit Sub
  loc_16F65F2: End If
  loc_16F65FD: Set var_A8 = Me.Txt
  loc_16F6603: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_16F662C: If (Proc_6_27_EA565C(var_AC, "Voucher Date") = 0) Then
  loc_16F662F:   Exit Sub
  loc_16F6630: End If
  loc_16F663B: Set var_A8 = Me.Txt
  loc_16F6641: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_AC)
  loc_16F666A: If (Proc_6_27_EA565C(var_AC, "Department") = 0) Then
  loc_16F666D:   Exit Sub
  loc_16F666E: End If
  loc_16F6679: Set var_A8 = Me.Txt
  loc_16F667F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_16F66A8: If (Proc_6_27_EA565C(var_AC, "Godown") = 0) Then
  loc_16F66AB:   Exit Sub
  loc_16F66AC: End If
  loc_16F66B0: Set var_A8 = Me.TopCtrl1
  loc_16F66B6: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9E)
  loc_16F66CF: If (CStr() = "Add") Then
  loc_16F66D9:   var_B4 = "Added By:- " & MemVar_1F920C8
  loc_16F66E0:   var_E4 = CVar(CStr() & "  On ") 'String
  loc_16F66F9:   var_F4 = (var_E4 + Str(Date))
  loc_16F6704:   global_80 = CStr(var_F4)
  loc_16F671A:   GoTo loc_16F671D
  loc_16F671D:   ' Referenced from: 16F671A
  loc_16F671D: End If
  loc_16F671D: var_108 = 1
  loc_16F6743: var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F6754: If (var_B4 = vbNullString) Then
  loc_16F675D:   Call 0.Method_arg_50 (var_B4, CVar(CLng(1)))
  loc_16F677E:   MsgBox("Please Fill Item Detail", &H40, CVar(var_B4), var_E4, var_F4)
  loc_16F67A1:   Me.FGrid.Row = 1
  loc_16F67AD:   Set var_A8 = Me.FGrid
  loc_16F67BE:   Exit Sub
  loc_16F67BF: End If
  loc_16F67C8: If (global_132 = 0) Then
  loc_16F67CF:   Set var_140 = Me.FGrid
  loc_16F67E0:   Set var_A8 = Me.Txt
  loc_16F67E6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC, var_B4)
  loc_16F67EE:   FGrid.DispID_8001 = var_AC.Tag
  loc_16F680C:   Set var_B0 = var_140
  loc_16F6828:   If (Proc_96_28_F21610(var_B0, &HA, 4) = &HFF) Then
  loc_16F6831:     Call 0.Method_arg_50 (var_B4, MemVar_1F92070)
  loc_16F683F:     var_D4 = CVar(var_B4) 'String
  loc_16F684C:     var_C4 = "Can't Proceed With Negative Stock"
  loc_16F6852:     MsgBox(var_C4, &H10, var_D4, var_E4, var_F4)
  loc_16F6875:     Me.FGrid.Row = 1
  loc_16F6890:     Me.FGrid.Col = 1
  loc_16F689C:     Set var_A8 = Me.FGrid
  loc_16F68AD:     Exit Sub
  loc_16F68AE:   End If
  loc_16F68AE: End If
  loc_16F68CC: Set var_A8 = Me.Txt
  loc_16F68D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4, "Select V_Type From Voucher_Type Where ContraType='", var_C4)
  loc_16F68DA: -1 = var_AC.Tag
  loc_16F68F3: unk_4DEA36.Execute var_B0 & var_B4 & "'", FGrid.DispID_8001, var_B4
  loc_16F68FE: Set var_88 = var_B0
  loc_16F691C: var_148 = var_88.RecordCount
  loc_16F692A: If (var_148 > 0) Then
  loc_16F6933:   var_108 = 0
  loc_16F6947:   var_AC = var_88.Fields.Item(var_108)
  loc_16F694F:   var_C4 = var_AC.Value
  loc_16F6958:   var_A4 = CStr(var_C4)
  loc_16F6965: End If
  loc_16F6969: Set var_A8 = Me.TopCtrl1
  loc_16F696F: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_108)
  loc_16F6988: If (CStr() = "Add") Then
  loc_16F6991:   var_118 = 0
  loc_16F69B1:   var_B4 = "Select count(*) from Stock where DocID='" & global_92
  loc_16F69C1:   unk_4DEA36.Execute var_B4 & "'", var_C4, -1
  loc_16F69C9:   var_A8 = var_A8.Fields
  loc_16F69D1:   var_118 = var_AC.Item(var_AC)
  loc_16F69D9:   var_B0 = var_B0.Value
  loc_16F6A00:   If (var_D4 > 0) Then
  loc_16F6A24:     MsgBox("Duplicate Vouche No.", &H10, "Validation Ertror", var_E4, var_F4)
  loc_16F6A3C:     Call Proc_41_52_126C5D8(&HFF, var_B4)
  loc_16F6A4F:     Set var_A8 = Me.Txt
  loc_16F6A55:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_16F6A5D:     var_AC.Text = var_B4
  loc_16F6A6C:     Exit Sub
  loc_16F6A6D:   End If
  loc_16F6A70: Else
  loc_16F6AA4:   global_92 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_16F6AB5: End If
  loc_16F6ADA: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_14C 'Integer
  loc_16F6AE4:   var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F6AEC:   var_128 = CVar(CLng(4)) 'Long
  loc_16F6B06:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F6B17:   var_15C = CVar(CLng(var_A0)) 'Long
  loc_16F6B2E:   var_D4 = Me.FGrid.TextMatrix)
  loc_16F6B57:   If (CVar(CLng(&HA)) And (CStr(var_D4) <> vbNullString)) Then
  loc_16F6B5C:     var_9E = &HFF
  loc_16F6B5F:   End If
  loc_16F6B62: Next var_14C 'Integer
  loc_16F6B6D: If (var_9E = 0) Then
  loc_16F6B83:   var_C4 = "Nil Details Can't Be Saved"
  loc_16F6B89:   MsgBox(var_C4, &H40, var_D4, var_E4, var_F4)
  loc_16F6B99:   Exit Sub
  loc_16F6B9A: End If
  loc_16F6BA3: unk_4DEA36.BeginTrans var_148
  loc_16F6BAA: var_8A = &HFF
  loc_16F6BD4: unk_4DEA36.Execute "Delete From STOCK Where DocID='" & global_92 & "'", var_C4, -1
  loc_16F6C44: var_E4 = (Left(global_92, 3) + CVar(Proc_6_52_EAD4F4(var_A4, 5)))
  loc_16F6C4B: var_1AC = (var_E4 + Mid(global_92, 9, var_F4))
  loc_16F6C66: unk_4DEA36.Execute CStr("Delete From STOCK Where DocID='" & var_1AC & "'"), var_1DC, -1
  loc_16F6CAF: For var_1E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A0 = var_1E0 'Integer
  loc_16F6CB9:   var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F6CC1:   var_128 = CVar(CLng(4)) 'Long
  loc_16F6CDB:   var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_16F6D2C:   If (CVar(CLng(&HA)) And (CStr(Me.FGrid.TextMatrix)) <> vbNullString)) Then
  loc_16F6D33:     var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F6D3B:     var_128 = CVar(CLng(0)) 'Long
  loc_16F6D5D:     var_B04 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F6D67:     Set var_AC = Me.LblVPrefix
  loc_16F6D6D:     var_1EC = var_AC.Caption
  loc_16F6D80:     Set var_B0 = Me.Txt
  loc_16F6D86:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140, var_200, var_B04, var_128, var_108, CVar(CLng(var_A0)))
  loc_16F6D8E:     (CDbl(Val(var_B4)) <> CDbl(0)) = var_140.Tag
  loc_16F6DA1:     Set var_20C = Me.Txt
  loc_16F6DA7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_210, var_214, var_128, var_108)
  loc_16F6DAF:     1 = var_210.Text
  loc_16F6DBC:     var_B0C = Val(var_214)
  loc_16F6DCD:     Set var_224 = Me.Txt
  loc_16F6DD3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_228, var_22C, var_B0C)
  loc_16F6DDB:     var_A8 = var_228.Text
  loc_16F6DEC:     var_17C = CVar(CLng(&HB)) 'Long
  loc_16F6DFB:     var_D4 = Me.FGrid.TextMatrix)
  loc_16F6E13:     var_274 = CVar(CLng(&HC)) 'Long
  loc_16F6E1C:     Set var_288 = Me.FGrid
  loc_16F6E35:     var_B14 = Val(CStr(var_288.TextMatrix)))
  loc_16F6E53:     var_F4 = Me.FGrid.TextMatrix)
  loc_16F6E6D:     Set var_2EC = Me.Txt
  loc_16F6E73:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2F0, var_2F4, var_F4, CVar(CLng(&HA)), CVar(CLng(var_A0)), var_B14)
  loc_16F6E7B:     var_274 = var_2F0.Tag
  loc_16F6E8E:     Set var_300 = Me.Txt
  loc_16F6E94:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_304, var_308, CVar(CLng(var_A0)), var_D4)
  loc_16F6E9C:     var_17C = var_304.Tag
  loc_16F6EAC:     Set var_314 = Me.Txt
  loc_16F6EB2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_318, CVar(CLng(var_A0)))
  loc_16F6ED4:     Set var_32C = Me.Txt
  loc_16F6EDA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_330, var_334)
  loc_16F6EE2:     var_A8 = var_330.Tag
  loc_16F6EF5:     Set var_378 = Me.Txt
  loc_16F6EFB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_37C)
  loc_16F6F16:     Set var_3C4 = Me.Txt
  loc_16F6F1C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_3C8)
  loc_16F6F2D:     var_41C = CVar(CLng(var_A0)) 'Long
  loc_16F6F35:     var_43C = CVar(CLng(8)) 'Long
  loc_16F6F5E:     var_4B4 = CVar(CLng(var_A0)) 'Long
  loc_16F6F66:     var_4D4 = CVar(CLng(6)) 'Long
  loc_16F6F88:     var_B24 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F6FA6:     var_590 = Me.FGrid.TextMatrix)
  loc_16F6FE0:     var_B2C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F6FF1:     Proc_6_7_F25D88(var_6C8, Date, var_B2C, CVar(CLng(9)), CVar(CLng(var_A0)), var_590, CVar(CLng(7)), CVar(CLng(var_A0)))
  loc_16F6FFA:     Set var_6FC = Me.TopCtrl1
  loc_16F7000:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B24)
  loc_16F703B:     var_7B0 = CVar(CLng(var_A0)) 'Long
  loc_16F7043:     var_7D0 = CVar(CLng(9)) 'Long
  loc_16F706C:     var_848 = CVar(CLng(var_A0)) 'Long
  loc_16F7074:     var_868 = CVar(CLng(5)) 'Long
  loc_16F709D:     var_8E0 = CVar(CLng(var_A0)) 'Long
  loc_16F70A5:     var_900 = CVar(CLng(4)) 'Long
  loc_16F70CE:     var_978 = CVar(CLng(var_A0)) 'Long
  loc_16F7107:     var_A30 = CVar(CLng(2)) 'Long
  loc_16F7116:     var_A54 = Me.FGrid.TextMatrix)
  loc_16F7139:     var_B4 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,ContraSNo,Item,GodownCode,DepartCode,Remarks,Company,RefDocId,Vtime,Rate,QtyRec,Unit,Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,RECDQTY,ACCQTY,RECDUNIT,LogSite_Code) VALUES ('" & global_92
  loc_16F7148:     var_1E4 = CStr(var_B04)
  loc_16F7153:     var_1F0 = var_B4 & "'," & var_1E4 & ",'"
  loc_16F715A:     var_1F4 = var_1F0 & var_1EC
  loc_16F71BC:     var_298 = var_1F4 & "','" & MemVar_1F92070 & "','" & var_200 & "'," & CStr(var_B0C) & ",'" & var_22C & "','" & CStr(var_D4) & "'," & CStr(var_B14)
  loc_16F720A:     var_354 = CVar(var_298 & ",'" & CStr(var_F4) & "','" & var_2F4 & "','" & var_308 & "','") & Trim(CVar(var_318)) & "','" & CVar(var_334) 
  loc_16F7258:     var_51C = var_354 & "','" & CVar(var_37C.Tag) & "','" & CVar(var_3C8.Text) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(var_B24) 
  loc_16F72B3:     var_780 = var_51C & ",'" & CVar(CStr(var_590)) & "'," & CVar(var_B2C) & ",'" & CVar(MemVar_1F920C8) & "'," & var_6C8 & ",'" & IIf((CStr(var_70C) = "Add"), "A", "E") 
  loc_16F72EF:     var_948 = var_780 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16F7333:     var_AD4 = var_948 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(var_A54)) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_16F7341:     unk_4DEA36.Execute CStr(var_AD4), var_AF8, -1
  loc_16F746D:     var_108 = CVar(CLng(var_A0)) 'Long
  loc_16F74AF:     var_144 = "Update Indent set ClearYN='Y' where Docid='" & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_16F74B8:     unk_4DEA36.Execute var_144, var_D4, -1
  loc_16F74DC:     If (var_A4 <> vbNullString) Then
  loc_16F74EA:       var_108 = global_92
  loc_16F74F2:       var_C4 = Left(var_108, 3)
  loc_16F7537:       Set var_A8 = Me.FGrid
  loc_16F7548:       var_B4 = CStr(var_A8.TextMatrix))
  loc_16F7550:       var_B04 = Val(var_B4)
  loc_16F755A:       Set var_AC = Me.LblVPrefix
  loc_16F7573:       Set var_B0 = Me.Txt
  loc_16F7579:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_140, var_144, var_B04, CVar(CLng(0)), CVar(CLng(var_A0)), var_A54)
  loc_16F7581:       var_A30 = var_140.Text
  loc_16F758E:       var_B0C = Val(var_144)
  loc_16F759F:       Set var_20C = Me.Txt
  loc_16F75A5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_210, var_1E4, var_B0C, CVar(CLng(var_A0)))
  loc_16F75AD:       var_B4C = var_210.Text
  loc_16F75B6:       var_42C = CVar(CLng(var_A0)) 'Long
  loc_16F75E0:       var_B14 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F75FE:       var_624 = Me.FGrid.TextMatrix)
  loc_16F7618:       Set var_238 = Me.Txt
  loc_16F761E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_288, var_1EC, var_624, CVar(CLng(&HA)), CVar(CLng(var_A0)))
  loc_16F7639:       Set var_2DC = Me.Txt
  loc_16F763F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2EC, var_1F0, CVar(CLng(0)))
  loc_16F7647:       var_42C = var_2EC.Tag
  loc_16F7657:       Set var_2F0 = Me.Txt
  loc_16F765D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_300, CVar(CLng(4)))
  loc_16F767F:       Set var_304 = Me.Txt
  loc_16F7685:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_314, var_1F4)
  loc_16F768D:       var_978 = var_314.Text
  loc_16F7696:       var_5C0 = CVar(CLng(var_A0)) 'Long
  loc_16F769E:       var_5F0 = CVar(CLng(8)) 'Long
  loc_16F76C7:       var_658 = CVar(CLng(var_A0)) 'Long
  loc_16F76CF:       var_698 = CVar(CLng(6)) 'Long
  loc_16F76F1:       var_B24 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F770F:       var_968 = Me.FGrid.TextMatrix)
  loc_16F7749:       var_B2C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16F774F:       Proc_6_104_ED5D18(var_AD4, var_B2C, CVar(CLng(9)), CVar(CLng(var_A0)), var_968, CVar(CLng(7)), CVar(CLng(var_A0)))
  loc_16F7758:       Set var_37C = Me.TopCtrl1
  loc_16F775E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_B24)
  loc_16F7799:       var_938 = CVar(CLng(var_A0)) 'Long
  loc_16F77A1:       var_978 = CVar(CLng(9)) 'Long
  loc_16F77CA:       var_9D0 = CVar(CLng(var_A0)) 'Long
  loc_16F77D2:       var_A10 = CVar(CLng(5)) 'Long
  loc_16F77FB:       var_A84 = CVar(CLng(var_A0)) 'Long
  loc_16F7803:       var_AC4 = CVar(CLng(4)) 'Long
  loc_16F782C:       var_C7C = CVar(CLng(var_A0)) 'Long
  loc_16F7834:       var_C9C = CVar(CLng(2)) 'Long
  loc_16F785C:       var_138 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,ContraDocid,ContraSNo,Item,GodownCode,DepartCode,Remarks,Vtime,Rate,QtyIss,Unit,Amount,U_Name,U_EntDt,U_AE,TOTAL,CONVRATIO,ISSQTY,ISSUEUNIT,LogSite_Code) VALUES ('"
  loc_16F7867:       var_D4 = CVar(Proc_6_52_EAD4F4(var_A4, 5, var_AC, var_C4, CVar(CLng(&HB)), var_108, var_AFC)) 'String
  loc_16F786A:       var_E4 = (var_C4 + var_D4)
  loc_16F7871:       var_1AC = (var_288.TextMatrix) + Mid(global_92, 9, var_F4))
  loc_16F787E:       var_1CC = var_138 & Trim(CVar(Me.FGrid)) & "'," 
  loc_16F78D6:       var_460 = var_1CC & CVar(var_B04) & ",'" & CVar(var_AC.Caption) & "','" & CVar(MemVar_1F92070) & "','" & CVar(var_A4) & "'," & CVar(var_B0C) 
  loc_16F7927:       var_668 = var_460 & ",'" & CVar(var_1E4) & "','" & CVar(global_92) & "'," & CVar(var_288.Tag) & ",'" & CVar(CStr(var_624)) 
  loc_16F7984:       var_88C = var_668 & "','" & CVar(var_1EC) & "','" & CVar(var_1F0) & "','" & Trim(CVar(var_300)) & "','" & CVar(var_1F4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_16F79DC:       var_AB4 = var_88C & "," & CVar(var_B24) & ",'" & CVar(CStr(var_968)) & "'," & CVar(var_B2C) & ",'" & CVar(MemVar_1F920C8) & "'," 
  loc_16F7A10:       var_BEC = var_AB4 & var_AD4 & ",'" & IIf((CStr(var_B6C) = "Add"), "A", "E") & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," 
  loc_16F7A43:       var_CDC = var_BEC & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_16F7A6D:       unk_4DEA36.Execute CStr(var_CDC & "','" & CVar(MemVar_1F92078) & "')"), var_D5C, -1
  loc_16F7B71:     End If
  loc_16F7B71:   End If
  loc_16F7B74: Next var_1E0 'Integer
  loc_16F7B7D: Set var_A8 = Me.TopCtrl1
  loc_16F7B83: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16F7B9C: If (CStr() = "Add") Then
  loc_16F7BA3:   Set var_88 = New 
  loc_16F7BAE:   Me.TopCtrl1.CursorLocation = 3
  loc_16F7BC1:   Set var_A8 = Me.Txt
  loc_16F7BC7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_16F7BE2:   Set var_B0 = Me.Txt
  loc_16F7BE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_16F7BF8:   var_C4 = CVar(var_140.Text) 'String
  loc_16F7BFE:   Proc_6_7_F25D88(var_D4)
  loc_16F7C21:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_16F7C44:   var_E4 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & var_AC.Tag & "' And VP.Date_From<=") 'String
  loc_16F7C5B:   var_88.Open var_E4 & var_D4 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_16F7C9B:   If (var_88.RecordCount > 0) Then
  loc_16F7CB2:     var_B4 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F92070
  loc_16F7CD0:     var_108 = "V_Type"
  loc_16F7CE4:     var_AC = var_88.Fields.Item(var_108)
  loc_16F7CEC:     var_C4 = var_AC.Value
  loc_16F7D27:     Proc_6_7_F25D88(Trim(CVar(Me.FGrid)), CVar(var_88.Fields.Item("Date_From")), CVar(var_B4 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") & var_C4 & "' and Date_From=", var_1CC, -1)
  loc_16F7D3D:     unk_4DEA36.Execute CStr(var_20C & Trim(CVar(Me.FGrid))), 3, -1
  loc_16F7D6B:   End If
  loc_16F7D6B: End If
  loc_16F7D71: unk_4DEA36.CommitTrans
  loc_16F7D78: var_8A = 0
  loc_16F7D89: Set var_A8 = Me.Txt
  loc_16F7D8F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4)
  loc_16F7D97: var_8A = var_AC.Text
  loc_16F7DB4: Me.Requery -1
  loc_16F7DDE: Me.Find "SearchCode ='" & "SearchCode ='" & var_B4 & "'", 0, 1
  loc_16F7DEA: Call Proc_41_49_15BC8D4(var_108)
  loc_16F7DF3: Set var_A8 = Me.TopCtrl1
  loc_16F7DF9: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_16F7E12: If (CStr() = "Add") Then
  loc_16F7E15:   Call TopCtrl1_UnknownEvent_A()
  loc_16F7E1A:   Exit Sub
  loc_16F7E1B: End If
  loc_16F7E3E: Call Proc_41_50_FB2A94(Proc_5_1_100CB50("INI", Me))
  loc_16F7E4E: Set var_88 = Nothing
  loc_16F7E51: Exit Sub
  loc_16F7E52: ' Referenced from: 16F65AC
  loc_16F7E58: If (var_8A = &HFF) Then
  loc_16F7E61:   unk_4DEA36.RollbackTrans
  loc_16F7E66: End If
  loc_16F7E66: Proc_6_60_E62BC4(global_60)
  loc_16F7E6B: Exit Sub
End Sub

Private Sub DGBookNo_UnknownEvent_9 'FDACCC
  'Data Table: 4DEA20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_FDAAFC: On Error Goto loc_FDACC6
  loc_FDAB0E: Me.DGBookNo.Visible = False
  loc_FDAB2D: If (Me.RecordCount > 0) Then
  loc_FDAB3E:   Set var_A8 = Me.Txt
  loc_FDAB44:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FDAB4C:   var_B0.Text = vbNullString
  loc_FDAB66:   Set var_A8 = Me.Txt
  loc_FDAB6C:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(7), var_B0)
  loc_FDAB74:   var_B0.Tag = vbNullString
  loc_FDABBC:   Set var_B4 = Me.Txt
  loc_FDABC2:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FDABCA:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FDAC1C:   Set var_B4 = Me.Txt
  loc_FDAC22:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA), var_B8)
  loc_FDAC2A:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FDAC5D:   var_B0 = Me.Fields.Item("Party")
  loc_FDAC7C:   Set var_B4 = Me.Txt
  loc_FDAC82:   Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_FDAC8A:   var_B8.Text = CStr(var_B0.Value)
  loc_FDACA0: End If
  loc_FDACAB: Set var_A8 = Me.Txt
  loc_FDACB1: Call 0.Method_DGBookNo_UnknownEvent_90 (CInt(&HA))
  loc_FDACB9: var_B0.SetFocus
  loc_FDACC5: Exit Sub
  loc_FDACC6: ' Referenced from: FDAAFC
  loc_FDACC6: Proc_6_60_E62BC4(var_B0)
  loc_FDACCB: Exit Sub
End Sub

Private Sub Timer1_Timer() 'FACB40
  'Data Table: 4DEA20
  Dim var_90 As String
  Dim var_98 As String
  Dim var_A0 As String
  Dim unk_4DEA36 As Connection15
  Dim var_C8 As Label
  loc_FAC9D4: var_90 = "SELECT Indent1.Sno, Max(ItemMast.Name) as ItemName, Max(Indent1.Item) as ItemCode,  Max(Indent1.Unit) as Unit,  Max(Indent1.WTUnit) as WtUnit, Max(Indent1.DocId) as DocId, MAx(GodownMast.Name) as Department, Indent.Department as DepartCode, Sum(Indent1.Qty) as ReqQty, '' as QtyIss , CASE WHEN MAX(ItemMast.LPurRate)<=0 THEN MAX(ItemMast.PurchRate) ELSE MAX(ItemMast.LPurRate) END as Rate, max(INDENT1.ConvFACTOR) as ConvRatio" & " FROM ((Indent1 "
  loc_FAC9E2: var_98 = var_90 & " LEFT JOIN Indent ON Indent1.DocId = Indent.DocId)" & " LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store')"
  loc_FAC9F0: var_A0 = var_98 & " LEFT JOIN GodownMast ON Indent.Department = GodownMast.Code" & " where indent.ClearYn<>'Y' and Indent.Vtype in (Select V_Type From Voucher_Type where NCAT='RQS')"
  loc_FACA00: unk_4DEA36.Execute var_A0 & " group by Indent.Department,Indent.Vno,Indent1.Sno", var_C4, -1
  loc_FACA37: If (var_C8.RecordCount > 0) Then
  loc_FACA46:   Me.LblAlaram.Visible = True
  loc_FACA72:   Me.LblAlaram.Left = (Me.LblAlaram.Left + CDbl(&H28))
  loc_FACA84:   Call 0.Method_Me0 (var_D4)
  loc_FACAA5:   If (Me.LblAlaram.Left > var_D4) Then
  loc_FACAB6:     Me.LblAlaram.Left = CDbl(0)
  loc_FACAC1:   Else
  loc_FACAF8:     If (Me.LblAlaram.Left = CSng((CDbl(0) - Me.LblAlaram.Width))) Then
  loc_FACB1A:       Me.LblAlaram.Left = Me.LblAlaram.Width
  loc_FACB26:     End If
  loc_FACB26:   End If
  loc_FACB29: Else
  loc_FACB35:   Me.LblAlaram.Visible = False
  loc_FACB3D: End If
  loc_FACB3D: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E93138
  'Data Table: 4DEA20
  Dim Me As Recordset15
  loc_E930C6: On Error Goto loc_E9312F
  loc_E930CF: Me.MoveFirst
  loc_E930F9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93121: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E93129: Call Proc_41_49_15BC8D4(0)
  loc_E9312E: Exit Sub
  loc_E9312F: ' Referenced from: E930C6
  loc_E9312F: Proc_6_60_E62BC4(var_A0)
  loc_E93134: Exit Sub
End Sub

Public Sub Proc_41_45_F00F6C
  'Data Table: 4DEA20
  Dim var_94 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_108 As TextBox
  loc_F00E90: On Error Goto loc_F00F66
  loc_F00EB8: For var_A8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F00EC2:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_F00ECA:   var_D8 = CVar(CLng(9)) 'Long
  loc_F00EF6:   var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_F00F05: Next var_A8 'Integer
  loc_F00F41: Set var_94 = Me.Txt
  loc_F00F47: Call 0.Method_Proc_41_45_F00F6C0 (CInt(8), var_108, CStr(Format(var_90, "0.00")))
  loc_F00F4F: var_108.Text = 1
  loc_F00F65: Exit Sub
  loc_F00F66: ' Referenced from: F00E90
  loc_F00F66: Proc_6_60_E62BC4(1)
  loc_F00F6B: Exit Sub
End Sub

Public Sub Proc_41_46_128AEDC
  'Data Table: 4DEA20
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim var_A8 As Variant
  Dim var_180 As Double
  Dim var_100 As Variant
  Dim var_124 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_178 As MSHFlexGrid
  Dim var_AC As String
  Dim var_1AC As Double
  Dim var_198 As TextBox
  Dim var_8A As Integer
  Dim var_19C As String
  loc_128A933: var_A4 = CLng(Me.FGrid.Col)
  loc_128A943: If (var_A4 = CLng(8)) Then
  loc_128A952:   Set var_90 = Me.TxtGrid
  loc_128A958:   Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8)
  loc_128A983:   var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128A99B:   var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128A9D6:   LateIdCallSt
  loc_128A9FD:   Call Proc_41_54_F74BBC(Me.FGrid, CVar(CStr(Format(CVar(Val(var_A8.Text)), "0.00"))), 1, 1)
  loc_128AA05: Else
  loc_128AA0C:   If Not (var_A4 = CLng(4)) Then
  loc_128AA16:     If (var_A4 = CLng(5)) Then
  loc_128AA19:     End If
  loc_128AA36:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_128AA54:       var_124 = CVar(CLng(&HA)) 'Long
  loc_128AA5D:       Set var_A8 = Me.FGrid
  loc_128AA63:       var_DC = var_A8.TextMatrix)
  loc_128AA79:       var_EC = Me.FGrid.Row
  loc_128AA82:       var_144 = CVar(CLng(var_EC)) 'Long
  loc_128AA91:       var_100 = Me.FGrid.Col
  loc_128AAB4:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_128AABC:       var_1AC = Val(var_AC)
  loc_128AACD:       Set var_194 = Me.Txt
  loc_128AAD3:       Call 0.Method_Proc_41_46_128AEDC0 (CInt(9), var_198, var_19C, var_1AC, CVar(CLng(var_100)), var_144, var_DC)
  loc_128AADB:       var_124 = var_198.Tag
  loc_128AB04:       var_8A = Proc_96_27_11F27DC(CStr(var_DC), var_1AC, MemVar_1F92070, var_19C, global_96)
  loc_128AB3E:       Me.LblCurStockStr.Caption = global_96
  loc_128AB4C:       If (var_8A = 0) Then
  loc_128AB5D:         If (Proc_96_29_E989EC(global_132, var_8A, CVar(CLng(Me.FGrid.Row)), var_144) = 0) Then
  loc_128AB65:           Proc_41_46_128AEDC = 0
  loc_128AB6B:         End If
  loc_128AB6B:       End If
  loc_128AB6B:     End If
  loc_128AB88:     If (CLng(Me.FGrid.Col) = CLng(5)) Then
  loc_128AB97:       Set var_90 = Me.TxtGrid
  loc_128AB9D:       Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8, var_AC)
  loc_128ABA5:       var_124 = var_A8.Text
  loc_128ABB2:       var_180 = Val(var_AC)
  loc_128ABCA:       If (global_124 <> CDbl(var_180)) Then
  loc_128ABFC:         If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_DC, var_EC, var_100) = 7) Then
  loc_128AC07:           var_AC = CStr(global_124)
  loc_128AC13:           Set var_90 = Me.TxtGrid
  loc_128AC19:           Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8, var_AC)
  loc_128AC21:           var_A8.Text = var_180
  loc_128AC30:         End If
  loc_128AC30:       End If
  loc_128AC30:     End If
  loc_128AC3C:     Set var_90 = Me.TxtGrid
  loc_128AC42:     Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8, var_AC)
  loc_128AC4A:     var_180 = var_A8.Text
  loc_128AC6D:     var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128AC85:     var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128ACB2:     var_164 = CVar(CStr(Format(CVar(Val(var_AC)), "0.000"))) 'String
  loc_128ACBA:     Set var_178 = Me.FGrid
  loc_128ACC0:     LateIdCallSt
  loc_128ACFA:     var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128AD24:     var_180 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_128AD2B:     Set var_178 = Me.FGrid
  loc_128AD6B:     Set var_A8 = Me.FGrid
  loc_128AD7C:     var_AC = CStr(var_A8.TextMatrix))
  loc_128AD98:     LateIdCallSt
  loc_128ADC5:     Call Proc_41_54_F74BBC(Me.FGrid, CVar(CStr((Val(var_AC) * var_180))), CVar(CLng(4)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(6)), CVar(CLng(var_178.Row)), var_180, CVar(CLng(5)))
  loc_128ADCD:   Else
  loc_128ADD4:     If (var_A4 = CLng(3)) Then
  loc_128ADE3:       Set var_90 = Me.TxtGrid
  loc_128ADE9:       Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8, var_AC, var_144, var_178)
  loc_128ADF1:       var_164 = var_A8.Text
  loc_128AE14:       var_124 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_128AE2C:       var_144 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_128AE59:       var_164 = CVar(CStr(Format(CVar(Val(var_AC)), "0.000"))) 'String
  loc_128AE61:       Set var_178 = Me.FGrid
  loc_128AE67:       LateIdCallSt
  loc_128AE8E:     End If
  loc_128AE8E:   End If
  loc_128AE8E: End If
  loc_128AE99: If (arg_10 = 0) Then
  loc_128AEA0:   Set var_90 = Me.FGrid
  loc_128AEBC:   Set var_90 = Me.TxtGrid
  loc_128AEC2:   Call 0.Method_Proc_41_46_128AEDC0 (0, var_A8, 0, FGrid.DispID_8001, &HFF, var_178, var_164)
  loc_128AECA:   var_A8.Visible = True
  loc_128AED6: End If
  loc_128AED6: Proc_41_46_128AEDC = 1
End Sub

Public Sub Proc_41_47_1406468
  'Data Table: 4DEA20
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_E0 As Variant
  Dim var_9C As Integer
  Dim var_8C As Variant
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_EC As TextBox
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_D0 As Variant
  Dim var_158 As Variant
  Dim unk_4DEA36 As Connection15
  Dim var_98 As Recordset15
  Dim var_16C As Variant
  Dim var_19C As Variant
  Dim var_118 As Variant
  Dim var_94 As String
  Dim var_1BC As Variant
  Dim var_18C As MSHFlexGrid
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  loc_1405A68: On Error Goto loc_140645F
  loc_1405A76: Set var_88 = Me.Txt
  loc_1405A7C: Call 0.Method_Proc_41_47_14064680 (CInt(3))
  loc_1405A84: var_94 = "Date"
  loc_1405AA5: If (Proc_6_27_EA565C(var_8C, var_94) = 0) Then
  loc_1405AA8:   Exit Sub
  loc_1405AA9: End If
  loc_1405ABC: Me.FGrid.Rows = 2
  loc_1405AD8: var_9C = CInt(CLng(Me.FGrid.Row))
  loc_1405AEF: Set var_88 = Me.Txt
  loc_1405AF5: Call 0.Method_Proc_41_47_14064680 (CInt(&HA), var_8C, var_94)
  loc_1405AFD: var_9C = var_8C.Tag
  loc_1405B14: If (var_94 <> vbNullString) Then
  loc_1405B28:   Set var_88 = Me.Txt
  loc_1405B2E:   Call 0.Method_Proc_41_47_14064680 (CInt(&HA), var_8C, var_94)
  loc_1405B36:   " And Indent.RefDocId='" = var_8C.Tag
  loc_1405B46:   var_B0 = var_8C & var_94 & "' "
  loc_1405B57: End If
  loc_1405B65: Set var_88 = Me.Txt
  loc_1405B6B: Call 0.Method_Proc_41_47_14064680 (CInt(7), var_8C)
  loc_1405B8A: If (var_8C.Tag <> vbNullString) Then
  loc_1405B9E:   Set var_88 = Me.Txt
  loc_1405BA4:   Call 0.Method_Proc_41_47_14064680 (CInt(7), var_8C)
  loc_1405BAC:   var_94 = var_8C.Tag
  loc_1405BBC:   var_B0 = " And Indent.Company='" & var_94 & "' "
  loc_1405BCD: End If
  loc_1405BE1: var_E4 = "SELECT Indent1.Sno, Max(ItemMast.Name) as ItemName, Max(Indent1.Item) as ItemCode,  Max(Indent1.Unit) as Unit,  Max(Indent1.WTUnit) as WtUnit, Max(Indent1.DocId) as DocId, MAx(GodownMast.Name) as Department, Indent.Department as DepartCode, Sum(Indent1.Qty) as ReqQty, '' as QtyIss , CASE WHEN MAX(ItemMast.LPurRate)<=0 THEN MAX(ItemMast.PurchRate) ELSE MAX(ItemMast.LPurRate) END as Rate, max(INDENT1.ConvFACTOR) as ConvRatio" & " FROM ((Indent1 LEFT JOIN Indent ON Indent1.DocId = Indent.DocId) LEFT JOIN ItemMast ON Indent1.Item = ItemMast.Code And ItemMast.ItemType='Store') LEFT JOIN GodownMast ON Indent.Department = GodownMast.Code where Indent.Department='"
  loc_1405BF2: Set var_88 = Me.Txt
  loc_1405BF8: Call 0.Method_Proc_41_47_14064680 (CInt(6), var_8C, var_94, var_E4)
  loc_1405C00: var_17C = var_8C.Tag
  loc_1405C09: var_E8 = -1 & var_94
  loc_1405C10: var_F4 = var_E8 & "' and Indent.Godown='"
  loc_1405C21: Set var_90 = Me.Txt
  loc_1405C27: Call 0.Method_Proc_41_47_14064680 (CInt(9), var_EC, var_F0)
  loc_1405C2F: var_F4 = var_EC.Tag
  loc_1405C5B: Set var_104 = Me.Txt
  loc_1405C61: Call 0.Method_Proc_41_47_14064680 (CInt(3), var_108)
  loc_1405C70: Proc_6_7_F25D88(var_118, CVar(var_108))
  loc_1405C81: var_148 = CVar(var_180 & var_F0 & "'" & var_B0 & " And indent.ClearYn<>'Y' And indent.vdate<=") & var_118 & " and Indent.Vtype in (Select V_Type From Voucher_Type where NCAT='RQS')" 
  loc_1405C8A: var_158 = var_148 & " group by Indent.Department,Indent.Vno,Indent1.Sno" 
  loc_1405C98: unk_4DEA36.Execute CStr(var_158), , 
  loc_1405CA3: Set var_98 = var_180
  loc_1405CEF: If (var_98.RecordCount > 0) Then
  loc_1405CF2:   ' Referenced from: 14063BB
  loc_1405D01:   If Not(var_98.EOF) Then
  loc_1405D04:     var_C0 = vbNullString
  loc_1405D0E:     Set var_88 = Me.FGrid
  loc_1405D23:     Set var_18C = Me.FGrid
  loc_1405D2A:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_1405D32:     var_16C = CVar(CLng(0)) 'Long
  loc_1405D3C:     var_E0 = CVar(CStr(var_9C)) 'String
  loc_1405D43:     LateIdCallSt
  loc_1405D52:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1405D5A:     var_19C = CVar(CLng(&HA)) 'Long
  loc_1405D8A:     var_118 = CVar(CStr(var_98.Fields.Item("ItemCode").Value)) 'String
  loc_1405D91:     LateIdCallSt
  loc_1405DAB:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1405DB3:     var_19C = CVar(CLng(1)) 'Long
  loc_1405DE3:     var_118 = CVar(CStr(var_98.Fields.Item("ItemName").Value)) 'String
  loc_1405DEA:     LateIdCallSt
  loc_1405E39:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Unit")), CVar(CLng(2)), CVar(CLng(var_9C)), var_18C, var_118, CVar(CLng(2)), CVar(CLng(var_9C)))) 'String
  loc_1405E40:     LateIdCallSt
  loc_1405E97:     If (CDbl(Val(CStr(var_98.Fields.Item("ConvRatio").Value))) <> CDbl(0)) Then
  loc_1405ED4:       var_19C = CVar(CLng(var_9C)) 'Long
  loc_1405EDC:       var_1BC = CVar(CLng(8)) 'Long
  loc_1405F00:       var_138 = Format(CVar(Val(CStr(var_98.Fields.Item("Rate").Value))), "0.00")
  loc_1405F09:       var_148 = CVar(CStr(var_138)) 'String
  loc_1405F10:       LateIdCallSt
  loc_1405F33:       var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1405F3B:       var_19C = CVar(CLng(5)) 'Long
  loc_1405F75:       var_118 = CVar(CStr(Val(CStr(var_98.Fields.Item("ConvRatio").Value)))) 'String
  loc_1405F7C:       LateIdCallSt
  loc_1405F98:     Else
  loc_1405FE2:       MsgBox("Conversion Ration of " & var_98.Fields.Item("ItemName").Value & " is not Feeded In Item Master", &H10, var_138, var_148, var_158)
  loc_1405FFD:       Call TopCtrl1_UnknownEvent_B()
  loc_1406002:       Exit Sub
  loc_1406003:     End If
  loc_140603D:     var_19C = CVar(CLng(var_9C)) 'Long
  loc_1406045:     var_1BC = CVar(CLng(3)) 'Long
  loc_1406072:     var_148 = CVar(CStr(Format(CVar(Val(CStr(var_98.Fields.Item("ReqQty").Value))), "0.000"))) 'String
  loc_1406079:     LateIdCallSt
  loc_14060D2:     var_19C = CVar(CLng(var_9C)) 'Long
  loc_14060DA:     var_1BC = CVar(CLng(4)) 'Long
  loc_1406107:     var_148 = CVar(CStr(Format(CVar(Val(CStr(var_98.Fields.Item("ReqQty").Value))), "0.000"))) 'String
  loc_140610E:     LateIdCallSt
  loc_1406131:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1406139:     var_19C = CVar(CLng(7)) 'Long
  loc_1406169:     var_118 = CVar(CStr(var_98.Fields.Item("WtUnit").Value)) 'String
  loc_1406170:     LateIdCallSt
  loc_140618A:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_1406192:     var_16C = CVar(CLng(4)) 'Long
  loc_14061B4:     var_1AC = CVar(CLng(var_9C)) 'Long
  loc_14061BC:     var_1CC = CVar(CLng(5)) 'Long
  loc_14061DE:     var_214 = CVar(CLng(var_9C)) 'Long
  loc_14061E6:     var_234 = CVar(CLng(6)) 'Long
  loc_1406217:     var_158 = CVar(CStr(Format(CVar((Val(CStr(var_18C.TextMatrix))) * Val(CStr(var_18C.TextMatrix))))), "0.000"))) 'String
  loc_140621E:     LateIdCallSt
  loc_1406240:     var_C0 = CVar(CLng(var_9C)) 'Long
  loc_1406248:     var_16C = CVar(CLng(8)) 'Long
  loc_140626A:     var_1AC = CVar(CLng(var_9C)) 'Long
  loc_1406272:     var_1CC = CVar(CLng(4)) 'Long
  loc_1406294:     var_214 = CVar(CLng(var_9C)) 'Long
  loc_140629C:     var_234 = CVar(CLng(9)) 'Long
  loc_14062CD:     var_158 = CVar(CStr(Format(CVar((Val(CStr(var_18C.TextMatrix))) * Val(CStr(var_18C.TextMatrix))))), "0.00"))) 'String
  loc_14062D4:     LateIdCallSt
  loc_14062F6:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_14062FE:     var_19C = CVar(CLng(&HB)) 'Long
  loc_140632E:     var_118 = CVar(CStr(var_98.Fields.Item("DocID").Value)) 'String
  loc_1406335:     LateIdCallSt
  loc_140634F:     var_D0 = CVar(CLng(var_9C)) 'Long
  loc_1406357:     var_19C = CVar(CLng(&HC)) 'Long
  loc_1406387:     var_118 = CVar(CStr(var_98.Fields.Item("SNo").Value)) 'String
  loc_140638E:     LateIdCallSt
  loc_14063A6:     Set var_18C = Nothing 
  loc_14063B0:     var_9C = (var_9C + 1)
  loc_14063B6:     var_98.MoveNext
  loc_14063BB:     GoTo loc_1405CF2
  loc_14063BE:   End If
  loc_14063D1:   Me.FGrid.FixedRows = 1
  loc_14063D9: End If
  loc_14063DF: If (var_9C = 1) Then
  loc_14063F5:   Me.FGrid.Rows = 1
  loc_1406412:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_140641A:   Set var_8C = Me.FGrid
  loc_1406449:   Me.FGrid.FixedRows = 1
  loc_1406451: End If
  loc_1406451: Call Proc_41_51_EF8B68(FGrid.DispID_10000, var_118, var_9C, var_18C, var_118, var_19C, var_D0)
  loc_140645B: Set var_98 = Nothing
  loc_140645E: Exit Sub
  loc_140645F: ' Referenced from: 1405A68
  loc_140645F: Proc_6_60_E62BC4(var_18C, var_118, var_19C)
  loc_1406464: Exit Sub
End Sub

Public Sub Proc_41_48_F565C0
  'Data Table: 4DEA20
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_C8 As Variant
  loc_F564A6: Set var_8C = Me.Txt
  loc_F564AC: Call 0.Method_Proc_41_48_F565C0C (var_8E, var_86)
  loc_F564BC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F564D2:   Set var_8C = Me.Txt
  loc_F564D8:   Call 0.Method_Proc_41_48_F565C00 (CInt(var_86), var_98)
  loc_F564E0:   var_98.Text = vbNullString
  loc_F564FC:   Set var_8C = Me.Txt
  loc_F56502:   Call 0.Method_Proc_41_48_F565C00 (CInt(var_86), var_98)
  loc_F5650A:   var_98.Tag = vbNullString
  loc_F56519: Next var_92 'Byte
  loc_F5652C: Me.LblVPrefix.Caption = vbNullString
  loc_F56541: Me.LblCurStockStr.Caption = vbNullString
  loc_F5655C: Me.FGrid.Rows = 1
  loc_F56582: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F5658A: Set var_98 = Me.FGrid
  loc_F565B7: Me.FGrid.FixedRows = 1
  loc_F565BF: Exit Sub
End Sub

Public Sub Proc_41_49_15BC8D4
  'Data Table: 4DEA20
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_114 As String
  Dim unk_4DEA36 As Connection15
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_13C As TextBox
  Dim var_138 As Variant
  Dim var_14A As Integer
  Dim var_148 As TextBox
  Dim var_90 As Recordset15
  Dim var_140 As String
  Dim var_8C As Recordset15
  Dim var_9A As Integer
  Dim var_134 As Variant
  Dim var_174 As Variant
  Dim var_144 As Fields15
  Dim var_164 As Variant
  Dim var_200 As MSHFlexGrid
  Dim var_208 As Double
  Dim var_A4 As Double
  loc_15BB624: On Error Goto loc_15BC8CE
  loc_15BB634: Me.LblCurStockStr.Caption = vbNullString
  loc_15BB653: If (Me.RecordCount > 0) Then
  loc_15BB663:   var_E0 = "Select Distinct SH.Docid,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Vtime,SH.Remarks,SH.GodownCode,D.NAME AS DEPARTNAME ,VT.Description,VT.NCAT,SH.Company,Sub.Name as Compname,SH.RefDocId From (Stock SH left Join GodownMast D on D.Code=SH.GodownCode) left join Voucher_Type VT on Vt.V_type=SH.VType left join Subgroup Sub on SH.Company=Sub.Subcode where DocID='"
  loc_15BB6AC:   unk_4DEA36.Execute CStr(var_E0 & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_15BB6B7:   Set var_88 = var_138
  loc_15BB702:   global_84 = CStr(var_88.Fields.Item("NCat").Value)
  loc_15BB749:   Set var_138 = Me.Txt
  loc_15BB74F:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(0), var_13C)
  loc_15BB757:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")))
  loc_15BB7A0:   Me.LblVPrefix.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))
  loc_15BB7E8:   Set var_138 = Me.Txt
  loc_15BB7EE:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(1), var_13C)
  loc_15BB7F6:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")))
  loc_15BB840:   Set var_138 = Me.Txt
  loc_15BB846:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(1), var_13C)
  loc_15BB84E:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Description")))
  loc_15BB898:   Set var_138 = Me.Txt
  loc_15BB89E:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(2), var_13C)
  loc_15BB8A6:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo")))
  loc_15BB8F0:   Set var_138 = Me.Txt
  loc_15BB8F6:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(3), var_13C)
  loc_15BB8FE:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")))
  loc_15BB972:   Set var_138 = Me.Txt
  loc_15BB978:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(4), var_13C, CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VTIME")))), "hh:nn")))
  loc_15BB980:   var_13C.Text = 1
  loc_15BB9D6:   Set var_138 = Me.Txt
  loc_15BB9DC:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(5), var_13C)
  loc_15BB9E4:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Remarks")), 1)
  loc_15BBA20:   var_14A = IsNull(CVar(var_88.Fields.Item("DEPARTNAME")))
  loc_15BBA3A:   var_13C = var_88.Fields.Item("DEPARTNAME")
  loc_15BBA5B:   var_134 = IIf(var_14A, vbNullString, CVar(var_13C))
  loc_15BBA72:   Set var_144 = Me.Txt
  loc_15BBA78:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(6), var_148, CStr(var_134))
  loc_15BBA80:   var_148.Text = var_14A
  loc_15BBAD6:   Set var_138 = Me.Txt
  loc_15BBADC:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(6), var_13C)
  loc_15BBAE4:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Godowncode")))
  loc_15BBB2E:   Set var_138 = Me.Txt
  loc_15BBB34:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(7), var_13C)
  loc_15BBB3C:   var_13C.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompName")))
  loc_15BBB86:   Set var_138 = Me.Txt
  loc_15BBB8C:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(7), var_13C)
  loc_15BBB94:   var_13C.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Company")))
  loc_15BBBFE:   unk_4DEA36.Execute CStr("Select GodownCode From Stock Where ContraDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_15BBC09:   Set var_90 = var_138
  loc_15BBC37:   If (var_90.RecordCount > 0) Then
  loc_15BBC51:     var_C0 = var_90.Fields.Item("Godowncode")
  loc_15BBC62:     var_114 = Proc_6_38_E68A98(CVar(var_C0), var_138)
  loc_15BBC70:     Set var_138 = Me.Txt
  loc_15BBC76:     Call 0.Method_Proc_41_49_15BC8D40 (CInt(9), var_13C)
  loc_15BBC7E:     var_13C.Tag = var_114
  loc_15BBCB0:     Set var_A8 = Me.Txt
  loc_15BBCB6:     Call 0.Method_Proc_41_49_15BC8D40 (CInt(9), var_C0, var_114, "Select Name From GodownMast Where Code='")
  loc_15BBCBE:     var_D0 = var_C0.Tag
  loc_15BBCC7:     var_140 = -1 & var_114
  loc_15BBCD7:     unk_4DEA36.Execute Proc_6_38_E68A98(CVar(var_88.Fields.Item("VTIME"))) & "'", var_138, var_138
  loc_15BBCE2:     Set var_8C = var_138
  loc_15BBD0E:     If (var_8C.RecordCount > 0) Then
  loc_15BBD47:       Set var_138 = Me.Txt
  loc_15BBD4D:       Call 0.Method_Proc_41_49_15BC8D40 (CInt(9), var_13C)
  loc_15BBD55:       var_13C.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_15BBD69:     End If
  loc_15BBD69:   End If
  loc_15BBDA5:   var_F0 = "Select DocId As Code, Cast(VNo as varchar) Name,PartyName Party,Vdate From HallBook Where Docid='" & var_88.Fields.Item("RefDocId").Value 
  loc_15BBDBC:   unk_4DEA36.Execute CStr(var_F0 & "'"), var_134, -1
  loc_15BBDC7:   Set var_90 = var_138
  loc_15BBDF5:   If (var_90.RecordCount > 0) Then
  loc_15BBE2E:     Set var_138 = Me.Txt
  loc_15BBE34:     Call 0.Method_Proc_41_49_15BC8D40 (CInt(&HA), var_13C)
  loc_15BBE3C:     var_13C.Text = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))
  loc_15BBE86:     Set var_138 = Me.Txt
  loc_15BBE8C:     Call 0.Method_Proc_41_49_15BC8D40 (CInt(&HA), var_13C)
  loc_15BBE94:     var_13C.Tag = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Code")))
  loc_15BBEBF:     var_C0 = var_90.Fields.Item("Party")
  loc_15BBEDE:     Set var_138 = Me.Txt
  loc_15BBEE4:     Call 0.Method_Proc_41_49_15BC8D40 (CInt(&HB), var_13C)
  loc_15BBEEC:     var_13C.Text = Proc_6_38_E68A98(CVar(var_C0))
  loc_15BBF00:   End If
  loc_15BBF0E:   Set var_A8 = Me.Txt
  loc_15BBF14:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(6), var_C0)
  loc_15BBF36:   If (var_C0.Tag = global_148) Then
  loc_15BBF45:     Me.FrBanq.Visible = True
  loc_15BBF50:   Else
  loc_15BBF5C:     Me.FrBanq.Visible = False
  loc_15BBF64:   End If
  loc_15BBF77:   Me.FGrid.Rows = 1
  loc_15BBF81:   var_9A = 1
  loc_15BBF98:   var_114 = "Select SH.*,D.NAME AS DEPARTNAME ,VT.Description,VT.NCAT,ItemMast.Name As ItemName,I1.Qty as QtyReq From (((Stock SH left Join GodownMast D on D.Code=SH.GodownCode) Left Join ItemMast on ItemMast.COde=Sh.Item And ItemMast.ItemType='Store') Left Join Indent1 I1 on (I1.DocId=SH.ContraDocId And I1.Sno=Sh.ContraSno)) left join Voucher_Type VT on Vt.V_type=SH.VType where VT.site_Code='" & MemVar_1F92070
  loc_15BBFE6:   var_134 = CVar(var_114 & "' and VT.LogSite_Code='" & MemVar_1F92078 & "' and Sh.DocID='") & Me.Fields.Item("SearchCode").Value & "' Order by SH.Sno" 
  loc_15BBFF4:   unk_4DEA36.Execute CStr(var_134), var_164, -1
  loc_15BBFFF:   Set var_88 = var_138
  loc_15BC05D:   var_138 = var_88.Fields
  loc_15BC0C6:   var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_138) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_138.Item("U_AE")), var_9A) = "E"), "Modified By : ", "User : "))
  loc_15BC10B:   Me.LblUser.Caption = CStr(var_138 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_1B4)))
  loc_15BC1E6:   var_1B4 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_15BC22B:   Me.LblLDt.Caption = CStr(var_1B4 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_15BC277:   If (var_88.RecordCount > 0) Then
  loc_15BC27A:     ' Referenced from: 15BC837
  loc_15BC289:     If Not(var_88.EOF) Then
  loc_15BC28C:       var_BC = vbNullString
  loc_15BC296:       Set var_A8 = Me.FGrid
  loc_15BC2AB:       Set var_200 = Me.FGrid
  loc_15BC2E7:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)), CVar(CLng(var_9A)))) 'String
  loc_15BC2EE:       LateIdCallSt
  loc_15BC339:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_9A)), var_200)) 'String
  loc_15BC340:       LateIdCallSt
  loc_15BC38B:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(7)), CVar(CLng(var_9A)), var_200)) 'String
  loc_15BC392:       LateIdCallSt
  loc_15BC3DD:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_9A)), var_200, var_F0)) 'String
  loc_15BC3E4:       LateIdCallSt
  loc_15BC41C:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("QtyReq")), var_200, var_F0)
  loc_15BC425:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC42D:       var_174 = CVar(CLng(3)) 'Long
  loc_15BC45D:       LateIdCallSt
  loc_15BC49B:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("QtyRec")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1)
  loc_15BC4A4:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC4DC:       LateIdCallSt
  loc_15BC51A:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("RecdQty")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(6)))
  loc_15BC523:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC55B:       LateIdCallSt
  loc_15BC599:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("ConvRatio")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(4)))
  loc_15BC5A2:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC5DA:       LateIdCallSt
  loc_15BC618:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Rate")), var_200, CVar(CStr(Format(var_F0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_15BC621:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC659:       LateIdCallSt
  loc_15BC697:       Proc_6_39_E7C810(var_F0, CVar(var_88.Fields.Item("Amount")), var_200, CVar(CStr(Format(var_F0, "0.00"))), 1, 1, CVar(CLng(8)))
  loc_15BC6A0:       var_100 = CVar(CLng(var_9A)) 'Long
  loc_15BC6A8:       var_174 = CVar(CLng(9)) 'Long
  loc_15BC6D1:       var_164 = CVar(CStr(Format(var_F0, "0.00"))) 'String
  loc_15BC6D8:       LateIdCallSt
  loc_15BC6F4:       var_BC = CVar(CLng(var_9A)) 'Long
  loc_15BC6FC:       var_100 = CVar(CLng(9)) 'Long
  loc_15BC717:       var_208 = Val(CStr(var_200.TextMatrix)))
  loc_15BC721:       var_A4 = (var_A4 + var_208)
  loc_15BC73E:       var_BC = "Item"
  loc_15BC763:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_BC)), CVar(CLng(&HA)), CVar(CLng(var_9A)), var_A4, var_208, var_100, var_BC)) 'String
  loc_15BC76A:       LateIdCallSt
  loc_15BC7B5:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ContraDocId")), CVar(CLng(&HB)), CVar(CLng(var_9A)), var_200, var_F0, var_200)) 'String
  loc_15BC7BC:       LateIdCallSt
  loc_15BC7F6:       var_C0 = var_88.Fields.Item("ContraSNo")
  loc_15BC807:       var_F0 = CVar(Proc_6_38_E68A98(CVar(var_C0), CVar(CLng(&HC)), CVar(CLng(var_9A)), var_200, var_F0)) 'String
  loc_15BC80E:       LateIdCallSt
  loc_15BC822:       Set var_200 = Nothing 
  loc_15BC82C:       var_9A = (var_9A + 1)
  loc_15BC832:       var_88.MoveNext
  loc_15BC837:       GoTo loc_15BC27A
  loc_15BC83A:     End If
  loc_15BC84D:     Me.FGrid.FixedRows = 1
  loc_15BC855:   End If
  loc_15BC875:   var_F0 = Format(var_A4, "0.00")
  loc_15BC88C:   Set var_A8 = Me.Txt
  loc_15BC892:   Call 0.Method_Proc_41_49_15BC8D40 (CInt(8), var_C0, CStr(var_F0), 1, 1, var_9A, var_200)
  loc_15BC89A:   var_C0.Text = var_F0
  loc_15BC8B3: Else
  loc_15BC8B3:   Call Proc_41_48_F565C0(var_164, 1, 1)
  loc_15BC8B8: End If
  loc_15BC8B8: Call Proc_41_51_EF8B68(var_174)
  loc_15BC8C2: Set var_8C = Nothing
  loc_15BC8CA: Set var_90 = Nothing
  loc_15BC8CD: Exit Sub
  loc_15BC8CE: ' Referenced from: 15BB624
  loc_15BC8CE: Proc_6_60_E62BC4(var_100)
  loc_15BC8D3: Exit Sub
End Sub

Public Sub Proc_41_50_FB2A94(arg_C) 'FB2A94
  'Data Table: 4DEA20
  Dim var_98 As TextBox
  loc_FB28FE: Set var_8C = Me.Txt
  loc_FB2904: Call 0.Method_Proc_41_50_FB2A94C (var_8E, var_86)
  loc_FB2914: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FB292A:   Set var_8C = Me.Txt
  loc_FB2930:   Call 0.Method_Proc_41_50_FB2A940 (CInt(var_86), var_98)
  loc_FB2938:   var_98.Enabled = arg_C
  loc_FB2947: Next var_92 'Byte
  loc_FB295A: Set var_8C = Me.Txt
  loc_FB2960: Call 0.Method_Proc_41_50_FB2A940 (CInt(2), var_98)
  loc_FB2968: var_98.Enabled = False
  loc_FB297F: If (global_120 = "No") Then
  loc_FB298F:   Set var_8C = Me.Txt
  loc_FB2995:   Call 0.Method_Proc_41_50_FB2A940 (CInt(3), var_98)
  loc_FB299D:   var_98.Enabled = False
  loc_FB29A9: End If
  loc_FB29B6: Set var_8C = Me.Txt
  loc_FB29BC: Call 0.Method_Proc_41_50_FB2A940 (CInt(4), var_98)
  loc_FB29C4: var_98.Enabled = False
  loc_FB29DD: Set var_8C = Me.Txt
  loc_FB29E3: Call 0.Method_Proc_41_50_FB2A940 (CInt(8), var_98)
  loc_FB29EB: var_98.Enabled = False
  loc_FB2A04: Set var_8C = Me.Txt
  loc_FB2A0A: Call 0.Method_Proc_41_50_FB2A940 (CInt(&HB), var_98)
  loc_FB2A12: var_98.Enabled = False
  loc_FB2A22: Set var_8C = Me.TopCtrl1
  loc_FB2A28: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FB2A41: If (CStr() = "Edit") Then
  loc_FB2A51:   Set var_8C = Me.Txt
  loc_FB2A57:   Call 0.Method_Proc_41_50_FB2A940 (CInt(6), var_98)
  loc_FB2A5F:   var_98.Enabled = False
  loc_FB2A78:   Set var_8C = Me.Txt
  loc_FB2A7E:   Call 0.Method_Proc_41_50_FB2A940 (CInt(9), var_98)
  loc_FB2A86:   var_98.Enabled = False
  loc_FB2A92: End If
  loc_FB2A92: Exit Sub
End Sub

Public Sub Proc_41_51_EF8B68
  'Data Table: 4DEA20
  loc_EF8AA8: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EF8ABA:   Me.DGDepart.Visible = False
  loc_EF8AC2: End If
  loc_EF8ADE: If (CBool(Me.DGGodown.Visible) = &HFF) Then
  loc_EF8AF0:   Me.DGGodown.Visible = False
  loc_EF8AF8: End If
  loc_EF8B14: If (CBool(Me.DGCompany.Visible) = &HFF) Then
  loc_EF8B26:   Me.DGCompany.Visible = False
  loc_EF8B2E: End If
  loc_EF8B4A: If (CBool(Me.DGBookNo.Visible) = &HFF) Then
  loc_EF8B5C:   Me.DGBookNo.Visible = False
  loc_EF8B64: End If
  loc_EF8B64: Exit Sub
End Sub

Public Sub Proc_41_52_126C5D8(arg_C) '126C5D8
  'Data Table: 4DEA20
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_8C As Recordset15
  Dim var_98 As Variant
  Dim var_D0 As Variant
  Dim var_94 As Long
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_190 As TextBox
  loc_126C088: Set var_98 = Me.Txt
  loc_126C08E: Call 0.Method_Proc_41_52_126C5D80 (CInt(1), var_9C)
  loc_126C0B5: var_90 = var_9C.Tag
  loc_126C0BC: Set var_8C = New 
  loc_126C0C7: Me.Recordset15.CursorLocation = 3
  loc_126C0D2: If (arg_C = &HFF) Then
  loc_126C0E0:   Set var_98 = Me.Txt
  loc_126C0E6:   Call 0.Method_Proc_41_52_126C5D80 (CInt(3))
  loc_126C0F5:   Proc_6_7_F25D88(var_D0, CVar(var_9C))
  loc_126C118:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_126C141:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_126C152:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_126C177: Else
  loc_126C182:   Set var_98 = Me.Txt
  loc_126C188:   Call 0.Method_Proc_41_52_126C5D80 (CInt(3), var_9C, 3)
  loc_126C197:   Proc_6_7_F25D88(var_D0, CVar(var_9C))
  loc_126C1BA:   var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_126C1E3:   var_F0 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") & var_D0 
  loc_126C1F4:   var_8C.Open var_F0 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_126C216: End If
  loc_126C22A: If (var_8C.RecordCount > 0) Then
  loc_126C269:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_126C26C:     GoTo loc_126C33A
  loc_126C26F:   End If
  loc_126C29A:   var_A0 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_126C2A0:   global_100 = var_A0
  loc_126C2B7:   If (arg_C = &HFF) Then
  loc_126C2D4:     var_9C = var_8C.Fields.Item("start_srl_no")
  loc_126C2E9:     var_D0 = (var_9C.Value + 1)
  loc_126C2EF:     var_94 = CLng(var_D0)
  loc_126C303:   Else
  loc_126C311:     Set var_98 = Me.Txt
  loc_126C317:     Call 0.Method_Proc_41_52_126C5D80 (CInt(2), var_9C, var_A0, var_94)
  loc_126C31F:     3 = var_9C.Text
  loc_126C32D:     var_94 = CLng(Val(var_A0))
  loc_126C33A:   End If
  loc_126C33A:   ' Referenced from: 126C26C
  loc_126C33A: End If
  loc_126C340: If (arg_C = &HFF) Then
  loc_126C357:   var_D0 = CVar(-1 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C, var_94)) 'String
  loc_126C367:   var_C0 = Space((5 - Len(var_90)))
  loc_126C36F:   var_E0 = (var_D0 + var_9C.Value)
  loc_126C379:   var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C, var_94) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_126C38D:   var_110 = Space((5 - Len(global_100)))
  loc_126C395:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_126C3A2:   var_148 = (var_138 + CVar(global_100))
  loc_126C3B0:   var_A4 = CStr(var_94)
  loc_126C3B8:   var_158 = Space((8 - Len(var_A4)))
  loc_126C3C0:   var_168 = (var_148 + var_158)
  loc_126C3CC:   var_188 = (var_168 + CVar(CStr(var_94)))
  loc_126C3D7:   global_92 = CStr(var_188)
  loc_126C40D:   Me.LblVPrefix.Caption = global_100
  loc_126C426:   Set var_98 = Me.Txt
  loc_126C42C:   Call 0.Method_Proc_41_52_126C5D80 (CInt(0), var_9C, global_92)
  loc_126C434:   var_9C.Text = -1
  loc_126C453:   Set var_98 = Me.Txt
  loc_126C459:   Call 0.Method_Proc_41_52_126C5D80 (CInt(2), var_9C)
  loc_126C461:   var_9C.Text = CStr(var_94)
  loc_126C476:   var_88 = global_92
  loc_126C47C: Else
  loc_126C4A0:   var_C0 = Space((5 - Len(var_90)))
  loc_126C4A8:   var_E0 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2)) + var_9C.Value)
  loc_126C4B2:   var_F0 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + CVar(var_90))
  loc_126C4C6:   var_110 = Space((5 - Len(global_100)))
  loc_126C4CE:   var_138 = (var_F0 + var_F0 & " Order By VP.Date_From DESC")
  loc_126C4DB:   var_148 = (var_138 + CVar(global_100))
  loc_126C4F2:   Set var_98 = Me.Txt
  loc_126C4F8:   Call 0.Method_Proc_41_52_126C5D80 (CInt(2), var_9C, var_A4)
  loc_126C500:   8 = var_9C.Text
  loc_126C50D:   var_158 = Space((var_148 - Len(var_A4)))
  loc_126C515:   var_168 = (var_9C + var_158)
  loc_126C527:   Set var_18C = Me.Txt
  loc_126C52D:   Call 0.Method_Proc_41_52_126C5D80 (CInt(2), var_190)
  loc_126C540:   var_188 = (var_168 + CVar(var_190.Text))
  loc_126C54B:   global_92 = CStr(var_188)
  loc_126C58C:   Me.LblVPrefix.Caption = global_100
  loc_126C5A5:   Set var_98 = Me.Txt
  loc_126C5AB:   Call 0.Method_Proc_41_52_126C5D80 (CInt(0), var_9C)
  loc_126C5B3:   var_9C.Text = global_92
  loc_126C5C5:   var_88 = global_92
  loc_126C5C8: End If
  loc_126C5CD: Set var_8C = Nothing
  loc_126C5D0: Proc_41_52_126C5D8 = 
End Sub

Public Sub Proc_41_53_121C9D4
  'Data Table: 4DEA20
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_121C4EB: Me.FGrid.Width = CVar(CDbl(10230))
  loc_121C506: Me.FGrid.Left = CVar(CDbl(550))
  loc_121C521: Me.FGrid.Top = CVar(CDbl(2265))
  loc_121C52D: Set var_AC = Me.FGrid
  loc_121C544: global_136 = CStr(CLng(var_AC.BackColor))
  loc_121C55A: var_AC.Cols = &HD
  loc_121C562: var_94 = CVar(CLng(0)) 'Long
  loc_121C567: var_D0 = &H190
  loc_121C573: LateIdCallSt
  loc_121C57B: var_94 = 0
  loc_121C587: var_D0 = CVar(CLng(1)) 'Long
  loc_121C58C: var_F0 = "Item Name"
  loc_121C595: LateIdCallSt
  loc_121C5A0: var_94 = CVar(CLng(1)) 'Long
  loc_121C5AB: var_D0 = CVar(CInt(1)) 'Integer
  loc_121C5B2: LateIdCallSt
  loc_121C5BD: var_94 = CVar(CLng(1)) 'Long
  loc_121C5C2: var_D0 = &HC80
  loc_121C5CE: LateIdCallSt
  loc_121C5D6: var_94 = 0
  loc_121C5E2: var_D0 = CVar(CLng(2)) 'Long
  loc_121C5E7: var_F0 = "Unit"
  loc_121C5F0: LateIdCallSt
  loc_121C5FB: var_94 = CVar(CLng(2)) 'Long
  loc_121C606: var_D0 = CVar(CInt(1)) 'Integer
  loc_121C60D: LateIdCallSt
  loc_121C618: var_94 = CVar(CLng(2)) 'Long
  loc_121C61D: var_D0 = &H384
  loc_121C629: LateIdCallSt
  loc_121C631: var_94 = 0
  loc_121C63D: var_D0 = CVar(CLng(3)) 'Long
  loc_121C642: var_F0 = "Req. Qty"
  loc_121C64B: LateIdCallSt
  loc_121C656: var_94 = CVar(CLng(3)) 'Long
  loc_121C661: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C668: LateIdCallSt
  loc_121C673: var_94 = CVar(CLng(3)) 'Long
  loc_121C67E: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C685: LateIdCallSt
  loc_121C690: var_94 = CVar(CLng(3)) 'Long
  loc_121C695: var_D0 = &H384
  loc_121C6A1: LateIdCallSt
  loc_121C6A9: var_94 = 0
  loc_121C6B5: var_D0 = CVar(CLng(4)) 'Long
  loc_121C6BA: var_F0 = "Iss. Qty"
  loc_121C6C3: LateIdCallSt
  loc_121C6CE: var_94 = CVar(CLng(4)) 'Long
  loc_121C6D9: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C6E0: LateIdCallSt
  loc_121C6EB: var_94 = CVar(CLng(4)) 'Long
  loc_121C6F6: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C6FD: LateIdCallSt
  loc_121C708: var_94 = CVar(CLng(4)) 'Long
  loc_121C70D: var_D0 = &H384
  loc_121C719: LateIdCallSt
  loc_121C721: var_94 = 0
  loc_121C72D: var_D0 = CVar(CLng(5)) 'Long
  loc_121C732: var_F0 = "Conv Ratio"
  loc_121C73B: LateIdCallSt
  loc_121C746: var_94 = CVar(CLng(5)) 'Long
  loc_121C751: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C758: LateIdCallSt
  loc_121C763: var_94 = CVar(CLng(5)) 'Long
  loc_121C76E: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C775: LateIdCallSt
  loc_121C780: var_94 = CVar(CLng(5)) 'Long
  loc_121C785: var_D0 = 0
  loc_121C791: LateIdCallSt
  loc_121C799: var_94 = 0
  loc_121C7A5: var_D0 = CVar(CLng(6)) 'Long
  loc_121C7AA: var_F0 = "Wt. Qty"
  loc_121C7B3: LateIdCallSt
  loc_121C7BE: var_94 = CVar(CLng(6)) 'Long
  loc_121C7C9: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C7D0: LateIdCallSt
  loc_121C7DB: var_94 = CVar(CLng(6)) 'Long
  loc_121C7E6: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C7ED: LateIdCallSt
  loc_121C7F8: var_94 = CVar(CLng(6)) 'Long
  loc_121C7FD: var_D0 = &H384
  loc_121C809: LateIdCallSt
  loc_121C811: var_94 = 0
  loc_121C81D: var_D0 = CVar(CLng(7)) 'Long
  loc_121C822: var_F0 = "Wt. Unit"
  loc_121C82B: LateIdCallSt
  loc_121C836: var_94 = CVar(CLng(7)) 'Long
  loc_121C841: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C848: LateIdCallSt
  loc_121C853: var_94 = CVar(CLng(7)) 'Long
  loc_121C85E: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C865: LateIdCallSt
  loc_121C870: var_94 = CVar(CLng(7)) 'Long
  loc_121C875: var_D0 = &H384
  loc_121C881: LateIdCallSt
  loc_121C889: var_94 = 0
  loc_121C895: var_D0 = CVar(CLng(8)) 'Long
  loc_121C89A: var_F0 = "Rate"
  loc_121C8A3: LateIdCallSt
  loc_121C8AE: var_94 = CVar(CLng(8)) 'Long
  loc_121C8B9: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C8C0: LateIdCallSt
  loc_121C8CB: var_94 = CVar(CLng(8)) 'Long
  loc_121C8D6: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C8DD: LateIdCallSt
  loc_121C8E8: var_94 = CVar(CLng(8)) 'Long
  loc_121C8ED: var_D0 = &H3E8
  loc_121C8F9: LateIdCallSt
  loc_121C901: var_94 = 0
  loc_121C90D: var_D0 = CVar(CLng(9)) 'Long
  loc_121C912: var_F0 = "Amount"
  loc_121C91B: LateIdCallSt
  loc_121C926: var_94 = CVar(CLng(9)) 'Long
  loc_121C931: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C938: LateIdCallSt
  loc_121C943: var_94 = CVar(CLng(9)) 'Long
  loc_121C94E: var_D0 = CVar(CInt(7)) 'Integer
  loc_121C955: LateIdCallSt
  loc_121C960: var_94 = CVar(CLng(9)) 'Long
  loc_121C965: var_D0 = &H44C
  loc_121C971: LateIdCallSt
  loc_121C97C: var_94 = CVar(CLng(&HA)) 'Long
  loc_121C981: var_D0 = 0
  loc_121C98D: LateIdCallSt
  loc_121C998: var_94 = CVar(CLng(&HB)) 'Long
  loc_121C99D: var_D0 = 0
  loc_121C9A9: LateIdCallSt
  loc_121C9B4: var_94 = CVar(CLng(&HC)) 'Long
  loc_121C9B9: var_D0 = 0
  loc_121C9C5: LateIdCallSt
  loc_121C9CF: Set var_AC = Nothing 
  loc_121C9D3: Exit Sub
End Sub

Public Sub Proc_41_54_F74BBC
  'Data Table: 4DEA20
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  loc_F74ABB: var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74AC3: var_D4 = CVar(CLng(8)) 'Long
  loc_F74AFB: var_120 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F74B03: var_140 = CVar(CLng(4)) 'Long
  loc_F74B82: LateIdCallSt
  loc_F74BB5: Call Proc_41_45_F00F6C(Me.FGrid, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix))))), "0.00"))), 1, 1, CVar(CLng(9)), CVar(CLng(Me.FGrid.Row)))
  loc_F74BBA: Exit Sub
End Sub

Public Sub Proc_41_55_ED55A0
  'Data Table: 4DEA20
  loc_ED5500: Call Proc_41_51_EF8B68()
  loc_ED5510: Set var_88 = Me.Txt
  loc_ED5516: Call 0.Method_Proc_41_55_ED55A00 (CInt(3))
  loc_ED553F: If (Proc_6_27_EA565C(var_8C, "Date") = 0) Then
  loc_ED5542:   Exit Sub
  loc_ED5543: End If
  loc_ED557A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED557D:   Call TopCtrl1_UnknownEvent_16()
  loc_ED5585: Else
  loc_ED558B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED5593:   Call var_88.SetFocus
  loc_ED559C: End If
  loc_ED559C: Exit Sub
End Sub
