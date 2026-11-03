VERSION 5.00
Begin VB.Form FaGrEnt
  Caption = "Group Accounts Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaGrEnt.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 9675
  ClientHeight = 6525
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9675
    Height = 450
    TabIndex = 23
  End
  Begin DataGrid DGUnderAc
    Left = 2265
    Top = 4200
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGAcAlias
    Left = 3390
    Top = 3705
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGAcName
    Left = 885
    Top = 4755
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2460
    Top = 2250
    Width = 1740
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 15
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
    ToolTipText = "Group behavior"
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    Left = 7215
    Top = 4020
    Width = 2325
    Height = 2370
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 2295
      Height = 2310
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 2460
    Top = 1935
    Width = 1740
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 15
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
    ToolTipText = "Group behavior"
  End
  Begin TextBox Txt
    Index = 4
    ForeColor = &HC00000&
    Left = 2460
    Top = 1620
    Width = 4980
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
    ToolTipText = "Parent Group Account Name"
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 8805
    Top = 2205
    Width = 4980
    Height = 285
    Visible = 0   'False
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 8805
    Top = 1890
    Width = 4980
    Height = 285
    Visible = 0   'False
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
    ToolTipText = "Alias Group Account Name"
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 8805
    Top = 1575
    Width = 4980
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
    ToolTipText = "Group Account Name (BiLangual)"
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 2460
    Top = 1305
    Width = 4980
    Height = 285
    TabIndex = 0
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
    ToolTipText = "Group Account Name"
  End
  Begin Label Label3
    Caption = "Note:- Run Current Balance Updation After Making Changes In Group Accounts"
    BackColor = &H80000005&
    ForeColor = &HFF&
    Left = 945
    Top = 6750
    Width = 11715
    Height = 525
    TabIndex = 26
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label Label2
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 0
    Width = 2880
    Height = 255
    TabIndex = 25
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
  Begin Label Label1
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 0
    Width = 2790
    Height = 285
    TabIndex = 24
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HC00000&
    Left = 945
    Top = 9495
    Width = 2790
    Height = 285
    TabIndex = 22
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
    Left = 1050
    Top = 8940
    Width = 2880
    Height = 255
    TabIndex = 21
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
    Top = 375
    Width = 180
    Height = 540
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Trading A/C"
    Index = 6
    ForeColor = &HC00000&
    Left = 1320
    Top = 2235
    Width = 1125
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
  Begin Label Lbl
    Index = 3
    ForeColor = &HC00000&
    Left = 7560
    Top = 1290
    Width = 45
    Height = 240
    TabIndex = 18
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
  Begin Label LblAliasBiLang
    Caption = "(Hindi)"
    ForeColor = &HC00000&
    Left = 7665
    Top = 2190
    Width = 645
    Height = 270
    Visible = 0   'False
    TabIndex = 12
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Comic Sans MS"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblNameBiLang
    Caption = "(Hindi)"
    ForeColor = &HC00000&
    Left = 7665
    Top = 1560
    Width = 645
    Height = 270
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Comic Sans MS"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Alias Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 7665
    Top = 1875
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 10
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
  Begin Label Lbl
    Caption = "Nature"
    Index = 5
    ForeColor = &HC00000&
    Left = 1320
    Top = 1920
    Width = 630
    Height = 240
    TabIndex = 9
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
  Begin Label Lbl
    Caption = "Under"
    Index = 4
    ForeColor = &HC00000&
    Left = 1320
    Top = 1605
    Width = 570
    Height = 240
    TabIndex = 8
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
  Begin Label Lbl
    Caption = "Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1320
    Top = 1290
    Width = 555
    Height = 240
    TabIndex = 7
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

Attribute VB_Name = "FaGrEnt"


Private Sub TopCtrl1_UnknownEvent_A 'F60F24
  'Data Table: 4B4148
  Dim var_94 As Variant
  Dim var_8C As Label
  loc_F60DF8: On Error Goto loc_F60EFC
  loc_F60DFB: Call Proc_201_30_EB1AEC()
  loc_F60E15: var_88 = "ADD"
  loc_F60E23: Call Proc_201_29_F2D9F4(Proc_5_1_100CB50(var_88, Me))
  loc_F60E3B: Set var_8C = Me.Txt
  loc_F60E41: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F60E49: var_94.Enabled = True
  loc_F60E62: Set var_8C = Me.Txt
  loc_F60E68: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_94)
  loc_F60E70: var_94.Enabled = True
  loc_F60E82: global_64 = "N"
  loc_F60E92: Set var_8C = Me.Lbl
  loc_F60E98: Call 0.Method_TopCtrl1_UnknownEvent_A0 (3, var_94)
  loc_F60EA0: var_94.Caption = "User Defined"
  loc_F60EB7: Set var_8C = Me.Txt
  loc_F60EBD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F60EC5: var_94.SetFocus
  loc_F60EDE: Me.LblUser.Caption = vbNullString
  loc_F60EF3: Me.LblLDt.Caption = vbNullString
  loc_F60EFB: Exit Sub
  loc_F60EFC: ' Referenced from: F60DF8
  loc_F60F02: Call 0.Method_arg_50 (var_88)
  loc_F60F17: Proc_183_57_104AA84(var_88, "TopCtrl1_eAdd")
  loc_F60F23: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F6D600
  'Data Table: 4B4148
  Dim var_11C As TextBox
  Dim arg_DFF As Integer
  loc_F6D4D4: On Error Goto loc_F6D5D5
  loc_F6D4D7: Call Proc_201_28_EF2908()
  loc_F6D513: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F6D52B:   var_10C = "INI"
  loc_F6D539:   Call Proc_201_29_F2D9F4(Proc_5_1_100CB50(var_10C, Me))
  loc_F6D544:   Call Proc_201_31_14D06E8(global_96)
  loc_F6D557:   Set var_110 = Me.Txt
  loc_F6D55D:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F6D56D:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F6D585:     Set var_110 = Me.Txt
  loc_F6D58B:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F6D593:     var_11C.BackColor = -2147483643
  loc_F6D5B1:     Set var_110 = Me.Txt
  loc_F6D5B7:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F6D5BF:     var_11C.ForeColor = &HC00000
  loc_F6D5CE:   Next var_116 'Byte
  loc_F6D5D4: End If
  loc_F6D5D4: Exit Sub
  loc_F6D5D5: ' Referenced from: F6D4D4
  loc_F6D5DB: Call 0.Method_arg_50 (var_10C)
  loc_F6D5F0: Proc_183_57_104AA84(var_10C)
  loc_F6D5FC: Exit Sub
  loc_F6D5FD: arg_DFF = "TopCtrl1_eCancel"
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'DFFBBC
  'Data Table: 4B4148
  loc_DFFBB4: Call Proc_201_33_1230A0C()
  loc_DFFBB9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '107F6E4
  'Data Table: 4B4148
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_B4 As String
  loc_107F44C: On Error Goto loc_107F6BA
  loc_107F466: If (Me.RecordCount > 0) Then
  loc_107F477:   If (Proc_183_55_FE7900(global_96) = &HFF) Then
  loc_107F47A:     Exit Sub
  loc_107F47B:   End If
  loc_107F4AF:   global_76 = CStr(Me.Fields.Item("GroupCode").Value)
  loc_107F4DD:   var_A0 = Me.Fields.Item("GroupName")
  loc_107F4F4:   global_68 = CStr(var_A0.Value)
  loc_107F51A:   var_B4 = "EDIT"
  loc_107F528:   Call Proc_201_29_F2D9F4(Proc_5_1_100CB50(var_B4, Me))
  loc_107F53E:   If (global_64 = "Y") Then
  loc_107F54E:     Set var_8C = Me.Txt
  loc_107F554:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107F55C:     var_A0.Enabled = False
  loc_107F575:     Set var_8C = Me.Txt
  loc_107F57B:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A0)
  loc_107F583:     var_A0.Enabled = False
  loc_107F595:     If (MemVar_1F9208C = &HFF) Then
  loc_107F5A3:       Set var_8C = Me.Txt
  loc_107F5A9:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_A0)
  loc_107F5B1:       var_A0.SetFocus
  loc_107F5C0:     Else
  loc_107F5CB:       Set var_8C = Me.Txt
  loc_107F5D1:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_A0)
  loc_107F5D9:       var_A0.SetFocus
  loc_107F5E5:     End If
  loc_107F5E8:   Else
  loc_107F5F5:     Set var_8C = Me.Txt
  loc_107F5FB:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107F603:     var_A0.Enabled = True
  loc_107F61C:     Set var_8C = Me.Txt
  loc_107F622:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A0)
  loc_107F62A:     var_A0.Enabled = True
  loc_107F641:     Set var_8C = Me.Txt
  loc_107F647:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A0)
  loc_107F64F:     var_A0.SetFocus
  loc_107F65B:   End If
  loc_107F65E: Else
  loc_107F67F:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_107F68F: End If
  loc_107F69C: Me.LblUser.Caption = vbNullString
  loc_107F6B1: Me.LblLDt.Caption = vbNullString
  loc_107F6B9: Exit Sub
  loc_107F6BA: ' Referenced from: 107F44C
  loc_107F6C0: Call 0.Method_arg_50 (var_B4)
  loc_107F6D5: Proc_183_57_104AA84(var_B4, "TopCtrl1_eEdit")
  loc_107F6E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A6F4
  'Data Table: 4B4148
  loc_E1A6E9: Me.Global.Unload Me
  loc_E1A6F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF0754
  'Data Table: 4B4148
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EF0694: On Error Goto loc_EF072C
  loc_EF06AE: If (Me.RecordCount <= 0) Then
  loc_EF06B7:   var_B8 = "Information"
  loc_EF06D2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF06E2:   Exit Sub
  loc_EF06E3: End If
  loc_EF06F1: MemVar_1F920E4 = "Select GROUPCODE As SearchCode,GroupName,GroupNature,Nature FROM AcGroup Where (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') AND AliasYN<>'Y' Order by GroupName"
  loc_EF06FE: MemVar_1F92120 = Me
  loc_EF0705: var_10C = "2000,2000,1000"
  loc_EF070B: Proc_6_126_F1BCC0(var_10C)
  loc_EF0726: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF072B: Exit Sub
  loc_EF072C: ' Referenced from: EF0694
  loc_EF0732: Call 0.Method_arg_50 (var_10C)
  loc_EF0747: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EF0753: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3C438
  'Data Table: 4B4148
  loc_E3C428: Proc_5_0_110649C(&HFF, Me)
  loc_E3C430: Call Proc_201_31_14D06E8(global_96)
  loc_E3C435: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38A18
  'Data Table: 4B4148
  loc_E38A08: Proc_5_0_110649C(&HFF, Me)
  loc_E38A10: Call Proc_201_31_14D06E8(global_96)
  loc_E38A15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E38A78
  'Data Table: 4B4148
  loc_E38A68: Proc_5_0_110649C(&HFF, Me)
  loc_E38A70: Call Proc_201_31_14D06E8(global_96)
  loc_E38A75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E38B38
  'Data Table: 4B4148
  loc_E38B28: Proc_5_0_110649C(&HFF, Me)
  loc_E38B30: Call Proc_201_31_14D06E8(global_96)
  loc_E38B35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1091878
  'Data Table: 4B4148
  Dim var_A0 As String
  Dim unk_4B4155 As Connection15
  Dim var_88 As Recordset15
  Dim var_12E As Integer
  Dim var_DC As String
  Dim var_C4 As Variant
  loc_10915DC: On Error Goto loc_109184D
  loc_10915F3: var_A0 = "select SYSGROUP,GroupName,Nature,GNature= CASE GroupNature WHEN 'A' THEN 'A S S E T S' WHEN 'E' THEN 'E X P E N D I T U R E' WHEN 'L' THEN 'L I A B I L I T Y' WHEN 'R' THEN 'R E V E N U E' ELSE 'Others' END,MainGrCode from acgroup WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1091603: unk_4B4155.Execute var_A0 & "' OR LOGSITE_CODE='HO') order by groupname", var_C4, -1
  loc_109160E: Set var_88 = var_C8
  loc_1091624: var_CC = var_88.RecordCount
  loc_1091632: If (var_CC = 0) Then
  loc_109164E:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_109165E:   Exit Sub
  loc_109165F: End If
  loc_1091668: var_A0 = MemVar_1F923B0 & "\FaGrplist.ttx"
  loc_1091675: Set var_C8 = var_88 
  loc_1091681: var_12E = CreateFieldDefFile(var_C8, var_A0)
  loc_109168B: Set var_88 = var_C8
  loc_1091694: var_98 = CVar(var_12E) 'Variant
  loc_10916A8: var_DC = "A/C Group List"
  loc_10916D9: If (MsgBox("Do You Want Tree Like List", &H24, var_DC, var_10C, var_12C) = 6) Then
  loc_10916E8:   Call 0.Method_arg_130 (var_C8, var_12E)
  loc_10916F3:   MemVar_1F921E4 = var_C8
  loc_10916FD: Else
  loc_1091709:   Call 0.Method_arg_124 (var_C8, &HFF)
  loc_1091714:   MemVar_1F921E4 = var_C8
  loc_109171B: End If
  loc_109172C: Call 0.Method_arg_90 (var_C8, var_CC, var_9A)
  loc_1091734: Call 0.Method_arg_24 (1)
  loc_1091740: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_1091759:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_1091761:   Call 0.Method_arg_20 (var_138)
  loc_1091769:   Call 0.Method_arg_30 (var_A0)
  loc_10917AF:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10917C5:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10917CD:     Call 0.Method_arg_20 (var_138)
  loc_10917D5:     Call 0.Method_arg_38 ("'Group List'")
  loc_10917E1:   End If
  loc_10917E4: Next var_132 'Integer
  loc_1091802: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_109180A: Call 0.Method_arg_2C (var_DC)
  loc_1091818: Call 0.Method_arg_150 (var_FC)
  loc_1091823: Call 0.Method_arg_50 (var_A0)
  loc_109183C: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_1091849: Set var_88 = Nothing
  loc_109184C: Exit Sub
  loc_109184D: ' Referenced from: 10915DC
  loc_1091853: Call 0.Method_arg_50 (var_A0, var_A0)
  loc_1091868: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_1091874: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E57590
  'Data Table: 4B4148
  Dim Me As Recordset15
  loc_E57557: Me.Requery -1
  loc_E57567: Me.Requery -1
  loc_E57577: Me.Requery -1
  loc_E57587: Me.Requery -1
  loc_E5758C: Exit Sub
  loc_E5758D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '10ABFC4
  'Data Table: 4B4148
  Dim var_8C As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As String
  Dim var_94 As String
  Dim Me As Recordset15
  Dim var_A0 As String
  loc_10ABD04: On Error Goto loc_10ABF9C
  loc_10ABD07: Call Proc_201_28_EF2908()
  loc_10ABD17: Set var_88 = Me.Txt
  loc_10ABD1D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_10ABD46: If (Proc_183_19_E8DAFC(var_8C, "Group Name") = 0) Then
  loc_10ABD49:   Exit Sub
  loc_10ABD4A: End If
  loc_10ABD55: Set var_88 = Me.Txt
  loc_10ABD5B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_8C)
  loc_10ABD84: If (Proc_183_19_E8DAFC(var_8C, "Under Group") = 0) Then
  loc_10ABD87:   Exit Sub
  loc_10ABD88: End If
  loc_10ABD96: Set var_88 = Me.Txt
  loc_10ABD9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_8C)
  loc_10ABDA4: var_96 = var_8C.Enabled
  loc_10ABDB6: If (var_96 = &HFF) Then
  loc_10ABDC4:   Set var_88 = Me.Txt
  loc_10ABDCA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_8C)
  loc_10ABDD2:   var_94 = "Nature"
  loc_10ABDF3:   If (Proc_183_19_E8DAFC(var_8C, var_94) = 0) Then
  loc_10ABDF6:     Exit Sub
  loc_10ABDF7:   End If
  loc_10ABDF7: End If
  loc_10ABE05: Set var_88 = Me.Txt
  loc_10ABE0B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_10ABE13: var_A0 = var_8C.Text
  loc_10ABE29: Set var_90 = Me.Txt
  loc_10ABE2F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_9C, var_94)
  loc_10ABE37: var_A0 = var_9C.Text
  loc_10ABE53: If (var_8C = var_94) Then
  loc_10ABE64:   var_B0 = "A/c Group And Under group Can not be same"
  loc_10ABE6F:   MsgBox(var_B0, 0, var_E0, var_100, var_120)
  loc_10ABE8A:   Set var_88 = Me.Txt
  loc_10ABE90:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_10ABE98:   var_8C.SetFocus
  loc_10ABEA4:   Exit Sub
  loc_10ABEA5: End If
  loc_10ABEA9: Set var_88 = Me.TopCtrl1
  loc_10ABEAF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_8C)
  loc_10ABEB7: var_94 = CStr()
  loc_10ABEC8: If (var_94 = "Add") Then
  loc_10ABEE1:   Call 0.Method_arg_5C (Me)
  loc_10ABEEF:   If (var_96 = &HFF) Then
  loc_10ABEF8:     Call 0.Method_arg_1C0 (var_94)
  loc_10ABF15:     Me.Recordset15.Requery -1
  loc_10ABF25:     Me.Requery -1
  loc_10ABF35:     Me.Requery -1
  loc_10ABF45:     Me.Requery -1
  loc_10ABF55:     Me.Requery -1
  loc_10ABF72:     var_94 = "SearchCode='" & var_94
  loc_10ABF82:     Me.Find var_94 & "'", 0, 1
  loc_10ABF8E:     Call TopCtrl1_UnknownEvent_A()
  loc_10ABF93:   End If
  loc_10ABF96: Else
  loc_10ABF96:   Call Proc_201_34_15C28E4(var_B0)
  loc_10ABF9B: End If
  loc_10ABF9B: Exit Sub
  loc_10ABF9C: ' Referenced from: 10ABD04
  loc_10ABFA2: Call 0.Method_arg_50 (var_94)
  loc_10ABFB7: Proc_183_57_104AA84(var_94, "TopCtrl1_eSave")
  loc_10ABFC3: Exit Sub
