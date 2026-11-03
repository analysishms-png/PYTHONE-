VERSION 5.00
Begin VB.Form HKRoomBlock
  Caption = "Room Block"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 450
  ClientWidth = 4560
  ClientHeight = 3030
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame Frame1
    Caption = "Room Block"
    BackColor = &HFFC0FF&
    Left = 2160
    Top = 6960
    Width = 7815
    Height = 1935
    Visible = 0   'False
    TabIndex = 30
    Begin TextBox Txt
      Index = 5
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 1680
      Width = 2310
      Height = 285
      TabIndex = 40
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 4
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 1320
      Width = 2310
      Height = 285
      TabIndex = 39
      BorderStyle = 0 'None
      MaxLength = 25
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 3
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 960
      Width = 2310
      Height = 285
      TabIndex = 38
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 2
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1680
      Top = 555
      Width = 2310
      Height = 285
      TabIndex = 37
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1665
      Top = 255
      Width = 2310
      Height = 285
      TabIndex = 36
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin Label Label11
      Caption = "Reason"
      ForeColor = &HFF0000&
      Left = 720
      Top = 1680
      Width = 855
      Height = 255
      TabIndex = 35
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
    Begin Label Label10
      Caption = "Status"
      ForeColor = &HFF0000&
      Left = 720
      Top = 1320
      Width = 855
      Height = 255
      TabIndex = 34
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
    Begin Label Label9
      Caption = "To"
      ForeColor = &HFF0000&
      Left = 720
      Top = 960
      Width = 855
      Height = 255
      TabIndex = 33
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
    Begin Label Label8
      Caption = "From"
      ForeColor = &HFF0000&
      Left = 720
      Top = 600
      Width = 855
      Height = 255
      TabIndex = 32
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
    Begin Label Label7
      Caption = "Room #"
      ForeColor = &HFF0000&
      Left = 720
      Top = 240
      Width = 855
      Height = 255
      TabIndex = 31
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 1080
    Top = 1575
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 23
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
  Begin Frame FrLabel
    Caption = "Frame1"
    BackColor = &HE0E0E0&
    Left = 360
    Top = 8775
    Width = 3780
    Height = 390
    Visible = 0   'False
    TabIndex = 21
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
    Begin Label LBLRoomName
      BackColor = &HE0E0E0&
      ForeColor = &HC00000&
      Left = 60
      Top = 15
      Width = 5970
      Height = 315
      Visible = 0   'False
      TabIndex = 22
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Frame FrParameter
    Caption = "Parameter"
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 16065
    Height = 735
    TabIndex = 1
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
    Begin DataCombo dRoomCat
      Left = 3720
      Top = 0
      Width = 2295
      Height = 360
      TabIndex = 28
    End
    Begin TextBox Txt
      Index = 0
      BackColor = &H8000000E&
      ForeColor = &HC00000&
      Left = 1425
      Top = 0
      Width = 1230
      Height = 285
      TabIndex = 3
      BorderStyle = 0 'None
      MaxLength = 12
      Appearance = 0 'Flat
    End
    Begin BtnEnh Cmd
      Index = 1
      Left = 10080
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 2
    End
    Begin BtnEnh CmdExit
      Left = 14385
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 4
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 9000
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 5
    End
    Begin BtnEnh Cmd
      Index = 2
      Left = 11145
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 6
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13305
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 7
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12225
      Top = 45
      Width = 1080
      Height = 660
      TabIndex = 8
    End
    Begin BtnEnh CmdRoomBlock
      Left = 7950
      Top = 45
      Width = 1080
      Height = 645
      TabIndex = 43
    End
    Begin Label Label6
      Caption = "Category"
      BackColor = &H80000005&
      ForeColor = &HFF0000&
      Left = 2760
      Top = 0
      Width = 975
      Height = 255
      TabIndex = 29
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
      Caption = "Expected Arrival"
      Index = 4
      ForeColor = &HFF0000&
      Left = 3285
      Top = 495
      Width = 1410
      Height = 225
      TabIndex = 12
      Alignment = 2 'Center
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
      Caption = "Guest In House"
      Index = 3
      ForeColor = &HC0&
      Left = 1920
      Top = 495
      Width = 1290
      Height = 225
      TabIndex = 14
      Alignment = 2 'Center
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
      Caption = "Out Of Order "
      Index = 2
      ForeColor = &HFFFFFF&
      Left = 780
      Top = 495
      Width = 1125
      Height = 225
      TabIndex = 15
      Alignment = 2 'Center
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
      Caption = "Vacant "
      Index = 1
      ForeColor = &HC00000&
      Left = 75
      Top = 495
      Width = 675
      Height = 225
      TabIndex = 16
      Alignment = 2 'Center
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
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 1890
      Top = 480
      Width = 1335
      Height = 270
      TabIndex = 20
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 750
      Top = 480
      Width = 1110
      Height = 270
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label2
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 30
      Top = 480
      Width = 705
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label1
      Caption = "Display From"
      Index = 15
      ForeColor = &HC00000&
      Left = 75
      Top = 15
      Width = 1245
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
    End
    Begin Label Label2
      Index = 4
      BackColor = &HFFFF00&
      ForeColor = &H80000008&
      Left = 3255
      Top = 480
      Width = 1455
      Height = 270
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
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
    Begin Label Label3
      Caption = "*"
      BackColor = &HE0E0E0&
      ForeColor = &HFF&
      Left = 4740
      Top = 480
      Width = 285
      Height = 270
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Courier New"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label4
      Caption = "With advance"
      ForeColor = &H404040&
      Left = 5055
      Top = 495
      Width = 1155
      Height = 225
      TabIndex = 10
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
    Begin Label Label5
      Caption = "d"
      ForeColor = &HFF&
      Left = 6195
      Top = 495
      Width = 105
      Height = 225
      TabIndex = 9
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
    Top = 2580
    Width = 4560
    Height = 450
    Visible = 0   'False
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 750
    Width = 11820
    Height = 6270
    TabIndex = 24
  End
  Begin BtnEnh CmdUP
    Left = 16230
    Top = 3465
    Width = 1110
    Height = 885
    TabIndex = 25
  End
  Begin BtnEnh CmdDown
    Left = 16245
    Top = 4350
    Width = 1110
    Height = 885
    TabIndex = 26
  End
  Begin DataGrid DGCategory
    Left = 12720
    Top = 3240
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 41
  End
  Begin MSFlexGrid FGPoint
    Left = 13680
    Top = 960
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin Label Label2
    Index = 2
    BackColor = &HFFFF00&
    ForeColor = &H80000008&
    Left = 1650
    Top = 9885
    Width = 285
    Height = 270
    TabIndex = 27
    BorderStyle = 1 'Fixed Single
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
End

Attribute VB_Name = "HKRoomBlock"

Private global_112 As Long
Private global_96 As Integer
Private global_80 As Double
Private global_100 As Integer
Private global_136 As Double
Private global_56 As Integer
Private global_58 As Integer
Private global_108 As Long

Private Sub CmdUp_UnknownEvent_9 'EE30C8
  'Data Table: 4FFC84
  Dim var_A8 As Variant
  loc_EE3023: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE303F:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE304E:   Me.FGrid.Row = var_A8
  loc_EE3076:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE3085:   Me.FGrid.ColSel = var_A8
  loc_EE30B6:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE30C5: End If
  loc_EE30C5: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F01510
  'Data Table: 4FFC84
  Dim var_BC As Variant
  loc_F0146B: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F01487:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F01496:   Me.FGrid.Row = var_BC
  loc_F014BE:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F014CD:   Me.FGrid.ColSel = var_BC
  loc_F014FE:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F0150D: End If
  loc_F0150D: Exit Sub
  loc_F0150E: () = 
End Sub

Private Sub CmdExit_UnknownEvent_9 'E193F4
  'Data Table: 4FFC84
  loc_E193E9: Me.Global.Unload Me
  loc_E193F1: Exit Sub
End Sub

Private Sub Form_Load() '1099C64
  'Data Table: 4FFC84
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim Me As Recordset15
  Dim var_D8 As TextBox
  Dim var_D4 As DataGrid
  loc_10999B4: On Error Goto loc_1099C5B
  loc_10999BE: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10999D1: Me.FrParameter.BackColor = CLng(MemVar_1F921B0)
  loc_10999EC: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10999FC: global_112 = &HFDC293
  loc_1099A0E: Set var_88 = Me.Label2
  loc_1099A14: Call 0.Method_Form_Load0 (4, var_AC)
  loc_1099A1C: var_AC.BackColor = global_112
  loc_1099A5C: Set var_88 = Me.Txt
  loc_1099A62: Call 0.Method_Form_Load0 (CInt(0), var_AC, CStr(MemVar_1F920EC), &HFFFFFF)
  loc_1099A6A: var_AC.Text = &H40C0
  loc_1099A80: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), &HFF00)
  loc_1099A98: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1099AA0: Call Proc_261_36_1036804(global_112)
  loc_1099AAA: Call Cmd_UnknownEvent_9()
  loc_1099AB3: Set var_AC = Me.dRoomCat
  loc_1099AB9: var_BC = "Code"
  loc_1099ADA: Proc_6_139_EF950C("Select Name as Name ,Code as Code From RoomCat WHERE InclCount='Y' Order By Name", var_AC, "Name")
  loc_1099AF9: Set var_88 = Me.dRoomCat
  loc_1099AFF: var_88.defText = vbNullString
  loc_1099B23: Me.var_88.CursorLocation = 3
  loc_1099B4D: var_CC = CVar("Select distinct Code As Code,Name,ShortName From BlockMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_1099B57: Me.Open var_CC, CVar(MemVar_1F92044), 2
  loc_1099B6B: CVarUnk
  loc_1099B70: VerifyVarObj
  loc_1099B7C: LateIdStAd
  loc_1099B94: Set global_132 = New 
  loc_1099BA6: Me.DGCategory.CursorLocation = 3
  loc_1099BB9: Set var_D4 = Me.Txt
  loc_1099BBF: Call 0.Method_Form_Load0 (CInt(4), var_D8, var_DC, Me.DGCategory, New)
  loc_1099BC7: 3 = var_D8.Height
  loc_1099BDA: Set var_88 = Me.Txt
  loc_1099BE0: Call 0.Method_Form_Load0 (CInt(4), var_AC, var_D0)
  loc_1099BE8: -1 = var_AC.Top
  loc_1099BF8: var_98 = CVar(((var_D0 + var_DC) + CDbl(&HA))) 'Single
  loc_1099C07: Me.DGCategory.Top = CVar(MemVar_1F92044)
  loc_1099C27: Set var_88 = Me.Txt
  loc_1099C2D: Call 0.Method_Form_Load0 (CInt(4), var_AC, var_D0)
  loc_1099C35: var_BC = var_AC.Left
  loc_1099C4C: Me.DGCategory.Left = CVar(var_D0)
  loc_1099C5A: Exit Sub
  loc_1099C5B: ' Referenced from: 10999B4
  loc_1099C5B: Proc_6_60_E62BC4(0)
  loc_1099C60: Exit Sub
End Sub

Private Sub Form_Resize() 'F9BEBC
  'Data Table: 4FFC84
  Dim var_94 As Variant
  loc_F9BD48: On Error Resume Next
  loc_F9BD60: Me.FGrid.Width = CVar(CDbl(16150))
  loc_F9BD94: Call 0.Method_arg_108 (var_AC)
  loc_F9BDA4: var_94 = CVar(((var_AC - Me.FrLabel.Height) - Me.FrParameter.Height)) 'Single
  loc_F9BDB3: Me.FGrid.Height = CVar(CDbl(16150))
  loc_F9BDE7: Me.FGrid.Left = CVar(Me.FrParameter.Left)
  loc_F9BE20: var_94 = CVar((Me.FrParameter.Top + Me.FrParameter.Height)) 'Single
  loc_F9BE2F: Me.FGrid.Top = CVar(Me.FrParameter.Left)
  loc_F9BE5E: Me.FrLabel.Left = Me.FrParameter.Left
  loc_F9BEA3: Me.FrLabel.Top = (CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height))
  loc_F9BEBA: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E108C4
  'Data Table: 4FFC84
  loc_E108BB: Set global_104 = Nothing
  loc_E108C2: Exit Sub
