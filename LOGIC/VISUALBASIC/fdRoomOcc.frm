VERSION 5.00
Begin VB.Form fdRoomOcc
  Caption = "Reservation Look Up Room Wise"
  BackColor = &HE0E0E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11820
  ClientHeight = 7830
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7380
    Width = 11820
    Height = 450
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0C0C0&
    ForeColor = &H80000012&
    Left = 420
    Top = 780
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 1
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
  Begin MSHFlexGrid FGrid
    Left = -15
    Top = 675
    Width = 11820
    Height = 6270
    TabIndex = 0
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 0
    Top = 0
    Width = 16665
    Height = 670
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh Cmd
      Index = 1
      Left = 14520
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 16
    End
    Begin BtnEnh Cmd
      Index = 0
      Left = 11280
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 17
    End
    Begin BtnEnh BtnPrint
      Index = 0
      Left = 12360
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 18
    End
    Begin BtnEnh BtnPrint
      Index = 2
      Left = 13440
      Top = 0
      Width = 1080
      Height = 645
      TabIndex = 19
    End
    Begin Label lblTotalRoom
      Caption = "."
      Left = 135
      Top = 210
      Width = 60
      Height = 240
      TabIndex = 14
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Vacant "
      Index = 0
      ForeColor = &H0&
      Left = 7065
      Top = 210
      Width = 600
      Height = 240
      TabIndex = 13
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 6510
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 0
      BackColor = &HFF0000&
      ForeColor = &H80FFFF&
      Left = 3135
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Index = 1
      BackColor = &HFF&
      ForeColor = &HFFFFFF&
      Left = 4860
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Out Of Order"
      Index = 2
      ForeColor = &H0&
      Left = 5415
      Top = 210
      Width = 1005
      Height = 240
      TabIndex = 9
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Room Change"
      Index = 1
      ForeColor = &H0&
      Left = 3630
      Top = 210
      Width = 1155
      Height = 240
      TabIndex = 8
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 7755
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Guest In House"
      Index = 3
      ForeColor = &H0&
      Left = 8265
      Top = 210
      Width = 1305
      Height = 225
      TabIndex = 6
      Alignment = 2 'Center
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label1
      Caption = "Check Out"
      Index = 4
      ForeColor = &H0&
      Left = 10155
      Top = 210
      Width = 855
      Height = 240
      TabIndex = 5
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &HFFFFFF&
      Left = 9615
      Top = 210
      Width = 480
      Height = 270
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LBLRoomName
      ForeColor = &HC00000&
      Left = 30
      Top = 180
      Width = 11235
      Height = 330
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
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
  End
End

Attribute VB_Name = "fdRoomOcc"

Private global_100 As Integer
Private global_104 As Integer
Private global_60 As Integer
Private global_62 As Integer
Private global_132 As Long
Private global_124 As Long
Private global_128 As Long
Private global_120 As Long
Private global_116 As Long
Private global_112 As Long
Private global_144 As Double
Private global_152 As Double
Private global_140 As Integer

Public Sub BTNPRINT_UnknownEvent_9(Index As Integer) '12B7958
  'Data Table: 450B6C
  Dim unk_450B75 As Connection15
  Dim var_A8 As Variant
  Dim var_94 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_12C As Variant
  Dim var_10C As String
  Dim var_C4 As String
  Dim var_FC As Boolean
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  loc_12B7344: On Error Goto loc_12B7950
  loc_12B734C: global_100 = &HFF
  loc_12B7365: unk_450B75.Execute "Select * From FAEnviro", var_B8, -1
  loc_12B7370: Set var_94 = var_BC
  loc_12B7388: var_BC = var_94.Fields
  loc_12B73EC: var_13C = IIf((Proc_6_38_E68A98(CVar(var_BC.Item("daterfill")), var_BC) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_12B73F5: MemVar_1F923C0 = CStr(var_13C)
  loc_12B7489: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_12B7492: MemVar_1F923C4 = CStr(var_13C)
  loc_12B7526: var_13C = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_12B7567: var_C0 = var_94.Fields.Item("linefiller")
  loc_12B757E: var_D8 = "linefiller"
  loc_12B75A3: var_12C = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_D8)))) 'String
  loc_12B75A6: var_10C = "-"
  loc_12B75AB: var_11C = "M"
  loc_12B75BC: var_FC = (Proc_6_38_E68A98(CVar(var_C0), CStr(var_13C)) = vbNullString)
  loc_12B75CC: MemVar_1F923CC = CStr(IIf(var_FC, var_11C, var_12C))
  loc_12B75F3: global_92 = "23 Day Room Availability Forecast (Report)"
  loc_12B75FA: var_88 = "RoomHistory"
  loc_12B7603: var_A8 = global_92
  loc_12B761A: global_96 = CStr(Ucase(var_A8))
  loc_12B7636: If ((global_100 = 0) Or (var_88 = vbNullString)) Then
  loc_12B7639:   Exit Sub
  loc_12B763A: End If
  loc_12B763A: Call Day23RoomAvail()
  loc_12B7666: Set var_BC = global_108 
  loc_12B766D: CreateFieldDefFile(var_BC, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_12B769F: var_C4 = "\" & var_88
  loc_12B76B3: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C4 & ".RPT", var_A8, var_BC)
  loc_12B76BE: MemVar_1F921E4 = var_BC
  loc_12B76EA: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_D8)
  loc_12B76F2: Call 0.Method_arg_2C (var_FC, MemVar_1F923CC)
  loc_12B7700: Call 0.Method_arg_150 (global_100)
  loc_12B7716: Call 0.Method_arg_90 (var_BC, var_14C)
  loc_12B771E: Call 0.Method_arg_24 (var_8A)
  loc_12B772A: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_12B7743:   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B774B:   Call 0.Method_arg_20 (var_C0)
  loc_12B7753:   Call 0.Method_arg_30 (var_C4)
  loc_12B7769:   var_160 = Ucase(CVar(var_C4)) 'Variant
  loc_12B7799:   If (var_160 = Ucase("Title")) Then
  loc_12B77C0:     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B77C8:     Call 0.Method_arg_20 (var_C0)
  loc_12B77D0:     Call 0.Method_arg_38 ("'" & global_92 & "'")
  loc_12B77E6:   Else
  loc_12B7808:     If (var_160 = Ucase("Dater")) Then
  loc_12B782C:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B7834:       Call 0.Method_arg_20 (var_C0)
  loc_12B783C:       Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_12B7852:     Else
  loc_12B7874:       If (var_160 = Ucase("Pager")) Then
  loc_12B7898:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_12B78A0:         Call 0.Method_arg_20 (var_C0)
  loc_12B78A8:         Call 0.Method_arg_38 ("'" & MemVar_1F923C4 & "'")
  loc_12B78BB:       End If
  loc_12B78BB:     End If
  loc_12B78BB:   End If
  loc_12B78BE: Next var_150 'Integer
  loc_12B78C9: If (Index = 1) Then
  loc_12B78ED:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", var_11C, var_12C)
  loc_12B7900: Else
  loc_12B7905:   Set var_C0 = Nothing
  loc_12B791C:   Set var_BC = MemVar_1F921E4 
  loc_12B7928:   Proc_6_99_1483714(var_BC, Index, global_96)
  loc_12B7933:   MemVar_1F921E4 = var_BC
  loc_12B793E: End If
  loc_12B7943: global_104 = 0
  loc_12B794B: MemVar_1F921E4 = Nothing
  loc_12B794F: Exit Sub
  loc_12B7950: ' Referenced from: 12B7344
  loc_12B7950: Proc_6_60_E62BC4(global_104, &HFF)
  loc_12B7955: Exit Sub
