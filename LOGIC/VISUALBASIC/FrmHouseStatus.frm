VERSION 5.00
Begin VB.Form FrmHouseStatus
  Caption = "Property Status"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form2"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 4680
  ClientHeight = 3090
  Begin Frame Frame10
    Caption = "Frame4"
    BackColor = &HC0FFC0&
    Left = 0
    Top = 2565
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    Begin BtnEnh LblExpArv
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 31
    End
    Begin Label CmdExpArv
      Caption = "."
      ForeColor = &HFF0000&
      Left = 2040
      Top = 15
      Width = 12225
      Height = 285
      TabIndex = 32
      BackStyle = 0 'Transparent
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
  End
  Begin Frame Frame9
    Caption = "Frame3"
    BackColor = &HC0E0FF&
    Left = 0
    Top = 3255
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
    Begin BtnEnh LblExpOut
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 28
    End
    Begin BtnEnh CmdExpOut
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 29
    End
  End
  Begin Timer Timer1
    Interval = 2500
    Left = 17805
    Top = 285
  End
  Begin Frame FrOutlet
    Caption = "Frame9"
    BackColor = &HFF8080&
    Left = 0
    Top = 4920
    Width = 17115
    Height = 3015
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Begin BtnEnh CmdPos
      Index = 0
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 25
    End
    Begin BtnEnh CmdTB
      Index = 0
      Left = 2025
      Top = 0
      Width = 885
      Height = 345
      TabIndex = 26
    End
  End
  Begin Frame Frame8
    Caption = "Frame8"
    BackColor = &H80C0FF&
    Left = 0
    Top = 2220
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    Begin BtnEnh CmdRChk
      Index = 0
      Left = 2010
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 22
    End
    Begin BtnEnh LblChk
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 23
    End
  End
  Begin Frame Frame7
    Caption = "Frame7"
    BackColor = &H8080FF&
    Left = -15
    Top = 4635
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    Begin BtnEnh CmdRVd
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 19
    End
    Begin BtnEnh LblVD
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 20
    End
  End
  Begin Frame Frame6
    Caption = "Frame6"
    BackColor = &HC0C0FF&
    Left = -15
    Top = 4290
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    Begin BtnEnh CmdRod
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 16
    End
    Begin BtnEnh LblRod
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 17
    End
  End
  Begin Frame Frame5
    Caption = "Frame5"
    BackColor = &HC0FFFF&
    Left = -15
    Top = 3945
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Begin BtnEnh LblRoo
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 13
    End
    Begin BtnEnh CmdRoo
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 14
    End
  End
  Begin Frame Frame4
    Caption = "Frame4"
    BackColor = &HC0FFC0&
    Left = 0
    Top = 0
    Width = 17115
    Height = 692
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Begin BtnEnh LblBnq
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 10
    End
    Begin BtnEnh CmdPT
      Index = 0
      Left = 2025
      Top = 0
      Width = 6165
      Height = 345
      TabIndex = 11
    End
  End
  Begin Frame Frame3
    Caption = "Frame3"
    BackColor = &HFFFFC0&
    Left = 0
    Top = 3600
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Begin BtnEnh LblPP
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 7
    End
    Begin BtnEnh CmdPP
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 8
    End
  End
  Begin Frame Frame2
    BackColor = &HFFC0C0&
    Left = 0
    Top = 2910
    Width = 17115
    Height = 345
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin BtnEnh LblCOR
      Left = 0
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 4
    End
    Begin BtnEnh CmdRoomCOR
      Index = 0
      Left = 2025
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 5
    End
  End
  Begin Frame Frame1
    BackColor = &HFFC0FF&
    Left = 0
    Top = 705
    Width = 17115
    Height = 1515
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Begin BtnEnh LBLOR
      Left = 15
      Top = 0
      Width = 2025
      Height = 345
      TabIndex = 2
    End
    Begin BtnEnh CmdRoomSt
      Index = 0
      Left = 2040
      Top = 0
      Width = 735
      Height = 345
      TabIndex = 1
    End
  End
  Begin BtnEnh CmdPosStatus
    Index = 0
    Left = 0
    Top = 7920
    Width = 1185
    Height = 585
    TabIndex = 33
  End
End

Attribute VB_Name = "FrmHouseStatus"


Private Sub Timer1_Timer() '11F2334
  'Data Table: 4F16A8
  Dim var_EC As Single
  Dim var_F0 As Single
  Dim var_F4 As Single
  Dim var_E8 As Label
  Dim arg_500 As Double
  loc_11F1E93: Call 0.Method_arg_2A0 ()
  loc_11F1EE3: Me.CmdExpArv.ForeColor = RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))
  loc_11F1F3E: Set var_E8 = Me.LblExpArv
  loc_11F1F44: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F1F9F: Set var_E8 = Me.LblBnq
  loc_11F1FA5: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2000: Set var_E8 = Me.LblChk
  loc_11F2006: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2061: Set var_E8 = Me.LblCOR
  loc_11F2067: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F20C2: Set var_E8 = Me.LblExpOut
  loc_11F20C8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2123: Set var_E8 = Me.LBLOR
  loc_11F2129: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2184: Set var_E8 = Me.LblPP
  loc_11F218A: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F21E5: Set var_E8 = Me.LblRod
  loc_11F21EB: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F2246: Set var_E8 = Me.LblRoo
  loc_11F224C: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F22A7: Set var_E8 = Me.LblVD
  loc_11F22AD: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(RGB(CInt((CDbl(255) * Rnd(var_A4))), CInt((CDbl(255) * Rnd(var_C4))), CInt((CDbl(255) * Rnd(var_E4))))))
  loc_11F22C6: var_EC = Rnd(var_A4)
  loc_11F22D1: var_F0 = Rnd(var_C4)
  loc_11F22DC: var_F4 = Rnd(var_E4)
  loc_11F230D: Set var_E8 = Me.CmdPos
  loc_11F2313: Call 0.Method_Timer1_Timer0 (0, var_118, CVar(RGB(CInt((CDbl(255) * var_EC)), CInt((CDbl(255) * var_F0)), CInt((CDbl(255) * var_F4)))), var_F4, var_F0, var_EC, var_F4)
  loc_11F231B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(var_F0)
  loc_11F2330: Exit Sub
  loc_11F2331: arg_500 = var_EC
End Sub

Private Sub CmdPosStatus_UnknownEvent_9 'E12964
  'Data Table: 4F16A8
  loc_E1295D: Call New RsStatusScreen.Show
  loc_E12963: Exit Sub
End Sub

Private Sub Form_Load() '10CD6F4
  'Data Table: 4F16A8
  Dim var_88 As Variant
  loc_10CD3EA: If (MemVar_1F920B8 = 0) Then
  loc_10CD3FB:   Set var_88 = Me.CmdPosStatus
  loc_10CD401:   Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD409:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(False)
  loc_10CD415: End If
  loc_10CD41C: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10CD42F: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_10CD445: Me.Frame4.BackColor = CLng(MemVar_1F921B0)
  loc_10CD45B: Me.Frame1.BackColor = CLng(MemVar_1F921B0)
  loc_10CD471: Me.Frame2.BackColor = CLng(MemVar_1F921B0)
  loc_10CD487: Me.Frame3.BackColor = CLng(MemVar_1F921B0)
  loc_10CD49D: Me.Frame5.BackColor = CLng(MemVar_1F921B0)
  loc_10CD4B3: Me.Frame6.BackColor = CLng(MemVar_1F921B0)
  loc_10CD4C9: Me.Frame7.BackColor = CLng(MemVar_1F921B0)
  loc_10CD4DF: Me.Frame8.BackColor = CLng(MemVar_1F921B0)
  loc_10CD4F5: Me.Frame9.BackColor = CLng(MemVar_1F921B0)
  loc_10CD50B: Me.Frame10.BackColor = CLng(MemVar_1F921B0)
  loc_10CD521: Me.FrOutlet.BackColor = CLng(MemVar_1F921B0)
  loc_10CD539: Set var_88 = Me.CmdRoomSt
  loc_10CD53F: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD547: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD563: Set var_88 = Me.CmdRod
  loc_10CD569: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD571: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD58D: Set var_88 = Me.CmdPP
  loc_10CD593: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD59B: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD5B7: Set var_88 = Me.CmdRChk
  loc_10CD5BD: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD5C5: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD5E1: Set var_88 = Me.CmdRVd
  loc_10CD5E7: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD5EF: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD60B: Set var_88 = Me.CmdRoo
  loc_10CD611: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD619: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD635: Set var_88 = Me.CmdRoomCOR
  loc_10CD63B: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD643: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD65F: Set var_88 = Me.CmdTB
  loc_10CD665: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD66D: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD689: Set var_88 = Me.CmdExpOut
  loc_10CD68F: Call 0.Method_Form_Load0 (0, var_8C)
  loc_10CD697: Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_2D(CVar(MemVar_1F921B0))
  loc_10CD6B1: Me.CmdExpArv.BackColor = CLng(MemVar_1F921B0)
  loc_10CD6B9: Call Proc_243_16_12438BC()
  loc_10CD6BE: Call Proc_243_14_11BACB0()
  loc_10CD6C3: Call Proc_243_7_11C5D50()
  loc_10CD6C8: Call Proc_243_11_11B7E94()
  loc_10CD6CD: Call Proc_243_12_11B1608()
  loc_10CD6D2: Call Proc_243_13_10ED748()
  loc_10CD6D7: Call Proc_243_15_119D57C()
  loc_10CD6DC: Call Proc_243_10_11C6200()
  loc_10CD6E1: Call Proc_243_9_119C40C()
  loc_10CD6E6: Call Proc_243_8_11EE83C()
  loc_10CD6EB: Call Proc_243_5_122988C()
  loc_10CD6F0: Exit Sub
