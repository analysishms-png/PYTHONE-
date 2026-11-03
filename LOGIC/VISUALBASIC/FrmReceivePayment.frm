VERSION 5.00
Begin VB.Form FrmReceivePayment
  Caption = "Misc.Payment / Received Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 15165
  ClientHeight = 9390
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15165
    Height = 450
    TabIndex = 25
  End
  Begin PictureBox Picture1
    Picture = "FrmReceivePayment.frx":0
    Left = 4605
    Top = 1200
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture3
    Picture = "FrmReceivePayment.frx":34E
    Left = 6705
    Top = 2415
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataGrid DGAgAc
    Left = 3930
    Top = 3375
    Width = 4200
    Height = 2160
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 15
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1845
    Top = 3435
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
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
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 2505
    Top = 1335
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2415
    Width = 4185
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 35
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2145
    Width = 1350
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 2505
    Top = 1605
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 8
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 2505
    Top = 1875
    Width = 1350
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 4845
    Top = 1605
    Width = 1875
    Height = 255
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2505
    Top = 2685
    Width = 4185
    Height = 1050
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 150
    Appearance = 0 'Flat
  End
  Begin MaskEdBox txtM
    Index = 5
    Left = 3870
    Top = 1875
    Width = 720
    Height = 255
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 90
    Top = 3615
    Width = 1785
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid GridSel
    Left = 8745
    Top = 1395
    Width = 6495
    Height = 5985
    TabIndex = 26
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4470
    Top = 5685
    Width = 2790
    Height = 285
    TabIndex = 24
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
    Left = 1095
    Top = 5685
    Width = 2880
    Height = 255
    TabIndex = 23
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 375
    Width = 180
    Height = 540
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label LblName
    Caption = "Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1350
    Top = 1350
    Width = 465
    Height = 240
    TabIndex = 16
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
    Caption = "Against A/c"
    Index = 0
    ForeColor = &HC00000&
    Left = 1335
    Top = 2445
    Width = 1065
    Height = 240
    TabIndex = 14
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
    Caption = "Amount"
    Index = 6
    ForeColor = &HC00000&
    Left = 1335
    Top = 2175
    Width = 735
    Height = 240
    TabIndex = 13
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
    Caption = "Date"
    Index = 2
    ForeColor = &HC00000&
    Left = 1335
    Top = 1905
    Width = 435
    Height = 240
    TabIndex = 12
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 6735
    Top = 1260
    Width = 600
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Sr.No"
    Index = 1
    ForeColor = &HC00000&
    Left = 1335
    Top = 1635
    Width = 525
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
  Begin Label Label1
    Caption = "DOC ID"
    Index = 3
    ForeColor = &H0&
    Left = 4050
    Top = 1605
    Width = 615
    Height = 240
    Visible = 0   'False
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Remarks"
    Index = 4
    ForeColor = &HC00000&
    Left = 1335
    Top = 2715
    Width = 825
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmReceivePayment"

Private MasterFormExit As Integer
Private global_68 As Recordset15
Private global_72 As Variant
Private global_112 As Double
Private global_96 As Integer