End Sub

Private Sub Form_Activate() 'E193A8
  'Data Table: 4FFC84
  loc_E19394: Set var_88 = Me.FGrid
  loc_E193A5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28750
  'Data Table: 4FFC84
  loc_E28728: On Error Goto loc_E28748
  loc_E2873F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E28747: Exit Sub
  loc_E28748: ' Referenced from: E28728
  loc_E28748: Proc_6_60_E62BC4(Shift)
  loc_E2874D: Exit Sub
End Sub

Private Sub CmdRoomBlock_UnknownEvent_9 'EEF264
  'Data Table: 4FFC84
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_DC As Variant
  Dim var_F4 As TextBox
  loc_EEF1B0: Me.Frame1.Visible = True
  loc_EEF1CB: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EEF1DD: Set var_DC = Me.FGrid
  loc_EEF1FA: Set var_F0 = Me.Txt
  loc_EEF200: Call 0.Method_CmdRoomBlock_UnknownEvent_90 (1, var_F4, CStr(var_DC.TextMatrix)))
  loc_EEF208: var_F4.Text = 0
  loc_EEF236: Set var_88 = Me.Txt
  loc_EEF23C: Call 0.Method_CmdRoomBlock_UnknownEvent_90 (2, var_DC)
  loc_EEF244: var_DC.Text = CStr(global_136)
  loc_EEF25D: Call Txt_Validate(2)
  loc_EEF262: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '13FB02C
  'Data Table: 4FFC84
  Dim unk_4FFC8A As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_C8 As Fields15
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Variant
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_C0 As TextBox
  Dim var_13C As Variant
  Dim var_20C As Variant
  loc_13FA648: On Error Goto loc_13FB025
  loc_13FA650: global_96 = &HFF
  loc_13FA669: unk_4FFC8A.Execute "Select * From FAEnviro", var_B8, -1
  loc_13FA674: Set var_94 = var_BC
  loc_13FA68C: var_BC = var_94.Fields
  loc_13FA6F0: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_13FA6F9: MemVar_1F923C0 = CStr(var_13C)
  loc_13FA78D: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_13FA796: MemVar_1F923C4 = CStr(var_13C)
  loc_13FA82A: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_13FA86B: var_C0 = var_94.Fields.Item("linefiller")
  loc_13FA882: var_D8 = "linefiller"
  loc_13FA88E: var_C8 = var_94.Fields
  loc_13FA896: var_DC = var_C8.Item(var_D8)
  loc_13FA8AA: var_10C = "-"
  loc_13FA8C0: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_13FA8D0: MemVar_1F923CC = CStr(IIf(var_FC, "M", CVar(Proc_6_38_E68A98(CVar(var_DC)))))
  loc_13FA8F7: global_88 = "23 Day Room Availability Forecast (Report)"
  loc_13FA8FE: var_88 = "Day23RoomAvail"
  loc_13FA907: var_A8 = global_88
  loc_13FA91E: global_92 = CStr(Ucase(var_A8))
  loc_13FA93A: If ((global_96 = 0) Or (var_88 = vbNullString)) Then
  loc_13FA93D:   Exit Sub
  loc_13FA93E: End If
  loc_13FA93E: Call Day23RoomAvail()
  loc_13FA96A: Set var_BC = global_104 
  loc_13FA971: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_13FA9A3: var_C4 = "\" & var_88
  loc_13FA9B7: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_13FA9C2: MemVar_1F921E4 = var_BC
  loc_13FA9EE: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_13FA9F6: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_13FAA04: Call 0.Method_arg_150 (global_96)
  loc_13FAA1A: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FAA22: Call 0.Method_arg_24 (var_8A)
  loc_13FAA2E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_13FAA47:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAA4F:   Call 0.Method_arg_20 (var_C0)
  loc_13FAA57:   Call 0.Method_arg_30 (var_C4)
  loc_13FAA6D:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_13FAA9D:   If (var_160 = Ucase("Title")) Then
  loc_13FAAC4:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAACC:     Call 0.Method_arg_20 (var_C0)
  loc_13FAAD4:     Call 0.Method_arg_38 ("'" & global_88 & "'")
  loc_13FAAEA:   Else
  loc_13FAB0C:     If (var_160 = Ucase("BetweenDate")) Then
  loc_13FAB20:       Set var_BC = Me.Txt
  loc_13FAB26:       Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FAB51:       Call 0.Method_arg_90 (var_C8, CLng(var_8A))
  loc_13FAB59:       Call 0.Method_arg_20 (var_DC)
  loc_13FAB61:       Call 0.Method_arg_38 ("'From Date " & var_C0.Text & "'")
  loc_13FAB7D:     Else
  loc_13FAB9F:       If (var_160 = Ucase("Dater")) Then
  loc_13FABC3:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FABCB:         Call 0.Method_arg_20 (var_C0)
  loc_13FABD3:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_13FABE9:       Else
  loc_13FAC0B:         If (var_160 = Ucase("Pager")) Then
  loc_13FAC15:           var_C4 = "'" & MemVar_1F923C4
  loc_13FAC2F:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAC37:           Call 0.Method_arg_20 (var_C0)
  loc_13FAC3F:           Call 0.Method_arg_38 (var_C4 & "'")
  loc_13FAC52:         End If
  loc_13FAC52:       End If
  loc_13FAC52:     End If
  loc_13FAC52:   End If
  loc_13FAC55: Next var_150 'Integer
  loc_13FAC6B: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_13FAC73: Call 0.Method_arg_24 (var_8A)
  loc_13FAC7F: For var_166 =  To CInt(var_14C): 1 = var_166 'Integer
  loc_13FAC8C:   For var_16A = 1 To &H17: var_96 = var_16A 'Integer
  loc_13FAC9D:     Set var_BC = Me.Txt
  loc_13FACA3:     Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FACBD:     var_EC = DateAdd("d", CDbl((var_96 - 1)), CVar(var_C0))
  loc_13FACCA:     global_80 = CDate(Ucase("Pager"))
  loc_13FACEA:     Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FACF2:     Call 0.Method_arg_20 (var_C4, global_80)
  loc_13FACFA:     Call 0.Method_arg_30 (1)
  loc_13FAD10:     var_17C = Ucase(CVar(var_C4)) 'Variant
  loc_13FAD47:     If (var_17C = Ucase(CVar("Day" & CStr(var_96)))) Then
  loc_13FADA6:       Call 0.Method_arg_90 (var_BC, CLng(var_8A), var_C0)
  loc_13FADAE:       Call 0.Method_arg_20 (CStr(1 & Ucase(Format(global_80, "DDD")) & "'"), 1)
  loc_13FADB6:       Call 0.Method_arg_38 ("'")
  loc_13FADD5:     Else
  loc_13FADFE:       If (var_17C = Ucase(CVar("Date" & CStr(var_96)))) Then
  loc_13FAE1E:         var_12C = CVar(CStr(Day(global_80))) 'String
  loc_13FAE46:         var_11C = Space((2 - Len(CStr(Day(global_80)))))
  loc_13FAE4E:         var_13C = (var_12C + Ucase(Format(global_80, "DDD")))
  loc_13FAE84:         var_1CC = Space((2 - Len(CStr(Month(global_80)))))
  loc_13FAEA7:         var_20C = (var_1CC + CVar(CStr(Month(global_80))))
  loc_13FAECC:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_13FAED4:         Call 0.Method_arg_20 (var_C0)
  loc_13FAEDC:         Call 0.Method_arg_38 (CStr("'" & 1 & Ucase(Format(global_80, "DDD")) & "'" & vbNullString & var_20C & "'"))
  loc_13FAF18:       End If
  loc_13FAF18:     End If
  loc_13FAF1B:   Next var_16A 'Integer
  loc_13FAF23: Next var_166 'Integer
  loc_13FAF2E: If (KeyCode = 1) Then
  loc_13FAF3E:   ReDim Preserve var_90(0 To 1)
  loc_13FAF59:   Set var_BC = Me.Txt
  loc_13FAF5F:   Call 0.Method_BTNPRINT_UnknownEvent_90 (CInt(0), var_C0)
  loc_13FAF82:   var_90(0) = vbNullString & var_C0.Text & vbNullString
  loc_13FAF93: End If
  loc_13FAF99: If (KeyCode = 1) Then
  loc_13FAFBD:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", Ucase(Format(global_80, "DDD")), var_12C)
  loc_13FAFCD:   Call Proc_261_45_16B3224()
  loc_13FAFD5: Else
  loc_13FAFDA:   Set var_C0 = Nothing
  loc_13FAFF1:   Set var_BC = MemVar_1F921E4 
  loc_13FAFFD:   Proc_6_99_1483714(var_BC, KeyCode, global_92)
  loc_13FB008:   MemVar_1F921E4 = var_BC
  loc_13FB013: End If
  loc_13FB018: global_100 = 0
  loc_13FB020: MemVar_1F921E4 = Nothing
  loc_13FB024: Exit Sub
  loc_13FB025: ' Referenced from: 13FA648
  loc_13FB025: Proc_6_60_E62BC4(global_100, &HFF)
  loc_13FB02A: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F42264
  'Data Table: 4FFC84
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4215B: Me.DGCategory.Visible = False
  loc_F4217A: If (Me.RecordCount > 0) Then
  loc_F421B9:   Set var_B4 = Me.Txt
  loc_F421BF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4), var_B8)
  loc_F421C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F421FA:   var_B0 = Me.Fields.Item("Name")
  loc_F42219:   Set var_B4 = Me.Txt
  loc_F4221F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4), var_B8)
  loc_F42227:   var_B8.Text = CStr(var_B0.Value)
  loc_F4223D: End If
  loc_F42248: Set var_A8 = Me.Txt
  loc_F4224E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(4))
  loc_F42256: var_B0.SetFocus
  loc_F42262: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'ECAE00
  'Data Table: 4FFC84
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_ECAD5C: Set var_88 = Me.DGCategory
  loc_ECAD75: Me.DGCategory.InsertColumnLabels DGCategory.DispID_1D, 
  loc_ECADAE: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_ECADB5:   Set var_88 = Me.DGCategory
  loc_ECADDF:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_ECADE7:   Set var_9C = Me.DGCategory
  loc_ECADFC: End If
  loc_ECADFC: Exit Sub
  loc_ECADFD: StAryRecCopy
