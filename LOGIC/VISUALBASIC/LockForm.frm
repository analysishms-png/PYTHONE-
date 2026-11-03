VERSION 5.00
Begin VB.Form LockForm
  Caption = "Form1"
  BackColor = &HFF0000&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 13230
  ClientHeight = 9540
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin Label Label1
    Caption = "# DATAMAN COMPUTER SYSTEMS (P) LTD.  #"
    ForeColor = &HFFFF00&
    Left = 8625
    Top = 9075
    Width = 4335
    Height = 240
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Comic Sans MS"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Image Image2
    Picture = "LockForm.frx":0
    Left = 4290
    Top = 4350
    Width = 945
    Height = 780
    Stretch = -1  'True
  End
  Begin Label Label2
    Caption = "Please Wait Night Audit Is in Progress . . ."
    BackColor = &HFF0000&
    ForeColor = &HFF&
    Left = 5715
    Top = 4305
    Width = 4065
    Height = 975
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "LockForm"


Private Sub Form_Load() 'E92544
  'Data Table: 41DD14
  loc_E924D3: Call 0.Method_arg_2B0 (var_94)
  loc_E924DE: Call 0.Method_arg_58 (var_A8)
  loc_E924EF: var_AC = Me.Global.Screen
  loc_E92508: var_B4 = Me.Global.Screen
  loc_E92534: SetWindowPos(var_A8, -1, 0, 0, CLng(Screen.Width), CLng(Screen.Height), &H240)
  loc_E92541: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E212FC
  'Data Table: 41DD14
  loc_E212EF: SystemParametersInfo(&H61, 0, Null, 1)
  loc_E212F8: Exit Sub
  loc_E212F9: StAryRecCopy
End Sub
