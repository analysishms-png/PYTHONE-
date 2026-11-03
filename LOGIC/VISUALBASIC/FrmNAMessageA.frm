VERSION 5.00
Begin VB.Form FrmNAMessageA
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
      Picture = "FrmNAMessageA.frx":0
      Left = 405
      Top = 315
      Width = 510
      Height = 495
      Stretch = -1  'True
    End
    Begin Label lblOK
      Caption = "&OK"
      BackColor = &HE0E0E0&
      ForeColor = &H0&
      Left = 1470
      Top = 1200
      Width = 1365
      Height = 240
      TabIndex = 5
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
      Top = 1185
      Width = 1410
      Height = 285
      Shape = 4
      BorderWidth = 2
    End
    Begin Label Label2
      BackColor = &HBFACF2&
      ForeColor = &HFF0000&
      Left = 1125
      Top = 780
      Width = 45
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
      Caption = "Night Audit Process Completed  Successfully."
      BackColor = &HBFACF2&
      Left = 1125
      Top = 300
      Width = 3135
      Height = 435
      TabIndex = 3
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Shape Shape1
      Left = 90
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

Attribute VB_Name = "FrmNAMessageA"

Private global_52 As Long

Private Sub Form_Load() 'ECBC74
  'Data Table: 427B6C
  Dim var_88 As Long
  loc_ECBBD8: On Error Goto loc_ECBC28
  loc_ECBBFE: var_88 = CreateRoundRectRgn(7, &H17, &H12C, &H8A, &H28, &H23)
  loc_ECBC08: global_52 = var_88
  loc_ECBC11: Call 0.Method_arg_58 (var_88, global_52)
  loc_ECBC21: SetWindowRgn(var_88, global_52, &HFF)
  loc_ECBC27: Exit Sub
  loc_ECBC28: ' Referenced from: ECBBD8
  loc_ECBC30: Set var_8C = Err()
  loc_ECBC36: Call 0.Method_arg_2C (var_90)
  loc_ECBC41: Call 0.Method_arg_50 (var_94)
  loc_ECBC5D: MsgBox(CVar(var_90), &H40, CVar(var_94), var_D4, var_F4)
  loc_ECBC70: Exit Sub
End Sub

Private Sub lblOK_Click() 'E406EC
  'Data Table: 427B6C
  Dim var_88 As Variant
  loc_E406C5: Set var_88 = MemVar_1F92244.sckControlPanel
  loc_E406E3: Me.MDIForm1.sckControlPanel._RemoteHost.Unload Me
  loc_E406EB: Exit Sub
End Sub