End Sub

Private Sub Form_Load() '13C0F80
  'Data Table: 4B4148
  Dim var_8C As Variant
  Dim var_C0 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_CC As ListItems
  Dim unk_4B4155 As Connection15
  loc_13C0600: On Error Goto loc_13C0F58
  loc_13C060A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13C061E: Me.LblUser.Left = CDbl(13500)
  loc_13C0635: Me.LblUser.Top = CDbl(7800)
  loc_13C064C: Me.LblLDt.Top = CDbl(8160)
  loc_13C0663: Me.LblLDt.Left = CDbl(13500)
  loc_13C0675: Set var_8C = Me.TopCtrl1
  loc_13C067B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_13C0689: Call 0.Method_arg_50 (var_B0)
  loc_13C0699: Set var_8C = Me.TopCtrl1
  loc_13C069F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_B0))
  loc_13C06B6: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_13C06C7: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_13C06D8: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_13C06E9: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_13C06FA: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_13C070B: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_13C071C: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_13C072D: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_13C073E: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_13C074F: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_13C0769: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_13C0777: Set var_8C = MemVar_1F92044
  loc_13C0786: Call 0.Method_Form_Load8 (var_8C)
  loc_13C079C: Me.TopCtrl1.Clone
  loc_13C07B6: Call 0.Method_arg_50 (var_8C, -1)
  loc_13C07C5: Call Proc_201_32_10F64CC(MemVar_1F9208C)
  loc_13C07EC: Proc_183_1_F5B310(Me, CStr(-2147483643))
  loc_13C0805: Set global_100 = New 
  loc_13C0817: Me.Recordset15.CursorLocation = 3
  loc_13C083A: var_B0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_13C085F: CVarUnk
  loc_13C0864: VerifyVarObj
  loc_13C086A: Set var_8C = Me.DGAcName
  loc_13C0870: LateIdStAd
  loc_13C0887: Set global_108 = global_100
  loc_13C0894: CVarUnk
  loc_13C0899: VerifyVarObj
  loc_13C089F: Set var_8C = Me.DGAcAlias
  loc_13C08A5: LateIdStAd
  loc_13C08BC: Set global_112 = global_100
  loc_13C08C9: CVarUnk
  loc_13C08CE: VerifyVarObj
  loc_13C08D4: Set var_8C = Me.DGUnderAc
  loc_13C08DA: LateIdStAd
  loc_13C08F2: Set global_104 = New 
  loc_13C0904: Me.DGUnderAc.CursorLocation = 3
  loc_13C092E: var_C0 = CVar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by GroupHelp") 'String
  loc_13C0938: ar("Select ID,GroupCode,GroupName,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F921DC), 2 var_C0, CVar(MemVar_1F921DC), 2
  loc_13C0947: Set var_8C = Me.ListView
  loc_13C094D: var_C0 = var_8C.ListItems
  loc_13C0958: Set var_CC = var_C0
  loc_13C097E: var_CC.Add var_C0, var_DC, "Bank", var_11C, var_13C
  loc_13C098F: Set global_84 = var_8C
  loc_13C09C4: var_CC.Add var_C0, var_DC, "Broker", var_11C, var_13C
  loc_13C09D5: Set global_84 = var_8C
  loc_13C0A0A: var_CC.Add var_C0, var_DC, "Cash", var_11C, var_13C
  loc_13C0A1B: Set global_84 = var_8C
  loc_13C0A50: var_CC.Add var_C0, var_DC, "Customer", var_11C, var_13C
  loc_13C0A61: Set global_84 = var_8C
  loc_13C0A96: var_CC.Add var_C0, var_DC, "Electrician", var_11C, var_13C
  loc_13C0AA7: Set global_84 = var_8C
  loc_13C0ADC: var_CC.Add var_C0, var_DC, "Employee", var_11C, var_13C
  loc_13C0AED: Set global_84 = var_8C
  loc_13C0B22: var_CC.Add var_C0, var_DC, "Expenses", var_11C, var_13C
  loc_13C0B33: Set global_84 = var_8C
  loc_13C0B68: var_CC.Add var_C0, var_DC, "Mukadim", var_11C, var_13C
  loc_13C0B79: Set global_84 = var_8C
  loc_13C0BAE: var_CC.Add var_C0, var_DC, "Others", var_11C, var_13C
  loc_13C0BBF: Set global_84 = var_8C
  loc_13C0BF4: var_CC.Add var_C0, var_DC, "PDC", var_11C, var_13C
  loc_13C0C05: Set global_84 = var_8C
  loc_13C0C3A: var_CC.Add var_C0, var_DC, "Purchase", var_11C, var_13C
  loc_13C0C4B: Set global_84 = var_8C
  loc_13C0C80: var_CC.Add var_C0, var_DC, "Revenue", var_11C, var_13C
  loc_13C0C91: Set global_84 = var_8C
  loc_13C0CC6: var_CC.Add var_C0, var_DC, "Sale", var_11C, var_13C
  loc_13C0CD7: Set global_84 = var_8C
  loc_13C0D0C: var_CC.Add var_C0, var_DC, "SalesMan", var_11C, var_13C
  loc_13C0D1D: Set global_84 = var_8C
  loc_13C0D52: var_CC.Add var_C0, var_DC, "SalesRep", var_11C, var_13C
  loc_13C0D63: Set global_84 = var_8C
  loc_13C0D98: var_CC.Add var_C0, var_DC, "Supplier", var_11C, var_13C
  loc_13C0DA9: Set global_84 = var_8C
  loc_13C0DDE: var_CC.Add var_C0, var_DC, "T.D.S.", var_11C, var_13C
  loc_13C0DEF: Set global_84 = var_8C
  loc_13C0E35: Set global_84 = var_8C
  loc_13C0E6A: r_C0, var_DC, "Transporter", var_11C, var_13C var_C0, var_DC, "Unsecured Loan", var_11C, var_13C
  loc_13C0E7B: Set global_84 = var_8C
  loc_13C0E95: Set var_CC = Nothing 
  loc_13C0EA3: Set global_96 = New 
  loc_13C0EB5: Me.Recordset15.LockType = 3
  loc_13C0EC5: Me.CursorLocation = 3
  loc_13C0ED5: Me.CursorType = 2
  loc_13C0EEE: var_B0 = "Select GROUPCODE as SearchCode,ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,CurrentBalance,SubLedYN,BlOrd,AliasYN,GroupHelp,Nature,SysGroup,TRADINGYN,LogSite_Code From AcGroup Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_13C0EFE: unk_4B4155.Execute var_B0 & "' OR LOGSITE_CODE='HO') AND AliasYN<>'Y' Order by GroupName", var_C0, -1
  loc_13C0F24: Call Proc_201_31_14D06E8(var_8C, var_8C, var_8C, var_8C, var_8C, var_8C)
  loc_13C0F35: Set var_8C = Me
  loc_13C0F3E: var_B0 = "INI"
  loc_13C0F4C: Call Proc_201_29_F2D9F4(Proc_5_1_100CB50(var_B0, var_8C, var_8C, var_8C), var_8C, var_8C)
  loc_13C0F57: Exit Sub
  loc_13C0F58: ' Referenced from: 13C0600
  loc_13C0F5E: Call 0.Method_arg_50 (var_B0, var_8C)
  loc_13C0F73: Proc_183_57_104AA84(var_B0, "Form_Load")
  loc_13C0F7F: Exit Sub
End Sub

Private Sub Form_Resize() 'E71F1C
  'Data Table: 4B4148
  loc_E71EC6: Call 0.Method_arg_50 (var_88)
  loc_E71ED8: Me.LblFormCaption.Caption = var_88
  loc_E71EF1: Me.LblFormCaption.Left = CDbl(0)
  loc_E71EFF: Call 0.Method_arg_100 (var_90)
  loc_E71F11: Me.LblFormCaption.Width = var_90
  loc_E71F19: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E80C5C
  'Data Table: 4B4148
  loc_E80BF7: Set global_96 = Nothing
  loc_E80C09: Set global_100 = Nothing
  loc_E80C1B: Set global_104 = Nothing
  loc_E80C2D: Set global_108 = Nothing
  loc_E80C3F: Set global_112 = Nothing
  loc_E80C51: Set global_116 = Nothing
  loc_E80C58: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FCEC18
  'Data Table: 4B4148
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim KeyCode As Integer
  loc_FCEA70: On Error Goto loc_FCEBF0
  loc_FCEA76: var_86 = KeyCode
  loc_FCEA83: If Not (var_86 = CInt(&HD)) Then
  loc_FCEA90:   If Not (var_86 = CInt(&H28)) Then
  loc_FCEA9D:     If (var_86 = CInt(&H26)) Then
  loc_FCEAA0:     End If
  loc_FCEAA0:   End If
  loc_FCEAA3:   var_88 = KeyCode
  loc_FCEAB0:   If Not (var_88 = CInt(&H28)) Then
  loc_FCEABD:     If (var_88 = CInt(&H26)) Then
  loc_FCEAC0:     End If
  loc_FCEAC4:     Set var_8C = Me.DGAcName
  loc_FCEB11:     var_CA = Me.FrmList.Visible
  loc_FCEB4C:     If (((((CBool(var_8C.Visible) = &HFF) Or (CBool(Me.DGAcAlias.Visible) = &HFF)) Or (CBool(Me.DGUnderAc.Visible) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.ListView.Visible) = &HFF)) Then
  loc_FCEB4F:       Exit Sub
  loc_FCEB50:     End If
  loc_FCEB50:   End If
  loc_FCEB56:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_FCEB65:   If TypeOf var_8C Is arg_5 Then
  loc_FCEB6E:     Call 0.Method_arg_1E8 (var_8C)
  loc_FCEB89:     Call Txt_Validate(CInt(var_8C.index))
  loc_FCEB94:   End If
  loc_FCEBB0:   Call 0.Method_arg_58 (Me, KeyCode, Shift, var_CA)
  loc_FCEBBE:   If (var_CA = &HFF) Then
  loc_FCEBC8:     Call Proc_201_27_F5F54C(CInt(5), 0)
  loc_FCEBCD:   End If
  loc_FCEBCF:   KeyCode = 0
  loc_FCEBD5: Else
  loc_FCEBE7:   Proc_183_40_F30B0C(Me, KeyCode, Shift)
  loc_FCEBEF: End If
  loc_FCEBEF: Exit Sub
  loc_FCEBF0: ' Referenced from: FCEA70
  loc_FCEBF6: Call 0.Method_arg_50 (var_E8, KeyCode)
  loc_FCEC0B: Proc_183_57_104AA84(var_E8, "Form_KeyDown")
  loc_FCEC17: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E165F4
  'Data Table: 4B4148
  Dim KeyAscii As Integer
  loc_E165E8: If (KeyAscii = CInt(&HD)) Then
  loc_E165ED:   KeyAscii = 0
  loc_E165F0: End If
  loc_E165F0: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F48974
  'Data Table: 4B4148
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  Dim var_2F01 As Double
  loc_F4886C: On Error Goto loc_F4894A
  loc_F48873: Set var_A4 = Me.ListView
  loc_F488BD: Set var_BC = Me.Txt
  loc_F488C3: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F488CB: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F488F7: Me.FrmList.Visible = False
  loc_F48911: var_A0 = CStr(Me.ListView.Tag)
  loc_F48919: var_C8 = Val(var_A0)
  loc_F48927: Set var_9C = Me.Txt
  loc_F4892D: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F48935: var_A4.SetFocus
  loc_F48949: Exit Sub
  loc_F4894A: ' Referenced from: F4886C
  loc_F48950: Call 0.Method_arg_50 (var_A0, var_C8)
  loc_F48965: Proc_183_57_104AA84(var_A0, "ListView_Click")
  loc_F48971: Exit Sub
  loc_F48972: var_2F01 = var_C8
End Sub

Private Sub Txt_GotFocus(Index As Integer) '122F45C
  'Data Table: 4B4148
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_122EF4C: On Error Goto loc_122F431
  loc_122EF59: Set var_88 = Me.Txt
  loc_122EF5F: Call 0.Method_Txt_GotFocus0 (Index)
  loc_122EF6D: Proc_183_28_E20B20(var_8C)
  loc_122EF79: Call Proc_201_28_EF2908(var_8C)
  loc_122EF81: var_92 = Index
  loc_122EF8C: If (var_92 = CInt(0)) Then
  loc_122EFDD:   Set var_88 = Me.Txt
  loc_122EFE3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_122EFEB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_122F003:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_122F006:     Exit Sub
  loc_122F007:   End If
  loc_122F014:   Set var_88 = Me.Txt
  loc_122F01A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F022:   var_A0 = var_8C.Text
  loc_122F034:   var_B0 = "Name"
  loc_122F06F:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122F078:     Me.MoveFirst
  loc_122F09B:     Set var_88 = Me.Txt
  loc_122F0A1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_122F0A9:     0 = var_8C.Text
  loc_122F0C2:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122F0D7:   End If
  loc_122F0DA: Else
  loc_122F0E2:   If (var_92 = CInt(2)) Then
  loc_122F133:     Set var_88 = Me.Txt
  loc_122F139:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F159:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_122F15C:       Exit Sub
  loc_122F15D:     End If
  loc_122F16A:     Set var_88 = Me.Txt
  loc_122F170:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F178:     var_A0 = var_8C.Text
  loc_122F18A:     var_B0 = "Name"
  loc_122F1C5:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122F1CE:       Me.MoveFirst
  loc_122F1F1:       Set var_88 = Me.Txt
  loc_122F1F7:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_122F1FF:       0 = var_8C.Text
  loc_122F218:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122F22D:     End If
  loc_122F230:   Else
  loc_122F238:     If (var_92 = CInt(4)) Then
  loc_122F25B:       var_9A = Me.EOF
  loc_122F289:       Set var_88 = Me.Txt
  loc_122F28F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F2AF:       If (((Me.RecordCount = 0) Or ((var_9A = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_122F2B2:         Exit Sub
  loc_122F2B3:       End If
  loc_122F2C0:       Set var_88 = Me.Txt
  loc_122F2C6:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F2CE:       var_A0 = var_8C.Text
  loc_122F2E0:       var_B0 = "Name"
  loc_122F31B:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_122F324:         Me.MoveFirst
  loc_122F347:         Set var_88 = Me.Txt
  loc_122F34D:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_122F355:         0 = var_8C.Text
  loc_122F36E:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_122F383:       End If
  loc_122F386:     Else
  loc_122F38E:       If (var_92 = CInt(5)) Then
  loc_122F39E:         Set var_88 = Me.Txt
  loc_122F3A4:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_122F3AC:         var_A0 = var_8C.Text
  loc_122F40E:         If (Me.ListView.FindItem 1, var_11C, 0, CVar(var_A0)) Is Nothing) Then
  loc_122F411:           Exit Sub
  loc_122F415:         Else
  loc_122F41E:           Me.EnsureVisible var_9A
  loc_122F42B:           Me.Selected = True
  loc_122F430:         End If
  loc_122F430:       End If
  loc_122F430:     End If
  loc_122F430:   End If
  loc_122F430: End If
  loc_122F430: Exit Sub
  loc_122F431: ' Referenced from: 122EF4C
  loc_122F437: Call 0.Method_arg_50 (var_A0)
  loc_122F43F: var_EC = "Txt_GotFocus"
  loc_122F44C: Proc_183_57_104AA84(var_A0)
  loc_122F458: Exit Sub
  loc_122F459: var_EC = arg_30FF
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13278D0
  'Data Table: 4B4148
  Dim var_92 As Integer
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_B8 As Variant
  Dim var_A8 As TextBox
  Dim var_F0 As Variant
  Dim var_124 As String
  Dim unk_4B4155 As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_E0 As String
  Dim var_9E As Integer
  Dim var_A4 As Fields15
  Dim var_DC As Variant
  Dim var_184 As TextBox
  loc_1327184: On Error Goto loc_13278A8
  loc_1327191: If (CLng(Shift) = &H1B) Then
  loc_1327194:   Call Proc_201_28_EF2908()
  loc_1327199:   Exit Sub
  loc_132719A: End If
  loc_132719D: var_92 = KeyCode
  loc_13271A8: If (var_92 = CInt(0)) Then
  loc_13271E1:   Proc_183_31_100809C(Me.DGAcName, Me.Txt, KeyCode, global_100)
  loc_13271F4: Else
  loc_13271FC:   If (var_92 = CInt(2)) Then
  loc_132720A:     Set var_A8 = Me.Txt
  loc_1327226:     Set var_9C = var_A8
  loc_1327235:     Proc_183_31_100809C(Me.DGAcAlias, var_9C, KeyCode, global_108, Shift, 0)
  loc_1327250:     If (global_64 = "Y") Then
  loc_132725D:       If (CLng(Shift) = &HD) Then
  loc_1327264:         Set var_98 = Me.TopCtrl1
  loc_132726A:         Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_1327272:         var_BC = CStr(Shift)
  loc_1327283:         If (var_BC = "Edit") Then
  loc_1327294:           Set var_98 = Me.Txt
  loc_132729A:           Call 0.Method_Txt_KeyDown0 (CInt(2), var_9C, var_BC)
  loc_13272A2:           0 = var_9C.Text
  loc_13272BB:           var_DC = Ucase(Trim(CVar(var_BC)))
  loc_13272D1:           Set var_A4 = Me.Txt
  loc_13272D7:           Call 0.Method_Txt_KeyDown0 (CInt(0), var_A8, var_E0)
  loc_13272DF:           var_DC = var_A8.Text
  loc_13272E7:           var_F0 = CVar(var_E0) 'String
  loc_132731C:           If (1 = Ucase(Trim(var_F0))) Then
  loc_1327323:             var_8A = CByte(1) 'Byte
  loc_1327327:           End If
  loc_1327345:           Set var_98 = Me.Txt
  loc_132734B:           Call 0.Method_Txt_KeyDown0 (CInt(2), var_9C, var_BC, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1327353:           var_B8 = var_9C.Text
  loc_1327364:           var_124 = Proc_183_20_FB3974(var_BC, -1)
  loc_1327391:           unk_4B4155.Execute var_92 & Proc_183_20_FB3974(global_56, var_A4 & var_124 & "' and GroupHelp<>'") & "'", , 
  loc_13273D0:           If (var_A4.RecordCount > 0) Then
  loc_13273D7:             var_8C = CByte(1) 'Byte
  loc_13273DB:           End If
  loc_13273EE:           If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_1327412:             MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_DC, var_F0)
  loc_132742D:             Set var_98 = Me.Txt
  loc_1327433:             Call 0.Method_Txt_KeyDown0 (CInt(2))
  loc_132743B:             var_9C.SetFocus
  loc_1327447:             Exit Sub
  loc_1327448:           End If
  loc_1327448:         End If
  loc_1327448:       End If
  loc_1327448:     End If
  loc_132744B:   Else
  loc_1327453:     If (var_92 = CInt(4)) Then
  loc_132747D:       Set var_9C = Me.Txt
  loc_132748C:       Proc_183_34_1305540(Me.DGUnderAc, var_9C, KeyCode, global_112)
  loc_13274A8:       If (CInt(global_60) = 0) Then
  loc_13274B5:         If (CLng(Shift) = &HD) Then
  loc_1327506:           Set var_98 = Me.Txt
  loc_132750C:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_BC, ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))))
  loc_1327514:           Shift = var_9C.Text
  loc_132752C:           If (0 Or (var_BC <> vbNullString)) Then
  loc_1327544:             var_98 = Me.Fields
  loc_1327554:             var_B8 = var_98.Item("Code").Value
  loc_132758E:             unk_4B4155.Execute "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN From AcGroup Where GroupCode='" & CStr(var_B8) & "'", var_B8, -1
  loc_1327599:             Set var_88 = var_98
  loc_13275BD:             If (var_88.RecordCount > 0) Then
  loc_13275CF:               var_98 = var_88.Fields
  loc_13275E8:               var_9E = IsNull(CVar(var_98.Item("Nature")))
  loc_1327602:               var_A8 = var_88.Fields.Item("Nature")
  loc_132763A:               Set var_180 = Me.Txt
  loc_1327640:               Call 0.Method_Txt_KeyDown0 (CInt(5), var_184, CStr(IIf(var_9E, vbNullString, CVar(var_A8))), var_9E)
  loc_1327648:               var_184.Text = var_98
  loc_1327668:               ' Referenced from:     13277B6
  loc_1327677:               If Not(var_88.EOF) Then
  loc_13276B6:                 If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_13276F6:                   Set var_A4 = Me.Txt
  loc_13276FC:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_1327704:                   var_A8.Text = 1
  loc_1327736:                   var_9C = var_88.Fields.Item("GroupCode")
  loc_1327755:                   Set var_A4 = Me.Txt
  loc_132775B:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_A8)
  loc_1327763:                   var_A8.Tag = CStr(var_9C.Value)
  loc_1327787:                   Set var_98 = Me.Txt
  loc_132778D:                   Call 0.Method_Txt_KeyDown0 (CInt(4), var_9C)
  loc_1327795:                   var_BC = var_9C.Text
  loc_13277A0:                   global_92 = var_BC
  loc_13277AE:                 End If
  loc_13277B1:                 var_88.MoveNext
  loc_13277B6:                 GoTo loc_1327668
  loc_13277B9:               End If
  loc_13277B9:             End If
  loc_13277B9:           End If
  loc_13277B9:           Exit Sub
  loc_13277BA:         End If
  loc_13277BA:       End If
  loc_13277BD:     Else
  loc_13277C5:       If (var_92 = CInt(5)) Then
  loc_13277EA:         Set var_98 = Me.Txt
  loc_13277F0:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_13277F8:         var_14C = var_9C.Left
  loc_132780A:         Set var_A4 = Me.Txt
  loc_1327810:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1327818:         var_188 = var_A8.Width
  loc_132782A:         Set var_180 = Me.Txt
  loc_1327830:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_184)
  loc_1327838:         var_18C = var_184.Width
  loc_132787F:         Proc_183_36_114886C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_132789F:       End If
  loc_132789F:     End If
  loc_132789F:   End If
  loc_132789F: End If
  loc_13278A4: Set var_88 = Nothing
  loc_13278A7: Exit Sub
  loc_13278A8: ' Referenced from: 1327184
  loc_13278AE: Call 0.Method_arg_50 (var_BC, CInt((var_14C + var_188)), 700)
  loc_13278C3: Proc_183_57_104AA84(var_BC, "Txt_KeyDown", CInt(var_18C))
  loc_13278CF: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ECEF04
  'Data Table: 4B4148
  Dim arg_10 As Integer
  loc_ECEE60: On Error Goto loc_ECEEDC
  loc_ECEE69: If (arg_10 = &H27) Then
  loc_ECEE6E:   arg_10 = 0
  loc_ECEE71:   Exit Sub
  loc_ECEE72: End If
  loc_ECEE80: If (KeyAscii = CInt(4)) Then
  loc_ECEE9F:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_ECEEB1:     var_A0 = "Name"
  loc_ECEECC:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_112, arg_10)
  loc_ECEEDB:   End If
  loc_ECEEDB: End If
  loc_ECEEDB: Exit Sub
  loc_ECEEDC: ' Referenced from: ECEE60
  loc_ECEEE2: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_ECEEF7: Proc_183_57_104AA84(var_A0, "TXT_KeyPress")
  loc_ECEF03: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F92054
  'Data Table: 4B4148
  Dim var_86 As Integer
  loc_F91EF8: On Error Goto loc_F92029
  loc_F91EFE: var_86 = KeyCode
  loc_F91F09: If (var_86 = CInt(0)) Then
  loc_F91F28:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F91F35:     var_A0 = "Name"
  loc_F91F50:     Proc_183_32_FE7F70(Me.Txt, KeyCode, global_100)
  loc_F91F5F:   End If
  loc_F91F62: Else
  loc_F91F6A:   If (var_86 = CInt(2)) Then
  loc_F91F89:     If (CBool(Me.DGAcAlias.Visible) = &HFF) Then
  loc_F91F96:       var_A0 = "Name"
  loc_F91FB1:       Proc_183_32_FE7F70(Me.Txt, KeyCode, global_108, Shift)
  loc_F91FC0:     End If
  loc_F91FC3:   Else
  loc_F91FCB:     If (var_86 = CInt(5)) Then
  loc_F91FE9:       If (Me.FrmList.Visible = &HFF) Then
  loc_F92018:         Proc_183_35_F29A04(Me.ListView, Me.Txt, KeyCode, Shift, global_88)
  loc_F92028:       End If
  loc_F92028:     End If
  loc_F92028:   End If
  loc_F92028: End If
  loc_F92028: Exit Sub
  loc_F92029: ' Referenced from: F91EF8
  loc_F9202F: Call 0.Method_arg_50 (var_A0, var_A0, Shift)
  loc_F92044: Proc_183_57_104AA84(var_A0, "Txt_KeyUp")
  loc_F92050: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E481BC
  'Data Table: 4B4148
  loc_E4819A: Set var_88 = Me.Txt
  loc_E481A0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E481AE: Proc_183_27_E22608(var_8C)
  loc_E481BA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14876E8
  'Data Table: 4B4148
  Dim var_92 As Integer
  Dim var_9C As Variant
  Dim var_A0 As String
  Dim var_B8 As String
  Dim unk_4B4155 As Connection15
  Dim var_88 As Recordset15
  Dim arg_10 As Integer
  Dim var_140 As String
  Dim var_144 As String
  Dim var_B0 As Variant
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_17A As Integer
  Dim var_D4 As Fields15
  Dim var_118 As Variant
  Dim var_184 As TextBox
  loc_1486AB8: On Error Goto loc_14876BD
  loc_1486ABF: var_8A = CByte(0) 'Byte
  loc_1486AC7: var_8C = CByte(0) 'Byte
  loc_1486ACE: var_92 = Cancel
  loc_1486AD9: If (var_92 = CInt(0)) Then
  loc_1486AE9:   Set var_98 = Me.Txt
  loc_1486AEF:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1486B0E:   If (var_9C.Text = vbNullString) Then
  loc_1486B11:     Exit Sub
  loc_1486B12:   End If
  loc_1486B16:   Set var_98 = Me.TopCtrl1
  loc_1486B1C:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_92)
  loc_1486B24:   var_A0 = CStr()
  loc_1486B35:   If (var_A0 = "Add") Then
  loc_1486B56:     Set var_98 = Me.Txt
  loc_1486B5C:     Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1486B64:     var_B0 = var_9C.Text
  loc_1486B75:     var_B8 = Proc_183_20_FB3974(var_A0, -1)
  loc_1486B89:     unk_4B4155.Execute var_D4 & var_B8 & "'", , 
  loc_1486BC2:     If (var_D4.RecordCount > 0) Then
  loc_1486BE0:       var_B0 = "Duplicate Account Group not Allowed"
  loc_1486BE6:       MsgBox(var_B0, &H40, "Validation", var_118, var_138)
  loc_1486C01:       Set var_98 = Me.Txt
  loc_1486C07:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1486C0F:       var_9C.SetFocus
  loc_1486C1D:       arg_10 = &HFF
  loc_1486C20:       Exit Sub
  loc_1486C21:     End If
  loc_1486C35:     var_A0 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where MainGrCode<>'999' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_1486C45:     unk_4B4155.Execute var_A0 & "' OR LOGSITE_CODE='HO')  Order by GroupName", var_B0, -1
  loc_1486C56:     Set global_112 = var_98
  loc_1486C74:     CVarUnk
  loc_1486C79:     VerifyVarObj
  loc_1486C7F:     Set var_98 = Me.DGUnderAc
  loc_1486C85:     LateIdStAd
  loc_1486C96:   Else
  loc_1486CA0:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(Me.TopCtrl1)
  loc_1486CA8:     var_A0 = CStr(global_112)
  loc_1486CB9:     If (var_A0 = "Edit") Then
  loc_1486CE0:       Call 0.Method_Txt_Validate0 (CInt(0), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='", var_B0)
  loc_1486CE8:       -1 = var_9C.Text
  loc_1486D16:       var_140 = var_9C & Proc_183_20_FB3974(global_68, arg_10 & Proc_183_20_FB3974(var_A0, var_D4, Me.Txt) & "' and GroupHelp<>'")
  loc_1486D26:       unk_4B4155.Execute var_140 & "'", , 
  loc_1486D65:       If (var_D4.RecordCount > 0) Then
  loc_1486D89:         MsgBox("Duplicate Account Group not Allowed", &H40, "Validation", var_118, var_138)
  loc_1486DA4:         Set var_98 = Me.Txt
  loc_1486DAA:         Call 0.Method_Txt_Validate0 (CInt(0))
  loc_1486DB2:         var_9C.SetFocus
  loc_1486DC0:         arg_10 = &HFF
  loc_1486DC3:         Exit Sub
  loc_1486DC4:       End If
  loc_1486DC4:     End If
  loc_1486DC4:   End If
  loc_1486DC7: Else
  loc_1486DCF:   If (var_92 = CInt(2)) Then
  loc_1486DDF:     Set var_98 = Me.Txt
  loc_1486DE5:     Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1486DED:     arg_10 = var_9C.Text
  loc_1486E04:     If (var_A0 = vbNullString) Then
  loc_1486E07:       Exit Sub
  loc_1486E08:     End If
  loc_1486E0C:     Set var_98 = Me.TopCtrl1
  loc_1486E12:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_9C)
  loc_1486E2B:     If (CStr() = "Add") Then
  loc_1486E3C:       Set var_98 = Me.Txt
  loc_1486E42:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_1486E4A:       var_A0 = var_9C.Text
  loc_1486E63:       var_118 = Ucase(Trim(CVar(var_A0)))
  loc_1486E79:       Set var_D4 = Me.Txt
  loc_1486E7F:       Call 0.Method_Txt_Validate0 (CInt(0), var_148)
  loc_1486E8F:       var_138 = CVar(var_148.Text) 'String
  loc_1486EC4:       If (var_118 = Ucase(Trim(var_138))) Then
  loc_1486ECB:         var_8A = CByte(1) 'Byte
  loc_1486ECF:       End If
  loc_1486EED:       Set var_98 = Me.Txt
  loc_1486EF3:       Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_1486EFB:       var_B0 = var_9C.Text
  loc_1486F0C:       var_B8 = Proc_183_20_FB3974(var_A0, -1)
  loc_1486F20:       unk_4B4155.Execute var_D4 & Proc_183_20_FB3974(var_A0, var_D4, Me.Txt) & "'", , 
  loc_1486F59:       If (var_D4.RecordCount > 0) Then
  loc_1486F60:         var_8C = CByte(1) 'Byte
  loc_1486F64:       End If
  loc_1486F77:       If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_1486F9B:         MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_118, var_138)
  loc_1486FB6:         Set var_98 = Me.Txt
  loc_1486FBC:         Call 0.Method_Txt_Validate0 (CInt(2))
  loc_1486FC4:         var_9C.SetFocus
  loc_1486FD2:         arg_10 = &HFF
  loc_1486FD5:         Exit Sub
  loc_1486FD6:       End If
  loc_1486FD9:     Else
  loc_1486FDD:       Set var_98 = Me.TopCtrl1
  loc_1486FE3:       Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(arg_10)
  loc_1486FFC:       If (CStr(var_9C) = "Edit") Then
  loc_148700D:         Set var_98 = Me.Txt
  loc_1487013:         Call 0.Method_Txt_Validate0 (CInt(2), var_9C)
  loc_148701B:         var_A0 = var_9C.Text
  loc_1487034:         var_118 = Ucase(Trim(CVar(var_A0)))
  loc_148704A:         Set var_D4 = Me.Txt
  loc_1487050:         Call 0.Method_Txt_Validate0 (CInt(0), var_148)
  loc_1487060:         var_138 = CVar(var_148.Text) 'String
  loc_1487095:         If (var_118 = Ucase(Trim(var_138))) Then
  loc_148709C:           var_8A = CByte(1) 'Byte
  loc_14870A0:         End If
  loc_14870BE:         Set var_98 = Me.Txt
  loc_14870C4:         Call 0.Method_Txt_Validate0 (CInt(2), var_9C, var_A0, "Select GroupHelp From AcGroup Where GroupHelp='")
  loc_14870CC:         var_B0 = var_9C.Text
  loc_14870DD:         var_B8 = Proc_183_20_FB3974(var_A0, -1)
  loc_1487101:         var_144 = var_D4 & Proc_183_20_FB3974(var_A0, var_D4, Me.Txt) & "' and GroupHelp<>'" & Proc_183_20_FB3974(global_56) & "'"
  loc_148710A:         unk_4B4155.Execute var_144, , 
  loc_1487149:         If (var_D4.RecordCount > 0) Then
  loc_1487150:           var_8C = CByte(1) 'Byte
  loc_1487154:         End If
  loc_1487167:         If ((CInt(var_8A) = 1) Or (CInt(var_8C) = 1)) Then
  loc_148718B:           MsgBox("Duplicate Alias not Allowed", &H40, "Validation", var_118, var_138)
  loc_14871A6:           Set var_98 = Me.Txt
  loc_14871AC:           Call 0.Method_Txt_Validate0 (CInt(2))
  loc_14871B4:           var_9C.SetFocus
  loc_14871C2:           arg_10 = &HFF
  loc_14871C5:           Exit Sub
  loc_14871C6:         End If
  loc_14871C6:       End If
  loc_14871C6:     End If
  loc_14871C9:   Else
  loc_14871D1:     If (var_92 = CInt(4)) Then
  loc_14871E1:       Set var_98 = Me.Txt
  loc_14871E7:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_14871EF:       arg_10 = var_9C.Text
  loc_1487206:       If (var_A0 = vbNullString) Then
  loc_1487209:         Exit Sub
  loc_148720A:       End If
  loc_1487258:       Set var_98 = Me.Txt
  loc_148725E:       Call 0.Method_Txt_Validate0 (Cancel, var_9C, var_A0)
  loc_1487266:       ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_9C.Text
  loc_148727E:       If (var_9C Or (var_A0 <> vbNullString)) Then
  loc_1487296:         var_98 = Me.Fields
  loc_14872A6:         var_B0 = var_98.Item("Code").Value
  loc_14872D0:         var_A0 = "Select GroupCode,GroupName,MainGrCode,Nature,AliasYN,TRADINGYN,GroupNature From AcGroup Where GroupCode='" & CStr(var_B0)
  loc_14872E0:         unk_4B4155.Execute var_A0 & "'", var_B0, -1
  loc_14872EB:         Set var_88 = var_98
  loc_148730F:         If (var_88.RecordCount > 0) Then
  loc_148733A:           var_17A = IsNull(CVar(var_88.Fields.Item("Nature")))
  loc_1487354:           var_148 = var_88.Fields.Item("Nature")
  loc_148738C:           Set var_180 = Me.Txt
  loc_1487392:           Call 0.Method_Txt_Validate0 (CInt(5), var_184, CStr(IIf(var_17A, vbNullString, CVar(var_148))))
  loc_148739A:           var_184.Text = var_17A
  loc_14873BA:           ' Referenced from:     148764F
  loc_14873C9:           If Not(var_88.EOF) Then
  loc_1487408:             If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_1487448:               Set var_D4 = Me.Txt
  loc_148744E:               Call 0.Method_Txt_Validate0 (CInt(4), var_148)
  loc_1487456:               var_148.Text = CStr(Trim(CVar(var_88.Fields.Item("GroupName"))))
  loc_1487488:               var_9C = var_88.Fields.Item("GroupCode")
  loc_14874A7:               Set var_D4 = Me.Txt
  loc_14874AD:               Call 0.Method_Txt_Validate0 (CInt(4), var_148)
  loc_14874B5:               var_148.Tag = CStr(var_9C.Value)
  loc_14874D9:               Set var_98 = Me.Txt
  loc_14874DF:               Call 0.Method_Txt_Validate0 (CInt(4), var_9C)
  loc_14874F2:               global_92 = var_9C.Text
  loc_148754E:               var_148 = var_88.Fields.Item("GroupNature")
  loc_1487580:               If CBool((var_88.Fields.Item("GroupNature").Value = "E") Or (var_148.Value = "R")) Then
  loc_148759D:                 var_9C = var_88.Fields.Item("TradingYN")
  loc_14875EE:                 Set var_D4 = Me.Txt
  loc_14875F4:                 Call 0.Method_Txt_Validate0 (CInt(6), var_148)
  loc_14875FC:                 var_148.Text = CStr(IIf((var_9C.Value = "Y"), "Yes", "No"))
  loc_148761F:               Else
  loc_148762D:                 Set var_98 = Me.Txt
  loc_1487633:                 Call 0.Method_Txt_Validate0 (CInt(6), var_9C)
  loc_148763B:                 var_9C.Text = vbNullString
  loc_1487647:               End If
  loc_1487647:             End If
  loc_148764A:             var_88.MoveNext
  loc_148764F:             GoTo loc_14873BA
  loc_1487652:           End If
  loc_1487652:         End If
  loc_1487652:       End If
  loc_1487655:     Else
  loc_148765D:       If (var_92 = CInt(5)) Then
  loc_148767E:         var_A0 = Me.ListView.SelectedItem.Text
  loc_1487690:         Set var_D4 = Me.Txt
  loc_1487696:         Call 0.Method_Txt_Validate0 (Cancel, var_148)
  loc_148769E:         var_148.Text = var_A0
  loc_14876B4:       End If
  loc_14876B4:     End If
  loc_14876B4:   End If
  loc_14876B4: End If
  loc_14876B9: Set var_88 = Nothing
  loc_14876BC: Exit Sub
  loc_14876BD: ' Referenced from: 1486AB8
  loc_14876C3: Call 0.Method_arg_50 (var_A0)
  loc_14876D8: Proc_183_57_104AA84(var_A0, "Txt_Validate")
  loc_14876E4: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'F7FEC4
  'Data Table: 4B4148
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7FD80: On Error Goto loc_F7FE9A
  loc_F7FD92: Me.DGUnderAc.Visible = False
  loc_F7FDB1: If (Me.RecordCount > 0) Then
  loc_F7FDF0:   Set var_B4 = Me.Txt
  loc_F7FDF6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F7FDFE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F7FE31:   var_B0 = Me.Fields.Item("Code")
  loc_F7FE42:   var_CC = CStr(var_B0.Value)
  loc_F7FE50:   Set var_B4 = Me.Txt
  loc_F7FE56:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4), var_B8)
  loc_F7FE5E:   var_B8.Tag = var_CC
  loc_F7FE74: End If
  loc_F7FE7F: Set var_A8 = Me.Txt
  loc_F7FE85: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(4))
  loc_F7FE8D: var_B0.SetFocus
  loc_F7FE99: Exit Sub
  loc_F7FE9A: ' Referenced from: F7FD80
  loc_F7FEA0: Call 0.Method_arg_50 (var_CC)
  loc_F7FEB5: Proc_183_57_104AA84(var_CC, "DGUnderAc_Click")
  loc_F7FEC1: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBB060
  'Data Table: 4B4148
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBAFCE: On Error Goto loc_EBB037
  loc_EBAFD7: Me.MoveFirst
  loc_EBAFF1: var_8C = "SearchCode='" & MyValue
  loc_EBB001: Me.Find var_8C & "'", 0, 1
  loc_EBB00D: Call Proc_201_31_14D06E8(var_A0)
  loc_EBB02E: Proc_5_0_110649C(&HFF, Me)
  loc_EBB036: Exit Sub
  loc_EBB037: ' Referenced from: EBAFCE
  loc_EBB03D: Call 0.Method_arg_50 (var_8C, global_96)
  loc_EBB052: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EBB05E: Exit Sub
