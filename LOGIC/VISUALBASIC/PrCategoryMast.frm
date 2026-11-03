VERSION 5.00
Begin VB.Form PrCategoryMast
  Caption = "Category Master"
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
  ClientWidth = 6780
  ClientHeight = 3060
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 6780
    Height = 450
    TabIndex = 10
  End
  Begin DataGrid DGHelp
    Left = 10200
    Top = 960
    Width = 4230
    Height = 1875
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2400
    Width = 1995
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 2085
    Width = 1995
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 9960
    Top = 2760
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -240
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 6
    End
  End
  Begin MSFlexGrid FGPoint
    Left = 12360
    Top = 2280
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2325
    Top = 1770
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 13
    BorderStyle = 1 'Fixed Single
    Alignment = 2 'Center
    AutoSize = -1  'True
    BeginProperty Font
      Name = "System"
      Size = 19.5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 75
    Top = 3840
    Width = 2880
    Height = 255
    TabIndex = 12
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3450
    Top = 3840
    Width = 2790
    Height = 285
    TabIndex = 11
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Category"
    Index = 2
    ForeColor = &HFF0000&
    Left = 1380
    Top = 2400
    Width = 855
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
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
  Begin Label LblName
    Caption = "Type"
    Index = 1
    ForeColor = &HFF0000&
    Left = 1365
    Top = 2085
    Width = 465
    Height = 240
    TabIndex = 7
    AutoSize = -1  'True
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 1365
    Top = 1770
    Width = 555
    Height = 240
    TabIndex = 3
    AutoSize = -1  'True
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

Attribute VB_Name = "PrCategoryMast"