End Sub

Private Sub Form_Resize() '129F4DC
  'Data Table: 4F16A8
  loc_129EEE2: Me.Frame4.Top = CDbl(0)
  loc_129EF09: Me.Frame1.Top = Me.Frame4.Height
  loc_129EF4B: Me.Frame8.Top = (Me.Frame4.Height + Me.Frame1.Height)
  loc_129EFA5: Me.Frame10.Top = ((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height)
  loc_129F017: Me.Frame2.Top = (((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame10.Height)
  loc_129F0A1: Me.Frame9.Top = ((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame10.Height)
  loc_129F143: Me.Frame3.Top = (((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_129F1FD: Me.Frame5.Top = ((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_129F2CF: Me.Frame6.Top = (((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_129F3B9: Me.Frame7.Top = ((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_129F4BB: Me.FrOutlet.Top = (((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame7.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_129F4D9: Exit Sub
End Sub

Private Sub Form_Activate() '12A0808
  'Data Table: 4F16A8
  loc_12A020E: Me.Frame4.Top = CDbl(0)
  loc_12A0235: Me.Frame1.Top = Me.Frame4.Height
  loc_12A0277: Me.Frame8.Top = (Me.Frame4.Height + Me.Frame1.Height)
  loc_12A02D1: Me.Frame10.Top = ((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height)
  loc_12A0343: Me.Frame2.Top = (((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame10.Height)
  loc_12A03CD: Me.Frame9.Top = ((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame10.Height)
  loc_12A046F: Me.Frame3.Top = (((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0529: Me.Frame5.Top = ((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A05FB: Me.Frame6.Top = (((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A06E5: Me.Frame7.Top = ((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A07E7: Me.FrOutlet.Top = (((((((((Me.Frame4.Height + Me.Frame1.Height) + Me.Frame8.Height) + Me.Frame2.Height) + Me.Frame3.Height) + Me.Frame5.Height) + Me.Frame6.Height) + Me.Frame7.Height) + Me.Frame9.Height) + Me.Frame10.Height)
  loc_12A0805: Exit Sub
End Sub

Public Sub Proc_243_5_122988C
  'Data Table: 4F16A8
  Dim unk_4F16AA As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_C8 As Field20
  Dim var_96 As Integer
  Dim var_E4 As String
  Dim var_8C As Recordset15
  loc_12293AA: unk_4F16AA.Execute "SELECT Code,Name from Depart Where OutletYN='Y' Order By Name ", var_B8, -1
  loc_12293B5: Set var_90 = var_BC
  loc_12293D2: If (var_90.RecordCount > 0) Then
  loc_12293E1:   Me.FrOutlet.Visible = True
  loc_12293E9: End If
  loc_12293EB: var_86 = 0
  loc_12293F0: var_88 = 0
  loc_12293F3: ' Referenced from: 1229877
  loc_1229402: If Not(var_90.EOF) Then
  loc_1229433:   Set var_CC = Me.CmdPos
  loc_1229439:   Call 0.Method_Proc_243_5_122988C0 (var_86, var_D0, CVar(var_90.Fields.Item("Name")))
  loc_1229441:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_88)
  loc_1229464:   var_BC = var_90.Fields
  loc_1229474:   var_B8 = var_BC.Item("Code").Value
  loc_122948C:   var_96 = &HFF
  loc_12294A3:   var_E4 = "Select DISTINCT RoomNo as Name from Kot where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='" & CStr(var_B8)
  loc_12294B3:   unk_4F16AA.Execute var_E4 & "'", var_B8, -1
  loc_12294BE:   Set var_8C = var_BC
  loc_12294CE:   ' Referenced from: 1229770
  loc_12294DD:   If Not(var_8C.EOF) Then
  loc_12294E6:     If (var_96 = &HFF) Then
  loc_12294F3:       Set var_C8 = Me.CmdPos
  loc_12294F9:       Call 0.Method_Proc_243_5_122988C0 (var_86, var_CC, var_BC)
  loc_1229501:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_96)
  loc_1229514:       Set var_D0 = Me.CmdPos
  loc_122951A:       Call 0.Method_Proc_243_5_122988C0 (var_86, var_EC)
  loc_1229522:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_122954C:       var_A8 = CVar(((Me.FrOutlet.Left + CDbl(var_B8)) + CDbl(var_FC))) 'Single
  loc_122955B:       Set var_100 = Me.CmdTB
  loc_1229561:       Call 0.Method_Proc_243_5_122988C0 (var_88, var_104)
  loc_1229569:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003("Code")
  loc_1229596:       Call 0.Method_Proc_243_5_122988C0 (var_86, var_C8)
  loc_122959E:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(Me.CmdPos)
  loc_12295B6:       Set var_CC = Me.CmdTB
  loc_12295BC:       Call 0.Method_Proc_243_5_122988C0 (var_88, var_D0)
  loc_12295C4:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_12295D9:       var_96 = 0
  loc_12295DF:     Else
  loc_12295EC:       Set var_CC = Me.CmdTB
  loc_12295F2:       Call 0.Method_Proc_243_5_122988C0 ((var_88 - 1), var_D0)
  loc_12295FA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010005(var_96)
  loc_1229610:       Set var_BC = Me.CmdTB
  loc_1229616:       Call 0.Method_Proc_243_5_122988C0 ((var_88 - 1))
  loc_122961E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(var_C8)
  loc_1229631:       var_A8 = CVar(((CDbl() + CDbl(var_FC)) + CDbl(0))) 'Single
  loc_1229640:       Set var_EC = Me.CmdTB
  loc_1229646:       Call 0.Method_Proc_243_5_122988C0 (var_88, var_100)
  loc_122964E:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010003(CVar(CDbl()))
  loc_1229676:       Set var_BC = Me.CmdTB
  loc_122967C:       Call 0.Method_Proc_243_5_122988C0 ((var_88 - 1))
  loc_1229684:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(var_C8)
  loc_122969C:       Set var_CC = Me.CmdTB
  loc_12296A2:       Call 0.Method_Proc_243_5_122988C0 (var_88, var_D0)
  loc_12296AA:       Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010004(CVar(CDbl()))
  loc_12296BD:     End If
  loc_12296D4:     var_C8 = var_8C.Fields.Item("Name")
  loc_12296EB:     Set var_CC = Me.CmdTB
  loc_12296F1:     Call 0.Method_Proc_243_5_122988C0 (var_88, var_D0)
  loc_12296F9:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar(var_C8))
  loc_1229718:     Set var_BC = Me.CmdTB
  loc_122971E:     Call 0.Method_Proc_243_5_122988C0 (var_88, var_C8)
  loc_1229726:     Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_80010007(True)
  loc_1229738:     var_88 = (var_88 + 1)
  loc_1229745:     Set var_BC = Me.CmdTB
  loc_122974B:     Call 0.Method_Proc_243_5_122988C0 (var_88, var_C8)
  loc_122975C:     Me.CmdTB.Load var_C8
  loc_122976B:     var_8C.MoveNext
  loc_1229770:     GoTo loc_12294CE
  loc_1229773:   End If
  loc_1229776:   var_90.MoveNext
  loc_1229781:   var_86 = (var_86 + 1)
  loc_1229795:   If (var_90.EOF = 0) Then
  loc_12297A2:     Set var_BC = Me.CmdPos
  loc_12297A8:     Call 0.Method_Proc_243_5_122988C0 (var_86, var_C8)
  loc_12297B9:     Me.CmdPos.Load var_C8
  loc_12297D3:     Set var_BC = Me.CmdPos
  loc_12297D9:     Call 0.Method_Proc_243_5_122988C0 (var_86, var_C8, True)
  loc_12297E1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_86)
  loc_12297FA:     Set var_CC = Me.CmdPos
  loc_1229800:     Call 0.Method_Proc_243_5_122988C0 ((var_86 - 1), var_D0)
  loc_1229808:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_88)
  loc_122981E:     Set var_BC = Me.CmdPos
  loc_1229824:     Call 0.Method_Proc_243_5_122988C0 ((var_86 - 1))
  loc_122982C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_122983F:     var_A8 = CVar(((CDbl() + CDbl(var_FC)) + CDbl(0))) 'Single
  loc_122984E:     Set var_EC = Me.CmdPos
  loc_1229854:     Call 0.Method_Proc_243_5_122988C0 (var_86, var_100)
  loc_122985C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(True)
  loc_1229877:   End If
  loc_1229877:   GoTo loc_12293F3
  loc_122987A: End If
  loc_122987F: Set var_90 = Nothing
  loc_1229887: Set var_8C = Nothing
  loc_122988A: Exit Sub
End Sub

Public Sub Proc_243_6_E7DA54(arg_C) 'E7DA54
  'Data Table: 4F16A8
  Dim var_90 As String
  Dim unk_4F16AA As Connection15
  loc_E7DA15: var_90 = "Select  DISTINCT roomno as Name from Kot where Pending='Y' and NcKot<>'Y' and Delflag='' and VoidYN='N' and restcode='" & arg_C
  loc_E7DA25: unk_4F16AA.Execute var_90 & "'", var_B4, -1
  loc_E7DA30: Set var_8C = var_B8
  loc_E7DA46: If (0 > 0) Then
  loc_E7DA49: End If
  loc_E7DA4E: Set var_8C = Nothing
  loc_E7DA51: Exit Sub
End Sub

Public Sub Proc_243_7_11C5D50
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim var_130 As Frame
  loc_11C590A: var_86 = 0
  loc_11C5928: var_C0 = CVar("Select Roomno as Name FROM RoomOcc Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And Type <>'C' AND ChkInDate=  ") 'String
  loc_11C5936: Proc_6_7_F25D88(var_B0, MemVar_1F920EC, var_C0, var_114)
  loc_11C593E: var_D0 = -1 & var_B0 
  loc_11C5955: unk_4F16AA.Execute CStr(var_D0 & "  ORDER BY RoomNo"), var_118, var_86
  loc_11C5960: Set var_8C = var_118
  loc_11C598E: If (var_8C.RecordCount > 0) Then
  loc_11C599D:   Me.Frame8.Visible = True
  loc_11C59C4:   Set var_118 = Me.LblChk
  loc_11C59CA:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar("Check In Room: " & CStr(var_8C.RecordCount)))
  loc_11C59D8:   ' Referenced from: 11C5D3A
  loc_11C59D8: End If
  loc_11C59E7: If Not(var_8C.EOF) Then
  loc_11C5A01:   var_124 = var_8C.Fields.Item("Name")
  loc_11C5A18:   Set var_128 = Me.CmdRChk
  loc_11C5A1E:   Call 0.Method_Proc_243_7_11C5D500 (var_86, var_12C)
  loc_11C5A26:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar(var_124))
  loc_11C5A3A:   var_8C.MoveNext
  loc_11C5A45:   var_86 = (var_86 + 1)
  loc_11C5A59:   If (var_8C.EOF = 0) Then
  loc_11C5A66:     Set var_118 = Me.CmdRChk
  loc_11C5A6C:     Call 0.Method_Proc_243_7_11C5D500 (var_86, var_124)
  loc_11C5A7D:     Me.CmdRChk.Load var_124
  loc_11C5A96:     Set var_128 = Me.CmdRChk
  loc_11C5A9C:     Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1), var_12C)
  loc_11C5AA4:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_11C5ACC:     Set var_118 = Me.CmdRChk
  loc_11C5AD2:     Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1))
  loc_11C5ADA:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5B02:     If (CSng((CDbl() + CDbl(var_C0))) > Me.Frame8.Width) Then
  loc_11C5B0E:       Set var_118 = Me.CmdRChk
  loc_11C5B14:       Call 0.Method_Proc_243_7_11C5D500 (0)
  loc_11C5B1C:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5B37:       Set var_128 = Me.CmdRChk
  loc_11C5B3D:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1), var_12C)
  loc_11C5B45:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C5B61:       Set var_128 = Me.CmdRChk
  loc_11C5B67:       Call 0.Method_Proc_243_7_11C5D500 (0)
  loc_11C5B6F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_12C)
  loc_11C5B81:       Set var_118 = Me.CmdRChk
  loc_11C5B87:       Call 0.Method_Proc_243_7_11C5D500 (0)
  loc_11C5B8F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5BA2:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C5BB4:       Set var_130 = Me.CmdRChk
  loc_11C5BBA:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1), var_134)
  loc_11C5BC2:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5BEA:       Set var_118 = Me.CmdRChk
  loc_11C5BF0:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1))
  loc_11C5BF8:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5C10:       Set var_128 = Me.CmdRChk
  loc_11C5C16:       Call 0.Method_Proc_243_7_11C5D500 (var_86, var_12C)
  loc_11C5C1E:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5C34:     Else
  loc_11C5C41:       Set var_128 = Me.CmdRChk
  loc_11C5C47:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1))
  loc_11C5C4F:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_12C)
  loc_11C5C65:       Set var_118 = Me.CmdRChk
  loc_11C5C6B:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1))
  loc_11C5C73:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_124)
  loc_11C5C86:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C5C95:       Set var_130 = Me.CmdRChk
  loc_11C5C9B:       Call 0.Method_Proc_243_7_11C5D500 (var_86, var_134)
  loc_11C5CA3:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11C5CCB:       Set var_118 = Me.CmdRChk
  loc_11C5CD1:       Call 0.Method_Proc_243_7_11C5D500 ((var_86 - 1))
  loc_11C5CD9:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_124)
  loc_11C5CF1:       Set var_128 = Me.CmdRChk
  loc_11C5CF7:       Call 0.Method_Proc_243_7_11C5D500 (var_86, var_12C)
  loc_11C5CFF:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11C5D12:     End If
  loc_11C5D20:     Set var_118 = Me.CmdRChk
  loc_11C5D26:     Call 0.Method_Proc_243_7_11C5D500 (var_86, var_124)
  loc_11C5D2E:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11C5D3A:   End If
  loc_11C5D3A:   GoTo loc_11C59D8
  loc_11C5D3D: End If
  loc_11C5D43: If (var_86 > 0) Then
  loc_11C5D46: End If
  loc_11C5D4B: Set var_8C = Nothing
  loc_11C5D4E: Exit Sub
End Sub

Public Sub Proc_243_8_11EE83C
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim var_94 As String
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_128 As Variant
  Dim var_C0 As Variant
  Dim var_140 As Frame
  loc_11EE3D2: var_86 = 0
  loc_11EE3F0: var_94 = "Select Roommast.code as Name FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_11EE3FE: var_9C = var_94 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_11EE40C: var_D0 = CVar(var_9C & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And ") 'String
  loc_11EE41A: Proc_6_7_F25D88(var_C0, MemVar_1F920EC, var_D0, var_124)
  loc_11EE422: var_E0 = -1 & var_C0 
  loc_11EE439: unk_4F16AA.Execute CStr(var_E0 & " between Fromdate and ToDate) And Roomstat='D' ORDER BY Roommast.Code"), var_128, var_86
  loc_11EE444: Set var_8C = var_128
  loc_11EE47A: If (var_8C.RecordCount > 0) Then
  loc_11EE489:   Me.Frame7.Visible = True
  loc_11EE4B0:   Set var_128 = Me.LblVD
  loc_11EE4B6:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("Vaicent Dirty: " & CStr(var_8C.RecordCount)))
  loc_11EE4C4:   ' Referenced from: 11EE826
  loc_11EE4C4: End If
  loc_11EE4D3: If Not(var_8C.EOF) Then
  loc_11EE4ED:   var_134 = var_8C.Fields.Item("Name")
  loc_11EE504:   Set var_138 = Me.CmdRVd
  loc_11EE50A:   Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_13C)
  loc_11EE512:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_134))
  loc_11EE526:   var_8C.MoveNext
  loc_11EE531:   var_86 = (var_86 + 1)
  loc_11EE545:   If (var_8C.EOF = 0) Then
  loc_11EE552:     Set var_128 = Me.CmdRVd
  loc_11EE558:     Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_134)
  loc_11EE569:     Me.CmdRVd.Load var_134
  loc_11EE582:     Set var_138 = Me.CmdRVd
  loc_11EE588:     Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1), var_13C)
  loc_11EE590:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11EE5B8:     Set var_128 = Me.CmdRVd
  loc_11EE5BE:     Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1))
  loc_11EE5C6:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_134)
  loc_11EE5EE:     If (CSng((CDbl() + CDbl(var_D0))) > Me.Frame7.Width) Then
  loc_11EE5FA:       Set var_128 = Me.CmdRVd
  loc_11EE600:       Call 0.Method_Proc_243_8_11EE83C0 (0)
  loc_11EE608:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_134)
  loc_11EE623:       Set var_138 = Me.CmdRVd
  loc_11EE629:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1), var_13C)
  loc_11EE631:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11EE64D:       Set var_138 = Me.CmdRVd
  loc_11EE653:       Call 0.Method_Proc_243_8_11EE83C0 (0)
  loc_11EE65B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_13C)
  loc_11EE66D:       Set var_128 = Me.CmdRVd
  loc_11EE673:       Call 0.Method_Proc_243_8_11EE83C0 (0)
  loc_11EE67B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_134)
  loc_11EE68E:       var_B0 = CVar(((CDbl() + CDbl(var_D0)) + CDbl(0))) 'Single
  loc_11EE6A0:       Set var_140 = Me.CmdRVd
  loc_11EE6A6:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1), var_144)
  loc_11EE6AE:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11EE6D6:       Set var_128 = Me.CmdRVd
  loc_11EE6DC:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1))
  loc_11EE6E4:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_134)
  loc_11EE6FC:       Set var_138 = Me.CmdRVd
  loc_11EE702:       Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_13C)
  loc_11EE70A:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11EE720:     Else
  loc_11EE72D:       Set var_138 = Me.CmdRVd
  loc_11EE733:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1))
  loc_11EE73B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_13C)
  loc_11EE751:       Set var_128 = Me.CmdRVd
  loc_11EE757:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1))
  loc_11EE75F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_134)
  loc_11EE772:       var_B0 = CVar(((CDbl() + CDbl(var_D0)) + CDbl(0))) 'Single
  loc_11EE781:       Set var_140 = Me.CmdRVd
  loc_11EE787:       Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_144)
  loc_11EE78F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11EE7B7:       Set var_128 = Me.CmdRVd
  loc_11EE7BD:       Call 0.Method_Proc_243_8_11EE83C0 ((var_86 - 1))
  loc_11EE7C5:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_134)
  loc_11EE7DD:       Set var_138 = Me.CmdRVd
  loc_11EE7E3:       Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_13C)
  loc_11EE7EB:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11EE7FE:     End If
  loc_11EE80C:     Set var_128 = Me.CmdRVd
  loc_11EE812:     Call 0.Method_Proc_243_8_11EE83C0 (var_86, var_134)
  loc_11EE81A:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11EE826:   End If
  loc_11EE826:   GoTo loc_11EE4C4
  loc_11EE829: End If
  loc_11EE82F: If (var_86 > 0) Then
  loc_11EE832: End If
  loc_11EE837: Set var_8C = Nothing
  loc_11EE83A: Exit Sub
