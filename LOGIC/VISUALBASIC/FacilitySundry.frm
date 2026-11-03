VERSION 5.00
Begin VB.Form FacilitySundry
  Caption = "Outlet Bill Sundry Setting"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11340
  ClientHeight = 7230
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11340
    Height = 420
    TabIndex = 19
  End
  Begin Frame PwdFrame
    Caption = "Change Password"
    Left = 6210
    Top = 5745
    Width = 3570
    Height = 1230
    Visible = 0   'False
    TabIndex = 17
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdChange
      Caption = "Change"
      Left = 855
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdCancel
      Caption = "Cancel"
      Left = 1845
      Top = 705
      Width = 780
      Height = 330
      Visible = 0   'False
      TabIndex = 15
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 2
      Left = 1590
      Top = 285
      Width = 1245
      Height = 285
      TabIndex = 13
      PasswordChar = "*"
      MaxLength = 8
    End
    Begin Label Label1
      Caption = "New Password"
      Left = 255
      Top = 300
      Width = 1140
      Height = 285
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox txtPassword
    ForeColor = &HFF0000&
    Left = 1080
    Top = 6540
    Width = 1365
    Height = 315
    TabIndex = 11
    PasswordChar = "#"
  End
  Begin Frame Frame1
    Left = 11040
    Top = 1815
    Width = 555
    Height = 2040
    TabIndex = 8
    BorderStyle = 0 'None
    Begin CommandButton CmdUp
      Caption = "á"
      BackColor = &H808080&
      Left = 90
      Top = 270
      Width = 390
      Height = 630
      TabIndex = 10
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton CmdDown
      Caption = "â"
      BackColor = &H808080&
      Left = 83
      Top = 1125
      Width = 390
      Height = 630
      TabIndex = 9
      BeginProperty Font
        Name = "Wingdings"
        Size = 12
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin DataGrid DGSundry
    Left = 9945
    Top = 1815
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 3
  End
  Begin DataGrid DGRevenue
    Left = 9555
    Top = 1530
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGVType
    Left = 9240
    Top = 1215
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 600
    Width = 1425
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 1200
    Width = 10890
    Height = 4275
    TabIndex = 2
  End
  Begin CommandButton CmdPwd
    Caption = "Change Password"
    Left = 3030
    Top = 6540
    Width = 1725
    Height = 330
    Visible = 0   'False
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Label LblName
    Caption = "Password"
    Index = 2
    ForeColor = &HFF0000&
    Left = 30
    Top = 6540
    Width = 945
    Height = 240
    TabIndex = 16
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 5730
    Top = 420
    Width = 3885
    Height = 510
    Visible = 0   'False
    TabIndex = 7
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 18
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 600
    Width = 780
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FacilitySundry"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_70 As Integer

