VERSION 5.00
Begin VB.Form FrmCalender
  Caption = "Calender"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form2"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 8130
  ClientHeight = 6000
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin Calendar Calendar1
    Left = 0
    Top = 0
    Width = 8130
    Height = 6000
    TabIndex = 0
  End
End

Attribute VB_Name = "FrmCalender"


Private Sub Form_Load() 'E29214
  'Data Table: 41BE98
  loc_E29200: Set var_A8 = Me.Calendar1
  loc_E29206: Call {8C7458F4-35EB-4A82-8411B8FF5D5D57C6}.DispID_C(Date)
  loc_E29211: Exit Sub
End Sub