End Sub

Public Sub Proc_243_9_119C40C
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_EC As Frame
  loc_119C00A: var_86 = 0
  loc_119C023: unk_4F16AA.Execute "SELECT Roommast.code as name from RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO' ORDER BY Roommast.Code", var_AC, -1
  loc_119C02E: Set var_8C = var_B0
  loc_119C04B: If (var_8C.RecordCount > 0) Then
  loc_119C05A:   Me.Frame6.Visible = True
  loc_119C081:   Set var_B0 = Me.LblRod
  loc_119C087:   Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_FFFFFDFA(CVar("Occupied Dirty: " & CStr(var_8C.RecordCount)))
  loc_119C095:   ' Referenced from: 119C3F7
  loc_119C095: End If
  loc_119C0A4: If Not(var_8C.EOF) Then
  loc_119C0B6:   var_B0 = var_8C.Fields
  loc_119C0BE:   var_C0 = var_B0.Item("Name")
  loc_119C0D5:   Set var_C4 = Me.CmdRod
  loc_119C0DB:   Call 0.Method_Proc_243_9_119C40C0 (var_86, var_C8, CVar(var_C0))
  loc_119C0E3:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_B0)
  loc_119C0F7:   var_8C.MoveNext
  loc_119C102:   var_86 = (var_86 + 1)
  loc_119C116:   If (var_8C.EOF = 0) Then
  loc_119C123:     Set var_B0 = Me.CmdRod
  loc_119C129:     Call 0.Method_Proc_243_9_119C40C0 (var_86, var_C0)
  loc_119C13A:     Me.CmdRod.Load var_C0
  loc_119C153:     Set var_C4 = Me.CmdRod
  loc_119C159:     Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1), var_C8)
  loc_119C161:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_119C189:     Set var_B0 = Me.CmdRod
  loc_119C18F:     Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1), var_C0)
  loc_119C197:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_119C1BF:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame6.Width) Then
  loc_119C1CB:       Set var_B0 = Me.CmdRod
  loc_119C1D1:       Call 0.Method_Proc_243_9_119C40C0 (0)
  loc_119C1D9:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119C1F4:       Set var_C4 = Me.CmdRod
  loc_119C1FA:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1), var_C8)
  loc_119C202:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119C21E:       Set var_C4 = Me.CmdRod
  loc_119C224:       Call 0.Method_Proc_243_9_119C40C0 (0)
  loc_119C22C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_C8)
  loc_119C23E:       Set var_B0 = Me.CmdRod
  loc_119C244:       Call 0.Method_Proc_243_9_119C40C0 (0)
  loc_119C24C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119C25F:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119C271:       Set var_EC = Me.CmdRod
  loc_119C277:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1), var_F0)
  loc_119C27F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119C2A7:       Set var_B0 = Me.CmdRod
  loc_119C2AD:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1))
  loc_119C2B5:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119C2CD:       Set var_C4 = Me.CmdRod
  loc_119C2D3:       Call 0.Method_Proc_243_9_119C40C0 (var_86, var_C8)
  loc_119C2DB:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119C2F1:     Else
  loc_119C2FE:       Set var_C4 = Me.CmdRod
  loc_119C304:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1))
  loc_119C30C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_C8)
  loc_119C322:       Set var_B0 = Me.CmdRod
  loc_119C328:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1))
  loc_119C330:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119C343:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119C352:       Set var_EC = Me.CmdRod
  loc_119C358:       Call 0.Method_Proc_243_9_119C40C0 (var_86, var_F0)
  loc_119C360:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119C388:       Set var_B0 = Me.CmdRod
  loc_119C38E:       Call 0.Method_Proc_243_9_119C40C0 ((var_86 - 1))
  loc_119C396:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119C3AE:       Set var_C4 = Me.CmdRod
  loc_119C3B4:       Call 0.Method_Proc_243_9_119C40C0 (var_86, var_C8)
  loc_119C3BC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119C3CF:     End If
  loc_119C3DD:     Set var_B0 = Me.CmdRod
  loc_119C3E3:     Call 0.Method_Proc_243_9_119C40C0 (var_86, var_C0)
  loc_119C3EB:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_119C3F7:   End If
  loc_119C3F7:   GoTo loc_119C095
  loc_119C3FA: End If
  loc_119C400: If (var_86 > 0) Then
  loc_119C403: End If
  loc_119C408: Set var_8C = Nothing
  loc_119C40B: Exit Sub