End Sub

Public Sub Proc_201_27_F5F54C(arg_C) 'F5F54C
  'Data Table: 4B4148
  Dim var_8C As TextBox
  loc_F5F438: On Error Goto loc_F5F523
  loc_F5F43B: Call Proc_201_28_EF2908()
  loc_F5F44B: Set var_88 = Me.Txt
  loc_F5F451: Call 0.Method_Proc_201_27_F5F54C0 (CInt(0))
  loc_F5F47A: If (Proc_183_19_E8DAFC(var_8C, "Group Name") = 0) Then
  loc_F5F47D:   Exit Sub
  loc_F5F47E: End If
  loc_F5F489: Set var_88 = Me.Txt
  loc_F5F48F: Call 0.Method_Proc_201_27_F5F54C0 (CInt(4), var_8C)
  loc_F5F497: var_94 = "Under Group"
  loc_F5F4B8: If (Proc_183_19_E8DAFC(var_8C, var_94) = 0) Then
  loc_F5F4BB:   Exit Sub
  loc_F5F4BC: End If
  loc_F5F4F3: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F5F4F6:   Call TopCtrl1_UnknownEvent_16()
  loc_F5F4FE: Else
  loc_F5F508:   Set var_88 = Me.Txt
  loc_F5F50E:   Call 0.Method_Proc_201_27_F5F54C0 (arg_C, var_8C)
  loc_F5F516:   var_8C.SetFocus
  loc_F5F522: End If
  loc_F5F522: Exit Sub
  loc_F5F523: ' Referenced from: F5F438
  loc_F5F529: Call 0.Method_arg_50 (var_94)
  loc_F5F53E: Proc_183_57_104AA84(var_94, "SaveMsg")
  loc_F5F54A: Exit Sub
