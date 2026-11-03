VERSION 5.00
Begin VB.Form HallAcPostChrg
  Caption = "A/C Posting"
  BackColor = &HDECCBE&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6375
  ClientHeight = 3165
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 2
    Left = 2850
    Top = 1050
    Width = 1425
    Height = 255
    Enabled = 0   'False
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
    Index = 1
    Left = 6435
    Top = 45
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 5
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
    Left = 2850
    Top = 780
    Width = 1425
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
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
  Begin CommandButton Cmd
    Caption = "Exit"
    Index = 0
    BackColor = &HFF8080&
    Left = 3945
    Top = 2220
    Width = 1545
    Height = 510
    TabIndex = 2
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin CommandButton Cmd
    Caption = "Night Audit"
    Index = 1
    BackColor = &HFF8080&
    Left = 840
    Top = 2235
    Width = 1545
    Height = 510
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Advance Deposite Entry"
    MaskColor = &HFFC0C0&
    Style = 1
  End
  Begin TopCtrl TopCtrl1
    Left = -105
    Top = -45
    Width = 8880
    Height = 375
    Visible = 0   'False
    TabIndex = 4
  End
  Begin Label LblName
    Caption = "To Date"
    Index = 0
    ForeColor = &H0&
    Left = 1590
    Top = 1050
    Width = 735
    Height = 240
    Enabled = 0   'False
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
  Begin Label lblDisplay
    Caption = "."
    Left = 195
    Top = 1515
    Width = 5940
    Height = 285
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape2
    BackColor = &HFAC0B6&
    Left = 90
    Top = 2175
    Width = 6120
    Height = 645
    BackStyle = 1 'Opaque
  End
  Begin Shape Shape1
    BackColor = &HFFC0C0&
    Left = 90
    Top = 480
    Width = 6120
    Height = 2550
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 2
    ForeColor = &H0&
    Left = 1590
    Top = 780
    Width = 945
    Height = 240
    Enabled = 0   'False
    TabIndex = 3
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

Attribute VB_Name = "HallAcPostChrg"

Private MasterFormExit As Integer

Private Sub Cmd_Click(Index As Integer) 'F914A0
  'Data Table: 428A48
  Dim var_9A As Integer
  Dim var_A0 As Variant
  Dim unk_428A50 As Connection15
  Dim var_C4 As TextBox
  Dim var_D0 As TextBox
  Dim var_C0 As Variant
  Dim var_C8 As String
  loc_F91347: var_9A = Index
  loc_F91350: If (var_9A = 0) Then
  loc_F91360:   Me.Global.Unload Me
  loc_F9136B: Else
  loc_F91371:   If (var_9A = 1) Then
  loc_F91381:     Me.lblDisplay.Caption = "A/C Posting Started..."
  loc_F9138D:     Set var_A0 = Me.lblDisplay
  loc_F91393:     var_A0.Refresh
  loc_F913B1:     unk_428A50.Execute "Select PostingType from Enviro", var_C0, -1
  loc_F913BC:     Set var_88 = var_A0
  loc_F913D1:     Set var_A0 = Me.Txt
  loc_F913D7:     Call 0.Method_Cmd_Click0 (0, var_C4, var_C8)
  loc_F913DF:     var_A0 = var_C4.Text
  loc_F913F8:     Set var_CC = Me.Txt
  loc_F913FE:     Call 0.Method_Cmd_Click0 (2, var_D0, var_D4)
  loc_F91406:     var_90 = var_D0.Text
  loc_F91422:     For var_E4 = var_9A To CDate(var_D4):   CDate(var_C8) = var_E4 'Double
  loc_F91446:       Me.lblDisplay.Caption = CStr("A/C Posting For Date " & CDate(var_90))
  loc_F9145E:       Me.lblDisplay.Refresh
  loc_F91469:       Proc_96_22_1EB8174(var_90)
  loc_F91471:     Next var_E4 'Double
  loc_F91483:     Me.lblDisplay.Caption = "A/C Posting Completed."
  loc_F91495:     Me.lblDisplay.Refresh
  loc_F9149D:   End If
  loc_F9149D: End If
  loc_F9149D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'F31864
  'Data Table: 428A48
  Dim var_A4 As TextBox
  Dim unk_428A50 As Connection15
  loc_F31760: On Error Goto loc_F31811
  loc_F31779: Set var_A0 = Me.Txt
  loc_F3177F: Call 0.Method_TopCtrl1_UnknownEvent_130 (CInt(0), var_A4)
  loc_F31787: var_A8 = var_A4.Text
  loc_F3179F: var_D8 = DateAdd("d", CDbl(1), CDate(CDate(var_A8)))
  loc_F317BA: If CBool(CDate(MemVar_1F920EC) <> var_D8) Then
  loc_F317D6:   MsgBox("Invalid Date Contact to your Administrator", 0, var_D8, var_F8, var_128)
  loc_F317E6:   Exit Sub
  loc_F317E7: End If
  loc_F317F0: unk_428A50.BeginTrans var_12C
  loc_F317F9: var_86 = CByte(1) 'Byte
  loc_F31803: unk_428A50.CommitTrans
  loc_F3180C: var_86 = CByte(0) 'Byte
  loc_F31810: Exit Sub
  loc_F31811: ' Referenced from: F31760
  loc_F3181A: If (CInt(var_86) = 1) Then
  loc_F31823:   unk_428A50.RollbackTrans
  loc_F31828: End If
  loc_F31830: Set var_A0 = Err()
  loc_F31836: Call 0.Method_arg_2C (var_A8)
  loc_F3184F: MsgBox(CVar(var_A8), &H10, var_D8, var_F8, var_128)
  loc_F31862: Exit Sub