End Sub

Private Sub FGrid_UnknownEvent_0 'E60234
  'Data Table: 4FFC84
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E601FF: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E60212: Set var_A8 = Me.TxtGrid
  loc_E60218: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E60220: var_AC.Visible = False
  loc_E6022C: Call Proc_261_42_DFC9CC()
  loc_E60231: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68110
  'Data Table: 4FFC84
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E680CC: Set var_88 = Me.TxtGrid
  loc_E680D2: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E680EC: If (var_8C.Visible = 0) Then
  loc_E68105:   Me.FGrid.BackColorSel = CVar(CLng(global_52))
  loc_E6810D: End If
  loc_E6810D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'EC3540
  'Data Table: 4FFC84
  Dim var_A8 As Long
  Dim var_C8 As Variant
  Dim var_EC As Variant
  loc_EC34B4: var_A8 = 1
  loc_EC34D6: var_C8 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_EC34E5: var_EC = Me.FGrid.ColHeaderCaption)
  loc_EC351F: global_136 = CDate(Proc_6_34_14ECF20(CStr(Mid(CVar(CStr(var_EC)), &HF, 10)), var_EC))
  loc_EC353D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '103B5A0
  'Data Table: 4FFC84
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_EC As Long
  loc_103B354: Set var_88 = Me.TopCtrl1
  loc_103B35A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103B39F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_103B3A8:   Call Form_KeyDown(KeyCode, Shift)
  loc_103B3AD: End If
  loc_103B3B1: Set var_88 = Me.TopCtrl1
  loc_103B3B7: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103B3D0: If (CStr() = "Browse") Then
  loc_103B3D3:   Exit Sub
  loc_103B3D4: End If
  loc_103B448: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103B461:   Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103B471:   var_9C = "+{Tab}"
  loc_103B477:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_103B481:   KeyCode = 0
  loc_103B487: Else
  loc_103B491:   var_B0 = Me.FGrid.Rows
  loc_103B4DE:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103B4F7:     Me.FGrid.CellBackColor = CVar(CLng(global_52))
  loc_103B50D:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_103B517:     KeyCode = 0
  loc_103B51A:   End If
  loc_103B51A: End If
  loc_103B520: global_56 = KeyCode
  loc_103B546: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103B56A: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_103B580:   var_EC = CLng(Me.FGrid.Col)
  loc_103B589: End If
  loc_103B58F: If (KeyCode = &HD) Then
  loc_103B597:   global_58 = 0
  loc_103B59A: End If
  loc_103B59C: KeyCode = 0
  loc_103B59F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F3B0
  'Data Table: 4FFC84
  loc_E0F3A1: Call FGrid_UnknownEvent_C()
  loc_E0F3AB: global_58 = 0
  loc_E0F3AE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'E4D848
  'Data Table: 4FFC84
  loc_E4D83E: If (CLng(KeyCode) = &HD) Then
  loc_E4D841:   Call Proc_261_37_13011EC(CLng(Me.FGrid.Col))
  loc_E4D846: End If
  loc_E4D846: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44568
  'Data Table: 4FFC84
  Dim var_8C As TextBox
  loc_E4453C: Call Proc_261_42_DFC9CC()
  loc_E4454C: Set var_88 = Me.TxtGrid
  loc_E44552: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4455A: var_8C.Visible = False
  loc_E44566: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F0EC58
  'Data Table: 4FFC84
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F0EB86: Set var_88 = Me.TxtGrid
  loc_F0EB8C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F0EB9A: Proc_6_74_E226B0(var_8C)
  loc_F0EBA6: Call Proc_261_42_DFC9CC(var_8C)
  loc_F0EBB7: If (Index = 0) Then
  loc_F0EBCD:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F0EC0C:   Set var_108 = Me.TxtGrid
  loc_F0EC12:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)))
  loc_F0EC1A:   var_10C.Tag = CVar(CLng(Me.FGrid.Col))
  loc_F0EC4B:   var_114 = CLng(Me.FGrid.Col)
  loc_F0EC54: End If
  loc_F0EC54: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'F013E8
  'Data Table: 4FFC84
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_F0131C: If (KeyCode = 0) Then
  loc_F01329:   If (CLng(Shift) = &H1B) Then
  loc_F01339:     Set var_8C = Me.TxtGrid
  loc_F0133F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_F01359:     Set var_98 = Me.TxtGrid
  loc_F0135F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_F01367:     var_9C.Text = var_90.Tag
  loc_F01383:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_F01388:     Call Proc_261_42_DFC9CC(arg_14)
  loc_F01391:     Set var_8C = Me.FGrid
  loc_F013AE:     Set var_8C = Me.TxtGrid
  loc_F013B4:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_F013BC:     var_90.Visible = FGrid.DispID_8001
  loc_F013C8:     Exit Sub
  loc_F013C9:   End If
  loc_F013DC:   var_B0 = CLng(Me.FGrid.Col)
  loc_F013E5: End If
  loc_F013E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E52FCC
  'Data Table: 4FFC84
  Dim var_A0 As Long
  loc_E52F9B: Proc_6_58_E054C0(arg_10)
  loc_E52FAC: If (KeyAscii = 0) Then
  loc_E52FC2:   var_A0 = CLng(Me.FGrid.Col)
  loc_E52FCB: End If
  loc_E52FCB: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E5500C
  'Data Table: 4FFC84
  Dim var_A0 As Long
  loc_E54FD4: On Error Goto loc_E55003
  loc_E54FE3: If (KeyCode = 0) Then
  loc_E54FF9:   var_A0 = CLng(Me.FGrid.Col)
  loc_E55002: End If
  loc_E55002: Exit Sub
  loc_E55003: ' Referenced from: E54FD4
  loc_E55003: Proc_6_60_E62BC4(var_A0)
  loc_E55008: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E214F8
  'Data Table: 4FFC84
  Dim arg_10 As Integer
  loc_E214E0: If (Cancel = 0) Then
  loc_E214E9:   Call Proc_261_38_E54E4C(Cancel, var_88)
  loc_E214F2:   arg_10 = Not(var_88)
  loc_E214F5: End If
  loc_E214F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'FAE6BC
  'Data Table: 4FFC84
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_F4 As Variant
  Dim var_104 As String
  Dim var_220 As String
  Dim unk_4FFC8A As Connection15
  loc_FAE58B: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAE590: var_D0 = 0
  loc_FAE5A3: var_F4 = Me.FGrid.TextMatrix)
  loc_FAE5BD: Proc_6_7_F25D88(var_12C, Date, var_F4)
  loc_FAE610: var_104 = "Insert into RoomBlockOut (RoomCode,Type,Site_Code,U_Name,FromDate,LogSite_Code,VTime) Values ('" & CStr(var_F4) & "','M','" & MemVar_1F92078
  loc_FAE65B: var_220 = CStr(CVar(var_104 & "','" & MemVar_1F920C8 & "',") & var_12C & ",'" & CVar(MemVar_1F92078) & "','" & Format(Time, "hh:nn") & "')")
  loc_FAE665: unk_4FFC8A.Execute var_220, var_240, -1
  loc_FAE6B1: Me.Frame1.Visible = False
  loc_FAE6B9: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 '105C230
  'Data Table: 4FFC84
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_CC As Long
  Dim var_EC As Long
  Dim var_8C As MSHFlexGrid
  loc_105BFC7: var_86 = Cancel
  loc_105BFD0: If (var_86 = 0) Then
  loc_105BFDE:   Set var_8C = Me.Txt
  loc_105BFE4:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_105C00D:   If (Proc_6_27_EA565C(var_90, "Start Date") = 0) Then
  loc_105C010:     Exit Sub
  loc_105C011:   End If
  loc_105C01F:   Set var_8C = Me.Txt
  loc_105C025:   Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_90)
  loc_105C02D:   var_98 = var_90.Text
  loc_105C036:   Set var_94 = Me.dRoomCat
  loc_105C03C:   var_A8 = var_94.BoundText
  loc_105C05F:   Call Proc_261_43_15F6F1C(CDate(var_98), 1, "RoomNo")
  loc_105C07C: Else
  loc_105C082:   If (var_86 = 1) Then
  loc_105C085:     var_CC = 1
  loc_105C08E:     var_EC = 1
  loc_105C0A1:     var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105C0BB:     Set var_90 = Me.Txt
  loc_105C0C1:     Call 0.Method_Cmd_UnknownEvent_90 (CInt(0), var_94, var_98, var_A8)
  loc_105C0C9:     var_EC = var_94.Text
  loc_105C104:     If (CDate(Right(CVar(CStr(var_A8)), 9)) <> CDate(var_98)) Then
  loc_105C107:       var_CC = 1
  loc_105C110:       var_EC = 1
  loc_105C123:       var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105C175:       Call Proc_261_43_15F6F1C(CDate((CDate(Right(CVar(CStr(var_A8)), 9)) - CDbl(1))), &HFF, "RoomNo", CStr(Me.dRoomCat.BoundText), var_A8)
  loc_105C195:     End If
  loc_105C198:   Else
  loc_105C19E:     If (var_86 = 2) Then
  loc_105C1A1:       var_CC = 1
  loc_105C1BD:       var_A8 = Me.FGrid.ColHeaderCaption)
  loc_105C20F:       Call Proc_261_43_15F6F1C(CDate((CDate(Right(CVar(CStr(var_A8)), 9)) + CDbl(1))), 1, "RoomNo", CStr(Me.dRoomCat.BoundText), var_A8, &H1E)
  loc_105C22F:     End If
  loc_105C22F:   End If
  loc_105C22F: End If
  loc_105C22F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'F97824
  'Data Table: 4FFC84
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F976C2: Set var_88 = Me.Txt
  loc_F976C8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_F976D6: Proc_6_74_E226B0(var_8C)
  loc_F976E2: Call Proc_261_42_DFC9CC(var_8C)
  loc_F976EA: var_92 = Index
  loc_F976F5: If (var_92 = CInt(4)) Then
  loc_F9770F:   If (Me.RecordCount > 0) Then
  loc_F9771D:     Set var_8C = Me.FGPoint
  loc_F97735:     Proc_6_137_1193554(Me.DGCategory, global_128, Index)
  loc_F97743:   End If
  loc_F97791:   Set var_88 = Me.Txt
  loc_F97797:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_F9779F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_F977B7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_F977BA:     Exit Sub
  loc_F977BB:   End If
  loc_F977C1:   Me.MoveFirst
  loc_F977E4:   Set var_88 = Me.Txt
  loc_F977EA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_F977F2:   0 = var_8C.Text
  loc_F9780B:   Me.Find 1 & var_A0 & "'", var_B8, var_92
  loc_F97820: End If
  loc_F97820: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1080870
  'Data Table: 4FFC84
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_A8 As TextBox
  loc_10805EA: If (CLng(Shift) = &H1B) Then
  loc_10805ED:   Call Proc_261_42_DFC9CC()
  loc_10805F2:   Exit Sub
  loc_10805F3: End If
  loc_10805F6: var_86 = KeyCode
  loc_1080601: If (var_86 = CInt(4)) Then
  loc_1080608:   Set var_A8 = Me.DGCategory
  loc_1080621:   Set var_A0 = Me.FGPoint
  loc_108062C:   Set var_9C = Nothing
  loc_108065E:   Proc_6_69_134A198(var_A8, Me.Txt, CInt(4), global_128, Shift, 0)
  loc_10806CD:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10806D4:     Set var_9C = Me.DGCategory
  loc_10806DB:     Set var_90 = Me.FGPoint
  loc_10806F3:     Proc_6_138_106D6F8(var_9C, global_128, KeyCode, var_90, 1)
  loc_1080701:   End If
  loc_1080704: Else
  loc_108070C:   If (var_86 = CInt(5)) Then
  loc_108072D:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_1080767:       If (MsgBox("Save Record ?", 4, "Save Data", var_114, var_134) = 6) Then
  loc_108076A:         Call TopCtrl1_UnknownEvent_16()
  loc_108076F:       End If
  loc_108076F:     End If
  loc_108076F:   End If
  loc_108076F: End If
  loc_108078B: If (CBool(Me.DGCategory.Visible) = 0) Then
  loc_10807AC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_10807B9:     Set var_8C = Me.Txt
  loc_10807BF:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_9C)
  loc_10807DF:     Set var_A0 = Me.Txt
  loc_10807E5:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, Proc_6_33_1512840(var_90, var_A0))
  loc_10807ED:     var_A8.Text = 0
  loc_1080805:     Call Cmd_UnknownEvent_9()
  loc_1080813:     Set var_8C = Me.Cmd
  loc_1080819:     Call 0.Method_Txt_KeyDown0 (0, var_90)
  loc_1080821:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001(0)
  loc_1080830:     Exit Sub
  loc_1080831:   End If
  loc_1080846:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_108084F:     Proc_6_75_E527CC(Shift, arg_14)
  loc_1080854:   End If
  loc_108085E:   If (CLng(Shift) = &H26) Then
  loc_1080867:     Proc_6_76_E52838(Shift, arg_14)
  loc_108086C:   End If
  loc_108086C: End If
  loc_108086C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EF0438
  'Data Table: 4FFC84
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_EF0370: On Error Goto loc_EF042F
  loc_EF0376: Proc_6_58_E054C0(arg_10)
  loc_EF0381: Proc_6_133_E7EF78(var_94)
  loc_EF0393: var_96 = KeyAscii
  loc_EF039E: If (var_96 = CInt(4)) Then
  loc_EF03BD:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EF03EE:     Proc_6_89_146F1AC(Me.Txt, CInt(4), global_128, CInt(Me.DGCategory.Visible), "Name")
  loc_EF0420:     Proc_6_138_106D6F8(Me.DGCategory, global_128, KeyAscii, Me.FGPoint)
  loc_EF042E:   End If
  loc_EF042E: End If
  loc_EF042E: Exit Sub
  loc_EF042F: ' Referenced from: EF0370
  loc_EF042F: Proc_6_60_E62BC4(0, var_96)
  loc_EF0434: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EABC78
  'Data Table: 4FFC84
  loc_EABC06: If (KeyCode = CInt(4)) Then
  loc_EABC25:   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_EABC39:     var_A8 = "Name"
  loc_EABC61:     Proc_6_68_129FB34(Me.DGCategory, Me.Txt, CInt(4), global_128)
  loc_EABC74:   End If
  loc_EABC74: End If
  loc_EABC74: Exit Sub
  loc_EABC75: ArrayRebase1Var
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DBEC
  'Data Table: 4FFC84
  loc_E4DBCA: Set var_88 = Me.Txt
  loc_E4DBD0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DBDE: Proc_6_73_E22704(var_8C)
  loc_E4DBEA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '10D6EB4
  'Data Table: 4FFC84
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_F0 As TextBox
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_EC As TextBox
  loc_10D6BBC: On Error Goto loc_10D6EAE
  loc_10D6BC2: var_86 = Cancel
  loc_10D6BCD: If (var_86 = CInt(0)) Then
  loc_10D6BDD:   Set var_8C = Me.Txt
  loc_10D6BE3:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6C1B:   If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_10D6C30:     Set var_8C = Me.Txt
  loc_10D6C36:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6C3E:     var_90.Text = CStr(MemVar_1F920EC)
  loc_10D6C50:   Else
  loc_10D6C5A:     Set var_8C = Me.Txt
  loc_10D6C60:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6C80:     Set var_EC = Me.Txt
  loc_10D6C86:     Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_10D6C8E:     var_F0.Text = Proc_6_33_1512840(var_90)
  loc_10D6CA1:   End If
  loc_10D6CAE:   Set var_8C = Me.Txt
  loc_10D6CB4:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6CE5:   If (CDate(CDate(var_90.Text)) < Date) Then
  loc_10D6CF2:     Set var_8C = Me.Txt
  loc_10D6CF8:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6D00:     var_90.SetFocus
  loc_10D6D0E:     arg_10 = &HFF
  loc_10D6D11:     Exit Sub
  loc_10D6D12:   End If
  loc_10D6D15: Else
  loc_10D6D1D:   If (var_86 = CInt(4)) Then
  loc_10D6D2B:     Set var_8C = Me.Txt
  loc_10D6D31:     Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_10D6D5A:     If (Proc_6_27_EA565C(var_90, "Room Category") = 0) Then
  loc_10D6D67:       Set var_8C = Me.Txt
  loc_10D6D6D:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6D75:       var_90.SetFocus
  loc_10D6D83:       arg_10 = &HFF
  loc_10D6D86:       Exit Sub
  loc_10D6D87:     End If
  loc_10D6D9B:     If (Me.EOF = 0) Then
  loc_10D6DD9:       Set var_E8 = Me.Txt
  loc_10D6DDF:       Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(Me.Fields.Item("Name").Value))
  loc_10D6DE7:       var_EC.Text = arg_10
  loc_10D6E1A:       var_90 = Me.Fields.Item("Code")
  loc_10D6E38:       Set var_E8 = Me.Txt
  loc_10D6E3E:       Call 0.Method_Txt_Validate0 (Cancel, var_EC, CStr(var_90.Value))
  loc_10D6E46:       var_EC.Tag = arg_10
  loc_10D6E5F:     Else
  loc_10D6E6C:       Set var_8C = Me.Txt
  loc_10D6E72:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6E7A:       var_90.Text = vbNullString
  loc_10D6E93:       Set var_8C = Me.Txt
  loc_10D6E99:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_10D6EA1:       var_90.Tag = vbNullString
  loc_10D6EAD:     End If
  loc_10D6EAD:   End If
  loc_10D6EAD: End If
  loc_10D6EAD: Exit Sub
  loc_10D6EAE: ' Referenced from: 10D6BBC
  loc_10D6EAE: Proc_6_60_E62BC4(var_86)
  loc_10D6EB3: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E33CD4
  'Data Table: 4FFC84
  loc_E33CC8: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E33CCB:   Call DGCategory_UnknownEvent_9()
  loc_E33CD0: End If
  loc_E33CD0: Exit Sub