Private Sub TopCtrl1_UnknownEvent_A '1006DE8
  'Data Table: 4BF16C
  Dim var_E4 As Variant
  Dim var_88 As String
  Dim var_8C As Label
  loc_1006BE4: On Error Goto loc_1006DE0
  loc_1006C0A: Call Proc_332_37_F70934(Proc_5_1_100CB50("ADD", Me))
  loc_1006C1E: Set var_8C = Me.TopCtrl1
  loc_1006C24: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1006C35: Set var_8C = Me.TopCtrl1
  loc_1006C3B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1006C4C: Set var_8C = Me.TopCtrl1
  loc_1006C52: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1006C63: Set var_8C = Me.TopCtrl1
  loc_1006C69: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1006C71: Call Proc_332_35_EF1D64(global_64)
  loc_1006CB1: Set var_8C = Me.txtM
  loc_1006CB7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4, CVar(CStr(Format(Now, "HH:MM"))))
  loc_1006CBF: var_E4.Text = 1
  loc_1006CE7: Set var_8C = Me.txtM
  loc_1006CED: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_1006CF5: var_E4.Tag = vbNullString
  loc_1006D06: var_88 = CStr(MemVar_1F920EC)
  loc_1006D14: Set var_8C = Me.Txt
  loc_1006D1A: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_E4)
  loc_1006D22: var_E4.Text = var_88
  loc_1006D3D: Call Txt_Validate(CInt(2))
  loc_1006D50: Set var_8C = Me.Txt
  loc_1006D56: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_E4, "Misc Rect.")
  loc_1006D5E: var_E4.Text = 0
  loc_1006D70: global_60 = "HTSAL"
  loc_1006D7A: Call Proc_332_40_115C8B8(MemVar_1F92044, var_88)
  loc_1006D8D: Set var_8C = Me.Txt
  loc_1006D93: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_E4)
  loc_1006D9B: var_E4.SetFocus
  loc_1006DB4: Me.LblUser.Caption = vbNullString
  loc_1006DC9: Me.LblLDt.Caption = vbNullString
  loc_1006DDA: Call Proc_332_42_1112CF4(CDbl(0))
  loc_1006DDF: Exit Sub
  loc_1006DE0: ' Referenced from: 1006BE4
  loc_1006DE0: Proc_6_60_E62BC4(1)
  loc_1006DE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F08564
  'Data Table: 4BF16C
  loc_F08484: On Error Goto loc_F0855B
  loc_F084BE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_F084E4:   Call Proc_332_37_F70934(Proc_5_1_100CB50("INI", Me))
  loc_F084F8:   Set var_10C = Me.TopCtrl1
  loc_F084FE:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_F0850F:   Set var_10C = Me.TopCtrl1
  loc_F08515:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_F08526:   Set var_10C = Me.TopCtrl1
  loc_F0852C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_F0853D:   Set var_10C = Me.TopCtrl1
  loc_F08543:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_F0854B:   Call Proc_332_38_EB881C(global_64)
  loc_F08550:   Call Proc_332_35_EF1D64()
  loc_F08555:   Call Proc_332_36_13516A8()
  loc_F0855A: End If
  loc_F0855A: Exit Sub
  loc_F0855B: ' Referenced from: F08484
  loc_F0855B: Proc_6_60_E62BC4()
  loc_F08560: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1107D40
  'Data Table: 4BF16C
  Dim var_96 As Integer
  Dim unk_4BF186 As Connection15
  Dim Me As Recordset15
  Dim var_124 As TextBox
  Dim var_12C As String
  Dim var_B8 As Variant
  loc_1107A34: On Error Goto loc_1107CE9
  loc_1107A45: If (Proc_183_56_FE8818(global_64) = &HFF) Then
  loc_1107A48:   Exit Sub
  loc_1107A49: End If
  loc_1107A80: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_1107A91:   unk_4BF186.BeginTrans var_11C
  loc_1107AA7:   var_94 = Me.Bookmark 'Variant
  loc_1107AC9:   Set var_120 = Me.Txt
  loc_1107ACF:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124, var_128, "Delete From ExpSheet Where DocID='")
  loc_1107AD7:   var_B8 = var_124.Text
  loc_1107AE0:   var_12C = -1 & var_128
  loc_1107AF0:   unk_4BF186.Execute var_12C & "'", var_134, &HFF
  loc_1107B18:   Set var_120 = Me.Txt
  loc_1107B1E:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_124)
  loc_1107B30:   var_168 = 0
  loc_1107B43:   var_160 = 0
  loc_1107B4E:   var_15C = 0
  loc_1107B61:   var_154 = 0
  loc_1107B6C:   var_150 = 0
  loc_1107B7F:   var_148 = 0
  loc_1107BBE:   var_128 = "ExpSheet"
  loc_1107BC7:   Proc_154_5_10E33A4(MemVar_1F92044, var_128, "DocId", &HC8, var_124.Text, 0, 0, 0)
  loc_1107BF2:   unk_4BF186.CommitTrans
  loc_1107BF9:   var_96 = 0
  loc_1107C07:   Me.Requery -1
  loc_1107C27:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1107C34:     Me.Bookmark = var_94
  loc_1107C3C:   Else
  loc_1107C50:     If (Me.EOF = 0) Then
  loc_1107C59:       Me.MoveLast
  loc_1107C5E:     End If
  loc_1107C5E:   End If
  loc_1107C5E:   Call Proc_332_36_13516A8(var_96, var_148, 0, var_150, var_154)
  loc_1107C63:   Call Proc_332_35_EF1D64(0, var_15C)
  loc_1107C84:   Proc_5_0_110649C(&HFF, Me, global_64)
  loc_1107C95:   Set var_120 = Me.TopCtrl1
  loc_1107C9B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_1107CAC:   Set var_120 = Me.TopCtrl1
  loc_1107CB2:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_1107CC3:   Set var_120 = Me.TopCtrl1
  loc_1107CC9:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_1107CDA:   Set var_120 = Me.TopCtrl1
  loc_1107CE0:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_1107CE8: End If
  loc_1107CE8: Exit Sub
  loc_1107CE9: ' Referenced from: 1107A34
  loc_1107CEF: If (var_96 = &HFF) Then
  loc_1107CF8:   unk_4BF186.RollbackTrans
  loc_1107CFD: End If
  loc_1107D05: Set var_120 = Err()
  loc_1107D0B: Call 0.Method_arg_2C (var_128, 0)
  loc_1107D2C: MsgBox(CVar(var_128), &H30, " Deletion Error ", var_F8, var_118)
  loc_1107D3F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F9EDE4
  'Data Table: 4BF16C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F9EC70: On Error Goto loc_F9ED9F
  loc_F9EC81: If (Proc_183_55_FE7900(global_64) = &HFF) Then
  loc_F9EC84:   Exit Sub
  loc_F9EC85: End If
  loc_F9EC9C: If (Me.RecordCount > 0) Then
  loc_F9ECB4:   var_8C = "EDIT"
  loc_F9ECC2:   Call Proc_332_37_F70934(Proc_5_1_100CB50(var_8C, Me))
  loc_F9ECDA:   Set var_90 = Me.Txt
  loc_F9ECE0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_F9ECE8:   var_98.Enabled = False
  loc_F9ED01:   Set var_90 = Me.Txt
  loc_F9ED07:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_F9ED0F:   var_98.Enabled = False
  loc_F9ED26:   Set var_90 = Me.Txt
  loc_F9ED2C:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_F9ED34:   var_98.SetFocus
  loc_F9ED43: Else
  loc_F9ED64:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F9ED74: End If
  loc_F9ED81: Me.LblUser.Caption = vbNullString
  loc_F9ED96: Me.LblLDt.Caption = vbNullString
  loc_F9ED9E: Exit Sub
  loc_F9ED9F: ' Referenced from: F9EC70
  loc_F9EDA7: Set var_90 = Err()
  loc_F9EDAD: Call 0.Method_arg_2C (var_8C)
  loc_F9EDCE: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F9EDE1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19F3C
  'Data Table: 4BF16C
  loc_E19F31: Me.Global.Unload Me
  loc_E19F39: Exit Sub
  loc_E19F3A: var_C00 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F5C28C
  'Data Table: 4BF16C
  Dim Me As Variant
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim MemVar_1F920E4 As String
  loc_F5C168: On Error Goto loc_F5C283
  loc_F5C182: If (Me.RecordCount <= 0) Then
  loc_F5C1A0:   var_A8 = "No Records To Search."
  loc_F5C1A6:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F5C1B6:   Exit Sub
  loc_F5C1B7: End If
  loc_F5C1C1: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_F5C1CB:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F92078
  loc_F5C1E0:   Proc_6_7_F25D88(var_A8, MemVar_1F920F4)
  loc_F5C1F6:   MemVar_1F920E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') AND E.vdate>=") & var_A8 & " Order by DocID,VNo")
  loc_F5C20B: Else
  loc_F5C212:   var_10C = "Select E.DocID as SearchCode,Case When E.VType='HTSAL' Then 'Misc Receipt' Else 'Misc Payment' End Type,E.VNo VNo,cast(E.VDate as Varchar(11)) as Date,E.VTime Time,E.Remarks,cast(E.Amount as varchar) As Amount,S.Name Agnst_Ac From ExpSheet E Left Join SubGroup S On E.AgAc=S.Subcode where (E.LOGSITE_CODE='" & MemVar_1F92078
  loc_F5C227:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F5C233:   var_B8 = " Order by E.DocID,E.VNo"
  loc_F5C23D:   MemVar_1F920E4 = CStr(CVar(var_10C & "' or E.LOGSITE_CODE='HO') and E.vdate=") & var_A8 & var_B8)
  loc_F5C24F: End If
  loc_F5C258: Proc_6_126_F1BCC0("1450,500,1200,550,4000,950,2500", MemVar_1F920E4)
  loc_F5C266: MemVar_1F92120 = Me
  loc_F5C27D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F5C282: Exit Sub
  loc_F5C283: ' Referenced from: F5C168
  loc_F5C283: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F5C288: Exit Sub
  loc_F5C289: MeFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFDB94
  'Data Table: 4BF16C
  loc_DFDB8C: Call Proc_332_32_13E0F78()
  loc_DFDB91: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14D76A4
  'Data Table: 4BF16C
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As String
  Dim unk_4BF186 As Connection15
  Dim var_98 As Recordset15
  Dim var_A4 As Variant
  Dim var_D0 As Variant
  Dim var_AC As Variant
  Dim var_138 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_110 As Variant
  Dim var_86 As Integer
  Dim var_140 As String
  Dim MemVar_1F920EC As Double
  Dim var_148 As Variant
  Dim var_A0 As Integer
  Dim var_158 As String
  Dim var_44C As Double
  Dim var_1B4 As Variant
  Dim var_234 As TextBox
  Dim var_454 As Double
  Dim var_260 As TextBox
  Dim var_19C As Variant
  Dim var_21C As Variant
  Dim var_3BC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_14D69D4: On Error Goto loc_14D7688
  loc_14D69E2: Set var_A4 = Me.Txt
  loc_14D69E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_14D6A11: If (Proc_6_27_EA565C(var_A8, "Date") = 0) Then
  loc_14D6A14:   Exit Sub
  loc_14D6A15: End If
  loc_14D6A20: Set var_A4 = Me.Txt
  loc_14D6A26: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14D6A4F: If (Proc_6_27_EA565C(var_A8, "Vr No") = 0) Then
  loc_14D6A52:   Exit Sub
  loc_14D6A53: End If
  loc_14D6A5E: Set var_A4 = Me.Txt
  loc_14D6A64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_A8)
  loc_14D6A8D: If (Proc_6_27_EA565C(var_A8, "Account") = 0) Then
  loc_14D6A90:   Exit Sub
  loc_14D6A91: End If
  loc_14D6A9F: Set var_A4 = Me.Txt
  loc_14D6AA5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_14D6AC9: If (CDbl(Val(var_A8.Text)) <= CDbl(0)) Then
  loc_14D6ADF:   var_D0 = "Can't Save with Nil Amount"
  loc_14D6AE5:   MsgBox(var_D0, &H10, var_F0, var_110, var_130)
  loc_14D6AF5:   Exit Sub
  loc_14D6AF6: End If
  loc_14D6AF9: Call Proc_332_34_F8FBAC(var_132)
  loc_14D6B04: If (var_132 = 0) Then
  loc_14D6B07:   Exit Sub
  loc_14D6B08: End If
  loc_14D6B25: Proc_6_17_EAA2B0(var_D0, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_110)
  loc_14D6B2D: var_F0 = -1 & var_D0 
  loc_14D6B3B: unk_4BF186.Execute CStr(var_F0), var_A4, var_A8
  loc_14D6B46: Set var_98 = var_A4
  loc_14D6B96: var_AC = var_98.Fields
  loc_14D6BA6: var_F0 = var_AC.Item("CashPayType").Value
  loc_14D6BB8: var_130 = IsNull(CVar(var_98.Fields.Item("CashPayType"))) Or (var_F0 = vbNullString)
  loc_14D6BD0: If CBool(var_130) Then
  loc_14D6BEC:   MsgBox("Set Cash Pay Type in Enviro", &H40, var_F0, var_110, var_130)
  loc_14D6BFC:   Exit Sub
  loc_14D6BFD: End If
  loc_14D6C29: var_A8 = var_98.Fields.Item("CashPayType")
  loc_14D6C31: var_D0 = var_A8.Value
  loc_14D6C39: var_F0 = "SELECT ACCODE FROM REVMAST WHERE cODE='" & var_D0 
  loc_14D6C42: var_110 = var_F0 & "'" 
  loc_14D6C50: unk_4BF186.Execute CStr(var_110), var_130, -1
  loc_14D6C5B: Set var_9C = var_AC
  loc_14D6C83: unk_4BF186.BeginTrans var_13C
  loc_14D6C8C: Set var_A4 = Me.TopCtrl1
  loc_14D6C92: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_14D6CAB: If (CStr(var_AC) = "Add") Then
  loc_14D6CB4:   var_E0 = 0
  loc_14D6CD1:   var_B0 = "Select NCUR from enviro where LOGsite_code='" & MemVar_1F92078
  loc_14D6CE1:   unk_4BF186.Execute var_B0 & "'", var_D0, -1
  loc_14D6CE9:   var_A4 = var_A4.Fields
  loc_14D6CF1:   var_E0 = var_A8.Item(var_A8)
  loc_14D6CF9:   var_AC = var_AC.Value
  loc_14D6D03:   MemVar_1F920EC = CDate(var_F0)
  loc_14D6D4A:   Set var_A4 = Me.Txt
  loc_14D6D50:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Select Count(*) From ExpSheet Where DocID='", var_D0, -1, var_AC)
  loc_14D6D71:   unk_4BF186.Execute 0 & var_B0 & "'", var_148, var_F0
  loc_14D6D79:   MemVar_1F920EC = var_AC.Fields
  loc_14D6D81:    = var_A8.Text.Item(var_F0)
  loc_14D6D89:    = var_148.Value
  loc_14D6DB6:   If (var_F0 > 0) Then
  loc_14D6DBF:     Call 0.Method_arg_50 (var_B0)
  loc_14D6DCD:     var_F0 = CVar(var_B0) 'String
  loc_14D6DE0:     MsgBox("Duplicate Vr. No.", &H40, var_F0, var_110, var_130)
  loc_14D6DF6:     Call Proc_332_40_115C8B8(MemVar_1F92044)
  loc_14D6E06:     If (var_B0 = vbNullString) Then
  loc_14D6E09:       Exit Sub
  loc_14D6E0A:     End If
  loc_14D6E10:     Call Proc_332_40_115C8B8(MemVar_1F92044, var_B0)
  loc_14D6E23:     Set var_A4 = Me.Txt
  loc_14D6E29:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D6E31:     var_A8.Text = var_B0
  loc_14D6E40:     Exit Sub
  loc_14D6E41:   End If
  loc_14D6E41: End If
  loc_14D6E5F: Set var_A4 = Me.Txt
  loc_14D6E65: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Delete From ExpSheet Where DocID='")
  loc_14D6E6D: var_D0 = var_A8.Text
  loc_14D6E76: var_140 = -1 & var_B0
  loc_14D6E86: unk_4BF186.Execute 0 & var_B0 & "'", var_AC, var_B0
  loc_14D6EC5: For var_14C = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_9E = var_14C 'Integer
  loc_14D6ECE:   var_A0 = var_9E
  loc_14D6ED5:   var_C0 = CVar(CLng(var_A0)) 'Long
  loc_14D6EDA:   var_100 = 0
  loc_14D6F09:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_14D6F33:     var_B0 = CStr(Me.GridSel.TextMatrix))
  loc_14D6F44:     If (var_B0 <> vbNullString) Then
  loc_14D6F55:       Set var_A4 = Me.Txt
  loc_14D6F5B:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, 2, CVar(CLng(var_A0)))
  loc_14D6F63:       var_100 = var_A8.Text
  loc_14D6F6C:       var_C0 = CVar(CLng(var_A0)) 'Long
  loc_14D6F71:       var_100 = 2
  loc_14D6FBD:       var_158 = "Update PayCharge Set RefDocId='" & var_B0 & "' Where DocId='" & CStr(Me.GridSel.TextMatrix)) & "' And PayType='Company'"
  loc_14D6FC6:       unk_4BF186.Execute var_158, var_F0, -1
  loc_14D6FEC:     End If
  loc_14D6FEC:   End If
  loc_14D6FEF: Next var_14C 'Integer
  loc_14D7002: Set var_A4 = Me.Txt
  loc_14D7008: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D701C: Set var_AC = Me.LblVPrefix
  loc_14D7035: Set var_138 = Me.Txt
  loc_14D703B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_148)
  loc_14D7050: var_44C = Val(var_148.Text)
  loc_14D705E: Set var_188 = Me.Txt
  loc_14D7064: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_18C)
  loc_14D7073: Proc_6_7_F25D88(var_F0, CVar(var_18C))
  loc_14D7083: Set var_1A0 = Me.txtM
  loc_14D7089: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1A4)
  loc_14D7098: Proc_6_17_EAA2B0(var_1C4, CVar(var_1A4))
  loc_14D70A8: Set var_1E8 = Me.Txt
  loc_14D70AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1EC)
  loc_14D70BD: Proc_6_17_EAA2B0(var_20C, CVar(var_1EC))
  loc_14D70D0: Set var_230 = Me.Txt
  loc_14D70D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_234)
  loc_14D70EB: var_454 = Val(var_234.Text)
  loc_14D70FC: Set var_25C = Me.Txt
  loc_14D7102: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_260, var_264)
  loc_14D711D: Proc_6_7_F25D88(var_304, Date)
  loc_14D7126: Set var_338 = Me.TopCtrl1
  loc_14D712C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_44C)
  loc_14D7177: var_140 = "Insert Into ExpSheet(DocID,VType,VPrefix,Site_Code,VNo,VDate,Vtime,Remarks,Amount,AgAc,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & var_A8.Text
  loc_14D718F: var_158 = var_140 & "','" & global_60 & "','"
  loc_14D71E4: var_21C = CVar(var_158 & var_AC.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_44C) & ",") & var_F0 & "," & var_1C4 & "," & var_20C 
  loc_14D723E: var_3BC = var_21C & "," & CVar(var_260.Tag) & ",'" & CVar(var_264) & "','" & CVar(MemVar_1F920C8) & "'," & var_304 & ",'" & IIf((CStr(var_348) = "Add"), "A", "E") 
  loc_14D7268: unk_4BF186.Execute CStr(var_3BC & "','" & CVar(MemVar_1F92078) & "')"), var_440, -1
  loc_14D72FA: Set var_A4 = Me.TopCtrl1
  loc_14D7300: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_444)
  loc_14D7319: If (CStr() = "Add") Then
  loc_14D7330:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_14D7356:   var_110 = CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_60 & "' And VP.Date_From<=") 'String
  loc_14D7367:   Set var_A4 = Me.Txt
  loc_14D736D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8, var_158, var_110)
  loc_14D7375:   var_1B4 = var_A8.Text
  loc_14D7383:   Proc_6_7_F25D88(var_F0, CVar(var_158))
  loc_14D738B:   var_130 = -1 & var_F0 
  loc_14D7394:   var_19C = CVar(var_158 & var_AC.Caption & "','" & MemVar_1F92070 & "'," & CStr(var_44C) & ",") & var_F0 & " Order By VP.Date_From DESC" 
  loc_14D73A2:   unk_4BF186.Execute CStr(var_19C), var_AC, 
  loc_14D73AD:   Set var_8C = var_AC
  loc_14D73EB:   If (var_8C.RecordCount > 0) Then
  loc_14D73FC:     Set var_A4 = Me.Txt
  loc_14D7402:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_14D7417:     var_44C = Val(var_A8.Text)
  loc_14D741D:     var_C0 = "Date_From"
  loc_14D7440:     Proc_6_7_F25D88(var_F0, CVar(var_8C.Fields.Item(var_C0)))
  loc_14D7473:     var_158 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_44C) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_14D7492:     var_110 = CVar(var_158 & MemVar_1F92078 & "') and V_Type='" & global_60 & "' and Date_From=") 'String
  loc_14D7498:     var_130 = var_110 & var_F0 
  loc_14D74A6:     unk_4BF186.Execute CStr(var_130), var_19C, -1
  loc_14D74DA:   End If
  loc_14D74DA: End If
  loc_14D74E0: unk_4BF186.CommitTrans
  loc_14D74E5: Call Proc_332_38_EB881C(var_148)
  loc_14D74F8: Set var_A4 = Me.Txt
  loc_14D74FE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_14D751A: var_86 = 0
  loc_14D7528: Me.Requery -1
  loc_14D7552: Me.Find "SearchCode ='" & var_A8.Text & "'", 0, 1
  loc_14D7562: Set var_A4 = Me.TopCtrl1
  loc_14D7568: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_14D7581: If (CStr(var_86) = "Add") Then
  loc_14D7584:   Call TopCtrl1_UnknownEvent_A()
  loc_14D7589:   Exit Sub
  loc_14D758A: End If
  loc_14D759F: var_B0 = "INI"
  loc_14D75AD: Call Proc_332_37_F70934(Proc_5_1_100CB50(var_B0, Me), global_64)
  loc_14D75C1: Set var_A4 = Me.TopCtrl1
  loc_14D75C7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_14D75D8: Set var_A4 = Me.TopCtrl1
  loc_14D75DE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_14D75EF: Set var_A4 = Me.TopCtrl1
  loc_14D75F5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_14D7606: Set var_A4 = Me.TopCtrl1
  loc_14D760C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_14D7614: Call Proc_332_36_13516A8(var_44C)
  loc_14D7630: If (Me.RecordCount > 0) Then
  loc_14D7639:   Call 0.Method_arg_50 (var_B0)
  loc_14D7677:   If (MsgBox(CVar(var_B0 & " ?"), &H24, "Print", var_110, var_130) = 6) Then
  loc_14D767A:     Call TopCtrl1_UnknownEvent_14()
  loc_14D767F:   End If
  loc_14D767F: End If
  loc_14D7684: Set var_8C = Nothing
  loc_14D7687: Exit Sub
  loc_14D7688: ' Referenced from: 14D69D4
  loc_14D768E: If (var_86 = &HFF) Then
  loc_14D7697:   unk_4BF186.RollbackTrans
  loc_14D769C: End If
  loc_14D769C: Proc_6_60_E62BC4()
  loc_14D76A1: Exit Sub