End Sub

Public Sub Proc_243_10_11C6200
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_118 As Variant
  Dim var_B0 As Variant
  Dim var_130 As Frame
  loc_11C5DBA: var_86 = 0
  loc_11C5DD8: var_C0 = CVar("SELECT Roomcode as name FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type ='O' And ") 'String
  loc_11C5DE6: Proc_6_7_F25D88(var_B0, MemVar_1F920EC, var_C0, var_114)
  loc_11C5DEE: var_D0 = -1 & var_B0 
  loc_11C5E05: unk_4F16AA.Execute CStr(var_D0 & " between Fromdate and ToDate"), var_118, var_86
  loc_11C5E10: Set var_8C = var_118
  loc_11C5E3E: If (var_8C.RecordCount > 0) Then
  loc_11C5E4D:   Me.Frame5.Visible = True
  loc_11C5E74:   Set var_118 = Me.LblRoo
  loc_11C5E7A:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Out of Order: " & CStr(var_8C.RecordCount)))
  loc_11C5E88:   ' Referenced from: 11C61EA
  loc_11C5E88: End If
  loc_11C5E97: If Not(var_8C.EOF) Then
  loc_11C5EB1:   var_124 = var_8C.Fields.Item("Name")
  loc_11C5EC8:   Set var_128 = Me.CmdRoo
  loc_11C5ECE:   Call 0.Method_Proc_243_10_11C62000 (var_86, var_12C)
  loc_11C5ED6:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_124))
  loc_11C5EEA:   var_8C.MoveNext
  loc_11C5EF5:   var_86 = (var_86 + 1)
  loc_11C5F09:   If (var_8C.EOF = 0) Then
  loc_11C5F16:     Set var_118 = Me.CmdRoo
  loc_11C5F1C:     Call 0.Method_Proc_243_10_11C62000 (var_86, var_124)
  loc_11C5F2D:     Me.CmdRoo.Load var_124
  loc_11C5F46:     Set var_128 = Me.CmdRoo
  loc_11C5F4C:     Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1), var_12C)
  loc_11C5F54:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11C5F7C:     Set var_118 = Me.CmdRoo
  loc_11C5F82:     Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1))
  loc_11C5F8A:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_124)
  loc_11C5FB2:     If (CSng((CDbl() + CDbl(var_C0))) > Me.Frame5.Width) Then
  loc_11C5FBE:       Set var_118 = Me.CmdRoo
  loc_11C5FC4:       Call 0.Method_Proc_243_10_11C62000 (0)
  loc_11C5FCC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_124)
  loc_11C5FE7:       Set var_128 = Me.CmdRoo
  loc_11C5FED:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1), var_12C)
  loc_11C5FF5:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11C6011:       Set var_128 = Me.CmdRoo
  loc_11C6017:       Call 0.Method_Proc_243_10_11C62000 (0)
  loc_11C601F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_12C)
  loc_11C6031:       Set var_118 = Me.CmdRoo
  loc_11C6037:       Call 0.Method_Proc_243_10_11C62000 (0)
  loc_11C603F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_124)
  loc_11C6052:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C6064:       Set var_130 = Me.CmdRoo
  loc_11C606A:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1), var_134)
  loc_11C6072:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11C609A:       Set var_118 = Me.CmdRoo
  loc_11C60A0:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1))
  loc_11C60A8:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_124)
  loc_11C60C0:       Set var_128 = Me.CmdRoo
  loc_11C60C6:       Call 0.Method_Proc_243_10_11C62000 (var_86, var_12C)
  loc_11C60CE:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11C60E4:     Else
  loc_11C60F1:       Set var_128 = Me.CmdRoo
  loc_11C60F7:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1))
  loc_11C60FF:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_12C)
  loc_11C6115:       Set var_118 = Me.CmdRoo
  loc_11C611B:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1))
  loc_11C6123:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_124)
  loc_11C6136:       var_A0 = CVar(((CDbl() + CDbl(var_C0)) + CDbl(0))) 'Single
  loc_11C6145:       Set var_130 = Me.CmdRoo
  loc_11C614B:       Call 0.Method_Proc_243_10_11C62000 (var_86, var_134)
  loc_11C6153:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11C617B:       Set var_118 = Me.CmdRoo
  loc_11C6181:       Call 0.Method_Proc_243_10_11C62000 ((var_86 - 1))
  loc_11C6189:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_124)
  loc_11C61A1:       Set var_128 = Me.CmdRoo
  loc_11C61A7:       Call 0.Method_Proc_243_10_11C62000 (var_86, var_12C)
  loc_11C61AF:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11C61C2:     End If
  loc_11C61D0:     Set var_118 = Me.CmdRoo
  loc_11C61D6:     Call 0.Method_Proc_243_10_11C62000 (var_86, var_124)
  loc_11C61DE:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11C61EA:   End If
  loc_11C61EA:   GoTo loc_11C5E88
  loc_11C61ED: End If
  loc_11C61F3: If (var_86 > 0) Then
  loc_11C61F6: End If
  loc_11C61FB: Set var_8C = Nothing
  loc_11C61FE: Exit Sub
