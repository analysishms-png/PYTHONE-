VERSION 5.00
Begin VB.Form FrmStockTransfer
  Caption = "Stock Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7185
  ClientHeight = 7710
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin DataGrid DGItem
    Left = 2880
    Top = 5325
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGDepart
    Left = 4770
    Top = 4005
    Width = 4155
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
End

Attribute VB_Name = "FrmStockTransfer"

Private global_84 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'F851D4
  'Data Table: 495098
  Dim var_8C As Label
  Dim var_D4 As Variant
  loc_F8507C: On Error Goto loc_F851CD
  loc_F850A2: Call Proc_147_46_EF0980(Proc_5_1_100CB50("ADD", Me))
  loc_F850AD: Call Proc_147_44_F28D0C(global_56)
  loc_F850BF: (vbNullString).Caption = 
  loc_F850D4: Set var_8C = (1)
  loc_F850E6: Set var_8C = (tmpImage.DispID_4)
  loc_F850FF: Set var_D4 = (CVar(CStr(CLng(tmpImage.DispID_4))))
  loc_F85128: Set var_8C = var_D4.Name(1)
  loc_F85149: Set var_8C = var_D4(CInt(2))
  loc_F8514F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CStr(MemVar_1F920EC))
  loc_F85157: var_D4.Text = tmpImage.DispID_6
  loc_F85171: Set var_8C = var_D4(CInt(3))
  loc_F85177: Call 0.Method_TopCtrl1_UnknownEvent_110 ()
  loc_F8517F: var_D4.SetFocus
  loc_F8519E: Set var_8C = var_D4(CInt(2))
  loc_F851A4: Call 0.Method_TopCtrl1_UnknownEvent_110 (CStr(MemVar_1F920EC))
  loc_F851AC: var_D4.Text = 
  loc_F851C7: Call Txt_Validate(CInt(2))
  loc_F851CC: Exit Sub
  loc_F851CD: ' Referenced from: F8507C
  loc_F851CD: Proc_6_60_E62BC4(&HFF)
  loc_F851D2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 '10D4D58
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_8C As String
  Dim var_DC As Variant
  Dim var_90 As Label
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_124 As Variant
  Dim var_12C As TextBox
  Dim var_154 As Variant
  Dim var_15C As TextBox
  Dim var_180 As Variant
  loc_10D4A9C: On Error Goto loc_10D4D50
  loc_10D4AAD: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_10D4AB0:   Exit Sub
  loc_10D4AB1: End If
  loc_10D4AC8: If (Me.RecordCount > 0) Then
  loc_10D4AE0:   var_8C = "EDIT"
  loc_10D4AEE:   Call Proc_147_46_EF0980(Proc_5_1_100CB50(var_8C, Me))
  loc_10D4B06:   Set var_90 = var_98(CInt(1))
  loc_10D4B0C:   Call 0.Method_TopCtrl1_UnknownEvent_120 (0)
  loc_10D4B14:   var_98.Enabled = global_56
  loc_10D4B24:   Set var_90 = ()
  loc_10D4B3F:   If (tmpImage.DispID_6803000E = "Add") Then
  loc_10D4B4D:     Set var_90 = var_98(CInt(2))
  loc_10D4B53:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_10D4B5B:     var_98.SetFocus
  loc_10D4B67:   End If
  loc_10D4B6B:   Set var_90 = ()
  loc_10D4B86:   If (tmpImage.DispID_6803000E = "Edit") Then
  loc_10D4B94:     Set var_90 = var_98(CInt(3))
  loc_10D4B9A:     Call 0.Method_TopCtrl1_UnknownEvent_120 ()
  loc_10D4BA2:     var_98.SetFocus
  loc_10D4BAE:   End If
  loc_10D4BBC:   Set var_90 = var_98(CInt(0))
  loc_10D4BC2:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_8C)
  loc_10D4BCA:    = var_98.Text
  loc_10D4BD5:   global_76 = var_8C
  loc_10D4C0E:   var_B8 = Space((5 - Len("KSISS")))
  loc_10D4C16:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & "KSISS") + var_B8)
  loc_10D4C27:    = var_DC(var_E0).Caption
  loc_10D4C2F:   var_F0 = CVar(var_E0) 'String
  loc_10D4C32:   var_100 = ( + var_F0)
  loc_10D4C48:   var_100 = 5(var_104).Caption
  loc_10D4C55:   var_114 = Space(( - Len(var_104)))
  loc_10D4C5D:   var_124 = ( + var_114)
  loc_10D4C74:   Set var_128 = var_12C(CInt(1))
  loc_10D4C7A:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_130, 8)
  loc_10D4C82:   var_124 = var_12C.Text
  loc_10D4C99:   var_144 = Space(( - Len(CStr(Val(var_130)))))
  loc_10D4CA1:   var_154 = ( + var_144)
  loc_10D4CB3:   Set var_158 = var_15C(CInt(1))
  loc_10D4CB9:   Call 0.Method_TopCtrl1_UnknownEvent_120 (var_160)
  loc_10D4CC1:   var_154 = var_15C.Text
  loc_10D4CD3:   var_180 = ( + CVar(CStr(Val(var_160))))
  loc_10D4CDE:   global_80 = CStr(var_180)
  loc_10D4D1E: Else
  loc_10D4D3F:   MsgBox("No Record To Edit.", &H40, "Information", var_DC, var_F0)
  loc_10D4D4F: End If
  loc_10D4D4F: Exit Sub
  loc_10D4D50: ' Referenced from: 10D4A9C
  loc_10D4D50: Proc_6_60_E62BC4()
  loc_10D4D55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 '122DE60
  'Data Table: 495098
  Dim var_11C As String
  Dim var_F4 As Variant
  Dim var_124 As Label
  Dim var_114 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_160 As Variant
  Dim var_168 As TextBox
  Dim var_170 As String
  Dim var_190 As Variant
  Dim var_198 As TextBox
  Dim var_1BC As Variant
  Dim var_1C0 As String
  Dim unk_4950A9 As Connection15
  Dim Me As Recordset15
  Dim var_128 As String
  Dim var_B4 As Variant
  loc_122D9A0: On Error Goto loc_122DE12
  loc_122D9B1: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_122D9B4:   Exit Sub
  loc_122D9B5: End If
  loc_122D9EC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_122D9FF:   var_11C = Proc_6_45_EAD428(MemVar_1F92070, 2)
  loc_122DA1A:   var_B4 = Space((5 - Len("KSISS")))
  loc_122DA22:   var_F4 = (CVar(MemVar_1F9206C & var_11C & "KSISS") + "Are You Sure To Delete This ? ")
  loc_122DA33:    = var_F4(var_128).Caption
  loc_122DA3B:   var_114 = CVar(var_128) 'String
  loc_122DA3E:   var_138 = ( + var_114)
  loc_122DA4E:   Set var_13C = 5(var_140)
  loc_122DA54:   var_138 = var_13C.Caption
  loc_122DA61:   var_150 = Space(( - Len(var_140)))
  loc_122DA69:   var_160 = ( + var_150)
  loc_122DA86:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_16C, 8)
  loc_122DA8E:   var_160 = var_168.Text
  loc_122DAA5:   var_180 = Space(( - Len(CStr(Val(var_16C)))))
  loc_122DAAD:   var_190 = ( + var_180)
  loc_122DABF:   Set var_194 = var_198(CInt(1))
  loc_122DAC5:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_19C)
  loc_122DACD:   var_190 = var_198.Text
  loc_122DADF:   var_1BC = ( + CVar(CStr(Val(var_19C))))
  loc_122DAEA:   global_80 = CStr(var_1BC)
  loc_122DB30:   unk_4950A9.BeginTrans var_1C4
  loc_122DB3E:   var_B4 = Me.Bookmark
  loc_122DB46:   var_94 = var_B4 'Variant
  loc_122DB68:   Set var_124 = var_13C(CInt(0))
  loc_122DB6E:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_11C, "Delete From Stock Where DocID='", var_B4)
  loc_122DB76:   -1 = var_13C.Text
  loc_122DB86:   var_128 = var_168(CInt(1)) & var_11C & "'"
  loc_122DB8F:   unk_4950A9.Execute var_128, , 
  loc_122DBB7:   Set var_124 = var_13C(CInt(0))
  loc_122DBBD:   Call 0.Method_TopCtrl1_UnknownEvent_130 (var_128)
  loc_122DBC5:    = var_13C.Text
  loc_122DBCF:   var_1E4 = 0
  loc_122DBE2:   var_1DC = 0
  loc_122DBED:   var_1D8 = 0
  loc_122DC00:   var_1D0 = 0
  loc_122DC0B:   var_1C0 = 0
  loc_122DC1E:   var_19C = 0
  loc_122DC66:   Proc_154_5_10E33A4(MemVar_1F92044, "Stock", "DocId", &HC8, var_128, 0, 0, 0)
  loc_122DCB2:   unk_4950A9.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_B4, -1
  loc_122DCC9:   var_1D8 = 0
  loc_122DCDC:   var_1D0 = 0
  loc_122DCE7:   var_1C0 = 0
  loc_122DCFA:   var_19C = 0
  loc_122DD05:   var_170 = 0
  loc_122DD18:   var_16C = 0
  loc_122DD56:   var_11C = "Stock"
  loc_122DD5F:   Proc_154_5_10E33A4(MemVar_1F92044, var_11C, "DocId", &HC8, global_80, 0, 0, 0)
  loc_122DD81:   unk_4950A9.CommitTrans
  loc_122DD91:   Me.Requery -1
  loc_122DDB1:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_122DDBE:     Me.Bookmark = var_94
  loc_122DDC6:   Else
  loc_122DDDA:     If (Me.EOF = 0) Then
  loc_122DDE3:       Me.MoveLast
  loc_122DDE8:     End If
  loc_122DDE8:   End If
  loc_122DDE8:   Call Proc_147_45_13F27B4(var_16C, 0, var_170, var_19C)
  loc_122DE09:   Proc_5_0_110649C(&HFF, Me, global_56, 0)
  loc_122DE11: End If
  loc_122DE11: Exit Sub
  loc_122DE12: ' Referenced from: 122D9A0
  loc_122DE18: unk_4950A9.RollbackTrans
  loc_122DE25: Set var_124 = Err()
  loc_122DE2B: Call 0.Method_arg_2C (var_11C, 0, var_1C0)
  loc_122DE4C: MsgBox(CVar(var_11C), &H10, " Deletion Message", var_F4, var_114)
  loc_122DE5F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E185B4
  'Data Table: 495098
  loc_E185A9: Me.Global.Unload Me
  loc_E185B1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E36F18
  'Data Table: 495098
  loc_E36F08: Proc_5_0_110649C(&HFF, Me)
  loc_E36F10: Call Proc_147_45_13F27B4(global_56)
  loc_E36F15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E37218
  'Data Table: 495098
  loc_E37208: Proc_5_0_110649C(&HFF, Me)
  loc_E37210: Call Proc_147_45_13F27B4(global_56)
  loc_E37215: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E371B8
  'Data Table: 495098
  loc_E371A8: Proc_5_0_110649C(&HFF, Me)
  loc_E371B0: Call Proc_147_45_13F27B4(global_56)
  loc_E371B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E370F8
  'Data Table: 495098
  loc_E370E8: Proc_5_0_110649C(&HFF, Me)
  loc_E370F0: Call Proc_147_45_13F27B4(global_56)
  loc_E370F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '1603DAC
  'Data Table: 495098
  Dim var_96 As Integer
  Dim var_B8 As Variant
  Dim var_A8 As String
  Dim var_108 As Variant
  Dim var_8E As Integer
  Dim unk_4950A9 As Connection15
  Dim var_754 As Double
  Dim var_A0 As Variant
  Dim var_1A4 As Variant
  Dim var_75C As Double
  Dim var_1BC As TextBox
  Dim var_764 As Double
  Dim var_23C As TextBox
  Dim var_250 As TextBox
  Dim var_76C As Double
  Dim var_774 As Double
  Dim var_77C As Double
  Dim var_784 As Double
  Dim var_78C As Double
  Dim var_184 As String
  Dim var_1B4 As String
  Dim var_1D8 As String
  Dim var_258 As String
  Dim var_2B0 As String
  Dim var_3D8 As String
  Dim var_494 As String
  Dim var_4F4 As Variant
  Dim var_630 As Variant
  Dim var_650 As Variant
  Dim var_724 As Variant
  Dim var_4B4 As Variant
  Dim var_6A4 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_1B8 As Fields15
  Dim var_188 As String
  Dim var_3CC As Variant
  Dim var_8C As Recordset15
  Dim Me As Recordset15
  loc_1602AC8: On Error Goto loc_1603D8F
  loc_1602ADB: Set var_9C = var_A0(CInt(1))
  loc_1602AE1: Call 0.Method_TopCtrl1_UnknownEvent_190 (0)
  loc_1602AE9: var_A8 = "Voucher Number"
  loc_1602B0A: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_1602B0D:   Exit Sub
  loc_1602B0E: End If
  loc_1602B19: Set var_9C = var_A0(CInt(2))
  loc_1602B1F: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1602B27: var_A8 = "Voucher Date"
  loc_1602B48: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_1602B4B:   Exit Sub
  loc_1602B4C: End If
  loc_1602B57: Set var_9C = var_A0(CInt(3))
  loc_1602B5D: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1602B65: var_A8 = "From Location"
  loc_1602B86: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_1602B89:   Exit Sub
  loc_1602B8A: End If
  loc_1602B95: Set var_9C = var_A0(CInt(4))
  loc_1602B9B: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8)
  loc_1602BA3: var_A8 = "To Location"
  loc_1602BC4: If (Proc_6_27_EA565C(var_A0) = 0) Then
  loc_1602BC7:   Exit Sub
  loc_1602BC8: End If
  loc_1602BDD: Set var_9C = 1(CVar(CLng(1)))
  loc_1602BEE: var_A8 = CStr(tmpImage.DispID_41)
  loc_1602BFF: If (var_A8 = vbNullString) Then
  loc_1602C08:   Call 0.Method_arg_50 (var_A8)
  loc_1602C16:   var_108 = CVar(var_A8) 'String
  loc_1602C23:   var_F8 = "Please Fill Item Detail"
  loc_1602C29:   MsgBox(var_F8, &H40, var_108, var_118, var_128)
  loc_1602C46:   Set var_9C = var_A8(1)
  loc_1602C58:   Set var_9C = (tmpImage.DispID_A)
  loc_1602C69:   Exit Sub
  loc_1602C6A: End If
  loc_1602C78: unk_4950A9.BeginTrans var_12C
  loc_1602CA4: unk_4950A9.Execute "Delete From Stock Where DocID='" & global_76 & "'", var_F8, -1
  loc_1602CDD: unk_4950A9.Execute "Delete From Stock Where DocID='" & global_80 & "'", var_F8, -1
  loc_1602CF8: Set var_9C = 1(var_98)
  loc_1602D14: For var_134 = var_9C To CInt((CLng(tmpImage.DispID_4) - 1)): var_9C = var_134 'Integer
  loc_1602D2F:   Set var_9C = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1602D62:   Set var_A0 = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1602D91:   If ((CDbl(Val(CStr(tmpImage.DispID_41))) <> CDbl(0)) And (CStr(tmpImage.DispID_41) <> vbNullString)) Then
  loc_1602DA9:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1602DC2:     var_754 = Val(CStr(tmpImage.DispID_41))
  loc_1602DD2:     var_9C = var_754(var_188).Caption
  loc_1602DE5:     Set var_A4 = var_1A4(CInt(1))
  loc_1602DEB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A8, &HFF)
  loc_1602DF3:     tmpImage.DispID_8001 = var_1A4.Text
  loc_1602E00:     var_75C = Val(var_1A8)
  loc_1602E11:     Set var_1B8 = var_1BC(CInt(2))
  loc_1602E17:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1C0)
  loc_1602E39:     Set var_1CC = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_1602E60:     Set var_224 = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1602E79:     var_764 = Val(CStr(tmpImage.DispID_41))
  loc_1602E8A:     Set var_238 = var_23C(CInt(4))
  loc_1602E90:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_240, var_764)
  loc_1602E98:     tmpImage.DispID_41 = var_23C.Tag
  loc_1602EAB:     Set var_24C = var_250(CInt(4))
  loc_1602EB1:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_254)
  loc_1602EB9:      = var_250.Tag
  loc_1602ED3:     Set var_2A0 = CVar(CLng(var_98))(CVar(CLng(7)))
  loc_1602F04:     Set var_2F4 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1602F1D:     var_774 = Val(CStr(tmpImage.DispID_41))
  loc_1602F35:     Set var_358 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1602F4E:     var_77C = Val(CStr(tmpImage.DispID_41))
  loc_1602F66:     Set var_3BC = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_1602F8D:     Set var_41C = CVar(CLng(var_98))(CVar(CLng(8)))
  loc_1602FA6:     var_784 = Val(CStr(tmpImage.DispID_41))
  loc_1602FBE:     Set var_480 = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_1602FD3:     Proc_6_104_ED5D18(var_4B4, tmpImage.DispID_41, var_784, tmpImage.DispID_41)
  loc_1602FDC:     Set var_4F8 = var_774(var_77C)
  loc_1603032:     Set var_5FC = CVar(CLng(var_98))(CVar(CLng(5)))
  loc_160304B:     var_78C = Val(CStr(tmpImage.DispID_41))
  loc_1603063:     Set var_694 = CVar(CLng(var_98))(CVar(CLng(6)))
  loc_1603089:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,COntraDocId,ContraSno,DepartCode,GodownCode,Rate,RecdQty,AccQty,RecdUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyRec,Unit,LogSite_Code)" & " VALUES ('"
  loc_16030E3:     var_1B4 = var_A8 & global_76 & "'," & CStr(var_754) & ",'" & var_188 & "','" & MemVar_1F92070 & "'," & "'KSREC'" & "," & CStr(var_1BC.Text)
  loc_160313C:     var_258 = var_1B4 & ",'" & var_1C0 & "','" & CStr(var_108) & "','" & global_80 & "'," & CStr(var_764) & ",'" & var_240 & "','"
  loc_160318E:     var_3D8 = var_258 & var_254 & "'," & CStr(Val(CStr(tmpImage.DispID_41))) & "," & CStr(var_774) & "," & CStr(var_77C) & ",'" & CStr(var_3CC)
  loc_16031D7:     var_4F4 = CVar(var_3D8 & "'," & CStr(var_784) & ",'" & CStr(var_490) & "','" & MemVar_1F920C8 & "',") & var_4B4 & ",'" 
  loc_16031FB:     var_650 = var_4F4 & IIf((var_518 = "Add"), "A", "E") & "'," & CVar(var_78C) & ",'" 
  loc_1603222:     var_724 = var_650 & CVar(CStr(var_6A4)) & "','" & CVar(MemVar_1F92078) & "')" 
  loc_1603230:     unk_4950A9.Execute CStr(var_724), var_748, -1
  loc_1603335:     Set var_9C = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_160334E:     var_754 = Val(CStr(tmpImage.DispID_41))
  loc_1603358:     Set var_A0 = var_754(var_188)
  loc_160335E:     var_74C = var_A0.Caption
  loc_1603371:     Set var_A4 = var_1A4(CInt(1))
  loc_1603377:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1A8, tmpImage.DispID_41, var_78C)
  loc_160337F:     tmpImage.DispID_6803000E = var_1A4.Text
  loc_160338C:     var_75C = Val(var_1A8)
  loc_160339D:     Set var_1B8 = var_1BC(CInt(2))
  loc_16033A3:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_1C0, var_75C)
  loc_16033AB:     var_76C = var_1BC.Text
  loc_16033C5:     Set var_1CC = CVar(CLng(var_98))(CVar(CLng(9)))
  loc_16033EC:     Set var_224 = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1603405:     var_764 = Val(CStr(tmpImage.DispID_41))
  loc_1603416:     Set var_238 = var_23C(CInt(3))
  loc_160341C:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_240, var_764)
  loc_1603424:     tmpImage.DispID_41 = var_23C.Tag
  loc_1603437:     Set var_24C = var_250(CInt(3))
  loc_160343D:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_254)
  loc_1603445:      = var_250.Tag
  loc_160345F:     Set var_2A0 = CVar(CLng(var_98))(CVar(CLng(7)))
  loc_1603490:     Set var_2F4 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_16034A9:     var_774 = Val(CStr(tmpImage.DispID_41))
  loc_16034C1:     Set var_358 = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_16034E8:     Set var_3BC = CVar(CLng(var_98))(CVar(CLng(8)))
  loc_1603501:     var_77C = Val(CStr(tmpImage.DispID_41))
  loc_1603519:     Set var_41C = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_160352E:     Proc_6_104_ED5D18(var_490, tmpImage.DispID_41, var_77C)
  loc_1603537:     Set var_480 = var_774(tmpImage.DispID_41)
  loc_160358D:     Set var_4F8 = CVar(CLng(var_98))(CVar(CLng(5)))
  loc_16035BE:     Set var_5FC = CVar(CLng(var_98))(CVar(CLng(6)))
  loc_16035E4:     var_A8 = "Insert Into STOCK(DocID,Sno,VPrefix,Site_Code,VType,VNo,VDate,Item,ContraDocId,ContraSno,DepartCode,GodownCode,Rate,IssQty,IssueUnit,Amount,ConvRatio,U_Name,U_EntDt,U_AE,QtyIss,Unit,LogSite_Code) " & " VALUES ('"
  loc_1603601:     var_184 = var_A8 & global_80 & "'," & CStr(var_754)
  loc_160365E:     var_1D8 = var_184 & ",'" & var_188 & "','" & MemVar_1F92070 & "'," & "'KSISS'" & "," & CStr(var_75C) & ",'" & var_1C0 & "','" & CStr(var_108)
  loc_16036B1:     var_2B0 = var_1D8 & "','" & global_76 & "'," & CStr(var_764) & ",'" & var_240 & "','" & var_254 & "'," & CStr(Val(CStr(tmpImage.DispID_41)))
  loc_1603709:     var_494 = var_2B0 & "," & CStr(var_774) & ",'" & CStr(var_368) & "'," & CStr(var_77C) & ",'" & CStr(var_42C) & "','" & MemVar_1F920C8
  loc_1603743:     var_630 = CVar(var_494 & "',") & var_490 & ",'" & IIf((var_4F4 = "Add"), "A", "E") & "'," & CVar(Val(CStr(tmpImage.DispID_41))) & ",'" 
  loc_1603778:     unk_4950A9.Execute CStr(var_630 & CVar(CStr(var_650)) & "','" & CVar(MemVar_1F92078) & "')"), var_724, -1
  loc_160385E:     var_96 = &HFF
  loc_1603861:   End If
  loc_1603864: Next var_134 'Integer
  loc_160386F: If (var_96 = 0) Then
  loc_160388B:   MsgBox("Nil Details Can't Be Saved", &H40, var_108, var_118, var_128)
  loc_160389B:   Exit Sub
  loc_160389C: End If
  loc_16038A0: Set var_9C = ()
  loc_16038BB: If (tmpImage.DispID_6803000E = "Add") Then
  loc_16038C2:   Set var_88 = New 
  loc_16038CD:   Me.Recordset15.CursorLocation = 3
  loc_16038E0:   Set var_9C = var_A0(CInt(2))
  loc_16038E6:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_184)
  loc_16038EE:    = var_A0.Text
  loc_16038F6:   var_F8 = CVar(var_184) 'String
  loc_16038FC:   Proc_6_7_F25D88(var_108)
  loc_160391F:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1603945:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_68 & "' And VP.Date_From<=") 'String
  loc_160395C:   var_88.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1603996:   If (var_88.RecordCount > 0) Then
  loc_16039A7:     Set var_9C = var_A0(CInt(1))
  loc_16039AD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, 3)
  loc_16039B5:     -1 = var_A0.Text
  loc_1603A12:     Proc_6_7_F25D88(var_368, CVar(var_88.Fields.Item("Date_From")))
  loc_1603A45:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8)) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1603A53:     var_108 = CVar(var_184 & MemVar_1F92078 & "') and V_Type='") 'String
  loc_1603A77:     unk_4950A9.Execute CStr(var_108 & var_88.Fields.Item("V_Type").Value & "' and Date_From=" & var_368), var_42C, -1
  loc_1603AB1:   End If
  loc_1603AB5:   Set var_8C = New 
  loc_1603AC0:   var_8C.CursorLocation = 3
  loc_1603AD3:   Set var_9C = var_A0(CInt(2))
  loc_1603AD9:   Call 0.Method_TopCtrl1_UnknownEvent_190 (var_184, var_1CC)
  loc_1603AE1:   var_754 = var_A0.Text
  loc_1603AEF:   Proc_6_7_F25D88(var_108, CVar(var_184))
  loc_1603B12:   var_A8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1603B38:   var_118 = CVar(var_A8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_72 & "' And VP.Date_From<=") 'String
  loc_1603B4F:   var_8C.Open var_118 & var_108 & " Order By VP.Date_From DESC", CVar(MemVar_1F92044), 2
  loc_1603B89:   If (var_8C.RecordCount > 0) Then
  loc_1603B9A:     Set var_9C = var_A0(CInt(1))
  loc_1603BA0:     Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, 3)
  loc_1603BA8:     -1 = var_A0.Text
  loc_1603BBE:     var_B8 = "V_Type"
  loc_1603BDA:     var_F8 = var_8C.Fields.Item(var_B8).Value
  loc_1603C05:     Proc_6_7_F25D88(var_368, CVar(var_8C.Fields.Item("Date_From")))
  loc_1603C38:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_A8)) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1603C6A:     unk_4950A9.Execute CStr(CVar(var_184 & MemVar_1F92078 & "') and V_Type='") & var_F8 & "' and Date_From=" & var_368), var_42C, -1
  loc_1603CA4:   End If
  loc_1603CA4: End If
  loc_1603CAA: unk_4950A9.CommitTrans
  loc_1603CB1: var_8E = 0
  loc_1603CC2: Set var_9C = var_A0(CInt(0))
  loc_1603CC8: Call 0.Method_TopCtrl1_UnknownEvent_190 (var_A8, var_8E, var_1CC)
  loc_1603CD0: var_754 = var_A0.Text
  loc_1603CED: Me.Requery -1
  loc_1603D17: Me.Find "SearchCode ='" & "SearchCode ='" & var_A8 & "'", 0, 1
  loc_1603D23: Call Proc_147_45_13F27B4(var_B8)
  loc_1603D2C: Set var_9C = (var_F8)
  loc_1603D47: If (tmpImage.DispID_6803000E = "Add") Then
  loc_1603D4A:   Call TopCtrl1_UnknownEvent_11()
  loc_1603D4F:   Exit Sub
  loc_1603D50: End If
  loc_1603D73: Call Proc_147_46_EF0980(Proc_5_1_100CB50("INI", Me))
  loc_1603D83: Set var_88 = Nothing
  loc_1603D8B: Set var_8C = Nothing
  loc_1603D8E: Exit Sub
  loc_1603D8F: ' Referenced from: 1602AC8
  loc_1603D95: If (var_8E = &HFF) Then
  loc_1603D9E:   unk_4950A9.RollbackTrans
  loc_1603DA3: End If
  loc_1603DA3: Proc_6_60_E62BC4(global_56)
  loc_1603DA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EBE3EC
  'Data Table: 495098
  Dim arg_2008 As Variant
  loc_EBE358: On Error Goto loc_EBE3E3
  loc_EBE392: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EBE3A1:   Set var_10C = Me
  loc_EBE3B8:   Call Proc_147_46_EF0980(Proc_5_1_100CB50("INI", var_10C))
  loc_EBE3C3:   Call Proc_147_45_13F27B4(global_56)
  loc_EBE3CB: Else
  loc_EBE3D1:   Call 0.Method_arg_1E8 (var_10C)
  loc_EBE3D9:   Call var_10C.SetFocus
  loc_EBE3E2: End If
  loc_EBE3E2: Exit Sub
  loc_EBE3E3: ' Referenced from: EBE358
  loc_EBE3E3: Proc_6_60_E62BC4()
  loc_EBE3E8: Exit Sub
  loc_EBE3E9: Exit Sub
  loc_EBE3EA: arg_2008 = CVar() 'Currency
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB2740
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB26B0: On Error Goto loc_EB273A
  loc_EB26CA: If (Me.RecordCount <= 0) Then
  loc_EB26D3:   var_B8 = "Information"
  loc_EB26EE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB26FE:   Exit Sub
  loc_EB26FF: End If
  loc_EB2702: MemVar_1F920E4 = "Select Distinct S.Docid,CONVERT(VARCHAR(8),S.Vno) as VNo,S.Vdate,S.VPrefix,D.NAME AS ToLocation From (Stock S left Join GodownMast D on S.GodownCode=D.Code) Left Join ItemMast I ON S.Item=I.Code And I.ItemType='Store' WHERE VTYPE='KSREC' AND I.Type IN ('Consumables','Lenin')"
  loc_EB270F: Proc_6_126_F1BCC0("1500,1500,1500,4500")
  loc_EB271D: MemVar_1F92120 = Me
  loc_EB2734: Call 0.Method_arg_2B0 (1)
  loc_EB2739: Exit Sub
  loc_EB273A: ' Referenced from: EB26B0
  loc_EB273A: Proc_6_60_E62BC4(var_B8)
  loc_EB273F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1C '1283FD8
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_C4 As String
  Dim var_C8 As String
  Dim var_F8 As Variant
  Dim var_110 As Variant
  Dim var_150 As Variant
  Dim var_19C As String
  Dim var_1BC As Variant
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_100 As Variant
  Dim unk_4950A9 As Connection15
  Dim var_A0 As Recordset15
  Dim var_120 As Variant
  Dim var_BE As Integer
  Dim var_178 As String
  Dim var_B0 As Recordset15
  Dim var_FC As Fields15
  Dim var_284 As String
  loc_1283AA4: On Error Goto loc_1283FCF
  loc_1283ABE: If (Me.RecordCount <= 0) Then
  loc_1283AC1:   Exit Sub
  loc_1283AC2: End If
  loc_1283ACD: Set var_FC = var_100(CInt(0))
  loc_1283AD3: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_1283AE3: Set var_154 = var_158(CInt(0))
  loc_1283AE9: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_1283AF9: Set var_1C0 = var_1C4(CInt(0))
  loc_1283AFF: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_1283B0F: Set var_21C = var_220(CInt(0))
  loc_1283B15: Call 0.Method_TopCtrl1_UnknownEvent_1C0 ()
  loc_1283B4B: var_D8 = Space((5 - Len(global_72)))
  loc_1283B53: var_F8 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & global_72) + var_D8)
  loc_1283B64: var_110 = CVar(var_100) 'Address
  loc_1283B73: var_150 = (var_F8 + Mid(var_110, 9, 5))
  loc_1283BA2: var_1AC = Space((5 - Len(CStr(Mid(CVar(var_158), 9, 5)))))
  loc_1283BAA: var_1BC = (var_150 + var_1AC)
  loc_1283BDF: var_208 = Space((8 - Len(CStr(Trim(Right(CVar(var_1C4), 8))))))
  loc_1283BE7: var_218 = (var_1BC + var_208)
  loc_1283C12: var_270 = (var_218 + CVar(CStr(Trim(Right(CVar(var_220), 8)))))
  loc_1283C73: var_C8 = "Select S.Docid,S.VNo,S.VDate,S.QtyIss as Qty,S.Unit,S.Rate,S.Amount,S.GodownCode," & " I.Name as ItemName,G.Name as GodName" & " From ((Stock as S Left Join ItemMast as I on S.Item=I.Code And I.ItemType='Store')"
  loc_1283C8F: var_88 = var_C8 & " Left Join GodownMast as G on S.GodownCode=G.Code)" & " Where S.DocID='" & CStr(var_270) & "'"
  loc_1283CA6: var_C4 = "Select S.GodownCode,G.Name as GodName" & " From Stock as S Left Join GodownMast as G on S.GodownCode=G.Code"
  loc_1283CAD: var_19C = var_C4 & " Where S.DocID='"
  loc_1283CBE: Set var_FC = var_100(CInt(0))
  loc_1283CC4: Call 0.Method_TopCtrl1_UnknownEvent_1C0 (var_C8)
  loc_1283CCC: var_19C = var_100.Text
  loc_1283D07: unk_4950A9.Execute var_C8 & "'", var_D8, -1
  loc_1283D12: Set var_B0 = var_FC
  loc_1283D23: If (var_88 = vbNullString) Then
  loc_1283D26:   Exit Sub
  loc_1283D27: End If
  loc_1283D3D: unk_4950A9.Execute var_88, var_D8, -1
  loc_1283D48: Set var_A0 = var_FC
  loc_1283D57: var_BC = var_A0.RecordCount
  loc_1283D65: If (var_BC <= 0) Then
  loc_1283D6E:   Call 0.Method_arg_50 (var_C4, var_FC)
  loc_1283D8F:   MsgBox("** No Records Found to Print **", &H40, CVar(var_C4), var_F8, var_110)
  loc_1283D9F:   Exit Sub
  loc_1283DA0: End If
  loc_1283DB6: Set var_FC = var_A0 
  loc_1283DC2: var_BE = CreateFieldDefFile(var_FC, MemVar_1F920B4 & "\StockTransfer.ttx")
  loc_1283DCC: Set var_A0 = var_FC
  loc_1283DD2: var_120 = CVar(var_BE) 'Integer
  loc_1283DD5: var_9C = var_120 'Variant
  loc_1283DF1: var_C4 = MemVar_1F920B4 & "\StockTransfer.RPT"
  loc_1283DFA: Call 0.Method_arg_1C (var_C4, var_120, var_FC)
  loc_1283E05: MemVar_1F921E4 = var_FC
  loc_1283E20: Call 0.Method_arg_90 (var_FC, var_BC, var_AA, 1)
  loc_1283E28: Call 0.Method_arg_24 (var_BE, &HFF)
  loc_1283E34: For var_288 =  To CInt(var_BC): var_FC = var_288 'Integer
  loc_1283E4D:   Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_1283E55:   Call 0.Method_arg_20 (var_100)
  loc_1283E5D:   Call 0.Method_arg_30 (var_C4)
  loc_1283E65:   var_28C = var_C4
  loc_1283E77:   If (var_28C = "Title") Then
  loc_1283E8D:     Call 0.Method_arg_90 (var_FC, CLng(var_AA))
  loc_1283E95:     Call 0.Method_arg_20 (var_100)
  loc_1283E9D:     Call 0.Method_arg_38 ("'Stock Transfer'")
  loc_1283EAC:   Else
  loc_1283EB4:     If (var_28C = "ToDepartment") Then
  loc_1283EB7:       var_178 = "'"
  loc_1283ECE:       var_FC = var_B0.Fields
  loc_1283EEA:       var_284 = "'"
  loc_1283EF3:       var_C4 = CStr(var_178 & var_FC.Item("GodName").Value & var_284)
  loc_1283F07:       Call 0.Method_arg_90 (var_154, CLng(var_AA))
  loc_1283F0F:       Call 0.Method_arg_20 (var_158)
  loc_1283F17:       Call 0.Method_arg_38 (var_C4)
  loc_1283F33:     End If
  loc_1283F33:   End If
  loc_1283F36: Next var_288 'Integer
  loc_1283F54: Call 0.Method_arg_64 (var_FC, CVar(var_A0))
  loc_1283F5C: Call 0.Method_arg_2C (var_178)
  loc_1283F6A: Call 0.Method_arg_150 (var_284)
  loc_1283F75: Call 0.Method_arg_50 (var_C4)
  loc_1283F7F: Set var_100 = Nothing
  loc_1283F99: Set var_FC = MemVar_1F921E4 
  loc_1283FA5: Proc_6_99_1483714(var_FC, 0, var_C4)
  loc_1283FB0: MemVar_1F921E4 = var_FC
  loc_1283FC3: Set var_A0 = Nothing
  loc_1283FCB: Set var_B0 = Nothing
  loc_1283FCE: Exit Sub
  loc_1283FCF: ' Referenced from: 1283AA4
  loc_1283FCF: Proc_6_60_E62BC4(&HFF)
  loc_1283FD4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E3EFE4
  'Data Table: 495098
  Dim Me As Recordset15
  loc_E3EFBB: Me.Requery -1
  loc_E3EFCB: Me.Requery -1
  loc_E3EFDB: Me.Requery -1
  loc_E3EFE0: Exit Sub