Private Sub FGPoint_UnknownEvent_9 'E3D5D4
  'Data Table: 45C438
  loc_E3D5C8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3D5CB:   Call DGHelp_UnknownEvent_9()
  loc_E3D5D0: End If
  loc_E3D5D0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE33BC
  'Data Table: 45C438
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE3313: Me.DGHelp.Visible = False
  loc_EE3332: If (Me.RecordCount > 0) Then
  loc_EE3352:   var_B0 = Me.Fields.Item("Name")
  loc_EE3371:   Set var_B4 = Me.Txt
  loc_EE3377:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE337F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE3395: End If
  loc_EE33A0: Set var_A8 = Me.Txt
  loc_EE33A6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE33AE: var_B0.SetFocus
  loc_EE33BA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6E5DC
  'Data Table: 45C438
  loc_E6E59A: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6E5B1: Set var_8C = Me.FGPoint
  loc_E6E5CD: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6E5DB: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF15CC
  'Data Table: 45C438
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_3F01 As Double
  loc_FF13F6: Set var_88 = Me.Txt
  loc_FF13FC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF140A: Proc_6_74_E226B0(var_8C)
  loc_FF1416: Call Proc_313_32_EB866C(var_8C)
  loc_FF141E: var_92 = Index
  loc_FF1429: If (var_92 = CInt(0)) Then
  loc_FF1443:   If (Me.RecordCount > 0) Then
  loc_FF1451:     Set var_8C = Me.FGPoint
  loc_FF1469:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_FF1477:   End If
  loc_FF147A: Else
  loc_FF1482:   If (var_92 = CInt(1)) Then
  loc_FF1492:     ReDim var_9C(0 To 1)
  loc_FF14A9:     var_9C(0) = "Daily Wages"
  loc_FF14B8:     var_9C(1) = "Permanent"
  loc_FF150F:     Set global_80 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, Array(var_9C))
  loc_FF1523:   Else
  loc_FF152B:     If (var_92 = CInt(2)) Then
  loc_FF153B:       ReDim var_9C(0 To 1)
  loc_FF1552:       var_9C(0) = "Driver"
  loc_FF1561:       var_9C(1) = "Other"
  loc_FF1578:       global_64 = Array(var_9C)
  loc_FF15B8:       Set global_80 = Proc_6_66_EFF8FC(Me.ListView, Me.Txt, Index, global_64, 2)
  loc_FF15C9:     End If
  loc_FF15C9:   End If
  loc_FF15C9: End If
  loc_FF15C9: Exit Sub
  loc_FF15CA: var_3F01 = global_64
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D6AF0
  'Data Table: 45C438
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  loc_11D66AE: If (CLng(Shift) = &H1B) Then
  loc_11D66B1:   Call Proc_313_32_EB866C()
  loc_11D66B6:   Exit Sub
  loc_11D66B7: End If
  loc_11D66BA: var_86 = KeyCode
  loc_11D66C5: If (var_86 = CInt(0)) Then
  loc_11D66CC:   Set var_A4 = Me.DGHelp
  loc_11D66DA:   Set var_AC = Me.FGPoint
  loc_11D66E5:   Set var_9C = var_AC
  loc_11D6717:   Proc_6_79_11ACE04(var_A4, Me.Txt, CInt(0), global_56, Shift)
  loc_11D6734:   var_B0 = Me.RecordCount
  loc_11D6784:   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D6792:     Set var_90 = Me.FGPoint
  loc_11D67AA:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_11D67B8:   End If
  loc_11D67BB: Else
  loc_11D67C3:   If (var_86 = CInt(1)) Then
  loc_11D67E8:     Set var_8C = Me.Txt
  loc_11D67EE:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 1)
  loc_11D67F6:     var_9C = var_90.Left
  loc_11D6808:     Set var_9C = Me.Txt
  loc_11D680E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_11D6816:     0 = var_A4.Top
  loc_11D6828:     Set var_A8 = Me.Txt
  loc_11D682E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC)
  loc_11D6836:     var_B8 = var_AC.Height
  loc_11D6848:     Set var_BC = Me.Txt
  loc_11D684E:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D6856:     var_C4 = var_C0.Width
  loc_11D68A2:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D68C9:   Else
  loc_11D68D1:     If (var_86 = CInt(2)) Then
  loc_11D68F6:       Set var_8C = Me.Txt
  loc_11D68FC:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, CInt(var_B0))
  loc_11D6904:       CInt(((var_B4 + var_B8) + CDbl(&H19))) = var_90.Left
  loc_11D6916:       Set var_9C = Me.Txt
  loc_11D691C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B4)
  loc_11D6924:       CInt(var_C4) = var_A4.Top
  loc_11D6936:       Set var_A8 = Me.Txt
  loc_11D693C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B8)
  loc_11D6944:       1200 = var_AC.Height
  loc_11D6956:       Set var_BC = Me.Txt
  loc_11D695C:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D6964:       var_C4 = var_C0.Width
  loc_11D69B0:       Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D69D4:     End If
  loc_11D69D4:   End If
  loc_11D69D4: End If
  loc_11D69F1: Set var_90 = Me.FrmList
  loc_11D69F7: var_92 = var_90.Visible
  loc_11D6A0D: If ((CBool(Me.DGHelp.Visible) = 0) And (var_92 = 0)) Then
  loc_11D6A2E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_11D6A34:     Call Proc_313_31_1085214(var_92, CInt(var_B0), CInt(((var_B4 + var_B8) + CDbl(&H19))))
  loc_11D6A3F:     If (var_92 = &HFF) Then
  loc_11D6A4F:       Set var_8C = Me.Txt
  loc_11D6A55:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_11D6A5D:       var_90.Text = CInt(var_C4)
  loc_11D6A69:       Exit Sub
  loc_11D6A6A:     End If
  loc_11D6AA1:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_11D6AA4:       Call TopCtrl1_UnknownEvent_16()
  loc_11D6AA9:     End If
  loc_11D6AA9:     Exit Sub
  loc_11D6AAA:   End If
  loc_11D6ABF:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11D6AC8:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11D6ACD:   End If
  loc_11D6AE0:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_11D6AE9:     Proc_6_76_E52838(Shift, arg_14)
  loc_11D6AEE:   End If
  loc_11D6AEE: End If
  loc_11D6AEE: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E23960
  'Data Table: 45C438
  loc_E23946: Proc_6_133_E7EF78(var_94)
  loc_E23958: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E2395D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F9892C
  'Data Table: 45C438
  Dim var_86 As Integer
  loc_F987C3: var_86 = KeyCode
  loc_F987CE: If (var_86 = CInt(0)) Then
  loc_F987ED:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F987FA:     var_A4 = "Name"
  loc_F98819:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_F9884B:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F98859:   End If
  loc_F9885C: Else
  loc_F98864:   If (var_86 = CInt(1)) Then
  loc_F98882:     If (Me.FrmList.Visible = &HFF) Then
  loc_F988B1:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F988C1:     End If
  loc_F988C4:   Else
  loc_F988CC:     If (var_86 = CInt(2)) Then
  loc_F988EA:       If (Me.FrmList.Visible = &HFF) Then
  loc_F98919:         Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift, global_80)
  loc_F98929:       End If
  loc_F98929:     End If
  loc_F98929:   End If
  loc_F98929: End If
  loc_F98929: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4953C
  'Data Table: 45C438
  loc_E4951A: Set var_88 = Me.Txt
  loc_E49520: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4952E: Proc_6_73_E22704(var_8C)
  loc_E4953A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F89C50
  'Data Table: 45C438
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_AC As TextBox
  loc_F89AFB: var_86 = Cancel
  loc_F89B06: If (var_86 = CInt(0)) Then
  loc_F89B0C:   Call Proc_313_31_1085214(var_88)
  loc_F89B17:   If (var_88 = &HFF) Then
  loc_F89B1C:     arg_10 = &HFF
  loc_F89B1F:     Exit Sub
  loc_F89B20:   End If
  loc_F89B23: Else
  loc_F89B2B:   If (var_86 = CInt(1)) Then
  loc_F89B3B:     Set var_8C = Me.Txt
  loc_F89B41:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_F89B49:     arg_10 = var_90.Text
  loc_F89B60:     If (var_94 <> vbNullString) Then
  loc_F89B7B:       Set var_90 = Me.ListView.SelectedItem
  loc_F89B93:       Set var_A8 = Me.Txt
  loc_F89B99:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F89BA1:       var_AC.Text = var_90.Text
  loc_F89BB7:     End If
  loc_F89BBA:   Else
  loc_F89BC2:     If (var_86 = CInt(2)) Then
  loc_F89BD2:       Set var_8C = Me.Txt
  loc_F89BD8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F89BF7:       If (var_90.Text <> vbNullString) Then
  loc_F89C2A:         Set var_A8 = Me.Txt
  loc_F89C30:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_F89C38:         var_AC.Text = Me.ListView.SelectedItem.Text
  loc_F89C4E:       End If
  loc_F89C4E:     End If
  loc_F89C4E:   End If
  loc_F89C4E: End If
  loc_F89C4E: Exit Sub