End Sub

Public Sub Proc_201_28_EF2908
  'Data Table: 4B4148
  loc_EF284C: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EF285E:   Me.DGAcName.Visible = False
  loc_EF2866: End If
  loc_EF2882: If (CBool(Me.DGAcAlias.Visible) = &HFF) Then
  loc_EF2894:   Me.DGAcAlias.Visible = False
  loc_EF289C: End If
  loc_EF28B8: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EF28CA:   Me.DGUnderAc.Visible = False
  loc_EF28D2: End If
  loc_EF28ED: If (Me.FrmList.Visible = &HFF) Then
  loc_EF28FC:   Me.FrmList.Visible = False
  loc_EF2904: End If
  loc_EF2904: Exit Sub
End Sub

Public Sub Proc_201_29_F2D9F4(arg_C) 'F2D9F4
  'Data Table: 4B4148
  Dim var_8C As TextBox
  loc_F2D8EA: Set var_88 = Me.Txt
  loc_F2D8F0: Call 0.Method_Proc_201_29_F2D9F40 (CInt(0), var_8C)
  loc_F2D8F8: var_8C.Enabled = arg_C
  loc_F2D912: Set var_88 = Me.Txt
  loc_F2D918: Call 0.Method_Proc_201_29_F2D9F40 (CInt(1), var_8C)
  loc_F2D920: var_8C.Enabled = arg_C
  loc_F2D93A: Set var_88 = Me.Txt
  loc_F2D940: Call 0.Method_Proc_201_29_F2D9F40 (CInt(2), var_8C)
  loc_F2D948: var_8C.Enabled = arg_C
  loc_F2D962: Set var_88 = Me.Txt
  loc_F2D968: Call 0.Method_Proc_201_29_F2D9F40 (CInt(3), var_8C)
  loc_F2D970: var_8C.Enabled = arg_C
  loc_F2D98A: Set var_88 = Me.Txt
  loc_F2D990: Call 0.Method_Proc_201_29_F2D9F40 (CInt(4), var_8C)
  loc_F2D998: var_8C.Enabled = arg_C
  loc_F2D9B2: Set var_88 = Me.Txt
  loc_F2D9B8: Call 0.Method_Proc_201_29_F2D9F40 (CInt(5), var_8C)
  loc_F2D9C0: var_8C.Enabled = arg_C
  loc_F2D9D9: Set var_88 = Me.Txt
  loc_F2D9DF: Call 0.Method_Proc_201_29_F2D9F40 (CInt(6), var_8C)
  loc_F2D9E7: var_8C.Enabled = False
  loc_F2D9F3: Exit Sub