End Sub

Public Sub Cmd_UnknownEvent_9(Index As Integer) 'E52034
  'Data Table: 450B6C
  Dim var_86 As Integer
  loc_E51FFF: var_86 = Index
  loc_E52008: If (var_86 = 0) Then
  loc_E5200B:   Call Proc_111_33_1493740(var_86)
  loc_E52013: Else
  loc_E52019:   If (var_86 = 1) Then
  loc_E52029:     Me.Global.Unload Me
  loc_E52031:   End If
  loc_E52031: End If
  loc_E52031: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E5CC34
  'Data Table: 450B6C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5CC03: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E5CC16: Set var_A8 = Me.TxtGrid
  loc_E5CC1C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E5CC24: var_AC.Visible = False
  loc_E5CC30: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'DFD700
  'Data Table: 450B6C
  loc_DFD6FC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E9EBC0
  'Data Table: 450B6C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9EB63: var_BC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_E9EB7B: var_DC = CVar(CLng(Me.FGrid.ColSel)) 'Long
  loc_E9EBA3: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9EBBE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '103E498
  'Data Table: 450B6C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim arg_C As Integer
  Dim var_EC As Long
  loc_103E24C: Set var_88 = Me.TopCtrl1
  loc_103E252: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_103E297: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_103E2A0:   Call Form_KeyDown(arg_C, arg_10)
  loc_103E2A5: End If
  loc_103E2A9: Set var_88 = Me.TopCtrl1
  loc_103E2AF: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_103E2C8: If (CStr() = "Browse") Then
  loc_103E2CB:   Exit Sub
  loc_103E2CC: End If
  loc_103E340: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_103E359:   Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_103E369:   var_9C = "+{Tab}"
  loc_103E36F:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_103E379:   arg_C = 0
  loc_103E37F: Else
  loc_103E389:   var_B0 = Me.FGrid.Rows
  loc_103E3D6:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_103E3EF:     Me.FGrid.CellBackColor = CVar(CLng(global_56))
  loc_103E405:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_103E40F:     arg_C = 0
  loc_103E412:   End If
  loc_103E412: End If
  loc_103E418: global_60 = arg_C
  loc_103E43E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_103E462: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_103E478:   var_EC = CLng(Me.FGrid.Col)
  loc_103E481: End If
  loc_103E487: If (arg_C = &HD) Then
  loc_103E48F:   global_62 = 0
  loc_103E492: End If
  loc_103E494: arg_C = 0
  loc_103E497: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0C2C0
  'Data Table: 450B6C
  loc_E0C2B1: Call FGrid_UnknownEvent_C()
  loc_E0C2BB: global_62 = 0
  loc_E0C2BE: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'E4CAE0
  'Data Table: 450B6C
  loc_E4CAD6: If (CLng(Index) = &HD) Then
  loc_E4CAD9:   Call Proc_111_29_130031C(CLng(Me.FGrid.Col))
  loc_E4CADE: End If
  loc_E4CADE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFD3C0
  'Data Table: 450B6C
  loc_DFD3BC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E9EA40
  'Data Table: 450B6C
  Dim var_BC As Variant
  Dim var_DC As Variant
  loc_E9E9E3: var_BC = CVar(CLng(Me.FGrid.RowSel)) 'Long
  loc_E9E9FB: var_DC = CVar(CLng(Me.FGrid.ColSel)) 'Long
  loc_E9EA23: Me.FGrid.ToolTipText = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_E9EA3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E39734
  'Data Table: 450B6C
  Dim var_8C As TextBox
  loc_E39717: Set var_88 = Me.TxtGrid
  loc_E3971D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E39725: var_8C.Visible = False
  loc_E39731: Exit Sub
  loc_E39732: Loop Until  'do at: E38B3A
End Sub

