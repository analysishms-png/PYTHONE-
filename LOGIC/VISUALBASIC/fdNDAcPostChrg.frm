VERSION 5.00
Begin VB.Form fdNDAcPostChrg
  Caption = "Posting Utility"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  Icon = "fdNDAcPostChrg.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6300
  ClientHeight = 3090
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2865
    Width = 6300
    Height = 225
    Visible = 0   'False
    TabIndex = 18
  End
  Begin ProgressBar PBar1
    Left = 2580
    Top = 4410
    Width = 8085
    Height = 255
    TabIndex = 12
  End
  Begin TextBox Txt
    Index = 5
    Left = 3180
    Top = 7005
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
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
    Left = 3165
    Top = 7275
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 3
    Left = 6435
    Top = 30
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 2
    ForeColor = &HC00000&
    Left = 7035
    Top = 1950
    Width = 1485
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 1
    Left = 6435
    Top = 45
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 11
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
    Index = 0
    ForeColor = &HC00000&
    Left = 4620
    Top = 1935
    Width = 1425
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid FGrid
    Left = 9015
    Top = 5550
    Width = 4695
    Height = 4845
    Visible = 0   'False
    TabIndex = 11
  End
  Begin BtnEnh CmdExit
    Left = 8640
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 14
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 2490
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 16
  End
  Begin BtnEnh Cmd
    Index = 2
    Left = 4545
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 17
  End
  Begin BtnEnh Cmd
    Index = 4
    Left = 6600
    Top = 3585
    Width = 2070
    Height = 690
    TabIndex = 15
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 13
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
    Caption = "Old Bill No"
    Index = 3
    ForeColor = &H0&
    Left = 1905
    Top = 7005
    Width = 945
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 10
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
    Caption = "New Bill No"
    Index = 1
    ForeColor = &H0&
    Left = 1905
    Top = 7275
    Width = 1035
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 8
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
    Caption = "To Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 6225
    Top = 1965
    Width = 795
    Height = 240
    Enabled = 0   'False
    TabIndex = 5
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
  Begin Label lblDisplay
    Caption = "."
    Left = 3165
    Top = 2700
    Width = 5835
    Height = 510
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 3540
    Top = 1920
    Width = 990
    Height = 240
    Enabled = 0   'False
    TabIndex = 2
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

Attribute VB_Name = "fdNDAcPostChrg"

Private MasterFormExit As Integer

