VERSION 5.00
Begin VB.Form FrmExpense
  Caption = "Misc.Payment / Received Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 15165
  ClientHeight = 9390
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15165
    Height = 450
    TabIndex = 25
  End
  Begin PictureBox Picture1
    Picture = "FrmExpense.frx":0
    Left = 4605
    Top = 1200
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Picture = "FrmExpense.frx":34E
    Left = 6705
    Top = 2415
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGAgAc
    Left = 3930
    Top = 3375
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1845
    Top = 3435
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
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
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2505
    Top = 1335
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2415
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2145
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 2505
    Top = 1605
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 2505
    Top = 1875
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 4845
    Top = 1605
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2685
    Width = 4185
    Height = 1050
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 3870
    Top = 1875
    Width = 720
    Height = 255
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 90
    Top = 3615
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4470
    Top = 5685
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1095
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 23
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
    TabIndex = 22
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
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1350
    Top = 1350
    Width = 465
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
  Begin Label LblName
    Caption = "Against A/c"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2445
    Width = 1065
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
  Begin Label LblName
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 1335
    Top = 2175
    Width = 735
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
  Begin Label LblName
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 1905
    Width = 435
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6735
    Top = 1260
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 1635
    Width = 525
    Height = 240
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 4050
    Top = 1605
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Remarks"
    Index = 4
    ForeColor = &HC00000&
    Left = 1335
    Top = 2715
    Width = 825
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
End

Attribute VB_Name = "FrmExpense"

Private global_68 As Recordset15
Private global_72 As Variant

Private Sub ListView_UnknownEvent_13 'F18304
  'Data Table: 4AD150
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F18220: On Error Goto loc_F182FE
  loc_F18227: Set var_A4 = Me.ListView
  loc_F18271: Set var_BC = Me.Txt
  loc_F18277: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F1827F: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F182AB: Me.FrmList.Visible = False
  loc_F182CD: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F182DB: Set var_9C = Me.Txt
  loc_F182E1: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F182E9: var_A4.SetFocus
  loc_F182FD: Exit Sub
  loc_F182FE: ' Referenced from: F18220
  loc_F182FE: Proc_6_60_E62BC4(var_C8)
  loc_F18303: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E35C54
  'Data Table: 4AD150
  loc_E35C48: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E35C4B:   Call DGAgAc_UnknownEvent_9()
  loc_E35C50: End If
  loc_E35C50: Exit Sub
End Sub

Private Sub Form_Load() '11EF708
  'Data Table: 4AD150
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_10C As TextBox
  Dim var_C0 As TextBox
  Dim var_108 As DataGrid
  loc_11EF27C: On Error Goto loc_11EF6FF
  loc_11EF286: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11EF29A: Me.LblUser.Left = CDbl(13500)
  loc_11EF2B1: Me.LblUser.Top = CDbl(7800)
  loc_11EF2C8: Me.LblLDt.Top = CDbl(8160)
  loc_11EF2DF: Me.LblLDt.Left = CDbl(13500)
  loc_11EF2F1: Set var_88 = Me.TopCtrl1
  loc_11EF2F7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11EF305: Call 0.Method_arg_50 (var_AC)
  loc_11EF30D: var_BC = CVar(var_AC) 'String
  loc_11EF315: Set var_88 = Me.TopCtrl1
  loc_11EF31B: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_11EF332: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_11EF343: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_11EF354: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_11EF365: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_11EF376: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_11EF387: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_11EF398: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_11EF3A9: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_11EF3BA: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_11EF3CB: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_11EF3E5: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_11EF3F3: Set var_88 = MemVar_1F92044
  loc_11EF402: Call 0.Method_Form_Load8 (var_88)
  loc_11EF418: Me.TopCtrl1.Clone
  loc_11EF423: Set var_C0 = var_88
  loc_11EF432: Call 0.Method_arg_50 (var_C0, -1)
  loc_11EF448: Set global_64 = New 
  loc_11EF45A: Me.Recordset15.CursorLocation = 3
  loc_11EF469: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_11EF477:   Proc_6_7_F25D88(var_BC, MemVar_1F920F4)
  loc_11EF4A1:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate>=") 'String
  loc_11EF4BB:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_11EF4D1: Else
  loc_11EF4DC:   Proc_6_7_F25D88(var_BC, MemVar_1F920EC, 3)
  loc_11EF506:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate=") 'String
  loc_11EF520:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_11EF533: End If
  loc_11EF552: Me.Recordset15.CursorLocation = 3
  loc_11EF57C: var_BC = CVar("Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_11EF589: Me.Recordset15.Open var_BC, CVar(MemVar_1F92044), 2
  loc_11EF5A0: CVarUnk
  loc_11EF5A5: VerifyVarObj
  loc_11EF5B1: LateIdStAd
  loc_11EF5CD: Set var_108 = Me.Txt
  loc_11EF5D3: Call 0.Method_Form_Load0 (CInt(5), var_10C, var_110, Me.DGAgAc, New, 3)
  loc_11EF5DB: -1 = var_10C.Height
  loc_11EF5EE: Set var_88 = Me.Txt
  loc_11EF5F4: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104, 3)
  loc_11EF5FC: -1 = var_C0.Top
  loc_11EF608: var_98 = CVar((var_104 + var_110)) 'Single
  loc_11EF617: Me.DGAgAc.Top = CVar(MemVar_1F92044)
  loc_11EF637: Set var_88 = Me.Txt
  loc_11EF63D: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104)
  loc_11EF645: -1 = var_C0.Left
  loc_11EF65C: Me.DGAgAc.Left = CVar(var_104)
  loc_11EF68D: Call Proc_31_34_F17210(Proc_5_1_100CB50("INI", Me), global_64)
  loc_11EF6A1: Set var_88 = Me.TopCtrl1
  loc_11EF6A7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_11EF6B8: Set var_88 = Me.TopCtrl1
  loc_11EF6BE: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_11EF6CF: Set var_88 = Me.TopCtrl1
  loc_11EF6D5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_11EF6EC: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_11EF6F4: Call Proc_31_32_EE29CC(Me.TopCtrl1)
  loc_11EF6F9: Call Proc_31_33_1350E3C()
  loc_11EF6FE: Exit Sub
  loc_11EF6FF: ' Referenced from: 11EF27C
  loc_11EF6FF: Proc_6_60_E62BC4()
  loc_11EF704: Exit Sub
  loc_11EF705: CExtInstUnk
End Sub

Private Sub Form_Resize() 'ED41F8
  'Data Table: 4AD150
  Dim var_8C As Label
  loc_ED4156: Call 0.Method_arg_50 (var_88)
  loc_ED4168: Me.LblFormCaption.Caption = var_88
  loc_ED4181: Me.LblFormCaption.Left = CDbl(0)
  loc_ED418D: Set var_A0 = Me.TopCtrl1
  loc_ED4193: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED41A0: Set var_8C = Me.TopCtrl1
  loc_ED41A6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED41C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED41DB: Call 0.Method_arg_100 (var_B8)
  loc_ED41ED: Me.LblFormCaption.Width = var_B8
  loc_ED41F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E3F42C
  'Data Table: 4AD150
  loc_E3F407: Set global_64 = Nothing
  loc_E3F421: Set global_92 = Nothing
  loc_E3F428: Exit Sub
  loc_E3F429: End Sub
  loc_E3F42A: ArrayRebase1Var
End Sub

