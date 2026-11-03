VERSION 5.00
Begin VB.Form frmmessageKey
  Caption = "Key Massage"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form2"
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 11700
  ClientHeight = 1440
  ShowInTaskbar = 0   'False
  StartUpPosition = 3 'Windows Default
  Begin BtnEnh lblOK
    Left = 4515
    Top = 945
    Width = 1620
    Height = 480
    TabIndex = 1
  End
  Begin BtnEnh BtnEnh1
    Left = 15
    Top = 0
    Width = 11670
    Height = 1440
    TabIndex = 0
  End
End

Attribute VB_Name = "frmmessageKey"


Private Sub lblOK_UnknownEvent_9 'E01CE8
  'Data Table: 41D704
  loc_E01CE2: Call 0.Method_arg_2B4 ()
  loc_E01CE7: Exit Sub
End Sub

Private Sub Form_Load() 'EF24B4
  'Data Table: 41D704
  loc_EF23F0: On Error Goto loc_EF2468
  loc_EF23FA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EF2407: Call 0.Method_MeC (CDbl(1440))
  loc_EF2414: Call 0.Method_Me4 (CDbl(11700))
  loc_EF2421: Call 0.Method_arg_7C (CDbl(6000))
  loc_EF242E: Call 0.Method_arg_74 (CDbl(2500))
  loc_EF243F: Set var_A8 = Me.BtnEnh1
  loc_EF2445: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl(0)))
  loc_EF2459: Set var_A8 = Me.BtnEnh1
  loc_EF245F: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl(0)))
  loc_EF2467: Exit Sub
  loc_EF2468: ' Referenced from: EF23F0
  loc_EF2470: Set var_A8 = Err()
  loc_EF2476: Call 0.Method_arg_2C (var_AC)
  loc_EF2481: Call 0.Method_arg_50 (var_B0)
  loc_EF249D: MsgBox(CVar(var_AC), &H40, CVar(var_B0), var_E0, var_F0)
  loc_EF24B0: Exit Sub
End Sub

Private Sub Form_Activate() 'E06C00
  'Data Table: 41D704
  loc_E06BF7: Proc_96_21_E57C50(CDbl(1))
  loc_E06BFC: Exit Sub
  loc_E06BFD: Set var_AC = 
End Sub