End Sub

Public Sub Proc_243_11_11B7E94
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_114 As Variant
  Dim var_AC As Variant
  Dim var_12C As Frame
  loc_11B7A5E: var_86 = 0
  loc_11B7A7E: Proc_6_7_F25D88(var_AC, MemVar_1F920EC, "SELECT RoomNo as Name FROM RoomOcc WHERE Type ='O'and (ChkOutDate=", var_110)
  loc_11B7A86: var_CC = -1 & var_AC 
  loc_11B7A9D: unk_4F16AA.Execute CStr(var_CC & ") ORDER BY RoomNo"), var_114, var_86
  loc_11B7AA8: Set var_8C = var_114
  loc_11B7AD0: If (var_8C.RecordCount > 0) Then
  loc_11B7ADF:   Me.Frame2.Visible = True
  loc_11B7B06:   Set var_114 = Me.LblCOR
  loc_11B7B0C:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("Chkout Room: " & CStr(var_8C.RecordCount)))
  loc_11B7B1A:   ' Referenced from: 11B7E7C
  loc_11B7B1A: End If
  loc_11B7B29: If Not(var_8C.EOF) Then
  loc_11B7B43:   var_120 = var_8C.Fields.Item("Name")
  loc_11B7B5A:   Set var_124 = Me.CmdRoomCOR
  loc_11B7B60:   Call 0.Method_Proc_243_11_11B7E940 (var_86, var_128)
  loc_11B7B68:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(var_120))
  loc_11B7B7C:   var_8C.MoveNext
  loc_11B7B87:   var_86 = (var_86 + 1)
  loc_11B7B9B:   If (var_8C.EOF = 0) Then
  loc_11B7BA8:     Set var_114 = Me.CmdRoomCOR
  loc_11B7BAE:     Call 0.Method_Proc_243_11_11B7E940 (var_86, var_120)
  loc_11B7BBF:     Me.CmdRoomCOR.Load var_120
  loc_11B7BD8:     Set var_124 = Me.CmdRoomCOR
  loc_11B7BDE:     Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1), var_128)
  loc_11B7BE6:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11B7C0E:     Set var_114 = Me.CmdRoomCOR
  loc_11B7C14:     Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1))
  loc_11B7C1C:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_11B7C44:     If (CSng((CDbl() + CDbl(var_CC))) > Me.Frame2.Width) Then
  loc_11B7C50:       Set var_114 = Me.CmdRoomCOR
  loc_11B7C56:       Call 0.Method_Proc_243_11_11B7E940 (0)
  loc_11B7C5E:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_11B7C79:       Set var_124 = Me.CmdRoomCOR
  loc_11B7C7F:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1), var_128)
  loc_11B7C87:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B7CA3:       Set var_124 = Me.CmdRoomCOR
  loc_11B7CA9:       Call 0.Method_Proc_243_11_11B7E940 (0)
  loc_11B7CB1:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_128)
  loc_11B7CC3:       Set var_114 = Me.CmdRoomCOR
  loc_11B7CC9:       Call 0.Method_Proc_243_11_11B7E940 (0)
  loc_11B7CD1:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_11B7CE4:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_11B7CF6:       Set var_12C = Me.CmdRoomCOR
  loc_11B7CFC:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1), var_130)
  loc_11B7D04:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B7D2C:       Set var_114 = Me.CmdRoomCOR
  loc_11B7D32:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1))
  loc_11B7D3A:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_11B7D52:       Set var_124 = Me.CmdRoomCOR
  loc_11B7D58:       Call 0.Method_Proc_243_11_11B7E940 (var_86, var_128)
  loc_11B7D60:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B7D76:     Else
  loc_11B7D83:       Set var_124 = Me.CmdRoomCOR
  loc_11B7D89:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1))
  loc_11B7D91:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_128)
  loc_11B7DA7:       Set var_114 = Me.CmdRoomCOR
  loc_11B7DAD:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1))
  loc_11B7DB5:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_11B7DC8:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_11B7DD7:       Set var_12C = Me.CmdRoomCOR
  loc_11B7DDD:       Call 0.Method_Proc_243_11_11B7E940 (var_86, var_130)
  loc_11B7DE5:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11B7E0D:       Set var_114 = Me.CmdRoomCOR
  loc_11B7E13:       Call 0.Method_Proc_243_11_11B7E940 ((var_86 - 1))
  loc_11B7E1B:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_11B7E33:       Set var_124 = Me.CmdRoomCOR
  loc_11B7E39:       Call 0.Method_Proc_243_11_11B7E940 (var_86, var_128)
  loc_11B7E41:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11B7E54:     End If
  loc_11B7E62:     Set var_114 = Me.CmdRoomCOR
  loc_11B7E68:     Call 0.Method_Proc_243_11_11B7E940 (var_86, var_120)
  loc_11B7E70:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11B7E7C:   End If
  loc_11B7E7C:   GoTo loc_11B7B1A
  loc_11B7E7F: End If
  loc_11B7E85: If (var_86 > 0) Then
  loc_11B7E88: End If
  loc_11B7E8D: Set var_8C = Nothing
  loc_11B7E90: Exit Sub