Private Sub Txt_GotFocus(Index As Integer) 'E51A44
  'Data Table: 4E008C
  loc_E51A1E: Set var_88 = Me.Txt
  loc_E51A24: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E51A32: Proc_6_74_E226B0(var_8C)
  loc_E51A3E: Call Proc_328_61_EB8EE8(var_8C)
  loc_E51A43: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'EE16F8
  'Data Table: 4E008C
  loc_EE164E: If (CLng(Shift) = &H1B) Then
  loc_EE1651:   Call Proc_328_61_EB8EE8()
  loc_EE1656:   Exit Sub
  loc_EE1657: End If
  loc_EE16AD: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_EE16C5:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_EE16CE:     Proc_6_75_E527CC(Shift)
  loc_EE16D3:   End If
  loc_EE16E8:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_EE16F1:     Proc_6_76_E52838(Shift, arg_14)
  loc_EE16F6:   End If
  loc_EE16F6: End If
  loc_EE16F6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E08040
  'Data Table: 4E008C
  Dim var_86 As Integer
  loc_E08033: Proc_6_58_E054C0(arg_10)
  loc_E0803B: var_86 = KeyAscii
  loc_E0803E: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50284
  'Data Table: 4E008C
  loc_E50262: Set var_88 = Me.Txt
  loc_E50268: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E50276: Proc_6_73_E22704(var_8C)
  loc_E50282: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD049C
  'Data Table: 4E008C
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_A0 As TextBox
  Dim var_A4 As String
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_8C As MSHFlexGrid
  loc_FD0302: If (Cancel = CInt(1)) Then
  loc_FD0310:   Set var_8C = Me.Txt
  loc_FD0316:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD033F:   If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_FD034D:     Set var_8C = Me.Txt
  loc_FD0353:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD035B:     var_90.SetFocus
  loc_FD0369:     arg_10 = &HFF
  loc_FD036C:     Exit Sub
  loc_FD036D:   End If
  loc_FD0377:   Set var_8C = Me.Txt
  loc_FD037D:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD039D:   Set var_9C = Me.Txt
  loc_FD03A3:   Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_FD03AB:   var_A0.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_FD03DA:   Me.Recordset15.CursorLocation = 3
  loc_FD0404:   var_A4 = " SELECT DISTINCT RM.Code as Code,RM.Name as NAme,RM.Type FROM RevMast AS RM WHERE  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and RM.FieldType='T'"
  loc_FD0419:   var_B0 = var_A4 & " Union " & " Select Distinct RM.Code as Code,RM.Name as NAme,RM.Type From RevMast RM Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_FD0438:   Me.Open CVar(var_B0 & "' or LOGSITE_CODE='HO') and RM.DeskCode='" & MemVar_1F92078 & "PURC' Order By Name"), CVar(MemVar_1F92044), 3
  loc_FD045A:   CVarUnk
  loc_FD045F:   VerifyVarObj
  loc_FD046B:   LateIdStAd
  loc_FD0479:   Call Proc_328_63_12DED60(Me.DGRevenue, New, 1)
  loc_FD0490:   Me.FGrid.Col = CVar(CLng(1))
  loc_FD0498: End If
  loc_FD0498: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103CD1C
  'Data Table: 4E008C
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103CADB: Me.DGRevenue.Visible = False
  loc_103CAFA: If (Me.RecordCount > 0) Then
  loc_103CB10:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103CB18:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103CB4B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103CB53:   Set var_128 = Me.FGrid
  loc_103CB59:   LateIdCallSt
  loc_103CB88:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103CB90:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103CBC3:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103CBCB:   Set var_128 = Me.FGrid
  loc_103CBD1:   LateIdCallSt
  loc_103CC2C:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103CC42:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103CC4A:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103CC4F:     var_F4 = "+"
  loc_103CC59:     Set var_B0 = Me.FGrid
  loc_103CC5F:     LateIdCallSt
  loc_103CC74:   Else
  loc_103CCB3:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103CCC9:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103CCD1:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103CCD6:       var_F4 = "-"
  loc_103CCE0:       Set var_B0 = Me.FGrid
  loc_103CCE6:       LateIdCallSt
  loc_103CCF8:     End If
  loc_103CCF8:   End If
  loc_103CCF8: End If
  loc_103CD01: Set var_A8 = Me.TxtGrid
  loc_103CD07: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103CD0F: var_B0.SetFocus
  loc_103CD1B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E5188
  'Data Table: 4E008C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E4D10: Call Proc_328_61_EB8EE8()
  loc_11E4D28: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E4D43: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4D4C: Set var_BC = Me.FGrid
  loc_11E4D82: Set var_104 = Me.TxtGrid
  loc_11E4D88: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E4D90: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E4DC1: var_110 = CLng(Me.FGrid.Col)
  loc_11E4DD1: If (var_110 = CLng(3)) Then
  loc_11E4DE3:   Set var_A8 = Me.TxtGrid
  loc_11E4DE9:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E4DF1:   var_BC.MaxLength = var_110
  loc_11E4E3E:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E4E41:     Exit Sub
  loc_11E4E42:   End If
  loc_11E4E55:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4E5D:   var_DC = CVar(CLng(3)) 'Long
  loc_11E4E90:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E4E99:     Me.MoveFirst
  loc_11E4EB1:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E4EB9:     var_DC = CVar(CLng(2)) 'Long
  loc_11E4EC2:     Set var_BC = Me.FGrid
  loc_11E4ED9:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E4F02:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E4F32:     If (Me.EOF = &HFF) Then
  loc_11E4F3B:       Me.MoveFirst
  loc_11E4F40:     End If
  loc_11E4F40:   End If
  loc_11E4F43: Else
  loc_11E4F4A:   If Not (var_110 = CLng(7)) Then
  loc_11E4F54:     If (var_110 = CLng(9)) Then
  loc_11E4F57:     End If
  loc_11E4F66:     Set var_A8 = Me.TxtGrid
  loc_11E4F6C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E4F74:     var_BC.MaxLength = var_DC
  loc_11E4F89:     If (global_70 = 0) Then
  loc_11E4F94:       var_10C = "{Home}+{End}"
  loc_11E4F9A:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E4FA2:     End If
  loc_11E4FA5:   Else
  loc_11E4FAC:     If (var_110 = CLng(4)) Then
  loc_11E4FBE:       Set var_A8 = Me.TxtGrid
  loc_11E4FC4:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E4FCC:       var_BC.MaxLength = var_94
  loc_11E4FDB:     Else
  loc_11E4FE2:       If (var_110 = CLng(5)) Then
  loc_11E4FF4:         Set var_A8 = Me.TxtGrid
  loc_11E4FFA:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E5002:         var_BC.MaxLength = &H32
  loc_11E5011:       Else
  loc_11E5018:         If (var_110 = CLng(&HD)) Then
  loc_11E502A:           Set var_A8 = Me.TxtGrid
  loc_11E5030:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E5038:           var_BC.MaxLength = &H32
  loc_11E5085:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E5088:             Exit Sub
  loc_11E5089:           End If
  loc_11E509C:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E50A4:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E50D7:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E50E0:             Me.MoveFirst
  loc_11E5120:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E5149:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E5179:             If (Me.EOF = &HFF) Then
  loc_11E5182:               Me.MoveFirst
  loc_11E5187:             End If
  loc_11E5187:           End If
  loc_11E5187:         End If
  loc_11E5187:       End If
  loc_11E5187:     End If
  loc_11E5187:   End If
  loc_11E5187: End If
  loc_11E5187: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13F5C58
  'Data Table: 4E008C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13F5228: On Error Goto loc_13F5C50
  loc_13F5235: If (CLng(Shift) = &H1B) Then
  loc_13F5245:   Set var_88 = Me.TxtGrid
  loc_13F524B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F5265:   Set var_94 = Me.TxtGrid
  loc_13F526B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13F5273:   var_98.Text = var_8C.Tag
  loc_13F528F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13F5294:   Call Proc_328_61_EB8EE8(arg_14)
  loc_13F529D:   Set var_88 = Me.FGrid
  loc_13F52BA:   Set var_88 = Me.TxtGrid
  loc_13F52C0:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13F52C8:   var_8C.Visible = False
  loc_13F52D4:   Exit Sub
  loc_13F52D5: End If
  loc_13F52E8: var_AC = CLng(Me.FGrid.Col)
  loc_13F52F8: If (var_AC = CLng(1)) Then
  loc_13F5305:   If (CLng(Shift) = &HD) Then
  loc_13F530E:     Call Proc_328_57_1541504(KeyCode, var_AE)
  loc_13F5319:     If (var_AE = &HFF) Then
  loc_13F5327:       Set var_98 = Me.TxtGrid
  loc_13F5350:       Set var_8C = var_98
  loc_13F535F:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13F536F:     End If
  loc_13F536F:   End If
  loc_13F5372: Else
  loc_13F5379:   If (var_AC = CLng(3)) Then
  loc_13F5388:     Set var_88 = Me.TxtGrid
  loc_13F538E:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13F5396:     3 = var_8C.Left
  loc_13F53AD:     Me.DGSundry.Left = CVar(var_B8)
  loc_13F53C7:     Set var_94 = Me.TxtGrid
  loc_13F53CD:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F53D5:     0 = var_98.Height
  loc_13F53E6:     Set var_88 = Me.TxtGrid
  loc_13F53EC:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F53F4:     var_AC = var_8C.Top
  loc_13F5400:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F540F:     Me.DGSundry.Top = CVar(var_B8)
  loc_13F5439:     Set var_98 = Nothing
  loc_13F5472:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_76, Shift, &HFF)
  loc_13F5490:     If (CLng(Shift) = &HD) Then
  loc_13F5499:       Call Proc_328_57_1541504(KeyCode, var_AE, 1, Nothing)
  loc_13F54A4:       If (var_AE = &HFF) Then
  loc_13F54EA:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13F54FA:       End If
  loc_13F54FA:     End If
  loc_13F54FD:   Else
  loc_13F5504:     If (var_AC = CLng(4)) Then
  loc_13F5547:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5550:         Call Proc_328_57_1541504(KeyCode, var_AE, 0, 4)
  loc_13F555B:         If (var_AE = &HFF) Then
  loc_13F55A1:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F55B1:         End If
  loc_13F55B1:       End If
  loc_13F55B4:     Else
  loc_13F55BB:       If (var_AC = CLng(5)) Then
  loc_13F55FE:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5607:           Call Proc_328_57_1541504(KeyCode, var_AE, 5, 0)
  loc_13F5612:           If (var_AE = &HFF) Then
  loc_13F5658:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5668:           End If
  loc_13F5668:         End If
  loc_13F566B:       Else
  loc_13F5672:         If (var_AC = CLng(6)) Then
  loc_13F56B5:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F56BE:             Call Proc_328_57_1541504(KeyCode, var_AE, 6, 0)
  loc_13F56C9:             If (var_AE = &HFF) Then
  loc_13F570F:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F571F:             End If
  loc_13F571F:           End If
  loc_13F5722:         Else
  loc_13F5729:           If (var_AC = CLng(7)) Then
  loc_13F576C:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5775:               Call Proc_328_57_1541504(KeyCode, var_AE, 7, 0)
  loc_13F5780:               If (var_AE = &HFF) Then
  loc_13F57C6:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F57D6:               End If
  loc_13F57D6:             End If
  loc_13F57D9:           Else
  loc_13F57E0:             If Not (var_AC = CLng(8)) Then
  loc_13F57EA:               If (var_AC = CLng(&H10)) Then
  loc_13F57ED:               End If
  loc_13F582D:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5836:                 Call Proc_328_57_1541504(KeyCode, var_AE, &HC, 0)
  loc_13F5841:                 If (var_AE = &HFF) Then
  loc_13F588E:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, CByte((CInt(&H11) + 1)), 0)
  loc_13F589E:                 End If
  loc_13F589E:               End If
  loc_13F58A1:             Else
  loc_13F58A8:               If (var_AC = CLng(&H11)) Then
  loc_13F58EB:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F58F4:                   Call Proc_328_57_1541504(KeyCode, var_AE, 0, 0)
  loc_13F58FF:                   If (var_AE = &HFF) Then
  loc_13F5945:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5955:                   End If
  loc_13F5955:                 End If
  loc_13F5958:               Else
  loc_13F595F:                 If (var_AC = CLng(9)) Then
  loc_13F59A2:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F59AB:                     Call Proc_328_57_1541504(KeyCode, var_AE, 1, 0)
  loc_13F59B6:                     If (var_AE = &HFF) Then
  loc_13F59FC:                       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5A0C:                     End If
  loc_13F5A0C:                   End If
  loc_13F5A0F:                 Else
  loc_13F5A16:                   If (var_AC = CLng(&HC)) Then
  loc_13F5A59:                     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13F5A62:                       Call Proc_328_57_1541504(KeyCode, var_AE, &HC, 0)
  loc_13F5A6D:                       If (var_AE = &HFF) Then
  loc_13F5A7B:                         Set var_98 = Me.TxtGrid
  loc_13F5AA4:                         Set var_8C = var_98
  loc_13F5AB3:                         Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13F5AC3:                       End If
  loc_13F5AC3:                     End If
  loc_13F5AC6:                   Else
  loc_13F5ACD:                     If (var_AC = CLng(&HD)) Then
  loc_13F5ADC:                       Set var_88 = Me.TxtGrid
  loc_13F5AE2:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13F5AEA:                       0 = var_8C.Left
  loc_13F5B01:                       Me.DGRevenue.Left = CVar(var_B8)
  loc_13F5B1B:                       Set var_94 = Me.TxtGrid
  loc_13F5B21:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13F5B29:                       var_98 = var_98.Height
  loc_13F5B3A:                       Set var_88 = Me.TxtGrid
  loc_13F5B40:                       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13F5B48:                       0 = var_8C.Top
  loc_13F5B54:                       var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13F5B63:                       Me.DGRevenue.Top = CVar(var_B8)
  loc_13F5B8D:                       Set var_98 = Nothing
  loc_13F5BC6:                       Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13F5BE4:                       If (CLng(Shift) = &HD) Then
  loc_13F5BED:                         Call Proc_328_57_1541504(KeyCode, var_AE, 1, Nothing)
  loc_13F5BF8:                         If (var_AE = &HFF) Then
  loc_13F5C40:                           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &H11)
  loc_13F5C50:                         End If
  loc_13F5C50:                       End If
  loc_13F5C50:                     End If
  loc_13F5C50:                   End If
  loc_13F5C50:                 End If
  loc_13F5C50:               End If
  loc_13F5C50:             End If
  loc_13F5C50:           End If
  loc_13F5C50:         End If
  loc_13F5C50:       End If
  loc_13F5C50:       ' Referenced from: 13F5228
  loc_13F5C50:     End If
  loc_13F5C50:   End If
  loc_13F5C50: End If
  loc_13F5C50: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13F5C55: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '11E64F8
  'Data Table: 4E008C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_11E606F: Proc_6_58_E054C0(arg_10)
  loc_11E6080: If (KeyAscii = 0) Then
  loc_11E6096:   var_A0 = CLng(Me.FGrid.Col)
  loc_11E60A6:   If (var_A0 = CLng(3)) Then
  loc_11E60C5:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_11E60CC:       Set var_AC = Me.TxtGrid
  loc_11E60D7:       var_A4 = "Name"
  loc_11E60F2:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_76, arg_10)
  loc_11E6101:     End If
  loc_11E6104:   Else
  loc_11E610B:     If Not (var_A0 = CLng(9)) Then
  loc_11E6115:       If (var_A0 = CLng(7)) Then
  loc_11E6118:       End If
  loc_11E6122:       Set var_8C = Me.TxtGrid
  loc_11E6128:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11E6143:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_11E6152:     Else
  loc_11E6159:       If (var_A0 = CLng(5)) Then
  loc_11E615F:         var_B4 = arg_10
  loc_11E616B:         If Not (&H39 > var_B4 > &H31) Then
  loc_11E6174:           If Not (var_B4 = &H2B) Then
  loc_11E617D:             If Not (var_B4 = &H2D) Then
  loc_11E6186:               If Not (var_B4 = 8) Then
  loc_11E618F:                 If (var_B4 = &H30) Then
  loc_11E6192:                 End If
  loc_11E6192:               End If
  loc_11E6192:             End If
  loc_11E6192:           End If
  loc_11E6195:         Else
  loc_11E6197:           arg_10 = 0
  loc_11E619A:         End If
  loc_11E619D:       Else
  loc_11E61A4:         If (var_A0 = CLng(6)) Then
  loc_11E61B4:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_11E61C4:             Set var_8C = Me.TxtGrid
  loc_11E61CA:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_11E61D2:             var_AC.Text = var_B4
  loc_11E61E0:             arg_10 = 0
  loc_11E61E6:           Else
  loc_11E61F3:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_11E6203:               Set var_8C = Me.TxtGrid
  loc_11E6209:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_11E6211:               var_AC.Text = 0
  loc_11E621F:               arg_10 = 0
  loc_11E6225:             Else
  loc_11E6232:               Set var_8C = Me.TxtGrid
  loc_11E6238:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E6240:               var_AC.Text = arg_10
  loc_11E624E:               arg_10 = 0
  loc_11E6251:             End If
  loc_11E6251:           End If
  loc_11E6254:         Else
  loc_11E625B:           If Not (var_A0 = CLng(8)) Then
  loc_11E6265:             If (var_A0 = CLng(&HC)) Then
  loc_11E6268:             End If
  loc_11E6275:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_11E6285:               Set var_8C = Me.TxtGrid
  loc_11E628B:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E6293:               var_AC.Text = arg_10
  loc_11E62A1:               arg_10 = 0
  loc_11E62A7:             Else
  loc_11E62B4:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_11E62C4:                 Set var_8C = Me.TxtGrid
  loc_11E62CA:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E62D2:                 var_AC.Text = arg_10
  loc_11E62E0:                 arg_10 = 0
  loc_11E62E6:               Else
  loc_11E62F3:                 Set var_8C = Me.TxtGrid
  loc_11E62F9:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_11E6301:                 var_AC.Text = arg_10
  loc_11E630F:                 arg_10 = 0
  loc_11E6312:               End If
  loc_11E6312:             End If
  loc_11E6315:           Else
  loc_11E631C:             If (var_A0 = CLng(&H10)) Then
  loc_11E6348:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_11E6358:                 Set var_8C = Me.TxtGrid
  loc_11E635E:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_11E6366:                 var_AC.Text = arg_10
  loc_11E6374:                 arg_10 = 0
  loc_11E637A:               Else
  loc_11E63A3:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_11E63B3:                   Set var_8C = Me.TxtGrid
  loc_11E63B9:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_11E63C1:                   var_AC.Text = arg_10
  loc_11E63CF:                   arg_10 = 0
  loc_11E63D2:                 End If
  loc_11E63D2:               End If
  loc_11E63D5:             Else
  loc_11E63DC:               If (var_A0 = CLng(&H11)) Then
  loc_11E6408:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11E6418:                   Set var_8C = Me.TxtGrid
  loc_11E641E:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11E6426:                   var_AC.Text = arg_10
  loc_11E6434:                   arg_10 = 0
  loc_11E643A:                 Else
  loc_11E6463:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11E6473:                     Set var_8C = Me.TxtGrid
  loc_11E6479:                     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11E6481:                     var_AC.Text = arg_10
  loc_11E648F:                     arg_10 = 0
  loc_11E6492:                   End If
  loc_11E6492:                 End If
  loc_11E6495:               Else
  loc_11E649C:                 If (var_A0 = CLng(&HD)) Then
  loc_11E64BB:                   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11E64E8:                     Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_80, arg_10, "Name")
  loc_11E64F7:                   End If
  loc_11E64F7:                 End If
  loc_11E64F7:               End If
  loc_11E64F7:             End If
  loc_11E64F7:           End If
  loc_11E64F7:         End If
  loc_11E64F7:       End If
  loc_11E64F7:     End If
  loc_11E64F7:   End If
  loc_11E64F7: End If
  loc_11E64F7: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FC8A44
  'Data Table: 4E008C
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FC8888: On Error Goto loc_FC8A3B
  loc_FC889E: var_9C = CLng(Me.FGrid.Col)
  loc_FC88AE: If (var_9C = CLng(3)) Then
  loc_FC88D4:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FC88E2:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FC88F6:     var_A4 = "Name"
  loc_FC8911:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_76, Shift)
  loc_FC8920:   End If
  loc_FC8923: Else
  loc_FC892A:   If Not (var_9C = CLng(6)) Then
  loc_FC8934:     If Not (var_9C = CLng(8)) Then
  loc_FC893E:       If Not (var_9C = CLng(&HC)) Then
  loc_FC8948:         If Not (var_9C = CLng(5)) Then
  loc_FC8952:           If Not (var_9C = CLng(&H10)) Then
  loc_FC895C:             If (var_9C = CLng(&H11)) Then
  loc_FC895F:             End If
  loc_FC895F:           End If
  loc_FC895F:         End If
  loc_FC895F:       End If
  loc_FC895F:     End If
  loc_FC8965:     If (Shift <> &HD) Then
  loc_FC896E:       Call TxtGrid_KeyPress(KeyCode)
  loc_FC8973:     End If
  loc_FC8976:   Else
  loc_FC897D:     If (var_9C = CLng(&HD)) Then
  loc_FC89A3:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FC89B1:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FC89C5:         var_A4 = "Name"
  loc_FC89E0:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_80, Shift, var_A4, &HFF)
  loc_FC89EF:       End If
  loc_FC89F2:     Else
  loc_FC89F9:       If (var_9C = CLng(5)) Then
  loc_FC89FF:         var_AA = Shift
  loc_FC8A0B:         If Not (&H39 > var_AA > &H31) Then
  loc_FC8A14:           If Not (var_AA = &H2B) Then
  loc_FC8A1D:             If Not (var_AA = &H2D) Then
  loc_FC8A26:               If Not (var_AA = 8) Then
  loc_FC8A2F:                 If (var_AA = &H30) Then
  loc_FC8A32:                 End If
  loc_FC8A32:               End If
  loc_FC8A32:             End If
  loc_FC8A32:           End If
  loc_FC8A35:         Else
  loc_FC8A37:           Shift = 0
  loc_FC8A3A:         End If
  loc_FC8A3A:       End If
  loc_FC8A3A:     End If
  loc_FC8A3A:   End If
  loc_FC8A3A: End If
  loc_FC8A3A: Exit Sub
  loc_FC8A3B: ' Referenced from: FC8888
  loc_FC8A3B: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FC8A40: Exit Sub
  loc_FC8A41: var_A4(&HFF) = 0
  loc_FC8A42: var_9C = 
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E1FEFC
  'Data Table: 4E008C
  Dim arg_10 As Integer
  loc_E1FEE4: If (Cancel = 0) Then
  loc_E1FEED:   Call Proc_328_57_1541504(Cancel, var_88)
  loc_E1FEF6:   arg_10 = Not(var_88)
  loc_E1FEF9: End If
  loc_E1FEF9: Exit Sub
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer) 'E5B030
  'Data Table: 4E008C
  loc_E5AFFD: If ((CLng(KeyCode) = &H28) Or (CLng(KeyCode) = &HD)) Then
  loc_E5B006:   Proc_6_75_E527CC(KeyCode)
  loc_E5B00B: End If
  loc_E5B020: If ((CLng(KeyCode) = &H26) Or (CLng(KeyCode) = &HD)) Then
  loc_E5B029:   Proc_6_76_E52838(KeyCode, Shift)
  loc_E5B02E: End If
  loc_E5B02E: Exit Sub
End Sub

Private Sub txtPassword_Validate(Cancel As Boolean) 'F9B5EC
  'Data Table: 4E008C
  Dim unk_4E00A5 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  loc_F9B4BC: unk_4E00A5.Execute "Select SundryPassword from Enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_B4, -1
  loc_F9B4C7: Set var_88 = var_B8
  loc_F9B4EB: If (var_88.RecordCount > 0) Then
  loc_F9B4FD:   var_B8 = var_88.Fields
  loc_F9B516:   var_8C = Proc_6_38_E68A98(CVar(var_B8.Item("SundryPassword")))
  loc_F9B522: Else
  loc_F9B525:   var_8C = vbNullString
  loc_F9B528: End If
  loc_F9B57B: If CBool(var_B8 Or ((Trim(CVar(Me.txtPassword)) = "india") = CVar(Proc_96_19_EF5154(var_8C, Trim(CVar(Me.txtPassword)))))) Then
  loc_F9B58A:   Me.CmdPwd.Enabled = True
  loc_F9B59A:   Set var_B8 = Me.TopCtrl1
  loc_F9B5A0:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_F9B5AB: Else
  loc_F9B5B8:   Me.txtPassword.Text = vbNullString
  loc_F9B5C9:   Set var_B8 = Me.TopCtrl1
  loc_F9B5CF:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_F9B5E3:   Me.CmdPwd.Enabled = False
  loc_F9B5EB: End If
  loc_F9B5EB: Exit Sub