End Sub

Private Sub Form_Load() '1056A58
  'Data Table: 495098
  Dim var_8C As String
  Dim Me As Recordset15
  loc_10567D8: On Error Goto loc_1056A4F
  loc_10567F7: Me.Recordset15.CursorLocation = 3
  loc_105681A: var_8C = "Select I.Code,I.Name,I.Unit,I.IssueUnit,I.PurchRate as Rate,I.ConvRatio From ItemMast I Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_105682B: Me.Open CVar(var_8C & "' or LOGSITE_CODE='HO') and I.Type IN ('Consumables','Lenin') And I.ItemType='Store' Order by I.Name"), CVar(MemVar_1F92044), 3
  loc_105683F: CVarUnk
  loc_1056844: VerifyVarObj
  loc_105684A: Set var_88 = Me.DGItem
  loc_1056850: LateIdStAd
  loc_105687A: Me.DGItem.CursorLocation = 3
  loc_105689D: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_10568AE: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_10568C2: CVarUnk
  loc_10568C7: VerifyVarObj
  loc_10568CD: Set var_88 = Me.DGDepart
  loc_10568D3: LateIdStAd
  loc_10568FD: Me.DGDepart.CursorLocation = 3
  loc_1056920: var_8C = "Select G.Code,G.Name From GodownMast G INNER join Depart D on (D.Code=G.Code and D.LogSite_Code=G.LogSite_Code) Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_1056931: Me.Open CVar(var_8C & "' or G.LOGSITE_CODE='HO') and D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name"), CVar(MemVar_1F92044), 2
  loc_1056945: CVarUnk
  loc_105694A: VerifyVarObj
  loc_1056956: LateIdStAd
  loc_1056980: Me.Recordset15.CursorLocation = 3
  loc_10569A3: var_8C = "Select Distinct DocID as SearchCode,Stock.Site_Code,Stock.LogSite_Code From Stock INNER JOIN ItemMast ON Stock.item=ItemMast.code And ItemMast.ItemType='Store' WHERE Stock.LOGSITE_CODE='" & MemVar_1F92078
  loc_10569B4: Me.Open CVar(var_8C & "' and VTYPE='KSREC' AND ItemMast.Type IN ('Consumables','Lenin') order by  DocID"), CVar(MemVar_1F92044), 2
  loc_10569C5: global_68 = "KSREC"
  loc_10569CF: global_72 = "KSISS"
  loc_10569D3: Call Proc_147_50_11C255C(3, -1, 3(New), -1, 3(New), New)
  loc_10569F0: Proc_6_23_DFBA28(Me, 5445, 7310, 3, -1)
  loc_1056A04: Set var_88 = var_88(5800)
  loc_1056A11: DGDepart.DispID_6803000F.left = New
  loc_1056A3E: Call Proc_147_46_EF0980(Proc_5_1_100CB50("INI", Me, New), 1)
  loc_1056A49: Call Proc_147_45_13F27B4(-1)
  loc_1056A4E: Exit Sub
  loc_1056A4F: ' Referenced from: 10567D8
  loc_1056A4F: Proc_6_60_E62BC4()
  loc_1056A54: Exit Sub
  loc_1056A55: Get , ,  'get  bytes
  loc_1056A57: Exit Sub