End Sub

Public Sub Proc_201_30_EB1AEC
  'Data Table: 4B4148
  Dim var_98 As TextBox
  loc_EB1A6A: Set var_8C = Me.Txt
  loc_EB1A70: Call 0.Method_Proc_201_30_EB1AECC (var_8E, var_86)
  loc_EB1A80: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB1A96:   Set var_8C = Me.Txt
  loc_EB1A9C:   Call 0.Method_Proc_201_30_EB1AEC0 (CInt(var_86), var_98)
  loc_EB1AA4:   var_98.Text = vbNullString
  loc_EB1AB3: Next var_92 'Byte
  loc_EB1ADB: Proc_183_1_F5B310(Me, CStr(-2147483643))
  loc_EB1AEA: Exit Sub
End Sub

Public Sub Proc_201_31_14D06E8
  'Data Table: 4B4148
  Dim Me As Variant
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim unk_4B419D As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_118 As Fields15
  Dim var_120 As String
  Dim var_160 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1CC As String
  Dim var_1D0 As Variant
  Dim var_11C As Variant
  Dim var_1DE As Integer
  Dim var_198 As Variant
  Dim unk_4B4155 As Connection15
  Dim var_114 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1E8 As TextBox
  loc_14CF984: On Error Goto loc_14D06BD
  loc_14CF9DD: unk_4B419D.Execute CStr("Select U_Name,U_AE,U_EntDt From Acgroup where groupCode='" & Me.Fields.Item("GroupCode").Value & "'  "), var_114, -1
  loc_14CF9E8: Set var_88 = var_118
  loc_14CFA3C: var_118 = var_88.Fields
  loc_14CFAA5: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_14CFAEA: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_14CFB64: var_11C = var_88.Fields.Item("U_AE")
  loc_14CFBC5: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_14CFBE4: var_198 = var_88.Fields.Item("U_EntDt")
  loc_14CFBEC: var_1A8 = CVar(var_198) 'Address
  loc_14CFBF5: var_1B8 = CVar(Proc_6_38_E68A98(var_1A8)) 'String
  loc_14CFC0A: Me.LblLDt.Caption = CStr(var_180 & var_1B8)
  loc_14CFC59: If (Me.RecordCount > 0) Then
  loc_14CFCC8:   Set var_118 = Me.Lbl
  loc_14CFCCE:   Call 0.Method_Proc_201_31_14D06E80 (3, var_11C)
  loc_14CFCD6:   var_11C.Caption = CStr(IIf((Me.Fields.Item("SysGroup").Value = "Y"), "System Defined", "User Defined"))
  loc_14CFD32:   Set var_118 = Me.Txt
  loc_14CFD38:   Call 0.Method_Proc_201_31_14D06E80 (CInt(0), var_11C)
  loc_14CFD40:   var_11C.Tag = CStr(Me.Fields.Item("GroupCode").Value)
  loc_14CFD73:   var_A0 = Me.Fields.Item("GroupName")
  loc_14CFD92:   Set var_118 = Me.Txt
  loc_14CFD98:   Call 0.Method_Proc_201_31_14D06E80 (CInt(0), var_11C)
  loc_14CFDA0:   var_11C.Text = CStr(var_A0.Value)
  loc_14CFDC4:   Set var_8C = Me.Txt
  loc_14CFDCA:   Call 0.Method_Proc_201_31_14D06E80 (CInt(0), var_A0)
  loc_14CFDDD:   global_68 = var_A0.Text
  loc_14CFE6B:   Set var_184 = Me.Txt
  loc_14CFE71:   Call 0.Method_Proc_201_31_14D06E80 (CInt(1), var_198)
  loc_14CFE79:   var_198.Text = CStr(IIf(IsNull(CVar(Me.Fields.Item("GroupNameBiLang"))), vbNullString, CVar(Me.Fields.Item("GroupNameBiLang"))))
  loc_14CFEC4:   var_1DE = IsNull(CVar(Me.Fields.Item("Nature")))
  loc_14CFF19:   Set var_184 = Me.Txt
  loc_14CFF1F:   Call 0.Method_Proc_201_31_14D06E80 (CInt(5), var_198, CStr(IIf(var_1DE, vbNullString, CVar(Me.Fields.Item("Nature")))))
  loc_14CFF27:   var_198.Text = var_1DE
  loc_14CFF9B:   var_11C = Me.Fields.Item("GroupNature")
  loc_14CFFCD:   If CBool((Me.Fields.Item("GroupNature").Value = "E") Or (var_11C.Value = "R")) Then
  loc_14CFFED:     var_A0 = Me.Fields.Item("TradingYN")
  loc_14D003E:     Set var_118 = Me.Txt
  loc_14D0044:     Call 0.Method_Proc_201_31_14D06E80 (CInt(6), var_11C)
  loc_14D004C:     var_11C.Text = CStr(IIf((var_A0.Value = "Y"), "Yes", "No"))
  loc_14D006F:   Else
  loc_14D007D:     Set var_8C = Me.Txt
  loc_14D0083:     Call 0.Method_Proc_201_31_14D06E80 (CInt(6), var_A0)
  loc_14D008B:     var_A0.Text = vbNullString
  loc_14D0097:   End If
  loc_14D00B4:   var_A0 = Me.Fields.Item("SysGroup")
  loc_14D00C5:   var_F4 = CStr(var_A0.Value)
  loc_14D00CB:   global_64 = var_F4
  loc_14D00FA:   Set var_8C = Me.Txt
  loc_14D0100:   Call 0.Method_Proc_201_31_14D06E80 (CInt(0), var_A0, var_F4, "Select ID,GroupCode,GroupName,GroupNameBiLang,MainGrCode,Nature,SubLedYN,AliasYN,GroupHelp From AcGroup Where GroupCode='")
  loc_14D0108:   var_B0 = var_A0.Tag
  loc_14D0111:   var_120 = -1 & var_F4
  loc_14D0121:   unk_4B4155.Execute Proc_6_38_E68A98(CVar(var_11C)) & "'", var_118, var_1DE
  loc_14D012C:   Set var_88 = var_118
  loc_14D0158:   If (var_88.RecordCount > 0) Then
  loc_14D0175:     var_A0 = var_88.Fields.Item("MainGrCode")
  loc_14D019B:     If (Len(var_A0.Value) = 3) Then
  loc_14D01A5:       global_60 = CByte(1)
  loc_14D01B7:       Set var_8C = Me.Txt
  loc_14D01BD:       Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_A0)
  loc_14D01C5:       var_A0.Text = "Basic Group"
  loc_14D01DE:       Set var_8C = Me.Txt
  loc_14D01E4:       Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_A0)
  loc_14D01EC:       var_A0.Enabled = False
  loc_14D01FB:     Else
  loc_14D0202:       global_60 = CByte(0)
  loc_14D0255:       var_F0 = (Len(var_88.Fields.Item("MainGrCode").Value) - 3)
  loc_14D0270:       var_160 = 0
  loc_14D028E:       var_170 = "Select GroupName From AcGroup Where MainGrCode='" & Left(CVar(var_88.Fields.Item("MainGrCode")), CLng((var_88.Fields.Item("MainGrCode").Value = "Y"))) 
  loc_14D02A5:       unk_4B4155.Execute CStr(var_170 & "'"), var_1A8, -1
  loc_14D02AD:       var_184 = var_184.Fields
  loc_14D02B5:       var_160 = var_198.Item(var_198)
  loc_14D02BD:       var_1D0 = var_1D0.Value
  loc_14D02D4:       Set var_1E4 = Me.Txt
  loc_14D02DA:       Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_1E8, CStr(var_1B8))
  loc_14D02E2:       var_1E8.Text = var_1B8
  loc_14D0329:       var_A0 = var_88.Fields.Item("MainGrCode")
  loc_14D0348:       var_11C = var_88.Fields.Item("MainGrCode")
  loc_14D0361:       var_F0 = (Len(var_11C.Value) - 3)
  loc_14D037C:       var_160 = 0
  loc_14D03A7:       var_F4 = CStr("Select GroupCode From AcGroup Where MainGrCode='" & Left(CVar(var_A0), CLng((var_A0.Value = "Y"))) & "'")
  loc_14D03B1:       unk_4B4155.Execute var_F4, var_1A8, -1
  loc_14D03B9:       var_184 = var_184.Fields
  loc_14D03C1:       var_160 = var_198.Item(var_198)
  loc_14D03C9:       var_1D0 = var_1D0.Value
  loc_14D03E0:       Set var_1E4 = Me.Txt
  loc_14D03E6:       Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_1E8, CStr(var_1B8))
  loc_14D03EE:       var_1E8.Tag = var_1B8
  loc_14D041E:     End If
  loc_14D042C:     Set var_8C = Me.Txt
  loc_14D0432:     Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_A0, var_F4)
  loc_14D043A:     global_60 = var_A0.Text
  loc_14D0445:     global_72 = var_F4
  loc_14D0461:     Set var_8C = Me.Txt
  loc_14D0467:     Call 0.Method_Proc_201_31_14D06E80 (CInt(4), var_A0)
  loc_14D047A:     global_80 = var_A0.Tag
  loc_14D0488:     ' Referenced from: 14D06A9
  loc_14D0497:     If Not(var_88.EOF) Then
  loc_14D04FA:       If CBool((var_88.RecordCount > 1) And (var_88.Fields.Item("AliasYN").Value = "Y")) Then
  loc_14D0536:         Set var_118 = Me.Txt
  loc_14D053C:         Call 0.Method_Proc_201_31_14D06E80 (CInt(2), var_11C)
  loc_14D0544:         var_11C.Text = CStr(var_88.Fields.Item("GroupName").Value)
  loc_14D058B:         global_56 = CStr(var_88.Fields.Item("GroupName").Value)
  loc_14D05B3:         var_A0 = var_88.Fields.Item("GroupNameBiLang")
  loc_14D05C4:         var_1DE = IsNull(CVar(var_A0))
  loc_14D0607:         var_F4 = CStr(IIf(var_1DE, vbNullString, CVar(var_88.Fields.Item("GroupNameBiLang"))))
  loc_14D0616:         Set var_184 = Me.Txt
  loc_14D061C:         Call 0.Method_Proc_201_31_14D06E80 (CInt(3), var_198, var_F4)
  loc_14D0624:         var_198.Text = var_1DE
  loc_14D0647:       Else
  loc_14D0655:         Set var_8C = Me.Txt
  loc_14D065B:         Call 0.Method_Proc_201_31_14D06E80 (CInt(2), var_A0)
  loc_14D0663:         var_A0.Text = vbNullString
  loc_14D0675:         global_56 = vbNullString
  loc_14D0687:         Set var_8C = Me.Txt
  loc_14D068D:         Call 0.Method_Proc_201_31_14D06E80 (CInt(3), var_A0)
  loc_14D0695:         var_A0.Text = vbNullString
  loc_14D06A1:       End If
  loc_14D06A4:       var_88.MoveNext
  loc_14D06A9:       GoTo loc_14D0488
  loc_14D06AC:     End If
  loc_14D06AC:   End If
  loc_14D06AF: Else
  loc_14D06AF:   Call Proc_201_30_EB1AEC(global_60)
  loc_14D06B4: End If
  loc_14D06B9: Set var_88 = Nothing
  loc_14D06BC: Exit Sub
  loc_14D06BD: ' Referenced from: 14CF984
  loc_14D06C3: Call 0.Method_arg_50 (var_F4)
  loc_14D06CB: var_1CC = "MoveRec"
  loc_14D06D8: Proc_183_57_104AA84(var_F4)
  loc_14D06E4: Exit Sub
