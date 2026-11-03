VERSION 5.00
Begin VB.Form repTouchDate
  Caption = "Select Report Date"
  BackColor = &HFFFFFF&
  ForeColor = &H0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClipControls = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 4545
  ClientHeight = 3210
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin BtnEnh cmdDayUP
    Left = 300
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 1
  End
  Begin TextBox txtDate
    ForeColor = &HFF0000&
    Left = 330
    Top = 270
    Width = 3915
    Height = 525
    TabIndex = 0
    Alignment = 2 'Center
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
  Begin BtnEnh cmdMonthUp
    Left = 1170
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 2
  End
  Begin BtnEnh cmdYearUp
    Left = 2040
    Top = 1005
    Width = 810
    Height = 945
    TabIndex = 3
  End
  Begin BtnEnh cmdDayDown
    Left = 300
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 4
  End
  Begin BtnEnh cmdMonthDown
    Left = 1170
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 5
  End
  Begin BtnEnh cmdYearDown
    Left = 2040
    Top = 2025
    Width = 810
    Height = 945
    TabIndex = 6
  End
  Begin BtnEnh cmdCancel
    Left = 3015
    Top = 1020
    Width = 1170
    Height = 945
    TabIndex = 7
  End
  Begin BtnEnh cmdExit
    Left = 3015
    Top = 2025
    Width = 1170
    Height = 945
    TabIndex = 8
  End
  Begin Shape Shape1
    Left = 255
    Top = 180
    Width = 4080
    Height = 705
    Visible = 0   'False
    BorderWidth = 2
  End
End

Attribute VB_Name = "repTouchDate"


Private Sub cmdDayDown_UnknownEvent_9 'E60B2C
  'Data Table: 42B994
  loc_E60AEC: On Error Goto loc_E60B29
  loc_E60B17: Me.txtDate.Text = CStr(DateAdd("d", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E60B29: ' Referenced from: E60AEC
  loc_E60B29: Exit Sub
End Sub

Private Sub cmdYearDown_UnknownEvent_9 'E602AC
  'Data Table: 42B994
  loc_E6026C: On Error Goto loc_E602A9
  loc_E60297: Me.txtDate.Text = CStr(DateAdd("yyyy", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E602A9: ' Referenced from: E6026C
  loc_E602A9: Exit Sub
End Sub

Private Sub cmdMonthDown_UnknownEvent_9 'E5F02C
  'Data Table: 42B994
  loc_E5EFEC: On Error Goto loc_E5F029
  loc_E5F017: Me.txtDate.Text = CStr(DateAdd("m", CDbl(&HFF), CVar(Me.txtDate)))
  loc_E5F029: ' Referenced from: E5EFEC
  loc_E5F029: Exit Sub
  loc_E5F02A: Set arg_1C6C = 
End Sub

Private Sub cmdCancel_UnknownEvent_9 'E1851C
  'Data Table: 42B994
  loc_E18511: Me.Global.Unload Me
  loc_E18519: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E640E8
  'Data Table: 42B994
  Dim var_A4 As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  loc_E640AA: var_A4 = 1
  loc_E640B4: var_C4 = CVar(Me.txtDate) 'Address
  loc_E640BF: var_E4 = unk_42B99B.FGrid
  loc_E640C4: VarLateMemCallSt
  loc_E640DE: Me.Global.Unload Me
  loc_E640E6: Exit Sub
End Sub

Private Sub cmdDayUP_UnknownEvent_9 'E61E2C
  'Data Table: 42B994
  loc_E61DEC: On Error Goto loc_E61E29
  loc_E61E17: Me.txtDate.Text = CStr(DateAdd("d", CDbl(1), CVar(Me.txtDate)))
  loc_E61E29: ' Referenced from: E61DEC
  loc_E61E29: Exit Sub
End Sub

Private Sub cmdYearUp_UnknownEvent_9 'E620AC
  'Data Table: 42B994
  loc_E6206C: On Error Goto loc_E620A9
  loc_E62097: Me.txtDate.Text = CStr(DateAdd("yyyy", CDbl(1), CVar(Me.txtDate)))
  loc_E620A9: ' Referenced from: E6206C
  loc_E620A9: Exit Sub
End Sub

Private Sub cmdMonthUp_UnknownEvent_9 'E6192C
  'Data Table: 42B994
  loc_E618EC: On Error Goto loc_E61929
  loc_E61917: Me.txtDate.Text = CStr(DateAdd("m", CDbl(1), CVar(Me.txtDate)))
  loc_E61929: ' Referenced from: E618EC
  loc_E61929: Exit Sub
  loc_E6192A: Set arg_1C6C = 
End Sub

Private Sub Form_Load() 'E188B0
  'Data Table: 42B994
  loc_E1889B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E188A7: Call 0.Method_arg_7C (CDbl(0))
  loc_E188AC: Exit Sub
End Sub

Public Function global_52Get() '42C0AC
  BVM60.DLL.GetMem1
End Function

Public Function global_52Get() '42C0BB
  BVM60.DLL.PutMem1
End Function

Public Property Let PDate(vNewValue) 'E132F4
  'Data Table: 42B994
  loc_E132EC: global_56 = vNewValue
  loc_E132F0: Exit Sub
End Sub

Public Property Get PDate() 'E130FC
  'Data Table: 42B994
  loc_E130F0: var_88 = global_56
  loc_E130F3: PDate = 
End Sub