End Sub

Private Sub Form_Resize() 'DFC998
  'Data Table: 495098
  loc_DFC994: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5FC38
  'Data Table: 495098
  loc_E5FBF7: Set global_56 = Nothing
  loc_E5FC09: Set global_52 = Nothing
  loc_E5FC1B: Set global_64 = Nothing
  loc_E5FC2D: Set global_60 = Nothing
  loc_E5FC34: Exit Sub
End Sub

Private Sub Form_Activate() 'E36DF4
  'Data Table: 495098
  loc_E36DD0: Set var_88 = ()
  loc_E36DEB: If (CLng(CInt(DGDepart.DispID_68030010)) = &H2D) Then
  loc_E36DEE:   Call TopCtrl1_UnknownEvent_1D()
  loc_E36DF3: End If
  loc_E36DF3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A46C
  'Data Table: 495098
  loc_E2A444: On Error Goto loc_E2A464
  loc_E2A45B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A463: Exit Sub
  loc_E2A464: ' Referenced from: E2A444
  loc_E2A464: Proc_6_60_E62BC4(Shift)
  loc_E2A469: Exit Sub
End Sub

Private Sub DGToDepart_UnknownEvent_9 'F423C4
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F422BB: (False).Visible = 
  loc_F422DA: If (Me.RecordCount > 0) Then
  loc_F42319:   Set var_B4 = var_B8(CInt(4))
  loc_F4231F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F42327:   var_B8.Tag = 
  loc_F4235A:   var_B0 = Me.Fields.Item("Name")
  loc_F42379:   Set var_B4 = var_B8(CInt(4))
  loc_F4237F:   Call 0.Method_DGToDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F42387:   var_B8.Text = 
  loc_F4239D: End If
  loc_F423A8: Set var_A8 = var_B0(CInt(4))
  loc_F423AE: Call 0.Method_DGToDepart_UnknownEvent_90 ()
  loc_F423B6: var_B0.SetFocus
  loc_F423C2: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F4BC64
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4BB5B: Me.DGDepart.Visible = False
  loc_F4BB7A: If (Me.RecordCount > 0) Then
  loc_F4BBB9:   Set var_B4 = var_B8(CInt(3))
  loc_F4BBBF:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Code").Value))
  loc_F4BBC7:   var_B8.Tag = 
  loc_F4BBFA:   var_B0 = Me.Fields.Item("Name")
  loc_F4BC19:   Set var_B4 = var_B8(CInt(3))
  loc_F4BC1F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F4BC27:   var_B8.Text = 
  loc_F4BC3D: End If
  loc_F4BC48: Set var_A8 = var_B0(CInt(3))
  loc_F4BC4E: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F4BC56: var_B0.SetFocus
  loc_F4BC62: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11EE374
  'Data Table: 495098
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_C4 As Variant
  Dim var_98 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_9C As String
  loc_11EDEF6: Set var_88 = var_8C(Index)
  loc_11EDEFC: Call 0.Method_Txt_GotFocus0 ()
  loc_11EDF0A: Proc_6_74_E226B0(var_8C)
  loc_11EDF16: Call Proc_147_47_EBE320()
  loc_11EDF29: If (Index = CInt(3)) Then
  loc_11EDF36:   Set global_52 = New 
  loc_11EDF48:   Me.Recordset15.CursorLocation = 3
  loc_11EDF5B:   Set var_88 = var_8C(CInt(4))
  loc_11EDF61:   Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EDF69:   var_92 = var_8C.Tag
  loc_11EDF8C:   var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11EDFA1:   var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EDFAB:   Me.Open var_B4, CVar(MemVar_1F92044), 2
  loc_11EDFCE:   CVarUnk
  loc_11EDFD3:   VerifyVarObj
  loc_11EDFD9:   Set var_88 = Me.DGDepart
  loc_11EDFDF:   LateIdStAd
  loc_11EE041:   Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_8C(Index))
  loc_11EE049:   global_52 = var_8C.Text
  loc_11EE061:   If (3 Or (var_98 = vbNullString)) Then
  loc_11EE064:     Exit Sub
  loc_11EE065:   End If
  loc_11EE072:   Set var_88 = var_8C(Index)
  loc_11EE078:   Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EE080:   -1 = var_8C.Text
  loc_11EE092:   var_C4 = "Name"
  loc_11EE0CD:   If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EE0D6:     Me.MoveFirst
  loc_11EE0F9:     Set var_88 = var_8C(Index)
  loc_11EE0FF:     Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EE107:     1 = var_8C.Text
  loc_11EE110:     var_9C = var_C4 & var_98
  loc_11EE120:     Me.Find var_9C & "'", , 
  loc_11EE135:   End If
  loc_11EE138: Else
  loc_11EE140:   If (var_92 = CInt(4)) Then
  loc_11EE15F:     Me.Recordset15.CursorLocation = 3
  loc_11EE172:     Set var_88 = var_8C(CInt(3))
  loc_11EE178:     Call 0.Method_Txt_GotFocus0 (var_9C)
  loc_11EE180:      = var_8C.Tag
  loc_11EE1A3:     var_98 = "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where (G.LOGSITE_CODE='" & MemVar_1F92078
  loc_11EE1B8:     var_B4 = CVar(var_98 & "' or G.LOGSITE_CODE='HO') and G.CODE<>'" & var_9C & "' And D.RestType IN ('House Keeping','Laundry','Store') Order by G.Name") 'String
  loc_11EE1C2:     Me.Open var_B4, CVar(MemVar_1F92044), 2
  loc_11EE1E5:     CVarUnk
  loc_11EE1EA:     VerifyVarObj
  loc_11EE1F0:     Set var_88 = 3(New)
  loc_11EE1F6:     LateIdStAd
  loc_11EE252:     Set var_88 = var_8C(Index)
  loc_11EE258:     Call 0.Method_Txt_GotFocus0 (var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11EE260:     var_88 = var_8C.Text
  loc_11EE278:     If (-1 Or (var_98 = vbNullString)) Then
  loc_11EE27B:       Exit Sub
  loc_11EE27C:     End If
  loc_11EE289:     Set var_88 = var_8C(Index)
  loc_11EE28F:     Call 0.Method_Txt_GotFocus0 (var_98)
  loc_11EE297:      = var_8C.Text
  loc_11EE2A9:     var_C4 = "Name"
  loc_11EE2E4:     If CBool(CVar(var_98) <> Me.Fields.Item(var_C4).Value) Then
  loc_11EE2ED:       Me.MoveFirst
  loc_11EE310:       Set var_88 = var_8C(Index)
  loc_11EE316:       Call 0.Method_Txt_GotFocus0 (var_98, "Name ='", 0)
  loc_11EE31E:       1 = var_8C.Text
  loc_11EE337:       Me.Find var_C4 & var_98 & "'", , 
  loc_11EE34C:     End If
  loc_11EE34F:   Else
  loc_11EE357:     If (var_92 = CInt(2)) Then
  loc_11EE362:       var_98 = "{Home}+{End}"
  loc_11EE368:       Proc_303_0_FB9B68(var_98)
  loc_11EE370:     End If
  loc_11EE370:   End If
  loc_11EE370: End If
  loc_11EE370: Exit Sub
  loc_11EE371: Set var_124 = 0
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1153190
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_B0 As Variant
  Dim var_98 As DataGrid
  Dim var_8C As DataGrid
  loc_1152DFA: If (CLng(Shift) = &H1B) Then
  loc_1152DFD:   Call Proc_147_47_EBE320()
  loc_1152E02:   Exit Sub
  loc_1152E03: End If
  loc_1152E11: If (KeyCode = CInt(3)) Then
  loc_1152E21:   Set var_98 = var_9C(KeyCode)
  loc_1152E27:   Call 0.Method_Txt_KeyDown0 (var_A0)
  loc_1152E2F:   var_86 = var_9C.Height
  loc_1152E41:   Set var_8C = var_90(KeyCode)
  loc_1152E47:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1152E4F:    = var_90.Top
  loc_1152E5F:   var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1152E6E:   Me.DGDepart.Top = var_B0
  loc_1152E8D:   Set var_8C = var_90(KeyCode)
  loc_1152E93:   Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1152E9B:    = var_90.Left
  loc_1152EB2:   Me.DGDepart.Left = CVar(var_94)
  loc_1152ED8:   Set var_9C = Nothing
  loc_1152EE3:   Set var_98 = Nothing
  loc_1152F02:   Set var_90 = ()
  loc_1152F11:   Proc_6_69_134A198(Me.DGDepart, var_90, KeyCode, global_52, Shift)
  loc_1152F28: Else
  loc_1152F30:   If (var_86 = CInt(4)) Then
  loc_1152F40:     Set var_98 = var_9C(KeyCode)
  loc_1152F46:     Call 0.Method_Txt_KeyDown0 (var_A0, &HFF, 1)
  loc_1152F4E:     var_98 = var_9C.Height
  loc_1152F60:     Set var_8C = var_90(KeyCode)
  loc_1152F66:     Call 0.Method_Txt_KeyDown0 (var_94, var_9C)
  loc_1152F6E:     0 = var_90.Top
  loc_1152F7E:     var_B0 = CVar(((var_94 + var_A0) + CDbl(&H19))) 'Single
  loc_1152F8D:     (CVar(var_94)).Top = 
  loc_1152FAC:     Set var_8C = var_90(KeyCode)
  loc_1152FB2:     Call 0.Method_Txt_KeyDown0 (var_94)
  loc_1152FBA:      = var_90.Left
  loc_1152FD1:     (CVar(var_94)).Left = 
  loc_1152FF7:     Set var_9C = Nothing
  loc_1153002:     Set var_98 = Nothing
  loc_1153030:     Proc_6_69_134A198((), (), KeyCode, global_64, Shift)
  loc_1153044:   End If
  loc_1153044: End If
  loc_1153075: Set var_98 = Me.DGItem
  loc_115309A: If ((1 And (CBool(&HFF((CBool(Me.DGDepart.Visible) = 0)).Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_11530B2:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11530BB:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_11530C0:   End If
  loc_11530C4:   Set var_8C = 0(var_9C)
  loc_1153109:   If CBool((DGItem.DispID_6803000E = "Add") And (KeyCode <> CInt(1)) And (KeyCode <> CInt(2))) Then
  loc_1153121:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_115312A:       Proc_6_76_E52838(Shift)
  loc_115312F:     End If
  loc_115312F:   End If
  loc_1153133:   Set var_8C = (arg_14)
  loc_1153166:   If CBool((DGItem.DispID_6803000E = "Edit") And (KeyCode <> CInt(2))) Then
  loc_115317E:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1153187:       Proc_6_76_E52838(Shift)
  loc_115318C:     End If
  loc_115318C:   End If
  loc_115318C: End If
  loc_115318C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F66D14
  'Data Table: 495098
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_F66BE3: Proc_6_58_E054C0(arg_10)
  loc_F66BEE: Proc_6_133_E7EF78(var_94)
  loc_F66BF7: arg_10 = CInt(var_94)
  loc_F66C00: var_96 = KeyAscii
  loc_F66C0B: If (var_96 = CInt(3)) Then
  loc_F66C2A:   If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_F66C3C:     var_A0 = "Name"
  loc_F66C57:     Proc_6_89_146F1AC(arg_10(var_96), KeyAscii, global_52, arg_10)
  loc_F66C66:   End If
  loc_F66C69: Else
  loc_F66C71:   If (var_96 = CInt(4)) Then
  loc_F66C90:     If (CBool(0(var_A0).Visible) = &HFF) Then
  loc_F66C97:       Set var_A8 = (arg_10)
  loc_F66CA2:       var_A0 = "Name"
  loc_F66CBD:       Proc_6_89_146F1AC(var_A8, KeyAscii, global_64)
  loc_F66CCC:     End If
  loc_F66CCF:   Else
  loc_F66CD7:     If (var_96 = CInt(1)) Then
  loc_F66CE4:       Set var_9C = var_A8(KeyAscii)
  loc_F66CEA:       Call 0.Method_Txt_KeyPress0 (arg_10, var_A0)
  loc_F66D05:       Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F66D11:     End If
  loc_F66D11:   End If
  loc_F66D11: End If
  loc_F66D11: Exit Sub
  loc_F66D12: On Error Goto loc_F68C03
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFDC74
  'Data Table: 495098
  Dim var_86 As Integer
  loc_DFDC6F: var_86 = KeyCode
  loc_DFDC72: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50694
  'Data Table: 495098
  loc_E50672: Set var_88 = var_8C(Index)
  loc_E50678: Call 0.Method_Txt_LostFocus0 ()
  loc_E50686: Proc_6_73_E22704(var_8C)
  loc_E50692: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13C40CC
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_C8 As Integer
  Dim var_98 As String
  Dim unk_4950A9 As Connection15
  Dim var_8C As Variant
  Dim var_94 As Field20
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_F8 As Long
  Dim var_124 As TextBox
  Dim Me As Recordset15
  Dim var_120 As TextBox
  loc_13C374F: var_86 = Cancel
  loc_13C375A: If (var_86 = CInt(1)) Then
  loc_13C3768:   Set var_8C = var_90(CInt(1))
  loc_13C376E:   Call 0.Method_Txt_Validate0 (var_86)
  loc_13C3776:   var_98 = "Vr No"
  loc_13C3797:   If (Proc_6_27_EA565C(var_90) = 0) Then
  loc_13C37A4:     Set var_8C = var_90(Cancel)
  loc_13C37AA:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C37B2:     var_90.SetFocus
  loc_13C37C0:     arg_10 = &HFF
  loc_13C37C3:     Exit Sub
  loc_13C37C4:   End If
  loc_13C37D2:   Set var_8C = var_90(CInt(1))
  loc_13C37D8:   Call 0.Method_Txt_Validate0 (var_98)
  loc_13C37E0:   arg_10 = var_90.Text
  loc_13C37F8:   If (CDbl(var_98) = CDbl(0)) Then
  loc_13C380E:     var_B8 = "Vr No Can Not Be 0"
  loc_13C3814:     MsgBox(var_B8, 0, var_D8, var_F8, var_118)
  loc_13C382E:     Set var_8C = var_90(Cancel)
  loc_13C3834:     Call 0.Method_Txt_Validate0 ()
  loc_13C383C:     var_90.SetFocus
  loc_13C384A:     arg_10 = &HFF
  loc_13C384D:     Exit Sub
  loc_13C384E:   End If
  loc_13C3852:   Set var_8C = (arg_10)
  loc_13C386D:   If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C3876:     Call Proc_147_48_115D8B8(MemVar_1F92044)
  loc_13C3889:     Set var_8C = var_90(CInt(0))
  loc_13C388F:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3897:     var_90.Text = var_98
  loc_13C38AC:     Call Proc_147_48_115D8B8(MemVar_1F92044)
  loc_13C38B7:     global_76 = var_98
  loc_13C38C4:     Call Proc_147_49_110CF0C(MemVar_1F92044, var_98)
  loc_13C38CF:     global_80 = var_98
  loc_13C38D6:   End If
  loc_13C38DA:   Set var_8C = (var_98)
  loc_13C38F5:   If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C38FE:     var_C8 = 0
  loc_13C391E:     var_98 = "Select Count(*) From Stock Where DocID='" & global_76
  loc_13C392E:     unk_4950A9.Execute var_98 & "'", var_B8, -1
  loc_13C3936:     var_8C = var_8C.Fields
  loc_13C393E:     var_C8 = var_90.Item(var_90)
  loc_13C3946:     var_94 = var_94.Value
  loc_13C396D:     If (var_D8 > 0) Then
  loc_13C3976:       Call 0.Method_arg_50 (var_98)
  loc_13C3984:       var_D8 = CVar(var_98) 'String
  loc_13C3991:       var_B8 = "Duplicate Vr No."
  loc_13C3997:       MsgBox(var_B8, &H40, var_D8, var_F8, var_118)
  loc_13C39AD:       Call Proc_147_48_115D8B8(MemVar_1F92044, var_98)
  loc_13C39BD:       If (var_98 = vbNullString) Then
  loc_13C39CA:         Set var_8C = var_90(Cancel)
  loc_13C39D0:         Call 0.Method_Txt_Validate0 (var_D8)
  loc_13C39D8:         var_90.SetFocus
  loc_13C39E6:         arg_10 = &HFF
  loc_13C39E9:         Exit Sub
  loc_13C39EA:       End If
  loc_13C39F0:       Call Proc_147_48_115D8B8(MemVar_1F92044, var_98)
  loc_13C3A03:       Set var_8C = var_90(CInt(0))
  loc_13C3A09:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3A11:       var_90.Text = arg_10
  loc_13C3A26:       Call Proc_147_48_115D8B8(MemVar_1F92044)
  loc_13C3A31:       global_76 = var_98
  loc_13C3A3A:       arg_10 = &HFF
  loc_13C3A3D:       Exit Sub
  loc_13C3A3E:     End If
  loc_13C3A44:     var_C8 = 0
  loc_13C3A64:     var_98 = "Select Count(*) From Stock Where DocID='" & global_80
  loc_13C3A74:     unk_4950A9.Execute var_98 & "'", var_B8, -1
  loc_13C3A7C:     var_8C = var_8C.Fields
  loc_13C3A84:     var_C8 = var_90.Item(var_90)
  loc_13C3A8C:     var_94 = var_94.Value
  loc_13C3AB3:     If (var_D8 > 0) Then
  loc_13C3ABC:       Call 0.Method_arg_50 (var_98, var_D8)
  loc_13C3ADD:       MsgBox("Duplicate Vr No.", &H40, CVar(var_98), var_F8, var_118)
  loc_13C3AF3:       Call Proc_147_49_110CF0C(MemVar_1F92044, var_98)
  loc_13C3B03:       If (var_98 = vbNullString) Then
  loc_13C3B10:         Set var_8C = var_90(Cancel)
  loc_13C3B16:         Call 0.Method_Txt_Validate0 (arg_10)
  loc_13C3B1E:         var_90.SetFocus
  loc_13C3B2C:         arg_10 = &HFF
  loc_13C3B2F:         Exit Sub
  loc_13C3B30:       End If
  loc_13C3B36:       Call Proc_147_49_110CF0C(MemVar_1F92044, var_98)
  loc_13C3B41:       global_80 = var_98
  loc_13C3B4A:       arg_10 = &HFF
  loc_13C3B4D:       Exit Sub
  loc_13C3B4E:     End If
  loc_13C3B4E:   End If
  loc_13C3B51: Else
  loc_13C3B59:   If (var_86 = CInt(2)) Then
  loc_13C3B69:     Set var_8C = var_90(Cancel)
  loc_13C3B6F:     Call 0.Method_Txt_Validate0 (var_98, arg_10)
  loc_13C3B77:     arg_10 = var_90.Text
  loc_13C3BA7:     If (Len(Trim(CVar(var_98))) = 0) Then
  loc_13C3BAF:       var_98 = CStr(MemVar_1F920EC)
  loc_13C3BBC:       Set var_8C = var_90(Cancel)
  loc_13C3BC2:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3BCA:       var_90.Text = var_98
  loc_13C3BDC:     Else
  loc_13C3BE6:       Set var_8C = var_90(Cancel)
  loc_13C3BEC:       Call 0.Method_Txt_Validate0 ()
  loc_13C3BFF:       var_98 = Proc_6_33_1512840(var_90)
  loc_13C3C0C:       Set var_120 = var_124(Cancel)
  loc_13C3C12:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3C1A:       var_124.Text = 
  loc_13C3C2D:     End If
  loc_13C3C31:     Set var_8C = ()
  loc_13C3C4C:     If (DGDepart.DispID_6803000E = "Add") Then
  loc_13C3C55:       Call Proc_147_48_115D8B8(MemVar_1F92044)
  loc_13C3C65:       If (var_98 = vbNullString) Then
  loc_13C3C72:         Set var_8C = var_90(Cancel)
  loc_13C3C78:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3C80:         var_90.SetFocus
  loc_13C3C8E:         arg_10 = &HFF
  loc_13C3C91:         Exit Sub
  loc_13C3C92:       End If
  loc_13C3C98:       Call Proc_147_49_110CF0C(MemVar_1F92044, var_98)
  loc_13C3CA8:       If (var_98 = vbNullString) Then
  loc_13C3CB5:         Set var_8C = var_90(Cancel)
  loc_13C3CBB:         Call 0.Method_Txt_Validate0 (arg_10)
  loc_13C3CC3:         var_90.SetFocus
  loc_13C3CD1:         arg_10 = &HFF
  loc_13C3CD4:         Exit Sub
  loc_13C3CD5:       End If
  loc_13C3CDB:       Call Proc_147_48_115D8B8(MemVar_1F92044, var_98)
  loc_13C3CEE:       Set var_8C = var_90(CInt(0))
  loc_13C3CF4:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3CFC:       var_90.Text = arg_10
  loc_13C3D11:       Call Proc_147_48_115D8B8(MemVar_1F92044)
  loc_13C3D1C:       global_76 = var_98
  loc_13C3D29:       Call Proc_147_49_110CF0C(MemVar_1F92044, var_98)
  loc_13C3D34:       global_80 = var_98
  loc_13C3D3B:     End If
  loc_13C3D49:     Set var_8C = var_90(CInt(2))
  loc_13C3D4F:     Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3D57:     var_98 = var_90.Text
  loc_13C3D77:     If (Proc_6_91_EF2D40(CDate(var_98)) = 0) Then
  loc_13C3D85:       Set var_8C = var_90(CInt(2))
  loc_13C3D8B:       Call 0.Method_Txt_Validate0 ()
  loc_13C3D93:       var_90.SetFocus
  loc_13C3D9F:       Exit Sub
  loc_13C3DA0:     End If
  loc_13C3DA3:   Else
  loc_13C3DAB:     If (var_86 = CInt(3)) Then
  loc_13C3DFC:       Set var_8C = var_90(Cancel)
  loc_13C3E02:       Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3E0A:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13C3E22:       If ( Or (var_98 = vbNullString)) Then
  loc_13C3E32:         Set var_8C = var_90(Cancel)
  loc_13C3E38:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C3E40:         var_90.Text = 
  loc_13C3E59:         Set var_8C = var_90(Cancel)
  loc_13C3E5F:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C3E67:         var_90.Tag = 
  loc_13C3E76:       Else
  loc_13C3EB1:         Set var_94 = var_120(Cancel)
  loc_13C3EB7:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_13C3EBF:         var_120.Text = 
  loc_13C3EF2:         var_90 = Me.Fields.Item("Code")
  loc_13C3F03:         var_98 = CStr(var_90.Value)
  loc_13C3F10:         Set var_94 = var_120(Cancel)
  loc_13C3F16:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3F1E:         var_120.Tag = 
  loc_13C3F34:       End If
  loc_13C3F37:     Else
  loc_13C3F3F:       If (var_86 = CInt(4)) Then
  loc_13C3F90:         Set var_8C = var_90(Cancel)
  loc_13C3F96:         Call 0.Method_Txt_Validate0 (var_98)
  loc_13C3F9E:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_13C3FB6:         If ( Or (var_98 = vbNullString)) Then
  loc_13C3FC6:           Set var_8C = var_90(Cancel)
  loc_13C3FCC:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C3FD4:           var_90.Text = 
  loc_13C3FED:           Set var_8C = var_90(Cancel)
  loc_13C3FF3:           Call 0.Method_Txt_Validate0 (vbNullString)
  loc_13C3FFB:           var_90.Tag = 
  loc_13C400A:         Else
  loc_13C4045:           Set var_94 = var_120(Cancel)
  loc_13C404B:           Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_13C4053:           var_120.Text = 
  loc_13C40A4:           Set var_94 = var_120(Cancel)
  loc_13C40AA:           Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_13C40B2:           var_120.Tag = 
  loc_13C40C8:         End If
  loc_13C40C8:       End If
  loc_13C40C8:     End If
  loc_13C40C8:   End If
  loc_13C40C8: End If
  loc_13C40C8: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '10A68F8
  'Data Table: 495098
  Dim var_A8 As DataGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Variant
  Dim var_100 As Variant
  loc_10A663C: On Error Goto loc_10A68F0
  loc_10A663F: Call Proc_147_47_EBE320()
  loc_10A6654: Set var_A8 = (CVar(CLng(global_96)))
  loc_10A666C: (DGDepart.DispID_26).InsertRows , 
  loc_10A667E: Set var_BC = (CVar(CLng()))
  loc_10A6684: var_BC.DeleteRowLabels , 
  loc_10A6696: Set var_F0 = (CVar(CLng()))
  loc_10A66B3: Set var_104 = var_108(0)
  loc_10A66B9: Call 0.Method_TxtGrid_GotFocus0 (CStr(DGDepart.DispID_41))
  loc_10A66C1: var_108.Tag = 
  loc_10A66EE: Set var_A8 = var_BC(Index)
  loc_10A66F4: Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_10A66FC: var_BC.MaxLength = 
  loc_10A6712: ().DeleteRowLabels , 
  loc_10A671B: var_110 = CLng()
  loc_10A672B: If (var_110 = CLng(1)) Then
  loc_10A676F:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_10A6772:     Exit Sub
  loc_10A6773:   End If
  loc_10A677D:   (var_110).InsertRows , 
  loc_10A6797:   Set var_BC = CVar(CLng())(CVar(CLng(1)))
  loc_10A67C1:   If (CStr(DGDepart.DispID_41) <> vbNullString) Then
  loc_10A67CA:     Me.MoveFirst
  loc_10A67D9:     ().InsertRows , 
  loc_10A67F3:     Set var_BC = CVar(CLng())(CVar(CLng(9)))
  loc_10A6804:     var_100 = CVar(CStr(DGDepart.DispID_41)) 'String
  loc_10A680A:     Proc_6_17_EAA2B0(var_128)
  loc_10A6833:     Me.Find CStr("Code =" & var_128), 0, 1
  loc_10A6863:     If (Me.EOF = &HFF) Then
  loc_10A686C:       Me.MoveFirst
  loc_10A6871:     End If
  loc_10A6871:   End If
  loc_10A6874: Else
  loc_10A687B:   If Not (var_110 = CLng(7)) Then
  loc_10A6885:     If (var_110 = CLng(3)) Then
  loc_10A6888:     End If
  loc_10A6891:     If (global_84 = 0) Then
  loc_10A689C:       var_10C = "{Home}+{End}"
  loc_10A68A2:       Proc_303_0_FB9B68(CStr("Code =" & var_128), 0)
  loc_10A68AA:     End If
  loc_10A68AD:   Else
  loc_10A68B4:     If (var_110 = CLng(4)) Then
  loc_10A68C4:       Set var_A8 = var_BC(Index)
  loc_10A68CA:       Call 0.Method_TxtGrid_GotFocus0 (CStr("Code =" & var_128), var_158)
  loc_10A68D2:       var_100 = var_BC.Text
  loc_10A68E2:       global_88 = Val(CStr("Code =" & var_128))
  loc_10A68EF:     End If
  loc_10A68EF:   End If
  loc_10A68EF: End If
  loc_10A68EF: Exit Sub
  loc_10A68F0: ' Referenced from: 10A663C
  loc_10A68F0: Proc_6_60_E62BC4(global_88)
  loc_10A68F5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1191FF8
  'Data Table: 495098
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As DataGrid
  Dim var_AC As Long
  loc_1191C04: On Error Goto loc_1191FF1
  loc_1191C11: If (CLng(Shift) = &H1B) Then
  loc_1191C20:   Set var_88 = var_8C(0)
  loc_1191C26:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1191C2E:    = var_8C.Tag
  loc_1191C3F:   Set var_94 = var_98(0)
  loc_1191C45:   Call 0.Method_TxtGrid_KeyDown0 (var_90)
  loc_1191C4D:   var_98.Text = 
  loc_1191C69:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1191C72:   Set var_88 = (arg_14)
  loc_1191C8E:   Set var_88 = var_8C(0)
  loc_1191C94:   Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_1191C9C:   var_8C.Visible = DGItem.DispID_8001
  loc_1191CA8:   Exit Sub
  loc_1191CA9: End If
  loc_1191CB3: ().DeleteRowLabels , 
  loc_1191CBC: var_AC = CLng()
  loc_1191CCC: If (var_AC = CLng(1)) Then
  loc_1191CE7:   Set var_98 = Nothing
  loc_1191CF2:   Set var_94 = Nothing
  loc_1191D20:   Proc_6_69_134A198(Me.DGItem, (var_AC), KeyCode, global_60, Shift)
  loc_1191D3E:   If (CLng(Shift) = &HD) Then
  loc_1191D4C:     Call Proc_147_43_13CFD34(KeyCode, 0, var_B0, &HFF)
  loc_1191D57:     If (var_B0 = &HFF) Then
  loc_1191D9D:       Proc_6_62_1253BC4(var_94(1)(1), 0(0(var_98)), KeyCode, Shift, global_84)
  loc_1191DAD:     End If
  loc_1191DAD:   End If
  loc_1191DB0: Else
  loc_1191DB7:   If (var_AC = CLng(3)) Then
  loc_1191DFA:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_1191E0A:       Call Proc_147_43_13CFD34(0, 0, var_B2, 9)
  loc_1191E15:       If (var_B2 = &HFF) Then
  loc_1191E5B:         Proc_6_62_1253BC4(3(2), (0), KeyCode, Shift, global_84)
  loc_1191E6B:       End If
  loc_1191E6B:     End If
  loc_1191E6E:   Else
  loc_1191E75:     If (var_AC = CLng(7)) Then
  loc_1191EB8:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_1191EC8:         Call Proc_147_43_13CFD34(0, 0, var_B2, 3)
  loc_1191ED3:         If (var_B2 = &HFF) Then
  loc_1191F1B:           Proc_6_62_1253BC4(0(0), (0), KeyCode, Shift, global_84)
  loc_1191F2B:         End If
  loc_1191F2B:       End If
  loc_1191F2E:     Else
  loc_1191F35:       If (var_AC = CLng(4)) Then
  loc_1191F78:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_84 = &HFF))) Then
  loc_1191F88:           Call Proc_147_43_13CFD34(0, 0, var_B2, 9)
  loc_1191F93:           If (var_B2 = &HFF) Then
  loc_1191FE0:             Proc_6_62_1253BC4(0(CByte(2)), (0), KeyCode, Shift, global_84)
  loc_1191FF0:           End If
  loc_1191FF0:         End If
  loc_1191FF0:       End If
  loc_1191FF0:     End If
  loc_1191FF0:   End If
  loc_1191FF0: End If
  loc_1191FF0: Exit Sub
  loc_1191FF1: ' Referenced from: 1191C04
  loc_1191FF1: Proc_6_60_E62BC4(CByte((CInt(7) + 1)), 0)
  loc_1191FF6: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F99534
  'Data Table: 495098
  Dim arg_10 As Integer
  Dim var_98 As DataGrid
  Dim var_9C As Long
  Dim var_94 As Variant
  loc_F993C0: On Error Goto loc_F9952B
  loc_F993C6: Proc_6_58_E054C0(arg_10)
  loc_F993D1: Proc_6_133_E7EF78(var_94)
  loc_F993DA: arg_10 = CInt(var_94)
  loc_F993EA: arg_10(arg_10).DeleteRowLabels , 
  loc_F993F3: var_9C = CLng()
  loc_F99403: If (var_9C = CLng(1)) Then
  loc_F99422:   If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_F99429:     Set var_A8 = (var_9C)
  loc_F99434:     var_A0 = "Name"
  loc_F9944F:     Proc_6_89_146F1AC(var_A8, KeyAscii, global_60)
  loc_F9945E:   End If
  loc_F99461: Else
  loc_F99468:   If (var_9C = CLng(3)) Then
  loc_F99475:     Set var_98 = var_A8(KeyAscii)
  loc_F9947B:     Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A0)
  loc_F99496:     Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F994A5:   Else
  loc_F994AC:     If (var_9C = CLng(7)) Then
  loc_F994B9:       Set var_98 = var_A8(KeyAscii)
  loc_F994BF:       Call 0.Method_TxtGrid_KeyPress0 (3)
  loc_F994DA:       Proc_6_42_129A86C(var_A8, arg_10, 8)
  loc_F994E9:     Else
  loc_F994F0:       If (var_9C = CLng(4)) Then
  loc_F994FD:         Set var_98 = var_A8(KeyAscii)
  loc_F99503:         Call 0.Method_TxtGrid_KeyPress0 (2)
  loc_F9951E:         Proc_6_42_129A86C(var_A8, arg_10, 6)
  loc_F9952A:       End If
  loc_F9952A:     End If
  loc_F9952A:   End If
  loc_F9952A: End If
  loc_F9952A: Exit Sub
  loc_F9952B: ' Referenced from: F993C0
  loc_F9952B: Proc_6_60_E62BC4(2)
  loc_F99530: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '1064A54
  'Data Table: 495098
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_A0 As Long
  Dim var_AC As TextBox
  Dim var_180 As Double
  Dim var_104 As DataGrid
  Dim var_A8 As String
  loc_10647F0: On Error Goto loc_1064A4D
  loc_10647F6: var_86 = KeyCode
  loc_10647FF: If (var_86 = 0) Then
  loc_106480C:   (var_86).DeleteRowLabels , 
  loc_1064815:   var_A0 = CLng()
  loc_1064825:   If (var_A0 = CLng(1)) Then
  loc_106484B:     If ((Shift <> &HD) And (CBool(Me.DGItem.Visible) = 0)) Then
  loc_106485C:       Call TxtGrid_KeyDown(KeyCode, global_86)
  loc_1064865:       Set var_AC = var_A0(0)
  loc_1064870:       var_A8 = "Name"
  loc_106488B:       Proc_6_89_146F1AC(var_AC, KeyCode, global_60)
  loc_106489A:     End If
  loc_106489D:   Else
  loc_10648A4:     If Not (var_A0 = CLng(3)) Then
  loc_10648AE:       If (var_A0 = CLng(4)) Then
  loc_10648B1:       End If
  loc_10648BE:       Set var_8C = var_AC(KeyCode)
  loc_10648C4:       Call 0.Method_TxtGrid_KeyUp0 (var_A8, Shift)
  loc_10648D9:       var_180 = Val(var_AC.Text)
  loc_10648E6:       &HFF(var_180).InsertRows , 
  loc_10648FE:       (CVar(CLng())).DeleteRowLabels , 
  loc_1064942:       LateIdCallSt
  loc_1064973:       1(1(CVar(CStr(Format(CVar(var_180), "0.000"))))).InsertRows CVar(CLng()), 
  loc_106498D:       Set var_104 = CVar(CLng())(CVar(CLng(4)))
  loc_10649A6:       var_180 = Val(CStr(DGItem.DispID_41))
  loc_10649B3:       (var_180).InsertRows , 
  loc_10649D3:       CVar(CLng())(CVar(CLng(5))).InsertRows , 
  loc_10649ED:       Set var_AC = CVar(CLng())(CVar(CLng(3)))
  loc_1064A1A:       LateIdCallSt
  loc_1064A47:       Call Proc_147_51_F722BC((CVar(CStr((Val(CStr(DGItem.DispID_41)) * var_180)))))
  loc_1064A4C:     End If
  loc_1064A4C:   End If
  loc_1064A4C: End If
  loc_1064A4C: Exit Sub
  loc_1064A4D: ' Referenced from: 10647F0
  loc_1064A4D: Proc_6_60_E62BC4()
  loc_1064A52: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2193C
  'Data Table: 495098
  Dim arg_10 As Integer
  loc_E21918: On Error Goto loc_E21933
  loc_E21926: Call Proc_147_43_13CFD34(Cancel, &HFF)
  loc_E2192F: arg_10 = Not(var_88)
  loc_E21932: Exit Sub
  loc_E21933: ' Referenced from: E21918
  loc_E21933: Proc_6_60_E62BC4(arg_10)
  loc_E21938: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '106BD84
  'Data Table: 495098
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  loc_106BB13: Me.DGItem.Visible = False
  loc_106BB32: If (Me.RecordCount > 0) Then
  loc_106BB3F:   ().InsertRows , 
  loc_106BB91:   LateIdCallSt
  loc_106BBB7:   CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_106BC09:   LateIdCallSt
  loc_106BC2F:   CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_106BC81:   LateIdCallSt
  loc_106BCB7:   var_B0 = Me.Fields.Item("Rate")
  loc_106BCC6:   CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_106BCCF:   var_D4 = CVar(CLng()) 'Long
  loc_106BCD7:   var_F4 = CVar(CLng(7)) 'Long
  loc_106BD0C:   Set var_128 = 1(CVar(CStr(Format(CVar(var_B0), "0.00"))))
  loc_106BD12:   LateIdCallSt
  loc_106BD30: End If
  loc_106BD3C: Set var_A8 = var_B0(0)
  loc_106BD42: Call 0.Method_DGItem_UnknownEvent_90 (var_15A, var_128, 1)
  loc_106BD4A: var_F4 = var_B0.Visible
  loc_106BD5C: If (var_15A = &HFF) Then
  loc_106BD68:   Set var_A8 = var_B0(0)
  loc_106BD6E:   Call 0.Method_DGItem_UnknownEvent_90 (var_D4)
  loc_106BD76:   var_B0.SetFocus
  loc_106BD82: End If
  loc_106BD82: Exit Sub
  loc_106BD83: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E62234
  'Data Table: 495098
  Dim var_AC As TextBox
  loc_E621F9: Set var_A8 = (CVar(CLng("14737632")))
  loc_E62212: Set var_A8 = var_AC(0)
  loc_E62218: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_E62220: var_AC.Visible = DGItem.DispID_10
  loc_E6222C: Call Proc_147_47_EBE320()
  loc_E62231: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68E58
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E68E14: Set var_88 = var_8C(0)
  loc_E68E1A: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E68E22:  = var_8C.Visible
  loc_E68E34: If (var_8E = 0) Then
  loc_E68E47:   Set var_88 = (CVar(CLng(global_96)))
  loc_E68E55: End If
  loc_E68E55: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D880
  'Data Table: 495098
  loc_E1D871: Set var_A8 = (CVar(CLng("16777215")))
  loc_E1D87F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E373F4
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E373D7: Set var_88 = var_8C(0)
  loc_E373DD: Call 0.Method_FGrid_UnknownEvent_90 (0)
  loc_E373E5: var_8C.Visible = 
  loc_E373F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '113A8C4
  'Data Table: 495098
  Dim var_98 As Variant
  Dim var_C0 As DataGrid
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_88 As DataGrid
  Dim var_BC As String
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_113A540: On Error Goto loc_113A8BD
  loc_113A547: Set var_88 = ()
  loc_113A562: If (DGItem.DispID_6803000E = "Browse") Then
  loc_113A565:   Exit Sub
  loc_113A566: End If
  loc_113A570: var_B8 = ().RowCount
  loc_113A583: var_D4 = (var_B8).RowCount
  loc_113A5DA: If ( And (CDbl(Val(CStr(var_D4((CLng(Cancel) = &H26)).Tag))) = CDbl((CLng(var_B8) - (CLng(var_D4) - 1))))) Then
  loc_113A5ED:   Set var_88 = (CVar(CLng(global_96)))
  loc_113A603:   var_BC = "+{Tab}"
  loc_113A609:   Proc_303_0_FB9B68(CStr(var_D4((CLng(Cancel) = &H26)).Tag), 0)
  loc_113A613:   Cancel = 0
  loc_113A619: Else
  loc_113A623:   var_B8 = DGItem.DispID_26(Cancel).RowCount
  loc_113A670:   If ( And (CDbl(Val(CStr(var_B8((CLng(Cancel) = &H28)).Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_113A683:     Set var_88 = (CVar(CLng(global_96)))
  loc_113A696:     Call Proc_147_52_ED1D60(0)
  loc_113A69B:   End If
  loc_113A69B: End If
  loc_113A6AE: DGItem.DispID_26(Cancel).InsertRows , 
  loc_113A6C7: (CVar(CStr(CLng()))).Tag = 
  loc_113A6EB: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_113A6F8:   ().DeleteRowLabels , 
  loc_113A701:   var_EC = CLng()
  loc_113A711:   If (var_EC = CLng(1)) Then
  loc_113A71E:     (var_EC).InsertRows , 
  loc_113A736:     (CVar(CLng())).DeleteRowLabels , 
  loc_113A754:     LateIdCallSt
  loc_113A776:     (CVar(CLng())(vbNullString)).InsertRows , 
  loc_113A79C:     LateIdCallSt
  loc_113A7B8:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_113A7DE:     LateIdCallSt
  loc_113A7FA:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_113A803:     var_98 = CVar(CLng()) 'Long
  loc_113A81A:     Set var_C0 = CVar(CLng(7))(vbNullString)
  loc_113A820:     LateIdCallSt
  loc_113A835:   Else
  loc_113A83C:     If Not (var_EC = CLng(7)) Then
  loc_113A846:       If (var_EC = CLng(3)) Then
  loc_113A849:       End If
  loc_113A853:       var_98(var_C0).InsertRows , 
  loc_113A86B:       (CVar(CLng())).DeleteRowLabels , 
  loc_113A889:       LateIdCallSt
  loc_113A8A1:       Call Proc_147_51_F722BC(CVar(CLng())(vbNullString))
  loc_113A8A6:     End If
  loc_113A8A6:   End If
  loc_113A8A6: End If
  loc_113A8AC: If (Cancel = &HD) Then
  loc_113A8B4:   global_84 = 0
  loc_113A8B7: End If
  loc_113A8B9: Cancel = 0
  loc_113A8BC: Exit Sub
  loc_113A8BD: ' Referenced from: 113A540
  loc_113A8BD: Proc_6_60_E62BC4(Cancel)
  loc_113A8C2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F7E8
  'Data Table: 495098
  loc_E0F7D9: Call FGrid_UnknownEvent_C()
  loc_E0F7E3: global_84 = 0
  loc_E0F7E6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '102C2B8
  'Data Table: 495098
  Dim var_AC As DataGrid
  Dim var_B0 As Long
  Dim var_B4 As String
  Dim var_CE As Integer
  Dim var_B8 As TextBox
  Dim var_C8 As TextBox
  loc_102C0A3: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102C0AD: On Error Goto loc_102C2AF
  loc_102C0BA: ().DeleteRowLabels , 
  loc_102C0C3: var_B0 = CLng()
  loc_102C0D3: If (var_B0 = CLng(1)) Then
  loc_102C0DA:   Set var_C8 = (var_B0)
  loc_102C0FE:   var_B4 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_102C12B:   Set var_B8 = var_C8
  loc_102C13D:   Proc_6_63_110ABA4(Me, var_B8, (), 0)
  loc_102C165:   Set var_AC = var_B8(0)
  loc_102C16B:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4, 0, Asc(var_B4))
  loc_102C173:   0 = var_B8.Text
  loc_102C18C:   If (Len(var_B4) <= 1) Then
  loc_102C19B:     Set var_AC = var_B8(0)
  loc_102C1A1:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C1A9:     var_CE = var_B8.Text
  loc_102C1BA:     Set var_BC = var_C8(0)
  loc_102C1C0:     Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C1C8:     var_C8.Text = 
  loc_102C1DB:   End If
  loc_102C1E7:   Set var_AC = var_B8(0)
  loc_102C1ED:   Call 0.Method_FGrid_UnknownEvent_C0 (var_B4)
  loc_102C1F5:    = var_B8.Text
  loc_102C207:   Set var_BC = var_C8(0)
  loc_102C20D:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_B4))
  loc_102C215:   var_C8.SelStart = 
  loc_102C22B: Else
  loc_102C232:   If Not (var_B0 = CLng(7)) Then
  loc_102C23C:     If Not (var_B0 = CLng(3)) Then
  loc_102C246:       If (var_B0 = CLng(4)) Then
  loc_102C249:       End If
  loc_102C249:     End If
  loc_102C287:     Proc_6_63_110ABA4(Me, (), (), 0)
  loc_102C299:   End If
  loc_102C299: End If
  loc_102C2A3: If (CLng(Cancel) <> &HD) Then
  loc_102C2AB:   global_84 = &HFF
  loc_102C2AE: End If
  loc_102C2AE: Exit Sub
  loc_102C2AF: ' Referenced from: 102C0AD
  loc_102C2AF: Proc_6_60_E62BC4(global_84, &HFF)
  loc_102C2B4: Exit Sub
  loc_102C2B5: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_D '10508A0
  'Data Table: 495098
  Dim var_9C As Variant
  Dim var_8C As DataGrid
  loc_105063C: On Error Goto loc_1050898
  loc_1050643: Set var_8C = ()
  loc_105065E: If (DGItem.DispID_6803000E = "Browse") Then
  loc_1050661:   Exit Sub
  loc_1050662: End If
  loc_105066C: ().RandomDataFill
  loc_105067F: If (CLng() = CLng(0)) Then
  loc_1050682:   Exit Sub
  loc_1050683: End If
  loc_1050694: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10506A1:   ().InsertRows , 
  loc_10506B6:   If (CLng() >= 1) Then
  loc_10506F0:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_1050712:       If (CLng(().RowCount) > 2) Then
  loc_105071F:         ().InsertRows , 
  loc_1050731:         Set var_110 = (CVar(CLng()))
  loc_105074C:       Else
  loc_105075F:         DGItem.DispID_10000(1).RowCount = 
  loc_105078D:         Set var_110 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_10507B4:         Set var_8C = DGItem.DispID_10000(1)
  loc_10507C2:       End If
  loc_10507C2:       Call Proc_147_51_F722BC(DGItem.DispID_6)
  loc_10507CB:       Set var_8C = ()
  loc_10507E6:       If (DGItem.DispID_6803000E = "Add") Then
  loc_105080E:         For var_11C =  To CInt((CLng(1(var_86).RowCount) - 1)):  = var_11C 'Integer
  loc_1050818:           var_9C = CVar(CLng(var_86)) 'Long
  loc_1050832:           Set var_8C = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_1050838:           LateIdCallSt
  loc_1050849:         Next var_11C 'Integer
  loc_105084E:       End If
  loc_105084E:     End If
  loc_1050851:   Else
  loc_1050872:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_1050882:   End If
  loc_1050886:   Set var_8C = ()
  loc_1050897: End If
  loc_1050897: Exit Sub
  loc_1050898: ' Referenced from: 105063C
  loc_1050898: Proc_6_60_E62BC4(DGItem.DispID_8001)
  loc_105089D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_12 'E9DE40
  'Data Table: 495098
  loc_E9DDDA: ().InsertRows , 
  loc_E9DDF2: (CVar(CLng())).DeleteRowLabels , 
  loc_E9DE04: Set var_F0 = (CVar(CLng()))
  loc_E9DE23: (CVar(CStr(DGItem.DispID_41))).ToolTipText = 
  loc_E9DE3E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E3FF7C
  'Data Table: 495098
  Dim var_8C As TextBox
  loc_E3FF5B: Set var_88 = var_8C(0)
  loc_E3FF61: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E3FF69: var_8C.Visible = 
  loc_E3FF75: Call Proc_147_47_EBE320()
  loc_E3FF7A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E96160
  'Data Table: 495098
  Dim Me As Recordset15
  loc_E960EE: On Error Goto loc_E96157
  loc_E960F7: Me.MoveFirst
  loc_E96121: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96149: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E96151: Call Proc_147_45_13F27B4(0)
  loc_E96156: Exit Sub
  loc_E96157: ' Referenced from: E960EE
  loc_E96157: Proc_6_60_E62BC4(var_A0)
  loc_E9615C: Exit Sub
loc_E9615D: End Sub
  loc_E9615E: CExtInstUnk
End Sub

Public Sub Proc_147_43_13CFD34(arg_C, arg_10) '13CFD34
  'Data Table: 495098
  Dim var_90 As Variant
  Dim var_A4 As Long
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_118 As DataGrid
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim unk_4950A9 As Connection15
  Dim var_8C As Recordset15
  Dim var_14C As Variant
  Dim var_19C As Double
  loc_13CF3BA: ().DeleteRowLabels , 
  loc_13CF3D3: If (CLng() = CLng(1)) Then
  loc_13CF424:   Set var_90 = var_B0(arg_C)
  loc_13CF42A:   Call 0.Method_Proc_147_43_13CFD340 (var_B4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_13CF432:   var_A4 = var_B0.Text
  loc_13CF44A:   If ( Or (var_B4 = vbNullString)) Then
  loc_13CF457:     ().InsertRows , 
  loc_13CF47D:     LateIdCallSt
  loc_13CF499:     CVar(CLng())(CVar(CLng(1))(vbNullString)).InsertRows , 
  loc_13CF4BF:     LateIdCallSt
  loc_13CF4DB:     CVar(CLng())(CVar(CLng(9))(vbNullString)).InsertRows , 
  loc_13CF501:     LateIdCallSt
  loc_13CF51D:     CVar(CLng())(CVar(CLng(2))(vbNullString)).InsertRows , 
  loc_13CF543:     LateIdCallSt
  loc_13CF55F:     CVar(CLng())(CVar(CLng(7))(vbNullString)).InsertRows , 
  loc_13CF585:     LateIdCallSt
  loc_13CF5A1:     CVar(CLng())(CVar(CLng(6))(vbNullString)).InsertRows , 
  loc_13CF5C7:     LateIdCallSt
  loc_13CF5E3:     CVar(CLng())(CVar(CLng(5))(vbNullString)).InsertRows , 
  loc_13CF609:     LateIdCallSt
  loc_13CF625:     CVar(CLng())(CVar(CLng(3))(vbNullString)).InsertRows , 
  loc_13CF62E:     var_C4 = CVar(CLng()) 'Long
  loc_13CF645:     Set var_B0 = CVar(CLng(4))(vbNullString)
  loc_13CF64B:     LateIdCallSt
  loc_13CF660:   Else
  loc_13CF66A:     var_C4(var_B0).InsertRows , 
  loc_13CF6BC:     LateIdCallSt
  loc_13CF6E2:     CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value)))).InsertRows , 
  loc_13CF734:     LateIdCallSt
  loc_13CF75A:     CVar(CLng())(CVar(CLng(9))(CVar(CStr(Me.Fields.Item("Code").Value)))).InsertRows , 
  loc_13CF7AC:     LateIdCallSt
  loc_13CF7F1:     CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value)))).InsertRows , 
  loc_13CF83D:     LateIdCallSt
  loc_13CF865:     1(1(CVar(CStr(Format(CVar(Me.Fields.Item("Rate")), "0.00"))))).InsertRows CVar(CLng(7)), CVar(CLng())
  loc_13CF8B7:     LateIdCallSt
  loc_13CF8DD:     CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("ConvRatio").Value)))).InsertRows , 
  loc_13CF8E6:     var_D4 = CVar(CLng()) 'Long
  loc_13CF918:     var_128 = Me.Fields.Item("IssueUnit").Value
  loc_13CF921:     var_138 = CVar(CStr(var_128)) 'String
  loc_13CF929:     Set var_13C = CVar(CLng(6))(var_138)
  loc_13CF92F:     LateIdCallSt
  loc_13CF94B:   End If
  loc_13CF955:   var_D4(var_13C).InsertRows , 
  loc_13CF96F:   Set var_B0 = CVar(CLng())(CVar(CLng(9)))
  loc_13CF98F:   Set var_118 = var_13C(CInt(3))
  loc_13CF995:   Call 0.Method_Proc_147_43_13CFD340 (var_174)
  loc_13CF99D:   DGItem.DispID_41 = var_13C.Tag
  loc_13CF9B6:   var_B4 = CStr(var_128)
  loc_13CF9D8:   unk_4950A9.Execute "SELECT RATE FROM ITEMRATE WHERE ITEMCODE='" & var_B4 & "' AND RestCode='" & var_174 & "'", var_138, -1
  loc_13CF9E3:   Set var_8C = var_184
  loc_13CFA1F:   If (var_8C.RecordCount > 0) Then
  loc_13CFA2C:     (var_184).InsertRows , 
  loc_13CFA35:     var_D4 = CVar(CLng()) 'Long
  loc_13CFA59:     var_B0 = var_8C.Fields.Item("Rate")
  loc_13CFA68:     Proc_6_47_EF59D0(var_128, CVar(var_B0))
  loc_13CFA71:     var_14C = CVar(CStr(var_128)) 'String
  loc_13CFA7F:     LateIdCallSt
  loc_13CFA9B:     Call Proc_147_51_F722BC(CVar(CLng(7))(var_14C))
  loc_13CFAA0:   End If
  loc_13CFAA3: Else
  loc_13CFAAA:   If (var_A4 = CLng(7)) Then
  loc_13CFAB9:     Set var_90 = var_B0(0)
  loc_13CFABF:     Call 0.Method_Proc_147_43_13CFD340 (var_B4)
  loc_13CFAC7:     var_D4 = var_B0.Text
  loc_13CFAD4:     var_19C = Val(var_B4)
  loc_13CFAE1:     (var_19C).InsertRows , 
  loc_13CFAF9:     (CVar(CLng())).DeleteRowLabels , 
  loc_13CFB02:     var_104 = CVar(CLng()) 'Long
  loc_13CFB16:     var_128 = "0.00"
  loc_13CFB26:     var_138 = Format(CVar(var_19C), var_128)
  loc_13CFB3D:     LateIdCallSt
  loc_13CFB64:     Call Proc_147_51_F722BC(1(CVar(CStr(var_138))), 1)
  loc_13CFB6C:   Else
  loc_13CFB73:     If Not (var_A4 = CLng(3)) Then
  loc_13CFB7D:       If (var_A4 = CLng(4)) Then
  loc_13CFB80:       End If
  loc_13CFB8A:       (var_104).DeleteRowLabels , 
  loc_13CFB9D:       If (CLng() = CLng(4)) Then
  loc_13CFBAC:         Set var_90 = var_B0(0)
  loc_13CFBB2:         Call 0.Method_Proc_147_43_13CFD340 (var_B4)
  loc_13CFBBA:          = var_B0.Text
  loc_13CFBDF:         If (global_88 <> CDbl(Val(var_B4))) Then
  loc_13CFC11:           If (MsgBox("Proceed with Changed Conversion Factor ?", &H24, var_128, var_138, var_14C) = 7) Then
  loc_13CFC19:             Proc_147_43_13CFD34 = 0
  loc_13CFC1F:           End If
  loc_13CFC1F:         End If
  loc_13CFC1F:       End If
  loc_13CFC2B:       Set var_90 = var_B0(0)
  loc_13CFC31:       Call 0.Method_Proc_147_43_13CFD340 (var_B4)
  loc_13CFC39:       var_19C = var_B0.Text
  loc_13CFC46:       var_19C = Val(var_B4)
  loc_13CFC53:       (var_19C).InsertRows , 
  loc_13CFC6B:       (CVar(CLng())).DeleteRowLabels , 
  loc_13CFC74:       var_104 = CVar(CLng()) 'Long
  loc_13CFCAF:       LateIdCallSt
  loc_13CFCD6:       Call Proc_147_51_F722BC(1(CVar(CStr(Format(CVar(var_19C), "0.000")))), 1)
  loc_13CFCDB:     End If
  loc_13CFCDB:   End If
  loc_13CFCDB: End If
  loc_13CFCE6: If (arg_10 = 0) Then
  loc_13CFCED:   Set var_90 = var_104(&HFF)
  loc_13CFD09:   Set var_90 = var_B0(0)
  loc_13CFD0F:   Call 0.Method_Proc_147_43_13CFD340 (0)
  loc_13CFD17:   var_B0.Visible = DGItem.DispID_8001
  loc_13CFD23: End If
  loc_13CFD28: Set var_8C = Nothing
  loc_13CFD2B: Proc_147_43_13CFD34 = 