Public Sub Cmd_UnknownEvent_9(Index As Integer) '10C7804
  'Data Table: 4439A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_11E As Integer
  Dim var_88 As Variant
  Dim var_11C As Variant
  Dim var_FC As Variant
  Dim unk_4439E2 As Connection15
  Dim Me As Recordset15
  loc_10C7548: Set var_88 = Me.Txt
  loc_10C754E: Call 0.Method_Cmd_UnknownEvent_90 (0, var_8C)
  loc_10C7570: Set var_94 = Me.Txt
  loc_10C7576: Call 0.Method_Cmd_UnknownEvent_90 (2, var_98)
  loc_10C759F: If ((CDate(var_8C.Text) < MemVar_1F920F4) Or (CDate(var_98.Text) > MemVar_1F920FC)) Then
  loc_10C75BB:   MsgBox("Please check Posting Dates", &H40, var_DC, var_FC, var_11C)
  loc_10C75CB:   Exit Sub
  loc_10C75CC: End If
  loc_10C75CF: var_11E = Index
  loc_10C75D8: If (var_11E = 0) Then
  loc_10C75E8:   Me.Global.Unload Me
  loc_10C75F3: Else
  loc_10C75F9:   If (var_11E = 1) Then
  loc_10C75FC:     Call TopCtrl1_UnknownEvent_16()
  loc_10C7604:   Else
  loc_10C760A:     If (var_11E = 2) Then
  loc_10C7620:       Set var_88 = Me.Txt
  loc_10C7626:       Call 0.Method_Cmd_UnknownEvent_90 (0, var_8C)
  loc_10C763F:       Set var_94 = Me.Txt
  loc_10C7645:       Call 0.Method_Cmd_UnknownEvent_90 (2, var_98)
  loc_10C764D:       var_9C = var_98.Text
  loc_10C7667:       Set var_124 = Me.lblDisplay
  loc_10C766D:       Proc_96_30_194FAD0(var_124, CDate(var_8C.Text))
  loc_10C768B:     Else
  loc_10C7691:       If (var_11E = 3) Then
  loc_10C769D:         Set var_88 = Me.Txt
  loc_10C76A3:         Call 0.Method_Cmd_UnknownEvent_90 (4, var_8C)
  loc_10C76CD:         Set var_94 = Me.Txt
  loc_10C76D3:         Call 0.Method_Cmd_UnknownEvent_90 (5, var_98, (Trim(CVar(var_8C)) <> vbNullString))
  loc_10C770C:         If CBool(CDate(var_9C) And (Trim(CVar(var_98)) <> vbNullString)) Then
  loc_10C772A:           Set var_88 = Me.Txt
  loc_10C7730:           Call 0.Method_Cmd_UnknownEvent_90 (4, var_8C, "Update Paycharge Set bill_no='", var_188)
  loc_10C7747:           var_FC = -1 & Trim(CVar(var_8C)) 
  loc_10C775D:           Set var_94 = Me.Txt
  loc_10C7763:           Call 0.Method_Cmd_UnknownEvent_90 (5, var_98, var_FC & "' where bill_no='")
  loc_10C7791:           unk_4439E2.Execute CStr(var_124 & Trim(CVar(var_98)) & "'"), var_11E, 
  loc_10C77B7:         End If
  loc_10C77C2:         Me.Requery -1
  loc_10C77D0:         CVarUnk
  loc_10C77D5:         VerifyVarObj
  loc_10C77DB:         Set var_88 = Me.FGrid
  loc_10C77E1:         LateIdStAd
  loc_10C77F2:       Else
  loc_10C77F8:         If (var_11E = 4) Then
  loc_10C77FB:           Call Proc_79_32_153218C(var_88)
  loc_10C7800:         End If
  loc_10C7800:       End If
  loc_10C7800:     End If
  loc_10C7800:   End If
  loc_10C7800: End If
  loc_10C7800: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'F31DC4
  'Data Table: 4439A4
  Dim var_A4 As TextBox
  Dim unk_4439E2 As Connection15
  loc_F31CC0: On Error Goto loc_F31D71
  loc_F31CD9: Set var_A0 = Me.Txt
  loc_F31CDF: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A4)
  loc_F31CE7: var_A8 = var_A4.Text
  loc_F31CFF: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F31D1A: If CBool(CDate(MemVar_1F920EC) <> var_D8) Then
  loc_F31D36:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F31D46:   Exit Sub
  loc_F31D47: End If
  loc_F31D50: unk_4439E2.BeginTrans var_12C
  loc_F31D59: var_86 = CByte(1) 'Byte
  loc_F31D63: unk_4439E2.CommitTrans
  loc_F31D6C: var_86 = CByte(0) 'Byte
  loc_F31D70: Exit Sub
  loc_F31D71: ' Referenced from: F31CC0
  loc_F31D7A: If (CInt(var_86) = 1) Then
  loc_F31D83:   unk_4439E2.RollbackTrans
  loc_F31D88: End If
  loc_F31D90: Set var_A0 = Err()
  loc_F31D96: Call 0.Method_arg_2C (var_A8)
  loc_F31DAF: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F31DC2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '119465C
  'Data Table: 4439A4
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_CC As Double
  Dim unk_4439E2 As Connection15
  Dim var_118 As Variant
  Dim var_134 As TextBox
  Dim var_128 As Date
  Dim var_114 As Variant
  Dim var_DE As Integer
  Dim var_DC As Double
  Dim var_D4 As Double
  Dim var_12C As String
  Dim MemVar_1F920EC As Double
  loc_1194292: Me.PBar1.Visible = True
  loc_11942AC: Me.PBar1.Value = CVar(CDbl(1))
  loc_11942C1: Me.lblDisplay.Caption = "A/C Posting Started..."
  loc_11942CD: Set var_104 = Me.lblDisplay
  loc_11942D3: var_104.Refresh
  loc_11942DE: var_CC = MemVar_1F920EC
  loc_11942F7: unk_4439E2.Execute "Select PostingType from Enviro", var_114, -1
  loc_1194325: var_118 = var_104.Fields.Item("PostingType")
  loc_1194347: If (var_118.Value = "Daily Bill wise Posting") Then
  loc_1194356:   Set var_104 = Me.Txt
  loc_119435C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_12C)
  loc_1194364:   var_104 = var_118.Text
  loc_1194375:   Set var_130 = Me.Txt
  loc_119437B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_134)
  loc_1194383:   var_138 = var_134.Text
  loc_1194397:   var_128 = CDate(CDate(var_138))
  loc_11943AA:   var_148 = DateDiff("D", CDate(CDate(var_12C)), var_128, 1, 1)
  loc_11943E2:   If (CInt(Val(CStr(var_148))) = 0) Then
  loc_11943E7:     var_DE = 1
  loc_11943EA:   End If
  loc_1194406:   var_DC = ((CDbl(Me.PBar1.Max) - CDbl(1)) / CDbl(var_DE))
  loc_1194426:   var_F0 = CVar((CDbl(Me.PBar1.Max) + var_DC)) 'Single
  loc_119442F:   Set var_118 = Me.PBar1
  loc_1194435:   var_118.Max = "PostingType"
  loc_1194450:   Set var_104 = Me.Txt
  loc_1194456:   Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_118, var_12C, var_DC)
  loc_119445E:   var_DE = var_118.Text
  loc_1194477:   Set var_130 = Me.Txt
  loc_119447D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (2, var_134, var_138, var_98)
  loc_1194485:   CDate(var_12C) = var_134.Text
  loc_11944A1:   For var_15C = var_CC To CDate(var_138): var_DE = var_15C 'Double
  loc_11944AE:     var_D4 = (var_D4 + var_DC)
  loc_11944C4:     Set var_104 = Me.Txt
  loc_11944CA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_118, CStr(var_98))
  loc_11944D2:     var_118.Text = var_D4
  loc_11944E4:     MemVar_1F920EC = var_98
  loc_1194505:     Me.lblDisplay.Caption = CStr("A/C Posting For Date " & CDate(var_98))
  loc_119451D:     Me.lblDisplay.Refresh
  loc_119452E:     var_12C = "POSTING"
  loc_1194537:     Proc_96_14_1F81C7C(var_98, var_12C, 0)
  loc_1194551:     Me.PBar1.Value = CVar(var_D4)
  loc_119455C:   Next var_15C 'Double
  loc_1194570:   Me.PBar1.Visible = False
  loc_119457B: Else
  loc_119457E:   Proc_96_16_1F479F8(var_98)
  loc_1194583: End If
  loc_11945A5: Me.PBar1.Value = CVar(CDbl(Me.PBar1.Max))
  loc_11945C1: Me.lblDisplay.Caption = "A/C Posting Completed."
  loc_11945D3: Me.lblDisplay.Refresh
  loc_11945EA: Me.PBar1.Visible = False
  loc_11945F2: Exit Sub
  loc_11945FC: If (CInt(var_86) = 1) Then
  loc_1194605:   unk_4439E2.RollbackTrans
  loc_1194619:   Me.PBar1.Visible = False
  loc_1194621: End If
  loc_1194629: Set var_104 = Err()
  loc_119462F: Call 0.Method_arg_2C (var_12C)
  loc_1194648: MsgBox(CVar(var_12C), &H10, var_128, var_148, var_180)
  loc_119465B: Exit Sub
