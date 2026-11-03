VERSION 5.00
Begin VB.Form FdRoomDisplay
  Caption = "Room View"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "FdRoomDisplay.frx":0
  Icon = "FdRoomDisplay.frx":52A
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14190
  ClientHeight = 8355
  Begin Frame FrmPic
    BackColor = &HCBFCF9&
    ForeColor = &HFF0000&
    Left = 15
    Top = 1305
    Width = 12855
    Height = 7590
    TabIndex = 1
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin Image Picture1
      Left = 0
      Top = 0
      Width = 11160
      Height = 7545
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin Frame FrmRoom
    BackColor = &HFFC0FF&
    ForeColor = &H80000008&
    Left = 0
    Top = 0
    Width = 19875
    Height = 11070
    TabIndex = 0
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin BtnEnh BtnExit
      Left = 10065
      Top = 525
      Width = 1350
      Height = 735
      TabIndex = 3
    End
    Begin BtnEnh Cmd
      Index = 1
      Left = 15
      Top = 540
      Width = 1350
      Height = 735
      TabIndex = 2
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 180
      Height = 540
      TabIndex = 4
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
  End
End

Attribute VB_Name = "FdRoomDisplay"


Private Sub btnExit_UnknownEvent_9 'E15504
  'Data Table: 421CA0
  loc_E154F9: Me.Global.Unload Me
  loc_E15501: Exit Sub
End Sub