End Sub

Private Sub Form_Load() '11F1E38
  'Data Table: 4BF16C
  Dim var_88 As Label
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_AC As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_10C As TextBox
  Dim var_C0 As TextBox
  Dim var_108 As DataGrid
  loc_11F19A8: On Error Goto loc_11F1E30
  loc_11F19B2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_11F19C6: Me.LblUser.Left = CDbl(13500)
  loc_11F19DD: Me.LblUser.Top = CDbl(7800)
  loc_11F19F4: Me.LblLDt.Top = CDbl(8160)
  loc_11F1A0B: Me.LblLDt.Left = CDbl(13500)
  loc_11F1A1D: Set var_88 = Me.TopCtrl1
  loc_11F1A23: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_11F1A31: Call 0.Method_arg_50 (var_AC)
  loc_11F1A39: var_BC = CVar(var_AC) 'String
  loc_11F1A41: Set var_88 = Me.TopCtrl1
  loc_11F1A47: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030007(var_BC)
  loc_11F1A5E: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_11F1A6F: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_11F1A80: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_11F1A91: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_11F1AA2: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_11F1AB3: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_11F1AC4: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_11F1AD5: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_11F1AE6: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_11F1AF7: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_11F1B11: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_11F1B1F: Set var_88 = MemVar_1F92044
  loc_11F1B2E: Call 0.Method_Form_Load8 (var_88)
  loc_11F1B44: Me.TopCtrl1.Clone
  loc_11F1B4F: Set var_C0 = var_88
  loc_11F1B5E: Call 0.Method_arg_50 (var_C0, -1)
  loc_11F1B74: Set global_64 = New 
  loc_11F1B86: Me.Recordset15.CursorLocation = 3
  loc_11F1B95: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_11F1BA3:   Proc_6_7_F25D88(var_BC, MemVar_1F920F4)
  loc_11F1BCD:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate>=") 'String
  loc_11F1BE7:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_11F1BFD: Else
  loc_11F1C08:   Proc_6_7_F25D88(var_BC, MemVar_1F920EC, 3)
  loc_11F1C32:   var_D0 = CVar("Select DocID as SearchCode,DocID,LogSite_Code,Site_Code From ExpSheet where LOGSITE_CODE='" & MemVar_1F92078 & "' AND vdate=") 'String
  loc_11F1C4C:   Me.Open var_D0 & var_BC & " Order by DocID", CVar(MemVar_1F92044), 2
  loc_11F1C5F: End If
  loc_11F1C7E: Me.Recordset15.CursorLocation = 3
  loc_11F1CA1: var_AC = "Select SubCode as SearchCode,Name From SubGroup where ActiveYN=1 And SubCode In (Select CompCode From PayCharge Where RestCode In (Select Code From Depart Where RestType In ('Outlet','Room Service'))) And (LOGSITE_CODE='" & MemVar_1F92078
  loc_11F1CB5: Me.Recordset15.Open CVar(var_AC & "' or LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F92044), 2
  loc_11F1CCC: CVarUnk
  loc_11F1CD1: VerifyVarObj
  loc_11F1CDD: LateIdStAd
  loc_11F1CF9: Set var_108 = Me.Txt
  loc_11F1CFF: Call 0.Method_Form_Load0 (CInt(5), var_10C, var_110, Me.DGAgAc, New, 3)
  loc_11F1D07: -1 = var_10C.Height
  loc_11F1D1A: Set var_88 = Me.Txt
  loc_11F1D20: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104, 3)
  loc_11F1D28: -1 = var_C0.Top
  loc_11F1D34: var_98 = CVar((var_104 + var_110)) 'Single
  loc_11F1D43: Me.DGAgAc.Top = CVar(MemVar_1F92044)
  loc_11F1D63: Set var_88 = Me.Txt
  loc_11F1D69: Call 0.Method_Form_Load0 (CInt(5), var_C0, var_104)
  loc_11F1D71: -1 = var_C0.Left
  loc_11F1D88: Me.DGAgAc.Left = CVar(var_104)
  loc_11F1DB9: Call Proc_332_37_F70934(Proc_5_1_100CB50("INI", Me), global_64)
  loc_11F1DCD: Set var_88 = Me.TopCtrl1
  loc_11F1DD3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_11F1DE4: Set var_88 = Me.TopCtrl1
  loc_11F1DEA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_11F1DFB: Set var_88 = Me.TopCtrl1
  loc_11F1E01: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_11F1E18: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(False)
  loc_11F1E20: Call Proc_332_42_1112CF4(Me.TopCtrl1)
  loc_11F1E25: Call Proc_332_35_EF1D64()
  loc_11F1E2A: Call Proc_332_36_13516A8()
  loc_11F1E2F: Exit Sub
  loc_11F1E30: ' Referenced from: 11F19A8
  loc_11F1E30: Proc_6_60_E62BC4()
  loc_11F1E35: Exit Sub
End Sub