End Sub

Public Sub Proc_243_12_11B1608
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_DC As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_104 As Variant
  Dim var_11C As Frame
  loc_11B11E2: var_86 = 0
  loc_11B11F2: var_9C = "select Foliono= case When GuestFolio.mFoliono<>0 then GuestFolio.mFoliono else GuestFolio.Foliono end,RoomOcc.RoomNo as Name from (guestfolio inner join  RoomOcc on guestfolio.docid=roomocc.docid)  where RoomOcc.ChkoutDAte is NUll and RoomOcc.DepDate='"
  loc_11B1207: var_DC = var_9C & CDate(MemVar_1F920EC) & "' Order by RoomOcc.RoomNo" 
  loc_11B1215: unk_4F16AA.Execute CStr(var_DC), var_100, -1
  loc_11B1220: Set var_8C = var_104
  loc_11B1246: If (var_8C.RecordCount > 0) Then
  loc_11B1255:   Me.Frame9.Visible = True
  loc_11B127C:   Set var_104 = Me.LblExpOut
  loc_11B1282:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Expected ChkOut: " & CStr(var_8C.RecordCount)))
  loc_11B1290:   ' Referenced from: 11B15F2
  loc_11B1290: End If
  loc_11B129F: If Not(var_8C.EOF) Then
  loc_11B12B1:   var_104 = var_8C.Fields
  loc_11B12B9:   var_110 = var_104.Item("Name")
  loc_11B12D0:   Set var_114 = Me.CmdExpOut
  loc_11B12D6:   Call 0.Method_Proc_243_12_11B16080 (var_86, var_118, CVar(var_110))
  loc_11B12DE:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(var_104)
  loc_11B12F2:   var_8C.MoveNext
  loc_11B12FD:   var_86 = (var_86 + 1)
  loc_11B1311:   If (var_8C.EOF = 0) Then
  loc_11B131E:     Set var_104 = Me.CmdExpOut
  loc_11B1324:     Call 0.Method_Proc_243_12_11B16080 (var_86, var_110)
  loc_11B1335:     Me.CmdExpOut.Load var_110
  loc_11B134E:     Set var_114 = Me.CmdExpOut
  loc_11B1354:     Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1), var_118)
  loc_11B135C:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_86)
  loc_11B1384:     Set var_104 = Me.CmdExpOut
  loc_11B138A:     Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1), var_110)
  loc_11B1392:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_86)
  loc_11B13BA:     If (CSng((CDbl() + CDbl(var_DC))) > Me.Frame2.Width) Then
  loc_11B13C6:       Set var_104 = Me.CmdExpOut
  loc_11B13CC:       Call 0.Method_Proc_243_12_11B16080 (0)
  loc_11B13D4:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_110)
  loc_11B13EF:       Set var_114 = Me.CmdExpOut
  loc_11B13F5:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1), var_118)
  loc_11B13FD:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11B1419:       Set var_114 = Me.CmdExpOut
  loc_11B141F:       Call 0.Method_Proc_243_12_11B16080 (0)
  loc_11B1427:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010006(var_118)
  loc_11B1439:       Set var_104 = Me.CmdExpOut
  loc_11B143F:       Call 0.Method_Proc_243_12_11B16080 (0)
  loc_11B1447:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_110)
  loc_11B145A:       var_9C = CVar(((CDbl() + CDbl(var_DC)) + CDbl(0))) 'Single
  loc_11B146C:       Set var_11C = Me.CmdExpOut
  loc_11B1472:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1), var_120)
  loc_11B147A:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11B14A2:       Set var_104 = Me.CmdExpOut
  loc_11B14A8:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1))
  loc_11B14B0:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_110)
  loc_11B14C8:       Set var_114 = Me.CmdExpOut
  loc_11B14CE:       Call 0.Method_Proc_243_12_11B16080 (var_86, var_118)
  loc_11B14D6:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11B14EC:     Else
  loc_11B14F9:       Set var_114 = Me.CmdExpOut
  loc_11B14FF:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1))
  loc_11B1507:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010005(var_118)
  loc_11B151D:       Set var_104 = Me.CmdExpOut
  loc_11B1523:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1))
  loc_11B152B:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(var_110)
  loc_11B153E:       var_9C = CVar(((CDbl() + CDbl(var_DC)) + CDbl(0))) 'Single
  loc_11B154D:       Set var_11C = Me.CmdExpOut
  loc_11B1553:       Call 0.Method_Proc_243_12_11B16080 (var_86, var_120)
  loc_11B155B:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010003(CVar(CDbl()))
  loc_11B1583:       Set var_104 = Me.CmdExpOut
  loc_11B1589:       Call 0.Method_Proc_243_12_11B16080 ((var_86 - 1))
  loc_11B1591:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(var_110)
  loc_11B15A9:       Set var_114 = Me.CmdExpOut
  loc_11B15AF:       Call 0.Method_Proc_243_12_11B16080 (var_86, var_118)
  loc_11B15B7:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010004(CVar(CDbl()))
  loc_11B15CA:     End If
  loc_11B15D8:     Set var_104 = Me.CmdExpOut
  loc_11B15DE:     Call 0.Method_Proc_243_12_11B16080 (var_86, var_110)
  loc_11B15E6:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11B15F2:   End If
  loc_11B15F2:   GoTo loc_11B1290
  loc_11B15F5: End If
  loc_11B15FB: If (var_86 > 0) Then
  loc_11B15FE: End If
  loc_11B1603: Set var_8C = Nothing
  loc_11B1606: Exit Sub
End Sub

