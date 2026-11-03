VERSION 5.00
Begin VB.Form frmMessage
  Caption = "User Information"
  BackColor = &HCEE0C2&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  BorderStyle = 0 'None
  Icon = "frmMessage.frx":0
  LinkTopic = "Form4"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = -270
  ClientTop = -1320
  ClientWidth = 9945
  ClientHeight = 1425
  WhatsThisButton = -1  'True
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin BtnEnh lblOK
    Left = 3525
    Top = 930
    Width = 1620
    Height = 480
    TabIndex = 0
  End
  Begin BtnEnh BtnEnh1
    Left = 0
    Top = 0
    Width = 9960
    Height = 1440
    TabIndex = 1
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

Attribute VB_Name = "frmMessage"


Private Sub lblOK_UnknownEvent_9 'E005F0
  'Data Table: 421230
  loc_E005EA: Call 0.Method_arg_2B4 ()
  loc_E005EF: Exit Sub
End Sub

Private Sub Form_Load() 'EF58C4
  'Data Table: 421230
  loc_EF5800: On Error Goto loc_EF5878
  loc_EF580A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EF5817: Call 0.Method_MeC (CDbl(1905))
  loc_EF5824: Call 0.Method_Me4 (CDbl(10035))
  loc_EF5831: Call 0.Method_arg_7C (CDbl(6000))
  loc_EF583E: Call 0.Method_arg_74 (CDbl(2600))
  loc_EF584F: Set var_A8 = Me.BtnEnh1
  loc_EF5855: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_EF5869: Set var_A8 = Me.BtnEnh1
  loc_EF586F: Call {33AD4F6A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_EF5877: Exit Sub
  loc_EF5878: ' Referenced from: EF5800
  loc_EF5880: Set var_A8 = Err()
  loc_EF5886: Call 0.Method_arg_2C (var_AC)
  loc_EF5891: Call 0.Method_arg_50 (var_B0)
  loc_EF58AD: MsgBox(CVar(var_AC), &H40, CVar(var_B0), var_E0, var_F0)
  loc_EF58C0: Exit Sub
End Sub

Private Sub Form_Activate() 'E08A00
  'Data Table: 421230
  loc_E089F7: Proc_96_21_E57C50(CDbl(1))
  loc_E089FC: Exit Sub
End Sub