Private Sub Form_Deactivate() 'E25544
  'Data Table: 4AD150
  loc_E25529: If (MasterFormExit = &HFF) Then
  loc_E25539:   Me.Global.Unload Me
  loc_E25541: End If
  loc_E25541: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E35B98
  'Data Table: 4AD150
  loc_E35B6C: On Error Goto loc_E35B90
  loc_E35B87: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E35B8F: Exit Sub
  loc_E35B90: ' Referenced from: E35B6C
  loc_E35B90: Proc_6_60_E62BC4(Shift)
  loc_E35B95: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_0 'E52320
  'Data Table: 4AD150
  loc_E522FA: Set var_88 = Me.txtM
  loc_E52300: Call 0.Method_txtM_UnknownEvent_00 (KeyCode)
  loc_E5230E: Proc_6_74_E226B0(var_8C)
  loc_E5231A: Call Proc_31_35_EB707C(var_8C)
  loc_E5231F: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4ABFC
  'Data Table: 4AD150
  loc_E4ABDA: Set var_88 = Me.txtM
  loc_E4ABE0: Call 0.Method_txtM_UnknownEvent_10 (KeyCode)
  loc_E4ABEE: Proc_6_73_E22704(var_8C)
  loc_E4ABFA: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E53CC8
  'Data Table: 4AD150
  Dim Shift As Integer
  loc_E53C9E: Set var_88 = Me.txtM
  loc_E53CA4: Call 0.Method_txtM_UnknownEvent_80 (KeyCode)
  loc_E53CBE: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E53CC3:   Shift = &HFF
  loc_E53CC6: End If
  loc_E53CC6: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E6053C
  'Data Table: 4AD150
  loc_E604F6: If (CLng(Shift) = &H1B) Then
  loc_E604F9:   Call Proc_31_35_EB707C()
  loc_E604FE:   Exit Sub
  loc_E604FF: End If
  loc_E60514: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E6051D:   Proc_6_75_E527CC(Shift)
  loc_E60522: End If
  loc_E6052C: If (CLng(Shift) = &H26) Then
  loc_E60535:   Proc_6_76_E52838(Shift, arg_14)
  loc_E6053A: End If
  loc_E6053A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FCBDE4
  'Data Table: 4AD150
  Dim var_E4 As Variant
  Dim var_8C As Label
  loc_FCBC30: On Error Goto loc_FCBDDE
  loc_FCBC56: Call Proc_31_34_F17210(Proc_5_1_100CB50("ADD", Me))
  loc_FCBC6A: Set var_8C = Me.TopCtrl1
  loc_FCBC70: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_FCBC81: Set var_8C = Me.TopCtrl1
  loc_FCBC87: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_FCBC98: Set var_8C = Me.TopCtrl1
  loc_FCBC9E: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_FCBCAF: Set var_8C = Me.TopCtrl1
  loc_FCBCB5: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_FCBCBD: Call Proc_31_32_EE29CC(global_64)
  loc_FCBCFD: Set var_8C = Me.txtM
  loc_FCBD03: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_FCBD0B: var_E4.Text = 1
  loc_FCBD33: Set var_8C = Me.txtM
  loc_FCBD39: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_FCBD41: var_E4.Tag = vbNullString
  loc_FCBD60: Set var_8C = Me.Txt
  loc_FCBD66: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_E4)
  loc_FCBD6E: var_E4.Text = CStr(MemVar_1F920EC)
  loc_FCBD89: Call Txt_Validate(CInt(2))
  loc_FCBD99: Set var_8C = Me.Txt
  loc_FCBD9F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_E4)
  loc_FCBDA7: var_E4.SetFocus
  loc_FCBDC0: Me.LblUser.Caption = vbNullString
  loc_FCBDD5: Me.LblLDt.Caption = vbNullString
  loc_FCBDDD: Exit Sub
  loc_FCBDDE: ' Referenced from: FCBC30
  loc_FCBDDE: Proc_6_60_E62BC4(0)
  loc_FCBDE3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F07D4C
  'Data Table: 4AD150
  loc_F07C6C: On Error Goto loc_F07D43
  loc_F07CA6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F07CCC:   Call Proc_31_34_F17210(Proc_5_1_100CB50("INI", Me))
  loc_F07CE0:   Set var_10C = Me.TopCtrl1
  loc_F07CE6:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F07CF7:   Set var_10C = Me.TopCtrl1
  loc_F07CFD:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F07D0E:   Set var_10C = Me.TopCtrl1
  loc_F07D14:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F07D25:   Set var_10C = Me.TopCtrl1
  loc_F07D2B:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F07D33:   Call Proc_31_35_EB707C(global_64)
  loc_F07D38:   Call Proc_31_32_EE29CC()
  loc_F07D3D:   Call Proc_31_33_1350E3C()
  loc_F07D42: End If
  loc_F07D42: Exit Sub
  loc_F07D43: ' Referenced from: F07C6C
  loc_F07D43: Proc_6_60_E62BC4()
  loc_F07D48: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1106B84
  'Data Table: 4AD150
  Dim var_96 As Integer
  Dim unk_4AD16A As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_1106878: On Error Goto loc_1106B2D
  loc_1106889: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_110688C:   Exit Sub
  loc_110688D: End If
  loc_11068C4: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_11068D5:   unk_4AD16A.BeginTrans var_11C
  loc_11068EB:   var_94 = Me.Bookmark 'Variant
  loc_110690D:   Set var_120 = Me.Txt
  loc_1106913:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ExpSheet Where DocID='")
  loc_110691B:   var_B8 = var_124.Text
  loc_1106924:   var_12C = -1 & var_128
  loc_1106934:   unk_4AD16A.Execute var_12C & "'", var_134, &HFF
  loc_110695C:   Set var_120 = Me.Txt
  loc_1106962:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_1106974:   var_168 = 0
  loc_1106987:   var_160 = 0
  loc_1106992:   var_15C = 0
  loc_11069A5:   var_154 = 0
  loc_11069B0:   var_150 = 0
  loc_11069C3:   var_148 = 0
  loc_1106A02:   var_128 = "ExpSheet"
  loc_1106A0B:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1106A36:   unk_4AD16A.CommitTrans
  loc_1106A3D:   var_96 = 0
  loc_1106A4B:   Me.Requery -1
  loc_1106A6B:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1106A78:     Me.Bookmark = var_94
  loc_1106A80:   Else
  loc_1106A94:     If (Me.EOF = 0) Then
  loc_1106A9D:       Me.MoveLast
  loc_1106AA2:     End If
  loc_1106AA2:   End If
  loc_1106AA2:   Call Proc_31_33_1350E3C(var_96, var_148, 0, var_150, var_154)
  loc_1106AA7:   Call Proc_31_32_EE29CC(0, var_15C)
  loc_1106AC8:   Proc_5_0_110649C(&HFF, Me, global_64)
  loc_1106AD9:   Set var_120 = Me.TopCtrl1
  loc_1106ADF:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1106AF0:   Set var_120 = Me.TopCtrl1
  loc_1106AF6:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1106B07:   Set var_120 = Me.TopCtrl1
  loc_1106B0D:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1106B1E:   Set var_120 = Me.TopCtrl1
  loc_1106B24:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1106B2C: End If
  loc_1106B2C: Exit Sub
  loc_1106B2D: ' Referenced from: 1106878
  loc_1106B33: If (var_96 = &HFF) Then
  loc_1106B3C:   unk_4AD16A.RollbackTrans
  loc_1106B41: End If
  loc_1106B49: Set var_120 = Err()
  loc_1106B4F: Call 0.Method_arg_2C (var_128, 0)
  loc_1106B70: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1106B83: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9CCA4
  'Data Table: 4AD150
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9CB30: On Error Goto loc_F9CC5F
  loc_F9CB41: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F9CB44:   Exit Sub
  loc_F9CB45: End If
  loc_F9CB5C: If (Me.RecordCount > 0) Then
  loc_F9CB74:   var_8C = "EDIT"
  loc_F9CB82:   Call Proc_31_34_F17210(Proc_5_1_100CB50(var_8C, Me))
  loc_F9CB9A:   Set var_90 = Me.Txt
  loc_F9CBA0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9CBA8:   var_98.Enabled = False
  loc_F9CBC1:   Set var_90 = Me.Txt
  loc_F9CBC7:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9CBCF:   var_98.Enabled = False
  loc_F9CBE6:   Set var_90 = Me.Txt
  loc_F9CBEC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F9CBF4:   var_98.SetFocus
  loc_F9CC03: Else
  loc_F9CC24:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9CC34: End If
  loc_F9CC41: Me.LblUser.Caption = vbNullString
  loc_F9CC56: Me.LblLDt.Caption = vbNullString
  loc_F9CC5E: Exit Sub
  loc_F9CC5F: ' Referenced from: F9CB30
  loc_F9CC67: Set var_90 = Err()
  loc_F9CC6D: Call 0.Method_arg_2C (var_8C)
  loc_F9CC8E: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9CCA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E180F4
  'Data Table: 4AD150
  loc_E180E9: Me.Global.Unload Me
  loc_E180F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5DD44
  'Data Table: 4AD150
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  Dim var_2788 As String
  loc_F5DC20: On Error Goto loc_F5DD3B
  loc_F5DC3A: If (Me.RecordCount <= 0) Then
  loc_F5DC58:   var_A8 = "No Records To Search."
  loc_F5DC5E:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5DC6E:   Exit Sub
  loc_F5DC6F: End If
  loc_F5DC79: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_F5DC83:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F92078
  loc_F5DC98:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F5DCAE:   MemVar_1F920E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate>=") & var_A8 & " Order by DocID,VNo")
  loc_F5DCC3: Else
  loc_F5DCCA:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F92078
  loc_F5DCDF:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F5DCEB:   var_B8 = " Order by E.DocID,E.VNo"
  loc_F5DCF5:   MemVar_1F920E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') and E.vdate=") & var_A8 & var_B8)
  loc_F5DD07: End If
  loc_F5DD10: Proc_6_126_F1BCC0("1450,500,1200,550,4000,950,2500", MemVar_1F920E4)
  loc_F5DD1E: MemVar_1F92120 = Me
  loc_F5DD35: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5DD3A: Exit Sub
  loc_F5DD3B: ' Referenced from: F5DC20
  loc_F5DD3B: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F5DD40: Exit Sub
  loc_F5DD42: var_2788 = ( = )
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFEC34
  'Data Table: 4AD150
  loc_DFEC2C: Call Proc_31_29_13E0538()
  loc_DFEC31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1470990
  'Data Table: 4AD150
  Dim var_E0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim unk_4AD16A As Connection15
  Dim var_98 As Recordset15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_A8 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_A4 As Variant
  Dim var_110 As Variant
  Dim var_86 As Integer
  Dim var_13C As String
  Dim MemVar_1F920EC As Double
  Dim var_144 As Variant
  Dim var_444 As Double
  Dim var_19C As Variant
  Dim var_21C As TextBox
  Dim var_44C As Double
  Dim var_258 As TextBox
  Dim var_150 As String
  Dim var_184 As Variant
  Dim var_204 As Variant
  Dim var_3B4 As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_146FE78: On Error Goto loc_1470973
  loc_146FE86: Set var_A0 = Me.Txt
  loc_146FE8C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_146FEB5: If (Proc_6_27_EA565C(var_A4, "Date") = 0) Then
  loc_146FEB8:   Exit Sub
  loc_146FEB9: End If
  loc_146FEC4: Set var_A0 = Me.Txt
  loc_146FECA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_146FEF3: If (Proc_6_27_EA565C(var_A4, "Vr No") = 0) Then
  loc_146FEF6:   Exit Sub
  loc_146FEF7: End If
  loc_146FF02: Set var_A0 = Me.Txt
  loc_146FF08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A4)
  loc_146FF31: If (Proc_6_27_EA565C(var_A4, "Account") = 0) Then
  loc_146FF34:   Exit Sub
  loc_146FF35: End If
  loc_146FF38: Call Proc_31_31_F8EB1C(var_AE)
  loc_146FF43: If (var_AE = 0) Then
  loc_146FF46:   Exit Sub
  loc_146FF47: End If
  loc_146FF64: Proc_6_17_EAA2B0(var_D0, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_110)
  loc_146FF6C: var_F0 = -1 & var_D0 
  loc_146FF7A: unk_4AD16A.Execute CStr(var_F0), var_A0, var_A4
  loc_146FF85: Set var_98 = var_A0
  loc_146FFD5: var_A8 = var_98.Fields
  loc_146FFE5: var_F0 = var_A8.Item("CashPayType").Value
  loc_146FFF7: var_134 = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_F0 = vbNullString)
  loc_147000F: If CBool(var_134) Then
  loc_147002B:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_F0, var_110, var_134)
  loc_147003B:   Exit Sub
  loc_147003C: End If
  loc_1470068: var_A4 = var_98.Fields.Item("CashPayType")
  loc_1470070: var_D0 = var_A4.Value
  loc_1470078: var_F0 = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_D0 
  loc_1470081: var_110 = var_F0 & "'" 
  loc_147008F: unk_4AD16A.Execute CStr(var_110), var_134, -1
  loc_147009A: Set var_9C = var_A8
  loc_14700C2: unk_4AD16A.BeginTrans var_138
  loc_14700CB: Set var_A0 = Me.TopCtrl1
  loc_14700D1: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_14700EA: If (CStr(var_A8) = "Add") Then
  loc_14700F3:   var_E0 = 0
  loc_1470110:   var_AC = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_1470120:   unk_4AD16A.Execute var_AC & "'", var_D0, -1
  loc_1470128:   var_A0 = var_A0.Fields
  loc_1470130:   var_E0 = var_A4.Item(var_A4)
  loc_1470138:   var_A8 = var_A8.Value
  loc_1470142:   MemVar_1F920EC = CDate(var_F0)
  loc_1470189:   Set var_A0 = Me.Txt
  loc_147018F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Select Count(*) From ExpSheet Where DocID='", var_D0, -1, var_A8)
  loc_14701B0:   unk_4AD16A.Execute 0 & var_AC & "'", var_144, var_F0
  loc_14701B8:   MemVar_1F920EC = var_A8.Fields
  loc_14701C0:    = var_A4.Text.Item(var_F0)
  loc_14701C8:    = var_144.Value
  loc_14701F5:   If (var_F0 > 0) Then
  loc_14701FE:     Call 0.Method_arg_50 (var_AC)
  loc_147020C:     var_F0 = CVar(var_AC) 'String
  loc_147021F:     MsgBox("Duplicate Vr. No.", &H40, var_F0, var_110, var_134)
  loc_1470235:     Call Proc_31_37_115C4B8(MemVar_1F92044)
  loc_1470245:     If (var_AC = vbNullString) Then
  loc_1470248:       Exit Sub
  loc_1470249:     End If
  loc_147024F:     Call Proc_31_37_115C4B8(MemVar_1F92044, var_AC)
  loc_1470262:     Set var_A0 = Me.Txt
  loc_1470268:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1470270:     var_A4.Text = var_AC
  loc_147027F:     Exit Sub
  loc_1470280:   End If
  loc_1470280: End If
  loc_147029E: Set var_A0 = Me.Txt
  loc_14702A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC, "Delete From ExpSheet Where DocID='")
  loc_14702AC: var_D0 = var_A4.Text
  loc_14702B5: var_13C = -1 & var_AC
  loc_14702C5: unk_4AD16A.Execute 0 & var_AC & "'", var_A8, var_AC
  loc_14702ED: Set var_A0 = Me.Txt
  loc_14702F3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1470307: Set var_A8 = Me.LblVPrefix
  loc_1470320: Set var_114 = Me.Txt
  loc_1470326: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_147033B: var_444 = Val(var_144.Text)
  loc_1470349: Set var_170 = Me.Txt
  loc_147034F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_147035E: Proc_6_7_F25D88(var_F0, CVar(var_174))
  loc_147036E: Set var_188 = Me.txtM
  loc_1470374: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_18C)
  loc_1470383: Proc_6_17_EAA2B0(var_1AC, CVar(var_18C))
  loc_1470393: Set var_1D0 = Me.Txt
  loc_1470399: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D4)
  loc_14703A8: Proc_6_17_EAA2B0(var_1F4, CVar(var_1D4))
  loc_14703BB: Set var_218 = Me.Txt
  loc_14703C1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_21C)
  loc_14703D6: var_44C = Val(var_21C.Text)
  loc_14703E7: Set var_254 = Me.Txt
  loc_14703ED: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_258, var_25C)
  loc_1470408: Proc_6_7_F25D88(var_2FC, Date)
  loc_1470411: Set var_330 = Me.TopCtrl1
  loc_1470417: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_444)
  loc_1470462: var_13C = "Insert Into ExpSheet(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgAc,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A4.Text
  loc_147047A: var_150 = var_13C & "','" & global_60 & "','"
  loc_14704CF: var_204 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_444) & ",") & var_F0 & "," & var_1AC & "," & var_1F4 
  loc_1470529: var_3B4 = var_204 & "," & CVar(var_258.Tag) & ",'" & CVar(var_25C) & "','" & CVar(MemVar_1F920C8) & "'," & var_2FC & ",'" & IIf((CStr(var_340) = "Add"), "A", "E") 
  loc_1470553: unk_4AD16A.Execute CStr(var_3B4 & "','" & CVar(MemVar_1F92078) & "')"), var_438, -1
  loc_14705E5: Set var_A0 = Me.TopCtrl1
  loc_14705EB: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_43C)
  loc_1470604: If (CStr() = "Add") Then
  loc_147061B:   var_AC = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1470641:   var_110 = CVar(var_AC & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_1470652:   Set var_A0 = Me.Txt
  loc_1470658:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4, var_150, var_110)
  loc_1470660:   var_19C = var_A4.Text
  loc_147066E:   Proc_6_7_F25D88(var_F0, CVar(var_150))
  loc_1470676:   var_134 = -1 & var_F0 
  loc_147067F:   var_184 = CVar(var_150 & var_A8.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_444) & ",") & var_F0 & " Order By VP.Date_From DESC" 
  loc_147068D:   unk_4AD16A.Execute CStr(var_184), var_A8, 
  loc_1470698:   Set var_8C = var_A8
  loc_14706D6:   If (var_8C.RecordCount > 0) Then
  loc_14706E7:     Set var_A0 = Me.Txt
  loc_14706ED:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_1470702:     var_444 = Val(var_A4.Text)
  loc_1470708:     var_C0 = "Date_From"
  loc_147072B:     Proc_6_7_F25D88(var_F0, CVar(var_8C.Fields.Item(var_C0)))
  loc_147075E:     var_150 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_444) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_147077D:     var_110 = CVar(var_150 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_1470783:     var_134 = var_110 & var_F0 
  loc_1470791:     unk_4AD16A.Execute CStr(var_134), var_184, -1
  loc_14707C5:   End If
  loc_14707C5: End If
  loc_14707CB: unk_4AD16A.CommitTrans
  loc_14707D0: Call Proc_31_35_EB707C(var_144)
  loc_14707E3: Set var_A0 = Me.Txt
  loc_14707E9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_1470805: var_86 = 0
  loc_1470813: Me.Requery -1
  loc_147083D: Me.Find "SearchCode ='" & var_A4.Text & "'", 0, 1
  loc_147084D: Set var_A0 = Me.TopCtrl1
  loc_1470853: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_147086C: If (CStr(var_86) = "Add") Then
  loc_147086F:   Call TopCtrl1_UnknownEvent_A()
  loc_1470874:   Exit Sub
  loc_1470875: End If
  loc_147088A: var_AC = "INI"
  loc_1470898: Call Proc_31_34_F17210(Proc_5_1_100CB50(var_AC, Me), global_64)
  loc_14708AC: Set var_A0 = Me.TopCtrl1
  loc_14708B2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_14708C3: Set var_A0 = Me.TopCtrl1
  loc_14708C9: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_14708DA: Set var_A0 = Me.TopCtrl1
  loc_14708E0: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14708F1: Set var_A0 = Me.TopCtrl1
  loc_14708F7: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14708FF: Call Proc_31_33_1350E3C(var_444)
  loc_147091B: If (Me.RecordCount > 0) Then
  loc_1470924:   Call 0.Method_arg_50 (var_AC)
  loc_1470962:   If (MsgBox(CVar(var_AC & " ?"), &H24, "Print", var_110, var_134) = 6) Then
  loc_1470965:     Call TopCtrl1_UnknownEvent_14()
  loc_147096A:   End If
  loc_147096A: End If
  loc_147096F: Set var_8C = Nothing
  loc_1470972: Exit Sub
  loc_1470973: ' Referenced from: 146FE78
  loc_1470979: If (var_86 = &HFF) Then
  loc_1470982:   unk_4AD16A.RollbackTrans
  loc_1470987: End If
  loc_1470987: Proc_6_60_E62BC4()
  loc_147098C: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '111876C
  'Data Table: 4AD150
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_111843A: Set var_88 = Me.Txt
  loc_1118440: Call 0.Method_Txt_GotFocus0 (Index)
  loc_111844E: Proc_6_74_E226B0(var_8C)
  loc_111845A: Call Proc_31_35_EB707C(var_8C)
  loc_1118462: var_92 = Index
  loc_111846D: If Not (var_92 = CInt(2)) Then
  loc_1118478:   If (var_92 = CInt(3)) Then
  loc_111847B:   End If
  loc_1118483:   var_98 = "{Home}+{End}"
  loc_1118489:   Proc_303_0_FB9B68(var_98, 0)
  loc_1118494: Else
  loc_111849C:   If (var_92 = CInt(5)) Then
  loc_11184B9:     If (Me.Recordset15.RecordCount > 0) Then
  loc_11184C7:       Set var_8C = Me.FGPoint
  loc_11184E3:       Proc_6_137_1193554(Me.DGAgAc, global_68, Index)
  loc_11184F1:     End If
  loc_1118548:     Set var_88 = Me.Txt
  loc_111854E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1118556:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_111856E:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_111857E:       Set var_88 = Me.Txt
  loc_1118584:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_111858C:       var_8C.Tag = vbNullString
  loc_1118598:       Exit Sub
  loc_1118599:     End If
  loc_11185A6:     Set var_88 = Me.Txt
  loc_11185AC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11185B4:     var_98 = var_8C.Text
  loc_11185C6:     var_B4 = "Name"
  loc_1118604:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_1118610:       Me.Recordset15.MoveFirst
  loc_1118633:       Set var_88 = Me.Txt
  loc_1118639:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_1118641:       0 = var_8C.Text
  loc_111865D:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_1118672:     End If
  loc_1118675:   Else
  loc_111867D:     If (var_92 = CInt(6)) Then
  loc_111868D:       ReDim var_F4(0 To 1)
  loc_11186A4:       var_F4(0) = "Misc Rect."
  loc_11186B3:       var_F4(1) = "Misc Payment"
  loc_11186CA:       global_72 = Array(var_F4)
  loc_11186D5:       Set var_B8 = Me.ListView
  loc_11186F0:       Set var_8C = Me.Txt
  loc_111870A:       Set global_88 = Proc_6_66_EFF8FC(var_B8, var_8C, Index)
  loc_1118728:       Set var_88 = Me.Txt
  loc_111872E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1118736:       global_72 = var_8C.Text
  loc_1118748:       Set var_90 = Me.Txt
  loc_111874E:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_1118756:       var_B8.Tag = 2
  loc_1118769:     End If
  loc_1118769:   End If
  loc_1118769: End If
  loc_1118769: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11F00B0
  'Data Table: 4AD150
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  loc_11EFC47: var_86 = Shift
  loc_11EFC54: If (CLng(Shift) = &H1B) Then
  loc_11EFC57:   Call Proc_31_35_EB707C(var_86)
  loc_11EFC5C:   Exit Sub
  loc_11EFC5D: End If
  loc_11EFC60: var_88 = KeyCode
  loc_11EFC6B: If (var_88 = CInt(5)) Then
  loc_11EFC79:   Set var_A8 = Me.Txt
  loc_11EFC8B:   Set var_9C = Me.FGPoint
  loc_11EFC96:   Set var_98 = Nothing
  loc_11EFCC8:   Proc_6_69_134A198(Me.DGAgAc, var_A8, KeyCode, global_68, Shift, 0)
  loc_11EFCEA:   var_B0 = Me.FGPoint.RecordCount
  loc_11EFD3A:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11EFD41:     Set var_98 = Me.DGAgAc
  loc_11EFD48:     Set var_90 = Me.FGPoint
  loc_11EFD64:     Proc_6_138_106D6F8(var_98, global_68, KeyCode, var_90, 1)
  loc_11EFD72:   End If
  loc_11EFD75: Else
  loc_11EFD7D:   If (var_88 = CInt(6)) Then
  loc_11EFDA2:     Set var_8C = Me.Txt
  loc_11EFDA8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11EFDB0:     var_9C = var_90.Left
  loc_11EFDC2:     Set var_98 = Me.Txt
  loc_11EFDC8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11EFDD0:     0 = var_9C.Top
  loc_11EFDE2:     Set var_A4 = Me.Txt
  loc_11EFDE8:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11EFDF0:     var_B8 = var_A8.Height
  loc_11EFE02:     Set var_AC = Me.Txt
  loc_11EFE08:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11EFE10:     var_C0 = var_BC.Width
  loc_11EFE58:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11EFE7F:   Else
  loc_11EFE87:     If (var_88 = CInt(4)) Then
  loc_11EFE94:       If (CLng(Shift) = &H2D) Then
  loc_11EFEA4:         Set var_8C = Me.Txt
  loc_11EFEAA:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B0))
  loc_11EFEB2:         CInt((var_B4 + var_B8)) = var_90.Text
  loc_11EFEBD:         Call Proc_31_38_EE28B8(var_E0, var_E4, CInt(var_C0))
  loc_11EFED3:         Set var_98 = Me.Txt
  loc_11EFED9:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11EFEE1:         var_9C.Text = 680 & var_E0
  loc_11EFF07:         Set var_8C = Me.Txt
  loc_11EFF0D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11EFF28:         Set var_98 = Me.Txt
  loc_11EFF2E:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11EFF36:         var_9C.SelStart = Len(var_90.Text)
  loc_11EFF49:         Exit Sub
  loc_11EFF4A:       End If
  loc_11EFF4A:     End If
  loc_11EFF4A:   End If
  loc_11EFF4A: End If
  loc_11EFF83: If ((CBool(Me.DGAgAc.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11EFFA4:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_11EFFAD:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11EFFB2:   End If
  loc_11EFFB6:   Set var_8C = Me.TopCtrl1
  loc_11EFFBC:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11EFFE7:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11EFFFF:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11F0008:       Proc_6_76_E52838(Shift)
  loc_11F000D:     End If
  loc_11F0010:   Else
  loc_11F0014:     Set var_8C = Me.TopCtrl1
  loc_11F001A:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11F003C:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11F0054:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11F005D:         Proc_6_76_E52838(Shift)
  loc_11F0062:       End If
  loc_11F0062:     End If
  loc_11F0062:   End If
  loc_11F0080:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_11F0086:     Call Proc_31_36_E90860(KeyCode)
  loc_11F008B:   End If
  loc_11F00A0:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11F00A9:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11F00AE:   End If
  loc_11F00AE: End If
  loc_11F00AE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6EC90
  'Data Table: 4AD150
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F6EB57: Proc_6_58_E054C0(arg_10)
  loc_F6EB5F: var_86 = KeyAscii
  loc_F6EB6A: If (var_86 = CInt(1)) Then
  loc_F6EB77:   Set var_8C = Me.Txt
  loc_F6EB7D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6EB98:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F6EBA7: Else
  loc_F6EBAF:   If (var_86 = CInt(3)) Then
  loc_F6EBBC:     Set var_8C = Me.Txt
  loc_F6EBC2:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6EBDD:     Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_F6EBEC:   Else
  loc_F6EBF4:     If (var_86 = CInt(5)) Then
  loc_F6EC13:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F6EC44:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F6EC7A:         Proc_6_138_106D6F8(Me.DGAgAc, global_68, KeyAscii, Me.FGPoint)
  loc_F6EC88:       End If
  loc_F6EC88:     End If
  loc_F6EC88:   End If
  loc_F6EC88: End If
  loc_F6EC88: Proc_6_60_E62BC4(0, 2)
  loc_F6EC8D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFF254
  'Data Table: 4AD150
  Dim var_86 As Integer
  loc_DFF24F: var_86 = KeyCode
  loc_DFF252: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4AD34
  'Data Table: 4AD150
  loc_E4AD12: Set var_88 = Me.Txt
  loc_E4AD18: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4AD26: Proc_6_73_E22704(var_8C)
  loc_E4AD32: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12CA6E8
  'Data Table: 4AD150
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4AD16A As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_12CA07B: var_86 = Cancel
  loc_12CA086: If (var_86 = CInt(1)) Then
  loc_12CA094:   Set var_8C = Me.Txt
  loc_12CA09A:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12CA0A2:   var_98 = "Vr No"
  loc_12CA0C3:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_12CA0D1:     Set var_8C = Me.Txt
  loc_12CA0D7:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12CA0DF:     var_90.SetFocus
  loc_12CA0ED:     arg_10 = &HFF
  loc_12CA0F0:     Exit Sub
  loc_12CA0F1:   End If
  loc_12CA0FF:   Set var_8C = Me.Txt
  loc_12CA105:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_12CA10D:   arg_10 = var_90.Text
  loc_12CA125:   If (CDbl(var_98) = CDbl(0)) Then
  loc_12CA13B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_12CA141:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_12CA15B:     Set var_8C = Me.Txt
  loc_12CA161:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CA169:     var_90.SetFocus
  loc_12CA177:     arg_10 = &HFF
  loc_12CA17A:     Exit Sub
  loc_12CA17B:   End If
  loc_12CA17F:   Set var_8C = Me.TopCtrl1
  loc_12CA185:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12CA18D:   var_98 = CStr(var_86)
  loc_12CA19E:   If (var_98 = "Add") Then
  loc_12CA1A7:     Call Proc_31_37_115C4B8(MemVar_1F92044)
  loc_12CA1BA:     Set var_8C = Me.Txt
  loc_12CA1C0:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_12CA1C8:     var_90.Text = var_98
  loc_12CA1D7:   End If
  loc_12CA1DB:   Set var_8C = Me.TopCtrl1
  loc_12CA1E1:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_12CA1E9:   var_98 = CStr()
  loc_12CA1FA:   If (var_98 = "Add") Then
  loc_12CA22A:     Set var_8C = Me.Txt
  loc_12CA230:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_12CA251:     unk_4AD16A.Execute var_124 & var_98 & "'", 0, var_128
  loc_12CA261:      = var_124.Item()
  loc_12CA269:      = var_128.Value
  loc_12CA296:     If (var_90.Text.Fields > 0) Then
  loc_12CA29F:       Call 0.Method_arg_50 (var_98)
  loc_12CA2C0:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_12CA2D6:       Call Proc_31_37_115C4B8(MemVar_1F92044)
  loc_12CA2E6:       If (var_98 = vbNullString) Then
  loc_12CA2F3:         Set var_8C = Me.Txt
  loc_12CA2F9:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CA301:         var_90.SetFocus
  loc_12CA30F:         arg_10 = &HFF
  loc_12CA312:         Exit Sub
  loc_12CA313:       End If
  loc_12CA319:       Call Proc_31_37_115C4B8(MemVar_1F92044, var_98)
  loc_12CA32C:       Set var_8C = Me.Txt
  loc_12CA332:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_12CA33A:       var_90.Text = arg_10
  loc_12CA34B:       arg_10 = &HFF
  loc_12CA34E:       Exit Sub
  loc_12CA34F:     End If
  loc_12CA34F:   End If
  loc_12CA352: Else
  loc_12CA35A:   If (var_86 = CInt(2)) Then
  loc_12CA36B:     Set var_8C = Me.Txt
  loc_12CA371:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_12CA379:     arg_10 = var_90.Text
  loc_12CA3A9:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_12CA3BF:       Set var_8C = Me.Txt
  loc_12CA3C5:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_12CA3CD:       var_90.Text = CStr(MemVar_1F920EC)
  loc_12CA3DF:     Else
  loc_12CA3E9:       Set var_8C = Me.Txt
  loc_12CA3EF:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CA40F:       Set var_124 = Me.Txt
  loc_12CA415:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_12CA41D:       var_128.Text = Proc_6_33_1512840(var_90)
  loc_12CA430:     End If
  loc_12CA433:   Else
  loc_12CA43B:     If (var_86 = CInt(3)) Then
  loc_12CA448:       Set var_8C = Me.Txt
  loc_12CA44E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CA47A:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_12CA488:       Set var_94 = Me.Txt
  loc_12CA48E:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_12CA496:       var_124.Text = 1
  loc_12CA4B3:     Else
  loc_12CA4BB:       If (var_86 = CInt(5)) Then
  loc_12CA515:         Set var_8C = Me.Txt
  loc_12CA51B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12CA523:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_12CA53B:         If (1 Or (var_98 = vbNullString)) Then
  loc_12CA54B:           Set var_8C = Me.Txt
  loc_12CA551:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12CA559:           var_90.Tag = vbNullString
  loc_12CA565:           Exit Sub
  loc_12CA566:         End If
  loc_12CA5A4:         Set var_94 = Me.Txt
  loc_12CA5AA:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12CA5B2:         var_124.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_12CA5E8:         var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_12CA5F9:         var_98 = CStr(var_90.Value)
  loc_12CA606:         Set var_94 = Me.Txt
  loc_12CA60C:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12CA614:         var_124.Tag = var_98
  loc_12CA62D:       Else
  loc_12CA635:         If (var_86 = CInt(6)) Then
  loc_12CA643:           Set var_8C = Me.Txt
  loc_12CA649:           Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_12CA672:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_12CA677:             arg_10 = &HFF
  loc_12CA67A:             Exit Sub
  loc_12CA67B:           End If
  loc_12CA689:           Set var_8C = Me.Txt
  loc_12CA68F:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_12CA697:           arg_10 = var_90.Text
  loc_12CA6AE:           If (var_98 = "Misc Payment") Then
  loc_12CA6B7:             global_60 = "HTEXP"
  loc_12CA6C1:             Call Proc_31_37_115C4B8(MemVar_1F92044, var_98)
  loc_12CA6CC:           Else
  loc_12CA6D2:             global_60 = "HTSAL"
  loc_12CA6DC:             Call Proc_31_37_115C4B8(MemVar_1F92044, var_98)
  loc_12CA6E4:           End If
  loc_12CA6E4:         End If
  loc_12CA6E4:       End If
  loc_12CA6E4:     End If
  loc_12CA6E4:   End If
  loc_12CA6E4: End If
  loc_12CA6E4: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EEADF0
  'Data Table: 4AD150
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EEAD39: Set var_A8 = Me.DGAgAc
  loc_EEAD3F: var_A8.Visible = False
  loc_EEAD61: If (Me.var_A8.RecordCount > 0) Then
  loc_EEAD84:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EEADA3:   Set var_B4 = Me.Txt
  loc_EEADA9:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EEADB1:   var_B8.Text = CStr(var_B0.Value)
  loc_EEADC7: End If
  loc_EEADD2: Set var_A8 = Me.Txt
  loc_EEADD8: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EEADE0: var_B0.SetFocus
  loc_EEADEC: Exit Sub
End Sub

Public Function MasterFormExitGet() '4AE018
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4AE027
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF6E44
  'Data Table: 4AD150
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF6D76: On Error Goto loc_EF6E3B
  loc_EF6D7F: Me.MoveFirst
  loc_EF6DA9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF6DD1: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_EF6DE2: Set var_A8 = Me.TopCtrl1
  loc_EF6DE8: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_EF6DF9: Set var_A8 = Me.TopCtrl1
  loc_EF6DFF: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_EF6E10: Set var_A8 = Me.TopCtrl1
  loc_EF6E16: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_EF6E1E: var_A0 = False
  loc_EF6E27: Set var_A8 = Me.TopCtrl1
  loc_EF6E2D: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030012(var_A0)
  loc_EF6E35: Call Proc_31_33_1350E3C(0)
  loc_EF6E3A: Exit Sub
  loc_EF6E3B: ' Referenced from: EF6D76
  loc_EF6E3B: Proc_6_60_E62BC4(var_A0)
  loc_EF6E40: Exit Sub
End Sub

Public Sub Proc_31_29_13E0538
  'Data Table: 4AD150
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_108 As String
  Dim unk_4AD16A As Connection15
  Dim var_9C As Recordset15
  Dim var_134 As Recordset15
  Dim var_12C As Fields15
  Dim var_128 As Variant
  Dim var_96 As Integer
  loc_13DFB89: var_D4 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13DFB94: var_B0 = "DocID"
  loc_13DFBA3: var_A0 = Me.Fields
  loc_13DFBD2: unk_4AD16A.Execute CStr(var_D4 & var_A0.Item(var_B0).Value & "'"), var_128, -1
  loc_13DFBDD: Set var_9C = var_12C
  loc_13DFBFD: var_130 = var_9C.RecordCount
  loc_13DFC0B: If (var_130 = 0) Then
  loc_13DFC0E:   Exit Sub
  loc_13DFC0F: End If
  loc_13DFC1C: Call Proc_31_30_FDFB20(New, var_A0)
  loc_13DFC24: Set var_8C = var_A0
  loc_13DFC2A: Set var_134 = var_8C 
  loc_13DFC39: var_134.AddNew var_B0, var_D4
  loc_13DFC8D: var_134.Fields.Item("VNo").Value = CVar(CStr(var_9C.Fields.Item("VNo").Value))
  loc_13DFD07: var_134.Fields.Item("VDate").Value = Format(CVar(var_9C.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13DFD50: var_F4 = "Misc Receipt"
  loc_13DFD9A: var_134.Fields.Item("VType").Value = IIf((var_9C.Fields.Item("vType").Value = "HTSAL"), var_F4, "Misc Payment")
  loc_13DFE2F: var_134.Fields.Item("AgAc").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CrAcName")), 1)), 3, 0)), &H32))
  loc_13DFE77: var_E4 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Remarks")), 1)) 'String
  loc_13DFEDD: var_134.Fields.Item("Particulars").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(Left(Trim(var_E4), &H96), 3, 0)), 150))
  loc_13DFF23: Proc_6_47_EF59D0(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13DFF4B: var_134.Fields.Item("Amount").Value = var_E4
  loc_13DFF86: Proc_6_39_E7C810(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13DFFEC: var_134.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_E4)), vbNullString)), 3, 0)
  loc_13E0049: var_12C = var_134.Fields
  loc_13E0059: var_12C.Item("Uname").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name")), vbNullString))
  loc_13E0071: var_D4 = CVar(MemVar_1F920C8) 'String
  loc_13E0078: var_B0 = "LUName"
  loc_13E008C: var_B4 = var_134.Fields.Item(var_B0)
  loc_13E0094: var_B4.Value = var_D4
  loc_13E00AB: var_134.Update var_B0, var_D4
  loc_13E00B3: var_90 = "ExpenseRep"
  loc_13E00B9: var_94 = "Expense Report"
  loc_13E00BE: var_96 = 0
  loc_13E00E5: Set var_A0 = var_8C 
  loc_13E00EC: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13E011A: var_108 = "\" & var_90
  loc_13E012E: Call 0.Method_arg_1C (MemVar_1F920B4 & var_108 & ".RPT", var_B0, var_A0)
  loc_13E0139: MemVar_1F921E4 = var_A0
  loc_13E0162: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_D4)
  loc_13E016A: Call 0.Method_arg_2C (var_F4, var_96)
  loc_13E0178: Call 0.Method_arg_150 (var_12C)
  loc_13E018E: Call 0.Method_arg_90 (var_A0, var_130)
  loc_13E0196: Call 0.Method_arg_24 (var_98)
  loc_13E01A2: For var_184 =  To CInt(var_130): 1 = var_184 'Integer
  loc_13E01BB:   Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E01C3:   Call 0.Method_arg_20 (var_B4)
  loc_13E01CB:   Call 0.Method_arg_30 (var_108)
  loc_13E01E1:   var_194 = Ucase(CVar(var_108)) 'Variant
  loc_13E0211:   If (var_194 = Ucase("comp_name")) Then
  loc_13E0235:     Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E023D:     Call 0.Method_arg_20 (var_B4)
  loc_13E0245:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_13E025B:   Else
  loc_13E027D:     If (var_194 = Ucase("comp_add1")) Then
  loc_13E02A1:       Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E02A9:       Call 0.Method_arg_20 (var_B4)
  loc_13E02B1:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_13E02C7:     Else
  loc_13E02E9:       If (var_194 = Ucase("comp_pin")) Then
  loc_13E030D:         Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0315:         Call 0.Method_arg_20 (var_B4)
  loc_13E031D:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_13E0333:       Else
  loc_13E0355:         If (var_194 = Ucase("comp_GSTIN")) Then
  loc_13E0379:           Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0381:           Call 0.Method_arg_20 (var_B4)
  loc_13E0389:           Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_13E039F:         Else
  loc_13E03C1:           If (var_194 = Ucase("comp_tin")) Then
  loc_13E03E5:             Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E03ED:             Call 0.Method_arg_20 (var_B4)
  loc_13E03F5:             Call 0.Method_arg_38 ("'" & MemVar_1F92150 & "'")
  loc_13E040B:           Else
  loc_13E042D:             If (var_194 = Ucase("Title")) Then
  loc_13E0451:               Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0459:               Call 0.Method_arg_20 (var_B4)
  loc_13E0461:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F92140 & "'")
  loc_13E0477:             Else
  loc_13E0499:               If (var_194 = Ucase("BetweenDate")) Then
  loc_13E049C:                 GoTo loc_13E04EC
  loc_13E049F:               End If
  loc_13E04C1:               If (var_194 = Ucase("Dater")) Then
  loc_13E04C4:                 GoTo loc_13E04EC
  loc_13E04C7:               End If
  loc_13E04E9:               If (var_194 = Ucase("Pager")) Then
  loc_13E04EC:                 ' Referenced from:             13E04C4
  loc_13E04EC:                 ' Referenced from:             13E049C
  loc_13E04EC:               End If
  loc_13E04EC:             End If
  loc_13E04EC:           End If
  loc_13E04EC:         End If
  loc_13E04EC:       End If
  loc_13E04EC:     End If
  loc_13E04EC:   End If
  loc_13E04EF: Next var_184 'Integer
  loc_13E04F9: Set var_B4 = Nothing
  loc_13E050D: Set var_A0 = MemVar_1F921E4 
  loc_13E0519: Proc_6_99_1483714(var_A0, var_96, var_94)
  loc_13E0524: MemVar_1F921E4 = var_A0
  loc_13E0531: Set var_134 = Nothing 
  loc_13E0535: Exit Sub