End Sub

Public Sub Day23RoomAvail() '11024EC
  'Data Table: 4FFC84
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_11021C0: On Error Goto loc_11024DD
  loc_11021DD: Call Proc_261_46_F86ED4(New)
  loc_11021F8: Set var_8C = Me.FGrid
  loc_1102214: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1102220:   Set var_A4 = var_8C 
  loc_110222F:   var_A4.AddNew var_B4, var_C4
  loc_1102259:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_11022B7:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_110231F:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(2)), CVar(CLng(var_86))))
  loc_110233D:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_1102387:     If (Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_11023B9:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_11023CE:     Else
  loc_1102440:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_1102462:     End If
  loc_1102465:   Next var_120 'Integer
  loc_110246A:   var_C4 = "*"
  loc_1102473:   var_B4 = "Mark"
  loc_110248F:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_11024A6:   var_A4.Update var_B4, var_C4
  loc_11024AD:   Set var_A4 = Nothing 
  loc_11024B4: Next var_A0 'Integer
  loc_11024D0: If (Me.RecordCount <= 0) Then
  loc_11024D8:   global_96 = 0
  loc_11024DB:   Exit Sub
  loc_11024DC: End If
  loc_11024DC: Exit Sub
  loc_11024DD: ' Referenced from: 11021C0
  loc_11024E5: Proc_6_60_E62BC4(0)
  loc_11024EA: Exit Sub
End Sub

Public Property Get OpenMode() 'E08F80
  'Data Table: 4FFC84
  loc_E08F79: OpenMode = global_108
End Sub

Public Property Let OpenMode(vNewValue) 'E01FF4
  'Data Table: 4FFC84
  loc_E01FEE: global_108 = vNewValue
  loc_E01FF1: Exit Sub
End Sub

Public Sub Proc_261_36_1036804
  'Data Table: 4FFC84
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_10365C6: Me.FGrid.Left = CVar(CDbl(0))
  loc_10365E1: Me.FGrid.Top = CVar(CDbl(495))
  loc_10365EE: var_88 = &H249
  loc_10365F5: Set var_B4 = Me.FGrid
  loc_103660C: global_52 = CStr(CLng(var_B4.BackColor))
  loc_1036622: var_B4.Cols = &H23
  loc_1036627: var_9C = 0
  loc_1036633: var_D8 = CVar(CLng(1)) 'Long
  loc_1036638: var_F8 = "SNo"
  loc_1036641: LateIdCallSt
  loc_103664C: var_9C = CVar(CLng(1)) 'Long
  loc_1036651: var_D8 = 0
  loc_103665D: LateIdCallSt
  loc_1036665: var_9C = 0
  loc_1036671: var_D8 = CVar(CLng(2)) 'Long
  loc_1036676: var_F8 = "Type"
  loc_103667F: LateIdCallSt
  loc_103668A: var_9C = CVar(CLng(2)) 'Long
  loc_1036695: var_D8 = CVar(CInt(1)) 'Integer
  loc_103669C: LateIdCallSt
  loc_10366A7: var_9C = CVar(CLng(2)) 'Long
  loc_10366B2: var_D8 = CVar(CInt(1)) 'Integer
  loc_10366B9: LateIdCallSt
  loc_10366C4: var_9C = CVar(CLng(2)) 'Long
  loc_10366C9: var_D8 = 0
  loc_10366D5: LateIdCallSt
  loc_10366DD: var_9C = 0
  loc_10366E9: var_D8 = CVar(CLng(3)) 'Long
  loc_10366EE: var_F8 = "Rate"
  loc_10366F7: LateIdCallSt
  loc_1036702: var_9C = CVar(CLng(3)) 'Long
  loc_103670D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1036714: LateIdCallSt
  loc_103671F: var_9C = CVar(CLng(3)) 'Long
  loc_103672A: var_D8 = CVar(CInt(7)) 'Integer
  loc_1036731: LateIdCallSt
  loc_103673C: var_9C = CVar(CLng(3)) 'Long
  loc_1036741: var_D8 = 0
  loc_103674D: LateIdCallSt
  loc_103675C: For var_10C = 5 To &H22: var_8A = var_10C 'Byte
  loc_1036762:   var_9C = 0
  loc_1036770:   var_D8 = CVar(CLng(var_8A)) 'Long
  loc_1036782:   var_C4 = CVar("Day" & CStr(var_8A)) 'String
  loc_1036789:   LateIdCallSt
  loc_103679C:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10367A7:   var_D8 = CVar(CInt(4)) 'Integer
  loc_10367AE:   LateIdCallSt
  loc_10367BB:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10367C6:   var_D8 = CVar(CInt(1)) 'Integer
  loc_10367CD:   LateIdCallSt
  loc_10367DA:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_10367E9:   LateIdCallSt
  loc_10367F4: Next var_10C 'Byte
  loc_10367FC: Set var_B4 = Nothing 
  loc_1036800: Exit Sub
End Sub

Public Sub Proc_261_37_13011EC
  'Data Table: 4FFC84
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_16C As Variant
  Dim var_228 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_218 As Variant
  Dim var_248 As Variant
  Dim var_340 As Variant
  loc_1300B73: If (CLng(Me.FGrid.Col) = 4) Then
  loc_1300B76:   Exit Sub
  loc_1300B77: End If
  loc_1300B8A: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300BA2: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1300BB1: var_108 = Me.FGrid.TextMatrix)
  loc_1300BC6: var_118 = CVar(CStr(var_108)) 'String
  loc_1300BF2: If (Left(var_118, 1) = "@") Then
  loc_1300C16:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_1300C26:   Exit Sub
  loc_1300C27: End If
  loc_1300C47: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_1300C6B:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1300C7B:   Exit Sub
  loc_1300C7C: End If
  loc_1300C9C: If (CLng(Me.FGrid.CellBackColor) = global_112) Then
  loc_1300CC0:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_1300CD0:   Exit Sub
  loc_1300CD1: End If
  loc_1300CE4: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300CFC: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1300D4C: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1300D70:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_1300D89:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300DA1:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1300DF1:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_1300DF4:       var_C4 = 1
  loc_1300E04:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_1300E37:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_1300E49:     Else
  loc_1300E49:       Exit For
  loc_1300E4C:     End If
  loc_1300E4F:   Next var_14C 'Integer
  loc_1300E54:   ' Referenced from: 1300E49
  loc_1300E57: Else
  loc_1300E57:   var_C4 = 1
  loc_1300E79:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_1300EAC:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_1300EC1: End If
  loc_1300ECD: If (global_108 = 1) Then
  loc_1300EE3:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300EEB:   var_E4 = CVar(CLng(1)) 'Long
  loc_1300F0B:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1300F27:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300F2F:   var_16C = CVar(CLng(2)) 'Long
  loc_1300F49:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1300F67:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300F6F:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1300F8F:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1300F9E:   Call unk_4FFD07.SEARCHBACKRoomNo
  loc_1300FCF: Else
  loc_1300FE2:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300FEA:   var_E4 = CVar(CLng(1)) 'Long
  loc_1301022:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130102A:   var_16C = CVar(CLng(2)) 'Long
  loc_1301058:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1301060:   var_1C4 = CVar(CLng(0)) 'Long
  loc_1301098:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13010B0:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1301119:   var_340 = Me.FGrid.TextMatrix)
  loc_1301179:   Proc_146_0_E7D9C8(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_13011D3: End If
  loc_13011E0: Me.var_340.Unload Me
  loc_13011E8: Exit Sub
End Sub

Public Sub Proc_261_38_E54E4C(arg_C) 'E54E4C
  'Data Table: 4FFC84
  Dim var_A0 As Long
  loc_E54E20: If (arg_C = 0) Then
  loc_E54E36:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54E3F: End If
  loc_E54E44: Proc_261_38_E54E4C = &HFF
End Sub

Public Sub Proc_261_39_E0AF18
  'Data Table: 4FFC84
  loc_E0AF11: Proc_261_39_E0AF18 = &HFF
End Sub

Public Sub Proc_261_40_F1CF7C
  'Data Table: 4FFC84
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_C8 As Variant
  loc_F1CE8A: Set var_8C = Me.Txt
  loc_F1CE90: Call 0.Method_Proc_261_40_F1CF7CC (var_8E, var_86)
  loc_F1CEA0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1CEB6:   Set var_8C = Me.Txt
  loc_F1CEBC:   Call 0.Method_Proc_261_40_F1CF7C0 (CInt(var_86), var_98)
  loc_F1CEC4:   var_98.Text = vbNullString
  loc_F1CEE0:   Set var_8C = Me.Txt
  loc_F1CEE6:   Call 0.Method_Proc_261_40_F1CF7C0 (CInt(var_86), var_98)
  loc_F1CEEE:   var_98.Tag = vbNullString
  loc_F1CEFD: Next var_92 'Byte
  loc_F1CF16: Me.FGrid.Rows = 1
  loc_F1CF3C: var_C8 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_F1CF44: Set var_98 = Me.FGrid
  loc_F1CF71: Me.FGrid.FixedRows = 1
  loc_F1CF79: Exit Sub
End Sub

Public Sub Proc_261_41_E7A0E4(arg_C) 'E7A0E4
  'Data Table: 4FFC84
  Dim var_98 As TextBox
  loc_E7A092: Set var_8C = Me.Txt
  loc_E7A098: Call 0.Method_Proc_261_41_E7A0E4C (var_8E, var_86)
  loc_E7A0A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A0BE:   Set var_8C = Me.Txt
  loc_E7A0C4:   Call 0.Method_Proc_261_41_E7A0E40 (CInt(var_86), var_98)
  loc_E7A0CC:   var_98.Enabled = arg_C
  loc_E7A0DB: Next var_92 'Byte
  loc_E7A0E1: Exit Sub
End Sub

Public Sub Proc_261_42_DFC9CC
  'Data Table: 4FFC84
  loc_DFC9C8: Exit Sub
End Sub

Public Sub Proc_261_43_15F6F1C(arg_C, arg_10) '15F6F1C
  'Data Table: 4FFC84
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_BA As Integer
  Dim var_BC As Integer
  Dim var_BE As Integer
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim unk_4FFC8A As Connection15
  Dim var_104 As String
  Dim var_12C As String
  Dim var_124 As Variant
  Dim var_170 As Variant
  Dim var_1A0 As Variant
  Dim var_180 As Variant
  Dim var_1E0 As Variant
  Dim var_B8 As Double
  Dim var_1F0 As Long
  Dim var_27C As Variant
  Dim var_EC As Variant
  Dim var_14C As Variant
  Dim var_190 As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_25C As Variant
  Dim var_29C As Variant
  Dim var_CC As Recordset15
  Dim var_1F4 As Variant
  Dim var_C8 As Integer
  Dim var_1B0 As Variant
  Dim var_C6 As Integer
  loc_15F5B57: Me.FGrid.FixedCols = 0
  loc_15F5B72: Me.FGrid.FixedRows = 1
  loc_15F5B8D: Me.FGrid.RowHeightMin = &H1F4
  loc_15F5B9E: Set var_F0 = Me.FGrid
  loc_15F5BA4: var_F0.Redraw = False
  loc_15F5BB2: If (arg_10 = 1) Then
  loc_15F5BB9:   var_BA = CInt(5)
  loc_15F5BC0:   var_BC = CInt(&H22)
  loc_15F5BC5:   var_BE = 1
  loc_15F5BCB:   var_8C = arg_C
  loc_15F5BD6:   var_94 = CDate((arg_C + CDbl(&H1E)))
  loc_15F5BDC: Else
  loc_15F5BE0:   var_BA = CInt(&H22)
  loc_15F5BE7:   var_BC = CInt(5)
  loc_15F5BEC:   var_BE = &HFF
  loc_15F5BF7:   var_8C = CDate((arg_C - CDbl(&H1D)))
  loc_15F5C02:   var_94 = CDate((arg_C + CDbl(1)))
  loc_15F5C05: End If
  loc_15F5C0A: var_C4 = CStr(var_8C)
  loc_15F5C15: If (arg_18 = vbNullString) Then
  loc_15F5C2C:   var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15F5C41:   var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F92078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} "
  loc_15F5C51:   Call Proc_261_44_F9F4A8(var_C4, var_104, var_100 & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0, var_94, var_8C)
  loc_15F5C5A:   var_10C = var_BE & var_104
  loc_15F5C68:   var_114 = var_10C & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or r.Type is Null) And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15F5C71:   unk_4FFC8A.Execute var_114, var_BC, var_BA
  loc_15F5C7C:   Set var_A0 = var_F0
  loc_15F5C9D: Else
  loc_15F5CB1:   var_F4 = "SHAPE {select R.Code as RoomNo,RC.Code as RoomCat,RC.Name as Category,RL.Rate2 as Rate from " & "(RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat) "
  loc_15F5CC6:   var_100 = var_F4 & "Left Join RateList RL on RC.Code=RL.RoomCat Where R.logsite_Code='" & MemVar_1F92078 & "' and R.Type='RO' And R.InclCount='Y' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****'  and R.Roomcat='"
  loc_15F5CE4:   Call Proc_261_44_F9F4A8(var_C4, var_10C, var_100 & arg_18 & "'  Order By R.Code} " & "APPEND ({SELECT Distinct r.Code as RoomNo, ", var_124, -1, var_F0)
  loc_15F5CFB:   var_12C = var_94 & var_10C & " FROM ((RoomMast R Left Join Booking B On B.OccRoom=R.Code) " & "Left Join GuestFolio GF on GF.BookingDocid=B.DociD)Left Join RoomOccDet RO on RO.Docid=GF.DocId Where (R.Type='RO' or R.Type is Null)  And R.InclCount='Y' Group By r.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_15F5D04:   unk_4FFC8A.Execute var_12C, var_8C, var_BE
  loc_15F5D0F:   Set var_A0 = var_F0
  loc_15F5D31: End If
  loc_15F5D37: CVarUnk
  loc_15F5D3C: VerifyVarObj
  loc_15F5D42: Set var_F0 = Me.FGrid
  loc_15F5D48: LateIdStAd
  loc_15F5D7D: For var_134 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_134 'Long
  loc_15F5D90:   For var_13C = 5 To &H22: var_A8 = var_13C 'Long
  loc_15F5DDA:     If (InStr(var_A8, CStr(Me.FGrid.TextMatrix)), "*", 0) <> 0) Then
  loc_15F5DEE:       Me.FGrid.Row = var_A4
  loc_15F5E07:       Me.FGrid.Col = var_A8
  loc_15F5E23:       Me.FGrid.CellBackColor = global_116
  loc_15F5E3E:       Me.FGrid.CellForeColor = 0
  loc_15F5E56:       Me.FGrid.CellFontName = "Arial"
  loc_15F5E70:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15F5ED7:       var_1A0 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_15F5EF3:       var_1E0 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_1A0))) 'String
  loc_15F5EFB:       Set var_1F4 = Me.FGrid
  loc_15F5F01:       LateIdCallSt
  loc_15F5F27:     Else
  loc_15F5F5B:       If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_15F5F6F:         Me.FGrid.Row = var_A4
  loc_15F5F88:         Me.FGrid.Col = var_A8
  loc_15F5FA4:         Me.FGrid.CellBackColor = global_112
  loc_15F5FC0:         Me.FGrid.CellForeColor = global_124
  loc_15F5FD8:         Me.FGrid.CellFontName = "Arial"
  loc_15F5FF2:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_15F5FFA:       End If
  loc_15F5FFA:     End If
  loc_15F5FFD:   Next var_13C 'Long
  loc_15F6005: Next var_134 'Long
  loc_15F6019: For var_1FC = CLng(var_BA) To CLng(var_BC) Step CLng(var_BE): var_A4 = var_1FC 'Long
  loc_15F6027:   If (var_A4 = CLng(var_BA)) Then
  loc_15F602D:     var_B8 = arg_C
  loc_15F6033:   Else
  loc_15F604F:     var_B8 = CDate(DateAdd("d", CDbl(arg_10), CDate(var_B8)))
  loc_15F6059:   End If
  loc_15F6059:   var_1F0 = 1
  loc_15F606B:   var_27C = CVar((var_A4 - 4)) 'Long
  loc_15F6088:   var_124 = CDate(var_B8)
  loc_15F609C:   var_1A0 = (Format(var_124, "DDD") + vbCr)
  loc_15F60C0:   var_1E0 = Format(var_B8, "dd/MM")
  loc_15F60C8:   var_20C = (1 + var_1E0)
  loc_15F60DC:   var_22C = (var_20C + Space(5))
  loc_15F6108:   var_25C = (1 + Format(var_B8, "dd/MMM/yy"))
  loc_15F610D:   var_29C = CVar(CStr(var_25C)) 'String
  loc_15F6115:   Set var_F0 = Me.FGrid
  loc_15F611B:   LateIdCallSt
  loc_15F614C:   var_DC = CVar((var_A4 - 4)) 'Long
  loc_15F6151:   var_14C = 1
  loc_15F615A:   var_190 = &H1F4
  loc_15F6167:   Set var_F0 = Me.FGrid
  loc_15F616D:   LateIdCallSt
  loc_15F617B: Next var_1FC 'Long
  loc_15F6194: var_F4 = "Select RoomNO as RoomCode,ChkinDt as FromDate ,dATEdiff(D,ChkInDt,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt) as TODate From RoomOccDet left join GuestProf on GuestProf.Code=RoomOccDet.GuestProf Where RoomOccDet.Logsite_Code='" & MemVar_1F92078
  loc_15F61A9: Proc_6_7_F25D88(var_124, var_8C, CVar(var_F4 & "' and ChkOutDate is NULL And dateadd(D,dATEdiff(D,ChkInDt,DepDate),chkindt)>="))
  loc_15F61BF: unk_4FFC8A.Execute CStr(var_1A0 & var_124), -1, var_F0
  loc_15F61CA: Set var_CC = var_F0
  loc_15F61F6: If (var_CC.RecordCount > 0) Then
  loc_15F61F9:   ' Referenced from: 15F6579
  loc_15F6208:   If Not(var_CC.EOF) Then
  loc_15F6232:     For var_2BC = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2BC 'Long
  loc_15F623F:       var_EC = 0
  loc_15F629F:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F62DC:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F6342:           var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F6347:           var_C8 = CInt(var_1A0)
  loc_15F635D:         Else
  loc_15F63A5:           var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F63AA:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F63B7:         End If
  loc_15F63C3:         For var_2C8 = 0 To CLng(var_C8): var_A8 = var_2C8 'Long
  loc_15F6403:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F644E:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F6457:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F6462:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F6467:             var_C6 = CInt("dd/MM")
  loc_15F647D:           Else
  loc_15F6487:             var_C6 = CInt((5 + var_A8))
  loc_15F648A:           End If
  loc_15F6490:           If (var_C6 > &H22) Then
  loc_15F6493:             GoTo loc_15F6569
  loc_15F6496:           End If
  loc_15F64A9:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F64C2:           Me.FGrid.Row = var_A4
  loc_15F64DE:           Me.FGrid.CellBackColor = global_116
  loc_15F6505:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15F651C:           Me.FGrid.Text = CVar(Proc_6_38_E68A98(var_124, var_C6, var_C6, 0, var_C8))
  loc_15F653F:           Me.FGrid.CellFontName = "Arial"
  loc_15F6553:           Set var_F0 = Me.FGrid
  loc_15F6559:           var_F0.CellFontSize = CVar(CDbl(8))
  loc_15F6564:         Next var_2C8 'Long
  loc_15F6569:         ' Referenced from: 15F6493
  loc_15F6569:       End If
  loc_15F656C:     Next var_2BC 'Long
  loc_15F6574:     var_CC.MoveNext
  loc_15F6579:     GoTo loc_15F61F9
  loc_15F657C:   End If
  loc_15F657C: End If
  loc_15F6599: Proc_6_7_F25D88(var_124, var_8C, "Select RoomCode,FromDate ,dATEdiff(D,")
  loc_15F65B9: Proc_6_7_F25D88(var_1A0, var_8C, var_1E0 & var_124 & ",Todate) as Days,Reasons,todate From RoomBlockOut Where Type='O' and ToDate>=")
  loc_15F65C1: var_1B0 = -1 & var_1A0 
  loc_15F65CF: unk_4FFC8A.Execute CStr("dd/MM"), var_F0, 
  loc_15F65DA: Set var_CC = var_F0
  loc_15F6606: If (var_CC.RecordCount > 0) Then
  loc_15F6609:   ' Referenced from: 15F699C
  loc_15F6618:   If Not(var_CC.EOF) Then
  loc_15F6642:     For var_2D0 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2D0 'Long
  loc_15F664F:       var_EC = 0
  loc_15F66AF:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F66EC:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F674E:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F6764:         Else
  loc_15F67A8:           var_C8 = CInt(DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F67B5:         End If
  loc_15F67C1:         For var_2D8 = 0 To CLng(var_C8): var_A8 = var_2D8 'Long
  loc_15F6801:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F684C:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F6855:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F6860:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F6865:             var_C6 = CInt("dd/MM")
  loc_15F687B:           Else
  loc_15F6885:             var_C6 = CInt((5 + var_A8))
  loc_15F6888:           End If
  loc_15F688E:           If (var_C6 > &H22) Then
  loc_15F6891:             GoTo loc_15F698C
  loc_15F6894:           End If
  loc_15F68A7:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F68C0:           Me.FGrid.Row = var_A4
  loc_15F68DC:           Me.FGrid.CellBackColor = global_120
  loc_15F68F7:           Me.FGrid.CellForeColor = &HFFFF
  loc_15F690F:           Me.FGrid.CellFontName = "Webdings"
  loc_15F6939:           var_124 = CVar(var_CC.Fields.Item("Reasons")) 'Address
  loc_15F6954:           Me.FGrid.Text = CVar(var_C8 & Proc_6_38_E68A98(var_124, "@  ", var_C6, var_C6, 0))
  loc_15F6976:           Set var_F0 = Me.FGrid
  loc_15F697C:           var_F0.CellFontSize = CVar(CDbl(&H14))
  loc_15F6987:         Next var_2D8 'Long
  loc_15F698C:         ' Referenced from: 15F6891
  loc_15F698C:       End If
  loc_15F698F:     Next var_2D0 'Long
  loc_15F6997:     var_CC.MoveNext
  loc_15F699C:     GoTo loc_15F6609
  loc_15F699F:   End If
  loc_15F699F: End If
  loc_15F69B3: var_F4 = "Select RoomNO as RoomCode,ArrDate as FromDate ,dATEdiff(D,ArrDate,DepDate) as Days,GuestProf.Name as Reasons,dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate) as TODate,IsNull(P.Advance,0) Advance From ViewBooking B left join GuestProf on GuestProf.Code=B.GuestProf LEFT JOIN (Select RefDocId,IsNull(Sum(AmtCr),0) Advance From PayCharge Where VType In ('ADRES','ARRES') And Logsite_Code='" & MemVar_1F92078
  loc_15F69C8: var_170 = CVar(var_F4 & "' Group By RefDocId) P ON B.DocId = P.RefDocId Where B.Cancel='N' And B.Logsite_Code='" & MemVar_1F92078 & "' And dateadd(D,dATEdiff(D,ArrDate,DepDate),ArrDate)>=") 'String
  loc_15F69D6: Proc_6_7_F25D88(var_124, var_8C, var_170)
  loc_15F69EC: unk_4FFC8A.Execute CStr(var_1A0 & var_124), -1, var_F0
  loc_15F69F7: Set var_CC = var_F0
  loc_15F6A27: If (var_CC.RecordCount > 0) Then
  loc_15F6A2A:   ' Referenced from: 15F6E1E
  loc_15F6A39:   If Not(var_CC.EOF) Then
  loc_15F6A63:     For var_2E0 = 1 To (CLng(Me.FGrid.Rows) - 1): var_A4 = var_2E0 'Long
  loc_15F6A70:       var_EC = 0
  loc_15F6AD0:       If (CVar(CStr(Me.FGrid.TextMatrix))) = var_CC.Fields.Item("RoomCode").Value) Then
  loc_15F6B0D:         If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F6B73:           var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F6B78:           var_C8 = CInt(var_1A0)
  loc_15F6B8E:         Else
  loc_15F6BD6:           var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("ToDate")), 1, 1) - 1)
  loc_15F6BDB:           var_C8 = CInt(DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1))
  loc_15F6BE8:         End If
  loc_15F6BF4:         For var_2E8 = 0 To CLng(var_C8): var_A8 = var_2E8 'Long
  loc_15F6C34:           If (CDate(var_CC.Fields.Item("FromDate").Value) > var_8C) Then
  loc_15F6C7F:             var_180 = (DateDiff("d", var_8C, CVar(var_CC.Fields.Item("FromDate")), 1, 1) + 1)
  loc_15F6C88:             var_1A0 = (DateDiff("d", CVar(var_CC.Fields.Item("FromDate")), CVar(var_CC.Fields.Item("ToDate")), 1, 1) + 4)
  loc_15F6C93:             var_1B0 = (var_1A0 + CVar(var_A8))
  loc_15F6C98:             var_C6 = CInt("dd/MM")
  loc_15F6CAE:           Else
  loc_15F6CB8:             var_C6 = CInt((5 + var_A8))
  loc_15F6CBB:           End If
  loc_15F6CC1:           If (var_C6 > &H22) Then
  loc_15F6CC4:             GoTo loc_15F6E0E
  loc_15F6CC7:           End If
  loc_15F6CDA:           Me.FGrid.Col = CVar(CLng(var_C6))
  loc_15F6CF3:           Me.FGrid.Row = var_A4
  loc_15F6D0F:           Me.FGrid.CellBackColor = global_112
  loc_15F6D3F:           var_170 = CVar(Proc_6_38_E68A98(CVar(var_CC.Fields.Item("Reasons")), var_C6, var_C6, 0, var_C8)) 'String
  loc_15F6D4D:           Me.FGrid.Text = var_170
  loc_15F6D70:           Me.FGrid.CellFontName = "Arial"
  loc_15F6D8A:           Me.FGrid.CellFontSize = CVar(CDbl(&HA))
  loc_15F6DB8:           Proc_6_39_E7C810(var_170, CVar(var_CC.Fields.Item("Advance")), var_C8)
  loc_15F6DD2:           If (var_170 > 0) Then
  loc_15F6DE8:             Me.FGrid.CellForeColor = &HFF
  loc_15F6DFE:             Me.FGrid.CellFontBold = True
  loc_15F6E06:           End If
  loc_15F6E09:         Next var_2E8 'Long
  loc_15F6E0E:         ' Referenced from: 15F6CC4
  loc_15F6E0E:       End If
  loc_15F6E11:     Next var_2E0 'Long
  loc_15F6E19:     var_CC.MoveNext
  loc_15F6E1E:     GoTo loc_15F6A2A
  loc_15F6E21:   End If
  loc_15F6E21: End If
  loc_15F6E21: var_DC = 0
  loc_15F6E2A: var_14C = &H1F4
  loc_15F6E37: Set var_F0 = Me.FGrid
  loc_15F6E3D: LateIdCallSt
  loc_15F6E48: var_DC = 0
  loc_15F6E51: var_14C = 1
  loc_15F6E5A: var_190 = 0
  loc_15F6E67: Set var_F0 = Me.FGrid
  loc_15F6E6D: LateIdCallSt
  loc_15F6E8B: Me.FGrid.FixedCols = 4
  loc_15F6EA6: Me.FGrid.Col = 5
  loc_15F6EC1: Me.FGrid.Row = 1
  loc_15F6EC9: var_DC = 0
  loc_15F6ED2: var_14C = False
  loc_15F6EDB: Set var_F0 = Me.FGrid
  loc_15F6EE1: LateIdCallSt
  loc_15F6EFA: Me.FGrid.Redraw = True
  loc_15F6F07: Set var_98 = Nothing
  loc_15F6F0F: Set var_A0 = Nothing
  loc_15F6F17: Set var_9C = Nothing
  loc_15F6F1A: Exit Sub