End Sub

Private Sub Form_Load() '110F6DC
  'Data Table: 4E008C
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_110F384: On Error Goto loc_110F6D4
  loc_110F39D: Proc_6_23_DFBA28(Me, 0)
  loc_110F3AF: Set var_88 = Me.TopCtrl1
  loc_110F3B5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_110F3C3: Call 0.Method_arg_50 (var_B0)
  loc_110F3D3: Set var_88 = Me.TopCtrl1
  loc_110F3D9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_110F3F0: Me.CmdPwd.Enabled = False
  loc_110F3FF: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_110F411: Set var_88 = Me.FGrid
  loc_110F417: var_88.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_110F429: Set global_76 = New 
  loc_110F43B: Me.var_88.CursorLocation = 3
  loc_110F465: var_C0 = CVar("Select Code,Name,Nature,SysYN From SundryMast WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Name") 'String
  loc_110F46F: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_110F483: CVarUnk
  loc_110F488: VerifyVarObj
  loc_110F48E: Set var_88 = Me.DGSundry
  loc_110F494: LateIdStAd
  loc_110F4AC: Set global_80 = New 
  loc_110F4BE: Me.DGSundry.CursorLocation = 3
  loc_110F4E8: var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND (FlagType ='PUR' or FlagType  Is Null) and FlagAMR is NULL Order By Name") 'String
  loc_110F4F2: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_110F506: CVarUnk
  loc_110F50B: VerifyVarObj
  loc_110F511: Set var_88 = Me.DGRevenue
  loc_110F517: LateIdStAd
  loc_110F52F: Set global_72 = New 
  loc_110F541: Me.DGRevenue.CursorLocation = 3
  loc_110F54E: If (MemVar_1F923AC = "A") Then
  loc_110F56F:   var_B0 = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_110F576:   var_C0 = CVar("Select Code,Name,DeskCode,Type From RevMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND V_Type ='FACL' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy'))") 'String
  loc_110F580:   Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_110F58E: Else
  loc_110F596:   If (MemVar_1F923AC = "S") Then
  loc_110F5B0:     var_9C = "Select DISTINCT (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,SITEcODE AS SITE_CODE,LOGSITE_CODE From SundryType SP Where V_Type ='FACL' Order By (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_110F5BC:     Me.Open CVar(MemVar_1F92044), CVar(MemVar_1F92044), 3
  loc_110F5C1:   End If
  loc_110F5C1: End If
  loc_110F5E4: Call Proc_328_60_E87664(Proc_5_1_100CB50("INI", Me, global_72, 1, -1, 1, -1, Me), global_80, 1, -1)
  loc_110F5F7: Set var_88 = Me.TopCtrl1
  loc_110F5FD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_110F60E: Set var_88 = Me.TopCtrl1
  loc_110F614: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_110F62B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_110F633: Call Proc_328_51_12B03D0(Me.TopCtrl1, global_76)
  loc_110F638: Call Proc_328_59_13EB4E8(1)
  loc_110F64F: Me.FGrid.Left = CVar(CDbl(0))
  loc_110F66A: Me.FGrid.Top = CVar(CDbl(1340))
  loc_110F67C: var_C0 = Me.FGrid.Top
  loc_110F68B: Call 0.Method_Me8 (var_C4, var_C0)
  loc_110F69E: var_9C = CVar(((var_C4 - CDbl(2400)) - CDbl(var_C0))) 'Single
  loc_110F6AD: Me.FGrid.Height = CVar(CDbl(1340))
  loc_110F6C5: Set var_88 = Me.TopCtrl1
  loc_110F6CB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(False)
  loc_110F6D3: Exit Sub
  loc_110F6D4: ' Referenced from: 110F384
  loc_110F6D4: Proc_6_60_E62BC4(-1)
  loc_110F6D9: Exit Sub
End Sub

Private Sub Form_Resize() 'DFCBD4
  'Data Table: 4E008C
  loc_DFCBD0: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E57F84
  'Data Table: 4E008C
  loc_E57F4F: Set global_72 = Nothing
  loc_E57F61: Set global_76 = Nothing
  loc_E57F73: Set global_80 = Nothing
  loc_E57F7F: MasterFormExit = 0
  loc_E57F82: Exit Sub
End Sub

Private Sub Form_Activate() 'E4DF98
  'Data Table: 4E008C
  loc_E4DF68: On Error Goto loc_E4DF92
  loc_E4DF6F: Set var_88 = Me.TopCtrl1
  loc_E4DF75: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4DF8A: If (CLng(CInt()) = &H2D) Then
  loc_E4DF8D:   Call TopCtrl1_UnknownEvent_15()
  loc_E4DF92:   ' Referenced from: E4DF68
  loc_E4DF92: End If
  loc_E4DF92: Proc_6_60_E62BC4()
  loc_E4DF97: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E24DB4
  'Data Table: 4E008C
  loc_E24D99: If (MasterFormExit = &HFF) Then
  loc_E24DA9:   Me.Global.Unload Me
  loc_E24DB1: End If
  loc_E24DB1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E283B8
  'Data Table: 4E008C
  loc_E28390: On Error Goto loc_E283B0
  loc_E283A7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E283AF: Exit Sub
  loc_E283B0: ' Referenced from: E28390
  loc_E283B0: Proc_6_60_E62BC4(Shift)
  loc_E283B5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E87310
  'Data Table: 4E008C
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E872B3: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E872C6: Set var_A8 = Me.TxtGrid
  loc_E872CC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E872D4: var_AC.Visible = False
  loc_E872EE: Set var_A8 = Me.TxtGrid
  loc_E872F4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E872FC: var_AC.MaxLength = 0
  loc_E87308: Call Proc_328_61_EB8EE8()
  loc_E8730D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E686E8
  'Data Table: 4E008C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E686A4: Set var_88 = Me.TxtGrid
  loc_E686AA: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E686C4: If (var_8C.Visible = 0) Then
  loc_E686DD:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E686E5: End If
  loc_E686E5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1FCC0
  'Data Table: 4E008C
  loc_E1FCB7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FCBF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF83C
  'Data Table: 4E008C
  loc_DFF834: Call Proc_328_56_E44370()
  loc_DFF839: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1238800
  'Data Table: 4E008C
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_12382D4: Set var_88 = Me.TopCtrl1
  loc_12382DA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_123831F: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_1238328:   Call Form_KeyDown(KeyCode, Shift)
  loc_123832D: End If
  loc_1238331: Set var_88 = Me.TopCtrl1
  loc_1238337: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1238350: If (CStr() = "Browse") Then
  loc_1238353:   Exit Sub
  loc_1238354: End If
  loc_1238371: var_C4 = Me.FGrid.Rows
  loc_12383C8: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_12383DE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_12383EE:   var_9C = "+{Tab}"
  loc_12383F4:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_12383FE:   KeyCode = 0
  loc_1238404: Else
  loc_123840E:   var_B0 = Me.FGrid.Rows
  loc_123845B:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1238471:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1238487:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_1238491:     KeyCode = 0
  loc_12384CB:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_12384CE:       Call TopCtrl1_UnknownEvent_16()
  loc_12384D3:     End If
  loc_12384D3:   End If
  loc_12384D3: End If
  loc_12384D9: global_68 = KeyCode
  loc_12384FF: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1238523: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1238539:   var_11C = CLng(Me.FGrid.Col)
  loc_1238549:   If (var_11C = CLng(3)) Then
  loc_123855F:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1238567:     var_F8 = CVar(CLng(3)) 'Long
  loc_123856C:     var_12C = vbNullString
  loc_1238576:     Set var_A0 = Me.FGrid
  loc_123857C:     LateIdCallSt
  loc_12385A1:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12385A9:     var_F8 = CVar(CLng(2)) 'Long
  loc_12385AE:     var_12C = vbNullString
  loc_12385B8:     Set var_A0 = Me.FGrid
  loc_12385BE:     LateIdCallSt
  loc_12385E3:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12385EB:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_12385F0:     var_12C = vbNullString
  loc_12385FA:     Set var_A0 = Me.FGrid
  loc_1238600:     LateIdCallSt
  loc_1238625:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123862D:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1238632:     var_12C = vbNullString
  loc_123863C:     Set var_A0 = Me.FGrid
  loc_1238642:     LateIdCallSt
  loc_1238657:   Else
  loc_123865E:     If Not (var_11C = CLng(1)) Then
  loc_1238668:       If Not (var_11C = CLng(4)) Then
  loc_1238672:         If Not (var_11C = CLng(5)) Then
  loc_123867C:           If Not (var_11C = CLng(6)) Then
  loc_1238686:             If Not (var_11C = CLng(7)) Then
  loc_1238690:               If Not (var_11C = CLng(8)) Then
  loc_123869A:                 If Not (var_11C = CLng(9)) Then
  loc_12386A4:                   If Not (var_11C = CLng(&HC)) Then
  loc_12386AE:                     If (var_11C = CLng(&H10)) Then
  loc_12386B1:                     End If
  loc_12386B1:                   End If
  loc_12386B1:                 End If
  loc_12386B1:               End If
  loc_12386B1:             End If
  loc_12386B1:           End If
  loc_12386B1:         End If
  loc_12386B1:       End If
  loc_12386C4:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12386DC:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12386E1:       var_12C = vbNullString
  loc_12386EB:       Set var_B4 = Me.FGrid
  loc_12386F1:       LateIdCallSt
  loc_123870C:     Else
  loc_1238713:       If Not (var_11C = CLng(&HD)) Then
  loc_123871D:         If (var_11C = CLng(&H11)) Then
  loc_1238720:         End If
  loc_1238733:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123873B:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1238740:         var_12C = vbNullString
  loc_123874A:         Set var_A0 = Me.FGrid
  loc_1238750:         LateIdCallSt
  loc_1238775:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_123877D:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1238782:         var_12C = vbNullString
  loc_123878C:         Set var_A0 = Me.FGrid
  loc_1238792:         LateIdCallSt
  loc_12387B7:         var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12387BF:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_12387C4:         var_12C = vbNullString
  loc_12387CE:         Set var_A0 = Me.FGrid
  loc_12387D4:         LateIdCallSt
  loc_12387E6:       End If
  loc_12387E6:     End If
  loc_12387E6:   End If
  loc_12387E6: End If
  loc_12387EC: If (KeyCode = &HD) Then
  loc_12387F4:   global_70 = 0
  loc_12387F7: End If
  loc_12387F9: KeyCode = 0
  loc_12387FC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10250
  'Data Table: 4E008C
  loc_E10241: Call FGrid_UnknownEvent_C()
  loc_E1024B: global_70 = 0
  loc_E1024E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '119243C
  'Data Table: 4E008C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_119204C: Set var_88 = Me.TopCtrl1
  loc_1192052: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_119206B: If (CStr() = "Browse") Then
  loc_119206E:   Exit Sub
  loc_119206F: End If
  loc_1192073: Set var_88 = Me.TopCtrl1
  loc_1192079: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1192092: If (CStr() = "Browse") Then
  loc_1192095:   Exit Sub
  loc_1192096: End If
  loc_11920A9: var_A0 = CLng(Me.FGrid.Col)
  loc_11920B9: If Not (var_A0 = CLng(3)) Then
  loc_11920C3:   If Not (var_A0 = CLng(4)) Then
  loc_11920CD:     If Not (var_A0 = CLng(&HD)) Then
  loc_11920D7:       If Not (var_A0 = CLng(6)) Then
  loc_11920E1:         If Not (var_A0 = CLng(8)) Then
  loc_11920EB:           If Not (var_A0 = CLng(&HC)) Then
  loc_11920F5:             If Not (var_A0 = CLng(&H10)) Then
  loc_11920FF:               If (var_A0 = CLng(&H11)) Then
  loc_1192102:               End If
  loc_1192102:             End If
  loc_1192102:           End If
  loc_1192102:         End If
  loc_1192102:       End If
  loc_1192102:     End If
  loc_1192102:   End If
  loc_1192106:   Set var_C4 = Me.FGrid
  loc_119212A:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1192157:   Set var_B4 = var_C4
  loc_1192169:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_1192191:   Set var_88 = Me.TxtGrid
  loc_1192197:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_119219F:   0 = var_B4.Text
  loc_11921B8:   If (Len(var_9C) <= 1) Then
  loc_11921C7:     Set var_88 = Me.TxtGrid
  loc_11921CD:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11921D5:     var_CA = var_B4.Text
  loc_11921E6:     Set var_B8 = Me.TxtGrid
  loc_11921EC:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11921F4:     var_C4.Text = var_9C
  loc_1192207:   End If
  loc_1192213:   Set var_88 = Me.TxtGrid
  loc_1192219:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1192233:   Set var_B8 = Me.TxtGrid
  loc_1192239:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1192241:   var_C4.SelStart = Len(var_B4.Text)
  loc_1192257: Else
  loc_119225E:   If (var_A0 = CLng(5)) Then
  loc_119229F:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_11922B4:   Else
  loc_11922BB:     If Not (var_A0 = CLng(1)) Then
  loc_11922C5:       If Not (var_A0 = CLng(9)) Then
  loc_11922CF:         If (var_A0 = CLng(7)) Then
  loc_11922D2:         End If
  loc_11922D2:       End If
  loc_11922D6:       Set var_C4 = Me.FGrid
  loc_11922FA:       var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_1192303:       var_CA = Asc(var_9C)
  loc_1192327:       Set var_B4 = var_C4
  loc_1192339:       Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF, var_CA)
  loc_1192361:       Set var_88 = Me.TxtGrid
  loc_1192367:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, 0, var_CA)
  loc_119236F:       0 = var_B4.Text
  loc_1192388:       If (Len(var_9C) <= 1) Then
  loc_1192397:         Set var_88 = Me.TxtGrid
  loc_119239D:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_11923A5:         KeyCode = var_B4.Text
  loc_11923B6:         Set var_B8 = Me.TxtGrid
  loc_11923BC:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_9C)
  loc_11923C4:         var_C4.Text = 0
  loc_11923D7:       End If
  loc_11923E3:       Set var_88 = Me.TxtGrid
  loc_11923E9:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1192403:       Set var_B8 = Me.TxtGrid
  loc_1192409:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1192411:       var_C4.SelStart = Len(var_B4.Text)
  loc_1192424:     End If
  loc_1192424:   End If
  loc_1192424: End If
  loc_119242E: If (CLng(KeyCode) <> &HD) Then
  loc_1192436:   global_70 = &HFF
  loc_1192439: End If
  loc_1192439: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1049ABC
  'Data Table: 4E008C
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_11C As MSHFlexGrid
  loc_1049868: Set var_94 = Me.TopCtrl1
  loc_104986E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1049887: If (CStr() = "Browse") Then
  loc_104988A:   Exit Sub
  loc_104988B: End If
  loc_104988F: Set var_94 = Me.TopCtrl1
  loc_1049895: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10498AE: If (CStr() = "Edit") Then
  loc_10498B1:   Exit Sub
  loc_10498B2: End If
  loc_10498CF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10498D2:   Exit Sub
  loc_10498D3: End If
  loc_10498E4: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_1049906:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1049940:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F8, var_118) = 6) Then
  loc_1049962:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1049978:         var_B8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1049980:         var_E8 = CVar(CLng(1)) 'Long
  loc_10499D3:         Set var_11C = Me.FGrid
  loc_10499EB:         Call Proc_328_52_E7FDE0(FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)), CInt(Val(CStr(Me.FGrid.TextMatrix)))))
  loc_10499F3:       Else
  loc_1049A06:         Me.FGrid.Rows = 1
  loc_1049A2C:         var_A4 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(1)))) 'String
  loc_1049A34:         Set var_11C = Me.FGrid
  loc_1049A61:         Me.FGrid.FixedRows = 1
  loc_1049A69:       End If
  loc_1049A69:     End If
  loc_1049A6C:   Else
  loc_1049A8D:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F8, var_118)
  loc_1049A9D:   End If
  loc_1049AA1:   Set var_94 = Me.FGrid
  loc_1049AB2: End If
  loc_1049AB7: Set var_8C = Nothing
  loc_1049ABA: Exit Sub
  loc_1049ABB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1FBD0
  'Data Table: 4E008C
  loc_E1FBC7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1FBCF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1FD10
  'Data Table: 4E008C
  loc_E1FD07: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1FD0F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E43FF0
  'Data Table: 4E008C
  Dim var_8C As TextBox
  loc_E43FC4: Call Proc_328_61_EB8EE8()
  loc_E43FD4: Set var_88 = Me.TxtGrid
  loc_E43FDA: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E43FE2: var_8C.Visible = False
  loc_E43FEE: Exit Sub