Private Sub Form_Resize() 'ED32F8
  'Data Table: 4BF16C
  Dim var_8C As Label
  loc_ED3256: Call 0.Method_arg_50 (var_88)
  loc_ED3268: Me.LblFormCaption.Caption = var_88
  loc_ED3281: Me.LblFormCaption.Left = CDbl(0)
  loc_ED328D: Set var_A0 = Me.TopCtrl1
  loc_ED3293: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED32A0: Set var_8C = Me.TopCtrl1
  loc_ED32A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED32C0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED32DB: Call 0.Method_arg_100 (var_B8)
  loc_ED32ED: Me.LblFormCaption.Width = var_B8
  loc_ED32F5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E3F4F4
  'Data Table: 4BF16C
  loc_E3F4CF: Set global_64 = Nothing
  loc_E3F4DB: MasterFormExit = 0
  loc_E3F4E9: Set global_92 = Nothing
  loc_E3F4F0: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25334
  'Data Table: 4BF16C
  loc_E25319: If (MasterFormExit = &HFF) Then
  loc_E25329:   Me.Global.Unload Me
  loc_E25331: End If
  loc_E25331: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3ADB8
  'Data Table: 4BF16C
  loc_E3AD8C: On Error Goto loc_E3ADB0
  loc_E3ADA7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3ADAF: Exit Sub
  loc_E3ADB0: ' Referenced from: E3AD8C
  loc_E3ADB0: Proc_6_60_E62BC4(Shift)
  loc_E3ADB5: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F18B8C
  'Data Table: 4BF16C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F18AA8: On Error Goto loc_F18B86
  loc_F18AAF: Set var_A4 = Me.ListView
  loc_F18AF9: Set var_BC = Me.Txt
  loc_F18AFF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F18B07: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F18B33: Me.FrmList.Visible = False
  loc_F18B55: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F18B63: Set var_9C = Me.Txt
  loc_F18B69: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F18B71: var_A4.SetFocus
  loc_F18B85: Exit Sub
  loc_F18B86: ' Referenced from: F18AA8
  loc_F18B86: Proc_6_60_E62BC4(var_C8)
  loc_F18B8B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '114088C
  'Data Table: 4BF16C
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_B4 As String
  Dim var_90 As Fields15
  Dim var_B8 As Variant
  loc_1140526: Set var_88 = Me.Txt
  loc_114052C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_114053A: Proc_6_74_E226B0(var_8C)
  loc_1140546: Call Proc_332_38_EB881C(var_8C)
  loc_114054E: var_92 = Index
  loc_1140559: If Not (var_92 = CInt(2)) Then
  loc_1140564:   If (var_92 = CInt(3)) Then
  loc_1140567:   End If
  loc_114056F:   var_98 = "{Home}+{End}"
  loc_1140575:   Proc_303_0_FB9B68(var_98, 0)
  loc_1140580: Else
  loc_1140588:   If (var_92 = CInt(5)) Then
  loc_11405A5:     If (Me.Recordset15.RecordCount > 0) Then
  loc_11405B3:       Set var_8C = Me.FGPoint
  loc_11405CF:       Proc_6_137_1193554(Me.DGAgAc, global_68, Index)
  loc_11405DD:     End If
  loc_1140634:     Set var_88 = Me.Txt
  loc_114063A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1140642:     ((global_68.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_8C.Text
  loc_114065A:     If (var_8C Or (var_98 = vbNullString)) Then
  loc_114066A:       Set var_88 = Me.Txt
  loc_1140670:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1140678:       var_8C.Tag = vbNullString
  loc_1140684:       Exit Sub
  loc_1140685:     End If
  loc_1140692:     Set var_88 = Me.Txt
  loc_1140698:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11406AB:     global_100 = var_8C.Text
  loc_11406C6:     Set var_88 = Me.Txt
  loc_11406CC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11406D4:     var_98 = var_8C.Text
  loc_11406E6:     var_B4 = "Name"
  loc_1140724:     If CBool(CVar(var_98) <> Me.Recordset15.Fields.Item(var_B4).Value) Then
  loc_1140730:       Me.Recordset15.MoveFirst
  loc_1140753:       Set var_88 = Me.Txt
  loc_1140759:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name='")
  loc_1140761:       0 = var_8C.Text
  loc_114077D:       Me.Recordset15.Find 1 & var_98 & "'", var_B4, var_92
  loc_1140792:     End If
  loc_1140795:   Else
  loc_114079D:     If (var_92 = CInt(6)) Then
  loc_11407AD:       ReDim var_F4(0 To 1)
  loc_11407C4:       var_F4(0) = "Misc Rect."
  loc_11407D3:       var_F4(1) = "Misc Payment"
  loc_11407EA:       global_72 = Array(var_F4)
  loc_11407F5:       Set var_B8 = Me.ListView
  loc_1140810:       Set var_8C = Me.Txt
  loc_114082A:       Set global_88 = Proc_6_66_EFF8FC(var_B8, var_8C, Index)
  loc_1140848:       Set var_88 = Me.Txt
  loc_114084E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1140856:       global_72 = var_8C.Text
  loc_1140868:       Set var_90 = Me.Txt
  loc_114086E:       Call 0.Method_Txt_GotFocus0 (Index, var_B8, var_98)
  loc_1140876:       var_B8.Tag = 2
  loc_1140889:     End If
  loc_1140889:   End If
  loc_1140889: End If
  loc_1140889: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11CD308
  'Data Table: 4BF16C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim var_8C As DataGrid
  Dim var_E0 As String
  Dim var_B28 As Variant
  loc_11CCEC7: var_86 = Shift
  loc_11CCED4: If (CLng(Shift) = &H1B) Then
  loc_11CCED7:   Call Proc_332_38_EB881C(var_86)
  loc_11CCEDC:   Exit Sub
  loc_11CCEDD: End If
  loc_11CCEE0: var_88 = KeyCode
  loc_11CCEEB: If (var_88 = CInt(5)) Then
  loc_11CCEF9:   Set var_A8 = Me.Txt
  loc_11CCF0B:   Set var_9C = Me.FGPoint
  loc_11CCF16:   Set var_98 = Nothing
  loc_11CCF48:   Proc_6_69_134A198(Me.DGAgAc, var_A8, KeyCode, global_68, Shift, 0)
  loc_11CCF6A:   var_B0 = Me.FGPoint.RecordCount
  loc_11CCFBA:   If ((var_B0 > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_11CCFC1:     Set var_98 = Me.DGAgAc
  loc_11CCFC8:     Set var_90 = Me.FGPoint
  loc_11CCFE4:     Proc_6_138_106D6F8(var_98, global_68, KeyCode, var_90, 1)
  loc_11CCFF2:   End If
  loc_11CCFF5: Else
  loc_11CCFFD:   If (var_88 = CInt(6)) Then
  loc_11CD022:     Set var_8C = Me.Txt
  loc_11CD028:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_11CD030:     var_9C = var_90.Left
  loc_11CD042:     Set var_98 = Me.Txt
  loc_11CD048:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B4)
  loc_11CD050:     0 = var_9C.Top
  loc_11CD062:     Set var_A4 = Me.Txt
  loc_11CD068:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_11CD070:     var_B8 = var_A8.Height
  loc_11CD082:     Set var_AC = Me.Txt
  loc_11CD088:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_11CD090:     var_C0 = var_BC.Width
  loc_11CD0D8:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11CD0FF:   Else
  loc_11CD107:     If (var_88 = CInt(4)) Then
  loc_11CD114:       If (CLng(Shift) = &H2D) Then
  loc_11CD124:         Set var_8C = Me.Txt
  loc_11CD12A:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_E4, CInt(var_B0))
  loc_11CD132:         CInt((var_B4 + var_B8)) = var_90.Text
  loc_11CD13D:         Call Proc_332_41_EE2BB8(var_E0, var_E4, CInt(var_C0))
  loc_11CD153:         Set var_98 = Me.Txt
  loc_11CD159:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11CD161:         var_9C.Text = 680 & var_E0
  loc_11CD187:         Set var_8C = Me.Txt
  loc_11CD18D:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_11CD1A8:         Set var_98 = Me.Txt
  loc_11CD1AE:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_11CD1B6:         var_9C.SelStart = Len(var_90.Text)
  loc_11CD1C9:         Exit Sub
  loc_11CD1CA:       End If
  loc_11CD1CA:     End If
  loc_11CD1CA:   End If
  loc_11CD1CA: End If
  loc_11CD203: If ((CBool(Me.DGAgAc.Visible) = 0) And (Me.FrmList.Visible = 0)) Then
  loc_11CD224:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(4))) Then
  loc_11CD22D:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11CD232:   End If
  loc_11CD236:   Set var_8C = Me.TopCtrl1
  loc_11CD23C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_88)
  loc_11CD267:   If (((CStr() = "Add") And (KeyCode <> CInt(1))) And (KeyCode <> CInt(2))) Then
  loc_11CD27F:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11CD288:       Proc_6_76_E52838(Shift)
  loc_11CD28D:     End If
  loc_11CD290:   Else
  loc_11CD294:     Set var_8C = Me.TopCtrl1
  loc_11CD29A:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_11CD2BC:     If ((CStr() = "Edit") And (KeyCode <> CInt(2))) Then
  loc_11CD2D4:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_11CD2DD:         Proc_6_76_E52838(Shift)
  loc_11CD2E2:       End If
  loc_11CD2E2:     End If
  loc_11CD2E2:   End If
  loc_11CD2F7:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11CD300:     Proc_6_75_E527CC(Shift, arg_14)
  loc_11CD305:   End If
  loc_11CD305: End If
  loc_11CD305: Exit Sub
  loc_11CD306: var_B28 = CVar(arg_14) 'String
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6FE90
  'Data Table: 4BF16C
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F6FD57: Proc_6_58_E054C0(arg_10)
  loc_F6FD5F: var_86 = KeyAscii
  loc_F6FD6A: If (var_86 = CInt(1)) Then
  loc_F6FD77:   Set var_8C = Me.Txt
  loc_F6FD7D:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6FD98:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F6FDA7: Else
  loc_F6FDAF:   If (var_86 = CInt(3)) Then
  loc_F6FDBC:     Set var_8C = Me.Txt
  loc_F6FDC2:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F6FDDD:     Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_F6FDEC:   Else
  loc_F6FDF4:     If (var_86 = CInt(5)) Then
  loc_F6FE13:       If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_F6FE44:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F6FE7A:         Proc_6_138_106D6F8(Me.DGAgAc, global_68, KeyAscii, Me.FGPoint)
  loc_F6FE88:       End If
  loc_F6FE88:     End If
  loc_F6FE88:   End If
  loc_F6FE88: End If
  loc_F6FE88: Proc_6_60_E62BC4(0, 2)
  loc_F6FE8D: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFE2CC
  'Data Table: 4BF16C
  Dim var_86 As Integer
  loc_DFE2C7: var_86 = KeyCode
  loc_DFE2CA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4A3DC
  'Data Table: 4BF16C
  loc_E4A3BA: Set var_88 = Me.Txt
  loc_E4A3C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4A3CE: Proc_6_73_E22704(var_8C)
  loc_E4A3DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12FF4BC
  'Data Table: 4BF16C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim unk_4BF186 As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_8C As Fields15
  loc_12FEDBB: var_86 = Cancel
  loc_12FEDC6: If (var_86 = CInt(1)) Then
  loc_12FEDD4:   Set var_8C = Me.Txt
  loc_12FEDDA:   Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12FEDE2:   var_98 = "Vr No"
  loc_12FEE03:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_12FEE11:     Set var_8C = Me.Txt
  loc_12FEE17:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_12FEE1F:     var_90.SetFocus
  loc_12FEE2D:     arg_10 = &HFF
  loc_12FEE30:     Exit Sub
  loc_12FEE31:   End If
  loc_12FEE3F:   Set var_8C = Me.Txt
  loc_12FEE45:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_98)
  loc_12FEE4D:   arg_10 = var_90.Text
  loc_12FEE65:   If (CDbl(var_98) = CDbl(0)) Then
  loc_12FEE7B:     var_B8 = "Vr. No. Can Not Be 0"
  loc_12FEE81:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_12FEE9B:     Set var_8C = Me.Txt
  loc_12FEEA1:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FEEA9:     var_90.SetFocus
  loc_12FEEB7:     arg_10 = &HFF
  loc_12FEEBA:     Exit Sub
  loc_12FEEBB:   End If
  loc_12FEEBF:   Set var_8C = Me.TopCtrl1
  loc_12FEEC5:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_12FEECD:   var_98 = CStr(var_86)
  loc_12FEEDE:   If (var_98 = "Add") Then
  loc_12FEEE7:     Call Proc_332_40_115C8B8(MemVar_1F92044)
  loc_12FEEFA:     Set var_8C = Me.Txt
  loc_12FEF00:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_12FEF08:     var_90.Text = var_98
  loc_12FEF17:   End If
  loc_12FEF1B:   Set var_8C = Me.TopCtrl1
  loc_12FEF21:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_12FEF29:   var_98 = CStr()
  loc_12FEF3A:   If (var_98 = "Add") Then
  loc_12FEF6A:     Set var_8C = Me.Txt
  loc_12FEF70:     Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98, "Select Count(*) From ForExTrans Where DocID='", var_B8, -1)
  loc_12FEF91:     unk_4BF186.Execute var_124 & var_98 & "'", 0, var_128
  loc_12FEFA1:      = var_124.Item()
  loc_12FEFA9:      = var_128.Value
  loc_12FEFD6:     If (var_90.Text.Fields > 0) Then
  loc_12FEFDF:       Call 0.Method_arg_50 (var_98)
  loc_12FF000:       MsgBox("Duplicate Vr. No.", &H40, CVar(var_98), var_F8, var_118)
  loc_12FF016:       Call Proc_332_40_115C8B8(MemVar_1F92044)
  loc_12FF026:       If (var_98 = vbNullString) Then
  loc_12FF033:         Set var_8C = Me.Txt
  loc_12FF039:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FF041:         var_90.SetFocus
  loc_12FF04F:         arg_10 = &HFF
  loc_12FF052:         Exit Sub
  loc_12FF053:       End If
  loc_12FF059:       Call Proc_332_40_115C8B8(MemVar_1F92044, var_98)
  loc_12FF06C:       Set var_8C = Me.Txt
  loc_12FF072:       Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_12FF07A:       var_90.Text = arg_10
  loc_12FF08B:       arg_10 = &HFF
  loc_12FF08E:       Exit Sub
  loc_12FF08F:     End If
  loc_12FF08F:   End If
  loc_12FF092: Else
  loc_12FF09A:   If (var_86 = CInt(2)) Then
  loc_12FF0AB:     Set var_8C = Me.Txt
  loc_12FF0B1:     Call 0.Method_Txt_Validate0 (CInt(2), var_90, var_98)
  loc_12FF0B9:     arg_10 = var_90.Text
  loc_12FF0E9:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_12FF0FF:       Set var_8C = Me.Txt
  loc_12FF105:       Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_12FF10D:       var_90.Text = CStr(MemVar_1F920EC)
  loc_12FF11F:     Else
  loc_12FF129:       Set var_8C = Me.Txt
  loc_12FF12F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FF14F:       Set var_124 = Me.Txt
  loc_12FF155:       Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_12FF15D:       var_128.Text = Proc_6_33_1512840(var_90)
  loc_12FF170:     End If
  loc_12FF173:   Else
  loc_12FF17B:     If (var_86 = CInt(3)) Then
  loc_12FF188:       Set var_8C = Me.Txt
  loc_12FF18E:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FF1BA:       var_98 = CStr(Format(CVar(var_90), "0.00"))
  loc_12FF1C8:       Set var_94 = Me.Txt
  loc_12FF1CE:       Call 0.Method_Txt_Validate0 (Cancel, var_124, var_98)
  loc_12FF1D6:       var_124.Text = 1
  loc_12FF1F3:     Else
  loc_12FF1FB:       If (var_86 = CInt(5)) Then
  loc_12FF255:         Set var_8C = Me.Txt
  loc_12FF25B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_12FF263:         ((Me.Recordset15.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))) = var_90.Text
  loc_12FF27B:         If (1 Or (var_98 = vbNullString)) Then
  loc_12FF28B:           Set var_8C = Me.Txt
  loc_12FF291:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_12FF299:           var_90.Tag = vbNullString
  loc_12FF2A5:           Exit Sub
  loc_12FF2A6:         End If
  loc_12FF2E4:         Set var_94 = Me.Txt
  loc_12FF2EA:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12FF2F2:         var_124.Text = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_12FF339:         var_98 = CStr(Me.Recordset15.Fields.Item("SearchCode").Value)
  loc_12FF346:         Set var_94 = Me.Txt
  loc_12FF34C:         Call 0.Method_Txt_Validate0 (Cancel, var_124)
  loc_12FF354:         var_124.Tag = var_98
  loc_12FF3B0:         If CBool(CVar(global_100) <> Me.Recordset15.Fields.Item("Name").Value) Then
  loc_12FF3B3:           Call Proc_332_42_1112CF4(var_98)
  loc_12FF3D8:           var_90 = Me.Recordset15.Fields.Item("SearchCode")
  loc_12FF3ED:           Call Proc_332_43_125D0A0(CStr(var_90.Value))
  loc_12FF3FF:         End If
  loc_12FF402:       Else
  loc_12FF40A:         If (var_86 = CInt(6)) Then
  loc_12FF418:           Set var_8C = Me.Txt
  loc_12FF41E:           Call 0.Method_Txt_Validate0 (CInt(6))
  loc_12FF447:           If (Trim(CVar(var_90)) = vbNullString) Then
  loc_12FF44C:             arg_10 = &HFF
  loc_12FF44F:             Exit Sub
  loc_12FF450:           End If
  loc_12FF45E:           Set var_8C = Me.Txt
  loc_12FF464:           Call 0.Method_Txt_Validate0 (CInt(6), var_90, var_98)
  loc_12FF46C:           arg_10 = var_90.Text
  loc_12FF483:           If (var_98 = "Misc Payment") Then
  loc_12FF48C:             global_60 = "HTEXP"
  loc_12FF496:             Call Proc_332_40_115C8B8(MemVar_1F92044, var_98)
  loc_12FF4A1:           Else
  loc_12FF4A7:             global_60 = "HTSAL"
  loc_12FF4B1:             Call Proc_332_40_115C8B8(MemVar_1F92044, var_98)
  loc_12FF4B9:           End If
  loc_12FF4B9:         End If
  loc_12FF4B9:       End If
  loc_12FF4B9:     End If
  loc_12FF4B9:   End If
  loc_12FF4B9: End If
  loc_12FF4B9: Exit Sub
  loc_12FF4BA: On Error Goto loc_12FE1BF
