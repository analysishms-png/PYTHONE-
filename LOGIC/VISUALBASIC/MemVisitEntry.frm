VERSION 5.00
Begin VB.Form MemVisitEntry
  Caption = "Member Visit Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4680
  ClientHeight = 3195
  Begin BtnEnh CmdOutAll
    Left = 14610
    Top = 6240
    Width = 2085
    Height = 420
    TabIndex = 6
  End
  Begin BtnEnh Cmd
    Index = 1
    Left = 14595
    Top = 4500
    Width = 2085
    Height = 1725
    TabIndex = 5
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 14610
    Top = 2745
    Width = 2085
    Height = 1725
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15525
    Top = 90
    Width = 1350
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid GridSel
    Left = -15
    Top = 0
    Width = 14505
    Height = 7005
    TabIndex = 0
  End
  Begin BtnEnh CmdExit
    Left = 14595
    Top = 6645
    Width = 2100
    Height = 420
    TabIndex = 7
  End
  Begin Image ImgPhoto
    Left = 14610
    Top = 435
    Width = 2265
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Member Photo"
    ForeColor = &H80&
    Left = 15075
    Top = 1500
    Width = 1275
    Height = 240
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "For Date :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 14565
    Top = 120
    Width = 930
    Height = 240
    TabIndex = 2
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

Attribute VB_Name = "MemVisitEntry"


Private Sub CmdOutAll_UnknownEvent_9 'F7D410
  'Data Table: 42CADC
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_168 As Variant
  Dim unk_42CAEC As Connection15
  loc_F7D303: var_B8 = "Member Visit Entry"
  loc_F7D338: If (MsgBox(CVar("R U Sure ???" & vbCrLf & "ALL MEMBERS ARE OUT."), &H44, var_B8, var_D8, var_F8) = 6) Then
  loc_F7D346:   Proc_183_7_EB0C44(var_B8)
  loc_F7D356:   Proc_183_8_EB0AA4(var_118)
  loc_F7D3AB:   var_168 = "Update MemVisitEntry Set OUTDate=" & var_B8 & ", U_EntDt=" & var_118 & ", OUTTime='" & Left(CVar(Proc_6_16_EF29FC(CVar(Proc_6_14_EF349C(CVar(Proc_6_15_EF2C1C()))))), 5) 
  loc_F7D3D5:   unk_42CAEC.Execute CStr(var_168 & "' Where Logsite_Code='" & CVar(MemVar_1F92078) & "' And OUTDate IS NULL"), var_1E8, -1
  loc_F7D405:   Call Proc_276_6_11A31F4(var_1EC)
  loc_F7D40A:   Call Proc_276_9_123DAA0()
  loc_F7D40F: End If
  loc_F7D40F: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'EB0698
  'Data Table: 42CADC
  loc_EB060C: On Error Goto loc_EB0692
  loc_EB0615: var_88 = global_52
  loc_EB0620: If (var_88 = "SmartCard_ACR") Then
  loc_EB0629:   Call Proc_276_8_F4D674(Cancel)
  loc_EB0631: Else
  loc_EB0639:   If (var_88 = "NBSD_Mifare") Then
  loc_EB0655:     MsgBox("Procedure Not Defined!", &H40, var_CC, var_EC, var_10C)
  loc_EB0668:   Else
  loc_EB0681:     MsgBox("Smart Card Interface Not Defined!", &H40, var_CC, var_EC, var_10C)
  loc_EB0691:   End If
  loc_EB0691: End If
  loc_EB0691: Exit Sub
  loc_EB0692: ' Referenced from: EB060C
  loc_EB0692: Proc_6_60_E62BC4()
  loc_EB0697: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EB5174
  'Data Table: 42CADC
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  loc_EB50EF: var_86 = KeyAscii
  loc_EB50FA: If (var_86 = CInt(0)) Then
  loc_EB5103:   If (arg_10 = &HD) Then
  loc_EB5108:     arg_10 = 0
  loc_EB5118:     Set var_8C = Me.Txt
  loc_EB511E:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, var_94)
  loc_EB5126:     arg_10 = var_90.Text
  loc_EB5144:     Set var_9C = Me.Txt
  loc_EB514A:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0)
  loc_EB5152:     var_A0.Text = Proc_6_34_14ECF20(var_94)
  loc_EB5169:     Call Proc_276_6_11A31F4(var_86)
  loc_EB516E:     Call Proc_276_9_123DAA0()
  loc_EB5173:   End If
  loc_EB5173: End If
  loc_EB5173: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E0B470
  'Data Table: 42CADC
  loc_E0B46A: If (Cancel = CInt(0)) Then
  loc_E0B46D: End If
  loc_E0B46D: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15848
  'Data Table: 42CADC
  loc_E1583D: Me.Global.Unload Me
  loc_E15845: Exit Sub