End Sub

Private Sub CmdPwd_Click() 'EC8E64
  'Data Table: 4E008C
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim arg_14FF As Double
  loc_EC8DC4: Me.PwdFrame.Visible = True
  loc_EC8DEB: Set var_90 = Me.PwdFrame
  loc_EC8DF1: var_90.Left = (Me.CmdPwd.Width + CDbl(1455))
  loc_EC8E09: Me.CmdChange.Visible = True
  loc_EC8E1D: Me.CmdCancel.Visible = True
  loc_EC8E31: Me.CmdPwd.Enabled = False
  loc_EC8E47: Set var_88 = Me.Txt
  loc_EC8E4D: Call 0.Method_CmdPwd_Click0 (CInt(2), var_90)
  loc_EC8E55: var_90.Text = vbNullString
  loc_EC8E61: Exit Sub
  loc_EC8E62: arg_14FF = 
End Sub

Private Sub cmdCancel_Click() 'E67DE4
  'Data Table: 4E008C
  loc_E67D9D: Me.txtPassword.Text = vbNullString
  loc_E67DB1: Me.PwdFrame.Visible = False
  loc_E67DC5: Me.CmdCancel.Visible = False
  loc_E67DD9: Me.CmdChange.Visible = False
  loc_E67DE1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E7F8DC
  'Data Table: 4E008C
  Dim var_94 As TextBox
  loc_E7F878: On Error Goto loc_E7F8D4
  loc_E7F89E: Call Proc_328_60_E87664(Proc_5_1_100CB50("ADD", Me))
  loc_E7F8A9: Call Proc_328_58_F2A080(global_72)
  loc_E7F8B9: Set var_8C = Me.Txt
  loc_E7F8BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_E7F8C7: var_94.SetFocus
  loc_E7F8D3: Exit Sub
  loc_E7F8D4: ' Referenced from: E7F878
  loc_E7F8D4: Proc_6_60_E62BC4(var_94)
  loc_E7F8D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EE8934
  'Data Table: 4E008C
  loc_EE8878: On Error Goto loc_EE892D
  loc_EE88B2: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE88D8:   Call Proc_328_60_E87664(Proc_5_1_100CB50("INI", Me))
  loc_EE88EB:   Set var_10C = Me.TopCtrl1
  loc_EE88F1:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030019(True)
  loc_EE8902:   Set var_10C = Me.TopCtrl1
  loc_EE8908:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016(False)
  loc_EE8919:   Set var_10C = Me.TopCtrl1
  loc_EE891F:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_EE8927:   Call Proc_328_59_13EB4E8(global_72)
  loc_EE892C: End If
  loc_EE892C: Exit Sub
  loc_EE892D: ' Referenced from: EE8878
  loc_EE892D: Proc_6_60_E62BC4()
  loc_EE8932: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B580
  'Data Table: 4E008C
  loc_E1B575: Me.Global.Unload Me
  loc_E1B57D: Exit Sub
  loc_E1B57E: Set arg_1400 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ED9E10
  'Data Table: 4E008C
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_ED9D60: On Error Goto loc_ED9E0A
  loc_ED9D7A: If (Me.RecordCount <= 0) Then
  loc_ED9D83:   var_B8 = "Information"
  loc_ED9D9E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ED9DAE:   Exit Sub
  loc_ED9DAF: End If
  loc_ED9DB7: If (MemVar_1F923AC = "A") Then
  loc_ED9DBD:   MemVar_1F920E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')) AS SearchCode,VT.Description,SP.AppDate,CSTR(SP.SNo) As SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_ED9DC4: Else
  loc_ED9DCC:   If (MemVar_1F923AC = "S") Then
  loc_ED9DD2:     MemVar_1F920E4 = "Select (SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue,PostYN From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_ED9DD6:   End If
  loc_ED9DD6: End If
  loc_ED9DDC: MemVar_1F92120 = Me
  loc_ED9DE9: Proc_6_126_F1BCC0("2000,1000,1000,2000,2000,2000,2000")
  loc_ED9E04: Call 0.Method_arg_2B0 (1)
  loc_ED9E09: Exit Sub
  loc_ED9E0A: ' Referenced from: ED9D60
  loc_ED9E0A: Proc_6_60_E62BC4(var_B8)
  loc_ED9E0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35AD8
  'Data Table: 4E008C
  loc_E35AC8: Proc_5_0_110649C(&HFF, Me)
  loc_E35AD0: Call Proc_328_59_13EB4E8(global_72)
  loc_E35AD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E360D8
  'Data Table: 4E008C
  Dim arg_14FF As Double
  loc_E360C8: Proc_5_0_110649C(&HFF, Me)
  loc_E360D0: Call Proc_328_59_13EB4E8(global_72)
  loc_E360D5: Exit Sub
  loc_E360D6: arg_14FF = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E362B8
  'Data Table: 4E008C
  loc_E362A8: Proc_5_0_110649C(&HFF, Me)
  loc_E362B0: Call Proc_328_59_13EB4E8(global_72)
  loc_E362B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36378
  'Data Table: 4E008C
  loc_E36368: Proc_5_0_110649C(&HFF, Me)
  loc_E36370: Call Proc_328_59_13EB4E8(global_72)
  loc_E36375: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E20880
  'Data Table: 4E008C
  Dim Me As Recordset15
  loc_E20867: Me.Requery -1
  loc_E20877: Me.Requery -1
  loc_E2087C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '151F1D0
  'Data Table: 4E008C
  Dim var_8A As Variant
  Dim var_90 As Variant
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_130 As Variant
  Dim var_94 As Variant
  Dim var_9C As Variant
  Dim unk_4E00A5 As Connection15
  Dim var_170 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_160 As Variant
  Dim var_1A8 As Variant
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_390 As Variant
  Dim var_3B0 As Variant
  Dim var_434 As Variant
  Dim var_454 As Variant
  Dim var_4D8 As Variant
  Dim var_4F8 As Variant
  Dim var_570 As Variant
  Dim var_590 As Variant
  Dim var_628 As Variant
  Dim var_648 As Variant
  Dim var_6BC As Variant
  Dim var_6DC As Variant
  Dim var_794 As Variant
  Dim var_828 As Variant
  Dim var_8BC As Variant
  Dim var_97C As Variant
  Dim var_9EC As Variant
  Dim var_AB0 As Variant
  Dim var_AD0 As Variant
  Dim var_1DC As String
  Dim var_110 As Variant
  Dim var_190 As Variant
  Dim var_1C8 As Variant
  Dim var_360 As Variant
  Dim var_540 As Variant
  Dim var_720 As Variant
  Dim var_B14 As Variant
  Dim Me As Recordset15
  loc_151E3DC: On Error Goto loc_151F17C
  loc_151E3E3: var_86 = CByte(0) 'Byte
  loc_151E3EA: Call Proc_328_64_E7D88C(var_8C)
  loc_151E3F5: If (var_8C = 0) Then
  loc_151E3F8:   Exit Sub
  loc_151E3F9: End If
  loc_151E404: Set var_90 = Me.Txt
  loc_151E40A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_151E433: If (Proc_6_27_EA565C(var_94, "App. Date") = 0) Then
  loc_151E43D:   Call Txt_GotFocus(CInt(1))
  loc_151E442:   Exit Sub
  loc_151E443: End If
  loc_151E446: Call Proc_328_54_F7BFCC(var_8C)
  loc_151E451: If (var_8C = &HFF) Then
  loc_151E454:   Exit Sub
  loc_151E455: End If
  loc_151E47F: For var_B0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_B0 'Integer
  loc_151E489:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E491:   var_E0 = CVar(CLng(1)) 'Long
  loc_151E4CD:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_151E4D4:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E4DC:     var_E0 = CVar(CLng(1)) 'Long
  loc_151E519:     If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> CVar(1)) Then
  loc_151E520:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E528:       var_E0 = CVar(CLng(1)) 'Long
  loc_151E56B:       var_130 = "Arrange S.No. and Cal. Formulas" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_151E56F:       MsgBox(var_130, &H40, "Information", var_170, var_190)
  loc_151E58C:       Set var_90 = Me.FGrid
  loc_151E59D:       Exit Sub
  loc_151E59E:     End If
  loc_151E5A4:     var_8A = (var_8A + 1)
  loc_151E5A7:   End If
  loc_151E5BB:   var_AC = Me.FGrid.Rows
  loc_151E5D0:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E5F2:   var_9C = CStr(Me.FGrid.TextMatrix))
  loc_151E60C:   If (CVar(CLng(&H11)) And (var_9C = "Yes")) Then
  loc_151E613:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E61B:     var_E0 = CVar(CLng(&HF)) 'Long
  loc_151E635:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_151E63B:     var_110 = Trim(var_100)
  loc_151E657:     If (var_110 = vbNullString) Then
  loc_151E673:       MsgBox("Define revenue ", &H40, var_100, var_110, var_130)
  loc_151E683:       Exit Sub
  loc_151E684:     End If
  loc_151E684:   End If
  loc_151E688:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E690:   var_E0 = CVar(CLng(3)) 'Long
  loc_151E6CC:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_151E6D3:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E6DB:     var_E0 = CVar(CLng(1)) 'Long
  loc_151E717:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_151E71E:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E726:       var_E0 = CVar(CLng(3)) 'Long
  loc_151E76D:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_151E78A:       Set var_90 = Me.FGrid
  loc_151E79B:       Exit Sub
  loc_151E79C:     End If
  loc_151E7A0:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E7A8:     var_E0 = CVar(CLng(4)) 'Long
  loc_151E7E4:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_151E7EB:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E7F3:       var_E0 = CVar(CLng(3)) 'Long
  loc_151E83A:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_151E857:       Set var_90 = Me.FGrid
  loc_151E868:       Exit Sub
  loc_151E869:     End If
  loc_151E86D:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E875:     var_E0 = CVar(CLng(6)) 'Long
  loc_151E8B1:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_151E8B8:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E8C0:       var_E0 = CVar(CLng(3)) 'Long
  loc_151E907:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_170, var_190)
  loc_151E924:       Set var_90 = Me.FGrid
  loc_151E935:       Exit Sub
  loc_151E936:     End If
  loc_151E936:   End If
  loc_151E939: Next var_B0 'Integer
  loc_151E947: unk_4E00A5.BeginTrans var_194
  loc_151E950: var_86 = CByte(1) 'Byte
  loc_151E979: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_198 'Integer
  loc_151E983:   var_C0 = CVar(CLng(var_88)) 'Long
  loc_151E98B:   var_E0 = CVar(CLng(2)) 'Long
  loc_151E9AB:   var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_151E9B3:   var_120 = vbNullString
  loc_151E9C1:   var_140 = CVar(CLng(var_88)) 'Long
  loc_151E9D2:   Set var_94 = Me.FGrid
  loc_151EA17:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_94.TextMatrix)))) <> vbNullString)) Then
  loc_151EA1E:     var_C0 = CVar(CLng(var_88)) 'Long
  loc_151EA26:     var_E0 = CVar(CLng(&HB)) 'Long
  loc_151EA40:     var_100 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_151EA62:     If (Trim(var_100) = vbNullString) Then
  loc_151EA69:       var_C0 = CVar(CLng(var_88)) 'Long
  loc_151EA71:       var_E0 = CVar(CLng(&HB)) 'Long
  loc_151EA76:       var_120 = "+"
  loc_151EA80:       Set var_90 = Me.FGrid
  loc_151EA86:       LateIdCallSt
  loc_151EA91:     End If
  loc_151EA9C:     Set var_90 = Me.Txt
  loc_151EAA2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_90, vbNullString, var_E0, var_C0, var_E0)
  loc_151EAB1:     Proc_6_7_F25D88(var_100, CVar(var_94), var_C0, var_140)
  loc_151EABA:     var_D0 = CVar(CLng(var_88)) 'Long
  loc_151EAC2:     var_F0 = CVar(CLng(2)) 'Long
  loc_151EACB:     Set var_98 = Me.FGrid
  loc_151EAE1:     var_160 = CVar(CLng(var_88)) 'Long
  loc_151EAE9:     var_1A8 = CVar(CLng(1)) 'Long
  loc_151EB12:     var_248 = CVar(CLng(var_88)) 'Long
  loc_151EB1A:     var_268 = CVar(CLng(4)) 'Long
  loc_151EB39:     var_2FC = CVar(CLng(var_88)) 'Long
  loc_151EB41:     var_31C = CVar(CLng(5)) 'Long
  loc_151EB60:     var_390 = CVar(CLng(var_88)) 'Long
  loc_151EB68:     var_3B0 = CVar(CLng(6)) 'Long
  loc_151EB9B:     var_434 = CVar(CLng(var_88)) 'Long
  loc_151EBA3:     var_454 = CVar(CLng(8)) 'Long
  loc_151EBD6:     var_4D8 = CVar(CLng(var_88)) 'Long
  loc_151EBDE:     var_4F8 = CVar(CLng(7)) 'Long
  loc_151EC07:     var_570 = CVar(CLng(var_88)) 'Long
  loc_151EC0F:     var_590 = CVar(CLng(9)) 'Long
  loc_151EC38:     var_628 = CVar(CLng(var_88)) 'Long
  loc_151EC40:     var_648 = CVar(CLng(&HF)) 'Long
  loc_151EC5F:     var_6BC = CVar(CLng(var_88)) 'Long
  loc_151EC67:     var_6DC = CVar(CLng(&HA)) 'Long
  loc_151EC9D:     var_794 = Me.FGrid.TextMatrix)
  loc_151ECC4:     var_828 = Me.FGrid.TextMatrix)
  loc_151ECEB:     var_8BC = Me.FGrid.TextMatrix)
  loc_151ED10:     var_97C = CVar(Proc_6_14_EF349C(var_8BC, CVar(CLng(&HC)), CVar(CLng(var_88)), var_828, CVar(CLng(&HE)), CVar(CLng(var_88)), var_794)) 'String
  loc_151ED16:     Proc_6_8_EB0DE4(var_98C, var_97C, CVar(CLng(&HB)), CVar(CLng(var_88)))
  loc_151ED1F:     var_9CC = CVar(CLng(var_88)) 'Long
  loc_151ED27:     var_9EC = CVar(CLng(&H10)) 'Long
  loc_151ED5A:     var_AB0 = CVar(CLng(var_88)) 'Long
  loc_151ED62:     var_AD0 = CVar(CLng(&H11)) 'Long
  loc_151ED98:     var_1DC = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit," & "RevCode,Nature,CalcSign,SysYN,Grp,"
  loc_151EDC0:     var_1C8 = CVar(var_1DC & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100 & ",'" & CVar(CStr(var_98.TextMatrix))) 
  loc_151EE05:     var_360 = var_1C8 & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_151EE39:     var_540 = var_360 & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_151EE7E:     var_720 = var_540 & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_151EED2:     var_94C = var_720 & "','" & CVar(CStr(var_794)) & "','" & CVar(CStr(var_828)) & "','" & Left(CVar(CStr(var_8BC)), 1) & "'," & "'" & CVar(MemVar_1F920C8) 
  loc_151EF19:     var_B14 = var_94C & "'," & var_98C & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & CVar(MemVar_1F92070) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_151EF43:     unk_4E00A5.Execute CStr(var_B14 & "','" & CVar(MemVar_1F92078) & "')"), var_B98, -1
  loc_151F021:   End If
  loc_151F024: Next var_198 'Integer
  loc_151F02F: unk_4E00A5.CommitTrans
  loc_151F038: var_86 = CByte(0) 'Byte
  loc_151F047: Set var_90 = Me.Txt
  loc_151F04D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_151F059: var_100 = CVar(MemVar_1F92078 & "PURC") 'String
  loc_151F070: var_AC = Space((6 - Len(MemVar_1F92078 & "PURC")))
  loc_151F078: var_110 = (var_100 + CVar(var_94))
  loc_151F07C: var_C0 = "**"
  loc_151F081: var_130 = (CVar(var_1DC & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") + var_C0)
  loc_151F0AC: var_1C8 = (1 + Format(CVar(var_94), "dd/mm/yyyy"))
  loc_151F0E3: Me.Requery -1
  loc_151F110: Me.Find "SearchCode ='" & CStr(var_1C8) & "'", 0, 1
  loc_151F120: Set var_90 = Me.TopCtrl1
  loc_151F126: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_151F13F: If (CStr(1) = "Add") Then
  loc_151F142:   Call TopCtrl1_UnknownEvent_A()
  loc_151F147:   Exit Sub
  loc_151F148: End If
  loc_151F15D: var_9C = "INI"
  loc_151F16B: Call Proc_328_60_E87664(Proc_5_1_100CB50(var_9C, Me, global_72), CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100)
  loc_151F176: Call Proc_328_59_13EB4E8(var_94)
  loc_151F17B: Exit Sub
  loc_151F17C: ' Referenced from: 151E3DC
  loc_151F185: If (CInt(var_86) = 1) Then
  loc_151F18E:   unk_4E00A5.RollbackTrans
  loc_151F193: End If
  loc_151F19B: Set var_90 = Err()
  loc_151F1A1: Call 0.Method_arg_2C (var_9C)
  loc_151F1BA: MsgBox(CVar(var_9C), &H10, var_100, CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',"), CVar("SearchCode ='" & CStr(var_1C8) & "'" & "U_Name,U_EntDt,U_AE,AutoManual,SiteCode,PostYN,LogSite_Code) " & " Values ('FACL',") & var_100)
  loc_151F1CD: Exit Sub
End Sub

Private Sub CmdChange_Click() '100BD20
  'Data Table: 4E008C
  Dim var_88 As Variant
  Dim var_A0 As Variant
  Dim var_90 As TextBox
  Dim unk_4E00A5 As Connection15
  Dim var_124 As String
  Dim var_B0 As Variant
  loc_100BB41: Me.txtPassword.Text = vbNullString
  loc_100BB49: On Error Goto loc_100BCD5
  loc_100BB57: Set var_88 = Me.Txt
  loc_100BB5D: Call 0.Method_CmdChange_Click0 (CInt(2))
  loc_100BB6C: var_B0 = Trim(CVar(var_90))
  loc_100BB86: If (var_B0 = vbNullString) Then
  loc_100BBA2:   MsgBox("Password Can't be blank ", &H40, var_B0, var_D0, var_110)
  loc_100BBBD:   Set var_88 = Me.Txt
  loc_100BBC3:   Call 0.Method_CmdChange_Click0 (CInt(2), var_90)
  loc_100BBCB:   var_90.SetFocus
  loc_100BBD7:   Exit Sub
  loc_100BBD8: End If
  loc_100BBF3: If (Me.PwdFrame.Visible = &HFF) Then
  loc_100BC02:   Me.PwdFrame.Visible = False
  loc_100BC25:   If (Me.CmdPwd.Enabled = &HFF) Then
  loc_100BC34:     Me.CmdPwd.Enabled = False
  loc_100BC3C:   End If
  loc_100BC3C: End If
  loc_100BC45: unk_4E00A5.BeginTrans var_118
  loc_100BC68: Set var_88 = Me.Txt
  loc_100BC6E: Call 0.Method_CmdChange_Click0 (CInt(2), var_90, var_11C, "Update Enviro set SundryPassword='")
  loc_100BC76: var_A0 = var_90.Text
  loc_100BC87: var_124 = Proc_96_18_EE9560(var_11C, -1)
  loc_100BCA9: unk_4E00A5.Execute var_138 & var_124 & "' where SiteCode='" & MemVar_1F92078 & "'", var_90, 
  loc_100BCCF: unk_4E00A5.CommitTrans
  loc_100BCD4: Exit Sub
  loc_100BCD5: ' Referenced from: 100BB49
  loc_100BCDD: Set var_88 = Err()
  loc_100BCE3: Call 0.Method_arg_2C (var_11C)
  loc_100BCEE: Call 0.Method_arg_50 (var_120)
  loc_100BD0A: MsgBox(CVar(var_11C), &H40, CVar(var_120), var_D0, var_110)
  loc_100BD1D: Exit Sub
End Sub

Private Sub CmdUp_Click() '10F41C4
  'Data Table: 4E008C
  Dim var_DC As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  loc_10F3F37: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 1)) Then
  loc_10F3F3A:   Exit Sub
  loc_10F3F3B: End If
  loc_10F3F5A: If (CLng(Me.FGrid.Row) = 0) Then
  loc_10F3F5D:   Exit Sub
  loc_10F3F5E: End If
  loc_10F3F7D: If (CLng(Me.FGrid.Row) = 1) Then
  loc_10F3F80:   Exit Sub
  loc_10F3F81: End If
  loc_10F3FA0: If (CLng(Me.FGrid.Row) = 2) Then
  loc_10F3FA3:   Exit Sub
  loc_10F3FA4: End If
  loc_10F3FB8: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_10F3FE6: For var_F0 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_F0 'Integer
  loc_10F3FF0:   var_100 = CVar(CLng(var_86)) 'Long
  loc_10F3FF9:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F401D:   var_A0(CLng(var_C2)) = CStr(Me.FGrid.TextMatrix))
  loc_10F402A: Next var_F0 'Integer
  loc_10F4054: For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_138 'Integer
  loc_10F406D:   var_15C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F4076:   var_17C = CVar(CLng(var_C2)) 'Long
  loc_10F4094:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F409D:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F40B7:   var_19C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_10F40BF:   Set var_1B0 = Me.FGrid
  loc_10F40C5:   LateIdCallSt
  loc_10F40E6: Next var_138 'Integer
  loc_10F4110: For var_1B4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_C2 = var_1B4 'Integer
  loc_10F412F:   var_100 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_10F4138:   var_120 = CVar(CLng(var_C2)) 'Long
  loc_10F414D:   Set var_DC = Me.FGrid
  loc_10F4153:   LateIdCallSt
  loc_10F4168: Next var_1B4 'Integer
  loc_10F4174: var_100 = CVar(CLng((var_86 - 1))) 'Long
  loc_10F4183: Me.FGrid.Row = var_100
  loc_10F41AD: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_10F41BC: Call Proc_328_52_E7FDE0()
  loc_10F41C1: Exit Sub
