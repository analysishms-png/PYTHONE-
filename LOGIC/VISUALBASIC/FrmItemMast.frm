VERSION 5.00
Begin VB.Form FrmItemMast
  Caption = "Item Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmItemMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8880
  ClientHeight = 8505
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2895
    Width = 3480
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin DataGrid DGRest
    Left = 7920
    Top = 2520
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 450
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2580
    Width = 3480
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 20
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
    Left = 12360
    Top = 2070
    Width = 1935
    Height = 1785
    Visible = 0   'False
    TabIndex = 6
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
    Begin ListView ListView
      Left = 15
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 7
    End
  End
  Begin DataGrid DGHelp
    Left = 8280
    Top = 1680
    Width = 4230
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3285
    Top = 2265
    Width = 4680
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin MSFlexGrid FGPoint
    Left = 9570
    Top = 5100
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 8
  End
  Begin DataGrid DGBarCode
    Left = 8520
    Top = 720
    Width = 3855
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin Label LblName
    Caption = "Bar Code"
    Index = 2
    ForeColor = &HC00000&
    Left = 2160
    Top = 2895
    Width = 885
    Height = 240
    TabIndex = 15
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4440
    Top = 5760
    Width = 2790
    Height = 285
    TabIndex = 12
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1065
    Top = 5760
    Width = 2880
    Height = 255
    TabIndex = 11
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
  Begin Label LblName
    Caption = "HSN Code"
    Index = 1
    ForeColor = &HC00000&
    Left = 2160
    Top = 2595
    Width = 960
    Height = 240
    TabIndex = 10
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
    Caption = "Item Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2160
    Top = 2265
    Width = 1035
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

Attribute VB_Name = "FrmItemMast"


Private Sub DGHelp_UnknownEvent_9 'F4F4C4
  'Data Table: 474430
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4F3BB: Me.DGHelp.Visible = False
  loc_F4F3DA: If (Me.RecordCount > 0) Then
  loc_F4F419:   Set var_B4 = Me.Txt
  loc_F4F41F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4F427:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4F45A:   var_B0 = Me.Fields.Item("Code")
  loc_F4F479:   Set var_B4 = Me.Txt
  loc_F4F47F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_B8)
  loc_F4F487:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4F49D: End If
  loc_F4F4A8: Set var_A8 = Me.Txt
  loc_F4F4AE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1))
  loc_F4F4B6: var_B0.SetFocus
  loc_F4F4C2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E732C0
  'Data Table: 474430
  loc_E7327E: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E73295: Set var_8C = Me.FGPoint
  loc_E732B1: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(1))
  loc_E732BF: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3A4B4
  'Data Table: 474430
  loc_E3A4A8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3A4AB:   Call DGHelp_UnknownEvent_9()
  loc_E3A4B0: End If
  loc_E3A4B0: Exit Sub
End Sub

Private Sub Form_Load() '1078278
  'Data Table: 474430
  Dim var_88 As Label
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_D4 As Variant
  Dim var_C4 As String
  Dim var_D8 As String
  Dim unk_474443 As Connection15
  loc_1077FF0: On Error Goto loc_1078234
  loc_1078002: Me.LblUser.Left = CDbl(13500)
  loc_1078019: Me.LblUser.Top = CDbl(7800)
  loc_1078030: Me.LblLDt.Top = CDbl(8160)
  loc_1078047: Me.LblLDt.Left = CDbl(13500)
  loc_1078056: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1078069: Set var_88 = Me.Txt
  loc_107806F: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_107808E: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_10780AA: Set var_B4 = Me.Txt
  loc_10780B0: Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10780CB: Set var_88 = Me.Txt
  loc_10780D1: Call 0.Method_Form_Load0 (CInt(1), var_8C)
  loc_10780E9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_10780F8: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_1078114: Set var_88 = Me.TopCtrl1
  loc_107811A: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_8001000B("AEDP")
  loc_1078128: Call 0.Method_arg_50 (var_C4)
  loc_1078130: var_D4 = CVar(var_C4) 'String
  loc_107813E: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030007(var_D4)
  loc_1078164: var_D8 = "SELECT Q.Code,Q.Name FROM (SELECT Code,Name,LogSite_Code FROM Item)Q WHERE (Q.LOGSITE_CODE='" & MemVar_1F92078 & "' or Q.LOGSITE_CODE='HO') ORDER BY Q.Name"
  loc_107816D: unk_474443.Execute var_D8, var_D4, -1
  loc_107819C: CVarUnk
  loc_10781A1: VerifyVarObj
  loc_10781A7: Set var_88 = Me.DGHelp
  loc_10781AD: LateIdStAd
  loc_10781CF: var_C4 = "SELECT I.Code,I.Name Item,IsNull(I.CommodityCode,'') CommodityCode,I.BarCode,I.SITE_CODE,I.LOGSITE_CODE FROM Item I WHERE (I.LOGSITE_CODE='" & MemVar_1F92078
  loc_10781DF: unk_474443.Execute var_C4 & "' or I.LOGSITE_CODE='HO') ORDER BY I.Name", var_D4, -1
  loc_10781F0: Set global_52 = var_88
  loc_107820A: Call Proc_228_27_E73514(0, var_88, var_88)
  loc_1078218: Call 0.Method_arg_160 (var_88, Me.TopCtrl1)
  loc_1078226: Call 0.Method_arg_164 (var_88)
  loc_107822E: Call Proc_228_29_124A85C(var_88)
  loc_1078233: Exit Sub
  loc_1078234: ' Referenced from: 1077FF0
  loc_107823C: Set var_88 = Err()
  loc_1078242: Call 0.Method_arg_2C (var_C4)
  loc_1078263: MsgBox(CVar(var_C4), &H40, "Information", var_FC, var_11C)
  loc_1078276: Exit Sub
  loc_1078277: Exit Sub