End Sub

Private Sub txtM_UnknownEvent_0 'E50D30
  'Data Table: 4BF16C
  loc_E50D0A: Set var_88 = Me.txtM
  loc_E50D10: Call 0.Method_txtM_UnknownEvent_00 (Cancel)
  loc_E50D1E: Proc_6_74_E226B0(var_8C)
  loc_E50D2A: Call Proc_332_38_EB881C(var_8C)
  loc_E50D2F: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_1 'E4B2E4
  'Data Table: 4BF16C
  loc_E4B2C2: Set var_88 = Me.txtM
  loc_E4B2C8: Call 0.Method_txtM_UnknownEvent_10 (Cancel)
  loc_E4B2D6: Proc_6_73_E22704(var_8C)
  loc_E4B2E2: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_8 'E54438
  'Data Table: 4BF16C
  Dim arg_10 As Integer
  loc_E5440E: Set var_88 = Me.txtM
  loc_E54414: Call 0.Method_txtM_UnknownEvent_80 (Cancel)
  loc_E5442E: If (IsDate(CVar(var_8C)) = 0) Then
  loc_E54433:   arg_10 = &HFF
  loc_E54436: End If
  loc_E54436: Exit Sub
End Sub

Private Sub txtM_UnknownEvent_B 'E610BC
  'Data Table: 4BF16C
  loc_E61076: If (CLng(arg_10) = &H1B) Then
  loc_E61079:   Call Proc_332_38_EB881C()
  loc_E6107E:   Exit Sub
  loc_E6107F: End If
  loc_E61094: If ((CLng(arg_10) = &H28) Or (CLng(arg_10) = &HD)) Then
  loc_E6109D:   Proc_6_75_E527CC(arg_10)
  loc_E610A2: End If
  loc_E610AC: If (CLng(arg_10) = &H26) Then
  loc_E610B5:   Proc_6_76_E52838(arg_10, arg_14)
  loc_E610BA: End If
  loc_E610BA: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3AE74
  'Data Table: 4BF16C
  loc_E3AE68: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_E3AE6B:   Call DGAgAc_UnknownEvent_9()
  loc_E3AE70: End If
  loc_E3AE70: Exit Sub
  loc_E3AE71: StAryRecCopy
End Sub

Private Sub GridSel_UnknownEvent_A '11219E4
  'Data Table: 4BF16C
  Dim var_94 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_1D8 As Double
  Dim var_86 As Integer
  loc_112169E: If (Cancel = &HD) Then
  loc_11216AF:   Proc_303_0_FB9B68("	")
  loc_11216B7: End If
  loc_11216D6: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_11216D9:   Exit Sub
  loc_11216DA: End If
  loc_11216EE: var_A4 = Me.GridSel.Col
  loc_1121711: var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1121751: If (CVar(CLng(5)) And (CStr(Me.GridSel.TextMatrix)) = "Cash")) Then
  loc_1121764:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_112177E:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1121799:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_112179E:   var_E8 = 0
  loc_11217D0:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_11217D5:   var_19C = 0
  loc_1121810:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1121818:   Set var_1D0 = Me.GridSel
  loc_112181E:   LateIdCallSt
  loc_112185A:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_112185F:   var_E8 = 0
  loc_1121896:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11218AC:     var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_11218B4:     var_E8 = CVar(CLng(4)) 'Long
  loc_11218E6:     global_112 = (global_112 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_11218FD:   Else
  loc_1121910:     var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1121918:     var_E8 = CVar(CLng(4)) 'Long
  loc_1121921:     Set var_A8 = Me.GridSel
  loc_112193A:     var_1D8 = Val(CStr(var_A8.TextMatrix)))
  loc_112194A:     global_112 = (global_112 - var_1D8)
  loc_112195E:   End If
  loc_1121974:   Set var_94 = Me.Txt
  loc_112197A:   Call 0.Method_GridSel_UnknownEvent_A0 (CInt(3), var_A8, CStr(global_112), global_112, var_1D8, var_E8, var_C8)
  loc_1121982:   var_A8.Text = global_112
  loc_11219A2:   var_86 = CInt((UBound(global_104, 1) + 1))
  loc_11219B4:   ReDim Preserve global_104(0 To CLng(var_86))
  loc_11219DC:   global_104(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_11219E3: End If
  loc_11219E3: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C37C
  'Data Table: 4BF16C
  loc_E5C357: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C35A:   Exit Sub
  loc_E5C35B: End If
  loc_E5C372: global_96 = CInt(CLng(Me.GridSel.Row))
  loc_E5C37B: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '10AEB78
  'Data Table: 4BF16C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_154 As Variant
  Dim var_174 As Long
  Dim var_194 As Variant
  Dim var_1B0 As Double
  Dim var_1A8 As TextBox
  Dim var_86 As Integer
  loc_10AE8D1: If ((CLng(Me.GridSel.Col) <> 0) Or (global_96 = 0)) Then
  loc_10AE8D4:   Exit Sub
  loc_10AE8D5: End If
  loc_10AE904: For var_A0 = global_96 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_A0 'Integer
  loc_10AE91D:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_10AE938:   Me.GridSel.Col = 0
  loc_10AE950:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_10AE96A:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_10AE976:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AE97B:   var_D0 = 0
  loc_10AE99E:   var_154 = CVar(CLng(var_88)) 'Long
  loc_10AE9A3:   var_174 = 0
  loc_10AE9DE:   var_194 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_10AE9E6:   Set var_1A8 = Me.GridSel
  loc_10AE9EC:   LateIdCallSt
  loc_10AEA11:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AEA16:   var_D0 = 0
  loc_10AEA45:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_10AEA4C:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AEA54:     var_D0 = CVar(CLng(4)) 'Long
  loc_10AEA86:     global_112 = (global_112 + Val(CStr(Me.GridSel.TextMatrix))))
  loc_10AEA95:   Else
  loc_10AEA99:     var_B0 = CVar(CLng(var_88)) 'Long
  loc_10AEAA1:     var_D0 = CVar(CLng(4)) 'Long
  loc_10AEAC3:     var_1B0 = Val(CStr(Me.GridSel.TextMatrix)))
  loc_10AEAD3:     global_112 = (global_112 - var_1B0)
  loc_10AEADF:   End If
  loc_10AEAF5:   Set var_8C = Me.Txt
  loc_10AEAFB:   Call 0.Method_GridSel_UnknownEvent_100 (CInt(3), var_1A8, CStr(global_112), global_112, var_1B0, var_D0, var_B0)
  loc_10AEB03:   var_1A8.Text = global_112
  loc_10AEB23:   var_86 = CInt((UBound(global_104, 1) + 1))
  loc_10AEB35:   ReDim Preserve global_104(0 To CLng(var_86))
  loc_10AEB5D:   global_104(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_10AEB67: Next var_A0 'Integer
  loc_10AEB71: global_96 = 0
  loc_10AEB74: Exit Sub
End Sub

Private Sub DGAgAc_UnknownEvent_9 'EED310
  'Data Table: 4BF16C
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EED259: Set var_A8 = Me.DGAgAc
  loc_EED25F: var_A8.Visible = False
  loc_EED281: If (Me.var_A8.RecordCount > 0) Then
  loc_EED2A4:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_EED2C3:   Set var_B4 = Me.Txt
  loc_EED2C9:   Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5), var_B8)
  loc_EED2D1:   var_B8.Text = CStr(var_B0.Value)
  loc_EED2E7: End If
  loc_EED2F2: Set var_A8 = Me.Txt
  loc_EED2F8: Call 0.Method_DGAgAc_UnknownEvent_90 (CInt(5))
  loc_EED300: var_B0.SetFocus
  loc_EED30C: Exit Sub
  loc_EED30D: GoTo loc_EF3E50
