VERSION 5.00
Begin VB.Form REPVIEW
  Caption = "Form1"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "REPVIEW.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 120
  ClientTop = 405
  ClientWidth = 11880
  ClientHeight = 7365
  LockControls = -1  'True
  Begin BtnEnh CmdExit
    Left = 7995
    Top = 30
    Width = 375
    Height = 345
    TabIndex = 2
  End
  Begin CommandButton cmdExport
    Caption = "&Export"
    Left = 12570
    Top = 420
    Width = 1200
    Height = 450
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CRViewer CRViewer1
    Left = -30
    Top = 30
    Width = 11745
    Height = 7290
    TabIndex = 0
  End
  Begin CommonDialog cdialogrepview
  End
End

Attribute VB_Name = "REPVIEW"


Private Sub Form_Load() 'E77CAC
  'Data Table: 420D18
  loc_E77C53: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_E77C5F: Call 0.Method_arg_7C (CDbl(0))
  loc_E77C6B: Call 0.Method_arg_74 (CDbl(0))
  loc_E77C78: Call 0.Method_MeC (CDbl(7590))
  loc_E77C85: Call 0.Method_Me4 (CDbl(11940))
  loc_E77C93: Call 0.Method_arg_160 (var_88)
  loc_E77CA1: Call 0.Method_arg_164 (var_88)
  loc_E77CA9: Exit Sub
End Sub

Private Sub Form_Resize() 'E8E558
  'Data Table: 420D18
  loc_E8E4E8: Set var_A8 = Me.CRViewer1
  loc_E8E4EE: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(CDbl(0)))
  loc_E8E502: Set var_A8 = Me.CRViewer1
  loc_E8E508: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010003(CVar(CDbl(0)))
  loc_E8E514: Call 0.Method_arg_108 (var_AC)
  loc_E8E525: Set var_A8 = Me.CRViewer1
  loc_E8E52B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010006(CVar(var_AC))
  loc_E8E537: Call 0.Method_arg_100 (var_AC)
  loc_E8E548: Set var_A8 = Me.CRViewer1
  loc_E8E54E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010005(CVar(var_AC))
  loc_E8E556: Exit Sub
End Sub

Private Sub Form_Terminate() 'E7CCF4
  'Data Table: 420D18
  loc_E7CC98: On Error Resume Next
  loc_E7CCA3: var_88 = ParentFormRef
  loc_E7CCC3: If (Form.Name = "FrmBdayLookup") Then
  loc_E7CCDF:   var_88 = ParentFormRef
  loc_E7CCE7:   Form.Show 1, CVar(MemVar_1F92244)
  loc_E7CCEF: End If
  loc_E7CCF3: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_10 'E144B0
  'Data Table: 420D18
  Dim var_94 As Integer
  loc_E14498: var_94 = 0
  loc_E144A6: Call global_52.PrinterSetup
  loc_E144AC: Exit Sub
End Sub