End Sub

Private Sub Form_Resize() 'ED5B48
  'Data Table: 474430
  Dim var_8C As Label
  loc_ED5AA6: Call 0.Method_arg_50 (var_88)
  loc_ED5AB8: Me.LblFormCaption.Caption = var_88
  loc_ED5AD1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED5ADD: Set var_A0 = Me.TopCtrl1
  loc_ED5AE3: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010006()
  loc_ED5AF0: Set var_8C = Me.TopCtrl1
  loc_ED5AF6: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010004()
  loc_ED5B10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED5B2B: Call 0.Method_arg_100 (var_B8)
  loc_ED5B3D: Me.LblFormCaption.Width = var_B8
  loc_ED5B45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A74C
  'Data Table: 474430
  loc_E2A72F: Set global_52 = Nothing
  loc_E2A741: Set global_56 = Nothing
  loc_E2A748: Exit Sub
  loc_E2A749: CExtInstUnk
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E88114
  'Data Table: 474430
  loc_E880B0: On Error Goto loc_E880D0
  loc_E880C7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E880CF: Exit Sub
  loc_E880D0: ' Referenced from: E880B0
  loc_E880D8: Set var_88 = Err()
  loc_E880DE: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E880FF: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E88112: Exit Sub
  loc_E88113: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '113B800
  'Data Table: 474430
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_A0 As String
  Dim unk_474443 As Connection15
  loc_113B492: Set var_88 = Me.Txt
  loc_113B498: Call 0.Method_Txt_GotFocus0 (Index)
  loc_113B4A6: Proc_6_74_E226B0(var_8C)
  loc_113B4B2: Call Proc_228_31_EBB224(var_8C)
  loc_113B4BA: var_92 = Index
  loc_113B4C5: If (var_92 = CInt(1)) Then
  loc_113B4DF:   If (Me.RecordCount > 0) Then
  loc_113B4ED:     Set var_8C = Me.FGPoint
  loc_113B505:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_113B513:   End If
  loc_113B561:   Set var_88 = Me.Txt
  loc_113B567:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_113B56F:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_113B587:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_113B597:     Set var_88 = Me.Txt
  loc_113B59D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113B5A5:     var_8C.Tag = vbNullString
  loc_113B5B1:     Exit Sub
  loc_113B5B2:   End If
  loc_113B5BF:   Set var_88 = Me.Txt
  loc_113B5C5:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_113B5CD:   var_A0 = var_8C.Text
  loc_113B5DF:   var_B0 = "Name"
  loc_113B5F6:   var_B4 = Me.Fields.Item(var_B0)
  loc_113B5FE:   var_C4 = var_B4.Value
  loc_113B61A:   If CBool(CVar(var_A0) <> var_C4) Then
  loc_113B623:     Me.MoveFirst
  loc_113B646:     Set var_88 = Me.Txt
  loc_113B64C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_113B654:     0 = var_8C.Text
  loc_113B66D:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_113B682:   End If
  loc_113B685: Else
  loc_113B68D:   If (var_92 = CInt(3)) Then
  loc_113B69E:     Set var_88 = Me.Txt
  loc_113B6A4:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_113B6C3:     Me.DGBarCode.Left = CVar(var_8C.Left)
  loc_113B6DF:     Set var_90 = Me.Txt
  loc_113B6E5:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_113B706:     Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_113B71E:     var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_113B72D:     Me.DGBarCode.Top = CVar(var_8C.Left)
  loc_113B753:     var_A0 = "Select Q.Code,Q.BarCode From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q  Where (Q.LOGSITE_CODE='" & MemVar_1F92078
  loc_113B763:     unk_474443.Execute var_A0 & "' or Q.LOGSITE_CODE='HO') ORDER BY Q.BarCode", var_C4, -1
  loc_113B792:     CVarUnk
  loc_113B797:     VerifyVarObj
  loc_113B79D:     Set var_88 = Me.DGBarCode
  loc_113B7A3:     LateIdStAd
  loc_113B7C8:     If (Me.RecordCount > 0) Then
  loc_113B7EE:       Proc_6_137_1193554(Me.DGBarCode, Me.Txt, Index, Me.FGPoint)
  loc_113B7FC:     End If
  loc_113B7FC:   End If
  loc_113B7FC: End If
  loc_113B7FC: Exit Sub
  loc_113B7FD: StAryRecMove
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10DE034
  'Data Table: 474430
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10DDD32: If (CLng(Shift) = &H1B) Then
  loc_10DDD35:   Call Proc_228_31_EBB224()
  loc_10DDD3A:   Exit Sub
  loc_10DDD3B: End If
  loc_10DDD3E: var_88 = KeyCode
  loc_10DDD49: If (var_88 = CInt(1)) Then
  loc_10DDD6E:   If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10DDD8E:     Set var_A0 = Me.FGPoint
  loc_10DDDC0:     Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(1), global_56, Shift)
  loc_10DDDD4:   End If
  loc_10DDE2D:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DDE53:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint, 0)
  loc_10DDE61:   End If
  loc_10DDE64: Else
  loc_10DDE6C:   If (var_88 = CInt(3)) Then
  loc_10DDE91:     If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_10DDEB1:       Set var_A0 = Me.FGPoint
  loc_10DDEDF:       Proc_6_79_11ACE04(Me.DGBarCode, Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_10DDEF3:     End If
  loc_10DDF4C:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10DDF53:       Set var_A0 = Me.DGBarCode
  loc_10DDF72:       Proc_6_138_106D6F8(var_A0, global_60, KeyCode, Me.FGPoint, var_A0)
  loc_10DDF80:     End If
  loc_10DDF80:   End If
  loc_10DDF80: End If
  loc_10DDFBB: If ((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGBarCode.Visible) = 0)) Then
  loc_10DDFDC:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_10DDFE2:     Call Proc_228_32_E8EB8C(KeyCode, 0, 1)
  loc_10DDFEA:   Else
  loc_10DDFFF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10DE008:       Proc_6_75_E527CC(Shift, arg_14, var_A0)
  loc_10DE010:     Else
  loc_10DE023:       If ((CLng(Shift) = &H26) And (KeyCode <> CInt(1))) Then
  loc_10DE02C:         Proc_6_76_E52838(Shift, arg_14)
  loc_10DE031:       End If
  loc_10DE031:     End If
  loc_10DE031:   End If
  loc_10DE031: End If
  loc_10DE031: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E479A4
  'Data Table: 474430
  Dim arg_10 As Integer
  Dim var_4792 As Integer
  loc_E47976: Proc_6_133_E7EF78(var_94)
  loc_E4798B: If (CInt(var_94) = &HD) Then
  loc_E47990:   arg_10 = 0
  loc_E47993: End If
  loc_E47996: Proc_6_58_E054C0(arg_10, arg_10)
  loc_E479A1: Exit Sub
  loc_E479A2: var_4792 = KeyAscii
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F8BB68
  'Data Table: 474430
  Dim var_86 As Integer
  Dim var_AC As TextBox
  loc_F8BA0B: var_86 = KeyCode
  loc_F8BA16: If (var_86 = CInt(1)) Then
  loc_F8BA35:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F8BA42:     var_A4 = "Name"
  loc_F8BA61:     Proc_6_80_FF0AC0(Me.Txt, CInt(1), global_56)
  loc_F8BA74:     Set var_AC = Me.DGHelp
  loc_F8BA93:     Proc_6_138_106D6F8(var_AC, global_56, KeyCode, Me.FGPoint)
  loc_F8BAA1:   End If
  loc_F8BAA4: Else
  loc_F8BAAC:   If (var_86 = CInt(3)) Then
  loc_F8BAD2:     Set var_A8 = Me.Txt
  loc_F8BAD8:     Call 0.Method_Txt_KeyUp0 (KeyCode, var_AC, var_A4, (CBool(Me.DGBarCode.Visible) = &HFF))
  loc_F8BAE0:     Shift = var_AC.Text
  loc_F8BAFD:     If (var_A4 And (var_A4 <> vbNullString)) Then
  loc_F8BB0A:       var_A4 = "BarCode"
  loc_F8BB25:       Proc_6_80_FF0AC0(Me.Txt, KeyCode, global_60)
  loc_F8BB57:       Proc_6_138_106D6F8(Me.DGBarCode, global_60, KeyCode, Me.FGPoint)
  loc_F8BB65:     End If
  loc_F8BB65:   End If
  loc_F8BB65: End If
  loc_F8BB65: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47A04
  'Data Table: 474430
  loc_E479E2: Set var_88 = Me.Txt
  loc_E479E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E479F6: Proc_6_73_E22704(var_8C)
  loc_E47A02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E622BC
  'Data Table: 474430
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E6226F: var_86 = Cancel
  loc_E6227A: If (var_86 = CInt(1)) Then
  loc_E62280:   Call Proc_228_30_1263EDC(var_88)
  loc_E6228B:   If (var_88 = &HFF) Then
  loc_E62290:     arg_10 = &HFF
  loc_E62293:     Exit Sub
  loc_E62294:   End If
  loc_E62297: Else
  loc_E6229F:   If (var_86 = CInt(3)) Then
  loc_E622A5:     Call Proc_228_30_1263EDC(var_88, arg_10)
  loc_E622B0:     If (var_88 = &HFF) Then
  loc_E622B5:       arg_10 = &HFF
  loc_E622B8:       Exit Sub
  loc_E622B9:     End If
  loc_E622B9:   End If
  loc_E622B9: End If
  loc_E622B9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EAADAC
  'Data Table: 474430
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EAAD20: On Error Goto loc_EAADA6
  loc_EAAD46: Call Proc_228_27_E73514(Proc_5_1_100CB50("ADD", Me))
  loc_EAAD51: Call Proc_228_28_EA8F38(global_52)
  loc_EAAD61: Set var_8C = Me.Txt
  loc_EAAD67: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_EAAD6F: var_94.SetFocus
  loc_EAAD88: Me.LblUser.Caption = vbNullString
  loc_EAAD9D: Me.LblLDt.Caption = vbNullString
  loc_EAADA5: Exit Sub
  loc_EAADA6: ' Referenced from: EAAD20
  loc_EAADA6: Proc_6_60_E62BC4(var_94)
  loc_EAADAB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBF8EC
  'Data Table: 474430
  loc_EBF854: On Error Goto loc_EBF8E4
  loc_EBF88E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBF89D:   Set var_10C = Me
  loc_EBF8B4:   Call Proc_228_27_E73514(Proc_5_1_100CB50("INI", var_10C))
  loc_EBF8BF:   Call Proc_228_31_EBB224(global_52)
  loc_EBF8C4:   Call Proc_228_29_124A85C()
  loc_EBF8CC: Else
  loc_EBF8D2:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBF8DA:   Call var_10C.SetFocus
  loc_EBF8E3: End If
  loc_EBF8E3: Exit Sub
  loc_EBF8E4: ' Referenced from: EBF854
  loc_EBF8E4: Proc_6_60_E62BC4()
  loc_EBF8E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '112CC98
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim unk_474443 As Connection15
  Dim var_114 As Variant
  Dim var_B0 As String
  loc_112C950: On Error Goto loc_112CC48
  loc_112C961: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_112C964:   Exit Sub
  loc_112C965: End If
  loc_112C997: var_D0 = "Item Master"
  loc_112C9DF: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "Code", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_112C9E2:   Exit Sub
  loc_112C9E3: End If
  loc_112CA1A: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_112CA26:   unk_474443.BeginTrans var_CC
  loc_112CA3C:   var_94 = Me.Bookmark 'Variant
  loc_112CA88:   var_114 = "Delete From Item Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_112CA96:   unk_474443.Execute CStr(var_114), var_134, -1
  loc_112CAE1:   var_164 = 0
  loc_112CAF4:   var_15C = 0
  loc_112CAFF:   var_158 = 0
  loc_112CB12:   var_150 = 0
  loc_112CB1D:   var_14C = 0
  loc_112CB30:   var_144 = 0
  loc_112CB70:   var_B0 = "Item"
  loc_112CB79:   Proc_154_5_10E33A4(MemVar_1F92044, var_B0, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_112CBA7:   unk_474443.CommitTrans
  loc_112CBB7:   Me.Requery -1
  loc_112CBC7:   Me.Requery -1
  loc_112CBE7:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_112CBF4:     Me.Bookmark = var_94
  loc_112CBFC:   Else
  loc_112CC10:     If (Me.EOF = 0) Then
  loc_112CC19:       Me.MoveLast
  loc_112CC1E:     End If
  loc_112CC1E:   End If
  loc_112CC1E:   Call Proc_228_29_124A85C(var_144, 0, var_14C, var_150)
  loc_112CC3F:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_112CC47: End If
  loc_112CC47: Exit Sub
  loc_112CC48: ' Referenced from: 112C950
  loc_112CC4E: unk_474443.RollbackTrans
  loc_112CC5B: Set var_98 = Err()
  loc_112CC61: Call 0.Method_arg_2C (var_B0, 0, var_158)
  loc_112CC82: MsgBox(CVar(var_B0), &H30, " Deletion Error ", var_114, var_134)
  loc_112CC95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F1C800
  'Data Table: 474430
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F1C6FC: On Error Goto loc_F1C7F9
  loc_F1C70D: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F1C710:   Exit Sub
  loc_F1C711: End If
  loc_F1C734: Call Proc_228_27_E73514(Proc_5_1_100CB50("EDIT", Me))
  loc_F1C74D: Set var_8C = Me.Txt
  loc_F1C753: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1C766: global_72 = var_94.Text
  loc_F1C782: Set var_8C = Me.Txt
  loc_F1C788: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_F1C79B: global_64 = var_94.Text
  loc_F1C7B6: Me.LblUser.Caption = vbNullString
  loc_F1C7CB: Me.LblLDt.Caption = vbNullString
  loc_F1C7DE: Set var_8C = Me.Txt
  loc_F1C7E4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1C7EC: var_94.SetFocus
  loc_F1C7F8: Exit Sub
  loc_F1C7F9: ' Referenced from: F1C6FC
  loc_F1C7F9: Proc_6_60_E62BC4(global_52)
  loc_F1C7FE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A7D8
  'Data Table: 474430
  loc_E1A7CD: Me.Global.Unload Me
  loc_E1A7D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F18580
  'Data Table: 474430
  Dim Me As Recordset15
  loc_F18490: On Error Goto loc_F1851A
  loc_F1849C: var_88 = Me.RecordCount
  loc_F184AA: If (var_88 <= 0) Then
  loc_F184CE:   MsgBox("Records Not Present For Searching.", &H40, "Information", var_E8, var_108)
  loc_F184DE:   Exit Sub
  loc_F184DF: End If
  loc_F184E2: MemVar_1F920E4 = "SELECT I.Code AS SEARCHCODE,I.Name,I.CommodityCode HSNCode,I.BarCode From Item I ORDER BY I.Name"
  loc_F184EC: MemVar_1F92120 = Me
  loc_F184F3: var_10C = "3900,1500,2000"
  loc_F184F9: Proc_6_126_F1BCC0(var_10C)
  loc_F18514: Call 0.Method_arg_2B0 (1)
  loc_F18519: Exit Sub
  loc_F1851A: ' Referenced from: F18490
  loc_F18522: Set var_110 = Err()
  loc_F18528: Call 0.Method_arg_1C (var_88)
  loc_F18539: If (var_88 <> 0) Then
  loc_F18544:   Set var_110 = Err()
  loc_F1854A:   Call 0.Method_arg_2C (var_10C)
  loc_F1856B:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F1857E: End If
  loc_F1857E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3CC78
  'Data Table: 474430
  loc_E3CC68: Proc_5_0_110649C(&HFF, Me)
  loc_E3CC70: Call Proc_228_29_124A85C(global_52)
  loc_E3CC75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39FD8
  'Data Table: 474430
  loc_E39FC8: Proc_5_0_110649C(&HFF, Me)
  loc_E39FD0: Call Proc_228_29_124A85C(global_52)
  loc_E39FD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3CBB8
  'Data Table: 474430
  loc_E3CBA8: Proc_5_0_110649C(&HFF, Me)
  loc_E3CBB0: Call Proc_228_29_124A85C(global_52)
  loc_E3CBB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CC18
  'Data Table: 474430
  loc_E3CC08: Proc_5_0_110649C(&HFF, Me)
  loc_E3CC10: Call Proc_228_29_124A85C(global_52)
  loc_E3CC15: Exit Sub
  loc_E3CC16: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10712B8
  'Data Table: 474430
  Dim unk_474443 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  Dim var_E4 As Variant
  loc_1071038: On Error Goto loc_107126F
  loc_1071051: unk_474443.Execute "select I.Code,I.Name,I.U_Name,I.U_AE,I.U_Entdt,IsNull(I.BarCode,'') BarCode,IsNull(I.CommodityCode,'') HSNCode FROM Item I ORDER BY I.Name", var_BC, -1
  loc_107105C: Set var_88 = var_C0
  loc_107106B: var_C4 = var_88.RecordCount
  loc_1071079: If (var_C4 = 0) Then
  loc_1071095:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10710A5:   Exit Sub
  loc_10710A6: End If
  loc_10710B5: var_12C = MemVar_1F920B4 & "\ItemMast.ttx"
  loc_10710BC: Set var_C0 = var_88 
  loc_10710C8: var_12E = CreateFieldDefFile(var_C0, var_12C)
  loc_10710D2: Set var_88 = var_C0
  loc_10710D8: var_AC = CVar(var_12E) 'Integer
  loc_10710DB: var_98 = var_AC 'Variant
  loc_10710F7: var_128 = MemVar_1F920B4 & "\ItemMast.RPT"
  loc_1071100: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_107110B: MemVar_1F921E4 = var_C0
  loc_1071126: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_107112E: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_107113A: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_1071153:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_107115B:   Call 0.Method_arg_20 (var_138)
  loc_1071163:   Call 0.Method_arg_30 (var_128)
  loc_10711A9:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_10711BF:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10711C7:     Call 0.Method_arg_20 (var_138)
  loc_10711CF:     Call 0.Method_arg_38 ("'Item List'")
  loc_10711DB:   End If
  loc_10711DE: Next var_132 'Integer
  loc_10711FC: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_1071204: Call 0.Method_arg_2C (var_D4)
  loc_1071212: Call 0.Method_arg_150 (var_F4)
  loc_107121D: Call 0.Method_arg_50 (var_128)
  loc_1071227: Set var_138 = Nothing
  loc_1071241: Set var_C0 = MemVar_1F921E4 
  loc_107124D: Proc_6_99_1483714(var_C0, 0, var_128)
  loc_1071258: MemVar_1F921E4 = var_C0
  loc_107126B: Set var_88 = Nothing
  loc_107126E: Exit Sub
  loc_107126F: ' Referenced from: 1071038
  loc_1071277: Set var_C0 = Err()
  loc_107127D: Call 0.Method_arg_2C (var_128, &HFF)
  loc_1071288: Call 0.Method_arg_50 (var_12C)
  loc_10712A4: MsgBox(CVar(var_128), &H10, CVar(var_12C), var_104, var_124)
  loc_10712B7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B5C4
  'Data Table: 474430
  Dim Me As Recordset15
  loc_E0B5BB: Me.Requery -1
  loc_E0B5C0: Exit Sub
  loc_E0B5C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1358D14
  'Data Table: 474430
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_474443 As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_11C As Variant
  Dim var_120 As TextBox
  Dim var_168 As TextBox
  Dim var_1FC As Variant
  Dim var_21C As Variant
  Dim var_2CC As Variant
  Dim var_140 As Variant
  Dim var_25C As Variant
  loc_1358558: On Error Goto loc_1358CBF
  loc_135855F: var_86 = CByte(0) 'Byte
  loc_135856E: Set var_90 = Me.Txt
  loc_1358574: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_135859D: If (Proc_6_27_EA565C(var_94, "Item") = 0) Then
  loc_13585A7:   Call Txt_GotFocus(CInt(1))
  loc_13585AC:   Exit Sub
  loc_13585AD: End If
  loc_13585B0: Call Proc_228_30_1263EDC(var_9E)
  loc_13585BB: If (var_9E = &HFF) Then
  loc_13585BE:   Exit Sub
  loc_13585BF: End If
  loc_13585C3: Set var_90 = Me.TopCtrl1
  loc_13585C9: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_94)
  loc_13585E2: If (CStr() = "Add") Then
  loc_13585EB:   var_D4 = 0
  loc_1358608:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Q.Code,3,6) AS INT)),1)+1 AS MyCode From (Select Code,Site_Code From Item Union Select Code,Site_Code From Itemmast)Q WHERE Q.SITE_CODE='" & MemVar_1F92070
  loc_135860F:   var_B4 = CStr() & "'"
  loc_1358618:   unk_474443.Execute var_B4, var_B0, -1
  loc_1358620:   var_90 = var_90.Fields
  loc_1358628:   var_D4 = var_94.Item(var_94)
  loc_1358630:   var_98 = var_98.Value
  loc_1358639:   var_E8 = CStr(var_E4)
  loc_1358669:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1358697:   var_108 = (1 + Format(var_E8, "000000"))
  loc_13586A2:   global_68 = CStr(var_108)
  loc_13586B7: Else
  loc_13586D4:   var_94 = Me.Fields.Item("Code")
  loc_13586EB:   global_68 = CStr(var_94.Value)
  loc_13586FC: End If
  loc_1358707: Set var_90 = Me.Txt
  loc_135870D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, 1)
  loc_135871C: var_E4 = Trim(CVar(var_94))
  loc_1358736: If (var_E4 = vbNullString) Then
  loc_135874A:   Set var_90 = Me.Txt
  loc_1358750:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94, global_68)
  loc_1358758:   var_94.Text = var_F8
  loc_1358764: End If
  loc_135876D: unk_474443.BeginTrans var_10C
  loc_1358776: var_86 = CByte(1) 'Byte
  loc_135877E: Set var_90 = Me.TopCtrl1
  loc_1358784: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_E4)
  loc_135879D: If (CStr() = "Add") Then
  loc_13587BE:   var_F8 = CVar("Insert Into Item(Code,Name,BarCode,CommodityCode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_68 & "','") 'String
  loc_13587CF:   Set var_90 = Me.Txt
  loc_13587D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_B4, var_F8)
  loc_13587DD:   var_2F0 = var_94.Text
  loc_13587F3:   var_108 = -1 & Trim(CVar(var_B4)) 
  loc_13587FC:   var_11C = var_108 & "','" 
  loc_135880E:   Set var_98 = Me.Txt
  loc_1358814:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_E8)
  loc_135881C:   var_11C = var_120.Text
  loc_135884D:   Set var_164 = Me.Txt
  loc_1358853:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1358897:   var_21C = var_2F4 & Trim(CVar(var_E8)) & "','" & Trim(CVar(var_168.Text)) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) 
  loc_13588A7:   var_24C = Date
  loc_13588B2:   Proc_6_7_F25D88(var_25C, var_24C)
  loc_13588D6:   var_2CC = var_21C & "'," & var_25C & ",'A','" & CVar(MemVar_1F92078) & "' )" 
  loc_13588E4:   unk_474443.Execute CStr(var_2CC), , 
  loc_1358937: Else
  loc_1358954:   Set var_90 = Me.Txt
  loc_135895A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, "UPDATE Item SET Name='")
  loc_1358989:   Set var_98 = Me.Txt
  loc_135898F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_2CC & Trim(CVar(var_94)) & "',BarCode='")
  loc_13589A6:   var_140 = -1 & Trim(CVar(var_120)) 
  loc_13589BE:   Set var_164 = Me.Txt
  loc_13589C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1358A01:   var_1FC = Trim(CVar(var_E8)) & "',CommodityCode='" & Trim(CVar(var_168)) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_1358A1C:   Proc_6_7_F25D88(var_24C, Date)
  loc_1358A51:   unk_474443.Execute CStr(var_1FC & "',U_EntDt=" & var_24C & " ,U_AE='E' WHERE Code='" & CVar(global_68) & "'"), var_2F4, 
  loc_1358AA2:   var_C4 = "UPDATE ItemMast SET Name='"
  loc_1358AB2:   Set var_90 = Me.Txt
  loc_1358AB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_C4)
  loc_1358AC7:   var_E4 = Trim(CVar(var_94))
  loc_1358ACF:   var_F8 = var_2CC & var_E4 
  loc_1358AD8:   var_108 = var_F8 & "',BarCode='" 
  loc_1358AE7:   Set var_98 = Me.Txt
  loc_1358AED:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_120, var_108)
  loc_1358B04:   var_140 = -1 & Trim(CVar(var_120)) 
  loc_1358B1C:   Set var_164 = Me.Txt
  loc_1358B22:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_168)
  loc_1358B5F:   var_1FC = Trim(CVar(var_E8)) & "',CommodityCode='" & Trim(CVar(var_168)) & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) 
  loc_1358B7A:   Proc_6_7_F25D88(var_24C, Date)
  loc_1358BAF:   unk_474443.Execute CStr(var_1FC & "',U_EntDt=" & var_24C & " ,U_AE='E' WHERE Code='" & CVar(global_68) & "'"), var_2F4, 
  loc_1358BF3: End If
  loc_1358BF9: unk_474443.CommitTrans
  loc_1358C02: var_86 = CByte(0) 'Byte
  loc_1358C11: Me.Requery -1
  loc_1358C21: Me.Requery -1
  loc_1358C4E: Me.Find "Code='" & global_68 & "'", 0, 1
  loc_1358C5E: Set var_90 = Me.TopCtrl1
  loc_1358C64: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005(var_C4)
  loc_1358C7D: If (CStr() = "Add") Then
  loc_1358C80:   Call TopCtrl1_UnknownEvent_A()
  loc_1358C85:   Exit Sub
  loc_1358C86: End If
  loc_1358C9B: var_9C = "INI"
  loc_1358CA9: Call Proc_228_27_E73514(Proc_5_1_100CB50(var_9C, Me))
  loc_1358CB4: Call Proc_228_31_EBB224(global_52)
  loc_1358CB9: Call Proc_228_29_124A85C()
  loc_1358CBE: Exit Sub
  loc_1358CBF: ' Referenced from: 1358558
  loc_1358CC8: If (CInt(var_86) = 1) Then
  loc_1358CD1:   unk_474443.RollbackTrans
  loc_1358CD6: End If
  loc_1358CDE: Set var_90 = Err()
  loc_1358CE4: Call 0.Method_arg_2C (var_9C)
  loc_1358CFD: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_1358D10: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBF9C4
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBF93A: On Error Goto loc_EBF97F
  loc_EBF943: Me.MoveFirst
  loc_EBF95D: var_8C = "code='" & MyValue
  loc_EBF96D: Me.Find var_8C & "'", 0, 1
  loc_EBF979: Call Proc_228_29_124A85C(var_A0)
  loc_EBF97E: Exit Sub
  loc_EBF97F: ' Referenced from: EBF93A
  loc_EBF987: Set var_A4 = Err()
  loc_EBF98D: Call 0.Method_arg_2C (var_8C)
  loc_EBF9AE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBF9C1: Exit Sub
  loc_EBF9C2: Exit Sub