End Sub

Private Sub Form_Load() 'F92F70
  'Data Table: 4439A4
  Dim var_A8 As ProgressBar
  Dim var_B0 As TextBox
  Dim unk_4439E2 As Connection15
  loc_F92E13: Me.PBar1.Visible = False
  loc_F92E1B: On Error Goto loc_F92F68
  loc_F92E34: Proc_6_23_DFBA28(Me, 0)
  loc_F92E43: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F92E4E: If (MemVar_1F920B8 <> 1) Then
  loc_F92E5F:   Set var_A8 = Me.Cmd
  loc_F92E65:   Call 0.Method_Form_Load0 (1, var_B0)
  loc_F92E6D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F92E79: End If
  loc_F92E7F: If (MemVar_1F920B8 <> 1) Then
  loc_F92E90:   Set var_A8 = Me.Cmd
  loc_F92E96:   Call 0.Method_Form_Load0 (2, var_B0)
  loc_F92E9E:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_F92EAA: End If
  loc_F92EBD: Set var_A8 = Me.Txt
  loc_F92EC3: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_F92ECB: var_B0.Text = CStr(MemVar_1F920EC)
  loc_F92EF3: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_F92EFB: var_B0.Text = CStr(MemVar_1F920EC)
  loc_F92F20: unk_4439E2.Execute "Select Distinct Bill_no,SettleDate,FolioNo from PayCharge where Bill_No is Not NULL and Bill_No <>'' and SettleDate<='31/Aug/2005' order by SettleDate", var_C4, -1
  loc_F92F31: Set global_88 = Me.Txt
  loc_F92F48: CVarUnk
  loc_F92F4D: VerifyVarObj
  loc_F92F53: Set var_A8 = Me.FGrid
  loc_F92F59: LateIdStAd
  loc_F92F67: Exit Sub
  loc_F92F68: ' Referenced from: F92E1B
  loc_F92F68: Proc_6_60_E62BC4(var_A8, global_88)
  loc_F92F6D: Exit Sub
End Sub

Private Sub Form_Resize() 'E76070
  'Data Table: 4439A4
  loc_E7601A: Call 0.Method_arg_50 (var_88)
  loc_E7602C: Me.LblFormCaption.Caption = var_88
  loc_E76045: Me.LblFormCaption.Left = CDbl(0)
  loc_E76053: Call 0.Method_arg_100 (var_90)
  loc_E76065: Me.LblFormCaption.Width = var_90
  loc_E7606D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1EB40
  'Data Table: 4439A4
  loc_E1EB29: MasterFormExit = 0
  loc_E1EB37: Set global_88 = Nothing
  loc_E1EB3E: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5992C
  'Data Table: 4439A4
  loc_E598F4: Set var_88 = Me.TopCtrl1
  loc_E598FA: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030005()
  loc_E5991D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E59925:   Call Form_Unload(&HFF)
  loc_E5992A: End If
  loc_E5992A: Exit Sub
End Sub

Private Sub Form_Activate() 'E4BF14
  'Data Table: 4439A4
  loc_E4BEE8: On Error Goto loc_E4BF0E
  loc_E4BEEF: Set var_8C = Me.TopCtrl1
  loc_E4BEF5: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_68030000()
  loc_E4BF0A: If (CLng(CInt()) = &H2D) Then
  loc_E4BF0D: End If
  loc_E4BF0D: Exit Sub
  loc_E4BF0E: ' Referenced from: E4BEE8
  loc_E4BF0E: Proc_6_60_E62BC4()
  loc_E4BF13: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24994
  'Data Table: 4439A4
  loc_E24979: If (MasterFormExit = &HFF) Then
  loc_E24989:   Me.Global.Unload Me
  loc_E24991: End If
  loc_E24991: Exit Sub
  loc_E24992: Set arg_2CFC = 
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E60D38
  'Data Table: 4439A4
  loc_E60CEC: On Error Goto loc_E60D2F
  loc_E60CF9: If (CLng(KeyCode) = &H1B) Then
  loc_E60D09:   Me.Global.Unload Me
  loc_E60D11:   Exit Sub
  loc_E60D12: End If
  loc_E60D26: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E60D2E: Exit Sub
  loc_E60D2F: ' Referenced from: E60CEC
  loc_E60D2F: Proc_6_60_E62BC4(Shift)
  loc_E60D34: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EC9AF4
  'Data Table: 4439A4
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC9A5A: Set var_88 = Me.Txt
  loc_EC9A60: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EC9A6E: Proc_6_74_E226B0(var_8C)
  loc_EC9A89: Set var_88 = Me.Txt
  loc_EC9A8F: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC9A97: var_8C.SelStart = 0
  loc_EC9AB0: Set var_88 = Me.Txt
  loc_EC9AB6: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC9AD1: Set var_90 = Me.Txt
  loc_EC9AD7: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_EC9ADF: var_98.SelLength = Len(var_8C.Text)
  loc_EC9AF2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E40A70
  'Data Table: 4439A4
  loc_E40A46: If (Shift = &HD) Then
  loc_E40A51:   Call Txt_Validate(KeyCode)
  loc_E40A64:   Proc_303_0_FB9B68("	", 0)
  loc_E40A6C: End If
  loc_E40A6C: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A1D4
  'Data Table: 4439A4
  loc_E4A1B2: Set var_88 = Me.Txt
  loc_E4A1B8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A1C6: Proc_6_73_E22704(var_8C)
  loc_E4A1D2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EAD820
  'Data Table: 4439A4
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_EAD7A7: var_8A = Cancel
  loc_EAD7B2: If Not (var_8A = CInt(0)) Then
  loc_EAD7BD:   If (var_8A = CInt(2)) Then
  loc_EAD7C0:   End If
  loc_EAD7CD:   Set var_90 = Me.Txt
  loc_EAD7D3:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_EAD7F9:   Set var_A0 = Me.Txt
  loc_EAD7FF:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_EAD807:   var_A4.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_EAD81E: End If
  loc_EAD81E: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15F1C
  'Data Table: 4439A4
  loc_E15F11: Me.Global.Unload Me
  loc_E15F19: Exit Sub
