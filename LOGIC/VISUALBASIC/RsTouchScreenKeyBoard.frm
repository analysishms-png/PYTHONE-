VERSION 5.00
Begin VB.Form RsTouchScreenKeyBoard
  Caption = "Touch Screen KeyBoard"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 0
  ClientTop = -105
  ClientWidth = 11610
  ClientHeight = 5040
  LockControls = -1  'True
  BeginProperty Font
    Name = "Arial"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame Frame1
    BackColor = &H80000003&
    Left = 0
    Top = 0
    Width = 11610
    Height = 5055
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtKeyBoard
      Left = 30
      Top = 30
      Width = 9870
      Height = 1665
      TabIndex = 49
      MultiLine = -1  'True
      ScrollBars = 2
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin BtnEnh SSPKey
      Index = 0
      Left = 9120
      Top = 4215
      Width = 795
      Height = 795
      TabIndex = 1
    End
    Begin BtnEnh SSPKey
      Index = 1
      Left = 9120
      Top = 3390
      Width = 795
      Height = 795
      TabIndex = 2
    End
    Begin BtnEnh SSPKey
      Index = 3
      Left = 10770
      Top = 3390
      Width = 795
      Height = 795
      TabIndex = 3
    End
    Begin BtnEnh SSPKey
      Index = 4
      Left = 9120
      Top = 2565
      Width = 795
      Height = 795
      TabIndex = 4
    End
    Begin BtnEnh SSPKey
      Index = 6
      Left = 10770
      Top = 2565
      Width = 795
      Height = 795
      TabIndex = 5
    End
    Begin BtnEnh SSPKey
      Index = 7
      Left = 9120
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 6
    End
    Begin BtnEnh SSPKey
      Index = 9
      Left = 10770
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 7
    End
    Begin BtnEnh SSPKey
      Index = 11
      Left = 10770
      Top = 4215
      Width = 795
      Height = 795
      TabIndex = 8
    End
    Begin BtnEnh SSPKey
      Index = 12
      Left = 45
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 9
    End
    Begin BtnEnh SSPKey
      Index = 13
      Left = 870
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 10
    End
    Begin BtnEnh SSPKey
      Index = 14
      Left = 1695
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 11
    End
    Begin BtnEnh SSPKey
      Index = 15
      Left = 2520
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 12
    End
    Begin BtnEnh SSPKey
      Index = 16
      Left = 3345
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 13
    End
    Begin BtnEnh SSPKey
      Index = 17
      Left = 4170
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 14
    End
    Begin BtnEnh SSPKey
      Index = 18
      Left = 4995
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 15
    End
    Begin BtnEnh SSPKey
      Index = 19
      Left = 5820
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 16
    End
    Begin BtnEnh SSPKey
      Index = 20
      Left = 6645
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 17
    End
    Begin BtnEnh SSPKey
      Index = 21
      Left = 7470
      Top = 1740
      Width = 795
      Height = 795
      TabIndex = 18
    End
  End
End
End

Attribute VB_Name = "RsTouchScreenKeyBoard"

Private global_52 As Integer

Private Sub Form_Load() 'E1BB74
  'Data Table: 41F534
  loc_E1BB5F: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E1BB6C: Call Proc_252_7_1028688(&HFF)
  loc_E1BB71: Exit Sub
End Sub

Private Sub Form_Activate() 'E287A8
  'Data Table: 41F534
  loc_E2879C: global_64 = Me.TxtKeyBoard.Text
  loc_E287A6: Exit Sub
End Sub