End Sub

Public Sub Proc_31_30_FDFB20(arg_C) 'FDFB20
  'Data Table: 4AD150
  Dim var_8C As Recordset15
  loc_FDF941: Set var_8C = arg_C 
  loc_FDF969: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FDF995: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FDF9C1: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FDF9ED: var_8C.Fields.Append "AgAc", &HC8, &H4B
  loc_FDFA19: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FDFA45: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FDFA71: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FDFA9D: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FDFAC9: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FDFAD9: var_8C.CursorType = 3
  loc_FDFAE6: var_8C.LockType = 3
  loc_FDFB05: var_8C.Open var_A0, var_B0, -1
  loc_FDFB0C: Set var_8C = Nothing 
  loc_FDFB13: Set var_88 = arg_C 
  loc_FDFB17: Proc_31_30_FDFB20 = -1
End Sub

Public Sub Proc_31_31_F8EB1C
  'Data Table: 4AD150
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4AD16A As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8E9DD: Set var_8C = Me.TopCtrl1
  loc_F8E9E3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8E9EB: var_A0 = CStr()
  loc_F8E9FC: If (var_A0 = "Add") Then
  loc_F8EA2C:   Set var_8C = Me.Txt
  loc_F8EA32:   Call 0.Method_Proc_31_31_F8EB1C0 (CInt(0), var_A4, var_A0, "Select Count(*) From ExpSheet Where DocID='", var_9C, -1)
  loc_F8EA53:   unk_4AD16A.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8EA63:    = var_C4.Item()
  loc_F8EA6B:    = var_D8.Value
  loc_F8EA98:   If (var_A4.Text.Fields > 0) Then
  loc_F8EAA1:     Call 0.Method_arg_50 (var_A0)
  loc_F8EAC2:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8EAD8:     Call Proc_31_37_115C4B8(MemVar_1F92044)
  loc_F8EAEB:     Set var_8C = Me.Txt
  loc_F8EAF1:     Call 0.Method_Proc_31_31_F8EB1C0 (CInt(0), var_A4)
  loc_F8EAF9:     var_A4.Text = var_A0
  loc_F8EB0D:     Proc_31_31_F8EB1C = 0
  loc_F8EB13:   End If
  loc_F8EB13: End If
  loc_F8EB13: Proc_31_31_F8EB1C = var_A0