Private Sub Form_Load() '12FA3C0
  'Data Table: 421CA0
  Dim var_98 As String
  Dim unk_421CA9 As Connection15
  Dim var_8C As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim var_92 As Integer
  Dim var_DC As Image
  loc_12F9CCC: On Error Goto loc_12FA37A
  loc_12F9CE3: var_98 = "select * from roommast where logsite_code='" & MemVar_1F92078
  loc_12F9CF3: unk_421CA9.Execute var_98 & "' and type='RO' and inclcount='Y' order by Code", var_BC, -1
  loc_12F9CFE: Set var_8C = var_C0
  loc_12F9D22: If (var_8C.RecordCount > 0) Then
  loc_12F9D28:   var_8C.MoveFirst
  loc_12F9D3A:   Set var_C0 = Me.Cmd
  loc_12F9D40:   Call 0.Method_Form_Load0 (1, var_C8)
  loc_12F9D48:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_12F9D8C:   Set var_DC = Me.Cmd
  loc_12F9D92:   Call 0.Method_Form_Load0 (1, var_E0)
  loc_12F9D9A:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(CVar(CStr(var_8C.Fields.Item("Code").Value)))
  loc_12F9DC8:   var_C8 = var_8C.Fields.Item("Code")
  loc_12F9DDE:   Set var_DC = Me.Cmd
  loc_12F9DE4:   Call 0.Method_Form_Load0 (1, var_E0)
  loc_12F9DEC:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(var_C8))
  loc_12F9E00:   var_8C.MoveNext
  loc_12F9E07:   var_8E = 9
  loc_12F9E0C:   var_90 = 0
  loc_12F9E28:   For var_F4 = 2 To CInt(var_8C.RecordCount): var_86 = var_F4 'Integer
  loc_12F9E38:     Set var_C0 = Me.Cmd
  loc_12F9E3E:     Call 0.Method_Form_Load0 (var_86, var_C8, 2, 0)
  loc_12F9E4F:     Me.Cmd.Load var_C8
  loc_12F9E75:     var_C8 = var_8C.Fields.Item("Code")
  loc_12F9E86:     var_F0 = CVar(CStr(var_C8.Value)) 'String
  loc_12F9E94:     Set var_DC = Me.Cmd
  loc_12F9E9A:     Call 0.Method_Form_Load0 (var_86, var_E0, var_F0)
  loc_12F9EA2:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_90)
  loc_12F9EC7:     Set var_C0 = Me.Cmd
  loc_12F9ECD:     Call 0.Method_Form_Load0 (var_86, var_C8, True)
  loc_12F9ED5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(var_8E)
  loc_12F9EF0:     var_C0 = var_8C.Fields
  loc_12F9EF8:     var_C8 = var_C0.Item("Code")
  loc_12F9F0F:     Set var_DC = Me.Cmd
  loc_12F9F15:     Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12F9F1D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(var_C8))
  loc_12F9F3B:     Set var_DC = Me.Cmd
  loc_12F9F41:     Call 0.Method_Form_Load0 ((var_86 - 1), var_E0)
  loc_12F9F49:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010006(var_C0)
  loc_12F9F5F:     Set var_C0 = Me.Cmd
  loc_12F9F65:     Call 0.Method_Form_Load0 ((var_86 - 1))
  loc_12F9F6D:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_C8)
  loc_12F9F7C:     var_AC = CVar((CDbl() + CDbl(var_F0))) 'Single
  loc_12F9F8B:     Set var_F8 = Me.Cmd
  loc_12F9F91:     Call 0.Method_Form_Load0 (var_86, var_FC)
  loc_12F9F99:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004("Code")
  loc_12F9FC1:     Set var_C0 = Me.Cmd
  loc_12F9FC7:     Call 0.Method_Form_Load0 ((var_86 - 1))
  loc_12F9FCF:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_C8)
  loc_12F9FE7:     Set var_DC = Me.Cmd
  loc_12F9FED:     Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12F9FF5:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_12FA013:     If ((var_86 Mod var_8E) = var_90) Then
  loc_12FA023:       Set var_DC = Me.Cmd
  loc_12FA029:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FA031:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_E0)
  loc_12FA047:       Set var_C0 = Me.Cmd
  loc_12FA04D:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FA055:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_C8)
  loc_12FA064:       var_AC = CVar((CDbl() + CDbl(var_F0))) 'Single
  loc_12FA073:       Set var_F8 = Me.Cmd
  loc_12FA079:       Call 0.Method_Form_Load0 (var_86, var_FC)
  loc_12FA081:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_12FA0A9:       Set var_C0 = Me.Cmd
  loc_12FA0AF:       Call 0.Method_Form_Load0 ((var_86 - 8))
  loc_12FA0B7:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_C8)
  loc_12FA0CF:       Set var_DC = Me.Cmd
  loc_12FA0D5:       Call 0.Method_Form_Load0 (var_86, var_E0)
  loc_12FA0DD:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_12FA0F6:       var_92 = (var_92 + 1)
  loc_12FA100:       var_90 = (var_8E - 0)
  loc_12FA103:     End If
  loc_12FA106:     var_8C.MoveNext
  loc_12FA10E:   Next var_F4 'Integer
  loc_12FA113: End If
  loc_12FA119: Set var_C0 = Me.FrmPic
  loc_12FA11F: var_C0.Visible = False
  loc_12FA145: Me.Global.LoadPicture var_AC, var_D8, var_10C, var_11C, var_12C
  loc_12FA15A: Me.Picture1.Picture = var_C0
  loc_12FA173: Me.Picture1.Tag = vbNullString
  loc_12FA18A: Me.FrmRoom.Height = CDbl(7500)
  loc_12FA1A1: Me.FrmRoom.Width = CDbl(11580)
  loc_12FA1C8: Me.FrmPic.Height = Me.FrmRoom.Height
  loc_12FA1F3: Me.FrmPic.Width = Me.FrmRoom.Width
  loc_12FA21E: Me.Picture1.Height = Me.FrmPic.Height
  loc_12FA249: Me.Picture1.Width = Me.FrmPic.Width
  loc_12FA263: Me.FrmRoom.Top = CDbl(&HA)
  loc_12FA279: Me.FrmRoom.Left = CDbl(&HF)
  loc_12FA2A0: Me.FrmPic.Top = Me.FrmRoom.Top
  loc_12FA2CB: Me.FrmPic.Left = Me.FrmRoom.Left
  loc_12FA2F6: Me.Picture1.Top = Me.FrmPic.Top
  loc_12FA321: Me.Picture1.Left = Me.FrmPic.Left
  loc_12FA339: Me.Picture1.Visible = False
  loc_12FA348: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12FA35B: Me.FrmPic.BackColor = CLng(MemVar_1F921B0)
  loc_12FA371: Me.FrmRoom.BackColor = CLng(MemVar_1F921B0)
  loc_12FA379: Exit Sub
  loc_12FA37A: ' Referenced from: 12F9CCC
  loc_12FA382: Set var_C0 = Err()
  loc_12FA388: Call 0.Method_arg_2C (var_98)
  loc_12FA3A9: MsgBox(CVar(var_98), &H10, "Information", var_13C, var_14C)
  loc_12FA3BC: Exit Sub
  loc_12FA3BD: Exit Sub
End Sub