End Sub

Public Function MasterFormExitGet() '4C0170
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4C017F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EF83D4
  'Data Table: 4BF16C
  Dim Me As Recordset15
  Dim var_A0 As Boolean
  loc_EF8306: On Error Goto loc_EF83CB
  loc_EF830F: Me.MoveFirst
  loc_EF8339: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_EF8361: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_EF8372: Set var_A8 = Me.TopCtrl1
  loc_EF8378: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030010(False)
  loc_EF8389: Set var_A8 = Me.TopCtrl1
  loc_EF838F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030011(False)
  loc_EF83A0: Set var_A8 = Me.TopCtrl1
  loc_EF83A6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030013(False)
  loc_EF83AE: var_A0 = False
  loc_EF83B7: Set var_A8 = Me.TopCtrl1
  loc_EF83BD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030012(var_A0)
  loc_EF83C5: Call Proc_332_36_13516A8(0)
  loc_EF83CA: Exit Sub
  loc_EF83CB: ' Referenced from: EF8306
  loc_EF83CB: Proc_6_60_E62BC4(var_A0)
  loc_EF83D0: Exit Sub
End Sub

Public Sub Proc_332_32_13E0F78
  'Data Table: 4BF16C
  Dim var_D4 As Variant
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_108 As String
  Dim unk_4BF186 As Connection15
  Dim var_9C As Recordset15
  Dim var_134 As Recordset15
  Dim var_12C As Fields15
  Dim var_128 As Variant
  Dim var_96 As Integer
  loc_13E05C9: var_D4 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_13E05D4: var_B0 = "DocID"
  loc_13E05E3: var_A0 = Me.Fields
  loc_13E0612: unk_4BF186.Execute CStr(var_D4 & var_A0.Item(var_B0).Value & "'"), var_128, -1
  loc_13E061D: Set var_9C = var_12C
  loc_13E063D: var_130 = var_9C.RecordCount
  loc_13E064B: If (var_130 = 0) Then
  loc_13E064E:   Exit Sub
  loc_13E064F: End If
  loc_13E065C: Call Proc_332_33_FDD4E0(New, var_A0)
  loc_13E0664: Set var_8C = var_A0
  loc_13E066A: Set var_134 = var_8C 
  loc_13E0679: var_134.AddNew var_B0, var_D4
  loc_13E06CD: var_134.Fields.Item("VNo").Value = CVar(CStr(var_9C.Fields.Item("VNo").Value))
  loc_13E0747: var_134.Fields.Item("VDate").Value = Format(CVar(var_9C.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_13E0790: var_F4 = "Misc Receipt"
  loc_13E07DA: var_134.Fields.Item("VType").Value = IIf((var_9C.Fields.Item("vType").Value = "HTSAL"), var_F4, "Misc Payment")
  loc_13E086F: var_134.Fields.Item("AgAc").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("CrAcName")), 1)), 3, 0)), &H32))
  loc_13E08B7: var_E4 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Remarks")), 1)) 'String
  loc_13E091D: var_134.Fields.Item("Particulars").Value = CVar(Proc_6_45_EAD428(CStr(StrConv(Left(Trim(var_E4), &H96), 3, 0)), 150))
  loc_13E0963: Proc_6_47_EF59D0(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E098B: var_134.Fields.Item("Amount").Value = var_E4
  loc_13E09C6: Proc_6_39_E7C810(var_E4, CVar(var_9C.Fields.Item("Amount")))
  loc_13E0A2C: var_134.Fields.Item("Charge").Value = StrConv(CVar(Proc_6_43_10041F4(CSng(Abs(var_E4)), vbNullString)), 3, 0)
  loc_13E0A89: var_12C = var_134.Fields
  loc_13E0A99: var_12C.Item("Uname").Value = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("U_Name")), vbNullString))
  loc_13E0AB1: var_D4 = CVar(MemVar_1F920C8) 'String
  loc_13E0AB8: var_B0 = "LUName"
  loc_13E0ACC: var_B4 = var_134.Fields.Item(var_B0)
  loc_13E0AD4: var_B4.Value = var_D4
  loc_13E0AEB: var_134.Update var_B0, var_D4
  loc_13E0AF3: var_90 = "ExpenseRep"
  loc_13E0AF9: var_94 = "Expense Report"
  loc_13E0AFE: var_96 = 0
  loc_13E0B25: Set var_A0 = var_8C 
  loc_13E0B2C: CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\" & var_90 & ".ttx", &HFF)
  loc_13E0B5A: var_108 = "\" & var_90
  loc_13E0B6E: Call 0.Method_arg_1C (MemVar_1F920B4 & var_108 & ".RPT", var_B0, var_A0)
  loc_13E0B79: MemVar_1F921E4 = var_A0
  loc_13E0BA2: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_D4)
  loc_13E0BAA: Call 0.Method_arg_2C (var_F4, var_96)
  loc_13E0BB8: Call 0.Method_arg_150 (var_12C)
  loc_13E0BCE: Call 0.Method_arg_90 (var_A0, var_130)
  loc_13E0BD6: Call 0.Method_arg_24 (var_98)
  loc_13E0BE2: For var_184 =  To CInt(var_130): 1 = var_184 'Integer
  loc_13E0BFB:   Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0C03:   Call 0.Method_arg_20 (var_B4)
  loc_13E0C0B:   Call 0.Method_arg_30 (var_108)
  loc_13E0C21:   var_194 = Ucase(CVar(var_108)) 'Variant
  loc_13E0C51:   If (var_194 = Ucase("comp_name")) Then
  loc_13E0C75:     Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0C7D:     Call 0.Method_arg_20 (var_B4)
  loc_13E0C85:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_13E0C9B:   Else
  loc_13E0CBD:     If (var_194 = Ucase("comp_add1")) Then
  loc_13E0CE1:       Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0CE9:       Call 0.Method_arg_20 (var_B4)
  loc_13E0CF1:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_13E0D07:     Else
  loc_13E0D29:       If (var_194 = Ucase("comp_pin")) Then
  loc_13E0D4D:         Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0D55:         Call 0.Method_arg_20 (var_B4)
  loc_13E0D5D:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_13E0D73:       Else
  loc_13E0D95:         If (var_194 = Ucase("comp_GSTIN")) Then
  loc_13E0DB9:           Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0DC1:           Call 0.Method_arg_20 (var_B4)
  loc_13E0DC9:           Call 0.Method_arg_38 ("'" & MemVar_1F92154 & "'")
  loc_13E0DDF:         Else
  loc_13E0E01:           If (var_194 = Ucase("comp_tin")) Then
  loc_13E0E25:             Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0E2D:             Call 0.Method_arg_20 (var_B4)
  loc_13E0E35:             Call 0.Method_arg_38 ("'" & MemVar_1F92150 & "'")
  loc_13E0E4B:           Else
  loc_13E0E6D:             If (var_194 = Ucase("Title")) Then
  loc_13E0E91:               Call 0.Method_arg_90 (var_A0, CLng(var_98))
  loc_13E0E99:               Call 0.Method_arg_20 (var_B4)
  loc_13E0EA1:               Call 0.Method_arg_38 ("'Phone No. " & MemVar_1F92140 & "'")
  loc_13E0EB7:             Else
  loc_13E0ED9:               If (var_194 = Ucase("BetweenDate")) Then
  loc_13E0EDC:                 GoTo loc_13E0F2C
  loc_13E0EDF:               End If
  loc_13E0F01:               If (var_194 = Ucase("Dater")) Then
  loc_13E0F04:                 GoTo loc_13E0F2C
  loc_13E0F07:               End If
  loc_13E0F29:               If (var_194 = Ucase("Pager")) Then
  loc_13E0F2C:                 ' Referenced from:             13E0F04
  loc_13E0F2C:                 ' Referenced from:             13E0EDC
  loc_13E0F2C:               End If
  loc_13E0F2C:             End If
  loc_13E0F2C:           End If
  loc_13E0F2C:         End If
  loc_13E0F2C:       End If
  loc_13E0F2C:     End If
  loc_13E0F2C:   End If
  loc_13E0F2F: Next var_184 'Integer
  loc_13E0F39: Set var_B4 = Nothing
  loc_13E0F4D: Set var_A0 = MemVar_1F921E4 
  loc_13E0F59: Proc_6_99_1483714(var_A0, var_96, var_94)
  loc_13E0F64: MemVar_1F921E4 = var_A0
  loc_13E0F71: Set var_134 = Nothing 
  loc_13E0F75: Exit Sub
End Sub

Public Sub Proc_332_33_FDD4E0(arg_C) 'FDD4E0
  'Data Table: 4BF16C
  Dim var_8C As Recordset15
  loc_FDD301: Set var_8C = arg_C 
  loc_FDD329: var_8C.Fields.Append "VNo", &HC8, &HA
  loc_FDD355: var_8C.Fields.Append "VDate", &HC8, &HB
  loc_FDD381: var_8C.Fields.Append "VType", &HC8, &H32
  loc_FDD3AD: var_8C.Fields.Append "AgAc", &HC8, &H4B
  loc_FDD3D9: var_8C.Fields.Append "Particulars", &HC8, &H96
  loc_FDD405: var_8C.Fields.Append "Amount", &HC8, &HB
  loc_FDD431: var_8C.Fields.Append "Charge", &HC8, &HC8
  loc_FDD45D: var_8C.Fields.Append "Uname", &HC8, &HA
  loc_FDD489: var_8C.Fields.Append "LUName", &HC8, &HA
  loc_FDD499: var_8C.CursorType = 3
  loc_FDD4A6: var_8C.LockType = 3
  loc_FDD4C5: var_8C.Open var_A0, var_B0, -1
  loc_FDD4CC: Set var_8C = Nothing 
  loc_FDD4D3: Set var_88 = arg_C 
  loc_FDD4D7: Proc_332_33_FDD4E0 = -1
End Sub

Public Sub Proc_332_34_F8FBAC
  'Data Table: 4BF16C
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_4BF186 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_F8FA6D: Set var_8C = Me.TopCtrl1
  loc_F8FA73: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_F8FA7B: var_A0 = CStr()
  loc_F8FA8C: If (var_A0 = "Add") Then
  loc_F8FABC:   Set var_8C = Me.Txt
  loc_F8FAC2:   Call 0.Method_Proc_332_34_F8FBAC0 (CInt(0), var_A4, var_A0, "Select Count(*) From ExpSheet Where DocID='", var_9C, -1)
  loc_F8FAE3:   unk_4BF186.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_F8FAF3:    = var_C4.Item()
  loc_F8FAFB:    = var_D8.Value
  loc_F8FB28:   If (var_A4.Text.Fields > 0) Then
  loc_F8FB31:     Call 0.Method_arg_50 (var_A0)
  loc_F8FB52:     MsgBox("Duplicate Serial No.", &H40, CVar(var_A0), var_108, var_118)
  loc_F8FB68:     Call Proc_332_40_115C8B8(MemVar_1F92044)
  loc_F8FB7B:     Set var_8C = Me.Txt
  loc_F8FB81:     Call 0.Method_Proc_332_34_F8FBAC0 (CInt(0), var_A4)
  loc_F8FB89:     var_A4.Text = var_A0
  loc_F8FB9D:     Proc_332_34_F8FBAC = 0
  loc_F8FBA3:   End If
  loc_F8FBA3: End If
  loc_F8FBA3: Proc_332_34_F8FBAC = var_A0