Private Sub CRViewer1_UnknownEvent_21 'FCB3E8
  'Data Table: 420D18
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim var_B8 As String
  Dim var_C8 As Variant
  loc_FCB247: Me.cdialogrepview.CancelError = True
  loc_FCB24F: On Error Goto loc_FCB3E6
  loc_FCB267: var_C8 = CVar("CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Word Document(*.doc)|*.doc") 'String
  loc_FCB275: Me.cdialogrepview.Filter = var_C8
  loc_FCB2AC: var_B8 = Replace(RepTitle, "/", "_", 1, -1, 0)
  loc_FCB2AF: RepTitle = "CSV (Comma delimited)(*.csv)|*.csv|" & "Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|"
  loc_FCB2CB: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_FCB2DE: var_C8 = CVar(RepTitle) 'String
  loc_FCB2E6: Set var_A8 = Me.cdialogrepview
  loc_FCB307: Me.cdialogrepview.FilterIndex = 2
  loc_FCB32E: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_FCB347: If (CStr(cdialogrepview.DispID_1) <> vbNullString) Then
  loc_FCB350:   var_C8 = global_52.ExportOptions
  loc_FCB363:   Set var_CC = var_C8 
  loc_FCB36F:   Call 0.Method_arg_2C (1, var_C8)
  loc_FCB37B:   Set var_A8 = 0(var_D0)
  loc_FCB38F:   Call Proc_2_12_E7D4EC(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_FCB39C:   Call 0.Method_arg_24 (CLng(var_D0))
  loc_FCB3B1:   Me.cdialogrepview.FileName = 
  loc_FCB3BF:   Call 0.Method_arg_3C (CStr())
  loc_FCB3CF:   Set var_CC = Nothing 
  loc_FCB3D3:   var_94 = False
  loc_FCB3E0:   Call global_52.Export
  loc_FCB3E6:   ' Referenced from: FCB24F
  loc_FCB3E6: End If
  loc_FCB3E6: Exit Sub
  loc_FCB3E7: Exit Sub
End Sub

Private Sub cmdExport_Click() 'F3D148
  'Data Table: 420D18
  Dim var_B4 As CommonDialog
  Dim var_B0 As Variant
  Dim var_5F01 As Variant
  loc_F3D048: Me.cdialogrepview.Filter = CVar("Excel Files(*.xls)|*.xls|" & "Plain Text(*.txt)|*.txt|" & "Microsoft Mail(*.MAPI)|*.MAPI|")
  loc_F3D066: Me.cdialogrepview.DialogTitle = "Select File Name"
  loc_F3D08D: Me.cdialogrepview.FileName = Me.cdialogrepview._Action
  loc_F3D0A6: If (CStr() <> vbNullString) Then
  loc_F3D0C2:   Set var_C8 = global_52.ExportOptions 
  loc_F3D0CE:   Call 0.Method_arg_2C (1)
  loc_F3D0DA:   Set var_B4 = (var_CC)
  loc_F3D0EE:   Call Proc_2_12_E7D4EC(CByte(CInt(global_52.cdialogrepview.FilterIndex)))
  loc_F3D0FB:   Call 0.Method_arg_24 (CLng(var_CC))
  loc_F3D110:   Me.cdialogrepview.FileName = 
  loc_F3D11E:   Call 0.Method_arg_3C (CStr())
  loc_F3D12E:   Set var_C8 = Nothing 
  loc_F3D132:   var_B0 = False
  loc_F3D13F:   Call global_52.Export
  loc_F3D145: End If
  loc_F3D145: Exit Sub
  loc_F3D146: var_5F01 = CVar(var_B0) 'Integer
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19998
  'Data Table: 420D18
  loc_E1998D: Me.Global.Unload Me
  loc_E19995: Exit Sub
End Sub

Public Property Let ParentFormRef(vNewValue) 'E14854
  'Data Table: 420D18
  loc_E1484D: Set global_68 = vNewValue
  loc_E14851: Exit Sub
End Sub

Public Property Get ParentFormRef() 'E146EC
  'Data Table: 420D18
  loc_E146E0: Set var_88 = global_68 
  loc_E146E4: ParentFormRef = 
End Sub

Public Property Let RepTitle(vNewValue) 'E146A4
  'Data Table: 420D18
  loc_E1469C: global_72 = vNewValue
  loc_E146A0: Exit Sub
End Sub

Public Property Get RepTitle() 'E1465C
  'Data Table: 420D18
  loc_E14650: var_88 = global_72
  loc_E14653: RepTitle = 
  loc_E14659: Exit Sub
End Sub

Public Property Let Rep_Set(mREPORT) 'E5B6BC
  'Data Table: 420D18
  loc_E5B684: SetVarVar
  loc_E5B68C: CUnkVar
  loc_E5B68E: CVarUnk
  loc_E5B697: Set var_B8 = Me.CRViewer1
  loc_E5B69D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FA(mREPORT)
  loc_E5B6A9: Set var_B8 = Me.CRViewer1
  loc_E5B6AF: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_0(global_52)
  loc_E5B6BA: Exit Sub
End Sub

Public Sub Proc_2_12_E7D4EC(arg_C) 'E7D4EC
  'Data Table: 420D18
  loc_E7D489: If (CInt(arg_C) = 1) Then
  loc_E7D493:   var_86 = CByte(5) 'Byte
  loc_E7D49A: Else
  loc_E7D4A3:   If (CInt(arg_C) = 2) Then
  loc_E7D4AD:     var_86 = CByte(&H1D) 'Byte
  loc_E7D4B4:   Else
  loc_E7D4BD:     If (CInt(arg_C) = 3) Then
  loc_E7D4C7:       var_86 = CByte(8) 'Byte
  loc_E7D4CE:     Else
  loc_E7D4D7:       If (CInt(arg_C) = 4) Then
  loc_E7D4E1:         var_86 = CByte(&HE) 'Byte
  loc_E7D4E5:       End If
  loc_E7D4E5:     End If
  loc_E7D4E5:   End If
  loc_E7D4E5: End If
  loc_E7D4E5: Proc_2_12_E7D4EC = 
End Sub
