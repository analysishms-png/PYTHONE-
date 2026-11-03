VERSION 5.00
Begin VB.Form FaRepView
  Caption = "Form1"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaRepView.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 60
  ClientWidth = 9135
  ClientHeight = 6105
  Begin BtnEnh Command1
    Left = 8220
    Top = 0
    Width = 375
    Height = 360
    TabIndex = 5
  End
  Begin CommandButton Command2
    Caption = "4"
    Index = 2
    BackColor = &H8000000A&
    Left = 14370
    Top = 900
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = ":"
    Index = 3
    BackColor = &H8000000A&
    Left = 14730
    Top = 870
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = "9"
    Index = 0
    BackColor = &H8000000A&
    Left = 13215
    Top = 1020
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Command2
    Caption = "3"
    Index = 1
    BackColor = &H8000000A&
    Left = 13545
    Top = 960
    Width = 390
    Height = 390
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Webdings"
      Size = 12
      Charset = 2
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CRViewer CRViewer1
    Left = 0
    Top = -15
    Width = 11955
    Height = 6870
    TabIndex = 4
  End
  Begin CommonDialog cdialogrepview
  End
End

Attribute VB_Name = "FaRepView"


Private Sub Form_Load() 'E829D4
  'Data Table: 420810
  loc_E8296B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E82977: Call 0.Method_arg_74 (CDbl(0))
  loc_E82983: Call 0.Method_arg_7C (CDbl(0))
  loc_E82990: Call 0.Method_Me4 (CDbl(11900))
  loc_E8299D: Call 0.Method_MeC (CDbl(7935))
  loc_E829B0: Call 0.Method_arg_DC (var_88)
  loc_E829B8: Call 0.Method_arg_24 (&HA)
  loc_E829CB: Call 0.Method_arg_2B0 (var_98)
  loc_E829D0: Exit Sub
End Sub

Private Sub Form_Resize() 'E8D848
  'Data Table: 420810
  loc_E8D7D8: Set var_A8 = Me.CRViewer1
  loc_E8D7DE: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_E8D7F2: Set var_A8 = Me.CRViewer1
  loc_E8D7F8: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_E8D804: Call 0.Method_arg_108 (var_AC)
  loc_E8D815: Set var_A8 = Me.CRViewer1
  loc_E8D81B: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_80010006(CVar(var_AC))
  loc_E8D827: Call 0.Method_arg_100 (var_AC)
  loc_E8D838: Set var_A8 = Me.CRViewer1
  loc_E8D83E: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(var_AC))
  loc_E8D846: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EFF148
  'Data Table: 420810
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_EFF063: var_86 = KeyCode
  loc_EFF070: If (var_86 = CInt(&H24)) Then
  loc_EFF077:   Set var_8C = Me.Command1
  loc_EFF07D:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001(var_86)
  loc_EFF08D:   Call Command2_Click()
  loc_EFF095: Else
  loc_EFF09F:   If (var_86 = CInt(&H21)) Then
  loc_EFF0A6:     Set var_8C = Me.Command1
  loc_EFF0AC:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001(0)
  loc_EFF0BC:     Call Command2_Click()
  loc_EFF0C4:   Else
  loc_EFF0CE:     If (var_86 = CInt(&H22)) Then
  loc_EFF0D5:       Set var_8C = Me.Command1
  loc_EFF0DB:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001(1)
  loc_EFF0EB:       Call Command2_Click()
  loc_EFF0F3:     Else
  loc_EFF0FD:       If (var_86 = CInt(&H23)) Then
  loc_EFF104:         Set var_8C = Me.Command1
  loc_EFF10A:         Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001(2)
  loc_EFF11A:         Call Command2_Click()
  loc_EFF122:       Else
  loc_EFF12C:         If (var_86 = CInt(&H1B)) Then
  loc_EFF13C:           Me.Global.Unload Me
  loc_EFF144:         End If
  loc_EFF144:       End If
  loc_EFF144:     End If
  loc_EFF144:   End If
  loc_EFF144: End If
  loc_EFF144: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E13D60
  'Data Table: 420810
  Dim var_94 As Integer
  loc_E13D48: var_94 = 0
  loc_E13D56: Call global_52.PrinterSetup
  loc_E13D5C: Exit Sub
  loc_E13D5D: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_1D 'E1A578
  'Data Table: 420810
  loc_E1A564: Set var_88 = Me.Command1
  loc_E1A56A: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001()
  loc_E1A575: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FD9E1C
  'Data Table: 420810
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim var_BC As String
  Dim var_D0 As Variant
  loc_FD9C67: Me.cdialogrepview.CancelError = True
  loc_FD9C6F: On Error Goto loc_FD9E17
  loc_FD9C87: var_BC = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc|"
  loc_FD9CA3: Me.cdialogrepview.Filter = CVar(var_BC & "Adobe Acrobat(*.pdf)|*.pdf|" & "Other Formats(*.*)|*.*")
  loc_FD9CC9: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_FD9CDC: var_D0 = CVar(RepTitle) 'String
  loc_FD9CE4: Set var_A8 = Me.cdialogrepview
  loc_FD9D05: Me.cdialogrepview.FilterIndex = 2
  loc_FD9D2C: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_FD9D45: If (CStr(cdialogrepview.DispID_1) <> vbNullString) Then
  loc_FD9D4E:   var_D0 = global_52.ExportOptions
  loc_FD9D61:   Set var_D4 = var_D0 
  loc_FD9D6D:   Call 0.Method_arg_2C (1, var_D0)
  loc_FD9D79:   Set var_A8 = 0(var_D8)
  loc_FD9D8D:   Call Proc_204_11_EB1F0C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_FD9D9A:   Call 0.Method_arg_24 (CLng(var_D8))
  loc_FD9DAF:   Me.cdialogrepview.FileName = 
  loc_FD9DBD:   Call 0.Method_arg_3C (CStr())
  loc_FD9DCD:   Set var_D4 = Nothing 
  loc_FD9DEC:   If (CInt(Me.cdialogrepview.FilterIndex) = 6) Then
  loc_FD9DEF:     var_94 = True
  loc_FD9DFB:     Call global_52.Export
  loc_FD9E04:   Else
  loc_FD9E04:     var_94 = False
  loc_FD9E11:     Call global_52.Export
  loc_FD9E17:   End If
  loc_FD9E17:   ' Referenced from: FD9C6F
  loc_FD9E17: End If
  loc_FD9E17: Exit Sub
  loc_FD9E18: Exit Sub