End Sub

Private Sub CmdDown_Click() '1097E20
  'Data Table: 4E008C
  Dim var_C0 As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  loc_1097BBF: If (CLng(Me.FGrid.Row) = 1) Then
  loc_1097BC2:   Exit Sub
  loc_1097BC3: End If
  loc_1097BFE: If (CLng(Me.FGrid.Row) = (CLng(Me.FGrid.Rows) - 2)) Then
  loc_1097C01:   Exit Sub
  loc_1097C02: End If
  loc_1097C16: var_86 = CInt(CLng(Me.FGrid.Row))
  loc_1097C44: For var_D4 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_D4 'Integer
  loc_1097C4E:   var_E4 = CVar(CLng(var_86)) 'Long
  loc_1097C57:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1097C7B:   var_A0(CLng(var_A6)) = CStr(Me.FGrid.TextMatrix))
  loc_1097C88: Next var_D4 'Integer
  loc_1097CB2: For var_11C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_11C 'Integer
  loc_1097CCB:   var_140 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1097CD4:   var_160 = CVar(CLng(var_A6)) 'Long
  loc_1097CF2:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1097CFB:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1097D15:   var_180 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1097D1D:   Set var_194 = Me.FGrid
  loc_1097D23:   LateIdCallSt
  loc_1097D44: Next var_11C 'Integer
  loc_1097D6E: For var_198 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_A6 = var_198 'Integer
  loc_1097D8D:   var_E4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_1097D96:   var_104 = CVar(CLng(var_A6)) 'Long
  loc_1097DAB:   Set var_C0 = Me.FGrid
  loc_1097DB1:   LateIdCallSt
  loc_1097DC6: Next var_198 'Integer
  loc_1097DD2: var_E4 = CVar(CLng((var_86 + 1))) 'Long
  loc_1097DE1: Me.FGrid.Row = var_E4
  loc_1097E0B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_1097E1A: Call Proc_328_52_E7FDE0()
  loc_1097E1F: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '1076B7C
  'Data Table: 4E008C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_128 As TextBox
  loc_10768FB: Me.DGSundry.Visible = False
  loc_107691A: If (Me.RecordCount > 0) Then
  loc_1076930:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076938:   var_E4 = CVar(CLng(2)) 'Long
  loc_107696B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1076973:   Set var_128 = Me.FGrid
  loc_1076979:   LateIdCallSt
  loc_10769EB:   Set var_128 = Me.FGrid
  loc_10769F1:   LateIdCallSt
  loc_1076A47:   Set var_B4 = Me.TxtGrid
  loc_1076A4D:   Call 0.Method_DGSundry_UnknownEvent_90 (0, var_128, CStr(Me.Fields.Item("Name").Value), var_128, CVar(CStr(Me.Fields.Item("Name").Value)), CVar(CLng(3)))
  loc_1076A55:   var_128.Text = CVar(CLng(Me.FGrid.Row))
  loc_1076AB6:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), var_128)) 'String
  loc_1076ABE:   Set var_128 = Me.FGrid
  loc_1076AC4:   LateIdCallSt
  loc_1076AF1:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1076AF9:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_1076B1B:   var_B0 = Me.Fields.Item("SysYN")
  loc_1076B2C:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_1076B34:   Set var_128 = Me.FGrid
  loc_1076B3A:   LateIdCallSt
  loc_1076B56: End If
  loc_1076B5F: Set var_A8 = Me.TxtGrid
  loc_1076B65: Call 0.Method_DGSundry_UnknownEvent_90 (0, var_B0, var_128, var_114, var_E4, var_A4)
  loc_1076B6D: var_B0.SetFocus
  loc_1076B79: Exit Sub