End Sub

Private Sub Form_Load() 'FB26B8
  'Data Table: 42CADC
  Dim var_AC As Variant
  Dim unk_42CAEC As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_CC As TextBox
  loc_FB252F: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FB2547: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F921B0))
  loc_FB2562: Me.GridSel.Height = CVar(CDbl(7000))
  loc_FB2577: Set var_AC = Me.GridSel
  loc_FB257D: var_AC.Width = CVar(CDbl(14500))
  loc_FB25A9: unk_42CAEC.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F92078 & "'", var_C4, -1
  loc_FB25B4: Set var_88 = var_AC
  loc_FB25D8: If (var_88.RecordCount > 0) Then
  loc_FB25EA:   var_AC = var_88.Fields
  loc_FB25F2:   var_CC = var_AC.Item("Interface")
  loc_FB2609:   global_52 = Proc_6_38_E68A98(CVar(var_CC))
  loc_FB2619: Else
  loc_FB2632:   MsgBox("Member EnvironMent Settings NOT SET!", 0, var_DC, var_FC, var_11C)
  loc_FB2642: End If
  loc_FB2642: Call Proc_276_6_11A31F4(var_AC)
  loc_FB2681: Set var_AC = Me.Txt
  loc_FB2687: Call 0.Method_Form_Load0 (CInt(0), var_CC, CStr(Format(Date, "dd/MMM/yyyy")))
  loc_FB268F: var_CC.Text = 1
  loc_FB26A7: Call Proc_276_9_123DAA0(1)
  loc_FB26B1: Set var_88 = Nothing
  loc_FB26B4: Exit Sub
End Sub