End Sub

Public Sub Proc_147_44_F28D0C
  'Data Table: 495098
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F28C0E: Set var_8C = var_86(var_8E)
  loc_F28C14: Call 0.Method_Proc_147_44_F28D0CC (CByte(0))
  loc_F28C24: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F28C3A:   Set var_8C = var_98(CInt(var_86))
  loc_F28C40:   Call 0.Method_Proc_147_44_F28D0C0 (vbNullString)
  loc_F28C48:   var_98.Text = 
  loc_F28C64:   Set var_8C = var_98(CInt(var_86))
  loc_F28C6A:   Call 0.Method_Proc_147_44_F28D0C0 (vbNullString)
  loc_F28C72:   var_98.Tag = 
  loc_F28C81: Next var_92 'Byte
  loc_F28C94: (vbNullString).Caption = 
  loc_F28CAF: (1).RowCount = 
  loc_F28CD4: Set var_98 = (CVar(CStr(CLng(().RowCount))))
  loc_F28CFD: Set var_8C = DGItem.DispID_10000(1)
  loc_F28D0B: Exit Sub
End Sub

Public Sub Proc_147_45_13F27B4
  'Data Table: 495098
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim unk_4950A9 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As Variant
  Dim var_12C As TextBox
  Dim var_128 As Label
  Dim var_94 As Recordset15
  Dim var_134 As String
  Dim var_90 As Recordset15
  Dim var_8A As Integer
  loc_13F1DB4: On Error Goto loc_13F27AD
  loc_13F1DCE: If (Me.RecordCount > 0) Then
  loc_13F1DDE:   var_D0 = "Select Distinct SH.Docid,SH.SNo,SH.Vtype,SH.Vno,SH.Vdate,SH.VPrefix,SH.Rate,SH.Amount,SH.GodownCode,SH.Item,SH.QtyRec,SH.Unit,SH.RECDQty,SH.RECDUnit,SH.ConvRatio,SH.ContraDocId,I.Name As ItemName From Stock SH Left Join ItemMast I On I.Code=SH.Item And I.ItemType='Store' where DocID='"
  loc_13F1E27:   unk_4950A9.Execute CStr(var_D0 & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_13F1E32:   Set var_88 = var_128
  loc_13F1E88:   Call 0.Method_Proc_147_45_13F27B40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID"))))
  loc_13F1E90:   var_12C.Text = var_12C(CInt(0))
  loc_13F1ED9:   (Proc_6_38_E68A98(CVar(var_88.Fields.Item("vPrefix")))).Caption = 
  loc_13F1F21:   Set var_128 = var_12C(CInt(1))
  loc_13F1F27:   Call 0.Method_Proc_147_45_13F27B40 (Proc_6_38_E68A98(CVar(var_88.Fields.Item("VNo"))))
  loc_13F1F2F:   var_12C.Text = 
  loc_13F1F5A:   var_B0 = var_88.Fields.Item("VDate")
  loc_13F1F62:   var_C0 = CVar(var_B0) 'Address
  loc_13F1F6B:   var_104 = Proc_6_38_E68A98(var_C0)
  loc_13F1F79:   Set var_128 = var_12C(CInt(2))
  loc_13F1F7F:   Call 0.Method_Proc_147_45_13F27B40 (var_104)
  loc_13F1F87:   var_12C.Text = 
  loc_13F1FB9:   Set var_9C = var_B0(CInt(1))
  loc_13F1FBF:   Call 0.Method_Proc_147_45_13F27B40 (var_104, "Select VTYPE,GodownCode From Stock Where VtYpe='KSISS' and VNo=", var_C0)
  loc_13F1FC7:   -1 = var_B0.Text
  loc_13F1FE7:    = var_12C & var_104 & " And VPrefix="(var_134).Caption
  loc_13F2000:   unk_4950A9.Execute var_134 & vbNullString, , 
  loc_13F200B:   Set var_94 = var_12C
  loc_13F203F:   If (var_94.RecordCount > 0) Then
  loc_13F207E:     If (var_94.Fields.Item("vType").Value = "KSISS") Then
  loc_13F2098:       var_B0 = var_94.Fields.Item("Godowncode")
  loc_13F20A0:       var_C0 = CVar(var_B0) 'Address
  loc_13F20A9:       var_104 = Proc_6_38_E68A98(var_C0)
  loc_13F20B7:       Set var_128 = var_12C(CInt(3))
  loc_13F20BD:       Call 0.Method_Proc_147_45_13F27B40 (var_104)
  loc_13F20C5:       var_12C.Tag = 
  loc_13F20F7:       Set var_9C = var_B0(CInt(3))
  loc_13F20FD:       Call 0.Method_Proc_147_45_13F27B40 (var_104, "Select Name From GodownMast Where Code='", var_C0)
  loc_13F2105:       -1 = var_B0.Tag
  loc_13F211E:       unk_4950A9.Execute var_128 & var_104 & "'", , 
  loc_13F2129:       Set var_90 = var_128
  loc_13F2155:       If (var_90.RecordCount > 0) Then
  loc_13F218E:         Set var_128 = var_12C(CInt(3))
  loc_13F2194:         Call 0.Method_Proc_147_45_13F27B40 (Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name"))))
  loc_13F219C:         var_12C.Text = 
  loc_13F21B0:       End If
  loc_13F21B0:     End If
  loc_13F21B0:   End If
  loc_13F21EC:   If (var_88.Fields.Item("vType").Value = "KSREC") Then
  loc_13F2206:     var_B0 = var_88.Fields.Item("Godowncode")
  loc_13F220E:     var_C0 = CVar(var_B0) 'Address
  loc_13F2217:     var_104 = Proc_6_38_E68A98(var_C0)
  loc_13F2225:     Set var_128 = var_12C(CInt(4))
  loc_13F222B:     Call 0.Method_Proc_147_45_13F27B40 (var_104)
  loc_13F2233:     var_12C.Tag = 
  loc_13F2265:     Set var_9C = var_B0(CInt(4))
  loc_13F226B:     Call 0.Method_Proc_147_45_13F27B40 (var_104, "Select Name From GodownMast Where Code='", var_C0)
  loc_13F2273:     -1 = var_B0.Tag
  loc_13F228C:     unk_4950A9.Execute var_128 & var_104 & "'", , 
  loc_13F2297:     Set var_90 = var_128
  loc_13F22C3:     If (var_90.RecordCount > 0) Then
  loc_13F22FC:       Set var_128 = var_12C(CInt(4))
  loc_13F2302:       Call 0.Method_Proc_147_45_13F27B40 (Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name"))))
  loc_13F230A:       var_12C.Text = 
  loc_13F231E:     End If
  loc_13F231E:   End If
  loc_13F2331:   (1).RowCount = 
  loc_13F233B:   var_8A = 1
  loc_13F233E:   ' Referenced from: 13F2771
  loc_13F234D:   If Not(var_88.EOF) Then
  loc_13F235A:     Set var_9C = var_8A(vbNullString)
  loc_13F236F:     Set var_148 = (DGItem.DispID_10000)
  loc_13F2376:     var_D0 = CVar(CLng(var_8A)) 'Long
  loc_13F23AB:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SNo")), CVar(CLng(0)))) 'String
  loc_13F23B2:     LateIdCallSt
  loc_13F23FD:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(1)), CVar(CLng(var_8A)))) 'String
  loc_13F2404:     LateIdCallSt
  loc_13F244F:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RecdUnit")), CVar(CLng(2)), CVar(CLng(var_8A)), var_148)) 'String
  loc_13F2456:     LateIdCallSt
  loc_13F248E:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("RecdQty")), var_148, var_E0)
  loc_13F2497:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F24CF:     LateIdCallSt
  loc_13F2520:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Unit")), CVar(CLng(6)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1)) 'String
  loc_13F2527:     LateIdCallSt
  loc_13F255F:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("QtyRec")), var_148, var_E0, CVar(CLng(3)))
  loc_13F2568:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F25A0:     LateIdCallSt
  loc_13F25DE:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Rate")), var_148, CVar(CStr(Format(var_E0, "0.000"))), 1, 1, CVar(CLng(5)))
  loc_13F25E7:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F261F:     LateIdCallSt
  loc_13F265D:     Proc_6_39_E7C810(var_E0, CVar(var_88.Fields.Item("Amount")), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1, CVar(CLng(7)))
  loc_13F2666:     var_F0 = CVar(CLng(var_8A)) 'Long
  loc_13F269E:     LateIdCallSt
  loc_13F26EF:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Item")), CVar(CLng(9)), CVar(CLng(var_8A)), var_148, CVar(CStr(Format(var_E0, "0.00"))), 1, 1)) 'String
  loc_13F26F6:     LateIdCallSt
  loc_13F2741:     var_E0 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ConvRatio")), CVar(CLng(4)), CVar(CLng(var_8A)), var_148, var_E0, CVar(CLng(8)))) 'String
  loc_13F2748:     LateIdCallSt
  loc_13F275C:     Set var_148 = Nothing 
  loc_13F2766:     var_8A = (var_8A + 1)
  loc_13F276C:     var_88.MoveNext
  loc_13F2771:     GoTo loc_13F233E
  loc_13F2774:   End If
  loc_13F2781:   Set var_9C = var_8A(1)
  loc_13F2792: Else
  loc_13F2792:   Call Proc_147_44_F28D0C(DGItem.DispID_6, var_148, var_E0, var_F0)
  loc_13F2797: End If
  loc_13F2797: Call Proc_147_47_EBE320(var_F0, var_F0)
  loc_13F279C: Exit Sub
  loc_13F27A2: Set var_90 = Nothing
  loc_13F27AA: Set var_94 = Nothing
  loc_13F27AD: ' Referenced from: 13F1DB4
  loc_13F27AD: Proc_6_60_E62BC4(var_F0)
  loc_13F27B2: Exit Sub