End Sub

Public Sub Proc_201_32_10F64CC(arg_C) '10F64CC
  'Data Table: 4B4148
  Dim var_8C As Variant
  Dim var_94 As Variant
  Dim var_88 As Label
  Dim var_98 As TextBox
  Dim var_9C As String
  Dim var_B0 As Variant
  loc_10F61A0: On Error Goto loc_10F64A4
  loc_10F61A9: If (arg_C = &HFF) Then
  loc_10F61B8:   Set var_88 = Me.Lbl
  loc_10F61BE:   Call 0.Method_Proc_201_32_10F64CC0 (0, var_8C)
  loc_10F61D8:   Me.LblNameBiLang.Left = var_8C.Left
  loc_10F61F5:   Me.LblNameBiLang.Top = CDbl(1300)
  loc_10F620B:   Set var_88 = Me.Txt
  loc_10F6211:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(0), var_8C)
  loc_10F622C:   Set var_94 = Me.Txt
  loc_10F6232:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(1), var_98)
  loc_10F623A:   var_98.Left = var_8C.Left
  loc_10F625A:   Set var_88 = Me.Txt
  loc_10F6260:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(1), var_8C)
  loc_10F6268:   var_8C.Top = CDbl(1315)
  loc_10F6280:   Set var_88 = Me.Lbl
  loc_10F6286:   Call 0.Method_Proc_201_32_10F64CC0 (0, var_8C)
  loc_10F62A0:   Me.LblAliasBiLang.Left = var_8C.Left
  loc_10F62BD:   Me.LblAliasBiLang.Top = CDbl(1440)
  loc_10F62D3:   Set var_88 = Me.Txt
  loc_10F62D9:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(0), var_8C)
  loc_10F62F4:   Set var_94 = Me.Txt
  loc_10F62FA:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(3), var_98)
  loc_10F6302:   var_98.Left = var_8C.Left
  loc_10F6322:   Set var_88 = Me.Txt
  loc_10F6328:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(3), var_8C)
  loc_10F6330:   var_8C.Top = CDbl(1455)
  loc_10F6357:   Me.LblNameBiLang.Caption = "(" & MemVar_1F92090 & ")"
  loc_10F6369:   var_B0 = CVar(MemVar_1F92094) 'String
  loc_10F637B:   Set var_88 = Me.Txt
  loc_10F6381:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(1), var_8C)
  loc_10F6391:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_10F63A6:   var_9C = "(" & MemVar_1F92090
  loc_10F63BA:   Me.LblAliasBiLang.Caption = var_9C & ")"
  loc_10F63CC:   var_B0 = CVar(MemVar_1F92094) 'String
  loc_10F63DE:   Set var_88 = Me.Txt
  loc_10F63E4:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(3), var_8C, var_8C.Font)
  loc_10F63EC:   var_B0 = var_8C.Font
  loc_10F63F4:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_10F640E:   Me.LblNameBiLang.Visible = True
  loc_10F6422:   Me.LblAliasBiLang.Visible = True
  loc_10F642D: Else
  loc_10F6439:   Me.LblNameBiLang.Visible = False
  loc_10F644E:   Set var_88 = Me.Txt
  loc_10F6454:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(1), var_8C)
  loc_10F645C:   var_8C.Visible = False
  loc_10F6474:   Me.LblAliasBiLang.Visible = False
  loc_10F6489:   Set var_88 = Me.Txt
  loc_10F648F:   Call 0.Method_Proc_201_32_10F64CC0 (CInt(3), var_8C)
  loc_10F6497:   var_8C.Visible = False
  loc_10F64A3: End If
  loc_10F64A3: Exit Sub
  loc_10F64A4: ' Referenced from: 10F61A0
  loc_10F64AA: Call 0.Method_arg_50 (var_9C)
  loc_10F64BF: Proc_183_57_104AA84(var_9C, "ConvBiLanguage")
  loc_10F64CB: Exit Sub