End Sub

Public Function MasterFormExitGet() '4442C8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4442D7
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4442E6
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4442F5
  mVType = Value
End Sub

Public Function VnoRCGet() '444304
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '444313
  VnoRC = Value
End Sub

Public Function VnoRTGet() '444322
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '444331
  VnoRT = Value
End Sub

Public Function vPrefixGet() '444340
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '44434F
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '44435E
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '44436D
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '44437C
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '44438B
  VprefixRT = Value
End Sub

Public Function DocIDGet() '44439A
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '4443A9
  DocID = Value
End Sub

Public Sub Proc_79_31_1481190(arg_C) '1481190
  'Data Table: 4439A4
  Dim var_88 As Recordset15
  Dim var_98 As String
  Dim var_C0 As Variant
  Dim var_A8 As Variant
  Dim var_D0 As Variant
  loc_1480533: Set var_88 = arg_C 
  loc_1480542: var_88.AddNew var_98, var_A8
  loc_1480566: var_C0 = CVar(Me.Recordset15.Fields.Item("DocID")) 'Address
  loc_1480574: var_88.Collect = "DocID"
  loc_148059E: var_C0 = CVar(Me.Recordset15.Fields.Item("SNo")) 'Address
  loc_14805AC: var_88.Collect = "SNo"
  loc_14805BA: var_A8 = CVar(arg_20) 'Integer
  loc_14805C7: var_88.Collect = "Sno1"
  loc_14805EB: var_C0 = CVar(Me.Recordset15.Fields.Item("vType")) 'Address
  loc_14805F9: var_88.Collect = "vType"
  loc_1480623: var_C0 = CVar(Me.Recordset15.Fields.Item("VNo")) 'Address
  loc_1480631: var_88.Collect = "VNo"
  loc_148065B: var_C0 = CVar(Me.Recordset15.Fields.Item("Site_Code")) 'Address
  loc_1480669: var_88.Collect = "Site_Code"
  loc_1480693: var_C0 = CVar(Me.Recordset15.Fields.Item("vPrefix")) 'Address
  loc_14806A1: var_88.Collect = "vPrefix"
  loc_14806CB: var_C0 = CVar(Me.Recordset15.Fields.Item("VDate")) 'Address
  loc_14806D9: var_88.Collect = "VDate"
  loc_1480703: var_C0 = CVar(Me.Recordset15.Fields.Item("PartyCode")) 'Address
  loc_1480711: var_88.Collect = "PartyCode"
  loc_148073B: var_C0 = CVar(Me.Recordset15.Fields.Item("RestCode")) 'Address
  loc_1480749: var_88.Collect = "RestCode"
  loc_1480773: var_C0 = CVar(Me.Recordset15.Fields.Item("RoomCat")) 'Address
  loc_1480781: var_88.Collect = "RoomCat"
  loc_14807AB: var_C0 = CVar(Me.Recordset15.Fields.Item("Roomtype")) 'Address
  loc_14807B9: var_88.Collect = "Roomtype"
  loc_14807E3: var_C0 = CVar(Me.Recordset15.Fields.Item("RoomNo")) 'Address
  loc_14807F1: var_88.Collect = "RoomNo"
  loc_148081B: var_C0 = CVar(Me.Recordset15.Fields.Item("ContraDocId")) 'Address
  loc_1480829: var_88.Collect = "ContraDocId"
  loc_1480853: var_C0 = CVar(Me.Recordset15.Fields.Item("ContraSNo")) 'Address
  loc_1480861: var_88.Collect = "ContraSNo"
  loc_148088B: var_C0 = CVar(Me.Recordset15.Fields.Item("Item")) 'Address
  loc_1480899: var_88.Collect = "Item"
  loc_14808AD: If (CInt(arg_1C) = 1) Then
  loc_14808E1:   var_D0 = (CVar(arg_14) * Me.Recordset15.Fields.Item("ConvRatio").Value)
  loc_14808EF:   var_88.Collect = "QtyIss"
  loc_148091D:   var_C0 = CVar(Me.Recordset15.Fields.Item("QtyRec")) 'Address
  loc_148092B:   var_88.Collect = "QtyRec"
  loc_1480939: Else
  loc_1480958:   var_C0 = CVar(Me.Recordset15.Fields.Item("QtyIss")) 'Address
  loc_1480966:   var_88.Collect = "QtyIss"
  loc_14809A2:   var_D0 = (CVar(arg_14) * Me.Recordset15.Fields.Item("ConvRatio").Value)
  loc_14809B0:   var_88.Collect = "QtyRec"
  loc_14809BF: End If
  loc_14809DE: var_C0 = CVar(Me.Recordset15.Fields.Item("Unit")) 'Address
  loc_14809EC: var_88.Collect = "Unit"
  loc_14809FA: var_A8 = CVar(arg_18) 'Double
  loc_1480A08: var_88.Collect = "Rate"
  loc_1480A14: var_A8 = CVar((arg_18 * arg_14)) 'Double
  loc_1480A22: var_88.Collect = "Amount"
  loc_1480A46: var_C0 = CVar(Me.Recordset15.Fields.Item("TaxPer")) 'Address
  loc_1480A54: var_88.Collect = "TaxPer"
  loc_1480A7E: var_C0 = CVar(Me.Recordset15.Fields.Item("TaxAmt")) 'Address
  loc_1480A8C: var_88.Collect = "TaxAmt"
  loc_1480AB6: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscPer")) 'Address
  loc_1480AC4: var_88.Collect = "DiscPer"
  loc_1480AEE: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscAmt")) 'Address
  loc_1480AFC: var_88.Collect = "DiscAmt"
  loc_1480B26: var_C0 = CVar(Me.Recordset15.Fields.Item("VoidYN")) 'Address
  loc_1480B34: var_88.Collect = "VoidYN"
  loc_1480B5E: var_C0 = CVar(Me.Recordset15.Fields.Item("Remarks")) 'Address
  loc_1480B6C: var_88.Collect = "Remarks"
  loc_1480B96: var_C0 = CVar(Me.Recordset15.Fields.Item("KotDocid")) 'Address
  loc_1480BA4: var_88.Collect = "KotDocid"
  loc_1480BCE: var_C0 = CVar(Me.Recordset15.Fields.Item("kotSNo")) 'Address
  loc_1480BDC: var_88.Collect = "kotSNo"
  loc_1480C06: var_C0 = CVar(Me.Recordset15.Fields.Item("VTIME")) 'Address
  loc_1480C14: var_88.Collect = "VTIME"
  loc_1480C3E: var_C0 = CVar(Me.Recordset15.Fields.Item("U_Name")) 'Address
  loc_1480C4C: var_88.Collect = "U_Name"
  loc_1480C76: var_C0 = CVar(Me.Recordset15.Fields.Item("U_EntDt")) 'Address
  loc_1480C84: var_88.Collect = "U_EntDt"
  loc_1480CAE: var_C0 = CVar(Me.Recordset15.Fields.Item("U_AE")) 'Address
  loc_1480CBC: var_88.Collect = "U_AE"
  loc_1480CE6: var_C0 = CVar(Me.Recordset15.Fields.Item("Total")) 'Address
  loc_1480CF4: var_88.Collect = "Total"
  loc_1480D1E: var_C0 = CVar(Me.Recordset15.Fields.Item("DiscApp")) 'Address
  loc_1480D2C: var_88.Collect = "DiscApp"
  loc_1480D56: var_C0 = CVar(Me.Recordset15.Fields.Item("RoundOff")) 'Address
  loc_1480D64: var_88.Collect = "RoundOff"
  loc_1480D8E: var_C0 = CVar(Me.Recordset15.Fields.Item("DepartCode")) 'Address
  loc_1480D9C: var_88.Collect = "DepartCode"
  loc_1480DC6: var_C0 = CVar(Me.Recordset15.Fields.Item("Godowncode")) 'Address
  loc_1480DD4: var_88.Collect = "Godowncode"
  loc_1480DFE: var_C0 = CVar(Me.Recordset15.Fields.Item("ChalQty")) 'Address
  loc_1480E0C: var_88.Collect = "ChalQty"
  loc_1480E36: var_C0 = CVar(Me.Recordset15.Fields.Item("RecdQty")) 'Address
  loc_1480E44: var_88.Collect = "RecdQty"
  loc_1480E6E: var_C0 = CVar(Me.Recordset15.Fields.Item("AccQty")) 'Address
  loc_1480E7C: var_88.Collect = "AccQty"
  loc_1480EA6: var_C0 = CVar(Me.Recordset15.Fields.Item("RejQty")) 'Address
  loc_1480EB4: var_88.Collect = "RejQty"
  loc_1480EDE: var_C0 = CVar(Me.Recordset15.Fields.Item("RecdUnit")) 'Address
  loc_1480EEC: var_88.Collect = "RecdUnit"
  loc_1480F16: var_C0 = CVar(Me.Recordset15.Fields.Item("Specification")) 'Address
  loc_1480F24: var_88.Collect = "Specification"
  loc_1480F32: var_A8 = CVar(arg_18) 'Double
  loc_1480F40: var_88.Collect = "ItemRate"
  loc_1480F64: var_C0 = CVar(Me.Recordset15.Fields.Item("DelFlag")) 'Address
  loc_1480F72: var_88.Collect = "DelFlag"
  loc_1480F9C: var_C0 = CVar(Me.Recordset15.Fields.Item("LandVal")) 'Address
  loc_1480FAA: var_88.Collect = "LandVal"
  loc_1480FD4: var_C0 = CVar(Me.Recordset15.Fields.Item("ConvRatio")) 'Address
  loc_1480FE2: var_88.Collect = "ConvRatio"
  loc_148100C: var_C0 = CVar(Me.Recordset15.Fields.Item("IndentDocID")) 'Address
  loc_148101A: var_88.Collect = "IndentDocID"
  loc_1481044: var_C0 = CVar(Me.Recordset15.Fields.Item("IndentSno")) 'Address
  loc_1481052: var_88.Collect = "IndentSno"
  loc_1481066: If (CInt(arg_1C) = 1) Then
  loc_148106C:   var_A8 = CVar(arg_14) 'Double
  loc_148107A:   var_88.Collect = "IssQty"
  loc_1481082: Else
  loc_14810A1:   var_C0 = CVar(Me.Recordset15.Fields.Item("IssQty")) 'Address
  loc_14810AF:   var_88.Collect = "IssQty"
  loc_14810BA: End If
  loc_14810D9: var_C0 = CVar(Me.Recordset15.Fields.Item("IssueUnit")) 'Address
  loc_14810E7: var_88.Collect = "IssueUnit"
  loc_1481111: var_C0 = CVar(Me.Recordset15.Fields.Item("LogSite_Code")) 'Address
  loc_148111F: var_88.Collect = "LogSite_Code"
  loc_1481149: var_C0 = CVar(Me.Recordset15.Fields.Item("ShiftCode")) 'Address
  loc_1481157: var_88.Collect = "ShiftCode"
  loc_148116A: var_98 = "ChkId"
  loc_1481173: var_88.Collect = var_98
  loc_1481183: var_88.Update var_98, CVar(arg_24)
  loc_148118A: Set var_88 = Nothing 
  loc_148118E: Exit Sub