Private Sub Form_Load() '1042120
  'Data Table: 450B6C
  Dim var_8C As Label
  loc_1041EC2: Set var_88 = Me.Cmd
  loc_1041EC8: Call 0.Method_Form_Load0 (0, var_8C)
  loc_1041ED0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1041EEA: Set var_88 = Me.BtnPrint
  loc_1041EF0: Call 0.Method_Form_Load0 (0, var_8C)
  loc_1041EF8: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1041F12: Set var_88 = Me.BtnPrint
  loc_1041F18: Call 0.Method_Form_Load0 (2, var_8C)
  loc_1041F20: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1041F2C: On Error Goto loc_104211A
  loc_1041F37: global_132 = &HFF0000
  loc_1041F42: global_124 = &HFF
  loc_1041F4D: global_128 = &HFFFFFF
  loc_1041F58: global_120 = &HFF00
  loc_1041F63: global_116 = &HFDC293
  loc_1041F77: Set var_88 = Me.Label2
  loc_1041F7D: Call 0.Method_Form_Load0 (CInt(0), var_8C, global_132, global_116)
  loc_1041F85: var_8C.BackColor = global_120
  loc_1041FA1: Set var_88 = Me.Label2
  loc_1041FA7: Call 0.Method_Form_Load0 (CInt(0), var_8C, &HFFFFFF)
  loc_1041FAF: var_8C.ForeColor = global_128
  loc_1041FCC: Set var_88 = Me.Label2
  loc_1041FD2: Call 0.Method_Form_Load0 (CInt(1), var_8C, global_124)
  loc_1041FDA: var_8C.BackColor = global_124
  loc_1041FF6: Set var_88 = Me.Label2
  loc_1041FFC: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_1042004: var_8C.ForeColor = &HFFFFFF
  loc_1042021: Set var_88 = Me.Label2
  loc_1042027: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_104202F: var_8C.BackColor = global_128
  loc_104204B: Set var_88 = Me.Label2
  loc_1042051: Call 0.Method_Form_Load0 (CInt(2), var_8C)
  loc_1042059: var_8C.ForeColor = 0
  loc_1042076: Set var_88 = Me.Label2
  loc_104207C: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_1042084: var_8C.BackColor = global_120
  loc_10420A0: Set var_88 = Me.Label2
  loc_10420A6: Call 0.Method_Form_Load0 (CInt(3), var_8C)
  loc_10420AE: var_8C.ForeColor = 0
  loc_10420CB: Set var_88 = Me.Label2
  loc_10420D1: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_10420D9: var_8C.BackColor = global_116
  loc_10420F5: Set var_88 = Me.Label2
  loc_10420FB: Call 0.Method_Form_Load0 (CInt(4), var_8C)
  loc_1042103: var_8C.ForeColor = &HFF0000
  loc_1042115: MemVar_1F92124 = Me
  loc_1042119: Exit Sub
  loc_104211A: ' Referenced from: 1041F2C
  loc_104211A: Proc_6_60_E62BC4(global_132)
  loc_104211F: Exit Sub
End Sub

Private Sub Form_Resize() 'F29DE8
  'Data Table: 450B6C
  Dim var_98 As Variant
  loc_F29CE0: On Error Resume Next
  loc_F29CEB: Call 0.Method_arg_100 (var_88)
  loc_F29CF7: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_F29D06: Me.FGrid.Width = var_98
  loc_F29D16: Call 0.Method_arg_108 (var_88)
  loc_F29D23: var_98 = CVar((var_88 - CDbl(700))) 'Single
  loc_F29D32: Me.FGrid.Height = var_98
  loc_F29D67: var_98 = CVar((Me.Frame1.Top + Me.Frame1.Height)) 'Single
  loc_F29D76: Me.FGrid.Top = var_98
  loc_F29DA4: Me.Frame1.Left = CDbl(Me.FGrid.Left)
  loc_F29DD3: Me.Frame1.Width = CDbl(Me.FGrid.Width)
  loc_F29DE4: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0CE8C
  'Data Table: 450B6C
  loc_E0CE83: Set global_108 = Nothing
  loc_E0CE8A: Exit Sub
End Sub

Private Sub Form_Activate() 'E15FB4
  'Data Table: 450B6C
  Dim var_B01 As Double
  loc_E15FA0: Set var_88 = Me.FGrid
  loc_E15FB1: Exit Sub
  loc_E15FB2: var_B01 = FGrid.DispID_8001
End Sub

Private Sub Form_Deactivate() 'DFCEE0
  'Data Table: 450B6C
  loc_DFCEDC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E27108
  'Data Table: 450B6C
  loc_E270E0: On Error Goto loc_E27100
  loc_E270F7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E270FF: Exit Sub
  loc_E27100: ' Referenced from: E270E0
  loc_E27100: Proc_6_60_E62BC4(Shift)
  loc_E27105: Exit Sub
  loc_E27106: CExtInstUnk
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F08E98
  'Data Table: 450B6C
  Dim var_88 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F08DCE: Set var_88 = Me.TxtGrid
  loc_F08DD4: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F08DE2: Proc_6_74_E226B0(var_8C)
  loc_F08DFA: If (Index = 0) Then
  loc_F08E4F:   Set var_108 = Me.TxtGrid
  loc_F08E55:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid.TextMatrix)), CVar(CLng(Me.FGrid.Col)))
  loc_F08E5D:   var_10C.Tag = CVar(CLng(Me.FGrid.Row))
  loc_F08E8E:   var_114 = CLng(Me.FGrid.Col)
  loc_F08E97: End If
  loc_F08E97: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'EFFD68
  'Data Table: 450B6C
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_EFFCA0: If (KeyCode = 0) Then
  loc_EFFCAD:   If (CLng(Shift) = &H1B) Then
  loc_EFFCBD:     Set var_8C = Me.TxtGrid
  loc_EFFCC3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_EFFCDD:     Set var_98 = Me.TxtGrid
  loc_EFFCE3:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_EFFCEB:     var_9C.Text = var_90.Tag
  loc_EFFD07:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_EFFD10:     Set var_8C = Me.FGrid
  loc_EFFD2D:     Set var_8C = Me.TxtGrid
  loc_EFFD33:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_EFFD3B:     var_90.Visible = FGrid.DispID_8001
  loc_EFFD47:     Exit Sub
  loc_EFFD48:   End If
  loc_EFFD5B:   var_B0 = CLng(Me.FGrid.Col)
  loc_EFFD64: End If
  loc_EFFD64: Exit Sub
  loc_EFFD65: Set var_90 = var_B0
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E51538
  'Data Table: 450B6C
  Dim var_A0 As Long
  loc_E51507: Proc_6_58_E054C0(arg_10)
  loc_E51518: If (KeyAscii = 0) Then
  loc_E5152E:   var_A0 = CLng(Me.FGrid.Col)
  loc_E51537: End If
  loc_E51537: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E5497C
  'Data Table: 450B6C
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim MemVar_459977 As Integer
  loc_E54944: On Error Goto loc_E54973
  loc_E5494A: var_86 = KeyCode
  loc_E54953: If (var_86 = 0) Then
  loc_E54969:   var_A0 = CLng(Me.FGrid.Col)
  loc_E54972: End If
  loc_E54972: Exit Sub
  loc_E54973: ' Referenced from: E54944
  loc_E54973: Proc_6_60_E62BC4(var_A0)
  loc_E54978: Exit Sub
  loc_E54979: MemVar_459977 = var_86
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20E68
  'Data Table: 450B6C
  Dim arg_10 As Integer
  loc_E20E50: If (Cancel = 0) Then
  loc_E20E59:   Call Proc_111_30_E549EC(Cancel, var_88)
  loc_E20E62:   arg_10 = Not(var_88)
  loc_E20E65: End If
  loc_E20E65: Exit Sub