End Sub

Public Sub Proc_332_35_EF1D64
  'Data Table: 4BF16C
  Dim var_98 As Variant
  Dim var_8C As Label
  loc_EF1C9E: Set var_8C = Me.Txt
  loc_EF1CA4: Call 0.Method_Proc_332_35_EF1D64C (var_8E, var_86)
  loc_EF1CB4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EF1CCA:   Set var_8C = Me.Txt
  loc_EF1CD0:   Call 0.Method_Proc_332_35_EF1D640 (CInt(var_86), var_98)
  loc_EF1CD8:   var_98.Text = vbNullString
  loc_EF1CF4:   Set var_8C = Me.Txt
  loc_EF1CFA:   Call 0.Method_Proc_332_35_EF1D640 (CInt(var_86), var_98)
  loc_EF1D02:   var_98.Tag = vbNullString
  loc_EF1D11: Next var_92 'Byte
  loc_EF1D28: Set var_8C = Me.txtM
  loc_EF1D2E: Call 0.Method_Proc_332_35_EF1D640 (CInt(5), var_98)
  loc_EF1D36: var_98.defaultText = vbNullString
  loc_EF1D4F: Me.LblVPrefix.Caption = vbNullString
  loc_EF1D60: Exit Sub
  loc_EF1D61: var_AC = CDbl(0)
End Sub

Public Sub Proc_332_36_13516A8
  'Data Table: 4BF16C
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_94 As Fields15
  Dim var_A8 As Variant
  Dim unk_4BF186 As Connection15
  Dim var_88 As Recordset15
  Dim var_120 As Variant
  Dim var_1E8 As Recordset15
  Dim var_128 As Variant
  Dim var_11C As Variant
  loc_1350ED4: On Error Goto loc_13516A0
  loc_1350EEE: If (Me.RecordCount > 0) Then
  loc_1350EFE:   var_C8 = "SELECT SubGroup.Name as CrAcName, ExpSheet.* FROM ExpSheet LEFT JOIN SubGroup ON ExpSheet.AgAc = SubGroup.SubCode Where DocID='"
  loc_1350F47:   unk_4BF186.Execute CStr(var_C8 & Me.Fields.Item("DocID").Value & "'"), var_11C, -1
  loc_1350F52:   Set var_88 = var_120
  loc_1350FA6:   var_120 = var_88.Fields
  loc_135100F:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1351054:   Me.LblUser.Caption = CStr(var_120 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_18C)))
  loc_13510CE:   var_128 = var_88.Fields.Item("U_AE")
  loc_135112F:   var_18C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_1351174:   Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_13511AF:   Set var_1E8 = var_88 
  loc_13511EF:   If (var_88.Fields.Item("vType").Value = "HTSAL") Then
  loc_135120C:     var_A8 = var_88.Fields.Item("vType")
  loc_1351223:     global_60 = CStr(var_A8.Value)
  loc_1351242:     Set var_94 = Me.Txt
  loc_1351248:     Call 0.Method_Proc_332_36_13516A80 (CInt(6), var_A8)
  loc_1351250:     var_A8.Text = "Misc Rect."
  loc_135125F:   Else
  loc_135129B:     If (var_88.Fields.Item("vType").Value = "HTEXP") Then
  loc_13512B8:       var_A8 = var_88.Fields.Item("vType")
  loc_13512CF:       global_60 = CStr(var_A8.Value)
  loc_13512EE:       Set var_94 = Me.Txt
  loc_13512F4:       Call 0.Method_Proc_332_36_13516A80 (CInt(6), var_A8)
  loc_13512FC:       var_A8.Text = "Misc Payment"
  loc_1351308:     End If
  loc_1351308:   End If
  loc_1351341:   Set var_120 = Me.Txt
  loc_1351347:   Call 0.Method_Proc_332_36_13516A80 (CInt(0), var_128)
  loc_135134F:   var_128.Text = CStr(var_1E8.Fields.Item("DocID").Value)
  loc_135139D:   Me.LblVPrefix.Caption = CStr(var_1E8.Fields.Item("vPrefix").Value)
  loc_1351403:   Set var_120 = Me.Txt
  loc_1351409:   Call 0.Method_Proc_332_36_13516A80 (CInt(2), var_128, CStr(Format(CVar(var_1E8.Fields.Item("VDate")), "dd/MMM/yyyy")))
  loc_1351411:   var_128.Text = 1
  loc_1351464:   Set var_120 = Me.Txt
  loc_135146A:   Call 0.Method_Proc_332_36_13516A80 (CInt(1), var_128)
  loc_1351472:   var_128.Text = CStr(var_1E8.Fields.Item("VNo").Value)
  loc_13514DB:   Set var_120 = Me.txtM
  loc_13514E1:   Call 0.Method_Proc_332_36_13516A80 (CInt(5), var_128, CVar(CStr(Format(CVar(var_1E8.Fields.Item("VTIME")), "hh:mm"))))
  loc_13514E9:   var_128.defaultText = 1
  loc_1351554:   Set var_120 = Me.Txt
  loc_135155A:   Call 0.Method_Proc_332_36_13516A80 (CInt(3), var_128, CStr(Format(CVar(var_1E8.Fields.Item("Amount")), "0.00")), 1)
  loc_1351562:   var_128.Text = 1
  loc_13515B2:   Set var_120 = Me.Txt
  loc_13515B8:   Call 0.Method_Proc_332_36_13516A80 (CInt(4), var_128)
  loc_13515C0:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("Remarks")), 1)
  loc_135160A:   Set var_120 = Me.Txt
  loc_1351610:   Call 0.Method_Proc_332_36_13516A80 (CInt(5), var_128)
  loc_1351618:   var_128.Tag = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("AgAc")))
  loc_1351662:   Set var_120 = Me.Txt
  loc_1351668:   Call 0.Method_Proc_332_36_13516A80 (CInt(5), var_128)
  loc_1351670:   var_128.Text = Proc_6_38_E68A98(CVar(var_1E8.Fields.Item("CrAcName")))
  loc_1351686:   Set var_1E8 = Nothing 
  loc_135168D: Else
  loc_135168D:   Call Proc_332_35_EF1D64(1)
  loc_1351692: End If
  loc_1351692: Call Proc_332_38_EB881C()
  loc_135169C: Set var_88 = Nothing
  loc_135169F: Exit Sub
  loc_13516A0: ' Referenced from: 1350ED4
  loc_13516A0: Proc_6_60_E62BC4()
  loc_13516A5: Exit Sub
  loc_13516A6: DOC
End Sub

Public Sub Proc_332_37_F70934(arg_C) 'F70934
  'Data Table: 4BF16C
  Dim var_98 As Variant
  loc_F707F6: Set var_8C = Me.Txt
  loc_F707FC: Call 0.Method_Proc_332_37_F70934C (var_8E, var_86)
  loc_F7080C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F70822:   Set var_8C = Me.Txt
  loc_F70828:   Call 0.Method_Proc_332_37_F709340 (CInt(var_86), var_98)
  loc_F70830:   var_98.Enabled = arg_C
  loc_F7083F: Next var_92 'Byte
  loc_F70852: Set var_8C = Me.Txt
  loc_F70858: Call 0.Method_Proc_332_37_F709340 (CInt(6), var_98)
  loc_F70860: var_98.Enabled = False
  loc_F70879: Set var_8C = Me.Txt
  loc_F7087F: Call 0.Method_Proc_332_37_F709340 (CInt(2), var_98)
  loc_F70887: var_98.Enabled = False
  loc_F708A0: Set var_8C = Me.Txt
  loc_F708A6: Call 0.Method_Proc_332_37_F709340 (CInt(1), var_98)
  loc_F708AE: var_98.Enabled = False
  loc_F708C7: Set var_8C = Me.Txt
  loc_F708CD: Call 0.Method_Proc_332_37_F709340 (CInt(3), var_98)
  loc_F708D5: var_98.Enabled = False
  loc_F708F1: Set var_8C = Me.txtM
  loc_F708F7: Call 0.Method_Proc_332_37_F709340 (CInt(5), var_98)
  loc_F708FF: var_98.Enabled = False
  loc_F70918: Set var_8C = Me.Txt
  loc_F7091E: Call 0.Method_Proc_332_37_F709340 (CInt(0), var_98)
  loc_F70926: var_98.Enabled = False
  loc_F70932: Exit Sub
End Sub

Public Sub Proc_332_38_EB881C
  'Data Table: 4BF16C
  loc_EB8798: If (CBool(Me.DGAgAc.Visible) = &HFF) Then
  loc_EB87AA:   Me.DGAgAc.Visible = False
  loc_EB87B2: End If
  loc_EB87CD: If (Me.FrmList.Visible = &HFF) Then
  loc_EB87DC:   Me.FrmList.Visible = False
  loc_EB87E4: End If
  loc_EB8800: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8812:   Me.FGPoint.Visible = False
  loc_EB881A: End If
  loc_EB881A: Exit Sub
End Sub

Public Sub Proc_332_39_E8FC6C(arg_C) 'E8FC6C
  'Data Table: 4BF16C
  Dim var_10C As TextBox
  loc_E8FC00: Call Proc_332_38_EB881C()
  loc_E8FC3C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8FC3F:   Call TopCtrl1_UnknownEvent_16()
  loc_E8FC47: Else
  loc_E8FC51:   Set var_108 = Me.Txt
  loc_E8FC57:   Call 0.Method_Proc_332_39_E8FC6C0 (arg_C)
  loc_E8FC5F:   var_10C.SetFocus
  loc_E8FC6B: End If
  loc_E8FC6B: Exit Sub
End Sub

Public Sub Proc_332_40_115C8B8
  'Data Table: 4BF16C
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Variant
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_115C550: var_90 = global_60
  loc_115C567: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115C58A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115C598: Set var_B4 = Me.Txt
  loc_115C59E: Call 0.Method_Proc_332_40_115C8B80 (CInt(2), var_B8, var_E8)
  loc_115C5AD: Proc_6_7_F25D88(var_D8, CVar(var_B8), var_13C)
  loc_115C5B5: var_F8 = -1 & var_D8 
  loc_115C5C9: Me.Txt.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115C5D4: Set var_8C = var_140
  loc_115C610: If (var_8C.RecordCount <= 0) Then
  loc_115C62C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115C63F:   var_88 = vbNullString
  loc_115C642:   Proc_332_40_115C8B8 = 
  loc_115C648: End If
  loc_115C65C: If (var_8C.RecordCount > 0) Then
  loc_115C69B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115C6B8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115C6C9:     var_9C = CStr(var_B8.Value)
  loc_115C6E4:     Set var_B4 = Me.Txt
  loc_115C6EA:     Call 0.Method_Proc_332_40_115C8B80 (CInt(1), var_B8)
  loc_115C700:     var_94 = CLng(Val(var_B8.Text))
  loc_115C710:   Else
  loc_115C73B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115C762:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115C777:     var_D8 = (var_B8.Value + 1)
  loc_115C77D:     var_94 = CLng(var_D8)
  loc_115C78E:   End If
  loc_115C78E: End If
  loc_115C7B9: var_C8 = Space((5 - Len(var_90)))
  loc_115C7C1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115C7CB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115C7DC: var_118 = Space((5 - Len(var_9C)))
  loc_115C7E4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115C7FA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115C802: var_188 = (var_13C + var_178)
  loc_115C80E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115C813: var_98 = CStr(var_1A8)
  loc_115C843: Me.LblVPrefix.Caption = var_9C
  loc_115C859: Set var_B4 = Me.Txt
  loc_115C85F: Call 0.Method_Proc_332_40_115C8B80 (CInt(0), var_B8)
  loc_115C867: var_B8.Text = var_98
  loc_115C886: Set var_B4 = Me.Txt
  loc_115C88C: Call 0.Method_Proc_332_40_115C8B80 (CInt(1), var_B8)
  loc_115C894: var_B8.Text = CStr(var_94)
  loc_115C8A6: var_88 = var_98
  loc_115C8AE: Set var_8C = Nothing
  loc_115C8B1: Proc_332_40_115C8B8 = var_94