End Sub

Public Sub Proc_79_32_153218C
  'Data Table: 4439A4
  Dim var_E0 As String
  Dim unk_4439E2 As Connection15
  Dim var_D4 As Recordset15
  Dim var_104 As Fields15
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_D8 As Recordset15
  Dim var_170 As Fields15
  Dim var_1A8 As Variant
  Dim var_A0 As Long
  Dim var_9A As Integer
  Dim var_100 As Variant
  Dim var_90 As Recordset15
  Dim var_88 As Recordset15
  Dim var_8C As Recordset15
  Dim var_D0 As Double
  Dim var_A8 As Double
  Dim var_B8 As Double
  Dim var_B0 As Double
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_16C As Variant
  loc_1531228: unk_4439E2.Execute "Select * from ItemMast Where ItemType='Store' and LogSite_Code='" & MemVar_1F92078 & "'", var_100, -1
  loc_1531233: Set var_D4 = var_104
  loc_1531243: ' Referenced from: 1531457
  loc_1531252: If Not(var_D4.EOF) Then
  loc_1531291:   var_12C = "SELECT  * From Stock WHERE Vtype IN ('PBPB', 'PBPC', 'STOP','MRCH','MRCR') AND ITEM='" & var_D4.Fields.Item("Code").Value 
  loc_15312A8:   unk_4439E2.Execute CStr(var_12C & "' ORDER BY VDATE DESC"), var_16C, -1
  loc_15312B3:   Set var_D8 = var_170
  loc_15312E1:   If (var_D8.RecordCount > 0) Then
  loc_1531360:     var_1A8 = "Update ItemMast set LpurRate=" & var_D8.Fields.Item("Rate").Value & " Where Code='" & var_D4.Fields.Item("Code").Value & "' And ItemType='Store'" 
  loc_153136E:     unk_4439E2.Execute CStr(var_1A8), var_1C8, -1
  loc_1531397:   Else
  loc_15313BB:     var_104 = var_D4.Fields
  loc_15313CB:     var_100 = var_104.Item("PurchRate").Value
  loc_1531413:     var_1A8 = "Update ItemMast set LpurRate=" & var_100 & " Where Code='" & var_D4.Fields.Item("Code").Value & "' And ItemType='Store'" 
  loc_1531421:     unk_4439E2.Execute CStr(var_1A8), var_1C8, -1
  loc_1531447:   End If
  loc_153144C:   Set var_D8 = Nothing
  loc_1531452:   var_D4.MoveNext
  loc_1531457:   GoTo loc_1531243
  loc_153145A: End If
  loc_153145F: Set var_D4 = Nothing
  loc_1531467: var_A0 = 1
  loc_153146C: var_9A = 1
  loc_1531493: unk_4439E2.Execute "Delete from mCurStk where VType In ('STOP','PBPB','RQR','MRCR') And logsite_code='" & MemVar_1F92078 & "'", var_100, -1
  loc_15314C9: unk_4439E2.Execute "Delete from mCurStk where logsite_code='" & MemVar_1F92078 & "'", var_100, -1
  loc_15314DF: Set var_90 = New 
  loc_15314EA: Me.Recordset15.CursorLocation = 3
  loc_1531514: var_100 = CVar("SELECT * FROM mCurStk where logsite_code='" & MemVar_1F92078 & "'") 'String
  loc_153151B: var_90.Open var_100, CVar(MemVar_1F92044), 2
  loc_1531541: var_E0 = "Select S.* from stock S left join voucher_type VT ON (S.Vtype=VT.V_Type and S.Site_Code=VT.Site_Code) where Ncat in ('MRE','PBR','PBC','STOP','KSREC','KMREC','RQI')and GodownCode='" & MemVar_1F92078 & "PURC' Order By S.Item,S.Vdate,S.Vtype,S.Vno"
  loc_153154A: unk_4439E2.Execute var_E0, var_100, -1
  loc_1531555: Set var_88 = var_104
  loc_1531580: var_E0 = "Select S.* from stock S left join voucher_type VT ON (S.Vtype=VT.V_Type and S.Site_Code=Vt.Site_Code) where Ncat in ('RQR','KSISS','KMISS','PRR','PRC') AND GODOWNCODE='" & MemVar_1F92078 & "PURC' Order By S.Item,S.Vdate,S.Vtype,S.Vno"
  loc_1531589: unk_4439E2.Execute var_E0, var_100, -1
  loc_1531594: Set var_8C = var_104
  loc_15315B8: If (var_88.RecordCount > 0) Then
  loc_15315BE:   var_88.MoveFirst
  loc_15315C3: End If
  loc_15315D7: If (var_8C.RecordCount > 0) Then
  loc_15315DD:   var_8C.MoveFirst
  loc_15315E2:   ' Referenced from: 1532144
  loc_15315E2: End If
  loc_1531600: If Not((var_88.EOF And var_8C.EOF)) Then
  loc_1531606:   var_D0 = var_B8
  loc_153161A:   If (var_88.EOF = 0) Then
  loc_1531648:     var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1531680:     var_A8 = CSng(var_88.Fields.Item("RecdQty").Value)
  loc_15316B8:     var_B8 = CSng(var_88.Fields.Item("Rate").Value)
  loc_15316C5:   End If
  loc_15316D6:   If (var_8C.EOF = 0) Then
  loc_1531704:     var_98 = CStr(var_8C.Fields.Item("Item").Value)
  loc_153173C:     var_B0 = CSng(var_8C.Fields.Item("IssQty").Value)
  loc_1531749:     ' Referenced from: 153202C
  loc_1531749:     ' Referenced from: 1531F76
  loc_1531749:     ' Referenced from: 1531EE7
  loc_1531749:     ' Referenced from: 1531E87
  loc_1531749:     ' Referenced from: 1531CF0
  loc_1531749:     ' Referenced from: 1531C16
  loc_1531749:     ' Referenced from: 1531B54
  loc_1531749:   End If
  loc_153176C:   If ((var_88.EOF = 0) And (var_8C.EOF = 0)) Then
  loc_153176F:     ' Referenced from: 15318B9
  loc_15317F2:     If CBool((CVar(var_94) = var_88.Fields.Item("Item").Value) And (CVar(var_B8) = var_88.Fields.Item("Rate").Value)) Then
  loc_1531834:       var_C0 = (var_C0 + CSng(var_88.Fields.Item("RecdQty").Value))
  loc_1531859:       var_100 = var_88.Fields.Item("Rate").Value
  loc_153187F:       Call Proc_79_31_1481190(var_90)
  loc_1531891:       var_88.MoveNext
  loc_153189F:       var_A0 = (var_A0 + 1)
  loc_15318B3:       If (var_88.EOF = &HFF) Then
  loc_15318B6:         GoTo loc_15318BC
  loc_15318B9:       End If
  loc_15318B9:       GoTo loc_153176F
  loc_15318BC:       ' Referenced from: 15318B6
  loc_15318BC:     End If
  loc_15318BF:   Else
  loc_15318E2:     If ((var_88.EOF = 0) And (var_8C.EOF = &HFF)) Then
  loc_15318E5:       ' Referenced from:   153199C
  loc_15318F6:       If (var_88.EOF = 0) Then
  loc_1531924:         var_A8 = CSng(var_88.Fields.Item("RecdQty").Value)
  loc_1531953:         var_100 = var_88.Fields.Item("Rate").Value
  loc_1531979:         Call Proc_79_31_1481190(var_90)
  loc_153198B:         var_88.MoveNext
  loc_1531999:         var_A0 = (var_A0 + 1)
  loc_153199C:         GoTo loc_15318E5
  loc_153199F:       End If
  loc_153199F:       GoTo loc_1532147
  loc_15319A5:     Else
  loc_15319C8:       If ((var_88.EOF = &HFF) And (var_8C.EOF = 0)) Then
  loc_15319CE:         var_8C.MoveNext
  loc_15319D3:         ' Referenced from:     1531A86
  loc_15319E4:         If (var_8C.EOF = 0) Then
  loc_1531A09:           var_100 = var_8C.Fields.Item("IssQty").Value
  loc_1531A30:           var_12C = var_8C.Fields.Item("Rate").Value
  loc_1531A5B:           Call Proc_79_31_1481190(var_90)
  loc_1531A75:           var_8C.MoveNext
  loc_1531A83:           var_A0 = (var_A0 + 1)
  loc_1531A86:           GoTo loc_15319D3
  loc_1531A89:         End If
  loc_1531A89:         GoTo loc_1532147
  loc_1531A8F:       Else
  loc_1531AB2:         If ((var_88.EOF = &HFF) And (var_8C.EOF = &HFF)) Then
  loc_1531AB5:           GoTo loc_1532147
  loc_1531AB8:         End If
  loc_1531AB8:       End If
  loc_1531AB8:     End If
  loc_1531AB8:   End If
  loc_1531AF5:   If (CVar(var_94) > var_8C.Fields.Item("Item").Value) Then
  loc_1531AFF:     If (var_C8 > CDbl(0)) Then
  loc_1531B1C:       Call Proc_79_31_1481190(var_90)
  loc_1531B2A:       var_A0 = (var_A0 + 1)
  loc_1531B30:       var_C8 = CDbl(0)
  loc_1531B35:       var_9A = 1
  loc_1531B3B:       var_8C.MoveNext
  loc_1531B51:       If (var_8C.EOF = &HFF) Then
  loc_1531B54:         GoTo loc_1531749
  loc_1531B57:         ' Referenced from: 1531C19
  loc_1531B57:       End If
  loc_1531B57:     End If
  loc_1531B94:     If (CVar(var_94) > var_8C.Fields.Item("Item").Value) Then
  loc_1531BB9:       var_100 = var_8C.Fields.Item("IssQty").Value
  loc_1531BDF:       Call Proc_79_31_1481190(var_90)
  loc_1531BF1:       var_8C.MoveNext
  loc_1531BFF:       var_A0 = (var_A0 + 1)
  loc_1531C13:       If (var_8C.EOF = &HFF) Then
  loc_1531C16:         GoTo loc_1531749
  loc_1531C19:       End If
  loc_1531C19:       GoTo loc_1531B57
  loc_1531C1C:     End If
  loc_1531C1F:     var_C8 = CDbl(0)
  loc_1531C22:   End If
  loc_1531C71:   var_16C = (CVar(var_94) = var_8C.Fields.Item("Item").Value) And (var_C8 > CDbl(0)) And (var_C0 > CDbl(0))
  loc_1531C87:   If CBool(var_16C) Then
  loc_1531C91:     If (var_C0 >= var_C8) Then
  loc_1531CAE:       Call Proc_79_31_1481190(var_90)
  loc_1531CBA:       var_C0 = (var_C0 - var_C8)
  loc_1531CBF:       var_9A = 1
  loc_1531CC5:       var_C8 = CDbl(0)
  loc_1531CCB:       var_8C.MoveNext
  loc_1531CD9:       var_A0 = (var_A0 + 1)
  loc_1531CED:       If (var_8C.EOF = &HFF) Then
  loc_1531CF0:         GoTo loc_1531749
  loc_1531CF3:       End If
  loc_1531CF6:     Else
  loc_1531D10:       Call Proc_79_31_1481190(var_90)
  loc_1531D1C:       var_C8 = (var_C8 - var_C0)
  loc_1531D28:       var_A0 = (var_A0 + 1)
  loc_1531D31:       var_9A = (var_9A + 1)
  loc_1531D37:       var_C0 = CDbl(0)
  loc_1531D3A:       ' Referenced from:   1531E8A
  loc_1531D3A:     End If
  loc_1531D3A:   End If
  loc_1531DBD:   If CBool((CVar(var_94) = var_8C.Fields.Item("Item").Value) And (CVar(var_C0) >= var_8C.Fields.Item("IssQty").Value)) Then
  loc_1531DF1:     var_12C = (CVar(var_C0) - var_8C.Fields.Item("IssQty").Value)
  loc_1531DF6:     var_C0 = CSng(var_12C)
  loc_1531E05:     var_9A = 1
  loc_1531E2A:     var_100 = var_8C.Fields.Item("IssQty").Value
  loc_1531E50:     Call Proc_79_31_1481190(var_90)
  loc_1531E62:     var_8C.MoveNext
  loc_1531E70:     var_A0 = (var_A0 + 1)
  loc_1531E84:     If (var_8C.EOF = &HFF) Then
  loc_1531E87:       GoTo loc_1531749
  loc_1531E8A:     End If
  loc_1531E8A:     GoTo loc_1531D3A
  loc_1531E8D:   End If
  loc_1531ECA:   If (CVar(var_94) < var_8C.Fields.Item("Item").Value) Then
  loc_1531ED0:     var_C0 = CDbl(0)
  loc_1531EE4:     If (var_88.EOF = &HFF) Then
  loc_1531EE7:       GoTo loc_1531749
  loc_1531EEA:     End If
  loc_1531F15:     var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1531F22:     ' Referenced from: 1532067
  loc_1531F5F:     If (CVar(var_94) < var_8C.Fields.Item("Item").Value) Then
  loc_1531F73:       If (var_88.EOF = &HFF) Then
  loc_1531F76:         GoTo loc_1531749
  loc_1531F79:       End If
  loc_1531F9B:       var_100 = var_88.Fields.Item("RecdQty").Value
  loc_1531FC2:       var_12C = var_88.Fields.Item("Rate").Value
  loc_1531FED:       Call Proc_79_31_1481190(var_90)
  loc_1532007:       var_88.MoveNext
  loc_1532015:       var_A0 = (var_A0 + 1)
  loc_1532029:       If (var_88.EOF = &HFF) Then
  loc_153202C:         GoTo loc_1531749
  loc_153202F:       End If
  loc_153205A:       var_94 = CStr(var_88.Fields.Item("Item").Value)
  loc_1532067:       GoTo loc_1531F22
  loc_153206A:     End If
  loc_153206D:     var_C8 = CDbl(0)
  loc_1532070:   End If
  loc_15320B0:   var_14C = (CVar(var_94) = var_8C.Fields.Item("Item").Value) And (var_C0 > CDbl(0))
  loc_15320C4:   If CBool(var_14C) Then
  loc_15320E1:     Call Proc_79_31_1481190(var_90)
  loc_1532117:     var_12C = (var_8C.Fields.Item("IssQty").Value - CVar(var_C0))
  loc_153211C:     var_C8 = CSng(var_12C)
  loc_1532132:     var_A0 = (var_A0 + 1)
  loc_153213B:     var_9A = (var_9A + 1)
  loc_1532141:     var_C0 = CDbl(0)
  loc_1532144:   End If
  loc_1532144:   GoTo loc_15315E2
  loc_1532147:   ' Referenced from: 1531AB5
  loc_1532147:   ' Referenced from: 1531A89
  loc_1532147:   ' Referenced from: 153199F
  loc_1532147: End If
  loc_153214C: Set var_90 = Nothing
  loc_1532154: Set var_88 = Nothing
  loc_153215C: Set var_8C = Nothing
  loc_1532178: MsgBox("FIFO Stock Evaluation Process Completed", &H40, var_12C, var_14C, var_16C)
  loc_1532188: Exit Sub