End Sub

Public Function global_52Get() '451528
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '451537
  global_52 = Value
End Sub

Public Sub Day23RoomAvail() '1101A54
  'Data Table: 450B6C
  Dim var_A4 As Recordset15
  Dim var_C4 As String
  Dim var_B4 As Variant
  Dim var_8C As Variant
  Dim Me As Variant
  loc_1101728: On Error Goto loc_1101A45
  loc_1101745: Call Proc_111_35_F88594(New)
  loc_1101760: Set var_8C = Me.FGrid
  loc_110177C: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_1101788:   Set var_A4 = var_8C 
  loc_1101797:   var_A4.AddNew var_B4, var_C4
  loc_11017C1:   var_A4.Fields.Item("mLine").Value = vbNullString
  loc_110181F:   var_A4.Fields.Item("RoomNo").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), 0, CVar(CLng(var_86))))
  loc_1101887:   var_A4.Fields.Item("RoomCat").Value = CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(var_86))))
  loc_11018A5:   For var_120 = 5 To &H1B: var_88 = var_120 'Integer
  loc_11018EF:     If (Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86))) = "@  RFF") Then
  loc_1101921:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = "***"
  loc_1101936:     Else
  loc_11019A8:       var_A4.Fields.Item(CVar("Day" & CStr(var_88))).Value = Left(CVar(Proc_6_38_E68A98(CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(var_88)), CVar(CLng(var_86)))), &HF)
  loc_11019CA:     End If
  loc_11019CD:   Next var_120 'Integer
  loc_11019D2:   var_C4 = "*"
  loc_11019DB:   var_B4 = "Mark"
  loc_11019F7:   var_A4.Fields.Item(var_B4).Value = var_C4
  loc_1101A0E:   var_A4.Update var_B4, var_C4
  loc_1101A15:   Set var_A4 = Nothing 
  loc_1101A1C: Next var_A0 'Integer
  loc_1101A38: If (Me.RecordCount <= 0) Then
  loc_1101A40:   global_100 = 0
  loc_1101A43:   Exit Sub
  loc_1101A44: End If
  loc_1101A44: Exit Sub
  loc_1101A45: ' Referenced from: 1101728
  loc_1101A4A: global_100 = 0
  loc_1101A4D: Proc_6_60_E62BC4(global_100)
  loc_1101A52: Exit Sub
  loc_1101A53: global_100() = 
End Sub

Public Property Get OpenMode() 'E09300
  'Data Table: 450B6C
  loc_E092F9: OpenMode = global_112
End Sub

Public Property Let OpenMode(vNewValue) 'E00C44
  'Data Table: 450B6C
  loc_E00C3E: global_112 = vNewValue
  loc_E00C41: Exit Sub
End Sub

Public Sub RetBack(mParamForm) 'EFA57C
  'Data Table: 450B6C
  Dim var_98 As Variant
  Dim var_B8 As Integer
  Dim var_E8 As Variant
  Dim var_10C As String
  loc_EFA4A3: Set var_88 = mParamForm 
  loc_EFA4A7: On Error Goto loc_EFA573
  loc_EFA4AA: var_98 = 0
  loc_EFA4B1: var_B8 = 1
  loc_EFA4CC: global_144 = CDate(var_88.FGrid.TextMatrix)
  loc_EFA4D6: var_98 = 1
  loc_EFA4DD: var_B8 = 1
  loc_EFA4F8: global_152 = CDate(var_88.FGrid.TextMatrix)
  loc_EFA51D: var_98 = global_144
  loc_EFA530: var_B8 = 1
  loc_EFA535: var_E8 = (DateDiff("d", var_98, global_152, 1, 1) + var_B8)
  loc_EFA53D: global_140 = CInt(var_88.FGrid.TextMatrix)
  loc_EFA559: ReDim Preserve global_136(0 To CLng(global_140))
  loc_EFA563: Call Proc_111_28_111B6F0(global_140, global_152, var_B8, var_98)
  loc_EFA56D: Call Cmd_UnknownEvent_9(0)
  loc_EFA572: Exit Sub
  loc_EFA573: ' Referenced from: EFA4A7
  loc_EFA573: Proc_6_60_E62BC4(global_144, var_B8)
  loc_EFA578: Exit Sub
  loc_EFA579: var_10C = var_98
End Sub