End Sub

Public Sub Proc_332_41_EE2BB8
  'Data Table: 4BF16C
  loc_EE2B06: On Error Goto loc_EE2B4C
  loc_EE2B1E: Call 0.Method_arg_18C (var_8C)
  loc_EE2B26: Call var_8C.Show
  loc_EE2B3B: Call 0.Method_arg_188 (var_B0)
  loc_EE2B43: var_88 = var_B0
  loc_EE2B46: Proc_332_41_EE2BB8 = 1
  loc_EE2B4C: ' Referenced from: EE2B06
  loc_EE2B54: Set var_8C = Err()
  loc_EE2B5A: Call 0.Method_arg_1C (var_B4)
  loc_EE2B6B: If (var_B4 <> 0) Then
  loc_EE2B76:   Set var_8C = Err()
  loc_EE2B7C:   Call 0.Method_arg_2C (var_B0)
  loc_EE2B9D:   MsgBox(CVar(var_B0), &H40, "Validation", var_E4, var_104)
  loc_EE2BB0: End If
  loc_EE2BB0: Proc_332_41_EE2BB8 = 
  loc_EE2BB6: Set var_C00 = 
End Sub

Public Sub Proc_332_42_1112CF4
  'Data Table: 4BF16C
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11129AA: Me.GridSel.Rows = 1
  loc_11129BE: Me.GridSel.Cols = 6
  loc_11129C3: var_98 = 0
  loc_11129CF: var_BC = CVar(CLng(0)) 'Long
  loc_11129D4: var_DC = "O"
  loc_11129DD: LateIdCallSt
  loc_11129E8: var_98 = CVar(CLng(0)) 'Long
  loc_11129ED: var_BC = &H258
  loc_11129F9: LateIdCallSt
  loc_1112A01: var_98 = 0
  loc_1112A0D: var_BC = CVar(CLng(1)) 'Long
  loc_1112A12: var_DC = "Bill No"
  loc_1112A1B: LateIdCallSt
  loc_1112A26: var_98 = CVar(CLng(1)) 'Long
  loc_1112A31: var_BC = CVar(CInt(1)) 'Integer
  loc_1112A38: LateIdCallSt
  loc_1112A43: var_98 = CVar(CLng(1)) 'Long
  loc_1112A4E: var_BC = CVar(CInt(1)) 'Integer
  loc_1112A55: LateIdCallSt
  loc_1112A60: var_98 = CVar(CLng(1)) 'Long
  loc_1112A65: var_BC = &H514
  loc_1112A71: LateIdCallSt
  loc_1112A79: var_98 = 0
  loc_1112A85: var_BC = CVar(CLng(2)) 'Long
  loc_1112A8A: var_DC = "DocId"
  loc_1112A93: LateIdCallSt
  loc_1112A9E: var_98 = CVar(CLng(2)) 'Long
  loc_1112AA9: var_BC = CVar(CInt(7)) 'Integer
  loc_1112AB0: LateIdCallSt
  loc_1112ABB: var_98 = CVar(CLng(2)) 'Long
  loc_1112AC6: var_BC = CVar(CInt(7)) 'Integer
  loc_1112ACD: LateIdCallSt
  loc_1112AD8: var_98 = CVar(CLng(2)) 'Long
  loc_1112ADD: var_BC = 0
  loc_1112AE9: LateIdCallSt
  loc_1112AF1: var_98 = 0
  loc_1112AFD: var_BC = CVar(CLng(3)) 'Long
  loc_1112B02: var_DC = "Bill Date"
  loc_1112B0B: LateIdCallSt
  loc_1112B16: var_98 = CVar(CLng(3)) 'Long
  loc_1112B21: var_BC = CVar(CInt(1)) 'Integer
  loc_1112B28: LateIdCallSt
  loc_1112B33: var_98 = CVar(CLng(3)) 'Long
  loc_1112B3E: var_BC = CVar(CInt(1)) 'Integer
  loc_1112B45: LateIdCallSt
  loc_1112B50: var_98 = CVar(CLng(3)) 'Long
  loc_1112B55: var_BC = &H640
  loc_1112B61: LateIdCallSt
  loc_1112B69: var_98 = 0
  loc_1112B75: var_BC = CVar(CLng(4)) 'Long
  loc_1112B7A: var_DC = "Bill Amount"
  loc_1112B83: LateIdCallSt
  loc_1112B8E: var_98 = CVar(CLng(4)) 'Long
  loc_1112B99: var_BC = CVar(CInt(7)) 'Integer
  loc_1112BA0: LateIdCallSt
  loc_1112BAB: var_98 = CVar(CLng(4)) 'Long
  loc_1112BB6: var_BC = CVar(CInt(7)) 'Integer
  loc_1112BBD: LateIdCallSt
  loc_1112BC8: var_98 = CVar(CLng(4)) 'Long
  loc_1112BCD: var_BC = &H640
  loc_1112BD9: LateIdCallSt
  loc_1112BE1: var_98 = 0
  loc_1112BED: var_BC = CVar(CLng(5)) 'Long
  loc_1112BF2: var_DC = "PayType"
  loc_1112BFB: LateIdCallSt
  loc_1112C06: var_98 = CVar(CLng(5)) 'Long
  loc_1112C11: var_BC = CVar(CInt(1)) 'Integer
  loc_1112C18: LateIdCallSt
  loc_1112C23: var_98 = CVar(CLng(5)) 'Long
  loc_1112C2E: var_BC = CVar(CInt(1)) 'Integer
  loc_1112C35: LateIdCallSt
  loc_1112C40: var_98 = CVar(CLng(5)) 'Long
  loc_1112C45: var_BC = 0
  loc_1112C51: LateIdCallSt
  loc_1112C59: var_98 = vbNullString
  loc_1112C63: Set var_AC = Me.GridSel
  loc_1112C87: Me.GridSel.FixedRows = 1
  loc_1112C91: Set var_88 = Nothing 
  loc_1112CA5: ReDim Preserve global_104(0 To 0)
  loc_1112CBC: global_104(0) = 0
  loc_1112CD0: Me.GridSel.Height = CVar(CDbl(6000))
  loc_1112CEB: Me.GridSel.Width = CVar(CDbl(6500))
  loc_1112CF3: Exit Sub
End Sub

Public Sub Proc_332_43_125D0A0(arg_C) '125D0A0
  'Data Table: 4BF16C
  Dim var_8C As String
  Dim unk_4BF186 As Connection15
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_140 As Variant
  Dim var_12C As Variant
  Dim var_118 As Variant
  Dim var_1E4 As Variant
  Dim var_204 As Variant
  Dim var_180 As Integer
  Dim var_128 As Variant
  Dim var_1A8 As Recordset15
  Dim var_1AC As Fields15
  Dim var_1B0 As Field20
  Dim var_224 As Variant
  loc_125CB84: var_8C = "Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And IsNull(P.PayType,'') In('Company') And P.CompCode='" & arg_C
  loc_125CBA2: unk_4BF186.Execute var_8C & "' And IsNull(P.RefDocId,'')='' And S.Logsite_Code='" & MemVar_1F92078 & "' Order by S.Vno", var_B8, -1
  loc_125CBB3: Set global_108 = var_BC
  loc_125CBE3: If (Me.RecordCount = 0) Then
  loc_125CBF9:   Me.GridSel.Rows = 2
  loc_125CC01:   Exit Sub
  loc_125CC02: End If
  loc_125CC15: Me.GridSel.Row = 1
  loc_125CC1D: ' Referenced from: 125D081
  loc_125CC2F: If Not(Me.EOF) Then
  loc_125CC88:   unk_4BF186.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_128, -1
  loc_125CC93:   Set var_88 = var_12C
  loc_125CCC1:   If (var_88.RecordCount = 1) Then
  loc_125CCC8:     Set var_130 = Me.GridSel
  loc_125CCCB:     var_A8 = vbNullString
  loc_125CCEF:     var_A8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125CCF7:     var_F8 = CVar(CLng(0)) 'Long
  loc_125CD05:     LateIdCallSt
  loc_125CD26:     var_D4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125CD2E:     var_118 = CVar(CLng(1)) 'Long
  loc_125CD5E:     var_108 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_125CD65:     LateIdCallSt
  loc_125CDC7:     var_108 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_130, var_108, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_125CDCE:     LateIdCallSt
  loc_125CE24:     var_F8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125CE2C:     var_140 = CVar(CLng(3)) 'Long
  loc_125CE49:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), var_130, "dd/mmm/yyyy", var_130, vbNullString)) 'String
  loc_125CE5F:     LateIdCallSt
  loc_125CEA6:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_E8, "dd/mmm/yyyy"))), 1, 1)
  loc_125CEBE:     var_F8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125CEF6:     LateIdCallSt
  loc_125CF3A:     Proc_6_39_E7C810(var_E8, CVar(var_88.Fields.Item("BillAmount")), var_130, CVar(CStr(Format(var_E8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_125CF7C:     var_1E4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_125CF84:     var_204 = CVar(CLng(5)) 'Long
  loc_125CF8F:     var_180 = 0
  loc_125CFB1:     var_F8 = " Then 'Cash' Else 'Non-Cash' End From Paycharge Where PayType='Cash' And DocId='"
  loc_125CFD4:     unk_4BF186.Execute CStr("Select Case When IsNull(Sum(AmtCr),0)=" & var_E8 & var_F8 & Me.Fields.Item(0).Value & "'"), var_1A4, -1
  loc_125CFDC:     var_1A8 = var_1A8.Fields
  loc_125CFE4:     var_180 = var_1AC.Item(var_1AC)
  loc_125CFEC:     var_1B0 = var_1B0.Value
  loc_125CFF5:     var_224 = CVar(CStr(var_1C0)) 'String
  loc_125CFFC:     LateIdCallSt
  loc_125D033:     Set var_130 = Nothing 
  loc_125D03C:     Set var_88 = Nothing
  loc_125D058:     var_A8 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_125D067:     Me.GridSel.Row = "BillAmount"
  loc_125D076:   End If
  loc_125D07C:   Me.MoveNext
  loc_125D081:   GoTo loc_125CC1D
  loc_125D084: End If
  loc_125D097: Me.GridSel.FixedRows = 1
  loc_125D09F: Exit Sub
End Sub