Public Sub SSPKey_UnknownEvent_9(Index As Integer) '140F014
  'Data Table: 41F534
  Dim var_8C As Variant
  Dim var_90 As TextBox
  Dim var_BC As Variant
  Dim var_A8 As TextBox
  Dim var_114 As Variant
  loc_140E5B2: Set var_8C = Me.SSPKey
  loc_140E5B8: Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E5C0: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E5DA: Set var_A8 = Me.SSPKey
  loc_140E5E0: Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_AC)
  loc_140E5E8: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((CStr() = "FINISH"))
  loc_140E612: If ( Or (CStr() = "ENTER")) Then
  loc_140E63C:   var_90 = ParentForm
  loc_140E644:   var_90.TxtKeyBoard = Trim(CVar(Me.TxtKeyBoard.Text))
  loc_140E663:   Me.Global.Unload Me
  loc_140E66B:   Exit Sub
  loc_140E66F: Else
  loc_140E679:   Set var_8C = Me.SSPKey
  loc_140E67F:   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E687:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E6A4:   If (CStr() = "CANCEL") Then
  loc_140E6BC:     ParentForm.TxtKeyBoard = CVar(global_64)
  loc_140E6D0:     Me.Global.Unload Me
  loc_140E6D8:     Exit Sub
  loc_140E6DC:   Else
  loc_140E6E6:     Set var_8C = Me.SSPKey
  loc_140E6EC:     Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E6F4:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E711:     If (CStr() = "CLR") Then
  loc_140E721:       Me.TxtKeyBoard.Text = vbNullString
  loc_140E72C:     Else
  loc_140E736:       Set var_8C = Me.SSPKey
  loc_140E73C:       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E744:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E761:       If (CStr() = "BKS") Then
  loc_140E782:         If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_140E7A4:           Set var_90 = Me.TxtKeyBoard
  loc_140E7AA:           var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_140E7C5:           Me.TxtKeyBoard.SelLength = 1
  loc_140E7DA:           Me.TxtKeyBoard.SelText = vbNullString
  loc_140E7E2:         End If
  loc_140E7E5:       Else
  loc_140E7EF:         Set var_8C = Me.SSPKey
  loc_140E7F5:         Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E7FD:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E81A:         If (CStr() = "DEL") Then
  loc_140E839:           Set var_90 = Me.TxtKeyBoard
  loc_140E853:           If (Me.TxtKeyBoard.SelStart < Len(var_90.Text)) Then
  loc_140E865:             Me.TxtKeyBoard.SelLength = 1
  loc_140E87A:             Me.TxtKeyBoard.SelText = vbNullString
  loc_140E882:           End If
  loc_140E885:         Else
  loc_140E88F:           Set var_8C = Me.SSPKey
  loc_140E895:           Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140E89D:           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E8BA:           If (CStr() = "CAPS") Then
  loc_140E8C7:             global_52 = Not(global_52)
  loc_140E8D3:             If (global_52 = &HFF) Then
  loc_140E8E2:               Set var_8C = Me.SSPKey
  loc_140E8E8:               Call 0.Method_SSPKey_UnknownEvent_9C (var_E6, var_86)
  loc_140E8F6:               For var_EA = global_52 To (var_E6 - 1):           0 = var_EA 'Integer
  loc_140E906:                 Set var_8C = Me.SSPKey
  loc_140E90C:                 Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_90)
  loc_140E914:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(global_52)
  loc_140E933:                 If (Len(CStr()) = 1) Then
  loc_140E940:                   Set var_8C = Me.SSPKey
  loc_140E946:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140E94E:                   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E96F:                   Set var_A8 = Me.SSPKey
  loc_140E975:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_AC)
  loc_140E97D:                   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(Ucase(CVar(CStr())))
  loc_140E996:                 End If
  loc_140E999:               Next var_EA 'Integer
  loc_140E9A1:             Else
  loc_140E9AD:               Set var_8C = Me.SSPKey
  loc_140E9B3:               Call 0.Method_SSPKey_UnknownEvent_9C (var_E6, var_86)
  loc_140E9C1:               For var_100 =  To (var_E6 - 1):             0 = var_100 'Integer
  loc_140E9D1:                 Set var_8C = Me.SSPKey
  loc_140E9D7:                 Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140E9DF:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140E9FE:                 If (Len(CStr()) = 1) Then
  loc_140EA0B:                   Set var_8C = Me.SSPKey
  loc_140EA11:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86)
  loc_140EA19:                   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140EA3A:                   Set var_A8 = Me.SSPKey
  loc_140EA40:                   Call 0.Method_SSPKey_UnknownEvent_90 (var_86, var_AC)
  loc_140EA48:                   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(LCase(CVar(CStr())))
  loc_140EA61:                 End If
  loc_140EA64:               Next var_100 'Integer
  loc_140EA69:             End If
  loc_140EA6C:           Else
  loc_140EA76:             Set var_8C = Me.SSPKey
  loc_140EA7C:             Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140EA84:             Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140EAA1:             If (CStr() = "HOME") Then
  loc_140EAB3:               Me.TxtKeyBoard.SelStart = 0
  loc_140EABE:             Else
  loc_140EAC8:               Set var_8C = Me.SSPKey
  loc_140EACE:               Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140EAD6:               Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140EAF3:               If (CStr() = "SPACE") Then
  loc_140EB6B:                 Set var_90 = Me.TxtKeyBoard
  loc_140EB90:                 var_BC = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_140EBA7:                 var_FC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_140EBEE:                 var_BC = (CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))) + Space(1))
  loc_140EBF9:                 global_56 = CStr(CVar(Me.TxtKeyBoard.SelStart))
  loc_140EC21:                 Me.TxtKeyBoard.Text = global_56 & CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_140EC3D:                 Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_140EC48:               Else
  loc_140EC52:                 Set var_8C = Me.SSPKey
  loc_140EC58:                 Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140EC60:                 Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140EC7D:                 If (CStr() = "END") Then
  loc_140EC9A:                   Set var_90 = Me.TxtKeyBoard
  loc_140ECA0:                   var_90.SelStart = Len(Me.TxtKeyBoard.Text)
  loc_140ECB2:                 Else
  loc_140ECBC:                   Set var_8C = Me.SSPKey
  loc_140ECC2:                   Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140ECCA:                   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140ECE7:                   If (CStr() = "<") Then
  loc_140ED08:                     If (Me.TxtKeyBoard.SelStart > 0) Then
  loc_140ED2A:                       Set var_90 = Me.TxtKeyBoard
  loc_140ED30:                       var_90.SelStart = (Me.TxtKeyBoard.SelStart - 1)
  loc_140ED3C:                     End If
  loc_140ED3F:                   Else
  loc_140ED49:                     Set var_8C = Me.SSPKey
  loc_140ED4F:                     Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140ED57:                     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140ED74:                     If (CStr() = ">") Then
  loc_140EDAD:                       If (Me.TxtKeyBoard.SelStart < Len(Me.TxtKeyBoard.Text)) Then
  loc_140EDCF:                         Set var_90 = Me.TxtKeyBoard
  loc_140EDD5:                         var_90.SelStart = (Me.TxtKeyBoard.SelStart + 1)
  loc_140EDE1:                       End If
  loc_140EDE4:                     Else
  loc_140EDEE:                       Set var_8C = Me.SSPKey
  loc_140EDF4:                       Call 0.Method_SSPKey_UnknownEvent_90 (Index)
  loc_140EDFC:                       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_90)
  loc_140EE1B:                       If (Len(CStr()) = 1) Then
  loc_140EE93:                         Set var_90 = Me.TxtKeyBoard
  loc_140EEB8:                         var_BC = CVar((Len(var_90.Text) - Me.TxtKeyBoard.SelStart)) 'Long
  loc_140EECF:                         var_FC = Mid(CVar(Me.TxtKeyBoard), (Me.TxtKeyBoard.SelStart + 1), CVar(Me.TxtKeyBoard.SelStart))
  loc_140EEDE:                         global_60 = CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))
  loc_140EF06:                         If (global_52 = &HFF) Then
  loc_140EF1C:                           Set var_8C = Me.SSPKey
  loc_140EF22:                           Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_140EF2A:                           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(CStr(Mid(CVar(Me.TxtKeyBoard), 1, CVar(Me.TxtKeyBoard.SelStart)))))
  loc_140EF40:                           var_114 = ( + Ucase(CVar(CStr())))
  loc_140EF4B:                           global_56 = CStr(var_114)
  loc_140EF67:                         Else
  loc_140EF7A:                           Set var_8C = Me.SSPKey
  loc_140EF80:                           Call 0.Method_SSPKey_UnknownEvent_90 (Index, var_90)
  loc_140EF88:                           Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(CVar(global_56))
  loc_140EF9E:                           var_114 = ( + LCase(CVar(CStr())))
  loc_140EFA9:                           global_56 = CStr(var_114)
  loc_140EFC2:                         End If
  loc_140EFDC:                         Me.TxtKeyBoard.Text = global_56 & global_60
  loc_140EFF8:                         Me.TxtKeyBoard.SelStart = Len(global_56)
  loc_140F000:                       End If
  loc_140F000:                     End If
  loc_140F000:                   End If
  loc_140F000:                 End If
  loc_140F000:               End If
  loc_140F000:             End If
  loc_140F000:           End If
  loc_140F000:         End If
  loc_140F000:       End If
  loc_140F000:     End If
  loc_140F000:   End If
  loc_140F000: End If
  loc_140F00A: Me.TxtKeyBoard.SetFocus
  loc_140F012: Exit Sub