End Sub

Public Function MasterFormExitGet() '4E1190
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4E119F
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '4E11AE
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '4E11BD
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E97078
  'Data Table: 4E008C
  Dim Me As Recordset15
  loc_E97006: On Error Goto loc_E9706F
  loc_E9700F: Me.MoveFirst
  loc_E97039: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E97061: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E97069: Call Proc_328_59_13EB4E8(0)
  loc_E9706E: Exit Sub
  loc_E9706F: ' Referenced from: E97006
  loc_E9706F: Proc_6_60_E62BC4(var_A0)
  loc_E97074: Exit Sub
End Sub

Public Sub Proc_328_51_12B03D0
  'Data Table: 4E008C
  Dim var_98 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_12AFD8C: On Error Goto loc_12B03C8
  loc_12AFD95: Call 0.Method_Me8 (var_88)
  loc_12AFDA1: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_12AFDB0: Me.FGrid.Height = var_98
  loc_12AFDBC: Set var_B0 = Me.FGrid
  loc_12AFDCB: var_B0.Cols = &H12
  loc_12AFDDC: var_B0.Rows = 1
  loc_12AFDF5: global_60 = CStr(CLng(var_B0.BackColor))
  loc_12AFDFF: var_98 = 0
  loc_12AFE08: var_D4 = &H64
  loc_12AFE14: LateIdCallSt
  loc_12AFE1F: var_98 = CVar(CLng(1)) 'Long
  loc_12AFE24: var_D4 = &H159
  loc_12AFE30: LateIdCallSt
  loc_12AFE38: var_98 = 0
  loc_12AFE44: var_D4 = CVar(CLng(1)) 'Long
  loc_12AFE49: var_F4 = "Sn."
  loc_12AFE52: LateIdCallSt
  loc_12AFE5D: var_98 = CVar(CLng(1)) 'Long
  loc_12AFE68: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFE6F: LateIdCallSt
  loc_12AFE7A: var_98 = CVar(CLng(2)) 'Long
  loc_12AFE7F: var_D4 = 0
  loc_12AFE8B: LateIdCallSt
  loc_12AFE96: var_98 = CVar(CLng(3)) 'Long
  loc_12AFE9B: var_D4 = &H5DC
  loc_12AFEA7: LateIdCallSt
  loc_12AFEAF: var_98 = 0
  loc_12AFEBB: var_D4 = CVar(CLng(3)) 'Long
  loc_12AFEC0: var_F4 = "Sundry Name"
  loc_12AFEC9: LateIdCallSt
  loc_12AFED4: var_98 = CVar(CLng(3)) 'Long
  loc_12AFEDF: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFEE6: LateIdCallSt
  loc_12AFEF1: var_98 = CVar(CLng(4)) 'Long
  loc_12AFEF6: var_D4 = &H640
  loc_12AFF02: LateIdCallSt
  loc_12AFF0A: var_98 = 0
  loc_12AFF16: var_D4 = CVar(CLng(4)) 'Long
  loc_12AFF1B: var_F4 = "Display Name"
  loc_12AFF24: LateIdCallSt
  loc_12AFF2F: var_98 = CVar(CLng(4)) 'Long
  loc_12AFF3A: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFF41: LateIdCallSt
  loc_12AFF4C: var_98 = CVar(CLng(5)) 'Long
  loc_12AFF51: var_D4 = &H6D6
  loc_12AFF5D: LateIdCallSt
  loc_12AFF65: var_98 = 0
  loc_12AFF71: var_D4 = CVar(CLng(5)) 'Long
  loc_12AFF76: var_F4 = "Cal. Formula"
  loc_12AFF7F: LateIdCallSt
  loc_12AFF8A: var_98 = CVar(CLng(5)) 'Long
  loc_12AFF95: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFF9C: LateIdCallSt
  loc_12AFFA7: var_98 = CVar(CLng(5)) 'Long
  loc_12AFFB2: var_D4 = CVar(CInt(1)) 'Integer
  loc_12AFFB9: LateIdCallSt
  loc_12AFFC4: var_98 = CVar(CLng(6)) 'Long
  loc_12AFFC9: var_D4 = &H226
  loc_12AFFD5: LateIdCallSt
  loc_12AFFDD: var_98 = 0
  loc_12AFFE9: var_D4 = CVar(CLng(6)) 'Long
  loc_12AFFEE: var_F4 = "P/A"
  loc_12AFFF7: LateIdCallSt
  loc_12B0002: var_98 = CVar(CLng(6)) 'Long
  loc_12B000D: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0014: LateIdCallSt
  loc_12B001F: var_98 = CVar(CLng(7)) 'Long
  loc_12B0024: var_D4 = &H320
  loc_12B0030: LateIdCallSt
  loc_12B0038: var_98 = 0
  loc_12B0044: var_D4 = CVar(CLng(7)) 'Long
  loc_12B0049: var_F4 = "Value"
  loc_12B0052: LateIdCallSt
  loc_12B005D: var_98 = CVar(CLng(7)) 'Long
  loc_12B0068: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B006F: LateIdCallSt
  loc_12B007A: var_98 = CVar(CLng(7)) 'Long
  loc_12B0085: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B008C: LateIdCallSt
  loc_12B0097: var_98 = CVar(CLng(8)) 'Long
  loc_12B009C: var_D4 = 0
  loc_12B00A8: LateIdCallSt
  loc_12B00B0: var_98 = 0
  loc_12B00BC: var_D4 = CVar(CLng(8)) 'Long
  loc_12B00C1: var_F4 = "ROff"
  loc_12B00CA: LateIdCallSt
  loc_12B00D5: var_98 = CVar(CLng(8)) 'Long
  loc_12B00E0: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B00E7: LateIdCallSt
  loc_12B00F2: var_98 = CVar(CLng(&H10)) 'Long
  loc_12B00F7: var_D4 = &H2B2
  loc_12B0103: LateIdCallSt
  loc_12B010B: var_98 = 0
  loc_12B0117: var_D4 = CVar(CLng(&H10)) 'Long
  loc_12B011C: var_F4 = "A/M"
  loc_12B0125: LateIdCallSt
  loc_12B0130: var_98 = CVar(CLng(&H10)) 'Long
  loc_12B013B: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0142: LateIdCallSt
  loc_12B014D: var_98 = CVar(CLng(9)) 'Long
  loc_12B0152: var_D4 = 0
  loc_12B015E: LateIdCallSt
  loc_12B0166: var_98 = 0
  loc_12B0172: var_D4 = CVar(CLng(9)) 'Long
  loc_12B0177: var_F4 = "Limit"
  loc_12B0180: LateIdCallSt
  loc_12B018B: var_98 = CVar(CLng(9)) 'Long
  loc_12B0196: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B019D: LateIdCallSt
  loc_12B01A8: var_98 = CVar(CLng(9)) 'Long
  loc_12B01B3: var_D4 = CVar(CInt(7)) 'Integer
  loc_12B01BA: LateIdCallSt
  loc_12B01C5: var_98 = CVar(CLng(&HA)) 'Long
  loc_12B01CA: var_D4 = 0
  loc_12B01D6: LateIdCallSt
  loc_12B01DE: var_98 = 0
  loc_12B01EA: var_D4 = CVar(CLng(&HA)) 'Long
  loc_12B01EF: var_F4 = "Nature"
  loc_12B01F8: LateIdCallSt
  loc_12B0203: var_98 = CVar(CLng(&HA)) 'Long
  loc_12B020E: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0215: LateIdCallSt
  loc_12B0220: var_98 = CVar(CLng(&HB)) 'Long
  loc_12B0225: var_D4 = 0
  loc_12B0231: LateIdCallSt
  loc_12B0239: var_98 = 0
  loc_12B0245: var_D4 = CVar(CLng(&HB)) 'Long
  loc_12B024A: var_F4 = "+/-"
  loc_12B0253: LateIdCallSt
  loc_12B025E: var_98 = CVar(CLng(&HB)) 'Long
  loc_12B0269: var_D4 = CVar(CInt(4)) 'Integer
  loc_12B0270: LateIdCallSt
  loc_12B027B: var_98 = CVar(CLng(&HE)) 'Long
  loc_12B0280: var_D4 = 0
  loc_12B028C: LateIdCallSt
  loc_12B0297: var_98 = CVar(CLng(&HC)) 'Long
  loc_12B029C: var_D4 = &H258
  loc_12B02A8: LateIdCallSt
  loc_12B02B0: var_98 = 0
  loc_12B02BC: var_D4 = CVar(CLng(&HC)) 'Long
  loc_12B02C1: var_F4 = "Bold"
  loc_12B02CA: LateIdCallSt
  loc_12B02D5: var_98 = CVar(CLng(&HC)) 'Long
  loc_12B02E0: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B02E7: LateIdCallSt
  loc_12B02F2: var_98 = CVar(CLng(&HD)) 'Long
  loc_12B02F7: var_D4 = &H834
  loc_12B0303: LateIdCallSt
  loc_12B030B: var_98 = 0
  loc_12B0317: var_D4 = CVar(CLng(&HD)) 'Long
  loc_12B031C: var_F4 = "Revenue Charge"
  loc_12B0325: LateIdCallSt
  loc_12B0330: var_98 = CVar(CLng(&HD)) 'Long
  loc_12B033B: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B0342: LateIdCallSt
  loc_12B034D: var_98 = CVar(CLng(&HF)) 'Long
  loc_12B0352: var_D4 = 0
  loc_12B035E: LateIdCallSt
  loc_12B0369: var_98 = CVar(CLng(&H11)) 'Long
  loc_12B036E: var_D4 = &H1D1
  loc_12B037A: LateIdCallSt
  loc_12B0382: var_98 = 0
  loc_12B038E: var_D4 = CVar(CLng(&H11)) 'Long
  loc_12B0393: var_F4 = "Post"
  loc_12B039C: LateIdCallSt
  loc_12B03A7: var_98 = CVar(CLng(&H11)) 'Long
  loc_12B03B2: var_D4 = CVar(CInt(1)) 'Integer
  loc_12B03B9: LateIdCallSt
  loc_12B03C3: Set var_B0 = Nothing 
  loc_12B03C7: Exit Sub
  loc_12B03C8: ' Referenced from: 12AFD8C
  loc_12B03C8: Proc_6_60_E62BC4(var_B0, var_D4, var_98, var_B0, var_F4, var_D4, var_98, var_B0)
  loc_12B03CD: Exit Sub
End Sub

Public Sub Proc_328_52_E7FDE0
  'Data Table: 4E008C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_E7FD9D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A0 'Integer
  loc_E7FDA7:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_E7FDAF:   var_D0 = CVar(CLng(1)) 'Long
  loc_E7FDB9:   var_9C = CVar(CStr(var_86)) 'String
  loc_E7FDC1:   Set var_8C = Me.FGrid
  loc_E7FDC7:   LateIdCallSt
  loc_E7FDD8: Next var_A0 'Integer
  loc_E7FDDD: Exit Sub
End Sub

Public Sub Proc_328_53_E1B4E8
  'Data Table: 4E008C
  loc_E1B4DC: Me.PwdFrame.Visible = False
  loc_E1B4E4: Exit Sub
End Sub

Public Sub Proc_328_54_F7BFCC
  'Data Table: 4E008C
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim unk_4E00A5 As Connection15
  Dim var_11C As Recordset15
  Dim var_120 As Fields15
  Dim var_134 As Field20
  Dim var_94 As TextBox
  loc_F7BED2: var_C4 = CVar("Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='FACL' And AppDate=") 'String
  loc_F7BEE0: Set var_90 = Me.Txt
  loc_F7BEE6: Call 0.Method_Proc_328_54_F7BFCC0 (CInt(1), var_94, var_C4, var_118, -1)
  loc_F7BEF5: Proc_6_7_F25D88(var_B4, CVar(var_94), var_11C, var_120)
  loc_F7BEFD: var_D4 = 0 & var_B4 
  loc_F7BF14: unk_4E00A5.Execute CStr(var_D4 & ")"), var_134, var_144
  loc_F7BF1C:  = var_11C.Fields
  loc_F7BF24:  = var_120.Item()
  loc_F7BF2C:  = var_134.Value
  loc_F7BF5F: If (var_144 > 0) Then
  loc_F7BF83:   MsgBox("Duplicate Entry", &H40, "Information", var_C4, var_D4)
  loc_F7BF9E:   Set var_90 = Me.Txt
  loc_F7BFA4:   Call 0.Method_Proc_328_54_F7BFCC0 (CInt(0))
  loc_F7BFAC:   var_94.SetFocus
  loc_F7BFBD:   Proc_328_54_F7BFCC = &HFF
  loc_F7BFC3: End If
  loc_F7BFC3: Proc_328_54_F7BFCC = var_94