End Sub

Public Sub Proc_228_27_E73514(arg_C) 'E73514
  'Data Table: 474430
  Dim var_98 As TextBox
  loc_E734C6: Set var_8C = Me.Txt
  loc_E734CC: Call 0.Method_Proc_228_27_E73514C (var_8E, var_86)
  loc_E734D9: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_E734EF:   Set var_8C = Me.Txt
  loc_E734F5:   Call 0.Method_Proc_228_27_E735140 (CInt(var_86), var_98)
  loc_E734FD:   var_98.Enabled = arg_C
  loc_E7350C: Next var_92 'Byte
  loc_E73512: Exit Sub
End Sub

Public Sub Proc_228_28_EA8F38
  'Data Table: 474430
  Dim var_98 As TextBox
  loc_EA8EAE: global_72 = vbNullString
  loc_EA8EC0: Set var_8C = Me.Txt
  loc_EA8EC6: Call 0.Method_Proc_228_28_EA8F38C (var_8E, var_86)
  loc_EA8ED3: For var_92 =  To CByte(var_8E): CByte(1) = var_92 'Byte
  loc_EA8EE9:   Set var_8C = Me.Txt
  loc_EA8EEF:   Call 0.Method_Proc_228_28_EA8F380 (CInt(var_86), var_98)
  loc_EA8EF7:   var_98.Text = vbNullString
  loc_EA8F13:   Set var_8C = Me.Txt
  loc_EA8F19:   Call 0.Method_Proc_228_28_EA8F380 (CInt(var_86), var_98)
  loc_EA8F21:   var_98.Tag = vbNullString
  loc_EA8F30: Next var_92 'Byte
  loc_EA8F36: Exit Sub