End Sub

Public Sub Proc_261_44_F9F4A8(arg_C) 'F9F4A8
  'Data Table: 4FFC84
  Dim var_B4 As Variant
  Dim var_F4 As String
  Dim var_124 As Date
  Dim var_164 As Variant
  Dim var_184 As Date
  Dim var_1B4 As String
  Dim var_1E4 As Date
  Dim var_20C As String
  loc_F9F379: For var_94 = 0 To &H1D: var_8A = var_94 'Integer
  loc_F9F394:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9F39B:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_F9F3A7:   var_F4 = " and B.ArrDate+B.NoDays-1>="
  loc_F9F3BB:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9F3C2:   Proc_6_7_F25D88(var_134, var_124)
  loc_F9F3D3:   var_164 = CVar(var_88 & "Max(Case When RO.ChkInDt is null Then Case When B.ArrDate<=") & var_C4 & var_F4 & var_134 & " Then B.GuestName Else '' End Else Case When Ro.ChkInDt<=" 
  loc_F9F3E2:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9F3E9:   Proc_6_7_F25D88(var_194, var_184)
  loc_F9F3F5:   var_1B4 = " and RO.DEPDATE-1>="
  loc_F9F409:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_F9F410:   Proc_6_7_F25D88(var_1F4, var_1E4)
  loc_F9F428:   var_20C = " Then case RO.tYPE When 'O' then ''Else B.GuestName +'#*' end Else '' End End ) as Day" & CStr(var_8A)
  loc_F9F437:   var_88 = CStr(var_164 & var_194 & var_1B4 & var_1F4 & CVar(var_20C & ","))
  loc_F9F46B: Next var_94 'Integer
  loc_F9F47A: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_F9F497: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_F9F4A1: Proc_261_44_F9F4A8 = 