Private Sub Form_Resize() 'E76354
  'Data Table: 421CA0
  loc_E762FE: Call 0.Method_arg_50 (var_88)
  loc_E76310: Me.LblFormCaption.Caption = var_88
  loc_E76329: Me.LblFormCaption.Left = CDbl(0)
  loc_E76337: Call 0.Method_arg_100 (var_90)
  loc_E76349: Me.LblFormCaption.Width = var_90
  loc_E76351: Exit Sub
  loc_E76352:  = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5C8D4
  'Data Table: 421CA0
  loc_E5C896: If (CLng(KeyCode) = &H1B) Then
  loc_E5C8A5:   Me.FrmPic.Visible = False
  loc_E5C8AD:   Exit Sub
  loc_E5C8B1: Else
  loc_E5C8BB:   If (CLng(KeyCode) = &H79) Then
  loc_E5C8CB:     Me.Global.Unload Me
  loc_E5C8D3:   End If
  loc_E5C8D3: End If
  loc_E5C8D3: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '1186980
  'Data Table: 421CA0
  Dim var_B0 As String
  Dim unk_421CA9 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  Dim var_94 As Variant
  Dim var_134 As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_D8 As Variant
  Dim var_114 As String
  Dim var_1B4 As Variant
  Dim var_98 As Field20
  loc_11865FC: Set var_94 = Me.Cmd
  loc_1186602: Call 0.Method_Cmd_UnknownEvent_90 (KeyCode, var_98, "Select PicPath From RoomMast Where LogSite_Code='" & MemVar_1F92078 & "' and type='RO' and inclcount='Y' and Code='")
  loc_118660A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000B(var_D8)
  loc_1186612: var_B0 = CStr(-1)
  loc_1186626: unk_421CA9.Execute var_DC & var_B0 & "'", , 
  loc_1186631: Set var_88 = var_DC
  loc_1186665: If (var_88.RecordCount > 0) Then
  loc_1186677:   var_94 = var_88.Fields
  loc_1186690:   var_134 = IsNull(CVar(var_94.Item("PicPath")))
  loc_1186697:   var_F0 = "PicPath"
  loc_11866C2:   var_114 = vbNullString
  loc_11866E4:   If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_F0))) = var_114)) Then
  loc_1186705:     Me.Global.LoadPicture var_C8, var_F0, var_114, var_134, var_154
  loc_118671A:     Me.Picture1.Picture = var_94
  loc_1186729:   Else
  loc_1186757:     var_114 = "PicPath"
  loc_118679D:     var_F0 = "DAT"
  loc_11867C5:     var_134 = "AVI"
  loc_11867CF:     var_1B4 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_F0) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)
  loc_11867EF:     If CBool(var_1B4) Then
  loc_11867FE:       Me.Picture1.Visible = False
  loc_1186809:     Else
  loc_1186815:       Me.Picture1.Visible = True
  loc_1186855:       Me.Picture1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1186872:       var_C8 = "PicPath"
  loc_1186886:       var_98 = var_88.Fields.Item(var_C8)
  loc_11868A0:       Call 0.Method_Cmd_UnknownEvent_94 (CStr(var_98.Value), var_1B6)
  loc_11868B5:       If var_1B6 Then
  loc_11868D2:         Set var_94 = Me.Picture1
  loc_11868EA:         Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_C8, var_F0, var_114, var_134
  loc_11868FF:         Me.Picture1.Picture = var_98
  loc_1186914:         Set var_94 = Me.Picture1
  loc_118691A:         var_94.Refresh
  loc_1186925:       Else
  loc_1186943:         Me.Global.LoadPicture var_C8, var_F0, var_114, var_134, var_154
  loc_1186958:         Me.Picture1.Picture = var_94
  loc_1186964:       End If
  loc_1186964:       Call Proc_104_5_EB09E0(var_94, var_98)
  loc_1186969:     End If
  loc_1186969:   End If
  loc_1186975:   Me.FrmPic.Visible = True
  loc_118697D: End If
  loc_118697D: Exit Sub
End Sub

Public Sub Proc_104_5_EB09E0
  'Data Table: 421CA0
  loc_EB0986: Me.Picture1.Top = ((Me.FrmPic.Height - Me.Picture1.Height) / CDbl(2))
  loc_EB09CE: Me.Picture1.Left = ((Me.FrmPic.Width - Me.Picture1.Width) / CDbl(2))
  loc_EB09DC: Exit Sub
End Sub