Public Sub Proc_276_6_11A31F4
  'Data Table: 42CADC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11A2DDA: Me.GridSel.Rows = 1
  loc_11A2DEE: Me.GridSel.Cols = 9
  loc_11A2DF3: var_98 = 0
  loc_11A2DFF: var_BC = CVar(CLng(0)) 'Long
  loc_11A2E04: var_DC = "SNo"
  loc_11A2E0D: LateIdCallSt
  loc_11A2E18: var_98 = CVar(CLng(0)) 'Long
  loc_11A2E1D: var_BC = &H1F4
  loc_11A2E29: LateIdCallSt
  loc_11A2E31: var_98 = 0
  loc_11A2E3D: var_BC = CVar(CLng(1)) 'Long
  loc_11A2E42: var_DC = "Member Code"
  loc_11A2E4B: LateIdCallSt
  loc_11A2E56: var_98 = CVar(CLng(1)) 'Long
  loc_11A2E5B: var_BC = 0
  loc_11A2E67: LateIdCallSt
  loc_11A2E6F: var_98 = 0
  loc_11A2E7B: var_BC = CVar(CLng(2)) 'Long
  loc_11A2E80: var_DC = "Card No"
  loc_11A2E89: LateIdCallSt
  loc_11A2E94: var_98 = CVar(CLng(2)) 'Long
  loc_11A2E9F: var_BC = CVar(CInt(4)) 'Integer
  loc_11A2EA6: LateIdCallSt
  loc_11A2EB1: var_98 = CVar(CLng(2)) 'Long
  loc_11A2EBC: var_BC = CVar(CInt(4)) 'Integer
  loc_11A2EC3: LateIdCallSt
  loc_11A2ECE: var_98 = CVar(CLng(2)) 'Long
  loc_11A2ED3: var_BC = &H3E8
  loc_11A2EDF: LateIdCallSt
  loc_11A2EE7: var_98 = 0
  loc_11A2EF3: var_BC = CVar(CLng(3)) 'Long
  loc_11A2EF8: var_DC = "Member Name"
  loc_11A2F01: LateIdCallSt
  loc_11A2F0C: var_98 = CVar(CLng(3)) 'Long
  loc_11A2F17: var_BC = CVar(CInt(1)) 'Integer
  loc_11A2F1E: LateIdCallSt
  loc_11A2F29: var_98 = CVar(CLng(3)) 'Long
  loc_11A2F34: var_BC = CVar(CInt(1)) 'Integer
  loc_11A2F3B: LateIdCallSt
  loc_11A2F46: var_98 = CVar(CLng(3)) 'Long
  loc_11A2F4B: var_BC = &HC80
  loc_11A2F57: LateIdCallSt
  loc_11A2F5F: var_98 = 0
  loc_11A2F6B: var_BC = CVar(CLng(4)) 'Long
  loc_11A2F70: var_DC = "Address"
  loc_11A2F79: LateIdCallSt
  loc_11A2F84: var_98 = CVar(CLng(4)) 'Long
  loc_11A2F8F: var_BC = CVar(CInt(1)) 'Integer
  loc_11A2F96: LateIdCallSt
  loc_11A2FA1: var_98 = CVar(CLng(4)) 'Long
  loc_11A2FAC: var_BC = CVar(CInt(1)) 'Integer
  loc_11A2FB3: LateIdCallSt
  loc_11A2FBE: var_98 = CVar(CLng(4)) 'Long
  loc_11A2FC3: var_BC = &H1450
  loc_11A2FCF: LateIdCallSt
  loc_11A2FD7: var_98 = 0
  loc_11A2FE3: var_BC = CVar(CLng(5)) 'Long
  loc_11A2FE8: var_DC = "IN DATE"
  loc_11A2FF1: LateIdCallSt
  loc_11A2FFC: var_98 = CVar(CLng(5)) 'Long
  loc_11A3007: var_BC = CVar(CInt(1)) 'Integer
  loc_11A300E: LateIdCallSt
  loc_11A3019: var_98 = CVar(CLng(5)) 'Long
  loc_11A3024: var_BC = CVar(CInt(1)) 'Integer
  loc_11A302B: LateIdCallSt
  loc_11A3036: var_98 = CVar(CLng(5)) 'Long
  loc_11A303B: var_BC = &H4B0
  loc_11A3047: LateIdCallSt
  loc_11A304F: var_98 = 0
  loc_11A305B: var_BC = CVar(CLng(6)) 'Long
  loc_11A3060: var_DC = "IN TIME"
  loc_11A3069: LateIdCallSt
  loc_11A3074: var_98 = CVar(CLng(6)) 'Long
  loc_11A307F: var_BC = CVar(CInt(4)) 'Integer
  loc_11A3086: LateIdCallSt
  loc_11A3091: var_98 = CVar(CLng(6)) 'Long
  loc_11A309C: var_BC = CVar(CInt(4)) 'Integer
  loc_11A30A3: LateIdCallSt
  loc_11A30AE: var_98 = CVar(CLng(6)) 'Long
  loc_11A30B3: var_BC = &H384
  loc_11A30BF: LateIdCallSt
  loc_11A30C7: var_98 = 0
  loc_11A30D3: var_BC = CVar(CLng(7)) 'Long
  loc_11A30D8: var_DC = "OUT DATE"
  loc_11A30E1: LateIdCallSt
  loc_11A30EC: var_98 = CVar(CLng(7)) 'Long
  loc_11A30F7: var_BC = CVar(CInt(1)) 'Integer
  loc_11A30FE: LateIdCallSt
  loc_11A3109: var_98 = CVar(CLng(7)) 'Long
  loc_11A3114: var_BC = CVar(CInt(1)) 'Integer
  loc_11A311B: LateIdCallSt
  loc_11A3126: var_98 = CVar(CLng(7)) 'Long
  loc_11A312B: var_BC = &H4B0
  loc_11A3137: LateIdCallSt
  loc_11A313F: var_98 = 0
  loc_11A314B: var_BC = CVar(CLng(8)) 'Long
  loc_11A3150: var_DC = "OUT TIME"
  loc_11A3159: LateIdCallSt
  loc_11A3164: var_98 = CVar(CLng(8)) 'Long
  loc_11A316F: var_BC = CVar(CInt(4)) 'Integer
  loc_11A3176: LateIdCallSt
  loc_11A3181: var_98 = CVar(CLng(8)) 'Long
  loc_11A318C: var_BC = CVar(CInt(4)) 'Integer
  loc_11A3193: LateIdCallSt
  loc_11A319E: var_98 = CVar(CLng(8)) 'Long
  loc_11A31A3: var_BC = &H47E
  loc_11A31AF: LateIdCallSt
  loc_11A31B7: var_98 = "1"
  loc_11A31C1: Set var_AC = Me.GridSel
  loc_11A31E5: Me.GridSel.FixedRows = 1
  loc_11A31EF: Set var_88 = Nothing 
  loc_11A31F3: Exit Sub