Public Sub Proc_111_28_111B6F0
  'Data Table: 450B6C
  Dim var_9C As Variant
  Dim var_88 As Long
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_111B3A2: Me.FGrid.Left = CVar(CDbl(0))
  loc_111B3D5: var_9C = CVar((Me.Frame1.Top + Me.Frame1.Height)) 'Single
  loc_111B3E4: Me.FGrid.Top = CVar(CDbl(0))
  loc_111B3F7: var_88 = &H249
  loc_111B3FE: Set var_C4 = Me.FGrid
  loc_111B415: global_56 = CStr(CLng(var_C4.BackColor))
  loc_111B429: var_9C = CVar(CLng((global_140 + 5))) 'Long
  loc_111B431: var_C4.Cols = CVar(CDbl(0))
  loc_111B436: var_9C = 0
  loc_111B442: var_E8 = CVar(CLng(1)) 'Long
  loc_111B447: var_108 = "SNo"
  loc_111B450: LateIdCallSt
  loc_111B45B: var_9C = CVar(CLng(1)) 'Long
  loc_111B460: var_E8 = 0
  loc_111B46C: LateIdCallSt
  loc_111B474: var_9C = 0
  loc_111B480: var_E8 = CVar(CLng(1)) 'Long
  loc_111B485: var_108 = "Room No"
  loc_111B48E: LateIdCallSt
  loc_111B499: var_9C = CVar(CLng(1)) 'Long
  loc_111B4A4: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B4AB: LateIdCallSt
  loc_111B4B6: var_9C = CVar(CLng(1)) 'Long
  loc_111B4C1: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B4C8: LateIdCallSt
  loc_111B4D3: var_9C = CVar(CLng(1)) 'Long
  loc_111B4D8: var_E8 = &H384
  loc_111B4E4: LateIdCallSt
  loc_111B4EC: var_9C = 0
  loc_111B4F8: var_E8 = CVar(CLng(2)) 'Long
  loc_111B4FD: var_108 = "Room No Code"
  loc_111B506: LateIdCallSt
  loc_111B511: var_9C = CVar(CLng(2)) 'Long
  loc_111B51C: var_E8 = CVar(CInt(1)) 'Integer
  loc_111B523: LateIdCallSt
  loc_111B52E: var_9C = CVar(CLng(2)) 'Long
  loc_111B533: var_E8 = 0
  loc_111B53F: LateIdCallSt
  loc_111B547: var_9C = 0
  loc_111B553: var_E8 = CVar(CLng(3)) 'Long
  loc_111B558: var_108 = "Category"
  loc_111B561: LateIdCallSt
  loc_111B56C: var_9C = CVar(CLng(3)) 'Long
  loc_111B577: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B57E: LateIdCallSt
  loc_111B589: var_9C = CVar(CLng(3)) 'Long
  loc_111B594: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B59B: LateIdCallSt
  loc_111B5A6: var_9C = CVar(CLng(3)) 'Long
  loc_111B5AB: var_E8 = &H3E8
  loc_111B5B7: LateIdCallSt
  loc_111B5BF: var_9C = 0
  loc_111B5CB: var_E8 = CVar(CLng(4)) 'Long
  loc_111B5D0: var_108 = "Rate"
  loc_111B5D9: LateIdCallSt
  loc_111B5E4: var_9C = CVar(CLng(4)) 'Long
  loc_111B5EF: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B5F6: LateIdCallSt
  loc_111B601: var_9C = CVar(CLng(4)) 'Long
  loc_111B60C: var_E8 = CVar(CInt(4)) 'Integer
  loc_111B613: LateIdCallSt
  loc_111B61E: var_9C = CVar(CLng(4)) 'Long
  loc_111B623: var_E8 = &H1F4
  loc_111B62F: LateIdCallSt
  loc_111B649: For var_11C = CByte(5) To CByte((global_140 + 4)): var_8A = var_11C 'Byte
  loc_111B64F:   var_9C = 0
  loc_111B65D:   var_E8 = CVar(CLng(var_8A)) 'Long
  loc_111B66F:   var_D4 = CVar("Day" & CStr(var_8A)) 'String
  loc_111B676:   LateIdCallSt
  loc_111B689:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111B694:   var_E8 = CVar(CInt(4)) 'Integer
  loc_111B69B:   LateIdCallSt
  loc_111B6A8:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111B6B3:   var_E8 = CVar(CInt(1)) 'Integer
  loc_111B6BA:   LateIdCallSt
  loc_111B6C7:   var_9C = CVar(CLng(var_8A)) 'Long
  loc_111B6D6:   LateIdCallSt
  loc_111B6E1: Next var_11C 'Byte
  loc_111B6E9: Set var_C4 = Nothing 
  loc_111B6ED: Exit Sub
End Sub

Public Sub Proc_111_29_130031C
  'Data Table: 450B6C
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
  loc_12FFCA3: If (CLng(Me.FGrid.Col) = 4) Then
  loc_12FFCA6:   Exit Sub
  loc_12FFCA7: End If
  loc_12FFCBA: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FFCD2: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12FFCE1: var_108 = Me.FGrid.TextMatrix)
  loc_12FFCF6: var_118 = CVar(CStr(var_108)) 'String
  loc_12FFD22: If (Left(var_118, 1) = "@") Then
  loc_12FFD46:   MsgBox("Selected Room is currently Out Of Order ", 0, "<<<<<<<<< Out Of Order >>>>>>>>>", var_108, var_118)
  loc_12FFD56:   Exit Sub
  loc_12FFD57: End If
  loc_12FFD77: If (CLng(Me.FGrid.CellBackColor) = global_120) Then
  loc_12FFD9B:   MsgBox("Selected Room is not Vacant ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_12FFDAB:   Exit Sub
  loc_12FFDAC: End If
  loc_12FFDCC: If (CLng(Me.FGrid.CellBackColor) = global_116) Then
  loc_12FFDF0:   MsgBox("Selected Room is Reserved ", 0, "<<<<<<<<< Room Is Not Vacant >>>>>>>>>", var_108, var_118)
  loc_12FFE00:   Exit Sub
  loc_12FFE01: End If
  loc_12FFE14: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FFE2C: var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12FFE7C: If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_12FFEA0:   For var_14C = CInt(CLng(Me.FGrid.Col)) To 5 Step &HFF: var_8A = var_14C 'Integer
  loc_12FFEB9:     var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12FFED1:     var_E4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12FFF21:     If (Right(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "#") Then
  loc_12FFF24:       var_C4 = 1
  loc_12FFF34:       var_E4 = CVar(CLng((var_8A - 4))) 'Long
  loc_12FFF67:       var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 8))
  loc_12FFF79:     Else
  loc_12FFF79:       Exit For
  loc_12FFF7C:     End If
  loc_12FFF7F:   Next var_14C 'Integer
  loc_12FFF84:   ' Referenced from: 12FFF79
  loc_12FFF87: Else
  loc_12FFF87:   var_C4 = 1
  loc_12FFFA9:   var_E4 = CVar((CLng(Me.FGrid.Col) - 4)) 'Long
  loc_12FFFDC:   var_88 = CStr(Right(CVar(CStr(Me.FGrid.ColHeaderCaption))), 9))
  loc_12FFFF1: End If
  loc_12FFFFD: If (global_112 = 1) Then
  loc_1300013:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130001B:   var_E4 = CVar(CLng(1)) 'Long
  loc_130003B:   var_118 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1300057:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130005F:   var_16C = CVar(CLng(3)) 'Long
  loc_1300079:   var_228 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1300097:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130009F:   var_1C4 = CVar(CLng(0)) 'Long
  loc_13000BF:   var_208 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_13000CE:   Call unk_450BA8.SEARCHBACKRoomNo
  loc_13000FF: Else
  loc_1300112:   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130011A:   var_E4 = CVar(CLng(1)) 'Long
  loc_1300152:   var_138 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130015A:   var_16C = CVar(CLng(3)) 'Long
  loc_1300188:   var_1A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1300190:   var_1C4 = CVar(CLng(0)) 'Long
  loc_13001C8:   var_218 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13001E0:   var_248 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1300249:   var_340 = Me.FGrid.TextMatrix)
  loc_13002A9:   Proc_146_0_E7D9C8(1, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(Me.FGrid.TextMatrix)), var_88, CStr(Trim(CVar(CStr(Me.FGrid.TextMatrix))))), CStr(IIf((Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) = "@"), vbNullString, CVar(CStr(var_340)))), CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_1300303: End If
  loc_1300310: Me.var_340.Unload Me
  loc_1300318: Exit Sub
