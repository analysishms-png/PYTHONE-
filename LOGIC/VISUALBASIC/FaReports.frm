VERSION 5.00
Begin VB.Form FaReports
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaReports.frx":0
  LinkTopic = "Form3"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11820
  ClientHeight = 8595
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin BtnEnh BtnParam
    Left = 0
    Top = 0
    Width = 1530
    Height = 405
    Visible = 0   'False
    TabIndex = 66
  End
  Begin BtnEnh BTNPRINT
    Index = 0
    Left = 4860
    Top = 6045
    Width = 1395
    Height = 480
    TabIndex = 65
  End
  Begin BtnEnh BTNEXIT
    Left = 6255
    Top = 6045
    Width = 1395
    Height = 480
    TabIndex = 64
  End
  Begin BtnEnh BTNPRINT
    Index = 1
    Left = 3450
    Top = 6045
    Width = 1410
    Height = 480
    Visible = 0   'False
    TabIndex = 63
  End
  Begin CommandButton BTNPRINTz
    Caption = "&Dos Print"
    Index = 1
    BackColor = &HC0C0C0&
    Left = 45
    Top = 9900
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 53
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
  End
  Begin CommandButton BTNEXITz
    Caption = "E&xit"
    BackColor = &HC0C0C0&
    Left = 10560
    Top = 10110
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 6
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DownPicture = "FaReports.frx":442
    ToolTipText = "Exit Form"
  End
  Begin CommandButton BTNPRINTz
    Caption = "Windows &Print"
    Index = 0
    BackColor = &HC0C0C0&
    Left = 8985
    Top = 10080
    Width = 1620
    Height = 375
    Visible = 0   'False
    TabIndex = 5
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Print Report"
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 11820
    Height = 360
    Visible = 0   'False
    TabIndex = 62
  End
  Begin DataGrid DGSite
    Left = 6120
    Top = 2400
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
End

Attribute VB_Name = "FaReports"

Private global_162 As Integer
Private global_180 As Integer
Private global_182 As Integer
Private global_164 As Variant
Private global_130 As Integer
Private global_128 As Integer
Private global_142 As Integer
Private global_140 As Integer
Private global_144 As Variant
Private global_132 As Double

Private Sub ListView_UnknownEvent_13 '100C440
  'Data Table: 583330
  Dim var_88 As Variant
  Dim var_A8 As TextBox
  Dim var_CC As Double
  Dim var_A0 As ListItem
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_100C23C: On Error Goto loc_100C415
  loc_100C24C:  = (var_8A).Visible
  loc_100C25A: If (var_8A = &HFF) Then
  loc_100C261:   Set var_A8 = ()
  loc_100C277:   var_CC = Val(CStr(var_A8.Tag))
  loc_100C281:   Set var_88 = var_CC(var_A4)
  loc_100C298:    = Txt.DispID_D.Text
  loc_100C2AB:   Set var_C0 = var_C4(CInt(var_CC))
  loc_100C2B1:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_100C2B9:   var_C4.Text = 
  loc_100C2E5:   (0).Visible = 
  loc_100C2FF:   var_A4 = CStr(().Tag)
  loc_100C307:   var_CC = Val(var_A4)
  loc_100C315:   Set var_A0 = var_A8(CInt(var_CC))
  loc_100C31B:   Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_100C323:   var_A8.SetFocus
  loc_100C33A: Else
  loc_100C33E:   Set var_A8 = ()
  loc_100C354:   var_CC = Val(CStr(var_A8.Tag))
  loc_100C35E:   Set var_88 = var_CC(var_A4)
  loc_100C375:    = Txt.DispID_D.Text
  loc_100C388:   Set var_C0 = var_C4(CInt(var_CC))
  loc_100C38E:   Call 0.Method_ListView_UnknownEvent_130 (var_A4)
  loc_100C396:   var_C4.Text = 
  loc_100C3C2:   (0).Visible = 
  loc_100C3DC:   var_A4 = CStr(().Tag)
  loc_100C3E4:   var_CC = Val(var_A4)
  loc_100C3F2:   Set var_A0 = var_A8(CInt(var_CC))
  loc_100C3F8:   Call 0.Method_ListView_UnknownEvent_130 (var_CC)
  loc_100C400:   var_A8.SetFocus
  loc_100C414: End If
  loc_100C414: Exit Sub
  loc_100C415: ' Referenced from: 100C23C
  loc_100C41B: Call 0.Method_arg_50 (var_A4)
  loc_100C423: var_D0 = "ListView_Click"
  loc_100C430: Proc_183_57_104AA84(var_A4)
  loc_100C43C: Exit Sub
End Sub

Private Sub DGGroup_UnknownEvent_9 'FD2DD4
  'Data Table: 583330
  Dim Me As Recordset15
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD2C1C: On Error Goto loc_FD2DA9
  loc_FD2C2E: (False).Visible = 
  loc_FD2C4D: If (Me.RecordCount > 0) Then
  loc_FD2C6A:   var_EC = Val(CStr(().Tag))
  loc_FD2CA9:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD2CAF:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_FD2CB7:   var_D0.Tag = var_EC
  loc_FD2CDB:   Set var_B4 = ()
  loc_FD2CF1:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD2D30:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD2D36:   Call 0.Method_DGGroup_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FD2D3E:   var_D0.Text = var_EC
  loc_FD2D5E: End If
  loc_FD2D70: var_C8 = CStr(().Tag)
  loc_FD2D78: var_EC = Val(var_C8)
  loc_FD2D86: Set var_B0 = var_B4(CInt(var_EC))
  loc_FD2D8C: Call 0.Method_DGGroup_UnknownEvent_90 (var_EC)
  loc_FD2D94: var_B4.SetFocus
  loc_FD2DA8: Exit Sub
  loc_FD2DA9: ' Referenced from: FD2C1C
  loc_FD2DAF: Call 0.Method_arg_50 (var_C8)
  loc_FD2DB7: var_F0 = "DGGroup_Click"
  loc_FD2DC4: Proc_183_57_104AA84(var_C8)
  loc_FD2DD0: Exit Sub
End Sub

Private Sub BtnParam_UnknownEvent_9 '1045870
  'Data Table: 583330
  Dim var_88 As Variant
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim var_AC As Variant
  Dim var_C0 As DataGrid
  Dim var_C4 As TextBox
  loc_1045628: On Error Goto loc_1045848
  loc_1045637: (&HFF).Visible = 
  loc_104564D: (CDbl(&H64)).Left = 
  loc_1045664: (CDbl(900)).Top = 
  loc_1045672: var_8C = GRepFormName
  loc_104567D: If Not (var_8C = "Led") Then
  loc_1045688:   If Not (var_8C = "LedInt") Then
  loc_1045693:     If Not (var_8C = "LedDeb") Then
  loc_104569E:       If Not (var_8C = "MemLed") Then
  loc_10456A9:         If Not (var_8C = "LedCred") Then
  loc_10456B4:           If (var_8C = "AcCheckList") Then
  loc_10456B7:           End If
  loc_10456B7:         End If
  loc_10456B7:       End If
  loc_10456B7:     End If
  loc_10456B7:   End If
  loc_10456C2:   Set var_88 = var_90(7)
  loc_10456C8:   Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_10456D0:   var_90.Visible = 
  loc_10456E9:   Set var_88 = var_90(CInt(&HD))
  loc_10456EF:   Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_10456F7:   var_90.Visible = 
  loc_1045703: End If
  loc_104570E: Set var_88 = var_90(6)
  loc_1045714: Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_104571C: var_90.Visible = 
  loc_1045735: Set var_88 = var_90(CInt(&HC))
  loc_104573B: Call 0.Method_BtnParam_UnknownEvent_90 (&HFF)
  loc_1045743: var_90.Visible = 
  loc_104575D: Set var_90 = var_98(CInt(&HC))
  loc_1045763: Call 0.Method_BtnParam_UnknownEvent_90 (var_9C)
  loc_104576B:  = var_98.Left
  loc_104577D:  = (var_94).Left
  loc_1045789: var_AC = CVar((var_94 + var_9C)) 'Single
  loc_1045798: Me.DGSite.Left = var_AC
  loc_10457B6: Set var_90 = var_98(CInt(&HC))
  loc_10457BC: Call 0.Method_BtnParam_UnknownEvent_90 (var_9C)
  loc_10457C4:  = var_98.Top
  loc_10457D7: Set var_C0 = var_C4(CInt(&HC))
  loc_10457DD: Call 0.Method_BtnParam_UnknownEvent_90 (var_C8)
  loc_10457E5:  = var_C4.Height
  loc_10457F7:  = (var_94).Top
  loc_1045807: var_AC = CVar(((var_94 + var_9C) + var_C8)) 'Single
  loc_1045816: Me.DGSite.Top = var_AC
  loc_104583C: Me.DGSite.Tag = CVar(CStr(&HC))
  loc_1045847: Exit Sub
  loc_1045848: ' Referenced from: 1045628
  loc_104584E: Call 0.Method_arg_50 (var_E0)
  loc_1045856: var_E8 = "BtnParam_Click"
  loc_1045863: Proc_183_57_104AA84(var_E0)
  loc_104586F: Exit Sub
End Sub

Private Sub BtnClose_UnknownEvent_9 '116FFC0
  'Data Table: 583330
  Dim var_88 As Frame
  Dim var_CC As Variant
  Dim var_3E8 As String
  Dim unk_58337D As Connection15
  Dim var_4800 As Variant
  loc_116FCD8: On Error Goto loc_116FF96
  loc_116FCE7: (0).Visible = 
  loc_116FD06: If ((GRepFormName = "LedDeb") Or (GRepFormName = "MemLed")) Then
  loc_116FD29:   Set var_88 = var_8C(0)
  loc_116FD2F:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar("UPDATE FAENVIRO SET " & "TagadaHeader1="), var_408)
  loc_116FD3E:   Proc_183_9_EAA760(var_AC, CVar(var_8C))
  loc_116FD46:   var_CC = -1 & var_AC 
  loc_116FD5C:   Set var_F0 = var_F4(1)
  loc_116FD62:   Call 0.Method_BtnClose_UnknownEvent_90 (var_CC & ",TagadaHeader2= ")
  loc_116FD71:   Proc_183_9_EAA760(var_114, CVar(var_F4))
  loc_116FD8F:   Set var_148 = var_14C(2)
  loc_116FD95:   Call 0.Method_BtnClose_UnknownEvent_90 (var_40C & var_114 & ",TagadaHeader3= ")
  loc_116FDA4:   Proc_183_9_EAA760(var_16C)
  loc_116FDC2:   Set var_1A0 = var_1A4(3)
  loc_116FDC8:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_14C) & var_16C & ",TagadaHeader4= ")
  loc_116FDD7:   Proc_183_9_EAA760(var_1C4)
  loc_116FDF5:   Set var_1F8 = var_1FC(4)
  loc_116FDFB:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_1A4) & var_1C4 & ",TagadaHeader5= ")
  loc_116FE0A:   Proc_183_9_EAA760(var_21C)
  loc_116FE28:   Set var_250 = var_254(0)
  loc_116FE2E:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_1FC) & var_21C & ",TagadaFooter1= ")
  loc_116FE3D:   Proc_183_9_EAA760(var_274)
  loc_116FE5B:   Set var_2A8 = var_2AC(1)
  loc_116FE61:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_254) & var_274 & ",TagadaFooter2= ")
  loc_116FE70:   Proc_183_9_EAA760(var_2CC)
  loc_116FE8E:   Set var_300 = var_304(2)
  loc_116FE94:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_2AC) & var_2CC & ",TagadaFooter3= ")
  loc_116FEA3:   Proc_183_9_EAA760(var_324)
  loc_116FEC1:   Set var_358 = var_35C(3)
  loc_116FEC7:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_304) & var_324 & ",TagadaFooter4= ")
  loc_116FED6:   Proc_183_9_EAA760(var_37C)
  loc_116FEF4:   Set var_3B0 = var_3B4(4)
  loc_116FEFA:   Call 0.Method_BtnClose_UnknownEvent_90 (CVar(var_35C) & var_37C & ",TagadaFooter5= ")
  loc_116FF09:   Proc_183_9_EAA760(var_3D4)
  loc_116FF15:   var_3E8 = CStr(CVar(var_3B4) & var_3D4)
  loc_116FF1F:   unk_58337D.Execute var_3E8, , 
  loc_116FF95: End If
  loc_116FF95: Exit Sub
  loc_116FF96: ' Referenced from: 116FCD8
  loc_116FF9C: Call 0.Method_arg_50 (var_3E8)
  loc_116FFB1: Proc_183_57_104AA84(var_3E8)
  loc_116FFBD: Exit Sub
  loc_116FFBE: var_4800 = "BTNCLOSE_Click"
End Sub

Private Sub FGrid_UnknownEvent_0 'E5FD34
  'Data Table: 583330
  Dim var_AC As TextBox
  loc_E5FCF9: Set var_A8 = (CVar(CLng("16777152")))
  loc_E5FD12: Set var_A8 = var_AC(0)
  loc_E5FD18: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E5FD20: var_AC.Visible = DGSite.DispID_26
  loc_E5FD2C: Call Proc_203_55_EB7ED4()
  loc_E5FD31: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DF10
  'Data Table: 583330
  loc_E1DF01: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1DF0F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113CB24
  'Data Table: 583330
  Dim var_88 As DataGrid
  Dim var_9C As String
  Dim var_AC As Variant
  Dim KeyCode As Integer
  Dim var_D4 As DataGrid
  Dim var_11C As Long
  Dim var_124 As Long
  loc_113C7AC: On Error Goto loc_113CAFB
  loc_113C7E6: If ( And (CDbl(Val(CStr(((CLng(KeyCode) = &H26)).Tag))) = CDbl(global_142))) Then
  loc_113C7F6:   Set var_88 = (CVar(CLng("16777215")))
  loc_113C80C:   var_9C = "+{Tab}"
  loc_113C812:   Proc_303_0_FB9B68(CStr(((CLng(KeyCode) = &H26)).Tag), 0)
  loc_113C81C:   KeyCode = 0
  loc_113C822: Else
  loc_113C859:   If (DGSite.DispID_26 And (CDbl(Val(CStr(KeyCode((CLng(KeyCode) = &H28)).Tag))) = CDbl(global_140))) Then
  loc_113C869:     Set var_88 = (CVar(CLng("16777215")))
  loc_113C87F:     var_9C = "	"
  loc_113C885:     Proc_303_0_FB9B68(var_9C, 0)
  loc_113C88F:     KeyCode = 0
  loc_113C892:   End If
  loc_113C892: End If
  loc_113C8A5: KeyCode(KeyCode).InsertRows DGSite.DispID_26, 
  loc_113C8BE: (CVar(CStr(CLng()))).Tag = 
  loc_113C8E2: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_113C8EF:   ().InsertRows , 
  loc_113C907:   (CVar(CLng())).DeleteRowLabels , 
  loc_113C925:   LateIdCallSt
  loc_113C947:   (CVar(CLng())(vbNullString)).InsertRows , 
  loc_113C950:   var_AC = CVar(CLng()) 'Long
  loc_113C968:   Set var_D4 = 2(vbNullString)
  loc_113C96E:   LateIdCallSt
  loc_113C980: End If
  loc_113C98A: var_AC(var_D4).DeleteRowLabels , 
  loc_113C993: var_11C = CLng()
  loc_113C9A3: If (var_11C = CLng(4)) Then
  loc_113C9AC:   var_120 = GRepFormName
  loc_113C9B7:   If Not (var_120 = "CashBook") Then
  loc_113C9C2:     If (var_120 = "BankBook") Then
  loc_113C9C5:     End If
  loc_113C9CF:     (var_11C).InsertRows , 
  loc_113C9E7:     (CVar(CLng())).DeleteRowLabels , 
  loc_113C9FF:     Set var_118 = CVar(CLng())(vbNullString)
  loc_113CA05:     LateIdCallSt
  loc_113CA1D:   End If
  loc_113CA1D: End If
  loc_113CA27: If (CLng(KeyCode) = &HD) Then
  loc_113CA34:   (var_118).InsertRows , 
  loc_113CA3D:   var_124 = CLng()
  loc_113CA4D:   If Not (var_124 = CLng(0)) Then
  loc_113CA57:     If Not (var_124 = CLng(1)) Then
  loc_113CA61:       If Not (var_124 = CLng(2)) Then
  loc_113CA6B:         If Not (var_124 = CLng(3)) Then
  loc_113CA75:           If Not (var_124 = CLng(4)) Then
  loc_113CA7F:             If Not (var_124 = CLng(5)) Then
  loc_113CA89:               If Not (var_124 = CLng(6)) Then
  loc_113CA93:                 If Not (var_124 = CLng(7)) Then
  loc_113CA9D:                   If Not (var_124 = CLng(8)) Then
  loc_113CAA7:                     If (var_124 = CLng(9)) Then
  loc_113CAAA:                     End If
  loc_113CAAA:                   End If
  loc_113CAAA:                 End If
  loc_113CAAA:               End If
  loc_113CAAA:             End If
  loc_113CAAA:           End If
  loc_113CAAA:         End If
  loc_113CAAA:       End If
  loc_113CAAA:     End If
  loc_113CAC0:     Set var_118 = ()
  loc_113CADB:     Proc_183_24_1044608(Me, (var_124))
  loc_113CAF2:     global_162 = 0
  loc_113CAF5:   End If
  loc_113CAF5: End If
  loc_113CAF7: KeyCode = 0
  loc_113CAFA: Exit Sub
  loc_113CAFB: ' Referenced from: 113C7AC
  loc_113CB01: Call 0.Method_arg_50 (var_9C, KeyCode, global_162)
  loc_113CB16: Proc_183_57_104AA84(var_9C, "FGrid_KeyDown")
  loc_113CB22: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F2A834
  'Data Table: 583330
  Dim var_9C As Long
  loc_F2A73C: On Error Goto loc_F2A80B
  loc_F2A749: ().InsertRows , 
  loc_F2A752: var_9C = CLng()
  loc_F2A762: If Not (var_9C = CLng(0)) Then
  loc_F2A76C:   If Not (var_9C = CLng(1)) Then
  loc_F2A776:     If Not (var_9C = CLng(2)) Then
  loc_F2A780:       If Not (var_9C = CLng(3)) Then
  loc_F2A78A:         If Not (var_9C = CLng(4)) Then
  loc_F2A794:           If Not (var_9C = CLng(5)) Then
  loc_F2A79E:             If Not (var_9C = CLng(6)) Then
  loc_F2A7A8:               If Not (var_9C = CLng(7)) Then
  loc_F2A7B2:                 If Not (var_9C = CLng(8)) Then
  loc_F2A7BC:                   If (var_9C = CLng(9)) Then
  loc_F2A7BF:                   End If
  loc_F2A7BF:                 End If
  loc_F2A7BF:               End If
  loc_F2A7BF:             End If
  loc_F2A7BF:           End If
  loc_F2A7BF:         End If
  loc_F2A7BF:       End If
  loc_F2A7BF:     End If
  loc_F2A7BF:   End If
  loc_F2A7D5:   Set var_A4 = ()
  loc_F2A7F0:   Proc_183_24_1044608(Me, (var_9C))
  loc_F2A802: End If
  loc_F2A807: global_162 = 0
  loc_F2A80A: Exit Sub
  loc_F2A80B: ' Referenced from: F2A73C
  loc_F2A811: Call 0.Method_arg_50 (var_B4, global_162)
  loc_F2A826: Proc_183_57_104AA84(var_B4, "FGrid_DblClick")
  loc_F2A832: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '123A370
  'Data Table: 583330
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_CC As String
  Dim var_A4 As TextBox
  Dim var_B0 As TextBox
  loc_1239E50: On Error Goto loc_123A345
  loc_1239E5D: ().InsertRows , 
  loc_1239E66: var_A0 = CLng()
  loc_1239E76: If Not (var_A0 = CLng(6)) Then
  loc_1239E80:   If Not (var_A0 = CLng(7)) Then
  loc_1239E8A:     If Not (var_A0 = CLng(8)) Then
  loc_1239E94:       If (var_A0 = CLng(9)) Then
  loc_1239E97:       End If
  loc_1239E97:     End If
  loc_1239E97:   End If
  loc_1239ED0:   Proc_183_26_1158124(Me, (var_A0), ())
  loc_1239EE5: Else
  loc_1239EEC:   If Not (var_A0 = CLng(0)) Then
  loc_1239EF6:     If (var_A0 = CLng(1)) Then
  loc_1239EF9:     End If
  loc_1239F32:     Proc_183_26_1158124(Me, &HFF(0), (KeyCode))
  loc_1239F47:   Else
  loc_1239F4E:     If (var_A0 = CLng(2)) Then
  loc_1239F8A:       Proc_183_26_1158124(Me, 0(0), (KeyCode))
  loc_1239F9F:     Else
  loc_1239FA6:       If (var_A0 = CLng(3)) Then
  loc_1239FE2:         Proc_183_26_1158124(Me, 0(0), (KeyCode))
  loc_1239FF7:       Else
  loc_1239FFE:         If Not (var_A0 = CLng(4)) Then
  loc_123A008:           If (var_A0 = CLng(5)) Then
  loc_123A00B:           End If
  loc_123A044:           Proc_183_26_1158124(Me, 0(0), (KeyCode))
  loc_123A05C:           var_B8 = GRepFormName
  loc_123A067:           If Not (var_B8 = "CashBook") Then
  loc_123A072:             If (var_B8 = "BankBook") Then
  loc_123A075:             End If
  loc_123A079:             Set var_B0 = 0(0)
  loc_123A09D:             var_CC = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_123A0BF:             Set var_A4 = var_B0
  loc_123A0D1:             Proc_183_26_1158124(Me, var_A4, (KeyCode))
  loc_123A0F9:             Set var_8C = var_A4(0)
  loc_123A0FF:             Call 0.Method_FGrid_UnknownEvent_C0 (var_CC, 0)
  loc_123A107:             0 = var_A4.Text
  loc_123A120:             If (Len(var_CC) <= 1) Then
  loc_123A12F:               Set var_8C = var_A4(0)
  loc_123A135:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A13D:               Asc(var_CC) = var_A4.Text
  loc_123A14E:               Set var_A8 = var_B0(0)
  loc_123A154:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A15C:               var_B0.Text = 
  loc_123A16F:             End If
  loc_123A17B:             Set var_8C = var_A4(0)
  loc_123A181:             Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A189:              = var_A4.Text
  loc_123A19B:             Set var_A8 = var_B0(0)
  loc_123A1A1:             Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_CC))
  loc_123A1A9:             var_B0.SelStart = 
  loc_123A1BC:           End If
  loc_123A1BF:         Else
  loc_123A1C6:           If (var_A0 = CLng(0)) Then
  loc_123A1CF:             var_D4 = GRepFormName
  loc_123A1DA:             If Not (var_D4 = "BudgetVariance") Then
  loc_123A1E5:               If (var_D4 = "Budget") Then
  loc_123A1E8:               End If
  loc_123A1EC:               Set var_B0 = ()
  loc_123A210:               var_CC = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_123A232:               Set var_A4 = var_B0
  loc_123A244:               Proc_183_26_1158124(Me, var_A4, ())
  loc_123A26C:               Set var_8C = var_A4(0)
  loc_123A272:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC, 0)
  loc_123A27A:               0 = var_A4.Text
  loc_123A293:               If (Len(var_CC) <= 1) Then
  loc_123A2A2:                 Set var_8C = var_A4(0)
  loc_123A2A8:                 Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A2B0:                 Asc(var_CC) = var_A4.Text
  loc_123A2C1:                 Set var_A8 = var_B0(0)
  loc_123A2C7:                 Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A2CF:                 var_B0.Text = 
  loc_123A2E2:               End If
  loc_123A2EE:               Set var_8C = var_A4(0)
  loc_123A2F4:               Call 0.Method_FGrid_UnknownEvent_C0 (var_CC)
  loc_123A2FC:                = var_A4.Text
  loc_123A30E:               Set var_A8 = var_B0(0)
  loc_123A314:               Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_CC))
  loc_123A31C:               var_B0.SelStart = 
  loc_123A32F:             End If
  loc_123A32F:           End If
  loc_123A32F:         End If
  loc_123A32F:       End If
  loc_123A32F:     End If
  loc_123A32F:   End If
  loc_123A32F: End If
  loc_123A339: If (CLng(KeyCode) <> &HD) Then
  loc_123A341:   global_162 = &HFF
  loc_123A344: End If
  loc_123A344: Exit Sub
  loc_123A345: ' Referenced from: 1239E50
  loc_123A34B: Call 0.Method_arg_50 (var_CC)
  loc_123A360: Proc_183_57_104AA84(var_CC, "FGrid_KeyPress")
  loc_123A36C: Exit Sub
  loc_123A36D: If global_162 Then Exit Sub
  loc_123A36D: End If
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DB50
  'Data Table: 583330
  loc_E1DB41: Set var_A8 = (CVar(CLng("16777152")))
  loc_E1DB4F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1DF60
  'Data Table: 583330
  loc_E1DF51: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1DF5F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E44D38
  'Data Table: 583330
  Dim var_8C As TextBox
  loc_E44D17: Set var_88 = var_8C(0)
  loc_E44D1D: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E44D25: var_8C.Visible = 
  loc_E44D31: Call Proc_203_55_EB7ED4()
  loc_E44D36: Exit Sub
End Sub

Private Sub Check1_Click(Index As Integer) '10234E0
  'Data Table: 583330
  Dim var_8C As Variant
  Dim var_A0 As Variant
  loc_10232B8: On Error Goto loc_10234B7
  loc_10232C8: Set var_88 = var_8C(Index)
  loc_10232CE: Call 0.Method_Check1_Click0 (var_8E)
  loc_10232D6:  = var_8C.Value
  loc_10232EC: If (CLng(var_8E) = 0) Then
  loc_10232FD:   Set var_88 = var_8C(Index)
  loc_1023303:   Call 0.Method_Check1_Click0 (True)
  loc_102330B:   var_8C.Enabled = 
  loc_1023321:   Set var_88 = var_8C(Index)
  loc_1023327:   Call 0.Method_Check1_Click0 ()
  loc_1023348:   If (CLng(var_8C.RowCount) > 1) Then
  loc_102335E:     Set var_88 = var_8C(Index)
  loc_1023364:     Call 0.Method_Check1_Click0 (1)
  loc_102338B:     Set var_88 = var_8C(Index)
  loc_1023391:     Call 0.Method_Check1_Click0 (1)
  loc_10233A5:   End If
  loc_10233A8: Else
  loc_10233B7:   Set var_88 = var_8C(Index)
  loc_10233BD:   Call 0.Method_Check1_Click0 (False, DGSite.DispID_B)
  loc_10233C5:   var_8C.Enabled = DGSite.DispID_A
  loc_10233DB:   Set var_88 = var_8C(Index)
  loc_10233E1:   Call 0.Method_Check1_Click0 ()
  loc_1023402:   If (CLng(var_8C.RowCount) > 1) Then
  loc_1023418:     Set var_88 = var_8C(Index)
  loc_102341E:     Call 0.Method_Check1_Click0 (0)
  loc_1023445:     Set var_88 = var_8C(Index)
  loc_102344B:     Call 0.Method_Check1_Click0 (0)
  loc_1023469:     Set var_88 = var_8C(Index)
  loc_102346F:     Call 0.Method_Check1_Click0 (DGSite.DispID_B)
  loc_1023486:     var_A0 = CVar((CLng(var_8C.RowCount) - 1)) 'Long
  loc_1023495:     Set var_C4 = var_C8(Index)
  loc_102349B:     Call 0.Method_Check1_Click0 (0)
  loc_10234B6:   End If
  loc_10234B6: End If
  loc_10234B6: Exit Sub
  loc_10234B7: ' Referenced from: 10232B8
  loc_10234BD: Call 0.Method_arg_50 (var_CC, DGSite.DispID_C)
  loc_10234D2: Proc_183_57_104AA84(var_CC, "Check1_Click")
  loc_10234DE: Exit Sub
End Sub

Private Sub Check1_GotFocus(Index As Integer) 'E437BC
  'Data Table: 583330
  Dim var_8C As CheckBox
  loc_E4379F: Set var_88 = var_8C(Index)
  loc_E437A5: Call 0.Method_Check1_GotFocus0 (&HFF)
  loc_E437AD: var_8C.BackColor = 
  loc_E437B9: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E23A5C
  'Data Table: 583330
  loc_E23A42: If (Shift = &HD) Then
  loc_E23A53:   Proc_303_0_FB9B68("	")
  loc_E23A5B: End If
  loc_E23A5B: Exit Sub
End Sub

Private Sub Check1_Validate(Cancel As Boolean) 'E43690
  'Data Table: 583330
  Dim var_8C As CheckBox
  loc_E43673: Set var_88 = var_8C(Cancel)
  loc_E43679: Call 0.Method_Check1_Validate0 (&H800000)
  loc_E43681: var_8C.BackColor = 
  loc_E4368D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_0 'E47048
  'Data Table: 583330
  loc_E4702B: Set var_88 = var_8C(Cancel)
  loc_E47031: Call 0.Method_GridSel_UnknownEvent_00 (CVar(CLng("16777152")))
  loc_E47045: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_8 'E46620
  'Data Table: 583330
  loc_E46603: Set var_88 = var_8C(Cancel)
  loc_E46609: Call 0.Method_GridSel_UnknownEvent_80 (CVar(CLng("15595518")))
  loc_E4661D: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_9 'FAF5D0
  'Data Table: 583330
  Dim var_8C As DataGrid
  Dim var_F8 As String
  Dim var_100 As DataGrid
  Dim var_170 As String
  loc_FAF464: On Error Goto loc_FAF5A6
  loc_FAF46D: If (Cancel = 1) Then
  loc_FAF4B7:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_FAF4C3:     Set var_88 = var_8C(1)
  loc_FAF4C9:     Call 0.Method_GridSel_UnknownEvent_90 ()
  loc_FAF4D1:     var_8C.InsertRows , 
  loc_FAF4F1:     Set var_A0 = var_A4(1)
  loc_FAF4F7:     Call 0.Method_GridSel_UnknownEvent_90 (3)
  loc_FAF50A:     var_F8 = CStr(DGSite.DispID_41)
  loc_FAF51D:     Set var_FC = var_100(1)
  loc_FAF523:     Call 0.Method_GridSel_UnknownEvent_90 (var_F8 & vbCrLf)
  loc_FAF52B:     var_100.InsertRows CVar(CLng()), 
  loc_FAF54B:     Set var_114 = var_118(1)
  loc_FAF551:     Call 0.Method_GridSel_UnknownEvent_90 (4)
  loc_FAF575:     (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_FAF5A5:   End If
  loc_FAF5A5: End If
  loc_FAF5A5: Exit Sub
  loc_FAF5A6: ' Referenced from: FAF464
  loc_FAF5AC: Call 0.Method_arg_50 (var_F8)
  loc_FAF5B4: var_170 = "GridSel_Click"
  loc_FAF5C1: Proc_183_57_104AA84(var_F8)
  loc_FAF5CD: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1227848
  'Data Table: 583330
  Dim var_98 As DataGrid
  Dim var_168 As DataGrid
  Dim var_8C As String
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  Dim var_1E4 As Integer
  Dim var_1EC As String
  loc_1227370: On Error Goto loc_1227820
  loc_1227379: If (arg_10 = &HD) Then
  loc_122738A:   Proc_303_0_FB9B68("	")
  loc_1227392: End If
  loc_122739C: Set var_94 = var_98(Cancel)
  loc_12273A2: Call 0.Method_GridSel_UnknownEvent_A0 (0)
  loc_12273C3: If (CLng(var_98.RowCount) < 1) Then
  loc_12273C6:   Exit Sub
  loc_12273C7: End If
  loc_12273DB: Set var_94 = var_98(Cancel)
  loc_12273E1: Call 0.Method_GridSel_UnknownEvent_A0 ((CLng(arg_10) = &H20))
  loc_12273E9: var_98.DeleteRowLabels , 
  loc_1227403: If ( And (CLng() = 0)) Then
  loc_1227416:   Set var_94 = var_98(Cancel)
  loc_122741C:   Call 0.Method_GridSel_UnknownEvent_A0 ("WINGDINGS")
  loc_1227442:   Set var_94 = var_98(Cancel)
  loc_1227448:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CDbl(&HE)))
  loc_1227466:   Set var_94 = var_98(Cancel)
  loc_122746C:   Call 0.Method_GridSel_UnknownEvent_A0 (DGSite.DispID_4E)
  loc_1227474:   var_98.InsertRows DGSite.DispID_4D, 
  loc_1227495:   Set var_CC = var_D0(Cancel)
  loc_122749B:   Call 0.Method_GridSel_UnknownEvent_A0 (0)
  loc_12274B9:   Set var_164 = var_168(Cancel)
  loc_12274BF:   Call 0.Method_GridSel_UnknownEvent_A0 (DGSite.DispID_41)
  loc_12274C7:   var_168.InsertRows CVar(CLng()), 
  loc_122751E:   Set var_17C = var_180(Cancel)
  loc_1227524:   Call 0.Method_GridSel_UnknownEvent_A0 (CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_122752C:   LateIdCallSt
  loc_1227560:   var_1E2 = Cancel
  loc_1227569:   If (var_1E2 = 1) Then
  loc_122757D:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_122758F:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_12275A3:     Set var_94 = var_98(Cancel)
  loc_12275A9:     Call 0.Method_GridSel_UnknownEvent_A0 (var_86, var_1E2)
  loc_12275B1:     var_98.InsertRows var_180, CVar(CLng())
  loc_12275C5:     global_96(CLng(var_86)) = CInt(CLng())
  loc_12275D3:   Else
  loc_12275D9:     If (var_1E2 = 2) Then
  loc_12275ED:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_12275FF:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_1227613:       Set var_94 = var_98(Cancel)
  loc_1227619:       Call 0.Method_GridSel_UnknownEvent_A0 (var_86)
  loc_1227621:       var_98.InsertRows , 
  loc_1227635:       global_100(CLng(var_86)) = CInt(CLng())
  loc_1227643:     Else
  loc_1227649:       If (var_1E2 = 3) Then
  loc_122765D:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_122766F:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_1227683:         Set var_94 = var_98(Cancel)
  loc_1227689:         Call 0.Method_GridSel_UnknownEvent_A0 (var_86)
  loc_1227691:         var_98.InsertRows , 
  loc_12276A5:         global_104(CLng(var_86)) = CInt(CLng())
  loc_12276B0:       End If
  loc_12276B0:     End If
  loc_12276B0:   End If
  loc_12276B0: End If
  loc_12276B3: var_1E4 = arg_10
  loc_12276C0: If Not (var_1E4 = CInt(&H26)) Then
  loc_12276CD:   If Not (var_1E4 = CInt(&H28)) Then
  loc_12276DA:     If Not (var_1E4 = CInt(&H22)) Then
  loc_12276E7:       If (var_1E4 = CInt(&H21)) Then
  loc_12276EA:       End If
  loc_12276EA:     End If
  loc_12276EA:   End If
  loc_1227731:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_122773D:     Set var_94 = var_98(1)
  loc_1227743:     Call 0.Method_GridSel_UnknownEvent_A0 (var_1E4)
  loc_122774B:     var_98.InsertRows , 
  loc_122776B:     Set var_CC = var_D0(1)
  loc_1227771:     Call 0.Method_GridSel_UnknownEvent_A0 (3)
  loc_1227784:     var_8C = CStr(DGSite.DispID_41)
  loc_1227797:     Set var_164 = var_168(1)
  loc_122779D:     Call 0.Method_GridSel_UnknownEvent_A0 (var_8C & vbCrLf)
  loc_12277A5:     var_168.InsertRows CVar(CLng()), 
  loc_12277C5:     Set var_17C = var_180(1)
  loc_12277CB:     Call 0.Method_GridSel_UnknownEvent_A0 (4)
  loc_12277EF:     (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_122781F:   End If
  loc_122781F: End If
  loc_122781F: Exit Sub
  loc_1227820: ' Referenced from: 1227370
  loc_1227826: Call 0.Method_arg_50 (var_8C)
  loc_122782E: var_1EC = "GridSel_KeyDown"
  loc_122783B: Proc_183_57_104AA84(var_8C)
  loc_1227847: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_C '11E5FF8
  'Data Table: 583330
  Dim var_8C As DataGrid
  Dim var_A4 As DataGrid
  Dim var_B6 As Integer
  Dim Me As Recordset15
  Dim var_BC As Fields15
  Dim var_D0 As Variant
  Dim arg_10 As Integer
  Dim var_D4 As String
  Dim var_E4 As String
  Dim var_E8 As String
  Dim var_88 As TextBox
  loc_11E5B94: On Error Goto loc_11E5FCE
  loc_11E5BA1: Set var_88 = var_8C(Cancel)
  loc_11E5BA7: Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E5BAF: var_8C.DeleteRowLabels , 
  loc_11E5BC8: Set var_A0 = var_A4(Cancel)
  loc_11E5BCE: Call 0.Method_GridSel_UnknownEvent_C0 ((CLng() = 0))
  loc_11E5BD6: var_A4.InsertRows , 
  loc_11E5BF8: If ( Or (CLng() = 0)) Then
  loc_11E5BFB:   Exit Sub
  loc_11E5BFC: End If
  loc_11E5BFF: var_B6 = Cancel
  loc_11E5C08: If (var_B6 = 1) Then
  loc_11E5C1C:   Set var_88 = var_8C(Cancel)
  loc_11E5C22:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E5C31:   Set var_A0 = var_A4(Cancel)
  loc_11E5C37:   Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E5C3F:   var_A4.DeleteRowLabels , 
  loc_11E5C69:   var_D0 = Me.Fields.Item(CVar(CLng(var_9C)))
  loc_11E5C9B:   Set var_DC = var_8C
  loc_11E5CAA:   Proc_183_11_113C750((var_B6), var_DC, global_56, arg_10)
  loc_11E5CD0:   arg_10 = 0
  loc_11E5D1A:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_11E5D26:     Set var_88 = var_8C(1)
  loc_11E5D2C:     Call 0.Method_GridSel_UnknownEvent_C0 (arg_10, var_D0.Name)
  loc_11E5D34:     var_8C.InsertRows "16777152", "15595518"
  loc_11E5D54:     Set var_A0 = var_A4(1)
  loc_11E5D5A:     Call 0.Method_GridSel_UnknownEvent_C0 (3)
  loc_11E5D80:     Set var_BC = var_D0(1)
  loc_11E5D86:     Call 0.Method_GridSel_UnknownEvent_C0 (CStr(DGSite.DispID_41) & vbCrLf)
  loc_11E5D8E:     var_D0.InsertRows CVar(CLng()), 
  loc_11E5DAE:     Set var_D8 = var_DC(1)
  loc_11E5DB4:     Call 0.Method_GridSel_UnknownEvent_C0 (4)
  loc_11E5DD8:     (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_11E5E08:   End If
  loc_11E5E0B: Else
  loc_11E5E11:   If (var_B6 = 2) Then
  loc_11E5E25:     Set var_88 = var_8C(Cancel)
  loc_11E5E2B:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E5E3A:     Set var_A0 = var_A4(Cancel)
  loc_11E5E40:     Call 0.Method_GridSel_UnknownEvent_C0 ()
  loc_11E5E48:     var_A4.DeleteRowLabels , 
  loc_11E5E7A:     var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11E5E82:     var_E8 = "15595518"
  loc_11E5E8B:     var_E4 = "16777152"
  loc_11E5EB3:     Proc_183_11_113C750((), var_8C, global_60, arg_10)
  loc_11E5ED9:     arg_10 = 0
  loc_11E5EDF:   Else
  loc_11E5EE5:     If (var_B6 = 3) Then
  loc_11E5EF9:       Set var_88 = var_8C(Cancel)
  loc_11E5EFF:       Call 0.Method_GridSel_UnknownEvent_C0 (var_E4)
  loc_11E5F0E:       Set var_A0 = var_A4(Cancel)
  loc_11E5F14:       Call 0.Method_GridSel_UnknownEvent_C0 (var_E8)
  loc_11E5F1C:       var_A4.DeleteRowLabels , 
  loc_11E5F4E:       var_D4 = Me.Fields.Item(CVar(CLng(var_9C))).Name
  loc_11E5F56:       var_E8 = "15595518"
  loc_11E5F5F:       var_E4 = "16777152"
  loc_11E5F87:       Proc_183_11_113C750(var_D4(arg_10), var_8C, global_64, arg_10)
  loc_11E5FAD:       arg_10 = 0
  loc_11E5FB0:     End If
  loc_11E5FB0:   End If
  loc_11E5FB0: End If
  loc_11E5FB5: var_D4 = CStr(Cancel)
  loc_11E5FC2: arg_10(var_D4).Tag = var_D4
  loc_11E5FCD: Exit Sub
  loc_11E5FCE: ' Referenced from: 11E5B94
  loc_11E5FD4: Call 0.Method_arg_50 (var_D4, var_E4)
  loc_11E5FE9: Proc_183_57_104AA84(var_D4, "GridSel_KeyPress")
  loc_11E5FF5: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E809C4
  'Data Table: 583330
  Dim var_8C As DataGrid
  loc_E80966: Set var_88 = var_8C(Cancel)
  loc_E8096C: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E80974: var_8C.DeleteRowLabels , 
  loc_E8098D: If (CLng() <> 0) Then
  loc_E80990:   Exit Sub
  loc_E80991: End If
  loc_E8099B: Set var_88 = var_8C(Cancel)
  loc_E809A1: Call 0.Method_GridSel_UnknownEvent_E0 ()
  loc_E809A9: var_8C.InsertRows , 
  loc_E809B6: global_180 = CInt(CLng())
  loc_E809C3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1146D10
  'Data Table: 583330
  Dim var_90 As DataGrid
  Dim var_E8 As String
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_1146990: On Error Goto loc_1146CE8
  loc_114699D: Set var_8C = var_90(Cancel)
  loc_11469A3: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_11469AB: var_90.DeleteRowLabels , 
  loc_11469CE: If ((CLng() <> 0) Or (global_180 = 0)) Then
  loc_11469D1:   Exit Sub
  loc_11469D2: End If
  loc_11469DC: Set var_8C = var_90(Cancel)
  loc_11469E2: Call 0.Method_GridSel_UnknownEvent_100 ()
  loc_11469EA: var_90.InsertRowLabels , 
  loc_11469F7: global_182 = CInt(CLng())
  loc_1146A13: For var_A4 = global_180 To global_182: var_88 = var_A4 'Integer
  loc_1146A2C:   Set var_8C = var_90(Cancel)
  loc_1146A32:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CLng(var_88)), global_180)
  loc_1146A59:   Set var_8C = var_90(Cancel)
  loc_1146A5F:   Call 0.Method_GridSel_UnknownEvent_100 (0, DGSite.DispID_A)
  loc_1146A83:   Set var_8C = var_90(Cancel)
  loc_1146A89:   Call 0.Method_GridSel_UnknownEvent_100 ("WINGDINGS", DGSite.DispID_B)
  loc_1146AAF:   Set var_8C = var_90(Cancel)
  loc_1146AB5:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CDbl(&HE)), DGSite.DispID_4D)
  loc_1146AE5:   Set var_8C = var_90(Cancel)
  loc_1146AEB:   Call 0.Method_GridSel_UnknownEvent_100 (0, CVar(CLng(var_88)))
  loc_1146B2B:   var_E8 = CStr(var_A0)
  loc_1146B51:   Set var_14C = var_150(Cancel)
  loc_1146B57:   Call 0.Method_GridSel_UnknownEvent_100 (CVar(CStr(IIf((var_E8 = "ü"), " ", "ü"))), 0, CVar(CLng(var_88)))
  loc_1146B5F:   LateIdCallSt
  loc_1146B87:   var_1B2 = Cancel
  loc_1146B90:   If (var_1B2 = 1) Then
  loc_1146BA4:     var_86 = CInt((UBound(global_96, 1) + 1))
  loc_1146BB6:     ReDim Preserve global_96(0 To CLng(var_86))
  loc_1146BCA:     Set var_8C = var_90(Cancel)
  loc_1146BD0:     Call 0.Method_GridSel_UnknownEvent_100 (var_86, var_1B2, var_150)
  loc_1146BD8:     var_90.InsertRows DGSite.DispID_41, DGSite.DispID_4E
  loc_1146BEC:     global_96(CLng(var_86)) = CInt(CLng(global_182))
  loc_1146BFA:   Else
  loc_1146C00:     If (var_1B2 = 2) Then
  loc_1146C14:       var_86 = CInt((UBound(global_100, 1) + 1))
  loc_1146C26:       ReDim Preserve global_100(0 To CLng(var_86))
  loc_1146C3A:       Set var_8C = var_90(Cancel)
  loc_1146C40:       Call 0.Method_GridSel_UnknownEvent_100 (var_86)
  loc_1146C48:       var_90.InsertRows , 
  loc_1146C5C:       global_100(CLng(var_86)) = CInt(CLng())
  loc_1146C6A:     Else
  loc_1146C70:       If (var_1B2 = 3) Then
  loc_1146C84:         var_86 = CInt((UBound(global_104, 1) + 1))
  loc_1146C96:         ReDim Preserve global_104(0 To CLng(var_86))
  loc_1146CAA:         Set var_8C = var_90(Cancel)
  loc_1146CB0:         Call 0.Method_GridSel_UnknownEvent_100 (var_86)
  loc_1146CB8:         var_90.InsertRows , 
  loc_1146CCC:         global_104(CLng(var_86)) = CInt(CLng())
  loc_1146CD7:       End If
  loc_1146CD7:     End If
  loc_1146CD7:   End If
  loc_1146CDA: Next var_A4 'Integer
  loc_1146CE4: global_180 = 0
  loc_1146CE7: Exit Sub
  loc_1146CE8: ' Referenced from: 1146990
  loc_1146CEE: Call 0.Method_arg_50 (var_E8)
  loc_1146D03: Proc_183_57_104AA84(var_E8, "GridSel_MouseUp")
  loc_1146D0F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_12 'F97490
  'Data Table: 583330
  Dim var_8C As DataGrid
  Dim var_100 As DataGrid
  loc_F97356: If (Cancel = 1) Then
  loc_F973A0:   If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_F973AC:     Set var_88 = var_8C(1)
  loc_F973B2:     Call 0.Method_GridSel_UnknownEvent_120 ()
  loc_F973BA:     var_8C.InsertRows , 
  loc_F973DA:     Set var_A0 = var_A4(1)
  loc_F973E0:     Call 0.Method_GridSel_UnknownEvent_120 (3)
  loc_F97406:     Set var_FC = var_100(1)
  loc_F9740C:     Call 0.Method_GridSel_UnknownEvent_120 (CStr(DGSite.DispID_41) & vbCrLf)
  loc_F97414:     var_100.InsertRows CVar(CLng()), 
  loc_F97434:     Set var_114 = var_118(1)
  loc_F9743A:     Call 0.Method_GridSel_UnknownEvent_120 (4)
  loc_F9745E:     (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_F9748E:   End If
  loc_F9748E: End If
  loc_F9748E: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_13 'E47118
  'Data Table: 583330
  loc_E470FB: Set var_88 = var_8C(Cancel)
  loc_E47101: Call 0.Method_GridSel_UnknownEvent_130 (CVar(CLng("16777152")))
  loc_E47115: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_14 'E466F0
  'Data Table: 583330
  loc_E466D3: Set var_88 = var_8C(Cancel)
  loc_E466D9: Call 0.Method_GridSel_UnknownEvent_140 (CVar(CLng("15595518")))
  loc_E466ED: Exit Sub
  loc_E466EE: Error
End Sub

Private Sub Form_Load() '12B9A70
  'Data Table: 583330
  Dim var_A8 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As Variant
  Dim var_D0 As TextBox
  loc_12B9428: On Error Goto loc_12B9A48
  loc_12B9438: Set var_A8 = (CVar(CLng(MemVar_1F921B4)))
  loc_12B943E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_12()
  loc_12B944D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_12B9464: Set var_A8 = var_AC(1)
  loc_12B946A: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F921B4)))
  loc_12B9472: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_12()
  loc_12B9490: Set var_A8 = var_AC(2)
  loc_12B9496: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F921B4)))
  loc_12B949E: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_12()
  loc_12B94BC: Set var_A8 = var_AC(3)
  loc_12B94C2: Call 0.Method_Form_Load0 (CVar(CLng(MemVar_1F921B4)))
  loc_12B94CA: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_12()
  loc_12B94E4: (CLng(MemVar_1F921B0)).BackColor = 
  loc_12B94FA: (CLng(MemVar_1F921B0)).BackColor = 
  loc_12B9509: Call 0.Method_arg_74 (CDbl(0))
  loc_12B9515: Call 0.Method_arg_7C (CDbl(0))
  loc_12B9522: Call 0.Method_Me4 (CDbl(11900))
  loc_12B952F: Call 0.Method_MeC (CDbl(7085))
  loc_12B9534: Call Proc_203_54_17A4CA4()
  loc_12B9543: Set var_A8 = Me.TopCtrl1
  loc_12B9549: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_68030005("Add")
  loc_12B955D: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_12B956E: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_12B957F: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_12B9590: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_12B95A1: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_12B95B2: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_12B95C3: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_12B95D4: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_12B95E5: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_12B95F6: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_12B9610: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_12B961E: Set var_A8 = MemVar_1F92044
  loc_12B962D: Call 0.Method_Form_Load8 (var_A8)
  loc_12B9643: Me.TopCtrl1.Clone
  loc_12B965D: Call 0.Method_arg_50 (var_A8, -1)
  loc_12B968D: Me.Connection15.Execute "SELECT * FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C4, -1
  loc_12B969E: Set global_68 = var_A8
  loc_12B96CA: If (Me.RecordCount > 0) Then
  loc_12B96DF:   var_A8 = Me.Fields
  loc_12B9704:   Set var_CC = var_D0(0)
  loc_12B970A:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(var_A8.Item("TagadaHeader1")), var_A8))
  loc_12B9712:   var_D0.Text = var_A8
  loc_12B975D:   Set var_CC = var_D0(1)
  loc_12B9763:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader2"))))
  loc_12B976B:   var_D0.Text = 
  loc_12B97B6:   Set var_CC = var_D0(2)
  loc_12B97BC:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader3"))))
  loc_12B97C4:   var_D0.Text = 
  loc_12B980F:   Set var_CC = var_D0(3)
  loc_12B9815:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader4"))))
  loc_12B981D:   var_D0.Text = 
  loc_12B9868:   Set var_CC = var_D0(4)
  loc_12B986E:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaHeader5"))))
  loc_12B9876:   var_D0.Text = 
  loc_12B98C1:   Set var_CC = var_D0(0)
  loc_12B98C7:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter1"))))
  loc_12B98CF:   var_D0.Text = 
  loc_12B991A:   Set var_CC = var_D0(1)
  loc_12B9920:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter2"))))
  loc_12B9928:   var_D0.Text = 
  loc_12B9973:   Set var_CC = var_D0(2)
  loc_12B9979:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter3"))))
  loc_12B9981:   var_D0.Text = 
  loc_12B99CC:   Set var_CC = var_D0(3)
  loc_12B99D2:   Call 0.Method_Form_Load0 (Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter4"))))
  loc_12B99DA:   var_D0.Text = 
  loc_12B9A19:   var_B0 = Proc_183_2_E5A304(CVar(Me.Fields.Item("TagadaFooter5")))
  loc_12B9A25:   Set var_CC = var_D0(4)
  loc_12B9A2B:   Call 0.Method_Form_Load0 (var_B0)
  loc_12B9A33:   var_D0.Text = 
  loc_12B9A47: End If
  loc_12B9A47: Exit Sub
  loc_12B9A48: ' Referenced from: 12B9428
  loc_12B9A4E: Call 0.Method_arg_50 (var_B0)
  loc_12B9A56: var_D4 = "Form_Load"
  loc_12B9A63: Proc_183_57_104AA84(var_B0)
  loc_12B9A6F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'EB1D68
  'Data Table: 583330
  loc_EB1CD7: Set global_56 = Nothing
  loc_EB1CE9: Set global_60 = Nothing
  loc_EB1CFB: Set global_184 = Nothing
  loc_EB1D0D: Set global_68 = Nothing
  loc_EB1D1F: Set global_72 = Nothing
  loc_EB1D31: Set global_76 = Nothing
  loc_EB1D43: Set global_80 = Nothing
  loc_EB1D4F: MemVar_1F921E4 = Nothing
  loc_EB1D5E: Set global_188 = Nothing
  loc_EB1D65: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E68548
  'Data Table: 583330
  loc_E68500: On Error Goto loc_E6851E
  loc_E68515: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E6851D: Exit Sub
  loc_E6851E: ' Referenced from: E68500
  loc_E68524: Call 0.Method_arg_50 (var_8C)
  loc_E68539: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E68545: Exit Sub
End Sub

Private Sub TEXT_GotFocus(Index As Integer) '10F953C
  'Data Table: 583330
  Dim var_8A As Integer
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_108 As TextBox
  Dim var_134 As Variant
  loc_10F9230: On Error Goto loc_10F9511
  loc_10F9236: var_8A = Index
  loc_10F9241: If Not (var_8A = CInt(&HA)) Then
  loc_10F924C:   If Not (var_8A = CInt(9)) Then
  loc_10F9257:     If (var_8A = CInt(8)) Then
  loc_10F925A:     End If
  loc_10F925A:   End If
  loc_10F9267:   ReDim var_90(0 To 5)
  loc_10F927E:   var_90(0) = "="
  loc_10F928D:   var_90(1) = "<"
  loc_10F929C:   var_90(2) = "<="
  loc_10F92AB:   var_90(3) = ">"
  loc_10F92BA:   var_90(4) = ">="
  loc_10F92C9:   var_90(5) = "<>"
  loc_10F92E0:   global_164 = Array(var_90)
  loc_10F9306:   Set var_108 = ()
  loc_10F9320:   Set global_184 = Proc_183_37_EFE3E8(var_8A(global_164), var_108, Index)
  loc_10F9334: Else
  loc_10F933C:   If (var_8A = CInt(&HC)) Then
  loc_10F935B:     Me.Recordset15.CursorLocation = 3
  loc_10F9372:     var_B0 = CVar(MemVar_1F921DC) 'Address
  loc_10F9383:     Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", var_B0, 0
  loc_10F9391:     CVarUnk
  loc_10F9396:     VerifyVarObj
  loc_10F939C:     Set var_104 = Me.DGSite
  loc_10F93A2:     LateIdStAd
  loc_10F9404:     Call 0.Method_TEXT_GotFocus0 (var_124, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_108(Index), New)
  loc_10F940C:     1 = var_108.Text
  loc_10F9424:     If (-1 Or (var_124 = vbNullString)) Then
  loc_10F9427:       Exit Sub
  loc_10F9428:     End If
  loc_10F9435:     Set var_104 = var_108(Index)
  loc_10F943B:     Call 0.Method_TEXT_GotFocus0 (var_124, global_164)
  loc_10F9443:     6 = var_108.Text
  loc_10F944B:     var_134 = CVar(var_124) 'String
  loc_10F9490:     If CBool(var_134 <> Me.Fields.Item("Name").Value) Then
  loc_10F9499:       Me.MoveFirst
  loc_10F94BE:       Set var_104 = var_108(Index)
  loc_10F94C4:       Call 0.Method_TEXT_GotFocus0 (var_124, "Name =", 0)
  loc_10F94CC:       1 = var_108.Text
  loc_10F94DA:       Proc_183_9_EAA760(var_134, CVar(var_124))
  loc_10F94F0:       Me.Find CStr(var_B0 & var_134), , 
  loc_10F9508:     End If
  loc_10F9508:   End If
  loc_10F9508: End If
  loc_10F950D: Set var_88 = Nothing
  loc_10F9510: Exit Sub
  loc_10F9511: ' Referenced from: 10F9230
  loc_10F9517: Call 0.Method_arg_50 (var_124)
  loc_10F951F: var_14C = "Text_GotFocus"
  loc_10F952C: Proc_183_57_104AA84(var_124)
  loc_10F9538: Exit Sub
End Sub

Private Sub TEXT_KeyDown(KeyCode As Integer, Shift As Integer) '109FA58
  'Data Table: 583330
  Dim var_8C As Integer
  Dim var_90 As Frame
  Dim var_98 As TextBox
  Dim var_A8 As Frame
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  loc_109F7C8: On Error Goto loc_109FA2D
  loc_109F7D1: If (Shift = &HD) Then
  loc_109F7DC:   var_88 = "	"
  loc_109F7E2:   Proc_303_0_FB9B68(var_88)
  loc_109F7EA: End If
  loc_109F7ED: var_8C = KeyCode
  loc_109F7F6: If Not (var_8C = 0) Then
  loc_109F7FF:   If Not (var_8C = 1) Then
  loc_109F808:     If (var_8C = 2) Then
  loc_109F80B:     End If
  loc_109F80B:   End If
  loc_109F815:   Set var_90 = var_94(KeyCode)
  loc_109F81B:   Call 0.Method_TEXT_KeyDown0 (var_8C)
  loc_109F836:   Proc_183_21_FA163C(var_94, Shift, &HA)
  loc_109F845: Else
  loc_109F84B:   If (var_8C = 5) Then
  loc_109F858:     Set var_90 = var_94(KeyCode)
  loc_109F85E:     Call 0.Method_TEXT_KeyDown0 (2)
  loc_109F873:     Set var_98 = var_94
  loc_109F879:     Proc_183_21_FA163C(var_98, Shift, 3)
  loc_109F888:   Else
  loc_109F890:     If Not (var_8C = CInt(&HA)) Then
  loc_109F89B:       If Not (var_8C = CInt(9)) Then
  loc_109F8A6:         If (var_8C = CInt(8)) Then
  loc_109F8A9:         End If
  loc_109F8A9:       End If
  loc_109F8CB:        = (var_A0).Left
  loc_109F8DD:       Set var_94 = var_98(KeyCode)
  loc_109F8E3:       Call 0.Method_TEXT_KeyDown0 (var_A4)
  loc_109F8EB:        = var_98.Left
  loc_109F8FD:        = (var_AC).Top
  loc_109F90F:       Set var_B0 = var_B4(KeyCode)
  loc_109F915:       Call 0.Method_TEXT_KeyDown0 (var_B8)
  loc_109F91D:        = var_B4.Top
  loc_109F92F:       Set var_BC = var_C0(KeyCode)
  loc_109F935:       Call 0.Method_TEXT_KeyDown0 (var_C4)
  loc_109F93D:        = var_C0.Height
  loc_109F94F:       Set var_C8 = var_CC(KeyCode)
  loc_109F955:       Call 0.Method_TEXT_KeyDown0 (var_D0)
  loc_109F95D:        = var_CC.Width
  loc_109F9B0:       Proc_183_23_11A24A0(0(2), (), (), KeyCode, Shift)
  loc_109F9DB:     Else
  loc_109F9E3:       If (var_8C = CInt(&HC)) Then
  loc_109F9F1:         Set var_A8 = CInt((var_A0 + var_A4))(arg_14)
  loc_109FA1C:         Proc_183_34_1305540(Me.DGSite, (var_AC), KeyCode, global_80, Shift)
  loc_109FA2C:       End If
  loc_109FA2C:     End If
  loc_109FA2C:   End If
  loc_109FA2C: End If
  loc_109FA2C: Exit Sub
  loc_109FA2D: ' Referenced from: 109F7C8
  loc_109FA33: Call 0.Method_arg_50 (var_88, &HFF, 1)
  loc_109FA48: Proc_183_57_104AA84(var_88, "Text_KeyDown", CInt((((var_AC + var_B8) + var_C4) + CDbl(&H19))))
  loc_109FA54: Exit Sub
End Sub

Private Sub TEXT_KeyPress(KeyAscii As Integer) 'FE8E98
  'Data Table: 583330
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_8C As DataGrid
  loc_FE8CBC: On Error Goto loc_FE8E6F
  loc_FE8CC2: var_86 = KeyAscii
  loc_FE8CCB: If Not (var_86 = 0) Then
  loc_FE8CD4:   If Not (var_86 = 1) Then
  loc_FE8CDD:     If (var_86 = 2) Then
  loc_FE8CE0:     End If
  loc_FE8CE0:   End If
  loc_FE8CEA:   Set var_8C = var_90(KeyAscii)
  loc_FE8CF0:   Call 0.Method_TEXT_KeyPress0 (var_86)
  loc_FE8D0B:   Proc_183_22_129AEBC(var_90, arg_10)
  loc_FE8D1A: Else
  loc_FE8D20:   If (var_86 = 5) Then
  loc_FE8D2D:     Set var_8C = var_90(KeyAscii)
  loc_FE8D33:     Call 0.Method_TEXT_KeyPress0 (&HA)
  loc_FE8D4E:     Proc_183_22_129AEBC(var_90, arg_10, 3)
  loc_FE8D5D:   Else
  loc_FE8D63:     If Not (var_86 = 6) Then
  loc_FE8D6C:       If Not (var_86 = 7) Then
  loc_FE8D77:         If Not (var_86 = CInt(&HB)) Then
  loc_FE8D82:           If (var_86 = CInt(&HD)) Then
  loc_FE8D85:           End If
  loc_FE8D85:         End If
  loc_FE8D85:       End If
  loc_FE8D92:       If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_FE8DA2:         Set var_8C = var_90(KeyAscii)
  loc_FE8DA8:         Call 0.Method_TEXT_KeyPress0 ("No", 2)
  loc_FE8DB0:         var_90.Text = 2
  loc_FE8DBE:         arg_10 = 0
  loc_FE8DC4:       Else
  loc_FE8DD1:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_FE8DE1:           Set var_8C = var_90(KeyAscii)
  loc_FE8DE7:           Call 0.Method_TEXT_KeyPress0 ("Yes")
  loc_FE8DEF:           var_90.Text = arg_10
  loc_FE8DFD:           arg_10 = 0
  loc_FE8E03:         Else
  loc_FE8E05:           arg_10 = 0
  loc_FE8E08:         End If
  loc_FE8E08:       End If
  loc_FE8E0B:     Else
  loc_FE8E13:       If (var_86 = CInt(&HC)) Then
  loc_FE8E32:         If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_FE8E44:           var_AC = "Name"
  loc_FE8E5F:           Proc_183_41_1459C78(arg_10(arg_10), KeyAscii, global_80)
  loc_FE8E6E:         End If
  loc_FE8E6E:       End If
  loc_FE8E6E:     End If
  loc_FE8E6E:   End If
  loc_FE8E6E: End If
  loc_FE8E6E: Exit Sub
  loc_FE8E6F: ' Referenced from: FE8CBC
  loc_FE8E75: Call 0.Method_arg_50 (var_AC, arg_10)
  loc_FE8E8A: Proc_183_57_104AA84(var_AC, "TEXT_KeyPress")
  loc_FE8E96: Exit Sub
End Sub

Private Sub TEXT_KeyUp(KeyCode As Integer, Shift As Integer) 'F82354
  'Data Table: 583330
  Dim var_86 As Integer
  loc_F8220C: On Error Goto loc_F8232B
  loc_F82212: var_86 = KeyCode
  loc_F8221D: If Not (var_86 = CInt(8)) Then
  loc_F82228:   If Not (var_86 = CInt(9)) Then
  loc_F82233:     If (var_86 = CInt(&HA)) Then
  loc_F82236:     End If
  loc_F82236:   End If
  loc_F82249:   var_86 = (Shift <> &HD)(var_8E).Visible
  loc_F82258:   If ( And (var_8E = 0)) Then
  loc_F82269:     Call TEXT_KeyDown(KeyCode, global_160)
  loc_F8226E:   End If
  loc_F8229A:   Proc_183_35_F29A04((0), (), KeyCode)
  loc_F822AD: Else
  loc_F822B5:   If (var_86 = CInt(&HC)) Then
  loc_F822DB:     If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_F822EC:       Call TEXT_KeyDown(KeyCode, global_160)
  loc_F82300:       var_B0 = "Name"
  loc_F8231B:       Proc_183_41_1459C78(Shift(0), KeyCode, global_80, Shift)
  loc_F8232A:     End If
  loc_F8232A:   End If
  loc_F8232A: End If
  loc_F8232A: Exit Sub
  loc_F8232B: ' Referenced from: F8220C
  loc_F82331: Call 0.Method_arg_50 (var_B0, var_B0)
  loc_F82346: Proc_183_57_104AA84(var_B0, "TExt_KeyUp")
  loc_F82352: Exit Sub
End Sub

Private Sub TEXT_LostFocus(Index As Integer) 'E89544
  'Data Table: 583330
  loc_E894D8: On Error Goto loc_E8951B
  loc_E894E3: Call TEXT_Validate(Index)
  loc_E894F5:  = 0(var_86).Visible
  loc_E89503: If (var_86 = &HFF) Then
  loc_E89512:   (0).Visible = 
  loc_E8951A: End If
  loc_E8951A: Exit Sub
  loc_E8951B: ' Referenced from: E894D8
  loc_E89521: Call 0.Method_arg_50 (var_90)
  loc_E89529: var_98 = "TEXT_LostFocus"
  loc_E89536: Proc_183_57_104AA84(var_90)
  loc_E89542: Exit Sub
End Sub

Private Sub TEXT_Validate(Cancel As Boolean) '10CC320
  'Data Table: 583330
  Dim var_86 As Integer
  Dim var_104 As Double
  Dim var_FC As String
  Dim var_F8 As TextBox
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  loc_10CC034: On Error Goto loc_10CC2F5
  loc_10CC03A: var_86 = Cancel
  loc_10CC043: If Not (var_86 = 0) Then
  loc_10CC04C:   If Not (var_86 = 1) Then
  loc_10CC055:     If Not (var_86 = 2) Then
  loc_10CC05E:       If (var_86 = 5) Then
  loc_10CC061:       End If
  loc_10CC061:     End If
  loc_10CC061:   End If
  loc_10CC06B:   Set var_8C = var_90(Cancel)
  loc_10CC071:   Call 0.Method_TEXT_Validate0 (var_86)
  loc_10CC07D:   Proc_183_6_EA3004(CVar(var_90))
  loc_10CC082:   var_104 = 
  loc_10CC0AC:   var_FC = CStr(Format(CVar(var_104), "0.00"))
  loc_10CC0BA:   Set var_F4 = var_F8(Cancel)
  loc_10CC0C0:   Call 0.Method_TEXT_Validate0 (var_FC, 1)
  loc_10CC0C8:   var_F8.Text = 1
  loc_10CC0E7: Else
  loc_10CC0EF:   If Not (var_86 = CInt(&HA)) Then
  loc_10CC0FA:     If Not (var_86 = CInt(9)) Then
  loc_10CC105:       If (var_86 = CInt(8)) Then
  loc_10CC108:       End If
  loc_10CC108:     End If
  loc_10CC115:     var_104(var_FC).RandomDataFill
  loc_10CC120:     Set var_90 = 
  loc_10CC126:      = var_90.Text
  loc_10CC138:     Set var_F4 = var_F8(Cancel)
  loc_10CC13E:     Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CC146:     var_F8.Text = 
  loc_10CC15F:   Else
  loc_10CC167:     If (var_86 = CInt(&HC)) Then
  loc_10CC1B8:       Set var_8C = var_90(Cancel)
  loc_10CC1BE:       Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CC1C6:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_10CC1DE:       If ( Or (var_FC = vbNullString)) Then
  loc_10CC1EF:         Set var_8C = var_90(CInt(&HC))
  loc_10CC1F5:         Call 0.Method_TEXT_Validate0 (vbNullString)
  loc_10CC1FD:         var_90.Tag = 
  loc_10CC217:         Set var_8C = var_90(CInt(&HC))
  loc_10CC21D:         Call 0.Method_TEXT_Validate0 (vbNullString)
  loc_10CC225:         var_90.Text = 
  loc_10CC234:       Else
  loc_10CC270:         Set var_F4 = var_F8(CInt(&HC))
  loc_10CC276:         Call 0.Method_TEXT_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_10CC27E:         var_F8.Text = 
  loc_10CC2C2:         var_FC = CStr(Me.Fields.Item("Code").Value)
  loc_10CC2D0:         Set var_F4 = var_F8(CInt(&HC))
  loc_10CC2D6:         Call 0.Method_TEXT_Validate0 (var_FC)
  loc_10CC2DE:         var_F8.Tag = 
  loc_10CC2F4:       End If
  loc_10CC2F4:     End If
  loc_10CC2F4:   End If
  loc_10CC2F4: End If
  loc_10CC2F4: Exit Sub
  loc_10CC2F5: ' Referenced from: 10CC034
  loc_10CC2FB: Call 0.Method_arg_50 (var_FC)
  loc_10CC303: var_114 = "TEXT_Validate"
  loc_10CC310: Proc_183_57_104AA84(var_FC)
  loc_10CC31C: Exit Sub
  loc_10CC31D: StAryRecMove
End Sub

Private Sub DGAccount_UnknownEvent_9 'FD2BC4
  'Data Table: 583330
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Field20
  Dim var_D0 As TextBox
  loc_FD2A0C: On Error Goto loc_FD2B99
  loc_FD2A1E: (False).Visible = 
  loc_FD2A3D: If (Me.RecordCount > 0) Then
  loc_FD2A5A:   var_EC = Val(CStr(().Tag))
  loc_FD2A99:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD2A9F:   Call 0.Method_DGAccount_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_FD2AA7:   var_D0.Tag = var_EC
  loc_FD2ACB:   Set var_B4 = ()
  loc_FD2AE1:   var_EC = Val(CStr(var_B4.Tag))
  loc_FD2B20:   Set var_CC = var_D0(CInt(var_EC))
  loc_FD2B26:   Call 0.Method_DGAccount_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_FD2B2E:   var_D0.Text = var_EC
  loc_FD2B4E: End If
  loc_FD2B60: var_C8 = CStr(().Tag)
  loc_FD2B68: var_EC = Val(var_C8)
  loc_FD2B76: Set var_B0 = var_B4(CInt(var_EC))
  loc_FD2B7C: Call 0.Method_DGAccount_UnknownEvent_90 (var_EC)
  loc_FD2B84: var_B4.SetFocus
  loc_FD2B98: Exit Sub
  loc_FD2B99: ' Referenced from: FD2A0C
  loc_FD2B9F: Call 0.Method_arg_50 (var_C8)
  loc_FD2BA7: var_F0 = "DGAccount_Click"
  loc_FD2BB4: Proc_183_57_104AA84(var_C8)
  loc_FD2BC0: Exit Sub
  loc_FD2BC1: CopyBytes 9727
End Sub

Private Sub btnExit_UnknownEvent_9 'E19654
  'Data Table: 583330
  loc_E19649: Me.Global.Unload Me
  loc_E19651: Exit Sub
End Sub

Private Sub DGSite_UnknownEvent_9 '10D1F4C
  'Data Table: 583330
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_EC As Double
  Dim var_B0 As Variant
  Dim var_D0 As TextBox
  Dim var_CC As TextBox
  loc_10D1C58: On Error Goto loc_10D1F24
  loc_10D1C7E: If (((GRepFormName = "DayBook") Or (GRepFormName = "JournalBook")) Or (GRepFormName = "JournalBookLog")) Then
  loc_10D1C90:   Me.DGSite.Visible = False
  loc_10D1CAF:   If (Me.RecordCount > 0) Then
  loc_10D1CCC:     var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10D1D0B:     Set var_CC = var_D0(CInt(var_EC))
  loc_10D1D11:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_10D1D19:     var_D0.Tag = var_EC
  loc_10D1D3D:     Set var_B4 = Me.DGSite
  loc_10D1D53:     var_EC = Val(CStr(var_B4.Tag))
  loc_10D1D92:     Set var_CC = var_D0(CInt(var_EC))
  loc_10D1D98:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_10D1DA0:     var_D0.Text = var_EC
  loc_10D1DC0:   End If
  loc_10D1DDA:   var_EC = Val(CStr(Me.DGSite.Tag))
  loc_10D1DE8:   Set var_B0 = var_B4(CInt(var_EC))
  loc_10D1DEE:   Call 0.Method_DGSite_UnknownEvent_90 (var_EC)
  loc_10D1DF6:   var_B4.SetFocus
  loc_10D1E0D: Else
  loc_10D1E1C:   Me.DGSite.Visible = False
  loc_10D1E3B:   If (Me.RecordCount > 0) Then
  loc_10D1E7A:     Set var_B4 = var_CC(CInt(&HC))
  loc_10D1E80:     Call 0.Method_DGSite_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_10D1E88:     var_CC.Tag = 
  loc_10D1EBB:     var_B0 = Me.Fields.Item("Name")
  loc_10D1ECC:     var_C8 = CStr(var_B0.Value)
  loc_10D1EDA:     Set var_B4 = var_CC(CInt(&HC))
  loc_10D1EE0:     Call 0.Method_DGSite_UnknownEvent_90 (var_C8)
  loc_10D1EE8:     var_CC.Text = 
  loc_10D1EFE:   End If
  loc_10D1F09:   Set var_A8 = var_B0(CInt(&HC))
  loc_10D1F0F:   Call 0.Method_DGSite_UnknownEvent_90 ()
  loc_10D1F17:   var_B0.SetFocus
  loc_10D1F23: End If
  loc_10D1F23: Exit Sub
  loc_10D1F24: ' Referenced from: 10D1C58
  loc_10D1F2A: Call 0.Method_arg_50 (var_C8)
  loc_10D1F32: var_F0 = "DGSite_Click"
  loc_10D1F3F: Proc_183_57_104AA84(var_C8)
  loc_10D1F4B: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '11ADB6C
  'Data Table: 583330
  loc_11AD744: On Error Goto loc_11ADB23
  loc_11AD74C: global_130 = &HFF
  loc_11AD755: var_88 = GRepFormName
  loc_11AD760: If (var_88 = "DayBook") Then
  loc_11AD766:   Call Proc_203_73_161E6A4(Cancel)
  loc_11AD76E: Else
  loc_11AD776:   If (var_88 = "Led") Then
  loc_11AD785:     Call Proc_203_75_1EDDC44(Cancel, "Led")
  loc_11AD790:   Else
  loc_11AD798:     If (var_88 = "LedInt") Then
  loc_11AD7A7:       Call Proc_203_75_1EDDC44(Cancel, "LedInt")
  loc_11AD7B2:     Else
  loc_11AD7BA:       If (var_88 = "CashBook") Then
  loc_11AD7C0:         Call Proc_203_72_19337B0(Cancel)
  loc_11AD7C8:       Else
  loc_11AD7D0:         If (var_88 = "BankBook") Then
  loc_11AD7D6:           Call Proc_203_72_19337B0(Cancel)
  loc_11AD7DE:         Else
  loc_11AD7E6:           If (var_88 = "JournalBook") Then
  loc_11AD7EC:             Call Proc_203_70_1507EE8(Cancel)
  loc_11AD7F4:           Else
  loc_11AD7FC:             If (var_88 = "Annexure") Then
  loc_11AD802:               Call Proc_203_63_17B8CA8(Cancel)
  loc_11AD80A:             Else
  loc_11AD812:               If (var_88 = "AgingDr") Then
  loc_11AD821:                 Call Proc_203_64_17B2CC8(Cancel, "Dr")
  loc_11AD82C:               Else
  loc_11AD834:                 If (var_88 = "AgingCr") Then
  loc_11AD843:                   Call Proc_203_64_17B2CC8(Cancel, "Cr")
  loc_11AD84E:                 Else
  loc_11AD856:                   If (var_88 = "BankReg") Then
  loc_11AD85C:                     Call Proc_203_65_127D2A4(Cancel)
  loc_11AD864:                   Else
  loc_11AD86C:                     If (var_88 = "Clg") Then
  loc_11AD872:                       Call Proc_203_67_12736B8(Cancel)
  loc_11AD87A:                     Else
  loc_11AD882:                       If (var_88 = "ClgNot") Then
  loc_11AD888:                         Call Proc_203_68_11F67F4(Cancel)
  loc_11AD890:                       Else
  loc_11AD898:                         If (var_88 = "LedDeb") Then
  loc_11AD8A7:                           Call Proc_203_75_1EDDC44(Cancel, "LedDeb")
  loc_11AD8B2:                         Else
  loc_11AD8BA:                           If (var_88 = "MemLed") Then
  loc_11AD8C9:                             Call Proc_203_75_1EDDC44(Cancel, "MemLed")
  loc_11AD8D4:                           Else
  loc_11AD8DC:                             If (var_88 = "LedCred") Then
  loc_11AD8EB:                               Call Proc_203_75_1EDDC44(Cancel, "LedCred")
  loc_11AD8F6:                             Else
  loc_11AD8FE:                               If (var_88 = "DailySumm") Then
  loc_11AD904:                                 Call Proc_203_69_13B2EE8(Cancel)
  loc_11AD90C:                               Else
  loc_11AD914:                                 If (var_88 = "NonTrans") Then
  loc_11AD91A:                                   Call Proc_203_66_14C1C1C(Cancel)
  loc_11AD922:                                 Else
  loc_11AD92A:                                   If (var_88 = "DetailedTrial") Then
  loc_11AD930:                                     Call Proc_203_74_15A7428(Cancel)
  loc_11AD938:                                   Else
  loc_11AD940:                                     If (var_88 = "RefReport") Then
  loc_11AD94B:                                       Call Proc_203_62_153F42C(Cancel)
  loc_11AD953:                                     Else
  loc_11AD95B:                                       If (var_88 = "AcCheckList") Then
  loc_11AD96A:                                         Call Proc_203_75_1EDDC44(Cancel, "AcCheckList")
  loc_11AD975:                                       Else
  loc_11AD97D:                                         If (var_88 = "DUELIST") Then
  loc_11AD980:                                           Call Proc_203_76_177D97C(global_130)
  loc_11AD988:                                         Else
  loc_11AD990:                                           If (var_88 = "CONTROLLED") Then
  loc_11AD996:                                             Call Proc_203_77_147EB4C(Cancel)
  loc_11AD99E:                                           Else
  loc_11AD9A6:                                             If (var_88 = "RozNamcha") Then
  loc_11AD9AC:                                               Call Proc_203_80_191FE60(Cancel)
  loc_11AD9B4:                                             Else
  loc_11AD9BC:                                               If (var_88 = "BudgetVariance") Then
  loc_11AD9C2:                                                 Call Proc_203_81_196F388(Cancel)
  loc_11AD9CA:                                               Else
  loc_11AD9D2:                                                 If (var_88 = "Budget") Then
  loc_11AD9D8:                                                   Call Proc_203_82_17E0164(Cancel)
  loc_11AD9E0:                                                 Else
  loc_11AD9E8:                                                   If (var_88 = "AgingRepDr") Then
  loc_11AD9EE:                                                     var_8C = "Dr"
  loc_11AD9F7:                                                     Call Proc_203_85_17F12B0(Cancel)
  loc_11ADA02:                                                   Else
  loc_11ADA0A:                                                     If (var_88 = "AgingRepCr") Then
  loc_11ADA10:                                                       var_8C = "Cr"
  loc_11ADA19:                                                       Call Proc_203_85_17F12B0(Cancel, var_8C)
  loc_11ADA24:                                                     Else
  loc_11ADA2C:                                                       If (var_88 = "JournalBookLog") Then
  loc_11ADA32:                                                         Call Proc_203_71_1529178(Cancel)
  loc_11ADA37:                                                       End If
  loc_11ADA37:                                                     End If
  loc_11ADA37:                                                   End If
  loc_11ADA37:                                                 End If
  loc_11ADA37:                                               End If
  loc_11ADA37:                                             End If
  loc_11ADA37:                                           End If
  loc_11ADA37:                                         End If
  loc_11ADA37:                                       End If
  loc_11ADA37:                                     End If
  loc_11ADA37:                                   End If
  loc_11ADA37:                                 End If
  loc_11ADA37:                               End If
  loc_11ADA37:                             End If
  loc_11ADA37:                           End If
  loc_11ADA37:                         End If
  loc_11ADA37:                       End If
  loc_11ADA37:                     End If
  loc_11ADA37:                   End If
  loc_11ADA37:                 End If
  loc_11ADA37:               End If
  loc_11ADA37:             End If
  loc_11ADA37:           End If
  loc_11ADA37:         End If
  loc_11ADA37:       End If
  loc_11ADA37:     End If
  loc_11ADA37:   End If
  loc_11ADA37: End If
  loc_11ADA40: If (global_130 = 0) Then
  loc_11ADA43:   Exit Sub
  loc_11ADA44: End If
  loc_11ADA4A: If (Cancel = 1) Then
  loc_11ADA53:   var_A0 = GRepFormName
  loc_11ADA5E:   If Not (var_A0 = "BudgetVariance") Then
  loc_11ADA69:     If (var_A0 = "Budget") Then
  loc_11ADA6C:     End If
  loc_11ADA6C:     Call Proc_203_60_1755B30(var_8C)
  loc_11ADA71:   End If
  loc_11ADA77:   Call 0.Method_arg_150 ()
  loc_11ADA8D:   Proc_183_10_14991A4(MemVar_1F921E4, Cancel)
  loc_11ADA95: Else
  loc_11ADA9B:   var_A8 = GRepFormName
  loc_11ADAA6:   If Not (var_A8 = "AgingDr") Then
  loc_11ADAB1:     If Not (var_A8 = "AgingCr") Then
  loc_11ADABC:       If Not (var_A8 = "AgingRepDr") Then
  loc_11ADAC7:         If (var_A8 = "AgingRepCr") Then
  loc_11ADACA:         End If
  loc_11ADACA:       End If
  loc_11ADACA:     End If
  loc_11ADACD:   Else
  loc_11ADAD5:     If Not (var_A8 = "BudgetVariance") Then
  loc_11ADAE0:       If (var_A8 = "Budget") Then
  loc_11ADAE3:       End If
  loc_11ADAE3:       Call Proc_203_60_1755B30(global_120)
  loc_11ADAEB:     Else
  loc_11ADAEB:       Call Proc_203_60_1755B30(&HFF)
  loc_11ADAF0:     End If
  loc_11ADAF0:   End If
  loc_11ADAF6:   Call 0.Method_arg_150 ()
  loc_11ADB0C:   Proc_183_10_14991A4(MemVar_1F921E4, Cancel)
  loc_11ADB11: End If
  loc_11ADB16: global_128 = 0
  loc_11ADB1E: MemVar_1F921E4 = Nothing
  loc_11ADB22: Exit Sub
  loc_11ADB23: ' Referenced from: 11AD744
  loc_11ADB2B: Set var_AC = Err()
  loc_11ADB31: Call 0.Method_arg_2C (var_8C, global_128)
  loc_11ADB3C: Call 0.Method_arg_50 (var_B0, global_120)
  loc_11ADB58: MsgBox(CVar(var_8C), &H10, CVar(var_B0), var_E0, var_100)
  loc_11ADB6B: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) '10723C8
  'Data Table: 583330
  Dim var_88 As TextBox
  Dim var_9C As Double
  Dim var_90 As DataGrid
  Dim var_8C As String
  Dim var_108 As DataGrid
  Dim var_178 As String
  loc_1072160: On Error Goto loc_107239D
  loc_107216E: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_107217E:    = (var_8C).Tag
  loc_107218B:   var_9C = Val(var_8C)
  loc_1072199:   Set var_90 = var_94(CInt(var_9C))
  loc_107219F:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_10721C7:   DGSite.DispID_8001(0).Visible = 
  loc_10721CF: End If
  loc_10721D9: If (CLng(KeyCode) = &H2E) Then
  loc_10721E9:   (vbNullString).Text = 
  loc_10721F1: End If
  loc_1072206: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_1072216:    = (var_8C).Tag
  loc_1072223:   var_9C = Val(var_8C)
  loc_1072231:   Set var_90 = var_94(CInt(var_9C))
  loc_1072237:   Call 0.Method_TxtSearch_KeyDown0 (var_9C)
  loc_107225F:   DGSite.DispID_8001(0).Visible = 
  loc_1072267: End If
  loc_10722AE: If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_10722BA:   Set var_88 = var_90(1)
  loc_10722C0:   Call 0.Method_TxtSearch_KeyDown0 ()
  loc_10722C8:   var_90.InsertRows , 
  loc_10722E8:   Set var_94 = var_B0(1)
  loc_10722EE:   Call 0.Method_TxtSearch_KeyDown0 (3)
  loc_1072301:   var_8C = CStr(DGSite.DispID_41)
  loc_1072314:   Set var_104 = var_108(1)
  loc_107231A:   Call 0.Method_TxtSearch_KeyDown0 (var_8C & vbCrLf)
  loc_1072322:   var_108.InsertRows CVar(CLng()), 
  loc_1072342:   Set var_11C = var_120(1)
  loc_1072348:   Call 0.Method_TxtSearch_KeyDown0 (4)
  loc_107236C:   (CVar(CLng()) & CStr(DGSite.DispID_41)).Text = 
  loc_107239C: End If
  loc_107239C: Exit Sub
  loc_107239D: ' Referenced from: 1072160
  loc_10723A3: Call 0.Method_arg_50 (var_8C)
  loc_10723AB: var_178 = "TxtSearch_KeyDown"
  loc_10723B8: Proc_183_57_104AA84(var_8C)
  loc_10723C4: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E51FC4
  'Data Table: 583330
  Dim var_98 As Double
  loc_E51F9D:  = (var_8C).Tag
  loc_E51FAA: var_98 = Val(var_8C)
  loc_E51FB7: Call GridSel_UnknownEvent_C()
  loc_E51FC2: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E2BF38
  'Data Table: 583330
  loc_E2BF19: (vbNullString).Text = 
  loc_E2BF2D: (0).Visible = 
  loc_E2BF35: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'EC9838
  'Data Table: 583330
  Dim var_9C As Double
  loc_EC9798: On Error Goto loc_EC980F
  loc_EC97A8: (vbNullString).Text = 
  loc_EC97BD:  = (var_8C).Tag
  loc_EC97CA: var_9C = Val(var_8C)
  loc_EC97D8: Set var_90 = var_94(CInt(var_9C))
  loc_EC97DE: Call 0.Method_TxtSearch_Click0 (var_9C)
  loc_EC9806: DGSite.DispID_8001(0).Visible = 
  loc_EC980E: Exit Sub
  loc_EC980F: ' Referenced from: EC9798
  loc_EC9815: Call 0.Method_arg_50 (var_8C)
  loc_EC981D: var_A4 = "TxtSearch_Click"
  loc_EC982A: Proc_183_57_104AA84(var_8C)
  loc_EC9836: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '16B1C44
  'Data Table: 583330
  Dim var_98 As Variant
  Dim var_AC As DataGrid
  Dim var_C0 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_A8 As String
  loc_16B02CC: On Error Goto loc_16B1C1C
  loc_16B02DC: Set var_AC = (CVar(CLng("16777215")))
  loc_16B02F4: (DGSite.DispID_26).InsertRows , 
  loc_16B0306: Set var_C0 = (CVar(CLng()))
  loc_16B030C: var_C0.DeleteRowLabels , 
  loc_16B031E: Set var_F4 = (CVar(CLng()))
  loc_16B032F: var_110 = CStr(DGSite.DispID_41)
  loc_16B033B: Set var_108 = var_10C(0)
  loc_16B0341: Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B0349: var_10C.Tag = 
  loc_16B0371: ().InsertRows , 
  loc_16B038A: If (CLng() = CLng(0)) Then
  loc_16B0393:   var_118 = GRepFormName
  loc_16B039E:   If Not (var_118 = "BudgetVariance") Then
  loc_16B03A9:     If (var_118 = "Budget") Then
  loc_16B03AC:     End If
  loc_16B03B5:     var_11C = Me.RecordCount
  loc_16B03FA:     Set var_AC = var_C0(Index)
  loc_16B0400:     Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B0408:     var_114 = var_C0.Text
  loc_16B0420:     If ( Or (var_110 = vbNullString)) Then
  loc_16B0423:       Exit Sub
  loc_16B0424:     End If
  loc_16B0431:     Set var_AC = var_C0(Index)
  loc_16B0437:     Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B043F:      = var_C0.Text
  loc_16B0447:     var_D0 = CVar(var_110) 'String
  loc_16B0468:     var_108 = Me.Fields.Item("Name")
  loc_16B048C:     If CBool(var_D0 <> var_108.Value) Then
  loc_16B0495:       Me.MoveFirst
  loc_16B04BA:       Set var_AC = var_C0(Index)
  loc_16B04C0:       Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B04C8:       1 = var_C0.Text
  loc_16B04D6:       Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B04EC:       Me.Find CStr(var_A8 & var_D0), , 
  loc_16B0504:     End If
  loc_16B0511:     Set var_F4 = var_108(Index)
  loc_16B0517:     Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B051F:      = var_108.Height
  loc_16B0531:     Set var_AC = var_C0(Index)
  loc_16B0537:     Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B053F:      = var_C0.Top
  loc_16B054B:     var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B055A:     ("Name =").Top = 
  loc_16B057F:     (CVar(CStr(Index))).Tag = 
  loc_16B0597:     Set var_AC = var_C0(Index)
  loc_16B059D:     Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B05A5:      = var_C0.Left
  loc_16B05BC:     (CVar(var_11C)).Left = 
  loc_16B05CA:   End If
  loc_16B05CD: Else
  loc_16B05D4:   If (var_114 = CLng(2)) Then
  loc_16B05DD:     var_12C = GRepFormName
  loc_16B05E8:     If (var_12C = "BankReg") Then
  loc_16B05F8:       ReDim var_130(0 To 2)
  loc_16B060F:       var_130(0) = "All"
  loc_16B061E:       var_130(1) = "Debit"
  loc_16B062D:       var_130(2) = "Credit"
  loc_16B0684:       Set global_184 = Proc_183_37_EFE3E8((Array(var_130)), (), Index)
  loc_16B0698:     Else
  loc_16B06A0:       If (var_12C = "DUELIST") Then
  loc_16B06B0:         ReDim var_130(0 To 1)
  loc_16B06C7:         var_130(0) = "All"
  loc_16B06D6:         var_130(1) = "Pending"
  loc_16B072D:         Set global_184 = Proc_183_37_EFE3E8(Array(var_130)(Array(var_130)), (3), Index)
  loc_16B0741:       Else
  loc_16B0749:         If Not (var_12C = "Led") Then
  loc_16B0754:           If Not (var_12C = "LedInt") Then
  loc_16B075F:             If Not (var_12C = "LedDeb") Then
  loc_16B076A:               If Not (var_12C = "MemLed") Then
  loc_16B0775:                 If Not (var_12C = "LedCred") Then
  loc_16B0780:                   If (var_12C = "AcCheckList") Then
  loc_16B0783:                   End If
  loc_16B0783:                 End If
  loc_16B0783:               End If
  loc_16B0783:             End If
  loc_16B0783:           End If
  loc_16B0790:           ReDim var_130(0 To 4)
  loc_16B07A7:           var_130(0) = "Selected"
  loc_16B07B6:           var_130(1) = "Merge"
  loc_16B07C5:           var_130(2) = "Group(Selected)"
  loc_16B07D4:           var_130(3) = "Group(Range)"
  loc_16B07E3:           var_130(4) = "City Wise"
  loc_16B083A:           Set global_184 = Proc_183_37_EFE3E8(Array(var_130)(Array(var_130)), (2), Index)
  loc_16B084E:         Else
  loc_16B0856:           If Not (var_12C = "CashBook") Then
  loc_16B0861:             If Not (var_12C = "BankBook") Then
  loc_16B086C:               If Not (var_12C = "DayBook") Then
  loc_16B0877:                 If Not (var_12C = "RozNamcha") Then
  loc_16B0882:                   If (var_12C = "DetailedTrial") Then
  loc_16B0885:                   End If
  loc_16B0885:                 End If
  loc_16B0885:               End If
  loc_16B0885:             End If
  loc_16B0892:             ReDim var_130(0 To 1)
  loc_16B08A9:             var_130(0) = "Yes"
  loc_16B08AB:             var_A8 = "No"
  loc_16B08B8:             var_130(1) = var_A8
  loc_16B08F5:             Set var_C0 = (5)
  loc_16B090F:             Set global_184 = Proc_183_37_EFE3E8(Array(var_130)(Array(var_130)), var_C0, Index)
  loc_16B0923:           Else
  loc_16B092B:             If Not (var_12C = "JournalBook") Then
  loc_16B0936:               If Not (var_12C = "Annexure") Then
  loc_16B0941:                 If (var_12C = "JournalBookLog") Then
  loc_16B0944:                 End If
  loc_16B0944:               End If
  loc_16B094D:               var_11C = Me.RecordCount
  loc_16B0992:               Set var_AC = var_C0(Index)
  loc_16B0998:               Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B09A0:               global_164 = var_C0.Text
  loc_16B09B8:               If (2 Or (var_110 = vbNullString)) Then
  loc_16B09BB:                 Exit Sub
  loc_16B09BC:               End If
  loc_16B09C9:               Set var_AC = var_C0(Index)
  loc_16B09CF:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B09D7:                = var_C0.Text
  loc_16B09DF:               var_D0 = CVar(var_110) 'String
  loc_16B0A00:               var_108 = Me.Fields.Item("Name")
  loc_16B0A24:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B0A2D:                 Me.MoveFirst
  loc_16B0A52:                 Set var_AC = var_C0(Index)
  loc_16B0A58:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B0A60:                 1 = var_C0.Text
  loc_16B0A6E:                 Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B0A84:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B0A9C:               End If
  loc_16B0AA9:               Set var_AC = var_C0(Index)
  loc_16B0AAF:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B0AB7:                = var_C0.Left
  loc_16B0ACE:               (CVar(var_11C)).Left = 
  loc_16B0AE9:               Set var_F4 = var_108(Index)
  loc_16B0AEF:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B0AF7:                = var_108.Height
  loc_16B0B09:               Set var_AC = var_C0(Index)
  loc_16B0B0F:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B0B17:                = var_C0.Top
  loc_16B0B23:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B0B32:               (CVar(var_11C)).Top = 
  loc_16B0B57:               (CVar(CStr(Index))).Tag = 
  loc_16B0B65:             Else
  loc_16B0B6D:               If Not (var_12C = "DailySumm") Then
  loc_16B0B78:                 If Not (var_12C = "AgingDr") Then
  loc_16B0B83:                   If Not (var_12C = "AgingCr") Then
  loc_16B0B8E:                     If Not (var_12C = "Clg") Then
  loc_16B0B99:                       If Not (var_12C = "ClgNot") Then
  loc_16B0BA4:                         If Not (var_12C = "AgingRepDr") Then
  loc_16B0BAF:                           If (var_12C = "AgingRepCr") Then
  loc_16B0BB2:                           End If
  loc_16B0BB2:                         End If
  loc_16B0BB2:                       End If
  loc_16B0BB2:                     End If
  loc_16B0BB2:                   End If
  loc_16B0BB2:                 End If
  loc_16B0BBB:                 var_11C = Me.RecordCount
  loc_16B0C00:                 Set var_AC = var_C0(Index)
  loc_16B0C06:                 Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B0C0E:                 ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B0C26:                 If ( Or (var_110 = vbNullString)) Then
  loc_16B0C29:                   Exit Sub
  loc_16B0C2A:                 End If
  loc_16B0C37:                 Set var_AC = var_C0(Index)
  loc_16B0C3D:                 Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B0C45:                  = var_C0.Text
  loc_16B0C4D:                 var_D0 = CVar(var_110) 'String
  loc_16B0C6E:                 var_108 = Me.Fields.Item("Name")
  loc_16B0C92:                 If CBool(var_D0 <> var_108.Value) Then
  loc_16B0C9B:                   Me.MoveFirst
  loc_16B0CC0:                   Set var_AC = var_C0(Index)
  loc_16B0CC6:                   Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B0CCE:                   1 = var_C0.Text
  loc_16B0CDC:                   Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B0CF2:                   Me.Find CStr(var_A8 & var_D0), , 
  loc_16B0D0A:                 End If
  loc_16B0D1C:                 (CVar(CDbl(0))).Left = 
  loc_16B0D31:                 Set var_F4 = var_108(Index)
  loc_16B0D37:                 Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B0D3F:                  = var_108.Height
  loc_16B0D51:                 Set var_AC = var_C0(Index)
  loc_16B0D57:                 Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B0D5F:                  = var_C0.Top
  loc_16B0D6B:                 var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B0D7A:                 (CVar(CDbl(0))).Top = 
  loc_16B0D9F:                 (CVar(CStr(Index))).Tag = 
  loc_16B0DAA:               End If
  loc_16B0DAA:             End If
  loc_16B0DAA:           End If
  loc_16B0DAA:         End If
  loc_16B0DAA:       End If
  loc_16B0DAA:     End If
  loc_16B0DAD:   Else
  loc_16B0DB4:     If (var_114 = CLng(3)) Then
  loc_16B0DBD:       var_144 = GRepFormName
  loc_16B0DC8:       If Not (var_144 = "Annexure") Then
  loc_16B0DD3:         If Not (var_144 = "RefReport") Then
  loc_16B0DDE:           If Not (var_144 = "JournalBook") Then
  loc_16B0DE9:             If Not (var_144 = "DetailedTrial") Then
  loc_16B0DF4:               If (var_144 = "JournalBookLog") Then
  loc_16B0DF7:               End If
  loc_16B0DF7:             End If
  loc_16B0DF7:           End If
  loc_16B0DF7:         End If
  loc_16B0E04:         ReDim var_130(0 To 1)
  loc_16B0E1B:         var_130(0) = "Yes"
  loc_16B0E1D:         var_A8 = "No"
  loc_16B0E2A:         var_130(1) = var_A8
  loc_16B0E67:         Set var_C0 = ()
  loc_16B0E81:         Set global_184 = Proc_183_37_EFE3E8((Array(var_130)), var_C0, Index)
  loc_16B0E95:       Else
  loc_16B0E9D:         If (var_144 = "DayBook") Then
  loc_16B0EA9:           var_11C = Me.RecordCount
  loc_16B0EEE:           Set var_AC = var_C0(Index)
  loc_16B0EF4:           Call 0.Method_TxtGrid_GotFocus0 (var_110, ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_16B0EFC:           global_164 = var_C0.Text
  loc_16B0F14:           If (2 Or (var_110 = vbNullString)) Then
  loc_16B0F17:             Exit Sub
  loc_16B0F18:           End If
  loc_16B0F25:           Set var_AC = var_C0(Index)
  loc_16B0F2B:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B0F33:            = var_C0.Text
  loc_16B0F3B:           var_D0 = CVar(var_110) 'String
  loc_16B0F5C:           var_108 = Me.Fields.Item("Name")
  loc_16B0F80:           If CBool(var_D0 <> var_108.Value) Then
  loc_16B0F89:             Me.MoveFirst
  loc_16B0FAE:             Set var_AC = var_C0(Index)
  loc_16B0FB4:             Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B0FBC:             1 = var_C0.Text
  loc_16B0FCA:             Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B0FE0:             Me.Find CStr(var_A8 & var_D0), , 
  loc_16B0FF8:           End If
  loc_16B100A:           (CVar(CDbl(0))).Left = 
  loc_16B101F:           Set var_F4 = var_108(Index)
  loc_16B1025:           Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B102D:            = var_108.Height
  loc_16B103F:           Set var_AC = var_C0(Index)
  loc_16B1045:           Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B104D:            = var_C0.Top
  loc_16B1059:           var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1068:           (CVar(CDbl(0))).Top = 
  loc_16B108D:           (CVar(CStr(Index))).Tag = 
  loc_16B109B:         Else
  loc_16B10A3:           If Not (var_144 = "Led") Then
  loc_16B10AE:             If Not (var_144 = "LedInt") Then
  loc_16B10B9:               If Not (var_144 = "LedDeb") Then
  loc_16B10C4:                 If Not (var_144 = "MemLed") Then
  loc_16B10CF:                   If Not (var_144 = "LedCred") Then
  loc_16B10DA:                     If (var_144 = "AcCheckList") Then
  loc_16B10DD:                     End If
  loc_16B10DD:                   End If
  loc_16B10DD:                 End If
  loc_16B10DD:               End If
  loc_16B10DD:             End If
  loc_16B10F2:             Set var_AC = CVar(CLng(2))(1)
  loc_16B1125:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_16B1131:               var_11C = Me.RecordCount
  loc_16B1176:               Set var_AC = var_C0(Index)
  loc_16B117C:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1184:               ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B119C:               If ( Or (var_110 = vbNullString)) Then
  loc_16B119F:                 Exit Sub
  loc_16B11A0:               End If
  loc_16B11AD:               Set var_AC = var_C0(Index)
  loc_16B11B3:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B11BB:                = var_C0.Text
  loc_16B11C3:               var_D0 = CVar(var_110) 'String
  loc_16B11E4:               var_108 = Me.Fields.Item("Name")
  loc_16B1208:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B1211:                 Me.MoveFirst
  loc_16B1236:                 Set var_AC = var_C0(Index)
  loc_16B123C:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1244:                 1 = var_C0.Text
  loc_16B1252:                 Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B1268:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1280:               End If
  loc_16B128D:               Set var_AC = var_C0(Index)
  loc_16B1293:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B129B:                = var_C0.Left
  loc_16B12B2:               (CVar(var_11C)).Left = 
  loc_16B12CD:               Set var_F4 = var_108(Index)
  loc_16B12D3:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B12DB:                = var_108.Height
  loc_16B12ED:               Set var_AC = var_C0(Index)
  loc_16B12F3:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B12FB:                = var_C0.Top
  loc_16B1307:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1316:               (CVar(var_11C)).Top = 
  loc_16B133B:               (CVar(CStr(Index))).Tag = 
  loc_16B1349:             Else
  loc_16B1352:               var_11C = Me.RecordCount
  loc_16B1397:               Set var_AC = var_C0(Index)
  loc_16B139D:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B13A5:               ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B13BD:               If ( Or (var_110 = vbNullString)) Then
  loc_16B13C0:                 Exit Sub
  loc_16B13C1:               End If
  loc_16B13CE:               Set var_AC = var_C0(Index)
  loc_16B13D4:               Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B13DC:                = var_C0.Text
  loc_16B13E4:               var_D0 = CVar(var_110) 'String
  loc_16B1405:               var_108 = Me.Fields.Item("Name")
  loc_16B1429:               If CBool(var_D0 <> var_108.Value) Then
  loc_16B1432:                 Me.MoveFirst
  loc_16B1457:                 Set var_AC = var_C0(Index)
  loc_16B145D:                 Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1465:                 1 = var_C0.Text
  loc_16B1473:                 Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B1489:                 Me.Find CStr(var_A8 & var_D0), , 
  loc_16B14A1:               End If
  loc_16B14B3:               (CVar(CDbl(0))).Left = 
  loc_16B14C8:               Set var_F4 = var_108(Index)
  loc_16B14CE:               Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B14D6:                = var_108.Height
  loc_16B14E8:               Set var_AC = var_C0(Index)
  loc_16B14EE:               Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B14F6:                = var_C0.Top
  loc_16B1502:               var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1511:               (CVar(CDbl(0))).Top = 
  loc_16B1536:               (CVar(CStr(Index))).Tag = 
  loc_16B1541:             End If
  loc_16B1541:           End If
  loc_16B1541:         End If
  loc_16B1541:       End If
  loc_16B1544:     Else
  loc_16B154B:       If (var_114 = CLng(4)) Then
  loc_16B1554:         var_158 = GRepFormName
  loc_16B155F:         If Not (var_158 = "CashBook") Then
  loc_16B156A:           If Not (var_158 = "BankBook") Then
  loc_16B1575:             If Not (var_158 = "Led") Then
  loc_16B1580:               If Not (var_158 = "LedInt") Then
  loc_16B158B:                 If Not (var_158 = "AcCheckList") Then
  loc_16B1596:                   If Not (var_158 = "LedDeb") Then
  loc_16B15A1:                     If Not (var_158 = "MemLed") Then
  loc_16B15AC:                       If Not (var_158 = "LedCred") Then
  loc_16B15B7:                         If (var_158 = "RozNamcha") Then
  loc_16B15BA:                         End If
  loc_16B15BA:                       End If
  loc_16B15BA:                     End If
  loc_16B15BA:                   End If
  loc_16B15BA:                 End If
  loc_16B15BA:               End If
  loc_16B15BA:             End If
  loc_16B15BA:           End If
  loc_16B15C3:           var_11C = Me.RecordCount
  loc_16B1608:           Set var_AC = var_C0(Index)
  loc_16B160E:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1616:           ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B162E:           If ( Or (var_110 = vbNullString)) Then
  loc_16B1631:             Exit Sub
  loc_16B1632:           End If
  loc_16B163F:           Set var_AC = var_C0(Index)
  loc_16B1645:           Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B164D:            = var_C0.Text
  loc_16B1655:           var_D0 = CVar(var_110) 'String
  loc_16B1676:           var_108 = Me.Fields.Item("Name")
  loc_16B169A:           If CBool(var_D0 <> var_108.Value) Then
  loc_16B16A3:             Me.MoveFirst
  loc_16B16C8:             Set var_AC = var_C0(Index)
  loc_16B16CE:             Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B16D6:             1 = var_C0.Text
  loc_16B16E4:             Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B16FA:             Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1712:           End If
  loc_16B1724:           (CVar(CDbl(0))).Left = 
  loc_16B1739:           Set var_F4 = var_108(Index)
  loc_16B173F:           Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1747:            = var_108.Height
  loc_16B1759:           Set var_AC = var_C0(Index)
  loc_16B175F:           Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1767:            = var_C0.Top
  loc_16B1773:           var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1782:           (CVar(CDbl(0))).Top = 
  loc_16B17A7:           (CVar(CStr(Index))).Tag = 
  loc_16B17B5:         Else
  loc_16B17BD:           If Not (var_158 = "JournalBook") Then
  loc_16B17C8:             If (var_158 = "JournalBookLog") Then
  loc_16B17CB:             End If
  loc_16B17D4:             var_11C = Me.RecordCount
  loc_16B1819:             Set var_AC = var_C0(Index)
  loc_16B181F:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1827:             ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B183F:             If ( Or (var_110 = vbNullString)) Then
  loc_16B1842:               Exit Sub
  loc_16B1843:             End If
  loc_16B1850:             Set var_AC = var_C0(Index)
  loc_16B1856:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B185E:              = var_C0.Text
  loc_16B1866:             var_D0 = CVar(var_110) 'String
  loc_16B1887:             var_108 = Me.Fields.Item("Name")
  loc_16B18AB:             If CBool(var_D0 <> var_108.Value) Then
  loc_16B18B4:               Me.MoveFirst
  loc_16B18D9:               Set var_AC = var_C0(Index)
  loc_16B18DF:               Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B18E7:               1 = var_C0.Text
  loc_16B18F5:               Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B190B:               Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1923:             End If
  loc_16B1935:             (CVar(CDbl(0))).Left = 
  loc_16B194A:             Set var_F4 = var_108(Index)
  loc_16B1950:             Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1958:              = var_108.Height
  loc_16B196A:             Set var_AC = var_C0(Index)
  loc_16B1970:             Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1978:              = var_C0.Top
  loc_16B1984:             var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1993:             (CVar(CDbl(0))).Top = 
  loc_16B19B8:             (CVar(CStr(Index))).Tag = 
  loc_16B19C3:           End If
  loc_16B19C3:         End If
  loc_16B19C6:       Else
  loc_16B19CD:         If (var_114 = CLng(5)) Then
  loc_16B19D6:           var_15C = GRepFormName
  loc_16B19E1:           If Not (var_15C = "Led") Then
  loc_16B19EC:             If Not (var_15C = "LedInt") Then
  loc_16B19F7:               If Not (var_15C = "LedDeb") Then
  loc_16B1A02:                 If Not (var_15C = "MemLed") Then
  loc_16B1A0D:                   If Not (var_15C = "LedCred") Then
  loc_16B1A18:                     If (var_15C = "AcCheckList") Then
  loc_16B1A1B:                     End If
  loc_16B1A1B:                   End If
  loc_16B1A1B:                 End If
  loc_16B1A1B:               End If
  loc_16B1A1B:             End If
  loc_16B1A24:             var_11C = Me.RecordCount
  loc_16B1A69:             Set var_AC = var_C0(Index)
  loc_16B1A6F:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1A77:             ((var_11C = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C0.Text
  loc_16B1A8F:             If ( Or (var_110 = vbNullString)) Then
  loc_16B1A92:               Exit Sub
  loc_16B1A93:             End If
  loc_16B1AA0:             Set var_AC = var_C0(Index)
  loc_16B1AA6:             Call 0.Method_TxtGrid_GotFocus0 (var_110)
  loc_16B1AAE:              = var_C0.Text
  loc_16B1AB6:             var_D0 = CVar(var_110) 'String
  loc_16B1AD7:             var_108 = Me.Fields.Item("Name")
  loc_16B1AFB:             If CBool(var_D0 <> var_108.Value) Then
  loc_16B1B04:               Me.MoveFirst
  loc_16B1B29:               Set var_AC = var_C0(Index)
  loc_16B1B2F:               Call 0.Method_TxtGrid_GotFocus0 (var_110, "Name =", 0)
  loc_16B1B37:               1 = var_C0.Text
  loc_16B1B45:               Proc_183_9_EAA760(var_D0, CVar(var_110))
  loc_16B1B5B:               Me.Find CStr(var_A8 & var_D0), , 
  loc_16B1B73:             End If
  loc_16B1B85:             (CVar(CDbl(0))).Left = 
  loc_16B1B9A:             Set var_F4 = var_108(Index)
  loc_16B1BA0:             Call 0.Method_TxtGrid_GotFocus0 (var_128)
  loc_16B1BA8:              = var_108.Height
  loc_16B1BBA:             Set var_AC = var_C0(Index)
  loc_16B1BC0:             Call 0.Method_TxtGrid_GotFocus0 (var_11C)
  loc_16B1BC8:              = var_C0.Top
  loc_16B1BD4:             var_98 = CVar((var_11C + var_128)) 'Single
  loc_16B1BE3:             (CVar(CDbl(0))).Top = 
  loc_16B1C08:             (CVar(CStr(Index))).Tag = 
  loc_16B1C13:           End If
  loc_16B1C13:         End If
  loc_16B1C13:       End If
  loc_16B1C13:     End If
  loc_16B1C13:   End If
  loc_16B1C13: End If
  loc_16B1C18: Set var_88 = Nothing
  loc_16B1C1B: Exit Sub
  loc_16B1C1C: ' Referenced from: 16B02CC
  loc_16B1C22: Call 0.Method_arg_50 (var_110)
  loc_16B1C2A: var_160 = "TxtGrid_GotFocus"
  loc_16B1C37: Proc_183_57_104AA84(var_110)
  loc_16B1C43: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '14C6E64
  'Data Table: 583330
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As DataGrid
  Dim var_B0 As Long
  Dim var_FC As TextBox
  Dim var_98 As ColumnHeader
  Dim var_108 As TextBox
  loc_14C614C: On Error Goto loc_14C6E3C
  loc_14C6159: If (CLng(Shift) = &H1B) Then
  loc_14C6168:   Set var_8C = var_90(0)
  loc_14C616E:   Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_14C6176:    = var_90.Tag
  loc_14C6187:   Set var_98 = var_9C(0)
  loc_14C618D:   Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_14C6195:   var_9C.Text = 
  loc_14C61B1:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_14C61BA:   Set var_8C = (arg_14)
  loc_14C61D6:   Set var_8C = var_90(0)
  loc_14C61DC:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_14C61E4:   var_90.Visible = DGSite.DispID_8001
  loc_14C61F0:   Call Proc_203_55_EB7ED4()
  loc_14C61F5:   Exit Sub
  loc_14C61F6: End If
  loc_14C6200: ().InsertRows , 
  loc_14C6209: var_B0 = CLng()
  loc_14C6219: If (var_B0 = CLng(2)) Then
  loc_14C6222:   var_B4 = GRepFormName
  loc_14C622D:   If (var_B4 = "BankReg") Then
  loc_14C623D:     ReDim var_B8(0 To 2)
  loc_14C6254:     var_B8(0) = "All"
  loc_14C6263:     var_B8(1) = "Debit"
  loc_14C6272:     var_B8(2) = "Credit"
  loc_14C6289:     global_164 = Array(var_B8)
  loc_14C6294:     Set var_9C = var_B0(global_164)
  loc_14C62AF:     Set var_90 = ()
  loc_14C62C9:     Set global_184 = Proc_183_37_EFE3E8(var_9C, var_90, KeyCode)
  loc_14C62FB:     Set var_8C = var_90(0)
  loc_14C6301:     Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C6309:      = var_90.Left
  loc_14C631A:     Set var_98 = var_9C(0)
  loc_14C6320:     Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C6328:      = var_9C.Top
  loc_14C6339:     Set var_F0 = var_FC(0)
  loc_14C633F:     Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C6347:      = var_FC.Height
  loc_14C6394:     Proc_183_23_11A24A0(3(global_164), (), (), 0, Shift)
  loc_14C63B7:   Else
  loc_14C63BF:     If (var_B4 = "DUELIST") Then
  loc_14C63EA:       CDbl(1500) = var_98(1).ColumnLabelCount.ControlDefault
  loc_14C63F2:       var_98.Width = arg_14
  loc_14C6428:       Set var_90 = var_98(2).ColumnLabelCount
  loc_14C642E:       CDbl(0) = var_90.ControlDefault
  loc_14C6436:       var_98.Width = CInt(var_F4)
  loc_14C644F:       Set var_118 = 1750(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C646C:       Set var_8C = var_90(0)
  loc_14C6472:       Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C647A:        = var_90.Left
  loc_14C648B:       Set var_98 = var_9C(0)
  loc_14C6491:       Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C6499:        = var_9C.Top
  loc_14C64AA:       Set var_F0 = var_FC(0)
  loc_14C64B0:       Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C64B8:        = var_FC.Height
  loc_14C64F6:       Set var_108 = (800)
  loc_14C6505:       Proc_183_23_11A24A0(3(global_164), var_108, (), 0, Shift)
  loc_14C6528:     Else
  loc_14C6530:       If Not (var_B4 = "CashBook") Then
  loc_14C653B:         If Not (var_B4 = "BankBook") Then
  loc_14C6546:           If Not (var_B4 = "Led") Then
  loc_14C6551:             If Not (var_B4 = "LedInt") Then
  loc_14C655C:               If Not (var_B4 = "LedDeb") Then
  loc_14C6567:                 If Not (var_B4 = "MemLed") Then
  loc_14C6572:                   If Not (var_B4 = "LedCred") Then
  loc_14C657D:                     If Not (var_B4 = "AcCheckList") Then
  loc_14C6588:                       If Not (var_B4 = "DayBook") Then
  loc_14C6593:                         If Not (var_B4 = "RozNamcha") Then
  loc_14C659E:                           If (var_B4 = "DetailedTrial") Then
  loc_14C65A1:                           End If
  loc_14C65A1:                         End If
  loc_14C65A1:                       End If
  loc_14C65A1:                     End If
  loc_14C65A1:                   End If
  loc_14C65A1:                 End If
  loc_14C65A1:               End If
  loc_14C65A1:             End If
  loc_14C65A1:           End If
  loc_14C65A1:         End If
  loc_14C65AC:         Set var_138 = 1750(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C65C2:         Set var_8C = var_90(0)
  loc_14C65C8:         Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C65D0:          = var_90.Left
  loc_14C65E1:         Set var_98 = var_9C(0)
  loc_14C65E7:         Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C65EF:          = var_9C.Top
  loc_14C6600:         Set var_F0 = var_FC(0)
  loc_14C6606:         Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C660E:          = var_FC.Height
  loc_14C661F:         Set var_104 = var_108(0)
  loc_14C6625:         Call 0.Method_TxtGrid_KeyDown0 (var_134)
  loc_14C662D:          = var_108.Width
  loc_14C667A:         Proc_183_23_11A24A0(CInt(var_F4)(arg_14), var_138, (800), 0, Shift)
  loc_14C66A1:       Else
  loc_14C66A9:         If Not (var_B4 = "JournalBook") Then
  loc_14C66B4:           If Not (var_B4 = "Annexure") Then
  loc_14C66BF:             If (var_B4 = "JournalBookLog") Then
  loc_14C66C2:             End If
  loc_14C66C2:           End If
  loc_14C66CD:           Set var_9C = CInt(var_134)(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C66F8:           Proc_183_34_1305540(CInt(var_F4)(arg_14), var_9C, KeyCode, global_72)
  loc_14C670B:         Else
  loc_14C6713:           If Not (var_B4 = "DailySumm") Then
  loc_14C671E:             If Not (var_B4 = "AgingDr") Then
  loc_14C6729:               If Not (var_B4 = "AgingCr") Then
  loc_14C6734:                 If Not (var_B4 = "Clg") Then
  loc_14C673F:                   If Not (var_B4 = "ClgNot") Then
  loc_14C674A:                     If Not (var_B4 = "AgingRepDr") Then
  loc_14C6755:                       If (var_B4 = "AgingRepCr") Then
  loc_14C6758:                       End If
  loc_14C6758:                     End If
  loc_14C6758:                   End If
  loc_14C6758:                 End If
  loc_14C6758:               End If
  loc_14C6758:             End If
  loc_14C6763:             Set var_9C = 0(1)
  loc_14C677F:             Set var_90 = var_9C
  loc_14C678E:             Proc_183_34_1305540(&HFF(Shift), var_90, KeyCode, global_76)
  loc_14C679E:           End If
  loc_14C679E:         End If
  loc_14C679E:       End If
  loc_14C679E:     End If
  loc_14C679E:   End If
  loc_14C67A8:   If (CLng(Shift) = &HD) Then
  loc_14C67B8:     Call Proc_203_53_19CEDBC(0, 0, var_110)
  loc_14C67C3:     If (var_110 = &HFF) Then
  loc_14C67C6:       Call Proc_203_57_F2F850(Shift, &HFF)
  loc_14C67CB:     End If
  loc_14C67CB:   End If
  loc_14C67CE: Else
  loc_14C67D5:   If (var_B0 = CLng(3)) Then
  loc_14C67DE:     var_140 = GRepFormName
  loc_14C67E9:     If Not (var_140 = "Annexure") Then
  loc_14C67F4:       If Not (var_140 = "RefReport") Then
  loc_14C67FF:         If Not (var_140 = "JournalBook") Then
  loc_14C680A:           If Not (var_140 = "DetailedTrial") Then
  loc_14C6815:             If (var_140 = "JournalBookLog") Then
  loc_14C6818:             End If
  loc_14C6818:           End If
  loc_14C6818:         End If
  loc_14C6818:       End If
  loc_14C6839:       Set var_8C = var_90(0)
  loc_14C683F:       Call 0.Method_TxtGrid_KeyDown0 (var_F4)
  loc_14C6847:        = var_90.Left
  loc_14C6858:       Set var_98 = var_9C(0)
  loc_14C685E:       Call 0.Method_TxtGrid_KeyDown0 (var_F8)
  loc_14C6866:        = var_9C.Top
  loc_14C6877:       Set var_F0 = var_FC(0)
  loc_14C687D:       Call 0.Method_TxtGrid_KeyDown0 (var_100)
  loc_14C6885:        = var_FC.Height
  loc_14C6896:       Set var_104 = var_108(0)
  loc_14C689C:       Call 0.Method_TxtGrid_KeyDown0 (var_134)
  loc_14C68A4:        = var_108.Width
  loc_14C68F1:       Proc_183_23_11A24A0((1), (), (), 0, Shift)
  loc_14C6918:     Else
  loc_14C6920:       If (var_140 = "DayBook") Then
  loc_14C6959:         Proc_183_34_1305540(Me.DGSite, CInt(var_F4)(arg_14), KeyCode, global_80, Shift)
  loc_14C696C:       Else
  loc_14C6974:         If Not (var_140 = "Led") Then
  loc_14C697F:           If Not (var_140 = "LedInt") Then
  loc_14C698A:             If Not (var_140 = "LedDeb") Then
  loc_14C6995:               If Not (var_140 = "MemLed") Then
  loc_14C69A0:                 If Not (var_140 = "LedCred") Then
  loc_14C69AB:                   If (var_140 = "AcCheckList") Then
  loc_14C69AE:                   End If
  loc_14C69AE:                 End If
  loc_14C69AE:               End If
  loc_14C69AE:             End If
  loc_14C69AE:           End If
  loc_14C69C3:           Set var_8C = CVar(CLng(2))(1)
  loc_14C69F6:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_14C6A04:             Set var_9C = CInt(var_134)(CInt(((var_F8 + var_100) + CDbl(&H19))))
  loc_14C6A2F:             Proc_183_34_1305540(1(&HFF), CInt(var_F4)(arg_14), KeyCode, global_72)
  loc_14C6A42:           Else
  loc_14C6A78:             Proc_183_34_1305540(&HFF(Shift), 0(1), KeyCode, global_76)
  loc_14C6A88:           End If
  loc_14C6A88:         End If
  loc_14C6A88:       End If
  loc_14C6A88:     End If
  loc_14C6A92:     If (CLng(Shift) = &HD) Then
  loc_14C6AA2:       Call Proc_203_53_19CEDBC(0, 0, var_110)
  loc_14C6AAD:       If (var_110 = &HFF) Then
  loc_14C6AB0:         Call Proc_203_57_F2F850(Shift, &HFF)
  loc_14C6AB5:       End If
  loc_14C6AB5:     End If
  loc_14C6AB8:   Else
  loc_14C6ABF:     If (var_B0 = CLng(4)) Then
  loc_14C6AC8:       var_184 = GRepFormName
  loc_14C6AD3:       If Not (var_184 = "CashBook") Then
  loc_14C6ADE:         If Not (var_184 = "BankBook") Then
  loc_14C6AE9:           If Not (var_184 = "Led") Then
  loc_14C6AF4:             If Not (var_184 = "LedInt") Then
  loc_14C6AFF:               If Not (var_184 = "LedDeb") Then
  loc_14C6B0A:                 If Not (var_184 = "MemLed") Then
  loc_14C6B15:                   If Not (var_184 = "LedCred") Then
  loc_14C6B20:                     If Not (var_184 = "AcCheckList") Then
  loc_14C6B2B:                       If (var_184 = "RozNamcha") Then
  loc_14C6B2E:                       End If
  loc_14C6B2E:                     End If
  loc_14C6B2E:                   End If
  loc_14C6B2E:                 End If
  loc_14C6B2E:               End If
  loc_14C6B2E:             End If
  loc_14C6B2E:           End If
  loc_14C6B2E:         End If
  loc_14C6B64:         Proc_183_34_1305540((1), (), KeyCode, global_76)
  loc_14C6B77:       Else
  loc_14C6B7F:         If Not (var_184 = "JournalBook") Then
  loc_14C6B8A:           If (var_184 = "JournalBookLog") Then
  loc_14C6B8D:           End If
  loc_14C6BC3:           Proc_183_34_1305540(Me.DGSite, &HFF(Shift), KeyCode, global_80)
  loc_14C6BD3:         End If
  loc_14C6BD3:       End If
  loc_14C6BDD:       If (CLng(Shift) = &HD) Then
  loc_14C6BED:         Call Proc_203_53_19CEDBC(0, 0, var_110, Shift)
  loc_14C6BF8:         If (var_110 = &HFF) Then
  loc_14C6BFB:           Call Proc_203_57_F2F850(&HFF, 1)
  loc_14C6C00:         End If
  loc_14C6C00:       End If
  loc_14C6C03:     Else
  loc_14C6C0A:       If (var_B0 = CLng(5)) Then
  loc_14C6C13:         var_188 = GRepFormName
  loc_14C6C1E:         If Not (var_188 = "Led") Then
  loc_14C6C29:           If Not (var_188 = "LedInt") Then
  loc_14C6C34:             If Not (var_188 = "LedDeb") Then
  loc_14C6C3F:               If Not (var_188 = "MemLed") Then
  loc_14C6C4A:                 If Not (var_188 = "LedCred") Then
  loc_14C6C55:                   If (var_188 = "AcCheckList") Then
  loc_14C6C58:                   End If
  loc_14C6C58:                 End If
  loc_14C6C58:               End If
  loc_14C6C58:             End If
  loc_14C6C58:           End If
  loc_14C6C8E:           Proc_183_34_1305540((1), (), KeyCode, global_76)
  loc_14C6C9E:         End If
  loc_14C6CA8:         If (CLng(Shift) = &HD) Then
  loc_14C6CB8:           Call Proc_203_53_19CEDBC(0, 0, var_110)
  loc_14C6CC3:           If (var_110 = &HFF) Then
  loc_14C6CC6:             Call Proc_203_57_F2F850(Shift, &HFF)
  loc_14C6CCB:           End If
  loc_14C6CCB:         End If
  loc_14C6CCE:       Else
  loc_14C6CD5:         If (var_B0 = CLng(0)) Then
  loc_14C6CDE:           var_18C = GRepFormName
  loc_14C6CE9:           If Not (var_18C = "BudgetVariance") Then
  loc_14C6CF4:             If (var_18C = "Budget") Then
  loc_14C6CF7:             End If
  loc_14C6D2D:             Proc_183_34_1305540((1), (), KeyCode, global_76)
  loc_14C6D40:           Else
  loc_14C6D80:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14C6D90:               Call Proc_203_53_19CEDBC(0, 0, var_110)
  loc_14C6D9B:               If (var_110 = &HFF) Then
  loc_14C6D9E:                 Call Proc_203_57_F2F850(Shift, &HFF)
  loc_14C6DA3:               End If
  loc_14C6DA3:             End If
  loc_14C6DA3:           End If
  loc_14C6DA6:         Else
  loc_14C6DAD:           If Not (var_B0 = CLng(1)) Then
  loc_14C6DB7:             If Not (var_B0 = CLng(6)) Then
  loc_14C6DC1:               If Not (var_B0 = CLng(7)) Then
  loc_14C6DCB:                 If Not (var_B0 = CLng(8)) Then
  loc_14C6DD5:                   If (var_B0 = CLng(9)) Then
  loc_14C6DD8:                   End If
  loc_14C6DD8:                 End If
  loc_14C6DD8:               End If
  loc_14C6DD8:             End If
  loc_14C6E18:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_162 = &HFF))) Then
  loc_14C6E28:               Call Proc_203_53_19CEDBC(0, 0)
  loc_14C6E33:               If (var_110 = &HFF) Then
  loc_14C6E36:                 Call Proc_203_57_F2F850(var_110)
  loc_14C6E3B:               End If
  loc_14C6E3B:             End If
  loc_14C6E3B:           End If
  loc_14C6E3B:         End If
  loc_14C6E3B:       End If
  loc_14C6E3B:     End If
  loc_14C6E3B:   End If
  loc_14C6E3B: End If
  loc_14C6E3B: Exit Sub
  loc_14C6E3C: ' Referenced from: 14C614C
  loc_14C6E42: Call 0.Method_arg_50 (var_94)
  loc_14C6E57: Proc_183_57_104AA84(var_94, "TxtGrid_KeyDown")
  loc_14C6E63: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '12BA0EC
  'Data Table: 583330
  Dim var_88 As DataGrid
  Dim var_9C As Long
  loc_12B9AC0: On Error Goto loc_12BA0C2
  loc_12B9AC6: Proc_183_46_E070C0(arg_10)
  loc_12B9AD5: ().InsertRows , 
  loc_12B9ADE: var_9C = CLng()
  loc_12B9AEE: If (var_9C = CLng(0)) Then
  loc_12B9AF7:   var_A0 = GRepFormName
  loc_12B9B02:   If Not (var_A0 = "BudgetVariance") Then
  loc_12B9B0D:     If (var_A0 = "Budget") Then
  loc_12B9B10:     End If
  loc_12B9B2C:     If (CBool((var_9C).Visible) = &HFF) Then
  loc_12B9B3E:       var_A4 = "Name"
  loc_12B9B59:       Proc_183_41_1459C78((), KeyAscii, global_76)
  loc_12B9B68:     End If
  loc_12B9B68:   End If
  loc_12B9B6B: Else
  loc_12B9B72:   If (var_9C = CLng(2)) Then
  loc_12B9B7B:     var_B0 = GRepFormName
  loc_12B9B86:     If Not (var_B0 = "JournalBook") Then
  loc_12B9B91:       If Not (var_B0 = "Annexure") Then
  loc_12B9B9C:         If (var_B0 = "JournalBookLog") Then
  loc_12B9B9F:         End If
  loc_12B9B9F:       End If
  loc_12B9BBB:       If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9BCD:         var_A4 = "Name"
  loc_12B9BE8:         Proc_183_41_1459C78((0), KeyAscii, global_72)
  loc_12B9BF7:       End If
  loc_12B9BFA:     Else
  loc_12B9C02:       If Not (var_B0 = "DailySumm") Then
  loc_12B9C0D:         If Not (var_B0 = "AgingDr") Then
  loc_12B9C18:           If Not (var_B0 = "AgingCr") Then
  loc_12B9C23:             If Not (var_B0 = "Clg") Then
  loc_12B9C2E:               If Not (var_B0 = "ClgNot") Then
  loc_12B9C39:                 If Not (var_B0 = "AgingRepDr") Then
  loc_12B9C44:                   If (var_B0 = "AgingRepCr") Then
  loc_12B9C47:                   End If
  loc_12B9C47:                 End If
  loc_12B9C47:               End If
  loc_12B9C47:             End If
  loc_12B9C47:           End If
  loc_12B9C47:         End If
  loc_12B9C63:         If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9C6A:           Set var_AC = (0)
  loc_12B9C75:           var_A4 = "Name"
  loc_12B9C90:           Proc_183_41_1459C78(var_AC, KeyAscii, global_76)
  loc_12B9C9F:         End If
  loc_12B9C9F:       End If
  loc_12B9C9F:     End If
  loc_12B9CA2:   Else
  loc_12B9CA9:     If (var_9C = CLng(3)) Then
  loc_12B9CB2:       var_B4 = GRepFormName
  loc_12B9CBD:       If (var_B4 = "DueListPeriod") Then
  loc_12B9CCA:         Set var_88 = var_AC(KeyAscii)
  loc_12B9CD0:         Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_12B9CEB:         Proc_183_22_129AEBC(var_AC, arg_10, 3)
  loc_12B9CFA:       Else
  loc_12B9D02:         If Not (var_B4 = "CashBook") Then
  loc_12B9D0D:           If Not (var_B4 = "BankBook") Then
  loc_12B9D18:             If (var_B4 = "RozNamcha") Then
  loc_12B9D1B:             End If
  loc_12B9D1B:           End If
  loc_12B9D25:           Set var_88 = var_AC(KeyAscii)
  loc_12B9D2B:           Call 0.Method_TxtGrid_KeyPress0 (0)
  loc_12B9D46:           Proc_183_22_129AEBC(var_AC, arg_10, 4)
  loc_12B9D55:         Else
  loc_12B9D5D:           If (var_B4 = "DayBook") Then
  loc_12B9D7C:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12B9D8E:               var_A4 = "Name"
  loc_12B9DA9:               Proc_183_41_1459C78(0(0), KeyAscii, global_80)
  loc_12B9DB8:             End If
  loc_12B9DBB:           Else
  loc_12B9DC3:             If Not (var_B4 = "Led") Then
  loc_12B9DCE:               If (var_B4 = "LedInt") Then
  loc_12B9DD1:               End If
  loc_12B9DE6:               Set var_88 = CVar(CLng(2))(1)
  loc_12B9E19:               If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_12B9E38:                 If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9E4A:                   var_A4 = "Name"
  loc_12B9E65:                   Proc_183_41_1459C78((0), KeyAscii, global_72)
  loc_12B9E74:                 End If
  loc_12B9E77:               Else
  loc_12B9E93:                 If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9EA5:                   var_A4 = "Name"
  loc_12B9EC0:                   Proc_183_41_1459C78((0), KeyAscii, global_76)
  loc_12B9ECF:                 End If
  loc_12B9ECF:               End If
  loc_12B9ECF:             End If
  loc_12B9ECF:           End If
  loc_12B9ECF:         End If
  loc_12B9ECF:       End If
  loc_12B9ED2:     Else
  loc_12B9ED9:       If (var_9C = CLng(4)) Then
  loc_12B9EE2:         var_140 = GRepFormName
  loc_12B9EED:         If Not (var_140 = "CashBook") Then
  loc_12B9EF8:           If Not (var_140 = "BankBook") Then
  loc_12B9F03:             If Not (var_140 = "Led") Then
  loc_12B9F0E:               If Not (var_140 = "LedInt") Then
  loc_12B9F19:                 If Not (var_140 = "LedDeb") Then
  loc_12B9F24:                   If Not (var_140 = "MemLed") Then
  loc_12B9F2F:                     If Not (var_140 = "LedCred") Then
  loc_12B9F3A:                       If Not (var_140 = "AcCheckList") Then
  loc_12B9F45:                         If (var_140 = "RozNamcha") Then
  loc_12B9F48:                         End If
  loc_12B9F48:                       End If
  loc_12B9F48:                     End If
  loc_12B9F48:                   End If
  loc_12B9F48:                 End If
  loc_12B9F48:               End If
  loc_12B9F48:             End If
  loc_12B9F48:           End If
  loc_12B9F64:           If (CBool(var_A4(arg_10).Visible) = &HFF) Then
  loc_12B9F76:             var_A4 = "Name"
  loc_12B9F91:             Proc_183_41_1459C78((0), KeyAscii, global_76)
  loc_12B9FA0:           End If
  loc_12B9FA3:         Else
  loc_12B9FAB:           If Not (var_140 = "JournalBook") Then
  loc_12B9FB6:             If (var_140 = "JournalBookLog") Then
  loc_12B9FB9:             End If
  loc_12B9FD5:             If (CBool(Me.DGSite.Visible) = &HFF) Then
  loc_12B9FE7:               var_A4 = "Name"
  loc_12BA002:               Proc_183_41_1459C78(var_A4(arg_10), KeyAscii, global_80, arg_10)
  loc_12BA011:             End If
  loc_12BA011:           End If
  loc_12BA011:         End If
  loc_12BA014:       Else
  loc_12BA01B:         If (var_9C = CLng(5)) Then
  loc_12BA024:           var_144 = GRepFormName
  loc_12BA02F:           If Not (var_144 = "Led") Then
  loc_12BA03A:             If Not (var_144 = "LedInt") Then
  loc_12BA045:               If Not (var_144 = "LedDeb") Then
  loc_12BA050:                 If Not (var_144 = "MemLed") Then
  loc_12BA05B:                   If Not (var_144 = "LedCred") Then
  loc_12BA066:                     If (var_144 = "AcCheckList") Then
  loc_12BA069:                     End If
  loc_12BA069:                   End If
  loc_12BA069:                 End If
  loc_12BA069:               End If
  loc_12BA069:             End If
  loc_12BA085:             If (CBool(0(var_A4).Visible) = &HFF) Then
  loc_12BA097:               var_A4 = "Name"
  loc_12BA0B2:               Proc_183_41_1459C78((0), KeyAscii, global_76)
  loc_12BA0C1:             End If
  loc_12BA0C1:           End If
  loc_12BA0C1:         End If
  loc_12BA0C1:       End If
  loc_12BA0C1:     End If
  loc_12BA0C1:   End If
  loc_12BA0C1: End If
  loc_12BA0C1: Exit Sub
  loc_12BA0C2: ' Referenced from: 12B9AC0
  loc_12BA0C8: Call 0.Method_arg_50 (var_A4, arg_10)
  loc_12BA0DD: Proc_183_57_104AA84(var_A4, "TxtGrid_KeyPress")
  loc_12BA0E9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '13867D4
  'Data Table: 583330
  Dim var_88 As Variant
  Dim var_9C As Long
  loc_1385F2C: On Error Goto loc_13867AC
  loc_1385F39: ().InsertRows , 
  loc_1385F42: var_9C = CLng()
  loc_1385F52: If (var_9C = CLng(0)) Then
  loc_1385F5B:   var_A0 = GRepFormName
  loc_1385F66:   If Not (var_A0 = "BudgetVariance") Then
  loc_1385F71:     If (var_A0 = "Budget") Then
  loc_1385F74:     End If
  loc_1385F97:     If ( And (CBool(var_9C((Shift <> &HD)).Visible) = 0)) Then
  loc_1385FA8:       Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1385FBC:       var_A8 = "Name"
  loc_1385FD7:       Proc_183_41_1459C78((0), KeyCode, global_76)
  loc_1385FE6:     End If
  loc_1385FE6:   End If
  loc_1385FE9: Else
  loc_1385FF0:   If (var_9C = CLng(2)) Then
  loc_1385FF9:     var_B0 = GRepFormName
  loc_1386004:     If Not (var_B0 = "JournalBook") Then
  loc_138600F:       If Not (var_B0 = "Annexure") Then
  loc_138601A:         If (var_B0 = "JournalBookLog") Then
  loc_138601D:         End If
  loc_138601D:       End If
  loc_1386040:       If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386051:         Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386065:         var_A8 = "Name"
  loc_1386080:         Proc_183_41_1459C78(&HFF(0), KeyCode, global_72)
  loc_138608F:       End If
  loc_1386092:     Else
  loc_138609A:       If Not (var_B0 = "DailySumm") Then
  loc_13860A5:         If Not (var_B0 = "AgingDr") Then
  loc_13860B0:           If Not (var_B0 = "AgingCr") Then
  loc_13860BB:             If Not (var_B0 = "Clg") Then
  loc_13860C6:               If Not (var_B0 = "ClgNot") Then
  loc_13860D1:                 If Not (var_B0 = "AgingRepDr") Then
  loc_13860DC:                   If (var_B0 = "AgingRepCr") Then
  loc_13860DF:                   End If
  loc_13860DF:                 End If
  loc_13860DF:               End If
  loc_13860DF:             End If
  loc_13860DF:           End If
  loc_13860DF:         End If
  loc_1386102:         If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386113:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386127:           var_A8 = "Name"
  loc_1386142:           Proc_183_41_1459C78(&HFF(0), KeyCode, global_76)
  loc_1386151:         End If
  loc_1386154:       Else
  loc_1386167:         Shift = (Shift <> &HD)(var_A2).Visible
  loc_1386176:         If (var_A8 And (var_A2 = 0)) Then
  loc_1386187:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138618C:         End If
  loc_13861BA:         Proc_183_35_F29A04(&HFF(0), (), 0)
  loc_13861CA:       End If
  loc_13861CA:     End If
  loc_13861CD:   Else
  loc_13861D4:     If (var_9C = CLng(3)) Then
  loc_13861DD:       var_BC = GRepFormName
  loc_13861E8:       If Not (var_BC = "Annexure") Then
  loc_13861F3:         If Not (var_BC = "RefReport") Then
  loc_13861FE:           If Not (var_BC = "JournalBook") Then
  loc_1386209:             If (var_BC = "JournalBookLog") Then
  loc_138620C:             End If
  loc_138620C:           End If
  loc_138620C:         End If
  loc_138621F:         Shift = (Shift <> &HD)(var_A2).Visible
  loc_138622E:         If (global_184 And (var_A2 = 0)) Then
  loc_138623F:           Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386244:         End If
  loc_1386272:         Proc_183_35_F29A04((0), (), 0)
  loc_1386285:       Else
  loc_138628D:         If (var_BC = "DayBook") Then
  loc_13862B3:           If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_13862C4:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13862D8:             var_A8 = "Name"
  loc_13862F3:             Proc_183_41_1459C78(Shift(0), KeyCode, global_80, Shift)
  loc_1386302:           End If
  loc_1386305:         Else
  loc_138630D:           If Not (var_BC = "Led") Then
  loc_1386318:             If Not (var_BC = "LedInt") Then
  loc_1386323:               If Not (var_BC = "LedDeb") Then
  loc_138632E:                 If Not (var_BC = "MemLed") Then
  loc_1386339:                   If Not (var_BC = "LedCred") Then
  loc_1386344:                     If (var_BC = "AcCheckList") Then
  loc_1386347:                     End If
  loc_1386347:                   End If
  loc_1386347:                 End If
  loc_1386347:               End If
  loc_1386347:             End If
  loc_138635C:             Set var_88 = CVar(CLng(2))(1)
  loc_138638F:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_13863B5:               If (&HFF And (CBool(var_A8((Shift <> &HD)).Visible) = 0)) Then
  loc_13863C6:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13863DA:                 var_A8 = "Name"
  loc_13863F5:                 Proc_183_41_1459C78(global_184(0), KeyCode, global_72)
  loc_1386404:               End If
  loc_1386407:             Else
  loc_138642A:               If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_138643B:                 Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138644F:                 var_A8 = "Name"
  loc_138646A:                 Proc_183_41_1459C78(&HFF(0), KeyCode, global_76)
  loc_1386479:               End If
  loc_1386479:             End If
  loc_1386479:           End If
  loc_1386479:         End If
  loc_1386479:       End If
  loc_138647C:     Else
  loc_1386483:       If (var_9C = CLng(4)) Then
  loc_138648C:         var_140 = GRepFormName
  loc_1386497:         If Not (var_140 = "CashBook") Then
  loc_13864A2:           If Not (var_140 = "BankBook") Then
  loc_13864AD:             If Not (var_140 = "Led") Then
  loc_13864B8:               If Not (var_140 = "LedInt") Then
  loc_13864C3:                 If Not (var_140 = "LedDeb") Then
  loc_13864CE:                   If Not (var_140 = "MemLed") Then
  loc_13864D9:                     If Not (var_140 = "LedCred") Then
  loc_13864E4:                       If Not (var_140 = "AcCheckList") Then
  loc_13864EF:                         If (var_140 = "RozNamcha") Then
  loc_13864F2:                         End If
  loc_13864F2:                       End If
  loc_13864F2:                     End If
  loc_13864F2:                   End If
  loc_13864F2:                 End If
  loc_13864F2:               End If
  loc_13864F2:             End If
  loc_13864F2:           End If
  loc_1386515:           If (var_A8 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_1386526:             Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138653A:             var_A8 = "Name"
  loc_1386555:             Proc_183_41_1459C78(&HFF(0), KeyCode, global_76)
  loc_1386564:           End If
  loc_1386567:         Else
  loc_138656F:           If Not (var_140 = "JournalBook") Then
  loc_138657A:             If (var_140 = "JournalBookLog") Then
  loc_138657D:             End If
  loc_13865A0:             If ((Shift <> &HD) And (CBool(Me.DGSite.Visible) = 0)) Then
  loc_13865B1:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_13865C5:               var_A8 = "Name"
  loc_13865E0:               Proc_183_41_1459C78(Shift(0), KeyCode, global_80, Shift)
  loc_13865EF:             End If
  loc_13865F2:           Else
  loc_1386605:             var_A8 = (Shift <> &HD)(var_A2).Visible
  loc_1386614:             If (&HFF And (var_A2 = 0)) Then
  loc_1386625:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138662A:             End If
  loc_1386658:             Proc_183_35_F29A04(var_A8(0), (&HFF), 0)
  loc_1386668:           End If
  loc_1386668:         End If
  loc_138666B:       Else
  loc_1386672:         If (var_9C = CLng(5)) Then
  loc_138667B:           var_144 = GRepFormName
  loc_1386686:           If Not (var_144 = "Led") Then
  loc_1386691:             If Not (var_144 = "LedInt") Then
  loc_138669C:               If Not (var_144 = "LedDeb") Then
  loc_13866A7:                 If Not (var_144 = "MemLed") Then
  loc_13866B2:                   If Not (var_144 = "LedCred") Then
  loc_13866BD:                     If (var_144 = "AcCheckList") Then
  loc_13866C0:                     End If
  loc_13866C0:                   End If
  loc_13866C0:                 End If
  loc_13866C0:               End If
  loc_13866C0:             End If
  loc_13866E3:             If (global_184 And (CBool(Shift((Shift <> &HD)).Visible) = 0)) Then
  loc_13866F4:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_1386708:               var_A8 = "Name"
  loc_1386723:               Proc_183_41_1459C78((0), KeyCode, global_76)
  loc_1386732:             End If
  loc_1386735:           Else
  loc_1386748:             Shift = (Shift <> &HD)(var_A2).Visible
  loc_1386757:             If (var_A8 And (var_A2 = 0)) Then
  loc_1386768:               Call TxtGrid_KeyDown(KeyCode, global_160)
  loc_138676D:             End If
  loc_138679B:             Proc_183_35_F29A04(&HFF(0), (), 0)
  loc_13867AB:           End If
  loc_13867AB:         End If
  loc_13867AB:       End If
  loc_13867AB:     End If
  loc_13867AB:   End If
  loc_13867AB: End If
  loc_13867AB: Exit Sub
  loc_13867AC: ' Referenced from: 1385F2C
  loc_13867B2: Call 0.Method_arg_50 (var_A8, Shift)
  loc_13867C7: Proc_183_57_104AA84(var_A8, "TxtGrid_KeyUp")
  loc_13867D3: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5FDB0
  'Data Table: 583330
  Dim arg_10 As Integer
  loc_E5FD6C: On Error Goto loc_E5FD87
  loc_E5FD7A: Call Proc_203_53_19CEDBC(Cancel, &HFF)
  loc_E5FD83: arg_10 = Not(var_88)
  loc_E5FD86: Exit Sub
  loc_E5FD87: ' Referenced from: E5FD6C
  loc_E5FD8D: Call 0.Method_arg_50 (var_8C, arg_10)
  loc_E5FDA2: Proc_183_57_104AA84(var_8C, "TxtGrid_Validate")
  loc_E5FDAE: Exit Sub
End Sub

Public Function GRepFormNameGet() '585A18
  GRepFormNameGet = GRepFormName
End Function

Public Sub GRepFormNamePut(Value) '585A27
  GRepFormName = Value
End Sub

Public Function mFaJournalLog(Rst) '11C74F0
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_11C707D: Set var_8C = Rst 
  loc_11C70A5: var_8C.Fields.Append "V_DATE", 7, 0
  loc_11C70D1: var_8C.Fields.Append "Credit", 5, 0
  loc_11C70FD: var_8C.Fields.Append "Debit", 5, 0
  loc_11C7129: var_8C.Fields.Append "V_TYPE", &HC8, 5
  loc_11C7155: var_8C.Fields.Append "V_NO", 3, 0
  loc_11C7181: var_8C.Fields.Append "V_ADD", &HC8, 5
  loc_11C71AD: var_8C.Fields.Append "CHQ_NO", &HC8, &H14
  loc_11C71D9: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_11C7205: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_11C7231: var_8C.Fields.Append "NAME", &HC8, &H4B
  loc_11C725D: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_11C7289: var_8C.Fields.Append "V_SNO", 3, 0
  loc_11C72B5: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11C72E1: var_8C.Fields.Append "VAL", &HC8, 2
  loc_11C730D: var_8C.Fields.Append "NAME1", &HC8, &H4B
  loc_11C7339: var_8C.Fields.Append "ADDRESS1", &HC8, &H96
  loc_11C7365: var_8C.Fields.Append "CITY_NAME", &HC8, &H4B
  loc_11C7391: var_8C.Fields.Append "GRNAME", &HC8, &H4B
  loc_11C73BD: var_8C.Fields.Append "GRCODE", &HC8, 4
  loc_11C73E9: var_8C.Fields.Append "DocNo", &HC8, &H15
  loc_11C7415: var_8C.Fields.Append "DocId", &HC8, &H15
  loc_11C7441: var_8C.Fields.Append "U_NAME", &HC8, &HA
  loc_11C746D: var_8C.Fields.Append "ENTDT", &HC8, &H10
  loc_11C7499: var_8C.Fields.Append "SEQNO", 3, 0
  loc_11C74A9: var_8C.CursorType = 3
  loc_11C74B6: var_8C.LockType = 3
  loc_11C74D5: var_8C.Open var_A0, var_B0, -1
  loc_11C74DC: Set var_8C = Nothing 
  loc_11C74E3: Set var_88 = Rst 
  loc_11C74E7: mFaJournalLog = -1
End Function

Public Function mDetailTrial(Rst) '1043398
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_1043135: Set var_8C = Rst 
  loc_104315D: var_8C.Fields.Append "TT", 3, 0
  loc_1043189: var_8C.Fields.Append "GroupName", &HC8, &HFF
  loc_10431B5: var_8C.Fields.Append "GRCODE", &HC8, &HFF
  loc_10431E1: var_8C.Fields.Append "PARTYCODE", &HC8, &HFF
  loc_104320D: var_8C.Fields.Append "PARTYNAME", &HC8, &HFF
  loc_1043239: var_8C.Fields.Append "OP_CR", 5, 0
  loc_1043265: var_8C.Fields.Append "OP_dR", 5, 0
  loc_1043291: var_8C.Fields.Append "BALANCECR", 5, 0
  loc_10432BD: var_8C.Fields.Append "BALANCEDR", 5, 0
  loc_10432E9: var_8C.Fields.Append "Bal", 3, 0
  loc_1043315: var_8C.Fields.Append "mgrcode", &HC8, &HFF
  loc_1043341: var_8C.Fields.Append "GRName", &HC8, &HFF
  loc_1043351: var_8C.CursorType = 3
  loc_104335E: var_8C.LockType = 3
  loc_104337D: var_8C.Open var_A0, var_B0, -1
  loc_1043384: Set var_8C = Nothing 
  loc_104338B: Set var_88 = Rst 
  loc_104338F: mDetailTrial = -1
End Function

Public Function mAgeingReport(Rst) '10450A4
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_1044E41: Set var_8C = Rst 
  loc_1044E69: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_1044E95: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_1044EC1: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_1044EED: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_1044F19: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_1044F45: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_1044F71: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_1044F9D: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_1044FC9: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_1044FF5: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_1045021: var_8C.Fields.Append "CON_PER", &HC8, &H32
  loc_104504D: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_104505D: var_8C.CursorType = 3
  loc_104506A: var_8C.LockType = 3
  loc_1045089: var_8C.Open var_A0, var_B0, -1
  loc_1045090: Set var_8C = Nothing 
  loc_1045097: Set var_88 = Rst 
  loc_104509B: mAgeingReport = -1
End Function

Public Sub Proc_203_53_19CEDBC(arg_C, arg_10) '19CEDBC
  'Data Table: 583330
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim Me As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_138 As DataGrid
  Dim var_F4 As Variant
  Dim var_13C As Variant
  Dim var_B0 As Variant
  Dim var_160 As DataGrid
  loc_19CBC90: On Error Goto loc_19CED8D
  loc_19CBCA1: var_8C = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19CBCB5: var_90 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_19CBCC9: var_94 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19CBCD6: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078
  loc_19CBCDD: var_98 = var_9C & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_19CBCED: ().InsertRows , 
  loc_19CBCF6: var_B4 = CLng()
  loc_19CBD06: If Not (var_B4 = CLng(5)) Then
  loc_19CBD10:   If Not (var_B4 = CLng(6)) Then
  loc_19CBD1A:     If Not (var_B4 = CLng(7)) Then
  loc_19CBD24:       If Not (var_B4 = CLng(8)) Then
  loc_19CBD2E:         If (var_B4 = CLng(9)) Then
  loc_19CBD31:         End If
  loc_19CBD31:       End If
  loc_19CBD31:     End If
  loc_19CBD31:   End If
  loc_19CBD37:   var_B8 = GRepFormName
  loc_19CBD42:   If Not (var_B8 = "Led") Then
  loc_19CBD4D:     If Not (var_B8 = "LedInt") Then
  loc_19CBD58:       If Not (var_B8 = "LedDeb") Then
  loc_19CBD63:         If Not (var_B8 = "MemLed") Then
  loc_19CBD6E:           If Not (var_B8 = "LedCred") Then
  loc_19CBD79:             If (var_B8 = "AcCheckList") Then
  loc_19CBD7C:             End If
  loc_19CBD7C:           End If
  loc_19CBD7C:         End If
  loc_19CBD7C:       End If
  loc_19CBD7C:     End If
  loc_19CBD86:     (var_B4).InsertRows , 
  loc_19CBD99:     If (CLng() = CLng(5)) Then
  loc_19CBDA5:       var_BC = Me.RecordCount
  loc_19CBDEA:       Set var_A0 = var_C4(arg_C)
  loc_19CBDF0:       Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CBDF8:       ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19CBE10:       If ( Or (var_9C = vbNullString)) Then
  loc_19CBE1D:         ().InsertRows , 
  loc_19CBE35:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CBE53:         LateIdCallSt
  loc_19CBE75:         (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CBE7E:         var_E4 = CVar(CLng()) 'Long
  loc_19CBE96:         Set var_C4 = 2(vbNullString)
  loc_19CBE9C:         LateIdCallSt
  loc_19CBEB1:       Else
  loc_19CBEBB:         var_E4(var_C4).InsertRows , 
  loc_19CBED3:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CBF1D:         LateIdCallSt
  loc_19CBF47:         (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CBF50:         var_F4 = CVar(CLng()) 'Long
  loc_19CBF7B:         var_C4 = Me.Fields.Item("Code")
  loc_19CBF94:         Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CBF9A:         LateIdCallSt
  loc_19CBFB6:       End If
  loc_19CBFB6:     End If
  loc_19CBFB9:   Else
  loc_19CBFC3:     var_F4(var_13C).InsertRows , 
  loc_19CBFDB:     (CVar(CLng())).DeleteRowLabels , 
  loc_19CBFE4:     var_104 = CVar(CLng()) 'Long
  loc_19CBFF5:     Set var_A0 = var_C4(0)
  loc_19CBFFB:     Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CC003:     var_104 = var_C4.Text
  loc_19CC013:     Set var_160 = (CVar(var_9C))
  loc_19CC019:     LateIdCallSt
  loc_19CC037:   End If
  loc_19CC03A: Else
  loc_19CC041:   If (var_B4 = CLng(2)) Then
  loc_19CC04A:     var_164 = GRepFormName
  loc_19CC055:     If Not (var_164 = "DUELIST") Then
  loc_19CC060:       If (var_164 = "BankReg") Then
  loc_19CC063:       End If
  loc_19CC06F:       Set var_A0 = var_C4(0)
  loc_19CC075:       Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CC07D:       var_160 = var_C4.Text
  loc_19CC094:       If (var_9C <> vbNullString) Then
  loc_19CC0A1:         ().InsertRows , 
  loc_19CC0B9:         (CVar(CLng())).DeleteRowLabels , 
  loc_19CC0D4:         CVar(CLng())(var_9C).RandomDataFill
  loc_19CC0E5:          = .Text
  loc_19CC0FB:         LateIdCallSt
  loc_19CC125:         ((CVar(var_9C))).InsertRows , 
  loc_19CC12E:         var_E4 = CVar(CLng()) 'Long
  loc_19CC14B:         var_9C(1).RandomDataFill
  loc_19CC156:         Set var_C4 = 2
  loc_19CC15C:         var_E4 = var_C4.SubItems
  loc_19CC16C:         Set var_13C = (CVar(var_9C))
  loc_19CC172:         LateIdCallSt
  loc_19CC18E:       End If
  loc_19CC191:     Else
  loc_19CC199:       If Not (var_164 = "CashBook") Then
  loc_19CC1A4:         If Not (var_164 = "BankBook") Then
  loc_19CC1AF:           If Not (var_164 = "Led") Then
  loc_19CC1BA:             If Not (var_164 = "LedInt") Then
  loc_19CC1C5:               If Not (var_164 = "LedDeb") Then
  loc_19CC1D0:                 If Not (var_164 = "MemLed") Then
  loc_19CC1DB:                   If Not (var_164 = "LedCred") Then
  loc_19CC1E6:                     If Not (var_164 = "AcCheckList") Then
  loc_19CC1F1:                       If Not (var_164 = "DayBook") Then
  loc_19CC1FC:                         If Not (var_164 = "RozNamcha") Then
  loc_19CC207:                           If (var_164 = "DetailedTrial") Then
  loc_19CC20A:                           End If
  loc_19CC20A:                         End If
  loc_19CC20A:                       End If
  loc_19CC20A:                     End If
  loc_19CC20A:                   End If
  loc_19CC20A:                 End If
  loc_19CC20A:               End If
  loc_19CC20A:             End If
  loc_19CC20A:           End If
  loc_19CC20A:         End If
  loc_19CC216:         Set var_A0 = var_C4(0)
  loc_19CC21C:         Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CC224:         var_13C = var_C4.Text
  loc_19CC23B:         If (var_9C <> vbNullString) Then
  loc_19CC248:           ().InsertRows , 
  loc_19CC25A:           Set var_13C = (CVar(CLng()))
  loc_19CC260:           var_13C.DeleteRowLabels , 
  loc_19CC27B:           CVar(CLng())(var_9C).RandomDataFill
  loc_19CC28C:            = .Text
  loc_19CC29C:           Set var_160 = (CVar(var_9C))
  loc_19CC2A2:           LateIdCallSt
  loc_19CC2C2:         End If
  loc_19CC2C8:         var_168 = GRepFormName
  loc_19CC2D3:         If Not (var_168 = "Led") Then
  loc_19CC2DE:           If Not (var_168 = "LedInt") Then
  loc_19CC2E9:             If Not (var_168 = "LedDeb") Then
  loc_19CC2F4:               If Not (var_168 = "MemLed") Then
  loc_19CC2FF:                 If Not (var_168 = "LedCred") Then
  loc_19CC30A:                   If (var_168 = "AcCheckList") Then
  loc_19CC30D:                   End If
  loc_19CC30D:                 End If
  loc_19CC30D:               End If
  loc_19CC30D:             End If
  loc_19CC30D:           End If
  loc_19CC317:           (var_160).InsertRows , 
  loc_19CC329:           Set var_C4 = (CVar(CLng()))
  loc_19CC32F:           var_C4.DeleteRowLabels , 
  loc_19CC341:           Set var_138 = (CVar(CLng()))
  loc_19CC37E:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "SELECTED") Then
  loc_19CC38D:             (&HFF).Visible = 
  loc_19CC3A2:             Set var_A0 = var_C4(1)
  loc_19CC3A8:             Call 0.Method_Proc_203_53_19CEDBC0 (True)
  loc_19CC3B0:             var_C4.Visible = 
  loc_19CC3C7:             Set var_A0 = var_C4(1)
  loc_19CC3CD:             Call 0.Method_Proc_203_53_19CEDBC0 (&HFF)
  loc_19CC3D5:             var_C4.Visible = 
  loc_19CC3EF:             Set var_A0 = var_C4(2)
  loc_19CC3F5:             Call 0.Method_Proc_203_53_19CEDBC0 (False)
  loc_19CC3FD:             var_C4.Visible = 
  loc_19CC414:             Set var_A0 = var_C4(2)
  loc_19CC41A:             Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CC422:             var_C4.Visible = 
  loc_19CC443:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CC449:             LateIdCallSt
  loc_19CC469:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CC46F:             LateIdCallSt
  loc_19CC48F:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CC495:             LateIdCallSt
  loc_19CC4BD:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CC4C5:           End If
  loc_19CC4CF:           var_A0(var_A0).InsertRows , 
  loc_19CC4E1:           Set var_C4 = (CVar(CLng()))
  loc_19CC4E7:           var_C4.DeleteRowLabels , 
  loc_19CC4F9:           Set var_138 = (CVar(CLng()))
  loc_19CC536:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "MERGE") Then
  loc_19CC545:             (0).Visible = 
  loc_19CC550:             var_E4 = CVar(CLng(3)) 'Long
  loc_19CC568:             Set var_A0 = 0("From Account        ")
  loc_19CC56E:             LateIdCallSt
  loc_19CC58E:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CC594:             LateIdCallSt
  loc_19CC5A2:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CC5BA:             Set var_A0 = 0("To Account          ")
  loc_19CC5C0:             LateIdCallSt
  loc_19CC5E0:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CC5E6:             LateIdCallSt
  loc_19CC606:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CC60C:             LateIdCallSt
  loc_19CC62C:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CC632:             LateIdCallSt
  loc_19CC652:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CC658:             LateIdCallSt
  loc_19CC680:             CInt(4)(CVar(CDbl(1550))).Height = CInt(4)(CVar(CDbl(1550)))
  loc_19CC688:             var_E4 = False
  loc_19CC69C:             Call 0.Method_Proc_203_53_19CEDBC0 (var_E4, var_C4(1), var_C4(1), var_C4(1), var_C4(1))
  loc_19CC6A4:             var_C4.Visible = var_E4
  loc_19CC6BB:             Set var_A0 = var_C4(1)
  loc_19CC6C1:             Call 0.Method_Proc_203_53_19CEDBC0 (0, var_A0)
  loc_19CC6C9:             var_C4.Visible = var_A0
  loc_19CC6D5:             var_E4 = False
  loc_19CC6E3:             Set var_A0 = var_C4(2)
  loc_19CC6E9:             Call 0.Method_Proc_203_53_19CEDBC0 (var_E4)
  loc_19CC6F1:             var_C4.Visible = var_E4
  loc_19CC708:             Set var_A0 = var_C4(2)
  loc_19CC70E:             Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CC716:             var_C4.Visible = 
  loc_19CC725:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CC769:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CC76F:             LateIdCallSt
  loc_19CC78A:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CC7CE:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CC7D4:             LateIdCallSt
  loc_19CC7EF:             var_F4 = CVar(CLng(4)) 'Long
  loc_19CC833:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CC839:             LateIdCallSt
  loc_19CC860:             Me.Filter = 0
  loc_19CC868:             var_F4 = CVar(CLng(4)) 'Long
  loc_19CC8AC:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CC8B2:             LateIdCallSt
  loc_19CC8CA:           End If
  loc_19CC8D4:           var_F4(var_138).InsertRows var_138, var_F4
  loc_19CC8E6:           Set var_C4 = var_F4(CVar(CLng(var_138)))
  loc_19CC8EC:           var_C4.DeleteRowLabels var_138, var_F4
  loc_19CC8FE:           Set var_138 = (CVar(CLng()))
  loc_19CC93B:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(SELECTED)") Then
  loc_19CC94A:             (0).Visible = 
  loc_19CC960:             Call Proc_203_58_11E8208(2)
  loc_19CC976:             Set var_A0 = var_C4(1)
  loc_19CC97C:             Call 0.Method_Proc_203_53_19CEDBC0 (False)
  loc_19CC984:             var_C4.Visible = "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName"
  loc_19CC99B:             Set var_A0 = var_C4(1)
  loc_19CC9A1:             Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CC9A9:             var_C4.Visible = 
  loc_19CC9C2:             Set var_A0 = var_C4(2)
  loc_19CC9C8:             Call 0.Method_Proc_203_53_19CEDBC0 (True)
  loc_19CC9D0:             var_C4.Visible = 
  loc_19CC9E7:             Set var_A0 = var_C4(2)
  loc_19CC9ED:             Call 0.Method_Proc_203_53_19CEDBC0 (&HFF)
  loc_19CC9F5:             var_C4.Visible = 
  loc_19CCA0A:             Set var_A0 = var_C4(1)
  loc_19CCA10:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CCA2F:             Set var_138 = var_13C(2)
  loc_19CCA35:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Height)))
  loc_19CCA3D:             var_13C.Height = 
  loc_19CCA59:             Set var_A0 = var_C4(1)
  loc_19CCA5F:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CCA7E:             Set var_138 = var_13C(2)
  loc_19CCA84:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Left)))
  loc_19CCA8C:             var_13C.Left = 
  loc_19CCAA8:             Set var_A0 = var_C4(1)
  loc_19CCAAE:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CCACD:             Set var_138 = var_13C(2)
  loc_19CCAD3:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Width)))
  loc_19CCADB:             var_13C.Width = 
  loc_19CCAF7:             Set var_A0 = var_C4(1)
  loc_19CCAFD:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CCB1C:             Set var_138 = var_13C(2)
  loc_19CCB22:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Top)))
  loc_19CCB2A:             var_13C.Top = 
  loc_19CCB49:             Set var_A0 = var_C4(1)
  loc_19CCB4F:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCB57:              = var_C4.Height
  loc_19CCB68:             Set var_138 = var_13C(2)
  loc_19CCB6E:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCB76:             var_13C.Height = 
  loc_19CCB92:             Set var_A0 = var_C4(1)
  loc_19CCB98:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCBA0:              = var_C4.Left
  loc_19CCBB1:             Set var_138 = var_13C(2)
  loc_19CCBB7:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCBBF:             var_13C.Left = 
  loc_19CCBDB:             Set var_A0 = var_C4(1)
  loc_19CCBE1:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCBE9:              = var_C4.Width
  loc_19CCBFA:             Set var_138 = var_13C(2)
  loc_19CCC00:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCC08:             var_13C.Width = 
  loc_19CCC24:             Set var_A0 = var_C4(1)
  loc_19CCC2A:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCC32:              = var_C4.Top
  loc_19CCC43:             Set var_138 = var_13C(2)
  loc_19CCC49:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CCC51:             var_13C.Top = 
  loc_19CCC76:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CCC7C:             LateIdCallSt
  loc_19CCC9C:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CCCA2:             LateIdCallSt
  loc_19CCCC2:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CCCC8:             LateIdCallSt
  loc_19CCCF0:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CCCF8:           End If
  loc_19CCD0D:           Set var_A0 = CVar(CLng(2))(1)
  loc_19CCD40:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_19CCD4F:             var_A0(0).Visible = var_A0(0)
  loc_19CCD5A:             var_E4 = CVar(CLng(3)) 'Long
  loc_19CCD72:             Set var_A0 = 0("For Group           ")
  loc_19CCD78:             LateIdCallSt
  loc_19CCD98:             Set var_A0 = CVar(CLng(3))(&H10E)
  loc_19CCD9E:             LateIdCallSt
  loc_19CCDAC:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CCDC4:             Set var_A0 = 0("From Account        ")
  loc_19CCDCA:             LateIdCallSt
  loc_19CCDEA:             Set var_A0 = CVar(CLng(4))(&H10E)
  loc_19CCDF0:             LateIdCallSt
  loc_19CCDFE:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CCE16:             Set var_A0 = 0("To Account          ")
  loc_19CCE1C:             LateIdCallSt
  loc_19CCE3C:             Set var_A0 = CVar(CLng(5))(&H10E)
  loc_19CCE42:             LateIdCallSt
  loc_19CCE50:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CCE94:             Set var_138 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_19CCE9A:             LateIdCallSt
  loc_19CCEB5:             var_F4 = CVar(CLng(3)) 'Long
  loc_19CCEF9:             Set var_138 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CCEFF:             LateIdCallSt
  loc_19CCF26:             Me.Filter = 0
  loc_19CCF2B:             var_F4 = " GroupCode='"
  loc_19CCF4D:             var_C4 = Me.Fields.Item("Code")
  loc_19CCF71:             Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19CCF89:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CCFA1:             Set var_A0 = 1(vbNullString)
  loc_19CCFA7:             LateIdCallSt
  loc_19CCFB5:             var_E4 = CVar(CLng(4)) 'Long
  loc_19CCFCD:             Set var_A0 = 2(vbNullString)
  loc_19CCFD3:             LateIdCallSt
  loc_19CCFE1:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CCFF9:             Set var_A0 = 1(vbNullString)
  loc_19CCFFF:             LateIdCallSt
  loc_19CD00D:             var_E4 = CVar(CLng(5)) 'Long
  loc_19CD025:             Set var_A0 = 2(vbNullString)
  loc_19CD02B:             LateIdCallSt
  loc_19CD053:             CInt(5)(CVar(CDbl(1860))).Height = CInt(5)(CVar(CDbl(1860)))
  loc_19CD05B:             var_E4 = False
  loc_19CD069:             Set var_A0 = var_C4(1)
  loc_19CD06F:             Call 0.Method_Proc_203_53_19CEDBC0 (var_E4, var_E4, var_A0, var_E4, var_A0, var_E4)
  loc_19CD077:             var_C4.Visible = var_A0
  loc_19CD08E:             Set var_A0 = var_C4(1)
  loc_19CD094:             Call 0.Method_Proc_203_53_19CEDBC0 (0, var_E4, var_138)
  loc_19CD09C:             var_C4.Visible = var_F4
  loc_19CD0B6:             Set var_A0 = var_C4(2)
  loc_19CD0BC:             Call 0.Method_Proc_203_53_19CEDBC0 (False, var_138)
  loc_19CD0C4:             var_C4.Visible = var_F4
  loc_19CD0DB:             Set var_A0 = var_C4(2)
  loc_19CD0E1:             Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CD0E9:             var_C4.Visible = 
  loc_19CD0F5:           End If
  loc_19CD0FF:           ().InsertRows , 
  loc_19CD111:           Set var_C4 = (CVar(CLng()))
  loc_19CD117:           var_C4.DeleteRowLabels , 
  loc_19CD129:           Set var_138 = (CVar(CLng()))
  loc_19CD166:           If (Ucase(CVar(CStr(DGSite.DispID_41))) = "CITY WISE") Then
  loc_19CD175:             (0).Visible = 
  loc_19CD180:             var_9C = "SELECT '' as O,CityName,CityCode as Code from City Order by CityName"
  loc_19CD18B:             Call Proc_203_58_11E8208(2)
  loc_19CD1A0:             Set var_A0 = var_C4(2)
  loc_19CD1A6:             Call 0.Method_Proc_203_53_19CEDBC0 (True)
  loc_19CD1AE:             var_C4.Visible = var_9C
  loc_19CD1C5:             Set var_A0 = var_C4(2)
  loc_19CD1CB:             Call 0.Method_Proc_203_53_19CEDBC0 (&HFF)
  loc_19CD1D3:             var_C4.Visible = 
  loc_19CD1ED:             Set var_A0 = var_C4(1)
  loc_19CD1F3:             Call 0.Method_Proc_203_53_19CEDBC0 (False)
  loc_19CD1FB:             var_C4.Visible = 
  loc_19CD212:             Set var_A0 = var_C4(1)
  loc_19CD218:             Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CD220:             var_C4.Visible = 
  loc_19CD235:             Set var_A0 = var_C4(1)
  loc_19CD23B:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CD25A:             Set var_138 = var_13C(2)
  loc_19CD260:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Height)))
  loc_19CD268:             var_13C.Height = 
  loc_19CD284:             Set var_A0 = var_C4(1)
  loc_19CD28A:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CD2A9:             Set var_138 = var_13C(2)
  loc_19CD2AF:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Left)))
  loc_19CD2B7:             var_13C.Left = 
  loc_19CD2D3:             Set var_A0 = var_C4(1)
  loc_19CD2D9:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CD2F8:             Set var_138 = var_13C(2)
  loc_19CD2FE:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Width)))
  loc_19CD306:             var_13C.Width = 
  loc_19CD322:             Set var_A0 = var_C4(1)
  loc_19CD328:             Call 0.Method_Proc_203_53_19CEDBC0 ()
  loc_19CD347:             Set var_138 = var_13C(2)
  loc_19CD34D:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CDbl(var_C4.Top)))
  loc_19CD355:             var_13C.Top = 
  loc_19CD374:             Set var_A0 = var_C4(1)
  loc_19CD37A:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD382:              = var_C4.Height
  loc_19CD393:             Set var_138 = var_13C(2)
  loc_19CD399:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD3A1:             var_13C.Height = 
  loc_19CD3BD:             Set var_A0 = var_C4(1)
  loc_19CD3C3:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD3CB:              = var_C4.Left
  loc_19CD3DC:             Set var_138 = var_13C(2)
  loc_19CD3E2:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD3EA:             var_13C.Left = 
  loc_19CD406:             Set var_A0 = var_C4(1)
  loc_19CD40C:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD414:              = var_C4.Width
  loc_19CD425:             Set var_138 = var_13C(2)
  loc_19CD42B:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD433:             var_13C.Width = 
  loc_19CD44F:             Set var_A0 = var_C4(1)
  loc_19CD455:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD45D:              = var_C4.Top
  loc_19CD46E:             Set var_138 = var_13C(2)
  loc_19CD474:             Call 0.Method_Proc_203_53_19CEDBC0 (var_BC)
  loc_19CD47C:             var_13C.Top = 
  loc_19CD4A1:             Set var_A0 = CVar(CLng(3))(0)
  loc_19CD4A7:             LateIdCallSt
  loc_19CD4C7:             Set var_A0 = CVar(CLng(4))(0)
  loc_19CD4CD:             LateIdCallSt
  loc_19CD4ED:             Set var_A0 = CVar(CLng(5))(0)
  loc_19CD4F3:             LateIdCallSt
  loc_19CD51B:             CInt(2)(CVar(CDbl(930))).Height = CInt(2)(CVar(CDbl(930)))
  loc_19CD523:           End If
  loc_19CD523:         End If
  loc_19CD526:       Else
  loc_19CD52E:         If Not (var_164 = "JournalBook") Then
  loc_19CD539:           If Not (var_164 = "Annexure") Then
  loc_19CD544:             If (var_164 = "JournalBookLog") Then
  loc_19CD547:             End If
  loc_19CD547:           End If
  loc_19CD550:           var_BC = Me.RecordCount
  loc_19CD595:           Set var_A0 = var_C4(arg_C)
  loc_19CD59B:           Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((var_BC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CD5BB:           If (var_C4.Text Or (var_9C = vbNullString)) Then
  loc_19CD5C8:             ().InsertRows , 
  loc_19CD5E0:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CD5FE:             LateIdCallSt
  loc_19CD620:             (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD629:             var_E4 = CVar(CLng()) 'Long
  loc_19CD641:             Set var_C4 = 2(vbNullString)
  loc_19CD647:             LateIdCallSt
  loc_19CD65C:           Else
  loc_19CD666:             var_E4(var_C4).InsertRows , 
  loc_19CD67E:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CD6C8:             LateIdCallSt
  loc_19CD6F2:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CD6FB:             var_F4 = CVar(CLng()) 'Long
  loc_19CD73F:             Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CD745:             LateIdCallSt
  loc_19CD761:           End If
  loc_19CD772:           If (GRepFormName = "Annexure") Then
  loc_19CD78D:             Set var_A0 = CVar(CLng(2))(2)
  loc_19CD79E:             var_9C = CStr(DGSite.DispID_41)
  loc_19CD7C0:             Call Proc_203_58_11E8208(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & var_9C & "' " & var_90 & " Order by Name")
  loc_19CD7E2:             var_B0 = var_F4(var_13C).Height
  loc_19CD7F2:             Set var_C4 = var_B0(var_1A0)
  loc_19CD7F8:              = var_C4.Height
  loc_19CD803:             Call 0.Method_Me8 (var_BC)
  loc_19CD81A:             var_E4 = CVar((((var_BC - CDbl(var_B0)) - var_1A0) - CDbl(1200))) 'Single
  loc_19CD828:             Set var_138 = var_13C(1)
  loc_19CD82E:             Call 0.Method_Proc_203_53_19CEDBC0 (CVar(CLng(2)))
  loc_19CD836:             var_13C.Height = 
  loc_19CD849:           End If
  loc_19CD84C:         Else
  loc_19CD854:           If Not (var_164 = "DailySumm") Then
  loc_19CD85F:             If Not (var_164 = "AgingDr") Then
  loc_19CD86A:               If Not (var_164 = "AgingCr") Then
  loc_19CD875:                 If Not (var_164 = "Clg") Then
  loc_19CD880:                   If Not (var_164 = "ClgNot") Then
  loc_19CD88B:                     If Not (var_164 = "AgingRepDr") Then
  loc_19CD896:                       If (var_164 = "AgingRepCr") Then
  loc_19CD899:                       End If
  loc_19CD899:                     End If
  loc_19CD899:                   End If
  loc_19CD899:                 End If
  loc_19CD899:               End If
  loc_19CD899:             End If
  loc_19CD8E7:             Set var_A0 = var_C4(arg_C)
  loc_19CD8ED:             Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CD8F5:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_19CD90D:             If ( Or (var_9C = vbNullString)) Then
  loc_19CD91A:               ().InsertRows , 
  loc_19CD932:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CD950:               LateIdCallSt
  loc_19CD972:               (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CD97B:               var_E4 = CVar(CLng()) 'Long
  loc_19CD993:               Set var_C4 = 2(vbNullString)
  loc_19CD999:               LateIdCallSt
  loc_19CD9AE:             Else
  loc_19CD9B8:               var_E4(var_C4).InsertRows , 
  loc_19CD9D0:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CDA1A:               LateIdCallSt
  loc_19CDA44:               (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CDA4D:               var_F4 = CVar(CLng()) 'Long
  loc_19CDA78:               var_C4 = Me.Fields.Item("Code")
  loc_19CDA91:               Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CDA97:               LateIdCallSt
  loc_19CDAB3:             End If
  loc_19CDAB3:           End If
  loc_19CDAB3:         End If
  loc_19CDAB3:       End If
  loc_19CDAB3:     End If
  loc_19CDAB6:   Else
  loc_19CDABD:     If (var_B4 = CLng(3)) Then
  loc_19CDAC6:       var_1A4 = GRepFormName
  loc_19CDAD1:       If (var_1A4 = "DUELIST") Then
  loc_19CDAE0:         Set var_A0 = var_C4(0)
  loc_19CDAE6:         Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, var_13C)
  loc_19CDAEE:         var_F4 = var_C4.Text
  loc_19CDB05:         If (var_9C <> vbNullString) Then
  loc_19CDB12:           ().InsertRows , 
  loc_19CDB2A:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CDB33:           var_104 = CVar(CLng()) 'Long
  loc_19CDB44:           Set var_A0 = var_C4(0)
  loc_19CDB4A:           Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CDB52:           var_104 = var_C4.Text
  loc_19CDB62:           Set var_160 = (CVar(var_9C))
  loc_19CDB68:           LateIdCallSt
  loc_19CDB86:         End If
  loc_19CDB89:       Else
  loc_19CDB91:         If Not (var_1A4 = "Annexure") Then
  loc_19CDB9C:           If Not (var_1A4 = "RefReport") Then
  loc_19CDBA7:             If Not (var_1A4 = "JournalBook") Then
  loc_19CDBB2:               If Not (var_1A4 = "DetailedTrial") Then
  loc_19CDBBD:                 If (var_1A4 = "JournalBookLog") Then
  loc_19CDBC0:                 End If
  loc_19CDBC0:               End If
  loc_19CDBC0:             End If
  loc_19CDBC0:           End If
  loc_19CDBCC:           Set var_A0 = var_C4(0)
  loc_19CDBD2:           Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CDBDA:           var_160 = var_C4.Text
  loc_19CDBF1:           If (var_9C <> vbNullString) Then
  loc_19CDBFE:             ().InsertRows , 
  loc_19CDC16:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CDC31:             CVar(CLng())(var_9C).RandomDataFill
  loc_19CDC3C:             Set var_C4 = 
  loc_19CDC42:              = var_C4.Text
  loc_19CDC52:             Set var_160 = (CVar(var_9C))
  loc_19CDC58:             LateIdCallSt
  loc_19CDC78:           End If
  loc_19CDC78:         End If
  loc_19CDC78:       End If
  loc_19CDC7E:       var_1A8 = GRepFormName
  loc_19CDC89:       If (var_1A8 = "DayBook") Then
  loc_19CDCDA:         Set var_A0 = var_C4(arg_C)
  loc_19CDCE0:         Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CDCE8:         var_160 = var_C4.Text
  loc_19CDD00:         If ( Or (var_9C = vbNullString)) Then
  loc_19CDD0D:           ().InsertRows , 
  loc_19CDD25:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CDD43:           LateIdCallSt
  loc_19CDD65:           (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CDD6E:           var_E4 = CVar(CLng()) 'Long
  loc_19CDD86:           Set var_C4 = 2(vbNullString)
  loc_19CDD8C:           LateIdCallSt
  loc_19CDDA1:         Else
  loc_19CDDAB:           var_E4(var_C4).InsertRows , 
  loc_19CDDC3:           (CVar(CLng())).DeleteRowLabels , 
  loc_19CDE0D:           LateIdCallSt
  loc_19CDE37:           (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CDE40:           var_F4 = CVar(CLng()) 'Long
  loc_19CDE6B:           var_C4 = Me.Fields.Item("Code")
  loc_19CDE84:           Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CDE8A:           LateIdCallSt
  loc_19CDEA6:         End If
  loc_19CDEA9:       Else
  loc_19CDEB1:         If Not (var_1A8 = "CashBook") Then
  loc_19CDEBC:           If Not (var_1A8 = "BankBook") Then
  loc_19CDEC7:             If (var_1A8 = "RozNamcha") Then
  loc_19CDECA:             End If
  loc_19CDECA:           End If
  loc_19CDED6:           Set var_A0 = var_C4(0)
  loc_19CDEDC:           Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, var_13C)
  loc_19CDEE4:           var_F4 = var_C4.Text
  loc_19CDEFB:           If (var_9C <> vbNullString) Then
  loc_19CDF08:             ().InsertRows , 
  loc_19CDF20:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CDF29:             var_104 = CVar(CLng()) 'Long
  loc_19CDF3A:             Set var_A0 = var_C4(0)
  loc_19CDF40:             Call 0.Method_Proc_203_53_19CEDBC0 (var_9C)
  loc_19CDF48:             var_104 = var_C4.Text
  loc_19CDF53:             Proc_183_6_EA3004(CVar(var_9C))
  loc_19CDF62:             Set var_160 = (CVar(CStr()))
  loc_19CDF68:             LateIdCallSt
  loc_19CDF88:           End If
  loc_19CDF8B:         Else
  loc_19CDF93:           If Not (var_1A8 = "Led") Then
  loc_19CDF9E:             If Not (var_1A8 = "LedInt") Then
  loc_19CDFA9:               If Not (var_1A8 = "LedDeb") Then
  loc_19CDFB4:                 If Not (var_1A8 = "MemLed") Then
  loc_19CDFBF:                   If Not (var_1A8 = "LedCred") Then
  loc_19CDFCA:                     If (var_1A8 = "AcCheckList") Then
  loc_19CDFCD:                     End If
  loc_19CDFCD:                   End If
  loc_19CDFCD:                 End If
  loc_19CDFCD:               End If
  loc_19CDFCD:             End If
  loc_19CDFE2:             Set var_A0 = CVar(CLng(2))(1)
  loc_19CE015:             If (Ucase(CVar(CStr(DGSite.DispID_41))) = "GROUP(RANGE)") Then
  loc_19CE066:               Set var_A0 = var_C4(arg_C)
  loc_19CE06C:               Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CE074:               var_160 = var_C4.Text
  loc_19CE08C:               If ( Or (var_9C = vbNullString)) Then
  loc_19CE099:                 ().InsertRows , 
  loc_19CE0B1:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CE0CF:                 LateIdCallSt
  loc_19CE0F1:                 (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CE0FA:                 var_E4 = CVar(CLng()) 'Long
  loc_19CE112:                 Set var_C4 = 2(vbNullString)
  loc_19CE118:                 LateIdCallSt
  loc_19CE12D:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CE145:                 Set var_A0 = 1(vbNullString)
  loc_19CE14B:                 LateIdCallSt
  loc_19CE159:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CE171:                 Set var_A0 = 2(vbNullString)
  loc_19CE177:                 LateIdCallSt
  loc_19CE185:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CE19D:                 Set var_A0 = 1(vbNullString)
  loc_19CE1A3:                 LateIdCallSt
  loc_19CE1B1:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CE1C9:                 Set var_A0 = 2(vbNullString)
  loc_19CE1CF:                 LateIdCallSt
  loc_19CE1DD:               Else
  loc_19CE1E7:                 var_E4(var_A0).InsertRows var_A0, var_E4
  loc_19CE1FF:                 var_E4(CVar(CLng(var_A0))).DeleteRowLabels var_A0, var_E4
  loc_19CE213:                 var_E4 = "Name"
  loc_19CE249:                 LateIdCallSt
  loc_19CE273:                 var_E4(CVar(CLng(Me.Fields.Item(var_E4)))(CVar(CStr(Me.Fields.Item(var_E4).Value)))).InsertRows , 
  loc_19CE27C:                 var_F4 = CVar(CLng()) 'Long
  loc_19CE2C0:                 Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CE2C6:                 LateIdCallSt
  loc_19CE2E5:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CE2FD:                 Set var_A0 = 1(vbNullString)
  loc_19CE303:                 LateIdCallSt
  loc_19CE311:                 var_E4 = CVar(CLng(4)) 'Long
  loc_19CE329:                 Set var_A0 = 2(vbNullString)
  loc_19CE32F:                 LateIdCallSt
  loc_19CE33D:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CE355:                 Set var_A0 = 1(vbNullString)
  loc_19CE35B:                 LateIdCallSt
  loc_19CE369:                 var_E4 = CVar(CLng(5)) 'Long
  loc_19CE381:                 Set var_A0 = 2(vbNullString)
  loc_19CE387:                 LateIdCallSt
  loc_19CE3A1:                 Me.Filter = 0
  loc_19CE3A6:                 var_F4 = " GroupCode='"
  loc_19CE3B1:                 var_E4 = "Code"
  loc_19CE3C8:                 var_C4 = Me.Fields.Item(var_E4)
  loc_19CE3EC:                 Me.Filter = var_F4 & var_C4.Value & "'"
  loc_19CE401:               End If
  loc_19CE404:             Else
  loc_19CE458:               Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_C4(arg_C), var_E4, var_C4(arg_C), var_E4)
  loc_19CE460:               var_A0 = var_C4.Text
  loc_19CE478:               If (var_E4 Or (var_9C = vbNullString)) Then
  loc_19CE485:                 var_E4(var_A0).InsertRows var_13C, var_F4
  loc_19CE49D:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CE4BB:                 LateIdCallSt
  loc_19CE4DD:                 (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CE4E6:                 var_E4 = CVar(CLng()) 'Long
  loc_19CE4FE:                 Set var_C4 = 2(vbNullString)
  loc_19CE504:                 LateIdCallSt
  loc_19CE519:               Else
  loc_19CE523:                 var_E4(var_C4).InsertRows , 
  loc_19CE53B:                 (CVar(CLng())).DeleteRowLabels , 
  loc_19CE585:                 LateIdCallSt
  loc_19CE5AF:                 (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CE5B8:                 var_F4 = CVar(CLng()) 'Long
  loc_19CE5E3:                 var_C4 = Me.Fields.Item("Code")
  loc_19CE5FC:                 Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CE602:                 LateIdCallSt
  loc_19CE61E:               End If
  loc_19CE61E:             End If
  loc_19CE61E:           End If
  loc_19CE61E:         End If
  loc_19CE61E:       End If
  loc_19CE621:     Else
  loc_19CE628:       If (var_B4 = CLng(4)) Then
  loc_19CE631:         var_1AC = GRepFormName
  loc_19CE63C:         If Not (var_1AC = "CashBook") Then
  loc_19CE647:           If Not (var_1AC = "BankBook") Then
  loc_19CE652:             If Not (var_1AC = "Led") Then
  loc_19CE65D:               If Not (var_1AC = "LedInt") Then
  loc_19CE668:                 If Not (var_1AC = "LedDeb") Then
  loc_19CE673:                   If Not (var_1AC = "MemLed") Then
  loc_19CE67E:                     If Not (var_1AC = "LedCred") Then
  loc_19CE689:                       If Not (var_1AC = "AcCheckList") Then
  loc_19CE694:                         If (var_1AC = "RozNamcha") Then
  loc_19CE697:                         End If
  loc_19CE697:                       End If
  loc_19CE697:                     End If
  loc_19CE697:                   End If
  loc_19CE697:                 End If
  loc_19CE697:               End If
  loc_19CE697:             End If
  loc_19CE697:           End If
  loc_19CE6E5:           Set var_A0 = var_C4(arg_C)
  loc_19CE6EB:           Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CE6F3:           var_13C = var_C4.Text
  loc_19CE70B:           If (var_F4 Or (var_9C = vbNullString)) Then
  loc_19CE718:             ().InsertRows , 
  loc_19CE730:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CE74E:             LateIdCallSt
  loc_19CE770:             (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CE779:             var_E4 = CVar(CLng()) 'Long
  loc_19CE791:             Set var_C4 = 2(vbNullString)
  loc_19CE797:             LateIdCallSt
  loc_19CE7AC:           Else
  loc_19CE7B6:             var_E4(var_C4).InsertRows , 
  loc_19CE7CE:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CE818:             LateIdCallSt
  loc_19CE842:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CE84B:             var_F4 = CVar(CLng()) 'Long
  loc_19CE876:             var_C4 = Me.Fields.Item("Code")
  loc_19CE88F:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CE895:             LateIdCallSt
  loc_19CE8B1:           End If
  loc_19CE8B4:         Else
  loc_19CE8BC:           If Not (var_1AC = "JournalBook") Then
  loc_19CE8C7:             If (var_1AC = "JournalBookLog") Then
  loc_19CE8CA:             End If
  loc_19CE918:             Set var_A0 = var_C4(arg_C)
  loc_19CE91E:             Call 0.Method_Proc_203_53_19CEDBC0 (var_9C, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19CE926:             var_13C = var_C4.Text
  loc_19CE93E:             If (var_F4 Or (var_9C = vbNullString)) Then
  loc_19CE94B:               ().InsertRows , 
  loc_19CE963:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CE981:               LateIdCallSt
  loc_19CE9A3:               (CVar(CLng())(vbNullString)).InsertRows , 
  loc_19CE9AC:               var_E4 = CVar(CLng()) 'Long
  loc_19CE9C4:               Set var_C4 = 2(vbNullString)
  loc_19CE9CA:               LateIdCallSt
  loc_19CE9DF:             Else
  loc_19CE9E9:               var_E4(var_C4).InsertRows , 
  loc_19CEA01:               (CVar(CLng())).DeleteRowLabels , 
  loc_19CEA4B:               LateIdCallSt
  loc_19CEA75:               (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CEA7E:               var_F4 = CVar(CLng()) 'Long
  loc_19CEAC2:               Set var_13C = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_19CEAC8:               LateIdCallSt
  loc_19CEAE4:             End If
  loc_19CEAE4:           End If
  loc_19CEAE4:         End If
  loc_19CEAE7:       Else
  loc_19CEAEE:         If (var_B4 = CLng(0)) Then
  loc_19CEAF7:           var_1B0 = GRepFormName
  loc_19CEB02:           If Not (var_1B0 = "BudgetVariance") Then
  loc_19CEB0D:             If (var_1B0 = "Budget") Then
  loc_19CEB10:             End If
  loc_19CEB1A:             var_F4(var_13C).InsertRows , 
  loc_19CEB32:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CEB7C:             LateIdCallSt
  loc_19CEBA6:             (CVar(CLng())(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_19CEBAF:             var_F4 = CVar(CLng()) 'Long
  loc_19CEBDA:             var_C4 = Me.Fields.Item("Code")
  loc_19CEBF3:             Set var_13C = 2(CVar(CStr(var_C4.Value)))
  loc_19CEBF9:             LateIdCallSt
  loc_19CEC18:           Else
  loc_19CEC21:             Set var_A0 = var_C4(0)
  loc_19CEC27:             Call 0.Method_Proc_203_53_19CEDBC0 (var_13C)
  loc_19CEC36:             (var_F4).InsertRows , 
  loc_19CEC4E:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CEC71:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19CEC81:             Set var_1B4 = CVar(CLng())(CVar(var_9C))
  loc_19CEC87:             LateIdCallSt
  loc_19CECA5:           End If
  loc_19CECA8:         Else
  loc_19CECAF:           If (var_B4 = CLng(1)) Then
  loc_19CECBB:             Set var_A0 = var_C4(0)
  loc_19CECC1:             Call 0.Method_Proc_203_53_19CEDBC0 (var_1B4)
  loc_19CECD0:             ().InsertRows , 
  loc_19CECE8:             (CVar(CLng())).DeleteRowLabels , 
  loc_19CED0B:             Call 0.Method_arg_184 (var_C4, var_9C)
  loc_19CED1B:             Set var_1B4 = CVar(CLng())(CVar(var_9C))
  loc_19CED21:             LateIdCallSt
  loc_19CED3F:           End If
  loc_19CED3F:         End If
  loc_19CED3F:       End If
  loc_19CED3F:     End If
  loc_19CED3F:   End If
  loc_19CED3F: End If
  loc_19CED4A: If (arg_10 = 0) Then
  loc_19CED51:   Set var_A0 = var_1B4(&HFF)
  loc_19CED6D:   Set var_A0 = var_C4(0)
  loc_19CED73:   Call 0.Method_Proc_203_53_19CEDBC0 (0)
  loc_19CED7B:   var_C4.Visible = DGSite.DispID_8001
  loc_19CED87: End If
  loc_19CED87: Proc_203_53_19CEDBC = 
  loc_19CED8D: ' Referenced from: 19CBC90
  loc_19CED93: Call 0.Method_arg_50 (var_9C)
  loc_19CEDA8: Proc_183_57_104AA84(var_9C)
  loc_19CEDB4: Proc_203_53_19CEDBC = "TxtGridLeave"
End Sub

Public Sub Proc_203_54_17A4CA4
  'Data Table: 583330
  Dim var_90 As Variant
  Dim var_98 As Variant
  Dim var_F4 As Variant
  Dim var_88 As Integer
  Dim var_B0 As Variant
  Dim var_9C As TextBox
  Dim var_B4 As TextBox
  loc_17A2D5C: On Error Goto loc_17A4C7C
  loc_17A2D6C:  = (var_94).Width
  loc_17A2D77: Call 0.Method_arg_78 (var_8C)
  loc_17A2D8C: Set var_98 = (((var_8C - var_94) - CDbl(&HA)))
  loc_17A2D92: var_98.Top = 
  loc_17A2DA7: Set var_98 = Me.BTNPRINT
  loc_17A2DAD: Call 0.Method_Proc_203_54_17A4CA40 (1)
  loc_17A2DB5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_9C)
  loc_17A2DC7: Set var_B0 = Me.BTNPRINT
  loc_17A2DCD: Call 0.Method_Proc_203_54_17A4CA40 (0)
  loc_17A2DD5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B4)
  loc_17A2DED: Call 0.Method_Proc_203_54_17A4CA40 (0)
  loc_17A2DF5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_CC)
  loc_17A2E0B:  = (var_8C).Width
  loc_17A2E29: var_F4 = CVar(((var_8C - ((CDbl(var_AC) + CDbl(var_C4)) + CDbl(var_DC))) / CDbl(2))) 'Single
  loc_17A2E37: Set var_E0 = Me.BTNPRINT
  loc_17A2E3D: Call 0.Method_Proc_203_54_17A4CA40 (1, var_E4)
  loc_17A2E45: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_F4)
  loc_17A2E75:  = (var_8C).Top
  loc_17A2E81: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A2E95: Call 0.Method_Proc_203_54_17A4CA40 (1, var_9C)
  loc_17A2E9D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_F4)
  loc_17A2EBA: Call 0.Method_Proc_203_54_17A4CA40 (1)
  loc_17A2EC2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B0)
  loc_17A2ED4: Set var_90 = Me.BTNPRINT
  loc_17A2EDA: Call 0.Method_Proc_203_54_17A4CA40 (1)
  loc_17A2EE2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.BTNPRINT)
  loc_17A2EF1: var_F4 = CVar((CDbl() + CDbl(var_C4))) 'Single
  loc_17A2EFF: Set var_B4 = Me.BTNPRINT
  loc_17A2F05: Call 0.Method_Proc_203_54_17A4CA40 (0, Me.BTNPRINT)
  loc_17A2F0D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003(var_F4)
  loc_17A2F35:  = (var_8C).Top
  loc_17A2F41: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A2F55: Call 0.Method_Proc_203_54_17A4CA40 (0, Me.BTNPRINT)
  loc_17A2F5D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(var_F4)
  loc_17A2F74: Set var_9C = Me.BTNPRINT
  loc_17A2F7A: Call 0.Method_Proc_203_54_17A4CA40 (0)
  loc_17A2F82: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_B0)
  loc_17A2F94: Set var_90 = Me.BTNPRINT
  loc_17A2F9A: Call 0.Method_Proc_203_54_17A4CA40 (0)
  loc_17A2FA2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010003(Me.BTNPRINT)
  loc_17A2FB1: var_F4 = CVar((CDbl() + CDbl(var_C4))) 'Single
  loc_17A2FBA: Set var_B4 = Me.BTNEXIT
  loc_17A2FC0: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003(var_F4)
  loc_17A2FE6:  = (var_8C).Top
  loc_17A2FF2: var_F4 = CVar((var_8C + CDbl(&HA))) 'Single
  loc_17A2FFB: Set var_98 = Me.BTNEXIT
  loc_17A3001: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004(var_F4)
  loc_17A3019: Set var_90 = var_98(0)
  loc_17A301F: Call 0.Method_Proc_203_54_17A4CA40 (vbNullString)
  loc_17A3027: var_98.Text = 
  loc_17A3037: Set var_90 = ()
  loc_17A303D: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A304C: Call 0.Method_Me0 (var_8C)
  loc_17A305E: var_F4 = CVar(((var_8C - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A3067: Set var_98 = (var_F4)
  loc_17A306D: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A3088: Set var_90 = (CVar(CDbl(&H4B)))
  loc_17A308E: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A30A3: Set var_90 = (&HA)
  loc_17A30A9: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_17A30BE: Set var_90 = (3)
  loc_17A30C4: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_5()
  loc_17A30D9: Set var_90 = (1)
  loc_17A30DF: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_7()
  loc_17A30FD: Set var_90 = 0(&H898)
  loc_17A3103: LateIdCallSt
  loc_17A3124: Set var_90 = 1(&H7D0)
  loc_17A312A: LateIdCallSt
  loc_17A314B: Set var_90 = 2(0)
  loc_17A3151: LateIdCallSt
  loc_17A3173: Set var_90 = 1(CVar(CInt(1)))
  loc_17A3179: LateIdCallSt
  loc_17A3193: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4(0(var_86))
  loc_17A31A9: For var_128 = var_90 To CInt((CLng(var_90) - 1)): var_90 = var_128 'Integer
  loc_17A31C5:   Set var_90 = CVar(CLng(var_86))(0)
  loc_17A31CB:   LateIdCallSt
  loc_17A31D9: Next var_128 'Integer
  loc_17A31DE: Call Proc_203_61_1960E0C()
  loc_17A31EA: For var_12C = 1 To 2: var_86 = var_12C 'Integer
  loc_17A31FA:   Set var_90 = var_98(var_86)
  loc_17A3200:   Call 0.Method_Proc_203_54_17A4CA40 (1)
  loc_17A3208:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_17A321E:   If (CBool() = &HFF) Then
  loc_17A3227:     var_88 = (var_88 + 1)
  loc_17A322A:   End If
  loc_17A322D: Next var_12C 'Integer
  loc_17A324D: var_F4 = CVar(CDbl(((((global_140 - global_142) + 1) * CInt(220)) + 500))) 'Single
  loc_17A3256: Set var_90 = (CVar(CLng(var_86)))
  loc_17A325C: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A326A: var_13C = global_144 'Variant
  loc_17A3279: If (var_13C = 0) Then
  loc_17A3289:   Set var_90 = (CVar(CDbl(1000)))
  loc_17A328F:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A329A: Else
  loc_17A32A5:   If (var_13C = 1) Then
  loc_17A32AE:     var_140 = GRepFormName
  loc_17A32B9:     If Not (var_140 = "Led") Then
  loc_17A32C4:       If Not (var_140 = "LedInt") Then
  loc_17A32CF:         If Not (var_140 = "LedDeb") Then
  loc_17A32DA:           If Not (var_140 = "MemLed") Then
  loc_17A32E5:             If Not (var_140 = "LedCred") Then
  loc_17A32F0:               If (var_140 = "AcCheckList") Then
  loc_17A32F3:               End If
  loc_17A32F3:             End If
  loc_17A32F3:           End If
  loc_17A32F3:         End If
  loc_17A32F3:       End If
  loc_17A32FE:       Set var_90 = var_98(0)
  loc_17A3304:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A330C:       var_98.Visible = 
  loc_17A3323:       Set var_90 = var_98(1)
  loc_17A3329:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3331:       var_98.Visible = 
  loc_17A3348:       Set var_90 = var_98(3)
  loc_17A334E:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3356:       var_98.Visible = 
  loc_17A336D:       Set var_90 = var_98(4)
  loc_17A3373:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A337B:       var_98.Visible = 
  loc_17A3392:       Set var_90 = var_98(5)
  loc_17A3398:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A33A0:       var_98.Visible = 
  loc_17A33B9:       Set var_90 = var_98(CInt(0))
  loc_17A33BF:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A33C7:       var_98.Visible = 
  loc_17A33E0:       Set var_90 = var_98(CInt(1))
  loc_17A33E6:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A33EE:       var_98.Visible = 
  loc_17A3407:       Set var_90 = var_98(CInt(8))
  loc_17A340D:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3415:       var_98.Visible = 
  loc_17A342E:       Set var_90 = var_98(CInt(9))
  loc_17A3434:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A343C:       var_98.Visible = 
  loc_17A3455:       Set var_90 = var_98(CInt(6))
  loc_17A345B:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3463:       var_98.Visible = 
  loc_17A347C:       Set var_90 = var_98(CInt(7))
  loc_17A3482:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A348A:       var_98.Visible = 
  loc_17A34A3:       Set var_90 = var_98(CInt(&HB))
  loc_17A34A9:       Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A34B1:       var_98.Visible = 
  loc_17A34CA:       Set var_90 = var_98(0)
  loc_17A34D0:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A34D8:       var_98.Left = 
  loc_17A34F2:       Set var_90 = var_98(0)
  loc_17A34F8:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(150))
  loc_17A3500:       var_98.Top = 
  loc_17A3519:       Set var_90 = var_98(1)
  loc_17A351F:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A3527:       var_98.Left = 
  loc_17A3541:       Set var_90 = var_98(1)
  loc_17A3547:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(450))
  loc_17A354F:       var_98.Top = 
  loc_17A356B:       Set var_90 = var_98(CInt(0))
  loc_17A3571:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3579:       var_98.Left = 
  loc_17A3594:       Set var_90 = var_98(CInt(0))
  loc_17A359A:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H69))
  loc_17A35A2:       var_98.Top = 
  loc_17A35BC:       Set var_90 = var_98(CInt(8))
  loc_17A35C2:       Call 0.Method_Proc_203_54_17A4CA40 (var_8C)
  loc_17A35CA:        = var_98.Width
  loc_17A35E7:       Set var_9C = var_B0(CInt(8))
  loc_17A35ED:       Call 0.Method_Proc_203_54_17A4CA40 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A35F5:       var_B0.Left = 
  loc_17A3614:       Set var_90 = var_98(CInt(8))
  loc_17A361A:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H69))
  loc_17A3622:       var_98.Top = 
  loc_17A363E:       Set var_90 = var_98(CInt(1))
  loc_17A3644:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A364C:       var_98.Left = 
  loc_17A3668:       Set var_90 = var_98(CInt(1))
  loc_17A366E:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(405))
  loc_17A3676:       var_98.Top = 
  loc_17A3690:       Set var_90 = var_98(CInt(9))
  loc_17A3696:       Call 0.Method_Proc_203_54_17A4CA40 (var_8C)
  loc_17A369E:        = var_98.Width
  loc_17A36BB:       Set var_9C = var_B0(CInt(9))
  loc_17A36C1:       Call 0.Method_Proc_203_54_17A4CA40 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A36C9:       var_B0.Left = 
  loc_17A36E9:       Set var_90 = var_98(CInt(9))
  loc_17A36EF:       Call 0.Method_Proc_203_54_17A4CA40 (CDbl(405))
  loc_17A36F7:       var_98.Top = 
  loc_17A371A:       If ((GRepFormName = "LedDeb") Or (GRepFormName = "MemLed")) Then
  loc_17A3725:         Set var_90 = (True)
  loc_17A372B:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_17A3733:       End If
  loc_17A3739:       var_144 = GRepFormName
  loc_17A3744:       If Not (var_144 = "Led") Then
  loc_17A374F:         If Not (var_144 = "LedDeb") Then
  loc_17A375A:           If Not (var_144 = "MemLed") Then
  loc_17A3765:             If (var_144 = "LedCred") Then
  loc_17A3768:             End If
  loc_17A3768:           End If
  loc_17A3768:         End If
  loc_17A3775:         Set var_90 = var_98(3)
  loc_17A377B:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A3783:         var_98.Left = 
  loc_17A379D:         Set var_90 = var_98(3)
  loc_17A37A3:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(750))
  loc_17A37AB:         var_98.Top = 
  loc_17A37C4:         Set var_90 = var_98(4)
  loc_17A37CA:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A37D2:         var_98.Left = 
  loc_17A37EC:         Set var_90 = var_98(4)
  loc_17A37F2:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1050))
  loc_17A37FA:         var_98.Top = 
  loc_17A3816:         Set var_90 = var_98(CInt(6))
  loc_17A381C:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3824:         var_98.Left = 
  loc_17A3840:         Set var_90 = var_98(CInt(6))
  loc_17A3846:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(705))
  loc_17A384E:         var_98.Top = 
  loc_17A386A:         Set var_90 = var_98(CInt(7))
  loc_17A3870:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3878:         var_98.Left = 
  loc_17A3894:         Set var_90 = var_98(CInt(7))
  loc_17A389A:         Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1005))
  loc_17A38A2:         var_98.Top = 
  loc_17A38B1:       Else
  loc_17A38B9:         If (var_144 = "LedInt") Then
  loc_17A38C8:           (&HFF).Visible = 
  loc_17A38DD:           Set var_90 = var_98(CInt(5))
  loc_17A38E3:           Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A38EB:           var_98.Visible = 
  loc_17A3905:           (CDbl(&H78)).Left = 
  loc_17A391C:           (CDbl(750)).Top = 
  loc_17A3931:           Set var_90 = var_98(3)
  loc_17A3937:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A393F:           var_98.Left = 
  loc_17A3959:           Set var_90 = var_98(3)
  loc_17A395F:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1050))
  loc_17A3967:           var_98.Top = 
  loc_17A3980:           Set var_90 = var_98(4)
  loc_17A3986:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A398E:           var_98.Left = 
  loc_17A39A8:           Set var_90 = var_98(4)
  loc_17A39AE:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1350))
  loc_17A39B6:           var_98.Top = 
  loc_17A39D2:           Set var_90 = var_98(CInt(5))
  loc_17A39D8:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A39E0:           var_98.Left = 
  loc_17A39FC:           Set var_90 = var_98(CInt(5))
  loc_17A3A02:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(705))
  loc_17A3A0A:           var_98.Top = 
  loc_17A3A26:           Set var_90 = var_98(CInt(6))
  loc_17A3A2C:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3A34:           var_98.Left = 
  loc_17A3A50:           Set var_90 = var_98(CInt(6))
  loc_17A3A56:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1005))
  loc_17A3A5E:           var_98.Top = 
  loc_17A3A7A:           Set var_90 = var_98(CInt(7))
  loc_17A3A80:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3A88:           var_98.Left = 
  loc_17A3AA4:           Set var_90 = var_98(CInt(7))
  loc_17A3AAA:           Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1305))
  loc_17A3AB2:           var_98.Top = 
  loc_17A3AC1:         Else
  loc_17A3AC9:           If (var_144 = "AcCheckList") Then
  loc_17A3AD7:             Set var_90 = var_98(2)
  loc_17A3ADD:             Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3AE5:             var_98.Visible = 
  loc_17A3AFE:             Set var_90 = var_98(CInt(2))
  loc_17A3B04:             Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3B0C:             var_98.Visible = 
  loc_17A3B25:             Set var_90 = var_98(CInt(&HA))
  loc_17A3B2B:             Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3B33:             var_98.Visible = 
  loc_17A3B4B:             (&HFF).Visible = 
  loc_17A3B60:             Set var_90 = var_98(CInt(3))
  loc_17A3B66:             Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3B6E:             var_98.Visible = 
  loc_17A3B86:             (&HFF).Visible = 
  loc_17A3B9B:             Set var_90 = var_98(CInt(4))
  loc_17A3BA1:             Call 0.Method_Proc_203_54_17A4CA40 (&HFF)
  loc_17A3BA9:             var_98.Visible = 
  loc_17A3BC2:             Set var_90 = var_98(2)
  loc_17A3BC8:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A3BD0:             var_98.Left = 
  loc_17A3BEA:             Set var_90 = var_98(2)
  loc_17A3BF0:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(750))
  loc_17A3BF8:             var_98.Top = 
  loc_17A3C14:             Set var_90 = var_98(CInt(2))
  loc_17A3C1A:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3C22:             var_98.Left = 
  loc_17A3C3E:             Set var_90 = var_98(CInt(2))
  loc_17A3C44:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(705))
  loc_17A3C4C:             var_98.Top = 
  loc_17A3C66:             Set var_90 = var_98(CInt(&HA))
  loc_17A3C6C:             Call 0.Method_Proc_203_54_17A4CA40 (var_8C)
  loc_17A3C74:              = var_98.Width
  loc_17A3C91:             Set var_9C = var_B0(CInt(&HA))
  loc_17A3C97:             Call 0.Method_Proc_203_54_17A4CA40 (((CDbl(1725) - var_8C) - CDbl(&H32)))
  loc_17A3C9F:             var_B0.Left = 
  loc_17A3CBF:             Set var_90 = var_98(CInt(&HA))
  loc_17A3CC5:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(705))
  loc_17A3CCD:             var_98.Top = 
  loc_17A3CE6:             Set var_90 = var_98(3)
  loc_17A3CEC:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A3CF4:             var_98.Left = 
  loc_17A3D0E:             Set var_90 = var_98(3)
  loc_17A3D14:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1050))
  loc_17A3D1C:             var_98.Top = 
  loc_17A3D35:             Set var_90 = var_98(4)
  loc_17A3D3B:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(&H78))
  loc_17A3D43:             var_98.Left = 
  loc_17A3D5D:             Set var_90 = var_98(4)
  loc_17A3D63:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1350))
  loc_17A3D6B:             var_98.Top = 
  loc_17A3D87:             Set var_90 = var_98(CInt(6))
  loc_17A3D8D:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3D95:             var_98.Left = 
  loc_17A3DB1:             Set var_90 = var_98(CInt(6))
  loc_17A3DB7:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1005))
  loc_17A3DBF:             var_98.Top = 
  loc_17A3DDB:             Set var_90 = var_98(CInt(7))
  loc_17A3DE1:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3DE9:             var_98.Left = 
  loc_17A3E05:             Set var_90 = var_98(CInt(7))
  loc_17A3E0B:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1305))
  loc_17A3E13:             var_98.Top = 
  loc_17A3E2D:             (CDbl(&H78)).Left = 
  loc_17A3E44:             (CDbl(1650)).Top = 
  loc_17A3E5C:             Set var_90 = var_98(CInt(3))
  loc_17A3E62:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3E6A:             var_98.Left = 
  loc_17A3E86:             Set var_90 = var_98(CInt(3))
  loc_17A3E8C:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1605))
  loc_17A3E94:             var_98.Top = 
  loc_17A3EAE:             (CDbl(&H78)).Left = 
  loc_17A3EC5:             (CDbl(1950)).Top = 
  loc_17A3EDD:             Set var_90 = var_98(CInt(4))
  loc_17A3EE3:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1725))
  loc_17A3EEB:             var_98.Left = 
  loc_17A3F07:             Set var_90 = var_98(CInt(4))
  loc_17A3F0D:             Call 0.Method_Proc_203_54_17A4CA40 (CDbl(1905))
  loc_17A3F15:             var_98.Top = 
  loc_17A3F21:           End If
  loc_17A3F21:         End If
  loc_17A3F21:       End If
  loc_17A3F21:     End If
  loc_17A3F2C:     If (GRepFormName = "AcCheckList") Then
  loc_17A3F38:       Set var_90 = var_98(1)
  loc_17A3F3E:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A3F46:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A3F55:       Call 0.Method_Me0 (var_8C)
  loc_17A3F6B:       var_F4 = CVar((((var_8C / CDbl(2)) - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A3F79:       Set var_9C = var_B0(1)
  loc_17A3F7F:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A3F87:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A3F9E:       Set var_98 = ()
  loc_17A3FA4:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A3FB1:       Set var_90 = ()
  loc_17A3FB7:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A3FCB:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A3FD9:       Set var_9C = var_B0(1)
  loc_17A3FDF:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A3FE7:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4002:       Set var_90 = ()
  loc_17A4008:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4018:       Set var_98 = (var_94)
  loc_17A401E:        = var_98.Height
  loc_17A4029:       Call 0.Method_Me8 (var_8C)
  loc_17A4040:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A404E:       Set var_9C = var_B0(1)
  loc_17A4054:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A405C:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4078:       Set var_90 = var_98(1)
  loc_17A407E:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4086:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A409D:       Set var_9C = var_B0(1)
  loc_17A40A3:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H14)))
  loc_17A40AB:       var_B0.Top = 
  loc_17A40C7:       Set var_90 = var_98(1)
  loc_17A40CD:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A40D5:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A40EC:       Set var_9C = var_B0(1)
  loc_17A40F2:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H28)))
  loc_17A40FA:       var_B0.Left = 
  loc_17A4113:       Call 0.Method_Me0 (var_94)
  loc_17A4121:       Set var_90 = var_98(1)
  loc_17A4127:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A412F:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A413E:       Call 0.Method_Me0 (var_8C)
  loc_17A415C:       var_F4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_AC)) / CDbl(2)))) 'Single
  loc_17A416A:       Set var_9C = var_B0(3)
  loc_17A4170:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A4178:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A418F:       Set var_98 = ()
  loc_17A4195:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A41A2:       Set var_90 = ()
  loc_17A41A8:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A41BC:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A41CA:       Set var_9C = var_B0(3)
  loc_17A41D0:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A41D8:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A41F3:       Set var_90 = ()
  loc_17A41F9:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4209:       Set var_98 = (var_94)
  loc_17A420F:        = var_98.Height
  loc_17A421A:       Call 0.Method_Me8 (var_8C)
  loc_17A4231:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A423F:       Set var_9C = var_B0(3)
  loc_17A4245:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A424D:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4269:       Set var_90 = var_98(3)
  loc_17A426F:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4277:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A428E:       Set var_9C = var_B0(3)
  loc_17A4294:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H14)))
  loc_17A429C:       var_B0.Top = 
  loc_17A42B8:       Set var_90 = var_98(3)
  loc_17A42BE:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A42C6:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A42DD:       Set var_9C = var_B0(3)
  loc_17A42E3:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H28)))
  loc_17A42EB:       var_B0.Left = 
  loc_17A4345:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A4354:         (&HFF).Visible = 
  loc_17A4365:         Set var_90 = var_98(1)
  loc_17A436B:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4373:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A4387:         (CDbl()).Left = 
  loc_17A43A1:         Set var_90 = var_98(1)
  loc_17A43A7:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A43AF:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A43C3:         (CDbl()).Width = 
  loc_17A43DD:         Set var_9C = var_B0(1)
  loc_17A43E3:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A43EB:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A43FD:         Set var_90 = var_98(1)
  loc_17A4403:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A440B:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A441F:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A4425:         var_B4.Top = 
  loc_17A443E:       End If
  loc_17A4441:     Else
  loc_17A444A:       Set var_90 = var_98(1)
  loc_17A4450:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4458:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A4467:       Call 0.Method_Me0 (var_8C)
  loc_17A4479:       var_F4 = CVar(((var_8C - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A4487:       Set var_9C = var_B0(1)
  loc_17A448D:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A4495:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A44AC:       Set var_98 = ()
  loc_17A44B2:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A44BF:       Set var_90 = ()
  loc_17A44C5:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A44D9:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A44E7:       Set var_9C = var_B0(1)
  loc_17A44ED:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A44F5:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4510:       Set var_90 = ()
  loc_17A4516:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4526:       Set var_98 = (var_94)
  loc_17A452C:        = var_98.Height
  loc_17A4537:       Call 0.Method_Me8 (var_8C)
  loc_17A454E:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A455C:       Set var_9C = var_B0(1)
  loc_17A4562:       Call 0.Method_Proc_203_54_17A4CA40 (True)
  loc_17A456A:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4586:       Set var_90 = var_98(1)
  loc_17A458C:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4594:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A45AB:       Set var_9C = var_B0(1)
  loc_17A45B1:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H14)))
  loc_17A45B9:       var_B0.Top = 
  loc_17A45D5:       Set var_90 = var_98(1)
  loc_17A45DB:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A45E3:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A45FA:       Set var_9C = var_B0(1)
  loc_17A4600:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H28)))
  loc_17A4608:       var_B0.Left = 
  loc_17A4662:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A4671:         (&HFF).Visible = 
  loc_17A4682:         Set var_90 = var_98(1)
  loc_17A4688:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4690:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A46A4:         (CDbl()).Left = 
  loc_17A46BE:         Set var_90 = var_98(1)
  loc_17A46C4:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A46CC:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A46E0:         (CDbl()).Width = 
  loc_17A46FA:         Set var_9C = var_B0(1)
  loc_17A4700:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4708:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A471A:         Set var_90 = var_98(1)
  loc_17A4720:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4728:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A473C:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A4742:         var_B4.Top = 
  loc_17A475B:       End If
  loc_17A475B:     End If
  loc_17A475E:   Else
  loc_17A4769:     If (var_13C = 2) Then
  loc_17A4775:       Set var_90 = var_98(1)
  loc_17A477B:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4783:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A4792:       Call 0.Method_Me0 (var_8C)
  loc_17A47A8:       var_F4 = CVar((((var_8C / CDbl(2)) - CDbl(var_AC)) / CDbl(2))) 'Single
  loc_17A47B6:       Set var_9C = var_B0(1)
  loc_17A47BC:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A47C4:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A47DB:       Set var_98 = ()
  loc_17A47E1:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A47EE:       Set var_90 = ()
  loc_17A47F4:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4808:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A4816:       Set var_9C = var_B0(1)
  loc_17A481C:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A4824:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A483F:       Set var_90 = ()
  loc_17A4845:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4855:       Set var_98 = (var_94)
  loc_17A485B:        = var_98.Height
  loc_17A4866:       Call 0.Method_Me8 (var_8C)
  loc_17A487D:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A488B:       Set var_9C = var_B0(1)
  loc_17A4891:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A4899:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A48B5:       Set var_90 = var_98(1)
  loc_17A48BB:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A48C3:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A48DA:       Set var_9C = var_B0(1)
  loc_17A48E0:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H14)))
  loc_17A48E8:       var_B0.Top = 
  loc_17A4904:       Set var_90 = var_98(1)
  loc_17A490A:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4912:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A4929:       Set var_9C = var_B0(1)
  loc_17A492F:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H28)))
  loc_17A4937:       var_B0.Left = 
  loc_17A4950:       Call 0.Method_Me0 (var_94)
  loc_17A495E:       Set var_90 = var_98(1)
  loc_17A4964:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A496C:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A497B:       Call 0.Method_Me0 (var_8C)
  loc_17A4999:       var_F4 = CVar(((var_8C / CDbl(2)) + (((var_94 / CDbl(2)) - CDbl(var_AC)) / CDbl(2)))) 'Single
  loc_17A49A7:       Set var_9C = var_B0(2)
  loc_17A49AD:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A49B5:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A49CC:       Set var_98 = ()
  loc_17A49D2:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A49DF:       Set var_90 = ()
  loc_17A49E5:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A49F9:       var_F4 = CVar(((CDbl() + CDbl(var_C4)) + CDbl(700))) 'Single
  loc_17A4A07:       Set var_9C = var_B0(2)
  loc_17A4A0D:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A4A15:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4A30:       Set var_90 = ()
  loc_17A4A36:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4A46:       Set var_98 = (var_94)
  loc_17A4A4C:        = var_98.Height
  loc_17A4A57:       Call 0.Method_Me8 (var_8C)
  loc_17A4A6E:       var_F4 = CVar((((var_8C - CDbl(var_AC)) - var_94) - CDbl(2200))) 'Single
  loc_17A4A7C:       Set var_9C = var_B0(2)
  loc_17A4A82:       Call 0.Method_Proc_203_54_17A4CA40 (2)
  loc_17A4A8A:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4AA6:       Set var_90 = var_98(2)
  loc_17A4AAC:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4AB4:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4ACB:       Set var_9C = var_B0(2)
  loc_17A4AD1:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H14)))
  loc_17A4AD9:       var_B0.Top = 
  loc_17A4AF5:       Set var_90 = var_98(2)
  loc_17A4AFB:       Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4B03:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A4B1A:       Set var_9C = var_B0(2)
  loc_17A4B20:       Call 0.Method_Proc_203_54_17A4CA40 ((CDbl() + CDbl(&H28)))
  loc_17A4B28:       var_B0.Left = 
  loc_17A4B82:       If ((((((GRepFormName = "Led") Or (GRepFormName = "LedInt")) Or (GRepFormName = "LedDeb")) Or (GRepFormName = "MemLed")) Or (GRepFormName = "LedCred")) Or (GRepFormName = "AcCheckList")) Then
  loc_17A4B91:         (&HFF).Visible = 
  loc_17A4BA2:         Set var_90 = var_98(1)
  loc_17A4BA8:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4BB0:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010003()
  loc_17A4BC4:         (CDbl()).Left = 
  loc_17A4BDE:         Set var_90 = var_98(1)
  loc_17A4BE4:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4BEC:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_17A4C00:         (CDbl()).Width = 
  loc_17A4C1A:         Set var_9C = var_B0(1)
  loc_17A4C20:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4C28:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006()
  loc_17A4C3A:         Set var_90 = var_98(1)
  loc_17A4C40:         Call 0.Method_Proc_203_54_17A4CA40 ()
  loc_17A4C48:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010004()
  loc_17A4C5C:         Set var_B4 = ((CDbl() + CDbl(var_C4)))
  loc_17A4C62:         var_B4.Top = 
  loc_17A4C7B:       End If
  loc_17A4C7B:     End If
  loc_17A4C7B:   End If
  loc_17A4C7B: End If
  loc_17A4C7B: Exit Sub
  loc_17A4C7C: ' Referenced from: 17A2D5C
  loc_17A4C82: Call 0.Method_arg_50 (var_148)
  loc_17A4C8A: var_150 = "Global_Grid"
  loc_17A4C97: Proc_183_57_104AA84(var_148)
  loc_17A4CA3: Exit Sub
End Sub

Public Sub Proc_203_55_EB7ED4
  'Data Table: 583330
  Dim var_88 As Frame
  loc_EB7E41:  = (var_8A).Visible
  loc_EB7E4F: If (var_8A = &HFF) Then
  loc_EB7E5E:   (0).Visible = 
  loc_EB7E66: End If
  loc_EB7E6A: Set var_88 = ()
  loc_EB7E70: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_EB7E82: If (CBool() = &HFF) Then
  loc_EB7E8E:   Set var_88 = (False)
  loc_EB7E94:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_EB7E9C: End If
  loc_EB7EA0: Set var_88 = ()
  loc_EB7EA6: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_EB7EB8: If (CBool() = &HFF) Then
  loc_EB7EC4:   Set var_88 = (False)
  loc_EB7ECA:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007()
  loc_EB7ED2: End If
  loc_EB7ED2: Exit Sub
End Sub

Public Sub Proc_203_56_127C0D4(arg_C, arg_10, arg_14) '127C0D4
  'Data Table: 583330
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_104 As String
  Dim var_17C As Variant
  Dim var_16C As Variant
  Dim var_1AC As Variant
  Dim var_1C2 As Integer
  loc_127BB46: On Error Goto loc_127C09E
  loc_127BB4C: var_8C = vbNullString
  loc_127BB57: CRefVarAry
  loc_127BB5F: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_127BB80:   If (arg_C(var_8E) = 0) Then
  loc_127BB83:     GoTo loc_127BF1B
  loc_127BB86:   End If
  loc_127BB97:   var_90 = CInt(arg_C(var_8E))
  loc_127BBB9:   Set var_DC = var_E0(arg_10)
  loc_127BBBF:   Call 0.Method_Proc_203_56_127C0D40 (0, CVar(CLng(var_90)))
  loc_127BBC7:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(var_90)
  loc_127BBE7:   If (CStr(0) = "ü") Then
  loc_127BBF3:     If (CInt(arg_14) = 0) Then
  loc_127BC12:       Set var_DC = var_E0(arg_10)
  loc_127BC18:       Call 0.Method_Proc_203_56_127C0D40 (2)
  loc_127BC20:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(CVar(CLng(var_90)))
  loc_127BC51:       Set var_108 = var_10C(arg_10)
  loc_127BC57:       Call 0.Method_Proc_203_56_127C0D40 (2, CVar(CLng(var_90)))
  loc_127BC5F:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(",")
  loc_127BC8F:       var_1AC = ( + IIf((var_8C = vbNullString), CVar(CStr(var_C8)), CVar( & CStr(CVar(var_8C)))))
  loc_127BC94:       var_8C = CStr(var_1AC)
  loc_127BCB9:     Else
  loc_127BCC2:       If (CInt(arg_14) = 1) Then
  loc_127BCE1:         Set var_DC = var_E0(arg_10)
  loc_127BCE7:         Call 0.Method_Proc_203_56_127C0D40 (2)
  loc_127BCEF:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(CVar(CLng(var_90)))
  loc_127BD27:         Set var_108 = var_10C(arg_10)
  loc_127BD2D:         Call 0.Method_Proc_203_56_127C0D40 (2, CVar(CLng(var_90)))
  loc_127BD35:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("," & "'")
  loc_127BD7A:         var_1AC = ( + IIf((var_8C = vbNullString), CVar("'" & CStr(var_C8) & "'"), CVar(CStr(CVar(var_8C)) & "'")))
  loc_127BD7F:         var_8C = CStr(var_1AC)
  loc_127BDAB:       End If
  loc_127BDAB:     End If
  loc_127BDCA:     Set var_DC = var_E0(arg_10)
  loc_127BDD0:     Call 0.Method_Proc_203_56_127C0D40 (1, CVar(CLng(var_90)))
  loc_127BDD8:     Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(var_94)
  loc_127BE02:     If (Len(CStr()) < &HFF) Then
  loc_127BE21:       Set var_DC = var_E0(arg_10)
  loc_127BE27:       Call 0.Method_Proc_203_56_127C0D40 (1)
  loc_127BE2F:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(CVar(CLng(var_90)))
  loc_127BE60:       Set var_108 = var_10C(arg_10)
  loc_127BE66:       Call 0.Method_Proc_203_56_127C0D40 (1, CVar(CLng(var_90)))
  loc_127BE6E:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(",")
  loc_127BE7D:       var_17C = CVar( & CStr(CVar(var_94))) 'String
  loc_127BE84:       var_16C = CVar(CStr(var_C8)) 'String
  loc_127BE96:       var_18C = IIf((var_94 = vbNullString), var_16C, var_17C)
  loc_127BE9E:       var_1AC = ( + var_18C)
  loc_127BEA3:       var_94 = CStr(var_1AC)
  loc_127BEC5:     End If
  loc_127BEC9:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_127BEE7:     Set var_DC = var_E0(arg_10)
  loc_127BEED:     Call 0.Method_Proc_203_56_127C0D40 (vbNullString, 0)
  loc_127BEF5:     LateIdCallSt
  loc_127BF07:   Else
  loc_127BF0E:     var_B8 = 0
  loc_127BF17:     VarIndexSt
  loc_127BF1B:   End If
  loc_127BF1B:   ' Referenced from: 127BB83
  loc_127BF1E: Next var_98 'Integer
  loc_127BF2B: CRefVarAry
  loc_127BF33: For var_1C0 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1C0 'Integer
  loc_127BF6B:   If CBool(arg_C(var_8E) <> 0) Then
  loc_127BF90:     Set var_DC = var_E0(arg_10)
  loc_127BF96:     Call 0.Method_Proc_203_56_127C0D40 ("ü", 0, CVar(CLng(CInt(arg_C(var_8E)))))
  loc_127BF9E:     LateIdCallSt
  loc_127BFAD:   End If
  loc_127BFB0: Next var_1C0 'Integer
  loc_127BFBD: If (var_8C = vbNullString) Then
  loc_127BFDC:   Set var_DC = var_E0(arg_10)
  loc_127BFE2:   Call 0.Method_Proc_203_56_127C0D40 (1)
  loc_127BFEA:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(0)
  loc_127C00B:   var_104 = CStr(var_C8)
  loc_127C012:   MsgBox(CVar("Select " & var_104), &H40, var_16C, var_17C, var_18C)
  loc_127C038:   Set var_DC = var_E0(arg_10)
  loc_127C03E:   Call 0.Method_Proc_203_56_127C0D40 ()
  loc_127C046:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001()
  loc_127C05D:   Proc_203_56_127C0D4 = 0
  loc_127C063: End If
  loc_127C066: var_88 = var_8C
  loc_127C06C: var_1C2 = arg_10
  loc_127C075: If (var_1C2 = 1) Then
  loc_127C07E:   global_108 = var_94
  loc_127C085: Else
  loc_127C08B:   If (var_1C2 = 2) Then
  loc_127C094:     global_112 = var_94
  loc_127C098:   End If
  loc_127C098: End If
  loc_127C098: Proc_203_56_127C0D4 = var_1C2
  loc_127C09E: ' Referenced from: 127BB46
  loc_127C0AC: Call 0.Method_arg_50 (var_104)
  loc_127C0C1: Proc_183_57_104AA84(var_104, "FillString")
  loc_127C0CD: Proc_203_56_127C0D4 = 0
End Sub

Public Sub Proc_203_57_F2F850
  'Data Table: 583330
  Dim var_CC As Variant
  loc_F2F748: On Error Goto loc_F2F826
  loc_F2F74F: Set var_8C = ()
  loc_F2F755: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_F2F76C: If (CLng() = CLng(global_140)) Then
  loc_F2F777:   var_A0 = "	"
  loc_F2F77D:   Proc_303_0_FB9B68(var_A0)
  loc_F2F785:   Exit Sub
  loc_F2F786: End If
  loc_F2F78A: Set var_8C = (0)
  loc_F2F790: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_F2F7A1: Set var_A8 = CInt(CLng())(var_86)
  loc_F2F7A7: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_4()
  loc_F2F7C5: For var_BC =  To CInt((CLng() - 1)):  = var_BC 'Integer
  loc_F2F7D2:   var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2F7DB:   Set var_8C = (var_CC)
  loc_F2F7E1:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_3A()
  loc_F2F7F9:   If (CLng() <> 0) Then
  loc_F2F803:     var_CC = CVar(CLng((var_86 + 1))) 'Long
  loc_F2F80C:     Set var_8C = (var_CC)
  loc_F2F812:     Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_F2F81A:     Exit For
  loc_F2F81D:   End If
  loc_F2F820: Next var_BC 'Integer
  loc_F2F825: ' Referenced from: F2F81A
  loc_F2F825: Exit Sub
  loc_F2F826: ' Referenced from: F2F748
  loc_F2F82C: Call 0.Method_arg_50 (var_A0)
  loc_F2F834: var_E4 = "TxtKeyDown"
  loc_F2F841: Proc_183_57_104AA84(var_A0)
  loc_F2F84D: Exit Sub
End Sub

Public Sub Proc_203_58_11E8208(arg_C, arg_10) '11E8208
  'Data Table: 583330
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_B0 As CheckBox
  Dim var_E8 As CheckBox
  loc_11E7D7C: On Error Goto loc_11E81DF
  loc_11E7D82: var_86 = arg_C
  loc_11E7D88: var_88 = var_86
  loc_11E7D91: If (var_88 = 1) Then
  loc_11E7DB0:   Me.Recordset15.CursorLocation = 3
  loc_11E7DD9:   Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E7DE7:   CVarUnk
  loc_11E7DEC:   VerifyVarObj
  loc_11E7DF8:   Set var_8C = var_B0(var_86)
  loc_11E7DFE:   Call 0.Method_Proc_203_58_11E82080 (New, 1, -1)
  loc_11E7E06:   LateIdStAd
  loc_11E7E28:   ReDim Preserve global_96(0 To 0)
  loc_11E7E3F:   global_96(0) = 0
  loc_11E7E43: Else
  loc_11E7E49:   If (var_88 = 2) Then
  loc_11E7E68:     Me.Recordset15.CursorLocation = 3
  loc_11E7E91:     Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E7E9F:     CVarUnk
  loc_11E7EA4:     VerifyVarObj
  loc_11E7EB0:     Set var_8C = var_B0(var_86)
  loc_11E7EB6:     Call 0.Method_Proc_203_58_11E82080 (New, 1, -1)
  loc_11E7EBE:     LateIdStAd
  loc_11E7EE0:     ReDim Preserve global_100(0 To 0)
  loc_11E7EF7:     global_100(0) = 0
  loc_11E7EFB:   Else
  loc_11E7F01:     If (var_88 = 3) Then
  loc_11E7F20:       Me.Recordset15.CursorLocation = 3
  loc_11E7F49:       Me.Open CVar(arg_10), CVar(MemVar_1F921DC), 3
  loc_11E7F57:       CVarUnk
  loc_11E7F5C:       VerifyVarObj
  loc_11E7F68:       Set var_8C = var_B0(var_86)
  loc_11E7F6E:       Call 0.Method_Proc_203_58_11E82080 (New, 1, -1, var_B0)
  loc_11E7F76:       LateIdStAd
  loc_11E7F98:       ReDim Preserve global_104(0 To 0)
  loc_11E7FAF:       global_104(0) = 0
  loc_11E7FB0:     End If
  loc_11E7FB0:   End If
  loc_11E7FB0: End If
  loc_11E7FC3: Set var_8C = var_B0(var_86)
  loc_11E7FC9: Call 0.Method_Proc_203_58_11E82080 (CVar(CDbl(1700)), var_B0, var_B0)
  loc_11E7FD1: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010006(var_88)
  loc_11E7FEB: Set var_8C = var_B0(var_86)
  loc_11E7FF1: Call 0.Method_Proc_203_58_11E82080 (True)
  loc_11E7FF9: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010007(var_86)
  loc_11E8013: Set var_8C = var_B0(var_86)
  loc_11E8019: Call 0.Method_Proc_203_58_11E82080 (True)
  loc_11E8021: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001000D()
  loc_11E8039: Set var_8C = var_B0(var_86)
  loc_11E803F: Call 0.Method_Proc_203_58_11E82080 (&HFF)
  loc_11E8047: var_B0.Visible = 
  loc_11E8066: Set var_8C = var_B0(var_86)
  loc_11E806C: Call 0.Method_Proc_203_58_11E82080 (CVar(CDbl(5200)))
  loc_11E8074: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_80010005()
  loc_11E8080: var_9C = 0
  loc_11E809C: Set var_8C = var_B0(var_86)
  loc_11E80A2: Call 0.Method_Proc_203_58_11E82080 (&H258)
  loc_11E80AA: LateIdCallSt
  loc_11E80D5: Set var_8C = var_B0(var_86)
  loc_11E80DB: Call 0.Method_Proc_203_58_11E82080 (0, 2)
  loc_11E80E3: LateIdCallSt
  loc_11E810E: Set var_8C = var_B0(var_86)
  loc_11E8114: Call 0.Method_Proc_203_58_11E82080 (&HFA0, 1, var_B0)
  loc_11E811C: LateIdCallSt
  loc_11E813A: Set var_8C = var_B0(var_86)
  loc_11E8140: Call 0.Method_Proc_203_58_11E82080 (CDbl(580), var_B0)
  loc_11E8148: var_B0.Width = var_B0
  loc_11E8154: var_9C = 0
  loc_11E8167: Set var_8C = var_B0(var_86)
  loc_11E816D: Call 0.Method_Proc_203_58_11E82080 (var_9C)
  loc_11E8175: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_3A(var_9C)
  loc_11E8193: Set var_E4 = var_E8(var_86)
  loc_11E8199: Call 0.Method_Proc_203_58_11E82080 (CDbl((CLng() + &H14)))
  loc_11E81A1: var_E8.Height = 
  loc_11E81C4: Set var_8C = var_B0(var_86)
  loc_11E81CA: Call 0.Method_Proc_203_58_11E82080 (CInt(0))
  loc_11E81D2: var_B0.Value = 
  loc_11E81DE: Exit Sub
  loc_11E81DF: ' Referenced from: 11E7D7C
  loc_11E81E5: Call 0.Method_arg_50 (var_EC)
  loc_11E81ED: var_F4 = "GridInitialise"
  loc_11E81FA: Proc_183_57_104AA84(var_EC)
  loc_11E8206: Exit Sub
End Sub

Public Sub Proc_203_59_F51A10(arg_C, arg_10) 'F51A10
  'Data Table: 583330
  Dim var_E0 As String
  Dim var_86 As Integer
  loc_F51900: On Error Goto loc_F519E0
  loc_F51919: Set var_CC = CVar(CLng(arg_C))(1)
  loc_F5191F: Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_F5192A: var_E0 = CStr()
  loc_F5193B: If (var_E0 = vbNullString) Then
  loc_F51970:   MsgBox(Trim(arg_10) & " Should not be Blank.", &H40, "Validation Check", var_110, var_130)
  loc_F51986:   Set var_CC = ()
  loc_F5198C:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_8001()
  loc_F519A4:   Set var_CC = (CVar(CLng(arg_C)))
  loc_F519AA:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_A()
  loc_F519BF:   Set var_CC = (1)
  loc_F519C5:   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_B()
  loc_F519CF:   var_86 = 0
  loc_F519D5: Else
  loc_F519D7:   var_86 = &HFF
  loc_F519DA: End If
  loc_F519DA: Proc_203_59_F51A10 = var_86
  loc_F519E0: ' Referenced from: F51900
  loc_F519E6: Call 0.Method_arg_50 (var_E0)
  loc_F519FB: Proc_183_57_104AA84(var_E0, "IsNotBlank")
  loc_F51A07: Proc_203_59_F51A10 = var_86
End Sub

Public Sub Proc_203_60_1755B30
  'Data Table: 583330
  Dim var_B4 As Variant
  Dim var_A4 As String
  Dim var_F0 As String
  Dim var_124 As String
  Dim var_C4 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_1B8 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Variant
  Dim var_188 As String
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim unk_58337D As Connection15
  Dim var_90 As Recordset15
  Dim var_130 As Fields15
  loc_1753E08: On Error Goto loc_1755B06
  loc_1753E1C: Call 0.Method_arg_90 (var_94, var_98)
  loc_1753E24: Call 0.Method_arg_24 (var_86)
  loc_1753E30: For var_9C =  To CInt(var_98): 1 = var_9C 'Integer
  loc_1753E49:   Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1753E51:   Call 0.Method_arg_20 (var_A0)
  loc_1753E59:   Call 0.Method_arg_30 (var_A4)
  loc_1753E6F:   var_D4 = Ucase(CVar(var_A4)) 'Variant
  loc_1753E9F:   If (var_D4 = Ucase("Title")) Then
  loc_1753EA8:     var_EC = GRepFormName
  loc_1753EBB:     var_A4 = CStr((GRepFormName = "DUELIST"))
  loc_1753EC3:     If (var_EC = var_A4) Then
  loc_1753ECF:       Call 0.Method_arg_50 (var_A4)
  loc_1753EF7:       Set var_94 = CVar(CLng(3))(1)
  loc_1753EFD:       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'" & var_A4 & " More Than ")
  loc_1753F26:       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753F2E:       Call 0.Method_arg_20 (var_130)
  loc_1753F36:       Call 0.Method_arg_38 (CStr() & " Days""'")
  loc_1753F59:     Else
  loc_1753F61:       If (var_EC = "DayBook") Then
  loc_1753F6D:         Call 0.Method_arg_50 (var_A4)
  loc_1753F91:         Set var_94 = CVar(CLng(3))(1)
  loc_1753F97:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(var_A4 & " (")
  loc_1753FCB:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1753FD3:         Call 0.Method_arg_20 (var_130)
  loc_1753FDB:         Call 0.Method_arg_38 (CStr("'") & ")" & "'")
  loc_1754000:       Else
  loc_1754008:         If Not (var_EC = "JournalBook") Then
  loc_1754013:           If (var_EC = "JournalBookLog") Then
  loc_1754016:           End If
  loc_175402B:           Set var_94 = CVar(CLng(4))(2)
  loc_1754031:           Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_175405E:           If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_175407B:             Set var_94 = CVar(CLng(2))(1)
  loc_1754081:             Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'")
  loc_175409F:             var_168 = (Trim(CVar(CStr())) + " (")
  loc_17540B8:             Set var_A0 = CVar(CLng(4))(1)
  loc_17540BE:             Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41(var_168)
  loc_17540D7:             var_1E8 = ( + Trim(CVar(CStr())))
  loc_17540E0:             var_208 = (var_1E8 + ")")
  loc_1754105:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_175410D:             Call 0.Method_arg_20 (var_24C)
  loc_1754115:             Call 0.Method_arg_38 (CStr(var_208 & "'"))
  loc_1754144:           Else
  loc_175415E:             Set var_94 = CVar(CLng(2))(1)
  loc_1754164:             Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'")
  loc_175418A:             var_A4 = CStr(Trim(CVar(CStr())) & "'")
  loc_175419E:             Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17541A6:             Call 0.Method_arg_20 (var_130)
  loc_17541AE:             Call 0.Method_arg_38 (var_A4)
  loc_17541CC:           End If
  loc_17541CF:         Else
  loc_17541D7:           If Not (var_EC = "Annexure") Then
  loc_17541E2:             If Not (var_EC = "BankReg") Then
  loc_17541ED:               If Not (var_EC = "CashBook") Then
  loc_17541F8:                 If Not (var_EC = "BankBook") Then
  loc_1754203:                   If Not (var_EC = "Clg") Then
  loc_175420E:                     If Not (var_EC = "ClgNot") Then
  loc_1754219:                       If Not (var_EC = "DailySumm") Then
  loc_1754224:                         If Not (var_EC = "RozNamcha") Then
  loc_175422F:                           If Not (var_EC = "CONTROLLED") Then
  loc_175423A:                             If Not (var_EC = "DUELIST") Then
  loc_1754245:                               If Not (var_EC = "RefReport") Then
  loc_1754250:                                 If (var_EC = "NonTrans") Then
  loc_1754253:                                 End If
  loc_1754253:                               End If
  loc_1754253:                             End If
  loc_1754253:                           End If
  loc_1754253:                         End If
  loc_1754253:                       End If
  loc_1754253:                     End If
  loc_1754253:                   End If
  loc_1754253:                 End If
  loc_1754253:               End If
  loc_1754253:             End If
  loc_175425E:             Set var_94 = var_A0(CInt(&HC))
  loc_1754264:             Call 0.Method_Proc_203_60_1755B300 ()
  loc_175428D:             If CBool(Trim(CVar(var_A0)) <> vbNullString) Then
  loc_175429B:               Call 0.Method_arg_50 (var_A4)
  loc_17542B5:               Set var_94 = var_A0(CInt(&HC))
  loc_17542BB:               Call 0.Method_Proc_203_60_1755B300 (CVar(var_A4 & " ("))
  loc_17542D2:               var_168 = ("'" + Trim(CVar(var_A0)))
  loc_17542DB:               var_1B8 = (Trim(CVar(CStr())) + ")")
  loc_17542E4:               var_1C8 = (Trim(CVar(CStr())) & "'" + "'")
  loc_17542E8:               var_1D8 = CVar(CStr()) 
  loc_1754300:               Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_1754308:               Call 0.Method_arg_20 (var_24C)
  loc_1754310:               Call 0.Method_arg_38 (CStr(var_1D8))
  loc_1754339:             Else
  loc_1754342:               Call 0.Method_arg_50 (var_A4)
  loc_1754365:               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_175436D:               Call 0.Method_arg_20 (var_A0)
  loc_1754375:               Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_175438A:             End If
  loc_175438D:           Else
  loc_1754396:             Call 0.Method_arg_50 (var_A4)
  loc_17543B9:             Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_17543C1:             Call 0.Method_arg_20 (var_A0)
  loc_17543C9:             Call 0.Method_arg_38 ("'" & var_A4 & "'")
  loc_17543DE:           End If
  loc_17543DE:         End If
  loc_17543DE:       End If
  loc_17543DE:     End If
  loc_17543E1:   Else
  loc_17543E9:     var_B4 = "FORDATE"
  loc_1754403:     If Not (var_D4 = Ucase(var_B4)) Then
  loc_1754428:       If Not (var_D4 = Ucase("DATE")) Then
  loc_175444D:         If (var_D4 = Ucase("FROMDATE")) Then
  loc_1754450:         End If
  loc_1754450:       End If
  loc_1754461:       If (GRepFormName = "Annexure") Then
  loc_1754474:          = "'Upto Date :   "(var_A4).Text
  loc_1754497:         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_175449F:         Call 0.Method_arg_20 (var_130)
  loc_17544A7:         Call 0.Method_arg_38 (var_A4 & "'")
  loc_17544C1:       Else
  loc_17544D6:         Set var_94 = CVar(CLng(0))(1)
  loc_17544DC:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_17544FD:         Set var_A0 = CVar(CLng(1))(1)
  loc_1754503:         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_175450F:         var_178 = "'From :'+ '"
  loc_175453F:         var_188 = "' + ' To ' + '"
  loc_1754590:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C, CStr(1 & Format(CVar(CStr(var_1D8)), "dd/mmm/yyyy") & "'"))
  loc_1754598:         Call 0.Method_arg_20 (1, 1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & var_188)
  loc_17545A0:         Call 0.Method_arg_38 (1)
  loc_17545CE:       End If
  loc_17545D1:     Else
  loc_17545F3:       If (var_D4 = Ucase("PageNo")) Then
  loc_1754649:         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1754651:         Call 0.Method_arg_20 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_1754659:         Call 0.Method_arg_38 ("'")
  loc_1754678:       Else
  loc_175469A:         If (var_D4 = Ucase("DT")) Then
  loc_17546F0:           Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_17546F8:           Call 0.Method_arg_20 (var_24C)
  loc_1754700:           Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("daterfill").Value & "'"))
  loc_175471F:         Else
  loc_1754741:           If (var_D4 = Ucase("SepPage")) Then
  loc_1754763:             var_A0 = Me.Fields.Item("CashBookPage")
  loc_175479B:             Call 0.Method_arg_90 (var_130, CLng(var_86))
  loc_17547A3:             Call 0.Method_arg_20 (var_24C)
  loc_17547AB:             Call 0.Method_arg_38 (CStr("'" & Ucase(CVar(var_A0)) & "'"))
  loc_17547CA:           Else
  loc_17547EC:             If (var_D4 = Ucase("PageNoIni")) Then
  loc_1754804:               Set var_94 = CVar(CLng(3))(1)
  loc_175480A:               Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_1754832:               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_175483A:               Call 0.Method_arg_20 (var_130)
  loc_1754842:               Call 0.Method_arg_38 (CStr(Val(CStr())))
  loc_175485D:             Else
  loc_175487F:               If (var_D4 = Ucase("ACNAME")) Then
  loc_1754888:                 var_278 = GRepFormName
  loc_1754893:                 If Not (var_278 = "CashBook") Then
  loc_175489E:                   If (var_278 = "BankBook") Then
  loc_17548A1:                   End If
  loc_17548B9:                   Set var_94 = CVar(CLng(4))(1)
  loc_17548BF:                   Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'")
  loc_17548CA:                   var_A4 = CStr()
  loc_17548E8:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17548F0:                   Call 0.Method_arg_20 (var_130)
  loc_17548F8:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_1754915:                 Else
  loc_1754925:                    = "'From A/C :               "(var_A4).Text
  loc_1754948:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1754950:                   Call 0.Method_arg_20 (var_130)
  loc_1754958:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_175496F:                 End If
  loc_1754972:               Else
  loc_1754994:                 If Not (var_D4 = Ucase("PARTYNAME")) Then
  loc_17549B9:                   If (var_D4 = Ucase("FORPARTY")) Then
  loc_17549BC:                   End If
  loc_17549C6:                   Set var_94 = "'For A/c :               "(var_A4)
  loc_17549CC:                    = var_94.Text
  loc_17549EF:                   Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_17549F7:                   Call 0.Method_arg_20 (var_130)
  loc_17549FF:                   Call 0.Method_arg_38 (var_A4 & "'")
  loc_1754A19:                 Else
  loc_1754A3B:                   If (var_D4 = Ucase("MyOpBal")) Then
  loc_1754A59:                     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754A61:                     Call 0.Method_arg_20 (var_A0)
  loc_1754A69:                     Call 0.Method_arg_38 (CStr(global_132))
  loc_1754A7B:                   Else
  loc_1754A9D:                     If (var_D4 = Ucase("VRTOT")) Then
  loc_1754AB8:                       Set var_94 = CVar(CLng(3))(1)
  loc_1754ABE:                       Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'")
  loc_1754AE7:                       Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1754AEF:                       Call 0.Method_arg_20 (var_130)
  loc_1754AF7:                       Call 0.Method_arg_38 (CStr() & "'")
  loc_1754B14:                     Else
  loc_1754B36:                       If (var_D4 = Ucase("VRWISETOT")) Then
  loc_1754B51:                         Set var_94 = CVar(CLng(2))(1)
  loc_1754B57:                         Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'")
  loc_1754B80:                         Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1754B88:                         Call 0.Method_arg_20 (var_130)
  loc_1754B90:                         Call 0.Method_arg_38 (CStr() & "'")
  loc_1754BAD:                       Else
  loc_1754BB5:                         var_B4 = "BetweenDate"
  loc_1754BCF:                         If (var_D4 = Ucase(var_B4)) Then
  loc_1754BE7:                           Set var_94 = CVar(CLng(0))(1)
  loc_1754BED:                           Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_1754BF9:                           var_178 = "'Upto Date :'+ '"
  loc_1754C46:                           Call 0.Method_arg_90 (var_A0, CLng(var_86), var_130)
  loc_1754C4E:                           Call 0.Method_arg_20 (CStr(1 & Format(CVar(CStr(var_B4)), "dd/mmm/yyyy") & "'"), 1)
  loc_1754C56:                           Call 0.Method_arg_38 ("'")
  loc_1754C79:                         Else
  loc_1754C9B:                           If (var_D4 = Ucase("ForParty")) Then
  loc_1754CAA:                             Set var_94 = var_A0(1)
  loc_1754CB0:                             Call 0.Method_Proc_203_60_1755B300 (var_E6)
  loc_1754CB8:                              = var_A0.Value
  loc_1754CCE:                             If (CLng(var_E6) = 0) Then
  loc_1754D16:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754D1E:                               Call 0.Method_arg_20 (var_A0)
  loc_1754D26:                               Call 0.Method_arg_38 (CStr(Trim(Left(CVar("'For Party :" & global_108), &HFF)) & "'"))
  loc_1754D43:                             Else
  loc_1754D56:                               Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754D5E:                               Call 0.Method_arg_20 (var_A0)
  loc_1754D66:                               Call 0.Method_arg_38 ("'For Party :                           All'")
  loc_1754D72:                             End If
  loc_1754D75:                           Else
  loc_1754D97:                             If (var_D4 = Ucase("ForDrCr")) Then
  loc_1754DB2:                               Set var_94 = CVar(CLng(2))(1)
  loc_1754DB8:                               Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41("'For Dr/Cr :'+ '")
  loc_1754DC3:                               var_A4 = CStr()
  loc_1754DE1:                               Call 0.Method_arg_90 (var_A0, CLng(var_86))
  loc_1754DE9:                               Call 0.Method_arg_20 (var_130)
  loc_1754DF1:                               Call 0.Method_arg_38 (var_A4 & "'")
  loc_1754E0B:                             End If
  loc_1754E0B:                           End If
  loc_1754E0B:                         End If
  loc_1754E0B:                       End If
  loc_1754E0B:                     End If
  loc_1754E0B:                   End If
  loc_1754E0B:                 End If
  loc_1754E0B:               End If
  loc_1754E0B:             End If
  loc_1754E0B:           End If
  loc_1754E0B:         End If
  loc_1754E0B:       End If
  loc_1754E0B:     End If
  loc_1754E0B:   End If
  loc_1754E0E: Next var_9C 'Integer
  loc_1754E19: var_27C = GRepFormName
  loc_1754E24: If (var_27C = "BudgetVariance") Then
  loc_1754E38:   Call 0.Method_arg_90 (var_94, var_98)
  loc_1754E40:   Call 0.Method_arg_24 (var_86)
  loc_1754E4C:   For var_280 =  To CInt(var_98): 1 = var_280 'Integer
  loc_1754E65:     Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754E6D:     Call 0.Method_arg_20 (var_A0)
  loc_1754E75:     Call 0.Method_arg_30 (var_A4)
  loc_1754EBB:     If (Ucase(CVar(var_A4)) = Ucase("ForBudget")) Then
  loc_1754ECA:       Set var_94 = var_A0(1)
  loc_1754ED0:       Call 0.Method_Proc_203_60_1755B300 (var_E6)
  loc_1754ED8:        = var_A0.Value
  loc_1754EEE:       If (CLng(var_E6) = 0) Then
  loc_1754F00:         var_B4 = CVar("'For Budget: " & global_108) 'String
  loc_1754F06:         var_C4 = Left(var_B4, &HFF)
  loc_1754F36:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754F3E:         Call 0.Method_arg_20 (var_A0)
  loc_1754F46:         Call 0.Method_arg_38 (CStr(Trim(var_C4) & "'"))
  loc_1754F63:       Else
  loc_1754F76:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_1754F7E:         Call 0.Method_arg_20 (var_A0)
  loc_1754F86:         Call 0.Method_arg_38 ("'For Budget:All'")
  loc_1754F92:       End If
  loc_1754F92:     End If
  loc_1754F95:   Next var_280 'Integer
  loc_1754F9D: Else
  loc_1754FA5:   If (var_27C = "Budget") Then
  loc_1754FBD:     Set var_94 = CVar(CLng(0))(2)
  loc_1754FC3:     Call {47E256A5-32E4-4379-9BCAFE55F7E81971}.DispID_41()
  loc_1754FE3:     var_A4 = CStr(var_B4)
  loc_1754FE7:     var_F0 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & var_A4
  loc_1754FF7:     unk_58337D.Execute var_A4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_C4, -1
  loc_1755002:     Set var_90 = var_A0
  loc_1755022:     var_98 = var_90.RecordCount
  loc_1755030:     If (var_98 > 0) Then
  loc_1755042:       var_94 = var_90.Fields
  loc_175505E:       var_130 = var_90.Fields
  loc_1755066:       var_24C = var_130.Item("ToDate")
  loc_1755093:       var_292 = CByte(DateDiff("m", CVar(var_94.Item("FromDate")), CVar(var_24C), 1, 1)) 'Byte
  loc_17550B2:       var_292 = CByte((CInt(var_292) + 1)) 'Byte
  loc_17550C7:       Call 0.Method_arg_90 (var_94, var_98, var_86)
  loc_17550CF:       Call 0.Method_arg_24 (1)
  loc_17550DB:       For var_296 =  To CInt(var_98):   var_A0 = var_296 'Integer
  loc_17550F4:         Call 0.Method_arg_90 (var_94, CLng(var_86))
  loc_17550FC:         Call 0.Method_arg_20 (var_94.Item("FromDate"))
  loc_1755104:         Call 0.Method_arg_30 (var_A4)
  loc_175511A:         var_2A8 = Ucase(CVar(var_A4)) 'Variant
  loc_175514A:         If (var_2A8 = Ucase("Year1")) Then
  loc_17551B6:           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17551BE:           Call 0.Method_arg_20 (CStr(1 & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy") & "'"), 1)
  loc_17551C6:           Call 0.Method_arg_38 ("'")
  loc_17551E7:         Else
  loc_1755209:           If (var_2A8 = Ucase("Year2")) Then
  loc_1755287:             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_175528F:             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(1), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1755297:             Call 0.Method_arg_38 ("'")
  loc_17552BA:           Else
  loc_17552DC:             If (var_2A8 = Ucase("Year3")) Then
  loc_175535A:               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755362:               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(2), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175536A:               Call 0.Method_arg_38 ("'")
  loc_175538D:             Else
  loc_17553AF:               If (var_2A8 = Ucase("Year4")) Then
  loc_175542D:                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755435:                 Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(3), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175543D:                 Call 0.Method_arg_38 ("'")
  loc_1755460:               Else
  loc_1755482:                 If (var_2A8 = Ucase("Year5")) Then
  loc_1755500:                   Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755508:                   Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(4), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1755510:                   Call 0.Method_arg_38 ("'")
  loc_1755533:                 Else
  loc_1755555:                   If (var_2A8 = Ucase("Year6")) Then
  loc_17555D3:                     Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17555DB:                     Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(5), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17555E3:                     Call 0.Method_arg_38 ("'")
  loc_1755606:                   Else
  loc_1755628:                     If (var_2A8 = Ucase("Year7")) Then
  loc_17556A6:                       Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17556AE:                       Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(6), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_17556B6:                       Call 0.Method_arg_38 ("'")
  loc_17556D9:                     Else
  loc_17556FB:                       If (var_2A8 = Ucase("Year8")) Then
  loc_1755779:                         Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755781:                         Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(7), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1755789:                         Call 0.Method_arg_38 ("'")
  loc_17557AC:                       Else
  loc_17557CE:                         If (var_2A8 = Ucase("Year9")) Then
  loc_175584C:                           Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755854:                           Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(8), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175585C:                           Call 0.Method_arg_38 ("'")
  loc_175587F:                         Else
  loc_17558A1:                           If (var_2A8 = Ucase("Year10")) Then
  loc_175591F:                             Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755927:                             Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(9), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_175592F:                             Call 0.Method_arg_38 ("'")
  loc_1755952:                           Else
  loc_1755974:                             If (var_2A8 = Ucase("Year11")) Then
  loc_17559F2:                               Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_17559FA:                               Call 0.Method_arg_20 (CStr(1 & Format(DateAdd("m", CDbl(&HA), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'"), 1)
  loc_1755A02:                               Call 0.Method_arg_38 ("'")
  loc_1755A25:                             Else
  loc_1755A47:                               If (var_2A8 = Ucase("Year12")) Then
  loc_1755AB1:                                 var_A4 = CStr(1 & Format(DateAdd("m", CDbl(&HB), CVar(var_90.Fields.Item("FromDate"))), "MMM/yy") & "'")
  loc_1755AC5:                                 Call 0.Method_arg_90 (var_130, CLng(var_86), var_24C)
  loc_1755ACD:                                 Call 0.Method_arg_20 (var_A4, 1)
  loc_1755AD5:                                 Call 0.Method_arg_38 ("'")
  loc_1755AF5:                               End If
  loc_1755AF5:                             End If
  loc_1755AF5:                           End If
  loc_1755AF5:                         End If
  loc_1755AF5:                       End If
  loc_1755AF5:                     End If
  loc_1755AF5:                   End If
  loc_1755AF5:                 End If
  loc_1755AF5:               End If
  loc_1755AF5:             End If
  loc_1755AF5:           End If
  loc_1755AF5:         End If
  loc_1755AF8:       Next var_296 'Integer
  loc_1755AFD:     End If
  loc_1755AFD:   End If
  loc_1755AFD: End If
  loc_1755B02: Set var_90 = Nothing
  loc_1755B05: Exit Sub
  loc_1755B06: ' Referenced from: 1753E08
  loc_1755B0C: Call 0.Method_arg_50 (var_A4)
  loc_1755B14: var_124 = "Formulas"
  loc_1755B21: Proc_183_57_104AA84(var_A4)
  loc_1755B2D: Exit Sub
End Sub

Public Sub Proc_203_61_1960E0C
  'Data Table: 583330
  Dim var_A8 As String
  Dim var_AC As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Long
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As DataGrid
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_154 As String
  Dim var_158 As String
  loc_195E100: On Error Goto loc_1960DE1
  loc_195E111: var_A0 = " Where (ACGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_195E125: var_A4 = " And (ACGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ACGROUP.LOGSITE_CODE='HO')"
  loc_195E139: var_90 = " Where (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_195E14D: var_94 = " And (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR SUBGROUP.LOGSITE_CODE='HO')"
  loc_195E161: var_98 = " Where (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_195E175: var_9C = " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & "' OR ViewSubgroup.LOGSITE_CODE='HO')"
  loc_195E187: (0).Visible = 
  loc_195E195: var_B0 = GRepFormName
  loc_195E1A0: If Not (var_B0 = "Led") Then
  loc_195E1AB:   If Not (var_B0 = "LedInt") Then
  loc_195E1B6:     If Not (var_B0 = "LedDeb") Then
  loc_195E1C1:       If Not (var_B0 = "MemLed") Then
  loc_195E1CC:         If Not (var_B0 = "LedCred") Then
  loc_195E1D7:           If (var_B0 = "AcCheckList") Then
  loc_195E1DA:           End If
  loc_195E1DA:         End If
  loc_195E1DA:       End If
  loc_195E1DA:     End If
  loc_195E1DA:   End If
  loc_195E1E6:   (&HFF).Visible = 
  loc_195E1F1:   var_88 = vbNullString
  loc_195E1FA:   var_B4 = GRepFormName
  loc_195E205:   If Not (var_B4 = "LedDeb") Then
  loc_195E210:     If (var_B4 = "MemLed") Then
  loc_195E213:     End If
  loc_195E21A:     var_88 = " WHERE SubGroup.Nature='Customer' AND A.Nature='Customer'" & var_94
  loc_195E224:     var_8C = " WHERE ViewSubgroup.Nature='Customer' " & var_9C
  loc_195E22A:   Else
  loc_195E232:     If (var_B4 = "LedCred") Then
  loc_195E23C:       var_88 = " WHERE SubGroup.Nature='Supplier' AND A.Nature='Supplier'" & var_94
  loc_195E246:       var_8C = " WHERE ViewSubgroup.Nature='Supplier' " & var_9C
  loc_195E24C:     Else
  loc_195E24F:       var_88 = var_90
  loc_195E255:       var_8C = var_98
  loc_195E258:     End If
  loc_195E258:   End If
  loc_195E25C:   Set var_B8 = ()
  loc_195E262:   var_C8 = CVar(CLng(0)) 'Long
  loc_195E267:   var_E8 = 0
  loc_195E270:   var_108 = "From Date           "
  loc_195E279:   LateIdCallSt
  loc_195E284:   var_C8 = CVar(CLng(0)) 'Long
  loc_195E289:   var_E8 = &H10E
  loc_195E295:   LateIdCallSt
  loc_195E2A0:   var_C8 = CVar(CLng(1)) 'Long
  loc_195E2A5:   var_E8 = 0
  loc_195E2AE:   var_108 = "To Date             "
  loc_195E2B7:   LateIdCallSt
  loc_195E2C2:   var_C8 = CVar(CLng(1)) 'Long
  loc_195E2C7:   var_E8 = &H10E
  loc_195E2D3:   LateIdCallSt
  loc_195E2DE:   var_C8 = CVar(CLng(2)) 'Long
  loc_195E2E3:   var_E8 = 0
  loc_195E2EC:   var_108 = "Account Selection   "
  loc_195E2F5:   LateIdCallSt
  loc_195E300:   var_C8 = CVar(CLng(2)) 'Long
  loc_195E305:   var_E8 = &H10E
  loc_195E311:   LateIdCallSt
  loc_195E31C:   var_C8 = CVar(CLng(3)) 'Long
  loc_195E321:   var_E8 = 0
  loc_195E32A:   var_108 = "Form Account        "
  loc_195E333:   LateIdCallSt
  loc_195E33E:   var_C8 = CVar(CLng(3)) 'Long
  loc_195E343:   var_E8 = 0
  loc_195E34F:   LateIdCallSt
  loc_195E35A:   var_C8 = CVar(CLng(4)) 'Long
  loc_195E35F:   var_E8 = 0
  loc_195E368:   var_108 = "To Account          "
  loc_195E371:   LateIdCallSt
  loc_195E37C:   var_C8 = CVar(CLng(4)) 'Long
  loc_195E381:   var_E8 = 0
  loc_195E38D:   LateIdCallSt
  loc_195E398:   var_C8 = CVar(CLng(5)) 'Long
  loc_195E39D:   var_E8 = 0
  loc_195E3A6:   var_108 = "To Account          "
  loc_195E3AF:   LateIdCallSt
  loc_195E3BA:   var_C8 = CVar(CLng(5)) 'Long
  loc_195E3BF:   var_E8 = 0
  loc_195E3CB:   LateIdCallSt
  loc_195E3D6:   var_C8 = CVar(CLng(0)) 'Long
  loc_195E3DB:   var_E8 = 1
  loc_195E3E9:   var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195E3F0:   LateIdCallSt
  loc_195E3FE:   var_C8 = CVar(CLng(1)) 'Long
  loc_195E403:   var_E8 = 1
  loc_195E411:   var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195E418:   LateIdCallSt
  loc_195E426:   var_C8 = CVar(CLng(2)) 'Long
  loc_195E42B:   var_E8 = 1
  loc_195E43D:   LateIdCallSt
  loc_195E447:   Set var_B8 = Nothing 
  loc_195E455:   Set var_AC = var_B8(10)
  loc_195E46C:   DGSite.DispID_FFFFFE00.ColumnLabelCount = "Selected"
  loc_195E482:   global_142 = CInt(0)
  loc_195E495:   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195E4CF:   Set var_AC = 0(&H7D0)
  loc_195E4D5:   LateIdCallSt
  loc_195E4F6:   Set var_AC = 1(&H1388)
  loc_195E4FC:   LateIdCallSt
  loc_195E507:   var_C8 = 0
  loc_195E526:   var_E8 = 1
  loc_195E533:   Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195E54D:   var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195E55C:   1("Selected").Width = CInt(2)
  loc_195E57B:   var_128 = var_E8(DGSite.DispID_A).Width
  loc_195E58A:   Call 0.Method_Me0 (var_144, var_128, var_C8, var_B8, var_128)
  loc_195E59C:   var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195E5AB:   var_E8(var_C8).Left = var_C8
  loc_195E5C6:   Set var_AC = var_B8(CVar(CDbl(&H4B)))
  loc_195E5CC:   var_AC.Top = var_128
  loc_195E5F0:   Me.var_AC.CursorLocation = 3
  loc_195E613:   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_195E624:   Me.Open CVar(" And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_195E638:   CVarUnk
  loc_195E63D:   VerifyVarObj
  loc_195E643:   Set var_AC = 1(New)
  loc_195E649:   LateIdStAd
  loc_195E660:   var_144 = Me.RecordCount
  loc_195E66E:   If (var_144 > 0) Then
  loc_195E674:     var_D8 = CVar(CLng(3)) 'Long
  loc_195E6B8:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195E6BE:     LateIdCallSt
  loc_195E6D9:     var_D8 = CVar(CLng(3)) 'Long
  loc_195E71D:     Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_195E723:     LateIdCallSt
  loc_195E73E:     var_D8 = CVar(CLng(4)) 'Long
  loc_195E782:     Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195E788:     LateIdCallSt
  loc_195E7A3:     var_D8 = CVar(CLng(4)) 'Long
  loc_195E7CE:     var_12C = Me.Fields.Item("Code")
  loc_195E7E7:     Set var_140 = 2(CVar(CStr(var_12C.Value)))
  loc_195E7ED:     LateIdCallSt
  loc_195E805:   End If
  loc_195E821:   Me.CursorLocation = 3
  loc_195E838:   var_D8 = CVar(MemVar_1F921DC) 'Address
  loc_195E849:   Me.Open "Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' order by GroupName", var_D8, 0
  loc_195E857:   CVarUnk
  loc_195E85C:   VerifyVarObj
  loc_195E862:   Set var_AC = 1(New)
  loc_195E868:   LateIdStAd
  loc_195E87D:   var_A8 = "SELECT '' as O,NAME as Account,SUBCODE as AccId,GNAME AS GroupName,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,''))+RTRIM(ISNULL(CityName,'')) AS Address From ViewSubgroup " & var_8C
  loc_195E88D:   Call Proc_203_58_11E8208(1, " And (ViewSubgroup.LOGSITE_CODE='" & MemVar_1F92078 & " order by name")
  loc_195E8A7:   Call Proc_203_58_11E8208(2, "SELECT '' as O,GroupName,GroupCode as Code from AcGroup Order by GroupName")
  loc_195E8C2:   var_AC(CVar(CDbl(1500))).Height = -1
  loc_195E8D8:   Set var_AC = var_12C(2)
  loc_195E8DE:   Call 0.Method_Proc_203_61_1960E0C0 (False, var_140, var_D8, var_140, var_D8, var_140)
  loc_195E8E6:   var_12C.Visible = var_D8
  loc_195E903:   Call 0.Method_Proc_203_61_1960E0C0 (0, var_140, var_D8)
  loc_195E90B:   var_12C.Visible = var_12C(2)
  loc_195E922:   If (GRepFormName = "AcCheckList") Then
  loc_195E933:     Call Proc_203_58_11E8208(3, "SELECT DISTINCT '' as O,Description AS VrType,V_TYPE as Code from Voucher_type Order by Description")
  loc_195E93B:   End If
  loc_195E93E: Else
  loc_195E946:   If (var_B0 = "Annexure") Then
  loc_195E94D:     Set var_150 = (-1)
  loc_195E953:     var_C8 = CVar(CLng(0)) 'Long
  loc_195E958:     var_E8 = 0
  loc_195E961:     var_108 = "From Date        "
  loc_195E96A:     LateIdCallSt
  loc_195E975:     var_C8 = CVar(CLng(0)) 'Long
  loc_195E97A:     var_E8 = &H10E
  loc_195E986:     LateIdCallSt
  loc_195E991:     var_C8 = CVar(CLng(1)) 'Long
  loc_195E996:     var_E8 = 0
  loc_195E99F:     var_108 = "UpTo Date        "
  loc_195E9A8:     LateIdCallSt
  loc_195E9B3:     var_C8 = CVar(CLng(1)) 'Long
  loc_195E9B8:     var_E8 = &H10E
  loc_195E9C4:     LateIdCallSt
  loc_195E9CF:     var_C8 = CVar(CLng(2)) 'Long
  loc_195E9D4:     var_E8 = 0
  loc_195E9DD:     var_108 = "For Account      "
  loc_195E9E6:     LateIdCallSt
  loc_195E9F1:     var_C8 = CVar(CLng(2)) 'Long
  loc_195E9F6:     var_E8 = &H10E
  loc_195EA02:     LateIdCallSt
  loc_195EA0D:     var_C8 = CVar(CLng(3)) 'Long
  loc_195EA12:     var_E8 = 0
  loc_195EA1B:     var_108 = "Amount Slab Wise "
  loc_195EA24:     LateIdCallSt
  loc_195EA2F:     var_C8 = CVar(CLng(3)) 'Long
  loc_195EA34:     var_E8 = &H10E
  loc_195EA40:     LateIdCallSt
  loc_195EA4B:     var_C8 = CVar(CLng(0)) 'Long
  loc_195EA50:     var_E8 = 1
  loc_195EA5E:     var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195EA65:     LateIdCallSt
  loc_195EA73:     var_C8 = CVar(CLng(1)) 'Long
  loc_195EA78:     var_E8 = 1
  loc_195EA86:     var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195EA8D:     LateIdCallSt
  loc_195EA9B:     var_C8 = CVar(CLng(3)) 'Long
  loc_195EAA0:     var_E8 = 1
  loc_195EAA9:     var_108 = "No"
  loc_195EAB2:     LateIdCallSt
  loc_195EABC:     Set var_150 = Nothing 
  loc_195EAC7:     global_142 = CInt(0)
  loc_195EADA:     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195EB14:     Set var_AC = 0(&H7D0)
  loc_195EB1A:     LateIdCallSt
  loc_195EB3B:     Set var_AC = 1(&HDAC)
  loc_195EB41:     LateIdCallSt
  loc_195EB4C:     var_C8 = 0
  loc_195EB6B:     var_E8 = 1
  loc_195EB78:     Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195EB92:     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195EBA1:     1(var_108).Width = CInt(3)
  loc_195EBC0:     var_128 = var_150(DGSite.DispID_A).Width
  loc_195EBCF:     Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195EBE1:     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195EBF0:     var_150(var_C8).Left = var_128
  loc_195EC02:     var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195EC0B:     Set var_AC = var_E8(var_C8)
  loc_195EC11:     var_AC.Top = var_C8
  loc_195EC35:     Me.var_AC.CursorLocation = 3
  loc_195EC5F:     var_128 = CVar("Select GROUPCODE AS Code,GROUPNAME AS NAME From AcGroup WHERE AliasYN<> 'Y' " & var_A4 & " order by GroupName") 'String
  loc_195EC69:     Me.Open var_128, CVar(MemVar_1F921DC), 0
  loc_195EC7D:     CVarUnk
  loc_195EC82:     VerifyVarObj
  loc_195EC88:     Set var_AC = 1(New)
  loc_195EC8E:     LateIdStAd
  loc_195ECA5:     var_144 = Me.RecordCount
  loc_195ECB3:     If (var_144 > 0) Then
  loc_195ECB9:       var_D8 = CVar(CLng(2)) 'Long
  loc_195ECFD:       Set var_140 = 1(CVar(CStr(Me.Fields.Item("Name").Value)))
  loc_195ED03:       LateIdCallSt
  loc_195ED1E:       var_D8 = CVar(CLng(2)) 'Long
  loc_195ED62:       Set var_140 = 2(CVar(CStr(Me.Fields.Item("Code").Value)))
  loc_195ED68:       LateIdCallSt
  loc_195ED98:       Set var_AC = CVar(CLng(2))(2)
  loc_195EDBB:       var_158 = "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where GROUPCODE='" & CStr(DGSite.DispID_41) & "' " & var_94
  loc_195EDCB:       Call Proc_203_58_11E8208(1, var_158 & " Order by Name")
  loc_195EDE3:     End If
  loc_195EDE6:   Else
  loc_195EDEE:     If (var_B0 = "DetailedTrial") Then
  loc_195EDF5:       Set var_160 = var_D8(var_140)
  loc_195EDFB:       var_C8 = CVar(CLng(0)) 'Long
  loc_195EE00:       var_E8 = 0
  loc_195EE09:       var_108 = "From Date      "
  loc_195EE12:       LateIdCallSt
  loc_195EE1D:       var_C8 = CVar(CLng(0)) 'Long
  loc_195EE22:       var_E8 = &H10E
  loc_195EE2E:       LateIdCallSt
  loc_195EE39:       var_C8 = CVar(CLng(1)) 'Long
  loc_195EE3E:       var_E8 = 0
  loc_195EE47:       var_108 = "UpTo Date      "
  loc_195EE50:       LateIdCallSt
  loc_195EE5B:       var_C8 = CVar(CLng(1)) 'Long
  loc_195EE60:       var_E8 = &H10E
  loc_195EE6C:       LateIdCallSt
  loc_195EE77:       var_C8 = CVar(CLng(0)) 'Long
  loc_195EE7C:       var_E8 = 1
  loc_195EE8A:       var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195EE91:       LateIdCallSt
  loc_195EE9F:       var_C8 = CVar(CLng(1)) 'Long
  loc_195EEA4:       var_E8 = 1
  loc_195EEB2:       var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195EEB9:       LateIdCallSt
  loc_195EEC7:       var_C8 = CVar(CLng(2)) 'Long
  loc_195EECC:       var_E8 = 0
  loc_195EED5:       var_108 = "With Op.Bal.   "
  loc_195EEDE:       LateIdCallSt
  loc_195EEE9:       var_C8 = CVar(CLng(2)) 'Long
  loc_195EEEE:       var_E8 = &H10E
  loc_195EEFA:       LateIdCallSt
  loc_195EF05:       var_C8 = CVar(CLng(2)) 'Long
  loc_195EF0A:       var_E8 = 1
  loc_195EF13:       var_108 = "Yes"
  loc_195EF1C:       LateIdCallSt
  loc_195EF27:       var_C8 = CVar(CLng(3)) 'Long
  loc_195EF2C:       var_E8 = 0
  loc_195EF35:       var_108 = "Datailed       "
  loc_195EF3E:       LateIdCallSt
  loc_195EF49:       var_C8 = CVar(CLng(3)) 'Long
  loc_195EF4E:       var_E8 = &H10E
  loc_195EF5A:       LateIdCallSt
  loc_195EF65:       var_C8 = CVar(CLng(3)) 'Long
  loc_195EF6A:       var_E8 = 1
  loc_195EF73:       var_108 = "Yes"
  loc_195EF7C:       LateIdCallSt
  loc_195EF86:       Set var_160 = Nothing 
  loc_195EF91:       global_142 = CInt(0)
  loc_195EFA4:       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195EFDE:       Set var_AC = 0(&H5DC)
  loc_195EFE4:       LateIdCallSt
  loc_195F005:       Set var_AC = 1(&H5DC)
  loc_195F00B:       LateIdCallSt
  loc_195F016:       var_C8 = 0
  loc_195F035:       var_E8 = 1
  loc_195F042:       Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F05C:       var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F06B:       0(var_108).Width = CInt(3)
  loc_195F08A:       var_128 = var_160(DGSite.DispID_A).Width
  loc_195F099:       Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195F0AB:       var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F0BA:       var_160(var_C8).Left = var_E8
  loc_195F0DB:       CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_160
  loc_195F0E6:     Else
  loc_195F0EE:       If (var_B0 = "DayBook") Then
  loc_195F0F5:         Set var_164 = ()
  loc_195F0FB:         var_C8 = CVar(CLng(0)) 'Long
  loc_195F100:         var_E8 = 0
  loc_195F109:         var_108 = "From Date         "
  loc_195F112:         LateIdCallSt
  loc_195F11D:         var_C8 = CVar(CLng(0)) 'Long
  loc_195F122:         var_E8 = &H10E
  loc_195F12E:         LateIdCallSt
  loc_195F139:         var_C8 = CVar(CLng(1)) 'Long
  loc_195F13E:         var_E8 = 0
  loc_195F147:         var_108 = "UpTo Date         "
  loc_195F150:         LateIdCallSt
  loc_195F15B:         var_C8 = CVar(CLng(1)) 'Long
  loc_195F160:         var_E8 = &H10E
  loc_195F16C:         LateIdCallSt
  loc_195F177:         var_C8 = CVar(CLng(2)) 'Long
  loc_195F17C:         var_E8 = 0
  loc_195F185:         var_108 = "Voucher Wise Total"
  loc_195F18E:         LateIdCallSt
  loc_195F199:         var_C8 = CVar(CLng(2)) 'Long
  loc_195F19E:         var_E8 = &H10E
  loc_195F1AA:         LateIdCallSt
  loc_195F1B5:         var_C8 = CVar(CLng(0)) 'Long
  loc_195F1BA:         var_E8 = 1
  loc_195F1C8:         var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195F1CF:         LateIdCallSt
  loc_195F1DD:         var_C8 = CVar(CLng(1)) 'Long
  loc_195F1E2:         var_E8 = 1
  loc_195F1F0:         var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195F1F7:         LateIdCallSt
  loc_195F205:         var_C8 = CVar(CLng(2)) 'Long
  loc_195F20A:         var_E8 = 1
  loc_195F213:         var_108 = "No"
  loc_195F21C:         LateIdCallSt
  loc_195F226:         Set var_164 = Nothing 
  loc_195F240:         Set var_AC = 0(&H9C4)
  loc_195F246:         LateIdCallSt
  loc_195F267:         Set var_AC = 1(&H5DC)
  loc_195F26D:         LateIdCallSt
  loc_195F278:         var_C8 = 0
  loc_195F297:         var_E8 = 1
  loc_195F2A4:         Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F2BE:         var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F2CD:         var_164(var_108).Width = var_108
  loc_195F2EC:         var_128 = var_C8(var_E8).Width
  loc_195F2FB:         Call 0.Method_Me0 (var_144, var_128, var_164, var_128, var_E8)
  loc_195F30D:         var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F31C:         var_C8(var_C8).Left = var_164
  loc_195F33D:         var_128(CVar(CDbl(&H4B))).Top = var_E8
  loc_195F348:         var_C8 = CVar(CLng(3)) 'Long
  loc_195F360:         Set var_AC = 0("For Site")
  loc_195F366:         LateIdCallSt
  loc_195F386:         Set var_AC = CVar(CLng(3))(&H10E)
  loc_195F38C:         LateIdCallSt
  loc_195F39A:         var_C8 = CVar(CLng(3)) 'Long
  loc_195F3B2:         Set var_AC = 1(vbNullString)
  loc_195F3B8:         LateIdCallSt
  loc_195F3CD:         Set global_80 = New 
  loc_195F3DF:         Me.Recordset15.CursorLocation = 3
  loc_195F407:         Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F921DC), 0
  loc_195F415:         CVarUnk
  loc_195F41A:         VerifyVarObj
  loc_195F420:         Set var_AC = Me.DGSite
  loc_195F426:         LateIdStAd
  loc_195F43B:         global_142 = CInt(0)
  loc_195F44E:         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F463:         global_140 = CInt(3)
  loc_195F46E:         global_144 = 0
  loc_195F475:       Else
  loc_195F47D:         If Not (var_B0 = "CashBook") Then
  loc_195F488:           If Not (var_B0 = "BankBook") Then
  loc_195F493:             If (var_B0 = "RozNamcha") Then
  loc_195F496:             End If
  loc_195F496:           End If
  loc_195F499:           var_88 = vbNullString
  loc_195F4A2:           var_168 = GRepFormName
  loc_195F4AD:           If Not (var_168 = "CashBook") Then
  loc_195F4B8:             If (var_168 = "RozNamcha") Then
  loc_195F4BB:             End If
  loc_195F4C2:             var_88 = " WHERE SubGroup.Nature='Cash' AND A.Nature='Cash'" & var_94
  loc_195F4C8:           Else
  loc_195F4D0:             If (var_168 = "BankBook") Then
  loc_195F4DA:               var_88 = " WHERE SubGroup.Nature='Bank' AND A.Nature='Bank'" & var_94
  loc_195F4DD:             End If
  loc_195F4DD:           End If
  loc_195F4E1:           Set var_16C = global_140(global_144)
  loc_195F4E7:           var_C8 = CVar(CLng(0)) 'Long
  loc_195F4EC:           var_E8 = 0
  loc_195F4F5:           var_108 = "From Date        "
  loc_195F4FE:           LateIdCallSt
  loc_195F509:           var_C8 = CVar(CLng(0)) 'Long
  loc_195F50E:           var_E8 = &H10E
  loc_195F51A:           LateIdCallSt
  loc_195F525:           var_C8 = CVar(CLng(1)) 'Long
  loc_195F52A:           var_E8 = 0
  loc_195F533:           var_108 = "UpTo Date        "
  loc_195F53C:           LateIdCallSt
  loc_195F547:           var_C8 = CVar(CLng(1)) 'Long
  loc_195F54C:           var_E8 = &H10E
  loc_195F558:           LateIdCallSt
  loc_195F563:           var_C8 = CVar(CLng(2)) 'Long
  loc_195F568:           var_E8 = 0
  loc_195F571:           var_108 = "As Per Detail    "
  loc_195F57A:           LateIdCallSt
  loc_195F585:           var_C8 = CVar(CLng(2)) 'Long
  loc_195F58A:           var_E8 = &H10E
  loc_195F596:           LateIdCallSt
  loc_195F5A1:           var_C8 = CVar(CLng(3)) 'Long
  loc_195F5A6:           var_E8 = 0
  loc_195F5AF:           var_108 = "Starting Page No."
  loc_195F5B8:           LateIdCallSt
  loc_195F5C3:           var_C8 = CVar(CLng(3)) 'Long
  loc_195F5C8:           var_E8 = &H10E
  loc_195F5D4:           LateIdCallSt
  loc_195F5DF:           var_C8 = CVar(CLng(4)) 'Long
  loc_195F5E4:           var_E8 = 0
  loc_195F5ED:           var_108 = "For Account      "
  loc_195F5F6:           LateIdCallSt
  loc_195F601:           var_C8 = CVar(CLng(4)) 'Long
  loc_195F606:           var_E8 = &H10E
  loc_195F612:           LateIdCallSt
  loc_195F61D:           var_C8 = CVar(CLng(0)) 'Long
  loc_195F622:           var_E8 = 1
  loc_195F630:           var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195F637:           LateIdCallSt
  loc_195F645:           var_C8 = CVar(CLng(1)) 'Long
  loc_195F64A:           var_E8 = 1
  loc_195F658:           var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195F65F:           LateIdCallSt
  loc_195F66D:           var_C8 = CVar(CLng(2)) 'Long
  loc_195F672:           var_E8 = 1
  loc_195F67B:           var_108 = "No"
  loc_195F684:           LateIdCallSt
  loc_195F68F:           var_C8 = CVar(CLng(3)) 'Long
  loc_195F694:           var_E8 = 1
  loc_195F69D:           var_108 = "1"
  loc_195F6A6:           LateIdCallSt
  loc_195F6B1:           var_C8 = CVar(CLng(4)) 'Long
  loc_195F6B6:           var_E8 = 1
  loc_195F6BF:           var_108 = vbNullString
  loc_195F6C8:           LateIdCallSt
  loc_195F6D2:           Set var_16C = Nothing 
  loc_195F6DD:           global_142 = CInt(0)
  loc_195F6F0:           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195F72A:           Set var_AC = 0(&H7D0)
  loc_195F730:           LateIdCallSt
  loc_195F751:           Set var_AC = 1(&HDAC)
  loc_195F757:           LateIdCallSt
  loc_195F762:           var_C8 = 0
  loc_195F781:           var_E8 = 1
  loc_195F78E:           Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195F7A8:           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195F7B7:           0(var_108).Width = CInt(4)
  loc_195F7D6:           var_128 = var_16C(DGSite.DispID_A).Width
  loc_195F7E5:           Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195F7F7:           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195F806:           var_16C(var_C8).Left = var_108
  loc_195F818:           var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195F821:           Set var_AC = var_E8(var_C8)
  loc_195F827:           var_AC.Top = var_C8
  loc_195F84B:           Me.var_AC.CursorLocation = 3
  loc_195F86E:           var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_88
  loc_195F87F:           Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_195F893:           CVarUnk
  loc_195F898:           VerifyVarObj
  loc_195F89E:           Set var_AC = 1(New)
  loc_195F8A4:           LateIdStAd
  loc_195F8B5:         Else
  loc_195F8BD:           If Not (var_B0 = "JournalBook") Then
  loc_195F8C8:             If Not (var_B0 = "DailySumm") Then
  loc_195F8D3:               If Not (var_B0 = "Clg") Then
  loc_195F8DE:                 If Not (var_B0 = "ClgNot") Then
  loc_195F8E9:                   If (var_B0 = "JournalBookLog") Then
  loc_195F8EC:                   End If
  loc_195F8EC:                 End If
  loc_195F8EC:               End If
  loc_195F8EC:             End If
  loc_195F8F0:             Set var_170 = -1(var_AC)
  loc_195F8F6:             var_C8 = CVar(CLng(0)) 'Long
  loc_195F8FB:             var_E8 = 0
  loc_195F904:             var_108 = "From Date   "
  loc_195F90D:             LateIdCallSt
  loc_195F918:             var_C8 = CVar(CLng(0)) 'Long
  loc_195F91D:             var_E8 = &H10E
  loc_195F929:             LateIdCallSt
  loc_195F934:             var_C8 = CVar(CLng(1)) 'Long
  loc_195F939:             var_E8 = 0
  loc_195F942:             var_108 = "UpTo Date   "
  loc_195F94B:             LateIdCallSt
  loc_195F956:             var_C8 = CVar(CLng(1)) 'Long
  loc_195F95B:             var_E8 = &H10E
  loc_195F967:             LateIdCallSt
  loc_195F972:             var_C8 = CVar(CLng(0)) 'Long
  loc_195F977:             var_E8 = 1
  loc_195F985:             var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_195F98C:             LateIdCallSt
  loc_195F99A:             var_C8 = CVar(CLng(1)) 'Long
  loc_195F99F:             var_E8 = 1
  loc_195F9AD:             var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_195F9B4:             LateIdCallSt
  loc_195F9C2:             var_C8 = CVar(CLng(2)) 'Long
  loc_195F9C7:             var_E8 = 1
  loc_195F9D0:             var_108 = vbNullString
  loc_195F9D9:             LateIdCallSt
  loc_195F9E3:             Set var_170 = Nothing 
  loc_195F9EE:             global_142 = CInt(0)
  loc_195FA01:             Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195FA3B:             Set var_AC = 0(&H6A4)
  loc_195FA41:             LateIdCallSt
  loc_195FA62:             Set var_AC = 1(&H9C4)
  loc_195FA68:             LateIdCallSt
  loc_195FA73:             var_C8 = 0
  loc_195FA92:             var_E8 = 1
  loc_195FA9F:             Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_195FAB9:             var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_195FAC8:             0(var_108).Width = CInt(2)
  loc_195FAE7:             var_128 = var_170(DGSite.DispID_A).Width
  loc_195FAF6:             Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_195FB08:             var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_195FB17:             var_170(var_C8).Left = var_128
  loc_195FB29:             var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_195FB38:             var_E8(var_C8).Top = var_C8
  loc_195FB46:             var_174 = GRepFormName
  loc_195FB51:             If Not (var_174 = "JournalBook") Then
  loc_195FB5C:               If (var_174 = "JournalBookLog") Then
  loc_195FB5F:               End If
  loc_195FB7B:               Me.CursorLocation = 3
  loc_195FB83:               var_C8 = CVar(CLng(2)) 'Long
  loc_195FB9B:               Set var_AC = 0("Voucher Type")
  loc_195FBA1:               LateIdCallSt
  loc_195FBC1:               Set var_AC = CVar(CLng(2))(&H10E)
  loc_195FBC7:               LateIdCallSt
  loc_195FBD5:               var_C8 = CVar(CLng(3)) 'Long
  loc_195FBED:               Set var_AC = 0("Day Total")
  loc_195FBF3:               LateIdCallSt
  loc_195FC13:               Set var_AC = CVar(CLng(3))(&H10E)
  loc_195FC19:               LateIdCallSt
  loc_195FC27:               var_C8 = CVar(CLng(3)) 'Long
  loc_195FC3F:               Set var_AC = 1("No")
  loc_195FC45:               LateIdCallSt
  loc_195FC57:               global_142 = CInt(0)
  loc_195FC6A:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195FC7F:               global_140 = CInt(3)
  loc_195FC8A:               global_144 = 0
  loc_195FCA5:               var_C8 = "Select DISTINCT V_TYPE AS Code,RTRIM(LTRIM(Description))+' Book' AS Name from Voucher_type WHERE Category='FA' AND V_TYPE<>'F_AO' order by RTRIM(LTRIM(Description))+' Book'"
  loc_195FCB1:               Me.Open 0, CVar(MemVar_1F921DC), 0
  loc_195FCBF:               CVarUnk
  loc_195FCC4:               VerifyVarObj
  loc_195FCCA:               Set var_AC = 1(New)
  loc_195FCD0:               LateIdStAd
  loc_195FCE1:               var_C8 = CVar(CLng(4)) 'Long
  loc_195FCF9:               Set var_AC = 0("For Site")
  loc_195FCFF:               LateIdCallSt
  loc_195FD1F:               Set var_AC = CVar(CLng(4))(&H10E)
  loc_195FD25:               LateIdCallSt
  loc_195FD33:               var_C8 = CVar(CLng(4)) 'Long
  loc_195FD4B:               Set var_AC = 1(vbNullString)
  loc_195FD51:               LateIdCallSt
  loc_195FD66:               Set global_80 = New 
  loc_195FD78:               Me.Recordset15.CursorLocation = 3
  loc_195FDA0:               Me.Open "Select Site_Code AS Code,Site_Desc AS NAME From Site Order by Site_Desc", CVar(MemVar_1F921DC), 0
  loc_195FDAE:               CVarUnk
  loc_195FDB3:               VerifyVarObj
  loc_195FDB9:               Set var_AC = Me.DGSite
  loc_195FDBF:               LateIdStAd
  loc_195FDD4:               global_142 = CInt(0)
  loc_195FDE7:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_195FDFC:               global_140 = CInt(4)
  loc_195FE07:               global_144 = 0
  loc_195FE0E:             Else
  loc_195FE16:               If (var_174 = "DailySumm") Then
  loc_195FE35:                 Me.Recordset15.CursorLocation = 3
  loc_195FE3D:                 var_C8 = CVar(CLng(2)) 'Long
  loc_195FE55:                 Set var_AC = 0("For Account")
  loc_195FE5B:                 LateIdCallSt
  loc_195FE7B:                 Set var_AC = CVar(CLng(2))(&H10E)
  loc_195FE81:                 LateIdCallSt
  loc_195FEAA:                 var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE " & var_90
  loc_195FEBB:                 Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_195FECF:                 CVarUnk
  loc_195FED4:                 VerifyVarObj
  loc_195FEDA:                 Set var_AC = 1(New)
  loc_195FEE0:                 LateIdStAd
  loc_195FEF1:               Else
  loc_195FEF9:                 If Not (var_174 = "Clg") Then
  loc_195FF04:                   If (var_174 = "ClgNot") Then
  loc_195FF07:                   End If
  loc_195FF23:                   Me.CursorLocation = 3
  loc_195FF2B:                   var_C8 = CVar(CLng(2)) 'Long
  loc_195FF43:                   Set var_AC = 0("For Account")
  loc_195FF49:                   LateIdCallSt
  loc_195FF69:                   Set var_AC = CVar(CLng(2))(&H10E)
  loc_195FF6F:                   LateIdCallSt
  loc_195FF98:                   var_A8 = "Select SubCode AS Code,Name,RTRIM(ISNULL(ADD1,''))+','+RTRIM(ISNULL(ADD2,''))+RTRIM(ISNULL(ADD3,'')) AS Address,CityName,SubGroup.GroupCode,A.GROUPNAME From (SubGroup Left Join City C on C.CityCode=SubGroup.CityCode) LEFT JOIN ACGROUP A ON A.GROUPCODE=SubGroup.GROUPCODE Where SubGroup.nature='Bank' AND A.nature='Bank'  " & var_94
  loc_195FFA9:                   Me.Open CVar(CStr(DGSite.DispID_41) & " order by SubGroup.Name"), CVar(MemVar_1F921DC), 0
  loc_195FFBD:                   CVarUnk
  loc_195FFC2:                   VerifyVarObj
  loc_195FFC8:                   Set var_AC = 1(New)
  loc_195FFCE:                   LateIdStAd
  loc_195FFDC:                 End If
  loc_195FFDC:               End If
  loc_195FFDC:             End If
  loc_195FFDF:           Else
  loc_195FFE7:             If (var_B0 = "BankReg") Then
  loc_195FFEE:               Set var_178 = -1(var_AC)
  loc_195FFF4:               var_C8 = CVar(CLng(0)) 'Long
  loc_195FFF9:               var_E8 = 0
  loc_1960002:               var_108 = "From Date"
  loc_196000B:               LateIdCallSt
  loc_1960016:               var_C8 = CVar(CLng(0)) 'Long
  loc_196001B:               var_E8 = &H10E
  loc_1960027:               LateIdCallSt
  loc_1960032:               var_C8 = CVar(CLng(1)) 'Long
  loc_1960037:               var_E8 = 0
  loc_1960040:               var_108 = "To Date  "
  loc_1960049:               LateIdCallSt
  loc_1960054:               var_C8 = CVar(CLng(1)) 'Long
  loc_1960059:               var_E8 = &H10E
  loc_1960065:               LateIdCallSt
  loc_1960070:               var_C8 = CVar(CLng(2)) 'Long
  loc_1960075:               var_E8 = 0
  loc_196007E:               var_108 = "For Dr/Cr"
  loc_1960087:               LateIdCallSt
  loc_1960092:               var_C8 = CVar(CLng(2)) 'Long
  loc_1960097:               var_E8 = &H10E
  loc_19600A3:               LateIdCallSt
  loc_19600AE:               var_C8 = CVar(CLng(0)) 'Long
  loc_19600B3:               var_E8 = 1
  loc_19600C1:               var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_19600C8:               LateIdCallSt
  loc_19600D6:               var_C8 = CVar(CLng(1)) 'Long
  loc_19600DB:               var_E8 = 1
  loc_19600E9:               var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19600F0:               LateIdCallSt
  loc_19600FE:               var_C8 = CVar(CLng(2)) 'Long
  loc_1960103:               var_E8 = 1
  loc_196010C:               var_108 = "All"
  loc_1960115:               LateIdCallSt
  loc_196011F:               Set var_178 = Nothing 
  loc_196012A:               global_142 = CInt(0)
  loc_196013D:               Set var_AC = global_142(CVar(CLng(global_142)))
  loc_1960177:               Set var_AC = 0(&H4B0)
  loc_196017D:               LateIdCallSt
  loc_196019E:               Set var_AC = 1(&H5DC)
  loc_19601A4:               LateIdCallSt
  loc_19601AF:               var_C8 = 0
  loc_19601CE:               var_E8 = 1
  loc_19601DB:               Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_19601F5:               var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_1960204:               1(var_108).Width = CInt(2)
  loc_1960223:               var_128 = var_178(DGSite.DispID_A).Width
  loc_1960232:               Call 0.Method_Me0 (var_144, var_128, var_108, var_E8, var_C8)
  loc_1960244:               var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_1960253:               var_178(var_C8).Left = var_128
  loc_1960265:               var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_1960274:               var_E8(var_C8).Top = var_C8
  loc_1960293:               Call Proc_203_58_11E8208(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP where nature='Bank' " & var_94 & " order by name ")
  loc_19602A2:             Else
  loc_19602AA:               If Not (var_B0 = "NonTrans") Then
  loc_19602B5:                 If (var_B0 = "CONTROLLED") Then
  loc_19602B8:                 End If
  loc_19602BC:                 Set var_17C = ()
  loc_19602C2:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19602C7:                 var_E8 = 0
  loc_19602D0:                 var_108 = "From Date"
  loc_19602D9:                 LateIdCallSt
  loc_19602E4:                 var_C8 = CVar(CLng(0)) 'Long
  loc_19602E9:                 var_E8 = &H10E
  loc_19602F5:                 LateIdCallSt
  loc_1960300:                 var_C8 = CVar(CLng(1)) 'Long
  loc_1960305:                 var_E8 = 0
  loc_196030E:                 var_108 = "To Date  "
  loc_1960317:                 LateIdCallSt
  loc_1960322:                 var_C8 = CVar(CLng(1)) 'Long
  loc_1960327:                 var_E8 = &H10E
  loc_1960333:                 LateIdCallSt
  loc_196033E:                 var_C8 = CVar(CLng(0)) 'Long
  loc_1960343:                 var_E8 = 1
  loc_1960351:                 var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_1960358:                 LateIdCallSt
  loc_1960366:                 var_C8 = CVar(CLng(1)) 'Long
  loc_196036B:                 var_E8 = 1
  loc_1960379:                 var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1960380:                 LateIdCallSt
  loc_196038D:                 Set var_17C = Nothing 
  loc_1960398:                 global_142 = CInt(0)
  loc_19603AB:                 Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19603E5:                 Set var_AC = 0(&H4B0)
  loc_19603EB:                 LateIdCallSt
  loc_196040C:                 Set var_AC = 1(&H5DC)
  loc_1960412:                 LateIdCallSt
  loc_196041D:                 var_C8 = 0
  loc_196043C:                 var_E8 = 1
  loc_1960449:                 Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_1960463:                 var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_1960472:                 1(var_108).Width = CInt(1)
  loc_1960491:                 var_128 = var_17C(DGSite.DispID_A).Width
  loc_19604A0:                 Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19604B2:                 var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19604C1:                 var_17C(var_C8).Left = var_128
  loc_19604D3:                 var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_19604E2:                 var_E8(var_C8).Top = var_C8
  loc_19604F1:                 var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup WHERE AliasYN<> 'Y' AND (LOGSITE_CODE='" & MemVar_1F92078
  loc_1960501:                 Call Proc_203_58_11E8208(1, var_A8 & "' OR LOGSITE_CODE='HO') order by GroupName")
  loc_1960510:               Else
  loc_1960518:                 If (var_B0 = "RefReport") Then
  loc_196051F:                   Set var_180 = ()
  loc_1960525:                   var_C8 = CVar(CLng(3)) 'Long
  loc_196052A:                   var_E8 = 0
  loc_1960533:                   var_108 = "Pending Only"
  loc_196053C:                   LateIdCallSt
  loc_1960547:                   var_C8 = CVar(CLng(3)) 'Long
  loc_196054C:                   var_E8 = &H10E
  loc_1960558:                   LateIdCallSt
  loc_1960563:                   var_C8 = CVar(CLng(3)) 'Long
  loc_1960568:                   var_E8 = 1
  loc_1960571:                   var_108 = "Yes"
  loc_196057A:                   LateIdCallSt
  loc_1960584:                   Set var_180 = Nothing 
  loc_196058F:                   global_142 = CInt(3)
  loc_19605A2:                   Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19605B7:                   global_140 = CInt(3)
  loc_19605C2:                   global_144 = 1
  loc_19605DD:                   Call Proc_203_58_11E8208(1, "SELECT '' as O,NAME as Account,SUBCODE as AccId from SUBGROUP  " & var_90 & " Order by Name")
  loc_19605EC:                 Else
  loc_19605F4:                   If Not (var_B0 = "AgingDr") Then
  loc_19605FF:                     If Not (var_B0 = "AgingCr") Then
  loc_196060A:                       If Not (var_B0 = "AgingRepDr") Then
  loc_1960615:                         If (var_B0 = "AgingRepCr") Then
  loc_1960618:                         End If
  loc_1960618:                       End If
  loc_1960618:                     End If
  loc_196061C:                     Set var_184 = global_140(global_144)
  loc_1960622:                     var_C8 = CVar(CLng(0)) 'Long
  loc_1960627:                     var_E8 = 0
  loc_1960630:                     var_108 = "UpTo Date"
  loc_1960639:                     LateIdCallSt
  loc_1960644:                     var_C8 = CVar(CLng(0)) 'Long
  loc_1960649:                     var_E8 = &H10E
  loc_1960655:                     LateIdCallSt
  loc_1960660:                     var_C8 = CVar(CLng(0)) 'Long
  loc_1960665:                     var_E8 = 1
  loc_1960673:                     var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_196067A:                     LateIdCallSt
  loc_1960687:                     Set var_184 = Nothing 
  loc_1960692:                     global_142 = CInt(0)
  loc_19606A5:                     Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19606DF:                     Set var_AC = 0(&H4B0)
  loc_19606E5:                     LateIdCallSt
  loc_1960706:                     Set var_AC = 1(&H5DC)
  loc_196070C:                     LateIdCallSt
  loc_1960717:                     var_C8 = 0
  loc_1960736:                     var_E8 = 1
  loc_1960743:                     Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_196075D:                     var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_196076C:                     1(var_108).Width = CInt(0)
  loc_196078B:                     var_128 = var_184(DGSite.DispID_A).Width
  loc_196079A:                     Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_19607AC:                     var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_19607B5:                     Set var_12C = var_184(var_C8)
  loc_19607BB:                     var_12C.Left = var_E8
  loc_19607DC:                     CVar(CDbl(&H4B))(CVar(CDbl(&H4B))).Top = var_184
  loc_19607FB:                     If ((GRepFormName = "AgingDr") Or (GRepFormName = "AgingRepDr")) Then
  loc_1960805:                       var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND Nature='Customer' " & var_A4
  loc_1960815:                       Call Proc_203_58_11E8208(1, var_A8 & " order by GroupName")
  loc_1960824:                     Else
  loc_196083B:                       If ((GRepFormName = "AgingCr") Or (GRepFormName = "AgingRepCr")) Then
  loc_1960845:                         var_A8 = "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' AND  Nature='Supplier' " & var_A4
  loc_1960855:                         Call Proc_203_58_11E8208(1, var_A8 & " order by GroupName")
  loc_1960864:                       Else
  loc_196087B:                         Call Proc_203_58_11E8208(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order By GroupName")
  loc_1960887:                       End If
  loc_1960887:                     End If
  loc_196088A:                   Else
  loc_1960892:                     If (var_B0 = "DUELIST") Then
  loc_1960899:                       Set var_188 = ()
  loc_196089F:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19608A4:                       var_E8 = 0
  loc_19608AD:                       var_108 = "UpTo Date"
  loc_19608B6:                       LateIdCallSt
  loc_19608C1:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19608C6:                       var_E8 = &H10E
  loc_19608D2:                       LateIdCallSt
  loc_19608DD:                       var_C8 = CVar(CLng(0)) 'Long
  loc_19608E2:                       var_E8 = 1
  loc_19608F0:                       var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_19608F7:                       LateIdCallSt
  loc_1960905:                       var_C8 = CVar(CLng(2)) 'Long
  loc_196090A:                       var_E8 = 0
  loc_1960913:                       var_108 = "All/Pending"
  loc_196091C:                       LateIdCallSt
  loc_1960927:                       var_C8 = CVar(CLng(2)) 'Long
  loc_196092C:                       var_E8 = &H10E
  loc_1960938:                       LateIdCallSt
  loc_1960943:                       var_C8 = CVar(CLng(2)) 'Long
  loc_1960948:                       var_E8 = 1
  loc_1960951:                       var_108 = "Pending"
  loc_196095A:                       LateIdCallSt
  loc_1960965:                       var_C8 = CVar(CLng(3)) 'Long
  loc_196096A:                       var_E8 = 0
  loc_1960973:                       var_108 = "More Than Days"
  loc_196097C:                       LateIdCallSt
  loc_1960987:                       var_C8 = CVar(CLng(3)) 'Long
  loc_196098C:                       var_E8 = &H10E
  loc_1960998:                       LateIdCallSt
  loc_19609A3:                       var_C8 = CVar(CLng(3)) 'Long
  loc_19609A8:                       var_E8 = 1
  loc_19609B1:                       var_108 = "0"
  loc_19609BA:                       LateIdCallSt
  loc_19609C4:                       Set var_188 = Nothing 
  loc_19609CF:                       global_142 = CInt(0)
  loc_19609E2:                       Set var_AC = global_142(CVar(CLng(global_142)))
  loc_19609F7:                       global_140 = CInt(2)
  loc_1960A17:                       var_A8 = "Select '' as O,SubGroup.Name as PartyName,SubGroup.Subcode as Code,RTrim(IsNull(Add1,''))+','+RTrim(IsNull(Add2,''))+','+RTrim(IsNull(CityName,'')) AS NameWithADDR From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where SubGroup.Nature='Customer' " & var_94
  loc_1960A27:                       Call Proc_203_58_11E8208(1, "SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4 & " Order by SubGroup.Name")
  loc_1960A4E:                       Set var_AC = var_12C(1)
  loc_1960A54:                       Call 0.Method_Proc_203_61_1960E0C0 (0, 3, CInt(3), 1, CInt(3), DGSite.DispID_A)
  loc_1960A5C:                       LateIdCallSt
  loc_1960A6E:                     Else
  loc_1960A76:                       If Not (var_B0 = "BudgetVariance") Then
  loc_1960A81:                         If (var_B0 = "Budget") Then
  loc_1960A84:                         End If
  loc_1960A88:                         Set var_18C = var_188(var_12C)
  loc_1960A8E:                         var_C8 = CVar(CLng(0)) 'Long
  loc_1960A93:                         var_E8 = 0
  loc_1960A9C:                         var_108 = "Budget Period"
  loc_1960AA5:                         LateIdCallSt
  loc_1960AB0:                         var_C8 = CVar(CLng(0)) 'Long
  loc_1960AB5:                         var_E8 = &H10E
  loc_1960AC1:                         LateIdCallSt
  loc_1960ACC:                         var_C8 = CVar(CLng(0)) 'Long
  loc_1960AD1:                         var_E8 = 1
  loc_1960ADA:                         var_108 = vbNullString
  loc_1960AE3:                         LateIdCallSt
  loc_1960AED:                         Set var_18C = Nothing 
  loc_1960AF8:                         global_142 = CInt(0)
  loc_1960B0B:                         Set var_AC = global_142(CVar(CLng(global_142)))
  loc_1960B20:                         global_140 = CInt(0)
  loc_1960B2B:                         global_144 = 1
  loc_1960B4B:                         Me.Recordset15.CursorLocation = 3
  loc_1960B67:                         var_C8 = "Select Distinct CStr(FromDate) + '-' + CStr(ToDate) As Code,CStr(FromDate) + '-' + CStr(ToDate) as NAME From Budget ORDER BY CStr(FromDate) + '-' + CStr(ToDate)"
  loc_1960B73:                         Me.Open 1, CVar(MemVar_1F921DC), 0
  loc_1960B81:                         CVarUnk
  loc_1960B86:                         VerifyVarObj
  loc_1960B8C:                         Set var_AC = 1(New)
  loc_1960B92:                         LateIdStAd
  loc_1960BA3:                       Else
  loc_1960BAB:                         If (var_B0 = "TDSRep") Then
  loc_1960BB2:                           Set var_190 = -1(var_AC)
  loc_1960BB8:                           var_C8 = CVar(CLng(0)) 'Long
  loc_1960BBD:                           var_E8 = 0
  loc_1960BC6:                           var_108 = "From Date   "
  loc_1960BCF:                           LateIdCallSt
  loc_1960BDA:                           var_C8 = CVar(CLng(0)) 'Long
  loc_1960BDF:                           var_E8 = &H10E
  loc_1960BEB:                           LateIdCallSt
  loc_1960BF6:                           var_C8 = CVar(CLng(1)) 'Long
  loc_1960BFB:                           var_E8 = 0
  loc_1960C04:                           var_108 = "To Date   "
  loc_1960C0D:                           LateIdCallSt
  loc_1960C18:                           var_C8 = CVar(CLng(1)) 'Long
  loc_1960C1D:                           var_E8 = &H10E
  loc_1960C29:                           LateIdCallSt
  loc_1960C34:                           var_C8 = CVar(CLng(0)) 'Long
  loc_1960C39:                           var_E8 = 1
  loc_1960C47:                           var_128 = CVar(CStr(MemVar_1F920F4)) 'String
  loc_1960C4E:                           LateIdCallSt
  loc_1960C5C:                           var_C8 = CVar(CLng(1)) 'Long
  loc_1960C61:                           var_E8 = 1
  loc_1960C6F:                           var_128 = CVar(CStr(MemVar_1F920EC)) 'String
  loc_1960C76:                           LateIdCallSt
  loc_1960C83:                           Set var_190 = Nothing 
  loc_1960C8E:                           global_142 = CInt(0)
  loc_1960CA1:                           Set var_AC = global_142(CVar(CLng(global_142)))
  loc_1960CDB:                           Set var_AC = 0(&H6A4)
  loc_1960CE1:                           LateIdCallSt
  loc_1960D02:                           Set var_AC = 1(&H9C4)
  loc_1960D08:                           LateIdCallSt
  loc_1960D13:                           var_C8 = 0
  loc_1960D32:                           var_E8 = 1
  loc_1960D3F:                           Set var_12C = CLng(DGSite.DispID_39)(var_E8)
  loc_1960D59:                           var_108 = CVar(CDbl(((var_AC(var_C8) + CLng(DGSite.DispID_39)) + &H64))) 'Single
  loc_1960D68:                           0(var_108).Width = CInt(1)
  loc_1960D87:                           var_128 = var_190(DGSite.DispID_A).Width
  loc_1960D96:                           Call 0.Method_Me0 (var_144, var_128, var_128, var_E8, var_C8)
  loc_1960DA8:                           var_C8 = CVar(((var_144 - CDbl(var_128)) / CDbl(2))) 'Single
  loc_1960DB7:                           var_190(var_C8).Left = var_128
  loc_1960DC9:                           var_C8 = CVar(CDbl(&H4B)) 'Single
  loc_1960DD8:                           var_E8(var_C8).Top = var_C8
  loc_1960DE0:                         End If
  loc_1960DE0:                       End If
  loc_1960DE0:                     End If
  loc_1960DE0:                   End If
  loc_1960DE0:                 End If
  loc_1960DE0:               End If
  loc_1960DE0:             End If
  loc_1960DE0:           End If
  loc_1960DE0:         End If
  loc_1960DE0:       End If
  loc_1960DE0:     End If
  loc_1960DE0:   End If
  loc_1960DE0: End If
  loc_1960DE0: Exit Sub
  loc_1960DE1: ' Referenced from: 195E100
  loc_1960DE7: Call 0.Method_arg_50 ("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4)
  loc_1960DEF: var_154 = "Ini_Grid"
  loc_1960DFC: Proc_183_57_104AA84("SELECT '' as O,GroupName as Account,GroupCode as AccId from AcGroup Where AliasYN<>'Y' " & var_A4)
  loc_1960E08: Exit Sub
End Sub

Public Sub Proc_203_62_153F42C
  'Data Table: 583330
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_DC As String
  Dim var_EC As Variant
  Dim unk_58337D As Connection15
  Dim var_90 As Recordset15
  Dim var_FC As Variant
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_12C As Variant
  Dim var_BC As Fields15
  Dim var_13C As Variant
  Dim var_10C As Variant
  Dim var_16C As String
  Dim var_170 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_9C As Recordset15
  Dim var_88 As Recordset15
  Dim var_C2 As Integer
  loc_153E480: On Error Goto loc_153F3FA
  loc_153E489: global_84 = vbNullString
  loc_153E490: var_8C = vbNullString
  loc_153E49F: Set var_BC = var_C0(1)
  loc_153E4A5: Call 0.Method_Proc_203_62_153F42C0 (var_C2)
  loc_153E4AD:  = var_C0.Value
  loc_153E4C3: If (CLng(var_C2) = 0) Then
  loc_153E4E1:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_153E4EC:   global_84 = var_DC
  loc_153E4FC:   If (global_130 = 0) Then
  loc_153E4FF:     Exit Sub
  loc_153E500:   End If
  loc_153E500: End If
  loc_153E50B: If (global_84 <> vbNullString) Then
  loc_153E51F:   var_8C = " Where SUBCODE IN (" & global_84 & ")"
  loc_153E525: End If
  loc_153E530: If (global_84 <> vbNullString) Then
  loc_153E53D:   var_DC = " Where Ledger.SUBCODE IN (" & global_84
  loc_153E544:   var_A0 = var_DC & ")"
  loc_153E54A: End If
  loc_153E555: Set var_BC = var_C0(CInt(&HC))
  loc_153E55B: Call 0.Method_Proc_203_62_153F42C0 (var_DC)
  loc_153E563: var_EC = CVar(var_C0) 'Address
  loc_153E584: If CBool(Trim(var_EC) <> vbNullString) Then
  loc_153E598:   Set var_BC = var_C0(CInt(&HC))
  loc_153E59E:   Call 0.Method_Proc_203_62_153F42C0 (var_DC)
  loc_153E5A6:   " And LEDGER.Site_Code='" = var_C0.Tag
  loc_153E5B6:   var_B8 = var_DC & "'"
  loc_153E5CA: Else
  loc_153E5D8:   var_B8 = " And LEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_153E5DE: End If
  loc_153E5EE: Set var_BC = New
  loc_153E5FD: Call 0.Method_arg_1A0 (var_BC)
  loc_153E608: Set var_88 = var_BC
  loc_153E611: Set var_88 = var_C0
  loc_153E63F: Me.Connection15.Execute "SELECT SUBCODE,NAME FROM SUBGROUP  " & var_8C & " ORDER BY SUBCODE", var_EC, -1
  loc_153E64A: Set var_90 = var_BC
  loc_153E66E: var_DC = "SELECT Ledger.*,LEDGERREF.AGREFTYPE FROM Ledger LEFT JOIN ledgerRef ON (Ledger.V_SNo=ledgerRef.V_SNo) AND (Ledger.DocId = ledgerRef.DocId) " & var_A0
  loc_153E68C: unk_58337D.Execute var_DC & " " & var_B8 & " ORDER BY Ledger.SUBCODE,Ledger.V_DATE,Ledger.DOCId,Ledger.V_SNO", var_EC, -1
  loc_153E697: Set var_94 = var_BC
  loc_153E6BF: var_DC = "SELECT LedgerRef.*  FROM LedgerRef " & var_8C
  loc_153E6CF: unk_58337D.Execute var_DC & " ORDER BY SUBCode,V_DATE,DocId,V_SNO", var_EC, -1
  loc_153E6DA: Set var_98 = var_BC
  loc_153E6FE: If (var_90.RecordCount <= 0) Then
  loc_153E707:   Call 0.Method_arg_50 (var_DC, var_BC, var_BC)
  loc_153E728:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153E73D:   global_130 = 0
  loc_153E740:   Exit Sub
  loc_153E741: End If
  loc_153E755: If (var_94.RecordCount <= 0) Then
  loc_153E75E:   Call 0.Method_arg_50 (var_DC, global_130)
  loc_153E77F:   MsgBox("** No Records Found to Print **", &H40, CVar(var_DC), var_10C, var_14C)
  loc_153E794:   global_130 = 0
  loc_153E797:   Exit Sub
  loc_153E798:   ' Referenced from: 153F2DF
  loc_153E798: End If
  loc_153E7A7: If Not(var_90.EOF) Then
  loc_153E7BE:   If (var_98.RecordCount > 0) Then
  loc_153E7C4:     var_98.MoveFirst
  loc_153E81A:     var_98.Find CStr("SubCode='" & var_90.Fields.Item("subcode").Value & "'"), 0, 1
  loc_153E843:     If (var_98.EOF = 0) Then
  loc_153E846:       ' Referenced from: 153EED7
  loc_153E848:       If &HFF Then
  loc_153E860:         Set var_BC = CVar(CLng(3))(1)
  loc_153E897:         var_170 = var_98.Fields.Item("AgRefType")
  loc_153E8CC:         If CBool((CStr(DGSite.DispID_41) = "Yes") And (var_170.Value <> "On Account")) Then
  loc_153E92D:           var_16C = "SELECT AgRefNo,SUM(Cr)-SUM(Dr) AS BalanceAmt From ledgerRef "
  loc_153E93B:           var_14C = (CVar(var_8C) + IIf((var_8C = vbNullString), " Where ", " AND "))
  loc_153E948:           var_1B0 = "AgRefType" & (CStr(DGSite.DispID_41) = "Yes") And (var_170.Value <> "On Account") & " AGREFTYPE IN ('Advance','New Ref','Ag.Ref.') AND AGREFNO='" 
  loc_153E966:           unk_58337D.Execute CStr(var_1B0 & var_98.Fields.Item("AgRefNo").Value & "' GROUP BY SubCode,AgRefNo"), var_210, -1
  loc_153E971:           Set var_9C = var_170
  loc_153E9AD:           If (var_9C.RecordCount > 0) Then
  loc_153E9B6:             var_D4 = "BalanceAmt"
  loc_153E9DA:             var_12C = 0
  loc_153E9EC:             If (var_9C.Fields.Item(var_D4).Value = var_12C) Then
  loc_153E9EF:               GoTo loc_153EE4A
  loc_153E9F2:             End If
  loc_153E9F2:           End If
  loc_153E9F2:         End If
  loc_153E9FD:         var_88.AddNew var_D4, var_12C
  loc_153EA21:         var_EC = CVar(var_98.Fields.Item("DocID")) 'Address
  loc_153EA2F:         var_88.Collect = "DocID"
  loc_153EA59:         var_EC = CVar(var_98.Fields.Item("V_SNo")) 'Address
  loc_153EA67:         var_88.Collect = "V_SNo"
  loc_153EAA2:         var_10C = Mid(CVar(var_98.Fields.Item("DocID")), 4, 5)
  loc_153EAB4:         var_88.Collect = "V_Type"
  loc_153EAF0:         var_FC = Right(CVar(var_98.Fields.Item("DocID")), 8)
  loc_153EB02:         var_88.Collect = "V_NO"
  loc_153EB30:         var_EC = CVar(var_98.Fields.Item("V_DATE")) 'Address
  loc_153EB3E:         var_88.Collect = "V_DATE"
  loc_153EB68:         var_EC = CVar(var_98.Fields.Item("subcode")) 'Address
  loc_153EB76:         var_88.Collect = "subcode"
  loc_153EBA0:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153EBAE:         var_88.Collect = "Name"
  loc_153EBD8:         var_EC = CVar(var_98.Fields.Item("cr")) 'Address
  loc_153EBE6:         var_88.Collect = "cr"
  loc_153EC10:         var_EC = CVar(var_98.Fields.Item("dr")) 'Address
  loc_153EC1E:         var_88.Collect = "dr"
  loc_153EC53:         var_220 = var_98.Fields.Item("AgRefType").Value 'Variant
  loc_153EC69:         If Not (var_220 = "Advance") Then
  loc_153EC77:           If (var_220 = "New Ref") Then
  loc_153EC7A:           End If
  loc_153EC99:           var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153ECA7:           var_88.Collect = "AgRefType"
  loc_153ECD8:           var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153ECEA:           var_88.Collect = "AgRefNo"
  loc_153ECF9:           var_12C = "1"
  loc_153ED08:           var_88.Collect = "RefSort"
  loc_153ED0D:           var_12C = "1"
  loc_153ED1C:           var_88.Collect = "GRPSort"
  loc_153ED24:         Else
  loc_153ED2F:           If (var_220 = "Ag.Ref.") Then
  loc_153ED51:             var_EC = CVar(var_98.Fields.Item("AgRefType")) 'Address
  loc_153ED5F:             var_88.Collect = "AgRefType"
  loc_153ED90:             var_FC = Trim(CVar(var_98.Fields.Item("AgRefNo")))
  loc_153EDA2:             var_88.Collect = "AgRefNo"
  loc_153EDB1:             var_12C = "1"
  loc_153EDC0:             var_88.Collect = "GRPSort"
  loc_153EDC5:             var_12C = "2"
  loc_153EDD4:             var_88.Collect = "RefSort"
  loc_153EDDC:           Else
  loc_153EDE7:             If (var_220 = "On Account") Then
  loc_153EDEA:               var_12C = "On Account"
  loc_153EDF9:               var_88.Collect = "AgRefNo"
  loc_153EDFE:               var_12C = vbNullString
  loc_153EE0D:               var_88.Collect = "AgRefType"
  loc_153EE12:               var_12C = "5"
  loc_153EE21:               var_88.Collect = "GRPSort"
  loc_153EE26:               var_12C = "1"
  loc_153EE2C:               var_D4 = "RefSort"
  loc_153EE35:               var_88.Collect = var_D4
  loc_153EE3A:             End If
  loc_153EE3A:           End If
  loc_153EE3A:         End If
  loc_153EE45:         var_88.Update var_D4, var_12C
  loc_153EE4A:         ' Referenced from: 153E9EF
  loc_153EE4D:         var_98.MoveNext
  loc_153EE63:         If (var_98.EOF = &HFF) Then
  loc_153EE66:           GoTo loc_153EEDA
  loc_153EE69:         End If
  loc_153EED1:         If CBool(var_90.Fields.Item("subcode").Value <> var_98.Fields.Item("subcode").Value) Then
  loc_153EED4:           GoTo loc_153EEDA
  loc_153EED7:         End If
  loc_153EED7:         GoTo loc_153E846
  loc_153EEDA:         ' Referenced from: 153EED4
  loc_153EEDA:         ' Referenced from: 153EE66
  loc_153EEDA:       End If
  loc_153EEDA:     End If
  loc_153EEDA:   End If
  loc_153EEDD:   var_94.MoveFirst
  loc_153EF28:   var_10C = "SubCode='" & var_90.Fields.Item("subcode").Value & "'" 
  loc_153EF2C:   var_DC = CStr(var_10C)
  loc_153EF33:   var_94.Find var_DC, 0, 1
  loc_153EF5C:   If (var_94.EOF = 0) Then
  loc_153EF5F:     ' Referenced from: 153F2D4
  loc_153EF61:     If &HFF Then
  loc_153EF67:       var_D4 = "AgRefType"
  loc_153EF96:       var_12C = "AgRefType"
  loc_153EFBA:       var_13C = vbNullString
  loc_153EFC4:       var_14C = IsNull(CVar(var_94.Fields.Item(var_D4))) Or (var_94.Fields.Item(var_12C).Value = var_13C)
  loc_153EFDC:       If CBool(var_14C) Then
  loc_153EFEA:         var_88.AddNew var_D4, var_12C
  loc_153F00E:         var_EC = CVar(var_94.Fields.Item("DocID")) 'Address
  loc_153F01C:         var_88.Collect = "DocID"
  loc_153F046:         var_EC = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_153F054:         var_88.Collect = "V_SNo"
  loc_153F07E:         var_EC = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_153F08C:         var_88.Collect = "V_Type"
  loc_153F0B6:         var_EC = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_153F0C4:         var_88.Collect = "V_NO"
  loc_153F0EE:         var_EC = CVar(var_94.Fields.Item("V_DATE")) 'Address
  loc_153F0FC:         var_88.Collect = "V_DATE"
  loc_153F126:         var_EC = CVar(var_94.Fields.Item("subcode")) 'Address
  loc_153F134:         var_88.Collect = "subcode"
  loc_153F15E:         var_EC = CVar(var_90.Fields.Item("Name")) 'Address
  loc_153F16C:         var_88.Collect = "Name"
  loc_153F196:         var_EC = CVar(var_94.Fields.Item("AmtCr")) 'Address
  loc_153F1A4:         var_88.Collect = "cr"
  loc_153F1CE:         var_EC = CVar(var_94.Fields.Item("AmtDr")) 'Address
  loc_153F1DC:         var_88.Collect = "dr"
  loc_153F1E7:         var_12C = "On Account"
  loc_153F1F6:         var_88.Collect = "AgRefNo"
  loc_153F1FB:         var_12C = vbNullString
  loc_153F20A:         var_88.Collect = "AgRefType"
  loc_153F20F:         var_12C = "5"
  loc_153F21E:         var_88.Collect = "GRPSort"
  loc_153F229:         var_D4 = "RefSort"
  loc_153F232:         var_88.Collect = var_D4
  loc_153F242:         var_88.Update var_D4, "1"
  loc_153F247:       End If
  loc_153F24A:       var_94.MoveNext
  loc_153F260:       If (var_94.EOF = &HFF) Then
  loc_153F263:         GoTo loc_153F2D7
  loc_153F266:       End If
  loc_153F296:       var_12C = "subcode"
  loc_153F2B2:       var_EC = var_94.Fields.Item(var_12C).Value
  loc_153F2CE:       If CBool(var_90.Fields.Item("subcode").Value <> var_EC) Then
  loc_153F2D1:         GoTo loc_153F2D7
  loc_153F2D4:       End If
  loc_153F2D4:       GoTo loc_153EF5F
  loc_153F2D7:       ' Referenced from: 153F2D1
  loc_153F2D7:       ' Referenced from: 153F263
  loc_153F2D7:     End If
  loc_153F2D7:   End If
  loc_153F2DA:   var_90.MoveNext
  loc_153F2DF:   GoTo loc_153E798
  loc_153F2E2: End If
  loc_153F2F6: If (var_88.RecordCount <= 0) Then
  loc_153F2FF:   Call 0.Method_arg_50 (var_DC, var_12C, var_12C, var_12C, var_12C, var_EC)
  loc_153F31A:   var_EC = "** No Records Found to Print **"
  loc_153F320:   MsgBox(var_EC, &H40, CVar(var_DC), var_10C, var_14C)
  loc_153F335:   global_130 = 0
  loc_153F338:   Exit Sub
  loc_153F339: End If
  loc_153F34F: Set var_BC = var_88 
  loc_153F35B: var_C2 = CreateFieldDefFile(var_BC, MemVar_1F923B0 & "\FaAgRefNo.ttx", &HFF, global_130, var_EC)
  loc_153F36B: var_D4 = CVar(var_C2) 'Integer
  loc_153F36E: var_B0 = var_D4 'Variant
  loc_153F38A: var_DC = MemVar_1F923B0 & "\FaAgRefNo.RPT"
  loc_153F393: Call 0.Method_arg_1C (var_DC, var_D4, var_BC, var_C2)
  loc_153F39E: MemVar_1F921E4 = var_BC
  loc_153F3C1: Call 0.Method_arg_64 (var_BC, CVar(var_BC), var_12C, var_13C)
  loc_153F3C9: Call 0.Method_arg_2C (var_EC, var_EC)
  loc_153F3D6: Set var_88 = Nothing
  loc_153F3DE: Set var_90 = Nothing
  loc_153F3E6: Set var_94 = Nothing
  loc_153F3EE: Set var_98 = Nothing
  loc_153F3F6: Set var_9C = Nothing
  loc_153F3F9: Exit Sub
  loc_153F3FA: ' Referenced from: 153E480
  loc_153F408: Call 0.Method_arg_50 (var_DC, 0)
  loc_153F41D: Proc_183_57_104AA84(var_DC, "RefReport")
  loc_153F429: Exit Sub
End Sub

Public Sub Proc_203_63_17B8CA8(arg_C) '17B8CA8
  'Data Table: 583330
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_1B4 As String
  Dim var_1A0 As Variant
  Dim unk_58337D As Connection15
  Dim var_90 As Variant
  Dim var_170 As Fields15
  Dim var_1D0 As Variant
  Dim var_390 As Variant
  Dim var_840 As Variant
  Dim var_14C As Variant
  Dim var_1B0 As Variant
  Dim var_16C As String
  Dim var_200 As Variant
  Dim var_240 As Variant
  Dim var_260 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D0 As String
  Dim var_310 As Variant
  Dim var_330 As Variant
  Dim var_3B0 As Variant
  Dim var_420 As Variant
  Dim var_450 As Variant
  Dim var_470 As Variant
  Dim var_4A0 As String
  Dim var_520 As Variant
  Dim var_530 As Variant
  Dim var_5D0 As String
  Dim var_600 As Variant
  Dim var_630 As Variant
  Dim var_660 As Variant
  Dim var_690 As String
  Dim var_6B0 As Variant
  Dim var_6C0 As Variant
  Dim var_6F0 As String
  Dim var_770 As Variant
  Dim var_780 As String
  Dim var_790 As Variant
  Dim var_7D0 As String
  Dim var_810 As Variant
  Dim var_880 As Variant
  Dim var_930 As String
  Dim var_960 As Variant
  Dim var_730 As Variant
  Dim var_1E0 As Variant
  Dim var_300 As Variant
  Dim var_350 As Variant
  Dim var_3A0 As Variant
  Dim var_560 As Variant
  Dim var_5B0 As Variant
  Dim var_7B0 As Variant
  Dim var_800 As Variant
  Dim var_992 As Integer
  Dim var_92 As Integer
  Dim var_8C As Recordset15
  Dim var_88 As Recordset15
  Dim var_998 As Fields15
  Dim var_99C As Field20
  Dim var_9A0 As Fields15
  Dim var_9A4 As Field20
  Dim var_9AE As Integer
  loc_17B6E40: On Error Goto loc_17B8C77
  loc_17B6E58: Set var_170 = CVar(CLng(0))(0)
  loc_17B6E7C: Call Proc_203_59_F51A10(CInt(0), CStr(var_180))
  loc_17B6E90: If (var_18A = 0) Then
  loc_17B6E98:   global_130 = 0
  loc_17B6E9B:   Exit Sub
  loc_17B6E9C: End If
  loc_17B6EB1: Set var_170 = CVar(CLng(1))(0)
  loc_17B6ED5: Call Proc_203_59_F51A10(CInt(1), CStr(var_180))
  loc_17B6EE9: If (var_18A = 0) Then
  loc_17B6EF1:   global_130 = 0
  loc_17B6EF4:   Exit Sub
  loc_17B6EF5: End If
  loc_17B6F0A: Set var_170 = CVar(CLng(2))(0)
  loc_17B6F2E: Call Proc_203_59_F51A10(CInt(2), CStr(var_180))
  loc_17B6F42: If (var_18A = 0) Then
  loc_17B6F4A:   global_130 = 0
  loc_17B6F4D:   Exit Sub
  loc_17B6F4E: End If
  loc_17B6F63: Set var_170 = CVar(CLng(3))(0)
  loc_17B6F87: Call Proc_203_59_F51A10(CInt(3), CStr(var_180))
  loc_17B6F9B: If (var_18A = 0) Then
  loc_17B6FA3:   global_130 = 0
  loc_17B6FA6:   Exit Sub
  loc_17B6FA7: End If
  loc_17B6FAD: global_84 = vbNullString
  loc_17B6FB4: var_9C = vbNullString
  loc_17B6FBA: var_A0 = vbNullString
  loc_17B6FC9: Set var_170 = var_190(1)
  loc_17B6FCF: Call 0.Method_Proc_203_63_17B8CA80 (var_182, global_130, var_18A, DGSite.DispID_41, global_130, var_18A)
  loc_17B6FD7: DGSite.DispID_41 = var_190.Value
  loc_17B6FED: If (CLng(var_182) = 0) Then
  loc_17B700B:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_17B7016:   global_84 = var_188
  loc_17B7026:   If (global_130 = 0) Then
  loc_17B7029:     Exit Sub
  loc_17B702A:   End If
  loc_17B702A: End If
  loc_17B703F: Set var_170 = CVar(CLng(0))(1)
  loc_17B705D: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = global_130
  loc_17B7084: Set var_170 = CVar(CLng(1))(1)
  loc_17B7095: var_188 = CStr(DGSite.DispID_41)
  loc_17B709C: Set var_190 = var_18A(var_188)
  loc_17B70A2: var_190.Text = DGSite.DispID_41
  loc_17B70CB: If (Proc_183_48_F05F98(Me, global_130) = 0) Then
  loc_17B70D3:   global_130 = 0
  loc_17B70D6:   Exit Sub
  loc_17B70D7: End If
  loc_17B70E2: Set var_170 = var_190(CInt(&HC))
  loc_17B70E8: Call 0.Method_Proc_203_63_17B8CA80 (global_130)
  loc_17B70F0: var_180 = CVar(var_190) 'Address
  loc_17B7111: If CBool(Trim(var_180) <> vbNullString) Then
  loc_17B7125:   Set var_170 = var_190(CInt(&HC))
  loc_17B712B:   Call 0.Method_Proc_203_63_17B8CA80 (var_188, " And LEDGER.LOGSite_Code='")
  loc_17B7133:   var_18A = var_190.Tag
  loc_17B7143:   var_128 = var_188 & "'"
  loc_17B7165:   Set var_170 = var_190(CInt(&HC))
  loc_17B716B:   Call 0.Method_Proc_203_63_17B8CA80 (var_188)
  loc_17B7173:   " And LEDGER.LOGSite_Code='" = var_190.Tag
  loc_17B7183:   var_12C = var_188 & "'"
  loc_17B7197: Else
  loc_17B71A5:   var_128 = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_17B71B9:   var_12C = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_17B71BF: End If
  loc_17B71D4: Set var_170 = CVar(CLng(2))(1)
  loc_17B7201: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_17B722E: Set var_170 = CVar(CLng(2))(2)
  loc_17B724E: var_C4 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_17B7268: If (global_84 <> vbNullString) Then
  loc_17B727C:   var_9C = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_17B7282: End If
  loc_17B728D: If (global_84 <> vbNullString) Then
  loc_17B729E:   var_1B4 = " AND (VIEWSUBGROUP.LOGSITE_CODE='" & MemVar_1F92078 & "' OR VIEWSUBGROUP.LOGSITE_CODE='HO') AND VIEWSUBGROUP.SUBCODE IN ("
  loc_17B72AF:   var_A0 = var_1B4 & global_84 & ")"
  loc_17B72BB: End If
  loc_17B72DF: unk_58337D.Execute "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_180, -1
  loc_17B72EA: Set var_88 = var_170
  loc_17B72FD: var_120 = vbNullString
  loc_17B7337: If (CStr(DGSite.DispID_41) = "No") Then
  loc_17B734E:   var_188 = "SELECT MAINGRCODE,GroupNature FROM ACGROUP WHERE GROUPCODE='" & var_C4
  loc_17B735E:   unk_58337D.Execute var_188 & "' AND ALIASYN='N'", var_180, -1
  loc_17B7369:   Set var_90 = CVar(CLng(3))(1)
  loc_17B738D:   If (var_90.RecordCount > 0) Then
  loc_17B73BB:     var_120 = CStr(var_90.Fields.Item("MainGrCode").Value)
  loc_17B73DA:     var_170 = var_90.Fields
  loc_17B73EA:     var_180 = var_170.Item("GroupNature").Value
  loc_17B7404:     Set var_90 = New 
  loc_17B740D:     Me.Recordset15.Sort = "PARTYNAME ASC,GrCode ASC,PARTYCODE ASC"
  loc_17B7415:     var_1C0 = CStr(var_180)
  loc_17B7420:     If Not (var_1C0 = "E") Then
  loc_17B742B:       If (var_1C0 = "R") Then
  loc_17B742E:       End If
  loc_17B7439:       Proc_183_7_EB0C44(var_180, MemVar_1F920F4)
  loc_17B7449:       Proc_183_7_EB0C44(var_1E0)
  loc_17B7459:       Proc_183_7_EB0C44(var_300, MemVar_1F920F4)
  loc_17B7469:       Proc_183_7_EB0C44(var_350)
  loc_17B7479:       Proc_183_7_EB0C44(var_3A0)
  loc_17B748E:       var_4E0 = "SUBSTRING"
  loc_17B74B3:       Proc_183_7_EB0C44(var_560, MemVar_1F920F4)
  loc_17B74C3:       Proc_183_7_EB0C44(var_5B0)
  loc_17B74CD:       var_750 = "MID"
  loc_17B74FD:       Proc_183_7_EB0C44(var_7B0, MemVar_1F920F4)
  loc_17B750D:       Proc_183_7_EB0C44(var_800)
  loc_17B7516:       var_840 = CVar((CVar((CVar((CVar((CVar((CVar(var_170(var_170)))))))))))) 'Address
  loc_17B751D:       Proc_183_7_EB0C44(var_850)
  loc_17B7539:       var_14C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B7541:       var_1A0 = var_14C & var_180 
  loc_17B7580:       var_280 = var_1A0 & " AND V_DATE<" & var_1E0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B7593:       var_2C0 = var_280 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B7597:       var_2D0 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE>="
  loc_17B75AC:       var_330 = var_2C0 & var_2D0 & var_300 & " AND V_DATE BETWEEN " 
  loc_17B75F2:       var_450 = var_330 & var_350 & " AND " & var_3A0 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " 
  loc_17B7609:       var_4A0 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B7615:       var_520 = var_450 & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_4A0 & IIf((MemVar_1F923AC = "S"), var_4E0, "MID") 
  loc_17B7619:       var_530 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B7648:       var_600 = var_520 & var_530 & var_560 & " AND V_DATE<" & var_5B0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B7672:       var_690 = "')+3  "
  loc_17B7681:       var_6C0 = var_600 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_690 & CVar(var_128) 
  loc_17B768E:       var_6F0 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B769A:       var_770 = var_6C0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_6F0 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", var_750) 
  loc_17B769E:       var_780 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE>="
  loc_17B76D3:       var_880 = var_770 & var_780 & var_7B0 & " AND V_DATE BETWEEN " & var_800 & " AND " & var_850 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" 
  loc_17B7707:       var_930 = "')+3  "
  loc_17B7716:       var_960 = var_880 & CVar(var_120) & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & var_930 & CVar(var_128) 
  loc_17B7727:       var_90.Open var_960 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F921DC), 2
  loc_17B77D0:     Else
  loc_17B77D8:       If Not (var_1C0 = "A") Then
  loc_17B77E3:         If (var_1C0 = "L") Then
  loc_17B77E6:         End If
  loc_17B77EA:         var_180 = CVar(-1(3)) 'Address
  loc_17B77F1:         Proc_183_7_EB0C44(var_1A0, var_180)
  loc_17B77FA:         var_2A0 = CVar((var_840)) 'Address
  loc_17B7801:         Proc_183_7_EB0C44(var_2C0)
  loc_17B780A:         var_310 = CVar((var_2A0)) 'Address
  loc_17B7811:         Proc_183_7_EB0C44(var_330)
  loc_17B784B:         Proc_183_7_EB0C44(var_4E0)
  loc_17B7885:         Proc_183_7_EB0C44(var_6C0)
  loc_17B788E:         var_730 = CVar((CVar((CVar((var_310)))))) 'Address
  loc_17B7895:         Proc_183_7_EB0C44(var_750)
  loc_17B78B1:         var_13C = "SELECT 1 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE<"
  loc_17B78B9:         var_1B0 = var_13C & var_1A0 
  loc_17B78C2:         var_1D0 = var_1B0 & " " 
  loc_17B78C9:         var_15C = CVar(var_A0) 'String
  loc_17B78FB:         var_260 = var_1D0 & var_15C & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " 
  loc_17B78FF:         var_290 = "Union SELECT 2 AS TT,MAX(ACGROUP.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=VIEWSUBGROUP.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B7941:         var_390 = var_260 & var_290 & var_2C0 & " AND " & var_330 & " " & CVar(var_A0) & " AND ViewSubgroup.GROUPCODE='" & CVar(var_C4) 
  loc_17B7961:         var_420 = "Union  SELECT 3 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,ISNULL(SUM(AMTCR),0) AS OP_CR,ISNULL(sum(AMTDR),0) As OP_DR,0 AS BALANCECR,0 AS BALANCEDR,0 AS Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B796D:         var_470 = var_390 & "' AND ACGROUP.AliasYN='N'  " & CVar(var_128) & " GROUP BY ACGROUP.GROUPNAME,LEDGER.SUBCODE " & var_420 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", "MID") 
  loc_17B7971:         var_4A0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE<"
  loc_17B79A3:         var_560 = var_470 & var_4A0 & var_4E0 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) & "'))='" & CVar(var_120) 
  loc_17B79BA:         var_5D0 = "')+3  "
  loc_17B79C9:         var_5B0 = var_560 & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_128) 
  loc_17B79D6:         var_630 = "Union  SELECT 4 AS TT,ACGROUP.GROUPNAME,MAX(ACGROUP.GROUPCODE) AS GrCode,'' AS PARTYCODE,ACGROUP.GROUPNAME AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal FROM (ACGROUP INNER JOIN ViewSubgroup ON ACGROUP.MAINGRCODE="
  loc_17B79E2:         var_660 = var_5B0 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME " & var_630 & IIf((MemVar_1F923AC = "S"), "SUBSTRING", "MID") 
  loc_17B79E6:         var_6B0 = " (ViewSubgroup.MAINGRCODES,1,LEN(ACGROUP.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE WHERE V_DATE BETWEEN "
  loc_17B7A15:         var_790 = var_660 & var_6B0 & var_6C0 & " AND " & var_750 & " AND ACGROUP.ALIASYN='N' AND LEFT(MAINGRCODE,LEN('" & CVar(var_120) 
  loc_17B7A3F:         var_7D0 = "')+3  "
  loc_17B7A4E:         var_810 = var_790 & "'))='" & CVar(var_120) & "' AND LEN(MAINGRCODE)=LEN('" & CVar(var_120) & " AND V_DATE BETWEEN " & CVar(var_128) 
  loc_17B7A5F:         var_90.Open var_810 & " GROUP BY ACGROUP.MAINGRCODE,ACGROUP.GROUPNAME", CVar(MemVar_1F921DC), 2
  loc_17B7AED:       End If
  loc_17B7AED:     End If
  loc_17B7AED:   End If
  loc_17B7B01:   If (var_90.RecordCount <= 0) Then
  loc_17B7B0A:     Call 0.Method_arg_50 (var_188, 3)
  loc_17B7B2B:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B7B40:     global_130 = 0
  loc_17B7B43:     Exit Sub
  loc_17B7B44:   End If
  loc_17B7B47:   var_992 = arg_C
  loc_17B7B50:   If (var_992 = 1) Then
  loc_17B7B59:     var_14C = "Paper Setting"
  loc_17B7B5E:     var_1A0 = var_14C
  loc_17B7B74:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_1A0, var_1B0, var_1D0)
  loc_17B7B8D:     Set var_190 = var_90
  loc_17B7B96:     Set var_170 = Me 
  loc_17B7BA6:     Call 0.Method_arg_16C (var_170, var_190, var_182, var_992)
  loc_17B7BB1:     Set var_90 = var_190
  loc_17B7BB7:     var_92 = var_182
  loc_17B7BC6:     global_130 = 0
  loc_17B7BC9:     GoTo loc_17B8C5E
  loc_17B7BCF:   Else
  loc_17B7BDB:     Call 0.Method_arg_F0 (var_170, global_130, var_92)
  loc_17B7BE6:     MemVar_1F921E4 = var_170
  loc_17B7C06:     Call 0.Method_arg_64 (var_170, CVar(var_90), var_14C, var_15C)
  loc_17B7C0E:     Call 0.Method_arg_2C (global_130, -1)
  loc_17B7C16:   End If
  loc_17B7C19: Else
  loc_17B7C29:   Set var_170 = New
  loc_17B7C38:   Call 0.Method_arg_1B4 (var_170, var_190)
  loc_17B7C43:   Set var_8C = var_170
  loc_17B7C4C:   Set var_8C = var_190
  loc_17B7C5A:   Set var_90 = New 
  loc_17B7C63:   Me.Recordset15.Sort = "PARTYNAME ASC"
  loc_17B7C73:   Proc_183_7_EB0C44(var_1A0)
  loc_17B7C83:   Proc_183_7_EB0C44(var_2A0, MemVar_1F920F4)
  loc_17B7C8C:   var_300 = CVar((CVar((var_730)))) 'Address
  loc_17B7C93:   Proc_183_7_EB0C44(var_310)
  loc_17B7CAF:   var_13C = "SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE<"
  loc_17B7CDD:   var_200 = CVar(var_90) & var_1A0 & " " & CVar(var_9C) & " AND PARTY_LIST.GroupNature in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) 
  loc_17B7CFD:   var_290 = " Union SELECT MAX(ACGROUP.GROUPNAME)As GroupName,MAX(PARTY) AS PARTYCODE,MAX(PARTY_NAME) AS PARTYNAME,MAX(ADD1) AS ADDR1,MAX(ADD2) AS ADDR2,MAX(CITY_NAME) AS CITYNAME,sum(credit)-SUM(DEBIT) As Bal FROM (VIEWLEDGER LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=VIEWLEDGER.PARTY) LEFT JOIN ACGROUP ON ACGROUP.GROUPCODE=PARTY_LIST.GROUPCODE WHERE V_DATE BETWEEN "
  loc_17B7D2C:   var_350 = var_200 & "'  " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY " & var_290 & var_2A0 & " AND " & var_310 & " " & CVar(var_9C) 
  loc_17B7D5B:   var_3B0 = var_350 & " AND PARTY_LIST.GroupNature NOT in ('A','L') AND ALIASYN='N' AND CODE='" & CVar(var_C4) & "' " & CVar(var_12C) & " GROUP BY ACGROUP.GROUPNAME,PARTY" 
  loc_17B7D63:   var_90.Open var_3B0, CVar(MemVar_1F921DC), 2
  loc_17B7D9B:   ' Referenced from:   17B84FC
  loc_17B7DA1:   var_182 = var_90.EOF
  loc_17B7DAA:   If Not(var_182) Then
  loc_17B7DB3:     var_13C = "Bal"
  loc_17B7DD7:     var_14C = 0
  loc_17B7DE9:     If CBool(var_90.Fields.Item(var_13C).Value <> var_14C) Then
  loc_17B7DF7:       var_8C.AddNew var_13C, var_14C
  loc_17B7E27:       var_1A0 = Left(CVar(var_90.Fields.Item("PartyName")), &H23)
  loc_17B7E39:       var_8C.Collect = "ACC_NAME"
  loc_17B7E67:       var_180 = CVar(var_90.Fields.Item("GroupName")) 'Address
  loc_17B7E75:       var_8C.Collect = "AName"
  loc_17B7EEC:       If (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt1").Value) Then
  loc_17B7F0E:         var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B7F1C:         var_8C.Collect = "DEBIT1"
  loc_17B7F2A:       Else
  loc_17B7FE2:         var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt1").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt2").Value)
  loc_17B8006:         If CBool(var_240) Then
  loc_17B8028:           var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B8036:           var_8C.Collect = "DEBIT2"
  loc_17B8044:         Else
  loc_17B80FC:           var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt2").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt3").Value)
  loc_17B8120:           If CBool(var_240) Then
  loc_17B8142:             var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B8150:             var_8C.Collect = "DEBIT3"
  loc_17B815E:           Else
  loc_17B8216:             var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt3").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt4").Value)
  loc_17B823A:             If CBool(var_240) Then
  loc_17B825C:               var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B826A:               var_8C.Collect = "DEBIT4"
  loc_17B8278:             Else
  loc_17B8330:               var_240 = (Abs(var_90.Fields.Item("Bal").Value) > var_88.Fields.Item("Amt4").Value) And (Abs(var_90.Fields.Item("Bal").Value) <= var_88.Fields.Item("Amt5").Value)
  loc_17B8354:               If CBool(var_240) Then
  loc_17B8376:                 var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B8384:                 var_8C.Collect = "DEBIT5"
  loc_17B8392:               Else
  loc_17B83D2:                 var_998 = var_88.Fields
  loc_17B83DA:                 var_99C = var_998.Item("Amt5")
  loc_17B83E2:                 var_1B0 = var_99C.Value
  loc_17B83EA:                 var_1D0 = (Abs(var_90.Fields.Item("Bal").Value) > var_1B0)
  loc_17B8400:                 var_9A0 = var_90.Fields
  loc_17B8408:                 var_9A4 = var_9A0.Item("Bal")
  loc_17B846E:                 If CBool(var_1D0 And (Abs(var_9A4.Value) <= var_88.Fields.Item("Amt6").Value)) Then
  loc_17B8490:                   var_180 = CVar(var_90.Fields.Item("Bal")) 'Address
  loc_17B849E:                   var_8C.Collect = "DEBIT6"
  loc_17B84AC:                 Else
  loc_17B84AF:                   var_13C = "Bal"
  loc_17B84CB:                   var_180 = CVar(var_90.Fields.Item(var_13C)) 'Address
  loc_17B84D0:                   var_14C = "Debit"
  loc_17B84D9:                   var_8C.Collect = var_14C
  loc_17B84E4:                 End If
  loc_17B84E4:               End If
  loc_17B84E4:             End If
  loc_17B84E4:           End If
  loc_17B84E4:         End If
  loc_17B84E4:       End If
  loc_17B84EF:       var_8C.Update var_13C, var_14C
  loc_17B84F4:     End If
  loc_17B84F7:     var_90.MoveNext
  loc_17B84FC:     GoTo loc_17B7D9B
  loc_17B84FF:   End If
  loc_17B8505:   var_1BC = var_8C.RecordCount
  loc_17B8513:   If (var_1BC <= 0) Then
  loc_17B851C:     Call 0.Method_arg_50 (var_188, var_180, var_180, var_180, var_180, var_180)
  loc_17B853D:     MsgBox("** No Records Found to Print **", &H40, CVar(var_188), var_1B0, var_1D0)
  loc_17B8552:     global_130 = 0
  loc_17B8555:     Exit Sub
  loc_17B8556:   End If
  loc_17B8559:   var_9AE = arg_C
  loc_17B8562:   If (var_9AE = 1) Then
  loc_17B8570:     var_1A0 = "Paper Setting"
  loc_17B8580:     var_180 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_17B8586:     MsgBox(var_180, &H40, var_1A0, var_1B0, var_1D0)
  loc_17B859F:     Set var_190 = var_8C
  loc_17B85A8:     Set var_170 = Me 
  loc_17B85B8:     Call 0.Method_arg_168 (var_170, var_190, var_182, var_9AE, global_130, var_180)
  loc_17B85C3:     Set var_8C = var_190
  loc_17B85C9:     var_92 = var_182
  loc_17B85D8:     global_130 = 0
  loc_17B85DB:     GoTo loc_17B8C5E
  loc_17B85E1:   Else
  loc_17B85ED:     Call 0.Method_arg_F4 (var_170, global_130, var_92, var_180)
  loc_17B85F8:     MemVar_1F921E4 = var_170
  loc_17B8610:     Call 0.Method_arg_90 (var_170, var_1BC, var_BE, 1)
  loc_17B8618:     Call 0.Method_arg_24 (var_180, var_1A0)
  loc_17B8624:     For var_9B2 = -1 To CInt(var_1BC):     3 = var_9B2 'Integer
  loc_17B863D:       Call 0.Method_arg_90 (var_170, CLng(var_BE), var_190)
  loc_17B8645:       Call 0.Method_arg_20 (var_188)
  loc_17B864D:       Call 0.Method_arg_30 (-1)
  loc_17B8663:       var_9C4 = Ucase(CVar(var_188)) 'Variant
  loc_17B867C:       If (var_9C4 = "P1") Then
  loc_17B8684:         var_14C = "0 - "
  loc_17B86B7:         var_1B0 = ("Paper Setting" + Str(CVar(var_88.Fields.Item("Amt1"))))
  loc_17B86DC:         Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B86E4:         Call 0.Method_arg_20 (var_99C)
  loc_17B86EC:         Call 0.Method_arg_38 (CStr("'" & var_1B0 & "'"))
  loc_17B870D:       Else
  loc_17B8718:         If (var_9C4 = "P2") Then
  loc_17B874F:           var_1A0 = (var_88.Fields.Item("Amt1").Value + 1)
  loc_17B8762:           var_16C = " - "
  loc_17B87BA:           Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B87C2:           Call 0.Method_arg_20 (var_9A4)
  loc_17B87CA:           Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) & "'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B87F7:         Else
  loc_17B8802:           If (var_9C4 = "P3") Then
  loc_17B8839:             var_1A0 = (var_88.Fields.Item("Amt2").Value + 1)
  loc_17B8848:             var_15C = " - "
  loc_17B884D:             var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B887F:             var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt3"))))
  loc_17B88A4:             Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B88AC:             Call 0.Method_arg_20 (var_9A4)
  loc_17B88B4:             Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B88E1:           Else
  loc_17B88EC:             If (var_9C4 = "P4") Then
  loc_17B8923:               var_1A0 = (var_88.Fields.Item("Amt3").Value + 1)
  loc_17B8932:               var_15C = " - "
  loc_17B8937:               var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B8969:               var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt4"))))
  loc_17B898E:               Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B8996:               Call 0.Method_arg_20 (var_9A4)
  loc_17B899E:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B89CB:             Else
  loc_17B89D6:               If (var_9C4 = "P5") Then
  loc_17B8A0D:                 var_1A0 = (var_88.Fields.Item("Amt4").Value + 1)
  loc_17B8A1C:                 var_15C = " - "
  loc_17B8A21:                 var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B8A53:                 var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_88.Fields.Item("Amt5"))))
  loc_17B8A78:                 Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B8A80:                 Call 0.Method_arg_20 (var_9A4)
  loc_17B8A88:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B8AB5:               Else
  loc_17B8AC0:                 If (var_9C4 = "P6") Then
  loc_17B8AF7:                   var_1A0 = (var_88.Fields.Item("Amt5").Value + 1)
  loc_17B8B06:                   var_15C = " - "
  loc_17B8B0B:                   var_1D0 = (Str(Str(CVar(var_88.Fields.Item("Amt1")))) + "'")
  loc_17B8B1E:                   var_998 = var_88.Fields
  loc_17B8B26:                   var_99C = var_998.Item("Amt6")
  loc_17B8B3D:                   var_200 = ("'" & Str(Str(CVar(var_88.Fields.Item("Amt1")))) + Str(CVar(var_99C)))
  loc_17B8B62:                   Call 0.Method_arg_90 (var_9A0, CLng(var_BE))
  loc_17B8B6A:                   Call 0.Method_arg_20 (var_9A4)
  loc_17B8B72:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Amt2"))) & "'"))
  loc_17B8B9F:                 Else
  loc_17B8BAA:                   If (var_9C4 = "P7") Then
  loc_17B8BAD:                     var_14C = "'Above "
  loc_17B8BC1:                     var_170 = var_88.Fields
  loc_17B8BED:                     var_188 = CStr(var_14C & Str(CVar(var_170.Item("Amt6"))) & "'")
  loc_17B8C01:                     Call 0.Method_arg_90 (var_998, CLng(var_BE))
  loc_17B8C09:                     Call 0.Method_arg_20 (var_99C)
  loc_17B8C11:                     Call 0.Method_arg_38 (var_188)
  loc_17B8C2D:                   End If
  loc_17B8C2D:                 End If
  loc_17B8C2D:               End If
  loc_17B8C2D:             End If
  loc_17B8C2D:           End If
  loc_17B8C2D:         End If
  loc_17B8C2D:       End If
  loc_17B8C30:     Next var_9B2 'Integer
  loc_17B8C4E:     Call 0.Method_arg_64 (var_170, CVar(var_8C))
  loc_17B8C56:     Call 0.Method_arg_2C (var_14C)
  loc_17B8C5E:   End If
  loc_17B8C5E:   ' Referenced from:   17B85DB
  loc_17B8C5E: End If
  loc_17B8C5E: ' Referenced from: 17B7BC9
  loc_17B8C63: Set var_88 = Nothing
  loc_17B8C6B: Set var_8C = Nothing
  loc_17B8C73: Set var_90 = Nothing
  loc_17B8C76: Exit Sub
  loc_17B8C77: ' Referenced from: 17B6E40
  loc_17B8C85: Call 0.Method_arg_50 (var_188, 0)
  loc_17B8C9A: Proc_183_57_104AA84(var_188, "Annexure")
  loc_17B8CA6: Exit Sub
End Sub

Public Sub Proc_203_64_17B2CC8
  'Data Table: 583330
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As String
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim Me As Recordset15
  loc_17B0D50: On Error Goto loc_17B2C96
  loc_17B0D68: Set var_160 = CVar(CLng(0))(0)
  loc_17B0D8C: Call Proc_203_59_F51A10(CInt(0), CStr(var_170))
  loc_17B0DA0: If (var_17A = 0) Then
  loc_17B0DA8:   global_130 = 0
  loc_17B0DAB:   Exit Sub
  loc_17B0DAC: End If
  loc_17B0DB7: Set var_160 = var_180(CInt(&HC))
  loc_17B0DBD: Call 0.Method_Proc_203_64_17B2CC80 (global_130, var_17A)
  loc_17B0DC5: var_170 = CVar(var_180) 'Address
  loc_17B0DE6: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17B0DFA:   Set var_160 = var_180(CInt(&HC))
  loc_17B0E00:   Call 0.Method_Proc_203_64_17B2CC80 (var_178, " And VIEWLEDGER.LOGSite_Code='")
  loc_17B0E08:   DGSite.DispID_41 = var_180.Tag
  loc_17B0E18:   var_11C = var_178 & "'"
  loc_17B0E2C: Else
  loc_17B0E33:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_17B0E3A:   var_11C = var_178 & "'"
  loc_17B0E40: End If
  loc_17B0E46: global_84 = vbNullString
  loc_17B0E4D: var_A0 = vbNullString
  loc_17B0E5C: Set var_160 = var_180(1)
  loc_17B0E62: Call 0.Method_Proc_203_64_17B2CC80 (var_172)
  loc_17B0E6A:  = var_180.Value
  loc_17B0E80: If (CLng(var_172) = 0) Then
  loc_17B0E9E:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_17B0EA9:   global_84 = var_178
  loc_17B0EB9:   If (global_130 = 0) Then
  loc_17B0EBC:     Exit Sub
  loc_17B0EBD:   End If
  loc_17B0EBD: End If
  loc_17B0EC8: If (global_84 <> vbNullString) Then
  loc_17B0EDC:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17B0EE2: End If
  loc_17B0EF7: Set var_160 = CVar(CLng(0))(1)
  loc_17B0F08: var_178 = CStr(DGSite.DispID_41)
  loc_17B0F0F: Set var_180 = var_178(var_178)
  loc_17B0F15: var_180.Text = 
  loc_17B0F2E: Set var_160 = (var_178)
  loc_17B0F34:  = var_160.Text
  loc_17B0F3C: var_1A4 = "Date Upto"
  loc_17B0F5D: If (Proc_183_49_EF3180(CDate(var_178)) = 0) Then
  loc_17B0F65:   global_130 = 0
  loc_17B0F68:   Exit Sub
  loc_17B0F69: End If
  loc_17B0F7D: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_17B0F8D: unk_58337D.Execute var_178 & "'", var_170, -1
  loc_17B0F98: Set var_88 = var_160
  loc_17B0FBC: If (var_88.RecordCount = 0) Then
  loc_17B0FC5:   Call 0.Method_arg_50 (var_178, var_160)
  loc_17B0FE0:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17B0FE6:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B0FF6:   Exit Sub
  loc_17B0FF7: End If
  loc_17B0FFF: If (arg_10 = "Dr") Then
  loc_17B1009:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17B100C: End If
  loc_17B1014: If (arg_10 = "Cr") Then
  loc_17B101E:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17B1021: End If
  loc_17B1035: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_17B1053: unk_58337D.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17B105E: Set var_8C = var_160
  loc_17B1075: var_A4 = vbNullString
  loc_17B1088: Set var_160 = New
  loc_17B1097: Call 0.Method_arg_1B4 (var_160, var_180, var_160)
  loc_17B10A2: Set var_90 = var_160
  loc_17B10AB: Set var_90 = var_180
  loc_17B10BB: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17B10C0: ' Referenced from: 17B2109
  loc_17B10CF: If Not(var_8C.EOF) Then
  loc_17B10D5:   var_E4 = CDbl(0)
  loc_17B10DB:   var_EC = CDbl(0)
  loc_17B10E1:   var_F4 = CDbl(0)
  loc_17B10E7:   var_FC = CDbl(0)
  loc_17B10ED:   var_104 = CDbl(0)
  loc_17B10F3:   var_10C = CDbl(0)
  loc_17B10F9:   var_114 = CDbl(0)
  loc_17B1105:   var_B4 = CDbl(0)
  loc_17B114D:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17B115C:   Proc_183_7_EB0C44(var_1D8, CVar(var_258(var_1A0)), -1, var_25C, var_B4, CDbl(0))
  loc_17B1184:   var_178 = CStr(var_114 & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17B118E:   unk_58337D.Execute var_178, var_10C, var_104
  loc_17B1199:   Set var_94 = var_25C
  loc_17B11BF:   ' Referenced from: 17B1D76
  loc_17B11CE:   If Not(var_94.EOF) Then
  loc_17B11D9:     If (arg_10 = "Dr") Then
  loc_17B1218:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17B124C:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17B1251:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17B1265:       Else
  loc_17B12AF:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_FC(var_B4)), 1, 1))
  loc_17B12FF:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B1333:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17B1338:           var_E4 = CSng(CVar(var_FC(var_B4)))
  loc_17B134C:         Else
  loc_17B13CE:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B1402:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17B1407:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B141B:           Else
  loc_17B149D:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B14D1:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17B14D6:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B14EA:             Else
  loc_17B156C:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B15A0:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17B15A5:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B15B9:               Else
  loc_17B163B:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B166F:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17B1674:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B1688:                 Else
  loc_17B170A:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17B173E:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17B1743:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B1757:                   Else
  loc_17B1788:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17B178D:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B179E:                   End If
  loc_17B179E:                 End If
  loc_17B179E:               End If
  loc_17B179E:             End If
  loc_17B179E:           End If
  loc_17B179E:         End If
  loc_17B179E:       End If
  loc_17B17A1:     Else
  loc_17B17A9:       If (arg_10 = "Cr") Then
  loc_17B17E8:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17B181C:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17B1821:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B1835:         Else
  loc_17B187F:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_114(var_B4)), 1, 1))
  loc_17B18CF:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17B1903:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17B1908:             var_E4 = CSng(CVar(var_114(var_B4)))
  loc_17B191C:           Else
  loc_17B199E:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17B19D2:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17B19D7:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17B19EB:             Else
  loc_17B1A6D:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17B1AA1:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17B1AA6:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17B1ABA:               Else
  loc_17B1B3C:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17B1B70:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17B1B75:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17B1B89:                 Else
  loc_17B1C0B:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17B1C3F:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17B1C44:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17B1C58:                   Else
  loc_17B1CA6:                     var_25C = var_88.Fields
  loc_17B1CAE:                     var_260 = var_25C.Item("Age6")
  loc_17B1CBE:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17B1CDA:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17B1D0E:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17B1D13:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B1D27:                     Else
  loc_17B1D58:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17B1D5D:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17B1D6E:                     End If
  loc_17B1D6E:                   End If
  loc_17B1D6E:                 End If
  loc_17B1D6E:               End If
  loc_17B1D6E:             End If
  loc_17B1D6E:           End If
  loc_17B1D6E:         End If
  loc_17B1D6E:       End If
  loc_17B1D6E:     End If
  loc_17B1D71:     var_94.MoveNext
  loc_17B1D76:     GoTo loc_17B11BF
  loc_17B1D79:   End If
  loc_17B1D84:   var_D8(0) = var_E4
  loc_17B1D90:   var_D8(1) = var_EC
  loc_17B1D9C:   var_D8(2) = var_F4
  loc_17B1DA8:   var_D8(3) = var_FC
  loc_17B1DB4:   var_D8(4) = var_104
  loc_17B1DC0:   var_D8(5) = var_10C
  loc_17B1DCC:   var_D8(6) = var_114
  loc_17B1DD0:   var_BC = CDbl(7)
  loc_17B1DD3:   ' Referenced from: 17B1E67
  loc_17B1DDA:   If (var_BC <> CDbl(0)) Then
  loc_17B1DED:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17B1E00:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17B1E13:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17B1E24:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17B1E28:       Else
  loc_17B1E38:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17B1E56:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17B1E5A:           var_B4 = CDbl(0)
  loc_17B1E5D:         End If
  loc_17B1E5D:       End If
  loc_17B1E5D:     End If
  loc_17B1E64:     var_BC = (var_BC - CDbl(1))
  loc_17B1E67:     GoTo loc_17B1DD3
  loc_17B1E6A:   End If
  loc_17B1EAF:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17B1EBA:   var_12C = var_BC
  loc_17B1ECA:   var_13C = 0
  loc_17B1EE4:   var_1A0 = Round(var_B4, 2)
  loc_17B1F07:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17B1F0D:     Set var_264 = var_90 
  loc_17B1F1C:     var_264.AddNew var_12C, var_13C
  loc_17B1F2A:     var_13C = CVar(var_D8(0)) 'Double
  loc_17B1F38:     var_264.Collect = "DEBIT1"
  loc_17B1F46:     var_13C = CVar(var_D8(1)) 'Double
  loc_17B1F54:     var_264.Collect = "DEBIT2"
  loc_17B1F62:     var_13C = CVar(var_D8(2)) 'Double
  loc_17B1F70:     var_264.Collect = "DEBIT3"
  loc_17B1F7E:     var_13C = CVar(var_D8(3)) 'Double
  loc_17B1F8C:     var_264.Collect = "DEBIT4"
  loc_17B1F9A:     var_13C = CVar(var_D8(4)) 'Double
  loc_17B1FA8:     var_264.Collect = "DEBIT5"
  loc_17B1FB6:     var_13C = CVar(var_D8(5)) 'Double
  loc_17B1FC4:     var_264.Collect = "DEBIT6"
  loc_17B1FD2:     var_13C = CVar(var_D8(6)) 'Double
  loc_17B1FE0:     var_264.Collect = "Debit"
  loc_17B202A:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17B2038:     var_264.Collect = "TOTALDR"
  loc_17B2040:     var_13C = CVar(var_B4) 'Double
  loc_17B204E:     var_264.Collect = "Credit"
  loc_17B207E:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17B2090:     var_264.Collect = "ACC_NAME"
  loc_17B20A2:     var_12C = "GroupName"
  loc_17B20AE:     var_160 = var_8C.Fields
  loc_17B20B6:     var_180 = var_160.Item(var_12C)
  loc_17B20CA:     var_190 = Left(CVar(var_180), &H23)
  loc_17B20D3:     var_13C = "AName"
  loc_17B20DC:     var_264.Collect = var_13C
  loc_17B20F6:     var_264.Update var_12C, var_13C
  loc_17B20FD:     Set var_264 = Nothing 
  loc_17B2101:   End If
  loc_17B2104:   var_8C.MoveNext
  loc_17B2109:   GoTo loc_17B10C0
  loc_17B210C: End If
  loc_17B2112: var_1B0 = var_90.RecordCount
  loc_17B2120: If (var_1B0 <= 0) Then
  loc_17B2129:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_13C, var_13C, var_13C, var_13C)
  loc_17B214A:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17B215F:   global_130 = 0
  loc_17B2162:   Exit Sub
  loc_17B2163: End If
  loc_17B216F: Call 0.Method_arg_D0 (var_160, global_130, var_13C, var_13C, var_13C)
  loc_17B217A: MemVar_1F921E4 = var_160
  loc_17B2192: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17B219A: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17B21A6: For var_268 = var_BC To CInt(var_1B0): var_BC = var_268 'Integer
  loc_17B21BF:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17B21C7:   Call 0.Method_arg_20 (var_178)
  loc_17B21CF:   Call 0.Method_arg_30 (var_BC)
  loc_17B21D7:   var_26C = var_178
  loc_17B21E9:   If (var_26C = "title") Then
  loc_17B21FD:     Call 0.Method_Proc_203_64_17B2CC80 ()
  loc_17B2226:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17B2232:       Call 0.Method_arg_50 (var_178)
  loc_17B2255:       Call 0.Method_arg_90 (var_180(CInt(&HC)), CLng(var_BE))
  loc_17B225D:       Call 0.Method_arg_20 (var_180)
  loc_17B2265:       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_17B227D:     Else
  loc_17B2286:       Call 0.Method_arg_50 (var_178)
  loc_17B22A4:       Set var_160 = var_180(CInt(&HC))
  loc_17B22AA:       Call 0.Method_Proc_203_64_17B2CC80 (CVar("'" & var_178 & " ("))
  loc_17B22C1:       var_1C0 = ( + Trim(CVar(var_180)))
  loc_17B22CA:       var_1D8 = (var_1C0 + ")")
  loc_17B22D3:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17B22EB:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B22F3:       Call 0.Method_arg_20 (var_260)
  loc_17B22FB:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17B2321:     End If
  loc_17B2324:   Else
  loc_17B232C:     If (var_26C = "ACNAME") Then
  loc_17B233F:        = "'For A/C  :   "(var_178).Text
  loc_17B2362:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B236A:       Call 0.Method_arg_20 (var_25C)
  loc_17B2372:       Call 0.Method_arg_38 (var_178 & "'")
  loc_17B238C:     Else
  loc_17B2394:       If (var_26C = "DATE") Then
  loc_17B23A7:          = "'Upto Date :     "(var_178).Text
  loc_17B23CA:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17B23D2:         Call 0.Method_arg_20 (var_25C)
  loc_17B23DA:         Call 0.Method_arg_38 (var_178 & "'")
  loc_17B23F4:       Else
  loc_17B23FC:         If (var_26C = "P1") Then
  loc_17B2404:           var_13C = "0 - "
  loc_17B2437:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17B245C:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B2464:           Call 0.Method_arg_20 (var_260)
  loc_17B246C:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & var_178 & " (") & "'"))
  loc_17B248D:         Else
  loc_17B2495:           If (var_26C = "P2") Then
  loc_17B24CC:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17B24DF:             var_15C = " - "
  loc_17B2537:             Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B253F:             Call 0.Method_arg_20 (var_274)
  loc_17B2547:             Call 0.Method_arg_38 (CStr("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B2574:           Else
  loc_17B257C:             If (var_26C = "P3") Then
  loc_17B25B3:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17B25C2:               var_14C = " - "
  loc_17B25C7:               var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B25F9:               var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17B261E:               Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B2626:               Call 0.Method_arg_20 (var_274)
  loc_17B262E:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B265B:             Else
  loc_17B2663:               If (var_26C = "P4") Then
  loc_17B269A:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17B26A9:                 var_14C = " - "
  loc_17B26AE:                 var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B26E0:                 var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17B2705:                 Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B270D:                 Call 0.Method_arg_20 (var_274)
  loc_17B2715:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B2742:               Else
  loc_17B274A:                 If (var_26C = "P5") Then
  loc_17B2781:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17B2790:                   var_14C = " - "
  loc_17B2795:                   var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B27C7:                   var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17B27EC:                   Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B27F4:                   Call 0.Method_arg_20 (var_274)
  loc_17B27FC:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B2829:                 Else
  loc_17B2831:                   If (var_26C = "P6") Then
  loc_17B2868:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17B2877:                     var_14C = " - "
  loc_17B287C:                     var_1C0 = (Str(Str(CVar(var_88.Fields.Item("Age1")))) + "'")
  loc_17B288F:                     var_25C = var_88.Fields
  loc_17B2897:                     var_260 = var_25C.Item("Age6")
  loc_17B28AE:                     var_1F8 = ("'" & Str(Str(CVar(var_88.Fields.Item("Age1")))) + Str(CVar(var_260)))
  loc_17B28D3:                     Call 0.Method_arg_90 (var_270, CLng(var_BE))
  loc_17B28DB:                     Call 0.Method_arg_20 (var_274)
  loc_17B28E3:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17B2910:                   Else
  loc_17B2918:                     If (var_26C = "P7") Then
  loc_17B292F:                       var_160 = var_88.Fields
  loc_17B2937:                       var_180 = var_160.Item("Age6")
  loc_17B296F:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B2977:                       Call 0.Method_arg_20 (var_260)
  loc_17B297F:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17B299E:                     Else
  loc_17B29A6:                       If (var_26C = "P8") Then
  loc_17B29B1:                         If (arg_10 = "Dr") Then
  loc_17B29C7:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B29CF:                           Call 0.Method_arg_20 (var_180)
  loc_17B29D7:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B29E6:                         Else
  loc_17B29EE:                           If (arg_10 = "Cr") Then
  loc_17B2A04:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B2A0C:                             Call 0.Method_arg_20 (var_180)
  loc_17B2A14:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B2A20:                           End If
  loc_17B2A20:                         End If
  loc_17B2A23:                       Else
  loc_17B2A2B:                         If (var_26C = "P9") Then
  loc_17B2A36:                           If (arg_10 = "Dr") Then
  loc_17B2A4C:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B2A54:                             Call 0.Method_arg_20 (var_180)
  loc_17B2A5C:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17B2A6B:                           Else
  loc_17B2A73:                             If (arg_10 = "Cr") Then
  loc_17B2A89:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B2A91:                               Call 0.Method_arg_20 (var_180)
  loc_17B2A99:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17B2AA5:                             End If
  loc_17B2AA5:                           End If
  loc_17B2AA8:                         Else
  loc_17B2AB0:                           If (var_26C = "HEADI") Then
  loc_17B2ABB:                             If (arg_10 = "Dr") Then
  loc_17B2AD1:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B2AD9:                               Call 0.Method_arg_20 (var_180)
  loc_17B2AE1:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17B2AF0:                             Else
  loc_17B2AF8:                               If (arg_10 = "Cr") Then
  loc_17B2B0E:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17B2B16:                                 Call 0.Method_arg_20 (var_180)
  loc_17B2B1E:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17B2B2A:                               End If
  loc_17B2B2A:                             End If
  loc_17B2B2D:                           Else
  loc_17B2B35:                             If (var_26C = "PageNo") Then
  loc_17B2B8B:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B2B93:                               Call 0.Method_arg_20 (var_260)
  loc_17B2B9B:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17B2BBA:                             Else
  loc_17B2BC2:                               If (var_26C = "DT") Then
  loc_17B2BC5:                                 var_13C = "'"
  loc_17B2BDF:                                 var_160 = Me.Fields
  loc_17B2C04:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17B2C18:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17B2C20:                                 Call 0.Method_arg_20 (var_260)
  loc_17B2C28:                                 Call 0.Method_arg_38 (var_178)
  loc_17B2C44:                               End If
  loc_17B2C44:                             End If
  loc_17B2C44:                           End If
  loc_17B2C44:                         End If
  loc_17B2C44:                       End If
  loc_17B2C44:                     End If
  loc_17B2C44:                   End If
  loc_17B2C44:                 End If
  loc_17B2C44:               End If
  loc_17B2C44:             End If
  loc_17B2C44:           End If
  loc_17B2C44:         End If
  loc_17B2C44:       End If
  loc_17B2C44:     End If
  loc_17B2C44:   End If
  loc_17B2C47: Next var_268 'Integer
  loc_17B2C65: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17B2C6D: Call 0.Method_arg_2C (var_13C)
  loc_17B2C7A: Set var_88 = Nothing
  loc_17B2C82: Set var_8C = Nothing
  loc_17B2C8A: Set var_90 = Nothing
  loc_17B2C92: Set var_94 = Nothing
  loc_17B2C95: Exit Sub
  loc_17B2C96: ' Referenced from: 17B0D50
  loc_17B2CA4: Call 0.Method_arg_50 (var_178, 0)
  loc_17B2CB9: Proc_183_57_104AA84(var_178, "Aging")
  loc_17B2CC5: Exit Sub
End Sub

Public Sub Proc_203_65_127D2A4
  'Data Table: 583330
  Dim var_C8 As Variant
  Dim var_FC As Variant
  Dim var_F4 As String
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim var_B8 As String
  Dim var_130 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As String
  Dim var_320 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_10C As Variant
  Dim var_4790 As Variant
  loc_127CD5C: On Error Goto loc_127D271
  loc_127CD74: Set var_DC = CVar(CLng(0))(0)
  loc_127CD98: Call Proc_203_59_F51A10(CInt(0), CStr(var_EC))
  loc_127CDAC: If (var_F6 = 0) Then
  loc_127CDB4:   global_130 = 0
  loc_127CDB7:   Exit Sub
  loc_127CDB8: End If
  loc_127CDCD: Set var_DC = CVar(CLng(1))(0)
  loc_127CDF1: Call Proc_203_59_F51A10(CInt(1), CStr(var_EC))
  loc_127CE05: If (var_F6 = 0) Then
  loc_127CE0D:   global_130 = 0
  loc_127CE10:   Exit Sub
  loc_127CE11: End If
  loc_127CE17: global_84 = vbNullString
  loc_127CE1E: var_90 = vbNullString
  loc_127CE2D: Set var_DC = var_FC(1)
  loc_127CE33: Call 0.Method_Proc_203_65_127D2A40 (var_EE, global_130, var_F6, DGSite.DispID_41)
  loc_127CE51: If (CLng(var_EE) = 0) Then
  loc_127CE6F:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_127CE7A:   global_84 = var_F4
  loc_127CE8A:   If (var_FC.Value = 0) Then
  loc_127CE8D:     Exit Sub
  loc_127CE8E:   End If
  loc_127CE8E: End If
  loc_127CE99: If (global_84 <> vbNullString) Then
  loc_127CEAD:   var_90 = " AND VIEWLEDGER.PARTY IN (" & global_84 & ")"
  loc_127CEB3: End If
  loc_127CEC8: Set var_DC = CVar(CLng(0))(1)
  loc_127CEE6: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = var_F6
  loc_127CF0D: Set var_DC = CVar(CLng(1))(1)
  loc_127CF25: Set var_FC = DGSite.DispID_41(CStr(DGSite.DispID_41))
  loc_127CF2B: var_FC.Text = 
  loc_127CF54: If (Proc_183_48_F05F98(Me) = 0) Then
  loc_127CF5C:   global_130 = 0
  loc_127CF5F:   Exit Sub
  loc_127CF60: End If
  loc_127CF75: Set var_DC = CVar(CLng(2))(1)
  loc_127CF97: If (CStr(DGSite.DispID_41) = "Debit") Then
  loc_127CF9D:   var_98 = " AND VIEWLEDGER.DEBIT>0 "
  loc_127CFA3: Else
  loc_127CFB8:   Set var_DC = CVar(CLng(2))(1)
  loc_127CFC9:   var_F4 = CStr(DGSite.DispID_41)
  loc_127CFDA:   If (var_F4 = "Credit") Then
  loc_127CFE0:     var_98 = " AND VIEWLEDGER.Credit>0 "
  loc_127CFE3:   End If
  loc_127CFE3: End If
  loc_127CFEE: Set var_DC = var_FC(CInt(&HC))
  loc_127CFF4: Call 0.Method_Proc_203_65_127D2A40 (global_130)
  loc_127D003: var_10C = Trim(CVar(var_FC))
  loc_127D01D: If CBool(var_10C <> vbNullString) Then
  loc_127D031:   Set var_DC = var_FC(CInt(&HC))
  loc_127D037:   Call 0.Method_Proc_203_65_127D2A40 (var_F4)
  loc_127D03F:   " And VIEWLEDGER.LOGSite_Code='" = var_FC.Tag
  loc_127D04F:   var_94 = var_F4 & "'"
  loc_127D063: Else
  loc_127D071:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_127D077: End If
  loc_127D094: Proc_183_7_EB0C44(var_10C, CVar(var_380("SELECT MAX(VIEWLEDGER.PARTY) AS PARTY_cODE,MAX(SUBGROUP.NAME) AS PARTY_NAME, ")))
  loc_127D09C: var_11C = -1 & var_10C 
  loc_127D0A0: var_B8 = " AS V_DATE,Sum(DEBIT) AS DR,Sum(CREDIT) AS CR,'' AS v_type, 0 AS v_no,'' AS v_add,'' AS CHQ_NO,'' AS CHQ_DATE,'' AS CLG_DATE,'' AS NARRATION,'Opening Balance' AS Name1 FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY WHERE V_DATE<"
  loc_127D0A5: var_130 = var_11C & var_B8 
  loc_127D0B4: Proc_183_7_EB0C44(var_150)
  loc_127D0C0: var_C8 = " "
  loc_127D0EB: var_1E0 = CVar(var_DC(var_130)) & var_150 & var_C8 & CVar(var_90) & " AND SUBGROUP.NATURE='Bank' " & CVar(var_94) & " GROUP BY PARTY " 
  loc_127D0EF: var_1F0 = "Union SELECT VIEWLEDGER.PARTY AS PARTY_CODE,SUBGROUP.NAME AS PARTY_NAME,V_DATE,DEBIT AS DR,CREDIT AS CR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,SUBGROUP1.NAME AS NAME1 FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE = VIEWLEDGER.PARTY) LEFT JOIN SUBGROUP SUBGROUP1 ON VIEWLEDGER.party1=SUBGROUP1.SUBCODE WHERE V_DATE BETWEEN "
  loc_127D103: Proc_183_7_EB0C44(var_220)
  loc_127D123: Proc_183_7_EB0C44(var_270)
  loc_127D15A: var_320 = CVar((CVar((var_1E0 & var_1F0)) & var_220 & " AND ")) & var_270 & " " & CVar(var_90) & " " & CVar(var_98) & " AND SUBGROUP.NATURE='Bank' " 
  loc_127D171: var_F4 = CStr(var_320 & CVar(var_94) & vbNullString)
  loc_127D17B: unk_58337D.Execute var_F4, , 
  loc_127D186: Set var_88 = var_DC
  loc_127D1DE: If (var_88.RecordCount <= 0) Then
  loc_127D1E7:   Call 0.Method_arg_50 (var_F4)
  loc_127D208:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_127D21D:   global_130 = 0
  loc_127D220:   Exit Sub
  loc_127D221: End If
  loc_127D22D: Call 0.Method_arg_110 (var_DC)
  loc_127D238: MemVar_1F921E4 = var_DC
  loc_127D258: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_127D260: Call 0.Method_arg_2C (var_C8)
  loc_127D26D: Set var_88 = Nothing
  loc_127D270: Exit Sub
  loc_127D271: ' Referenced from: 127CD5C
  loc_127D276: global_130 = 0
  loc_127D27F: Call 0.Method_arg_50 (var_F4, global_130)
  loc_127D294: Proc_183_57_104AA84(var_F4, "BankReg")
  loc_127D2A0: Exit Sub
  loc_127D2A1: var_4790 = CVar(global_130) 'Address
End Sub

Public Sub Proc_203_66_14C1C1C
  'Data Table: 583330
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_110 As String
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_D4 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_F8 As Fields15
  Dim var_170 As Variant
  Dim var_90 As Recordset15
  Dim var_10A As Integer
  Dim var_1F8 As Fields15
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_1E0 As Variant
  Dim var_214 As Variant
  Dim var_234 As Variant
  Dim var_26C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  loc_14C0F38: On Error Goto loc_14C1BEC
  loc_14C0F50: Set var_F8 = CVar(CLng(0))(0)
  loc_14C0F74: Call Proc_203_59_F51A10(CInt(0), CStr(var_108))
  loc_14C0F88: If (var_112 = 0) Then
  loc_14C0F90:   global_130 = 0
  loc_14C0F93:   Exit Sub
  loc_14C0F94: End If
  loc_14C0FA9: Set var_F8 = CVar(CLng(1))(0)
  loc_14C0FCD: Call Proc_203_59_F51A10(CInt(1), CStr(var_108))
  loc_14C0FE1: If (var_112 = 0) Then
  loc_14C0FE9:   global_130 = 0
  loc_14C0FEC:   Exit Sub
  loc_14C0FED: End If
  loc_14C0FF3: global_84 = vbNullString
  loc_14C0FFA: var_A0 = vbNullString
  loc_14C1009: Set var_F8 = var_118(1)
  loc_14C100F: Call 0.Method_Proc_203_66_14C1C1C0 (var_10A, global_130, var_112, DGSite.DispID_41)
  loc_14C102D: If (CLng(var_10A) = 0) Then
  loc_14C104B:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_14C1056:   global_84 = var_110
  loc_14C1066:   If (var_118.Value = 0) Then
  loc_14C1069:     Exit Sub
  loc_14C106A:   End If
  loc_14C106A: End If
  loc_14C1075: If (global_84 <> vbNullString) Then
  loc_14C109A:   var_A0 = " AND SUBGROUP.GROUPCODE IN (" & global_84 & ") AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_14C10A6: End If
  loc_14C10BB: Set var_F8 = CVar(CLng(0))(1)
  loc_14C10D9: CStr(DGSite.DispID_41)(CStr(DGSite.DispID_41)).Text = var_112
  loc_14C1100: Set var_F8 = CVar(CLng(1))(1)
  loc_14C1111: var_110 = CStr(DGSite.DispID_41)
  loc_14C1118: Set var_118 = DGSite.DispID_41(var_110)
  loc_14C111E: var_118.Text = 
  loc_14C1147: If (Proc_183_48_F05F98(Me) = 0) Then
  loc_14C114F:   global_130 = 0
  loc_14C1152:   Exit Sub
  loc_14C1153: End If
  loc_14C115E: Set var_F8 = var_118(CInt(&HC))
  loc_14C1164: Call 0.Method_Proc_203_66_14C1C1C0 (global_130)
  loc_14C1173: var_130 = Trim(CVar(var_118))
  loc_14C118D: If CBool(var_130 <> vbNullString) Then
  loc_14C11A1:   Set var_F8 = var_118(CInt(&HC))
  loc_14C11A7:   Call 0.Method_Proc_203_66_14C1C1C0 (var_110)
  loc_14C11AF:   " And LEDGER.Site_Code='" = var_118.Tag
  loc_14C11BF:   var_B4 = var_110 & "'"
  loc_14C11D3: Else
  loc_14C11E1:   var_B4 = " And LEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_14C11E7: End If
  loc_14C11F4: var_C4 = "Select SUBGROUP.GroupCode,Name,SubCode,MAX(GroupName) AS GNAME From SubGroup LEFT JOIN AcGroup on AcGroup.GROUPCODE=SUBGROUP.GROUPCODE Where SubCode Not In (Select DISTINCT SubCode From Ledger Where V_Date Between "
  loc_14C1204: Proc_183_7_EB0C44(var_130, CVar(var_1E0(var_C4)))
  loc_14C120C: var_140 = -1 & var_130 
  loc_14C1215: var_150 = var_140 & " And " 
  loc_14C121D: var_160 = CVar(var_F8(var_150)) 'Address
  loc_14C1224: Proc_183_7_EB0C44(var_170)
  loc_14C1248: var_1C0 = var_160 & var_170 & ") " & CVar(var_A0) & " GROUP BY SubGroup.GroupCode,SubGroup.Name,SubGroup.SubCode" 
  loc_14C124C: var_110 = CStr(var_1C0)
  loc_14C1256: unk_58337D.Execute var_110, , 
  loc_14C1261: Set var_88 = var_F8
  loc_14C1297: If (var_88.RecordCount <= 0) Then
  loc_14C12A0:   Call 0.Method_arg_50 (var_110)
  loc_14C12C1:   MsgBox("** No Records Found to Print **", &H40, CVar(var_110), var_140, var_150)
  loc_14C12D6:   global_130 = 0
  loc_14C12D9:   Exit Sub
  loc_14C12DA: End If
  loc_14C12EA: Set var_F8 = New
  loc_14C12F9: Call 0.Method_arg_1A8 (var_F8, var_118)
  loc_14C1304: Set var_8C = var_F8
  loc_14C130D: Set var_8C = var_118
  loc_14C1317: ' Referenced from: 14C1B32
  loc_14C1326: If Not(Me.Recordset15.EOF) Then
  loc_14C132C:   var_98 = vbNullString
  loc_14C1332:   var_9C = vbNullString
  loc_14C1342:   var_D4 = "Select ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) As OpBal  From Ledger Where SubCode='"
  loc_14C1389:   Proc_183_7_EB0C44(var_160, CVar(var_1C0(" And " & var_88.Fields.Item("subcode").Value & "' And V_DATE<")), -1)
  loc_14C13BB:   unk_58337D.Execute CStr(var_1F8 & var_160 & " " & CVar(var_B4) & vbNullString), global_130, 
  loc_14C13C6:   Set var_90 = var_1F8
  loc_14C1400:   If (var_90.RecordCount > 0) Then
  loc_14C142B:     var_10A = IsNull(CVar(var_90.Fields.Item("OpBal")))
  loc_14C143D:     var_1F8 = var_90.Fields
  loc_14C1469:     var_A8 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("OpBal"))))
  loc_14C1480:   End If
  loc_14C148D:   var_D4 = "SELECT ISNULL(sum(AmtDr),0)-ISNULL(sum(AmtCr),0) AS ClBal FROM Ledger Where SubCode='"
  loc_14C14D4:   Proc_183_7_EB0C44(var_160, CVar(var_1C0("OpBal" & var_88.Fields.Item("subcode").Value & "' And V_Date<=")), -1)
  loc_14C1506:   unk_58337D.Execute CStr(var_1F8 & var_160 & " " & CVar(var_B4) & vbNullString), var_A8, var_10A
  loc_14C1511:   Set var_90 = var_1F8
  loc_14C154B:   If (var_90.RecordCount > 0) Then
  loc_14C1576:     var_10A = IsNull(CVar(var_90.Fields.Item("clbal")))
  loc_14C1588:     var_1F8 = var_90.Fields
  loc_14C15B4:     var_B0 = CSng(IIf(var_10A, 0, CVar(var_1F8.Item("clbal"))))
  loc_14C15CB:   End If
  loc_14C15D8:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTCR,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C161F:   Proc_183_7_EB0C44(var_160, CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")), -1)
  loc_14C1651:   unk_58337D.Execute CStr(var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC"), var_B0, var_10A
  loc_14C165C:   Set var_90 = var_1F8
  loc_14C1696:   If (var_90.RecordCount > 0) Then
  loc_14C16D8:     var_150 = (CVar(CStr(var_90.Fields.Item("V_DATE").Value)) + Space(1))
  loc_14C16EE:     var_1F8 = var_90.Fields
  loc_14C16FE:     var_160 = var_1F8.Item("V_Type").Value
  loc_14C170B:     var_180 = (CVar(var_1C0("V_Type" & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")) + CVar(CStr(var_160)))
  loc_14C171F:     var_1A0 = (var_1F8 & var_160 & " AND AMTDR>0 " + Space(1))
  loc_14C1745:     var_1C0 = var_90.Fields.Item("V_NO").Value
  loc_14C1752:     var_214 = (var_1F8 & var_160 & " AND AMTDR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_1C0)))
  loc_14C1766:     var_234 = (var_214 + Space(1))
  loc_14C1799:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtDr").Value)))
  loc_14C179E:     var_98 = CStr(var_26C)
  loc_14C17D9:   End If
  loc_14C17E6:   var_D4 = "SELECT subgroup.Name,V_DATE,AMTcr,AMTDR,v_type,v_no FROM LEDGER LEFT JOIN subgroup ON LEDGER.CONTRASUB=subgroup.SubCode WHERE LEDGER.SUBCODE='"
  loc_14C182D:   Proc_183_7_EB0C44(var_160, CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")))
  loc_14C1835:   var_170 = -1 & var_160 
  loc_14C1855:   var_110 = CStr(CVar(CStr(var_160)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC")
  loc_14C185F:   unk_58337D.Execute var_110, var_1F8, 
  loc_14C186A:   Set var_90 = var_1F8
  loc_14C18A4:   If (var_90.RecordCount > 0) Then
  loc_14C18AD:     var_C4 = "V_DATE"
  loc_14C18D3:     var_140 = CVar(CStr(var_90.Fields.Item(var_C4).Value)) 'String
  loc_14C18E6:     var_150 = (var_140 + Space(1))
  loc_14C18F0:     var_D4 = "V_Type"
  loc_14C1919:     var_180 = (CVar(var_1C0(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")) + CVar(CStr(var_90.Fields.Item(var_D4).Value)))
  loc_14C192D:     var_1A0 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " + Space(1))
  loc_14C1960:     var_214 = (CVar(CStr(var_90.Fields.Item(var_D4).Value)) & " AND AMTCR>0 " & CVar(var_B4) & " ORDER BY LEDGER.V_DATE DESC" + CVar(CStr(var_90.Fields.Item("V_NO").Value)))
  loc_14C1974:     var_234 = (var_214 + Space(1))
  loc_14C19A7:     var_26C = (var_234 + CVar(CStr(var_90.Fields.Item("AmtCr").Value)))
  loc_14C19AC:     var_9C = CStr(var_26C)
  loc_14C19E7:   End If
  loc_14C19EA:   Set var_270 = var_8C 
  loc_14C19F9:   var_270.AddNew var_C4, var_D4
  loc_14C1A1D:   var_108 = CVar(var_88.Fields.Item("Name")) 'Address
  loc_14C1A2B:   var_270.Collect = "ACCNAME"
  loc_14C1A56:   var_130 = Format(var_A8, "0.00")
  loc_14C1A68:   var_270.Collect = "OpBal"
  loc_14C1A94:   var_130 = Format(var_B0, "0.00")
  loc_14C1A9D:   var_E4 = "clbal"
  loc_14C1AA6:   var_270.Collect = var_E4
  loc_14C1AB5:   var_D4 = CVar(var_98) 'String
  loc_14C1AC2:   var_270.Collect = "LastDrVNo"
  loc_14C1ACA:   var_D4 = CVar(var_9C) 'String
  loc_14C1AD7:   var_270.Collect = "LastCrVNo"
  loc_14C1ADF:   var_C4 = "GName"
  loc_14C1AEB:   var_F8 = var_88.Fields
  loc_14C1AFB:   var_108 = CVar(var_F8.Item(var_C4)) 'Address
  loc_14C1B00:   var_D4 = "GroupName"
  loc_14C1B09:   var_270.Collect = var_D4
  loc_14C1B1F:   var_270.Update var_C4, var_D4
  loc_14C1B26:   Set var_270 = Nothing 
  loc_14C1B2D:   var_88.MoveNext
  loc_14C1B32:   GoTo loc_14C1317
  loc_14C1B35: End If
  loc_14C1B49: If (var_8C.RecordCount <= 0) Then
  loc_14C1B52:   Call 0.Method_arg_50 (var_110, var_108, var_D4, var_D4, var_130, 1)
  loc_14C1B60:   var_130 = CVar(var_110) 'String
  loc_14C1B73:   MsgBox("** No Records Found to Print **", &H40, var_130, var_140, CVar(var_90.Fields.Item("V_NO").Value(var_D4 & var_88.Fields.Item("subcode").Value & "' AND V_DATE<")))
  loc_14C1B88:   global_130 = 0
  loc_14C1B8B:   Exit Sub
  loc_14C1B8C: End If
  loc_14C1B98: Call 0.Method_arg_10C (var_F8, global_130, 1, var_130)
  loc_14C1BA3: MemVar_1F921E4 = var_F8
  loc_14C1BC3: Call 0.Method_arg_64 (var_F8, CVar(var_8C), var_D4, var_E4)
  loc_14C1BCB: Call 0.Method_arg_2C (1, 1)
  loc_14C1BD8: Set var_88 = Nothing
  loc_14C1BE0: Set var_8C = Nothing
  loc_14C1BE8: Set var_90 = Nothing
  loc_14C1BEB: Exit Sub
  loc_14C1BEC: ' Referenced from: 14C0F38
  loc_14C1BFA: Call 0.Method_arg_50 (var_110, 0)
  loc_14C1C0F: Proc_183_57_104AA84(var_110, "NonTrans")
  loc_14C1C1B: Exit Sub
End Sub

Public Sub Proc_203_67_12736B8
  'Data Table: 583330
  Dim var_C8 As Variant
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_B8 As String
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_240 As String
  Dim var_270 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  loc_1273170: On Error Goto loc_1273685
  loc_1273188: Set var_DC = CVar(CLng(0))(0)
  loc_12731AC: Call Proc_203_59_F51A10(CInt(0), CStr(var_EC))
  loc_12731C0: If (var_F6 = 0) Then
  loc_12731C8:   global_130 = 0
  loc_12731CB:   Exit Sub
  loc_12731CC: End If
  loc_12731E1: Set var_DC = CVar(CLng(1))(0)
  loc_1273205: Call Proc_203_59_F51A10(CInt(1), CStr(var_EC))
  loc_1273219: If (var_F6 = 0) Then
  loc_1273221:   global_130 = 0
  loc_1273224:   Exit Sub
  loc_1273225: End If
  loc_127323A: Set var_DC = CVar(CLng(2))(0)
  loc_127325E: Call Proc_203_59_F51A10(CInt(2), CStr(var_EC))
  loc_1273272: If (var_F6 = 0) Then
  loc_127327A:   global_130 = 0
  loc_127327D:   Exit Sub
  loc_127327E: End If
  loc_1273293: Set var_DC = CVar(CLng(0))(1)
  loc_12732B1: global_130(CStr(DGSite.DispID_41)).Text = var_F6
  loc_12732D8: Set var_DC = CVar(CLng(1))(1)
  loc_12732E9: var_F4 = CStr(DGSite.DispID_41)
  loc_12732F0: Set var_FC = DGSite.DispID_41(var_F4)
  loc_12732F6: var_FC.Text = global_130
  loc_127331F: If (Proc_183_48_F05F98(Me, var_F6, DGSite.DispID_41) = 0) Then
  loc_1273327:   global_130 = 0
  loc_127332A:   Exit Sub
  loc_127332B: End If
  loc_1273336: Set var_DC = var_FC(CInt(&HC))
  loc_127333C: Call 0.Method_Proc_203_67_12736B80 (global_130, global_130)
  loc_1273365: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_1273379:   Set var_DC = var_FC(CInt(&HC))
  loc_127337F:   Call 0.Method_Proc_203_67_12736B80 (var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_1273387:   var_F6 = var_FC.Tag
  loc_1273397:   var_98 = DGSite.DispID_41 & var_F4 & "'"
  loc_12733AB: Else
  loc_12733B9:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_12733BF: End If
  loc_12733D4: Set var_DC = CVar(CLng(2))(1)
  loc_1273401: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_127342E: Set var_DC = CVar(CLng(2))(2)
  loc_127343F: var_10C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_127344E: var_8C = CStr(Trim(var_10C))
  loc_1273479: Proc_183_7_EB0C44(var_10C)
  loc_1273492: var_150 = CVar((CVar((CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "))) & var_10C & " AND ")) 'Address
  loc_1273499: Proc_183_7_EB0C44(var_160)
  loc_12734E7: Proc_183_7_EB0C44(var_10C, CVar(var_2F0("SELECT 1 AS TT,")))
  loc_12734EF: var_11C = -1 & var_10C 
  loc_12734F3: var_B8 = " AS V_DATE,SUM(credit) AS CR,SUM(debit) AS DR,'OP' AS v_type,0 AS v_no,'' AS v_add,'' AS CHQ_NO,NULL AS CHQ_DATE,"
  loc_12734F8: var_130 = CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN ") & var_B8 
  loc_1273507: Proc_183_7_EB0C44(var_150)
  loc_1273513: var_C8 = " AS CLG_DATE,'' AS NARRATION,MAX(PARTY_NAME) AS PARTYNAME,MAX(PARTY_LIST.ADD1) AS ADDRESS1,MAX(PARTY_LIST.ADD2) AS ADDRESS2,MAX(CITY_NAME) AS CITYNAME,'Opening Balance' AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE WHERE PARTY='"
  loc_127353A: Proc_183_7_EB0C44(var_1C0)
  loc_127354B: var_1F0 = CVar((CVar(var_DC(var_130)) & var_150 & var_C8 & CVar(var_8C) & "' AND CLG_DATE<")) & var_1C0 & " AND CLG_DATE IS NOT NULL " 
  loc_1273562: var_240 = "UNION SELECT 2 AS TT,V_DATE,credit AS CR,debit AS DR,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,MNARR+' '+NARR AS NARRATION,PARTY_NAME AS PARTYNAME,PARTY_LIST.ADD1 AS ADDRESS1,PARTY_LIST.ADD2 AS ADDRESS2,CITY_NAME AS CITYNAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE "
  loc_1273571: var_270 = var_1F0 & CVar(var_98) & " GROUP BY VIEWLEDGER.PARTY " & var_240 & CVar(CStr(var_150 & CVar(var_DC(var_130)) & var_150 & " AND CLG_DATE IS NOT NULL")) 
  loc_1273591: var_F4 = CStr(var_270 & " " & CVar(var_98) & vbNullString)
  loc_127359B: unk_58337D.Execute var_F4, , 
  loc_12735A6: Set var_88 = var_DC
  loc_12735F2: If (var_88.RecordCount <= 0) Then
  loc_12735FB:   Call 0.Method_arg_50 (var_F4)
  loc_127361C:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), CVar(" WHERE PARTY='" & var_8C & "' AND CLG_DATE BETWEEN "), var_130)
  loc_1273631:   global_130 = 0
  loc_1273634:   Exit Sub
  loc_1273635: End If
  loc_1273641: Call 0.Method_arg_118 (var_DC)
  loc_127364C: MemVar_1F921E4 = var_DC
  loc_127366C: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_1273674: Call 0.Method_arg_2C (var_C8)
  loc_1273681: Set var_88 = Nothing
  loc_1273684: Exit Sub
  loc_1273685: ' Referenced from: 1273170
  loc_1273693: Call 0.Method_arg_50 (var_F4, 0)
  loc_12736A8: Proc_183_57_104AA84(var_F4, "Clg")
  loc_12736B4: Exit Sub
  loc_12736B5: VarIndexSt
End Sub

Public Sub Proc_203_68_11F67F4
  'Data Table: 583330
  Dim var_C8 As Long
  Dim var_F4 As String
  Dim var_FC As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_B8 As String
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  loc_11F6378: On Error Goto loc_11F67C1
  loc_11F6390: Set var_DC = CVar(CLng(0))(0)
  loc_11F63B4: Call Proc_203_59_F51A10(CInt(0), CStr(var_EC))
  loc_11F63C8: If (var_F6 = 0) Then
  loc_11F63D0:   global_130 = 0
  loc_11F63D3:   Exit Sub
  loc_11F63D4: End If
  loc_11F63E9: Set var_DC = CVar(CLng(1))(0)
  loc_11F640D: Call Proc_203_59_F51A10(CInt(1), CStr(var_EC))
  loc_11F6421: If (var_F6 = 0) Then
  loc_11F6429:   global_130 = 0
  loc_11F642C:   Exit Sub
  loc_11F642D: End If
  loc_11F6442: Set var_DC = CVar(CLng(2))(0)
  loc_11F6466: Call Proc_203_59_F51A10(CInt(2), CStr(var_EC))
  loc_11F647A: If (var_F6 = 0) Then
  loc_11F6482:   global_130 = 0
  loc_11F6485:   Exit Sub
  loc_11F6486: End If
  loc_11F649B: Set var_DC = CVar(CLng(0))(1)
  loc_11F64B9: global_130(CStr(DGSite.DispID_41)).Text = var_F6
  loc_11F64E0: Set var_DC = CVar(CLng(1))(1)
  loc_11F64F1: var_F4 = CStr(DGSite.DispID_41)
  loc_11F64F8: Set var_FC = DGSite.DispID_41(var_F4)
  loc_11F64FE: var_FC.Text = global_130
  loc_11F6527: If (Proc_183_48_F05F98(Me, var_F6, DGSite.DispID_41) = 0) Then
  loc_11F652F:   global_130 = 0
  loc_11F6532:   Exit Sub
  loc_11F6533: End If
  loc_11F653E: Set var_DC = var_FC(CInt(&HC))
  loc_11F6544: Call 0.Method_Proc_203_68_11F67F40 (global_130, global_130)
  loc_11F656D: If CBool(Trim(CVar(var_FC)) <> vbNullString) Then
  loc_11F6581:   Set var_DC = var_FC(CInt(&HC))
  loc_11F6587:   Call 0.Method_Proc_203_68_11F67F40 (var_F4, " And VIEWLEDGER.LOGSite_Code='")
  loc_11F658F:   var_F6 = var_FC.Tag
  loc_11F659F:   var_98 = DGSite.DispID_41 & var_F4 & "'"
  loc_11F65B3: Else
  loc_11F65C1:   var_98 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_11F65C7: End If
  loc_11F65DC: Set var_DC = CVar(CLng(2))(1)
  loc_11F6609: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_11F6629: var_C8 = 2
  loc_11F6636: Set var_DC = CVar(CLng(2))(var_C8)
  loc_11F6647: var_10C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_11F6673: var_11C = CVar(" WHERE PARTY='" & CStr(Trim(var_10C)) & "' AND V_date BETWEEN ") 'String
  loc_11F667A: var_EC = CVar((var_11C)) 'Address
  loc_11F6681: Proc_183_7_EB0C44(var_10C)
  loc_11F6689: var_130 = var_EC & var_10C 
  loc_11F66A1: Proc_183_7_EB0C44(var_160)
  loc_11F66AD: var_B8 = " AND CHQ_NO<> '' AND CHQ_NO IS NOT NULL AND CLG_DATE IS NULL"
  loc_11F66E6: var_F4 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,CLG_DATE,NARR AS NARRATION,PARTY_NAME,PARTY_LIST.ADD1,PARTY_LIST.ADD2,CITY_NAME,SUBGROUP.NAME AS CONTRA_NAME FROM (VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party1=SUBGROUP.SUBCODE) LEFT JOIN PARTY_LIST ON VIEWLEDGER.party=PARTY_LIST.SUBCODE " & CStr(CVar((var_130 & " AND ")) & var_160 & var_B8)
  loc_11F66FD: unk_58337D.Execute var_F4 & " " & var_98, var_EC, -1
  loc_11F6708: Set var_88 = var_DC
  loc_11F672E: If (var_88.RecordCount <= 0) Then
  loc_11F6737:   Call 0.Method_arg_50 (var_F4)
  loc_11F6758:   MsgBox("** No Records Found to Print **", &H40, CVar(var_F4), var_11C, var_130)
  loc_11F676D:   global_130 = 0
  loc_11F6770:   Exit Sub
  loc_11F6771: End If
  loc_11F677D: Call 0.Method_arg_114 (var_DC, global_130)
  loc_11F6788: MemVar_1F921E4 = var_DC
  loc_11F67A8: Call 0.Method_arg_64 (var_DC, CVar(var_88), var_B8)
  loc_11F67B0: Call 0.Method_arg_2C (var_C8)
  loc_11F67BD: Set var_88 = Nothing
  loc_11F67C0: Exit Sub
  loc_11F67C1: ' Referenced from: 11F6378
  loc_11F67CF: Call 0.Method_arg_50 (var_F4, 0)
  loc_11F67E4: Proc_183_57_104AA84(var_F4, "ClgNot")
  loc_11F67F0: Exit Sub
End Sub

Public Sub Proc_203_69_13B2EE8(arg_C) '13B2EE8
  'Data Table: 583330
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_E8 As Fields15
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_1DA As Integer
  Dim var_1D8 As Variant
  Dim var_9A As Integer
  loc_13B25D0: On Error Goto loc_13B2EB8
  loc_13B25E8: Set var_E8 = CVar(CLng(0))(0)
  loc_13B260C: Call Proc_203_59_F51A10(CInt(0), CStr(var_F8))
  loc_13B2620: If (var_102 = 0) Then
  loc_13B2628:   global_130 = 0
  loc_13B262B:   Exit Sub
  loc_13B262C: End If
  loc_13B2641: Set var_E8 = CVar(CLng(1))(0)
  loc_13B2665: Call Proc_203_59_F51A10(CInt(1), CStr(var_F8))
  loc_13B2679: If (var_102 = 0) Then
  loc_13B2681:   global_130 = 0
  loc_13B2684:   Exit Sub
  loc_13B2685: End If
  loc_13B269A: Set var_E8 = CVar(CLng(2))(0)
  loc_13B26BE: Call Proc_203_59_F51A10(CInt(2), CStr(var_F8))
  loc_13B26D2: If (var_102 = 0) Then
  loc_13B26DA:   global_130 = 0
  loc_13B26DD:   Exit Sub
  loc_13B26DE: End If
  loc_13B26F3: Set var_E8 = CVar(CLng(0))(1)
  loc_13B2711: global_130(CStr(DGSite.DispID_41)).Text = var_102
  loc_13B2738: Set var_E8 = CVar(CLng(1))(1)
  loc_13B2749: var_100 = CStr(DGSite.DispID_41)
  loc_13B2750: Set var_108 = DGSite.DispID_41(var_100)
  loc_13B2756: var_108.Text = global_130
  loc_13B277F: If (Proc_183_48_F05F98(Me, var_102, DGSite.DispID_41) = 0) Then
  loc_13B2787:   global_130 = 0
  loc_13B278A:   Exit Sub
  loc_13B278B: End If
  loc_13B2796: Set var_E8 = var_108(CInt(&HC))
  loc_13B279C: Call 0.Method_Proc_203_69_13B2EE80 (global_130, global_130)
  loc_13B27C5: If CBool(Trim(CVar(var_108)) <> vbNullString) Then
  loc_13B27D9:   Set var_E8 = var_108(CInt(&HC))
  loc_13B27DF:   Call 0.Method_Proc_203_69_13B2EE80 (var_100, " And VIEWLEDGER.LOGSite_Code='")
  loc_13B27E7:   var_102 = var_108.Tag
  loc_13B27F7:   var_A0 = DGSite.DispID_41 & var_100 & "'"
  loc_13B280B: Else
  loc_13B2812:   var_100 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_13B2819:   var_A0 = var_100 & "'"
  loc_13B281F: End If
  loc_13B282A: Set var_E8 = var_108(CInt(&HC))
  loc_13B2830: Call 0.Method_Proc_203_69_13B2EE80 ()
  loc_13B2838: var_F8 = CVar(var_108) 'Address
  loc_13B2859: If CBool(Trim(var_F8) <> vbNullString) Then
  loc_13B286D:   Set var_E8 = var_108(CInt(&HC))
  loc_13B2873:   Call 0.Method_Proc_203_69_13B2EE80 (var_100)
  loc_13B287B:   " And LEDGER.LOGSite_Code='" = var_108.Tag
  loc_13B288B:   var_A4 = var_100 & "'"
  loc_13B289F: Else
  loc_13B28AD:   var_A4 = " And LEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_13B28B3: End If
  loc_13B28C8: Set var_E8 = CVar(CLng(2))(1)
  loc_13B28F5: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_13B2933: var_118 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_13B2942: var_90 = CStr(Trim(var_118))
  loc_13B2975: unk_58337D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "'", var_F8, -1
  loc_13B2980: Set var_88 = CVar(CLng(2))(2)
  loc_13B29A4: If (var_88.RecordCount > 0) Then
  loc_13B29B9:   var_E8 = var_88.Fields
  loc_13B2A27:   If CBool((var_E8.Item("GroupNature").Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_13B2A3E:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B2A4C:     var_F8 = CVar(var_188(CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_DATE<"))) 'Address
  loc_13B2A53:     Proc_183_7_EB0C44(var_118, var_F8, -1)
  loc_13B2A6E:     var_168 = var_E8 & var_118 & " " & CVar(var_A0) 
  loc_13B2A85:     unk_58337D.Execute CStr(var_168 & vbNullString), var_E8, 
  loc_13B2A90:     Set var_8C = var_E8
  loc_13B2AB3:   Else
  loc_13B2AC7:     var_100 = "SELECT SUM(CREDIT)-SUM(DEBIT) AS OPBAL from VIEWLEDGER WHERE PARTY='" & var_90
  loc_13B2ACE:     var_118 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_90 & "' AND V_dATE>=") 'String
  loc_13B2ADC:     Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, var_118)
  loc_13B2AF5:     var_158 = CVar(-1(var_1D8 & var_F8 & " AND V_DATE<")) 'Address
  loc_13B2AFC:     Proc_183_7_EB0C44(var_168, var_E8 & var_118 & " ")
  loc_13B2B04:     var_178 = var_E8 & var_168 
  loc_13B2B2E:     unk_58337D.Execute CStr(var_178 & " " & CVar(var_A0) & vbNullString), , 
  loc_13B2B39:     Set var_8C = var_E8
  loc_13B2B5F:   End If
  loc_13B2B5F: End If
  loc_13B2B73: If (var_8C.RecordCount > 0) Then
  loc_13B2B85:   var_E8 = var_8C.Fields
  loc_13B2B95:   var_F8 = CVar(var_E8.Item("OpBal")) 'Address
  loc_13B2B9C:   Proc_183_3_E7D1C8(var_118)
  loc_13B2BA8:   global_132 = CSng(var_118)
  loc_13B2BB8: Else
  loc_13B2BBE:   global_132 = CDbl(0)
  loc_13B2BC1: End If
  loc_13B2BC4: var_1DA = arg_C
  loc_13B2BCD: If (var_1DA = 1) Then
  loc_13B2BE4:   var_100 = "SELECT ISNULL(SUM(AMTDR),0) AS DEB,ISNULL(SUM(AMTCR),0) AS CRED,V_DATE from LEDGER WHERE SUBCODE='" & var_90
  loc_13B2BEB:   var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B2BF2:   var_F8 = CVar(var_1EC(var_128)) 'Address
  loc_13B2BF9:   Proc_183_7_EB0C44(var_118, var_F8, -1, var_E8)
  loc_13B2C01:   var_148 = var_1DA & var_118 
  loc_13B2C19:   Proc_183_7_EB0C44(var_178, CVar(global_132(var_148 & " AND ")))
  loc_13B2C4B:   unk_58337D.Execute CStr(global_132 & var_178 & " " & CVar(var_A4) & " GROUP BY V_DATE ORDER BY V_DATE"), var_F8, 
  loc_13B2C56:   Set var_88 = var_E8
  loc_13B2C92:   If (var_88.RecordCount <= 0) Then
  loc_13B2C9B:     Call 0.Method_arg_50 (var_100)
  loc_13B2CBC:     MsgBox("No Records To Print....", &H40, CVar(var_100), var_128, var_148)
  loc_13B2CD1:     global_130 = 0
  loc_13B2CD7:   Else
  loc_13B2CE2:     var_118 = "Paper Setting"
  loc_13B2CF8:     MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_118, var_128, var_148)
  loc_13B2D17:     Set var_108 = var_88
  loc_13B2D20:     Set var_E8 = Me 
  loc_13B2D30:     Call 0.Method_arg_170 (var_E8, var_108, global_132)
  loc_13B2D3B:     Set var_88 = var_108
  loc_13B2D41:     var_9A = var_FA
  loc_13B2D50:     global_130 = 0
  loc_13B2D53:     GoTo loc_13B2EA7
  loc_13B2D59:   Else
  loc_13B2D6D:     var_100 = "SELECT V_TYPE,V_NO,V_ADD,V_SNO,PARTY,0 AS OPBAL,DEBIT AS DEB,CREDIT AS CRED,V_DATE,GROUPNATURE from VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE PARTY='" & var_90
  loc_13B2D74:     var_128 = CVar(var_100 & "' AND V_DATE BETWEEN ") 'String
  loc_13B2D82:     Proc_183_7_EB0C44(var_118, CVar(var_1EC(var_128)), -1, var_E8)
  loc_13B2D8A:     var_148 = global_130 & var_118 
  loc_13B2DA2:     Proc_183_7_EB0C44(var_178, CVar(var_9A(var_148 & " AND ")))
  loc_13B2DAE:     var_C4 = " "
  loc_13B2DBA:     var_D4 = CVar(var_A0) 'String
  loc_13B2DD4:     unk_58337D.Execute CStr(var_FA & var_178 & var_C4 & var_D4 & vbNullString), global_130, 
  loc_13B2DDF:     Set var_88 = var_E8
  loc_13B2E1B:     If (var_88.RecordCount <= 0) Then
  loc_13B2E24:       Call 0.Method_arg_50 (var_100)
  loc_13B2E45:       MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_148)
  loc_13B2E5A:       global_130 = 0
  loc_13B2E60:     Else
  loc_13B2E6C:       Call 0.Method_arg_C0 (var_E8)
  loc_13B2E77:       MemVar_1F921E4 = var_E8
  loc_13B2E97:       Call 0.Method_arg_64 (var_E8, CVar(var_88), var_C4)
  loc_13B2E9F:       Call 0.Method_arg_2C (var_D4)
  loc_13B2EA7:     End If
  loc_13B2EA7:   End If
  loc_13B2EA7:   ' Referenced from:   13B2D53
  loc_13B2EA7: End If
  loc_13B2EAC: Set var_88 = Nothing
  loc_13B2EB4: Set var_8C = Nothing
  loc_13B2EB7: Exit Sub
  loc_13B2EB8: ' Referenced from: 13B25D0
  loc_13B2EC6: Call 0.Method_arg_50 (var_100, 0)
  loc_13B2EDB: Proc_183_57_104AA84(var_100, "DailySumm")
  loc_13B2EE7: Exit Sub
End Sub

Public Sub Proc_203_70_1507EE8(arg_C) '1507EE8
  'Data Table: 583330
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_150706C: On Error Goto loc_1507EB7
  loc_1507084: Set var_E4 = CVar(CLng(0))(0)
  loc_15070A8: Call Proc_203_59_F51A10(CInt(0), CStr(var_F4))
  loc_15070BC: If (var_FE = 0) Then
  loc_15070C4:   global_130 = 0
  loc_15070C7:   Exit Sub
  loc_15070C8: End If
  loc_15070DD: Set var_E4 = CVar(CLng(1))(0)
  loc_1507101: Call Proc_203_59_F51A10(CInt(1), CStr(var_F4))
  loc_1507115: If (var_FE = 0) Then
  loc_150711D:   global_130 = 0
  loc_1507120:   Exit Sub
  loc_1507121: End If
  loc_1507136: Set var_E4 = CVar(CLng(2))(0)
  loc_150715A: Call Proc_203_59_F51A10(CInt(2), CStr(var_F4))
  loc_150716E: If (var_FE = 0) Then
  loc_1507176:   global_130 = 0
  loc_1507179:   Exit Sub
  loc_150717A: End If
  loc_150718F: Set var_E4 = CVar(CLng(0))(1)
  loc_15071AD: global_130(CStr(DGSite.DispID_41)).Text = var_FE
  loc_15071D4: Set var_E4 = CVar(CLng(1))(1)
  loc_15071F2: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_150721B: If (Proc_183_48_F05F98(Me, var_FE, DGSite.DispID_41) = 0) Then
  loc_1507223:   global_130 = 0
  loc_1507226:   Exit Sub
  loc_1507227: End If
  loc_150723C: Set var_E4 = CVar(CLng(2))(1)
  loc_1507263: Set var_104 = global_130(CStr(Trim(CVar(CStr(DGSite.DispID_41)))))
  loc_1507269: var_104.Text = global_130
  loc_1507296: Set var_E4 = CVar(CLng(2))(2)
  loc_15072B6: var_90 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_15072DA: Set var_E4 = CVar(CLng(4))(2)
  loc_150730D: If CBool(Trim(CVar(CStr(DGSite.DispID_41))) <> vbNullString) Then
  loc_150732A:   Set var_E4 = CVar(CLng(4))(2)
  loc_150733B:   var_114 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_1507357:   var_A0 = CStr(" And VIEWLEDGER.Site_Code='" & Trim(var_114) & "'")
  loc_150736D: Else
  loc_150737B:   var_A0 = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_1507381: End If
  loc_150738E: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGER.SITE_CODE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_150739E: Proc_183_7_EB0C44(var_114, CVar(var_204(var_B0)), -1)
  loc_15073A6: var_124 = var_E4 & var_114 
  loc_15073AF: var_144 = var_124 & " AND " 
  loc_15073BE: Proc_183_7_EB0C44(var_174, CVar(var_FE(var_144)))
  loc_15073F5: var_1E4 = DGSite.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_15073F9: var_FC = CStr(var_1E4)
  loc_1507403: unk_58337D.Execute var_FC, , 
  loc_150740E: Set var_88 = var_E4
  loc_1507448: If (var_88.RecordCount <= 0) Then
  loc_1507451:   Call 0.Method_arg_50 (var_FC)
  loc_1507472:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_1507487:   global_130 = 0
  loc_150748A:   Exit Sub
  loc_150748B: End If
  loc_150749B: Set var_E4 = New
  loc_15074AA: Call 0.Method_arg_1B0 (var_E4, var_104)
  loc_15074B5: Set var_8C = var_E4
  loc_15074BE: Set var_8C = var_104
  loc_15074C8: ' Referenced from: 1507D38
  loc_15074CE: var_F6 = Me.Recordset15.EOF
  loc_15074D7: If Not(var_F6) Then
  loc_15074DD:   Set var_20C = var_8C 
  loc_15075FA:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_15075FF:   var_94 = CStr(var_254)
  loc_15076B8:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_15076E9:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_15076EE:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_1507748:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_150777A:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_150777F:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_15077A9:   var_C0 = vbNullString
  loc_15077BC:   var_B0 = (var_94 = vbNullString)
  loc_15077CB:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_1507808:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_1507833:   var_20C.AddNew var_B0, var_C0
  loc_1507860:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("V_ADD")))) 'String
  loc_150786D:   var_20C.Collect = "V_ADD"
  loc_150789B:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_15078A9:   var_20C.Collect = "V_NO"
  loc_15078C4:   var_20C.Collect = "DOCNO"
  loc_15078F1:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_1507909:   var_20C.Collect = "Name"
  loc_1507959:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_1507982:     Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_150799C:     If (var_114 > 0) Then
  loc_15079E2:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_15079EA:       var_164 = ("To " + var_144)
  loc_15079F8:       var_20C.Collect = "Name"
  loc_1507A10:     Else
  loc_1507A53:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_1507A5B:       var_164 = ("By " + var_144)
  loc_1507A69:       var_20C.Collect = "Name"
  loc_1507A7E:     End If
  loc_1507A7E:   End If
  loc_1507AA9:   var_114 = "dd/MMM/yyyy"
  loc_1507ACB:   var_20C.Collect = "V_DATE"
  loc_1507AFB:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_1507B09:   var_20C.Collect = "Credit"
  loc_1507B33:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_1507B41:   var_20C.Collect = "Debit"
  loc_1507B6B:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_1507B79:   var_20C.Collect = "V_Type"
  loc_1507BAA:   Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_1507BBC:   var_20C.Collect = "V_SNo"
  loc_1507BEA:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_1507BF8:   var_20C.Collect = "mNarr"
  loc_1507C22:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1507C30:   var_20C.Collect = "NARR"
  loc_1507C63:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1507C69:   var_124 = Trim(var_114)
  loc_1507C85:   If CBool(var_124 <> vbNullString) Then
  loc_1507CA7:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_1507CB5:     var_20C.Collect = "Chq_No"
  loc_1507CC0:   End If
  loc_1507CEF:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1507D11:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1507D1F:     var_20C.Collect = "Chq_Date"
  loc_1507D2A:   End If
  loc_1507D2C:   Set var_20C = Nothing 
  loc_1507D33:   var_88.MoveNext
  loc_1507D38:   GoTo loc_15074C8
  loc_1507D3B: End If
  loc_1507D4F: If (var_8C.RecordCount > 0) Then
  loc_1507D55:   var_8C.MoveFirst
  loc_1507D5A: End If
  loc_1507D5D: var_256 = arg_C
  loc_1507D66: If (var_256 = 1) Then
  loc_1507D6F:   var_C0 = "Paper Setting"
  loc_1507D84:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1507D8A:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_1507DA2:   var_D0 = 1
  loc_1507DAF:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_1507DD2:   Set var_210 = var_8C
  loc_1507DEB:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, DGSite.DispID_41, var_256)
  loc_1507DF6:   Set var_8C = var_210
  loc_1507DFC:   var_9A = var_F6
  loc_1507E13:   global_130 = 0
  loc_1507E16:   GoTo loc_1507EA6
  loc_1507E1C: Else
  loc_1507E25:   var_FC = MemVar_1F923B0 & "\FaJRNL.ttx"
  loc_1507E32:   Set var_E4 = var_8C 
  loc_1507E3E:   var_F6 = CreateFieldDefFile(var_E4, var_FC, &HFF, global_130, var_9A, var_F4)
  loc_1507E51:   var_268 = CVar(var_F6) 'Variant
  loc_1507E6B:   Call 0.Method_arg_C4 (var_E4, var_F6, var_F4, 1)
  loc_1507E76:   MemVar_1F921E4 = var_E4
  loc_1507E96:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0)
  loc_1507E9E:   Call 0.Method_arg_2C (1, CVar(var_88.Fields.Item("V_NO")))
  loc_1507EA6: End If
  loc_1507EA6: ' Referenced from: 1507E16
  loc_1507EAB: Set var_88 = Nothing
  loc_1507EB3: Set var_8C = Nothing
  loc_1507EB6: Exit Sub
  loc_1507EB7: ' Referenced from: 150706C
  loc_1507EC5: Call 0.Method_arg_50 (var_FC, 0)
  loc_1507EDA: Proc_183_57_104AA84(var_FC, "JournalBook")
  loc_1507EE6: Exit Sub
End Sub

Public Sub Proc_203_71_1529178(arg_C) '1529178
  'Data Table: 583330
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_FC As String
  Dim var_114 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_F4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1E4 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_E4 As Fields15
  Dim var_210 As Fields15
  Dim var_254 As Variant
  Dim var_20C As Recordset15
  Dim var_8C As Recordset15
  Dim var_256 As Integer
  Dim var_9A As Integer
  Dim var_F6 As Integer
  loc_1528244: On Error Goto loc_1529146
  loc_152825C: Set var_E4 = CVar(CLng(0))(0)
  loc_1528280: Call Proc_203_59_F51A10(CInt(0), CStr(var_F4))
  loc_1528294: If (var_FE = 0) Then
  loc_152829C:   global_130 = 0
  loc_152829F:   Exit Sub
  loc_15282A0: End If
  loc_15282B5: Set var_E4 = CVar(CLng(1))(0)
  loc_15282D9: Call Proc_203_59_F51A10(CInt(1), CStr(var_F4))
  loc_15282ED: If (var_FE = 0) Then
  loc_15282F5:   global_130 = 0
  loc_15282F8:   Exit Sub
  loc_15282F9: End If
  loc_152830E: Set var_E4 = CVar(CLng(2))(0)
  loc_1528332: Call Proc_203_59_F51A10(CInt(2), CStr(var_F4))
  loc_1528346: If (var_FE = 0) Then
  loc_152834E:   global_130 = 0
  loc_1528351:   Exit Sub
  loc_1528352: End If
  loc_1528367: Set var_E4 = CVar(CLng(0))(1)
  loc_1528385: global_130(CStr(DGSite.DispID_41)).Text = var_FE
  loc_15283AC: Set var_E4 = CVar(CLng(1))(1)
  loc_15283CA: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_15283F3: If (Proc_183_48_F05F98(Me, var_FE, DGSite.DispID_41) = 0) Then
  loc_15283FB:   global_130 = 0
  loc_15283FE:   Exit Sub
  loc_15283FF: End If
  loc_1528414: Set var_E4 = CVar(CLng(2))(1)
  loc_1528441: global_130(CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = global_130
  loc_152846E: Set var_E4 = CVar(CLng(2))(2)
  loc_152848E: var_90 = CStr(Trim(CVar(CStr(DGSite.DispID_41))))
  loc_15284B2: Set var_E4 = CVar(CLng(4))(2)
  loc_15284E5: If CBool(Trim(CVar(CStr(DGSite.DispID_41))) <> vbNullString) Then
  loc_1528502:   Set var_E4 = CVar(CLng(4))(2)
  loc_1528513:   var_114 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_152852F:   var_A0 = CStr(" And VIEWLEDGERLOG.Site_Code='" & Trim(var_114) & "'")
  loc_1528545: Else
  loc_1528553:   var_A0 = " And VIEWLEDGERLOG.Site_Code='" & MemVar_1F92078 & "'"
  loc_1528559: End If
  loc_1528566: var_B0 = "SELECT V_DATE,credit,debit,v_type,v_no,v_add,CHQ_NO,CHQ_DATE,NARR,NAME,MNARR,V_SNO,DOCID,VIEWLEDGERLOG.SITE_CODE,VIEWLEDGERLOG.U_Name,VIEWLEDGERLOG.U_EntDt,VIEWLEDGERLOG.SeqNo FROM VIEWLEDGERLOG LEFT JOIN SUBGROUP ON VIEWLEDGERLOG.party=SUBGROUP.SUBCODE where V_date BETWEEN "
  loc_1528576: Proc_183_7_EB0C44(var_114, CVar(var_204(var_B0)), -1)
  loc_152857E: var_124 = var_E4 & var_114 
  loc_1528587: var_144 = var_124 & " AND " 
  loc_1528596: Proc_183_7_EB0C44(var_174, CVar(var_FE(var_144)))
  loc_15285CD: var_1E4 = DGSite.DispID_41 & var_174 & " AND V_TYPE='" & CVar(var_90) & "' " & CVar(var_A0) & " ORDER BY V_DATE,V_TYPE,V_NO,V_ADD,V_SNO" 
  loc_15285D1: var_FC = CStr(var_1E4)
  loc_15285DB: unk_58337D.Execute var_FC, , 
  loc_15285E6: Set var_88 = var_E4
  loc_1528620: If (var_88.RecordCount <= 0) Then
  loc_1528629:   Call 0.Method_arg_50 (var_FC)
  loc_152864A:   MsgBox("** No Records Found to Print **", &H40, CVar(var_FC), var_124, var_144)
  loc_152865F:   global_130 = 0
  loc_1528662:   Exit Sub
  loc_1528663: End If
  loc_1528678: Set var_8C = mFaJournalLog(New)
  loc_152867B: ' Referenced from: 1528FB9
  loc_1528681: var_F6 = var_88.EOF
  loc_152868A: If Not(var_F6) Then
  loc_1528690:   Set var_20C = var_8C 
  loc_15287AD:   var_254 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_15287B2:   var_94 = CStr(var_254)
  loc_152886B:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_152889C:   var_1E4 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_15288A1:   var_94 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_15288FB:   var_144 = (CVar(var_94) + IIf((var_94 = vbNullString), vbNullString, "/"))
  loc_152892D:   var_184 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_1528932:   var_94 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_152895C:   var_C0 = vbNullString
  loc_152896F:   var_B0 = (var_94 = vbNullString)
  loc_152897E:   var_144 = (CVar(var_94) + IIf(var_B0, var_C0, "/"))
  loc_15289BB:   var_194 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_15289E6:   var_20C.AddNew var_B0, var_C0
  loc_1528A13:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("V_ADD")))) 'String
  loc_1528A20:   var_20C.Collect = "V_ADD"
  loc_1528A4E:   var_F4 = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_1528A5C:   var_20C.Collect = "V_NO"
  loc_1528A77:   var_20C.Collect = "DOCNO"
  loc_1528AA4:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))), CVar(var_88.Fields.Item("Name")))) 'String
  loc_1528ABC:   var_20C.Collect = "Name"
  loc_1528B0C:   If (Me.Fields.Item("RepToBy").Value = "Yes") Then
  loc_1528B35:     Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("Credit")), Trim(var_114))
  loc_1528B4F:     If (var_114 > 0) Then
  loc_1528B95:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), var_114))))), &H2F)
  loc_1528B9D:       var_164 = ("To " + var_144)
  loc_1528BAB:       var_20C.Collect = "Name"
  loc_1528BC3:     Else
  loc_1528C06:       var_144 = Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), CVar(var_88.Fields.Item("V_NO"))))), &H2F)
  loc_1528C0E:       var_164 = ("By " + var_144)
  loc_1528C1C:       var_20C.Collect = "Name"
  loc_1528C31:     End If
  loc_1528C31:   End If
  loc_1528C5C:   var_114 = "dd/MMM/yyyy"
  loc_1528C7E:   var_20C.Collect = "V_DATE"
  loc_1528CAE:   var_F4 = CVar(var_88.Fields.Item("Credit")) 'Address
  loc_1528CBC:   var_20C.Collect = "Credit"
  loc_1528CE6:   var_F4 = CVar(var_88.Fields.Item("Debit")) 'Address
  loc_1528CF4:   var_20C.Collect = "Debit"
  loc_1528D1E:   var_F4 = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_1528D2C:   var_20C.Collect = "V_Type"
  loc_1528D5D:   Proc_183_3_E7D1C8(var_114, CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")), CVar(var_88.Fields.Item("V_SNo")))
  loc_1528D6F:   var_20C.Collect = "V_SNo"
  loc_1528D9D:   var_F4 = CVar(var_88.Fields.Item("mNarr")) 'Address
  loc_1528DAB:   var_20C.Collect = "mNarr"
  loc_1528DD5:   var_F4 = CVar(var_88.Fields.Item("NARR")) 'Address
  loc_1528DE3:   var_20C.Collect = "NARR"
  loc_1528E16:   var_114 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), CVar(var_88.Fields.Item("Chq_No")), var_114, Format(CVar(var_88.Fields.Item("V_DATE")), var_114))) 'String
  loc_1528E38:   If CBool(Trim(var_114) <> vbNullString) Then
  loc_1528E5A:     var_F4 = CVar(var_88.Fields.Item("Chq_No")) 'Address
  loc_1528E68:     var_20C.Collect = "Chq_No"
  loc_1528E73:   End If
  loc_1528EA2:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_1528EC4:     var_F4 = CVar(var_88.Fields.Item("Chq_Date")) 'Address
  loc_1528ED2:     var_20C.Collect = "Chq_Date"
  loc_1528EDD:   End If
  loc_1528EFC:   var_F4 = CVar(var_88.Fields.Item("U_Name")) 'Address
  loc_1528F0A:   var_20C.Collect = "U_Name"
  loc_1528F50:   var_124 = Format(CVar(var_88.Fields.Item("U_EntDt")), "dd/mm/yyyy hh:nn")
  loc_1528F62:   var_20C.Collect = "EntDt"
  loc_1528F92:   var_F4 = CVar(var_88.Fields.Item("SeqNo")) 'Address
  loc_1528FA0:   var_20C.Collect = "SeqNo"
  loc_1528FAD:   Set var_20C = Nothing 
  loc_1528FB4:   var_88.MoveNext
  loc_1528FB9:   GoTo loc_152867B
  loc_1528FBC: End If
  loc_1528FD0: If (var_8C.RecordCount > 0) Then
  loc_1528FD6:   var_8C.MoveFirst
  loc_1528FDB: End If
  loc_1528FDE: var_256 = arg_C
  loc_1528FE7: If (var_256 = 1) Then
  loc_1528FF0:   var_C0 = "Paper Setting"
  loc_1529005:   var_F4 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_152900B:   MsgBox(var_F4, &H40, var_C0, var_124, var_144)
  loc_1529023:   var_D0 = 1
  loc_1529030:   Set var_E4 = CVar(CLng(3))(var_D0)
  loc_1529053:   Set var_210 = var_8C
  loc_152906C:   Call 0.Method_arg_15C (Me, var_210, CStr(var_F4), var_F6, DGSite.DispID_41, var_256, var_F4, var_124)
  loc_1529077:   Set var_8C = var_210
  loc_152907D:   var_9A = var_F6
  loc_1529094:   global_130 = 0
  loc_1529097:   GoTo loc_1529135
  loc_152909D: Else
  loc_15290B3:   Set var_E4 = var_8C 
  loc_15290BF:   var_F6 = CreateFieldDefFile(var_E4, MemVar_1F923B0 & "\FaJRNLLog.ttx", &HFF, global_130, var_9A, 1)
  loc_15290CF:   var_B0 = CVar(var_F6) 'Integer
  loc_15290D2:   var_268 = var_B0 'Variant
  loc_15290EE:   var_FC = MemVar_1F923B0 & "\FaJRNLLog.RPT"
  loc_15290F7:   Call 0.Method_arg_1C (var_FC, var_B0, var_E4, var_F6, 1)
  loc_1529102:   MemVar_1F921E4 = var_E4
  loc_1529125:   Call 0.Method_arg_64 (var_E4, CVar(var_E4), var_C0, var_D0, var_F4)
  loc_152912D:   Call 0.Method_arg_2C (var_F4, var_F4)
  loc_1529135: End If
  loc_1529135: ' Referenced from: 1529097
  loc_152913A: Set var_88 = Nothing
  loc_1529142: Set var_8C = Nothing
  loc_1529145: Exit Sub
  loc_1529146: ' Referenced from: 1528244
  loc_1529154: Call 0.Method_arg_50 (var_FC, 0)
  loc_1529169: Proc_183_57_104AA84(var_FC, "JournalBookLog")
  loc_1529175: Exit Sub
End Sub

Public Sub Proc_203_72_19337B0(arg_C) '19337B0
  'Data Table: 583330
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_14C As String
  Dim var_154 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_AC As Double
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_110 As Variant
  Dim var_180 As Variant
  Dim var_130 As Variant
  Dim var_1A4 As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_214 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_8C As Recordset15
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_90 As Recordset15
  Dim var_DC As Double
  Dim var_94 As Recordset15
  Dim var_D4 As Double
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_E8 As Integer
  Dim var_EA As Integer
  Dim var_CC As Double
  Dim Me As Recordset15
  Dim var_238 As Fields15
  Dim var_2A4 As Variant
  Dim var_234 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2A6 As Integer
  Dim var_DE As Integer
  loc_1930B94: On Error Goto loc_193377E
  loc_1930BAC: Set var_134 = CVar(CLng(0))(0)
  loc_1930BD0: Call Proc_203_59_F51A10(CInt(0), CStr(var_144))
  loc_1930BE4: If (var_14E = 0) Then
  loc_1930BEC:   global_130 = 0
  loc_1930BEF:   Exit Sub
  loc_1930BF0: End If
  loc_1930C05: Set var_134 = CVar(CLng(1))(0)
  loc_1930C29: Call Proc_203_59_F51A10(CInt(1), CStr(var_144))
  loc_1930C3D: If (var_14E = 0) Then
  loc_1930C45:   global_130 = 0
  loc_1930C48:   Exit Sub
  loc_1930C49: End If
  loc_1930C5E: Set var_134 = CVar(CLng(2))(0)
  loc_1930C82: Call Proc_203_59_F51A10(CInt(2), CStr(var_144))
  loc_1930C96: If (var_14E = 0) Then
  loc_1930C9E:   global_130 = 0
  loc_1930CA1:   Exit Sub
  loc_1930CA2: End If
  loc_1930CB7: Set var_134 = CVar(CLng(3))(0)
  loc_1930CDB: Call Proc_203_59_F51A10(CInt(3), CStr(var_144))
  loc_1930CEF: If (var_14E = 0) Then
  loc_1930CF7:   global_130 = 0
  loc_1930CFA:   Exit Sub
  loc_1930CFB: End If
  loc_1930D10: Set var_134 = CVar(CLng(4))(0)
  loc_1930D34: Call Proc_203_59_F51A10(CInt(4), CStr(var_144))
  loc_1930D48: If (var_14E = 0) Then
  loc_1930D50:   global_130 = 0
  loc_1930D53:   Exit Sub
  loc_1930D54: End If
  loc_1930D69: Set var_134 = CVar(CLng(0))(1)
  loc_1930D87: global_130(CStr(DGSite.DispID_41)).Text = var_14E
  loc_1930DAE: Set var_134 = CVar(CLng(1))(1)
  loc_1930DBF: var_14C = CStr(DGSite.DispID_41)
  loc_1930DC6: Set var_154 = DGSite.DispID_41(var_14C)
  loc_1930DCC: var_154.Text = global_130
  loc_1930DF5: If (Proc_183_48_F05F98(Me, var_14E, DGSite.DispID_41, global_130, var_14E) = 0) Then
  loc_1930DFD:   global_130 = 0
  loc_1930E00:   Exit Sub
  loc_1930E01: End If
  loc_1930E0C: Set var_134 = var_154(CInt(&HC))
  loc_1930E12: Call 0.Method_Proc_203_72_19337B00 (global_130, DGSite.DispID_41, global_130)
  loc_1930E1A: var_144 = CVar(var_154) 'Address
  loc_1930E3B: If CBool(Trim(var_144) <> vbNullString) Then
  loc_1930E4F:   Set var_134 = var_154(CInt(&HC))
  loc_1930E55:   Call 0.Method_Proc_203_72_19337B00 (var_14C, " And VIEWLEDGER.LOGSite_Code='")
  loc_1930E5D:   var_14E = var_154.Tag
  loc_1930E6D:   var_F0 = DGSite.DispID_41 & var_14C & "'"
  loc_1930E81: Else
  loc_1930E8F:   var_F0 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_1930E95: End If
  loc_1930EAA: Set var_134 = CVar(CLng(4))(1)
  loc_1930ED7: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_1930F15: var_164 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_1930F24: var_B0 = CStr(Trim(var_164))
  loc_1930F36: var_A0 = vbNullString
  loc_1930F3C: var_A4 = vbNullString
  loc_1930F42: var_AC = CDbl(0)
  loc_1930F69: unk_58337D.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_144, -1
  loc_1930F74: Set var_88 = CVar(CLng(4))(2)
  loc_1930F98: If (var_88.RecordCount > 0) Then
  loc_1930FAA:   var_134 = var_88.Fields
  loc_1930FBA:   var_144 = CVar(var_134.Item("RepToBy")) 'Address
  loc_1930FC3:   var_BC = Proc_183_2_E5A304(var_144, var_134)
  loc_1930FCC: End If
  loc_1930FF0: unk_58337D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_144, -1
  loc_1930FFB: Set var_88 = var_134
  loc_193101F: If (var_88.RecordCount <= 0) Then
  loc_1931022:   Exit Sub
  loc_1931023: End If
  loc_1931035: var_134 = var_88.Fields
  loc_193103D: var_154 = var_134.Item("GroupNature")
  loc_19310A3: If CBool((var_154.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_19310AA:   var_144 = CVar(var_AC(var_134)) 'Address
  loc_19310B1:   Proc_183_7_EB0C44(var_164)
  loc_19310BC:   var_130 = 0
  loc_19310D9:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_19310F9:   var_1B4 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_164 & " " & CVar(var_F0) 
  loc_1931107:   unk_58337D.Execute CStr(var_1B4), var_1C4, -1
  loc_193110F:   var_134 = var_134.Fields
  loc_1931117:   var_130 = var_154.Item(var_154)
  loc_193111F:   var_180 = var_180.Value
  loc_1931128:   var_AC = CSng(var_1D4)
  loc_1931151: Else
  loc_1931154:   var_100 = MemVar_1F920F4
  loc_193115C:   Proc_183_7_EB0C44(var_144, var_100, var_AC)
  loc_1931165:   var_1A4 = CVar(var_144(var_1D4)) 'Address
  loc_193116C:   Proc_183_7_EB0C44(var_1B4)
  loc_1931177:   var_214 = 0
  loc_1931194:   var_14C = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_193119B:   var_164 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_19311A5:   var_110 = " AND V_DATE<"
  loc_19311B1:   var_1C4 = var_164 & var_144 & var_110 & var_1B4 
  loc_19311D2:   unk_58337D.Execute CStr(var_1C4 & " " & CVar(var_F0)), var_204, -1
  loc_19311DA:   var_134 = var_134.Fields
  loc_19311E2:   var_214 = var_154.Item(var_154)
  loc_19311EA:   var_180 = var_180.Value
  loc_19311F3:   var_AC = CSng(var_224)
  loc_193121F: End If
  loc_193122F: Set var_134 = New
  loc_193123E: Call 0.Method_arg_1B8 (var_134, var_154, var_AC)
  loc_1931249: Set var_8C = var_134
  loc_1931252: Set var_8C = var_154
  loc_1931263: If (var_AC <> CDbl(0)) Then
  loc_1931271:   Me.Recordset15.AddNew var_100, var_110
  loc_193127A:   var_144 = CVar(var_1A4(var_224)) 'Address
  loc_1931288:   var_8C.Collect = "V_DATE"
  loc_1931297:   If (var_AC < CDbl(0)) Then
  loc_193129A:     var_110 = "OPENING BALANCE"
  loc_19312A9:     var_8C.Collect = "Name"
  loc_19312B2:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_19312C0:     var_8C.Collect = "cr"
  loc_19312C8:   Else
  loc_19312C8:     var_110 = "OPENING BALANCE"
  loc_19312D7:     var_8C.Collect = "Name1"
  loc_19312E0:     var_110 = CVar(Abs(var_AC)) 'Double
  loc_19312E5:     var_100 = "ADJAMT"
  loc_19312EE:     var_8C.Collect = var_100
  loc_19312F3:   End If
  loc_19312FE:   var_8C.Update var_100, var_110
  loc_1931303: End If
  loc_1931317: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.CREDIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_1931325: var_144 = CVar(var_234(CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "))) 'Address
  loc_193132C: Proc_183_7_EB0C44(var_164, var_144, -1, var_134, var_110)
  loc_193134C: Proc_183_7_EB0C44(var_1C4, CVar(var_110(var_110 & var_164 & " And ")))
  loc_193137E: unk_58337D.Execute CStr(" AND CREDIT>0  " & var_1C4 & " AND CREDIT>0  " & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO"), var_144, 
  loc_1931389: Set var_90 = var_134
  loc_19313C5: var_14C = "SELECT VIEWLEDGER.V_ADD,DocID,VIEWLEDGER.Site_Code,VIEWLEDGER.V_NO,subgroup.NAME, VIEWLEDGER.V_DATE, VIEWLEDGER.DEBIT AS AMOUNT, VIEWLEDGER.V_TYPE,VIEWLEDGER.MNARR,VIEWLEDGER.NARR, VIEWLEDGER.V_SNO,VIEWLEDGER.CHQ_NO,CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY='" & var_B0
  loc_19313DA: Proc_183_7_EB0C44(var_164, CVar(var_234(CVar(var_14C & "' AND VIEWLEDGER.V_DATE Between "))))
  loc_19313E2: var_194 = -1 & var_164 
  loc_19313FA: Proc_183_7_EB0C44(var_1C4)
  loc_1931406: var_110 = " AND DEBIT>0  "
  loc_193141E: var_224 = CVar(var_134(" AND CREDIT>0  " & var_164 & " And ")) & var_1C4 & var_110 & CVar(var_F0) & " ORDER BY V_DATE,V_TYPE,V_NO,v_add,V_SNO" 
  loc_193142C: unk_58337D.Execute CStr(var_224), , 
  loc_1931437: Set var_94 = var_134
  loc_193146E: If Not(var_90.EOF) Then
  loc_193149D:   var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_19314AA: End If
  loc_19314B9: If Not(var_94.EOF) Then
  loc_19314C2:   var_100 = "V_DATE"
  loc_19314E8:   var_D4 = CDate(var_94.Fields.Item(var_100).Value)
  loc_19314F5: End If
  loc_19314F7: var_E0 = 0
  loc_19314FC: var_E2 = 0
  loc_1931501: var_E4 = 0
  loc_1931506: var_E6 = 0
  loc_193150B: var_E8 = 0
  loc_1931510: var_EA = 0
  loc_1931516: var_C0 = vbNullString
  loc_193151C: var_C4 = vbNullString
  loc_193152C: var_E8 = var_EA(var_14C).Text
  loc_1931536: var_CC = CDate(var_14C)
  loc_193153F: ' Referenced from: 19334D7
  loc_193155D: If Not((var_90.EOF And var_94.EOF)) Then
  loc_193156F:   If ((var_D4 = var_CC) Or (var_DC = var_CC)) Then
  loc_193157D:     var_8C.AddNew var_100, var_110
  loc_1931589:     If (var_D4 = var_CC) Then
  loc_19315AB:       var_144 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_19315B9:       var_8C.Collect = "V_Type"
  loc_19315C7:       var_110 = CDate(var_D4)
  loc_19315D5:       var_8C.Collect = "V_DATE"
  loc_19315F9:       var_144 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_1931607:       var_8C.Collect = "V_NO"
  loc_1931631:       var_144 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_193163F:       var_8C.Collect = "V_SNo"
  loc_19316B9:       var_238 = Me.Fields
  loc_1931763:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1931768:       var_B4 = CStr(var_2A4)
  loc_1931821:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_1931852:       var_234 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_1931857:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_19318B1:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_19318E3:       var_1C4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_19318E8:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_1931934:       var_194 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_1931971:       var_1D4 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_19319A1:       var_8C.Collect = "DOCNO"
  loc_19319BA:       If (((var_E0 = 0) Or (var_E4 = 0)) Or (var_E8 = 0)) Then
  loc_19319BF:         var_E0 = &HFF
  loc_19319E7:         var_144 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_19319FB:         var_14C = Proc_183_2_E5A304(Trim(var_144), var_E0, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144, var_144, CVar(CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))), var_144)
  loc_1931A10:         If (var_14C <> vbNullString) Then
  loc_1931A53:           var_1A4 = (var_E4 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_CC, var_E6))))
  loc_1931A5C:           var_1B4 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_1931A8B:           var_130 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("ChqDate")), Str(CVar(var_94.Fields.Item("V_NO"))), var_E2)) 'String
  loc_1931A8E:           var_1D4 = (var_E0 + var_130)
  loc_1931A93:           var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_1931AB3:         End If
  loc_1931AEF:         var_194 = (var_D4 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("mNarr")), CVar(var_C0)))))
  loc_1931B1B:         var_1B4 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("NARR")))) 'String
  loc_1931B21:         var_1C4 = Trim(var_1B4)
  loc_1931B29:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_1931B2E:         var_C0 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_1931B86:         If (Len(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_1931BB1:           var_164 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) 'String
  loc_1931BBE:           var_8C.Collect = "Name"
  loc_1931C1A:           var_8C.Collect = "cr"
  loc_1931C33:           If (var_BC = "Yes") Then
  loc_1931C5E:             var_164 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")), Format(CVar(var_94.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_1931C81:             var_1A4 = ("By " + Left(Trim(var_164), &H2F))
  loc_1931C8F:             var_8C.Collect = "Name"
  loc_1931CA4:           End If
  loc_1931CC3:           var_120 = CVar(var_AC) 'Double
  loc_1931CEE:           var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_1931CF3:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1931D04:           var_E8 = &HFF
  loc_1931D09:           var_E4 = &HFF
  loc_1931D0F:         Else
  loc_1931D2E:           Set var_134 = CVar(CLng(2))(1)
  loc_1931D6B:           If CBool((var_E4 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_1931D74:             If (var_E8 = 0) Then
  loc_1931DB2:               var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_1931DC4:               var_8C.Collect = "cr"
  loc_1931DF4:               var_120 = CVar(var_AC) 'Double
  loc_1931E1F:               var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_1931E24:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1931E33:               var_110 = "As Per Detail"
  loc_1931E42:               var_8C.Collect = "Name"
  loc_1931E49:               var_E8 = &HFF
  loc_1931E61:               Set var_134 = CVar(CLng(2))(1)
  loc_1931E94:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_1931EA4:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_1931F18:                 unk_58337D.Execute CStr(var_110 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), var_1B4, -1
  loc_1931F23:                 Set var_98 = var_238
  loc_1931F45:               End If
  loc_1931F48:             Else
  loc_1931F57:               If Not(var_98.EOF) Then
  loc_1931F84:                 var_110 = 0
  loc_1931F96:                 If (var_98.Fields.Item("Debit").Value > var_110) Then
  loc_1931FC3:                   var_120 = "Debit"
  loc_1931FE6:                   Proc_183_4_EABBA8(var_1C4, CVar(var_98.Fields.Item(var_120)), var_238, var_E8, var_110)
  loc_1932010:                   var_194 = (1 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_1932019:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_193202F:                   var_1D4 = CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_1932032:                   var_1E4 = (var_120 + var_1D4)
  loc_193203B:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_1932049:                   var_8C.Collect = "Name"
  loc_1932078:                 Else
  loc_19320C5:                   Proc_183_4_EABBA8(var_1C4, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_19320EF:                   var_194 = (CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H14, Space(2))))
  loc_19320F8:                   var_1A4 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_1932111:                   var_1E4 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC)))
  loc_193211A:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_1932128:                   var_8C.Collect = "Name"
  loc_1932154:                 End If
  loc_1932157:                 var_98.MoveNext
  loc_193215C:               End If
  loc_193216D:               If (var_98.EOF = &HFF) Then
  loc_1932172:                 var_E4 = &HFF
  loc_1932175:               End If
  loc_1932175:             End If
  loc_1932178:           Else
  loc_19321B0:             var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_19321BE:             var_8C.Collect = "Name"
  loc_193220B:             var_174 = Format(CVar(var_94.Fields.Item("Amount")), "0.00")
  loc_193221D:             var_8C.Collect = "cr"
  loc_193224D:             var_120 = CVar(var_AC) 'Double
  loc_1932278:             var_194 = (1 - Format(CVar(var_94.Fields.Item("Amount")), "0.00"))
  loc_193227D:             var_AC = CSng(Trim(Mid(var_C0, 1, 36)))
  loc_19322B5:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_19322C3:             var_E8 = &HFF
  loc_19322C8:             var_E4 = &HFF
  loc_19322CB:           End If
  loc_19322CB:         End If
  loc_19322E3:         If (((Len(var_C0) <= 0) And (var_E4 = &HFF)) And (var_E8 = &HFF)) Then
  loc_19322E8:           var_E0 = 0
  loc_19322ED:           var_E4 = 0
  loc_19322F2:           var_E8 = 0
  loc_19322F8:           var_94.MoveNext
  loc_193230C:           If Not(var_94.EOF) Then
  loc_193233B:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_193234B:           Else
  loc_1932367:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(var_E8(var_D4))))
  loc_1932371:           End If
  loc_1932371:         End If
  loc_1932374:       Else
  loc_1932388:         var_C0 = CStr(Trim(var_C0))
  loc_19323C6:         var_1A4 = (Space(2) + Trim(Mid(var_C0, 1, 36)))
  loc_19323D4:         var_8C.Collect = "Name"
  loc_1932425:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_193242A:           var_E0 = 0
  loc_193242F:           var_E4 = 0
  loc_1932434:           var_E8 = 0
  loc_193243A:           var_94.MoveNext
  loc_193244E:           If Not(var_94.EOF) Then
  loc_193247D:             var_D4 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_193248D:           Else
  loc_19324A9:             var_D4 = CDate(DateAdd("D", CDbl(1), CVar(var_E8(var_D4))))
  loc_19324B3:           End If
  loc_19324B3:         End If
  loc_19324B3:       End If
  loc_19324B3:     End If
  loc_19324BA:     If (var_DC = var_CC) Then
  loc_19324DC:       var_144 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_19324EA:       var_8C.Collect = "vType"
  loc_1932514:       var_144 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1932522:       var_8C.Collect = "VNo"
  loc_1932530:       var_110 = CDate(var_DC)
  loc_193253E:       var_8C.Collect = "V_DATE"
  loc_1932562:       var_144 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1932570:       var_8C.Collect = "VSno"
  loc_19325EA:       var_238 = Me.Fields
  loc_1932694:       var_2A4 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_238.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1932699:       var_B8 = CStr(var_2A4)
  loc_1932752:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1932783:       var_234 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1932788:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_19327E2:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1932814:       var_1C4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1932819:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1932865:       var_194 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_19328A2:       var_1D4 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_19328D2:       var_8C.Collect = "DocNo1"
  loc_19328EB:       If (((var_E2 = 0) Or (var_E6 = 0)) Or (var_EA = 0)) Then
  loc_1932918:         var_144 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_193292C:         var_14C = Proc_183_2_E5A304(Trim(var_144), &HFF, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))), var_144, var_144)
  loc_1932941:         If (var_14C <> vbNullString) Then
  loc_1932984:           var_1A4 = (var_E0 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_D4, var_E4))))
  loc_193298D:           var_1B4 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_19329B9:           var_14C = Proc_183_2_E5A304(CVar(var_90.Fields.Item("ChqDate")), Str(CVar(var_90.Fields.Item("V_NO"))), CVar(var_90.Fields.Item("V_NO")))
  loc_19329BF:           var_1D4 = (var_D4 + CVar(var_14C))
  loc_19329C4:           var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_19329E4:         End If
  loc_1932A20:         var_194 = (var_E4 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), CVar(var_C4)))))
  loc_1932A4C:         var_1B4 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR")))) 'String
  loc_1932A52:         var_1C4 = Trim(var_1B4)
  loc_1932A5A:         var_1D4 = (CVar(vbNullString & "Ch.No:") + var_1C4)
  loc_1932A5F:         var_C4 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_1932AB7:         If (Len(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_1932AD9:           var_144 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_1932AE7:           var_8C.Collect = "Name1"
  loc_1932B3F:           var_8C.Collect = "ADJAMT"
  loc_1932B58:           If (var_BC = "Yes") Then
  loc_1932B83:             var_164 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), Format(CVar(var_90.Fields.Item("Amount")), "0.00"), 1)) 'String
  loc_1932BA6:             var_1A4 = ("To " + Left(Trim(var_164), &H2F))
  loc_1932BB4:             var_8C.Collect = "Name1"
  loc_1932BC9:           End If
  loc_1932BE8:           var_120 = CVar(var_AC) 'Double
  loc_1932C13:           var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_1932C18:           var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1932C2B:           var_EA = &HFF
  loc_1932C30:           var_E6 = &HFF
  loc_1932C36:         Else
  loc_1932C55:           Set var_134 = CVar(CLng(2))(1)
  loc_1932C92:           If CBool((var_E6 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_1932C9B:             If (var_EA = 0) Then
  loc_1932CD9:               var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_1932CEB:               var_8C.Collect = "ADJAMT"
  loc_1932D1B:               var_120 = CVar(var_AC) 'Double
  loc_1932D46:               var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), "0.00"))
  loc_1932D4B:               var_AC = CSng(Left(Trim("0.00"), &H2F))
  loc_1932D5C:               var_110 = "As Per Detail"
  loc_1932D6B:               var_8C.Collect = "Name1"
  loc_1932D72:               var_EA = &HFF
  loc_1932D8A:               Set var_134 = CVar(CLng(2))(1)
  loc_1932DBD:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_1932DCD:                 var_110 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_1932E37:                 var_14C = CStr(var_110 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1932E41:                 unk_58337D.Execute var_14C, var_1B4, -1
  loc_1932E4C:                 Set var_9C = var_238
  loc_1932E6E:               End If
  loc_1932E71:             Else
  loc_1932E80:               If Not(var_9C.EOF) Then
  loc_1932EAD:                 var_110 = 0
  loc_1932EBF:                 If (var_9C.Fields.Item("Debit").Value > var_110) Then
  loc_1932EEC:                   var_120 = "Debit"
  loc_1932F0F:                   Proc_183_4_EABBA8(var_1C4, CVar(var_9C.Fields.Item(var_120)), var_238, var_EA, var_110)
  loc_1932F39:                   var_194 = (1 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2), var_AC)))
  loc_1932F42:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_1932F58:                   var_1D4 = CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_1932F5B:                   var_1E4 = (var_120 + var_1D4)
  loc_1932F64:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_1932F72:                   var_8C.Collect = "Name1"
  loc_1932FA1:                 Else
  loc_1932FEE:                   Proc_183_4_EABBA8(var_1C4, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_1933018:                   var_194 = (CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))) + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1933021:                   var_1A4 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_193303A:                   var_1E4 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C4), &HC)))
  loc_1933043:                   var_204 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_1933051:                   var_8C.Collect = "Name1"
  loc_193307D:                 End If
  loc_1933080:                 var_9C.MoveNext
  loc_1933085:               End If
  loc_1933096:               If (var_9C.EOF = &HFF) Then
  loc_193309B:                 var_E6 = &HFF
  loc_193309E:               End If
  loc_193309E:             End If
  loc_19330A1:           Else
  loc_19330D9:             var_1A4 = (Space(2) + Trim(Mid(var_C4, 1, 36)))
  loc_19330E7:             var_8C.Collect = "Name1"
  loc_1933122:             var_C4 = CStr(Trim(Mid(var_C4, &H25, 510)))
  loc_1933169:             var_174 = Format(CVar(var_90.Fields.Item("Amount")), "0.00")
  loc_193317B:             var_8C.Collect = "ADJAMT"
  loc_19331AB:             var_120 = CVar(var_AC) 'Double
  loc_19331B9:             var_110 = "0.00"
  loc_19331D6:             var_194 = (1 + Format(CVar(var_90.Fields.Item("Amount")), var_110))
  loc_19331DB:             var_AC = CSng(Trim(Mid(var_C4, 1, 36)))
  loc_19331EE:             var_EA = &HFF
  loc_19331F3:             var_E6 = &HFF
  loc_19331F6:           End If
  loc_19331F6:         End If
  loc_193320E:         If (((Len(var_C4) <= 0) And (var_E6 = &HFF)) And (var_EA = &HFF)) Then
  loc_1933213:           var_E2 = 0
  loc_1933218:           var_E6 = 0
  loc_193321D:           var_EA = 0
  loc_1933223:           var_90.MoveNext
  loc_1933237:           If Not(var_90.EOF) Then
  loc_1933266:             var_DC = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_1933276:           Else
  loc_1933292:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(var_EA(var_DC))))
  loc_193329C:           End If
  loc_193329C:         End If
  loc_193329F:       Else
  loc_19332B3:         var_C4 = CStr(Trim(var_C4))
  loc_19332E9:         var_194 = Trim(Mid(var_C4, 1, 36))
  loc_19332F1:         var_1A4 = (Space(2) + var_194)
  loc_19332FF:         var_8C.Collect = "Name1"
  loc_1933331:         var_174 = Trim(Mid(var_C4, &H25, 510))
  loc_1933350:         If (Len(CStr(var_174)) <= 0) Then
  loc_1933355:           var_E2 = 0
  loc_193335A:           var_E6 = 0
  loc_193335F:           var_EA = 0
  loc_1933365:           var_90.MoveNext
  loc_1933370:           var_146 = var_90.EOF
  loc_1933379:           If Not(var_146) Then
  loc_1933382:             var_100 = "V_DATE"
  loc_19333A8:             var_DC = CDate(var_90.Fields.Item(var_100).Value)
  loc_19333B8:           Else
  loc_19333D4:             var_DC = CDate(DateAdd("D", CDbl(1), CVar(var_EA(var_DC))))
  loc_19333DE:           End If
  loc_19333DE:         End If
  loc_19333DE:       End If
  loc_19333DE:     End If
  loc_19333E9:     var_8C.Update var_100, var_110
  loc_19333F1:   Else
  loc_19333F8:     If (var_D4 <= var_DC) Then
  loc_1933404:       If (var_D4 = CDate("12:00:00 AM")) Then
  loc_193340A:         var_CC = var_DC
  loc_1933410:       Else
  loc_1933413:         var_CC = var_D4
  loc_1933416:       End If
  loc_1933419:     Else
  loc_1933422:       If (var_DC = CDate("12:00:00 AM")) Then
  loc_1933428:         var_CC = var_D4
  loc_193342E:       Else
  loc_1933431:         var_CC = var_DC
  loc_1933434:       End If
  loc_1933434:     End If
  loc_193343B:     If (var_AC <> CDbl(0)) Then
  loc_1933449:       var_8C.AddNew var_100, var_110
  loc_1933451:       var_110 = CDate(var_CC)
  loc_193345F:       var_8C.Collect = "V_DATE"
  loc_193346B:       If (var_AC < CDbl(0)) Then
  loc_193346E:         var_110 = "OPENING BALANCE"
  loc_193347D:         var_8C.Collect = "Name"
  loc_1933486:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_1933494:         var_8C.Collect = "cr"
  loc_193349C:       Else
  loc_193349C:         var_110 = "OPENING BALANCE"
  loc_19334AB:         var_8C.Collect = "Name1"
  loc_19334B4:         var_110 = CVar(Abs(var_AC)) 'Double
  loc_19334B9:         var_100 = "ADJAMT"
  loc_19334C2:         var_8C.Collect = var_100
  loc_19334C7:       End If
  loc_19334D2:       var_8C.Update var_100, var_110
  loc_19334D7:     End If
  loc_19334D7:   End If
  loc_19334D7:   GoTo loc_193153F
  loc_19334DA: End If
  loc_19334EE: If (var_8C.RecordCount > 0) Then
  loc_19334F4:   var_8C.MoveFirst
  loc_19334F9: End If
  loc_193350D: If (var_8C.RecordCount <= 0) Then
  loc_1933516:   Call 0.Method_arg_50 (var_14C, var_110, var_110, var_110, var_110, var_110, var_CC)
  loc_1933537:   MsgBox("** No Records Found to Print **", &H40, CVar(var_14C), var_174, var_194)
  loc_193354C:   global_130 = 0
  loc_193354F:   Exit Sub
  loc_1933550: End If
  loc_1933553: var_2A6 = arg_C
  loc_193355C: If (var_2A6 = 1) Then
  loc_1933580:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_174, var_194)
  loc_19335A5:   Set var_134 = CVar(CLng(3))(1)
  loc_19335B6:   var_14C = CStr(DGSite.DispID_41)
  loc_19335D1:   Set var_180 = var_8C
  loc_19335EA:   Call 0.Method_arg_164 (Me, var_180, CLng(Val(var_14C)), var_146, Val(var_14C), var_2A6, global_130)
  loc_19335F5:   Set var_8C = var_180
  loc_19335FB:   var_DE = var_146
  loc_1933612:   global_130 = 0
  loc_1933615:   GoTo loc_193374D
  loc_193361B: Else
  loc_1933630:   var_134 = Me.Fields
  loc_1933648:   var_110 = "No"
  loc_1933658:   var_120 = "LedSiteCode"
  loc_19336C4:   var_1D4 = (var_134.Item("LedDivCode").Value = var_110) And (Me.Fields.Item(var_120).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_19336E2:   If CBool(var_1D4) Then
  loc_19336F1:     Call 0.Method_arg_E4 (var_134, global_130, var_DE, var_CC, var_CC)
  loc_19336FC:     MemVar_1F921E4 = var_134
  loc_1933706:   Else
  loc_1933712:     Call 0.Method_arg_E0 (var_134, var_CC, var_DC)
  loc_193371D:     MemVar_1F921E4 = var_134
  loc_1933724:   End If
  loc_193373D:   Call 0.Method_arg_64 (var_134, CVar(var_8C), var_110, var_120)
  loc_1933745:   Call 0.Method_arg_2C (var_E6, var_E2)
  loc_193374D: End If
  loc_193374D: ' Referenced from: 1933615
  loc_1933752: Set var_88 = Nothing
  loc_193375A: Set var_90 = Nothing
  loc_1933762: Set var_94 = Nothing
  loc_193376A: Set var_98 = Nothing
  loc_1933772: Set var_9C = Nothing
  loc_193377A: Set var_8C = Nothing
  loc_193377D: Exit Sub
  loc_193377E: ' Referenced from: 1930B94
  loc_193378C: Call 0.Method_arg_50 (var_14C, 0)
  loc_19337A1: Proc_183_57_104AA84(var_14C, "CashBook")
  loc_19337AD: Exit Sub
End Sub

Public Sub Proc_203_73_161E6A4(arg_C) '161E6A4
  'Data Table: 583330
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_D8 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_58337D As Connection15
  Dim var_98 As Long
  Dim var_88 As Recordset15
  Dim var_FC As Fields15
  Dim var_B0 As Double
  Dim var_B8 As Long
  Dim var_1E4 As Recordset15
  Dim Me As Recordset15
  Dim var_1E8 As Fields15
  Dim var_26C As Variant
  Dim var_21C As Variant
  Dim var_270 As Recordset15
  Dim var_8C As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_8E As Integer
  Dim var_10E As Integer
  loc_161D204: On Error Goto loc_161E673
  loc_161D21C: Set var_FC = CVar(CLng(0))(0)
  loc_161D240: Call Proc_203_59_F51A10(CInt(0), CStr(var_10C))
  loc_161D254: If (var_116 = 0) Then
  loc_161D25C:   global_130 = 0
  loc_161D25F:   Exit Sub
  loc_161D260: End If
  loc_161D275: Set var_FC = CVar(CLng(1))(0)
  loc_161D299: Call Proc_203_59_F51A10(CInt(1), CStr(var_10C))
  loc_161D2AD: If (var_116 = 0) Then
  loc_161D2B5:   global_130 = 0
  loc_161D2B8:   Exit Sub
  loc_161D2B9: End If
  loc_161D2CE: Set var_FC = CVar(CLng(0))(1)
  loc_161D2EC: global_130(CStr(DGSite.DispID_41)).Text = var_116
  loc_161D313: Set var_FC = CVar(CLng(1))(1)
  loc_161D32B: Set var_11C = DGSite.DispID_41(CStr(DGSite.DispID_41))
  loc_161D331: var_11C.Text = global_130
  loc_161D35A: If (Proc_183_48_F05F98(Me, var_116) = 0) Then
  loc_161D362:   global_130 = 0
  loc_161D365:   Exit Sub
  loc_161D366: End If
  loc_161D37B: Set var_FC = CVar(CLng(3))(2)
  loc_161D38C: var_12C = CVar(CStr(DGSite.DispID_41)) 'String
  loc_161D3AE: If CBool(Trim(var_12C) <> vbNullString) Then
  loc_161D3C9:   Set var_FC = CVar(CLng(3))(2)
  loc_161D3E5:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & CStr(DGSite.DispID_41) & "'"
  loc_161D3F8: Else
  loc_161D406:   var_94 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_161D40C: End If
  loc_161D419: var_C8 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE V_dATE BETWEEN "
  loc_161D429: Proc_183_7_EB0C44(var_12C, CVar(var_1E0(var_C8)), -1)
  loc_161D449: Proc_183_7_EB0C44(var_180, CVar(global_130(var_FC & var_12C & " AND ")))
  loc_161D47B: unk_58337D.Execute CStr(DGSite.DispID_41 & var_180 & " " & CVar(var_94) & " ORDER BY V_DATE,V_TYPE,V_NO,V_SNo"), , 
  loc_161D486: Set var_88 = var_FC
  loc_161D4B8: Set var_FC = New
  loc_161D4C7: Call 0.Method_arg_1C0 (var_FC)
  loc_161D4D2: Set var_8C = var_FC
  loc_161D4DB: Set var_8C = var_11C
  loc_161D4EA: var_98 = 0
  loc_161D4ED: ' Referenced from: 161E4AD
  loc_161D4FC: If Not(Me.Recordset15.EOF) Then
  loc_161D508:   If (var_98 = 0) Then
  loc_161D537:     var_98 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_161D544:   End If
  loc_161D54D:   var_A0 = vbNullString
  loc_161D553:   var_A4 = vbNullString
  loc_161D559:   var_A8 = vbNullString
  loc_161D595:   If (Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), var_98) <> vbNullString) Then
  loc_161D5D8:     var_170 = (var_98 + Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_161D5DD:     var_9C = CStr(CVar(global_130(var_88.Fields & CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND ")))
  loc_161D5F0:   End If
  loc_161D61F:   If Not(IsNull(CVar(var_88.Fields.Item("Chq_Date")))) Then
  loc_161D645:     var_114 = var_9C & " Dt: "
  loc_161D675:     var_9C = 1 & CStr(Format(CVar(var_88.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_161D68D:   End If
  loc_161D6B5:   var_A0 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("NARR")), 1)
  loc_161D6E6:   var_A4 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("mNarr")), var_114)
  loc_161D715:   var_D8 = "dd/MMM/yyyy"
  loc_161D734:   var_B0 = CDate(Format(CVar(var_88.Fields.Item("V_DATE")), var_D8))
  loc_161D76E:   var_B4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_161D781:   var_C8 = "V_SNo"
  loc_161D7A7:   var_B8 = CLng(var_88.Fields.Item(var_C8).Value)
  loc_161D7B7:   Set var_1E4 = var_8C 
  loc_161D7C6:   var_1E4.AddNew var_C8, var_D8
  loc_161D7EA:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161D7F8:   var_1E4.Collect = "PDate"
  loc_161D822:   var_10C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_161D830:   var_1E4.Collect = "V_DATE"
  loc_161D85A:   var_10C = CVar(var_88.Fields.Item("V_Type")) 'Address
  loc_161D868:   var_1E4.Collect = "V_Type"
  loc_161D892:   var_10C = CVar(var_88.Fields.Item("V_NO")) 'Address
  loc_161D8A0:   var_1E4.Collect = "V_NO"
  loc_161D8CA:   var_10C = CVar(var_88.Fields.Item("V_SNo")) 'Address
  loc_161D8D8:   var_1E4.Collect = "V_SNo"
  loc_161D90B:   var_12C = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")), CVar(var_88.Fields.Item("Party")))) 'String
  loc_161D918:   var_1E4.Collect = "subcode"
  loc_161D94F:   var_12C = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Name")), var_12C, var_B8, var_B0)) 'String
  loc_161D95C:   var_1E4.Collect = "Name"
  loc_161D9A6:   var_13C = Format(CVar(var_88.Fields.Item("Credit")), "0.00")
  loc_161D9B8:   var_1E4.Collect = "cr"
  loc_161DA04:   var_13C = Format(CVar(var_88.Fields.Item("Debit")), "0.00")
  loc_161DA16:   var_1E4.Collect = "dr"
  loc_161DB40:   var_26C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_88.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_161DB45:   var_A8 = CStr(var_26C)
  loc_161DBFE:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161DC2F:   var_21C = (Left(CVar(var_88.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_88.Fields.Item("V_ADD"))), vbNullString))
  loc_161DC34:   var_A8 = CStr(Trim(Left(CVar(var_88.Fields.Item("Site_Code")), 1)))
  loc_161DC8E:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161DCC0:   var_190 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(CVar(var_88.Fields.Item("V_Type"))))
  loc_161DCC5:   var_A8 = CStr(CVar(var_88.Fields.Item("V_ADD")))
  loc_161DD11:   var_15C = (CVar(var_A8) + IIf((var_A8 = vbNullString), vbNullString, "/"))
  loc_161DD4E:   var_1A0 = (Left(CVar(var_88.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_88.Fields.Item("V_NO")))))
  loc_161DD53:   var_A8 = CStr(Trim(CVar(var_88.Fields.Item("V_ADD"))))
  loc_161DD75:   var_C8 = "DOCNO"
  loc_161DD7E:   var_1E4.Collect = var_C8
  loc_161DD8E:   var_1E4.Update var_C8, CVar(var_A8)
  loc_161DD95:   Set var_1E4 = Nothing 
  loc_161DDB7:   If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161DDBA:     ' Referenced from: 161E08D
  loc_161DDC4:     If (Len(var_A0) > 0) Then
  loc_161DDCA:       Set var_270 = var_8C 
  loc_161DDD1:       var_270.MoveLast
  loc_161DDD9:       var_C8 = "Name"
  loc_161DE04:       var_D8 = vbNullString
  loc_161DE16:       If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161DE24:         var_270.AddNew var_C8, var_D8
  loc_161DE29:       End If
  loc_161DE61:       var_270.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161DEB3:       var_270.Fields.Item("DocId").Value = CVar(var_88.Fields.Item("DocID"))
  loc_161DF07:       var_270.Fields.Item("PDate").Value = CVar(var_88.Fields.Item("V_DATE"))
  loc_161DF1B:       var_D8 = CVar(var_B8) 'Long
  loc_161DF29:       var_270.Collect = "V_SNo"
  loc_161DF31:       var_D8 = CVar(var_A8) 'String
  loc_161DF3E:       var_270.Collect = "DOCNO"
  loc_161DF7F:       If (var_88.Fields.Item("V_Type").Value = "OP") Then
  loc_161DFA7:         var_270.Fields.Item("Val").Value = "1"
  loc_161DFB6:       Else
  loc_161DFBC:         var_C8 = "Credit"
  loc_161DFED:         var_15C = "2"
  loc_161DFF6:         var_D8 = 0
  loc_161E000:         var_13C = (var_88.Fields.Item(var_C8).Value > var_D8) 'Variant
  loc_161E032:         var_270.Fields.Item("Val").Value = IIf(var_13C, var_15C, "3")
  loc_161E04F:       End If
  loc_161E05A:       var_270.Update var_C8, var_D8
  loc_161E061:       Set var_270 = Nothing 
  loc_161E083:       var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161E08D:       GoTo loc_161DDBA
  loc_161E090:     End If
  loc_161E090:   End If
  loc_161E093:   var_88.MoveNext
  loc_161E09E:   var_10E = var_88.EOF
  loc_161E0A9:   If (var_10E = &HFF) Then
  loc_161E0AC:     ' Referenced from: 161E4AA
  loc_161E0CA:     If CBool(Trim(var_A0) <> vbNullString) Then
  loc_161E0CD:       ' Referenced from: 161E282
  loc_161E0D7:       If (Len(var_A0) > 0) Then
  loc_161E0DD:         Set var_274 = var_8C 
  loc_161E0E4:         var_274.MoveLast
  loc_161E0EC:         var_C8 = "Name"
  loc_161E117:         var_D8 = vbNullString
  loc_161E129:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161E137:           var_274.AddNew var_C8, var_D8
  loc_161E13C:         End If
  loc_161E174:         var_274.Fields.Item("Name").Value = Left(var_A0, &H32)
  loc_161E1A9:         var_274.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161E1DC:         var_274.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161E1EB:         var_D8 = CVar(var_B8) 'Long
  loc_161E1F9:         var_274.Collect = "V_SNo"
  loc_161E201:         var_D8 = CVar(var_A8) 'String
  loc_161E20E:         var_274.Collect = "DOCNO"
  loc_161E213:         var_D8 = "4"
  loc_161E21C:         var_C8 = "Val"
  loc_161E238:         var_274.Fields.Item(var_C8).Value = var_D8
  loc_161E24F:         var_274.Update var_C8, var_D8
  loc_161E256:         Set var_274 = Nothing 
  loc_161E278:         var_A0 = CStr(Mid(var_A0, &H33, 300))
  loc_161E282:         GoTo loc_161E0CD
  loc_161E285:       End If
  loc_161E285:     End If
  loc_161E2A3:     If CBool(Trim(var_A4) <> vbNullString) Then
  loc_161E2A6:       ' Referenced from: 161E45B
  loc_161E2B0:       If (Len(var_A4) > 0) Then
  loc_161E2B6:         Set var_278 = var_8C 
  loc_161E2BD:         var_278.MoveLast
  loc_161E2C5:         var_C8 = "Name"
  loc_161E2F0:         var_D8 = vbNullString
  loc_161E302:         If CBool(Trim(CVar(var_8C.Fields.Item(var_C8))) <> var_D8) Then
  loc_161E310:           var_278.AddNew var_C8, var_D8
  loc_161E315:         End If
  loc_161E34D:         var_278.Fields.Item("Name").Value = Left(var_A4, &H32)
  loc_161E382:         var_278.Fields.Item("DocId").Value = CVar(var_B4)
  loc_161E3B5:         var_278.Fields.Item("PDate").Value = CDate(var_B0)
  loc_161E3C4:         var_D8 = CVar(var_B8) 'Long
  loc_161E3D2:         var_278.Collect = "V_SNo"
  loc_161E3DA:         var_D8 = CVar(var_A8) 'String
  loc_161E3E7:         var_278.Collect = "DOCNO"
  loc_161E3EC:         var_D8 = "5"
  loc_161E3F5:         var_C8 = "Val"
  loc_161E411:         var_278.Fields.Item(var_C8).Value = var_D8
  loc_161E428:         var_278.Update var_C8, var_D8
  loc_161E42F:         Set var_278 = Nothing 
  loc_161E451:         var_A4 = CStr(Mid(var_A4, &H33, 300))
  loc_161E45B:         GoTo loc_161E2A6
  loc_161E45E:       End If
  loc_161E45E:     End If
  loc_161E461:   Else
  loc_161E464:     var_D8 = CVar(var_98) 'Long
  loc_161E49F:     If CBool(var_D8 <> var_88.Fields.Item("V_NO").Value) Then
  loc_161E4A7:       var_98 = 0
  loc_161E4AA:       GoTo loc_161E0AC
  loc_161E4AD:     End If
  loc_161E4AD:   End If
  loc_161E4AD:   GoTo loc_161D4ED
  loc_161E4B0: End If
  loc_161E4C4: If (var_88.RecordCount <= 0) Then
  loc_161E4CD:   Call 0.Method_arg_50 (var_114, var_98, var_D8, var_D8, var_D8, var_D8)
  loc_161E4EE:   MsgBox("** No Records Found to Print **", &H40, CVar(var_114), var_13C, var_15C)
  loc_161E503:   global_130 = 0
  loc_161E506:   Exit Sub
  loc_161E507: End If
  loc_161E50D: global_124 = "DayBook"
  loc_161E514: var_27E = arg_C
  loc_161E51D: If (var_27E = 1) Then
  loc_161E526:   var_D8 = "Paper Setting"
  loc_161E53B:   var_10C = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_161E541:   MsgBox(var_10C, &H40, var_D8, var_13C, var_15C)
  loc_161E559:   var_E8 = 1
  loc_161E566:   Set var_FC = CVar(CLng(2))(var_E8)
  loc_161E589:   Set var_1E8 = var_8C
  loc_161E5A2:   Call 0.Method_arg_174 (Me, var_1E8, CStr(var_10C), var_10E, DGSite.DispID_41, var_27E, global_130)
  loc_161E5AD:   Set var_8C = var_1E8
  loc_161E5B3:   var_8E = var_10E
  loc_161E5CA:   global_130 = 0
  loc_161E5CD:   GoTo loc_161E662
  loc_161E5D3: Else
  loc_161E5D9:   If (var_27E = 0) Then
  loc_161E5E5:     var_114 = MemVar_1F923B0 & "\FaDayBook.ttx"
  loc_161E5F2:     Set var_FC = var_8C 
  loc_161E5FE:     var_10E = CreateFieldDefFile(var_FC, var_114, &HFF, global_130, var_8E, var_D8)
  loc_161E627:     Call 0.Method_arg_FC (var_FC, var_10E, var_10E, var_D8)
  loc_161E632:     MemVar_1F921E4 = var_FC
  loc_161E652:     Call 0.Method_arg_64 (var_FC, CVar(var_FC), var_D8, var_E8)
  loc_161E65A:     Call 0.Method_arg_2C (var_D8, var_13C)
  loc_161E662:   End If
  loc_161E662:   ' Referenced from: 161E5CD
  loc_161E662: End If
  loc_161E667: Set var_88 = Nothing
  loc_161E66F: Set var_8C = Nothing
  loc_161E672: Exit Sub
  loc_161E673: ' Referenced from: 161D204
  loc_161E681: Call 0.Method_arg_50 (var_114, 0)
  loc_161E696: Proc_183_57_104AA84(var_114, "DayBook")
  loc_161E6A2: Exit Sub
End Sub

Public Sub Proc_203_74_15A7428(arg_C) '15A7428
  'Data Table: 583330
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_108 As Variant
  Dim var_C4 As String
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_158 As Variant
  Dim var_E4 As String
  Dim var_168 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_248 As String
  Dim var_25C As String
  Dim var_260 As String
  Dim var_F8 As Variant
  Dim var_98 As Recordset15
  Dim var_268 As String
  Dim unk_58337D As Connection15
  Dim var_26C As Recordset15
  Dim var_9C As Recordset15
  Dim var_E8 As Fields15
  Dim var_278 As Recordset15
  Dim var_27E As Integer
  Dim var_A2 As Integer
  Dim var_FA As Integer
  loc_15A6264: On Error Goto loc_15A73F7
  loc_15A627C: Set var_E8 = CVar(CLng(0))(0)
  loc_15A62A0: Call Proc_203_59_F51A10(CInt(0), CStr(var_F8))
  loc_15A62B4: If (var_102 = 0) Then
  loc_15A62BC:   global_130 = 0
  loc_15A62BF:   Exit Sub
  loc_15A62C0: End If
  loc_15A62D5: Set var_E8 = CVar(CLng(1))(0)
  loc_15A62F9: Call Proc_203_59_F51A10(CInt(1), CStr(var_F8))
  loc_15A630D: If (var_102 = 0) Then
  loc_15A6315:   global_130 = 0
  loc_15A6318:   Exit Sub
  loc_15A6319: End If
  loc_15A632E: Set var_E8 = CVar(CLng(0))(1)
  loc_15A634C: global_130(CStr(DGSite.DispID_41)).Text = var_102
  loc_15A6373: Set var_E8 = CVar(CLng(1))(1)
  loc_15A6391: DGSite.DispID_41(CStr(DGSite.DispID_41)).Text = global_130
  loc_15A63BA: If (Proc_183_48_F05F98(Me, var_102) = 0) Then
  loc_15A63C2:   global_130 = 0
  loc_15A63C5:   Exit Sub
  loc_15A63C6: End If
  loc_15A63DB: Set var_E8 = CVar(CLng(3))(1)
  loc_15A63FD: If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A6410:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, " Where ((V_DATE>=")
  loc_15A6430:   Proc_183_7_EB0C44(var_148)
  loc_15A6441:   var_168 = CVar(DGSite.DispID_41(global_130 & var_F8 & " AND V_DATE<")) & var_148 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE<" 
  loc_15A6450:   Proc_183_7_EB0C44(var_188)
  loc_15A6492:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A64B2:   Proc_183_7_EB0C44(var_148)
  loc_15A64D2:   Proc_183_7_EB0C44(var_188)
  loc_15A64E3:   var_1B8 = CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & " AND VIEWSUBGROUP.GroupNature IN ('E','R')) OR (V_DATE BETWEEN " 
  loc_15A64F2:   Proc_183_7_EB0C44(var_1D8)
  loc_15A6512:   Proc_183_7_EB0C44(var_228)
  loc_15A6528:   var_88 = CStr(CVar((CVar((var_1B8)) & var_1D8 & " AND ")) & var_228 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A6558:   Set var_98 = New 
  loc_15A6570:   Set var_E8 = CVar(CLng(2))(1)
  loc_15A6592:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A65B3:     var_100 = "SELECT 1 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0 AS BALANCECR,0 AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) " & CStr(CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & " AND VIEWSUBGROUP.GroupNature NOT IN ('E','R')))")
  loc_15A65C1:     var_260 = var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE Union " & "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM (LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE ) LEFT JOIN ACGROUP  AA ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,3) "
  loc_15A65D6:     Me.Recordset15.Open CVar(var_260 & var_88 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE "), CVar(MemVar_1F921DC), 2
  loc_15A65EC:   Else
  loc_15A660A:     var_100 = "SELECT 2 AS TT,MAX(ViewSubgroup.GROUPNAME)As GroupName,'' AS GrCode,MAX(LEDGER.SUBCODE) AS PARTYCODE,MAX(ViewSubgroup.NAME) AS PARTYNAME,0 AS OP_CR,0 AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(ViewSubgroup.MAINGRCODES) AS mgrcode,Max(AA.GROUPNAME) AS GRName ,Max(AA.GROUPNATURE) AS GRNATURE FROM LEDGER LEFT JOIN ViewSubgroup ON ViewSubgroup.SUBCODE=LEDGER.SUBCODE " & var_88
  loc_15A6611:     var_F8 = CVar(var_100 & " AND GAliasYN='N' AND aa.AliasYN='N' GROUP BY VIEWSUBGROUP.GROUPNAME,LEDGER.SUBCODE ") 'String
  loc_15A6618:     var_98.Open var_F8, CVar(MemVar_1F921DC), 2
  loc_15A6623:   End If
  loc_15A6626: Else
  loc_15A6636:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4, " Where (((V_DATE>=", 3)
  loc_15A663E:   var_118 = -1 & var_F8 
  loc_15A6656:   Proc_183_7_EB0C44(var_148, CVar(3(" Where ((V_DATE>=" & var_F8 & " AND V_DATE<")))
  loc_15A665E:   var_158 = -1 & var_148 
  loc_15A6662:   var_E4 = " AND AA.GroupNature IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A6676:   Proc_183_7_EB0C44(var_188)
  loc_15A6682:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A66B8:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A66D8:   Proc_183_7_EB0C44(var_148)
  loc_15A66E4:   var_E4 = " AND AA.GroupNature IN ('E','R')  AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE<"
  loc_15A66F8:   Proc_183_7_EB0C44(var_188)
  loc_15A6704:   var_1A8 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A670E:   var_94 = CStr(CVar((CVar((" Where (((V_DATE>=" & var_F8 & " AND V_DATE<")) & var_148 & var_E4)) & var_188 & var_1A8)
  loc_15A673A:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A675A:   Proc_183_7_EB0C44(var_148)
  loc_15A677A:   Proc_183_7_EB0C44(var_188)
  loc_15A6786:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A6793:   var_1C8 = CVar((CVar((CVar(("  Where (((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & var_1A8)) 'Address
  loc_15A679A:   Proc_183_7_EB0C44(var_1D8)
  loc_15A67BA:   Proc_183_7_EB0C44(var_228)
  loc_15A67C6:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A67D0:   var_88 = CStr(CVar((var_1C8 & var_1D8 & " AND ")) & var_228 & var_248)
  loc_15A67FC:   var_C4 = " Where (((V_DATE>="
  loc_15A680C:   Proc_183_7_EB0C44(var_F8, MemVar_1F920F4)
  loc_15A681D:   var_128 = var_C4 & var_F8 & " AND V_DATE BETWEEN " 
  loc_15A6825:   var_138 = CVar((var_128)) 'Address
  loc_15A682C:   Proc_183_7_EB0C44(var_148)
  loc_15A684C:   Proc_183_7_EB0C44(var_188)
  loc_15A6858:   var_1A8 = " AND AA.GroupNature IN ('E','R') AND AA.ALIASYN='N' AND VIEWSUBGROUP.GroupNature IN ('E','R') AND VIEWSUBGROUP.AliasYN='N') OR (V_DATE BETWEEN "
  loc_15A686C:   Proc_183_7_EB0C44(var_1D8)
  loc_15A688C:   Proc_183_7_EB0C44(var_228)
  loc_15A6898:   var_248 = " AND AA.GroupNature NOT IN ('E','R') AND AA.AliasYN='N' AND VIEWSUBGROUP.GroupNature NOT IN ('E','R') AND VIEWSUBGROUP.AliasYN='N')))"
  loc_15A68A2:   var_8C = CStr(CVar((CVar((CVar((var_138 & var_148 & " AND ")) & var_188 & var_1A8)) & var_1D8 & " AND ")) & var_228 & var_248)
  loc_15A68D1:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A68E3:   Set var_E8 = var_B4(1)
  loc_15A6905:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A691C:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & CStr(CVar((CVar((" Where ((V_DATE>=" & var_F8 & " AND V_DATE BETWEEN ")) & var_148 & " AND ")) & var_188 & var_1A8)
  loc_15A692A:     var_260 = var_100 & "   AND BB.AliasYN='N'   GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 UNION " & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) "
  loc_15A6941:     unk_58337D.Execute var_260 & var_88 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A694C:     Set var_9C = var_E8
  loc_15A6965:   Else
  loc_15A6979:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,MAX(BB.MAINGRCODE) AS mgrcode,MAX(BB.GROUPNAME) AS GRName,MAX(BB.GroupCode) As GRCode,MAX(AA.MAINGRCODE)   AS mgrcodeSUB,MAX(AA.GROUPNAME) AS GRNameSUB ,MAX(AA.GROUPCODE)  AS GRCodeSUB FROM ((ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE) LEFT JOIN ACGROUP BB ON BB.MAINGRCODE=LEFT(AA.MAINGRCODE ,3) " & var_88
  loc_15A6989:     unk_58337D.Execute var_100 & "  AND BB.AliasYN='N' GROUP BY AA.MAINGRCODE,AA.GROUPCODE HAVING LEN(AA.MAINGRCODE)=6 ", var_F8, -1
  loc_15A6994:     Set var_9C = var_E8
  loc_15A69A4:   End If
  loc_15A69B9:   Set var_98 = mDetailTrial(New)
  loc_15A69BC:   ' Referenced from:   15A6DAD
  loc_15A69CB:   If Not(Me.Recordset15.EOF) Then
  loc_15A69D1:     Set var_26C = var_98 
  loc_15A69E0:     var_26C.AddNew var_B4, var_C4
  loc_15A6A28:     var_26C.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A6A5E:     var_26C.Fields.Item("GroupName").Value = vbNullString
  loc_15A6A8F:     var_26C.Fields.Item("GRCODE").Value = vbNullString
  loc_15A6ADE:     var_26C.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A6B32:     var_26C.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A6B86:     var_26C.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A6BDA:     var_26C.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A6C2E:     var_26C.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A6C82:     var_26C.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A6CD6:     var_26C.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A6D2A:     var_26C.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A6D3E:     var_B4 = "GRName"
  loc_15A6D5A:     var_F8 = CVar(var_9C.Fields.Item(var_B4)) 'Address
  loc_15A6D62:     var_C4 = "GRName"
  loc_15A6D7E:     var_26C.Fields.Item(var_C4).Value = var_F8
  loc_15A6D9A:     var_26C.Update var_B4, var_C4
  loc_15A6DA1:     Set var_26C = Nothing 
  loc_15A6DA8:     var_9C.MoveNext
  loc_15A6DAD:     GoTo loc_15A69BC
  loc_15A6DB0:   End If
  loc_15A6DB3:   var_B4 = CVar(CLng(2)) 'Long
  loc_15A6DB8:   var_D4 = 1
  loc_15A6DC5:   Set var_E8 = var_B4(var_D4)
  loc_15A6DE7:   If (CStr(DGSite.DispID_41) = "Yes") Then
  loc_15A6DFE:     var_100 = "SELECT 1 AS TT,ISNULL(sum(AMTCR),0) AS OP_CR,ISNULL(SUM(AMTDR),0) AS OP_dR,0                    AS BALANCECR,0                    AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_94
  loc_15A6E05:     var_25C = var_100 & "    GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3 UNION "
  loc_15A6E0C:     var_260 = var_25C & "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE "
  loc_15A6E1A:     var_268 = var_260 & var_8C & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A6E23:     unk_58337D.Execute var_268, var_F8, -1
  loc_15A6E2E:     Set var_9C = var_E8
  loc_15A6E47:   Else
  loc_15A6E5B:     var_100 = "SELECT 2 AS TT,0                    AS OP_CR,0                    AS OP_DR,ISNULL(sum(AMTCR),0) AS BALANCECR,ISNULL(SUM(AMTDR),0) AS BALANCEDR,0 As Bal,AA.MAINGRCODE AS mgrcode,MAX(AA.GROUPNAME) AS GRName,MAX(aa.GroupCode) As GRCode,MAX(VIEWSUBGROUP.MAINGRCODES)   AS mgrcodeSUB,MAX(VIEWSUBGROUP.NAME) AS GRNameSUB ,MAX(VIEWSUBGROUP.SUBCODE)  AS GRCodeSUB FROM (ACGROUP AA INNER JOIN VIEWSUBGROUP ON AA.MAINGRCODE=LEFT(VIEWSUBGROUP.MAINGRCODES,LEN(AA.MAINGRCODE))) LEFT JOIN LEDGER ON LEDGER.SUBCODE=VIEWSUBGROUP.SUBCODE " & var_8C
  loc_15A6E62:     var_25C = var_100 & " GROUP BY AA.GROUPCODE,AA.MAINGRCODE,VIEWSUBGROUP.GROUPCODE,VIEWSUBGROUP.SUBCODE HAVING LEN(MAX(VIEWSUBGROUP.MAINGRCODES))=3"
  loc_15A6E6B:     unk_58337D.Execute var_25C, var_F8, -1
  loc_15A6E76:     Set var_9C = var_E8
  loc_15A6E86:     ' Referenced from:     15A7277
  loc_15A6E86:   End If
  loc_15A6E8C:   var_FA = var_9C.EOF
  loc_15A6E95:   If Not(var_FA) Then
  loc_15A6E9B:     Set var_278 = var_98 
  loc_15A6EAA:     var_278.AddNew var_B4, var_C4
  loc_15A6EF2:     var_278.Fields.Item("TT").Value = CVar(var_9C.Fields.Item("TT"))
  loc_15A6F28:     var_278.Fields.Item("GroupName").Value = vbNullString
  loc_15A6F59:     var_278.Fields.Item("GRCODE").Value = vbNullString
  loc_15A6FA8:     var_278.Fields.Item("PARTYCODE").Value = CVar(var_9C.Fields.Item("mgrcodeSUB"))
  loc_15A6FFC:     var_278.Fields.Item("PARTYNAME").Value = CVar(var_9C.Fields.Item("GRNameSUB"))
  loc_15A7050:     var_278.Fields.Item("OP_CR").Value = CVar(var_9C.Fields.Item("OP_CR"))
  loc_15A70A4:     var_278.Fields.Item("OP_dR").Value = CVar(var_9C.Fields.Item("OP_DR"))
  loc_15A70F8:     var_278.Fields.Item("BALANCECR").Value = CVar(var_9C.Fields.Item("BALANCECR"))
  loc_15A714C:     var_278.Fields.Item("BALANCEDR").Value = CVar(var_9C.Fields.Item("BALANCEDR"))
  loc_15A71A0:     var_278.Fields.Item("Bal").Value = CVar(var_9C.Fields.Item("Bal"))
  loc_15A71F4:     var_278.Fields.Item("mgrcode").Value = CVar(var_9C.Fields.Item("mgrcode"))
  loc_15A7208:     var_B4 = "GRName"
  loc_15A7214:     var_E8 = var_9C.Fields
  loc_15A722C:     var_C4 = "GRName"
  loc_15A7248:     var_278.Fields.Item(var_C4).Value = CVar(var_E8.Item(var_B4))
  loc_15A7264:     var_278.Update var_B4, var_C4
  loc_15A726B:     Set var_278 = Nothing 
  loc_15A7272:     var_9C.MoveNext
  loc_15A7277:     GoTo loc_15A6E86
  loc_15A727A:   End If
  loc_15A727A: End If
  loc_15A728E: If (var_98.RecordCount <= 0) Then
  loc_15A7297:   Call 0.Method_arg_50 (var_100, var_E8, var_E8)
  loc_15A72B8:   MsgBox("** No Records Found to Print **", &H40, CVar(var_100), var_128, var_138)
  loc_15A72CD:   global_130 = 0
  loc_15A72D0:   Exit Sub
  loc_15A72D1: End If
  loc_15A72D4: var_27E = arg_C
  loc_15A72DD: If (var_27E = 1) Then
  loc_15A72E6:   var_C4 = "Paper Setting"
  loc_15A7301:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, var_C4, var_128, var_138)
  loc_15A731A:   Set var_108 = var_98
  loc_15A7333:   Call 0.Method_arg_148 (Me, var_108, var_FA, var_27E)
  loc_15A733E:   Set var_98 = var_108
  loc_15A7344:   var_A2 = var_FA
  loc_15A734E:   GoTo loc_15A73DE
  loc_15A7354: Else
  loc_15A735D:   var_100 = MemVar_1F923B0 & "\FaDetTrial.ttx"
  loc_15A736A:   Set var_E8 = var_98 
  loc_15A7376:   var_FA = CreateFieldDefFile(var_E8, var_100, &HFF, var_A2)
  loc_15A7389:   var_290 = CVar(var_FA) 'Variant
  loc_15A73A3:   Call 0.Method_arg_F8 (var_E8, var_FA, global_130)
  loc_15A73AE:   MemVar_1F921E4 = var_E8
  loc_15A73CE:   Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_C4)
  loc_15A73D6:   Call 0.Method_arg_2C (var_D4, var_E8)
  loc_15A73DE: End If
  loc_15A73DE: ' Referenced from: 15A734E
  loc_15A73E3: Set var_9C = Nothing
  loc_15A73EB: Set var_98 = Nothing
  loc_15A73F3: Set var_A0 = Nothing
  loc_15A73F6: Exit Sub
  loc_15A73F7: ' Referenced from: 15A6264
  loc_15A7405: Call 0.Method_arg_50 (var_100, 0)
  loc_15A741A: Proc_183_57_104AA84(var_100, "DetailedTrial")
  loc_15A7426: Exit Sub
End Sub

Public Sub Proc_203_75_1EDDC44(arg_C, arg_10) '1EDDC44
  'Data Table: 583330
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_160 As String
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_18C As String
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_148 As Variant
  Dim var_188 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Variant
  Dim var_124 As Variant
  Dim var_1C8 As Variant
  Dim var_144 As Variant
  Dim var_178 As Variant
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_194 As Variant
  Dim var_210 As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_260 As Variant
  Dim Me As Variant
  Dim var_2A4 As Variant
  Dim var_100 As Recordset15
  Dim var_EC As Double
  Dim var_2DC As Variant
  Dim var_2EC As Variant
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_330 As Recordset15
  Dim var_15A As Integer
  Dim var_162 As Integer
  Dim var_338 As Fields15
  Dim var_33C As Field20
  Dim var_2B4 As Variant
  Dim var_90 As Recordset15
  Dim var_334 As Field20
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_94 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_350 As Recordset15
  Dim var_354 As Recordset15
  Dim var_8C As Recordset15
  Dim var_358 As Recordset15
  Dim var_35C As Recordset15
  Dim var_360 As Recordset15
  Dim var_364 As Recordset15
  Dim var_394 As Variant
  Dim var_3A8 As Recordset15
  Dim var_3AC As Recordset15
  Dim var_3B0 As Recordset15
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Recordset15
  Dim var_3BC As Recordset15
  Dim var_3C0 As Recordset15
  Dim var_3C4 As Recordset15
  Dim var_3C8 As Recordset15
  Dim var_F4 As Double
  Dim var_3CC As Recordset15
  Dim var_3D0 As Recordset15
  Dim var_3D4 As Recordset15
  Dim var_3D8 As Recordset15
  Dim var_3DC As Recordset15
  Dim var_3E0 As Recordset15
  Dim var_3E4 As Recordset15
  Dim var_3E8 As Recordset15
  Dim var_3EC As Recordset15
  Dim var_30C As Variant
  Dim var_3A4 As Variant
  Dim var_562 As Integer
  Dim var_1E4 As String
  loc_1ED12E4: On Error Goto loc_1ECDC1C
  loc_1ED12FC: Set var_148 = CVar(CLng(0))(0)
  loc_1ED1320: Call Proc_203_59_F51A10(CInt(0), CStr(var_158))
  loc_1ED1334: If (var_162 = 0) Then
  loc_1ED1337:   GoTo loc_1ECDBB0
  loc_1ED133A: End If
  loc_1ED134F: Set var_148 = CVar(CLng(1))(0)
  loc_1ED1373: Call Proc_203_59_F51A10(CInt(1), CStr(var_158))
  loc_1ED1387: If (var_162 = 0) Then
  loc_1ED138A:   GoTo loc_1ECDBB0
  loc_1ED138D: End If
  loc_1ED13A2: Set var_148 = CVar(CLng(2))(0)
  loc_1ED13C6: Call Proc_203_59_F51A10(CInt(2), CStr(var_158))
  loc_1ED13DA: If (var_162 = 0) Then
  loc_1ED13DD:   GoTo loc_1ECDBB0
  loc_1ED13E0: End If
  loc_1ED13F5: Set var_148 = CVar(CLng(0))(1)
  loc_1ED1413: var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED143A: Set var_148 = CVar(CLng(1))(1)
  loc_1ED144B: var_160 = CStr(DGSite.DispID_41)
  loc_1ED1452: Set var_168 = var_162(var_160)
  loc_1ED1458: var_168.Text = DGSite.DispID_41
  loc_1ED1475: Set var_148 = var_168(CInt(&HC))
  loc_1ED147B: Call 0.Method_Proc_203_75_1EDDC440 (var_162)
  loc_1ED1483: var_158 = CVar(var_168) 'Address
  loc_1ED14A4: If CBool(Trim(var_158) <> vbNullString) Then
  loc_1ED14B8:   Set var_148 = var_168(CInt(&HC))
  loc_1ED14BE:   Call 0.Method_Proc_203_75_1EDDC440 (var_160, " And VIEWLEDGER.LOGSite_Code='")
  loc_1ED14C6:   DGSite.DispID_41 = var_168.Tag
  loc_1ED14D6:   var_E4 = var_160 & "'"
  loc_1ED14EA: Else
  loc_1ED14F8:   var_E4 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078 & "'"
  loc_1ED14FE: End If
  loc_1ED1522: unk_58337D.Execute "SELECT RepToBy FROM FAENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_158, -1
  loc_1ED152D: Set var_88 = var_148
  loc_1ED1551: If (var_88.RecordCount > 0) Then
  loc_1ED156B:   var_168 = var_88.Fields.Item("RepToBy")
  loc_1ED157C:   var_FC = Proc_183_2_E5A304(CVar(var_168))
  loc_1ED1585: End If
  loc_1ED158D: If (arg_10 = "LedInt") Then
  loc_1ED15A1:   Call 0.Method_Proc_203_75_1EDDC440 (var_168(CInt(5)))
  loc_1ED15A9:   var_160 = "Enter Interest Rate"
  loc_1ED15CA:   If (Proc_183_19_E8DAFC(var_168) = 0) Then
  loc_1ED15CD:     GoTo loc_1ECDBB0
  loc_1ED15D0:   End If
  loc_1ED15D0: End If
  loc_1ED15E5: Set var_148 = CVar(CLng(2))(1)
  loc_1ED15F6: var_98 = CStr(DGSite.DispID_41)
  loc_1ED1607: If (arg_10 = "AcCheckList") Then
  loc_1ED160D:   var_E0 = vbNullString
  loc_1ED1616:   global_92 = vbNullString
  loc_1ED1626:   Set var_148 = var_168(3)
  loc_1ED162C:   Call 0.Method_Proc_203_75_1EDDC440 (var_15A)
  loc_1ED164A:   If (CLng(var_15A) = 0) Then
  loc_1ED1668:     Call Proc_203_56_127C0D4(global_104, 3, CByte(1))
  loc_1ED1673:     global_92 = var_168.Value
  loc_1ED1683:     If (global_130 = 0) Then
  loc_1ED1686:       GoTo loc_1ECDBB0
  loc_1ED1689:     End If
  loc_1ED1689:   End If
  loc_1ED1694:   If (global_92 <> vbNullString) Then
  loc_1ED16A1:     var_160 = " AND V_TYPE IN (" & global_92
  loc_1ED16A8:     var_E0 = var_160 & ") "
  loc_1ED16AE:   End If
  loc_1ED16BC:   Set var_148 = var_168(CInt(2))
  loc_1ED16C2:   Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED16CA:   var_160 = var_168.Text
  loc_1ED16E6:   If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED16F0:     var_188 = CVar(var_E0 & " AND VIEWLEDGER.DEBIT+VIEWLEDGER.CREDIT") 'String
  loc_1ED16FC:     Set var_148 = var_168(&HA)
  loc_1ED1702:     Call 0.Method_Proc_203_75_1EDDC440 (var_188)
  loc_1ED1722:     var_1B4 = Trim(CVar(var_168)) & " " 
  loc_1ED1734:     Set var_194 = var_1B8(CInt(2))
  loc_1ED173A:     Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED1742:     var_1B4 = var_1B8.Text
  loc_1ED1758:     var_E0 = CStr(CVar(Val(var_160)))
  loc_1ED1776:   End If
  loc_1ED1781:   Set var_148 = var_168(CInt(3))
  loc_1ED1787:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1ED17B0:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1ED17C8:     Set var_148 = var_168(CInt(3))
  loc_1ED17CE:     Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_E0 & " AND VIEWLEDGER.NARR LIKE ') 'String)
  loc_1ED17F3:     var_E0 = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED1806:   End If
  loc_1ED1811:   Set var_148 = var_168(CInt(4))
  loc_1ED1817:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1ED1840:   If CBool(Trim(CVar(var_168)) <> vbNullString) Then
  loc_1ED1858:     Set var_148 = var_168(CInt(4))
  loc_1ED185E:     Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_E0 & " AND VIEWLEDGER.NARR NOT LIKE ') 'String)
  loc_1ED1883:     var_E0 = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED1896:   End If
  loc_1ED1896: End If
  loc_1ED1899: var_1CC = var_98
  loc_1ED18A4: If (var_1CC = "Selected") Then
  loc_1ED18AD:   global_84 = vbNullString
  loc_1ED18B4:   var_9C = vbNullString
  loc_1ED18C3:   Set var_148 = var_168(1)
  loc_1ED18C9:   Call 0.Method_Proc_203_75_1EDDC440 (var_15A)
  loc_1ED18D1:    = var_168.Value
  loc_1ED18E7:   If (CLng(var_15A) = 0) Then
  loc_1ED1905:     Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_1ED1910:     global_84 = var_160
  loc_1ED1920:     If (global_130 = 0) Then
  loc_1ED1923:       GoTo loc_1ECDBB0
  loc_1ED1926:     End If
  loc_1ED1926:   End If
  loc_1ED1931:   If (global_84 <> vbNullString) Then
  loc_1ED1945:     var_9C = " WHERE SUBCODE IN (" & global_84 & ") "
  loc_1ED194B:   End If
  loc_1ED194E:   var_1D0 = arg_10
  loc_1ED1959:   If Not (var_1D0 = "LedDeb") Then
  loc_1ED1964:     If (var_1D0 = "MemLed") Then
  loc_1ED1967:     End If
  loc_1ED199A:     var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1ED19A3:     var_1B4 = (Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1ED19A8:     var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED19BD:   Else
  loc_1ED19C5:     If (var_1D0 = "LedCred") Then
  loc_1ED19DE:       var_158 = " Where"
  loc_1ED19F3:       var_188 = IIf((var_9C = vbNullString), var_158, " AND")
  loc_1ED19FB:       var_1A4 = (CVar(var_9C) + var_188)
  loc_1ED1A04:       var_1B4 = (Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1ED1A09:       var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED1A1B:     End If
  loc_1ED1A1B:   End If
  loc_1ED1A36:   var_18C = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME"
  loc_1ED1A3F:   unk_58337D.Execute var_18C, var_158, -1
  loc_1ED1A4A:   Set var_88 = var_148
  loc_1ED1A5D: Else
  loc_1ED1A65:   If (var_1CC = "Merge") Then
  loc_1ED1A7D:     Set var_148 = CVar(CLng(3))(0)
  loc_1ED1AA1:     Call Proc_203_59_F51A10(CInt(3), CStr(var_158))
  loc_1ED1AB5:     If (var_162 = 0) Then
  loc_1ED1AB8:       GoTo loc_1ECDBB0
  loc_1ED1ABB:     End If
  loc_1ED1AD0:     Set var_148 = CVar(CLng(4))(0)
  loc_1ED1AF4:     Call Proc_203_59_F51A10(CInt(4), CStr(var_158))
  loc_1ED1B08:     If (var_162 = 0) Then
  loc_1ED1B0B:       GoTo loc_1ECDBB0
  loc_1ED1B0E:     End If
  loc_1ED1B23:     Set var_148 = CVar(CLng(3))(1)
  loc_1ED1B41:     var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED1B68:     Set var_148 = CVar(CLng(3))(2)
  loc_1ED1B86:     var_162(CStr(DGSite.DispID_41)).Tag = DGSite.DispID_41
  loc_1ED1BBE:     var_160 = CStr(DGSite.DispID_41)
  loc_1ED1BCB:     CVar(CLng(4))(1)(var_160).Text = var_160
  loc_1ED1BF2:     Set var_148 = CVar(CLng(4))(2)
  loc_1ED1C03:     var_160 = CStr(DGSite.DispID_41)
  loc_1ED1C10:     (var_160).Tag = 
  loc_1ED1C2F:      = (var_18C).Text
  loc_1ED1C44:      = var_18C(var_160).Text
  loc_1ED1C5C:     If ( = var_160) Then
  loc_1ED1C65:       Call 0.Method_arg_50 (var_160)
  loc_1ED1C73:       var_178 = CVar(var_160) 'String
  loc_1ED1C86:       MsgBox(" ** Both A/C are Same** ", &H10, var_178, var_188, Trim(CVar((var_18C))))
  loc_1ED1C96:       GoTo loc_1ECDBB0
  loc_1ED1C99:     End If
  loc_1ED1CB6:     var_158 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE SUBCODE IN ('"(var_160).Tag
  loc_1ED1CBF:     var_18C = -1 & var_160
  loc_1ED1CD0:     Set var_168 = var_18C & "','"(var_1E4)
  loc_1ED1CE6:     var_1F0 = var_1E4 & "') ORDER BY NAME"
  loc_1ED1CEF:     unk_58337D.Execute var_1F0, , 
  loc_1ED1CFA:     Set var_88 = var_168.Tag
  loc_1ED1D1B:   Else
  loc_1ED1D23:     If (var_1CC = "Group(Selected)") Then
  loc_1ED1D2C:       global_88 = vbNullString
  loc_1ED1D33:       var_9C = vbNullString
  loc_1ED1D42:       Set var_148 = var_168(2)
  loc_1ED1D48:       Call 0.Method_Proc_203_75_1EDDC440 (var_15A)
  loc_1ED1D50:        = var_168.Value
  loc_1ED1D66:       If (CLng(var_15A) = 0) Then
  loc_1ED1D84:         Call Proc_203_56_127C0D4(global_100, 2, CByte(1))
  loc_1ED1D8F:         global_88 = var_160
  loc_1ED1D9F:         If (global_130 = 0) Then
  loc_1ED1DA2:           GoTo loc_1ECDBB0
  loc_1ED1DA5:         End If
  loc_1ED1DA5:       End If
  loc_1ED1DB0:       If (global_88 <> vbNullString) Then
  loc_1ED1DC4:         var_9C = " WHERE CODE IN (" & global_88 & ") "
  loc_1ED1DCA:       End If
  loc_1ED1DEE:       unk_58337D.Execute "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME", var_158, -1
  loc_1ED1DF9:       Set var_88 = var_148
  loc_1ED1E0C:     Else
  loc_1ED1E14:       If (var_1CC = "Group(Range)") Then
  loc_1ED1E2C:         Set var_148 = CVar(CLng(3))(0)
  loc_1ED1E50:         Call Proc_203_59_F51A10(CInt(3), CStr(var_158))
  loc_1ED1E64:         If (var_162 = 0) Then
  loc_1ED1E67:           GoTo loc_1ECDBB0
  loc_1ED1E6A:         End If
  loc_1ED1E7F:         Set var_148 = CVar(CLng(4))(0)
  loc_1ED1EA3:         Call Proc_203_59_F51A10(CInt(4), CStr(var_158))
  loc_1ED1EB7:         If (var_162 = 0) Then
  loc_1ED1EBA:           GoTo loc_1ECDBB0
  loc_1ED1EBD:         End If
  loc_1ED1ED2:         Set var_148 = CVar(CLng(5))(0)
  loc_1ED1EF6:         Call Proc_203_59_F51A10(CInt(5), CStr(var_158))
  loc_1ED1F0A:         If (var_162 = 0) Then
  loc_1ED1F0D:           GoTo loc_1ECDBB0
  loc_1ED1F10:         End If
  loc_1ED1F25:         Set var_148 = CVar(CLng(4))(1)
  loc_1ED1F43:         var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED1F6A:         Set var_148 = CVar(CLng(4))(2)
  loc_1ED1F88:         var_162(CStr(DGSite.DispID_41)).Tag = DGSite.DispID_41
  loc_1ED1FAF:         Set var_148 = CVar(CLng(5))(1)
  loc_1ED1FCD:         var_162(CStr(DGSite.DispID_41)).Text = DGSite.DispID_41
  loc_1ED2005:         var_160 = CStr(DGSite.DispID_41)
  loc_1ED2012:         CVar(CLng(5))(2)(var_160).Tag = var_160
  loc_1ED2039:         Set var_148 = CVar(CLng(3))(2)
  loc_1ED2052:         Set var_168 = DGSite.DispID_41(var_1E4)
  loc_1ED2058:          = var_168.Text
  loc_1ED2064:         Set var_194 = (var_1F0)
  loc_1ED206A:          = var_194.Text
  loc_1ED2083:         var_160 = CStr(var_158)
  loc_1ED208E:         var_1E8 = "SELECT GROUPNATURE,CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST WHERE CODE='" & var_160 & "' AND NAME BETWEEN '"
  loc_1ED20B3:         unk_58337D.Execute var_1E8 & var_1E4 & "' AND '" & var_1F0 & "' ORDER BY NAME", var_178, -1
  loc_1ED20BE:         Set var_88 = var_1B8
  loc_1ED20EB:       Else
  loc_1ED20F3:         If (var_1CC = "City Wise") Then
  loc_1ED20FC:           global_88 = vbNullString
  loc_1ED2103:           var_9C = vbNullString
  loc_1ED2112:           Set var_148 = var_168(2)
  loc_1ED2118:           Call 0.Method_Proc_203_75_1EDDC440 (var_15A)
  loc_1ED2120:           var_1B8 = var_168.Value
  loc_1ED2136:           If (CLng(var_15A) = 0) Then
  loc_1ED2154:             Call Proc_203_56_127C0D4(global_100, 2, CByte(1))
  loc_1ED215F:             global_88 = var_160
  loc_1ED216F:             If (global_130 = 0) Then
  loc_1ED2172:               GoTo loc_1ECDBB0
  loc_1ED2175:             End If
  loc_1ED2175:           End If
  loc_1ED2180:           If (global_88 <> vbNullString) Then
  loc_1ED2194:             var_9C = " WHERE CITYCODE IN (" & global_88 & ") "
  loc_1ED219A:           End If
  loc_1ED219D:           var_200 = arg_10
  loc_1ED21A8:           If Not (var_200 = "LedDeb") Then
  loc_1ED21B3:             If (var_200 = "MemLed") Then
  loc_1ED21B6:             End If
  loc_1ED21E9:             var_1A4 = (CVar(var_9C) + IIf((var_9C = vbNullString), " Where", " AND"))
  loc_1ED21F2:             var_1B4 = (Trim(CVar(var_168)) + " Nature='Customer'")
  loc_1ED21F7:             var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED220C:           Else
  loc_1ED2214:             If (var_200 = "LedCred") Then
  loc_1ED2222:               var_178 = " AND"
  loc_1ED222D:               var_158 = " Where"
  loc_1ED2242:               var_188 = IIf((var_9C = vbNullString), var_158, var_178)
  loc_1ED224A:               var_1A4 = (CVar(var_9C) + var_188)
  loc_1ED2253:               var_1B4 = (Trim(CVar(var_168)) + " Nature='Supplier'")
  loc_1ED2258:               var_9C = CStr(Trim(CVar(var_168)) & "%'")
  loc_1ED226A:             End If
  loc_1ED226A:           End If
  loc_1ED2285:           var_18C = "SELECT GROUPNATURE,groupCode as CODE,SUBCODE,NAME,ADD1,ADD2,CITY_NAME FROM PARTY_LIST " & var_9C & " ORDER BY NAME"
  loc_1ED228E:           unk_58337D.Execute var_18C, var_158, -1
  loc_1ED2299:           Set var_88 = var_148
  loc_1ED22A9:         End If
  loc_1ED22A9:       End If
  loc_1ED22A9:     End If
  loc_1ED22A9:   End If
  loc_1ED22A9: End If
  loc_1ED22BD: If (var_88.RecordCount <= 0) Then
  loc_1ED22D9:   MsgBox("No A/c to Print", 0, var_178, var_188, Trim(CVar(var_168)))
  loc_1ED22E9:   GoTo loc_1ECDBB0
  loc_1ED22EC: End If
  loc_1ED22FC: Set var_148 = New
  loc_1ED230B: Call 0.Method_arg_1AC (var_148, var_168)
  loc_1ED2316: Set var_8C = var_148
  loc_1ED231F: Set var_8C = var_168
  loc_1ED232C: var_A0 = vbNullString
  loc_1ED2332: var_A4 = vbNullString
  loc_1ED2335: ' Referenced from: 1ED249F
  loc_1ED2344: If Not(Me.Recordset15.EOF) Then
  loc_1ED2392:   var_210 = (CVar(var_A0) + IIf((Trim(var_A0) = vbNullString), vbNullString, ","))
  loc_1ED239B:   var_230 = (var_210 + "'")
  loc_1ED23CD:   var_270 = (var_230 + Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1ED23D6:   var_290 = (var_270 + "'")
  loc_1ED23DB:   var_A0 = CStr(var_290)
  loc_1ED2445:   var_210 = (CVar(var_A4) + IIf((Trim(var_A4) = vbNullString), vbNullString, ","))
  loc_1ED2477:   var_260 = (var_210 + Trim(CVar(var_88.Fields.Item("Name"))))
  loc_1ED247C:   var_A4 = CStr(Trim(CVar(var_88.Fields.Item("subcode"))))
  loc_1ED249A:   var_88.MoveNext
  loc_1ED249F:   GoTo loc_1ED2335
  loc_1ED24A2: End If
  loc_1ED24A8: var_294 = GRepFormName
  loc_1ED24B3: If Not (var_294 = "Led") Then
  loc_1ED24BE:   If Not (var_294 = "LedInt") Then
  loc_1ED24C9:     If (var_294 = "AcCheckList") Then
  loc_1ED24CC:     End If
  loc_1ED24CC:   End If
  loc_1ED24E1:   var_148 = Me.Fields
  loc_1ED24E9:   var_168 = var_148.Item("ShowCityName")
  loc_1ED250B:   If (var_168.Value = "Yes") Then
  loc_1ED2522:     var_160 = "SELECT VIEWLEDGER.*,NameWithCity AS NAME FROM VIEWLEDGER LEFT JOIN ViewSubgroup ON VIEWLEDGER.PARTY1=ViewSubgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1ED2537:     Proc_183_7_EB0C44(var_178, CVar(var_2B4(CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))), -1)
  loc_1ED2557:     Proc_183_7_EB0C44(var_210, CVar(var_148(var_148 & var_178 & " And ")))
  loc_1ED258E:     var_2A4 = var_160 & var_210 & " " & CVar(var_E0) & "  " & CVar(var_E4) & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo" 
  loc_1ED259C:     unk_58337D.Execute CStr(var_2A4), , 
  loc_1ED25A7:     Set var_90 = var_148
  loc_1ED25D6:   Else
  loc_1ED25EA:     var_160 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY1=subgroup.SUBCODE WHERE VIEWLEDGER.PARTY IN (" & var_A0
  loc_1ED25FF:     Proc_183_7_EB0C44(var_178, CVar(var_2B4(CVar(var_160 & ") AND VIEWLEDGER.V_DATE Between "))))
  loc_1ED2607:     var_1A4 = -1 & var_178 
  loc_1ED2618:     var_1C8 = CVar(var_148(var_148 & var_178 & " And ")) 'Address
  loc_1ED261F:     Proc_183_7_EB0C44(var_210)
  loc_1ED2627:     var_230 = var_1C8 & var_210 
  loc_1ED2643:     var_270 = var_230 & " " & CVar(var_E0) & "  " 
  loc_1ED264D:     var_290 = var_270 & CVar(var_E4) 
  loc_1ED2664:     unk_58337D.Execute CStr(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo"), , 
  loc_1ED266F:     Set var_90 = var_148
  loc_1ED269B:   End If
  loc_1ED269B: End If
  loc_1ED26AF: If (var_88.RecordCount > 0) Then
  loc_1ED26B5:   var_88.MoveFirst
  loc_1ED26BA:   ' Referenced from: 1EDCA56
  loc_1ED26BA: End If
  loc_1ED26C9: Loop Until Not(var_88.EOF) 'do at: 1ECCA59
  loc_1ED26DA: Set var_148 = var_168(CInt(0))
  loc_1ED26E0: Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED26E8:  = var_168.Text
  loc_1ED2704: If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED2714:   var_124 = "SELECT ISNULL(SUM(DEBIT),0)-ISNULL(SUM(CREDIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1ED2730:   var_168 = var_88.Fields.Item("subcode")
  loc_1ED273F:   Proc_183_9_EAA760(var_178, CVar(var_168), " ")
  loc_1ED2758:   var_1B4 = CVar(-1(var_230 & var_178 & " AND V_DATE<=")) 'Address
  loc_1ED275F:   Proc_183_7_EB0C44(var_1C8, var_88.Fields & var_178 & " And ")
  loc_1ED276B:   var_160 = CStr(var_194 & var_1C8)
  loc_1ED2775:   unk_58337D.Execute var_160, , 
  loc_1ED2780:   Set var_100 = var_194
  loc_1ED27B4:   If (var_100.RecordCount > 0) Then
  loc_1ED27C0:     Set var_148 = var_168(8)
  loc_1ED27C6:     Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1ED27D5:     var_178 = Trim(CVar(var_168))
  loc_1ED27DD:     var_2C4 = var_178 'Variant
  loc_1ED27F2:     If (var_2C4 = "=") Then
  loc_1ED2817:       var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED282D:       Set var_194 = var_1B8(CInt(0))
  loc_1ED2833:       Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED283B:       var_158 = var_1B8.Text
  loc_1ED2860:       If CBool( <> CVar(Val(var_160))) Then
  loc_1ED2863:         GoTo loc_1ECCA4E
  loc_1ED2866:       End If
  loc_1ED2869:     Else
  loc_1ED2874:       If (var_2C4 = "<") Then
  loc_1ED2899:         var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED28AF:         Set var_194 = var_1B8(CInt(0))
  loc_1ED28B5:         Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED28BD:         var_158 = var_1B8.Text
  loc_1ED28E2:         If ( >= CVar(Val(var_160))) Then
  loc_1ED28E5:           GoTo loc_1ECCA4E
  loc_1ED28E8:         End If
  loc_1ED28EB:       Else
  loc_1ED28F6:         If (var_2C4 = "<=") Then
  loc_1ED291B:           var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2931:           Set var_194 = var_1B8(CInt(0))
  loc_1ED2937:           Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED293F:           var_158 = var_1B8.Text
  loc_1ED2964:           If ( > CVar(Val(var_160))) Then
  loc_1ED2967:             GoTo loc_1ECCA4E
  loc_1ED296A:           End If
  loc_1ED296D:         Else
  loc_1ED2978:           If (var_2C4 = ">") Then
  loc_1ED299D:             var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED29B3:             Set var_194 = var_1B8(CInt(0))
  loc_1ED29B9:             Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED29C1:             var_158 = var_1B8.Text
  loc_1ED29E6:             If ( <= CVar(Val(var_160))) Then
  loc_1ED29E9:               GoTo loc_1ECCA4E
  loc_1ED29EC:             End If
  loc_1ED29EF:           Else
  loc_1ED29FA:             If (var_2C4 = ">=") Then
  loc_1ED2A1F:               var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2A35:               Set var_194 = var_1B8(CInt(0))
  loc_1ED2A3B:               Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2A43:               var_158 = var_1B8.Text
  loc_1ED2A68:               If ( < CVar(Val(var_160))) Then
  loc_1ED2A6B:                 GoTo loc_1ECCA4E
  loc_1ED2A6E:               End If
  loc_1ED2A71:             Else
  loc_1ED2A7C:               If (var_2C4 = "<>") Then
  loc_1ED2A99:                 var_168 = var_100.Fields.Item("Balance")
  loc_1ED2AA1:                 var_158 = var_168.Value
  loc_1ED2AB7:                 Set var_194 = var_1B8(CInt(0))
  loc_1ED2ABD:                 Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2AC5:                 var_158 = var_1B8.Text
  loc_1ED2AEA:                 If ( = CVar(Val(var_160))) Then
  loc_1ED2AED:                   GoTo loc_1ECCA4E
  loc_1ED2AF0:                 End If
  loc_1ED2AF0:               End If
  loc_1ED2AF0:             End If
  loc_1ED2AF0:           End If
  loc_1ED2AF0:         End If
  loc_1ED2AF0:       End If
  loc_1ED2AF0:     End If
  loc_1ED2AF0:   End If
  loc_1ED2AF0: End If
  loc_1ED2AFE: Set var_148 = var_168(CInt(1))
  loc_1ED2B04: Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2B0C:  = var_168.Text
  loc_1ED2B28: If (CDbl(Val(var_160)) > CDbl(0)) Then
  loc_1ED2B38:   var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) AS BALANCE FROM VIEWLEDGER WHERE PARTY="
  loc_1ED2B54:   var_168 = var_88.Fields.Item("subcode")
  loc_1ED2B63:   Proc_183_9_EAA760(var_178, CVar(var_168), CVar(Val(var_160)))
  loc_1ED2B7C:   var_1B4 = CVar(-1(var_230 & var_178 & " AND V_DATE<=")) 'Address
  loc_1ED2B83:   Proc_183_7_EB0C44(var_1C8, var_88.Fields & var_178 & " And ")
  loc_1ED2B8F:   var_160 = CStr(var_194 & var_1C8)
  loc_1ED2B99:   unk_58337D.Execute var_160, , 
  loc_1ED2BA4:   Set var_100 = var_194
  loc_1ED2BD8:   If (var_100.RecordCount > 0) Then
  loc_1ED2BE4:     Set var_148 = var_168(9)
  loc_1ED2BEA:     Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1ED2C01:     var_2D4 = Trim(CVar(var_168)) 'Variant
  loc_1ED2C16:     If (var_2D4 = "=") Then
  loc_1ED2C3B:       var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2C51:       Set var_194 = var_1B8(CInt(1))
  loc_1ED2C57:       Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2C5F:       var_158 = var_1B8.Text
  loc_1ED2C84:       If CBool( <> CVar(Val(var_160))) Then
  loc_1ED2C87:         GoTo loc_1ECCA4E
  loc_1ED2C8A:       End If
  loc_1ED2C8D:     Else
  loc_1ED2C98:       If (var_2D4 = "<") Then
  loc_1ED2CBD:         var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2CD3:         Set var_194 = var_1B8(CInt(1))
  loc_1ED2CD9:         Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2CE1:         var_158 = var_1B8.Text
  loc_1ED2D06:         If ( >= CVar(Val(var_160))) Then
  loc_1ED2D09:           GoTo loc_1ECCA4E
  loc_1ED2D0C:         End If
  loc_1ED2D0F:       Else
  loc_1ED2D1A:         If (var_2D4 = "<=") Then
  loc_1ED2D3F:           var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2D55:           Set var_194 = var_1B8(CInt(1))
  loc_1ED2D5B:           Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2D63:           var_158 = var_1B8.Text
  loc_1ED2D88:           If ( > CVar(Val(var_160))) Then
  loc_1ED2D8B:             GoTo loc_1ECCA4E
  loc_1ED2D8E:           End If
  loc_1ED2D91:         Else
  loc_1ED2D9C:           If (var_2D4 = ">") Then
  loc_1ED2DC1:             var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2DD7:             Set var_194 = var_1B8(CInt(1))
  loc_1ED2DDD:             Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2DE5:             var_158 = var_1B8.Text
  loc_1ED2E0A:             If ( <= CVar(Val(var_160))) Then
  loc_1ED2E0D:               GoTo loc_1ECCA4E
  loc_1ED2E10:             End If
  loc_1ED2E13:           Else
  loc_1ED2E1E:             If (var_2D4 = ">=") Then
  loc_1ED2E43:               var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2E59:               Set var_194 = var_1B8(CInt(1))
  loc_1ED2E5F:               Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2E67:               var_158 = var_1B8.Text
  loc_1ED2E8C:               If ( < CVar(Val(var_160))) Then
  loc_1ED2E8F:                 GoTo loc_1ECCA4E
  loc_1ED2E92:               End If
  loc_1ED2E95:             Else
  loc_1ED2EA0:               If (var_2D4 = "<>") Then
  loc_1ED2EC5:                 var_158 = var_100.Fields.Item("Balance").Value
  loc_1ED2EDB:                 Set var_194 = var_1B8(CInt(1))
  loc_1ED2EE1:                 Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED2EE9:                 var_158 = var_1B8.Text
  loc_1ED2F0E:                 If ( = CVar(Val(var_160))) Then
  loc_1ED2F11:                   GoTo loc_1ECCA4E
  loc_1ED2F14:                 End If
  loc_1ED2F14:               End If
  loc_1ED2F14:             End If
  loc_1ED2F14:           End If
  loc_1ED2F14:         End If
  loc_1ED2F14:       End If
  loc_1ED2F14:     End If
  loc_1ED2F14:   End If
  loc_1ED2F14: End If
  loc_1ED2F17: var_EC = CDbl(0)
  loc_1ED2F5A: var_A8 = CStr(IIf((var_98 = "Merge"), 0, CVar(var_88.Fields.Item("subcode"))))
  loc_1ED2F73: If (var_98 <> "Merge") Then
  loc_1ED2F9C:   var_178 = Trim(CVar(var_88.Fields.Item("Name")))
  loc_1ED2FA5:   var_A4 = CStr(var_178)
  loc_1ED2FB2: End If
  loc_1ED2FCB: var_A4 = CStr(Left(var_A4, &H32))
  loc_1ED2FD4: var_2D8 = arg_10
  loc_1ED2FDF: If Not (var_2D8 = "LedDeb") Then
  loc_1ED2FEA:   If (var_2D8 = "MemLed") Then
  loc_1ED2FED:   End If
  loc_1ED303B:   var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ED306D:   If CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) Then
  loc_1ED3096:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")))
  loc_1ED309F:     var_1B4 = CVar((var_EC)) 'Address
  loc_1ED30A6:     Proc_183_7_EB0C44(var_1C8)
  loc_1ED30B1:     var_280 = 0
  loc_1ED30F2:     var_250 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE <=" & var_1C8 & " AND CREDIT >0 " & CVar(var_E4) 
  loc_1ED3109:     unk_58337D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ED3111:     var_194 = var_194.Fields
  loc_1ED3119:     var_280 = var_1B8.Item(var_1B8)
  loc_1ED3121:     var_2DC = var_2DC.Value
  loc_1ED312A:     var_EC = CSng(var_290)
  loc_1ED317C:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED3185:     var_1B4 = CVar(var_1B4(var_290)) 'Address
  loc_1ED318C:     Proc_183_7_EB0C44(var_1C8)
  loc_1ED3194:     var_2EC = CVar(var_EC) 'Double
  loc_1ED319E:     var_280 = 0
  loc_1ED31DF:     var_250 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE<" & var_1C8 & " AND DEBIT>0 " & CVar(var_E4) 
  loc_1ED31F6:     unk_58337D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ED31FE:     var_194 = var_194.Fields
  loc_1ED3206:     var_280 = var_1B8.Item(var_1B8)
  loc_1ED320E:     var_2DC = var_2DC.Value
  loc_1ED3216:     var_2A4 = (var_290 - var_290)
  loc_1ED321B:     var_EC = CSng(var_290 & " ORDER BY PARTY,V_DATE,CASE WHEN CREDIT>0 THEN 3 WHEN DEBIT>0 THEN 2 ELSE 1 END,DOCID,V_SNo")
  loc_1ED324A:   Else
  loc_1ED3270:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED3280:     Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4)
  loc_1ED3289:     var_230 = CVar(var_1B4(var_2EC)) 'Address
  loc_1ED3290:     Proc_183_7_EB0C44(var_250)
  loc_1ED329B:     var_2FC = 0
  loc_1ED32D9:     var_260 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 
  loc_1ED3303:     unk_58337D.Execute CStr(var_260 & " AND CREDIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1ED330B:     var_194 = var_194.Fields
  loc_1ED3313:     var_2FC = var_1B8.Item(var_1B8)
  loc_1ED331B:     var_2DC = var_2DC.Value
  loc_1ED3324:     var_EC = CSng(var_30C)
  loc_1ED3359:     var_114 = "subcode"
  loc_1ED337C:     Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1ED338C:     Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4)
  loc_1ED3395:     var_230 = CVar(var_230(var_30C)) 'Address
  loc_1ED339C:     Proc_183_7_EB0C44(var_250)
  loc_1ED33A4:     var_31C = CVar(var_EC) 'Double
  loc_1ED33AE:     var_2FC = 0
  loc_1ED33C4:     var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED3408:     var_2A4 = var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND DEBIT>0 " & CVar(var_E4) & vbNullString 
  loc_1ED3416:     unk_58337D.Execute CStr(var_2A4), var_2B4, -1
  loc_1ED341E:     var_194 = var_194.Fields
  loc_1ED3426:     var_2FC = var_1B8.Item(var_1B8)
  loc_1ED342E:     var_2DC = var_2DC.Value
  loc_1ED3436:     var_32C = (var_30C - var_30C)
  loc_1ED343B:     var_EC = CSng(var_32C)
  loc_1ED346D:   End If
  loc_1ED3474:   If (var_EC < CDbl(0)) Then
  loc_1ED347A:     Set var_330 = var_8C 
  loc_1ED3489:     var_330.AddNew var_114, var_124
  loc_1ED348E:     var_124 = vbNullString
  loc_1ED349D:     var_330.Collect = "V_Type"
  loc_1ED34A2:     var_124 = 0
  loc_1ED34B1:     var_330.Collect = "V_NO"
  loc_1ED34B6:     var_124 = vbNullString
  loc_1ED34C5:     var_330.Collect = "V_ADD"
  loc_1ED34CA:     var_124 = 0
  loc_1ED34D9:     var_330.Collect = "V_SNo"
  loc_1ED34ED:     var_330.Collect = "Name"
  loc_1ED352A:     var_330.Collect = "V_DATE"
  loc_1ED3573:     var_330.Collect = "PDate"
  loc_1ED3588:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED3596:     var_330.Collect = "cr"
  loc_1ED359F:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED35AD:     var_330.Collect = "ADJQTY"
  loc_1ED35B2:     var_124 = "0"
  loc_1ED35C1:     var_330.Collect = "Val"
  loc_1ED35C9:     var_124 = CVar(var_A4) 'String
  loc_1ED35D6:     var_330.Collect = "Name1"
  loc_1ED35EB:     var_330.Collect = "subcode"
  loc_1ED3618:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), CVar(var_A8), Format(CVar(1(Format(CVar("Opening Balance"("Opening Balance")), "dd/MMM/yyyy"))), "dd/MMM/yyyy"))) 'String
  loc_1ED3625:     var_330.Collect = "CITY_NAME"
  loc_1ED3637:     var_114 = "Add1"
  loc_1ED365C:     var_15A = IsNull(CVar(var_88.Fields.Item(var_114)))
  loc_1ED3687:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ED368D:     var_124 = "Add1"
  loc_1ED3699:     var_194 = var_88.Fields
  loc_1ED36B2:     var_178 = vbNullString
  loc_1ED36F1:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1ED36F9:     var_210 = (", " + var_1C8)
  loc_1ED371D:     var_260 = Trim(IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<"))
  loc_1ED3725:     var_270 = (IIf(var_15A, var_178, CVar(var_194.Item(var_124))) + var_260)
  loc_1ED372C:     var_290 = Trim(var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, vbNullString, var_124 & var_178 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & " AND DEBIT>0 ")
  loc_1ED373E:     var_330.Collect = "Address1"
  loc_1ED377A:     var_330.Update var_114, var_124
  loc_1ED3781:     Set var_330 = Nothing 
  loc_1ED3788:     var_EC = CDbl(0)
  loc_1ED378B:   End If
  loc_1ED3798:   var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1ED37C3:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1, var_194, var_EC)
  loc_1ED37E3:   Proc_183_7_EB0C44(var_1C8, CVar(var_162(var_290 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ")), var_15A, var_178)
  loc_1ED3803:   Proc_183_7_EB0C44(var_260, CVar(1(1 & var_1C8 & " AND ")))
  loc_1ED3835:   unk_58337D.Execute CStr(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO"), , 
  loc_1ED3840:   Set var_90 = var_194
  loc_1ED386E:   ' Referenced from: 1ED5FFB
  loc_1ED387D:   If Not(var_90.EOF) Then
  loc_1ED38BE:     If (CVar(var_EC) >= var_90.Fields.Item("Debit").Value) Then
  loc_1ED38F2:       var_178 = (CVar(var_EC) - var_90.Fields.Item("Debit").Value)
  loc_1ED38F7:       var_EC = CSng(var_178)
  loc_1ED3907:     Else
  loc_1ED3910:       var_B0 = vbNullString
  loc_1ED3916:       var_B4 = vbNullString
  loc_1ED391C:       var_B8 = vbNullString
  loc_1ED3969:       If CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1ED39AC:         var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED39B1:         var_AC = CStr(CVar(var_162(1 & var_260 & " AND VIEWLEDGER.DEBIT>0  " & CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND VIEWLEDGER.V_DATE BETWEEN ")))
  loc_1ED39C4:       End If
  loc_1ED39F3:       If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ED3A19:         var_160 = var_AC & " Dt:   "
  loc_1ED3A49:         var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MMM/yyyy"))
  loc_1ED3A61:       End If
  loc_1ED3B17:       var_290 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1))) <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ED3B20:       var_B0 = CStr(var_290)
  loc_1ED3BC8:       var_250 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))) <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString)
  loc_1ED3BD1:       var_B4 = CStr(var_250)
  loc_1ED3CDF:       var_2B4 = vbNullString
  loc_1ED3CFF:       var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), var_2B4)
  loc_1ED3D07:       var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ED3D0C:       var_B8 = CStr(var_32C)
  loc_1ED3DC5:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED3DF6:       var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED3DFB:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED3E55:       var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED3E87:       var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ED3E8C:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED3EB6:       var_124 = vbNullString
  loc_1ED3EC9:       var_114 = (var_B8 = vbNullString)
  loc_1ED3ED8:       var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ED3F15:       var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ED3F38:       Set var_340 = var_8C 
  loc_1ED3F47:       var_340.AddNew var_114, var_124
  loc_1ED3F74:       var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ED3F81:       var_340.Collect = "V_ADD"
  loc_1ED3FAF:       var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ED3FBD:       var_340.Collect = "V_NO"
  loc_1ED3FEE:       var_340.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ED4028:       var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ED403A:       var_340.Collect = "Name"
  loc_1ED4086:       var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED4098:       var_340.Collect = "V_DATE"
  loc_1ED40C8:       var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1ED40D6:       var_340.Collect = "cr"
  loc_1ED4112:       var_178 = (var_90.Fields.Item("Debit").Value - CVar(var_EC))
  loc_1ED4120:       var_340.Collect = "ADJQTY"
  loc_1ED414E:       var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ED415C:       var_340.Collect = "V_Type"
  loc_1ED4186:       var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ED4194:       var_340.Collect = "V_SNo"
  loc_1ED41A2:       var_124 = CVar(var_A4) 'String
  loc_1ED41AF:       var_340.Collect = "Name1"
  loc_1ED41C4:       var_340.Collect = "subcode"
  loc_1ED41F1:       var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ED41FE:       var_340.Collect = "CITY_NAME"
  loc_1ED4235:       var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ED4247:       var_2DC = var_88.Fields
  loc_1ED4260:       var_162 = IsNull(CVar(var_2DC.Item("Add2")))
  loc_1ED42D2:       var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED42FE:       var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ED4305:       var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED4317:       var_340.Collect = "Address1"
  loc_1ED438B:       var_340.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED43FF:       var_340.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED4452:       If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED4455:         var_124 = "1"
  loc_1ED4464:         var_340.Collect = "Val"
  loc_1ED446C:       Else
  loc_1ED44D2:         var_340.Collect = "Val"
  loc_1ED44F3:         If (var_FC = "Yes") Then
  loc_1ED4520:           var_124 = 0
  loc_1ED4532:           If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ED455D:             var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1, 1, var_290)) 'String
  loc_1ED4580:             var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1ED458E:             var_340.Collect = "Name"
  loc_1ED45A6:           Else
  loc_1ED45A9:             var_114 = "Name"
  loc_1ED45BD:             var_168 = var_90.Fields.Item(var_114)
  loc_1ED45CE:             var_178 = CVar(Proc_183_2_E5A304(CVar(var_168), "2", var_162, var_15A)) 'String
  loc_1ED45D9:             var_124 = "To "
  loc_1ED45F1:             var_1B4 = (var_124 + Left(Trim(var_178), &H2F))
  loc_1ED45FF:             var_340.Collect = "Name"
  loc_1ED4614:           End If
  loc_1ED4614:         End If
  loc_1ED4614:       End If
  loc_1ED461F:       var_340.Update var_114, var_124
  loc_1ED4626:       Set var_340 = Nothing 
  loc_1ED4638:       Set var_148 = var_168(CInt(6))
  loc_1ED463E:       Call 0.Method_Proc_203_75_1EDDC440 (var_160, "2", var_178)
  loc_1ED4646:       var_188 = var_168.Text
  loc_1ED46AA:       If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ED46B0:         Set var_344 = var_8C 
  loc_1ED46B7:         var_344.MoveLast
  loc_1ED46E1:         var_344.Fields.Item("Name").Value = "As Per Detail"
  loc_1ED4730:         var_344.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED4767:         var_344.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED4799:         var_344.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED47A8:         var_114 = "V_DATE"
  loc_1ED47CB:         var_124 = "dd/MMM/yyyy"
  loc_1ED47D0:         var_178 = var_124
  loc_1ED4808:         var_344.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ED482A:         var_344.Update var_114, var_124
  loc_1ED4831:         Set var_344 = Nothing 
  loc_1ED4842:         var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ED486D:         Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, Trim(Str(CVar(var_90.Fields.Item("V_NO")))), -1)
  loc_1ED48BA:         unk_58337D.Execute CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, 1
  loc_1ED48C5:         Set var_94 = var_2DC
  loc_1ED48E7:         ' Referenced from:   1ED559A
  loc_1ED48F6:         If Not(var_94.EOF) Then
  loc_1ED4902:           var_D8 = vbNullString
  loc_1ED4908:           var_DC = vbNullString
  loc_1ED4944:           If (Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), 1) <> vbNullString) Then
  loc_1ED4987:             var_1B4 = (1 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED498C:             var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ED499F:           End If
  loc_1ED49CE:           If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ED49F4:             var_160 = var_D4 & " Dt:   "
  loc_1ED4A01:             var_124 = "dd/MM/yy"
  loc_1ED4A24:             var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ED4A3C:           End If
  loc_1ED4A3F:           var_114 = "NARR"
  loc_1ED4A73:           var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ED4A85:           Set var_348 = var_8C 
  loc_1ED4A94:           var_348.AddNew var_114, var_124
  loc_1ED4AD5:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED4AD8:             var_124 = "1"
  loc_1ED4AE7:             var_348.Collect = "Val"
  loc_1ED4AEF:           Else
  loc_1ED4B43:             var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED4B55:             var_348.Collect = "Val"
  loc_1ED4B6E:           End If
  loc_1ED4BD1:           var_348.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED4C0E:           var_348.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED4C5D:           var_348.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED4CAA:           If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ED4CD2:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ED4D24:             var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ED4D2B:             Proc_183_4_EABBA8(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), var_1C8, 1, 1)
  loc_1ED4D55:             var_1A4 = (var_1C8 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ED4D59:             var_124 = " "
  loc_1ED4D5E:             var_1B4 = ("3" + var_124)
  loc_1ED4D77:             var_250 = (var_124 + CVar(Proc_183_16_EAECDC(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC, "2")))
  loc_1ED4D80:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Dr")
  loc_1ED4DA4:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ED4DD7:           Else
  loc_1ED4DFC:             var_348.Fields.Item("Sub").Value = "*"
  loc_1ED4E0E:             var_114 = "Name"
  loc_1ED4E22:             var_168 = var_94.Fields.Item(var_114)
  loc_1ED4E55:             Proc_183_4_EABBA8(Trim(Str(CVar(var_90.Fields.Item("V_NO")))), CVar(var_94.Fields.Item("Credit")))
  loc_1ED4E7F:             var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1ED4E83:             var_124 = " "
  loc_1ED4E88:             var_1B4 = ("3" + var_124)
  loc_1ED4EA1:             var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(Trim(Str(CVar(var_90.Fields.Item("V_NO"))))), &HC)))
  loc_1ED4EAA:             var_260 = (IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))) + " Cr")
  loc_1ED4ECE:             var_348.Fields.Item("Name").Value = Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO"))))))
  loc_1ED4EFE:           End If
  loc_1ED4F09:           var_348.Update var_114, var_124
  loc_1ED4F10:           Set var_348 = Nothing 
  loc_1ED4F22:           Set var_148 = var_168(CInt(7))
  loc_1ED4F28:           Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED4F47:           If (var_168.Text = "Yes") Then
  loc_1ED4F4D:             var_114 = var_D4
  loc_1ED4F5D:             var_124 = vbNullString
  loc_1ED4F68:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ED4F6B:               ' Referenced from:   1ED526B
  loc_1ED4F75:               If (Len(var_D4) > 0) Then
  loc_1ED4F7B:                 Set var_34C = var_8C 
  loc_1ED4F8A:                 var_34C.AddNew var_114, var_124
  loc_1ED4FB7:                 var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ED4FDB:                 var_34C.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_34C.Fields.Item("Name").Value), &H14))
  loc_1ED5033:                 var_34C.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED506A:                 var_34C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED509B:                 var_34C.Fields.Item("Sub").Value = "*"
  loc_1ED510A:                 var_34C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED515D:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED5185:                   var_34C.Fields.Item("Val").Value = "1"
  loc_1ED5194:                 Else
  loc_1ED519A:                   var_114 = "Credit"
  loc_1ED51D4:                   var_124 = 0
  loc_1ED5210:                   var_34C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED522D:                 End If
  loc_1ED5238:                 var_34C.Update var_114, var_124
  loc_1ED523F:                 Set var_34C = Nothing 
  loc_1ED5261:                 var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ED526B:                 GoTo loc_1ED4F6B
  loc_1ED526E:               End If
  loc_1ED526E:             End If
  loc_1ED5271:             var_114 = var_DC
  loc_1ED5281:             var_124 = vbNullString
  loc_1ED528C:             If CBool(Trim(var_114) <> var_124) Then
  loc_1ED528F:               ' Referenced from:   1ED558F
  loc_1ED5299:               If (Len(var_DC) > 0) Then
  loc_1ED529F:                 Set var_350 = var_8C 
  loc_1ED52AE:                 var_350.AddNew var_114, var_124
  loc_1ED52DB:                 var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ED52FF:                 var_350.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ED5357:                 var_350.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED538E:                 var_350.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED53BF:                 var_350.Fields.Item("Sub").Value = "*"
  loc_1ED542E:                 var_350.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED5481:                 If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED54A9:                   var_350.Fields.Item("Val").Value = "1"
  loc_1ED54B8:                 Else
  loc_1ED54BE:                   var_114 = "Credit"
  loc_1ED54F8:                   var_124 = 0
  loc_1ED5534:                   var_350.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED5551:                 End If
  loc_1ED555C:                 var_350.Update var_114, var_124
  loc_1ED5563:                 Set var_350 = Nothing 
  loc_1ED5585:                 var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ED558F:                 GoTo loc_1ED528F
  loc_1ED5592:               End If
  loc_1ED5592:             End If
  loc_1ED5592:           End If
  loc_1ED5595:           var_94.MoveNext
  loc_1ED559A:           GoTo loc_1ED48E7
  loc_1ED559D:         End If
  loc_1ED559D:       End If
  loc_1ED55BB:       If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ED55BE:         ' Referenced from:   1ED590A
  loc_1ED55C8:         If (Len(var_AC) > 0) Then
  loc_1ED55CE:           Set var_354 = var_8C 
  loc_1ED55D5:           var_354.MoveLast
  loc_1ED55DD:           var_114 = "Name"
  loc_1ED5608:           var_124 = vbNullString
  loc_1ED561A:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED5628:             var_354.AddNew var_114, var_124
  loc_1ED562D:           End If
  loc_1ED5655:           var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ED5679:           var_354.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ED56D1:           var_354.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED5708:           var_354.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED573A:           var_354.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED57A9:           var_354.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED57FC:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED5824:             var_354.Fields.Item("Val").Value = "1"
  loc_1ED5833:           Else
  loc_1ED5839:             var_114 = "Credit"
  loc_1ED5873:             var_124 = 0
  loc_1ED58AF:             var_354.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED58CC:           End If
  loc_1ED58D7:           var_354.Update var_114, var_124
  loc_1ED58DE:           Set var_354 = Nothing 
  loc_1ED5900:           var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ED590A:           GoTo loc_1ED55BE
  loc_1ED590D:         End If
  loc_1ED590D:       End If
  loc_1ED592B:       If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ED592E:         ' Referenced from:   1ED5C7A
  loc_1ED5938:         If (Len(var_B0) > 0) Then
  loc_1ED593E:           Set var_358 = var_8C 
  loc_1ED5945:           var_358.MoveLast
  loc_1ED594D:           var_114 = "Name"
  loc_1ED5978:           var_124 = vbNullString
  loc_1ED598A:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED5998:             var_358.AddNew var_114, var_124
  loc_1ED599D:           End If
  loc_1ED59C5:           var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ED59E9:           var_358.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ED5A24:           var_358.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED5A56:           var_358.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED5AC5:           var_358.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED5B18:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED5B40:             var_358.Fields.Item("Val").Value = "1"
  loc_1ED5B4F:           Else
  loc_1ED5BCB:             var_358.Fields.Item("Val").Value = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED5BE8:           End If
  loc_1ED5BEB:           var_114 = "DocID"
  loc_1ED5C0F:           var_124 = "DocId"
  loc_1ED5C2B:           var_358.Fields.Item(var_124).Value = CVar(var_90.Fields.Item(var_114))
  loc_1ED5C47:           var_358.Update var_114, var_124
  loc_1ED5C4E:           Set var_358 = Nothing 
  loc_1ED5C70:           var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ED5C7A:           GoTo loc_1ED592E
  loc_1ED5C7D:         End If
  loc_1ED5C7D:       End If
  loc_1ED5C9B:       If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ED5C9E:         ' Referenced from:   1ED5FEA
  loc_1ED5CA8:         If (Len(var_B4) > 0) Then
  loc_1ED5CAE:           Set var_35C = var_8C 
  loc_1ED5CB5:           var_35C.MoveLast
  loc_1ED5CBD:           var_114 = "Name"
  loc_1ED5CE8:           var_124 = vbNullString
  loc_1ED5CFA:           If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED5D08:             var_35C.AddNew var_114, var_124
  loc_1ED5D0D:           End If
  loc_1ED5D35:           var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ED5D59:           var_35C.Fields.Item("Name").Value = (var_90.Fields.Item("Credit").Value > 0)
  loc_1ED5DB1:           var_35C.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED5DE8:           var_35C.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED5E1A:           var_35C.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED5E89:           var_35C.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED5EDC:           If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED5F04:             var_35C.Fields.Item("Val").Value = "1"
  loc_1ED5F13:           Else
  loc_1ED5F19:             var_114 = "Credit"
  loc_1ED5F53:             var_124 = 0
  loc_1ED5F8F:             var_35C.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED5FAC:           End If
  loc_1ED5FB7:           var_35C.Update var_114, var_124
  loc_1ED5FBE:           Set var_35C = Nothing 
  loc_1ED5FCF:           var_114 = var_B4
  loc_1ED5FE0:           var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ED5FEA:           GoTo loc_1ED5C9E
  loc_1ED5FED:         End If
  loc_1ED5FED:       End If
  loc_1ED5FF0:       var_EC = CDbl(0)
  loc_1ED5FF3:     End If
  loc_1ED5FF6:     var_90.MoveNext
  loc_1ED5FFB:     GoTo loc_1ED386E
  loc_1ED5FFE:   End If
  loc_1ED6005:   If (var_EC > CDbl(0)) Then
  loc_1ED600B:     Set var_360 = var_8C 
  loc_1ED601A:     var_360.AddNew var_114, var_124
  loc_1ED601F:     var_124 = vbNullString
  loc_1ED602E:     var_360.Collect = "V_Type"
  loc_1ED6033:     var_124 = 0
  loc_1ED6042:     var_360.Collect = "V_NO"
  loc_1ED6047:     var_124 = vbNullString
  loc_1ED6056:     var_360.Collect = "V_ADD"
  loc_1ED605B:     var_124 = 0
  loc_1ED606A:     var_360.Collect = "V_SNo"
  loc_1ED607E:     var_360.Collect = "Name"
  loc_1ED6087:     var_158 = CVar("Excess Credit"("Excess Credit")) 'Address
  loc_1ED6095:     var_360.Collect = "V_DATE"
  loc_1ED60A1:     var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED60AF:     var_360.Collect = "ADJAMT"
  loc_1ED60B7:     var_124 = CVar(var_A4) 'String
  loc_1ED60C4:     var_360.Collect = "Name1"
  loc_1ED60CC:     var_124 = CVar(var_A8) 'String
  loc_1ED60D9:     var_360.Collect = "subcode"
  loc_1ED6106:     var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ED6131:     var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ED6137:     var_124 = "Add1"
  loc_1ED619B:     var_1C8 = var_88.Fields.Item("Add2").Value
  loc_1ED61A3:     var_210 = (", " + var_1C8)
  loc_1ED61CF:     var_270 = (IIf(var_15A, vbNullString, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, vbNullString, Trim(Str(CVar(var_90.Fields.Item("V_NO")))))))
  loc_1ED61D6:     var_290 = Trim(IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED61E8:     var_360.Collect = "Address1"
  loc_1ED621C:     var_114 = "CITY_NAME"
  loc_1ED6241:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), var_290, var_162, var_15A, var_124, var_124)) 'String
  loc_1ED6245:     var_124 = "CITY_NAME"
  loc_1ED624E:     var_360.Collect = var_124
  loc_1ED6268:     var_360.Update var_114, var_124
  loc_1ED626F:     Set var_360 = Nothing 
  loc_1ED6273:   End If
  loc_1ED6273:   GoTo loc_1ECCA4E
  loc_1ED6276: End If
  loc_1ED627E: Loop Until (var_2D8 = "LedCred") 'do at: 1EC958C
  loc_1ED62AB: var_124 = "E"
  loc_1ED62CF: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ED6301: If CBool((var_88.Fields.Item("GroupNature").Value <> var_124) And (var_1B8.Value <> "R")) Then
  loc_1ED6323:   var_158 = CVar(var_88.Fields.Item("subcode")) 'Address
  loc_1ED632A:   Proc_183_9_EAA760(var_178, var_158, var_178, var_124)
  loc_1ED633A:   Proc_183_7_EB0C44(var_1C8, CVar(var_124(var_158)))
  loc_1ED6345:   var_280 = 0
  loc_1ED635B:   var_124 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED639D:   unk_58337D.Execute CStr(var_124 & var_178 & " AND V_DATE <=" & var_1C8 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ED63A5:   var_194 = var_194.Fields
  loc_1ED63AD:   var_280 = var_1B8.Item(var_1B8)
  loc_1ED63B5:   var_2DC = var_2DC.Value
  loc_1ED63BE:   var_EC = CSng(var_290)
  loc_1ED6410:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED6419:   var_1B4 = CVar(var_124(var_290)) 'Address
  loc_1ED6420:   Proc_183_7_EB0C44(var_1C8, var_1B4)
  loc_1ED6428:   var_2EC = CVar(var_EC) 'Double
  loc_1ED6432:   var_280 = 0
  loc_1ED6448:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED6473:   var_250 = var_124 & var_178 & " AND V_DATE<" & var_1C8 & " AND CREDIT>0 " & CVar(var_E4) 
  loc_1ED648A:   unk_58337D.Execute CStr(var_250 & vbNullString), IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString), -1
  loc_1ED6492:   var_194 = var_194.Fields
  loc_1ED649A:   var_280 = var_1B8.Item(var_1B8)
  loc_1ED64A2:   var_2DC = var_2DC.Value
  loc_1ED64AA:   var_2A4 = (var_290 - var_290)
  loc_1ED64AF:   var_EC = CSng((Me.Fields.Item("LedSiteCode").Value = "Yes"))
  loc_1ED64DE: Else
  loc_1ED6504:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED6514:   Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4)
  loc_1ED651D:   var_230 = CVar(var_124(var_2EC)) 'Address
  loc_1ED6524:   Proc_183_7_EB0C44(var_250)
  loc_1ED652F:   var_2FC = 0
  loc_1ED656D:   var_260 = "SELECT ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY=" & var_178 & " AND V_DATE BETWEEN " & var_1B4 & " AND " & var_250 
  loc_1ED6597:   unk_58337D.Execute CStr(var_260 & " AND DEBIT >0 " & CVar(var_E4) & vbNullString), var_2B4, -1
  loc_1ED659F:   var_194 = var_194.Fields
  loc_1ED65A7:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ED65AF:   var_2DC = var_2DC.Value
  loc_1ED65B8:   var_EC = CSng(var_30C)
  loc_1ED65ED:   var_114 = "subcode"
  loc_1ED6610:   Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item(var_114)), var_EC)
  loc_1ED6620:   Proc_183_7_EB0C44(var_1B4, MemVar_1F920F4)
  loc_1ED6629:   var_230 = CVar(var_230(var_30C)) 'Address
  loc_1ED6630:   Proc_183_7_EB0C44(var_250)
  loc_1ED6638:   var_31C = CVar(var_EC) 'Double
  loc_1ED6642:   var_2FC = 0
  loc_1ED6658:   var_124 = "SELECT ISNULL(SUM(CREDIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED66A0:   var_160 = CStr(var_124 & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & " AND CREDIT>0 " & CVar(var_E4) & vbNullString)
  loc_1ED66AA:   unk_58337D.Execute var_160, var_2B4, -1
  loc_1ED66B2:   var_194 = var_194.Fields
  loc_1ED66BA:   var_2FC = var_1B8.Item(var_1B8)
  loc_1ED66C2:   var_2DC = var_2DC.Value
  loc_1ED66CA:   var_32C = (var_30C - var_30C)
  loc_1ED66CF:   var_EC = CSng(var_32C)
  loc_1ED6701: End If
  loc_1ED6708: If (var_EC < CDbl(0)) Then
  loc_1ED670E:   Set var_364 = var_8C 
  loc_1ED671D:   var_364.AddNew var_114, var_124
  loc_1ED6722:   var_124 = vbNullString
  loc_1ED6731:   var_364.Collect = "V_Type"
  loc_1ED6736:   var_124 = 0
  loc_1ED6745:   var_364.Collect = "V_NO"
  loc_1ED674A:   var_124 = vbNullString
  loc_1ED6759:   var_364.Collect = "V_ADD"
  loc_1ED675E:   var_124 = 0
  loc_1ED676D:   var_364.Collect = "V_SNo"
  loc_1ED6781:   var_364.Collect = "Name"
  loc_1ED67BE:   var_364.Collect = "V_DATE"
  loc_1ED67D3:   var_158 = CVar(1(Format(CVar("Opening Balance"("Opening Balance")), "dd/MMM/yyyy"))) 'Address
  loc_1ED67E1:   var_364.Collect = "PDate"
  loc_1ED67ED:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED67FB:   var_364.Collect = "cr"
  loc_1ED6804:   var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED6812:   var_364.Collect = "ADJQTY"
  loc_1ED6817:   var_124 = "0"
  loc_1ED6826:   var_364.Collect = "Val"
  loc_1ED682E:   var_124 = CVar(var_A4) 'String
  loc_1ED683B:   var_364.Collect = "Name1"
  loc_1ED6843:   var_124 = CVar(var_A8) 'String
  loc_1ED6850:   var_364.Collect = "subcode"
  loc_1ED687D:   var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, var_124, var_124, CVar(var_88.Fields.Item("Add1")))) 'String
  loc_1ED68B0:   var_260 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add2")), 1, var_124, var_124)) 'String
  loc_1ED68CA:   var_194 = var_88.Fields
  loc_1ED68E3:   var_1C8 = vbNullString
  loc_1ED68EC:   var_124 = vbNullString
  loc_1ED6937:   var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED6953:   var_30C = (Trim(var_260) = vbNullString) 'Variant
  loc_1ED6970:   var_394 = (IIf((Trim(var_178) = var_124), var_1C8, CVar(var_194.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, var_2B4)))
  loc_1ED6989:   var_364.Collect = "Address1"
  loc_1ED69C5:   var_114 = "CITY_NAME"
  loc_1ED69EA:   var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_124)) 'String
  loc_1ED69EE:   var_124 = "CITY_NAME"
  loc_1ED69F7:   var_364.Collect = var_124
  loc_1ED6A11:   var_364.Update var_114, var_124
  loc_1ED6A18:   Set var_364 = Nothing 
  loc_1ED6A1F:   var_EC = CDbl(0)
  loc_1ED6A22: End If
  loc_1ED6A2F: var_124 = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY1 WHERE VIEWLEDGER.PARTY="
  loc_1ED6A5A: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_124, var_30C, -1)
  loc_1ED6A7A: Proc_183_7_EB0C44(var_1C8, CVar(var_EC(var_194 & var_178 & " AND VIEWLEDGER.V_DATE BETWEEN ")), var_178)
  loc_1ED6A9A: Proc_183_7_EB0C44(var_260)
  loc_1ED6ABE: var_2B4 = CVar(var_31C(var_EC & var_1C8 & " AND ")) & var_260 & " AND VIEWLEDGER.CREDIT>0  " & CVar(var_E4) & " ORDER BY V_DATE,V_TYPE,V_NO" 
  loc_1ED6ACC: unk_58337D.Execute CStr(var_2B4), , 
  loc_1ED6AD7: Set var_90 = var_194
  loc_1ED6B05: ' Referenced from: 1ED92B0
  loc_1ED6B14: If Not(var_90.EOF) Then
  loc_1ED6B55:   If (CVar(var_EC) >= var_90.Fields.Item("Credit").Value) Then
  loc_1ED6B89:     var_178 = (CVar(var_EC) - var_90.Fields.Item("Credit").Value)
  loc_1ED6B8E:     var_EC = CSng(var_178)
  loc_1ED6B9E:   Else
  loc_1ED6BA7:     var_B0 = vbNullString
  loc_1ED6BAD:     var_B4 = vbNullString
  loc_1ED6BB3:     var_B8 = vbNullString
  loc_1ED6BEF:     If (Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No"))) <> vbNullString) Then
  loc_1ED6C32:       var_1B4 = (var_EC + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED6C37:       var_AC = CStr(CVar(var_EC(var_194 & CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"))) & " AND VIEWLEDGER.V_DATE BETWEEN ")))
  loc_1ED6C4A:     End If
  loc_1ED6C79:     If Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) Then
  loc_1ED6C9F:       var_160 = var_AC & " Dt:   "
  loc_1ED6CCF:       var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1ED6CE7:     End If
  loc_1ED6D90:     var_230 = IIf((Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1) <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr"))))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1ED6D99:     var_B0 = CStr(var_230)
  loc_1ED6E28:     var_160 = Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")))
  loc_1ED6E40:     var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(var_90.Fields.Item("NARR"))), vbNullString))
  loc_1ED6F71:     var_30C = IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString)
  loc_1ED6F79:     var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + var_30C)
  loc_1ED6F7E:     var_B8 = CStr(vbNullString)
  loc_1ED7037:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED7068:     var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1ED706D:     var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED70C7:     var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1ED70F9:     var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1ED70FE:     var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1ED7128:     var_124 = vbNullString
  loc_1ED713B:     var_114 = (var_B8 = vbNullString)
  loc_1ED714A:     var_1A4 = (CVar(var_B8) + IIf(var_114, var_124, "/"))
  loc_1ED7187:     var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1ED71AA:     Set var_3A8 = var_8C 
  loc_1ED71B9:     var_3A8.AddNew var_114, var_124
  loc_1ED71E6:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")))) 'String
  loc_1ED71F3:     var_3A8.Collect = "V_ADD"
  loc_1ED7221:     var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1ED722F:     var_3A8.Collect = "V_NO"
  loc_1ED7260:     var_3A8.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1ED729A:     var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))))
  loc_1ED72AC:     var_3A8.Collect = "Name"
  loc_1ED730A:     var_3A8.Collect = "V_DATE"
  loc_1ED733A:     var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1ED7348:     var_3A8.Collect = "cr"
  loc_1ED7384:     var_178 = (var_90.Fields.Item("Credit").Value - CVar(var_EC))
  loc_1ED7392:     var_3A8.Collect = "ADJQTY"
  loc_1ED73C0:     var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1ED73CE:     var_3A8.Collect = "V_Type"
  loc_1ED73F8:     var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1ED7406:     var_3A8.Collect = "V_SNo"
  loc_1ED7414:     var_124 = CVar(var_A4) 'String
  loc_1ED7421:     var_3A8.Collect = "Name1"
  loc_1ED7436:     var_3A8.Collect = "subcode"
  loc_1ED7463:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_A8), CVar(var_A8), CVar(var_88.Fields.Item("CITY_NAME")), CVar(var_88.Fields.Item("CITY_NAME")), var_178, CVar(var_88.Fields.Item("CITY_NAME")))) 'String
  loc_1ED7470:     var_3A8.Collect = "CITY_NAME"
  loc_1ED74A7:     var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), var_178, Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy"), 1)) 'String
  loc_1ED74AD:     var_188 = Trim(var_178)
  loc_1ED74C1:     var_2DC = var_88.Fields
  loc_1ED7504:     var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1ED7561:     var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED7592:     var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, var_188))) = vbNullString), vbNullString, vbNullString))
  loc_1ED759A:     var_394 = (IIf((var_188 = vbNullString), vbNullString, var_210) + var_384)
  loc_1ED75A1:     var_3A4 = Trim(var_394)
  loc_1ED75B3:     var_3A8.Collect = "Address1"
  loc_1ED762F:     var_3A8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED76A3:     var_3A8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED76F6:     If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED76F9:       var_124 = "0"
  loc_1ED7708:       var_3A8.Collect = "Val"
  loc_1ED7710:     Else
  loc_1ED7776:       var_3A8.Collect = "Val"
  loc_1ED7797:       If (var_FC = "Yes") Then
  loc_1ED77C4:         var_124 = 0
  loc_1ED77D6:         If (var_90.Fields.Item("Credit").Value > var_124) Then
  loc_1ED7801:           var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, 1)) 'String
  loc_1ED7824:           var_1B4 = ("By " + Left(Trim(var_178), &H2F))
  loc_1ED7832:           var_3A8.Collect = "Name"
  loc_1ED784A:         Else
  loc_1ED784D:           var_114 = "Name"
  loc_1ED7861:           var_168 = var_90.Fields.Item(var_114)
  loc_1ED787D:           var_124 = "To "
  loc_1ED7895:           var_1B4 = (var_124 + Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_168), "2", 1))), &H2F))
  loc_1ED78A3:           var_3A8.Collect = "Name"
  loc_1ED78B8:         End If
  loc_1ED78B8:       End If
  loc_1ED78B8:     End If
  loc_1ED78C3:     var_3A8.Update var_114, var_124
  loc_1ED78CA:     Set var_3A8 = Nothing 
  loc_1ED78DC:     Set var_148 = var_168(CInt(6))
  loc_1ED78E2:     Call 0.Method_Proc_203_75_1EDDC440 (var_160, "2", var_3A4)
  loc_1ED78EA:     var_178 = var_168.Text
  loc_1ED794E:     If CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) Then
  loc_1ED7954:       Set var_3AC = var_8C 
  loc_1ED795B:       var_3AC.MoveLast
  loc_1ED7985:       var_3AC.Fields.Item("Name").Value = "As Per Detail"
  loc_1ED79D4:       var_3AC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED7A0B:       var_3AC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED7A3D:       var_3AC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED7A4C:       var_114 = "V_DATE"
  loc_1ED7A6F:       var_124 = "dd/MMM/yyyy"
  loc_1ED7A74:       var_178 = var_124
  loc_1ED7AAC:       var_3AC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1ED7ACE:       var_3AC.Update var_114, var_124
  loc_1ED7AD5:       Set var_3AC = Nothing 
  loc_1ED7AE6:       var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1ED7B11:       Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1)
  loc_1ED7B54:       var_160 = CStr(var_2DC & var_178 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value)
  loc_1ED7B5E:       unk_58337D.Execute var_160, 1, 1
  loc_1ED7B69:       Set var_94 = var_2DC
  loc_1ED7B8B:       ' Referenced from:   1ED884F
  loc_1ED7B9A:       If Not(var_94.EOF) Then
  loc_1ED7BA6:         var_D8 = vbNullString
  loc_1ED7BAC:         var_DC = vbNullString
  loc_1ED7BF9:         If CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No"))))) <> vbNullString) Then
  loc_1ED7C3C:           var_1B4 = (var_160 + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1ED7C41:           var_D4 = CStr(var_90.Fields.Item("V_SNo").Value)
  loc_1ED7C54:         End If
  loc_1ED7C83:         If Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) Then
  loc_1ED7CA9:           var_160 = var_D4 & " Dt:   "
  loc_1ED7CB6:           var_124 = "dd/MM/yy"
  loc_1ED7CD9:           var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1ED7CF1:         End If
  loc_1ED7CF4:         var_114 = "NARR"
  loc_1ED7D28:         var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1ED7D3A:         Set var_3B0 = var_8C 
  loc_1ED7D49:         var_3B0.AddNew var_114, var_124
  loc_1ED7D8A:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED7D8D:           var_124 = "1"
  loc_1ED7D9C:           var_3B0.Collect = "Val"
  loc_1ED7DA4:         Else
  loc_1ED7DF8:           var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1ED7E0A:           var_3B0.Collect = "Val"
  loc_1ED7E23:         End If
  loc_1ED7E86:         var_3B0.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED7EC3:         var_3B0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED7F12:         var_3B0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED7F5F:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_1ED7F87:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ED7FD9:           var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1ED7FE0:           Proc_183_4_EABBA8(var_210, var_1C8, 1, 1)
  loc_1ED800A:           var_1A4 = (var_1C8 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1ED800E:           var_124 = " "
  loc_1ED8013:           var_1B4 = ("3" + var_124)
  loc_1ED802C:           var_250 = (var_124 + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC, "2")))
  loc_1ED8035:           var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1ED8059:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2)))))
  loc_1ED808C:         Else
  loc_1ED80B1:           var_3B0.Fields.Item("Sub").Value = "*"
  loc_1ED80C3:           var_114 = "Name"
  loc_1ED80D7:           var_168 = var_94.Fields.Item(var_114)
  loc_1ED810A:           Proc_183_4_EABBA8(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1ED8134:           var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1ED8138:           var_124 = " "
  loc_1ED813D:           var_1B4 = ("3" + var_124)
  loc_1ED8156:           var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC)))
  loc_1ED815F:           var_260 = (CVar(var_3B0.Fields.Item("Add2")) + " Cr")
  loc_1ED8183:           var_3B0.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3B0.Fields.Item("Add2")), 1, CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14))))
  loc_1ED81B3:         End If
  loc_1ED81BE:         var_3B0.Update var_114, var_124
  loc_1ED81C5:         Set var_3B0 = Nothing 
  loc_1ED81D7:         Set var_148 = var_168(CInt(7))
  loc_1ED81DD:         Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1ED81FC:         If (var_168.Text = "Yes") Then
  loc_1ED8202:           var_114 = var_D4
  loc_1ED8212:           var_124 = vbNullString
  loc_1ED821D:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ED8220:             ' Referenced from:   1ED8520
  loc_1ED822A:             If (Len(var_D4) > 0) Then
  loc_1ED8230:               Set var_3B4 = var_8C 
  loc_1ED823F:               var_3B4.AddNew var_114, var_124
  loc_1ED826C:               var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1ED8290:               var_3B4.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_3B4.Fields.Item("Name").Value), &H14))
  loc_1ED82E8:               var_3B4.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED831F:               var_3B4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED8350:               var_3B4.Fields.Item("Sub").Value = "*"
  loc_1ED83BF:               var_3B4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED8412:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED843A:                 var_3B4.Fields.Item("Val").Value = "1"
  loc_1ED8449:               Else
  loc_1ED844F:                 var_114 = "Credit"
  loc_1ED8489:                 var_124 = 0
  loc_1ED84C5:                 var_3B4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED84E2:               End If
  loc_1ED84ED:               var_3B4.Update var_114, var_124
  loc_1ED84F4:               Set var_3B4 = Nothing 
  loc_1ED8516:               var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1ED8520:               GoTo loc_1ED8220
  loc_1ED8523:             End If
  loc_1ED8523:           End If
  loc_1ED8526:           var_114 = var_DC
  loc_1ED8536:           var_124 = vbNullString
  loc_1ED8541:           If CBool(Trim(var_114) <> var_124) Then
  loc_1ED8544:             ' Referenced from:   1ED8844
  loc_1ED854E:             If (Len(var_DC) > 0) Then
  loc_1ED8554:               Set var_3B8 = var_8C 
  loc_1ED8563:               var_3B8.AddNew var_114, var_124
  loc_1ED8590:               var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1ED85B4:               var_3B8.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1ED860C:               var_3B8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1ED8643:               var_3B8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED8674:               var_3B8.Fields.Item("Sub").Value = "*"
  loc_1ED86E3:               var_3B8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED8736:               If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED875E:                 var_3B8.Fields.Item("Val").Value = "1"
  loc_1ED876D:               Else
  loc_1ED8773:                 var_114 = "Credit"
  loc_1ED87AD:                 var_124 = 0
  loc_1ED87E9:                 var_3B8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED8806:               End If
  loc_1ED8811:               var_3B8.Update var_114, var_124
  loc_1ED8818:               Set var_3B8 = Nothing 
  loc_1ED883A:               var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1ED8844:               GoTo loc_1ED8544
  loc_1ED8847:             End If
  loc_1ED8847:           End If
  loc_1ED8847:         End If
  loc_1ED884A:         var_94.MoveNext
  loc_1ED884F:         GoTo loc_1ED7B8B
  loc_1ED8852:       End If
  loc_1ED8852:     End If
  loc_1ED8870:     If CBool(Trim(var_AC) <> vbNullString) Then
  loc_1ED8873:       ' Referenced from:   1ED8BBF
  loc_1ED887D:       If (Len(var_AC) > 0) Then
  loc_1ED8883:         Set var_3BC = var_8C 
  loc_1ED888A:         var_3BC.MoveLast
  loc_1ED8892:         var_114 = "Name"
  loc_1ED88BD:         var_124 = vbNullString
  loc_1ED88CF:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED88DD:           var_3BC.AddNew var_114, var_124
  loc_1ED88E2:         End If
  loc_1ED890A:         var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1ED892E:         var_3BC.Fields.Item("Name").Value = (var_90.Fields.Item(var_AC).Value > "Name")
  loc_1ED8986:         var_3BC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED89BD:         var_3BC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED89EF:         var_3BC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED8A5E:         var_3BC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED8AB1:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED8AD9:           var_3BC.Fields.Item("Val").Value = "1"
  loc_1ED8AE8:         Else
  loc_1ED8AEE:           var_114 = "Credit"
  loc_1ED8B28:           var_124 = 0
  loc_1ED8B64:           var_3BC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED8B81:         End If
  loc_1ED8B8C:         var_3BC.Update var_114, var_124
  loc_1ED8B93:         Set var_3BC = Nothing 
  loc_1ED8BB5:         var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1ED8BBF:         GoTo loc_1ED8873
  loc_1ED8BC2:       End If
  loc_1ED8BC2:     End If
  loc_1ED8BE0:     If CBool(Trim(var_B0) <> vbNullString) Then
  loc_1ED8BE3:       ' Referenced from:   1ED8F2F
  loc_1ED8BED:       If (Len(var_B0) > 0) Then
  loc_1ED8BF3:         Set var_3C0 = var_8C 
  loc_1ED8BFA:         var_3C0.MoveLast
  loc_1ED8C02:         var_114 = "Name"
  loc_1ED8C2D:         var_124 = vbNullString
  loc_1ED8C3F:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED8C4D:           var_3C0.AddNew var_114, var_124
  loc_1ED8C52:         End If
  loc_1ED8C7A:         var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1ED8C9E:         var_3C0.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1ED8CF6:         var_3C0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED8D2D:         var_3C0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED8D5F:         var_3C0.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED8DCE:         var_3C0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED8E21:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED8E49:           var_3C0.Fields.Item("Val").Value = "1"
  loc_1ED8E58:         Else
  loc_1ED8E5E:           var_114 = "Credit"
  loc_1ED8E98:           var_124 = 0
  loc_1ED8ED4:           var_3C0.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED8EF1:         End If
  loc_1ED8EFC:         var_3C0.Update var_114, var_124
  loc_1ED8F03:         Set var_3C0 = Nothing 
  loc_1ED8F25:         var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1ED8F2F:         GoTo loc_1ED8BE3
  loc_1ED8F32:       End If
  loc_1ED8F32:     End If
  loc_1ED8F50:     If CBool(Trim(var_B4) <> vbNullString) Then
  loc_1ED8F53:       ' Referenced from:   1ED929F
  loc_1ED8F5D:       If (Len(var_B4) > 0) Then
  loc_1ED8F63:         Set var_3C4 = var_8C 
  loc_1ED8F6A:         var_3C4.MoveLast
  loc_1ED8F72:         var_114 = "Name"
  loc_1ED8F9D:         var_124 = vbNullString
  loc_1ED8FAF:         If CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) Then
  loc_1ED8FBD:           var_3C4.AddNew var_114, var_124
  loc_1ED8FC2:         End If
  loc_1ED8FEA:         var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1ED900E:         var_3C4.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1ED9066:         var_3C4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1ED909D:         var_3C4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1ED90CF:         var_3C4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1ED913E:         var_3C4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1ED9191:         If (var_90.Fields.Item("V_Type").Value = "OP") Then
  loc_1ED91B9:           var_3C4.Fields.Item("Val").Value = "1"
  loc_1ED91C8:         Else
  loc_1ED91CE:           var_114 = "Credit"
  loc_1ED9208:           var_124 = 0
  loc_1ED9244:           var_3C4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1ED9261:         End If
  loc_1ED926C:         var_3C4.Update var_114, var_124
  loc_1ED9273:         Set var_3C4 = Nothing 
  loc_1ED9284:         var_114 = var_B4
  loc_1ED9295:         var_B4 = CStr(Mid(var_114, &H31, 300))
  loc_1ED929F:         GoTo loc_1ED8F53
  loc_1ED92A2:       End If
  loc_1ED92A2:     End If
  loc_1ED92A5:     var_EC = CDbl(0)
  loc_1ED92A8:   End If
  loc_1ED92AB:   var_90.MoveNext
  loc_1ED92B0:   GoTo loc_1ED6B05
  loc_1ED92B3: End If
  loc_1ED92BA: Loop Until (var_EC > CDbl(0)) 'do at: 1EC9589
  loc_1ED92C0: Set var_3C8 = var_8C 
  loc_1ED92CF: var_3C8.AddNew var_114, var_124
  loc_1ED92D4: var_124 = vbNullString
  loc_1ED92E3: var_3C8.Collect = "V_Type"
  loc_1ED92E8: var_124 = 0
  loc_1ED92F7: var_3C8.Collect = "V_NO"
  loc_1ED92FC: var_124 = vbNullString
  loc_1ED930B: var_3C8.Collect = "V_ADD"
  loc_1ED9310: var_124 = 0
  loc_1ED931F: var_3C8.Collect = "V_SNo"
  loc_1ED9333: var_3C8.Collect = "Name"
  loc_1ED9370: var_3C8.Collect = "V_DATE"
  loc_1ED9385: var_124 = CVar(Abs(var_EC)) 'Double
  loc_1ED9393: var_3C8.Collect = "ADJAMT"
  loc_1ED939B: var_124 = CVar(var_A4) 'String
  loc_1ED93A8: var_3C8.Collect = "Name1"
  loc_1ED93B0: var_124 = CVar(var_A8) 'String
  loc_1ED93BD: var_3C8.Collect = "subcode"
  loc_1ED93EA: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), var_124, var_124, var_124, Format(CVar("Excess Debit"("Excess Debit")), "dd/MMM/yyyy"), 1, 1)) 'String
  loc_1ED9423: var_270 = Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add2")), var_124, var_124, var_124)))
  loc_1ED9450: var_1C8 = vbNullString
  loc_1ED94A4: var_2B4 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED94C0: var_30C = (var_270 = vbNullString) 'Variant
  loc_1ED94DD: var_394 = (IIf((Trim(var_178) = vbNullString), var_1C8, CVar(var_88.Fields.Item("Add1"))) + Trim(IIf(var_30C, vbNullString, vbNullString)))
  loc_1ED94F6: var_3C8.Collect = "Address1"
  loc_1ED9532: var_114 = "CITY_NAME"
  loc_1ED9557: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item(var_114)), Trim(var_394), var_EC)) 'String
  loc_1ED955B: var_124 = "CITY_NAME"
  loc_1ED9564: var_3C8.Collect = var_124
  loc_1ED957E: var_3C8.Update var_114, var_124
  loc_1ED9585: Set var_3C8 = Nothing 
  loc_1ED9589: GoTo loc_1ECCA4E
  loc_1ED9594: Loop Until (arg_10 <> "AcCheckList") 'do at: 1EC9F45
  loc_1ED95E5: var_1B8 = var_88.Fields.Item("GroupNature")
  loc_1ED9617: Loop Until CBool((var_88.Fields.Item("GroupNature").Value <> "E") And (var_1B8.Value <> "R")) 'do at: 1EC9710
  loc_1ED9640: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_178)
  loc_1ED9649: var_1B4 = CVar(1(1)) 'Address
  loc_1ED9650: Proc_183_7_EB0C44(var_1C8)
  loc_1ED9662: var_280 = 0
  loc_1ED9678: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED96A3: var_250 = "E" & var_178 & " AND V_DATE<" & var_1C8 & "  " & CVar(var_E4) 
  loc_1ED96BA: unk_58337D.Execute CStr(var_250 & vbNullString), var_270, -1
  loc_1ED96C2: var_194 = var_194.Fields
  loc_1ED96CA: var_280 = var_1B8.Item(var_1B8)
  loc_1ED96D2: var_2DC = var_2DC.Value
  loc_1ED96DA: var_2A4 = (Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)) + Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1ED96DF: var_EC = CSng(var_88.Fields.Item("Add2").Value)
  loc_1ED970D: GoTo loc_1EC9829
  loc_1ED9736: Proc_183_9_EAA760(var_178, CVar(var_88.Fields.Item("subcode")), var_EC)
  loc_1ED973E: var_144 = MemVar_1F920F4
  loc_1ED9746: Proc_183_7_EB0C44(var_1B4, var_144)
  loc_1ED974F: var_230 = CVar(var_1B4(CVar(var_EC))) 'Address
  loc_1ED9756: Proc_183_7_EB0C44(var_250)
  loc_1ED975E: var_31C = CVar(var_EC) 'Double
  loc_1ED9768: var_2FC = 0
  loc_1ED977E: var_124 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY="
  loc_1ED97D0: unk_58337D.Execute CStr("E" & var_178 & " AND V_DATE>=" & var_1B4 & " AND V_DATE<" & var_250 & "  " & CVar(var_E4) & vbNullString), vbNullString, -1
  loc_1ED97D8: var_194 = var_194.Fields
  loc_1ED97E0: var_2FC = var_1B8.Item(var_1B8)
  loc_1ED97E8: var_2DC = var_2DC.Value
  loc_1ED97F0: var_32C = (var_30C + var_30C)
  loc_1ED9831: Loop Until (arg_10 = "LedInt") 'do at: 1EC9B5F
  loc_1ED9848: Loop Until (var_90.RecordCount > 0) 'do at: 1EC9AFC
  loc_1ED984E: var_90.MoveFirst
  loc_1ED989D: var_160 = CStr("Party='" & var_88.Fields.Item("subcode").Value & "'")
  loc_1ED98A4: var_90.Find var_160, 0, 1
  loc_1ED98CD: Loop Until (var_90.EOF = 0) 'do at: 1EC9A96
  loc_1ED98D7: Loop Until (CSng(vbNullString) = CDbl(0)) 'do at: 1EC98E2
  loc_1ED98DD: var_90.MoveNext
  loc_1ED98F3: Loop Until (var_90.EOF = &HFF) 'do at: 1EC995C
  loc_1ED9903: var_EC = var_144(var_160).Text
  loc_1ED9945: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))
  loc_1ED9959: GoTo loc_1EC9A81
  loc_1ED99C4: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1EC9A1E
  loc_1ED99CA: var_114 = "V_DATE"
  loc_1ED9A1B: GoTo loc_1EC9A81
  loc_1ED9A2B: 1 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))(var_160).Text
  loc_1ED9A88: Loop Until (var_EC = CDbl(0)) 'do at: 1EC9A93
  loc_1ED9A8E: var_90.MovePrevious
  loc_1ED9A93: GoTo loc_1EC9AF9
  loc_1ED9AA3: 1 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))(var_160).Text
  loc_1ED9AF9: GoTo loc_1EC9B5F
  loc_1ED9B09: 1 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))(var_160).Text
  loc_1ED9B30: var_124 = "dd/MMM/yyyy"
  loc_1ED9B66: Loop Until (var_EC <> CDbl(0)) 'do at: 1EC9F45
  loc_1ED9B6C: Set var_3CC = var_8C 
  loc_1ED9B7B: var_3CC.AddNew var_114, var_124
  loc_1ED9B80: var_124 = vbNullString
  loc_1ED9B8F: var_3CC.Collect = "V_Type"
  loc_1ED9B94: var_124 = 0
  loc_1ED9BA3: var_3CC.Collect = "V_NO"
  loc_1ED9BA8: var_124 = vbNullString
  loc_1ED9BB7: var_3CC.Collect = "V_ADD"
  loc_1ED9BBC: var_124 = 0
  loc_1ED9BCB: var_3CC.Collect = "V_SNo"
  loc_1ED9BDF: var_3CC.Collect = "Name"
  loc_1ED9C0A: var_188 = Format(CVar("OPENING BALANCE"("OPENING BALANCE")), "dd/MMM/yyyy")
  loc_1ED9C1C: var_3CC.Collect = "V_DATE"
  loc_1ED9C48: var_188 = IIf((var_EC > CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ED9C5A: var_3CC.Collect = "cr"
  loc_1ED9C85: var_188 = IIf((var_EC < CDbl(0)), CVar(Abs(var_EC)), 0)
  loc_1ED9C97: var_3CC.Collect = "ADJAMT"
  loc_1ED9CA7: var_124 = "1"
  loc_1ED9CB6: var_3CC.Collect = "Val"
  loc_1ED9CBE: var_124 = CVar(var_A4) 'String
  loc_1ED9CCB: var_3CC.Collect = "Name1"
  loc_1ED9CF8: var_15A = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_1ED9D23: var_162 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_1ED9D29: var_124 = "Add1"
  loc_1ED9D49: var_144 = " "
  loc_1ED9D95: var_210 = (", " + var_88.Fields.Item("Add2").Value)
  loc_1ED9DC1: var_270 = (IIf(var_15A, var_144, CVar(var_88.Fields.Item(var_124))) + Trim(IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<")))
  loc_1ED9DC8: var_290 = Trim("E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<" & IIf(var_162, " ", "E" & var_144 & " AND V_DATE>=" & CVar(var_88.Fields.Item("Add2")) & " AND V_DATE<") & "  ")
  loc_1ED9DDA: var_3CC.Collect = "Address1"
  loc_1ED9E40: var_3CC.Collect = "CITY_NAME"
  loc_1ED9E5F: var_3CC.Collect = "subcode"
  loc_1ED9E68: Set var_194 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), var_290, var_162, var_15A, CVar(var_A8), CVar(var_A8)))(CVar(var_A8))
  loc_1ED9EB2: var_3CC.Fields.Item("PDate").Value = Format(CVar(var_194), "dd/MMM/yyyy")
  loc_1ED9ED1: Loop Until (arg_10 = "LedInt") 'do at: 1EC9F2F
  loc_1ED9EDE: var_124 = "dd/MMM/yyyy"
  loc_1ED9EEC: var_114 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), var_124))
  loc_1ED9EF4: var_178 = Format(var_114, var_124)
  loc_1ED9F1C: var_3CC.Fields.Item("NextDate").Value = var_178
  loc_1ED9F3A: var_3CC.Update var_114, var_124
  loc_1ED9F41: Set var_3CC = Nothing 
  loc_1ED9F59: Loop Until (var_90.RecordCount > 0) 'do at: 1ECCA4E
  loc_1ED9F5F: var_90.MoveFirst
  loc_1ED9FAE: var_160 = CStr("Party='" & var_88.Fields.Item("subcode").Value & "'")
  loc_1ED9FB5: var_90.Find var_160, 0, 1
  loc_1ED9FDE: Loop Until (var_90.EOF = 0) 'do at: 1ECCA4E
  loc_1ED9FE3: Loop Until &HFF 'do at: 1ECCA4E
  loc_1EDA064: Loop Until CBool((arg_10 = "LedInt") And (var_88.Fields.Item("subcode").Value = var_90.Fields.Item("Party").Value)) 'do at: 1ECA22D
  loc_1EDA07B: Loop Until (var_90.RecordCount > 0) 'do at: 1ECA22D
  loc_1EDA081: var_90.MoveNext
  loc_1EDA097: Loop Until (var_90.EOF = &HFF) 'do at: 1ECA100
  loc_1EDA0A7: 1 = var_144(var_160).Text
  loc_1EDA0E9: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), "dd/MMM/yyyy"))
  loc_1EDA0FD: GoTo loc_1ECA225
  loc_1EDA168: Loop Until (var_90.Fields.Item("Party").Value = var_88.Fields.Item("subcode").Value) 'do at: 1ECA1C2
  loc_1EDA16E: var_114 = "V_DATE"
  loc_1EDA1BF: GoTo loc_1ECA225
  loc_1EDA1CF: 1 = CDate(Format(CVar(var_90.Fields.Item(var_114)), "dd/MMM/yyyy"))(var_160).Text
  loc_1EDA1F6: var_124 = "dd/MMM/yyyy"
  loc_1EDA211: var_F4 = CDate(Format(DateAdd("D", CDbl(1), CDate(CDate(var_160))), var_124))
  loc_1EDA228: var_90.MovePrevious
  loc_1EDA230: Set var_3D0 = var_8C 
  loc_1EDA23F: var_3D0.AddNew var_114, var_124
  loc_1EDA26C: var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("V_ADD")), var_F4, 1, 1, 1, var_F4, 1)) 'String
  loc_1EDA279: var_3D0.Collect = "V_ADD"
  loc_1EDA2A7: var_158 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_1EDA2B5: var_3D0.Collect = "V_NO"
  loc_1EDA2C9: var_B0 = vbNullString
  loc_1EDA2CF: var_B4 = vbNullString
  loc_1EDA2D5: var_B8 = vbNullString
  loc_1EDA322: Loop Until CBool(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(var_90.Fields.Item("Chq_No")), var_178, 1, 1)), 1, 1))) <> vbNullString) 'do at: 1ECA37D
  loc_1EDA365: var_1B4 = (1 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:"), 1))))
  loc_1EDA3AC: Loop Until Not(IsNull(CVar(var_90.Fields.Item("Chq_Date")))) 'do at: 1ECA41A
  loc_1EDA402: var_AC = 1 & CStr(Format(CVar(var_90.Fields.Item("Chq_Date")), "dd/MM/yy"))
  loc_1EDA4C3: var_230 = IIf((Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), 1, CStr(CVar(var_88.Fields.Item("Add2"))) & " Dt: ") <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")), var_188))))), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))))
  loc_1EDA4CC: var_B0 = CStr(var_230)
  loc_1EDA563: var_160 = Proc_183_2_E5A304(CVar(var_90.Fields.Item("mNarr")))
  loc_1EDA57B: var_B4 = CStr(IIf((var_160 <> vbNullString), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("NARR"))))), vbNullString))
  loc_1EDA6B6: var_32C = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((Me.Fields.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_1EDA6BB: var_B8 = CStr(vbNullString)
  loc_1EDA774: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDA7A5: var_290 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString))
  loc_1EDA7AA: var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_1EDA804: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDA836: var_210 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_1EDA83B: var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_1EDA887: var_1A4 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_1EDA8C4: var_230 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_1EDA90A: var_3D0.Fields.Item("DocNo").Value = CVar(CStr(Trim(CVar(var_90.Fields.Item("V_ADD")))))
  loc_1EDA944: var_188 = Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))))
  loc_1EDA956: var_3D0.Collect = "Name"
  loc_1EDA9A2: var_188 = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDA9B4: var_3D0.Collect = "V_DATE"
  loc_1EDA9E4: var_158 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_1EDA9F2: var_3D0.Collect = "cr"
  loc_1EDAA1C: var_158 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_1EDAA2A: var_3D0.Collect = "ADJAMT"
  loc_1EDAA54: var_158 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_1EDAA62: var_3D0.Collect = "V_Type"
  loc_1EDAA8C: var_158 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_1EDAA9A: var_3D0.Collect = "V_SNo"
  loc_1EDAAE1: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECAAFB
  loc_1EDAAE4: var_124 = "1"
  loc_1EDAAF3: var_3D0.Collect = "Val"
  loc_1EDAAF8: GoTo loc_1ECACA3
  loc_1EDAB61: var_3D0.Collect = "Val"
  loc_1EDAB82: Loop Until (var_FC = "Yes") 'do at: 1ECACA3
  loc_1EDABAF: var_124 = 0
  loc_1EDABC1: Loop Until (var_90.Fields.Item("Credit").Value > var_124) 'do at: 1ECAC35
  loc_1EDABEC: var_178 = CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2"), var_124, CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")), CVar(var_90.Fields.Item("Name")))) 'String
  loc_1EDABF2: var_188 = Trim(var_178)
  loc_1EDAC0F: var_1B4 = ("By " + Left(var_188, &H2F))
  loc_1EDAC1D: var_3D0.Collect = "Name"
  loc_1EDAC32: GoTo loc_1ECACA3
  loc_1EDAC80: var_1B4 = ("To " + Left(Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")), "2", CVar(var_90.Fields.Item("Name")), var_188)))))), &H2F))
  loc_1EDAC8E: var_3D0.Collect = "Name"
  loc_1EDACA6: var_124 = CVar(var_A4) 'String
  loc_1EDACB3: var_3D0.Collect = "Name1"
  loc_1EDACC8: var_3D0.Collect = "subcode"
  loc_1EDAD0F: var_2DC = var_88.Fields
  loc_1EDAD52: var_210 = CVar(var_88.Fields.Item("Add1")) 'Address
  loc_1EDAD78: var_230 = IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("Add1")), CVar(var_A8), CVar(var_A8), "2"))) = vbNullString), vbNullString, var_210)
  loc_1EDAD9F: var_33C = var_88.Fields.Item("Add2")
  loc_1EDADAF: var_2B4 = (", " + var_33C.Value)
  loc_1EDADE0: var_384 = Trim(IIf((Trim(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1))) = vbNullString), vbNullString, vbNullString))
  loc_1EDADE8: var_394 = (var_230 + var_384)
  loc_1EDAE01: var_3D0.Collect = "Address1"
  loc_1EDAE62: var_178 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("CITY_NAME")), Trim(var_394))) 'String
  loc_1EDAE6F: var_3D0.Collect = "CITY_NAME"
  loc_1EDAEC1: var_3D0.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDAF35: var_3D0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDAF54: Loop Until (arg_10 = "LedInt") 'do at: 1ECAFB2
  loc_1EDAF61: var_124 = "dd/MMM/yyyy"
  loc_1EDAF6F: var_114 = var_F4
  loc_1EDAF77: var_178 = Format(var_114, var_124)
  loc_1EDAF97: var_168 = var_3D0.Fields.Item("NextDate")
  loc_1EDAF9F: var_168.Value = var_178
  loc_1EDAFBD: var_3D0.Update var_114, var_124
  loc_1EDAFC4: Set var_3D0 = Nothing 
  loc_1EDAFD6: Set var_148 = var_168(CInt(6))
  loc_1EDAFDC: Call 0.Method_Proc_203_75_1EDDC440 (var_160, 1, 1, 1)
  loc_1EDAFE4: 1 = var_168.Text
  loc_1EDB048: Loop Until CBool((var_160 = "Yes") And (Len(var_90.Fields.Item("Party1").Value) = 0)) 'do at: 1ECBF3B
  loc_1EDB04E: Set var_3D4 = var_8C 
  loc_1EDB055: var_3D4.MoveLast
  loc_1EDB07F: var_3D4.Fields.Item("Name").Value = "As Per Detail"
  loc_1EDB0CE: var_3D4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDB105: var_3D4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDB137: var_3D4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDB146: var_114 = "V_DATE"
  loc_1EDB169: var_124 = "dd/MMM/yyyy"
  loc_1EDB16E: var_178 = var_124
  loc_1EDB1A6: var_3D4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item(var_114)), var_178)
  loc_1EDB1C8: var_3D4.Update var_114, var_124
  loc_1EDB1CF: Set var_3D4 = Nothing 
  loc_1EDB1E0: var_124 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.NAME,VIEWLEDGER.* FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.PARTY=SUBGROUP.SUBCODE WHERE DOCID="
  loc_1EDB20B: Proc_183_9_EAA760(var_178, CVar(var_90.Fields.Item("DocID")), var_124, var_210, -1, var_2DC)
  loc_1EDB213: var_188 = 1 & var_178 
  loc_1EDB258: unk_58337D.Execute CStr(var_188 & " AND V_SNo<>" & var_90.Fields.Item("V_SNo").Value), 1, var_178
  loc_1EDB263: Set var_94 = var_2DC
  loc_1EDB294: Loop Until Not(var_94.EOF) 'do at: 1ECBF3B
  loc_1EDB2A0: var_D8 = vbNullString
  loc_1EDB2A6: var_DC = vbNullString
  loc_1EDB2E2: Loop Until (Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), var_188) <> vbNullString) 'do at: 1ECB33D
  loc_1EDB325: var_1B4 = (Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))) + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Chq.No:")))))
  loc_1EDB36C: Loop Until Not(IsNull(CVar(var_94.Fields.Item("Chq_Date")))) 'do at: 1ECB3DA
  loc_1EDB39F: var_124 = "dd/MM/yy"
  loc_1EDB3C2: var_D4 = 1 & CStr(Format(CVar(var_94.Fields.Item("Chq_Date")), var_124))
  loc_1EDB3DD: var_114 = "NARR"
  loc_1EDB411: var_DC = CStr(Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item(var_114)), 1))))
  loc_1EDB423: Set var_3D8 = var_8C 
  loc_1EDB432: var_3D8.AddNew var_114, var_124
  loc_1EDB473: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECB48D
  loc_1EDB476: var_124 = "1"
  loc_1EDB485: var_3D8.Collect = "Val"
  loc_1EDB48A: GoTo loc_1ECB50C
  loc_1EDB4E1: var_1C8 = IIf((var_90.Fields.Item("Credit").Value > 0), "3", "2")
  loc_1EDB4F3: var_3D8.Collect = "Val"
  loc_1EDB56F: var_3D8.Fields.Item("PDate").Value = Format(CVar(var_94.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDB5AC: var_3D8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDB5FB: var_3D8.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDB648: Loop Until (var_94.Fields.Item("Debit").Value > 0) 'do at: 1ECB775
  loc_1EDB670: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1EDB6C2: var_1C8 = CVar(var_94.Fields.Item("Debit")) 'Address
  loc_1EDB6C9: Proc_183_4_EABBA8(var_210, var_1C8, 1, 1)
  loc_1EDB6F3: var_1A4 = (var_1C8 + CVar(Proc_183_15_EAC900(CStr(var_94.Fields.Item("Name").Value), &H14, Space(2))))
  loc_1EDB6F7: var_124 = " "
  loc_1EDB6FC: var_1B4 = ("3" + var_124)
  loc_1EDB715: var_250 = (var_124 + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC, "2")))
  loc_1EDB71E: var_260 = (CVar(var_2DC.Item("Add2")) + " Dr")
  loc_1EDB742: var_3D8.Fields.Item("Name").Value = CVar(Proc_183_2_E5A304(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1EDB772: GoTo loc_1ECB89C
  loc_1EDB79A: var_3D8.Fields.Item("Sub").Value = "*"
  loc_1EDB7AC: var_114 = "Name"
  loc_1EDB7C0: var_168 = var_94.Fields.Item(var_114)
  loc_1EDB7F3: Proc_183_4_EABBA8(var_210, CVar(var_94.Fields.Item("Credit")))
  loc_1EDB81D: var_1A4 = (Space(2) + CVar(Proc_183_15_EAC900(CStr(var_168.Value), &H14)))
  loc_1EDB821: var_124 = " "
  loc_1EDB826: var_1B4 = ("3" + var_124)
  loc_1EDB83F: var_250 = ("2" + CVar(Proc_183_16_EAECDC(CStr(var_210), &HC)))
  loc_1EDB848: var_260 = (CVar(var_3D8.Fields.Item("Add2")) + " Cr")
  loc_1EDB864: var_334 = var_3D8.Fields.Item("Name")
  loc_1EDB86C: var_334.Value = CVar(Proc_183_2_E5A304(CVar(var_3D8.Fields.Item("Add2")), 1, 1))
  loc_1EDB8A7: var_3D8.Update var_114, var_124
  loc_1EDB8AE: Set var_3D8 = Nothing 
  loc_1EDB8C0: Set var_148 = var_168(CInt(7))
  loc_1EDB8C6: Call 0.Method_Proc_203_75_1EDDC440 (CStr(var_90.Fields.Item("V_SNo").Value) & " Dt: ")
  loc_1EDB8CE: var_160 = var_168.Text
  loc_1EDB8E5: Loop Until (var_160 = "Yes") 'do at: 1ECBF30
  loc_1EDB8EB: var_114 = var_D4
  loc_1EDB8FB: var_124 = vbNullString
  loc_1EDB906: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1ECBC0C
  loc_1EDB913: Loop Until (Len(var_D4) > 0) 'do at: 1ECBC0C
  loc_1EDB919: Set var_3DC = var_8C 
  loc_1EDB928: var_3DC.AddNew var_114, var_124
  loc_1EDB955: var_188 = (Space(2) + Left(var_D4, &H23))
  loc_1EDB979: var_3DC.Fields.Item("Name").Value = CVar(Proc_183_15_EAC900(CStr(var_3DC.Fields.Item("Name").Value), &H14))
  loc_1EDB9D1: var_3DC.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDBA08: var_3DC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDBA39: var_3DC.Fields.Item("Sub").Value = "*"
  loc_1EDBAA8: var_3DC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDBAFB: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECBB32
  loc_1EDBB23: var_3DC.Fields.Item("Val").Value = "1"
  loc_1EDBB2F: GoTo loc_1ECBBCB
  loc_1EDBB38: var_114 = "Credit"
  loc_1EDBB72: var_124 = 0
  loc_1EDBBAE: var_3DC.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDBBD6: var_3DC.Update var_114, var_124
  loc_1EDBBDD: Set var_3DC = Nothing 
  loc_1EDBBFF: var_D4 = CStr(Mid(var_D4, &H24, 300))
  loc_1EDBC09: GoTo loc_1ECB909
  loc_1EDBC0F: var_114 = var_DC
  loc_1EDBC1F: var_124 = vbNullString
  loc_1EDBC2A: Loop Until CBool(Trim(var_114) <> var_124) 'do at: 1ECBF30
  loc_1EDBC37: Loop Until (Len(var_DC) > 0) 'do at: 1ECBF30
  loc_1EDBC3D: Set var_3E0 = var_8C 
  loc_1EDBC4C: var_3E0.AddNew var_114, var_124
  loc_1EDBC79: var_188 = (Space(2) + Left(var_DC, &H23))
  loc_1EDBC9D: var_3E0.Fields.Item("Name").Value = (var_90.Fields.Item(var_DC).Value > "Name")
  loc_1EDBCF5: var_3E0.Fields.Item("DocId").Value = CVar(var_94.Fields.Item("DocID"))
  loc_1EDBD2C: var_3E0.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDBD5D: var_3E0.Fields.Item("Sub").Value = "*"
  loc_1EDBDCC: var_3E0.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDBE1F: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECBE56
  loc_1EDBE47: var_3E0.Fields.Item("Val").Value = "1"
  loc_1EDBE53: GoTo loc_1ECBEEF
  loc_1EDBE5C: var_114 = "Credit"
  loc_1EDBE70: var_168 = var_90.Fields.Item(var_114)
  loc_1EDBE96: var_124 = 0
  loc_1EDBED2: var_3E0.Fields.Item("Val").Value = IIf((var_168.Value > var_124), "3", "2")
  loc_1EDBEFA: var_3E0.Update var_114, var_124
  loc_1EDBF01: Set var_3E0 = Nothing 
  loc_1EDBF23: var_DC = CStr(Mid(var_DC, &H24, 300))
  loc_1EDBF2D: GoTo loc_1ECBC2D
  loc_1EDBF33: var_94.MoveNext
  loc_1EDBF38: GoTo loc_1ECB285
  loc_1EDBF49: Set var_148 = var_168(CInt(&HB))
  loc_1EDBF4F: Call 0.Method_Proc_203_75_1EDDC440 (var_160, 1, 1)
  loc_1EDBF57: 1 = var_168.Text
  loc_1EDBF6E: Loop Until (var_160 = "Yes") 'do at: 1ECC9C1
  loc_1EDBF8F: Loop Until CBool(Trim(var_AC) <> vbNullString) 'do at: 1ECC2E1
  loc_1EDBF9C: Loop Until (Len(var_AC) > 0) 'do at: 1ECC2E1
  loc_1EDBFA2: Set var_3E4 = var_8C 
  loc_1EDBFA9: var_3E4.MoveLast
  loc_1EDBFB1: var_114 = "Name"
  loc_1EDBFDC: var_124 = vbNullString
  loc_1EDBFEE: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECC001
  loc_1EDBFFC: var_3E4.AddNew var_114, var_124
  loc_1EDC029: var_188 = (Space(2) + Left(var_AC, &H30))
  loc_1EDC04D: var_3E4.Fields.Item("Name").Value = (var_3E4.Fields.Item("Name").Value > "Name")
  loc_1EDC0A5: var_3E4.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDC0DC: var_3E4.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDC10E: var_3E4.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDC17D: var_3E4.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDC1D0: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECC207
  loc_1EDC1F8: var_3E4.Fields.Item("Val").Value = "1"
  loc_1EDC204: GoTo loc_1ECC2A0
  loc_1EDC20D: var_114 = "Credit"
  loc_1EDC247: var_124 = 0
  loc_1EDC283: var_3E4.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDC2AB: var_3E4.Update var_114, var_124
  loc_1EDC2B2: Set var_3E4 = Nothing 
  loc_1EDC2D4: var_AC = CStr(Mid(var_AC, &H31, 300))
  loc_1EDC2DE: GoTo loc_1ECBF92
  loc_1EDC2FF: Loop Until CBool(Trim(var_B0) <> vbNullString) 'do at: 1ECC651
  loc_1EDC30C: Loop Until (Len(var_B0) > 0) 'do at: 1ECC651
  loc_1EDC312: Set var_3E8 = var_8C 
  loc_1EDC319: var_3E8.MoveLast
  loc_1EDC321: var_114 = "Name"
  loc_1EDC34C: var_124 = vbNullString
  loc_1EDC35E: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECC371
  loc_1EDC36C: var_3E8.AddNew var_114, var_124
  loc_1EDC399: var_188 = (Space(2) + Left(var_B0, &H30))
  loc_1EDC3BD: var_3E8.Fields.Item("Name").Value = (var_90.Fields.Item(var_B0).Value > "Name")
  loc_1EDC415: var_3E8.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDC44C: var_3E8.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDC47E: var_3E8.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDC4ED: var_3E8.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDC540: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECC577
  loc_1EDC568: var_3E8.Fields.Item("Val").Value = "1"
  loc_1EDC574: GoTo loc_1ECC610
  loc_1EDC57D: var_114 = "Credit"
  loc_1EDC5B7: var_124 = 0
  loc_1EDC5F3: var_3E8.Fields.Item("Val").Value = IIf((var_90.Fields.Item(var_114).Value > var_124), "3", "2")
  loc_1EDC61B: var_3E8.Update var_114, var_124
  loc_1EDC622: Set var_3E8 = Nothing 
  loc_1EDC644: var_B0 = CStr(Mid(var_B0, &H31, 300))
  loc_1EDC64E: GoTo loc_1ECC302
  loc_1EDC66F: Loop Until CBool(Trim(var_B4) <> vbNullString) 'do at: 1ECC9C1
  loc_1EDC67C: Loop Until (Len(var_B4) > 0) 'do at: 1ECC9C1
  loc_1EDC682: Set var_3EC = var_8C 
  loc_1EDC689: var_3EC.MoveLast
  loc_1EDC691: var_114 = "Name"
  loc_1EDC6BC: var_124 = vbNullString
  loc_1EDC6CE: Loop Until CBool(Trim(CVar(var_8C.Fields.Item(var_114))) <> var_124) 'do at: 1ECC6E1
  loc_1EDC6DC: var_3EC.AddNew var_114, var_124
  loc_1EDC709: var_188 = (Space(2) + Left(var_B4, &H30))
  loc_1EDC72D: var_3EC.Fields.Item("Name").Value = (var_90.Fields.Item(var_B4).Value > "Name")
  loc_1EDC785: var_3EC.Fields.Item("DocId").Value = CVar(var_90.Fields.Item("DocID"))
  loc_1EDC7BC: var_3EC.Fields.Item("Name1").Value = CVar(var_A4)
  loc_1EDC7EE: var_3EC.Fields.Item("SubCode").Value = CVar(var_A8)
  loc_1EDC85D: var_3EC.Fields.Item("PDate").Value = Format(CVar(var_90.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1EDC8B0: Loop Until (var_90.Fields.Item("V_Type").Value = "OP") 'do at: 1ECC8E7
  loc_1EDC8D8: var_3EC.Fields.Item("Val").Value = "1"
  loc_1EDC8E4: GoTo loc_1ECC980
  loc_1EDC8ED: var_114 = "Credit"
  loc_1EDC91E: var_1A4 = "3"
  loc_1EDC927: var_124 = 0
  loc_1EDC931: var_188 = (var_90.Fields.Item(var_114).Value > var_124) 'Variant
  loc_1EDC93B: var_1C8 = IIf(var_188, var_1A4, "2")
  loc_1EDC963: var_3EC.Fields.Item("Val").Value = var_1C8
  loc_1EDC98B: var_3EC.Update var_114, var_124
  loc_1EDC992: Set var_3EC = Nothing 
  loc_1EDC9B4: var_B4 = CStr(Mid(var_B4, &H31, 300))
  loc_1EDC9BE: GoTo loc_1ECC672
  loc_1EDC9C4: var_90.MoveNext
  loc_1EDC9D7: Loop Until var_90.EOF 'do at: 1ECC9DD
  loc_1EDC9DA: GoTo loc_1ECCA4E
  loc_1EDC9F7: var_168 = var_90.Fields.Item("Party")
  loc_1EDCA21: var_1B8 = var_88.Fields.Item("subcode")
  loc_1EDCA45: Loop Until CBool(var_168.Value <> var_1B8.Value) 'do at: 1ECCA4B
  loc_1EDCA48: GoTo loc_1ECCA4E
  loc_1EDCA4B: GoTo loc_1EC9FE1
  loc_1EDCA51: var_88.MoveNext
  loc_1EDCA56: GoTo loc_1ED26BA
  loc_1EDCA65: 1(0).Visible = True
  loc_1EDCA73: var_190 = var_8C.RecordCount
  loc_1EDCA81: Loop Until (var_190 <= 0) 'do at: 1ECCABE
  loc_1EDCA8A: Call 0.Method_arg_50 (var_160, 1, 1)
  loc_1EDCA98: var_178 = CVar(var_160) 'String
  loc_1EDCAAB: MsgBox("** No Records Found to Print **", &H40, var_178, var_188, var_1A4)
  loc_1EDCABB: GoTo loc_1ECDBB0
  loc_1EDCAD4: Set var_148 = var_8C 
  loc_1EDCAE0: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaLEDGER.ttx", &HFF)
  loc_1EDCAF0: var_114 = CVar(var_15A) 'Integer
  loc_1EDCAF3: var_C8 = var_114 'Variant
  loc_1EDCB19: Loop Until (((arg_10 = "LedDeb") Or (arg_10 = "MemLed")) And (arg_C = 1)) 'do at: 1ECCDD0
  loc_1EDCB33: Call 0.Method_arg_1C (MemVar_1F923B0 & "\FaTAGADALET.RPT", var_114, var_148, var_15A)
  loc_1EDCB3E: MemVar_1F921E4 = var_148
  loc_1EDCB63: Set var_148 = var_168(0)
  loc_1EDCB69: Call 0.Method_Proc_203_75_1EDDC440 ("UPDATE FaEnviro SET TagadaHeader1=", var_55C, -1, var_560)
  loc_1EDCB78: Proc_183_9_EAA760(var_178, CVar(var_168), 1)
  loc_1EDCB80: var_188 = 1 & var_178 
  loc_1EDCB89: var_1A4 = var_188 & ",TagadaHeader2=" 
  loc_1EDCB96: Set var_194 = var_1B8(1)
  loc_1EDCB9C: Call 0.Method_Proc_203_75_1EDDC440 (var_1A4)
  loc_1EDCBAB: Proc_183_9_EAA760(var_1C8, CVar(var_1B8))
  loc_1EDCBC9: Set var_2DC = var_334(2)
  loc_1EDCBCF: Call 0.Method_Proc_203_75_1EDDC440 (1 & var_1C8 & ",TagadaHeader3=")
  loc_1EDCBDE: Proc_183_9_EAA760(CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1)))
  loc_1EDCBFC: Set var_338 = var_33C(3)
  loc_1EDCC02: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_334) & CVar(Proc_183_2_E5A304(CVar(var_2DC.Item("Add2")), 1, 1)) & ",TagadaHeader4=")
  loc_1EDCC11: Proc_183_9_EAA760(vbNullString)
  loc_1EDCC2F: Set var_3F0 = var_3F4(4)
  loc_1EDCC35: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_33C) & vbNullString & ",TagadaHeader5=")
  loc_1EDCC44: Proc_183_9_EAA760(var_384)
  loc_1EDCC62: Set var_3F8 = var_3FC(0)
  loc_1EDCC68: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_3F4) & var_384 & ",TagadaFooter1=")
  loc_1EDCC77: Proc_183_9_EAA760(var_41C)
  loc_1EDCC95: Set var_440 = var_444(1)
  loc_1EDCC9B: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_3FC) & var_41C & ",TagadaFooter2=")
  loc_1EDCCAA: Proc_183_9_EAA760(var_464)
  loc_1EDCCC8: Set var_488 = var_48C(2)
  loc_1EDCCCE: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_444) & var_464 & ",TagadaFooter3=")
  loc_1EDCCDD: Proc_183_9_EAA760(var_4AC)
  loc_1EDCCFB: Set var_4D0 = var_4D4(3)
  loc_1EDCD01: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_48C) & var_4AC & ",TagadaFooter4=")
  loc_1EDCD10: Proc_183_9_EAA760(var_4F4)
  loc_1EDCD2E: Set var_518 = var_51C(4)
  loc_1EDCD34: Call 0.Method_Proc_203_75_1EDDC440 (CVar(var_4D4) & var_4F4 & ",TagadaFooter5=")
  loc_1EDCD43: Proc_183_9_EAA760(var_53C)
  loc_1EDCD4F: var_160 = CStr(CVar(var_51C) & var_53C)
  loc_1EDCD59: unk_58337D.Execute var_160, , 
  loc_1EDCDCD: GoTo loc_1ECD0DE
  loc_1EDCDD6: Call 0.Method_arg_50 (var_160)
  loc_1EDCE0D: Loop Until (MsgBox("Do You Want Each A/C on Separate Page", &H124, CVar(var_160), var_188, var_1A4) = 6) 'do at: 1ECCE19
  loc_1EDCE13: var_D0 = "Y"
  loc_1EDCE16: GoTo loc_1ECCE1F
  loc_1EDCE1C: var_D0 = "N"
  loc_1EDCE2B: Loop Until (arg_C = 1) 'do at: 1ECCF6D
  loc_1EDCE31: var_568 = arg_10
  loc_1EDCE3C: Loop Until Not (var_568 = "Led") 'do at: 1ECCE4A
  loc_1EDCE47: Loop Until (var_568 = "AcCheckList") 'do at: 1ECCEF1
  loc_1EDCE60: var_114 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_1EDCE6B: MsgBox(var_114, &H40, "Paper Setting", var_188, var_1A4)
  loc_1EDCE89: Set var_148 = var_168(CInt(&HD))
  loc_1EDCE8F: Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1EDCE97: var_562 = var_168.Text
  loc_1EDCEAF: Set var_1B8 = var_148
  loc_1EDCEB8: Set var_194 = Me 
  loc_1EDCEC8: Call 0.Method_arg_154 (var_194, var_1B8, var_D0)
  loc_1EDCEEA: GoTo loc_1ECDBB0
  loc_1EDCEED: Exit Sub
  loc_1EDCEEE: GoTo loc_1ECCF6A
  loc_1EDCEF9: Loop Until (var_568 = "LedInt") 'do at: 1ECCF1D
  loc_1EDCF08: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1EDCF13: MemVar_1F921E4 = var_148
  loc_1EDCF1A: GoTo loc_1ECCF6A
  loc_1EDCF25: Loop Until Not (var_568 = "LedDeb") 'do at: 1ECCF3E
  loc_1EDCF30: Loop Until Not (var_568 = "MemLed") 'do at: 1ECCF3E
  loc_1EDCF3B: Loop Until (var_568 = "LedCred") 'do at: 1ECCF6A
  loc_1EDCF55: Call 0.Method_arg_1C (MemVar_1F923B0 & "\FaTAGADADR.RPT", var_114, var_148)
  loc_1EDCF60: MemVar_1F921E4 = var_148
  loc_1EDCF6A: GoTo loc_1ECD0DE
  loc_1EDCF70: var_56C = arg_10
  loc_1EDCF7B: Loop Until Not (var_56C = "Led") 'do at: 1ECCF89
  loc_1EDCF86: Loop Until (var_56C = "AcCheckList") 'do at: 1ECCFED
  loc_1EDCF9F: Set var_148 = var_1B8 
  loc_1EDCFAB: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaLedger.ttx", &HFF)
  loc_1EDCFBE: var_C8 = CVar(var_15A) 'Variant
  loc_1EDCFD8: Call 0.Method_arg_C8 (var_148, var_15A)
  loc_1EDCFE3: MemVar_1F921E4 = var_148
  loc_1EDCFEA: GoTo loc_1ECD0DE
  loc_1EDCFF5: Loop Until (var_56C = "LedInt") 'do at: 1ECD05C
  loc_1EDD00E: Set var_148 = var_148 
  loc_1EDD01A: var_15A = CreateFieldDefFile(var_148, MemVar_1F923B0 & "\FaINTEREST.ttx", &HFF)
  loc_1EDD02D: var_C8 = CVar(var_15A) 'Variant
  loc_1EDD047: Call 0.Method_arg_CC (var_148, var_15A)
  loc_1EDD052: MemVar_1F921E4 = var_148
  loc_1EDD059: GoTo loc_1ECD0DE
  loc_1EDD064: Loop Until Not (var_56C = "LedDeb") 'do at: 1ECD07D
  loc_1EDD06F: Loop Until Not (var_56C = "MemLed") 'do at: 1ECD07D
  loc_1EDD07A: Loop Until (var_56C = "LedCred") 'do at: 1ECD0DE
  loc_1EDD086: var_160 = MemVar_1F923B0 & "\FaTAGADADR.ttx"
  loc_1EDD08C: var_18C = var_160
  loc_1EDD093: Set var_148 = var_148 
  loc_1EDD09F: var_15A = CreateFieldDefFile(var_148, var_18C, &HFF)
  loc_1EDD0A9: Set var_8C = var_148
  loc_1EDD0B2: var_C8 = CVar(var_15A) 'Variant
  loc_1EDD0CC: Call 0.Method_arg_120 (var_148, var_15A)
  loc_1EDD0D7: MemVar_1F921E4 = var_148
  loc_1EDD0EF: Call 0.Method_arg_90 (var_148, var_190, var_F6)
  loc_1EDD0F7: Call 0.Method_arg_24 (1, var_160)
  loc_1EDD103: For var_570 =  To CInt(var_190): var_15A = var_570 'Integer
  loc_1EDD11C:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDD124:   Call 0.Method_arg_20 (var_168)
  loc_1EDD12C:   Call 0.Method_arg_30 (var_160)
  loc_1EDD134:   var_574 = var_160
  loc_1EDD146:   Loop Until (var_574 = "TITLE") 'do at: 1ECD270
  loc_1EDD154:   Set var_148 = var_168(CInt(&HC))
  loc_1EDD15A:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD183:   Loop Until CBool(Trim(CVar(var_168)) <> vbNullString) 'do at: 1ECD21C
  loc_1EDD18F:   Call 0.Method_arg_50 (var_160)
  loc_1EDD1B2:   Call 0.Method_Proc_203_75_1EDDC440 (var_18C, var_160 & " (")
  loc_1EDD1BA:   "'" = Me.TextBox.Text
  loc_1EDD1E8:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDD1F0:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDD1F8:   Call 0.Method_arg_38 (var_18C & ")" & "'")
  loc_1EDD219:   GoTo loc_1ECD26D
  loc_1EDD225:   Call 0.Method_arg_50 (var_160)
  loc_1EDD235:   var_1E4 = "'" & var_160 & "'"
  loc_1EDD248:   Call 0.Method_arg_90 (var_168(CInt(&HC)), CLng(var_F6))
  loc_1EDD250:   Call 0.Method_arg_20 (var_168)
  loc_1EDD258:   Call 0.Method_arg_38 (var_1E4)
  loc_1EDD26D:   GoTo loc_1ECDB14
  loc_1EDD278:   Loop Until (var_574 = "DT") 'do at: 1ECD300
  loc_1EDD28B:    = "'From : "(var_160).Text
  loc_1EDD2A5:   Set var_168 = var_160 & " To : "(var_1E4)
  loc_1EDD2AB:    = var_168.Text
  loc_1EDD2CE:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDD2D6:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDD2DE:   Call 0.Method_arg_38 (var_1E4 & "'")
  loc_1EDD2FD:   GoTo loc_1ECDB14
  loc_1EDD308:   Loop Until (var_574 = "INT_RATE") 'do at: 1ECD390
  loc_1EDD313:   Loop Until (arg_10 = "LedInt") 'do at: 1ECD38D
  loc_1EDD327:   Set var_148 = var_168(CInt(5))
  loc_1EDD32D:   Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1EDD335:   vbNullString = var_168.Text
  loc_1EDD362:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDD36A:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDD372:   Call 0.Method_arg_38 (CStr(Val(var_160)) & vbNullString)
  loc_1EDD38D:   GoTo loc_1ECDB14
  loc_1EDD398:   Loop Until (var_574 = "END_DATE") 'do at: 1ECD43C
  loc_1EDD3A3:   Loop Until (arg_10 = "LedInt") 'do at: 1ECD439
  loc_1EDD3AD:   Set var_148 = (var_160)
  loc_1EDD3B3:    = var_148.Text
  loc_1EDD3CC:   var_178 = "YYYY,MM,DD"
  loc_1EDD407:   Call 0.Method_arg_90 (var_168, CLng(var_F6), var_194)
  loc_1EDD40F:   Call 0.Method_arg_20 (CStr(1 & Format(CDate(CDate(var_160)), var_178) & "#)"), 1)
  loc_1EDD417:   Call 0.Method_arg_38 ("DATE(#")
  loc_1EDD439:   GoTo loc_1ECDB14
  loc_1EDD444:   Loop Until (var_574 = "SEPRATEPAGE") 'do at: 1ECD48E
  loc_1EDD44E:   var_160 = "'" & var_D0
  loc_1EDD468:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDD470:   Call 0.Method_arg_20 (var_168)
  loc_1EDD478:   Call 0.Method_arg_38 (var_160 & "'")
  loc_1EDD48B:   GoTo loc_1ECDB14
  loc_1EDD496:   Loop Until (var_574 = "PrintVrNo") 'do at: 1ECD507
  loc_1EDD4AA:   Set var_148 = var_168(CInt(&HD))
  loc_1EDD4B0:   Call 0.Method_Proc_203_75_1EDDC440 (var_160)
  loc_1EDD4B8:   "'" = var_168.Text
  loc_1EDD4DB:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDD4E3:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDD4EB:   Call 0.Method_arg_38 (var_160 & "'")
  loc_1EDD504:   GoTo loc_1ECDB14
  loc_1EDD50F:   Loop Until (var_574 = "DRCRTYPE") 'do at: 1ECD59D
  loc_1EDD515:   var_578 = arg_10
  loc_1EDD520:   Loop Until Not (var_578 = "LedDeb") 'do at: 1ECD52E
  loc_1EDD52B:   Loop Until (var_578 = "MemLed") 'do at: 1ECD560
  loc_1EDD541:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDD549:   Call 0.Method_arg_20 (var_168)
  loc_1EDD551:   Call 0.Method_arg_38 ("'DR'")
  loc_1EDD55D:   GoTo loc_1ECD59A
  loc_1EDD568:   Loop Until (var_578 = "LedCred") 'do at: 1ECD59A
  loc_1EDD57E:   Call 0.Method_arg_90 (var_148, CLng(var_F6))
  loc_1EDD586:   Call 0.Method_arg_20 (var_168)
  loc_1EDD58E:   Call 0.Method_arg_38 ("'CR'")
  loc_1EDD59A:   GoTo loc_1ECDB14
  loc_1EDD5A5:   Loop Until (var_574 = "TagadaHeader1") 'do at: 1ECD60D
  loc_1EDD5B1:   Set var_148 = var_168(0)
  loc_1EDD5B7:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD5C6:   Proc_183_9_EAA760(var_178)
  loc_1EDD5E2:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD5EA:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD5F2:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD60A:   GoTo loc_1ECDB14
  loc_1EDD615:   Loop Until (var_574 = "TagadaHeader2") 'do at: 1ECD67D
  loc_1EDD621:   Set var_148 = var_168(1)
  loc_1EDD627:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD636:   Proc_183_9_EAA760(var_178)
  loc_1EDD652:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD65A:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD662:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD67A:   GoTo loc_1ECDB14
  loc_1EDD685:   Loop Until (var_574 = "TagadaHeader3") 'do at: 1ECD6ED
  loc_1EDD691:   Set var_148 = var_168(2)
  loc_1EDD697:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD6A6:   Proc_183_9_EAA760(var_178)
  loc_1EDD6C2:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD6CA:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD6D2:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD6EA:   GoTo loc_1ECDB14
  loc_1EDD6F5:   Loop Until (var_574 = "TagadaHeader4") 'do at: 1ECD75D
  loc_1EDD701:   Set var_148 = var_168(3)
  loc_1EDD707:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD716:   Proc_183_9_EAA760(var_178)
  loc_1EDD732:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD73A:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD742:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD75A:   GoTo loc_1ECDB14
  loc_1EDD765:   Loop Until (var_574 = "TagadaHeader5") 'do at: 1ECD7CD
  loc_1EDD771:   Set var_148 = var_168(4)
  loc_1EDD777:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD786:   Proc_183_9_EAA760(var_178)
  loc_1EDD7A2:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD7AA:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD7B2:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD7CA:   GoTo loc_1ECDB14
  loc_1EDD7D5:   Loop Until (var_574 = "TagadaFooter1") 'do at: 1ECD83D
  loc_1EDD7E1:   Set var_148 = var_168(0)
  loc_1EDD7E7:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD7F6:   Proc_183_9_EAA760(var_178)
  loc_1EDD812:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD81A:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD822:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD83A:   GoTo loc_1ECDB14
  loc_1EDD845:   Loop Until (var_574 = "TagadaFooter2") 'do at: 1ECD8AD
  loc_1EDD851:   Set var_148 = var_168(1)
  loc_1EDD857:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD866:   Proc_183_9_EAA760(var_178)
  loc_1EDD882:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD88A:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD892:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD8AA:   GoTo loc_1ECDB14
  loc_1EDD8B5:   Loop Until (var_574 = "TagadaFooter3") 'do at: 1ECD91D
  loc_1EDD8C1:   Set var_148 = var_168(2)
  loc_1EDD8C7:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD8D6:   Proc_183_9_EAA760(var_178)
  loc_1EDD8F2:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD8FA:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD902:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD91A:   GoTo loc_1ECDB14
  loc_1EDD925:   Loop Until (var_574 = "TagadaFooter4") 'do at: 1ECD98D
  loc_1EDD931:   Set var_148 = var_168(3)
  loc_1EDD937:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD946:   Proc_183_9_EAA760(var_178)
  loc_1EDD962:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD96A:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD972:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD98A:   GoTo loc_1ECDB14
  loc_1EDD995:   Loop Until (var_574 = "TagadaFooter5") 'do at: 1ECD9FD
  loc_1EDD9A1:   Set var_148 = var_168(4)
  loc_1EDD9A7:   Call 0.Method_Proc_203_75_1EDDC440 ()
  loc_1EDD9B6:   Proc_183_9_EAA760(var_178)
  loc_1EDD9D2:   Call 0.Method_arg_90 (var_194, CLng(var_F6), var_1B8)
  loc_1EDD9DA:   Call 0.Method_arg_20 (CStr(var_178))
  loc_1EDD9E2:   Call 0.Method_arg_38 (CVar(var_168))
  loc_1EDD9FA:   GoTo loc_1ECDB14
  loc_1EDDA05:   Loop Until (var_574 = "PageNo") 'do at: 1ECDA8A
  loc_1EDDA5B:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDDA63:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDDA6B:   Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_1EDDA87:   GoTo loc_1ECDB14
  loc_1EDDA92:   Loop Until (var_574 = "Date1") 'do at: 1ECDB14
  loc_1EDDA95:   var_124 = "'"
  loc_1EDDAAF:   var_148 = Me.Fields
  loc_1EDDACB:   var_134 = "'"
  loc_1EDDAD4:   var_160 = CStr(var_124 & var_148.Item("daterfill").Value & var_134)
  loc_1EDDAE8:   Call 0.Method_arg_90 (var_194, CLng(var_F6))
  loc_1EDDAF0:   Call 0.Method_arg_20 (var_1B8)
  loc_1EDDAF8:   Call 0.Method_arg_38 (var_160)
  loc_1EDDB17: Next var_570 'Integer
  loc_1EDDB35: Call 0.Method_arg_64 (var_148, CVar(var_8C))
  loc_1EDDB3D: Call 0.Method_arg_2C (var_124)
  loc_1EDDB4B: Call 0.Method_arg_150 (var_134)
  loc_1EDDB5E: Loop Until (arg_10 = "Led") 'do at: 1ECDB89
  loc_1EDDB67: Call 0.Method_arg_50 (var_160)
  loc_1EDDB7E: Proc_183_10_14991A4(MemVar_1F921E4, arg_C)
  loc_1EDDB86: GoTo loc_1ECDBB0
  loc_1EDDB8F: Call 0.Method_arg_50 (var_160, var_160)
  loc_1EDDBA8: Proc_183_10_14991A4(MemVar_1F921E4, 0, var_160)
  loc_1EDDBB5: Set var_88 = Nothing
  loc_1EDDBBD: Set var_90 = Nothing
  loc_1EDDBC5: Set var_8C = Nothing
  loc_1EDDBCD: Set var_94 = Nothing
  loc_1EDDBD5: Set var_100 = Nothing
  loc_1EDDBDD: Set var_104 = Nothing
  loc_1EDDBED: &HFF(vbNullString).Text = &HFF
  loc_1EDDC02: (vbNullString).Text = 
  loc_1EDDC0F: MemVar_1F921E4 = Nothing
  loc_1EDDC18: global_130 = 0
  loc_1EDDC1B: Exit Sub
  loc_1EDDC22: Call 0.Method_arg_50 (var_160)
  loc_1EDDC37: Proc_183_57_104AA84(var_160, "Led")
  loc_1EDDC43: Exit Sub
End Sub

Public Sub Proc_203_76_177D97C
  'Data Table: 583330
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_16C As String
  Dim var_130 As Variant
  Dim var_1F8 As Variant
  Dim var_228 As Variant
  Dim var_150 As Variant
  Dim var_1A8 As Variant
  Dim var_1C8 As Variant
  Dim var_258 As Variant
  Dim var_268 As Variant
  Dim unk_58337D As Connection15
  Dim var_218 As Variant
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_A0 As Recordset15
  Dim var_154 As Fields15
  Dim var_166 As Integer
  Dim var_30C As Fields15
  Dim var_194 As Variant
  Dim var_D8 As Double
  Dim var_E0 As Double
  Dim var_108 As Double
  Dim var_110 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_A8 As Recordset15
  Dim var_184 As Variant
  Dim var_318 As Variant
  Dim var_238 As Variant
  Dim var_320 As Recordset15
  Dim var_16E As Integer
  Dim var_A4 As Recordset15
  Dim var_334 As Recordset15
  Dim var_FC As Double
  Dim var_8C As Recordset15
  loc_177BB80: On Error Goto loc_177D949
  loc_177BB98: Set var_154 = CVar(CLng(0))(0)
  loc_177BBBC: Call Proc_203_59_F51A10(CInt(0), CStr(var_164))
  loc_177BBD0: If (var_16E = 0) Then
  loc_177BBD8:   global_130 = 0
  loc_177BBDB:   Exit Sub
  loc_177BBDC: End If
  loc_177BBE7: Set var_154 = var_174(CInt(&HC))
  loc_177BBED: Call 0.Method_Proc_203_76_177D97C0 (global_130, var_16E)
  loc_177BBFC: var_184 = Trim(CVar(var_174))
  loc_177BC16: If CBool(var_184 <> vbNullString) Then
  loc_177BC2A:   Set var_154 = var_174(CInt(&HC))
  loc_177BC30:   Call 0.Method_Proc_203_76_177D97C0 (var_16C, " And VIEWLEDGER.Site_Code='")
  loc_177BC38:   DGSite.DispID_41 = var_174.Tag
  loc_177BC48:   var_100 = var_16C & "'"
  loc_177BC5C: Else
  loc_177BC63:   var_16C = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078
  loc_177BC6A:   var_100 = var_16C & "'"
  loc_177BC70: End If
  loc_177BC7C: Set var_154 = var_174(1)
  loc_177BC82: Call 0.Method_Proc_203_76_177D97C0 (var_166)
  loc_177BC8A:  = var_174.Value
  loc_177BCA0: If (CLng(var_166) = 0) Then
  loc_177BCBE:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_177BCC9:   global_84 = var_16C
  loc_177BCD9:   If (global_130 = 0) Then
  loc_177BCDC:     Exit Sub
  loc_177BCDD:   End If
  loc_177BCDD: End If
  loc_177BCF2: Set var_154 = CVar(CLng(3))(1)
  loc_177BD14: If (CStr(DGSite.DispID_41) = vbNullString) Then
  loc_177BD30:   MsgBox("Specify More Than Days", 0, var_184, var_194, var_1A8)
  loc_177BD45:   global_130 = 0
  loc_177BD48:   Exit Sub
  loc_177BD49: End If
  loc_177BD56: Call Proc_203_78_11EA900(New, var_154)
  loc_177BD5E: Set var_8C = var_154
  loc_177BD6C: If (global_84 = vbNullString) Then
  loc_177BD7F:   var_164 = "Supplier"
  loc_177BDB1:   Set var_154 = CVar(CLng(0))(1)
  loc_177BDC8:   Proc_183_7_EB0C44(var_238, CVar(CStr(DGSite.DispID_41)))
  loc_177BDDA:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_177BDFB:   var_268 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND VIEWLEDGER.V_DATE<=" & var_238 & "  " 
  loc_177BE1C:   unk_58337D.Execute CStr(var_268 & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID"), var_2C8, -1
  loc_177BE27:   Set var_A0 = var_174
  loc_177BE69:   unk_58337D.Execute "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_177BE74:   Set var_A4 = var_154
  loc_177BE93:   unk_58337D.Execute "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_177BE9E:   Set var_A8 = var_154
  loc_177BEAA: Else
  loc_177BEBA:   var_164 = "Supplier"
  loc_177BEDA:   var_1F8 = CVar(CLng(0)) 'Long
  loc_177BEEC:   Set var_154 = var_1F8(1)
  loc_177BF03:   Proc_183_7_EB0C44(var_268, CVar(CStr(DGSite.DispID_41)), var_154, var_154)
  loc_177BF15:   var_150 = "Select SG.SubCode,SG.Name,SG.Add1,SG.Add2,C.CityName,SG.ConPerson,SG.PIN,SG.EMail,SG.PhoneO,VIEWLEDGER.* From (SubGroup SG Left Join City C on SG.CityCode=C.CityCode) LEFT JOIN VIEWLEDGER ON VIEWLEDGER.PARTY=SG.SUBCODE Where SG.Nature='"
  loc_177BF33:   var_218 = var_150 & IIf((GRepFormName = "DueListCreditorOverLay"), var_164, "Customer") & "' AND SG.SUBCODE IN (" & CVar(global_84) 
  loc_177BF5F:   var_2E8 = var_218 & ") AND VIEWLEDGER.V_DATE<=" & var_268 & " " & CVar(var_100) & " Order By Name,SG.SUBCODE,VIEWLEDGER.V_DATE,VIEWLEDGER.DOCID" 
  loc_177BF6D:   unk_58337D.Execute CStr(var_2E8), var_308, -1
  loc_177BF78:   Set var_A0 = var_174
  loc_177BFBF:   var_16C = "Select SubCode+'-'+DocId1+'-'+ LTRIM(RTRIM(V_SNo1)) AS SCODE,SUBCODE,DocId1,V_SNo1,SUM(CR) AS ADJCr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_177BFCF:   unk_58337D.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId1,V_SNo1", var_164, -1
  loc_177BFDA:   Set var_A4 = var_154
  loc_177C001:   var_16C = "Select SubCode+'-'+DocId2+'-'+ LTRIM(RTRIM(V_SNo2)) AS SCODE,SUBCODE,DocId2,V_SNo2,SUM(CR) AS ADJDr  FROM LEDGERADJ WHERE SUBCODE IN (" & global_84
  loc_177C011:   unk_58337D.Execute CStr(var_2E8) & ") GROUP BY SUBCODE,DocId2,V_SNo2", var_164, -1
  loc_177C01C:   Set var_A8 = var_154
  loc_177C02C:   ' Referenced from:   177D579
  loc_177C02C: End If
  loc_177C03B: If Not(var_A0.EOF) Then
  loc_177C091:   var_184 = vbNullString
  loc_177C0B5:   var_BC = CStr(Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))))
  loc_177C0F9:   var_C0 = CStr(var_A0.Fields.Item("Party").Value)
  loc_177C109:   var_D8 = CDbl(0)
  loc_177C10F:   var_E0 = CDbl(0)
  loc_177C115:   var_108 = CDbl(0)
  loc_177C11B:   var_110 = CDbl(0)
  loc_177C11E:   ' Referenced from: 177D576
  loc_177C15B:   If (var_A0.Fields.Item("Party").Value = CVar(var_C0)) Then
  loc_177C190:     Proc_183_3_E7D1C8(var_184, CVar(var_A0.Fields.Item("Debit")), CDbl(0), CDbl(0), var_110, var_108, var_E0)
  loc_177C1AA:     If (var_184 > 0) Then
  loc_177C1C1:       If (var_A8.RecordCount > 0) Then
  loc_177C1C7:         var_A8.MoveFirst
  loc_177C1CC:       End If
  loc_177C209:       var_130 = "-"
  loc_177C20E:       var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_177C23C:       var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_177C240:       var_150 = "-"
  loc_177C245:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name"))) + vbNullString)
  loc_177C277:       var_238 = (Trim(IIf(IsNull(CVar(var_A0.Fields.Item("Name"))), var_184, CVar(var_A0.Fields.Item("Name")))) + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_177C28F:       var_A8.Find CStr("SCODE='" & var_238 & "'"), 0, 1
  loc_177C2C1:       var_166 = var_A8.EOF
  loc_177C2CC:       If (var_166 = 0) Then
  loc_177C2F5:         Proc_183_3_E7D1C8(var_184, CVar(var_A8.Fields.Item("ADJDR")), var_1F8, var_D8, var_166)
  loc_177C2FE:         var_C8 = CSng(var_184)
  loc_177C30B:       End If
  loc_177C32A:       var_120 = CVar(CLng(2)) 'Long
  loc_177C33C:       Set var_154 = var_120(1)
  loc_177C355:       var_258 = (CStr(DGSite.DispID_41) = "Pending")
  loc_177C378:       var_1A8 = Format(CVar(var_A0.Fields.Item("Debit")), "0.00")
  loc_177C3A8:       var_228 = (1 - Format(var_C8, "0.00"))
  loc_177C3D7:       If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_177C3DA:         GoTo loc_177D557
  loc_177C3DD:       End If
  loc_177C3E0:       Set var_320 = var_8C 
  loc_177C3EF:       var_320.AddNew var_120, 0
  loc_177C437:       var_320.Fields.Item("VDATE1").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_177C48B:       var_320.Fields.Item("VNO1").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_177C4DF:       var_320.Fields.Item("VTYPE1").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_177C533:       var_320.Fields.Item("VSNO1").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_177C587:       var_320.Fields.Item("VADD1").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_177C5DB:       var_320.Fields.Item("Dr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_177C60E:       var_164 = var_A0.Fields.Item("Debit").Value
  loc_177C61D:       var_184 = (var_164 - CVar(var_C8))
  loc_177C641:       var_320.Fields.Item("PendDr").Value = CVar(var_A0.Fields.Item("Debit"))
  loc_177C685:       Set var_30C = CVar(CLng(0))(1)
  loc_177C6E3:       var_320.Fields.Item("AgeDr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_177C744:       var_320.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_177C7A8:       var_320.Fields.Item("NAME").Value = Left(CVar(var_A0.Fields.Item("Name")), &H4B)
  loc_177C810:       var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_177C858:       var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_177C88D:       var_1F8 = var_16E
  loc_177C89C:       var_268 = ("0.00" + IIf(var_1F8, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_177C8C0:       var_320.Fields.Item("ADDRESS").Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_177C97A:       var_320.Fields.Item("CITY_NAME").Value = IIf(IsNull(CVar(var_A0.Fields.Item("CityName"))), vbNullString, CVar(var_A0.Fields.Item("CityName")))
  loc_177CA22:       var_320.Fields.Item("ConPerson").Value = IIf(IsNull(CVar(var_A0.Fields.Item("ConPerson"))), vbNullString, CVar(var_A0.Fields.Item("ConPerson")))
  loc_177CACA:       var_320.Fields.Item("PIN").Value = IIf(IsNull(CVar(var_A0.Fields.Item("Pin"))), vbNullString, CVar(var_A0.Fields.Item("Pin")))
  loc_177CB0F:       var_166 = IsNull(CVar(var_A0.Fields.Item("Email")))
  loc_177CB4A:       var_1A8 = IIf(var_166, vbNullString, CVar(var_A0.Fields.Item("Email")))
  loc_177CB72:       var_320.Fields.Item("EMail").Value = var_1A8
  loc_177CBDA:       var_320.Fields.Item("NARRATION1").Value = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item("mNarr")), var_166, var_166, var_166, var_166, var_16E))
  loc_177CBF2:       var_120 = "NARR"
  loc_177CC17:       var_184 = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item(var_120)), var_166, DGSite.DispID_41, var_1A8)) 'String
  loc_177CC1E:       var_130 = "NARRATION2"
  loc_177CC3A:       var_320.Fields.Item(var_130).Value = var_184
  loc_177CC5A:       var_320.Update var_120, var_130
  loc_177CC61:       Set var_320 = Nothing 
  loc_177CC68:     Else
  loc_177CC8E:       Proc_183_3_E7D1C8(var_184, CVar(var_A0.Fields.Item("Credit")), 1)
  loc_177CCA8:       If (var_184 > 0) Then
  loc_177CCBF:         If (var_A4.RecordCount > 0) Then
  loc_177CCC5:           var_A4.MoveFirst
  loc_177CCCA:         End If
  loc_177CD07:         var_130 = "-"
  loc_177CD0C:         var_184 = (var_A0.Fields.Item("subcode").Value + 0)
  loc_177CD3A:         var_1A8 = (var_184 + var_A0.Fields.Item("DocID").Value)
  loc_177CD3E:         var_150 = "-"
  loc_177CD43:         var_1C8 = (var_1A8 + vbNullString)
  loc_177CD75:         var_238 = ("0.00" + Trim(CVar(var_A0.Fields.Item("V_SNo"))))
  loc_177CD8D:         var_A4.Find CStr("SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"), 0, 1
  loc_177CDCA:         If (var_A4.EOF = 0) Then
  loc_177CDF3:           Proc_183_3_E7D1C8(var_184, CVar(var_A4.Fields.Item("ADJCR")), var_1F8)
  loc_177CDFC:           var_D0 = CSng(var_184)
  loc_177CE09:         End If
  loc_177CE28:         var_120 = CVar(CLng(2)) 'Long
  loc_177CE3A:         Set var_154 = var_120(1)
  loc_177CE53:         var_258 = (CStr(DGSite.DispID_41) = "Pending")
  loc_177CE76:         var_1A8 = Format(CVar(var_A0.Fields.Item("Credit")), "0.00")
  loc_177CEA6:         var_228 = (1 - Format(var_D0, "0.00"))
  loc_177CED5:         If CBool(1 And (Trim(CVar(var_A0.Fields.Item("V_SNo"))) = 0)) Then
  loc_177CED8:           GoTo loc_177D557
  loc_177CEDB:         End If
  loc_177CEDE:         Set var_334 = var_8C 
  loc_177CEED:         var_334.AddNew var_120, 0
  loc_177CF35:         var_334.Fields.Item("VDATE2").Value = CVar(var_A0.Fields.Item("V_DATE"))
  loc_177CF89:         var_334.Fields.Item("VNO2").Value = CVar(var_A0.Fields.Item("V_NO"))
  loc_177CFDD:         var_334.Fields.Item("VTYPE2").Value = CVar(var_A0.Fields.Item("V_Type"))
  loc_177D031:         var_334.Fields.Item("VSNO2").Value = CVar(var_A0.Fields.Item("V_SNo"))
  loc_177D085:         var_334.Fields.Item("VADD2").Value = CVar(var_A0.Fields.Item("V_ADD"))
  loc_177D0D9:         var_334.Fields.Item("Cr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_177D10C:         var_164 = var_A0.Fields.Item("Credit").Value
  loc_177D11B:         var_184 = (var_164 - CVar(var_D0))
  loc_177D13F:         var_334.Fields.Item("PendCr").Value = CVar(var_A0.Fields.Item("Credit"))
  loc_177D183:         Set var_30C = CVar(CLng(0))(1)
  loc_177D1E1:         var_334.Fields.Item("AgeCr").Value = DateDiff("D", CVar(var_A0.Fields.Item("V_DATE")), CDate(CDate(CStr(var_164))), 1, 1)
  loc_177D242:         var_334.Fields.Item("SUBCODE").Value = CVar(var_A0.Fields.Item("Party"))
  loc_177D296:         var_334.Fields.Item("NAME").Value = CVar(var_A0.Fields.Item("Name"))
  loc_177D2FA:         var_16E = IsNull(CVar(var_A0.Fields.Item("Add2")))
  loc_177D342:         var_1C8 = (IIf(IsNull(CVar(var_A0.Fields.Item("Add1"))), vbNullString, CVar(var_A0.Fields.Item("Add1"))) + ",")
  loc_177D386:         var_268 = ("0.00" + IIf(var_16E, vbNullString, CVar(var_A0.Fields.Item("Add2"))))
  loc_177D38E:         var_258 = "ADDRESS"
  loc_177D3AA:         var_334.Fields.Item(var_258).Value = "SCODE='" & CVar(var_A0.Fields.Item("Add2")) & "'"
  loc_177D401:         var_166 = IsNull(CVar(var_A0.Fields.Item("CityName")))
  loc_177D423:         var_194 = CVar(var_A0.Fields.Item("CityName")) 'Address
  loc_177D43C:         var_1A8 = IIf(var_166, vbNullString, var_194)
  loc_177D464:         var_334.Fields.Item("CITY_NAME").Value = var_1A8
  loc_177D4A9:         var_184 = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item("mNarr")), var_166, var_16E, var_166, DGSite.DispID_41, var_1A8)) 'String
  loc_177D4CC:         var_334.Fields.Item("NARRATION1").Value = var_184
  loc_177D4E4:         var_120 = "NARR"
  loc_177D510:         var_130 = "NARRATION2"
  loc_177D52C:         var_334.Fields.Item(var_130).Value = CVar(Proc_183_2_E5A304(CVar(var_A0.Fields.Item(var_120)), 1, 1, var_258))
  loc_177D54C:         var_334.Update var_120, var_130
  loc_177D553:         Set var_334 = Nothing 
  loc_177D557:         ' Referenced from:   177CED8
  loc_177D557:       End If
  loc_177D557:       ' Referenced from: 177C3DA
  loc_177D557:     End If
  loc_177D55A:     var_A0.MoveNext
  loc_177D570:     If (var_A0.EOF = &HFF) Then
  loc_177D573:       GoTo loc_177D579
  loc_177D576:     End If
  loc_177D576:     GoTo loc_177C11E
  loc_177D579:     ' Referenced from: 177D573
  loc_177D579:   End If
  loc_177D579:   GoTo loc_177C02C
  loc_177D57C: End If
  loc_177D590: If (var_A0.RecordCount > 0) Then
  loc_177D596:   var_A0.MoveFirst
  loc_177D59B:   ' Referenced from: 177D7E5
  loc_177D59B: End If
  loc_177D5AA: If Not(var_A0.EOF) Then
  loc_177D5D8:   var_F4 = CStr(var_A0.Fields.Item("Party").Value)
  loc_177D5E8:   var_FC = CDbl(0)
  loc_177D5F7:   var_8C.Filter = 0
  loc_177D610:   If (var_8C.RecordCount > 0) Then
  loc_177D616:     var_8C.MoveFirst
  loc_177D61B:     ' Referenced from: 177D70A
  loc_177D61B:   End If
  loc_177D62A:   If Not(var_8C.EOF) Then
  loc_177D668:     var_140 = "AgeDr"
  loc_177D684:     var_1A8 = var_8C.Fields.Item(var_140).Value
  loc_177D6A1:     Set var_318 = CVar(CLng(3))(1)
  loc_177D6E2:     If CBool((var_8C.Fields.Item("subcode").Value = CVar(var_F4)) And (var_1A8 >= CVar(Val(CStr(DGSite.DispID_41))))) Then
  loc_177D6EC:       var_FC = (var_FC + CDbl(1))
  loc_177D6F6:       If (var_FC > CDbl(0)) Then
  loc_177D6F9:         GoTo loc_177D7DD
  loc_177D6FF:       Else
  loc_177D702:       Else
  loc_177D702:       End If
  loc_177D705:       var_8C.MoveNext
  loc_177D70A:       GoTo loc_177D61B
  loc_177D70D:     End If
  loc_177D714:     If (var_FC = CDbl(0)) Then
  loc_177D717:       GoTo loc_177D720
  loc_177D71D:     Else
  loc_177D720:     Else
  loc_177D720:       ' Referenced from:     177D717
  loc_177D720:     End If
  loc_177D723:     var_130 = CVar(var_F4) 'String
  loc_177D75D:     If (var_130 = var_A0.Fields.Item("Party").Value) Then
  loc_177D774:       If (var_8C.RecordCount > 0) Then
  loc_177D77A:         var_8C.MoveFirst
  loc_177D77F:       End If
  loc_177D786:       var_16C = "SubCode='" & var_F4
  loc_177D794:       var_8C.Filter = CVar(var_16C & "'")
  loc_177D7B0:       If (var_8C.EOF = 0) Then
  loc_177D7B3:         ' Referenced from:   177D7DA
  loc_177D7C2:         If Not(var_8C.EOF) Then
  loc_177D7CD:           var_8C.Delete
  loc_177D7D5:           var_8C.MoveNext
  loc_177D7DA:           GoTo loc_177D7B3
  loc_177D7DD:         End If
  loc_177D7DD:         ' Referenced from: 177D6F9
  loc_177D7DD:       End If
  loc_177D7DD:     End If
  loc_177D7DD:   End If
  loc_177D7E0:   var_A0.MoveNext
  loc_177D7E5:   GoTo loc_177D59B
  loc_177D7E8: End If
  loc_177D7F4: var_8C.Filter = 0
  loc_177D7FE: Set var_A0 = Nothing
  loc_177D806: Set var_A4 = Nothing
  loc_177D80E: Set var_A8 = Nothing
  loc_177D816: Set var_AC = Nothing
  loc_177D81E: Set var_B0 = Nothing
  loc_177D835: If (var_8C.RecordCount <= 0) Then
  loc_177D83E:   Call 0.Method_arg_50 (var_16C, 1, var_FC, var_FC)
  loc_177D85F:   MsgBox("** No Records Found to Print **", &H40, CVar(var_16C), var_194, var_1A8)
  loc_177D874:   global_130 = 0
  loc_177D877: End If
  loc_177D87D: Call 0.Method_arg_50 (var_16C, global_130, var_D0)
  loc_177D89A: global_120 = CStr(Ucase(CVar(var_16C)))
  loc_177D8BE: Set var_154 = var_8C 
  loc_177D8CA: var_166 = CreateFieldDefFile(var_154, MemVar_1F923B0 & "\FaDueList.ttx", &HFF)
  loc_177D8DA: var_120 = CVar(var_166) 'Integer
  loc_177D8DD: var_9C = var_120 'Variant
  loc_177D8F9: var_16C = MemVar_1F923B0 & "\FaDueList.RPT"
  loc_177D902: Call 0.Method_arg_1C (var_16C, var_120, var_154)
  loc_177D90D: MemVar_1F921E4 = var_154
  loc_177D930: Call 0.Method_arg_64 (var_154, CVar(var_154), var_130, var_140)
  loc_177D938: Call 0.Method_arg_2C (var_166, 1)
  loc_177D945: Set var_8C = Nothing
  loc_177D948: Exit Sub
  loc_177D949: ' Referenced from: 177BB80
  loc_177D957: Call 0.Method_arg_50 (var_16C, 0)
  loc_177D96C: Proc_183_57_104AA84(var_16C, "DUELIST")
  loc_177D978: Exit Sub
End Sub

Public Sub Proc_203_77_147EB4C(arg_C) '147EB4C
  'Data Table: 583330
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_118 As String
  Dim var_120 As Variant
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_DC As Variant
  Dim var_154 As Variant
  Dim var_FC As Variant
  Dim var_174 As Variant
  Dim unk_58337D As Connection15
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_100 As Fields15
  Dim var_22C As Recordset15
  Dim var_130 As Variant
  Dim var_88 As Recordset15
  Dim var_90 As Recordset15
  Dim var_230 As Recordset15
  Dim var_8C As Recordset15
  Dim var_232 As Integer
  Dim var_A2 As Integer
  Dim var_112 As Integer
  loc_147DF5C: On Error Goto loc_147EB1B
  loc_147DF74: Set var_100 = CVar(CLng(0))(0)
  loc_147DF98: Call Proc_203_59_F51A10(CInt(0), CStr(var_110))
  loc_147DFAC: If (var_11A = 0) Then
  loc_147DFB4:   global_130 = 0
  loc_147DFB7:   Exit Sub
  loc_147DFB8: End If
  loc_147DFCD: Set var_100 = CVar(CLng(1))(0)
  loc_147DFF1: Call Proc_203_59_F51A10(CInt(1), CStr(var_110))
  loc_147E005: If (var_11A = 0) Then
  loc_147E00D:   global_130 = 0
  loc_147E010:   Exit Sub
  loc_147E011: End If
  loc_147E026: Set var_100 = CVar(CLng(0))(1)
  loc_147E044: global_130(CStr(DGSite.DispID_41)).Text = var_11A
  loc_147E06B: Set var_100 = CVar(CLng(1))(1)
  loc_147E07C: var_118 = CStr(DGSite.DispID_41)
  loc_147E083: Set var_120 = DGSite.DispID_41(var_118)
  loc_147E089: var_120.Text = global_130
  loc_147E0B2: If (Proc_183_48_F05F98(Me, var_11A) = 0) Then
  loc_147E0BA:   global_130 = 0
  loc_147E0BD:   Exit Sub
  loc_147E0BE: End If
  loc_147E0C9: Set var_100 = var_120(CInt(&HC))
  loc_147E0CF: Call 0.Method_Proc_203_77_147EB4C0 (global_130)
  loc_147E0DE: var_130 = Trim(CVar(var_120))
  loc_147E0F8: If CBool(var_130 <> vbNullString) Then
  loc_147E10C:   Set var_100 = var_120(CInt(&HC))
  loc_147E112:   Call 0.Method_Proc_203_77_147EB4C0 (var_118, " And VIEWLEDGER.LOGSite_Code='")
  loc_147E11A:   DGSite.DispID_41 = var_120.Tag
  loc_147E12A:   var_BC = var_118 & "'"
  loc_147E13E: Else
  loc_147E145:   var_118 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_147E14C:   var_BC = var_118 & "'"
  loc_147E152: End If
  loc_147E15E: Set var_100 = var_120(1)
  loc_147E164: Call 0.Method_Proc_203_77_147EB4C0 (var_112)
  loc_147E16C:  = var_120.Value
  loc_147E182: If (CLng(var_112) = 0) Then
  loc_147E1A0:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_147E1AB:   global_84 = var_118
  loc_147E1BB:   If (global_130 = 0) Then
  loc_147E1BE:     GoTo loc_147EAFA
  loc_147E1C1:   End If
  loc_147E1C1: End If
  loc_147E1CC: If (global_84 <> vbNullString) Then
  loc_147E1E0:   var_A8 = " AND GROUPCODE IN (" & global_84 & ") "
  loc_147E1E6: End If
  loc_147E1F3: Call Proc_203_79_1024DA4(New, var_100)
  loc_147E1FB: Set var_8C = var_100
  loc_147E20B: var_CC = "SELECT SUM(CREDIT)-SUM(DEBIT) AS BALANCE FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date<"
  loc_147E21B: Proc_183_7_EB0C44(var_130, CVar(var_1D4(global_96)), -1)
  loc_147E23F: var_174 = var_100 & var_130 & " " & CVar(var_A8) & " " 
  loc_147E260: unk_58337D.Execute CStr(var_174 & CVar(var_BC) & vbNullString), CStr(var_174 & CVar(var_BC) & vbNullString), 
  loc_147E26B: Set var_94 = var_100
  loc_147E296: var_CC = "SELECT VIEWLEDGER.*,SUBGROUP.NAME FROM VIEWLEDGER LEFT JOIN SUBGROUP ON SUBGROUP.SUBCODE=VIEWLEDGER.PARTY WHERE V_dATE BETWEEN "
  loc_147E2A6: Proc_183_7_EB0C44(var_130, CVar(var_1F4(var_CC)))
  loc_147E2AE: var_140 = -1 & var_130 
  loc_147E2C6: Proc_183_7_EB0C44(var_174)
  loc_147E2F8: unk_58337D.Execute CStr(CVar(var_100(var_100 & var_130 & " AND ")) & var_174 & " " & CVar(var_BC) & " ORDER BY DOCID"), , 
  loc_147E303: Set var_90 = var_100
  loc_147E33B: var_110 = CVar(var_224("SELECT DISTINCT DOCID FROM VIEWLEDGER LEFT JOIN SUBGROUP ON VIEWLEDGER.party=SUBGROUP.SUBCODE where V_date BETWEEN ")) 'Address
  loc_147E342: Proc_183_7_EB0C44(var_130, var_110)
  loc_147E34A: var_140 = -1 & var_130 
  loc_147E353: var_154 = var_100 & var_130 & " AND " 
  loc_147E362: Proc_183_7_EB0C44(var_174)
  loc_147E37A: var_FC = CVar(var_A8) 'String
  loc_147E3A7: unk_58337D.Execute CStr(CVar(var_100(var_154)) & var_174 & " " & var_FC & " " & CVar(var_BC) & " ORDER BY DOCID"), , 
  loc_147E3B2: Set var_88 = var_100
  loc_147E3EC: If (var_94.RecordCount > 0) Then
  loc_147E3F5:   var_CC = "Balance"
  loc_147E419:   var_DC = 0
  loc_147E42B:   If CBool(var_94.Fields.Item(var_CC).Value <> var_DC) Then
  loc_147E431:     Set var_22C = var_8C 
  loc_147E440:     var_22C.AddNew var_CC, var_DC
  loc_147E449:     var_110 = CVar(()) 'Address
  loc_147E457:     var_22C.Collect = "V_DATE"
  loc_147E49B:     If (var_94.Fields.Item("Balance").Value > 0) Then
  loc_147E4C8:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147E4D6:       var_22C.Collect = "Credit"
  loc_147E4E5:       var_DC = 0
  loc_147E4F4:       var_22C.Collect = "Debit"
  loc_147E4FC:     Else
  loc_147E4FC:       var_DC = 0
  loc_147E50B:       var_22C.Collect = "Credit"
  loc_147E53A:       var_130 = Abs(var_94.Fields.Item("Balance").Value)
  loc_147E548:       var_22C.Collect = "Debit"
  loc_147E557:     End If
  loc_147E557:     var_DC = "OP"
  loc_147E566:     var_22C.Collect = "V_Type"
  loc_147E56B:     var_DC = 0
  loc_147E57A:     var_22C.Collect = "V_NO"
  loc_147E57F:     var_DC = vbNullString
  loc_147E58E:     var_22C.Collect = "V_ADD"
  loc_147E599:     var_CC = "Chq_No"
  loc_147E5A2:     var_22C.Collect = var_CC
  loc_147E5B2:     var_22C.Update var_CC, vbNullString
  loc_147E5B9:     Set var_22C = Nothing 
  loc_147E5BD:     ' Referenced from: 147E98B
  loc_147E5BD:   End If
  loc_147E5BD: End If
  loc_147E5CC: If Not(var_88.EOF) Then
  loc_147E5D2:   var_90.MoveFirst
  loc_147E618:   var_EC = "'"
  loc_147E61D:   var_140 = "DocId='" & var_88.Fields.Item("DocID").Value & var_EC 
  loc_147E621:   var_118 = CStr(var_140)
  loc_147E628:   var_90.Find var_118, 0, 1
  loc_147E66B:   var_A0 = CStr(var_88.Fields.Item("DocID").Value)
  loc_147E689:   If (var_90.EOF = 0) Then
  loc_147E68C:     ' Referenced from: 147E980
  loc_147E68F:     var_DC = CVar(var_A0) 'String
  loc_147E699:     var_CC = "DocID"
  loc_147E6C9:     If (var_DC = var_90.Fields.Item(var_CC).Value) Then
  loc_147E6CF:       Set var_230 = var_8C 
  loc_147E6DE:       var_230.AddNew var_CC, var_DC
  loc_147E702:       var_110 = CVar(var_90.Fields.Item("V_DATE")) 'Address
  loc_147E710:       var_230.Collect = "V_DATE"
  loc_147E73A:       var_110 = CVar(var_90.Fields.Item("Credit")) 'Address
  loc_147E748:       var_230.Collect = "Credit"
  loc_147E772:       var_110 = CVar(var_90.Fields.Item("Debit")) 'Address
  loc_147E780:       var_230.Collect = "Debit"
  loc_147E7AA:       var_110 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_147E7B8:       var_230.Collect = "V_Type"
  loc_147E7E2:       var_110 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_147E7F0:       var_230.Collect = "V_NO"
  loc_147E81A:       var_110 = CVar(var_90.Fields.Item("V_ADD")) 'Address
  loc_147E828:       var_230.Collect = "V_ADD"
  loc_147E852:       var_110 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_147E860:       var_230.Collect = "Chq_No"
  loc_147E88A:       var_110 = CVar(var_90.Fields.Item("Chq_Date")) 'Address
  loc_147E898:       var_230.Collect = "Chq_Date"
  loc_147E8C2:       var_110 = CVar(var_90.Fields.Item("NARR")) 'Address
  loc_147E8D0:       var_230.Collect = "NARR"
  loc_147E8FA:       var_110 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_147E908:       var_230.Collect = "Name"
  loc_147E916:       var_CC = "mNarr"
  loc_147E932:       var_110 = CVar(var_90.Fields.Item(var_CC)) 'Address
  loc_147E937:       var_DC = "mNarr"
  loc_147E940:       var_230.Collect = var_DC
  loc_147E956:       var_230.Update var_CC, var_DC
  loc_147E95D:       Set var_230 = Nothing 
  loc_147E964:       var_90.MoveNext
  loc_147E96F:       var_112 = var_90.EOF
  loc_147E97A:       If (var_112 = &HFF) Then
  loc_147E97D:         GoTo loc_147E983
  loc_147E980:       End If
  loc_147E980:       GoTo loc_147E68C
  loc_147E983:       ' Referenced from: 147E97D
  loc_147E983:     End If
  loc_147E983:   End If
  loc_147E986:   var_88.MoveNext
  loc_147E98B:   GoTo loc_147E5BD
  loc_147E98E: End If
  loc_147E9A2: If (var_8C.RecordCount <= 0) Then
  loc_147E9AB:   Call 0.Method_arg_50 (var_118, var_110, var_110, var_110, var_110, var_110, var_110)
  loc_147E9CC:   MsgBox("** No Records Found to Print **", &H40, CVar(var_118), var_140, var_154)
  loc_147E9E1:   global_130 = 0
  loc_147E9E4:   Exit Sub
  loc_147E9E5: End If
  loc_147E9E8: var_232 = arg_C
  loc_147E9F1: If (var_232 = 1) Then
  loc_147E9FA:   var_DC = "Paper Setting"
  loc_147EA0F:   var_110 = "Please Set 80 Col. Paper in Your D.M.Printer"
  loc_147EA15:   MsgBox(var_110, &H40, var_DC, var_140, var_154)
  loc_147EA2E:   Set var_120 = var_8C
  loc_147EA47:   Call 0.Method_arg_160 (Me, var_120, var_112, var_232, global_130, var_110)
  loc_147EA52:   Set var_8C = var_120
  loc_147EA58:   var_A2 = var_112
  loc_147EA67:   global_130 = 0
  loc_147EA6A:   GoTo loc_147EAFA
  loc_147EA70: Else
  loc_147EA79:   var_118 = MemVar_1F923B0 & "\FaControlLed.ttx"
  loc_147EA86:   Set var_100 = var_8C 
  loc_147EA92:   var_112 = CreateFieldDefFile(var_100, var_118, &HFF, global_130, var_A2, var_110)
  loc_147EAA5:   var_B8 = CVar(var_112) 'Variant
  loc_147EABF:   Call 0.Method_arg_11C (var_100, var_112, var_110, var_110)
  loc_147EACA:   MemVar_1F921E4 = var_100
  loc_147EAEA:   Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC, var_EC)
  loc_147EAF2:   Call 0.Method_arg_2C (var_110, var_FC)
  loc_147EAFA: End If
  loc_147EAFA: ' Referenced from: 147EA6A
  loc_147EAFA: ' Referenced from: 147E1BE
  loc_147EAFF: Set var_88 = Nothing
  loc_147EB07: Set var_8C = Nothing
  loc_147EB0F: Set var_90 = Nothing
  loc_147EB17: Set var_94 = Nothing
  loc_147EB1A: Exit Sub
  loc_147EB1B: ' Referenced from: 147DF5C
  loc_147EB29: Call 0.Method_arg_50 (var_118, 0)
  loc_147EB3E: Proc_183_57_104AA84(var_118, "ControlLed")
  loc_147EB4A: Exit Sub
End Sub

Public Sub Proc_203_78_11EA900(arg_C) '11EA900
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_11EA461: Set var_8C = arg_C 
  loc_11EA489: var_8C.Fields.Append "VDATE1", 7, 0
  loc_11EA4B5: var_8C.Fields.Append "VNO1", 3, 0
  loc_11EA4E1: var_8C.Fields.Append "VTYPE1", &HC8, 5
  loc_11EA50D: var_8C.Fields.Append "VSNO1", 3, 0
  loc_11EA539: var_8C.Fields.Append "VADD1", &HC8, 5
  loc_11EA565: var_8C.Fields.Append "VDATE2", 7, 0
  loc_11EA591: var_8C.Fields.Append "VNO2", 3, 0
  loc_11EA5BD: var_8C.Fields.Append "VTYPE2", &HC8, 5
  loc_11EA5E9: var_8C.Fields.Append "VSNO2", 3, 0
  loc_11EA615: var_8C.Fields.Append "VADD2", &HC8, 5
  loc_11EA641: var_8C.Fields.Append "Cr", 5, 0
  loc_11EA66D: var_8C.Fields.Append "Dr", 5, 0
  loc_11EA699: var_8C.Fields.Append "PendCr", 5, 0
  loc_11EA6C5: var_8C.Fields.Append "PendDr", 5, 0
  loc_11EA6F1: var_8C.Fields.Append "AgeCr", 3, 0
  loc_11EA71D: var_8C.Fields.Append "AgeDr", 3, 0
  loc_11EA749: var_8C.Fields.Append "SUBCODE", &HC8, &HA
  loc_11EA775: var_8C.Fields.Append "NAME", &HC8, &H4B
  loc_11EA7A1: var_8C.Fields.Append "ADDRESS", &HC8, &H96
  loc_11EA7CD: var_8C.Fields.Append "CITY_NAME", &HC8, &H32
  loc_11EA7F9: var_8C.Fields.Append "ConPerson", &HC8, &H32
  loc_11EA825: var_8C.Fields.Append "PIN", &HC8, 6
  loc_11EA851: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_11EA87D: var_8C.Fields.Append "NARRATION1", &HC8, &HFF
  loc_11EA8A9: var_8C.Fields.Append "NARRATION2", &HC8, &HFF
  loc_11EA8B9: var_8C.CursorType = 3
  loc_11EA8C6: var_8C.LockType = 3
  loc_11EA8E5: var_8C.Open var_A0, var_B0, -1
  loc_11EA8EC: Set var_8C = Nothing 
  loc_11EA8F3: Set var_88 = arg_C 
  loc_11EA8F7: Proc_203_78_11EA900 = -1
End Sub

Public Sub Proc_203_79_1024DA4(arg_C) '1024DA4
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_1024B6D: Set var_8C = arg_C 
  loc_1024B95: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1024BC1: var_8C.Fields.Append "credit", 5, 0
  loc_1024BED: var_8C.Fields.Append "debit", 5, 0
  loc_1024C19: var_8C.Fields.Append "v_type", &HC8, 5
  loc_1024C45: var_8C.Fields.Append "v_no", 3, 0
  loc_1024C71: var_8C.Fields.Append "v_add", &HC8, 5
  loc_1024C9D: var_8C.Fields.Append "Chq_No", &HC8, &H14
  loc_1024CC9: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_1024CF5: var_8C.Fields.Append "NARR", &HC8, &HFF
  loc_1024D21: var_8C.Fields.Append "NAME", &HC8, &H32
  loc_1024D4D: var_8C.Fields.Append "MNARR", &HC8, &HFF
  loc_1024D5D: var_8C.CursorType = 3
  loc_1024D6A: var_8C.LockType = 3
  loc_1024D89: var_8C.Open var_A0, var_B0, -1
  loc_1024D90: Set var_8C = Nothing 
  loc_1024D97: Set var_88 = arg_C 
  loc_1024D9B: Proc_203_79_1024DA4 = -1
End Sub

Public Sub Proc_203_80_191FE60(arg_C) '191FE60
  'Data Table: 583330
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_150 As String
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_AC As Double
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_184 As Variant
  Dim var_1A8 As Variant
  Dim var_1E8 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_208 As Variant
  Dim var_8C As Recordset15
  Dim var_218 As Variant
  Dim var_228 As Variant
  Dim var_248 As Variant
  Dim var_90 As Recordset15
  Dim var_D8 As Double
  Dim var_94 As Recordset15
  Dim var_D0 As Double
  Dim var_DC As Integer
  Dim var_DE As Integer
  Dim var_E0 As Integer
  Dim var_E2 As Integer
  Dim var_E4 As Integer
  Dim var_E6 As Integer
  Dim var_C8 As Double
  Dim Me As Recordset15
  Dim var_26C As Fields15
  Dim var_258 As Variant
  Dim var_2A8 As Variant
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_2AA As Integer
  Dim var_DA As Integer
  Dim var_14A As Integer
  loc_191D334: On Error Goto loc_191FE2E
  loc_191D34C: Set var_138 = CVar(CLng(0))(0)
  loc_191D370: Call Proc_203_59_F51A10(CInt(0), CStr(var_148))
  loc_191D384: If (var_152 = 0) Then
  loc_191D38C:   global_130 = 0
  loc_191D38F:   Exit Sub
  loc_191D390: End If
  loc_191D3A5: Set var_138 = CVar(CLng(1))(0)
  loc_191D3C9: Call Proc_203_59_F51A10(CInt(1), CStr(var_148))
  loc_191D3DD: If (var_152 = 0) Then
  loc_191D3E5:   global_130 = 0
  loc_191D3E8:   Exit Sub
  loc_191D3E9: End If
  loc_191D3FE: Set var_138 = CVar(CLng(2))(0)
  loc_191D422: Call Proc_203_59_F51A10(CInt(2), CStr(var_148))
  loc_191D436: If (var_152 = 0) Then
  loc_191D43E:   global_130 = 0
  loc_191D441:   Exit Sub
  loc_191D442: End If
  loc_191D457: Set var_138 = CVar(CLng(3))(0)
  loc_191D47B: Call Proc_203_59_F51A10(CInt(3), CStr(var_148))
  loc_191D48F: If (var_152 = 0) Then
  loc_191D497:   global_130 = 0
  loc_191D49A:   Exit Sub
  loc_191D49B: End If
  loc_191D4B0: Set var_138 = CVar(CLng(4))(0)
  loc_191D4D4: Call Proc_203_59_F51A10(CInt(4), CStr(var_148))
  loc_191D4E8: If (var_152 = 0) Then
  loc_191D4F0:   global_130 = 0
  loc_191D4F3:   Exit Sub
  loc_191D4F4: End If
  loc_191D509: Set var_138 = CVar(CLng(0))(1)
  loc_191D527: global_130(CStr(DGSite.DispID_41)).Text = var_152
  loc_191D54E: Set var_138 = CVar(CLng(1))(1)
  loc_191D55F: var_150 = CStr(DGSite.DispID_41)
  loc_191D566: Set var_158 = DGSite.DispID_41(var_150)
  loc_191D56C: var_158.Text = global_130
  loc_191D595: If (Proc_183_48_F05F98(Me, var_152, DGSite.DispID_41, global_130, var_152) = 0) Then
  loc_191D59D:   global_130 = 0
  loc_191D5A0:   Exit Sub
  loc_191D5A1: End If
  loc_191D5AC: Set var_138 = var_158(CInt(&HC))
  loc_191D5B2: Call 0.Method_Proc_203_80_191FE600 (global_130, DGSite.DispID_41, global_130)
  loc_191D5BA: var_148 = CVar(var_158) 'Address
  loc_191D5DB: If CBool(Trim(var_148) <> vbNullString) Then
  loc_191D5EF:   Set var_138 = var_158(CInt(&HC))
  loc_191D5F5:   Call 0.Method_Proc_203_80_191FE600 (var_150, " And VIEWLEDGER.Site_Code='")
  loc_191D5FD:   var_152 = var_158.Tag
  loc_191D60D:   var_EC = DGSite.DispID_41 & var_150 & "'"
  loc_191D621: Else
  loc_191D62F:   var_EC = " And VIEWLEDGER.Site_Code='" & MemVar_1F92078 & "'"
  loc_191D635: End If
  loc_191D64A: Set var_138 = CVar(CLng(4))(1)
  loc_191D677: (CStr(Trim(CVar(CStr(DGSite.DispID_41))))).Text = 
  loc_191D6B5: var_168 = CVar(CStr(DGSite.DispID_41)) 'String
  loc_191D6C4: var_B0 = CStr(Trim(var_168))
  loc_191D6D6: var_A0 = vbNullString
  loc_191D6DC: var_A4 = vbNullString
  loc_191D6E2: var_AC = CDbl(0)
  loc_191D709: unk_58337D.Execute "SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "'", var_148, -1
  loc_191D714: Set var_88 = CVar(CLng(4))(2)
  loc_191D738: If (var_88.RecordCount <= 0) Then
  loc_191D73B:   Exit Sub
  loc_191D73C: End If
  loc_191D74E: var_138 = var_88.Fields
  loc_191D756: var_158 = var_138.Item("GroupNature")
  loc_191D7BC: If CBool((var_158.Value = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191D7C3:   var_148 = CVar(var_AC(var_138)) 'Address
  loc_191D7CA:   Proc_183_7_EB0C44(var_168)
  loc_191D7D5:   var_1E8 = 0
  loc_191D7F2:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191D812:   var_1B8 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE<") & var_168 & " " & CVar(var_EC) 
  loc_191D829:   unk_58337D.Execute CStr(var_1B8 & vbNullString), var_1D8, -1
  loc_191D831:   var_138 = var_138.Fields
  loc_191D839:   var_1E8 = var_158.Item(var_158)
  loc_191D841:   var_184 = var_184.Value
  loc_191D84A:   var_AC = CSng(var_1F8)
  loc_191D875: Else
  loc_191D878:   var_104 = MemVar_1F920F4
  loc_191D880:   Proc_183_7_EB0C44(var_148, var_104, var_AC)
  loc_191D889:   var_1A8 = CVar(var_148(var_1F8)) 'Address
  loc_191D890:   Proc_183_7_EB0C44(var_1B8)
  loc_191D89B:   var_238 = 0
  loc_191D8B8:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191D8BF:   var_168 = CVar("SELECT GROUPNATURE FROM PARTY_LIST WHERE SUBCODE='" & var_B0 & "' AND V_DATE>=") 'String
  loc_191D8C9:   var_114 = " AND V_DATE<"
  loc_191D8FF:   unk_58337D.Execute CStr(var_168 & var_148 & var_114 & var_1B8 & " " & CVar(var_EC) & vbNullString), var_228, -1
  loc_191D907:   var_138 = var_138.Fields
  loc_191D90F:   var_238 = var_158.Item(var_158)
  loc_191D917:   var_184 = var_184.Value
  loc_191D920:   var_AC = CSng(var_248)
  loc_191D94E: End If
  loc_191D95E: Set var_138 = New
  loc_191D96D: Call 0.Method_arg_1B8 (var_138, var_158, var_AC)
  loc_191D978: Set var_8C = var_138
  loc_191D981: Set var_8C = var_158
  loc_191D992: If (var_AC <> CDbl(0)) Then
  loc_191D9A0:   Me.Recordset15.AddNew var_104, var_114
  loc_191D9A9:   var_148 = CVar(var_1A8(var_248)) 'Address
  loc_191D9B7:   var_8C.Collect = "V_DATE"
  loc_191D9C6:   If (var_AC < CDbl(0)) Then
  loc_191D9C9:     var_114 = "OPENING BALANCE"
  loc_191D9D8:     var_8C.Collect = "Name"
  loc_191D9E1:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191D9EF:     var_8C.Collect = "cr"
  loc_191D9F7:   Else
  loc_191D9F7:     var_114 = "OPENING BALANCE"
  loc_191DA06:     var_8C.Collect = "Name1"
  loc_191DA0F:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191DA14:     var_104 = "ADJAMT"
  loc_191DA1D:     var_8C.Collect = var_104
  loc_191DA22:   End If
  loc_191DA2D:   var_8C.Update var_104, var_114
  loc_191DA32: End If
  loc_191DA3F: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Credit) Credit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191DA48: var_148 = CVar(var_268(var_104)) 'Address
  loc_191DA4F: Proc_183_7_EB0C44(var_168, var_148, -1, var_138, var_114)
  loc_191DA5B: var_114 = " And "
  loc_191DA6F: Proc_183_7_EB0C44(var_1B8, CVar(var_114(var_114 & var_168 & var_114)))
  loc_191DAB4: unk_58337D.Execute CStr(var_114 & var_1B8 & " AND CREDIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name"), var_148, 
  loc_191DABF: Set var_94 = var_138
  loc_191DAF2: var_104 = "SELECT VIEWLEDGER.V_Date,subgroup.NAME,Max(VIEWLEDGER.V_Type) V_Type,Max(VIEWLEDGER.V_No) V_No,Max(VIEWLEDGER.V_Sno) V_Sno,Max(VIEWLEDGER.DocID) DocID ,Max(VIEWLEDGER.Site_Code) Site_Code,Max(VIEWLEDGER.V_ADD) V_ADD,Max(VIEWLEDGER.Chq_No) Chq_No,Sum(VIEWLEDGER.Debit) Debit,Max(CONVERT(VARCHAR,VIEWLEDGER.CHQ_DATE,103)) AS CHQDATE FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE V_DATE Between "
  loc_191DB02: Proc_183_7_EB0C44(var_168, CVar(var_268(var_104)))
  loc_191DB0A: var_178 = -1 & var_168 
  loc_191DB0E: var_114 = " And "
  loc_191DB22: Proc_183_7_EB0C44(var_1B8)
  loc_191DB59: var_248 = CVar(var_138(var_114 & var_168 & var_114)) & var_1B8 & " AND DEBIT>0 AND PARTY<>'" & CVar(var_B0) & "' " & CVar(var_EC) & " GROUP BY V_DATE,Name" 
  loc_191DB5D: var_150 = CStr(var_248)
  loc_191DB67: unk_58337D.Execute var_150, , 
  loc_191DB72: Set var_90 = var_138
  loc_191DBA7: If Not(var_90.EOF) Then
  loc_191DBD6:   var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191DBE3: End If
  loc_191DBF2: If Not(var_94.EOF) Then
  loc_191DBFB:   var_104 = "V_DATE"
  loc_191DC21:   var_D0 = CDate(var_94.Fields.Item(var_104).Value)
  loc_191DC2E: End If
  loc_191DC30: var_DC = 0
  loc_191DC35: var_DE = 0
  loc_191DC3A: var_E0 = 0
  loc_191DC3F: var_E2 = 0
  loc_191DC44: var_E4 = 0
  loc_191DC49: var_E6 = 0
  loc_191DC4F: var_BC = vbNullString
  loc_191DC55: var_C0 = vbNullString
  loc_191DC65: var_E4 = var_E6(var_150).Text
  loc_191DC6F: var_C8 = CDate(var_150)
  loc_191DC78: ' Referenced from: 191F893
  loc_191DC96: If Not((var_90.EOF And var_94.EOF)) Then
  loc_191DCA8:   If ((var_D0 = var_C8) Or (var_D8 = var_C8)) Then
  loc_191DCB6:     var_8C.AddNew var_104, var_114
  loc_191DCC2:     If (var_D0 = var_C8) Then
  loc_191DCE4:       var_148 = CVar(var_94.Fields.Item("V_Type")) 'Address
  loc_191DCF2:       var_8C.Collect = "V_Type"
  loc_191DD00:       var_114 = CDate(var_D0)
  loc_191DD0E:       var_8C.Collect = "V_DATE"
  loc_191DD32:       var_148 = CVar(var_94.Fields.Item("V_NO")) 'Address
  loc_191DD40:       var_8C.Collect = "V_NO"
  loc_191DD6A:       var_148 = CVar(var_94.Fields.Item("V_SNo")) 'Address
  loc_191DD78:       var_8C.Collect = "V_SNo"
  loc_191DDF2:       var_26C = Me.Fields
  loc_191DE9C:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_94.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191DEA1:       var_B4 = CStr(var_2A8)
  loc_191DF5A:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191DF8B:       var_248 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_94.Fields.Item("V_ADD"))), vbNullString))
  loc_191DF90:       var_B4 = CStr(Trim(Left(CVar(var_94.Fields.Item("Site_Code")), 1)))
  loc_191DFEA:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), vbNullString, "/"))
  loc_191E01C:       var_1C8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(CVar(var_94.Fields.Item("V_Type"))))
  loc_191E021:       var_B4 = CStr(CVar(var_94.Fields.Item("V_ADD")))
  loc_191E04B:       var_114 = vbNullString
  loc_191E06D:       var_198 = (CVar(var_B4) + IIf((var_B4 = vbNullString), var_114, "/"))
  loc_191E0AA:       var_1D8 = (Left(CVar(var_94.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_94.Fields.Item("V_NO")))))
  loc_191E0AF:       var_B4 = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191E0DE:       If (((var_DC = 0) Or (var_E0 = 0)) Or (var_E4 = 0)) Then
  loc_191E0E3:         var_DC = &HFF
  loc_191E10B:         var_148 = CVar(var_94.Fields.Item("Chq_No")) 'Address
  loc_191E134:         If (Proc_183_2_E5A304(Trim(var_148), var_DC, var_148, var_148, var_114, var_148, var_C8) <> vbNullString) Then
  loc_191E177:           var_1A8 = (var_DE + Trim(CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E2, var_E0))))
  loc_191E180:           var_1B8 = (CVar(var_94.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191E1A3:           var_1C8 = CVar(var_94.Fields.Item("ChqDate")) 'Address
  loc_191E1B2:           var_1D8 = (var_D0 + CVar(Proc_183_2_E5A304(var_1C8, Str(CVar(var_94.Fields.Item("V_NO"))), var_DC)))
  loc_191E1B7:           var_BC = CStr(Trim(CVar(var_94.Fields.Item("V_ADD"))))
  loc_191E1D7:         End If
  loc_191E212:         If (Len(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) <> 0) Then
  loc_191E23D:           var_168 = CVar(Proc_183_2_E5A304(CVar(var_94.Fields.Item("Name")))) 'String
  loc_191E24A:           var_8C.Collect = "Name"
  loc_191E294:           var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191E2A6:           var_8C.Collect = "cr"
  loc_191E2B9:           var_E4 = &HFF
  loc_191E2BE:           var_E0 = &HFF
  loc_191E2C4:         Else
  loc_191E2E3:           Set var_138 = CVar(CLng(2))(1)
  loc_191E320:           If CBool((var_E0 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_191E329:             If (var_E4 = 0) Then
  loc_191E367:               var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191E379:               var_8C.Collect = "cr"
  loc_191E38A:               var_114 = "As Per Detail"
  loc_191E399:               var_8C.Collect = "Name"
  loc_191E3A0:               var_E4 = &HFF
  loc_191E3B8:               Set var_138 = CVar(CLng(2))(1)
  loc_191E3EB:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_191E3FB:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191E46F:                 unk_58337D.Execute CStr(var_114 & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value), Str(CVar(var_94.Fields.Item("V_NO"))), -1
  loc_191E47A:                 Set var_98 = var_26C
  loc_191E49C:               End If
  loc_191E49F:             Else
  loc_191E4AE:               If Not(var_98.EOF) Then
  loc_191E4DB:                 var_114 = 0
  loc_191E4ED:                 If (var_98.Fields.Item("Debit").Value > var_114) Then
  loc_191E53D:                   Proc_183_4_EABBA8(var_1C8, CVar(var_98.Fields.Item("Debit")), var_26C, var_E4, var_114)
  loc_191E567:                   var_198 = (1 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191E570:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191E586:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC, " " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value)) 'String
  loc_191E589:                   var_1F8 = (1 + var_1D8)
  loc_191E592:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191E5A0:                   var_8C.Collect = "Name"
  loc_191E5CF:                 Else
  loc_191E61C:                   Proc_183_4_EABBA8(var_1C8, CVar(var_98.Fields.Item("Credit")), vbNullString)
  loc_191E646:                   var_198 = (var_E0 + CVar(Proc_183_15_EAC900(CStr(var_98.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191E64F:                   var_1A8 = (var_94.Fields.Item("V_SNo").Value + " ")
  loc_191E668:                   var_1F8 = (" " & var_94.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_94.Fields.Item("V_SNo").Value + CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC)))
  loc_191E671:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191E67F:                   var_8C.Collect = "Name"
  loc_191E6AB:                 End If
  loc_191E6AE:                 var_98.MoveNext
  loc_191E6B3:               End If
  loc_191E6C4:               If (var_98.EOF = &HFF) Then
  loc_191E6C9:                 var_E0 = &HFF
  loc_191E6CC:               End If
  loc_191E6CC:             End If
  loc_191E6CF:           Else
  loc_191E70A:             var_178 = Format(CVar(var_94.Fields.Item("Credit")), "0.00")
  loc_191E71C:             var_8C.Collect = "cr"
  loc_191E756:             var_BC = CStr(Trim(Mid(var_BC, &H25, 510)))
  loc_191E764:             var_E4 = &HFF
  loc_191E769:             var_E0 = &HFF
  loc_191E76C:           End If
  loc_191E76C:         End If
  loc_191E784:         If (((Len(var_BC) <= 0) And (var_E0 = &HFF)) And (var_E4 = &HFF)) Then
  loc_191E789:           var_DC = 0
  loc_191E78F:           var_94.MoveNext
  loc_191E7A3:           If Not(var_94.EOF) Then
  loc_191E7D2:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191E7E2:           Else
  loc_191E7FE:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(var_DC(var_D0))))
  loc_191E808:           End If
  loc_191E808:         End If
  loc_191E80B:       Else
  loc_191E84A:         If (Len(CStr(Trim(Mid(var_BC, &H25, 510)))) <= 0) Then
  loc_191E84F:           var_DC = 0
  loc_191E854:           var_E0 = 0
  loc_191E859:           var_E4 = 0
  loc_191E85F:           var_94.MoveNext
  loc_191E873:           If Not(var_94.EOF) Then
  loc_191E8A2:             var_D0 = CDate(var_94.Fields.Item("V_DATE").Value)
  loc_191E8B2:           Else
  loc_191E8CE:             var_D0 = CDate(DateAdd("D", CDbl(1), CVar(var_E4(var_D0))))
  loc_191E8D8:           End If
  loc_191E8D8:         End If
  loc_191E8D8:       End If
  loc_191E8D8:     End If
  loc_191E8DF:     If (var_D8 = var_C8) Then
  loc_191E901:       var_148 = CVar(var_90.Fields.Item("V_Type")) 'Address
  loc_191E90F:       var_8C.Collect = "vType"
  loc_191E939:       var_148 = CVar(var_90.Fields.Item("V_NO")) 'Address
  loc_191E947:       var_8C.Collect = "VNo"
  loc_191E955:       var_114 = CDate(var_D8)
  loc_191E963:       var_8C.Collect = "V_DATE"
  loc_191E987:       var_148 = CVar(var_90.Fields.Item("V_SNo")) 'Address
  loc_191E995:       var_8C.Collect = "VSno"
  loc_191EA0F:       var_26C = Me.Fields
  loc_191EAB9:       var_2A8 = (IIf((Me.Fields.Item("LedDivCode").Value = "Yes"), Left(CVar(var_90.Fields.Item("DocID")), 1), vbNullString) + IIf((var_26C.Item("LedSiteCode").Value = "Yes"), Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)), vbNullString))
  loc_191EABE:       var_B8 = CStr(var_2A8)
  loc_191EB77:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191EBA0:       var_228 = IIf((Me.Fields.Item("LedPrefix").Value = "Yes"), Trim(CVar(var_90.Fields.Item("V_ADD"))), vbNullString)
  loc_191EBA8:       var_248 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + var_228)
  loc_191EBAD:       var_B8 = CStr(Trim(Left(CVar(var_90.Fields.Item("Site_Code")), 1)))
  loc_191EC07:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), vbNullString, "/"))
  loc_191EC39:       var_1C8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(CVar(var_90.Fields.Item("V_Type"))))
  loc_191EC3E:       var_B8 = CStr(CVar(var_90.Fields.Item("V_ADD")))
  loc_191EC68:       var_114 = vbNullString
  loc_191EC8A:       var_198 = (CVar(var_B8) + IIf((var_B8 = vbNullString), var_114, "/"))
  loc_191ECC7:       var_1D8 = (Left(CVar(var_90.Fields.Item("DocID")), 1) + Trim(Str(CVar(var_90.Fields.Item("V_NO")))))
  loc_191ECCC:       var_B8 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191ECFB:       If (((var_DE = 0) Or (var_E2 = 0)) Or (var_E6 = 0)) Then
  loc_191ED28:         var_148 = CVar(var_90.Fields.Item("Chq_No")) 'Address
  loc_191ED51:         If (Proc_183_2_E5A304(Trim(var_148), &HFF, var_148, var_114, var_148, var_148, var_D0) <> vbNullString) Then
  loc_191ED94:           var_1A8 = (var_D0 + Trim(CVar(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Chq_No")), CVar(vbNullString & "Ch.No:"), var_E0, var_DC))))
  loc_191ED9D:           var_1B8 = (CVar(var_90.Fields.Item("V_NO")) + " Ch.Dt: ")
  loc_191EDC0:           var_1C8 = CVar(var_90.Fields.Item("ChqDate")) 'Address
  loc_191EDCF:           var_1D8 = (var_E4 + CVar(Proc_183_2_E5A304(var_1C8, Str(CVar(var_90.Fields.Item("V_NO"))), var_E0)))
  loc_191EDD4:           var_C0 = CStr(Trim(CVar(var_90.Fields.Item("V_ADD"))))
  loc_191EDF4:         End If
  loc_191EE2F:         If (Len(Proc_183_2_E5A304(CVar(var_90.Fields.Item("Name")))) <> 0) Then
  loc_191EE51:           var_148 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_191EE5F:           var_8C.Collect = "Name1"
  loc_191EEA5:           var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191EEB7:           var_8C.Collect = "ADJAMT"
  loc_191EECA:           var_E6 = &HFF
  loc_191EECF:           var_E2 = &HFF
  loc_191EED5:         Else
  loc_191EEF4:           Set var_138 = CVar(CLng(2))(1)
  loc_191EF31:           If CBool((var_E2 = 0) And (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes")) Then
  loc_191EF3A:             If (var_E6 = 0) Then
  loc_191EF78:               var_178 = Format(CVar(var_90.Fields.Item("Debit")), "0.00")
  loc_191EF8A:               var_8C.Collect = "ADJAMT"
  loc_191EF9B:               var_114 = "As Per Detail"
  loc_191EFAA:               var_8C.Collect = "Name1"
  loc_191EFB1:               var_E6 = &HFF
  loc_191EFC9:               Set var_138 = CVar(CLng(2))(1)
  loc_191EFFC:               If (Trim(CVar(CStr(DGSite.DispID_41))) = "Yes") Then
  loc_191F00C:                 var_114 = "SELECT subgroup.NAME,VIEWLEDGER.DEBIT,VIEWLEDGER.Credit FROM VIEWLEDGER LEFT JOIN subgroup ON VIEWLEDGER.PARTY=subgroup.SUBCODE WHERE VIEWLEDGER.DOCID='"
  loc_191F080:                 unk_58337D.Execute CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), Str(CVar(var_90.Fields.Item("V_NO"))), -1
  loc_191F08B:                 Set var_9C = var_26C
  loc_191F0AD:               End If
  loc_191F0B0:             Else
  loc_191F0BF:               If Not(var_9C.EOF) Then
  loc_191F0EC:                 var_114 = 0
  loc_191F0FE:                 If (var_9C.Fields.Item("Debit").Value > var_114) Then
  loc_191F14E:                   Proc_183_4_EABBA8(var_1C8, CVar(var_9C.Fields.Item("Debit")), var_26C, var_E6, var_114)
  loc_191F178:                   var_198 = (1 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2), var_178)))
  loc_191F181:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191F197:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC, " " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)) 'String
  loc_191F19A:                   var_1F8 = (1 + var_1D8)
  loc_191F1A3:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Dr")
  loc_191F1B1:                   var_8C.Collect = "Name1"
  loc_191F1E0:                 Else
  loc_191F22D:                   Proc_183_4_EABBA8(var_1C8, CVar(var_9C.Fields.Item("Credit")), vbNullString)
  loc_191F257:                   var_198 = (var_E2 + CVar(Proc_183_15_EAC900(CStr(var_9C.Fields.Item("Name").Value), &H16, Space(2))))
  loc_191F260:                   var_1A8 = (var_90.Fields.Item("V_SNo").Value + " ")
  loc_191F276:                   var_1D8 = CVar(Proc_183_16_EAECDC(CStr(var_1C8), &HC)) 'String
  loc_191F279:                   var_1F8 = (" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value + var_1D8)
  loc_191F282:                   var_208 = ((Me.Fields.Item("LedPrefix").Value = "Yes") + " Cr")
  loc_191F290:                   var_8C.Collect = "Name1"
  loc_191F2BC:                 End If
  loc_191F2BF:                 var_9C.MoveNext
  loc_191F2C4:               End If
  loc_191F2D5:               If (var_9C.EOF = &HFF) Then
  loc_191F2DA:                 var_E2 = &HFF
  loc_191F2DD:               End If
  loc_191F2DD:             End If
  loc_191F2E0:           Else
  loc_191F309:             var_C0 = CStr(Trim(Mid(var_C0, &H25, 510)))
  loc_191F33B:             var_114 = "0.00"
  loc_191F350:             var_178 = Format(CVar(var_90.Fields.Item("Debit")), var_114)
  loc_191F362:             var_8C.Collect = "ADJAMT"
  loc_191F375:             var_E6 = &HFF
  loc_191F37A:             var_E2 = &HFF
  loc_191F37D:           End If
  loc_191F37D:         End If
  loc_191F395:         If (((Len(var_C0) <= 0) And (var_E2 = &HFF)) And (var_E6 = &HFF)) Then
  loc_191F39A:           var_DE = 0
  loc_191F3A0:           var_90.MoveNext
  loc_191F3B4:           If Not(var_90.EOF) Then
  loc_191F3E3:             var_D8 = CDate(var_90.Fields.Item("V_DATE").Value)
  loc_191F3F3:           Else
  loc_191F40F:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(var_DE(var_D8))))
  loc_191F419:           End If
  loc_191F419:         End If
  loc_191F41C:       Else
  loc_191F45B:         If (Len(CStr(Trim(Mid(var_C0, &H25, 510)))) <= 0) Then
  loc_191F460:           var_DE = 0
  loc_191F465:           var_E2 = 0
  loc_191F46A:           var_E6 = 0
  loc_191F470:           var_90.MoveNext
  loc_191F47B:           var_14A = var_90.EOF
  loc_191F484:           If Not(var_14A) Then
  loc_191F48D:             var_104 = "V_DATE"
  loc_191F4B3:             var_D8 = CDate(var_90.Fields.Item(var_104).Value)
  loc_191F4C3:           Else
  loc_191F4DF:             var_D8 = CDate(DateAdd("D", CDbl(1), CVar(var_E6(var_D8))))
  loc_191F4E9:           End If
  loc_191F4E9:         End If
  loc_191F4E9:       End If
  loc_191F4E9:     End If
  loc_191F4F4:     var_8C.Update var_104, var_114
  loc_191F4FC:   Else
  loc_191F516:     var_158 = var_88.Fields.Item("GroupNature")
  loc_191F51E:     var_148 = var_158.Value
  loc_191F57C:     If CBool((var_148 = "A") Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191F58A:       Proc_183_7_EB0C44(var_148, var_C8, var_D8, var_E2, var_DE, var_D8)
  loc_191F595:       var_218 = 0
  loc_191F5B2:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191F5B9:       var_168 = CVar(CStr("A" & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191F5BF:       var_178 = var_168 & var_148 
  loc_191F5D2:       var_1A8 = var_178 & " " & CVar(var_EC) 
  loc_191F5E9:       unk_58337D.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191F5F1:       var_138 = var_138.Fields
  loc_191F5F9:       var_218 = var_158.Item(var_158)
  loc_191F601:       var_184 = var_184.Value
  loc_191F60A:       var_AC = CSng(var_1D8)
  loc_191F633:     Else
  loc_191F636:       var_104 = MemVar_1F920F4
  loc_191F63E:       Proc_183_7_EB0C44(var_148, var_104, var_AC, var_1D8, var_E2)
  loc_191F64E:       Proc_183_7_EB0C44(var_1A8, var_C8, var_E6, var_178)
  loc_191F659:       var_258 = 0
  loc_191F676:       var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191F67D:       var_168 = CVar(CStr(" " & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191F687:       var_114 = " AND V_DATE<="
  loc_191F69C:       var_1C8 = var_168 & var_148 & var_114 & var_1A8 & " " 
  loc_191F6A6:       var_1D8 = var_1C8 & CVar(var_EC) 
  loc_191F6BD:       unk_58337D.Execute CStr(var_1D8 & vbNullString), vbNullString, -1
  loc_191F6C5:       var_138 = var_138.Fields
  loc_191F6CD:       var_258 = var_158.Item(var_158)
  loc_191F6D5:       var_184 = var_184.Value
  loc_191F6DE:       var_AC = CSng(var_228)
  loc_191F70A:     End If
  loc_191F711:     If (var_AC <> CDbl(0)) Then
  loc_191F71F:       var_8C.AddNew var_104, var_114
  loc_191F727:       var_114 = CDate(var_C8)
  loc_191F735:       var_8C.Collect = "V_DATE"
  loc_191F741:       If (var_AC > CDbl(0)) Then
  loc_191F744:         var_114 = "CLOSING BALANCE"
  loc_191F753:         var_8C.Collect = "Name"
  loc_191F75C:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191F76A:         var_8C.Collect = "cr"
  loc_191F772:       Else
  loc_191F772:         var_114 = "CLOSING BALANCE"
  loc_191F781:         var_8C.Collect = "Name1"
  loc_191F78A:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191F78F:         var_104 = "ADJAMT"
  loc_191F798:         var_8C.Collect = var_104
  loc_191F79D:       End If
  loc_191F7A8:       var_8C.Update var_104, var_114
  loc_191F7AD:     End If
  loc_191F7B4:     If (var_D0 <= var_D8) Then
  loc_191F7C0:       If (var_D0 = CDate("12:00:00 AM")) Then
  loc_191F7C6:         var_C8 = var_D8
  loc_191F7CC:       Else
  loc_191F7CF:         var_C8 = var_D0
  loc_191F7D2:       End If
  loc_191F7D5:     Else
  loc_191F7DE:       If (var_D8 = CDate("12:00:00 AM")) Then
  loc_191F7E4:         var_C8 = var_D0
  loc_191F7EA:       Else
  loc_191F7ED:         var_C8 = var_D8
  loc_191F7F0:       End If
  loc_191F7F0:     End If
  loc_191F7F7:     If (var_AC <> CDbl(0)) Then
  loc_191F805:       var_8C.AddNew var_104, var_114
  loc_191F80D:       var_114 = CDate(var_C8)
  loc_191F81B:       var_8C.Collect = "V_DATE"
  loc_191F827:       If (var_AC < CDbl(0)) Then
  loc_191F82A:         var_114 = "OPENING BALANCE"
  loc_191F839:         var_8C.Collect = "Name"
  loc_191F842:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191F850:         var_8C.Collect = "cr"
  loc_191F858:       Else
  loc_191F858:         var_114 = "OPENING BALANCE"
  loc_191F867:         var_8C.Collect = "Name1"
  loc_191F870:         var_114 = CVar(Abs(var_AC)) 'Double
  loc_191F875:         var_104 = "ADJAMT"
  loc_191F87E:         var_8C.Collect = var_104
  loc_191F883:       End If
  loc_191F88E:       var_8C.Update var_104, var_114
  loc_191F893:     End If
  loc_191F893:   End If
  loc_191F893:   GoTo loc_191DC78
  loc_191F896: End If
  loc_191F8B0: var_158 = var_88.Fields.Item("GroupNature")
  loc_191F8B8: var_148 = var_158.Value
  loc_191F8C0: var_114 = "A"
  loc_191F916: If CBool((var_148 = var_114) Or (var_88.Fields.Item("GroupNature").Value = "L")) Then
  loc_191F924:   Proc_183_7_EB0C44(var_148, var_C8, var_114, var_114, var_114, var_114)
  loc_191F92F:   var_218 = 0
  loc_191F94C:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191F953:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE<=") 'String
  loc_191F95D:   var_114 = " "
  loc_191F96C:   var_1A8 = var_168 & var_148 & var_114 & CVar(var_EC) 
  loc_191F983:   unk_58337D.Execute CStr(var_1A8 & vbNullString), var_1C8, -1
  loc_191F98B:   var_138 = var_138.Fields
  loc_191F993:   var_218 = var_158.Item(var_158)
  loc_191F99B:   var_184 = var_184.Value
  loc_191F9A4:   var_AC = CSng(var_1D8)
  loc_191F9CD: Else
  loc_191F9D0:   var_104 = MemVar_1F920F4
  loc_191F9D8:   Proc_183_7_EB0C44(var_148, var_104, var_AC, var_1D8, var_114)
  loc_191F9E8:   Proc_183_7_EB0C44(var_1A8, var_C8, var_C8, var_C8)
  loc_191F9F3:   var_258 = 0
  loc_191FA10:   var_150 = "SELECT ISNULL(SUM(CREDIT),0)-ISNULL(SUM(DEBIT),0) FROM VIEWLEDGER WHERE PARTY='" & var_B0
  loc_191FA17:   var_168 = CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value) & "' AND V_DATE>=") 'String
  loc_191FA1D:   var_178 = var_168 & var_148 
  loc_191FA21:   var_114 = " AND V_DATE<="
  loc_191FA26:   var_198 = var_178 & var_114 
  loc_191FA57:   unk_58337D.Execute CStr(var_198 & var_1A8 & " " & CVar(var_EC) & vbNullString), vbNullString, -1
  loc_191FA5F:   var_138 = var_138.Fields
  loc_191FA67:   var_258 = var_158.Item(var_158)
  loc_191FA6F:   var_184 = var_184.Value
  loc_191FA78:   var_AC = CSng(var_228)
  loc_191FAA4: End If
  loc_191FAAB: If (var_AC <> CDbl(0)) Then
  loc_191FAB9:   var_8C.AddNew var_104, var_114
  loc_191FAC1:   var_114 = CDate(var_C8)
  loc_191FACF:   var_8C.Collect = "V_DATE"
  loc_191FADB:   If (var_AC > CDbl(0)) Then
  loc_191FADE:     var_114 = "CLOSING BALANCE"
  loc_191FAED:     var_8C.Collect = "Name"
  loc_191FAF6:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191FB04:     var_8C.Collect = "cr"
  loc_191FB0C:   Else
  loc_191FB0C:     var_114 = "CLOSING BALANCE"
  loc_191FB1B:     var_8C.Collect = "Name1"
  loc_191FB24:     var_114 = CVar(Abs(var_AC)) 'Double
  loc_191FB29:     var_104 = "ADJAMT"
  loc_191FB32:     var_8C.Collect = var_104
  loc_191FB37:   End If
  loc_191FB42:   var_8C.Update var_104, var_114
  loc_191FB47: End If
  loc_191FB5B: If (var_8C.RecordCount > 0) Then
  loc_191FB61:   var_8C.MoveFirst
  loc_191FB66: End If
  loc_191FB7A: If (var_8C.RecordCount <= 0) Then
  loc_191FB83:   Call 0.Method_arg_50 (CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value), var_114, var_114, var_114, var_114, var_114)
  loc_191FBA4:   MsgBox("** No Records Found to Print **", &H40, CVar(CStr(var_114 & var_90.Fields.Item("DocID").Value & "' AND V_SNO<>" & var_90.Fields.Item("V_SNo").Value)), var_178, var_198)
  loc_191FBB9:   global_130 = 0
  loc_191FBBC:   Exit Sub
  loc_191FBBD: End If
  loc_191FBC0: var_2AA = arg_C
  loc_191FBC9: If (var_2AA = 1) Then
  loc_191FBED:   MsgBox("Please Set 80 Col. Paper in Your D.M.Printer", &H40, "Paper Setting", var_178, var_198)
  loc_191FC12:   Set var_138 = CVar(CLng(3))(1)
  loc_191FC3E:   Set var_184 = var_8C
  loc_191FC57:   Call 0.Method_arg_1E4 (Me, var_184, CLng(Val(CStr(DGSite.DispID_41))), var_14A, Val(CStr(DGSite.DispID_41)), var_2AA)
  loc_191FC62:   Set var_8C = var_184
  loc_191FC68:   var_DA = var_14A
  loc_191FC7F:   global_130 = 0
  loc_191FC82:   GoTo loc_191FDFD
  loc_191FC88: Else
  loc_191FC91:   var_150 = MemVar_1F923B0 & "\FaRozNamch.ttx"
  loc_191FC9E:   Set var_138 = var_8C 
  loc_191FCAA:   var_14A = CreateFieldDefFile(var_138, var_150, &HFF, global_130, var_DA, global_130)
  loc_191FCB4:   Set var_8C = var_138
  loc_191FCBD:   var_2C4 = CVar(var_14A) 'Variant
  loc_191FCE0:   var_138 = Me.Fields
  loc_191FCF8:   var_114 = "No"
  loc_191FD08:   var_124 = "LedSiteCode"
  loc_191FD74:   var_1D8 = (var_138.Item("LedDivCode").Value = var_114) And (Me.Fields.Item(var_124).Value = "No") And (Me.Fields.Item("LedPrefix").Value = "No")
  loc_191FD92:   If CBool(var_1D8) Then
  loc_191FDA1:     Call 0.Method_arg_EC (var_138, var_14A, var_AC, var_228)
  loc_191FDAC:     MemVar_1F921E4 = var_138
  loc_191FDB6:   Else
  loc_191FDC2:     Call 0.Method_arg_E8 (var_138, var_C8)
  loc_191FDCD:     MemVar_1F921E4 = var_138
  loc_191FDD4:   End If
  loc_191FDED:   Call 0.Method_arg_64 (var_138, CVar(var_8C), var_114)
  loc_191FDF5:   Call 0.Method_arg_2C (var_124, var_C8)
  loc_191FDFD: End If
  loc_191FDFD: ' Referenced from: 191FC82
  loc_191FE02: Set var_88 = Nothing
  loc_191FE0A: Set var_90 = Nothing
  loc_191FE12: Set var_94 = Nothing
  loc_191FE1A: Set var_98 = Nothing
  loc_191FE22: Set var_9C = Nothing
  loc_191FE2A: Set var_8C = Nothing
  loc_191FE2D: Exit Sub
  loc_191FE2E: ' Referenced from: 191D334
  loc_191FE3C: Call 0.Method_arg_50 (var_150, 0)
  loc_191FE51: Proc_183_57_104AA84(var_150, "RozNamcha")
  loc_191FE5D: Exit Sub
End Sub

Public Sub Proc_203_81_196F388
  'Data Table: 583330
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_BC As Recordset15
  Dim var_10C As Fields15
  Dim var_11C As Variant
  Dim var_E8 As Variant
  Dim var_B8 As Recordset15
  Dim var_164 As Variant
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_16C As Recordset15
  Dim var_144 As Variant
  Dim var_C4 As Double
  Dim var_154 As Variant
  Dim var_1A4 As Variant
  Dim var_21C As Variant
  Dim unk_58337D As Connection15
  Dim var_C8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_244 As Recordset15
  loc_196C648: On Error Goto loc_196F355
  loc_196C660: Set var_10C = CVar(CLng(0))(0)
  loc_196C684: Call Proc_203_59_F51A10(CInt(0), CStr(var_11C))
  loc_196C698: If (var_126 = 0) Then
  loc_196C6A0:   global_130 = 0
  loc_196C6A3:   Exit Sub
  loc_196C6A4: End If
  loc_196C6AB: var_124 = var_8C & " Where Convert(Varchar(11),FromDate,103) +'-'+ Convert(Varchar(11),ToDate,103) in ('"
  loc_196C6C3: Set var_10C = CVar(CLng(0))(2)
  loc_196C6FE: Call Proc_203_83_1162954(New, var_10C, global_130)
  loc_196C706: Set var_B8 = var_10C
  loc_196C710: var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_124 & CStr(DGSite.DispID_41) & "') "
  loc_196C733: Me.Connection15.Execute var_124 & " Order By B.BudgetCrAmt,B.BudgetDrAmt", var_11C, -1
  loc_196C73E: Set var_BC = var_10C
  loc_196C79D: var_AC = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("FromDate"))), "DD/MM/YYYY"))
  loc_196C804: var_B0 = CStr(Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"))
  loc_196C829: If (var_BC.RecordCount > 0) Then
  loc_196C82C:   ' Referenced from: 196F1E3
  loc_196C83B:   If Not(var_BC.EOF) Then
  loc_196C844:     var_D8 = "BudgetCRAmt"
  loc_196C868:     var_E8 = 0
  loc_196C87A:     If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196C880:       Set var_16C = var_B8 
  loc_196C88F:       var_B8.AddNew var_D8, var_E8
  loc_196C8F3:       var_F8 = "-"
  loc_196C8F8:       var_164 = (Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_196C914:       var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196C923:       var_1C4 = (1 + Format(var_184, "DD/MM/YYYY"))
  loc_196C931:       var_16C.Collect = "BudgetPeriod"
  loc_196C96F:       var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196C97D:       var_16C.Collect = "FromDate"
  loc_196C9A7:       var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196C9B5:       var_16C.Collect = "ToDate"
  loc_196C9E8:       var_124 = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), var_1C4, 1, Format(DateAdd("YYYY", CDbl(&HFF), CVar(var_BC.Fields.Item("ToDate"))), "DD/MM/YYYY"), 1)
  loc_196C9F9:       If (var_124 <> vbNullString) Then
  loc_196CA1B:         var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196CA29:         var_16C.Collect = "AcCode"
  loc_196CA5C:         var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, 1)) 'String
  loc_196CA69:         var_16C.Collect = "AcName"
  loc_196CA7B:       Else
  loc_196CAB4:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, 1) <> vbNullString) Then
  loc_196CAD6:           var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196CAE4:           var_16C.Collect = "AcGroupCode"
  loc_196CB17:           var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), 1)) 'String
  loc_196CB24:           var_16C.Collect = "AcGroupName"
  loc_196CB33:         End If
  loc_196CB33:       End If
  loc_196CB52:       var_11C = CVar(var_BC.Fields.Item("BudgetCRAmt")) 'Address
  loc_196CB60:       var_16C.Collect = "BudgetedAmt"
  loc_196CB7A:       var_16C.Collect = "BudgetCrDr"
  loc_196CBBE:       If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CDbl(0), "Cr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196CBCE:         var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196CBE5:         var_10C = var_BC.Fields
  loc_196CBFD:         var_144 = "Cr" & var_10C.Item("AcCode").Value 
  loc_196CC30:         Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_23C, -1)
  loc_196CC6B:         Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196CC8A:         unk_58337D.Execute CStr(var_144 & var_1EC & "'"), 1, var_10C
  loc_196CC95:         Set var_C8 = var_240
  loc_196CCD7:         If (var_C8.RecordCount > 0) Then
  loc_196CCF9:           var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196CD00:           Proc_183_3_E7D1C8(var_144)
  loc_196CD09:           var_C4 = CSng(var_144)
  loc_196CD16:         End If
  loc_196CD19:       Else
  loc_196CD52:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196CD62:           var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196CD89:           var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196CD91:           var_144 = "Cr" & var_11C 
  loc_196CDC4:           Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_23C)
  loc_196CDCC:           var_1A4 = -1 & var_184 
  loc_196CDFF:           Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196CE10:           var_21C = var_240 & var_1EC & vbNullString 
  loc_196CE1E:           unk_58337D.Execute CStr(var_21C), var_11C, 
  loc_196CE29:           Set var_C8 = var_240
  loc_196CE6B:           If (var_C8.RecordCount > 0) Then
  loc_196CE8D:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196CE94:             Proc_183_3_E7D1C8(var_144)
  loc_196CE9D:             var_C4 = CSng(var_144)
  loc_196CEAA:           End If
  loc_196CEAA:         End If
  loc_196CEAA:       End If
  loc_196CEAE:       var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196CEBC:       var_16C.Collect = "ActualAmt"
  loc_196CEFD:       If (var_16C.Fields.Item("ActualAmt").Value > 0) Then
  loc_196CF24:         var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196CF36:         var_16C.Collect = "ActualCrDr"
  loc_196CF9A:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196CFA8:         var_16C.Collect = "Varience"
  loc_196D013:         var_154 = (var_16C.Fields.Item("ActualAmt").Value - var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196D041:         var_184 = (var_154 / var_16C.Fields.Item("BudgetedAmt").Value)
  loc_196D04A:         var_1A4 = (var_184 * 100)
  loc_196D058:         var_16C.Collect = "VariencePer"
  loc_196D075:       End If
  loc_196D084:       var_16C.Collect = "GroupType"
  loc_196D0C2:       If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196D0CC:         var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196D0D3:         var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "CrGroup", var_1A4, var_154) & "-"
  loc_196D10E:         var_154 = CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196D112:         var_E8 = "' Order By B.BudgetCrAmt"
  loc_196D11C:         var_88 = CStr(var_154 & var_E8)
  loc_196D13D:       Else
  loc_196D176:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196D180:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196D187:           var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196D1AA:           var_10C = var_BC.Fields
  loc_196D1BA:           var_11C = var_10C.Item("AcGroupCode").Value
  loc_196D1D0:           var_88 = CStr(CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "' Order By B.BudgetCrAmt")
  loc_196D1EE:         End If
  loc_196D1EE:       End If
  loc_196D204:       unk_58337D.Execute var_88, var_11C, -1
  loc_196D20F:       Set var_B4 = var_10C
  loc_196D22C:       If (var_B4.RecordCount > 0) Then
  loc_196D26B:         If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_196D28D:           var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_196D29B:           var_16C.Collect = "PreBudgetedAmt"
  loc_196D2B5:           var_16C.Collect = "PreBudgetCrDr"
  loc_196D2BD:           var_C4 = CDbl(0)
  loc_196D2F9:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196D309:             var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196D320:             var_10C = var_B4.Fields
  loc_196D330:             var_11C = var_10C.Item("AcCode").Value
  loc_196D338:             var_144 = "Cr" & var_11C 
  loc_196D36B:             Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196D3A6:             Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D3BC:             unk_58337D.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_196D3C7:             Set var_C8 = var_240
  loc_196D407:             If (var_C8.RecordCount > 0) Then
  loc_196D429:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D430:               Proc_183_3_E7D1C8(var_144)
  loc_196D439:               var_C4 = CSng(var_144)
  loc_196D446:             End If
  loc_196D449:           Else
  loc_196D482:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196D492:               var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196D4B9:               var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196D4C1:               var_144 = "Cr" & var_11C 
  loc_196D4F4:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196D4FC:               var_1A4 = -1 & var_184 
  loc_196D52F:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196D545:               unk_58337D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196D550:               Set var_C8 = var_240
  loc_196D590:               If (var_C8.RecordCount > 0) Then
  loc_196D5B2:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D5B9:                 Proc_183_3_E7D1C8(var_144)
  loc_196D5C2:                 var_C4 = CSng(var_144)
  loc_196D5CF:               End If
  loc_196D5CF:             End If
  loc_196D5CF:           End If
  loc_196D5D3:           var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196D5E1:           var_16C.Collect = "PreActualAmt"
  loc_196D622:           If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196D649:             var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196D65B:             var_16C.Collect = "PreActualCrDr"
  loc_196D6BF:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196D6CD:             var_16C.Collect = "PreVarience"
  loc_196D738:             var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196D766:             var_184 = (var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196D76F:             var_1A4 = (var_184 * 100)
  loc_196D77D:             var_16C.Collect = "PreVariencePer"
  loc_196D79A:           End If
  loc_196D79D:         Else
  loc_196D7D9:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_196D7FB:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_196D809:             var_16C.Collect = "PreBudgetedAmt"
  loc_196D823:             var_16C.Collect = "PreBudgetCrDr"
  loc_196D82B:             var_C4 = CDbl(0)
  loc_196D867:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode")), var_1A4) <> vbNullString) Then
  loc_196D877:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196D89E:               var_11C = var_B4.Fields.Item("AcCode").Value
  loc_196D8A6:               var_144 = "Dr" & var_11C 
  loc_196D8AF:               var_154 = var_144 & "' And L.V_Date Between " 
  loc_196D8D9:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_196D914:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_196D92A:               unk_58337D.Execute CStr("Dr" & var_1EC), var_C4, var_11C
  loc_196D935:               Set var_C8 = var_240
  loc_196D975:               If (var_C8.RecordCount > 0) Then
  loc_196D997:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196D99E:                 Proc_183_3_E7D1C8(var_144)
  loc_196D9A7:                 var_C4 = CSng(var_144)
  loc_196D9B4:               End If
  loc_196D9B7:             Else
  loc_196D9F0:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196DA00:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196DA27:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196DA2F:                 var_144 = "Dr" & var_11C 
  loc_196DA62:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196DA6A:                 var_1A4 = -1 & var_184 
  loc_196DA9D:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_196DAB3:                 unk_58337D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196DABE:                 Set var_C8 = var_240
  loc_196DAFE:                 If (var_C8.RecordCount > 0) Then
  loc_196DB20:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196DB27:                   Proc_183_3_E7D1C8(var_144)
  loc_196DB30:                   var_C4 = CSng(var_144)
  loc_196DB3D:                 End If
  loc_196DB3D:               End If
  loc_196DB3D:             End If
  loc_196DB41:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196DB4F:             var_16C.Collect = "PreActualAmt"
  loc_196DB90:             If (var_16C.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196DBB7:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196DBC9:               var_16C.Collect = "PreActualCrDr"
  loc_196DC2D:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196DC3B:               var_16C.Collect = "PreVarience"
  loc_196DCA6:               var_154 = (var_16C.Fields.Item("PreActualAmt").Value - var_16C.Fields.Item("PreBudgetedAmt").Value)
  loc_196DCDD:               var_1A4 = ((var_154 / var_16C.Fields.Item("PreBudgetedAmt").Value) * 100)
  loc_196DCEB:               var_16C.Collect = "PreVariencePer"
  loc_196DD08:             End If
  loc_196DD08:           End If
  loc_196DD08:         End If
  loc_196DD08:       End If
  loc_196DD0A:       Set var_16C = Nothing 
  loc_196DD11:     Else
  loc_196DD17:       var_D8 = "BudgetDrAmt"
  loc_196DD3B:       var_E8 = 0
  loc_196DD4D:       If (var_BC.Fields.Item(var_D8).Value > var_E8) Then
  loc_196DD53:         Set var_244 = var_B8 
  loc_196DD62:         var_B8.AddNew var_D8, var_E8
  loc_196DDBE:         var_154 = Format(CVar(var_BC.Fields.Item("FromDate")), "DD/MM/YYYY")
  loc_196DDC6:         var_F8 = "-"
  loc_196DDCB:         var_164 = (var_154 + "PreBudgetedAmt")
  loc_196DDDE:         var_1A4 = "DD/MM/YYYY"
  loc_196DDE7:         var_184 = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196DDF6:         var_1C4 = (1 + Format(var_184, var_1A4))
  loc_196DE04:         var_244.Collect = "BudgetPeriod"
  loc_196DE42:         var_11C = CVar(var_BC.Fields.Item("FromDate")) 'Address
  loc_196DE50:         var_244.Collect = "FromDate"
  loc_196DE7A:         var_11C = CVar(var_BC.Fields.Item("ToDate")) 'Address
  loc_196DE88:         var_244.Collect = "ToDate"
  loc_196DEBB:         var_124 = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_BC.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("ToDate")), 1, var_16C.Fields.Item("PreBudgetedAmt").Value, 1)
  loc_196DECC:         If (var_124 <> vbNullString) Then
  loc_196DEEE:           var_11C = CVar(var_BC.Fields.Item("AcCode")) 'Address
  loc_196DEFC:           var_244.Collect = "AcCode"
  loc_196DF2F:           var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcName")), CVar(var_BC.Fields.Item("AcName")), 1, var_1A4)) 'String
  loc_196DF3C:           var_244.Collect = "AcName"
  loc_196DF4E:         Else
  loc_196DF87:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_144, var_154) <> vbNullString) Then
  loc_196DFA9:             var_11C = CVar(var_BC.Fields.Item("AcGroupCode")) 'Address
  loc_196DFB7:             var_244.Collect = "AcGroupCode"
  loc_196DFEA:             var_144 = CVar(Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupName")), CVar(var_BC.Fields.Item("AcGroupName")), var_154)) 'String
  loc_196DFF7:             var_244.Collect = "AcGroupName"
  loc_196E006:           End If
  loc_196E006:         End If
  loc_196E025:         var_11C = CVar(var_BC.Fields.Item("BudgetDrAmt")) 'Address
  loc_196E033:         var_244.Collect = "BudgetedAmt"
  loc_196E04D:         var_244.Collect = "BudgetCrDr"
  loc_196E055:         var_C4 = CDbl(0)
  loc_196E091:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_BC.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196E0A1:           var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196E0D0:           var_144 = "Dr" & var_BC.Fields.Item("AcCode").Value 
  loc_196E103:           Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196E13E:           Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196E154:           unk_58337D.Execute CStr(var_144 & var_1EC), "Dr", var_C4
  loc_196E15F:           Set var_C8 = var_240
  loc_196E19F:           If (var_C8.RecordCount > 0) Then
  loc_196E1C1:             var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196E1C8:             Proc_183_3_E7D1C8(var_144)
  loc_196E1D1:             var_C4 = CSng(var_144)
  loc_196E1DE:           End If
  loc_196E1E1:         Else
  loc_196E21A:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196E22A:             var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196E251:             var_11C = var_BC.Fields.Item("AcGroupCode").Value
  loc_196E259:             var_144 = "Dr" & var_11C 
  loc_196E28C:             Proc_183_7_EB0C44(var_184, CVar(var_BC.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196E294:             var_1A4 = -1 & var_184 
  loc_196E2C7:             Proc_183_7_EB0C44(var_1EC, CVar(var_BC.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196E2DD:             unk_58337D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196E2E8:             Set var_C8 = var_240
  loc_196E328:             If (var_C8.RecordCount > 0) Then
  loc_196E34A:               var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196E351:               Proc_183_3_E7D1C8(var_144)
  loc_196E35A:               var_C4 = CSng(var_144)
  loc_196E367:             End If
  loc_196E367:           End If
  loc_196E367:         End If
  loc_196E36B:         var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196E379:         var_244.Collect = "ActualAmt"
  loc_196E3BA:         If (var_244.Fields.Item("ActualAmt").Value > 0) Then
  loc_196E3E1:           var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196E3F3:           var_244.Collect = "ActualCrDr"
  loc_196E457:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_196E465:           var_244.Collect = "Varience"
  loc_196E4D0:           var_154 = (var_244.Fields.Item("ActualAmt").Value - var_244.Fields.Item("BudgetedAmt").Value)
  loc_196E4FE:           var_184 = (var_154 / var_244.Fields.Item("BudgetedAmt").Value)
  loc_196E507:           var_1A4 = (var_184 * 100)
  loc_196E515:           var_244.Collect = "VariencePer"
  loc_196E532:         End If
  loc_196E541:         var_244.Collect = "GroupType"
  loc_196E57F:         If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) <> vbNullString) Then
  loc_196E589:           var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196E590:           var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcCode")), "DrGroup", var_1A4, var_154) & "-"
  loc_196E5CB:           var_154 = CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcCode='") & var_BC.Fields.Item("AcCode").Value 
  loc_196E5CF:           var_E8 = "'"
  loc_196E5D9:           var_88 = CStr(var_154 & var_E8)
  loc_196E5FA:         Else
  loc_196E633:           If (Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) <> vbNullString) Then
  loc_196E63D:             var_124 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where convert(varchar(11),FromDate,103) +'-'+ convert(varchar(11),toDate,103) in ('" & var_AC
  loc_196E644:             var_12C = Proc_183_2_E5A304(CVar(var_BC.Fields.Item("AcGroupCode")), var_154, var_E8) & "-"
  loc_196E667:             var_10C = var_BC.Fields
  loc_196E677:             var_11C = var_10C.Item("AcGroupCode").Value
  loc_196E68D:             var_88 = CStr(CVar(CStr(DGSite.DispID_41) & var_B0 & "') And B.AcGroupCode='") & var_11C & "'")
  loc_196E6AB:           End If
  loc_196E6AB:         End If
  loc_196E6C1:         unk_58337D.Execute var_88, var_11C, -1
  loc_196E6CC:         Set var_B4 = var_10C
  loc_196E6E9:         If (var_B4.RecordCount > 0) Then
  loc_196E728:           If (var_B4.Fields.Item("BudgetDrAmt").Value > 0) Then
  loc_196E74A:             var_11C = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_196E758:             var_244.Collect = "PreBudgetedAmt"
  loc_196E772:             var_244.Collect = "PreBudgetCrDr"
  loc_196E77A:             var_C4 = CDbl(0)
  loc_196E7B6:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_196E7C6:               var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196E7DD:               var_10C = var_B4.Fields
  loc_196E7ED:               var_11C = var_10C.Item("AcCode").Value
  loc_196E7F5:               var_144 = "Dr" & var_11C 
  loc_196E828:               Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "' And L.V_Date Between ", var_21C, -1)
  loc_196E863:               Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196E879:               unk_58337D.Execute CStr(var_10C & var_1EC), var_C4, var_11C
  loc_196E884:               Set var_C8 = var_240
  loc_196E8C4:               If (var_C8.RecordCount > 0) Then
  loc_196E8E6:                 var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196E8ED:                 Proc_183_3_E7D1C8(var_144)
  loc_196E8F6:                 var_C4 = CSng(var_144)
  loc_196E903:               End If
  loc_196E906:             Else
  loc_196E93F:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196E94F:                 var_E8 = "Select isnull(Sum(L.AmtDr),0)-isnull(Sum(L.AmtCr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196E976:                 var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196E97E:                 var_144 = "Dr" & var_11C 
  loc_196E9B1:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196E9B9:                 var_1A4 = -1 & var_184 
  loc_196E9EC:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_240 & var_184 & " And ")
  loc_196EA02:                 unk_58337D.Execute CStr(var_240 & var_1EC), var_11C, 
  loc_196EA0D:                 Set var_C8 = var_240
  loc_196EA4D:                 If (var_C8.RecordCount > 0) Then
  loc_196EA6F:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196EA76:                   Proc_183_3_E7D1C8(var_144)
  loc_196EA7F:                   var_C4 = CSng(var_144)
  loc_196EA8C:                 End If
  loc_196EA8C:               End If
  loc_196EA8C:             End If
  loc_196EA90:             var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196EA9E:             var_244.Collect = "PreActualAmt"
  loc_196EADF:             If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196EB06:               var_154 = IIf((var_C4 > CDbl(0)), "Dr", "Cr")
  loc_196EB18:               var_244.Collect = "PreActualCrDr"
  loc_196EB7C:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196EB8A:               var_244.Collect = "PreVarience"
  loc_196EBF5:               var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196EC23:               var_184 = (var_154 / var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196EC2C:               var_1A4 = (var_184 * 100)
  loc_196EC3A:               var_244.Collect = "PreVariencePer"
  loc_196EC57:             End If
  loc_196EC5A:           Else
  loc_196EC96:             If (var_B4.Fields.Item("BudgetCRAmt").Value > 0) Then
  loc_196ECB8:               var_11C = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_196ECC6:               var_244.Collect = "PreBudgetedAmt"
  loc_196ECE0:               var_244.Collect = "PreBudgetCrDr"
  loc_196ECE8:               var_C4 = CDbl(0)
  loc_196ED13:               var_124 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), var_C4, "Cr", CVar(var_B4.Fields.Item("AcCode")), var_1A4)
  loc_196ED24:               If (var_124 <> vbNullString) Then
  loc_196ED34:                 var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode='"
  loc_196ED5B:                 var_11C = var_B4.Fields.Item("AcCode").Value
  loc_196ED63:                 var_144 = "Cr" & var_11C 
  loc_196ED6C:                 var_154 = var_144 & "' And L.V_Date Between " 
  loc_196ED96:                 Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_154, var_21C, -1, var_240)
  loc_196EDD1:                 Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_154 & var_184 & " And ", var_154)
  loc_196EDE7:                 unk_58337D.Execute CStr("Cr" & var_1EC), var_C4, var_11C
  loc_196EDF2:                 Set var_C8 = var_240
  loc_196EE32:                 If (var_C8.RecordCount > 0) Then
  loc_196EE54:                   var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196EE5B:                   Proc_183_3_E7D1C8(var_144)
  loc_196EE64:                   var_C4 = CSng(var_144)
  loc_196EE71:                 End If
  loc_196EE74:               Else
  loc_196EEAD:                 If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_C4) <> vbNullString) Then
  loc_196EEBD:                   var_E8 = "Select isnull(Sum(L.AmtCr),0)-isnull(Sum(L.AmtDr),0) as LedAmt From Ledger L Where SubCode IN (Select SubCode From SubGroup Where GroupCode ='"
  loc_196EEE4:                   var_11C = var_B4.Fields.Item("AcGroupCode").Value
  loc_196EEEC:                   var_144 = "Cr" & var_11C 
  loc_196EF1F:                   Proc_183_7_EB0C44(var_184, CVar(var_B4.Fields.Item("FromDate")), var_144 & "') And L.V_Date Between ", var_21C)
  loc_196EF27:                   var_1A4 = -1 & var_184 
  loc_196EF5A:                   Proc_183_7_EB0C44(var_1EC, CVar(var_B4.Fields.Item("ToDate")), var_144 & "') And L.V_Date Between " & var_184 & " And ")
  loc_196EF66:                   var_124 = CStr(var_240 & var_1EC)
  loc_196EF70:                   unk_58337D.Execute var_124, var_11C, 
  loc_196EF7B:                   Set var_C8 = var_240
  loc_196EFBB:                   If (var_C8.RecordCount > 0) Then
  loc_196EFDD:                     var_11C = CVar(var_C8.Fields.Item("LedAmt")) 'Address
  loc_196EFE4:                     Proc_183_3_E7D1C8(var_144)
  loc_196EFED:                     var_C4 = CSng(var_144)
  loc_196EFFA:                   End If
  loc_196EFFA:                 End If
  loc_196EFFA:               End If
  loc_196EFFE:               var_E8 = CVar(Abs(var_C4)) 'Double
  loc_196F00C:               var_244.Collect = "PreActualAmt"
  loc_196F04D:               If (var_244.Fields.Item("PreActualAmt").Value > 0) Then
  loc_196F074:                 var_154 = IIf((var_C4 > CDbl(0)), "Cr", "Dr")
  loc_196F086:                 var_244.Collect = "PreActualCrDr"
  loc_196F0EA:                 var_154 = (var_244.Fields.Item("PreActualAmt").Value - var_244.Fields.Item("PreBudgetedAmt").Value)
  loc_196F0F8:                 var_244.Collect = "PreVarience"
  loc_196F115:                 var_D8 = "PreActualAmt"
  loc_196F13F:                 var_E8 = "PreBudgetedAmt"
  loc_196F163:                 var_154 = (var_244.Fields.Item(var_D8).Value - var_244.Fields.Item(var_E8).Value)
  loc_196F16D:                 var_F8 = "PreBudgetedAmt"
  loc_196F189:                 var_164 = var_244.Fields.Item(var_F8).Value
  loc_196F19A:                 var_1A4 = ((var_154 / var_164) * 100)
  loc_196F1A8:                 var_244.Collect = "PreVariencePer"
  loc_196F1C5:               End If
  loc_196F1C5:             End If
  loc_196F1C5:           End If
  loc_196F1C5:         End If
  loc_196F1C7:         Set var_244 = Nothing 
  loc_196F1CB:       End If
  loc_196F1CB:     End If
  loc_196F1CE:     var_BC.MoveNext
  loc_196F1DE:     var_B8.Update var_D8, var_E8
  loc_196F1E3:     GoTo loc_196C82C
  loc_196F1E6:   End If
  loc_196F1E6: End If
  loc_196F1FA: If (var_B8.RecordCount <= 0) Then
  loc_196F203:   Call 0.Method_arg_50 (var_124, var_1A4, var_154, var_154)
  loc_196F219:   var_D8 = "** No Records Found to Print **"
  loc_196F224:   MsgBox(var_D8, &H40, CVar(var_124), var_154, var_164)
  loc_196F239:   global_130 = 0
  loc_196F23C:   Exit Sub
  loc_196F23D: End If
  loc_196F243: global_124 = "FABudgetVarience"
  loc_196F24D: Call 0.Method_arg_50 (var_124, global_130, var_E8)
  loc_196F26A: global_120 = CStr(Ucase(CVar(var_124)))
  loc_196F281: If (global_130 = 0) Then
  loc_196F284:   Exit Sub
  loc_196F285: End If
  loc_196F2AC: Set var_10C = var_B8 
  loc_196F2B3: CreateFieldDefFile(var_10C, MemVar_1F923B0 & "\" & global_124 & ".ttx", &HFF)
  loc_196F2DE: var_124 = MemVar_1F923B0 & "\"
  loc_196F2F8: Call 0.Method_arg_1C (var_124 & global_124 & ".RPT", var_D8, var_10C)
  loc_196F303: MemVar_1F921E4 = var_10C
  loc_196F32C: Call 0.Method_arg_64 (var_10C, CVar(var_10C), var_E8)
  loc_196F334: Call 0.Method_arg_2C (var_F8, var_C4)
  loc_196F341: Set var_B4 = Nothing
  loc_196F349: Set var_B8 = Nothing
  loc_196F351: Set var_BC = Nothing
  loc_196F354: Exit Sub
  loc_196F355: ' Referenced from: 196C648
  loc_196F363: Call 0.Method_arg_50 (var_124, 0)
  loc_196F378: Proc_183_57_104AA84(var_124, "FaBudgetVariance")
  loc_196F384: Exit Sub
End Sub

Public Sub Proc_203_82_17E0164
  'Data Table: 583330
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_120 As Variant
  Dim var_118 As String
  Dim unk_58337D As Connection15
  Dim var_B4 As Recordset15
  Dim var_100 As Variant
  Dim var_DC As Variant
  Dim var_9E As Integer
  Dim var_AA As Integer
  Dim var_B0 As Recordset15
  Dim var_FC As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  Dim var_178 As Variant
  Dim var_1B8 As Variant
  Dim var_140 As Recordset15
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_B8 As Recordset15
  Dim var_A8 As Double
  Dim var_230 As Variant
  Dim var_2BC As Recordset15
  loc_17DE03C: On Error Goto loc_17E0134
  loc_17DE054: Set var_100 = CVar(CLng(0))(0)
  loc_17DE078: Call Proc_203_59_F51A10(CInt(0), CStr(var_110))
  loc_17DE08C: If (var_11A = 0) Then
  loc_17DE094:   global_130 = 0
  loc_17DE097:   Exit Sub
  loc_17DE098: End If
  loc_17DE0A4: Set var_100 = var_120(1)
  loc_17DE0AA: Call 0.Method_Proc_203_82_17E01640 (var_112, global_130)
  loc_17DE0B2: var_11A = var_120.Value
  loc_17DE0C8: If (CLng(var_112) = 0) Then
  loc_17DE0D2:   var_118 = var_8C & " Where CStr(FromDate) +'-'+ CStr(ToDate) in ('"
  loc_17DE0EA:   Set var_100 = CVar(CLng(0))(2)
  loc_17DE106:   var_8C = var_118 & CStr(DGSite.DispID_41) & "') "
  loc_17DE118: End If
  loc_17DE125: Call Proc_203_84_1271938(New, var_100)
  loc_17DE12D: Set var_B0 = var_100
  loc_17DE144: var_118 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) " & var_8C
  loc_17DE154: unk_58337D.Execute var_118 & " Order By B.BudgetDrAmt,B.BudgetCrAmt", var_110, -1
  loc_17DE15F: Set var_B4 = var_100
  loc_17DE183: If (var_B4.RecordCount > 0) Then
  loc_17DE186:   ' Referenced from: 17DFFEB
  loc_17DE195:   If Not(var_B4.EOF) Then
  loc_17DE19E:     var_CC = "BudgetCRAmt"
  loc_17DE1C2:     var_DC = 0
  loc_17DE1D4:     If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DE1D9:       var_9E = 0
  loc_17DE1DE:       var_AA = 0
  loc_17DE1E4:       Set var_140 = var_B0 
  loc_17DE1F3:       var_B0.AddNew var_CC, var_DC
  loc_17DE257:       var_EC = "-"
  loc_17DE25C:       var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + 2)
  loc_17DE278:       var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DE287:       var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DE295:       var_140.Collect = "BudgetPeriod"
  loc_17DE2D3:       var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DE2E1:       var_140.Collect = "FromDate"
  loc_17DE30B:       var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DE319:       var_140.Collect = "ToDate"
  loc_17DE34C:       var_118 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), var_1B8, 1, var_160)
  loc_17DE35D:       If (var_118 <> vbNullString) Then
  loc_17DE37F:         var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DE38D:         var_140.Collect = "AcCode"
  loc_17DE3C0:         var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), 1, 1)) 'String
  loc_17DE3CD:         var_140.Collect = "AcName"
  loc_17DE3DF:       Else
  loc_17DE418:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, var_AA) <> vbNullString) Then
  loc_17DE43A:           var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DE448:           var_140.Collect = "AcGroupCode"
  loc_17DE47B:           var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")), var_9E)) 'String
  loc_17DE488:           var_140.Collect = "AcGroupName"
  loc_17DE497:         End If
  loc_17DE497:       End If
  loc_17DE4B6:       var_110 = CVar(var_B4.Fields.Item("BudgetCRAmt")) 'Address
  loc_17DE4C4:       var_140.Collect = "BudgetedAmt"
  loc_17DE4DE:       var_140.Collect = "BudgetCrDr"
  loc_17DE51C:       If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), "Cr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DE52C:         var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DE543:         var_100 = var_B4.Fields
  loc_17DE55B:         var_13C = "Cr" & var_100.Item("AcCode").Value 
  loc_17DE58E:         Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DE5C9:         Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DE5E8:         unk_58337D.Execute CStr(var_13C & var_1E0 & vbNullString), var_100, DGSite.DispID_41
  loc_17DE5F3:         Set var_B8 = var_234
  loc_17DE635:         If (var_B8.RecordCount > 0) Then
  loc_17DE663:           var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DE673:         Else
  loc_17DE676:           var_A8 = CDbl(0)
  loc_17DE679:         End If
  loc_17DE67C:       Else
  loc_17DE6B5:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DE6C5:           var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DE727:           Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DE72F:           var_198 = -1 & var_178 
  loc_17DE762:           Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DE781:           unk_58337D.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DE78C:           Set var_B8 = var_234
  loc_17DE7CE:           If (var_B8.RecordCount > 0) Then
  loc_17DE7FC:             var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DE80C:           Else
  loc_17DE80F:             var_A8 = CDbl(0)
  loc_17DE812:           End If
  loc_17DE812:         End If
  loc_17DE812:       End If
  loc_17DE816:       var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DE824:       var_140.Collect = "ActualAmt"
  loc_17DE865:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DE88C:         var_150 = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DE89E:         var_140.Collect = "ActualCrDr"
  loc_17DE8AE:       End If
  loc_17DE8EA:       If (var_140.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DE941:         var_150 = (var_140.Fields.Item("ActualAmt").Value - var_140.Fields.Item("BudgetedAmt").Value)
  loc_17DE978:         var_198 = ((var_150 / var_140.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DE986:         var_140.Collect = "VariencePer"
  loc_17DE9A3:       End If
  loc_17DE9A3:       var_DC = "CrGroup"
  loc_17DE9B2:       var_140.Collect = "Flag"
  loc_17DE9EC:       var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DEA28:       var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DEA67:       For var_238 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2: var_A0 = var_238 'Integer
  loc_17DEB31:         If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DEB6D:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DEB7D:             var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DEBB5:             var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DEBD2:             var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DEC05:             Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DEC40:             Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DEC5F:             unk_58337D.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DEC6A:             Set var_B8 = var_234
  loc_17DECB4:             If (var_B8.RecordCount > 0) Then
  loc_17DECE2:               var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DECF2:             Else
  loc_17DECF5:               var_A8 = CDbl(0)
  loc_17DECF8:             End If
  loc_17DED21:             var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DED6A:             If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DEDA3:               var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DEDBD:               var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DEDD4:             End If
  loc_17DEDD7:           Else
  loc_17DEE10:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DEE20:               var_DC = "Select isnull(Sum(L.AmtCr))-isnull(Sum(L.AmtDr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DEE6B:               var_178 = "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) & " And Year(L.V_Date)=" 
  loc_17DEEA8:               Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_178 & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DEEB0:               var_1F0 = -1 & var_1E0 
  loc_17DEEDC:               var_230 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DEEE3:               Proc_183_7_EB0C44(var_268, var_230, CDbl(0) & var_1E0 & " And ")
  loc_17DEF02:               unk_58337D.Execute CStr(var_234 & var_268 & vbNullString), var_A8, 
  loc_17DEF0D:               Set var_B8 = var_234
  loc_17DEF57:               If (var_B8.RecordCount > 0) Then
  loc_17DEF85:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DEF95:               Else
  loc_17DEF98:                 var_A8 = CDbl(0)
  loc_17DEF9B:               End If
  loc_17DEFC4:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DF00D:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DF046:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DF060:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Cr", "Dr")
  loc_17DF077:               End If
  loc_17DF077:             End If
  loc_17DF077:           End If
  loc_17DF07D:           If (var_9E = &HC) Then
  loc_17DF082:             var_9E = 0
  loc_17DF08B:             var_AA = (var_AA + 1)
  loc_17DF08E:           End If
  loc_17DF094:           var_9E = (var_9E + 1)
  loc_17DF097:         End If
  loc_17DF0A2:         var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DF0A9:       Next var_238 'Integer
  loc_17DF0B0:       Set var_140 = Nothing 
  loc_17DF0B7:     Else
  loc_17DF0BD:       var_CC = "BudgetDrAmt"
  loc_17DF0E1:       var_DC = 0
  loc_17DF0F3:       If (var_B4.Fields.Item(var_CC).Value > var_DC) Then
  loc_17DF0F8:         var_9E = 0
  loc_17DF0FD:         var_AA = 0
  loc_17DF103:         Set var_2BC = var_B0 
  loc_17DF112:         var_B0.AddNew var_CC, var_DC
  loc_17DF176:         var_EC = "-"
  loc_17DF17B:         var_160 = (Format(CVar(var_B4.Fields.Item("FromDate")), "DD/MM/YYYY") + "Dr")
  loc_17DF197:         var_178 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DF1A6:         var_1B8 = (1 + Format(var_178, "DD/MM/YYYY"))
  loc_17DF1B4:         var_2BC.Collect = "BudgetPeriod"
  loc_17DF1F2:         var_110 = CVar(var_B4.Fields.Item("FromDate")) 'Address
  loc_17DF200:         var_2BC.Collect = "FromDate"
  loc_17DF22A:         var_110 = CVar(var_B4.Fields.Item("ToDate")) 'Address
  loc_17DF238:         var_2BC.Collect = "ToDate"
  loc_17DF26B:         var_118 = Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("AcCode")), CVar(var_B4.Fields.Item("FromDate")), 1)
  loc_17DF27C:         If (var_118 <> vbNullString) Then
  loc_17DF29E:           var_110 = CVar(var_B4.Fields.Item("AcCode")) 'Address
  loc_17DF2AC:           var_2BC.Collect = "AcCode"
  loc_17DF2DF:           var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcName")), CVar(var_B4.Fields.Item("AcName")), "Cr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E), 1)) 'String
  loc_17DF2EC:           var_2BC.Collect = "AcName"
  loc_17DF2FE:         Else
  loc_17DF337:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_13C, 1) <> vbNullString) Then
  loc_17DF359:             var_110 = CVar(var_B4.Fields.Item("AcGroupCode")) 'Address
  loc_17DF367:             var_2BC.Collect = "AcGroupCode"
  loc_17DF39A:             var_13C = CVar(Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupName")), CVar(var_B4.Fields.Item("AcGroupName")))) 'String
  loc_17DF3A7:             var_2BC.Collect = "AcGroupName"
  loc_17DF3B6:           End If
  loc_17DF3B6:         End If
  loc_17DF3D5:         var_110 = CVar(var_B4.Fields.Item("BudgetDrAmt")) 'Address
  loc_17DF3E3:         var_2BC.Collect = "BudgetedAmt"
  loc_17DF3FD:         var_2BC.Collect = "BudgetCrDr"
  loc_17DF43B:         If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), "Dr", CVar(var_B4.Fields.Item("AcCode"))) <> vbNullString) Then
  loc_17DF44B:           var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where SubCode='"
  loc_17DF47A:           var_13C = "Dr" & var_B4.Fields.Item("AcCode").Value 
  loc_17DF4AD:           Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), var_13C & "' And L.V_Date Between ", var_230, -1)
  loc_17DF4E8:           Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DF507:           unk_58337D.Execute CStr(var_13C & var_1E0 & vbNullString), var_AA, var_9E
  loc_17DF512:           Set var_B8 = var_234
  loc_17DF554:           If (var_B8.RecordCount > 0) Then
  loc_17DF582:             var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DF592:           Else
  loc_17DF595:             var_A8 = CDbl(0)
  loc_17DF598:           End If
  loc_17DF59B:         Else
  loc_17DF5D4:           If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DF5E4:             var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as AmtDr From Ledger L Where L.GroupCode ='"
  loc_17DF646:             Proc_183_7_EB0C44(var_178, CVar(var_B4.Fields.Item("FromDate")), "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And L.V_Date Between ", var_230)
  loc_17DF64E:             var_198 = -1 & var_178 
  loc_17DF681:             Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("ToDate")), var_234 & var_178 & " And ")
  loc_17DF6A0:             unk_58337D.Execute CStr(var_234 & var_1E0 & vbNullString), var_A8, 
  loc_17DF6AB:             Set var_B8 = var_234
  loc_17DF6ED:             If (var_B8.RecordCount > 0) Then
  loc_17DF71B:               var_A8 = CSng(var_B8.Fields.Item("AmtDr").Value)
  loc_17DF72B:             Else
  loc_17DF72E:               var_A8 = CDbl(0)
  loc_17DF731:             End If
  loc_17DF731:           End If
  loc_17DF731:         End If
  loc_17DF735:         var_DC = CVar(Abs(var_A8)) 'Double
  loc_17DF743:         var_2BC.Collect = "ActualAmt"
  loc_17DF784:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DF7AB:           var_150 = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DF7BD:           var_2BC.Collect = "ActualCrDr"
  loc_17DF7CD:         End If
  loc_17DF809:         If (var_2BC.Fields.Item("ActualAmt").Value > 0) Then
  loc_17DF860:           var_150 = (var_2BC.Fields.Item("ActualAmt").Value - var_2BC.Fields.Item("BudgetedAmt").Value)
  loc_17DF897:           var_198 = ((var_150 / var_2BC.Fields.Item("BudgetedAmt").Value) * 100)
  loc_17DF8A5:           var_2BC.Collect = "VariencePer"
  loc_17DF8C2:         End If
  loc_17DF8C2:         var_DC = "DrGroup"
  loc_17DF8D1:         var_2BC.Collect = "Flag"
  loc_17DF90B:         var_9E = CInt(Trim(CVar(var_B4.Fields.Item("FrMth"))))
  loc_17DF947:         var_AA = CInt(Trim(CVar(var_B4.Fields.Item("FrYear"))))
  loc_17DF986:         For var_2C0 = &HD To CInt((var_B0.Fields.Count - 1)) Step 2:   var_A0 = var_2C0 'Integer
  loc_17DFA50:           If (Ucase(Format(DateAdd("m", CDbl(CByte(0)), CVar(var_B4.Fields.Item("FromDate"))), "MMM/yy")) = Ucase(Trim(CVar(var_B0.Fields.Item(CVar(var_A0)).Name)))) Then
  loc_17DFA8C:             If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcCode")), 1, 1, &HD, var_AA, var_9E) <> vbNullString) Then
  loc_17DFA9C:               var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where SubCode='"
  loc_17DFAD4:               var_150 = "MMM/yy" & var_B4.Fields.Item("AcCode").Value & "' And MONTH(L.V_Date)=" 
  loc_17DFAF1:               var_198 = var_150 & CVar(var_9E) & " And Year(L.V_Date)=" & CVar(var_AA) 
  loc_17DFB24:               Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_198 & " And L.V_Date Between ", var_2B8, -1, var_234)
  loc_17DFB5F:               Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ", "MMM/yy")
  loc_17DFB7E:               unk_58337D.Execute CStr(var_198 & var_268 & vbNullString), var_150, "MMM/yy"
  loc_17DFB89:               Set var_B8 = var_234
  loc_17DFBD3:               If (var_B8.RecordCount > 0) Then
  loc_17DFC01:                 var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DFC11:               Else
  loc_17DFC14:                 var_A8 = CDbl(0)
  loc_17DFC17:               End If
  loc_17DFC40:               var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DFC89:               If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DFCC2:                 var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DFCDC:                 var_B0.Fields.Item(CVar(var_9E)).Value = IIf((var_A8 > CDbl(0)), "Dr", "Cr")
  loc_17DFCF3:               End If
  loc_17DFCF6:             Else
  loc_17DFD2F:               If (Proc_183_2_E5A304(CVar(var_B4.Fields.Item("AcGroupCode")), var_A8) <> vbNullString) Then
  loc_17DFD3F:                 var_DC = "Select isnull(Sum(L.AmtDr))-isnull(Sum(L.AmtCr)) as LedAmt From Ledger L Where GroupCode ='"
  loc_17DFD81:                 var_160 = "Dr" & var_B4.Fields.Item("AcGroupCode").Value & "' And MONTH(L.V_Date)=" & CVar(var_9E) 
  loc_17DFDC7:                 Proc_183_7_EB0C44(var_1E0, CVar(var_B4.Fields.Item("FromDate")), var_160 & " And Year(L.V_Date)=" & CVar(var_AA) & " And L.V_Date Between ", var_2B8)
  loc_17DFDCF:                 var_1F0 = -1 & var_1E0 
  loc_17DFE02:                 Proc_183_7_EB0C44(var_268, CVar(var_B4.Fields.Item("ToDate")), CDbl(0) & var_1E0 & " And ")
  loc_17DFE17:                 var_118 = CStr(var_234 & var_268 & vbNullString)
  loc_17DFE21:                 unk_58337D.Execute var_118, var_A8, 
  loc_17DFE2C:                 Set var_B8 = var_234
  loc_17DFE76:                 If (var_B8.RecordCount > 0) Then
  loc_17DFEA4:                   var_A8 = CSng(var_B8.Fields.Item("LedAmt").Value)
  loc_17DFEB4:                 Else
  loc_17DFEB7:                   var_A8 = CDbl(0)
  loc_17DFEBA:                 End If
  loc_17DFEE3:                 var_B0.Fields.Item(CVar(var_A0)).Value = CVar(Abs(var_A8))
  loc_17DFF2C:                 If (var_B0.Fields.Item(CVar(var_A0)).Value > 0) Then
  loc_17DFF2F:                   var_EC = "Cr"
  loc_17DFF3A:                   var_DC = "Dr"
  loc_17DFF4C:                   var_CC = (var_A8 > CDbl(0))
  loc_17DFF53:                   var_150 = IIf(var_CC, var_DC, var_EC)
  loc_17DFF65:                   var_FC = CVar((var_A0 + 1)) 'Integer
  loc_17DFF7F:                   var_B0.Fields.Item(CVar(var_9E)).Value = var_150
  loc_17DFF96:                 End If
  loc_17DFF96:               End If
  loc_17DFF96:             End If
  loc_17DFF9C:             If (var_9E = &HC) Then
  loc_17DFFA1:               var_9E = 0
  loc_17DFFAA:               var_AA = (var_AA + 1)
  loc_17DFFAD:             End If
  loc_17DFFB3:             var_9E = (var_9E + 1)
  loc_17DFFB6:           End If
  loc_17DFFC1:           var_BA = CByte((CInt(var_BA) + 1)) 'Byte
  loc_17DFFC8:         Next var_2C0 'Integer
  loc_17DFFCF:         Set var_2BC = Nothing 
  loc_17DFFD3:       End If
  loc_17DFFD3:     End If
  loc_17DFFD6:     var_B4.MoveNext
  loc_17DFFE6:     var_B0.Update var_CC, var_DC
  loc_17DFFEB:     GoTo loc_17DE186
  loc_17DFFEE:   End If
  loc_17DFFEE: End If
  loc_17E0002: If (var_B0.RecordCount <= 0) Then
  loc_17E000B:   Call 0.Method_arg_50 (var_118)
  loc_17E0021:   var_CC = "** No Records Found to Print **"
  loc_17E002C:   MsgBox(var_CC, &H40, CVar(var_118), var_150, var_160)
  loc_17E0041:   global_130 = 0
  loc_17E0044:   Exit Sub
  loc_17E0045: End If
  loc_17E004B: global_124 = "FABudgetRep"
  loc_17E0058: If (global_130 = 0) Then
  loc_17E005B:   Exit Sub
  loc_17E005C: End If
  loc_17E0083: Set var_100 = var_B0 
  loc_17E008A: CreateFieldDefFile(var_100, MemVar_1F923B0 & "\" & global_124 & ".ttx")
  loc_17E00B5: var_118 = MemVar_1F923B0 & "\"
  loc_17E00CF: Call 0.Method_arg_1C (var_118 & global_124 & ".RPT", var_CC, var_100)
  loc_17E00DA: MemVar_1F921E4 = var_100
  loc_17E0103: Call 0.Method_arg_64 (var_100, CVar(var_100), var_DC)
  loc_17E010B: Call 0.Method_arg_2C (var_EC, &HFF)
  loc_17E0118: Set var_B0 = Nothing
  loc_17E0120: Set var_B4 = Nothing
  loc_17E0128: Set var_B8 = Nothing
  loc_17E0130: Set var_B4 = Nothing
  loc_17E0133: Exit Sub
  loc_17E0134: ' Referenced from: 17DE03C
  loc_17E0142: Call 0.Method_arg_50 (var_118, 0)
  loc_17E0157: Proc_183_57_104AA84(var_118, "FaBudget")
  loc_17E0163: Exit Sub
End Sub

Public Sub Proc_203_83_1162954(arg_C) '1162954
  'Data Table: 583330
  Dim var_8C As Recordset15
  loc_1162591: Set var_8C = arg_C 
  loc_11625B9: var_8C.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_11625E5: var_8C.Fields.Append "FromDate", &H85, 0
  loc_1162611: var_8C.Fields.Append "ToDate", &H85, 0
  loc_116263D: var_8C.Fields.Append "AcGroupCode", &HC8, 8
  loc_1162669: var_8C.Fields.Append "AcGroupName", &HC8, &H32
  loc_1162695: var_8C.Fields.Append "AcCode", &HC8, 8
  loc_11626C1: var_8C.Fields.Append "AcName", &HC8, &H32
  loc_11626ED: var_8C.Fields.Append "BudgetedAmt", 5, 0
  loc_1162719: var_8C.Fields.Append "BudgetCrDr", &HC8, 2
  loc_1162745: var_8C.Fields.Append "ActualAmt", 5, 0
  loc_1162771: var_8C.Fields.Append "ActualCrDr", &HC8, 2
  loc_116279D: var_8C.Fields.Append "Varience", 5, 0
  loc_11627C9: var_8C.Fields.Append "VariencePer", 5, 0
  loc_11627F5: var_8C.Fields.Append "PreBudgetedAmt", 5, 0
  loc_1162821: var_8C.Fields.Append "PreBudgetCrDr", &HC8, 2
  loc_116284D: var_8C.Fields.Append "PreActualAmt", 5, 0
  loc_1162879: var_8C.Fields.Append "PreActualCrDr", &HC8, 2
  loc_11628A5: var_8C.Fields.Append "PreVarience", 5, 0
  loc_11628D1: var_8C.Fields.Append "PreVariencePer", 5, 0
  loc_11628FD: var_8C.Fields.Append "GroupType", &HC8, 7
  loc_116290D: var_8C.CursorType = 3
  loc_116291A: var_8C.LockType = 3
  loc_1162939: var_8C.Open var_A0, var_B0, -1
  loc_1162940: Set var_8C = Nothing 
  loc_1162947: Set var_88 = arg_C 
  loc_116294B: Proc_203_83_1162954 = -1
  loc_1162951: DOC
End Sub

Public Sub Proc_203_84_1271938(arg_C) '1271938
  'Data Table: 583330
  Dim var_94 As Recordset15
  Dim var_98 As Fields
  Dim var_A8 As Variant
  Dim var_F4 As String
  Dim unk_58337D As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As String
  Dim var_EC As Variant
  loc_12713B1: Set var_94 = arg_C 
  loc_12713D9: var_94.Fields.Append "BudgetPeriod", &HC8, &H19
  loc_1271405: var_94.Fields.Append "FromDate", &H85, 0
  loc_1271431: var_94.Fields.Append "ToDate", &H85, 0
  loc_127145D: var_94.Fields.Append "AcGroupCode", &HC8, 8
  loc_1271489: var_94.Fields.Append "AcGroupName", &HC8, &H32
  loc_12714B5: var_94.Fields.Append "AcCode", &HC8, 8
  loc_12714E1: var_94.Fields.Append "AcName", &HC8, &H32
  loc_127150D: var_94.Fields.Append "BudgetedAmt", 5, 0
  loc_1271539: var_94.Fields.Append "BudgetCrDr", &HC8, 2
  loc_1271565: var_94.Fields.Append "ActualAmt", 5, 0
  loc_1271591: var_94.Fields.Append "ActualCrDr", &HC8, 2
  loc_12715BD: var_94.Fields.Append "VariencePer", 5, 0
  loc_12715E9: var_94.Fields.Append "Flag", &HC8, 7
  loc_1271606: Set var_98 = CVar(CLng(0))(2)
  loc_1271630: var_F4 = "Select B.*,Month(B.FromDate) As FrMth,Year(B.FromDate) As FrYear,Month(B.ToDate) As ToMth,Year(B.ToDate) As ToYear,SG.Name As AcName,AC.GroupName As AcGroupName From ((Budget B Left Join SubGroup SG ON B.AcCode=SG.SubCode) Left Join AcGroup AC ON B.AcGroupCode=AC.GroupCode) Where CStr(FromDate) +'-'+ CStr(ToDate) in ('" & CStr(var_EC)
  loc_1271640: unk_58337D.Execute var_F4 & "') Order By B.BudgetDrAmt,B.BudgetCrAmt", var_118, -1
  loc_127164B: Set var_90 = var_11C
  loc_1271679: If (var_90.RecordCount > 0) Then
  loc_1271683:   For var_124 = 1 To &HC: var_8A = var_124 'Integer
  loc_127168F:     If (var_8A = 1) Then
  loc_12716FA:       var_94.Fields.Append CStr(Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), 5, 0
  loc_1271783:       var_94.Fields.Append CStr("mCrDr" & Format(CVar(var_90.Fields.Item("FromDate")), "MMM/yy")), &HC8, 2
  loc_12717A0:     Else
  loc_12717D1:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item("FromDate")))
  loc_127181E:       var_94.Fields.Append CStr(Format("MMM/yy", "MMM/yy")), 5, 0
  loc_127183B:       var_A8 = "FromDate"
  loc_1271869:       var_118 = DateAdd("m", CDbl((var_8A - 1)), CVar(var_90.Fields.Item(var_A8)))
  loc_1271878:       var_BC = "MMM/yy"
  loc_12718BF:       var_94.Fields.Append CStr("mCrDr" & Format("MMM/yy", var_BC)), &HC8, 2
  loc_12718DB:     End If
  loc_12718DE:   Next var_124 'Integer
  loc_12718E3: End If
  loc_12718EB: var_94.CursorType = 3
  loc_12718F8: var_94.LockType = 3
  loc_1271917: var_94.Open var_A8, var_BC, -1
  loc_127191E: Set var_94 = Nothing 
  loc_1271925: Set var_88 = arg_C 
  loc_127192E: Set var_90 = Nothing
  loc_1271931: Proc_203_84_1271938 = -1
End Sub

Public Sub Proc_203_85_17F12B0
  'Data Table: 583330
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A4 As String
  Dim var_178 As String
  Dim var_160 As Variant
  Dim unk_58337D As Connection15
  Dim var_88 As Recordset15
  Dim var_190 As Variant
  Dim var_8C As Recordset15
  Dim var_E4 As Double
  Dim var_EC As Double
  Dim var_F4 As Double
  Dim var_FC As Double
  Dim var_104 As Double
  Dim var_10C As Double
  Dim var_114 As Double
  Dim var_B4 As Double
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1E8 As Variant
  Dim var_15C As Variant
  Dim var_1F8 As Variant
  Dim var_94 As Recordset15
  Dim var_116 As Integer
  Dim var_25C As Fields15
  Dim var_260 As Field20
  Dim var_1D8 As Variant
  Dim var_BC As Double
  Dim var_264 As Recordset15
  Dim var_90 As Recordset15
  Dim var_172 As Integer
  Dim Me As Recordset15
  loc_17EF128: On Error Goto loc_17F127E
  loc_17EF140: Set var_160 = CVar(CLng(0))(0)
  loc_17EF164: Call Proc_203_59_F51A10(CInt(0), CStr(var_170))
  loc_17EF178: If (var_17A = 0) Then
  loc_17EF180:   global_130 = 0
  loc_17EF183:   Exit Sub
  loc_17EF184: End If
  loc_17EF18F: Set var_160 = var_180(CInt(&HC))
  loc_17EF195: Call 0.Method_Proc_203_85_17F12B00 (global_130, var_17A)
  loc_17EF19D: var_170 = CVar(var_180) 'Address
  loc_17EF1BE: If CBool(Trim(var_170) <> vbNullString) Then
  loc_17EF1D2:   Set var_160 = var_180(CInt(&HC))
  loc_17EF1D8:   Call 0.Method_Proc_203_85_17F12B00 (var_178, " And VIEWLEDGER.LOGSite_Code='")
  loc_17EF1E0:   DGSite.DispID_41 = var_180.Tag
  loc_17EF1F0:   var_11C = var_178 & "'"
  loc_17EF204: Else
  loc_17EF20B:   var_178 = " And VIEWLEDGER.LOGSite_Code='" & MemVar_1F92078
  loc_17EF212:   var_11C = var_178 & "'"
  loc_17EF218: End If
  loc_17EF21E: global_84 = vbNullString
  loc_17EF225: var_A0 = vbNullString
  loc_17EF234: Set var_160 = var_180(1)
  loc_17EF23A: Call 0.Method_Proc_203_85_17F12B00 (var_172)
  loc_17EF242:  = var_180.Value
  loc_17EF258: If (CLng(var_172) = 0) Then
  loc_17EF276:   Call Proc_203_56_127C0D4(global_96, 1, CByte(1))
  loc_17EF281:   global_84 = var_178
  loc_17EF291:   If (global_130 = 0) Then
  loc_17EF294:     Exit Sub
  loc_17EF295:   End If
  loc_17EF295: End If
  loc_17EF2A0: If (global_84 <> vbNullString) Then
  loc_17EF2B4:   var_A0 = " AND ACGROUP.GROUPCODE IN (" & global_84 & ")"
  loc_17EF2BA: End If
  loc_17EF2CF: Set var_160 = CVar(CLng(0))(1)
  loc_17EF2E0: var_178 = CStr(DGSite.DispID_41)
  loc_17EF2ED: var_178(var_178).Text = 
  loc_17EF306: Set var_160 = (var_178)
  loc_17EF30C:  = var_160.Text
  loc_17EF314: var_1A4 = "Date Upto"
  loc_17EF335: If (Proc_183_49_EF3180(CDate(var_178)) = 0) Then
  loc_17EF33D:   global_130 = 0
  loc_17EF340:   Exit Sub
  loc_17EF341: End If
  loc_17EF355: var_178 = "SELECT * FROM FaEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_17EF365: unk_58337D.Execute var_178 & "'", var_170, -1
  loc_17EF370: Set var_88 = var_160
  loc_17EF394: If (var_88.RecordCount = 0) Then
  loc_17EF39D:   Call 0.Method_arg_50 (var_178, var_160)
  loc_17EF3B8:   var_170 = " ** Please Set Ageing Parameters ** "
  loc_17EF3BE:   MsgBox(var_170, &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17EF3CE:   Exit Sub
  loc_17EF3CF: End If
  loc_17EF3D7: If (arg_10 = "Dr") Then
  loc_17EF3E1:   var_A0 = var_A0 & " AND AcGroup.Nature='Customer'"
  loc_17EF3E4: End If
  loc_17EF3EC: If (arg_10 = "Cr") Then
  loc_17EF3F6:   var_A0 = var_A0 & " AND AcGroup.Nature='Supplier'"
  loc_17EF3F9: End If
  loc_17EF40D: var_178 = "SELECT SUBGROUP.SUBCODE,SUBGROUP.GROUPCODE AS CODE,SUBGROUP.NAME,SUBGROUP.CONPERSON,ACGROUP.GroupName FROM SUBGROUP LEFT JOIN ACGROUP ON SUBGROUP.GROUPCODE=ACGROUP.GROUPCODE WHERE ACGROUP.ALIASYN='N' AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_17EF42B: unk_58337D.Execute var_178 & "' OR SUBGROUP.LOGSITE_CODE='HO') " & var_A0 & " ORDER BY SUBGROUP.NAME", var_170, -1
  loc_17EF436: Set var_8C = var_160
  loc_17EF44D: var_A4 = vbNullString
  loc_17EF465: Set var_90 = mAgeingReport(New)
  loc_17EF46E: Me.Recordset15.Sort = "ACC_NAME ASC"
  loc_17EF473: ' Referenced from: 17F0508
  loc_17EF482: If Not(var_8C.EOF) Then
  loc_17EF488:   var_E4 = CDbl(0)
  loc_17EF48E:   var_EC = CDbl(0)
  loc_17EF494:   var_F4 = CDbl(0)
  loc_17EF49A:   var_FC = CDbl(0)
  loc_17EF4A0:   var_104 = CDbl(0)
  loc_17EF4A6:   var_10C = CDbl(0)
  loc_17EF4AC:   var_114 = CDbl(0)
  loc_17EF4B8:   var_B4 = CDbl(0)
  loc_17EF500:   var_1A0 = "SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value & "'=VIEWLEDGER.PARTY AND V_DATE<=" 
  loc_17EF50F:   Proc_183_7_EB0C44(var_1D8, CVar(var_258(var_1A0)), -1, var_25C, var_B4, CDbl(0))
  loc_17EF537:   var_178 = CStr(var_114 & var_1D8 & " " & CVar(var_11C) & vbNullString)
  loc_17EF541:   unk_58337D.Execute var_178, var_10C, var_104
  loc_17EF54C:   Set var_94 = var_25C
  loc_17EF572:   ' Referenced from: 17F0129
  loc_17EF581:   If Not(var_94.EOF) Then
  loc_17EF58C:     If (arg_10 = "Dr") Then
  loc_17EF5CB:       If (var_94.Fields.Item("Credit").Value > 0) Then
  loc_17EF5FF:         var_190 = (var_94.Fields.Item("Credit").Value + CVar(var_B4))
  loc_17EF604:         var_B4 = CSng("SELECT V_DATE,DEBIT,CREDIT,PARTY AS SUBCODE FROM VIEWLEDGER WHERE '" & var_8C.Fields.Item("subcode").Value)
  loc_17EF618:       Else
  loc_17EF662:         var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_FC(var_B4)), 1, 1))
  loc_17EF6B2:         If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17EF6E6:           var_190 = (CVar(var_E4) + var_94.Fields.Item("Debit").Value)
  loc_17EF6EB:           var_E4 = CSng(CVar(var_FC(var_B4)))
  loc_17EF6FF:         Else
  loc_17EF781:           If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17EF7B5:             var_190 = (CVar(var_EC) + var_94.Fields.Item("Debit").Value)
  loc_17EF7BA:             var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17EF7CE:           Else
  loc_17EF850:             If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17EF884:               var_190 = (CVar(var_F4) + var_94.Fields.Item("Debit").Value)
  loc_17EF889:               var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17EF89D:             Else
  loc_17EF91F:               If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17EF953:                 var_190 = (CVar(var_FC) + var_94.Fields.Item("Debit").Value)
  loc_17EF958:                 var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17EF96C:               Else
  loc_17EF9EE:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17EFA22:                   var_190 = (CVar(var_104) + var_94.Fields.Item("Debit").Value)
  loc_17EFA27:                   var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17EFA3B:                 Else
  loc_17EFABD:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And (CVar(var_116) <= var_88.Fields.Item("Age6").Value)) Then
  loc_17EFAF1:                     var_190 = (CVar(var_10C) + var_94.Fields.Item("Debit").Value)
  loc_17EFAF6:                     var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EFB0A:                   Else
  loc_17EFB3B:                     var_190 = (CVar(var_114) + var_94.Fields.Item("Debit").Value)
  loc_17EFB40:                     var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EFB51:                   End If
  loc_17EFB51:                 End If
  loc_17EFB51:               End If
  loc_17EFB51:             End If
  loc_17EFB51:           End If
  loc_17EFB51:         End If
  loc_17EFB51:       End If
  loc_17EFB54:     Else
  loc_17EFB5C:       If (arg_10 = "Cr") Then
  loc_17EFB9B:         If (var_94.Fields.Item("Debit").Value > 0) Then
  loc_17EFBCF:           var_190 = (var_94.Fields.Item("Debit").Value + CVar(var_B4))
  loc_17EFBD4:           var_B4 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17EFBE8:         Else
  loc_17EFC32:           var_116 = CInt(DateDiff("D", CVar(var_94.Fields.Item("V_DATE")), CVar(var_114(var_B4)), 1, 1))
  loc_17EFC82:           If (CVar(var_116) <= var_88.Fields.Item("Age1").Value) Then
  loc_17EFCB6:             var_190 = (CVar(var_E4) + var_94.Fields.Item("Credit").Value)
  loc_17EFCBB:             var_E4 = CSng(CVar(var_114(var_B4)))
  loc_17EFCCF:           Else
  loc_17EFD51:             If CBool((CVar(var_116) > var_88.Fields.Item("Age1").Value) And (CVar(var_116) <= var_88.Fields.Item("Age2").Value)) Then
  loc_17EFD85:               var_190 = (CVar(var_EC) + var_94.Fields.Item("Credit").Value)
  loc_17EFD8A:               var_EC = CSng((CVar(var_116) > var_88.Fields.Item("Age1").Value))
  loc_17EFD9E:             Else
  loc_17EFE20:               If CBool((CVar(var_116) > var_88.Fields.Item("Age2").Value) And (CVar(var_116) <= var_88.Fields.Item("Age3").Value)) Then
  loc_17EFE54:                 var_190 = (CVar(var_F4) + var_94.Fields.Item("Credit").Value)
  loc_17EFE59:                 var_F4 = CSng((CVar(var_116) > var_88.Fields.Item("Age2").Value))
  loc_17EFE6D:               Else
  loc_17EFEEF:                 If CBool((CVar(var_116) > var_88.Fields.Item("Age3").Value) And (CVar(var_116) <= var_88.Fields.Item("Age4").Value)) Then
  loc_17EFF23:                   var_190 = (CVar(var_FC) + var_94.Fields.Item("Credit").Value)
  loc_17EFF28:                   var_FC = CSng((CVar(var_116) > var_88.Fields.Item("Age3").Value))
  loc_17EFF3C:                 Else
  loc_17EFFBE:                   If CBool((CVar(var_116) > var_88.Fields.Item("Age4").Value) And (CVar(var_116) <= var_88.Fields.Item("Age5").Value)) Then
  loc_17EFFF2:                     var_190 = (CVar(var_104) + var_94.Fields.Item("Credit").Value)
  loc_17EFFF7:                     var_104 = CSng((CVar(var_116) > var_88.Fields.Item("Age4").Value))
  loc_17F000B:                   Else
  loc_17F0059:                     var_25C = var_88.Fields
  loc_17F0061:                     var_260 = var_25C.Item("Age6")
  loc_17F0071:                     var_1C0 = (CVar(var_116) <= var_260.Value)
  loc_17F008D:                     If CBool((CVar(var_116) > var_88.Fields.Item("Age5").Value) And var_1C0) Then
  loc_17F00C1:                       var_190 = (CVar(var_10C) + var_94.Fields.Item("Credit").Value)
  loc_17F00C6:                       var_10C = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F00DA:                     Else
  loc_17F010B:                       var_190 = (CVar(var_114) + var_94.Fields.Item("Credit").Value)
  loc_17F0110:                       var_114 = CSng((CVar(var_116) > var_88.Fields.Item("Age5").Value))
  loc_17F0121:                     End If
  loc_17F0121:                   End If
  loc_17F0121:                 End If
  loc_17F0121:               End If
  loc_17F0121:             End If
  loc_17F0121:           End If
  loc_17F0121:         End If
  loc_17F0121:       End If
  loc_17F0121:     End If
  loc_17F0124:     var_94.MoveNext
  loc_17F0129:     GoTo loc_17EF572
  loc_17F012C:   End If
  loc_17F0137:   var_D8(0) = var_E4
  loc_17F0143:   var_D8(1) = var_EC
  loc_17F014F:   var_D8(2) = var_F4
  loc_17F015B:   var_D8(3) = var_FC
  loc_17F0167:   var_D8(4) = var_104
  loc_17F0173:   var_D8(5) = var_10C
  loc_17F017F:   var_D8(6) = var_114
  loc_17F0183:   var_BC = CDbl(7)
  loc_17F0186:   ' Referenced from: 17F021A
  loc_17F018D:   If (var_BC <> CDbl(0)) Then
  loc_17F01A0:     If (var_D8(CLng((var_BC - CDbl(1)))) > CDbl(0)) Then
  loc_17F01B3:       If (var_B4 >= var_D8(CLng((var_BC - CDbl(1))))) Then
  loc_17F01C6:         var_B4 = (var_B4 - var_D8(CLng((var_BC - CDbl(1)))))
  loc_17F01D7:         var_D8(CLng((var_BC - CDbl(1)))) = CDbl(0)
  loc_17F01DB:       Else
  loc_17F01EB:         If (var_D8(CLng((var_BC - CDbl(1)))) > var_B4) Then
  loc_17F0209:           var_D8(CLng((var_BC - CDbl(1)))) = (var_D8(CLng((var_BC - CDbl(1)))) - var_B4)
  loc_17F020D:           var_B4 = CDbl(0)
  loc_17F0210:         End If
  loc_17F0210:       End If
  loc_17F0210:     End If
  loc_17F0217:     var_BC = (var_BC - CDbl(1))
  loc_17F021A:     GoTo loc_17F0186
  loc_17F021D:   End If
  loc_17F0262:   var_BC = ((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))
  loc_17F026D:   var_12C = var_BC
  loc_17F027D:   var_13C = 0
  loc_17F0297:   var_1A0 = Round(var_B4, 2)
  loc_17F02BA:   If CBool(Not (Round(var_12C, 2) = var_13C) And (var_1A0 = 0)) Then
  loc_17F02C0:     Set var_264 = var_90 
  loc_17F02CF:     var_264.AddNew var_12C, var_13C
  loc_17F02DD:     var_13C = CVar(var_D8(0)) 'Double
  loc_17F02EB:     var_264.Collect = "DEBIT1"
  loc_17F02F9:     var_13C = CVar(var_D8(1)) 'Double
  loc_17F0307:     var_264.Collect = "DEBIT2"
  loc_17F0315:     var_13C = CVar(var_D8(2)) 'Double
  loc_17F0323:     var_264.Collect = "DEBIT3"
  loc_17F0331:     var_13C = CVar(var_D8(3)) 'Double
  loc_17F033F:     var_264.Collect = "DEBIT4"
  loc_17F034D:     var_13C = CVar(var_D8(4)) 'Double
  loc_17F035B:     var_264.Collect = "DEBIT5"
  loc_17F0369:     var_13C = CVar(var_D8(5)) 'Double
  loc_17F0377:     var_264.Collect = "DEBIT6"
  loc_17F0385:     var_13C = CVar(var_D8(6)) 'Double
  loc_17F0393:     var_264.Collect = "Debit"
  loc_17F03DD:     var_13C = CVar(((((((var_D8(0) + var_D8(1)) + var_D8(2)) + var_D8(3)) + var_D8(4)) + var_D8(5)) + var_D8(6))) 'Double
  loc_17F03EB:     var_264.Collect = "TOTALDR"
  loc_17F03F3:     var_13C = CVar(var_B4) 'Double
  loc_17F0401:     var_264.Collect = "Credit"
  loc_17F0431:     var_190 = Left(CVar(var_8C.Fields.Item("Name")), &H23)
  loc_17F0443:     var_264.Collect = "ACC_NAME"
  loc_17F047D:     var_190 = Left(CVar(var_8C.Fields.Item("ConPerson")), &H32)
  loc_17F048F:     var_264.Collect = "CON_PER"
  loc_17F04A1:     var_12C = "GroupName"
  loc_17F04B5:     var_180 = var_8C.Fields.Item(var_12C)
  loc_17F04C9:     var_190 = Left(CVar(var_180), &H23)
  loc_17F04D2:     var_13C = "AName"
  loc_17F04DB:     var_264.Collect = var_13C
  loc_17F04F5:     var_264.Update var_12C, var_13C
  loc_17F04FC:     Set var_264 = Nothing 
  loc_17F0500:   End If
  loc_17F0503:   var_8C.MoveNext
  loc_17F0508:   GoTo loc_17EF473
  loc_17F050B: End If
  loc_17F0511: var_1B0 = var_90.RecordCount
  loc_17F051F: If (var_1B0 <= 0) Then
  loc_17F0528:   Call 0.Method_arg_50 (var_178, var_190, var_190, var_190, var_13C, var_13C, var_13C)
  loc_17F0549:   MsgBox("** No Records Found to Print **", &H40, CVar(var_178), var_1A0, var_1C0)
  loc_17F055E:   global_130 = 0
  loc_17F0561:   Exit Sub
  loc_17F0562: End If
  loc_17F0578: Set var_160 = var_90 
  loc_17F0584: var_172 = CreateFieldDefFile(var_160, MemVar_1F923B0 & "\AGEINGREPORT.ttx", &HFF, global_130, var_13C, var_13C)
  loc_17F058E: Set var_90 = var_160
  loc_17F0594: var_12C = CVar(var_172) 'Integer
  loc_17F0597: var_274 = var_12C 'Variant
  loc_17F05B3: var_178 = MemVar_1F923B0 & "\AGEINGREPORT.RPT"
  loc_17F05BC: Call 0.Method_arg_1C (var_178, var_12C, var_160, var_172, var_13C)
  loc_17F05C7: MemVar_1F921E4 = var_160
  loc_17F05E2: Call 0.Method_arg_90 (var_160, var_1B0, var_BE, 1)
  loc_17F05EA: Call 0.Method_arg_24 (var_13C, var_13C)
  loc_17F05F6: For var_278 = var_BC To CInt(var_1B0): var_13C = var_278 'Integer
  loc_17F060F:   Call 0.Method_arg_90 (var_160, CLng(var_BE), var_180)
  loc_17F0617:   Call 0.Method_arg_20 (var_178)
  loc_17F061F:   Call 0.Method_arg_30 (var_BC)
  loc_17F0635:   var_288 = Ucase(CVar(var_178)) 'Variant
  loc_17F0665:   If (var_288 = Ucase("title")) Then
  loc_17F0679:     Call 0.Method_Proc_203_85_17F12B00 ()
  loc_17F06A2:     If (Trim(CVar(var_180)) = vbNullString) Then
  loc_17F06AE:       Call 0.Method_arg_50 (var_178)
  loc_17F06D1:       Call 0.Method_arg_90 (var_180(CInt(&HC)), CLng(var_BE))
  loc_17F06D9:       Call 0.Method_arg_20 (var_180)
  loc_17F06E1:       Call 0.Method_arg_38 ("'" & var_178 & "'")
  loc_17F06F9:     Else
  loc_17F0702:       Call 0.Method_arg_50 (var_178)
  loc_17F0720:       Set var_160 = var_180(CInt(&HC))
  loc_17F0726:       Call 0.Method_Proc_203_85_17F12B00 (CVar("'" & var_178 & " ("))
  loc_17F073D:       var_1C0 = ( + Trim(CVar(var_180)))
  loc_17F0746:       var_1D8 = (var_1C0 + ")")
  loc_17F074F:       var_1E8 = ((Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0) + "'")
  loc_17F0767:       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F076F:       Call 0.Method_arg_20 (var_260)
  loc_17F0777:       Call 0.Method_arg_38 (CStr(Not (Round(")", 2) = "'") And (CVar("'" & var_178 & " (") = 0)))
  loc_17F079D:     End If
  loc_17F07A0:   Else
  loc_17F07C2:     If (var_288 = Ucase("ACNAME")) Then
  loc_17F07D5:        = "'For A/C  :   "(var_178).Text
  loc_17F07F8:       Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F0800:       Call 0.Method_arg_20 (var_25C)
  loc_17F0808:       Call 0.Method_arg_38 (var_178 & "'")
  loc_17F0822:     Else
  loc_17F0844:       If (var_288 = Ucase("DATE")) Then
  loc_17F0857:          = "'Upto Date :     "(var_178).Text
  loc_17F087A:         Call 0.Method_arg_90 (var_180, CLng(var_BE))
  loc_17F0882:         Call 0.Method_arg_20 (var_25C)
  loc_17F088A:         Call 0.Method_arg_38 (var_178 & "'")
  loc_17F08A4:       Else
  loc_17F08C6:         If (var_288 = Ucase("P1")) Then
  loc_17F08CE:           var_13C = "0 - "
  loc_17F0901:           var_1A0 = ("'" + Str(CVar(var_88.Fields.Item("Age1"))))
  loc_17F0926:           Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F092E:           Call 0.Method_arg_20 (var_260)
  loc_17F0936:           Call 0.Method_arg_38 (CStr("'" & CVar("'" & var_178 & " (") & "'"))
  loc_17F0957:         Else
  loc_17F0979:           If (var_288 = Ucase("P2")) Then
  loc_17F09B0:             var_190 = (var_88.Fields.Item("Age1").Value + 1)
  loc_17F09C3:             var_15C = " - "
  loc_17F0A1B:             Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F0A23:             Call 0.Method_arg_20 (var_290)
  loc_17F0A2B:             Call 0.Method_arg_38 (CStr("'" & Str(Ucase("P2")) & "'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F0A58:           Else
  loc_17F0A7A:             If (var_288 = Ucase("P3")) Then
  loc_17F0AB1:               var_190 = (var_88.Fields.Item("Age2").Value + 1)
  loc_17F0AC0:               var_14C = " - "
  loc_17F0AC5:               var_1C0 = (Str(Ucase("P3")) + "'")
  loc_17F0AF7:               var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age3"))))
  loc_17F0B1C:               Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F0B24:               Call 0.Method_arg_20 (var_290)
  loc_17F0B2C:               Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F0B59:             Else
  loc_17F0B7B:               If (var_288 = Ucase("P4")) Then
  loc_17F0BB2:                 var_190 = (var_88.Fields.Item("Age3").Value + 1)
  loc_17F0BC1:                 var_14C = " - "
  loc_17F0BC6:                 var_1C0 = (Str(Ucase("P4")) + "'")
  loc_17F0BF8:                 var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age4"))))
  loc_17F0C1D:                 Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F0C25:                 Call 0.Method_arg_20 (var_290)
  loc_17F0C2D:                 Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F0C5A:               Else
  loc_17F0C7C:                 If (var_288 = Ucase("P5")) Then
  loc_17F0CB3:                   var_190 = (var_88.Fields.Item("Age4").Value + 1)
  loc_17F0CC2:                   var_14C = " - "
  loc_17F0CC7:                   var_1C0 = (Str(Ucase("P5")) + "'")
  loc_17F0CF9:                   var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_88.Fields.Item("Age5"))))
  loc_17F0D1E:                   Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F0D26:                   Call 0.Method_arg_20 (var_290)
  loc_17F0D2E:                   Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F0D5B:                 Else
  loc_17F0D7D:                   If (var_288 = Ucase("P6")) Then
  loc_17F0DB4:                     var_190 = (var_88.Fields.Item("Age5").Value + 1)
  loc_17F0DC3:                     var_14C = " - "
  loc_17F0DC8:                     var_1C0 = (Str(Ucase("P6")) + "'")
  loc_17F0DDB:                     var_25C = var_88.Fields
  loc_17F0DE3:                     var_260 = var_25C.Item("Age6")
  loc_17F0DFA:                     var_1F8 = ("'" & Str(Ucase("P2")) + Str(CVar(var_260)))
  loc_17F0E1F:                     Call 0.Method_arg_90 (var_28C, CLng(var_BE))
  loc_17F0E27:                     Call 0.Method_arg_20 (var_290)
  loc_17F0E2F:                     Call 0.Method_arg_38 (CStr("'" & Str(CVar(var_88.Fields.Item("Age2"))) & "'"))
  loc_17F0E5C:                   Else
  loc_17F0E7E:                     If (var_288 = Ucase("P7")) Then
  loc_17F0E95:                       var_160 = var_88.Fields
  loc_17F0E9D:                       var_180 = var_160.Item("Age6")
  loc_17F0ED5:                       Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F0EDD:                       Call 0.Method_arg_20 (var_260)
  loc_17F0EE5:                       Call 0.Method_arg_38 (CStr("'Above " & Str(CVar(var_180)) & "'"))
  loc_17F0F04:                     Else
  loc_17F0F26:                       If (var_288 = Ucase("P8")) Then
  loc_17F0F31:                         If (arg_10 = "Dr") Then
  loc_17F0F47:                           Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F0F4F:                           Call 0.Method_arg_20 (var_180)
  loc_17F0F57:                           Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F0F66:                         Else
  loc_17F0F6E:                           If (arg_10 = "Cr") Then
  loc_17F0F84:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F0F8C:                             Call 0.Method_arg_20 (var_180)
  loc_17F0F94:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F0FA0:                           End If
  loc_17F0FA0:                         End If
  loc_17F0FA3:                       Else
  loc_17F0FC5:                         If (var_288 = Ucase("P9")) Then
  loc_17F0FD0:                           If (arg_10 = "Dr") Then
  loc_17F0FE6:                             Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F0FEE:                             Call 0.Method_arg_20 (var_180)
  loc_17F0FF6:                             Call 0.Method_arg_38 ("'Total Credit'")
  loc_17F1005:                           Else
  loc_17F100D:                             If (arg_10 = "Cr") Then
  loc_17F1023:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F102B:                               Call 0.Method_arg_20 (var_180)
  loc_17F1033:                               Call 0.Method_arg_38 ("'Total Debit'")
  loc_17F103F:                             End If
  loc_17F103F:                           End If
  loc_17F1042:                         Else
  loc_17F1064:                           If (var_288 = Ucase("HEADI")) Then
  loc_17F106F:                             If (arg_10 = "Dr") Then
  loc_17F1085:                               Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F108D:                               Call 0.Method_arg_20 (var_180)
  loc_17F1095:                               Call 0.Method_arg_38 ("'<----------------------------- AMOUNT DEBITED FROM DAYS ------------------------------>'")
  loc_17F10A4:                             Else
  loc_17F10AC:                               If (arg_10 = "Cr") Then
  loc_17F10C2:                                 Call 0.Method_arg_90 (var_160, CLng(var_BE))
  loc_17F10CA:                                 Call 0.Method_arg_20 (var_180)
  loc_17F10D2:                                 Call 0.Method_arg_38 ("'<----------------------------- AMOUNT CREDITED FROM DAYS ------------------------------>'")
  loc_17F10DE:                               End If
  loc_17F10DE:                             End If
  loc_17F10E1:                           Else
  loc_17F1103:                             If (var_288 = Ucase("PageNo")) Then
  loc_17F1159:                               Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F1161:                               Call 0.Method_arg_20 (var_260)
  loc_17F1169:                               Call 0.Method_arg_38 (CStr("'" & Me.Fields.Item("pagenofill").Value & "'"))
  loc_17F1188:                             Else
  loc_17F11AA:                               If (var_288 = Ucase("DT")) Then
  loc_17F11AD:                                 var_13C = "'"
  loc_17F11C7:                                 var_160 = Me.Fields
  loc_17F11EC:                                 var_178 = CStr(var_13C & var_160.Item("daterfill").Value & "'")
  loc_17F1200:                                 Call 0.Method_arg_90 (var_25C, CLng(var_BE))
  loc_17F1208:                                 Call 0.Method_arg_20 (var_260)
  loc_17F1210:                                 Call 0.Method_arg_38 (var_178)
  loc_17F122C:                               End If
  loc_17F122C:                             End If
  loc_17F122C:                           End If
  loc_17F122C:                         End If
  loc_17F122C:                       End If
  loc_17F122C:                     End If
  loc_17F122C:                   End If
  loc_17F122C:                 End If
  loc_17F122C:               End If
  loc_17F122C:             End If
  loc_17F122C:           End If
  loc_17F122C:         End If
  loc_17F122C:       End If
  loc_17F122C:     End If
  loc_17F122C:   End If
  loc_17F122F: Next var_278 'Integer
  loc_17F124D: Call 0.Method_arg_64 (var_160, CVar(var_90))
  loc_17F1255: Call 0.Method_arg_2C (var_13C)
  loc_17F1262: Set var_88 = Nothing
  loc_17F126A: Set var_8C = Nothing
  loc_17F1272: Set var_90 = Nothing
  loc_17F127A: Set var_94 = Nothing
  loc_17F127D: Exit Sub
  loc_17F127E: ' Referenced from: 17EF128
  loc_17F128C: Call 0.Method_arg_50 (var_178, 0)
  loc_17F12A1: Proc_183_57_104AA84(var_178, "AgeingReport")
  loc_17F12AD: Exit Sub
End Sub