End Sub

Public Sub Proc_79_33_FA0134
  'Data Table: 4439A4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_F9FFC2: Me.FGrid.Left = CVar(CDbl(&HF))
  loc_F9FFDD: Me.FGrid.Top = CVar(CDbl(1330))
  loc_F9FFE9: Set var_AC = Me.FGrid
  loc_FA0000: global_80 = CStr(CLng(var_AC.BackColor))
  loc_FA0016: var_AC.Cols = 5
  loc_FA001B: var_94 = 0
  loc_FA0027: var_D0 = CVar(CLng(0)) 'Long
  loc_FA002C: var_F0 = "Bill_No"
  loc_FA0035: LateIdCallSt
  loc_FA0040: var_94 = CVar(CLng(0)) 'Long
  loc_FA004B: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA0052: LateIdCallSt
  loc_FA005D: var_94 = CVar(CLng(0)) 'Long
  loc_FA0062: var_D0 = &H3E8
  loc_FA006E: LateIdCallSt
  loc_FA0076: var_94 = 0
  loc_FA0082: var_D0 = CVar(CLng(1)) 'Long
  loc_FA0087: var_F0 = "Settle_Date"
  loc_FA0090: LateIdCallSt
  loc_FA009B: var_94 = CVar(CLng(1)) 'Long
  loc_FA00A6: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA00AD: LateIdCallSt
  loc_FA00B8: var_94 = CVar(CLng(1)) 'Long
  loc_FA00BD: var_D0 = &H5DC
  loc_FA00C9: LateIdCallSt
  loc_FA00D1: var_94 = 0
  loc_FA00DD: var_D0 = CVar(CLng(2)) 'Long
  loc_FA00E2: var_F0 = "Folio_No"
  loc_FA00EB: LateIdCallSt
  loc_FA00F6: var_94 = CVar(CLng(2)) 'Long
  loc_FA0101: var_D0 = CVar(CInt(1)) 'Integer
  loc_FA0108: LateIdCallSt
  loc_FA0113: var_94 = CVar(CLng(2)) 'Long
  loc_FA0118: var_D0 = &H3E8
  loc_FA0124: LateIdCallSt
  loc_FA012E: Set var_AC = Nothing 
  loc_FA0132: Exit Sub
End Sub