End Sub

Public Sub Proc_228_29_124A85C
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_474443 As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_124A34C: On Error Goto loc_124A817
  loc_124A366: If (Me.RecordCount > 0) Then
  loc_124A3BF:   unk_474443.Execute CStr("Select U_Name,U_AE,U_EntDt From Item where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_124A3CA:   Set var_88 = var_11C
  loc_124A41E:   var_11C = var_88.Fields
  loc_124A487:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_124A4CC:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_124A546:   var_120 = var_88.Fields.Item("U_AE")
  loc_124A55F:   var_118 = "entdt : "
  loc_124A56A:   var_F4 = "Last Update : "
  loc_124A5A7:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_124A5EC:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_124A624: End If
  loc_124A62A: Proc_183_45_E5C118(global_52)
  loc_124A646: If (Me.RecordCount <= 0) Then
  loc_124A649:   Call Proc_228_28_EA8F38()
  loc_124A651: Else
  loc_124A685:   global_68 = CStr(Me.Fields.Item("Item").Value)
  loc_124A6D2:   Set var_11C = Me.Txt
  loc_124A6D8:   Call 0.Method_Proc_228_29_124A85C0 (CInt(1), var_120)
  loc_124A6E0:   var_120.Text = CStr(Me.Fields.Item("Item").Value)
  loc_124A732:   Set var_11C = Me.Txt
  loc_124A738:   Call 0.Method_Proc_228_29_124A85C0 (CInt(1), var_120)
  loc_124A740:   var_120.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_124A792:   Set var_11C = Me.Txt
  loc_124A798:   Call 0.Method_Proc_228_29_124A85C0 (CInt(2), var_120)
  loc_124A7A0:   var_120.Text = CStr(Me.Fields.Item("CommodityCode").Value)
  loc_124A7E4:   var_F8 = CStr(Me.Fields.Item("BarCode").Value)
  loc_124A7F2:   Set var_11C = Me.Txt
  loc_124A7F8:   Call 0.Method_Proc_228_29_124A85C0 (CInt(3), var_120)
  loc_124A800:   var_120.Text = var_F8
  loc_124A816: End If
  loc_124A816: Exit Sub
  loc_124A817: ' Referenced from: 124A34C
  loc_124A81F: Set var_90 = Err()
  loc_124A825: Call 0.Method_arg_2C (var_F8)
  loc_124A846: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_124A859: Exit Sub
End Sub

Public Sub Proc_228_30_1263EDC
  'Data Table: 474430
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_474443 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_A0 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_AC As String
  Dim var_154 As Variant
  loc_12639A7: If (Me.RecordCount = 0) Then
  loc_12639AA:   Proc_228_30_1263EDC = 
  loc_12639B0: End If
  loc_12639B4: Set var_90 = Me.TopCtrl1
  loc_12639BA: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_12639D3: If (CStr() = "Add") Then
  loc_1263A00:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F92078 & "' or Q.LOGSITE_CODE='HO') and Q.Name='"
  loc_1263A11:   Set var_90 = Me.Txt
  loc_1263A17:   Call 0.Method_Proc_228_30_1263EDC0 (CInt(1), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1263A1F:   var_CC = var_A8.Text
  loc_1263A38:   unk_474443.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1263A48:    = var_D0.Item()
  loc_1263A50:    = var_E4.Value
  loc_1263A81:   If (var_CC.Fields > 0) Then
  loc_1263AA5:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1263AC0:     Set var_90 = Me.Txt
  loc_1263AC6:     Call 0.Method_Proc_228_30_1263EDC0 (CInt(1))
  loc_1263ACE:     var_A8.SetFocus
  loc_1263ADF:     Proc_228_30_1263EDC = &HFF
  loc_1263AE5:   End If
  loc_1263AF0:   Set var_90 = Me.Txt
  loc_1263AF6:   Call 0.Method_Proc_228_30_1263EDC0 (CInt(3), var_A8)
  loc_1263B1F:   If CBool(Trim(CVar(var_A8)) <> vbNullString) Then
  loc_1263B4C:     var_114 = CVar("Select Count(*) From (SELECT BarCode as Code,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F92078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String
  loc_1263B5A:     Set var_90 = Me.Txt
  loc_1263B60:     Call 0.Method_Proc_228_30_1263EDC0 (CInt(3), var_A8, var_114, var_154, -1, var_CC)
  loc_1263B77:     var_134 = var_D0 & Trim(CVar(var_A8)) 
  loc_1263B84:     var_AC = CStr(var_134 & "'")
  loc_1263B8E:     unk_474443.Execute var_AC, 0, var_E4
  loc_1263B9E:      = var_D0.Item(var_A8)
  loc_1263BA6:      = var_E4.Value
  loc_1263BD9:     If (var_CC.Fields > 0) Then
  loc_1263BF7:       var_A0 = "Duplicate Bar Code"
  loc_1263BFD:       MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1263C18:       Set var_90 = Me.Txt
  loc_1263C1E:       Call 0.Method_Proc_228_30_1263EDC0 (CInt(3))
  loc_1263C26:       var_A8.SetFocus
  loc_1263C37:       Proc_228_30_1263EDC = &HFF
  loc_1263C3D:     End If
  loc_1263C3D:   End If
  loc_1263C40: Else
  loc_1263C6A:   var_B0 = "Select Count(*) From (SELECT Code,Name,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F92078 & "' or Q.LOGSITE_CODE='HO') and (Q.Name='"
  loc_1263C7B:   Set var_90 = Me.Txt
  loc_1263C81:   Call 0.Method_Proc_228_30_1263EDC0 (CInt(1), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1263C89:   var_CC = var_A8.Text
  loc_1263CB3:   unk_474443.Execute var_D0 & var_AC & "' And Q.Name<>'" & global_72 & "')", 0, var_E4
  loc_1263CC3:    = var_D0.Item(var_A8)
  loc_1263CCB:    = var_E4.Value
  loc_1263D00:   If (var_CC.Fields > 0) Then
  loc_1263D24:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1263D3F:     Set var_90 = Me.Txt
  loc_1263D45:     Call 0.Method_Proc_228_30_1263EDC0 (CInt(1))
  loc_1263D4D:     var_A8.SetFocus
  loc_1263D5E:     Proc_228_30_1263EDC = &HFF
  loc_1263D64:   End If
  loc_1263D6F:   Set var_90 = Me.Txt
  loc_1263D75:   Call 0.Method_Proc_228_30_1263EDC0 (CInt(3), var_A8)
  loc_1263D9E:   If CBool(Trim(CVar(var_A8)) <> vbNullString) Then
  loc_1263DCB:     var_114 = CVar("Select Count(*) From (SELECT BarCode as COde,BarCode,LogSite_Code FROM Item)Q Where (Q.LOGSITE_CODE='" & MemVar_1F92078 & "' or Q.LOGSITE_CODE='HO') and Q.BarCode='") 'String
  loc_1263DD9:     Set var_90 = Me.Txt
  loc_1263DDF:     Call 0.Method_Proc_228_30_1263EDC0 (CInt(3), var_A8, var_114, var_174, -1, var_CC)
  loc_1263DF6:     var_134 = var_D0 & Trim(CVar(var_A8)) 
  loc_1263E23:     unk_474443.Execute CStr(var_134 & "' and Q.BarCode<> '" & CVar(global_64) & "'"), 0, var_E4
  loc_1263E33:      = var_D0.Item(var_A8)
  loc_1263E3B:      = var_E4.Value
  loc_1263E72:     If (var_CC.Fields > 0) Then
  loc_1263E96:       MsgBox("Duplicate Bar Code", &H40, "Information", var_114, var_134)
  loc_1263EB1:       Set var_90 = Me.Txt
  loc_1263EB7:       Call 0.Method_Proc_228_30_1263EDC0 (CInt(3))
  loc_1263EBF:       var_A8.SetFocus
  loc_1263ED0:       Proc_228_30_1263EDC = &HFF
  loc_1263ED6:     End If
  loc_1263ED6:   End If
  loc_1263ED6: End If
  loc_1263ED6: Proc_228_30_1263EDC = var_A8
End Sub

Public Sub Proc_228_31_EBB224
  'Data Table: 474430
  loc_EBB19C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EBB1AE:   Me.DGHelp.Visible = False
  loc_EBB1B6: End If
  loc_EBB1D2: If (CBool(Me.DGBarCode.Visible) = &HFF) Then
  loc_EBB1E4:   Me.DGBarCode.Visible = False
  loc_EBB1EC: End If
  loc_EBB208: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBB21A:   Me.FGPoint.Visible = False
  loc_EBB222: End If
  loc_EBB222: Exit Sub
End Sub

Public Sub Proc_228_32_E8EB8C(arg_C) 'E8EB8C
  'Data Table: 474430
  Dim var_10C As TextBox
  loc_E8EB20: Call Proc_228_31_EBB224()
  loc_E8EB5C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8EB5F:   Call TopCtrl1_UnknownEvent_16()
  loc_E8EB67: Else
  loc_E8EB71:   Set var_108 = Me.Txt
  loc_E8EB77:   Call 0.Method_Proc_228_32_E8EB8C0 (arg_C)
  loc_E8EB7F:   var_10C.SetFocus
  loc_E8EB8B: End If
  loc_E8EB8B: Exit Sub
End Sub