End Sub

Private Sub Form_Load() 'FC1668
  'Data Table: 45C438
  Dim var_8C As Label
  Dim var_90 As String
  Dim var_94 As String
  Dim unk_45C452 As Connection15
  Dim var_B4 As Variant
  loc_FC14C4: On Error Goto loc_FC1624
  loc_FC14D6: Me.LblUser.Left = CDbl(13500)
  loc_FC14ED: Me.LblUser.Top = CDbl(7800)
  loc_FC1504: Me.LblLDt.Top = CDbl(8160)
  loc_FC1515: Set var_8C = Me.LblLDt
  loc_FC151B: var_8C.Left = CDbl(13500)
  loc_FC152A: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FC152F: Call Proc_313_34_EDAF38()
  loc_FC1558: unk_45C452.Execute "SELECT Code,Name FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B4, -1
  loc_FC1587: CVarUnk
  loc_FC158C: VerifyVarObj
  loc_FC1598: LateIdStAd
  loc_FC15C1: var_94 = "SELECT D.*,D.Code as SearchCode FROM EmpCategory D where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_FC15CA: unk_45C452.Execute var_94, var_B4, -1
  loc_FC1605: var_90 = "INI"
  loc_FC1613: Call Proc_313_28_E7B93C(Proc_5_1_100CB50(var_90, Me, Me.DGHelp, Me), Me)
  loc_FC161E: Call Proc_313_30_11C7E0C(Me)
  loc_FC1623: Exit Sub
  loc_FC1624: ' Referenced from: FC14C4
  loc_FC162C: Set var_8C = Err()
  loc_FC1632: Call 0.Method_arg_2C (var_90)
  loc_FC1653: MsgBox(CVar(var_90), &H40, "Information", var_EC, var_10C)
  loc_FC1666: Exit Sub
  loc_FC1667: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1F48
  'Data Table: 45C438
  Dim var_8C As Label
  loc_ED1EA6: Call 0.Method_arg_50 (var_88)
  loc_ED1EB8: Me.LblFormCaption.Caption = var_88
  loc_ED1ED1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED1EDD: Set var_A0 = Me.TopCtrl1
  loc_ED1EE3: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED1EF0: Set var_8C = Me.TopCtrl1
  loc_ED1EF6: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED1F10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED1F2B: Call 0.Method_arg_100 (var_B8)
  loc_ED1F3D: Me.LblFormCaption.Width = var_B8
  loc_ED1F45: Exit Sub
  loc_ED1F46: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2863C
  'Data Table: 45C438
  loc_E2861F: Set global_52 = Nothing
  loc_E28631: Set global_56 = Nothing
  loc_E28638: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E284CC
  'Data Table: 45C438
  loc_E284A4: On Error Goto loc_E284C3
  loc_E284BB: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E284C3: ' Referenced from: E284A4
  loc_E284C3: Proc_6_60_E62BC4(Shift)
  loc_E284C8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EFCCCC
  'Data Table: 45C438
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFCC00: On Error Goto loc_EFCC86
  loc_EFCC10: Me.LblUser.Caption = vbNullString
  loc_EFCC25: Me.LblLDt.Caption = vbNullString
  loc_EFCC2D: Call Proc_313_29_E7A344()
  loc_EFCC47: var_8C = "ADD"
  loc_EFCC55: Call Proc_313_28_E7B93C(Proc_5_1_100CB50(var_8C, Me))
  loc_EFCC6B: Set var_88 = Me.Txt
  loc_EFCC71: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFCC79: var_94.SetFocus
  loc_EFCC85: Exit Sub
  loc_EFCC86: ' Referenced from: EFCC00
  loc_EFCC8E: Set var_88 = Err()
  loc_EFCC94: Call 0.Method_arg_2C (var_8C)
  loc_EFCCB5: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFCCC8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC8D70
  'Data Table: 45C438
  loc_EC8CD4: On Error Goto loc_EC8D69
  loc_EC8D0E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC8D11:   Call Proc_313_32_EB866C()
  loc_EC8D22:   Set var_110 = Me
  loc_EC8D39:   Call Proc_313_28_E7B93C(Proc_5_1_100CB50("INI", var_110))
  loc_EC8D44:   Call Proc_313_32_EB866C(global_52)
  loc_EC8D49:   Call Proc_313_30_11C7E0C()
  loc_EC8D51: Else
  loc_EC8D57:   Call 0.Method_arg_1E8 (var_110)
  loc_EC8D5F:   Call var_110.SetFocus
  loc_EC8D68: End If
  loc_EC8D68: Exit Sub
  loc_EC8D69: ' Referenced from: EC8CD4
  loc_EC8D69: Proc_6_60_E62BC4()
  loc_EC8D6E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10633FC
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim unk_45C452 As Connection15
  Dim var_96 As Integer
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1063190: On Error Goto loc_10633A3
  loc_10631A1: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10631A4:   Exit Sub
  loc_10631A5: End If
  loc_10631D7: var_D4 = "Employee Master"
  loc_106321F: If (Proc_6_108_1010FEC(MemVar_1F92044, "Employee", "Category", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1063222:   Exit Sub
  loc_1063223: End If
  loc_106325A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1063266:   unk_45C452.BeginTrans var_D0
  loc_106326D:   var_96 = &HFF
  loc_1063281:   var_94 = Me.Bookmark 'Variant
  loc_10632CD:   var_118 = "Delete From EmpCategory Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_10632D1:   var_B4 = CStr(var_118)
  loc_10632DB:   unk_45C452.Execute var_B4, var_138, -1
  loc_10632FD:   unk_45C452.CommitTrans
  loc_1063304:   var_96 = 0
  loc_1063312:   Me.Requery -1
  loc_1063322:   Me.Requery -1
  loc_1063342:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_106334F:     Me.Bookmark = var_94
  loc_1063357:   Else
  loc_106336B:     If (Me.EOF = 0) Then
  loc_1063374:       Me.MoveLast
  loc_1063379:     End If
  loc_1063379:   End If
  loc_1063379:   Call Proc_313_30_11C7E0C(var_96, var_13C, var_96)
  loc_106339A:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_10633A2: End If
  loc_10633A2: Exit Sub
  loc_10633A3: ' Referenced from: 1063190
  loc_10633A9: If (var_96 = &HFF) Then
  loc_10633B2:   unk_45C452.RollbackTrans
  loc_10633B7: End If
  loc_10633BF: Set var_9C = Err()
  loc_10633C5: Call 0.Method_arg_2C (var_B4, 0)
  loc_10633E6: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_10633F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F63FFC
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F63ED8: On Error Goto loc_F63FB9
  loc_F63EE9: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F63EEC:   Exit Sub
  loc_F63EED: End If
  loc_F63F04: If (Me.RecordCount > 0) Then
  loc_F63F1C:   var_8C = "EDIT"
  loc_F63F2A:   Call Proc_313_28_E7B93C(Proc_5_1_100CB50(var_8C, Me))
  loc_F63F40:   Set var_90 = Me.Txt
  loc_F63F46:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F63F4E:   var_98.SetFocus
  loc_F63F5D: Else
  loc_F63F7E:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F63F8E: End If
  loc_F63F9B: Me.LblUser.Caption = vbNullString
  loc_F63FB0: Me.LblLDt.Caption = vbNullString
  loc_F63FB8: Exit Sub
  loc_F63FB9: ' Referenced from: F63ED8
  loc_F63FC1: Set var_90 = Err()
  loc_F63FC7: Call 0.Method_arg_2C (var_8C)
  loc_F63FE8: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F63FFB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AE60
  'Data Table: 45C438
  loc_E1AE55: Me.Global.Unload Me
  loc_E1AE5D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26540
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26440: On Error Goto loc_F264D8
  loc_F2644C: var_88 = Me.RecordCount
  loc_F2645A: If (var_88 <= 0) Then
  loc_F26463:   var_B8 = "Information"
  loc_F2647E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2648E:   Exit Sub
  loc_F2648F: End If
  loc_F2649D: MemVar_1F920E4 = "Select Code As SearchCode,Name,Type FROM EmpCategory where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F264A7: var_10C = "4000,2500,3000"
  loc_F264AD: Proc_6_126_F1BCC0(var_10C)
  loc_F264BB: MemVar_1F92120 = Me
  loc_F264D2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F264D7: Exit Sub
  loc_F264D8: ' Referenced from: F26440
  loc_F264E0: Set var_110 = Err()
  loc_F264E6: Call 0.Method_arg_1C (var_88)
  loc_F264F7: If (var_88 <> 0) Then
  loc_F26502:   Set var_110 = Err()
  loc_F26508:   Call 0.Method_arg_2C (var_10C)
  loc_F26529:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F2653C: End If
  loc_F2653C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3E118
  'Data Table: 45C438
  loc_E3E108: Proc_5_0_110649C(&HFF, Me)
  loc_E3E110: Call Proc_313_30_11C7E0C(global_52)
  loc_E3E115: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3E0B8
  'Data Table: 45C438
  loc_E3E0A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3E0B0: Call Proc_313_30_11C7E0C(global_52)
  loc_E3E0B5: Exit Sub
  loc_E3E0B6: var_3FF8 = Mid$(4, , )
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3DCF8
  'Data Table: 45C438
  loc_E3DCE8: Proc_5_0_110649C(&HFF, Me)
  loc_E3DCF0: Call Proc_313_30_11C7E0C(global_52)
  loc_E3DCF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3DF38
  'Data Table: 45C438
  loc_E3DF28: Proc_5_0_110649C(&HFF, Me)
  loc_E3DF30: Call Proc_313_30_11C7E0C(global_52)
  loc_E3DF35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A6C0C
  'Data Table: 45C438
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_45C452 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10A6954: On Error Goto loc_10A6BC2
  loc_10A697B: unk_45C452.Execute "SELECT * from EmpCategory where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_10A6986: Set var_88 = var_C8
  loc_10A699C: var_CC = var_88.RecordCount
  loc_10A69AA: If (var_CC = 0) Then
  loc_10A69C6:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10A69D6:   Exit Sub
  loc_10A69D7: End If
  loc_10A69ED: Set var_C8 = var_88 
  loc_10A69F9: var_12E = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\EmpCatMast.ttx")
  loc_10A6A03: Set var_88 = var_C8
  loc_10A6A09: var_B4 = CVar(var_12E) 'Integer
  loc_10A6A0C: var_98 = var_B4 'Variant
  loc_10A6A28: var_A0 = MemVar_1F920B4 & "\EmpCatMast.RPT"
  loc_10A6A31: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10A6A3C: MemVar_1F921E4 = var_C8
  loc_10A6A57: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10A6A5F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10A6A6B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10A6A84:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A6A8C:   Call 0.Method_arg_20 (var_138)
  loc_10A6A94:   Call 0.Method_arg_30 (var_A0)
  loc_10A6ADA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A6AE6:     Call 0.Method_arg_50 (var_A0)
  loc_10A6AEF:     var_A4 = "'" & var_A0
  loc_10A6B09:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A6B11:     Call 0.Method_arg_20 (var_138)
  loc_10A6B19:     Call 0.Method_arg_38 (var_A4 & "'")
  loc_10A6B2E:   End If
  loc_10A6B31: Next var_132 'Integer
  loc_10A6B4F: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10A6B57: Call 0.Method_arg_2C (var_DC)
  loc_10A6B65: Call 0.Method_arg_150 (var_FC)
  loc_10A6B70: Call 0.Method_arg_50 (var_A0)
  loc_10A6B7A: Set var_138 = Nothing
  loc_10A6B94: Set var_C8 = MemVar_1F921E4 
  loc_10A6BA0: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_10A6BAB: MemVar_1F921E4 = var_C8
  loc_10A6BBE: Set var_88 = Nothing
  loc_10A6BC1: Exit Sub
  loc_10A6BC2: ' Referenced from: 10A6954
  loc_10A6BCA: Set var_C8 = Err()
  loc_10A6BD0: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A6BDB: Call 0.Method_arg_50 (var_A4)
  loc_10A6BF7: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10A6C0A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0999C
  'Data Table: 45C438
  Dim Me As Recordset15
  loc_E09993: Me.Requery -1
  loc_E09998: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12889A8
  'Data Table: 45C438
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_45C452 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_114 As TextBox
  Dim var_B0 As Variant
  Dim var_1A8 As Variant
  loc_1288424: On Error Goto loc_1288955
  loc_128842B: var_86 = CByte(0) 'Byte
  loc_128843A: Set var_90 = Me.Txt
  loc_1288440: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1288469: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_1288473:   Call Txt_GotFocus(CInt(0))
  loc_1288478:   Exit Sub
  loc_1288479: End If
  loc_1288484: Set var_90 = Me.Txt
  loc_128848A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12884B3: If (Proc_183_19_E8DAFC(var_94, "Type") = 0) Then
  loc_12884BD:   Call Txt_GotFocus(CInt(1))
  loc_12884C2:   Exit Sub
  loc_12884C3: End If
  loc_12884C7: Set var_90 = Me.TopCtrl1
  loc_12884CD: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_94)
  loc_12884E6: If (CStr() = "Add") Then
  loc_12884EF:   var_D4 = 0
  loc_128850C:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From EmpCategory where Site_Code='" & MemVar_1F92070
  loc_1288513:   var_B4 = CStr() & "'"
  loc_128851C:   unk_45C452.Execute var_B4, var_B0, -1
  loc_1288524:   var_90 = var_90.Fields
  loc_128852C:   var_D4 = var_94.Item(var_94)
  loc_1288534:   var_98 = var_98.Value
  loc_128856D:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_128859B:   var_108 = (1 + Format(CStr(var_E4), "000"))
  loc_12885A6:   global_84 = CStr(var_108)
  loc_12885BB: Else
  loc_12885D8:   var_94 = Me.Fields.Item("Code")
  loc_12885EF:   global_84 = CStr(var_94.Value)
  loc_1288600: End If
  loc_1288609: unk_45C452.BeginTrans var_10C
  loc_1288612: var_86 = CByte(1) 'Byte
  loc_128861A: Set var_90 = Me.TopCtrl1
  loc_1288620: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_1288639: If (CStr(var_F8) = "Add") Then
  loc_1288653:   var_9C = "Insert Into EmpCategory(Code,Name,Type,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_84
  loc_128866B:   Set var_90 = Me.Txt
  loc_1288671:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_1288679:   var_24C = var_94.Text
  loc_1288682:   var_110 = -1 & var_B4
  loc_1288689:   var_F8 = CVar(var_110 & "','") 'String
  loc_128869A:   Set var_98 = Me.Txt
  loc_12886A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114, var_118)
  loc_12886A8:   var_F8 = var_114.Text
  loc_12886B6:   var_E4 = Trim(CVar(var_118))
  loc_12886FC:   Proc_6_8_EB0DE4(var_1B8, CVar(Proc_6_14_EF349C(var_250 & var_E4 & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "',")))
  loc_128872E:   unk_45C452.Execute CStr(var_E4 & var_1B8 & ",'A','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1288773: Else
  loc_1288791:   Set var_90 = Me.Txt
  loc_1288797:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE EmpCategory SET Name='")
  loc_128879F:   var_24C = var_94.Text
  loc_12887A8:   var_B4 = -1 & var_9C
  loc_12887AF:   var_F8 = CVar(var_B4 & "',Type='") 'String
  loc_12887BD:   Set var_98 = Me.Txt
  loc_12887C3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_114)
  loc_12887D2:   var_E4 = Trim(CVar(var_114))
  loc_12887DA:   var_108 = var_F8 & var_E4 
  loc_12887DE:   var_C4 = "',SITE_CODE='"
  loc_1288812:   var_1A8 = CVar(Proc_6_14_EF349C(var_108 & var_C4 & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=")) 'String
  loc_1288818:   Proc_6_8_EB0DE4(var_1B8, var_1A8)
  loc_128884D:   unk_45C452.Execute CStr(var_250 & var_1B8 & " ,U_AE='E' WHERE Code='" & CVar(global_84) & "'"), , 
  loc_1288889: End If
  loc_128888F: unk_45C452.CommitTrans
  loc_1288898: var_86 = CByte(0) 'Byte
  loc_12888A7: Me.Requery -1
  loc_12888B7: Me.Requery -1
  loc_12888E4: Me.Find "SearchCode='" & global_84 & "'", 0, 1
  loc_12888F4: Set var_90 = Me.TopCtrl1
  loc_12888FA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_C4)
  loc_1288913: If (CStr() = "Add") Then
  loc_1288916:   Call TopCtrl1_UnknownEvent_A()
  loc_128891B:   Exit Sub
  loc_128891C: End If
  loc_1288931: var_9C = "INI"
  loc_128893F: Call Proc_313_28_E7B93C(Proc_5_1_100CB50(var_9C, Me))
  loc_128894A: Call Proc_313_32_EB866C(global_52)
  loc_128894F: Call Proc_313_30_11C7E0C()
  loc_1288954: Exit Sub
  loc_1288955: ' Referenced from: 1288424
  loc_128895E: If (CInt(var_86) = 1) Then
  loc_1288967:   unk_45C452.RollbackTrans
  loc_128896C: End If
  loc_1288974: Set var_90 = Err()
  loc_128897A: Call 0.Method_arg_2C (var_9C)
  loc_1288993: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12889A6: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8927C
  'Data Table: 45C438
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89138: On Error Goto loc_F89216
  loc_F8913F: Set var_A4 = Me.ListView
  loc_F89189: Set var_BC = Me.Txt
  loc_F8918F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F89197: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F891C3: Me.FrmList.Visible = False
  loc_F891DD: var_A0 = CStr(Me.ListView.Tag)
  loc_F891E5: var_C8 = Val(var_A0)
  loc_F891F3: Set var_9C = Me.Txt
  loc_F891F9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89201: var_A4.SetFocus
  loc_F89215: Exit Sub
  loc_F89216: ' Referenced from: F89138
  loc_F8921E: Set var_88 = Err()
  loc_F89224: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89235: If (var_CC <> 0) Then
  loc_F89240:   Set var_88 = Err()
  loc_F89246:   Call 0.Method_arg_2C (var_A0)
  loc_F89267:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8927A: End If
  loc_F8927A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4264
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC41DA: On Error Goto loc_EC421F
  loc_EC41E3: Me.MoveFirst
  loc_EC41FD: var_8C = "code='" & MyValue
  loc_EC420D: Me.Find var_8C & "'", 0, 1
  loc_EC4219: Call Proc_313_30_11C7E0C(var_A0)
  loc_EC421E: Exit Sub
  loc_EC421F: ' Referenced from: EC41DA
  loc_EC4227: Set var_A4 = Err()
  loc_EC422D: Call 0.Method_arg_2C (var_8C)
  loc_EC424E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4261: Exit Sub
  loc_EC4262: Exit Sub
End Sub

Public Sub Proc_313_28_E7B93C(arg_C) 'E7B93C
  'Data Table: 45C438
  Dim var_98 As TextBox
  loc_E7B8EA: Set var_8C = Me.Txt
  loc_E7B8F0: Call 0.Method_Proc_313_28_E7B93CC (var_8E, var_86)
  loc_E7B900: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7B916:   Set var_8C = Me.Txt
  loc_E7B91C:   Call 0.Method_Proc_313_28_E7B93C0 (CInt(var_86), var_98)
  loc_E7B924:   var_98.Enabled = arg_C
  loc_E7B933: Next var_92 'Byte
  loc_E7B939: Exit Sub
End Sub

Public Sub Proc_313_29_E7A344
  'Data Table: 45C438
  Dim var_98 As TextBox
  loc_E7A2F2: Set var_8C = Me.Txt
  loc_E7A2F8: Call 0.Method_Proc_313_29_E7A344C (var_8E, var_86)
  loc_E7A308: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A31E:   Set var_8C = Me.Txt
  loc_E7A324:   Call 0.Method_Proc_313_29_E7A3440 (CInt(var_86), var_98)
  loc_E7A32C:   var_98.Text = vbNullString
  loc_E7A33B: Next var_92 'Byte
  loc_E7A341: Exit Sub
End Sub

Public Sub Proc_313_30_11C7E0C
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B8 As Fields15
  Dim var_B4 As String
  Dim var_CC As TextBox
  loc_11C79E0: On Error Goto loc_11C7DC8
  loc_11C79E9: Proc_183_45_E5C118(global_52)
  loc_11C7A05: If (Me.RecordCount <= 0) Then
  loc_11C7A08:   Call Proc_313_29_E7A344()
  loc_11C7A10: Else
  loc_11C7AB9:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11C7B01:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_11C7B81:   var_CC = Me.Fields.Item("U_AE")
  loc_11C7B9A:   var_130 = "entdt :   "
  loc_11C7BA5:   var_110 = "Last Update :   "
  loc_11C7BE2:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_CC)) = "E"), var_110, var_130))
  loc_11C7C2A:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_11C7C96:   global_84 = CStr(Me.Fields.Item("Name").Value)
  loc_11C7CE3:   Set var_B8 = Me.Txt
  loc_11C7CE9:   Call 0.Method_Proc_313_30_11C7E0C0 (CInt(0), var_CC)
  loc_11C7CF1:   var_CC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11C7D43:   Set var_B8 = Me.Txt
  loc_11C7D49:   Call 0.Method_Proc_313_30_11C7E0C0 (CInt(0), var_CC)
  loc_11C7D51:   var_CC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11C7D95:   var_B4 = CStr(Me.Fields.Item("Type").Value)
  loc_11C7DA3:   Set var_B8 = Me.Txt
  loc_11C7DA9:   Call 0.Method_Proc_313_30_11C7E0C0 (CInt(1), var_CC)
  loc_11C7DB1:   var_CC.Text = var_B4
  loc_11C7DC7: End If
  loc_11C7DC7: Exit Sub
  loc_11C7DC8: ' Referenced from: 11C79E0
  loc_11C7DD0: Set var_8C = Err()
  loc_11C7DD6: Call 0.Method_arg_2C (var_B4)
  loc_11C7DF7: MsgBox(CVar(var_B4), &H40, "Information", var_110, var_130)
  loc_11C7E0A: Exit Sub