End Sub

Public Sub Proc_147_46_EF0980(arg_C) 'EF0980
  'Data Table: 495098
  Dim var_98 As TextBox
  loc_EF08BA: Set var_8C = var_86(var_8E)
  loc_EF08C0: Call 0.Method_Proc_147_46_EF0980C (CByte(0))
  loc_EF08D0: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EF08E6:   Set var_8C = var_98(CInt(var_86))
  loc_EF08EC:   Call 0.Method_Proc_147_46_EF09800 (arg_C)
  loc_EF08F4:   var_98.Enabled = 
  loc_EF0903: Next var_92 'Byte
  loc_EF0916: Set var_8C = var_98(CInt(0))
  loc_EF091C: Call 0.Method_Proc_147_46_EF09800 (0)
  loc_EF0924: var_98.Enabled = 
  loc_EF093D: Set var_8C = var_98(CInt(2))
  loc_EF0943: Call 0.Method_Proc_147_46_EF09800 (0)
  loc_EF094B: var_98.Enabled = 
  loc_EF0964: Set var_8C = var_98(CInt(1))
  loc_EF096A: Call 0.Method_Proc_147_46_EF09800 (0)
  loc_EF0972: var_98.Enabled = 
  loc_EF097E: Exit Sub
End Sub

Public Sub Proc_147_47_EBE320
  'Data Table: 495098
  loc_EBE298: If (CBool(Me.DGDepart.Visible) = &HFF) Then
  loc_EBE2AA:   Me.DGDepart.Visible = False
  loc_EBE2B2: End If
  loc_EBE2CE: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EBE2E0:   Me.DGItem.Visible = False
  loc_EBE2E8: End If
  loc_EBE304: If (CBool(().Visible) = &HFF) Then
  loc_EBE316:   (False).Visible = 
  loc_EBE31E: End If
  loc_EBE31E: Exit Sub