Public Sub Proc_243_13_10ED748
  'Data Table: 4F16A8
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_98 As String
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_1A8 As Variant
  Dim var_88 As Recordset15
  Dim var_1F0 As Fields15
  Dim var_198 As Variant
  loc_10ED47B: Set var_90 = Me.CmdExpArv
  loc_10ED481: var_90.Caption = vbNullString
  loc_10ED4AD: unk_4F16AA.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_10ED4B8: Set var_8C = var_90
  loc_10ED4C8: ' Referenced from: 10ED732
  loc_10ED4D7: If Not(var_8C.EOF) Then
  loc_10ED4F9:   var_90 = var_8C.Fields
  loc_10ED512:   var_94 = Proc_6_38_E68A98(CVar(var_90.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1EC)
  loc_10ED516:   var_98 = -1 & var_94
  loc_10ED524:   var_C8 = "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F92078
  loc_10ED539:   Proc_6_7_F25D88(var_E8, MemVar_1F920EC, CVar(var_C8 & "' AND "))
  loc_10ED559:   Proc_6_7_F25D88(var_148, MemVar_1F920EC)
  loc_10ED565:   var_168 = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_10ED579:   Proc_6_7_F25D88(var_198, MemVar_1F920EC)
  loc_10ED581:   var_1A8 = var_1F0 & var_E8 & " >=Arrdate and " & var_148 & var_168 & var_198 
  loc_10ED598:   unk_4F16AA.Execute CStr(var_1A8 & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), var_90, 
  loc_10ED5A3:   Set var_88 = var_1F0
  loc_10ED5E9:   If (var_88.RecordCount > 0) Then
  loc_10ED5F8:     Me.Frame10.Visible = True
  loc_10ED600:     ' Referenced from: 10ED724
  loc_10ED611:     If (var_88.EOF = 0) Then
  loc_10ED66B:       var_128 = (CVar(Me.CmdExpArv.Caption) + IIf((Me.CmdExpArv.Caption = vbNullString), vbNullString, ", "))
  loc_10ED6CC:       Proc_6_39_E7C810(var_1A8, CVar(var_88.Fields.Item("Rooms")))
  loc_10ED6E6:       Me.CmdExpArv.Caption = CStr(var_8C.Fields & ", " & " >=Arrdate and " & var_8C.Fields.Item("Name").Value & "=" & var_1A8)
  loc_10ED71F:       var_88.MoveNext
  loc_10ED724:       GoTo loc_10ED600
  loc_10ED727:     End If
  loc_10ED727:     GoTo loc_10ED72A
  loc_10ED72A:     ' Referenced from: 10ED727
  loc_10ED72A:   End If
  loc_10ED72D:   var_8C.MoveNext
  loc_10ED732:   GoTo loc_10ED4C8
  loc_10ED735: End If
  loc_10ED73A: Set var_88 = Nothing
  loc_10ED742: Set var_8C = Nothing
  loc_10ED745: Exit Sub
End Sub

Public Sub Proc_243_14_11BACB0
  'Data Table: 4F16A8
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim var_EC As Frame
  loc_11BA882: unk_4F16AA.Execute "SELECT RoomNo as Name FROM RoomOcc WHERE Type = '' ORDER BY RoomNo", var_AC, -1
  loc_11BA88D: Set var_8C = var_B0
  loc_11BA8AA: If (var_8C.RecordCount > 0) Then
  loc_11BA8B5:   Set var_B0 = Me.LBLOR
  loc_11BA8BB:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_80010007(True)
  loc_11BA8D0:   Set var_B0 = Me.CmdRoomSt
  loc_11BA8D6:   Call 0.Method_Proc_243_14_11BACB00 (0, var_C8)
  loc_11BA8DE:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11BA8F6:   Me.Frame1.Visible = True
  loc_11BA91D:   Set var_B0 = Me.LBLOR
  loc_11BA923:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("Occupied Room: " & CStr(var_8C.RecordCount)))
  loc_11BA931: End If
  loc_11BA933: var_86 = 0
  loc_11BA936: ' Referenced from: 11BAC98
  loc_11BA945: If Not(var_8C.EOF) Then
  loc_11BA95F:   var_C8 = var_8C.Fields.Item("Name")
  loc_11BA976:   Set var_D4 = Me.CmdRoomSt
  loc_11BA97C:   Call 0.Method_Proc_243_14_11BACB00 (var_86, var_D8, CVar(var_C8))
  loc_11BA984:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_86)
  loc_11BA998:   var_8C.MoveNext
  loc_11BA9A3:   var_86 = (var_86 + 1)
  loc_11BA9B7:   If (var_8C.EOF = 0) Then
  loc_11BA9C4:     Set var_B0 = Me.CmdRoomSt
  loc_11BA9CA:     Call 0.Method_Proc_243_14_11BACB00 (var_86, var_C8)
  loc_11BA9DB:     Me.CmdRoomSt.Load var_C8
  loc_11BA9F4:     Set var_D4 = Me.CmdRoomSt
  loc_11BA9FA:     Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1), var_D8)
  loc_11BAA02:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_11BAA30:     Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1), var_C8)
  loc_11BAA38:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.CmdRoomSt)
  loc_11BAA60:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame1.Width) Then
  loc_11BAA6C:       Set var_B0 = Me.CmdRoomSt
  loc_11BAA72:       Call 0.Method_Proc_243_14_11BACB00 (0)
  loc_11BAA7A:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C8)
  loc_11BAA95:       Set var_D4 = Me.CmdRoomSt
  loc_11BAA9B:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1), var_D8)
  loc_11BAAA3:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11BAABF:       Set var_D4 = Me.CmdRoomSt
  loc_11BAAC5:       Call 0.Method_Proc_243_14_11BACB00 (0)
  loc_11BAACD:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_D8)
  loc_11BAADF:       Set var_B0 = Me.CmdRoomSt
  loc_11BAAE5:       Call 0.Method_Proc_243_14_11BACB00 (0)
  loc_11BAAED:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11BAB00:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_11BAB12:       Set var_EC = Me.CmdRoomSt
  loc_11BAB18:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1), var_F0)
  loc_11BAB20:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11BAB48:       Set var_B0 = Me.CmdRoomSt
  loc_11BAB4E:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1))
  loc_11BAB56:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11BAB6E:       Set var_D4 = Me.CmdRoomSt
  loc_11BAB74:       Call 0.Method_Proc_243_14_11BACB00 (var_86, var_D8)
  loc_11BAB7C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11BAB92:     Else
  loc_11BAB9F:       Set var_D4 = Me.CmdRoomSt
  loc_11BABA5:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1))
  loc_11BABAD:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_D8)
  loc_11BABC3:       Set var_B0 = Me.CmdRoomSt
  loc_11BABC9:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1))
  loc_11BABD1:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C8)
  loc_11BABE4:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_11BABF3:       Set var_EC = Me.CmdRoomSt
  loc_11BABF9:       Call 0.Method_Proc_243_14_11BACB00 (var_86, var_F0)
  loc_11BAC01:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_11BAC29:       Set var_B0 = Me.CmdRoomSt
  loc_11BAC2F:       Call 0.Method_Proc_243_14_11BACB00 ((var_86 - 1))
  loc_11BAC37:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C8)
  loc_11BAC4F:       Set var_D4 = Me.CmdRoomSt
  loc_11BAC55:       Call 0.Method_Proc_243_14_11BACB00 (var_86, var_D8)
  loc_11BAC5D:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_11BAC70:     End If
  loc_11BAC7E:     Set var_B0 = Me.CmdRoomSt
  loc_11BAC84:     Call 0.Method_Proc_243_14_11BACB00 (var_86, var_C8)
  loc_11BAC8C:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_11BAC98:   End If
  loc_11BAC98:   GoTo loc_11BA936
  loc_11BAC9B: End If
  loc_11BACA1: If (var_86 > 0) Then
  loc_11BACA4: End If
  loc_11BACA9: Set var_8C = Nothing
  loc_11BACAC: Exit Sub
End Sub