End Sub

Public Property Let ParentForm(vNewValue) 'E10ABC
  'Data Table: 41F534
  loc_E10AB5: Set global_68 = vNewValue
  loc_E10AB9: Exit Sub
End Sub

Public Property Get ParentForm() 'E1087C
  'Data Table: 41F534
  loc_E10870: Set var_88 = global_68 
  loc_E10874: ParentForm = 
End Sub

Public Property Let InputType(vNewValue) 'E10684
  'Data Table: 41F534
  loc_E1067C: global_72 = vNewValue
  loc_E10680: Exit Sub
  loc_E10681: Exit Sub
End Sub

Public Property Get InputType() 'E103B4
  'Data Table: 41F534
  loc_E103A8: var_88 = global_72
  loc_E103AB: InputType = 
  loc_E103B1: Exit Sub
End Sub

Public Sub Proc_252_7_1028688
  'Data Table: 41F534
  loc_1028499: var_BC = Ucase(CVar(InputType)) 'Variant
  loc_10284AB: If Not (var_BC = "DATE") Then
  loc_10284B9:   If Not (var_BC = "TIME") Then
  loc_10284C7:     If (var_BC = "NUMERIC") Then
  loc_10284CA:     End If
  loc_10284CA:   End If
  loc_10284D6:   Set var_F0 = Me.SSPKey
  loc_10284DC:   Call 0.Method_Proc_252_7_1028688C (var_F2, var_86)
  loc_10284EA:   For var_F6 =  To (var_F2 - 1): 0 = var_F6 'Integer
  loc_10284FA:     Set var_F0 = Me.SSPKey
  loc_1028500:     Call 0.Method_Proc_252_7_10286880 (var_86)
  loc_1028508:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_FC)
  loc_1028524:     Set var_100 = Me.SSPKey
  loc_102852A:     Call 0.Method_Proc_252_7_10286880 (var_86, var_104)
  loc_1028532:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((Len(CStr()) = 1))
  loc_102855F:     Set var_12C = Me.SSPKey
  loc_1028565:     Call 0.Method_Proc_252_7_10286880 (var_86, var_130)
  loc_102856D:     Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(( And (Asc(CStr(Ucase(CVar(CStr())))) >= &H41)))
  loc_10285B9:     If ( And (Asc(CStr(Ucase(CVar(CStr())))) <= &H5A)) Then
  loc_10285CB:       Set var_F0 = Me.SSPKey
  loc_10285D1:       Call 0.Method_Proc_252_7_10286880 (var_86, var_FC)
  loc_10285D9:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_10285E8:     Else
  loc_10285F2:       Set var_F0 = Me.SSPKey
  loc_10285F8:       Call 0.Method_Proc_252_7_10286880 (var_86)
  loc_1028600:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_FC)
  loc_102861A:       Set var_100 = Me.SSPKey
  loc_1028620:       Call 0.Method_Proc_252_7_10286880 (var_86, var_104)
  loc_1028628:       Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA((CStr() = "CAPS"))
  loc_1028652:       If ( Or (CStr() = "SPACE")) Then
  loc_1028664:         Set var_F0 = Me.SSPKey
  loc_102866A:         Call 0.Method_Proc_252_7_10286880 (var_86, var_FC)
  loc_1028672:         Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_102867E:       End If
  loc_102867E:     End If
  loc_1028681:   Next var_F6 'Integer
  loc_1028686: End If
  loc_1028686: Exit Sub
End Sub