End Sub

Private Sub Form_Load() 'EBD034
  'Data Table: 428A48
  Dim var_90 As TextBox
  loc_EBCF94: On Error Goto loc_EBD02E
  loc_EBCFAF: Proc_6_23_DFBA28(Me, 3600)
  loc_EBCFBE: Call 0.Method_arg_74 (CDbl(0))
  loc_EBCFCA: Call 0.Method_arg_7C (CDbl(0))
  loc_EBCFE2: Set var_88 = Me.Txt
  loc_EBCFE8: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_EBCFF0: var_90.Text = CStr(MemVar_1F920EC)
  loc_EBD010: Set var_88 = Me.Txt
  loc_EBD016: Call 0.Method_Form_Load0 (2, var_90)
  loc_EBD01E: var_90.Text = CStr(MemVar_1F920EC)
  loc_EBD02D: Exit Sub
  loc_EBD02E: ' Referenced from: EBCF94
  loc_EBD02E: Proc_6_60_E62BC4(6450)
  loc_EBD033: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02300
  'Data Table: 428A48
  loc_E022F9: MasterFormExit = 0
  loc_E022FC: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E6A060
  'Data Table: 428A48
  loc_E6A01C: Set var_88 = Me.TopCtrl1
  loc_E6A022: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_E6A050: If CBool(( <> "Browse") And (MasterFormExit = 0)) Then
  loc_E6A058:   Call Form_Unload(&HFF)
  loc_E6A05D: End If
  loc_E6A05D: Exit Sub
End Sub

Private Sub Form_Activate() 'E503BC
  'Data Table: 428A48
  loc_E50390: On Error Goto loc_E503B6
  loc_E50397: Set var_8C = Me.TopCtrl1
  loc_E5039D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030010()
  loc_E503B2: If (CLng(CInt()) = &H2D) Then
  loc_E503B5: End If
  loc_E503B5: Exit Sub
  loc_E503B6: ' Referenced from: E50390
  loc_E503B6: Proc_6_60_E62BC4()
  loc_E503BB: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24A9C
  'Data Table: 428A48
  loc_E24A81: If (MasterFormExit = &HFF) Then
  loc_E24A91:   Me.Global.Unload Me
  loc_E24A99: End If
  loc_E24A99: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5F538
  'Data Table: 428A48
  loc_E5F4EC: On Error Goto loc_E5F52F
  loc_E5F4F9: If (CLng(KeyCode) = &H1B) Then
  loc_E5F509:   Me.Global.Unload Me
  loc_E5F511:   Exit Sub
  loc_E5F512: End If
  loc_E5F526: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E5F52E: Exit Sub
  loc_E5F52F: ' Referenced from: E5F4EC
  loc_E5F52F: Proc_6_60_E62BC4(Shift)
  loc_E5F534: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'ECBE4C
  'Data Table: 428A48
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECBDB2: Set var_88 = Me.Txt
  loc_ECBDB8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECBDC6: Proc_6_74_E226B0(var_8C)
  loc_ECBDE1: Set var_88 = Me.Txt
  loc_ECBDE7: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECBDEF: var_8C.SelStart = 0
  loc_ECBE08: Set var_88 = Me.Txt
  loc_ECBE0E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECBE29: Set var_90 = Me.Txt
  loc_ECBE2F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECBE37: var_98.SelLength = Len(var_8C.Text)
  loc_ECBE4A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E502EC
  'Data Table: 428A48
  loc_E502CA: Set var_88 = Me.Txt
  loc_E502D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E502DE: Proc_6_73_E22704(var_8C)
  loc_E502EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E9F880
  'Data Table: 428A48
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_E9F81E: If (Cancel = CInt(0)) Then
  loc_E9F82E:   Set var_90 = Me.Txt
  loc_E9F834:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_E9F85A:   Set var_A0 = Me.Txt
  loc_E9F860:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_E9F868:   var_A4.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_E9F87F: End If
  loc_E9F87F: Exit Sub