End Sub

Public Sub Proc_111_30_E549EC(arg_C) 'E549EC
  'Data Table: 450B6C
  Dim var_A0 As Long
  loc_E549C0: If (arg_C = 0) Then
  loc_E549D6:   var_A0 = CLng(Me.FGrid.Col)
  loc_E549DF: End If
  loc_E549E4: Proc_111_30_E549EC = &HFF
  loc_E549EA: Loop Until var_A0 'do at: E53E87
End Sub

Public Sub Proc_111_31_E0B974
  'Data Table: 450B6C
  loc_E0B96D: Proc_111_31_E0B974 = &HFF
End Sub

Public Sub Proc_111_32_E936F8
  'Data Table: 450B6C
  Dim var_BC As Variant
  loc_E93693: Me.FGrid.Rows = 1
  loc_E936B9: var_BC = CVar(CStr(Proc_6_127_F24F80(Me.FGrid))) 'String
  loc_E936C1: Set var_C0 = Me.FGrid
  loc_E936EE: Me.FGrid.FixedRows = 1
  loc_E936F6: Exit Sub
End Sub

Public Sub Proc_111_33_1493740
  'Data Table: 450B6C
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_AA As Integer
  Dim var_AC As Integer
  Dim var_FC As String
  Dim unk_450B75 As Connection15
  Dim var_10C As Variant
  Dim var_F4 As String
  Dim var_C4 As Integer
  Dim var_140 As Variant
  Dim var_1B4 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_1C8 As Variant
  Dim var_C6 As Integer
  Dim var_CA As Integer
  Dim var_C2 As Integer
  Dim var_C8 As Integer
  Dim var_98 As Long
  Dim var_A8 As Double
  Dim var_1D8 As Long
  Dim var_260 As Variant
  Dim var_12C As Variant
  Dim var_180 As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_240 As Variant
  Dim var_280 As Variant
  loc_1492AFB: Me.FGrid.FixedCols = 0
  loc_1492B16: Me.FGrid.FixedRows = 1
  loc_1492B31: Me.FGrid.RowHeightMin = &H1F4
  loc_1492B42: Set var_F0 = Me.FGrid
  loc_1492B48: var_F0.Redraw = False
  loc_1492B52: var_AA = 5
  loc_1492B5B: var_AC = global_140
  loc_1492B84: Call Proc_111_34_1100814(CStr(global_144), var_F4, "SHAPE {select R.Code as RoomNo,RC.Name as Category,RC.Code as RoomCat,RL.Rate2 as Rate from (RoomMast R left Join RoomCat RC on RC.Code=R.RoomCat)Left Join RateList RL on RC.Code=RL.RoomCat Where R.Type='RO' And RL.OccType='Single' And RL.Code='*' And RL.RoomNo='*****' Order By R.Code} APPEND ({SELECT Distinct Max(R.Code) as RoomNo, ", var_10C, -1)
  loc_1492B94: var_FC = var_F0 & var_F4 & " FROM (((RoomMast R Left Join RoomOcc RO on R.Code=RO.RoomNo) Left Join RoomBlockOut RB ON R.Code=RB.RoomCode) Left Join GuestFolio GF on RO.Docid=GF.DocId) Where IsNull(R.Type,'') In ('RO','') Group By R.Code} RELATE RoomNo TO RoomNo) AS AA"
  loc_1492B9D: unk_450B75.Execute var_FC, 1, var_AC
  loc_1492BA8: Set var_90 = var_F0
  loc_1492BC0: CVarUnk
  loc_1492BC5: VerifyVarObj
  loc_1492BCB: Set var_F0 = Me.FGrid
  loc_1492BD1: LateIdStAd
  loc_1492C06: For var_114 = 1 To (CLng(Me.FGrid.Rows) - 1): var_94 = var_114 'Long
  loc_1492C1E:   For var_11C = 5 To CLng((global_140 + 4)): var_98 = var_11C 'Long
  loc_1492C68:     If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "#*", 0) <> 0) Then
  loc_1492C71:       var_C4 = (var_C4 + 1)
  loc_1492C85:       Me.FGrid.Row = var_94
  loc_1492C9E:       Me.FGrid.Col = var_98
  loc_1492CBE:       var_10C = Me.FGrid.TextMatrix)
  loc_1492CEA:       Set var_140 = Me.FGrid
  loc_1492D0F:       var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1492D26:       LateIdCallSt
  loc_1492D55:       Set var_F0 = Me.Label2
  loc_1492D5B:       Call 0.Method_Proc_111_33_14937400 (CInt(3), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_1492D63:       var_98 = var_140.BackColor
  loc_1492D7A:       Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_1492D96:       Set var_F0 = Me.Label2
  loc_1492D9C:       Call 0.Method_Proc_111_33_14937400 (CInt(3), var_140, var_1B8, var_94, var_10C)
  loc_1492DA4:       var_98 = var_140.ForeColor
  loc_1492DBB:       Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1492DD9:       Me.FGrid.CellFontName = "Arial Narrow"
  loc_1492DF3:       Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1492E5A:       var_170 = CVar((Len(CStr(Me.FGrid.TextMatrix))) - 1)) 'Long
  loc_1492E76:       var_1C8 = CVar(CStr(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 1, var_170))) 'String
  loc_1492E7E:       Set var_1B4 = Me.FGrid
  loc_1492E84:       LateIdCallSt
  loc_1492EAA:     Else
  loc_1492EEE:       If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "*B", 0) <> 0) Then
  loc_1492EF7:         var_C6 = (var_C6 + 1)
  loc_1492F0B:         Me.FGrid.Row = var_94
  loc_1492F24:         Me.FGrid.Col = var_98
  loc_1492F44:         var_10C = Me.FGrid.TextMatrix)
  loc_1492F70:         Set var_140 = Me.FGrid
  loc_1492F95:         var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1492FAC:         LateIdCallSt
  loc_1492FDB:         Set var_F0 = Me.Label2
  loc_1492FE1:         Call 0.Method_Proc_111_33_14937400 (CInt(1), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_1492FE9:         var_98 = var_140.BackColor
  loc_1493000:         Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_149301C:         Set var_F0 = Me.Label2
  loc_1493022:         Call 0.Method_Proc_111_33_14937400 (CInt(1), var_140, var_1B8, var_94, var_10C)
  loc_149302A:         var_98 = var_140.ForeColor
  loc_1493041:         Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_149305F:         Me.FGrid.CellFontName = "Arial Narrow"
  loc_1493079:         Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1493084:       Else
  loc_14930C8:         If (InStr(var_98, CStr(Me.FGrid.TextMatrix)), "#C", 0) <> 0) Then
  loc_14930D1:           var_CA = (var_CA + 1)
  loc_14930E5:           Me.FGrid.Row = var_94
  loc_14930FE:           Me.FGrid.Col = var_98
  loc_149311E:           var_10C = Me.FGrid.TextMatrix)
  loc_149314A:           Set var_140 = Me.FGrid
  loc_149316F:           var_170 = Left(CVar(CStr(var_10C)), (Len(CStr(var_140.TextMatrix))) - 2))
  loc_1493186:           LateIdCallSt
  loc_14931B5:           Set var_F0 = Me.Label2
  loc_14931BB:           Call 0.Method_Proc_111_33_14937400 (CInt(0), var_140, var_1B8, Me.FGrid, CVar(CStr(var_170)), var_98, var_94)
  loc_14931C3:           var_98 = var_140.BackColor
  loc_14931DA:           Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_14931F6:           Set var_F0 = Me.Label2
  loc_14931FC:           Call 0.Method_Proc_111_33_14937400 (CInt(0), var_140, var_1B8, var_94, var_10C)
  loc_1493204:           var_98 = var_140.ForeColor
  loc_149321B:           Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1493239:           Me.FGrid.CellFontName = "Arial Narrow"
  loc_1493253:           Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_149325E:         Else
  loc_1493292:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_149329B:             var_C2 = (var_C2 + 1)
  loc_14932AF:             Me.FGrid.Row = var_94
  loc_14932C8:             Me.FGrid.Col = var_98
  loc_14932DE:             Set var_F0 = Me.Label2
  loc_14932E4:             Call 0.Method_Proc_111_33_14937400 (CInt(4), var_140, var_1B8, var_C2, var_98)
  loc_14932EC:             var_94 = var_140.BackColor
  loc_1493303:             Me.FGrid.CellBackColor = CVar(var_1B8)
  loc_149331F:             Set var_F0 = Me.Label2
  loc_1493325:             Call 0.Method_Proc_111_33_14937400 (CInt(4), var_140, var_1B8)
  loc_149332D:             var_94 = var_140.ForeColor
  loc_1493344:             Me.FGrid.CellForeColor = CVar(var_1B8)
  loc_1493362:             Me.FGrid.CellFontName = "Arial Narrow"
  loc_149337C:             Me.FGrid.CellFontSize = CVar(CDbl(8))
  loc_1493387:           Else
  loc_149338D:             var_C8 = (var_C8 + 1)
  loc_1493390:           End If
  loc_1493390:         End If
  loc_1493390:       End If
  loc_1493390:     End If
  loc_1493393:   Next var_11C 'Long
  loc_149339B: Next var_114 'Long
  loc_14933A5: var_98 = 0
  loc_14933BA: For var_1E0 = CLng(var_AA) To CLng(((var_AC + var_AA) - 1)): var_94 = var_1E0 'Long
  loc_14933C8:   If (var_94 = CLng(var_AA)) Then
  loc_14933D1:     var_A8 = global_144
  loc_14933D7:   Else
  loc_14933F2:     var_A8 = CDate(DateAdd("d", CDbl(1), CDate(var_A8)))
  loc_14933FC:   End If
  loc_14933FC:   var_1D8 = 1
  loc_149340E:   var_260 = CVar((var_94 - 4)) 'Long
  loc_149343F:   var_170 = (Format(CDate(var_A8), "DDD") + vbCr)
  loc_149346B:   var_1F0 = (1 + Format(var_A8, "dd/MM"))
  loc_149347F:   var_210 = (var_1F0 + Space(5))
  loc_14934AB:   var_240 = (1 + Format(var_A8, "dd/MMM/yy"))
  loc_14934B0:   var_280 = CVar(CStr(var_240)) 'String
  loc_14934B8:   Set var_F0 = Me.FGrid
  loc_14934BE:   LateIdCallSt
  loc_14934EF:   var_DC = CVar((var_94 - 4)) 'Long
  loc_14934F4:   var_12C = 1
  loc_14934FD:   var_180 = &H1F4
  loc_149350A:   Set var_F0 = Me.FGrid
  loc_1493510:   LateIdCallSt
  loc_149351E: Next var_1E0 'Long
  loc_1493536: Set var_F0 = Me.Label2
  loc_149353C: Call 0.Method_Proc_111_33_14937400 (CInt(0), var_140)
  loc_1493544: var_140.Caption = CStr(var_CA)
  loc_1493566: Set var_F0 = Me.Label2
  loc_149356C: Call 0.Method_Proc_111_33_14937400 (CInt(1), var_140)
  loc_1493574: var_140.Caption = CStr(var_C6)
  loc_1493596: Set var_F0 = Me.Label2
  loc_149359C: Call 0.Method_Proc_111_33_14937400 (CInt(2), var_140)
  loc_14935A4: var_140.Caption = CStr(var_C8)
  loc_14935C6: Set var_F0 = Me.Label2
  loc_14935CC: Call 0.Method_Proc_111_33_14937400 (CInt(3), var_140)
  loc_14935D4: var_140.Caption = CStr(var_C4)
  loc_14935F6: Set var_F0 = Me.Label2
  loc_14935FC: Call 0.Method_Proc_111_33_14937400 (CInt(4), var_140)
  loc_1493604: var_140.Caption = CStr(var_C2)
  loc_149362B: var_F4 = CStr(((((var_CA + var_C6) + var_C8) + var_C4) + var_C2))
  loc_149363C: Me.lblTotalRoom.Caption = "No. of Rooms:  " & CStr(var_C2)
  loc_149364B: var_DC = 0
  loc_1493654: var_12C = &H1F4
  loc_1493661: Set var_F0 = Me.FGrid
  loc_1493667: LateIdCallSt
  loc_1493672: var_DC = 0
  loc_149367B: var_12C = 1
  loc_1493684: var_180 = 0
  loc_1493691: Set var_F0 = Me.FGrid
  loc_1493697: LateIdCallSt
  loc_14936B5: Me.FGrid.FixedCols = 4
  loc_14936D0: Me.FGrid.Col = 5
  loc_14936EB: Me.FGrid.Row = 1
  loc_14936F3: var_DC = 0
  loc_14936FC: var_12C = False
  loc_1493705: Set var_F0 = Me.FGrid
  loc_149370B: LateIdCallSt
  loc_1493724: Me.FGrid.Redraw = True
  loc_1493731: Set var_8C = Nothing
  loc_1493739: Set var_90 = Nothing
  loc_149373C: Exit Sub