End Sub

Public Sub Proc_261_45_16B3224
  'Data Table: 4FFC84
  Dim var_100 As String
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_86 As Variant
  Dim var_118 As TextBox
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_28C As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_2D0 As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_358 As Variant
  Dim var_368 As Variant
  Dim var_388 As Variant
  Dim var_39C As Variant
  Dim var_3AC As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_3F0 As Variant
  Dim var_410 As Variant
  Dim var_424 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_468 As Variant
  Dim var_478 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_4BC As Variant
  Dim var_4DC As Variant
  Dim var_4F0 As Variant
  Dim var_500 As Variant
  Dim var_520 As Variant
  Dim var_534 As Variant
  Dim var_544 As Variant
  Dim var_564 As Variant
  Dim var_588 As Variant
  Dim var_5A8 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_610 As Variant
  Dim var_630 As Variant
  Dim var_654 As Variant
  Dim var_674 As Variant
  Dim var_698 As Variant
  Dim var_6B8 As Variant
  Dim var_6DC As Variant
  Dim var_6FC As Variant
  Dim var_720 As Variant
  Dim var_740 As Variant
  Dim var_114 As Variant
  Dim var_748 As String
  Dim var_768 As String
  Dim var_788 As String
  Dim var_964 As String
  Dim var_994 As String
  Dim var_9C4 As String
  Dim var_9F4 As String
  Dim var_A34 As String
  Dim var_A64 As String
  Dim var_A94 As String
  Dim var_AC4 As String
  Dim var_AFC As String
  loc_16B1CC8: On Error Goto loc_16B321E
  loc_16B1CCD: Close 1
  loc_16B1CD6: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_16B1D08: var_A0 = Replace(CStr(Space(&H82)), " ", MemVar_1F923CC, 1, -1, 0)
  loc_16B1D13: var_88 = 1
  loc_16B1D2D: If (Me.RecordCount > 0) Then
  loc_16B1D36:   Me.MoveFirst
  loc_16B1D3B:   ' Referenced from: 16B3164
  loc_16B1D4D:   If Not(Me.EOF) Then
  loc_16B1D56:     If (var_86 = 0) Then
  loc_16B1D69:       var_86 = Proc_6_129_12B6C1C(var_88, var_86)
  loc_16B1D74:       var_100 = "B"
  loc_16B1D90:       Print 1, Proc_6_128_10272A8(global_88, var_100, &H50)
  loc_16B1DAD:       Set var_114 = Me.Txt
  loc_16B1DB3:       Call 0.Method_Proc_261_45_16B32240 (CInt(0), var_118, var_100)
  loc_16B1DBB:       var_86 = var_118.Text
  loc_16B1DCC:       Print 1, "From Date " & var_100
  loc_16B1DE5:       Print 1, "* = OUT OF ORDER"
  loc_16B1E01:       var_128 = (Chr(&HF) + CVar(var_A0))
  loc_16B1E07:       Print 1, var_128
  loc_16B1E1B:       For var_12C = 1 To &H17: var_A4 = var_12C 'Integer
  loc_16B1E2C:         Set var_114 = Me.Txt
  loc_16B1E32:         Call 0.Method_Proc_261_45_16B32240 (CInt(0), var_118, 1)
  loc_16B1E4C:         var_128 = DateAdd("d", CDbl((var_A4 - 1)), CVar(var_118))
  loc_16B1E59:         global_80 = CDate(var_128)
  loc_16B1EA7:         var_BC(CLng(var_A4)) = CStr(Ucase(Format(global_80, "DDD")))
  loc_16B1EF4:         var_14C = Space((2 - Len(CStr(Day(global_80)))))
  loc_16B1EFC:         var_16C = (CVar(CStr(Day(global_80))) + Ucase(Format(global_80, "DDD")))
  loc_16B1F2E:         var_1BC = Space((2 - Len(CStr(Month(global_80)))))
  loc_16B1F51:         var_1FC = (var_1BC + CVar(CStr(Month(global_80))))
  loc_16B1F64:         var_D8(CLng(var_A4)) = CStr(var_16C & vbNullString & var_1FC)
  loc_16B1F94:       Next var_12C 'Integer
  loc_16B21A8:       var_128 = (Space(&HA) + "|")
  loc_16B21B2:       var_15C = (Day(global_80) + CVar(Proc_6_45_EAD428(var_BC(1))))
  loc_16B21BB:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B21C5:       var_1AC = (var_16C + CVar(Proc_6_45_EAD428(var_BC(2), 4)))
  loc_16B21CE:       var_1BC = (Month(global_80) + "|")
  loc_16B21D8:       var_1EC = (var_1BC + CVar(Proc_6_45_EAD428(var_BC(3), 4)))
  loc_16B21E1:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B21EB:       var_224 = (var_1FC + CVar(Proc_6_45_EAD428(var_BC(4), 4)))
  loc_16B21F4:       var_234 = (var_224 + "|")
  loc_16B21FE:       var_258 = (var_234 + CVar(Proc_6_45_EAD428(var_BC(5), 4)))
  loc_16B2207:       var_278 = (var_258 + "|")
  loc_16B2211:       var_29C = (var_278 + CVar(Proc_6_45_EAD428(var_BC(6), 4)))
  loc_16B221A:       var_2BC = (var_29C + "|")
  loc_16B2224:       var_2E0 = (var_2BC + CVar(Proc_6_45_EAD428(var_BC(7), 4)))
  loc_16B222D:       var_300 = (var_2E0 + "|")
  loc_16B2237:       var_324 = (var_300 + CVar(Proc_6_45_EAD428(var_BC(8), 4)))
  loc_16B2240:       var_344 = (var_324 + "|")
  loc_16B224A:       var_368 = (var_344 + CVar(Proc_6_45_EAD428(var_BC(9), 4)))
  loc_16B2253:       var_388 = (var_368 + "|")
  loc_16B225D:       var_3AC = (var_388 + CVar(Proc_6_45_EAD428(var_BC(&HA), 4)))
  loc_16B2266:       var_3CC = (var_3AC + "|")
  loc_16B2270:       var_3F0 = (var_3CC + CVar(Proc_6_45_EAD428(var_BC(&HB), 4)))
  loc_16B2279:       var_410 = (var_3F0 + "|")
  loc_16B2283:       var_434 = (var_410 + CVar(Proc_6_45_EAD428(var_BC(&HC), 4)))
  loc_16B228C:       var_454 = (var_434 + "|")
  loc_16B2296:       var_478 = (var_454 + CVar(Proc_6_45_EAD428(var_BC(&HD), 4)))
  loc_16B229F:       var_498 = (var_478 + "|")
  loc_16B22A9:       var_4BC = (var_498 + CVar(Proc_6_45_EAD428(var_BC(&HE), 4)))
  loc_16B22B2:       var_4DC = (var_4BC + "|")
  loc_16B22BC:       var_500 = (var_4DC + CVar(Proc_6_45_EAD428(var_BC(&HF), 4)))
  loc_16B22C5:       var_520 = (var_500 + "|")
  loc_16B22CF:       var_544 = (var_520 + CVar(Proc_6_45_EAD428(var_BC(&H10), 4)))
  loc_16B22D8:       var_564 = (var_544 + "|")
  loc_16B22E2:       var_588 = (var_564 + CVar(Proc_6_45_EAD428(var_BC(&H11), 4)))
  loc_16B22EB:       var_5A8 = (var_588 + "|")
  loc_16B22F5:       var_5CC = (var_5A8 + CVar(Proc_6_45_EAD428(var_BC(&H12), 4)))
  loc_16B22FE:       var_5EC = (var_5CC + "|")
  loc_16B2308:       var_610 = (var_5EC + CVar(Proc_6_45_EAD428(var_BC(&H13), 4)))
  loc_16B2311:       var_630 = (var_610 + "|")
  loc_16B231B:       var_654 = (var_630 + CVar(Proc_6_45_EAD428(var_BC(&H14), 4)))
  loc_16B2324:       var_674 = (var_654 + "|")
  loc_16B232E:       var_698 = (var_674 + CVar(Proc_6_45_EAD428(var_BC(&H15), 4)))
  loc_16B2337:       var_6B8 = (var_698 + "|")
  loc_16B2341:       var_6DC = (var_6B8 + CVar(Proc_6_45_EAD428(var_BC(&H16), 4)))
  loc_16B234A:       var_6FC = (var_6DC + "|")
  loc_16B2354:       var_720 = (var_6FC + CVar(Proc_6_45_EAD428(var_BC(&H17), 4)))
  loc_16B235D:       var_740 = (var_720 + "|")
  loc_16B2363:       Print 1, var_740
  loc_16B2440:       var_128 = ("TYPE" + Space(6))
  loc_16B2449:       var_14C = (Day(global_80) + "|")
  loc_16B2459:       var_15C = (CVar(Proc_6_45_EAD428(var_BC(1))) + CVar(var_D8(1)))
  loc_16B2462:       var_16C = (CVar(CStr(Day(global_80))) + "|")
  loc_16B2472:       var_18C = (var_16C + CVar(var_D8(2)))
  loc_16B247B:       var_1AC = (CVar(Proc_6_45_EAD428(var_BC(2), 4)) + "|")
  loc_16B248B:       var_1BC = (Month(global_80) + CVar(var_D8(3)))
  loc_16B2494:       var_1DC = (var_1BC + "|")
  loc_16B24A4:       var_1EC = (CVar(Proc_6_45_EAD428(var_BC(3), 4)) + CVar(var_D8(4)))
  loc_16B24AD:       var_1FC = (CVar(CStr(Month(global_80))) + "|")
  loc_16B24BD:       var_20C = (var_1FC + CVar(var_D8(5)))
  loc_16B24C6:       var_224 = (CVar(Proc_6_45_EAD428(var_BC(4), 4)) + "|")
  loc_16B24D6:       var_234 = (var_224 + CVar(var_D8(6)))
  loc_16B24DF:       var_248 = (var_234 + "|")
  loc_16B24EF:       var_258 = (CVar(Proc_6_45_EAD428(var_BC(5), 4)) + CVar(var_D8(7)))
  loc_16B24F8:       var_278 = (var_258 + "|")
  loc_16B2508:       var_28C = (var_278 + CVar(var_D8(8)))
  loc_16B2511:       var_29C = (CVar(Proc_6_45_EAD428(var_BC(6), 4)) + "|")
  loc_16B2521:       var_2BC = (var_29C + CVar(var_D8(9)))
  loc_16B252A:       var_2D0 = (var_2BC + "|")
  loc_16B253A:       var_2E0 = (CVar(Proc_6_45_EAD428(var_BC(7), 4)) + CVar(var_D8(&HA)))
  loc_16B2543:       var_300 = (var_2E0 + "|")
  loc_16B2553:       var_314 = (var_300 + CVar(var_D8(&HB)))
  loc_16B255C:       var_324 = (CVar(Proc_6_45_EAD428(var_BC(8), 4)) + "|")
  loc_16B256C:       var_344 = (var_324 + CVar(var_D8(&HC)))
  loc_16B2575:       var_358 = (var_344 + "|")
  loc_16B2585:       var_368 = (CVar(Proc_6_45_EAD428(var_BC(9), 4)) + CVar(var_D8(&HD)))
  loc_16B258E:       var_388 = (var_368 + "|")
  loc_16B259E:       var_39C = (var_388 + CVar(var_D8(&HE)))
  loc_16B25A7:       var_3AC = (CVar(Proc_6_45_EAD428(var_BC(&HA), 4)) + "|")
  loc_16B25B7:       var_3CC = (var_3AC + CVar(var_D8(&HF)))
  loc_16B25C0:       var_3E0 = (var_3CC + "|")
  loc_16B25D0:       var_3F0 = (CVar(Proc_6_45_EAD428(var_BC(&HB), 4)) + CVar(var_D8(&H10)))
  loc_16B25D9:       var_410 = (var_3F0 + "|")
  loc_16B25E9:       var_424 = (var_410 + CVar(var_D8(&H11)))
  loc_16B25F2:       var_434 = (CVar(Proc_6_45_EAD428(var_BC(&HC), 4)) + "|")
  loc_16B2602:       var_454 = (var_434 + CVar(var_D8(&H12)))
  loc_16B260B:       var_468 = (var_454 + "|")
  loc_16B261B:       var_478 = (CVar(Proc_6_45_EAD428(var_BC(&HD), 4)) + CVar(var_D8(&H13)))
  loc_16B2624:       var_498 = (var_478 + "|")
  loc_16B2634:       var_4AC = (var_498 + CVar(var_D8(&H14)))
  loc_16B263D:       var_4BC = (CVar(Proc_6_45_EAD428(var_BC(&HE), 4)) + "|")
  loc_16B264D:       var_4DC = (var_4BC + CVar(var_D8(&H15)))
  loc_16B2656:       var_4F0 = (var_4DC + "|")
  loc_16B2666:       var_500 = (CVar(Proc_6_45_EAD428(var_BC(&HF), 4)) + CVar(var_D8(&H16)))
  loc_16B266F:       var_520 = (var_500 + "|")
  loc_16B267F:       var_534 = (var_520 + CVar(var_D8(&H17)))
  loc_16B2688:       var_544 = (CVar(Proc_6_45_EAD428(var_BC(&H10), 4)) + "|")
  loc_16B268E:       Print 1, var_544
  loc_16B26FE:       Print 1, var_A0
  loc_16B2704:     End If
  loc_16B270A:     var_86 = (var_86 + 7)
  loc_16B2732:     For var_914 = 3 To CInt((CLng(Me.FGrid.Rows) - 1)): var_A2 = var_914 'Integer
  loc_16B273E:       If (var_A2 = 3) Then
  loc_16B2741:         GoTo loc_16B315C
  loc_16B2744:       End If
  loc_16B2DC3:       var_748 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomNo")), 3), 5) & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(Me.Fields.Item("RoomCat")), var_86), 4)
  loc_16B2DE5:       var_768 = var_748 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day5"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day6"))), 4)
  loc_16B2E07:       var_788 = var_768 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day7"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day8"))), 4)
  loc_16B2E29:       var_964 = var_788 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day9"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day10"))), 4)
  loc_16B2E4B:       var_994 = var_964 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day11"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day12"))), 4)
  loc_16B2E6D:       var_9C4 = var_994 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day13"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day14"))), 4)
  loc_16B2E8F:       var_9F4 = var_9C4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day15"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day16"))), 4)
  loc_16B2EBE:       var_A34 = Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day18"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day19"))), 4)
  loc_16B2EE0:       var_A64 = var_A34 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day20"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day21"))), 4)
  loc_16B2F02:       var_A94 = var_A64 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day22"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day23"))), 4)
  loc_16B2F24:       var_AC4 = var_A94 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day24"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day25"))), 4)
  loc_16B2F46:       var_AFC = var_AC4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day26"))), 4) & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day27"))), 4)
  loc_16B2F56:       Print 1, var_9F4 & "|" & Proc_6_52_EAD4F4(Proc_6_38_E68A98(CVar(Me.Fields.Item("Day17"))), 4) & "|" & var_AFC & "|"
  loc_16B30F7:       var_86 = (var_86 + 1)
  loc_16B3100:       If (var_86 > &H3C) Then
  loc_16B3108:         Print 1, var_A0
  loc_16B3110:         var_86 = 0
  loc_16B3119:         var_88 = (var_88 + 1)
  loc_16B312E:         Print 1, Chr(&HC)
  loc_16B3137:       End If
  loc_16B313D:       Me.MoveNext
  loc_16B3156:       If (Me.EOF = &HFF) Then
  loc_16B3159:         GoTo loc_16B3164
  loc_16B315C:         ' Referenced from: 16B2741
  loc_16B315C:       End If
  loc_16B315F:     Next var_914 'Integer
  loc_16B3164:     ' Referenced from: 16B3159
  loc_16B3164:     GoTo loc_16B1D3B
  loc_16B3167:   End If
  loc_16B3167: End If
  loc_16B316C: Print 1, var_A0
  loc_16B3192: var_14C = (Chr(&H12) + Chr(&HC))
  loc_16B3198: Print 1, CVar(Me.Fields.Item("Day5"))
  loc_16B31A9: Close 1
  loc_16B31B2: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_16B31C2: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_16B31CD: Close 1
  loc_16B31D7: If (MemVar_1F923B8 = "Y") Then
  loc_16B31F3:   var_9C = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_16B31FD: Else
  loc_16B3216:   var_9C = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_16B321D: End If
  loc_16B321D: Exit Sub
  loc_16B321E: ' Referenced from: 16B1CC8
  loc_16B321E: Proc_6_60_E62BC4()
  loc_16B3223: Exit Sub
End Sub

Public Sub Proc_261_46_F86ED4(arg_C) 'F86ED4
  'Data Table: 4FFC84
  Dim var_90 As Recordset15
  loc_F86D7D: Set var_90 = arg_C 
  loc_F86DA5: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F86DD1: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F86DFD: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F86E0C: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F86E42:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F86E54: Next var_A8 'Integer
  loc_F86E7D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F86E8D: var_90.CursorType = 3
  loc_F86E9A: var_90.LockType = 3
  loc_F86EB9: var_90.Open var_A4, var_C0, -1
  loc_F86EC0: Set var_90 = Nothing 
  loc_F86EC7: Set var_88 = arg_C 
  loc_F86ECB: Proc_261_46_F86ED4 = -1
End Sub