End Sub

Public Sub Proc_276_7_1187A24(arg_C, arg_10, arg_14) '1187A24
  'Data Table: 42CADC
  Dim var_94 As String
  Dim unk_42CAEC As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Variant
  Dim var_14C As Variant
  Dim var_1AC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_19C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_C8 As Fields15
  loc_11876A7: var_88 = arg_C
  loc_11876C5: var_94 = "Select * From MemVisitEntry Where SerialNo=(Select Top 1 SerialNo From MemVisitEntry Where LogSite_Code='" & MemVar_1F92078 & "' And MemCode='"
  loc_11876EA: unk_42CAEC.Execute var_94 & var_88 & "' And CardRegId='" & arg_10 & "' Order By SerialNo Desc) And INDate IS NOT NULL And OUTDate IS NULL", var_C4, -1
  loc_118772B: If (Ucase(arg_14) = "IN") Then
  loc_1187742:   If (var_C8.RecordCount > 0) Then
  loc_118775E:     MsgBox("Member Is Already IN", &H10, var_E8, var_10C, var_12C)
  loc_1187773:     Set var_8C = Nothing
  loc_1187776:     Exit Sub
  loc_1187777:   End If
  loc_1187782:   Proc_183_7_EB0C44(var_E8)
  loc_1187797:   var_14C = CVar(Proc_6_16_EF29FC(CVar(Proc_6_15_EF2C1C(var_C8)))) 'String
  loc_11877A7:   var_1AC = CVar(Proc_6_14_EF349C()) 'String
  loc_11877AD:   Proc_183_8_EB0AA4(var_1BC)
  loc_11877CD:   var_10C = CVar("Insert into MemVisitEntry(MemCode,INDate,INTime,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,CardRegId) Values('" & var_88 & "',") 'String
  loc_11877D3:   var_12C = var_10C & var_E8 
  loc_1187822:   var_22C = var_12C & ",'" & Left(var_14C, 5) & "','A','" & CVar(MemVar_1F920C8) & "'," & var_1BC & ",'" & CVar(MemVar_1F92070) & "','" 
  loc_118782C:   var_24C = var_22C & CVar(MemVar_1F92078) 
  loc_1187856:   unk_42CAEC.Execute CStr(var_24C & "','" & CVar(arg_10) & "')"), var_2CC, -1
  loc_1187899: Else
  loc_11878B7:   If (Ucase(arg_14) = "OUT") Then
  loc_11878CE:     If (var_8C.RecordCount = 0) Then
  loc_11878EA:       MsgBox("Member Is Not IN", &H10, var_E8, var_10C, var_12C)
  loc_11878FF:       Set var_8C = Nothing
  loc_1187902:       Exit Sub
  loc_1187903:     End If
  loc_118790E:     Proc_183_7_EB0C44(var_E8, CVar(Proc_6_15_EF2C1C(var_C8)))
  loc_118791E:     Proc_183_8_EB0AA4(var_14C)
  loc_118799A:     var_19C = "Update MemVisitEntry Set OUTDate=" & var_E8 & ", U_EntDt=" & var_14C & ", OUTTime='" & Left(CVar(Proc_6_16_EF29FC(CVar(Proc_6_14_EF349C(var_1AC)))), 5) 
  loc_11879C6:     var_22C = var_19C & "' Where SerialNo=" & var_8C.Fields.Item("SerialNo").Value & " and Logsite_Code='" & CVar(MemVar_1F92078) & "'" 
  loc_11879D4:     unk_42CAEC.Execute CStr(var_22C), var_24C, -1
  loc_1187A10:   End If
  loc_1187A10: End If
  loc_1187A10: Call Proc_276_6_11A31F4(var_2D4)
  loc_1187A15: Call Proc_276_9_123DAA0()
  loc_1187A1F: Set var_8C = Nothing
  loc_1187A22: Exit Sub