End Sub

Public Sub Proc_147_48_115D8B8
  'Data Table: 495098
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
  loc_115D550: var_90 = global_68
  loc_115D567: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_115D58A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_115D598: Set var_B4 = var_B8(CInt(2))
  loc_115D59E: Call 0.Method_Proc_147_48_115D8B80 (var_E8, var_13C)
  loc_115D5AD: Proc_6_7_F25D88(var_D8, CVar(var_B8))
  loc_115D5B5: var_F8 = -1 & var_D8 
  loc_115D5C9: Me.Connection15.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_115D5D4: Set var_8C = var_140
  loc_115D610: If (var_8C.RecordCount <= 0) Then
  loc_115D62C:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_115D63F:   var_88 = vbNullString
  loc_115D642:   Proc_147_48_115D8B8 = 
  loc_115D648: End If
  loc_115D65C: If (var_8C.RecordCount > 0) Then
  loc_115D69B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_115D6B8:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_115D6C9:     var_9C = CStr(var_B8.Value)
  loc_115D6E4:     Set var_B4 = var_B8(CInt(1))
  loc_115D6EA:     Call 0.Method_Proc_147_48_115D8B80 (var_A0)
  loc_115D6F2:      = var_B8.Text
  loc_115D700:     var_94 = CLng(Val(var_A0))
  loc_115D710:   Else
  loc_115D73B:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_115D762:     var_B8 = var_8C.Fields.Item("start_srl_no")
  loc_115D777:     var_D8 = (var_B8.Value + 1)
  loc_115D77D:     var_94 = CLng(var_D8)
  loc_115D78E:   End If
  loc_115D78E: End If
  loc_115D7B9: var_C8 = Space((5 - Len(var_90)))
  loc_115D7C1: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_B8.Value)
  loc_115D7CB: var_F8 = (var_E8 + CVar(var_9C))
  loc_115D7DC: var_118 = Space((5 - Len(var_9C)))
  loc_115D7E4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_115D7FA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_115D802: var_188 = (var_13C + var_178)
  loc_115D80E: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_115D813: var_98 = CStr(var_1A8)
  loc_115D843: var_94(var_9C).Caption = 
  loc_115D859: Set var_B4 = var_B8(CInt(0))
  loc_115D85F: Call 0.Method_Proc_147_48_115D8B80 (var_98)
  loc_115D867: var_B8.Text = 
  loc_115D886: Set var_B4 = var_B8(CInt(1))
  loc_115D88C: Call 0.Method_Proc_147_48_115D8B80 (CStr(var_94))
  loc_115D894: var_B8.Text = 
  loc_115D8A6: var_88 = var_98
  loc_115D8AE: Set var_8C = Nothing
  loc_115D8B1: Proc_147_48_115D8B8 = 
