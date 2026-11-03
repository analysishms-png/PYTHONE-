VERSION 5.00
Begin VB.Form FrmNAMessageB
  Caption = "User Information"
  BackColor = &HCEE0C2&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  DrawWidth = 2
  'Icon = n/a
  LinkTopic = "Form4"
  KeyPreview = -1  'True
  ClientLeft = -255
  ClientTop = -1305
  ClientWidth = 4515
  ClientHeight = 1740
  WhatsThisButton = -1  'True
  WhatsThisHelp = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin Frame Panelgrid
    BackColor = &HBBA8AF&
    Left = 15
    Top = 0
    Width = 4440
    Height = 1725
    TabIndex = 2
    BeginProperty Font
      Name = "Times New Roman"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin Image Image1
      Picture = "FrmNAMessageB.frx":0
      Left = 225
      Top = 270
      Width = 510
      Height = 495
      Stretch = -1  'True
    End
    Begin Label lblOK
      Caption = "&OK"
      BackColor = &H80FFFF&
      ForeColor = &H0&
      Left = 1470
      Top = 1125
      Width = 1365
      Height = 240
      TabIndex = 6
      Alignment = 2 'Center
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape3
      Left = 1455
      Top = 1110
      Width = 1410
      Height = 285
      Shape = 4
      BorderWidth = 2
    End
    Begin Label Label3
      Caption = "Transactions !"
      BackColor = &HBFACF2&
      ForeColor = &HFF&
      Left = 2955
      Top = 405
      Width = 1320
      Height = 240
      TabIndex = 5
      AutoSize = -1  'True
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
    Begin Label Label2
      Caption = "Press Ok to Continue Night Audit Process . . ."
      BackColor = &HBFACF2&
      Left = 375
      Top = 825
      Width = 3930
      Height = 240
      TabIndex = 4
      AutoSize = -1  'True
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
    Begin Label Label1
      Caption = "Please Save All  Running"
      BackColor = &HBFACF2&
      Left = 720
      Top = 405
      Width = 2190
      Height = 240
      TabIndex = 3
      AutoSize = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape1
      Left = 105
      Top = 60
      Width = 4275
      Height = 1605
      Shape = 4
      BorderStyle = 0 'Transparent
      FillColor = &HBFACF2&
      FillStyle = 0
    End
    Begin Shape Shape2
      BorderColor = &H800000&
      Left = 135
      Top = 105
      Width = 4185
      Height = 1500
      Shape = 4
      BorderWidth = 15
    End
  End
  Begin TextBox txt
    Index = 15
    Left = 11880
    Top = 1215
    Width = 1605
    Height = 300
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 15
    Appearance = 0 'Flat
  End
  Begin Label Label7
    Caption = "Date"
    ForeColor = &H80&
    Left = 11340
    Top = 1275
    Width = 420
    Height = 195
    Visible = 0   'False
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Menu POPUP
    Visible = 0   'False
    Caption = ""
    Begin Menu add
      Caption = "&Add"
    End
    Begin Menu edit
      Caption = "&Edit"
    End
    Begin Menu del
      Caption = "&Delete"
    End
    Begin Menu DASH1
      Caption = "-"
    End
    Begin Menu MNUSAVE
      Caption = "&Save"
    End
    Begin Menu MNUCANCEL
      Caption = "&Cancel"
    End
    Begin Menu exit
      Caption = "E&xit"
    End
  End
End

Attribute VB_Name = "FrmNAMessageB"

Private global_52 As Long

Private Sub Form_Load() 'ECAA54
  'Data Table: 42A160
  Dim var_88 As Long
  Dim var_9C As Long
  loc_ECA9B8: On Error Goto loc_ECAA08
  loc_ECA9DE: var_88 = CreateRoundRectRgn(7, &H17, &H12C, &H8A, &H28, &H23)
  loc_ECA9E8: global_52 = var_88
  loc_ECA9F1: Call 0.Method_arg_58 (var_88, global_52)
  loc_ECAA01: SetWindowRgn(var_88, global_52, &HFF)
  loc_ECAA07: Exit Sub
  loc_ECAA08: ' Referenced from: ECA9B8
  loc_ECAA10: Set var_8C = Err()
  loc_ECAA16: Call 0.Method_arg_2C (var_90)
  loc_ECAA21: Call 0.Method_arg_50 (var_94)
  loc_ECAA3D: MsgBox(CVar(var_90), &H40, CVar(var_94), var_D4, var_F4)
  loc_ECAA50: Exit Sub
  loc_ECAA51: var_9C = var_88
End Sub

Private Sub lblOK_Click() 'E192C4
  'Data Table: 42A160
  loc_E192B9: Me.Global.Unload Me
  loc_E192C1: Exit Sub
End Sub