End Sub

Public Sub Proc_328_55_1158D04(arg_C, arg_10) '1158D04
  'Data Table: 4E008C
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1158968: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1158971: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_115898B: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_11589AC: var_C4 = "+"
  loc_11589C6: var_118 = Left(var_98, 1)
  loc_11589CE: var_E4 = "-"
  loc_11589E5: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1158A06:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_1158A16:   Proc_328_55_1158D04 = &HFF
  loc_1158A1C: End If
  loc_1158A34: var_C4 = "+"
  loc_1158A4E: var_118 = Right(var_98, 1)
  loc_1158A56: var_E4 = "-"
  loc_1158A6D: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1158A8E:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1158A9E:   Proc_328_55_1158D04 = &HFF
  loc_1158AA4: End If
  loc_1158AA6: var_86 = 0
  loc_1158AA9: ' Referenced from: 1158CF8
  loc_1158AB3: If (Len(var_98) > 0) Then
  loc_1158AB8:   var_A2 = 0
  loc_1158ACD:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1158AE3:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1158AFF:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1158B1D:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_1158B33:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1158B4F:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_1158B56:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_1158B86:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1158B8D:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_1158B96:   var_9A = CInt(var_188)
  loc_1158BB6:   If (var_9A = 0) Then
  loc_1158BBC:     var_A0 = var_98
  loc_1158BC2:   Else
  loc_1158BD4:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_1158BDD:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_1158BE3:   End If
  loc_1158BEE:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_1158BF7:     var_148 = CVar(var_A0) 'String
  loc_1158BFF:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1158C3D:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_1158C42:       var_A2 = &HFF
  loc_1158C45:       Exit For
  loc_1158C48:     End If
  loc_1158C4B:   Next var_18C 'Integer
  loc_1158C50:   ' Referenced from: 1158C45
  loc_1158C56:   If (var_A2 = 0) Then
  loc_1158C64:     var_F8 = Trim(var_A0)
  loc_1158C87:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1158C90:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1158C99:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1158C9D:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_1158CB8:     Proc_328_55_1158D04 = &HFF
  loc_1158CBE:   End If
  loc_1158CC4:   If (var_9A = 0) Then
  loc_1158CCA:     var_98 = vbNullString
  loc_1158CD0:   Else
  loc_1158CE5:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_1158CEE:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1158CF8:   End If
  loc_1158CF8:   GoTo loc_1158AA9
  loc_1158CFB: End If
  loc_1158CFB: Proc_328_55_1158D04 = 
End Sub

Public Sub Proc_328_56_E44370
  'Data Table: 4E008C
  loc_E4434C: Set var_88 = Me.TopCtrl1
  loc_E44352: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4436B: If (CStr() = "Browse") Then
  loc_E4436E:   Exit Sub
  loc_E4436F: End If
  loc_E4436F: Exit Sub
End Sub

Public Sub Proc_328_57_1541504(arg_C) '1541504
  'Data Table: 4E008C
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_154052B: var_A0 = CLng(Me.FGrid.Col)
  loc_154053B: If (var_A0 = CLng(3)) Then
  loc_154055E:   var_A6 = Me.EOF
  loc_154058C:   Set var_8C = Me.TxtGrid
  loc_1540592:   Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0)
  loc_154059A:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_15405B2:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_15405C8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15405D0:     var_E0 = CVar(CLng(3)) 'Long
  loc_15405D5:     var_100 = vbNullString
  loc_15405DF:     Set var_AC = Me.FGrid
  loc_15405E5:     LateIdCallSt
  loc_154060A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540612:     var_E0 = CVar(CLng(2)) 'Long
  loc_1540617:     var_100 = vbNullString
  loc_1540621:     Set var_AC = Me.FGrid
  loc_1540627:     LateIdCallSt
  loc_154064C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540654:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1540659:     var_100 = vbNullString
  loc_1540663:     Set var_AC = Me.FGrid
  loc_1540669:     LateIdCallSt
  loc_154068E:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540696:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_154069B:     var_100 = vbNullString
  loc_15406A5:     Set var_AC = Me.FGrid
  loc_15406AB:     LateIdCallSt
  loc_15406C0:   Else
  loc_15406C3:     Call Proc_328_62_FBBE80(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15406CE:     If (var_A6 = 0) Then
  loc_15406D6:       Proc_328_57_1541504 = 0
  loc_15406DC:     End If
  loc_15406EF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15406F7:     var_F0 = CVar(CLng(3)) 'Long
  loc_154072A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1540732:     Set var_138 = Me.FGrid
  loc_1540738:     LateIdCallSt
  loc_1540767:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154076F:     var_F0 = CVar(CLng(2)) 'Long
  loc_15407A2:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15407AA:     Set var_138 = Me.FGrid
  loc_15407B0:     LateIdCallSt
  loc_15407DF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15407E7:     var_F0 = CVar(CLng(4)) 'Long
  loc_154081A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1540828:     LateIdCallSt
  loc_154088F:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1540897:     Set var_138 = Me.FGrid
  loc_154089D:     LateIdCallSt
  loc_15408CA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15408D2:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_1540905:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_154090D:     Set var_138 = Me.FGrid
  loc_1540913:     LateIdCallSt
  loc_154092F:   End If
  loc_1540942:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154094A:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_154094F:   var_100 = "Manual"
  loc_1540959:   Set var_AC = Me.FGrid
  loc_154095F:   LateIdCallSt
  loc_154098A:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_154098F:   var_E0 = 1
  loc_154099C:   Set var_AC = Me.FGrid
  loc_15409AD:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15409C6:   If (var_B0 <> vbNullString) Then
  loc_15409C9:     var_C0 = vbNullString
  loc_15409D3:     Set var_8C = Me.FGrid
  loc_15409E4:   End If
  loc_15409E7: Else
  loc_15409EE:   If Not (var_A0 = CLng(1)) Then
  loc_15409F8:     If (var_A0 = CLng(4)) Then
  loc_15409FB:     End If
  loc_1540A37:     Set var_8C = Me.TxtGrid
  loc_1540A3D:     Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1540A45:     var_E0 = var_AC.Text
  loc_1540A4D:     var_134 = CVar(var_B0) 'String
  loc_1540A55:     Set var_13C = Me.FGrid
  loc_1540A5B:     LateIdCallSt
  loc_1540A7C:   Else
  loc_1540A83:     If (var_A0 = CLng(5)) Then
  loc_1540AC3:       Set var_8C = Me.TxtGrid
  loc_1540AC9:       Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_1540AD1:       var_C0 = var_AC.Text
  loc_1540AD9:       var_134 = CVar(var_B0) 'String
  loc_1540AE1:       Set var_13C = Me.FGrid
  loc_1540AE7:       LateIdCallSt
  loc_1540B24:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_1540B3A:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540B43:         Set var_AC = Me.FGrid
  loc_1540B52:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540B57:         var_100 = vbNullString
  loc_1540B61:         Set var_114 = Me.FGrid
  loc_1540B67:         LateIdCallSt
  loc_1540B84:         Proc_328_57_1541504 = &HFF
  loc_1540B8A:       End If
  loc_1540B97:       Set var_8C = Me.TxtGrid
  loc_1540B9D:       Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_1540BA5:       var_13C = var_AC.Text
  loc_1540BBC:       If (var_B0 <> vbNullString) Then
  loc_1540BFA:         Call Proc_328_55_1158D04(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_1540C13:         If (var_13E = &HFF) Then
  loc_1540C18:           var_86 = 0
  loc_1540C2E:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540C37:           Set var_AC = Me.FGrid
  loc_1540C46:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540C4B:           var_100 = vbNullString
  loc_1540C5B:           LateIdCallSt
  loc_1540C73:           Proc_328_57_1541504 = Me.FGrid
  loc_1540C79:         End If
  loc_1540C79:       End If
  loc_1540C7C:     Else
  loc_1540C83:       If Not (var_A0 = CLng(8)) Then
  loc_1540C8D:         If (var_A0 = CLng(&HC)) Then
  loc_1540C90:         End If
  loc_1540CCC:         Set var_8C = Me.TxtGrid
  loc_1540CD2:         Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_1540CDA:         var_C0 = var_AC.Text
  loc_1540CF0:         LateIdCallSt
  loc_1540D1B:         Set var_8C = Me.TxtGrid
  loc_1540D21:         Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1540D29:         var_13E = var_AC.Text
  loc_1540D40:         If (var_B0 = vbNullString) Then
  loc_1540D56:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540D5F:           Set var_AC = Me.FGrid
  loc_1540D6E:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540D73:           var_100 = "No"
  loc_1540D7D:           Set var_114 = Me.FGrid
  loc_1540D83:           LateIdCallSt
  loc_1540D9B:         End If
  loc_1540D9E:       Else
  loc_1540DA5:         If (var_A0 = CLng(&H10)) Then
  loc_1540DAC:           Set var_114 = Me.FGrid
  loc_1540DE4:           Set var_8C = Me.TxtGrid
  loc_1540DEA:           Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1540DF2:           var_E0 = var_AC.Text
  loc_1540E08:           LateIdCallSt
  loc_1540E33:           Set var_8C = Me.TxtGrid
  loc_1540E39:           Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1540E41:           var_C0 = var_AC.Text
  loc_1540E58:           If (var_B0 = vbNullString) Then
  loc_1540E6E:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540E77:             Set var_AC = Me.FGrid
  loc_1540E86:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540E8B:             var_100 = "Manual"
  loc_1540E95:             Set var_114 = Me.FGrid
  loc_1540E9B:             LateIdCallSt
  loc_1540EB3:           End If
  loc_1540EB6:         Else
  loc_1540EBD:           If (var_A0 = CLng(&H11)) Then
  loc_1540EC4:             Set var_114 = Me.FGrid
  loc_1540EFC:             Set var_8C = Me.TxtGrid
  loc_1540F02:             Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1540F0A:             var_E0 = var_AC.Text
  loc_1540F20:             LateIdCallSt
  loc_1540F4B:             Set var_8C = Me.TxtGrid
  loc_1540F51:             Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1540F59:             var_C0 = var_AC.Text
  loc_1540F70:             If (var_B0 = vbNullString) Then
  loc_1540F86:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1540F8F:               Set var_AC = Me.FGrid
  loc_1540F9E:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1540FA3:               var_100 = "Yes"
  loc_1540FAD:               Set var_114 = Me.FGrid
  loc_1540FB3:               LateIdCallSt
  loc_1540FCB:             End If
  loc_1540FCE:           Else
  loc_1540FD5:             If (var_A0 = CLng(6)) Then
  loc_1540FDC:               Set var_114 = Me.FGrid
  loc_1541014:               Set var_8C = Me.TxtGrid
  loc_154101A:               Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1541022:               var_E0 = var_AC.Text
  loc_1541038:               LateIdCallSt
  loc_1541063:               Set var_8C = Me.TxtGrid
  loc_1541069:               Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1541071:               var_C0 = var_AC.Text
  loc_1541088:               If (var_B0 = vbNullString) Then
  loc_154109E:                 var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15410A7:                 Set var_AC = Me.FGrid
  loc_15410B6:                 var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_15410BB:                 var_100 = "Amt"
  loc_15410C5:                 Set var_114 = Me.FGrid
  loc_15410CB:                 LateIdCallSt
  loc_15410E3:               End If
  loc_15410E6:             Else
  loc_15410ED:               If Not (var_A0 = CLng(9)) Then
  loc_15410F7:                 If (var_A0 = CLng(7)) Then
  loc_15410FA:                 End If
  loc_1541106:                 Set var_8C = Me.TxtGrid
  loc_154110C:                 Call 0.Method_Proc_328_57_15415040 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1541114:                 var_C0 = var_AC.Text
  loc_1541137:                 var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154114F:                 var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_154117C:                 var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1541184:                 Set var_13C = Me.FGrid
  loc_154118A:                 LateIdCallSt
  loc_15411B4:               Else
  loc_15411BB:                 If (var_A0 = CLng(&HD)) Then
  loc_154120C:                   Set var_8C = Me.TxtGrid
  loc_1541212:                   Call 0.Method_Proc_328_57_15415040 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_154121A:                   1 = var_AC.Text
  loc_1541232:                   If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1541248:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541250:                     var_E0 = CVar(CLng(&HF)) 'Long
  loc_1541255:                     var_100 = vbNullString
  loc_154125F:                     Set var_AC = Me.FGrid
  loc_1541265:                     LateIdCallSt
  loc_154128A:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541292:                     var_E0 = CVar(CLng(&HD)) 'Long
  loc_1541297:                     var_100 = vbNullString
  loc_15412A1:                     Set var_AC = Me.FGrid
  loc_15412A7:                     LateIdCallSt
  loc_15412CC:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15412D4:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_15412D9:                     var_100 = vbNullString
  loc_15412E3:                     Set var_AC = Me.FGrid
  loc_15412E9:                     LateIdCallSt
  loc_15412FE:                   Else
  loc_1541311:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541319:                     var_F0 = CVar(CLng(&HF)) 'Long
  loc_154134C:                     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1541354:                     Set var_138 = Me.FGrid
  loc_154135A:                     LateIdCallSt
  loc_1541389:                     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1541391:                     var_F0 = CVar(CLng(&HD)) 'Long
  loc_15413C4:                     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_15413CC:                     Set var_138 = Me.FGrid
  loc_15413D2:                     LateIdCallSt
  loc_154142D:                     If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1541443:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_154144B:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_1541450:                       var_100 = "+"
  loc_154145A:                       Set var_AC = Me.FGrid
  loc_1541460:                       LateIdCallSt
  loc_1541475:                     Else
  loc_15414B4:                       If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_15414CA:                         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15414D2:                         var_E0 = CVar(CLng(&HB)) 'Long
  loc_15414D7:                         var_100 = "-"
  loc_15414E1:                         Set var_AC = Me.FGrid
  loc_15414E7:                         LateIdCallSt
  loc_15414F9:                       End If
  loc_15414F9:                     End If
  loc_15414F9:                   End If
  loc_15414F9:                 End If
  loc_15414F9:               End If
  loc_15414F9:             End If
  loc_15414F9:           End If
  loc_15414F9:         End If
  loc_15414F9:       End If
  loc_15414F9:     End If
  loc_15414F9:   End If
  loc_15414F9: End If
  loc_15414FE: Proc_328_57_1541504 = &HFF
End Sub

Public Sub Proc_328_58_F2A080
  'Data Table: 4E008C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F29F82: Set var_8C = Me.Txt
  loc_F29F88: Call 0.Method_Proc_328_58_F2A080C (var_8E, var_86)
  loc_F29F98: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_F29FAE:   Set var_8C = Me.Txt
  loc_F29FB4:   Call 0.Method_Proc_328_58_F2A0800 (CInt(var_86), var_98)
  loc_F29FBC:   var_98.Text = vbNullString
  loc_F29FD8:   Set var_8C = Me.Txt
  loc_F29FDE:   Call 0.Method_Proc_328_58_F2A0800 (CInt(var_86), var_98)
  loc_F29FE6:   var_98.Tag = vbNullString
  loc_F29FF5: Next var_92 'Byte
  loc_F2A008: Me.LblDepart.Caption = vbNullString
  loc_F2A023: Me.FGrid.Rows = 1
  loc_F2A040: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F2A048: Set var_98 = Me.FGrid
  loc_F2A077: Me.FGrid.FixedRows = 1
  loc_F2A07F: Exit Sub
End Sub

Public Sub Proc_328_59_13EB4E8
  'Data Table: 4E008C
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_4E00A5 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Label
  Dim var_124 As TextBox
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13EAAE4: On Error Goto loc_13EB4E2
  loc_13EAAFE: If (Me.RecordCount > 0) Then
  loc_13EAB01:   Call Proc_328_58_F2A080()
  loc_13EAB0E:   If (MemVar_1F923AC = "A") Then
  loc_13EAB1E:     var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Format(SP.AppDate,'dd/mm/yyyy')='"
  loc_13EAB67:     unk_4E00A5.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13EAB72:     Set var_88 = var_120
  loc_13EAB8F:   Else
  loc_13EAB97:     If (MemVar_1F923AC = "S") Then
  loc_13EABA7:       var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(6-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13EABF0:       unk_4E00A5.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13EABFB:       Set var_88 = var_120
  loc_13EAC15:     End If
  loc_13EAC15:   End If
  loc_13EAC29:   If (var_88.RecordCount > 0) Then
  loc_13EAC65:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")), var_120) = vbNullString) Then
  loc_13EAC68:     End If
  loc_13EAC9D:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_13EAD01:     Set var_120 = Me.Txt
  loc_13EAD07:     Call 0.Method_Proc_328_59_13EB4E80 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13EAD0F:     var_124.Text = 1
  loc_13EAD2B:     var_8A = 1
  loc_13EAD41:     Me.FGrid.Rows = 1
  loc_13EAD49:     ' Referenced from: 13EB459
  loc_13EAD58:     If Not(var_88.EOF) Then
  loc_13EAD5B:       var_A4 = vbNullString
  loc_13EAD65:       Set var_94 = Me.FGrid
  loc_13EAD7A:       Set var_12C = Me.FGrid
  loc_13EAD81:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13EAD89:       var_10C = CVar(CLng(1)) 'Long
  loc_13EADB9:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13EADC0:       LateIdCallSt
  loc_13EAE0F:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13EAE16:       LateIdCallSt
  loc_13EAE61:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13EAE68:       LateIdCallSt
  loc_13EAEB3:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EAEBA:       LateIdCallSt
  loc_13EAF05:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EAF0C:       LateIdCallSt
  loc_13EAF4D:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EAF55:       var_15C = CVar(CLng(6)) 'Long
  loc_13EAF8B:       var_17C = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13EAF92:       LateIdCallSt
  loc_13EB00F:       LateIdCallSt
  loc_13EB04D:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13EB054:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EB05C:       var_15C = CVar(CLng(8)) 'Long
  loc_13EB092:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13EB099:       LateIdCallSt
  loc_13EB116:       LateIdCallSt
  loc_13EB165:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13EB16C:       LateIdCallSt
  loc_13EB1B7:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13EB1BE:       LateIdCallSt
  loc_13EB210:       LateIdCallSt
  loc_13EB24A:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13EB296:       LateIdCallSt
  loc_13EB2F0:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13EB2F7:       LateIdCallSt
  loc_13EB342:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13EB349:       LateIdCallSt
  loc_13EB38A:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13EB392:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13EB3BF:       var_11C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13EB3C8:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13EB3CF:       LateIdCallSt
  loc_13EB429:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("PostYn")), CVar(CLng(&H11)), CVar(CLng(var_8A)), var_12C, var_17C, var_15C)) 'String
  loc_13EB430:       LateIdCallSt
  loc_13EB444:       Set var_12C = Nothing 
  loc_13EB44E:       var_8A = (var_8A + 1)
  loc_13EB454:       var_88.MoveNext
  loc_13EB459:       GoTo loc_13EAD49
  loc_13EB45C:     End If
  loc_13EB45C:   End If
  loc_13EB45C:   var_A4 = 0
  loc_13EB466:   Set var_94 = Me.FGrid
  loc_13EB493:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13EB496:     var_A4 = "1"
  loc_13EB4A0:     Set var_94 = Me.FGrid
  loc_13EB4B1:   End If
  loc_13EB4B1:   var_A4 = 1
  loc_13EB4C4:   Me.FGrid.FixedRows = var_A4
  loc_13EB4CF: Else
  loc_13EB4CF:   Call Proc_328_58_F2A080(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C)
  loc_13EB4D4: End If
  loc_13EB4D4: Call Proc_328_61_EB8EE8(var_D8, var_13C, var_12C)
  loc_13EB4DE: Set var_88 = Nothing
  loc_13EB4E1: Exit Sub
  loc_13EB4E2: ' Referenced from: 13EAAE4
  loc_13EB4E2: Proc_6_60_E62BC4(var_17C, var_15C)
  loc_13EB4E7: Exit Sub