End Sub

Public Sub Proc_31_32_EE29CC
  'Data Table: 4AD150
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EE2912: Set var_8C = Me.Txt
  loc_EE2918: Call 0.Method_Proc_31_32_EE29CCC (var_8E, var_86)
  loc_EE2928: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE293E:   Set var_8C = Me.Txt
  loc_EE2944:   Call 0.Method_Proc_31_32_EE29CC0 (CInt(var_86), var_98)
  loc_EE294C:   var_98.Text = vbNullString
  loc_EE2968:   Set var_8C = Me.Txt
  loc_EE296E:   Call 0.Method_Proc_31_32_EE29CC0 (CInt(var_86), var_98)
  loc_EE2976:   var_98.Tag = vbNullString
  loc_EE2985: Next var_92 'Byte
  loc_EE299C: Set var_8C = Me.txtM
  loc_EE29A2: Call 0.Method_Proc_31_32_EE29CC0 (CInt(5), var_98)
  loc_EE29AA: var_98.defaultText = vbNullString
  loc_EE29C3: Me.LblVPrefix.Caption = vbNullString
  loc_EE29CB: Exit Sub
End Sub

Public Sub Proc_31_33_1350E3C
  'Data Table: 4AD150
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4AD16A As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E8 As Recordset15
  Dim var_128 As Variant
  Dim var_11C As Variant
  loc_1350668: On Error Goto loc_1350E34
  loc_1350682: If (Me.RecordCount > 0) Then
  loc_1350692:   var_C8 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13506DB:   unk_4AD16A.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_13506E6:   Set var_88 = var_120
  loc_135073A:   var_120 = var_88.Fields
  loc_13507A3:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13507E8:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_1350862:   var_128 = var_88.Fields.Item("U_AE")
  loc_13508C3:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_1350908:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1350943:   Set var_1E8 = var_88 
  loc_1350983:   If (var_88.Fields.Item("vType").Value = "HTSAL") Then
  loc_13509A0:     var_A8 = var_88.Fields.Item("vType")
  loc_13509B7:     global_60 = CStr(var_A8.Value)
  loc_13509D6:     Set var_94 = Me.Txt
  loc_13509DC:     Call 0.Method_Proc_31_33_1350E3C0 (CInt(6), var_A8)
  loc_13509E4:     var_A8.Text = "Misc Rect."
  loc_13509F3:   Else
  loc_1350A2F:     If (var_88.Fields.Item("vType").Value = "HTEXP") Then
  loc_1350A4C:       var_A8 = var_88.Fields.Item("vType")
  loc_1350A63:       global_60 = CStr(var_A8.Value)
  loc_1350A82:       Set var_94 = Me.Txt
  loc_1350A88:       Call 0.Method_Proc_31_33_1350E3C0 (CInt(6), var_A8)
  loc_1350A90:       var_A8.Text = "Misc Payment"
  loc_1350A9C:     End If
  loc_1350A9C:   End If
  loc_1350AD5:   Set var_120 = Me.Txt
  loc_1350ADB:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(0), var_128)
  loc_1350AE3:   var_128.Text = CStr(var_1E8.Fields.Item("DocID").Value)
  loc_1350B31:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_1350B97:   Set var_120 = Me.Txt
  loc_1350B9D:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_1350BA5:   var_128.Text = 1
  loc_1350BF8:   Set var_120 = Me.Txt
  loc_1350BFE:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(1), var_128)
  loc_1350C06:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_1350C6F:   Set var_120 = Me.txtM
  loc_1350C75:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(5), var_128, CVar(CStr(Format(CVar(var_1E8.Fields.Item("VTIME")), "hh:mm"))))
  loc_1350C7D:   var_128.defaultText = 1
  loc_1350CE8:   Set var_120 = Me.Txt
  loc_1350CEE:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(3), var_128, CStr(Format(CVar(var_1E8.Fields.Item("Amount")), "0.00")), 1)
  loc_1350CF6:   var_128.Text = 1
  loc_1350D46:   Set var_120 = Me.Txt
  loc_1350D4C:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(4), var_128)
  loc_1350D54:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Remarks")), 1)
  loc_1350D9E:   Set var_120 = Me.Txt
  loc_1350DA4:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(5), var_128)
  loc_1350DAC:   var_128.Tag = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("AgAc")))
  loc_1350DF6:   Set var_120 = Me.Txt
  loc_1350DFC:   Call 0.Method_Proc_31_33_1350E3C0 (CInt(5), var_128)
  loc_1350E04:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("CrAcName")))
  loc_1350E1A:   Set var_1E8 = Nothing 
  loc_1350E21: Else
  loc_1350E21:   Call Proc_31_32_EE29CC(1)
  loc_1350E26: End If
  loc_1350E26: Call Proc_31_35_EB707C()
  loc_1350E30: Set var_88 = Nothing
  loc_1350E33: Exit Sub
  loc_1350E34: ' Referenced from: 1350668
  loc_1350E34: Proc_6_60_E62BC4()
  loc_1350E39: Exit Sub