End Sub

Private Sub Command2_Click(Index As Integer) 'EB9BD0
  'Data Table: 420810
  Dim var_86 As Integer
  Dim MeFF As Double
  loc_EB9B2C: On Error Resume Next
  loc_EB9B34: var_86 = Index
  loc_EB9B3F: If (var_86 = 0) Then
  loc_EB9B48:   Set var_8C = Me.CRViewer1
  loc_EB9B4E:   Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_0(var_86)
  loc_EB9B5C: Else
  loc_EB9B64:   If (var_86 = 1) Then
  loc_EB9B6D:     Set var_8C = Me.CRViewer1
  loc_EB9B73:     Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EB9B81:   Else
  loc_EB9B89:     If (var_86 = 2) Then
  loc_EB9B92:       Set var_8C = Me.CRViewer1
  loc_EB9B98:       Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EB9BA6:     Else
  loc_EB9BAE:       If (var_86 = 3) Then
  loc_EB9BB7:         Set var_8C = Me.CRViewer1
  loc_EB9BBD:         Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_0()
  loc_EB9BC8:       End If
  loc_EB9BC8:     End If
  loc_EB9BC8:   End If
  loc_EB9BC8: End If
  loc_EB9BCC: Exit Sub
  loc_EB9BCD: MeFF = 
End Sub

Private Sub Command1_UnknownEvent_9 'E16688
  'Data Table: 420810
  loc_E1667D: Me.Global.Unload Me
  loc_E16685: Exit Sub
End Sub

Public Property Let RepTitle(vNewValue) 'E0D54C
  'Data Table: 420810
  loc_E0D544: global_68 = vNewValue
  loc_E0D548: Exit Sub
End Sub

Public Property Get RepTitle() 'E0C424
  'Data Table: 420810
  loc_E0C418: var_88 = global_68
  loc_E0C41B: RepTitle = 
End Sub

Public Property Let Rep_Set(mREPORT) 'E5B7AC
  'Data Table: 420810
  loc_E5B774: SetVarVar
  loc_E5B77C: CUnkVar
  loc_E5B77E: CVarUnk
  loc_E5B787: Set var_B8 = Me.CRViewer1
  loc_E5B78D: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_FA(mREPORT)
  loc_E5B799: Set var_B8 = Me.CRViewer1
  loc_E5B79F: Call {33AD4EF3-6699-11CF-B70C00AA0060D393}.DispID_0(global_52)
  loc_E5B7AA: Exit Sub
End Sub

Public Sub Proc_204_11_EB1F0C(arg_C) 'EB1F0C
  'Data Table: 420810
  loc_EB1E75: If (CInt(arg_C) = 1) Then
  loc_EB1E7F:   var_86 = CByte(5) 'Byte
  loc_EB1E86: Else
  loc_EB1E8F:   If (CInt(arg_C) = 2) Then
  loc_EB1E99:     var_86 = CByte(&H1D) 'Byte
  loc_EB1EA0:   Else
  loc_EB1EA9:     If (CInt(arg_C) = 3) Then
  loc_EB1EB3:       var_86 = CByte(8) 'Byte
  loc_EB1EBA:     Else
  loc_EB1EC3:       If (CInt(arg_C) = 4) Then
  loc_EB1ECD:         var_86 = CByte(&HE) 'Byte
  loc_EB1ED4:       Else
  loc_EB1EDD:         If (CInt(arg_C) = 5) Then
  loc_EB1EE7:           var_86 = CByte(&H1F) 'Byte
  loc_EB1EEE:         Else
  loc_EB1EF7:           If (CInt(arg_C) = 6) Then
  loc_EB1F01:             var_86 = CByte(0) 'Byte
  loc_EB1F05:           End If
  loc_EB1F05:         End If
  loc_EB1F05:       End If
  loc_EB1F05:     End If
  loc_EB1F05:   End If
  loc_EB1F05: End If
  loc_EB1F05: Proc_204_11_EB1F0C = 
End Sub

Public Sub Proc_204_12_F4A668
  'Data Table: 420810
  Dim var_B4 As CommonDialog
  Dim var_B0 As Variant
  loc_F4A568: Me.cdialogrepview.Filter = CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|")
  loc_F4A586: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_F4A5AD: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_F4A5C6: If (CStr() <> vbNullString) Then
  loc_F4A5E2:   Set var_C8 = global_52.ExportOptions 
  loc_F4A5EE:   Call 0.Method_arg_2C (1)
  loc_F4A5FA:   Set var_B4 = (var_CC)
  loc_F4A60E:   Call Proc_204_11_EB1F0C(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_F4A61B:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F4A630:   Me.cdialogrepview.FileName = 
  loc_F4A63E:   Call 0.Method_arg_3C (CStr())
  loc_F4A64E:   Set var_C8 = Nothing 
  loc_F4A652:   var_B0 = False
  loc_F4A65F:   Call global_52.Export
  loc_F4A665: End If
  loc_F4A665: Exit Sub
End Sub