End Sub

Public Sub Proc_111_34_1100814(arg_C) '1100814
  'Data Table: 450B6C
  Dim var_B4 As Variant
  Dim var_124 As Date
  Dim var_154 As String
  Dim var_184 As Date
  Dim var_1C4 As Variant
  Dim var_1E4 As Date
  Dim var_244 As Date
  Dim var_274 As String
  Dim var_2A4 As Date
  Dim var_2E4 As Variant
  Dim var_304 As Date
  Dim var_364 As Date
  Dim var_394 As String
  Dim var_3C4 As Date
  Dim var_404 As Variant
  Dim var_424 As Date
  Dim var_484 As Date
  Dim var_4A8 As String
  Dim var_4CC As Variant
  loc_1100598: For var_94 = 0 To (global_140 - 1): var_8A = var_94 'Integer
  loc_11005B3:   var_B4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11005BA:   Proc_6_7_F25D88(var_C4, var_B4)
  loc_11005DA:   var_124 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11005E1:   Proc_6_7_F25D88(var_134, var_124)
  loc_11005ED:   var_154 = ") AND RB.Type='O' THEN RB.Reasons +'*B' WHEN ((RO.ChkInDate <="
  loc_1100601:   var_184 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100608:   Proc_6_7_F25D88(var_194, var_184)
  loc_1100619:   var_1C4 = CVar(var_88 & "Max(Case WHEN (RB.FromDate <=") & var_C4 & " And RB.ToDate >=" & var_134 & var_154 & var_194 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_1100628:   var_1E4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_110062F:   Proc_6_7_F25D88(var_1F4, var_1E4)
  loc_110064F:   var_244 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100656:   Proc_6_7_F25D88(var_254, var_244)
  loc_1100662:   var_274 = " )) AND RO.Type='C' THEN GF.Name +'#C' WHEN ((RO.ChkInDate <="
  loc_1100676:   var_2A4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_110067D:   Proc_6_7_F25D88(var_2B4, var_2A4)
  loc_110068E:   var_2E4 = var_1C4 & var_1F4 & " And RO.ChkOutDate>=" & var_254 & var_274 & var_2B4 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_110069D:   var_304 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11006A4:   Proc_6_7_F25D88(var_314, var_304)
  loc_11006C4:   var_364 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11006CB:   Proc_6_7_F25D88(var_374, var_364)
  loc_11006D7:   var_394 = " )) AND IsNull(RO.Type,'')='' THEN GF.Name +'#*' WHEN ((RO.ChkInDate <="
  loc_11006EB:   var_3C4 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_11006F2:   Proc_6_7_F25D88(var_3D4, var_3C4)
  loc_1100703:   var_404 = var_2E4 & var_314 & " And RO.ChkOutDate>=" & var_374 & var_394 & var_3D4 & " And RO.ChkOutDate Is Null) OR (RO.ChkInDate<=" 
  loc_1100712:   var_424 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100719:   Proc_6_7_F25D88(var_434, var_424)
  loc_1100739:   var_484 = CDate(CDate((CDate(arg_C) + CDbl(var_8A))))
  loc_1100740:   Proc_6_7_F25D88(var_494, var_484)
  loc_1100757:   var_4A8 = CStr((var_8A + 1))
  loc_1100765:   var_4CC = var_404 & var_434 & " And RO.ChkOutDate>=" & var_494 & CVar(" )) AND RO.Type='O' THEN GF.Name Else '' End) as Day" & var_4A8 & ",") 
  loc_110076A:   var_88 = CStr(var_4CC)
  loc_11007D6: Next var_94 'Integer
  loc_11007E5: var_B4 = CVar((Len(var_88) - 1)) 'Long
  loc_1100802: var_88 = CStr(Mid(var_88, 1, var_B4))
  loc_110080C: Proc_111_34_1100814 = 
End Sub

Public Sub Proc_111_35_F88594(arg_C) 'F88594
  'Data Table: 450B6C
  Dim var_90 As Recordset15
  loc_F8843D: Set var_90 = arg_C 
  loc_F88465: var_90.Fields.Append "mLine", &HC8, &HA
  loc_F88491: var_90.Fields.Append "RoomNo", &HC8, 5
  loc_F884BD: var_90.Fields.Append "RoomCat", &HC8, &H19
  loc_F884CC: For var_A8 = 5 To &H1B: var_8A = var_A8 'Integer
  loc_F88502:   var_90.Fields.Append "Day" & CStr(var_8A), &HC8, &HF
  loc_F88514: Next var_A8 'Integer
  loc_F8853D: var_90.Fields.Append "Mark", &HC8, 1
  loc_F8854D: var_90.CursorType = 3
  loc_F8855A: var_90.LockType = 3
  loc_F88579: var_90.Open var_A4, var_C0, -1
  loc_F88580: Set var_90 = Nothing 
  loc_F88587: Set var_88 = arg_C 
  loc_F8858B: Proc_111_35_F88594 = -1
End Sub