End Sub

Public Sub Proc_328_60_E87664(arg_C) 'E87664
  'Data Table: 4E008C
  Dim var_98 As TextBox
  Dim var_8C As Frame
  loc_E875FE: Set var_8C = Me.Txt
  loc_E87604: Call 0.Method_Proc_328_60_E87664C (var_8E, var_86)
  loc_E87614: For var_92 =  To CByte((var_8E - 1)): CByte(1) = var_92 'Byte
  loc_E8762A:   Set var_8C = Me.Txt
  loc_E87630:   Call 0.Method_Proc_328_60_E876640 (CInt(var_86), var_98)
  loc_E87638:   var_98.Enabled = arg_C
  loc_E87647: Next var_92 'Byte
  loc_E8765A: Me.Frame1.Enabled = arg_C
  loc_E87662: Exit Sub
End Sub

Public Sub Proc_328_61_EB8EE8
  'Data Table: 4E008C
  loc_EB8E60: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EB8E72:   Me.DGVType.Visible = False
  loc_EB8E7A: End If
  loc_EB8E96: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EB8EA8:   Me.DGRevenue.Visible = False
  loc_EB8EB0: End If
  loc_EB8ECC: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB8EDE:   Me.DGSundry.Visible = False
  loc_EB8EE6: End If
  loc_EB8EE6: Exit Sub
End Sub

Public Sub Proc_328_62_FBBE80
  'Data Table: 4E008C
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBBD03: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FBBD08:   var_92 = 3 'Byte
  loc_FBBD0C: End If
  loc_FBBD15: Set var_98 = Me.TxtGrid
  loc_FBBD1B: Call 0.Method_Proc_328_62_FBBE800 (0, var_B0)
  loc_FBBD3E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBBD72: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBBD96:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBBD99:     GoTo loc_FBBE6B
  loc_FBBD9C:   End If
  loc_FBBDA0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBBDCA:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBBDD4:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBBE09:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBBE2D:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBBE46:     Set var_98 = Me.TxtGrid
  loc_FBBE4C:     Call 0.Method_Proc_328_62_FBBE800 (0, var_B0, CVar(CLng(var_92)))
  loc_FBBE54:     var_B0.SetFocus
  loc_FBBE65:     Proc_328_62_FBBE80 = 0
  loc_FBBE6B:     ' Referenced from: FBBD99
  loc_FBBE6B:   End If
  loc_FBBE6E: Next var_D4 'Integer
  loc_FBBE78: Proc_328_62_FBBE80 = &HFF
  loc_FBBE7E: Set arg_1448 = 
End Sub

Public Sub Proc_328_63_12DED60
  'Data Table: 4E008C
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_4E00A5 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_100 As Variant
  Dim var_E0 As Field20
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  loc_12DE6B4: On Error Goto loc_12DED5A
  loc_12DE6C4: Set var_B0 = Me.FGrid
  loc_12DE6CA: var_B0.Rows = 1
  loc_12DE6D4: var_8A = 1
  loc_12DE6EB: var_B4 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF inner JOIN SundryMast SM ON (SF.SundryCode = SM.Code and SF.LogSite_Code=Sm.LogSite_Code) where (SF.LOGSITE_CODE='"
  loc_12DE709: unk_4E00A5.Execute var_B4 & MemVar_1F92078 & "')" & " Order By SNo ", var_D0, -1
  loc_12DE714: Set var_88 = var_B0
  loc_12DE73C: If (var_88.RecordCount > 0) Then
  loc_12DE73F:   ' Referenced from: 12DECB6
  loc_12DE74E:   If Not(var_88.EOF) Then
  loc_12DE751:     var_9C = vbNullString
  loc_12DE75B:     Set var_B0 = Me.FGrid
  loc_12DE770:     Set var_DC = Me.FGrid
  loc_12DE777:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DE77F:     var_100 = CVar(CLng(1)) 'Long
  loc_12DE7AF:     var_120 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12DE7B6:     LateIdCallSt
  loc_12DE805:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(2)))) 'String
  loc_12DE80C:     LateIdCallSt
  loc_12DE857:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DE85E:     LateIdCallSt
  loc_12DE8A9:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_DC, var_120)) 'String
  loc_12DE8B0:     LateIdCallSt
  loc_12DE8C6:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12DE902:     LateIdCallSt
  loc_12DE93C:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_DC, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_DC, var_120)), var_AC)
  loc_12DE943:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DE94B:     var_160 = CVar(CLng(6)) 'Long
  loc_12DE981:     var_180 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12DE988:     LateIdCallSt
  loc_12DEA05:     LateIdCallSt
  loc_12DEA43:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12DEA4A:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DEA52:     var_160 = CVar(CLng(8)) 'Long
  loc_12DEA88:     var_180 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12DEA8F:     LateIdCallSt
  loc_12DEB0C:     LateIdCallSt
  loc_12DEB5B:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_DC, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12DEB62:     LateIdCallSt
  loc_12DEBAD:     var_120 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_DC, var_120, CVar(CLng(9)))) 'String
  loc_12DEBB4:     LateIdCallSt
  loc_12DEBF5:     var_110 = CVar(CLng(var_8A)) 'Long
  loc_12DEBFD:     var_160 = CVar(CLng(&HC)) 'Long
  loc_12DEC33:     var_180 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_DC, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12DEC3A:     LateIdCallSt
  loc_12DEC5F:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DEC67:     var_F0 = CVar(CLng(&H10)) 'Long
  loc_12DEC6C:     var_110 = "Manual"
  loc_12DEC75:     LateIdCallSt
  loc_12DEC81:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12DEC89:     var_F0 = CVar(CLng(&H11)) 'Long
  loc_12DEC8E:     var_110 = "Yes"
  loc_12DEC97:     LateIdCallSt
  loc_12DECA1:     Set var_DC = Nothing 
  loc_12DECAB:     var_8A = (var_8A + 1)
  loc_12DECB1:     var_88.MoveNext
  loc_12DECB6:     GoTo loc_12DE73F
  loc_12DECB9:   End If
  loc_12DECCC:   Me.FGrid.FixedRows = 1
  loc_12DECD4: End If
  loc_12DECDA: If (var_8A = 1) Then
  loc_12DECF0:   Me.FGrid.Rows = 1
  loc_12DED0D:   var_120 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12DED15:   Set var_E0 = Me.FGrid
  loc_12DED31:   var_9C = 1
  loc_12DED44:   Me.FGrid.FixedRows = var_9C
  loc_12DED4C: End If
  loc_12DED4C: Call Proc_328_61_EB8EE8(FGrid.DispID_10000, var_120, var_8A, var_DC, var_110, var_F0, var_9C)
  loc_12DED56: Set var_88 = Nothing
  loc_12DED59: Exit Sub
  loc_12DED5A: ' Referenced from: 12DE6B4
  loc_12DED5A: Proc_6_60_E62BC4(var_DC, var_110, var_F0)
  loc_12DED5F: Exit Sub
End Sub

Public Sub Proc_328_64_E7D88C
  'Data Table: 4E008C
  loc_E7D84D: For var_A0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_A0 'Integer
  loc_E7D860:   Call Proc_328_55_1158D04(var_88, CInt(5))
  loc_E7D86B:   If (var_A4 = &HFF) Then
  loc_E7D873:     Proc_328_64_E7D88C = 0
  loc_E7D879:   End If
  loc_E7D87C: Next var_A0 'Integer
  loc_E7D886: Proc_328_64_E7D88C = &HFF
End Sub
