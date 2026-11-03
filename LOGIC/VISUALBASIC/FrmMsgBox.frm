VERSION 5.00
Begin VB.Form FrmMsgBox
  Caption = "Message Box"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 5430
  ClientHeight = 2475
  LockControls = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton cmdzz
    Caption = "No"
    Index = 0
    Left = 2805
    Top = 1425
    Width = 950
    Height = 950
    Visible = 0   'False
    TabIndex = 2
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
  Begin CommandButton cmdzz
    Caption = "Yes"
    Index = 1
    Left = 1635
    Top = 1425
    Width = 950
    Height = 950
    Visible = 0   'False
    TabIndex = 1
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
  Begin BtnEnh Cmd
    Index = 1
    Left = 1605
    Top = 1395
    Width = 1005
    Height = 1005
    TabIndex = 3
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 2775
    Top = 1395
    Width = 1005
    Height = 1005
    TabIndex = 4
  End
  Begin Label LblMsg
    Left = 105
    Top = 105
    Width = 5265
    Height = 1110
    TabIndex = 0
    WordWrap = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmMsgBox"


Public Sub Cmd_UnknownEvent_9(Index As Integer) 'E7D140
  'Data Table: 41E688
  Dim var_86 As Integer
  loc_E7D0DB: var_86 = Index
  loc_E7D0E4: If (var_86 = 0) Then
  loc_E7D0FB:   ParentForm.MsgBoxTouch = 7
  loc_E7D105: Else
  loc_E7D10B:   If (var_86 = 1) Then
  loc_E7D122:     ParentForm.MsgBoxTouch = 6
  loc_E7D129:   End If
  loc_E7D129: End If
  loc_E7D136: Me.Global.Unload Me
  loc_E7D13E: Exit Sub
  loc_E7D13F: var_86 = 
End Sub

Public Property Let ParentForm(vNewValue) 'E0D1EC
  'Data Table: 41E688
  loc_E0D1E5: Set global_52 = vNewValue
  loc_E0D1E9: Exit Sub
End Sub

Public Property Get ParentForm() 'E0D15C
  'Data Table: 41E688
  loc_E0D150: Set var_88 = global_52 
  loc_E0D154: ParentForm = 
End Sub