End Sub

Public Function MasterFormExitGet() '428F78
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '428F87
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '428F96
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '428FA5
  mVType = Value
End Sub

Public Function VnoRCGet() '428FB4
  VnoRCGet = VnoRC
End Function

Public Sub VnoRCPut(Value) '428FC3
  VnoRC = Value
End Sub

Public Function VnoRTGet() '428FD2
  VnoRTGet = VnoRT
End Function

Public Sub VnoRTPut(Value) '428FE1
  VnoRT = Value
End Sub

Public Function vPrefixGet() '428FF0
  vPrefixGet = vPrefix
End Function

Public Sub vPrefixPut(Value) '428FFF
  vPrefix = Value
End Sub

Public Function VprefixRCGet() '42900E
  VprefixRCGet = VprefixRC
End Function

Public Sub VprefixRCPut(Value) '42901D
  VprefixRC = Value
End Sub

Public Function VprefixRTGet() '42902C
  VprefixRTGet = VprefixRT
End Function

Public Sub VprefixRTPut(Value) '42903B
  VprefixRT = Value
End Sub

Public Function DocIDGet() '42904A
  DocIDGet = DocID
End Function

Public Sub DocIDPut(Value) '429059
  DocID = Value
End Sub

Public Sub Proc_141_27_11B3EE8(arg_C) '11B3EE8
  'Data Table: 428A48
  Dim var_8C As Recordset15
  loc_11B3AA1: Set var_8C = arg_C 
  loc_11B3AC9: var_8C.Fields.Append "DocId", &H81, &H15
  loc_11B3AF5: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11B3B21: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_11B3B4D: var_8C.Fields.Append "V_PREFIX", &H81, 5
  loc_11B3B79: var_8C.Fields.Append "SiteCode", &H81, 2
  loc_11B3BA5: var_8C.Fields.Append "V_NO", 3, &HB
  loc_11B3BD1: var_8C.Fields.Append "GuestProf", &H81, 8
  loc_11B3BFD: var_8C.Fields.Append "Comp_Code", &H81, 8
  loc_11B3C29: var_8C.Fields.Append "RoomChargeAc", &H81, 8
  loc_11B3C55: var_8C.Fields.Append "RoomTaxAc", &H81, 8
  loc_11B3C81: var_8C.Fields.Append "PayCode", &H81, 5
  loc_11B3CAD: var_8C.Fields.Append "RoomCat", &H81, 5
  loc_11B3CD9: var_8C.Fields.Append "RoomType", &H81, 5
  loc_11B3D05: var_8C.Fields.Append "TaxStru", &H81, 5
  loc_11B3D31: var_8C.Fields.Append "RoomNo", &H81, 5
  loc_11B3D5D: var_8C.Fields.Append "RateCode", &H81, 1
  loc_11B3D89: var_8C.Fields.Append "RoomRate", 5, &H13
  loc_11B3DB5: var_8C.Fields.Append "DR", 5, &H13
  loc_11B3DE1: var_8C.Fields.Append "CR", 5, &H13
  loc_11B3E0D: var_8C.Fields.Append "Tip", 5, &H13
  loc_11B3E39: var_8C.Fields.Append "BillAmount", 5, &H13
  loc_11B3E65: var_8C.Fields.Append "FolioNo", 3, &HB
  loc_11B3E91: var_8C.Fields.Append "Particulars", &H81, &H64
  loc_11B3EA1: var_8C.CursorType = 3
  loc_11B3EAE: var_8C.LockType = 3
  loc_11B3ECD: var_8C.Open var_A0, var_B0, -1
  loc_11B3ED4: Set var_8C = Nothing 
  loc_11B3EDB: Set var_88 = arg_C 
  loc_11B3EDF: Proc_141_27_11B3EE8 = -1
End Sub
