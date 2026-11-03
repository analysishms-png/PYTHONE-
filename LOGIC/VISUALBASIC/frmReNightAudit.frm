VERSION 5.00
Begin VB.Form frmReNightAudit
  Caption = "Reverse Night Audit"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmReNightAudit.frx":0
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin TextBox Txt
    Index = 1
    Left = 1005
    Top = 8595
    Width = 1425
    Height = 255
    Visible = 0   'False
    TabIndex = 11
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
    Left = 3525
    Top = 5520
    Width = 3225
    Height = 255
    Visible = 0   'False
    TabIndex = 10
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
    Left = 3525
    Top = 5790
    Width = 3225
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
  Begin TextBox txtStatus
    Left = 465
    Top = 4710
    Width = 3480
    Height = 345
    Visible = 0   'False
    TabIndex = 7
    Appearance = 0 'Flat
  End
  Begin TextBox txtHost
    Left = 930
    Top = 2235
    Width = 2040
    Height = 345
    Visible = 0   'False
    TabIndex = 6
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &H8000000E&
    ForeColor = &HC00000&
    Left = 5100
    Top = 1440
    Width = 2325
    Height = 450
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 11
    BeginProperty Font
      Name = "Arial Black"
      Size = 15.75
      Charset = 0
      Weight = 900
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2850
    Width = 4680
    Height = 240
    Visible = 0   'False
    TabIndex = 0
  End
  Begin BtnEnh CmdExit
    Left = 6315
    Top = 2955
    Width = 2715
    Height = 1020
    TabIndex = 2
  End
  Begin BtnEnh Cmd
    Left = 3285
    Top = 2895
    Width = 2715
    Height = 1020
    TabIndex = 3
  End
  Begin DataGrid DGNewHelp
    Left = 3660
    Top = 7335
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGOldHelp
    Left = 3360
    Top = 6975
    Width = 4230
    Height = 2220
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin MSFlexGrid FGPoint
    Left = 2115
    Top = 5325
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Label lblDisplay
    Caption = "."
    ForeColor = &HFF&
    Left = 2430
    Top = 2115
    Width = 6285
    Height = 285
    TabIndex = 5
    Alignment = 2 'Center
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

Attribute VB_Name = "frmReNightAudit"

Private global_52 As Integer

Private Sub CmdExit_UnknownEvent_9 'E16344
  'Data Table: 439980
  loc_E16339: Me.Global.Unload Me
  loc_E16341: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'DFD8D4
  'Data Table: 439980
  loc_DFD8D0: Exit Sub
End Sub

Private Sub Form_Load() 'E8A614
  'Data Table: 439980
  Dim var_8C As TextBox
  loc_E8A5AB: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E8A5B6: Print Me, "For Date :"
  loc_E8A5C9: Call 0.Method_arg_6C (RGB(250, 0, 0))
  loc_E8A5D4: Print Me, "For Date :"
  loc_E8A5DA: On Error Goto loc_E8A60D
  loc_E8A5F0: Set var_88 = Me.Txt
  loc_E8A5F6: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_E8A5FE: var_8C.Text = CStr(MemVar_1F920EC)
  loc_E8A60D: ' Referenced from: E8A5DA
  loc_E8A60D: Proc_6_60_E62BC4()
  loc_E8A612: Exit Sub
End Sub

Private Sub Form_Resize() 'E74F18
  'Data Table: 439980
  loc_E74EC2: Call 0.Method_arg_50 (var_88)
  loc_E74ED4: Me.LblFormCaption.Caption = var_88
  loc_E74EED: Me.LblFormCaption.Left = CDbl(0)
  loc_E74EFB: Call 0.Method_arg_100 (var_90)
  loc_E74F0D: Me.LblFormCaption.Width = var_90
  loc_E74F15: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02198
  'Data Table: 439980
  loc_E02191: global_52 = 0
  loc_E02194: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5ABEC
  'Data Table: 439980
  loc_E5ABB4: Set var_88 = Me.TopCtrl1
  loc_E5ABBA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5ABDD: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5ABE5:   Call Form_Unload(&HFF)
  loc_E5ABEA: End If
  loc_E5ABEA: Exit Sub
End Sub

Private Sub Form_Activate() 'DFD908
  'Data Table: 439980
  loc_DFD904: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E245CC
  'Data Table: 439980
  loc_E245B1: If (global_52 = &HFF) Then
  loc_E245C1:   Me.Global.Unload Me
  loc_E245C9: End If
  loc_E245C9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'DFD79C
  'Data Table: 439980
  loc_DFD798: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EC9BDC
  'Data Table: 439980
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_EC9B42: Set var_88 = Me.Txt
  loc_EC9B48: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EC9B56: Proc_6_74_E226B0(var_8C)
  loc_EC9B71: Set var_88 = Me.Txt
  loc_EC9B77: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC9B7F: var_8C.SelStart = 0
  loc_EC9B98: Set var_88 = Me.Txt
  loc_EC9B9E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_EC9BB9: Set var_90 = Me.Txt
  loc_EC9BBF: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_EC9BC7: var_98.SelLength = Len(var_8C.Text)
  loc_EC9BDA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'DFB444
  'Data Table: 439980
  loc_DFB440: Exit Sub
loc_DFB441: End Sub
End Sub

Private Sub Txt_LostFocus() 'DFD0E8
  'Data Table: 439980
  Dim arg_7FFF As Double
  loc_DFD0E4: Exit Sub
  loc_DFD0E5: arg_7FFF = 
End Sub

Private Sub Cmd_UnknownEvent_9 'F6A4E8
  'Data Table: 439980
  Dim var_88 As String
  Dim var_8C As String
  Dim var_A0 As Variant
  Dim unk_439993 As Connection15
  loc_F6A3D8: var_8C = "This Process is very critical" & vbCrLf & "Make sure that all the billings are stopped and no transactions have been made during Night Audit process."
  loc_F6A408: If (MsgBox(CVar(var_8C & vbCrLf & "Continue with Night Audit Process ?"), &H14, var_C0, var_E0, var_100) <> 6) Then
  loc_F6A40B:   Exit Sub
  loc_F6A40C: End If
  loc_F6A42A: Me.lblDisplay.Caption = CStr("Reverse Night Audit for Date :" & CDate(MemVar_1F920EC))
  loc_F6A442: Me.lblDisplay.Refresh
  loc_F6A459: var_A0 = "dd/MMM"
  loc_F6A481: If CBool(Format(MemVar_1F920EC, var_A0) <> "01/Apr") Then
  loc_F6A498:   var_88 = "Update enviro set ncur=dateadd(D,-1,ncur) where Logsite_code='" & MemVar_1F92078
  loc_F6A4A8:   unk_439993.Execute CStr("Reverse Night Audit for Date :" & CDate(MemVar_1F920EC)) & "'", var_A0, -1
  loc_F6A4BA:   End
  loc_F6A4BF: Else
  loc_F6A4CC:   Me.lblDisplay.Caption = "Reverse Night Audit Not Go Beyond F/A Year.."
  loc_F6A4DE:   Me.lblDisplay.Refresh
  loc_F6A4E6: End If
  loc_F6A4E6: Exit Sub
End Sub

Public Function global_52Get() '43A298
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '43A2A7
  global_52 = Value
End Sub

Public Sub Proc_248_15_E16474
  'Data Table: 439980
  loc_E16469: Me.Global.Unload Me
  loc_E16471: Exit Sub
  loc_E16472: Set Me00 = 
End Sub