End Sub

Public Sub Proc_276_8_F4D674(arg_C) 'F4D674
  'Data Table: 42CADC
  Dim var_13A As Integer
  loc_F4D5DA: If (Proc_275_12_130A7A4(2, 0, var_88, 0, 0) = &HFF) Then
  loc_F4D5FE:   MsgBox("Card Varified", &H40, "Membership Varification", var_118, var_138)
  loc_F4D611:   var_13A = arg_C
  loc_F4D61C:   If (var_13A = CInt(0)) Then
  loc_F4D62E:     Call Proc_276_7_1187A24(var_8C, var_88, "IN")
  loc_F4D639:   Else
  loc_F4D641:     If (var_13A = CInt(1)) Then
  loc_F4D653:       Call Proc_276_7_1187A24(var_8C, var_88, "OUT")
  loc_F4D65B:     End If
  loc_F4D65B:   End If
  loc_F4D664:   Call Proc_276_10_1080B4C(var_88, var_13A, 0, 0)
  loc_F4D66C: End If
  loc_F4D66E: var_14C = Nothing 'Address
  loc_F4D672: Exit Sub
End Sub

Public Sub Proc_276_9_123DAA0
  'Data Table: 42CADC
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_148 As String
  Dim unk_42CAEC As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_16C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_158 As Variant
  Dim var_94 As MSHFlexGrid
  loc_123D591: var_D4 = "Select S.Name MemName,S.CardNo, S.Addr Address, M.* From (MemVisitEntry M Left Join SmartCardRegistration S On M.CardRegId=S.Code) Where Cast(Convert(Varchar(10),M.U_EntDt,120) As DateTime)="
  loc_123D5A1: Set var_90 = Me.Txt
  loc_123D5A7: Call 0.Method_Proc_276_9_123DAA00 (CInt(0), var_94, var_D4)
  loc_123D5C1: Proc_6_7_F25D88(var_C4, Trim(CVar(var_94)), var_168)
  loc_123D5C9: var_E4 = -1 & var_C4 
  loc_123D5F3: unk_42CAEC.Execute CStr(var_E4 & " And M.LogSite_Code='" & CVar(MemVar_1F92078) & "' Order By M.INDate,M.INTime"), var_16C, 
  loc_123D5FE: Set var_88 = var_16C
  loc_123D632: If (var_88.RecordCount = 0) Then
  loc_123D648:   Me.GridSel.Rows = 2
  loc_123D663:   Me.GridSel.FixedRows = 1
  loc_123D66B:   Exit Sub
  loc_123D66C: End If
  loc_123D67F: Me.GridSel.Row = 1
  loc_123D687: ' Referenced from: 123DA6F
  loc_123D696: If Not(var_88.EOF) Then
  loc_123D69D:   Set var_178 = Me.GridSel
  loc_123D6B3:   var_F4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D6E8:   var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(2)))) 'String
  loc_123D6EF:   LateIdCallSt
  loc_123D74F:   var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MemName")), CVar(CLng(3)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_123D756:   LateIdCallSt
  loc_123D7BD:   LateIdCallSt
  loc_123D7FD:   var_148 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("INDate")), var_178, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Address")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_178)), CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Address")), CVar(CLng(4)), CVar(CLng(Me.GridSel.Row)), var_178)))
  loc_123D813:   var_114 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D84E:   LateIdCallSt
  loc_123D8B7:   var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("INTime")), CVar(CLng(6)), CVar(CLng(Me.GridSel.Row)), var_178, CVar(CStr(Format(CVar(var_148), "dd/mmm/yyyy"))), 1)) 'String
  loc_123D8BE:   LateIdCallSt
  loc_123D914:   var_114 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_123D91C:   var_158 = CVar(CLng(7)) 'Long
  loc_123D93F:   var_E4 = Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("OUTDate")), var_178, "dd/mmm/yyyy", 1, CVar(CLng(5)))), "dd/mmm/yyyy")
  loc_123D94F:   LateIdCallSt
  loc_123D9B8:   var_C4 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("OUTTime")), CVar(CLng(8)), CVar(CLng(Me.GridSel.Row)), var_178, CVar(CStr(var_E4)), 1, 1)) 'String
  loc_123D9BF:   LateIdCallSt
  loc_123D9D9:   Set var_178 = Nothing 
  loc_123D9E0:   var_88.MoveNext
  loc_123D9F6:   If (var_88.EOF = 0) Then
  loc_123DA14:     var_B4 = CVar(CStr((CLng(Me.GridSel.Row) + 1))) 'String
  loc_123DA1C:     Set var_94 = Me.GridSel
  loc_123DA51:     var_D4 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_123DA60:     Me.GridSel.Row = "OUTTime"
  loc_123DA6F:   End If
  loc_123DA6F:   GoTo loc_123D687
  loc_123DA72: End If
  loc_123DA85: Me.GridSel.FixedRows = 1
  loc_123DA92: Set var_88 = Nothing
  loc_123DA9A: Set var_8C = Nothing
  loc_123DA9D: Exit Sub