End Sub

Public Sub Proc_313_31_1085214
  'Data Table: 45C438
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_45C452 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_1084FA7: If (Me.RecordCount = 0) Then
  loc_1084FAA:   Proc_313_31_1085214 = 
  loc_1084FB0: End If
  loc_1084FB4: Set var_90 = Me.TopCtrl1
  loc_1084FBA: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1084FD3: If (CStr() = "Add") Then
  loc_1085011:   Set var_90 = Me.Txt
  loc_1085017:   Call 0.Method_Proc_313_31_10852140 (CInt(0), var_A8, var_AC, "Select Count(*) From EmpCategory Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_1085038:   unk_45C452.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1085048:    = var_D0.Item()
  loc_1085050:    = var_E4.Value
  loc_1085081:   If (var_A8.Text.Fields > 0) Then
  loc_108509F:     var_A0 = "Duplicate Name"
  loc_10850A5:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10850C0:     Set var_90 = Me.Txt
  loc_10850C6:     Call 0.Method_Proc_313_31_10852140 (CInt(0))
  loc_10850CE:     var_A8.SetFocus
  loc_10850DF:     Proc_313_31_1085214 = &HFF
  loc_10850E5:   End If
  loc_10850E8: Else
  loc_1085123:   Set var_90 = Me.Txt
  loc_1085129:   Call 0.Method_Proc_313_31_10852140 (CInt(0), var_A8, var_AC, "Select Count(*) From EmpCategory Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_108515B:   unk_45C452.Execute var_D0 & var_AC & "' And Name<>'" & global_84 & "'", 0, var_E4
  loc_108516B:    = var_D0.Item(var_A8)
  loc_1085173:    = var_E4.Value
  loc_10851A8:   If (var_A8.Text.Fields > 0) Then
  loc_10851CC:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10851E7:     Set var_90 = Me.Txt
  loc_10851ED:     Call 0.Method_Proc_313_31_10852140 (CInt(0))
  loc_10851F5:     var_A8.SetFocus
  loc_1085206:     Proc_313_31_1085214 = &HFF
  loc_108520C:   End If
  loc_108520C: End If
  loc_108520C: Proc_313_31_1085214 = var_A8
End Sub

Public Sub Proc_313_32_EB866C
  'Data Table: 45C438
  loc_EB85E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB85FA:   Me.DGHelp.Visible = False
  loc_EB8602: End If
  loc_EB861E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8630:   Me.FGPoint.Visible = False
  loc_EB8638: End If
  loc_EB8653: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8662:   Me.FrmList.Visible = False
  loc_EB866A: End If
  loc_EB866A: Exit Sub
End Sub

Public Sub Proc_313_33_EE18E8(arg_C) 'EE18E8
  'Data Table: 45C438
  Dim var_8C As TextBox
  loc_EE183C: Call Proc_313_32_EB866C()
  loc_EE184C: Set var_88 = Me.Txt
  loc_EE1852: Call 0.Method_Proc_313_33_EE18E80 (CInt(0))
  loc_EE187B: If (Proc_6_27_EA565C(var_8C, "Designation Name") = 0) Then
  loc_EE187E:   Exit Sub
  loc_EE187F: End If
  loc_EE18B6: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE18B9:   Call TopCtrl1_UnknownEvent_16()
  loc_EE18C1: Else
  loc_EE18CB:   Set var_88 = Me.Txt
  loc_EE18D1:   Call 0.Method_Proc_313_33_EE18E80 (arg_C, var_8C)
  loc_EE18D9:   var_8C.SetFocus
  loc_EE18E5: End If
  loc_EE18E5: Exit Sub
End Sub

Public Sub Proc_313_34_EDAF38
  'Data Table: 45C438
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDAE96: Set var_88 = Me.Txt
  loc_EDAE9C: Call 0.Method_Proc_313_34_EDAF380 (CInt(0), var_8C)
  loc_EDAEBB: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDAED7: Set var_B4 = Me.Txt
  loc_EDAEDD: Call 0.Method_Proc_313_34_EDAF380 (CInt(0), var_B8)
  loc_EDAEF8: Set var_88 = Me.Txt
  loc_EDAEFE: Call 0.Method_Proc_313_34_EDAF380 (CInt(0), var_8C)
  loc_EDAF16: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDAF25: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDAF37: Exit Sub
End Sub