Public Sub Proc_243_15_119D57C
  'Data Table: 4F16A8
  Dim var_86 As Integer
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Variant
  Dim var_AC As Variant
  Dim var_9C As Variant
  Dim var_EC As Frame
  loc_119D17A: var_86 = 0
  loc_119D193: unk_4F16AA.Execute "select Distinct roomocc.roomno as Name from roomocc Left join paycharge on paycharge.foliono=roomocc.foliono where roomocc.type='' and paycharge.bill_no>0 ORDER BY RoomOcc.RoomNo", var_AC, -1
  loc_119D19E: Set var_8C = var_B0
  loc_119D1BB: If (var_8C.RecordCount > 0) Then
  loc_119D1CA:   Me.Frame3.Visible = True
  loc_119D1F1:   Set var_B0 = Me.LblPP
  loc_119D1F7:   Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(CVar("UnSettle Room: " & CStr(var_8C.RecordCount)))
  loc_119D205:   ' Referenced from: 119D567
  loc_119D205: End If
  loc_119D214: If Not(var_8C.EOF) Then
  loc_119D226:   var_B0 = var_8C.Fields
  loc_119D22E:   var_C0 = var_B0.Item("Name")
  loc_119D245:   Set var_C4 = Me.CmdPP
  loc_119D24B:   Call 0.Method_Proc_243_15_119D57C0 (var_86, var_C8, CVar(var_C0))
  loc_119D253:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_B0)
  loc_119D267:   var_8C.MoveNext
  loc_119D272:   var_86 = (var_86 + 1)
  loc_119D286:   If (var_8C.EOF = 0) Then
  loc_119D293:     Set var_B0 = Me.CmdPP
  loc_119D299:     Call 0.Method_Proc_243_15_119D57C0 (var_86, var_C0)
  loc_119D2AA:     Me.CmdPP.Load var_C0
  loc_119D2C3:     Set var_C4 = Me.CmdPP
  loc_119D2C9:     Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1), var_C8)
  loc_119D2D1:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_119D2F9:     Set var_B0 = Me.CmdPP
  loc_119D2FF:     Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1), var_C0)
  loc_119D307:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_119D32F:     If (CSng((CDbl() + CDbl(var_E8))) > Me.Frame3.Width) Then
  loc_119D33B:       Set var_B0 = Me.CmdPP
  loc_119D341:       Call 0.Method_Proc_243_15_119D57C0 (0)
  loc_119D349:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119D364:       Set var_C4 = Me.CmdPP
  loc_119D36A:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1), var_C8)
  loc_119D372:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119D38E:       Set var_C4 = Me.CmdPP
  loc_119D394:       Call 0.Method_Proc_243_15_119D57C0 (0)
  loc_119D39C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_C8)
  loc_119D3AE:       Set var_B0 = Me.CmdPP
  loc_119D3B4:       Call 0.Method_Proc_243_15_119D57C0 (0)
  loc_119D3BC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119D3CF:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119D3E1:       Set var_EC = Me.CmdPP
  loc_119D3E7:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1), var_F0)
  loc_119D3EF:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119D417:       Set var_B0 = Me.CmdPP
  loc_119D41D:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1))
  loc_119D425:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119D43D:       Set var_C4 = Me.CmdPP
  loc_119D443:       Call 0.Method_Proc_243_15_119D57C0 (var_86, var_C8)
  loc_119D44B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119D461:     Else
  loc_119D46E:       Set var_C4 = Me.CmdPP
  loc_119D474:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1))
  loc_119D47C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_C8)
  loc_119D492:       Set var_B0 = Me.CmdPP
  loc_119D498:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1))
  loc_119D4A0:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_C0)
  loc_119D4B3:       var_9C = CVar(((CDbl() + CDbl(var_E8)) + CDbl(0))) 'Single
  loc_119D4C2:       Set var_EC = Me.CmdPP
  loc_119D4C8:       Call 0.Method_Proc_243_15_119D57C0 (var_86, var_F0)
  loc_119D4D0:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_119D4F8:       Set var_B0 = Me.CmdPP
  loc_119D4FE:       Call 0.Method_Proc_243_15_119D57C0 ((var_86 - 1))
  loc_119D506:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_C0)
  loc_119D51E:       Set var_C4 = Me.CmdPP
  loc_119D524:       Call 0.Method_Proc_243_15_119D57C0 (var_86, var_C8)
  loc_119D52C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_119D53F:     End If
  loc_119D54D:     Set var_B0 = Me.CmdPP
  loc_119D553:     Call 0.Method_Proc_243_15_119D57C0 (var_86, var_C0)
  loc_119D55B:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_119D567:   End If
  loc_119D567:   GoTo loc_119D205
  loc_119D56A: End If
  loc_119D570: If (var_86 > 0) Then
  loc_119D573: End If
  loc_119D578: Set var_8C = Nothing
  loc_119D57B: Exit Sub
End Sub

Public Sub Proc_243_16_12438BC
  'Data Table: 4F16A8
  Dim var_BC As String
  Dim var_9C As Variant
  Dim var_CC As Variant
  Dim unk_4F16AA As Connection15
  Dim var_8C As Recordset15
  Dim var_114 As Variant
  Dim var_AC As Variant
  Dim var_86 As Integer
  Dim var_120 As Field20
  Dim var_124 As Fields15
  Dim var_128 As Field20
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_150 As Field20
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  loc_12433C6: var_BC = "select venueocc.FromTime as PTime,HallBook.PartyName as PName,FunctionType.name as FName,Venuemast.name as VName from venueocc Inner Join HallBook  on HallBook.Docid=Venueocc.FPDocid Left Join FunctionType on Functiontype.code=Hallbook.Func_name Left Join venuemast on Venuemast.code=VenueOCC.venucode where (Venueocc.fromDate= "
  loc_12433D6: Proc_6_7_F25D88(var_AC, MemVar_1F920EC, var_BC, var_110)
  loc_12433DE: var_CC = -1 & var_AC 
  loc_12433F5: unk_4F16AA.Execute CStr(var_CC & ") "), var_114, 0
  loc_1243400: Set var_8C = var_114
  loc_1243428: If (var_8C.RecordCount > 0) Then
  loc_1243437:   Me.Frame4.Visible = True
  loc_124345E:   Set var_114 = Me.LblBnq
  loc_1243464:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar("Events : " & CStr(var_8C.RecordCount)))
  loc_1243472: End If
  loc_1243474: var_86 = 0
  loc_1243477: ' Referenced from: 12438A7
  loc_1243486: If Not(var_8C.EOF) Then
  loc_12434A3:   var_120 = var_8C.Fields.Item("FName")
  loc_12434B8:   var_CC = (var_120.Value + ", ")
  loc_12434D6:   var_128 = var_8C.Fields.Item("vname")
  loc_12434E6:   var_110 = (var_CC + var_128.Value)
  loc_12434EF:   var_138 = (var_110 + ", ")
  loc_124350D:   var_150 = var_8C.Fields.Item("pName")
  loc_124351D:   var_170 = (var_138 + var_150.Value)
  loc_1243526:   var_190 = (var_170 + ", ")
  loc_1243554:   var_1C8 = (var_190 + var_8C.Fields.Item("Ptime").Value)
  loc_1243563:   Set var_1CC = Me.CmdPT
  loc_1243569:   Call 0.Method_Proc_243_16_12438BC0 (var_86, var_1D0)
  loc_1243571:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_1C8)
  loc_12435A7:   var_8C.MoveNext
  loc_12435B2:   var_86 = (var_86 + 1)
  loc_12435C6:   If (var_8C.EOF = 0) Then
  loc_12435D3:     Set var_114 = Me.CmdPT
  loc_12435D9:     Call 0.Method_Proc_243_16_12438BC0 (var_86, var_120)
  loc_12435EA:     Me.CmdPT.Load var_120
  loc_1243603:     Set var_124 = Me.CmdPT
  loc_1243609:     Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1), var_128)
  loc_1243611:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_86)
  loc_1243639:     Set var_114 = Me.CmdPT
  loc_124363F:     Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1), var_120)
  loc_1243647:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_86)
  loc_124366F:     If (CSng((CDbl() + CDbl(var_CC))) > Me.Frame4.Width) Then
  loc_124367B:       Set var_114 = Me.CmdPT
  loc_1243681:       Call 0.Method_Proc_243_16_12438BC0 (0)
  loc_1243689:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_12436A4:       Set var_124 = Me.CmdPT
  loc_12436AA:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1), var_128)
  loc_12436B2:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_12436CE:       Set var_124 = Me.CmdPT
  loc_12436D4:       Call 0.Method_Proc_243_16_12438BC0 (0)
  loc_12436DC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_128)
  loc_12436EE:       Set var_114 = Me.CmdPT
  loc_12436F4:       Call 0.Method_Proc_243_16_12438BC0 (0)
  loc_12436FC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_124370F:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_1243721:       Set var_13C = Me.CmdPT
  loc_1243727:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1), var_150)
  loc_124372F:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_1243757:       Set var_114 = Me.CmdPT
  loc_124375D:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1))
  loc_1243765:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_124377D:       Set var_124 = Me.CmdPT
  loc_1243783:       Call 0.Method_Proc_243_16_12438BC0 (var_86, var_128)
  loc_124378B:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_12437A1:     Else
  loc_12437AE:       Set var_124 = Me.CmdPT
  loc_12437B4:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1))
  loc_12437BC:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_128)
  loc_12437D2:       Set var_114 = Me.CmdPT
  loc_12437D8:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1))
  loc_12437E0:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_120)
  loc_12437F3:       var_9C = CVar(((CDbl() + CDbl(var_CC)) + CDbl(0))) 'Single
  loc_1243802:       Set var_13C = Me.CmdPT
  loc_1243808:       Call 0.Method_Proc_243_16_12438BC0 (var_86, var_150)
  loc_1243810:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl()))
  loc_1243838:       Set var_114 = Me.CmdPT
  loc_124383E:       Call 0.Method_Proc_243_16_12438BC0 ((var_86 - 1))
  loc_1243846:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_120)
  loc_124385E:       Set var_124 = Me.CmdPT
  loc_1243864:       Call 0.Method_Proc_243_16_12438BC0 (var_86, var_128)
  loc_124386C:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl()))
  loc_124387F:     End If
  loc_124388D:     Set var_114 = Me.CmdPT
  loc_1243893:     Call 0.Method_Proc_243_16_12438BC0 (var_86, var_120)
  loc_124389B:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_12438A7:   End If
  loc_12438A7:   GoTo loc_1243477
  loc_12438AA: End If
  loc_12438B0: If (var_86 > 0) Then
  loc_12438B3: End If
  loc_12438B8: Set var_8C = Nothing
  loc_12438BB: Exit Sub
End Sub