End Sub

Public Sub Proc_201_33_1230A0C
  'Data Table: 4B4148
  Dim var_C8 As String
  Dim var_13C As Integer
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim unk_4B4155 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Fields15
  Dim var_140 As Field20
  Dim var_96 As Integer
  Dim var_B8 As Variant
  loc_1230508: On Error Goto loc_12309CF
  loc_1230519: If (Proc_183_56_FE8818(global_96) = &HFF) Then
  loc_123051C:   Exit Sub
  loc_123051D: End If
  loc_1230528: If (global_64 = "Y") Then
  loc_123054C:   MsgBox("System Group, Can not be Deleted", &H40, "Validation Check", var_F8, var_118)
  loc_123055C:   Exit Sub
  loc_123055D: End If
  loc_1230563: var_13C = 0
  loc_1230579: var_C8 = "SELECT COUNT(*) from ACGROUP WHERE LEFT(MAINGRCODE,LEN(MAINGRCODE)-3) ='"
  loc_12305AB: var_D8 = "Validation Check" & Me.Fields.Item("MainGrCode").Value 
  loc_12305B4: var_F8 = var_D8 & "'" 
  loc_12305C2: unk_4B4155.Execute CStr(var_F8), var_118, -1
  loc_12305CA: var_128 = var_128.Fields
  loc_12305D2: var_13C = var_12C.Item(var_12C)
  loc_12305DA: var_140 = var_140.Value
  loc_1230607: If (var_150 > 0) Then
  loc_1230623:   MsgBox("Childs Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_1230633:   Exit Sub
  loc_1230634: End If
  loc_123063A: var_13C = 0
  loc_1230682: var_D8 = "SELECT COUNT(*) from SUBGROUP WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value 
  loc_123068B: var_F8 = var_D8 & "'" 
  loc_1230699: unk_4B4155.Execute CStr(var_F8), var_118, -1
  loc_12306A1: var_128 = var_128.Fields
  loc_12306A9: var_13C = var_12C.Item(var_12C)
  loc_12306B1: var_140 = var_140.Value
  loc_12306DE: If (var_150 > 0) Then
  loc_12306FA:   MsgBox("Ledger A/c Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_123070A:   Exit Sub
  loc_123070B: End If
  loc_1230711: var_13C = 0
  loc_1230759: var_D8 = "SELECT COUNT(*) from LEDGER WHERE GROUPCODE='" & Me.Fields.Item("GroupCode").Value 
  loc_1230762: var_F8 = var_D8 & "'" 
  loc_1230770: unk_4B4155.Execute CStr(var_F8), var_118, -1
  loc_1230778: var_128 = var_128.Fields
  loc_1230780: var_13C = var_12C.Item(var_12C)
  loc_1230788: var_140 = var_140.Value
  loc_12307B5: If (var_150 > 0) Then
  loc_12307D1:   MsgBox("Ledger Entries Exist Can't Delete it", 0, var_D8, var_F8, var_118)
  loc_12307E1:   Exit Sub
  loc_12307E2: End If
  loc_12307F9: If (Me.RecordCount > 0) Then
  loc_1230833:   If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_123083F:     var_174 = Me.AbsolutePosition
  loc_1230858:     unk_4B4155.BeginTrans var_174
  loc_123085F:     var_96 = &HFF
  loc_12308AA:     var_F8 = "Delete From AcGroup Where GroupCode='" & Me.Fields.Item("GroupCode").Value & "'" 
  loc_12308AE:     var_124 = CStr(var_F8)
  loc_12308B8:     unk_4B4155.Execute var_124, var_118, -1
  loc_12308DA:     unk_4B4155.CommitTrans
  loc_12308E1:     var_96 = 0
  loc_12308EF:     Me.Requery -1
  loc_12308FF:     Me.Requery -1
  loc_123090F:     Me.Requery -1
  loc_123091F:     Me.Requery -1
  loc_123093B:     If (Me.RecordCount > 0) Then
  loc_1230955:       If (Me.AbsolutePosition > 1) Then
  loc_1230960:         var_B8 = (CVar(Me.AbsolutePosition) - 1)
  loc_123096C:         Me.AbsolutePosition = CLng(Me.Fields.Item("GroupCode").Value)
  loc_1230971:       End If
  loc_1230971:     End If
  loc_123098D:     Proc_5_0_110649C(&HFF, Me, global_96, 0, var_96)
  loc_1230995:     Call Proc_201_31_14D06E8(var_128, var_96, var_150)
  loc_123099A:   End If
  loc_123099D: Else
  loc_12309BE:   MsgBox("No Records To Delete!", &H40, "Information", var_F8, var_118)
  loc_12309CE: End If
  loc_12309CE: Exit Sub
  loc_12309CF: ' Referenced from: 1230508
  loc_12309D5: If (var_96 = &HFF) Then
  loc_12309DE:   unk_4B4155.RollbackTrans
  loc_12309E3: End If
  loc_12309E9: Call 0.Method_arg_50 (var_124, var_150)
  loc_12309FE: Proc_183_57_104AA84(var_124, "UpdateDataBaseDelete")
  loc_1230A0A: Exit Sub
End Sub

Public Sub Proc_201_34_15C28E4
  'Data Table: 4B4148
  Dim var_CC As String
  Dim var_D0 As String
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_4B4155 As Connection15
  Dim var_8C As Recordset15
  Dim var_E8 As Variant
  Dim Me As Recordset15
  Dim var_FC As Variant
  Dim var_104 As Variant
  Dim var_F8 As Variant
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_11C As TextBox
  Dim var_120 As String
  Dim var_90 As Recordset15
  Dim var_A8 As Integer
  Dim var_A6 As Integer
  Dim var_148 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_118 As Field20
  Dim var_92 As Integer
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As String
  Dim var_1DC As Variant
  Dim var_20C As String
  Dim var_21C As Variant
  Dim var_2AC As Variant
  Dim var_2DC As String
  Dim var_2EC As Variant
  Dim var_33C As Variant
  Dim var_360 As String
  Dim var_364 As String
  Dim var_368 As String
  Dim var_370 As String
  Dim var_374 As String
  Dim var_380 As String
  Dim var_378 As TextBox
  Dim var_398 As String
  Dim var_38C As TextBox
  Dim var_114 As Variant
  Dim var_26C As Variant
  Dim var_30C As Variant
  Dim var_37C As String
  Dim var_390 As String
  Dim var_3B4 As TextBox
  Dim var_3C0 As String
  loc_15C16D4: On Error Goto loc_15C28A8
  loc_15C16E5: If (Proc_183_55_FE7900(global_96) = &HFF) Then
  loc_15C16E8:   Exit Sub
  loc_15C16E9: End If
  loc_15C1700: var_CC = "Select * FROM ACGROUP WHERE GROUPCODE='" & global_76
  loc_15C1711: var_D4 = var_CC & "' AND GROUPNAME='" & global_68
  loc_15C1721: unk_4B4155.Execute var_D4 & "'", var_F8, -1
  loc_15C172C: Set var_8C = var_FC
  loc_15C1754: If (var_8C.RecordCount > 0) Then
  loc_15C1785:   var_B8 = CStr(Me.Fields.Item("GroupCode").Value)
  loc_15C17B8:   Proc_183_3_E7D1C8(var_114, CVar(var_8C.Fields.Item("CURRENTBALANCE")))
  loc_15C17F9:   var_C4 = CStr(var_8C.Fields.Item("MainGrCode").Value)
  loc_15C182E:   var_AC = Proc_183_2_E5A304(CVar(var_8C.Fields.Item("SysGroup")), CSng(var_114))
  loc_15C1862:   var_94 = CInt(var_8C.Fields.Item("ID").Value)
  loc_15C189A:   var_96 = CInt(var_8C.Fields.Item("ID").Value)
  loc_15C18C1:   var_104 = var_8C.Fields.Item("Site_Code")
  loc_15C18C9:   var_F8 = var_104.Value
  loc_15C18D2:   var_C8 = CStr(var_F8)
  loc_15C18ED:   Set var_FC = Me.Txt
  loc_15C18F3:   Call 0.Method_Proc_201_34_15C28E40 (CInt(4), var_104, var_CC)
  loc_15C18FB:   var_96 = var_104.Tag
  loc_15C1915:   If (var_CC <> global_80) Then
  loc_15C193C:     Call 0.Method_Proc_201_34_15C28E40 (CInt(4), var_104, var_CC, "Select * FROM ACGROUP WHERE GROUPCODE='", var_F8)
  loc_15C1944:     -1 = var_104.Tag
  loc_15C1954:     var_D8 = var_128 & var_CC & "' AND GROUPNAME='"
  loc_15C1965:     Set var_118 = Me.Txt
  loc_15C196B:     Call 0.Method_Proc_201_34_15C28E40 (CInt(4), var_11C, var_D4)
  loc_15C1973:     var_D8 = var_11C.Text
  loc_15C198C:     unk_4B4155.Execute var_94 & var_D4 & "'", Me.Txt, 
  loc_15C1997:     Set var_90 = var_128
  loc_15C19BF:     var_100 = var_90.RecordCount
  loc_15C19CD:     If (var_100 > 0) Then
  loc_15C19DE:       Set var_FC = Me.Txt
  loc_15C19E4:       Call 0.Method_Proc_201_34_15C28E40 (CInt(4), var_104)
  loc_15C19F7:       global_92 = var_104.Text
  loc_15C1A30:       var_9C = CStr(var_90.Fields.Item("GroupNature").Value)
  loc_15C1A5C:       var_F8 = CVar(var_90.Fields.Item("BLORD")) 'Address
  loc_15C1A63:       Proc_183_3_E7D1C8(var_114)
  loc_15C1A6C:       var_A8 = CInt(var_114)
  loc_15C1AA4:       var_B0 = CStr(var_90.Fields.Item("TradingYN").Value)
  loc_15C1ACB:       var_104 = var_90.Fields.Item("MainGrCode")
  loc_15C1ADC:       var_B4 = CStr(var_104.Value)
  loc_15C1AEB:       var_A6 = 1
  loc_15C1AEE:       ' Referenced from: 15C1BB6
  loc_15C1AF0:       If &HFF Then
  loc_15C1AF6:         var_148 = CVar(var_B4) 'String
  loc_15C1B08:         var_F8 = "000"
  loc_15C1B19:         var_114 = Format(var_A6, var_F8)
  loc_15C1B38:         var_138 = 0
  loc_15C1B55:         var_CC = "Select COUNT(*) from AcGroup Where MAINGRCODE='" & CStr(1 & var_114)
  loc_15C1B65:         unk_4B4155.Execute var_CC & "'", var_F8, -1
  loc_15C1B6D:         var_FC = var_FC.Fields
  loc_15C1B75:         var_138 = var_104.Item(var_104)
  loc_15C1B7D:         var_118 = var_118.Value
  loc_15C1B85:         var_148 = 0
  loc_15C1BA4:         If (var_114 > var_148) Then
  loc_15C1BAD:           var_A6 = (var_A6 + 1)
  loc_15C1BB3:         Else
  loc_15C1BB6:         Else
  loc_15C1BB6:           GoTo loc_15C1AEE
  loc_15C1BB9:         End If
  loc_15C1BB9:       End If
  loc_15C1BB9:     End If
  loc_15C1BBC:   Else
  loc_15C1BD6:     var_104 = var_8C.Fields.Item("MainGrCode")
  loc_15C1BE7:     var_A4 = CStr(var_104.Value)
  loc_15C1C02:     Set var_FC = Me.Txt
  loc_15C1C08:     Call 0.Method_Proc_201_34_15C28E40 (CInt(4), var_104, var_CC, var_A6, var_114)
  loc_15C1C10:     1 = var_104.Text
  loc_15C1C1B:     global_92 = var_CC
  loc_15C1C54:     var_9C = CStr(var_8C.Fields.Item("GroupNature").Value)
  loc_15C1C87:     Proc_183_3_E7D1C8(var_114, CVar(var_8C.Fields.Item("BLORD")), var_148)
  loc_15C1C90:     var_A8 = CInt(var_114)
  loc_15C1CAC:     var_FC = var_8C.Fields
  loc_15C1CBC:     var_F8 = CVar(var_FC.Item("TradingYN")) 'Address
  loc_15C1CC5:     var_B0 = Proc_183_2_E5A304(var_F8, var_A8, var_A6)
  loc_15C1CCE:   End If
  loc_15C1CCE: End If
  loc_15C1CD7: unk_4B4155.BeginTrans var_100
  loc_15C1CDE: var_92 = &HFF
  loc_15C1D13: unk_4B4155.Execute "SELECT * FROM ACGROUP WHERE LEFT(MAINGRCODE,LEN('" & var_C4 & "'))='" & var_C4 & "'", var_F8, -1
  loc_15C1D1E: Set var_8C = var_FC
  loc_15C1D46: If (var_8C.RecordCount > 0) Then
  loc_15C1D4C:   var_8C.MoveFirst
  loc_15C1D51:   ' Referenced from: 15C1ECF
  loc_15C1D60:   If Not(var_8C.EOF) Then
  loc_15C1D73:     var_F8 = "MID"
  loc_15C1DB2:     var_27C = IIf((MemVar_1F923AC = "A"), "MID", "SUBSTRING")
  loc_15C1DD1:     var_104 = var_8C.Fields.Item("MainGrCode")
  loc_15C1DF2:     var_CC = "UPDATE ACGROUP SET SITE_CODE='" & MemVar_1F92070
  loc_15C1E00:     var_D4 = var_CC & "',MainGrLen=LEN('" & var_A4
  loc_15C1E07:     var_16C = CVar(var_D4 & "'+") 'String
  loc_15C1E20:     var_1BC = var_16C & IIf((MemVar_1F923AC = "A"), var_F8, "SUBSTRING") & "(MAINGRCODE,LEN('" & CVar(var_C4) 
  loc_15C1E24:     var_1CC = "')+1,255)),MAINGRCODE='"
  loc_15C1E37:     var_20C = "'+"
  loc_15C1E3C:     var_21C = var_1BC & var_1CC & CVar(var_A4) & var_20C 
  loc_15C1E5A:     var_2DC = "')+1,255) WHERE MAINGRCODE='"
  loc_15C1E6F:     var_33C = var_21C & var_27C & "(MAINGRCODE,LEN('" & CVar(var_C4) & var_2DC & var_104.Value & "'" 
  loc_15C1E7D:     unk_4B4155.Execute CStr(var_33C), var_35C, -1
  loc_15C1ECA:     var_8C.MoveNext
  loc_15C1ECF:     GoTo loc_15C1D51
  loc_15C1ED2:   End If
  loc_15C1ED2: End If
  loc_15C1EF0: Set var_FC = Me.Txt
  loc_15C1EF6: Call 0.Method_Proc_201_34_15C28E40 (CInt(0), var_104, var_CC, "Update AcGroup Set GroupName='", var_33C, -1)
  loc_15C1EFE: var_3B0 = var_104.Text
  loc_15C1F07: var_D0 = var_118 & var_CC
  loc_15C1F1F: Set var_118 = Me.Txt
  loc_15C1F25: Call 0.Method_Proc_201_34_15C28E40 (CInt(1), var_11C, var_D4, var_D0 & "',GroupNameBiLang='")
  loc_15C1F2D: var_FC = var_11C.Text
  loc_15C1F4B: var_364 = var_92 & var_D4 & "',GroupNature='" & var_9C & "',MainGrCode='"
  loc_15C1F62: var_370 = CStr(Len(var_A4))
  loc_15C1F6D: var_380 = var_364 & var_A4 & "',MainGrLEN=" & var_370 & ",Nature='"
  loc_15C1F7E: Set var_128 = Me.Txt
  loc_15C1F84: Call 0.Method_Proc_201_34_15C28E40 (CInt(5), var_378, var_37C)
  loc_15C1F8C: var_380 = var_378.Text
  loc_15C1F9C: var_398 = var_A8 & var_37C & "',AliasYN='N',GroupHelp='"
  loc_15C1FAD: Set var_388 = Me.Txt
  loc_15C1FB3: Call 0.Method_Proc_201_34_15C28E40 (CInt(0), var_38C, var_390)
  loc_15C1FBB: var_398 = var_38C.Text
  loc_15C1FF3: Proc_183_7_EB0C44(var_F8, MemVar_1F920EC)
  loc_15C200E: var_17C = CVar(var_F8 & Proc_183_20_FB3974(var_390) & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt=") & var_F8 & ",U_AE='E',BlOrd=" & CVar(var_A8) 
  loc_15C2026: Proc_183_9_EAA760(var_1BC, var_AC)
  loc_15C2046: Proc_183_9_EAA760(var_21C, var_B0)
  loc_15C2066: Proc_183_9_EAA760(var_27C, MemVar_1F92070)
  loc_15C208A: var_2EC = var_17C & ",SysGroup=" & var_1BC & ",TradingYN=" & var_21C & ",Site_Code=" & var_27C & " Where ID=" & CVar(var_94) & " AND SITE_CODE='" 
  loc_15C20AB: unk_4B4155.Execute CStr(var_2EC & CVar(var_C8) & "'"), , 
  loc_15C214B: Set var_FC = Me.Txt
  loc_15C2151: Call 0.Method_Proc_201_34_15C28E40 (CInt(5), var_104, var_D0, "Update AcGroup Set GroupNature='" & var_9C & "',Nature='")
  loc_15C2159: var_26C = var_104.Text
  loc_15C2162: var_D8 = -1 & var_D0
  loc_15C2177: Proc_183_9_EAA760(var_F8, var_B0)
  loc_15C2197: Proc_183_9_EAA760(var_17C, MemVar_1F92070)
  loc_15C21B2: var_1DC = CVar(var_D0 & "',GroupNameBiLang='" & "',TradingYN=") & var_F8 & ",Site_Code=" & var_17C & " WHERE LEFT(MAINGRCODE,LEN('" & CVar(var_A4) 
  loc_15C21C5: var_21C = var_1DC & "'))='" & CVar(var_A4) 
  loc_15C21DC: unk_4B4155.Execute CStr(var_21C & "'"), var_118, 
  loc_15C223E: Set var_FC = Me.Txt
  loc_15C2244: Call 0.Method_Proc_201_34_15C28E40 (CInt(5), var_104, var_D0, "Update SubGroup Set SubGroup.GroupNature='" & var_9C & "',SubGroup.Nature='")
  loc_15C224C: var_1BC = var_104.Text
  loc_15C2255: var_D8 = -1 & var_D0
  loc_15C226A: Proc_183_9_EAA760(var_F8, MemVar_1F92070)
  loc_15C227B: var_16C = CVar(var_D0 & "',GroupNameBiLang='" & "',Site_Code=") & var_F8 & " WHERE GROUPCODE='" 
  loc_15C2288: var_17C = var_16C & CVar(global_76) 
  loc_15C2295: var_120 = CStr(var_17C & "'")
  loc_15C229F: unk_4B4155.Execute var_120, var_118, 
  loc_15C2300: unk_4B4155.Execute "UPDATE LEDGER SET GROUPNATURE='" & var_9C & "' Where GROUPCODE='" & global_76 & "'", var_F8, -1
  loc_15C2342: Proc_183_9_EAA760(var_F8, MemVar_1F92070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C)
  loc_15C234A: var_158 = -1 & var_F8 
  loc_15C2358: unk_4B4155.Execute CStr(CVar(var_D0 & "',GroupNameBiLang='" & "',Site_Code=") & var_F8), var_FC, var_FC
  loc_15C238F: If (var_FC.RecordCount > 0) Then
  loc_15C23CD:   Proc_183_9_EAA760(var_F8, MemVar_1F92070, CVar("Select ID From AcGroup Where GroupName='" & global_56 & "' AND Site_Code="), var_16C, -1)
  loc_15C23E3:   unk_4B4155.Execute CStr(var_FC & var_F8), var_104, 0
  loc_15C23EB:   var_118 = var_FC.Fields
  loc_15C23F3:    = var_104.Item(var_17C)
  loc_15C23FB:    = var_118.Value
  loc_15C2404:   var_94 = CInt(var_17C)
  loc_15C2452:   Proc_183_9_EAA760(var_F8, MemVar_1F92070, CVar("Delete From AcGroup Where ID=" & CStr(var_94) & " AND Site_Code="), var_16C)
  loc_15C245A:   var_158 = -1 & var_F8 
  loc_15C2468:   unk_4B4155.Execute CStr(var_FC & var_F8), var_FC, var_94
  loc_15C2484: End If
  loc_15C248F: Set var_FC = Me.Txt
  loc_15C2495: Call 0.Method_Proc_201_34_15C28E40 (CInt(2))
  loc_15C249D: var_F8 = CVar(var_104) 'Address
  loc_15C24BE: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_15C24ED:   Proc_183_9_EAA760(var_F8, MemVar_1F92070, "Select isnull(max(ID),0) From AcGroup WHERE Site_Code=", var_FC & var_F8, -1, var_FC)
  loc_15C2503:   unk_4B4155.Execute CStr(var_104 & var_F8), 0, var_118
  loc_15C2513:    = var_104.Item(var_104)
  loc_15C251B:    = var_118.Value
  loc_15C2528:   var_17C = (var_FC.Fields + 1)
  loc_15C252D:   var_94 = CInt(var_17C)
  loc_15C2562:   var_D0 = "Insert Into AcGroup (ID,Site_Code,GroupCode,GroupName,GroupNameBiLang,GroupNature,MainGrCode,Nature,AliasYN,GroupHelp,U_Name,U_EntDt,U_AE,BlOrd,SysGroup,TradingYN,LOGSITE_CODE,MAINGRLEN) Values (" & CStr(var_94)
  loc_15C2588:   Set var_FC = Me.Txt
  loc_15C258E:   Call 0.Method_Proc_201_34_15C28E40 (CInt(0), var_104, var_120, var_D0 & ",'" & MemVar_1F92070 & "','")
  loc_15C2596:   var_30C = var_104.Tag
  loc_15C259F:   var_360 = -1 & var_120
  loc_15C25A6:   var_368 = var_92 & var_D0 & ",'" & "',GroupNature='" & var_9C & "','"
  loc_15C25B7:   Set var_118 = Me.Txt
  loc_15C25BD:   Call 0.Method_Proc_201_34_15C28E40 (CInt(2), var_11C, var_364)
  loc_15C25C5:   var_368 = var_11C.Text
  loc_15C25D5:   var_374 = var_3CC & var_364 & "','"
  loc_15C25E6:   Set var_128 = Me.Txt
  loc_15C25EC:   Call 0.Method_Proc_201_34_15C28E40 (CInt(3), var_378, var_370)
  loc_15C25F4:   var_374 = var_378.Text
  loc_15C2631:   Set var_388 = Me.Txt
  loc_15C2637:   Call 0.Method_Proc_201_34_15C28E40 (CInt(5), var_38C)
  loc_15C2660:   Set var_3B0 = Me.Txt
  loc_15C2666:   Call 0.Method_Proc_201_34_15C28E40 (CInt(2), var_3B4)
  loc_15C268A:   var_3C0 = var_94 & var_370 & "','" & var_9C & "','" & var_A4 & "','" & var_38C.Text & "','Y','" & Proc_183_20_FB3974(var_3B4.Text) & "','"
  loc_15C269E:   var_E8 = MemVar_1F920EC
  loc_15C26A6:   Proc_183_7_EB0C44(var_F8, var_E8)
  loc_15C26D9:   Proc_183_9_EAA760(var_1BC, var_AC)
  loc_15C26F9:   Proc_183_9_EAA760(var_21C, var_B0)
  loc_15C2719:   Proc_183_9_EAA760(var_27C, MemVar_1F92078)
  loc_15C272A:   var_2AC = CVar(var_3C0 & MemVar_1F920C8 & "',") & var_F8 & ",'E'," & CVar(var_A8) & "," & var_1BC & "," & var_21C & "," & var_27C & "," 
  loc_15C274D:   unk_4B4155.Execute CStr(var_2AC & CVar(Len(var_A4)) & ")"), , 
  loc_15C27CB: End If
  loc_15C27D1: unk_4B4155.CommitTrans
  loc_15C27D8: var_92 = 0
  loc_15C27E6: Me.Requery -1
  loc_15C27F6: Me.Requery -1
  loc_15C2806: Me.Requery -1
  loc_15C2816: Me.Requery -1
  loc_15C2826: Me.Requery -1
  loc_15C2850: Me.Find "SearchCode='" & var_B8 & "'", 0, 1
  loc_15C2871: var_CC = "INI"
  loc_15C287F: Call Proc_201_29_F2D9F4(Proc_5_1_100CB50(var_CC, Me, global_96))
  loc_15C288A: Call Proc_201_31_14D06E8(var_E8)
  loc_15C2894: Set var_8C = Nothing
  loc_15C289C: Set var_90 = Nothing
  loc_15C28A4: Set var_88 = Nothing
  loc_15C28A7: Exit Sub
  loc_15C28A8: ' Referenced from: 15C16D4
  loc_15C28AE: If (var_92 = &HFF) Then
  loc_15C28B7:   unk_4B4155.RollbackTrans
  loc_15C28BC: End If
  loc_15C28C2: Call 0.Method_arg_50 (var_CC)
  loc_15C28D7: Proc_183_57_104AA84(var_CC, "UpdateDataBaseEdit")
  loc_15C28E3: Exit Sub
End Sub