End Sub

Public Sub Proc_31_34_F17210(arg_C) 'F17210
  'Data Table: 4AD150
  Dim var_98 As Variant
  loc_F1711E: Set var_8C = Me.Txt
  loc_F17124: Call 0.Method_Proc_31_34_F17210C (var_8E, var_86)
  loc_F17134: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1714A:   Set var_8C = Me.Txt
  loc_F17150:   Call 0.Method_Proc_31_34_F172100 (CInt(var_86), var_98)
  loc_F17158:   var_98.Enabled = arg_C
  loc_F17167: Next var_92 'Byte
  loc_F1717A: Set var_8C = Me.Txt
  loc_F17180: Call 0.Method_Proc_31_34_F172100 (CInt(2), var_98)
  loc_F17188: var_98.Enabled = False
  loc_F171A1: Set var_8C = Me.Txt
  loc_F171A7: Call 0.Method_Proc_31_34_F172100 (CInt(1), var_98)
  loc_F171AF: var_98.Enabled = False
  loc_F171CB: Set var_8C = Me.txtM
  loc_F171D1: Call 0.Method_Proc_31_34_F172100 (CInt(5), var_98)
  loc_F171D9: var_98.Enabled = False
  loc_F171F2: Set var_8C = Me.Txt
  loc_F171F8: Call 0.Method_Proc_31_34_F172100 (CInt(0), var_98)
  loc_F17200: var_98.Enabled = False
  loc_F1720C: Exit Sub
  loc_F1720D: ThisVCallI2
