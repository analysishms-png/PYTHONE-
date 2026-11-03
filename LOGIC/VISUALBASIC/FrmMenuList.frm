VERSION 5.00
Begin VB.Form FrmMenuList
  Caption = "Main Menu . . ."
  BackColor = &H808080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 5865
  ClientHeight = 5730
  Begin CommandButton Command3
    Caption = "Select &All"
    Left = 870
    Top = 4920
    Width = 1335
    Height = 360
    TabIndex = 3
  End
  Begin CommandButton Command2
    Caption = "E&xit"
    Left = 3570
    Top = 4920
    Width = 1440
    Height = 360
    TabIndex = 2
  End
  Begin CommandButton Command1
    Caption = "Execute"
    Left = 2205
    Top = 4920
    Width = 1380
    Height = 360
    TabIndex = 1
  End
  Begin ListBox List1
    ForeColor = &HFF0000&
    Left = 855
    Top = 600
    Width = 4155
    Height = 4110
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
End

Attribute VB_Name = "FrmMenuList"


Private Sub Command1_Click() 'F94388
  'Data Table: 41F11C
  Dim var_9C As ListBox
  Dim var_8C As Menu
  loc_F94243: var_9E = Me.List1.ListCount
  loc_F94252: For var_A8 = CDbl(0) To CDbl((var_9E - 1)): var_94 = var_A8 'Single
  loc_F94266:   Me.List1.ListIndex = CInt(var_94)
  loc_F942A8:   For Each var_88 In MemVar_1F92244
  loc_F942B5:     If TypeOf var_88 Is Command1_Click Then
  loc_F942BE:       Set var_8C = var_88
  loc_F942FB:       If (Ucase(CVar(var_8C.Caption)) = Ucase(CStr(LTrim(CVar(Me.List1.Text))))) Then
  loc_F9430F:         CInt(var_94) = Me.List1.Selected
  loc_F9431D:         If (var_9E = &HFF) Then
  loc_F94325:           var_8C.Enabled = True
  loc_F9432F:           var_8C.Visible = True
  loc_F94337:         Else
  loc_F9433C:           var_8C.Visible = False
  loc_F94341:         End If
  loc_F94341:       End If
  loc_F94341:     End If
  loc_F94344:   Next
  loc_F9434D: Next var_A8 'Single
  loc_F9435D: Set var_9C = MemVar_1F92244.mnuMdI
  loc_F94363: MDIForm1.mnuMdI.Enabled = True
  loc_F94376: Set var_9C = MemVar_1F92244.smnuMdI
  loc_F9437C: MDIForm1.smnuMdI.Enabled = True
  loc_F94384: Exit Sub
End Sub

Private Sub Form_Load() 'E1914C
  'Data Table: 41F11C
  loc_E19138: Call 0.Method_Me4 (CDbl(6000))
  loc_E19145: Call 0.Method_MeC (CDbl(6200))
  loc_E1914A: Exit Sub
End Sub

Private Sub Form_Activate() 'E190FC
  'Data Table: 41F11C
  loc_E190E8: Set var_88 = Me.List1
  loc_E190F1: Proc_156_9_F1160C(MemVar_1F92194)
  loc_E190F9: Exit Sub
End Sub

Private Sub Command3_Click() 'E723C0
  'Data Table: 41F11C
  loc_E72382: For var_98 = CDbl(0) To CDbl((Me.List1.ListCount - 1)): var_88 = var_98 'Single
  loc_E72396:   Me.List1.ListIndex = CInt(var_88)
  loc_E723AE:   Me.List1.Selected = CInt(var_88)
  loc_E723B9: Next var_98 'Single
  loc_E723BE: Exit Sub
End Sub

Private Sub Command2_Click() 'E190B0
  'Data Table: 41F11C
  loc_E190A5: Me.Global.Unload Me
  loc_E190AD: Exit Sub
End Sub