End Sub

Public Sub Proc_147_49_110CF0C
  'Data Table: 495098
  Dim var_A0 As String
  Dim var_E8 As Variant
  Dim var_C8 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_B4 As Fields15
  Dim var_B8 As Variant
  Dim var_94 As Long
  Dim var_D8 As Variant
  Dim var_13C As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  loc_110CC10: var_90 = global_72
  loc_110CC27: var_A0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_110CC4A: var_E8 = CVar(var_A0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") 'String
  loc_110CC58: Set var_B4 = var_B8(CInt(2))
  loc_110CC5E: Call 0.Method_Proc_147_49_110CF0C0 (var_E8, var_13C)
  loc_110CC6D: Proc_6_7_F25D88(var_D8, CVar(var_B8))
  loc_110CC75: var_F8 = -1 & var_D8 
  loc_110CC89: Me.Connection15.Execute CStr(var_F8 & " Order By VP.Date_From DESC"), var_140, 
  loc_110CC94: Set var_8C = var_140
  loc_110CCD0: If (var_8C.RecordCount <= 0) Then
  loc_110CCEC:   MsgBox("Invalid Date", 0, var_D8, var_E8, var_F8)
  loc_110CCFF:   var_88 = vbNullString
  loc_110CD02:   Proc_147_49_110CF0C = 
  loc_110CD08: End If
  loc_110CD1C: If (var_8C.RecordCount > 0) Then
  loc_110CD5B:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_110CD78:     var_B8 = var_8C.Fields.Item("Prefix")
  loc_110CD89:     var_9C = CStr(var_B8.Value)
  loc_110CDA4:     Set var_B4 = var_B8(CInt(1))
  loc_110CDAA:     Call 0.Method_Proc_147_49_110CF0C0 (var_A0)
  loc_110CDB2:      = var_B8.Text
  loc_110CDC0:     var_94 = CLng(Val(var_A0))
  loc_110CDD0:   Else
  loc_110CDFB:     var_9C = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_110CE37:     var_D8 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_110CE3D:     var_94 = CLng(var_D8)
  loc_110CE4E:   End If
  loc_110CE4E: End If
  loc_110CE79: var_C8 = Space((5 - Len(var_90)))
  loc_110CE81: var_E8 = (CVar(var_94 & Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_110CE8B: var_F8 = (var_E8 + CVar(var_9C))
  loc_110CE9C: var_118 = Space((5 - Len(var_9C)))
  loc_110CEA4: var_13C = (var_F8 + var_F8 & " Order By VP.Date_From DESC")
  loc_110CEBA: var_178 = Space((8 - Len(CStr(var_94))))
  loc_110CEC2: var_188 = (var_13C + var_178)
  loc_110CECE: var_1A8 = (var_188 + CVar(CStr(var_94)))
  loc_110CEF9: var_88 = CStr(var_1A8)
  loc_110CF01: Set var_8C = Nothing
  loc_110CF04: Proc_147_49_110CF0C = var_94
  loc_110CF0A: Exit Sub
End Sub

Public Sub Proc_147_50_11C255C
  'Data Table: 495098
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_11C2107: (CVar(CDbl(6585))).Width = 
  loc_11C2122: (CVar(CDbl(1450))).Top = 
  loc_11C213D: (CVar(CDbl(3300))).Height = 
  loc_11C2158: Me.DGItem.Left = CVar(CDbl(2800))
  loc_11C2173: Me.DGItem.Top = CVar(CDbl(1200))
  loc_11C217F: Set var_AC = ()
  loc_11C2196: global_96 = CStr(CLng(DGItem.DispID_FFFFFE0B))
  loc_11C21A0: var_94 = &HA
  loc_11C21B4: var_94 = CVar(CLng(0)) 'Long
  loc_11C21B9: var_D0 = &HFA
  loc_11C21C5: LateIdCallSt
  loc_11C21CD: var_94 = 0
  loc_11C21D9: var_D0 = CVar(CLng(1)) 'Long
  loc_11C21DE: var_F0 = "Item Name"
  loc_11C21E7: LateIdCallSt
  loc_11C21F2: var_94 = CVar(CLng(1)) 'Long
  loc_11C21FD: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C2204: LateIdCallSt
  loc_11C220F: var_94 = CVar(CLng(1)) 'Long
  loc_11C2214: var_D0 = &HD48
  loc_11C2220: LateIdCallSt
  loc_11C2228: var_94 = 0
  loc_11C2234: var_D0 = CVar(CLng(2)) 'Long
  loc_11C2239: var_F0 = "Unit"
  loc_11C2242: LateIdCallSt
  loc_11C224D: var_94 = CVar(CLng(2)) 'Long
  loc_11C2258: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C225F: LateIdCallSt
  loc_11C226A: var_94 = CVar(CLng(2)) 'Long
  loc_11C226F: var_D0 = &H44C
  loc_11C227B: LateIdCallSt
  loc_11C2283: var_94 = 0
  loc_11C228F: var_D0 = CVar(CLng(3)) 'Long
  loc_11C2294: var_F0 = "Iss. Qty"
  loc_11C229D: LateIdCallSt
  loc_11C22A8: var_94 = CVar(CLng(3)) 'Long
  loc_11C22B3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C22BA: LateIdCallSt
  loc_11C22C5: var_94 = CVar(CLng(3)) 'Long
  loc_11C22D0: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C22D7: LateIdCallSt
  loc_11C22E2: var_94 = CVar(CLng(3)) 'Long
  loc_11C22E7: var_D0 = &H578
  loc_11C22F3: LateIdCallSt
  loc_11C22FB: var_94 = 0
  loc_11C2307: var_D0 = CVar(CLng(4)) 'Long
  loc_11C230C: var_F0 = "Conv. Factor"
  loc_11C2315: LateIdCallSt
  loc_11C2320: var_94 = CVar(CLng(4)) 'Long
  loc_11C232B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2332: LateIdCallSt
  loc_11C233D: var_94 = CVar(CLng(4)) 'Long
  loc_11C2348: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C234F: LateIdCallSt
  loc_11C235A: var_94 = CVar(CLng(4)) 'Long
  loc_11C235F: var_D0 = 0
  loc_11C236B: LateIdCallSt
  loc_11C2373: var_94 = 0
  loc_11C237F: var_D0 = CVar(CLng(5)) 'Long
  loc_11C2384: var_F0 = "Wt. Qty"
  loc_11C238D: LateIdCallSt
  loc_11C2398: var_94 = CVar(CLng(5)) 'Long
  loc_11C23A3: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C23AA: LateIdCallSt
  loc_11C23B5: var_94 = CVar(CLng(5)) 'Long
  loc_11C23C0: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C23C7: LateIdCallSt
  loc_11C23D2: var_94 = CVar(CLng(5)) 'Long
  loc_11C23D7: var_D0 = 0
  loc_11C23E3: LateIdCallSt
  loc_11C23EB: var_94 = 0
  loc_11C23F7: var_D0 = CVar(CLng(6)) 'Long
  loc_11C23FC: var_F0 = "Wt.Unit"
  loc_11C2405: LateIdCallSt
  loc_11C2410: var_94 = CVar(CLng(6)) 'Long
  loc_11C241B: var_D0 = CVar(CInt(1)) 'Integer
  loc_11C2422: LateIdCallSt
  loc_11C242D: var_94 = CVar(CLng(6)) 'Long
  loc_11C2432: var_D0 = 0
  loc_11C243E: LateIdCallSt
  loc_11C2446: var_94 = 0
  loc_11C2452: var_D0 = CVar(CLng(7)) 'Long
  loc_11C2457: var_F0 = "Rate"
  loc_11C2460: LateIdCallSt
  loc_11C246B: var_94 = CVar(CLng(7)) 'Long
  loc_11C2476: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C247D: LateIdCallSt
  loc_11C2488: var_94 = CVar(CLng(7)) 'Long
  loc_11C2493: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C249A: LateIdCallSt
  loc_11C24A5: var_94 = CVar(CLng(7)) 'Long
  loc_11C24AA: var_D0 = 0
  loc_11C24B6: LateIdCallSt
  loc_11C24BE: var_94 = 0
  loc_11C24CA: var_D0 = CVar(CLng(8)) 'Long
  loc_11C24CF: var_F0 = "Amount"
  loc_11C24D8: LateIdCallSt
  loc_11C24E3: var_94 = CVar(CLng(8)) 'Long
  loc_11C24EE: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C24F5: LateIdCallSt
  loc_11C2500: var_94 = CVar(CLng(8)) 'Long
  loc_11C250B: var_D0 = CVar(CInt(7)) 'Integer
  loc_11C2512: LateIdCallSt
  loc_11C251D: var_94 = CVar(CLng(8)) 'Long
  loc_11C2522: var_D0 = 0
  loc_11C252E: LateIdCallSt
  loc_11C2539: var_94 = CVar(CLng(9)) 'Long
  loc_11C253E: var_D0 = 0
  loc_11C254A: LateIdCallSt
  loc_11C2554: Set var_AC = Nothing 
  loc_11C2558: Exit Sub
End Sub

Public Sub Proc_147_51_F722BC
  'Data Table: 495098
  Dim var_22C As Double
  Dim var_234 As Double
  Dim var_1D0 As Variant
  Dim var_1F0 As Variant
  Dim arg_2001 As Double
  loc_F721B6: ().InsertRows , 
  loc_F721D0: Set var_DC = CVar(CLng())(CVar(CLng(7)))
  loc_F721E9: var_22C = Val(CStr(DGItem.DispID_41))
  loc_F721F6: (var_22C).InsertRows , 
  loc_F72210: Set var_148 = CVar(CLng())(CVar(CLng(3)))
  loc_F72229: var_234 = Val(CStr(DGItem.DispID_41))
  loc_F72236: (var_234).InsertRows , 
  loc_F7223F: var_1D0 = CVar(CLng()) 'Long
  loc_F72247: var_1F0 = CVar(CLng(8)) 'Long
  loc_F72286: LateIdCallSt
  loc_F722B9: Exit Sub
  loc_F722BA: arg_2001 = 1(CVar(CStr(Format(CVar((var_22C * var_234)), "0.00"))))
End Sub

Public Sub Proc_147_52_ED1D60
  'Data Table: 495098
  loc_ED1CC0: Call Proc_147_47_EBE320()
  loc_ED1CD0: Set var_88 = var_8C(CInt(2))
  loc_ED1CD6: Call 0.Method_Proc_147_52_ED1D600 ()
  loc_ED1CDE: var_94 = "Date"
  loc_ED1CFF: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_ED1D02:   Exit Sub
  loc_ED1D03: End If
  loc_ED1D3A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED1D3D:   Call TopCtrl1_UnknownEvent_19()
  loc_ED1D45: Else
  loc_ED1D4B:   Call 0.Method_arg_1E8 (var_88)
  loc_ED1D53:   Call var_88.SetFocus
  loc_ED1D5C: End If
  loc_ED1D5C: Exit Sub
End Sub