End Sub

Public Sub Proc_276_10_1080B4C(arg_C) '1080B4C
  'Data Table: 42CADC
  Dim var_CC As Variant
  Dim unk_42CAEC As Connection15
  Dim var_B8 As Variant
  Dim var_BC As Fields15
  Dim var_D0 As Variant
  Dim var_A4 As Variant
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_B4 As Variant
  loc_10808D6: var_CC = 0
  loc_1080903: unk_42CAEC.Execute "Select IsNull(Max(PicPath),'') From MemberFamily Where CardRegId='" & arg_C & "'", var_B4, -1
  loc_1080913: var_CC = var_BC.Item(var_BC)
  loc_108091B: var_D0 = var_D0.Value
  loc_1080924: var_8C = CStr(var_E0)
  loc_108094B: var_100 = IsNull(var_8C)
  loc_1080952: var_CC = var_8C
  loc_1080962: var_F0 = vbNullString
  loc_1080979: If CBool(var_100 Or (Trim(var_CC) = var_F0)) Then
  loc_108099A:   Me.Global.LoadPicture var_A4, var_CC, var_F0, var_100, var_120
  loc_10809AF:   Me.ImgPhoto.Picture = var_B8.Fields
  loc_10809C8:   Me.ImgPhoto.Tag = vbNullString
  loc_10809D3: Else
  loc_10809D6:   var_A4 = var_8C
  loc_10809E6:   var_F0 = var_8C
  loc_1080A11:   var_CC = "DAT"
  loc_1080A39:   var_100 = "AVI"
  loc_1080A58:   If CBool((Ucase(Right(Trim(var_A4), 3)) = var_CC) Or (Ucase(Right(Trim(var_F0), 3)) = var_100)) Then
  loc_1080A67:     Me.ImgPhoto.Visible = False
  loc_1080A72:   Else
  loc_1080A7F:     Me.ImgPhoto.Tag = var_8C
  loc_1080A93:     Call 0.Method_Proc_276_10_1080B4C4 (var_8C, var_182)
  loc_1080A9B:     If var_182 Then
  loc_1080AB8:       Set var_B8 = Me.ImgPhoto
  loc_1080AD0:       Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A4, var_CC, var_F0, var_100
  loc_1080AE5:       Me.ImgPhoto.Picture = var_BC
  loc_1080AFA:       Set var_B8 = Me.ImgPhoto
  loc_1080B00:       var_B8.Refresh
  loc_1080B0B:     Else
  loc_1080B29:       Me.Global.LoadPicture var_A4, var_CC, var_F0, var_100, var_120
  loc_1080B3E:       Me.ImgPhoto.Picture = var_B8
  loc_1080B4A:     End If
  loc_1080B4A:   End If
  loc_1080B4A: End If
  loc_1080B4A: Exit Sub
End Sub