End Sub

Public Sub Proc_31_35_EB707C
  'Data Table: 4AD150
  loc_EB6FF8: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EB700A:   Me.DGAgAc.Visible = False
  loc_EB7012: End If
  loc_EB702D: If (Me.FrmList.Visible = &HFF) Then
  loc_EB703C:   Me.FrmList.Visible = False
  loc_EB7044: End If
  loc_EB7060: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB7072:   Me.FGPoint.Visible = False
  loc_EB707A: End If
  loc_EB707A: Exit Sub
End Sub

Public Sub Proc_31_36_E90860(arg_C) 'E90860
  'Data Table: 4AD150
  Dim var_10C As TextBox
  loc_E907F4: Call Proc_31_35_EB707C()
  loc_E90830: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E90833:   Call TopCtrl1_UnknownEvent_16()
  loc_E9083B: Else
  loc_E90845:   Set var_108 = Me.Txt
  loc_E9084B:   Call 0.Method_Proc_31_36_E908600 (arg_C)
  loc_E90853:   var_10C.SetFocus
  loc_E9085F: End If
  loc_E9085F: Exit Sub
End Sub

Public Sub Proc_31_37_115C4B8
  'Data Table: 4AD150
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115C150: var_90 = global_60
  loc_115C167: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115C18A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115C198: Set var_B4 = Me.Txt
  loc_115C19E: Call 0.Method_Proc_31_37_115C4B80 (CInt(2), var_B8, var_E8)
  loc_115C1AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115C1B5: var_F8 = -1 & var_D8 
  loc_115C1C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115C1D4: Set var_8C = var_140
  loc_115C210: If (var_8C.RecordCount <= 0) Then
  loc_115C22C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115C23F:   var_88 = vbNullString
  loc_115C242:   Proc_31_37_115C4B8 = 
  loc_115C248: End If
  loc_115C25C: If (var_8C.RecordCount > 0) Then
  loc_115C29B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115C2B8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115C2C9:     var_9C = CStr(var_B8.Value)
  loc_115C2E4:     Set var_B4 = Me.Txt
  loc_115C2EA:     Call 0.Method_Proc_31_37_115C4B80 (CInt(1), var_B8)
  loc_115C300:     var_94 = CLng(Val(var_B8.Text))
  loc_115C310:   Else
  loc_115C33B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115C362:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115C377:     var_D8 = (var_B8.Value + 1)
  loc_115C37D:     var_94 = CLng(var_D8)
  loc_115C38E:   End If
  loc_115C38E: End If
  loc_115C3B9: var_C8 = Space((5 - Len(var_90)))
  loc_115C3C1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115C3CB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115C3DC: var_118 = Space((5 - Len(var_9C)))
  loc_115C3E4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115C3FA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115C402: var_188 = (var_13C + var_178)
  loc_115C40E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115C413: var_98 = CStr(var_1A8)
  loc_115C443: Me.LblVPrefix.Caption = var_9C
  loc_115C459: Set var_B4 = Me.Txt
  loc_115C45F: Call 0.Method_Proc_31_37_115C4B80 (CInt(0), var_B8)
  loc_115C467: var_B8.Text = var_98
  loc_115C486: Set var_B4 = Me.Txt
  loc_115C48C: Call 0.Method_Proc_31_37_115C4B80 (CInt(1), var_B8)
  loc_115C494: var_B8.Text = CStr(var_94)
  loc_115C4A6: var_88 = var_98
  loc_115C4AE: Set var_8C = Nothing
  loc_115C4B1: Proc_31_37_115C4B8 = var_94
End Sub

Public Sub Proc_31_38_EE28B8
  'Data Table: 4AD150
  loc_EE2806: On Error Goto loc_EE284C
  loc_EE281E: Call 0.Method_arg_18C (var_8C)
  loc_EE2826: Call var_8C.Show
  loc_EE283B: Call 0.Method_arg_188 (var_B0)
  loc_EE2843: var_88 = var_B0
  loc_EE2846: Proc_31_38_EE28B8 = 1
  loc_EE284C: ' Referenced from: EE2806
  loc_EE2854: Set var_8C = Err()
  loc_EE285A: Call 0.Method_arg_1C (var_B4)
  loc_EE286B: If (var_B4 <> 0) Then
  loc_EE2876:   Set var_8C = Err()
  loc_EE287C:   Call 0.Method_arg_2C (var_B0)
  loc_EE289D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE28B0: End If
  loc_EE28B0: Proc_31_38_EE28B8 = 
End Sub
