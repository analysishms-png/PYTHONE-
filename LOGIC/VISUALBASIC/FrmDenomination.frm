VERSION 5.00
Begin VB.Form FrmDenomination
  Caption = "Denomination Detail"
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 450
    TabIndex = 10
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 1755
    Top = 1155
    Width = 1845
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
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
  Begin Frame FrmList
    Left = 9630
    Top = 6840
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 30
      Width = 2415
      Height = 1800
      TabIndex = 6
    End
  End
  Begin CheckBox ChkSetDeno
    Caption = "Set New Denomination Format"
    Left = 5730
    Top = 960
    Width = 3435
    Height = 375
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 510
    Top = 1470
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 1755
    Top = 840
    Width = 1845
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid FGrid
    Left = 495
    Top = 1485
    Width = 8670
    Height = 6000
    TabIndex = 3
  End
  Begin Label Lbl
    Caption = "User ID :"
    Index = 1
    ForeColor = &HFF0000&
    Left = 525
    Top = 1155
    Width = 1425
    Height = 270
    TabIndex = 9
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
  Begin Label lblSerialNo
    Left = 510
    Top = 480
    Width = 1380
    Height = 270
    TabIndex = 7
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Date :"
    Index = 0
    ForeColor = &HFF0000&
    Left = 525
    Top = 840
    Width = 1425
    Height = 270
    TabIndex = 0
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

Attribute VB_Name = "FrmDenomination"

Private global_60 As Variant
Private global_84 As Integer
Private global_56 As Integer

Private Sub TopCtrl1_UnknownEvent_A 'EB0910
  'Data Table: 463FD0
  Dim var_94 As TextBox
  loc_EB089F: Call Proc_222_39_DFBF08(Proc_5_1_100CB50("ADD", Me))
  loc_EB08AA: Call Proc_222_38_126E3D8(global_52)
  loc_EB08AF: Call Proc_222_37_131572C()
  loc_EB08C7: Set var_8C = Me.Txt
  loc_EB08CD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EB08D5: var_94.Text = CStr(MemVar_1F920EC)
  loc_EB08F2: Set var_8C = Me.Txt
  loc_EB08F8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_EB0900: var_94.Text = MemVar_1F920C8
  loc_EB090C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F1C8
  'Data Table: 463FD0
  loc_E9F150: On Error Goto loc_E9F1C1
  loc_E9F18A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F1B0:   Call Proc_222_39_DFBF08(Proc_5_1_100CB50("INI", Me))
  loc_E9F1BB:   Call Proc_222_36_138C2FC(global_52)
  loc_E9F1C0: End If
  loc_E9F1C0: Exit Sub
  loc_E9F1C1: ' Referenced from: E9F150
  loc_E9F1C1: Proc_6_60_E62BC4()
  loc_E9F1C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1075A28
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim unk_463FE0 As Connection15
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_184 As Fields15
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_18C As String
  loc_10757B4: On Error Goto loc_10759D9
  loc_10757EE: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_1075802:   var_94 = Me.Bookmark 'Variant
  loc_107581A:   var_DC = "Deletion Reason"
  loc_1075830:   var_9C = InputBox("Reason for Deletion :", var_DC, var_FC, var_11C, var_13C, var_15C, var_17C)
  loc_1075862:   If (Trim(var_9C) = vbNullString) Then
  loc_107587E:     MsgBox("You Should Enter a Valid Reason for Deletion", 0, var_DC, var_FC, var_11C)
  loc_107588E:     Exit Sub
  loc_107588F:   End If
  loc_1075898:   unk_463FE0.BeginTrans var_180
  loc_10758C5:   Proc_6_17_EAA2B0(var_DC, Trim(var_9C), "Update DenominationDetail Set Delflag='Y',Reason=")
  loc_10758CD:   var_FC = var_19C & var_DC 
  loc_10758D6:   var_11C = var_FC & " WHERE Sno='" 
  loc_1075914:   var_18C = CStr(var_11C & Me.Fields.Item("SearchCode").Value & "'")
  loc_107591E:   unk_463FE0.Execute var_18C, -1, var_1A0
  loc_1075948:   unk_463FE0.CommitTrans
  loc_1075958:   Me.Requery -1
  loc_1075978:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1075985:     Me.Bookmark = var_94
  loc_107598D:   Else
  loc_10759A1:     If (Me.EOF = 0) Then
  loc_10759AA:       Me.MoveLast
  loc_10759AF:     End If
  loc_10759AF:   End If
  loc_10759AF:   Call Proc_222_36_138C2FC()
  loc_10759D0:   Proc_5_0_110649C(&HFF, Me)
  loc_10759D8: End If
  loc_10759D8: Exit Sub
  loc_10759D9: ' Referenced from: 10757B4
  loc_10759DF: unk_463FE0.RollbackTrans
  loc_10759EC: Set var_184 = Err()
  loc_10759F2: Call 0.Method_arg_2C (var_18C, global_52)
  loc_1075A13: MsgBox(CVar(var_18C), &H10, " Deletion Message", var_FC, var_11C)
  loc_1075A26: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E4A0A0
  'Data Table: 463FD0
  loc_E4A093: Call Proc_222_39_DFBF08(Proc_5_1_100CB50("EDIT", Me))
  loc_E4A09E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AC00
  'Data Table: 463FD0
  Dim arg_5808 As Variant
  loc_E1ABF5: Me.Global.Unload Me
  loc_E1ABFD: Exit Sub
  loc_E1ABFE: arg_5808 = CVar() 'String
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F3207C
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  loc_F31F70: On Error Goto loc_F32073
  loc_F31F8A: If (Me.RecordCount <= 0) Then
  loc_F31FA8:   var_A8 = "No Records To Search."
  loc_F31FAE:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_F31FBE:   Exit Sub
  loc_F31FBF: End If
  loc_F31FC9: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_F31FD3:   var_10C = "SELECT Distinct Sno As SearchCode,Sno As SerialNo,U_Name As UserName,CAST(Vdate AS VARCHAR(11)) as [Date] FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And LogSite_Code='" & MemVar_1F92078
  loc_F31FDA:   MemVar_1F920E4 = var_10C & "' ORDER BY SNO"
  loc_F31FE4: Else
  loc_F31FEB:   var_10C = "SELECT Distinct Sno As SearchCode,Sno As SerialNo,U_Name As UserName,CAST(Vdate AS VARCHAR(11)) as [Date] FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And U_Name='" & MemVar_1F920C8
  loc_F32000:   Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F3200C:   var_B8 = " LogSite_Code='"
  loc_F32029:   MemVar_1F920E4 = CStr(CVar(var_10C & "' And Vdate=") & var_A8 & var_B8 & CVar(MemVar_1F92078) & "' ORDER BY SNO")
  loc_F3203F: End If
  loc_F32048: Proc_6_126_F1BCC0("1000,1000,1000", MemVar_1F920E4)
  loc_F32056: MemVar_1F92120 = Me
  loc_F3206D: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F32072: Exit Sub
  loc_F32073: ' Referenced from: F31F70
  loc_F32073: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F32078: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3A818
  'Data Table: 463FD0
  loc_E3A808: Proc_5_0_110649C(&HFF, Me)
  loc_E3A810: Call Proc_222_36_138C2FC(global_52)
  loc_E3A815: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3A938
  'Data Table: 463FD0
  loc_E3A928: Proc_5_0_110649C(&HFF, Me)
  loc_E3A930: Call Proc_222_36_138C2FC(global_52)
  loc_E3A935: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3ABD8
  'Data Table: 463FD0
  loc_E3ABC8: Proc_5_0_110649C(&HFF, Me)
  loc_E3ABD0: Call Proc_222_36_138C2FC(global_52)
  loc_E3ABD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36138
  'Data Table: 463FD0
  loc_E36128: Proc_5_0_110649C(&HFF, Me)
  loc_E36130: Call Proc_222_36_138C2FC(global_52)
  loc_E36135: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '107E260
  'Data Table: 463FD0
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_B4 As Field20
  Dim var_E4 As Variant
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_464044 As Connection15
  Dim var_88 As Recordset15
  Dim var_136 As Integer
  loc_107DFD8: On Error Goto loc_107E238
  loc_107DFE8: var_D4 = "SELECT * FROM DenominationDetail Where Sno="
  loc_107E00A: var_B4 = Me.Fields.Item("SearchCode")
  loc_107E01A: var_E4 = var_D4 & var_B4.Value 
  loc_107E01E: var_F4 = " Order By Sno1"
  loc_107E023: var_104 = var_E4 & var_F4 
  loc_107E031: unk_464044.Execute CStr(var_104), var_128, -1
  loc_107E03C: Set var_88 = var_12C
  loc_107E05C: var_130 = var_88.RecordCount
  loc_107E06A: If (var_130 = 0) Then
  loc_107E086:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_128)
  loc_107E096:   Exit Sub
  loc_107E097: End If
  loc_107E0AD: Set var_A0 = var_88 
  loc_107E0B9: var_136 = CreateFieldDefFile(var_A0, MemVar_1F920B4 & "\DenominationDetail.ttx")
  loc_107E0C3: Set var_88 = var_A0
  loc_107E0C9: var_B0 = CVar(var_136) 'Integer
  loc_107E0CC: var_98 = var_B0 'Variant
  loc_107E0E8: var_108 = MemVar_1F920B4 & "\DenominationDetail.RPT"
  loc_107E0F1: Call 0.Method_arg_1C (var_108, var_B0, var_A0)
  loc_107E0FC: MemVar_1F921E4 = var_A0
  loc_107E117: Call 0.Method_arg_90 (var_A0, var_130, var_9A, 1)
  loc_107E11F: Call 0.Method_arg_24 (var_136, &HFF)
  loc_107E12B: For var_13A =  To CInt(var_130): var_12C = var_13A 'Integer
  loc_107E144:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_107E14C:   Call 0.Method_arg_20 (var_B4)
  loc_107E154:   Call 0.Method_arg_30 (var_108)
  loc_107E19A:   If (Ucase(CVar(var_108)) = Ucase("Title")) Then
  loc_107E1B0:     Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_107E1B8:     Call 0.Method_arg_20 (var_B4)
  loc_107E1C0:     Call 0.Method_arg_38 ("'Denomination Detail'")
  loc_107E1CC:   End If
  loc_107E1CF: Next var_13A 'Integer
  loc_107E1ED: Call 0.Method_arg_64 (var_A0, CVar(var_88))
  loc_107E1F5: Call 0.Method_arg_2C (var_D4)
  loc_107E203: Call 0.Method_arg_150 (var_F4)
  loc_107E20E: Call 0.Method_arg_50 (var_108)
  loc_107E227: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_107E234: Set var_88 = Nothing
  loc_107E237: Exit Sub
  loc_107E238: ' Referenced from: 107DFD8
  loc_107E23E: Call 0.Method_arg_50 (var_108, var_108)
  loc_107E253: Proc_183_57_104AA84(var_108, "TopCtrl1_ePrn")
  loc_107E25F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09B34
  'Data Table: 463FD0
  Dim Me As Recordset15
  loc_E09B2B: Me.Requery -1
  loc_E09B30: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16052BC
  'Data Table: 463FD0
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim unk_463FE0 As Connection15
  Dim var_88 As Variant
  Dim var_130 As String
  Dim var_134 As String
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_19C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_240 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_2D4 As Variant
  Dim var_2F4 As Variant
  Dim var_314 As Variant
  Dim var_328 As MSHFlexGrid
  Dim var_3C8 As Variant
  Dim var_3E8 As Variant
  Dim var_3FC As MSHFlexGrid
  Dim var_45C As Variant
  Dim var_47C As Variant
  Dim var_540 As Variant
  Dim var_560 As Variant
  Dim var_5D4 As Variant
  Dim var_5F4 As Variant
  Dim var_658 As Variant
  Dim var_5B4 As Variant
  Dim var_6B8 As Variant
  Dim var_6D8 As Variant
  Dim var_124 As Variant
  Dim var_510 As Variant
  Dim var_520 As Variant
  Dim var_688 As Variant
  Dim var_73C As Variant
  Dim var_7D0 As Variant
  Dim var_810 As Variant
  Dim var_C4 As Integer
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_21C As Variant
  Dim var_23C As Variant
  Dim var_388 As Variant
  Dim var_2B0 As Variant
  Dim var_2D0 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_3D8 As Variant
  Dim var_3F8 As Variant
  Dim var_46C As Variant
  Dim var_48C As Variant
  Dim var_550 As Variant
  Dim var_5E4 As Variant
  Dim var_358 As Variant
  Dim var_950 As Variant
  Dim var_A24 As Variant
  Dim Me As Recordset15
  loc_1603FB0: On Error Goto loc_160529F
  loc_1603FD8: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_1603FE2:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_1603FEA:   var_D4 = CVar(CLng(5)) 'Long
  loc_1604004:   var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_160400A:   var_104 = Trim(var_F4)
  loc_1604026:   If (var_104 = vbNullString) Then
  loc_1604042:     MsgBox("Group Not Defined.", &H40, var_F4, var_104, var_124)
  loc_1604052:     Exit Sub
  loc_1604056:   Else
  loc_160405A:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_1604062:     var_D4 = CVar(CLng(6)) 'Long
  loc_160407C:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1604082:     var_104 = Trim(var_F4)
  loc_160409E:     If (var_104 = vbNullString) Then
  loc_16040B4:       var_A0 = "Type Not Defined."
  loc_16040BA:       MsgBox(var_A0, &H40, var_F4, var_104, var_124)
  loc_16040CA:       Exit Sub
  loc_16040CB:     End If
  loc_16040CB:   End If
  loc_16040CE: Next var_A4 'Integer
  loc_16040DC: unk_463FE0.BeginTrans var_128
  loc_16040E3: var_88 = &HFF
  loc_1604101: If (Me.ChkSetDeno.Value = 1) Then
  loc_1604128:   unk_463FE0.Execute "Delete from DenominationFormat WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_A0, -1
  loc_160415F:   For var_138 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_138 'Integer
  loc_1604169:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_1604171:     var_D4 = CVar(CLng(0)) 'Long
  loc_160417A:     Set var_90 = Me.FGrid
  loc_1604180:     var_A0 = var_90.TextMatrix)
  loc_160418B:     var_F4 = CVar(CStr(var_A0)) 'String
  loc_160419A:     var_168 = CVar(CLng(var_86)) 'Long
  loc_16041A2:     var_188 = CVar(CLng(1)) 'Long
  loc_16041AB:     Set var_19C = Me.FGrid
  loc_16041C2:     var_1CC = Trim(CVar(CStr(var_19C.TextMatrix))))
  loc_16041CB:     var_20C = CVar(CLng(var_86)) 'Long
  loc_16041D3:     var_22C = CVar(CLng(6)) 'Long
  loc_16041FC:     var_2A0 = CVar(CLng(var_86)) 'Long
  loc_1604204:     var_2C0 = CVar(CLng(2)) 'Long
  loc_160422D:     var_2F4 = CVar(CLng(var_86)) 'Long
  loc_1604235:     var_314 = CVar(CLng(2)) 'Long
  loc_160427C:     var_388 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1604285:     var_3C8 = CVar(CLng(var_86)) 'Long
  loc_160428D:     var_3E8 = CVar(CLng(6)) 'Long
  loc_1604296:     Set var_3FC = Me.FGrid
  loc_16042B6:     var_45C = CVar(CLng(var_86)) 'Long
  loc_16042BE:     var_47C = CVar(CLng(3)) 'Long
  loc_1604311:     var_540 = CVar(CLng(var_86)) 'Long
  loc_1604319:     var_560 = CVar(CLng(6)) 'Long
  loc_1604342:     var_5D4 = CVar(CLng(var_86)) 'Long
  loc_160434A:     var_5F4 = CVar(CLng(4)) 'Long
  loc_1604429:     Proc_6_17_EAA2B0(var_880, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_160443B:     var_114 = "Insert into DenominationFormat(SNo,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values ("
  loc_1604473:     var_510 = var_114 & Trim(var_F4) & ",'" & var_1CC & "','" & var_388 & "','" & IIf((Trim(CVar(CStr(var_3FC.TextMatrix)))) = "Entry"), vbNullString, Trim(CVar(CStr(Me.FGrid.TextMatrix))))) 
  loc_1604483:     var_688 = var_510 & "','" & IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), vbNullString, Trim(CVar(CStr(Me.FGrid.TextMatrix))))) 
  loc_16044B6:     var_810 = var_688 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F920C8) 
  loc_1604503:     unk_463FE0.Execute CStr(var_810 & "'," & var_880 & ",'A','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_950, -1
  loc_16045B6:   Next var_138 'Integer
  loc_16045BE: Else
  loc_16045C2:   Set var_90 = Me.TopCtrl1
  loc_16045C8:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_16045E1:   If (CStr() = "Add") Then
  loc_16045EA:     var_C4 = 0
  loc_1604607:     var_130 = "Select IsNull(Max(Sno),0)+1 from DenominationDetail WHERE LOGSITE_CODE='" & MemVar_1F92078
  loc_1604617:     unk_463FE0.Execute CStr() & "'", var_A0, -1
  loc_160461F:     var_90 = var_90.Fields
  loc_1604627:     var_C4 = var_19C.Item(var_19C)
  loc_160462F:     var_240 = var_240.Value
  loc_1604640:     Set var_2D4 = Me.lblSerialNo
  loc_1604646:     var_2D4.Caption = CStr(var_F4)
  loc_160468D:     For var_964 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_964 'Integer
  loc_160469A:       Set var_90 = Me.lblSerialNo
  loc_16046C0:       var_A0 = Me.FGrid.TextMatrix)
  loc_16046E1:       Set var_240 = Me.Txt
  loc_16046E7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2D4, CVar(CLng(0)))
  loc_16046F6:       Proc_6_7_F25D88(var_1CC, CVar(var_2D4), CVar(CLng(var_86)))
  loc_1604706:       Set var_328 = Me.Txt
  loc_160470C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3FC)
  loc_1604724:       var_178 = CVar(CLng(var_86)) 'Long
  loc_160472C:       var_198 = CVar(CLng(1)) 'Long
  loc_1604755:       var_21C = CVar(CLng(var_86)) 'Long
  loc_160475D:       var_23C = CVar(CLng(6)) 'Long
  loc_1604786:       var_2B0 = CVar(CLng(var_86)) 'Long
  loc_160478E:       var_2D0 = CVar(CLng(2)) 'Long
  loc_16047B7:       var_304 = CVar(CLng(var_86)) 'Long
  loc_16047BF:       var_324 = CVar(CLng(2)) 'Long
  loc_1604806:       var_4C0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_160480F:       var_3D8 = CVar(CLng(var_86)) 'Long
  loc_1604817:       var_3F8 = CVar(CLng(6)) 'Long
  loc_1604840:       var_46C = CVar(CLng(var_86)) 'Long
  loc_1604848:       var_48C = CVar(CLng(3)) 'Long
  loc_1604871:       var_520 = CVar(CLng(var_86)) 'Long
  loc_1604879:       var_550 = CVar(CLng(3)) 'Long
  loc_16048C0:       var_648 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_16048C9:       var_5B4 = CVar(CLng(var_86)) 'Long
  loc_16048D1:       var_5E4 = CVar(CLng(6)) 'Long
  loc_16048FA:       var_658 = CVar(CLng(var_86)) 'Long
  loc_1604902:       var_6B8 = CVar(CLng(4)) 'Long
  loc_160492B:       var_6D8 = CVar(CLng(var_86)) 'Long
  loc_1604933:       var_73C = CVar(CLng(4)) 'Long
  loc_160497A:       var_7D0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1604A0F:       Proc_6_17_EAA2B0(var_9D4, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_1604A28:       var_134 = "Insert into DenominationDetail(SNo,SNo1,Vdate,Name,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values (" & var_90.Caption
  loc_1604A65:       var_358 = CVar(var_134 & ",") & Trim(CVar(CStr(var_A0))) & "," & var_1CC & ",'" & Trim(CVar(var_3FC)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_1604AAE:       var_880 = var_358 & "','" & var_4C0 & "','" & var_648 & "','" & var_7D0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_1604AEB:       var_A24 = var_880 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F920C8) & "'," & var_9D4 & ",'A','" & CVar(MemVar_1F92070) 
  loc_1604B15:       unk_463FE0.Execute CStr(var_A24 & "','" & CVar(MemVar_1F92078) & "')"), var_AA8, -1
  loc_1604BF0:     Next var_964 'Integer
  loc_1604BF8:   Else
  loc_1604C3C:     unk_463FE0.Execute "Delete From DenominationDetail WHERE Sno=" & Me.lblSerialNo.Caption & " And LOGSITE_CODE='" & MemVar_1F92078 & "'", var_A0, -1
  loc_1604C7D:     For var_AC0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):     var_86 = var_AC0 'Integer
  loc_1604C8A:       Set var_90 = Me.lblSerialNo
  loc_1604C99:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_1604CB0:       var_A0 = Me.FGrid.TextMatrix)
  loc_1604CD1:       Set var_240 = Me.Txt
  loc_1604CD7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_2D4, CVar(CLng(0)))
  loc_1604CE6:       Proc_6_7_F25D88(var_1CC, CVar(var_2D4), var_B4)
  loc_1604CF6:       Set var_328 = Me.Txt
  loc_1604CFC:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_3FC)
  loc_1604D14:       var_178 = CVar(CLng(var_86)) 'Long
  loc_1604D1C:       var_198 = CVar(CLng(1)) 'Long
  loc_1604D45:       var_21C = CVar(CLng(var_86)) 'Long
  loc_1604D4D:       var_23C = CVar(CLng(6)) 'Long
  loc_1604D76:       var_2B0 = CVar(CLng(var_86)) 'Long
  loc_1604D7E:       var_2D0 = CVar(CLng(2)) 'Long
  loc_1604DA7:       var_304 = CVar(CLng(var_86)) 'Long
  loc_1604DAF:       var_324 = CVar(CLng(2)) 'Long
  loc_1604DF6:       var_4C0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1604DFF:       var_3D8 = CVar(CLng(var_86)) 'Long
  loc_1604E07:       var_3F8 = CVar(CLng(6)) 'Long
  loc_1604E30:       var_46C = CVar(CLng(var_86)) 'Long
  loc_1604E38:       var_48C = CVar(CLng(3)) 'Long
  loc_1604E61:       var_520 = CVar(CLng(var_86)) 'Long
  loc_1604E69:       var_550 = CVar(CLng(3)) 'Long
  loc_1604EB0:       var_648 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1604EB9:       var_5B4 = CVar(CLng(var_86)) 'Long
  loc_1604EC1:       var_5E4 = CVar(CLng(6)) 'Long
  loc_1604EEA:       var_658 = CVar(CLng(var_86)) 'Long
  loc_1604EF2:       var_6B8 = CVar(CLng(4)) 'Long
  loc_1604F1B:       var_6D8 = CVar(CLng(var_86)) 'Long
  loc_1604F23:       var_73C = CVar(CLng(4)) 'Long
  loc_1604F6A:       var_7D0 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Entry"), CVar(CStr(Val(CStr(Me.FGrid.TextMatrix))))), Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_1604FFF:       Proc_6_17_EAA2B0(var_9D4, Format(Now, "dd/MMM/yyyy HH:mm:ss"), 1, 1, CVar(CLng(6)), CVar(CLng(var_86)), CVar(CLng(5)), CVar(CLng(var_86)))
  loc_1605018:       var_134 = "Insert into DenominationDetail(SNo,SNo1,Vdate,Name,DenominationType,DenominationValue,DenominationUnit,DenominationTotal,Relation,Type,U_Name,U_EntDt,U_AE,Site_Code,lOGSITE_CODE) values (" & var_90.Caption
  loc_1605055:       var_358 = CVar(var_134 & ",") & Trim(CVar(CStr(var_A0))) & "," & var_1CC & ",'" & Trim(CVar(var_3FC)) & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_160509E:       var_880 = var_358 & "','" & var_4C0 & "','" & var_648 & "','" & var_7D0 & "','" & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" 
  loc_16050DB:       var_A24 = var_880 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "','" & CVar(MemVar_1F920C8) & "'," & var_9D4 & ",'A','" & CVar(MemVar_1F92070) 
  loc_1605105:       unk_463FE0.Execute CStr(var_A24 & "','" & CVar(MemVar_1F92078) & "')"), var_AA8, -1
  loc_16051E0:     Next var_AC0 'Integer
  loc_16051E5:   End If
  loc_16051E5: End If
  loc_16051E7: var_88 = 0
  loc_16051F0: unk_463FE0.CommitTrans
  loc_1605210: If (Me.ChkSetDeno.Value <> 1) Then
  loc_160521E:   Me.Requery -1
  loc_160525A:   Me.Find "SearchCode ='" & Me.lblSerialNo.Caption & "'", 0, 1
  loc_160526B: End If
  loc_160528E: Call Proc_222_39_DFBF08(Proc_5_1_100CB50("INI", Me, global_52), var_B4)
  loc_1605299: Call Proc_222_36_138C2FC(var_88)
  loc_160529E: Exit Sub
  loc_160529F: ' Referenced from: 1603FB0
  loc_16052A5: If (var_88 = &HFF) Then
  loc_16052AE:   unk_463FE0.RollbackTrans
  loc_16052B3: End If
  loc_16052B3: Proc_6_60_E62BC4()
  loc_16052B8: Exit Sub
End Sub

Private Sub ChkSetDeno_Click() 'E01E8C
  'Data Table: 463FD0
  loc_E01E80: Call Proc_222_38_126E3D8()
  loc_E01E85: Call Proc_222_37_131572C()
  loc_E01E8A: Exit Sub
End Sub

Private Sub Form_Load() 'F99C04
  'Data Table: 463FD0
  Dim var_BC As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_463FE0 As Connection15
  Dim var_D4 As Variant
  loc_F99AA0: On Error Goto loc_F99BC0
  loc_F99AAA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F99ABC: Set var_BC = Me.FGrid
  loc_F99AC2: var_BC.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F99AE5: var_C4 = "SELECT Distinct(Sno) As SearchCode FROM DenominationDetail Where IsNull(DelFlag,'')<>'Y' And LogSite_Code='" & MemVar_1F92078 & "' ORDER BY SNO"
  loc_F99AEE: unk_463FE0.Execute var_C4, var_D4, -1
  loc_F99AFF: Set global_52 = var_BC
  loc_F99B1A: If (MemVar_1F920B8 = 1) Then
  loc_F99B29:   Me.ChkSetDeno.Visible = True
  loc_F99B31: End If
  loc_F99B46: var_C0 = "INI"
  loc_F99B54: Call Proc_222_39_DFBF08(Proc_5_1_100CB50(var_C0, Me), global_52)
  loc_F99B69: Set var_BC = Me.TopCtrl1
  loc_F99B6F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_F99B8E: var_98 = Proc_5_2_1067474(&HFF, Me) 'Variant
  loc_F99BA7: Set var_BC = Me
  loc_F99BAD: Proc_6_23_DFBA28(var_BC, 4425)
  loc_F99BB5: Call Proc_222_38_126E3D8(6870)
  loc_F99BBA: Call Proc_222_37_131572C(var_BC)
  loc_F99BBF: Exit Sub
  loc_F99BC0: ' Referenced from: F99AA0
  loc_F99BC8: Set var_BC = Err()
  loc_F99BCE: Call 0.Method_arg_2C (var_C0)
  loc_F99BEF: MsgBox(CVar(var_C0), &H40, "Information", var_FC, var_11C)
  loc_F99C02: Exit Sub
  loc_F99C03: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E42244
  'Data Table: 463FD0
  Dim arg_5858 As Variant
  loc_E4221F: Set global_52 = Nothing
  loc_E4222B: global_60 = Nothing
  loc_E4223A: Set global_76 = Nothing
  loc_E42241: Exit Sub
  loc_E42242: arg_5858 = CVar() 'Integer
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8928C
  'Data Table: 463FD0
  loc_E89228: On Error Goto loc_E89248
  loc_E8923F: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89247: Exit Sub
  loc_E89248: ' Referenced from: E89228
  loc_E89250: Set var_88 = Err()
  loc_E89256: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89277: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E8928A: Exit Sub
  loc_E8928B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1203EBC
  'Data Table: 463FD0
  Dim var_88 As Variant
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_F0 As MSHFlexGrid
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_10E As Integer
  Dim var_114 As Long
  Dim var_104 As TextBox
  Dim var_13C As Long
  loc_1203A23: var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1203A2C: Set var_9C = Me.FGrid
  loc_1203A62: Set var_104 = Me.TxtGrid
  loc_1203A68: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_1203A70: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_1203A9D: Set var_88 = Me.TxtGrid
  loc_1203AA3: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1203AAB: var_9C.MaxLength = 0
  loc_1203ABA: var_10E = Index
  loc_1203AC3: If (var_10E = 0) Then
  loc_1203AE1:   If (Me.ChkSetDeno.Value = 1) Then
  loc_1203AF7:     var_114 = CLng(Me.FGrid.Col)
  loc_1203B07:     If (var_114 = CLng(1)) Then
  loc_1203B18:       Set var_88 = Me.TxtGrid
  loc_1203B1E:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H4B)
  loc_1203B26:       var_9C.MaxLength = var_114
  loc_1203B3B:       If (global_56 = 0) Then
  loc_1203B46:         var_10C = "{Home}+{End}"
  loc_1203B4C:         Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1203B54:       End If
  loc_1203B57:     Else
  loc_1203B5E:       If Not (var_114 = CLng(2)) Then
  loc_1203B68:         If Not (var_114 = CLng(3)) Then
  loc_1203B72:           If (var_114 = CLng(4)) Then
  loc_1203B75:           End If
  loc_1203B75:         End If
  loc_1203B83:         Set var_88 = Me.TxtGrid
  loc_1203B89:         Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &H32)
  loc_1203B91:         var_9C.MaxLength = var_10E
  loc_1203BA6:         If (global_56 = 0) Then
  loc_1203BB1:           var_10C = "{Home}+{End}"
  loc_1203BB7:           Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1203BBF:         End If
  loc_1203BC2:       Else
  loc_1203BC9:         If (var_114 = CLng(5)) Then
  loc_1203BDB:           Set var_88 = Me.TxtGrid
  loc_1203BE1:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1203BE9:           var_9C.MaxLength = 1
  loc_1203C02:           ReDim var_118(0 To 5)
  loc_1203C19:           var_118(0) = "A"
  loc_1203C28:           var_118(1) = "B"
  loc_1203C37:           var_118(2) = "C"
  loc_1203C46:           var_118(3) = "D"
  loc_1203C55:           var_118(4) = "E"
  loc_1203C64:           var_118(5) = "F"
  loc_1203C7B:           global_60 = Array(var_118)
  loc_1203C86:           Set var_104 = Me.ListView
  loc_1203CA1:           Set var_9C = Me.TxtGrid
  loc_1203CBB:           Set global_76 = Proc_6_66_EFF8FC(var_104, var_9C, Index, global_60)
  loc_1203CD9:           Set var_88 = Me.TxtGrid
  loc_1203CDF:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, CStr(Me.FGrid.TextMatrix)))
  loc_1203CE7:           6 = var_9C.Text
  loc_1203CF9:           Set var_F0 = Me.TxtGrid
  loc_1203CFF:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr(Me.FGrid.TextMatrix)))
  loc_1203D07:           var_104.Tag = global_60
  loc_1203D1D:         Else
  loc_1203D24:           If (var_114 = CLng(6)) Then
  loc_1203D36:             Set var_88 = Me.TxtGrid
  loc_1203D3C:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_1203D44:             var_9C.MaxLength = 5
  loc_1203D5D:             ReDim var_118(0 To 2)
  loc_1203D74:             var_118(0) = "Title"
  loc_1203D83:             var_118(1) = "Total"
  loc_1203D92:             var_118(2) = "Entry"
  loc_1203DA9:             global_60 = Array(var_118)
  loc_1203DB4:             Set var_104 = Me.ListView
  loc_1203DCF:             Set var_9C = Me.TxtGrid
  loc_1203DE9:             Set global_76 = Proc_6_66_EFF8FC(var_104, var_9C, Index, global_60)
  loc_1203E07:             Set var_88 = Me.TxtGrid
  loc_1203E0D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, CStr(Me.FGrid.TextMatrix)))
  loc_1203E15:             3 = var_9C.Text
  loc_1203E27:             Set var_F0 = Me.TxtGrid
  loc_1203E2D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_104, CStr(Me.FGrid.TextMatrix)))
  loc_1203E35:             var_104.Tag = global_60
  loc_1203E48:           End If
  loc_1203E48:         End If
  loc_1203E48:       End If
  loc_1203E48:     End If
  loc_1203E4B:   Else
  loc_1203E5E:     var_13C = CLng(Me.FGrid.Col)
  loc_1203E6E:     If (var_13C = CLng(3)) Then
  loc_1203E7F:       Set var_88 = Me.TxtGrid
  loc_1203E85:       Call 0.Method_TxtGrid_GotFocus0 (0, var_9C, &HC)
  loc_1203E8D:       var_9C.MaxLength = var_13C
  loc_1203EA2:       If (global_56 = 0) Then
  loc_1203EAD:         var_10C = "{Home}+{End}"
  loc_1203EB3:         Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_1203EBB:       End If
  loc_1203EBB:     End If
  loc_1203EBB:   End If
  loc_1203EBB: End If
  loc_1203EBB: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '12C7744
  'Data Table: 463FD0
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_8C As Variant
  Dim var_B4 As Long
  Dim var_DC As TextBox
  Dim var_E8 As TextBox
  Dim var_108 As Long
  loc_12C70FC: If (KeyCode = 0) Then
  loc_12C7109:   If (CLng(Shift) = &H1B) Then
  loc_12C7119:     Set var_8C = Me.TxtGrid
  loc_12C711F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_12C7139:     Set var_98 = Me.TxtGrid
  loc_12C713F:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_12C7147:     var_9C.Text = var_90.Tag
  loc_12C715E:     Set var_8C = Me.FGrid
  loc_12C717B:     Set var_8C = Me.TxtGrid
  loc_12C7181:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_12C7189:     var_90.Visible = FGrid.DispID_8001
  loc_12C71A3:     Set var_8C = Me.TxtGrid
  loc_12C71A9:     Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_12C71B1:     var_90.MaxLength = 0
  loc_12C71BD:     Exit Sub
  loc_12C71BE:   End If
  loc_12C71CB:   var_9E = Me.ChkSetDeno.Value
  loc_12C71D9:   If (var_9E = 1) Then
  loc_12C71EF:     var_B4 = CLng(Me.FGrid.Col)
  loc_12C71FF:     If (var_B4 = CLng(3)) Then
  loc_12C7242:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_12C724B:         Call Proc_222_41_12AAF2C(KeyCode, var_9E)
  loc_12C7292:         If ((var_9E = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_12C72A0:           Set var_9C = Me.TxtGrid
  loc_12C72C9:           Set var_90 = var_9C
  loc_12C72D8:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 3)
  loc_12C72EB:         Else
  loc_12C72F6:           Set var_8C = Me.TxtGrid
  loc_12C72FC:           Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0)
  loc_12C7304:           var_90.Visible = False
  loc_12C7310:         End If
  loc_12C7310:       End If
  loc_12C7313:     Else
  loc_12C731A:       If (var_B4 = CLng(5)) Then
  loc_12C733F:         Set var_8C = Me.TxtGrid
  loc_12C7345:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D0)
  loc_12C734D:         0 = var_90.Left
  loc_12C735F:         Set var_98 = Me.TxtGrid
  loc_12C7365:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D4)
  loc_12C736D:         var_B4 = var_9C.Top
  loc_12C737F:         Set var_D8 = Me.TxtGrid
  loc_12C7385:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC)
  loc_12C738D:         var_E0 = var_DC.Height
  loc_12C739F:         Set var_E4 = Me.TxtGrid
  loc_12C73A5:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12C73AD:         var_EC = var_E8.Width
  loc_12C73F5:         Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C7423:         If (CLng(Shift) = &HD) Then
  loc_12C742C:           Call Proc_222_41_12AAF2C(KeyCode, var_9E, CInt(var_D0), CInt((var_D4 + var_E0)))
  loc_12C7437:           If (var_9E = &HFF) Then
  loc_12C7445:             Set var_9C = Me.TxtGrid
  loc_12C746E:             Set var_90 = var_9C
  loc_12C747D:             Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 6)
  loc_12C748D:           End If
  loc_12C748D:         End If
  loc_12C7490:       Else
  loc_12C7497:         If (var_B4 = CLng(6)) Then
  loc_12C74BC:           Set var_8C = Me.TxtGrid
  loc_12C74C2:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_D0, 0, 0)
  loc_12C74CA:           0 = var_90.Left
  loc_12C74DC:           Set var_98 = Me.TxtGrid
  loc_12C74E2:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_D4)
  loc_12C74EA:           CInt(var_EC) = var_9C.Top
  loc_12C74FC:           Set var_D8 = Me.TxtGrid
  loc_12C7502:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_DC, var_E0)
  loc_12C750A:           1560 = var_DC.Height
  loc_12C751C:           Set var_E4 = Me.TxtGrid
  loc_12C7522:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_E8)
  loc_12C752A:           var_EC = var_E8.Width
  loc_12C7572:           Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_12C75A0:           If (CLng(Shift) = &HD) Then
  loc_12C75A9:             Call Proc_222_41_12AAF2C(KeyCode, var_9E, CInt(var_D0), CInt((var_D4 + var_E0)))
  loc_12C75B4:             If (var_9E = &HFF) Then
  loc_12C75FA:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_56, 6)
  loc_12C760A:             End If
  loc_12C760A:           End If
  loc_12C760A:         End If
  loc_12C760A:       End If
  loc_12C760A:     End If
  loc_12C760D:   Else
  loc_12C7620:     var_108 = CLng(Me.FGrid.Col)
  loc_12C7630:     If (var_108 = CLng(3)) Then
  loc_12C7673:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_56 = &HFF))) Then
  loc_12C767C:         Call Proc_222_41_12AAF2C(KeyCode, var_9E, var_108, 0, 0)
  loc_12C76C3:         If ((var_9E = &HFF) And (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1))) Then
  loc_12C76FA:           Set var_90 = Me.TxtGrid
  loc_12C7709:           Proc_6_62_1253BC4(Me.FGrid, var_90, KeyCode, Shift, global_56, 3, 0)
  loc_12C771C:         Else
  loc_12C7727:           Set var_8C = Me.TxtGrid
  loc_12C772D:           Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0, 0, 0)
  loc_12C7735:           var_90.Visible = False
  loc_12C7741:         End If
  loc_12C7741:       End If
  loc_12C7741:     End If
  loc_12C7741:   End If
  loc_12C7741: End If
  loc_12C7741: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EB1E2C
  'Data Table: 463FD0
  Dim var_8C As Variant
  loc_EB1DA8: If (KeyAscii = 0) Then
  loc_EB1DC6:   If (Me.ChkSetDeno.Value = 1) Then
  loc_EB1DC9:     GoTo loc_EB1E29
  loc_EB1DCC:   End If
  loc_EB1DEF:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_EB1DFC:     Set var_8C = Me.TxtGrid
  loc_EB1E02:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A8)
  loc_EB1E1D:     Proc_6_42_129A86C(var_A8, arg_10, &HA)
  loc_EB1E29:     ' Referenced from: EB1DC9
  loc_EB1E29:   End If
  loc_EB1E29: End If
  loc_EB1E29: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'F1E5F8
  'Data Table: 463FD0
  Dim var_A4 As Long
  loc_F1E4FC: On Error Goto loc_F1E5F2
  loc_F1E50B: If (KeyCode = 0) Then
  loc_F1E529:   If (Me.ChkSetDeno.Value = 1) Then
  loc_F1E53F:     var_A4 = CLng(Me.FGrid.Col)
  loc_F1E54F:     If Not (var_A4 = CLng(5)) Then
  loc_F1E559:       If (var_A4 = CLng(6)) Then
  loc_F1E55C:       End If
  loc_F1E57E:       If ((Shift <> &HD) And (Me.FrmList.Visible = 0)) Then
  loc_F1E58F:         Call TxtGrid_KeyDown(KeyCode, global_84)
  loc_F1E594:       End If
  loc_F1E5AF:       If (Me.FrmList.Visible = &HFF) Then
  loc_F1E5DE:         Proc_6_64_F28E58(Me.ListView, Me.TxtGrid, KeyCode, Shift)
  loc_F1E5EE:       End If
  loc_F1E5EE:     End If
  loc_F1E5EE:     GoTo loc_F1E5F1
  loc_F1E5F1:     ' Referenced from: F1E5EE
  loc_F1E5F1:   End If
  loc_F1E5F1: End If
  loc_F1E5F1: Exit Sub
  loc_F1E5F2: ' Referenced from: F1E4FC
  loc_F1E5F2: Proc_6_60_E62BC4(global_76, 0)
  loc_F1E5F7: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E23AB4
  'Data Table: 463FD0
  Dim arg_10 As Integer
  loc_E23A9C: If (Cancel = 0) Then
  loc_E23AA5:   Call Proc_222_41_12AAF2C(Cancel, var_88)
  loc_E23AAE:   arg_10 = Not(var_88)
  loc_E23AB1: End If
  loc_E23AB1: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'FAD64C
  'Data Table: 463FD0
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_CC As Double
  Dim var_C4 As TextBox
  Dim var_A4 As String
  loc_FAD4D0: On Error Goto loc_FAD5E7
  loc_FAD4F1: var_A0 = Me.ListView.ListItems.Count
  loc_FAD509: If (var_A0 > 0) Then
  loc_FAD510:   Set var_A8 = Me.ListView
  loc_FAD55A:   Set var_C0 = Me.TxtGrid
  loc_FAD560:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_FAD568:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_FAD588: End If
  loc_FAD594: Me.FrmList.Visible = False
  loc_FAD5AE: var_A4 = CStr(Me.ListView.Tag)
  loc_FAD5B6: var_CC = Val(var_A4)
  loc_FAD5C4: Set var_9C = Me.TxtGrid
  loc_FAD5CA: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_CC), var_A8)
  loc_FAD5D2: var_A8.SetFocus
  loc_FAD5E6: Exit Sub
  loc_FAD5E7: ' Referenced from: FAD4D0
  loc_FAD5EF: Set var_88 = Err()
  loc_FAD5F5: Call 0.Method_arg_1C (var_A0, var_CC)
  loc_FAD606: If (var_A0 <> 0) Then
  loc_FAD611:   Set var_88 = Err()
  loc_FAD617:   Call 0.Method_arg_2C (var_A4)
  loc_FAD638:   MsgBox(CVar(var_A4), &H40, "Validation", var_FC, var_11C)
  loc_FAD64B: End If
  loc_FAD64B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E495A4
  'Data Table: 463FD0
  loc_E49582: Set var_88 = Me.Txt
  loc_E49588: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E49596: Proc_6_74_E226B0(var_8C)
  loc_E495A2: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E2322C
  'Data Table: 463FD0
  loc_E2321D: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_E23226:   Proc_6_75_E527CC(Shift)
  loc_E2322B: End If
  loc_E2322B: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E09EA8
  'Data Table: 463FD0
  loc_E09E94: On Error Goto loc_E09EA0
  loc_E09E9A: Proc_6_58_E054C0(arg_10)
  loc_E09E9F: Exit Sub
  loc_E09EA0: ' Referenced from: E09E94
  loc_E09EA0: Proc_6_60_E62BC4()
  loc_E09EA5: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E48EBC
  'Data Table: 463FD0
  loc_E48E9A: Set var_88 = Me.Txt
  loc_E48EA0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E48EAE: Proc_6_73_E22704(var_8C)
  loc_E48EBA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E3A6F4
  'Data Table: 463FD0
  Dim var_8C As TextBox
  loc_E3A6D7: Set var_88 = Me.TxtGrid
  loc_E3A6DD: Call 0.Method_FGrid_UnknownEvent_00 (0, var_8C)
  loc_E3A6E5: var_8C.Visible = False
  loc_E3A6F1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E6B1C0
  'Data Table: 463FD0
  Dim var_88 As MSHFlexGrid
  Dim var_9C As TextBox
  loc_E6B170: Call Proc_222_40_E4575C()
  loc_E6B194: If (CLng(Me.FGrid.Col) = 0) Then
  loc_E6B1A2:   Set var_88 = Me.TxtGrid
  loc_E6B1A8:   Call 0.Method_FGrid_UnknownEvent_90 (0, var_9C)
  loc_E6B1B0:   var_9C.Visible = False
  loc_E6B1BC: End If
  loc_E6B1BC: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) '109C0B4
  'Data Table: 463FD0
  Dim var_9C As String
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As Variant
  Dim arg_C As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_109BDFC: Set var_88 = Me.TopCtrl1
  loc_109BE02: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_109BE47: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_109BE50:   Call Form_KeyDown(arg_C, arg_10)
  loc_109BE55: End If
  loc_109BE59: Set var_88 = Me.TopCtrl1
  loc_109BE5F: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_109BE78: If (CStr() = "Browse") Then
  loc_109BE7B:   Exit Sub
  loc_109BE7C: End If
  loc_109BEF0: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_109BEFB:   var_9C = "+{Tab}"
  loc_109BF01:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_109BF0B:   arg_C = 0
  loc_109BF0E: End If
  loc_109BF14: global_84 = arg_C
  loc_109BF3A: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_109BF5E: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_109BF7C:   If (Me.ChkSetDeno.Value = 1) Then
  loc_109BF92:     var_DC = CLng(Me.FGrid.Col)
  loc_109BFA2:     If Not (var_DC = CLng(1)) Then
  loc_109BFAC:       If Not (var_DC = CLng(2)) Then
  loc_109BFB6:         If Not (var_DC = CLng(3)) Then
  loc_109BFC0:           If (var_DC = CLng(4)) Then
  loc_109BFC3:           End If
  loc_109BFC3:         End If
  loc_109BFC3:       End If
  loc_109BFD6:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109BFEE:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109BFF3:       var_11C = vbNullString
  loc_109BFFD:       Set var_B4 = Me.FGrid
  loc_109C003:       LateIdCallSt
  loc_109C01B:     End If
  loc_109C01E:   Else
  loc_109C041:     If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_109C057:       var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_109C06F:       var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_109C074:       var_11C = vbNullString
  loc_109C07E:       Set var_B4 = Me.FGrid
  loc_109C084:       LateIdCallSt
  loc_109C09C:     End If
  loc_109C09C:   End If
  loc_109C09C: End If
  loc_109C0A2: If (arg_C = &HD) Then
  loc_109C0AA:   global_56 = 0
  loc_109C0AD: End If
  loc_109C0AF: arg_C = 0
  loc_109C0B2: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0F320
  'Data Table: 463FD0
  loc_E0F311: Call FGrid_UnknownEvent_C()
  loc_E0F31B: global_56 = 0
  loc_E0F31E: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) '10F6BAC
  'Data Table: 463FD0
  Dim var_9C As String
  Dim var_88 As Variant
  Dim var_A4 As Long
  Dim var_CE As Integer
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_BC As MSHFlexGrid
  Dim var_134 As Variant
  loc_10F6894: Set var_88 = Me.TopCtrl1
  loc_10F689A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10F68B3: If (CStr() = "Browse") Then
  loc_10F68B6:   Exit Sub
  loc_10F68B7: End If
  loc_10F68D2: If (Me.ChkSetDeno.Value = 1) Then
  loc_10F68E8:   var_A4 = CLng(Me.FGrid.Col)
  loc_10F68F8:   If Not (var_A4 = CLng(1)) Then
  loc_10F6902:     If Not (var_A4 = CLng(2)) Then
  loc_10F690C:       If Not (var_A4 = CLng(3)) Then
  loc_10F6916:         If Not (var_A4 = CLng(4)) Then
  loc_10F6920:           If Not (var_A4 = CLng(5)) Then
  loc_10F692A:             If (var_A4 = CLng(6)) Then
  loc_10F692D:             End If
  loc_10F692D:           End If
  loc_10F692D:         End If
  loc_10F692D:       End If
  loc_10F692D:     End If
  loc_10F6931:     Set var_C8 = Me.FGrid
  loc_10F6955:     var_9C = CStr(Ucase(Chr(CLng(Index))))
  loc_10F6982:     Set var_B8 = var_C8
  loc_10F6994:     Proc_6_63_110ABA4(Me, var_B8, Me.TxtGrid, 0, 0)
  loc_10F69BC:     Set var_88 = Me.TxtGrid
  loc_10F69C2:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C, Asc(var_9C))
  loc_10F69CA:     0 = var_B8.Text
  loc_10F69E3:     If (Len(var_9C) <= 1) Then
  loc_10F69F2:       Set var_88 = Me.TxtGrid
  loc_10F69F8:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8, var_9C)
  loc_10F6A00:       var_CE = var_B8.Text
  loc_10F6A11:       Set var_BC = Me.TxtGrid
  loc_10F6A17:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10F6A1F:       var_C8.Text = var_9C
  loc_10F6A32:     End If
  loc_10F6A3E:     Set var_88 = Me.TxtGrid
  loc_10F6A44:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B8)
  loc_10F6A5E:     Set var_BC = Me.TxtGrid
  loc_10F6A64:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C8)
  loc_10F6A6C:     var_C8.SelStart = Len(var_B8.Text)
  loc_10F6A7F:   End If
  loc_10F6A82: Else
  loc_10F6AA5:   If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_10F6ABB:     var_E4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F6AC3:     var_104 = CVar(CLng(6)) 'Long
  loc_10F6ADD:     var_9C = CStr(Me.FGrid.TextMatrix))
  loc_10F6AF8:     var_134 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10F6B41:     If Not((CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Total"))) Then
  loc_10F6B82:       Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0, &HFF, Index, 0)
  loc_10F6B94:     End If
  loc_10F6B94:   End If
  loc_10F6B94: End If
  loc_10F6B9E: If (CLng(Index) <> &HD) Then
  loc_10F6BA6:   global_56 = &HFF
  loc_10F6BA9: End If
  loc_10F6BA9: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_D(arg_C, arg_10) 'FF0D04
  'Data Table: 463FD0
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  loc_FF0B20: Set var_8C = Me.TopCtrl1
  loc_FF0B26: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_FF0B3F: If (CStr() = "Browse") Then
  loc_FF0B42:   Exit Sub
  loc_FF0B43: End If
  loc_FF0B60: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_FF0B63:   Exit Sub
  loc_FF0B64: End If
  loc_FF0B7F: If (Me.ChkSetDeno.Value = 1) Then
  loc_FF0B93:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FF0BB5:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_FF0BEF:       If (MsgBox("Delete For Sure?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_FF0C11:         If (CLng(Me.FGrid.Rows) > 2) Then
  loc_FF0C27:           var_B4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FF0C30:           Set var_118 = Me.FGrid
  loc_FF0C4B:         Else
  loc_FF0C5E:           Me.FGrid.Rows = 1
  loc_FF0C7B:           var_D4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FF0C83:           Set var_118 = Me.FGrid
  loc_FF0CB2:           Me.FGrid.FixedRows = 1
  loc_FF0CBA:         End If
  loc_FF0CBA:       End If
  loc_FF0CBD:     Else
  loc_FF0CDE:       MsgBox("No Entries To Delete", &H10, "Delete !", var_F4, var_114)
  loc_FF0CEE:     End If
  loc_FF0CF2:     Set var_8C = Me.FGrid
  loc_FF0D03:   End If
  loc_FF0D03: End If
  loc_FF0D03: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E34D54
  'Data Table: 463FD0
  Dim var_8C As TextBox
  loc_E34D37: Set var_88 = Me.TxtGrid
  loc_E34D3D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E34D45: var_8C.Visible = False
  loc_E34D51: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EE2EB4
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EE2E0A: On Error Goto loc_EE2E6E
  loc_EE2E13: Me.MoveFirst
  loc_EE2E2D: var_8C = "SearchCode='" & MyValue
  loc_EE2E3D: Me.Find var_8C & "'", 0, 1
  loc_EE2E5D: If (Me.EOF = &HFF) Then
  loc_EE2E60:   Call Proc_222_37_131572C(var_A0)
  loc_EE2E68: Else
  loc_EE2E68:   Call Proc_222_36_138C2FC()
  loc_EE2E6D: End If
  loc_EE2E6D: Exit Sub
  loc_EE2E6E: ' Referenced from: EE2E0A
  loc_EE2E76: Set var_A8 = Err()
  loc_EE2E7C: Call 0.Method_arg_2C (var_8C)
  loc_EE2E9D: MsgBox(CVar(var_8C), &H40, "Information", var_E8, var_108)
  loc_EE2EB0: Exit Sub
  loc_EE2EB1: Exit Sub
End Sub

Public Sub Proc_222_35_1374914
  'Data Table: 463FD0
  Dim var_BC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A8 As Double
  Dim var_B0 As Double
  Dim var_B8 As Double
  loc_13740B9: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_13740C3:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_13740CB:   var_100 = CVar(CLng(6)) 'Long
  loc_13740F6:   If (CStr(Me.FGrid.TextMatrix)) = "Entry") Then
  loc_13740FD:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374105:     var_100 = CVar(CLng(5)) 'Long
  loc_137411F:     var_118 = CStr(Me.FGrid.TextMatrix))
  loc_1374130:     If (var_118 = "A") Then
  loc_1374137:       var_128 = CVar(CLng(var_86)) 'Long
  loc_137413F:       var_148 = CVar(CLng(3)) 'Long
  loc_1374168:       var_180 = CVar(CLng(var_86)) 'Long
  loc_1374170:       var_1A0 = CVar(CLng(4)) 'Long
  loc_1374179:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374181:       var_100 = CVar(CLng(2)) 'Long
  loc_13741A9:       var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13741B1:       Set var_1D4 = Me.FGrid
  loc_13741B7:       LateIdCallSt
  loc_13741DC:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13741E4:       var_100 = CVar(CLng(4)) 'Long
  loc_1374210:       var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_137421F:     Else
  loc_1374227:       If (var_118 = "B") Then
  loc_137422E:         var_128 = CVar(CLng(var_86)) 'Long
  loc_1374236:         var_148 = CVar(CLng(3)) 'Long
  loc_137425F:         var_180 = CVar(CLng(var_86)) 'Long
  loc_1374267:         var_1A0 = CVar(CLng(4)) 'Long
  loc_1374270:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374278:         var_100 = CVar(CLng(2)) 'Long
  loc_13742A0:         var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_13742A8:         Set var_1D4 = Me.FGrid
  loc_13742AE:         LateIdCallSt
  loc_13742D3:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_13742DB:         var_100 = CVar(CLng(4)) 'Long
  loc_1374307:         var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374316:       Else
  loc_137431E:         If (var_118 = "C") Then
  loc_1374325:           var_128 = CVar(CLng(var_86)) 'Long
  loc_137432D:           var_148 = CVar(CLng(3)) 'Long
  loc_1374356:           var_180 = CVar(CLng(var_86)) 'Long
  loc_137435E:           var_1A0 = CVar(CLng(4)) 'Long
  loc_1374367:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_137436F:           var_100 = CVar(CLng(2)) 'Long
  loc_1374397:           var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_137439F:           Set var_1D4 = Me.FGrid
  loc_13743A5:           LateIdCallSt
  loc_13743CA:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_13743D2:           var_100 = CVar(CLng(4)) 'Long
  loc_13743FE:           var_A0 = (var_A0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_137440D:         Else
  loc_1374415:           If (var_118 = "D") Then
  loc_137441C:             var_128 = CVar(CLng(var_86)) 'Long
  loc_1374424:             var_148 = CVar(CLng(3)) 'Long
  loc_137444D:             var_180 = CVar(CLng(var_86)) 'Long
  loc_1374455:             var_1A0 = CVar(CLng(4)) 'Long
  loc_137445E:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374466:             var_100 = CVar(CLng(2)) 'Long
  loc_137448E:             var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1374496:             Set var_1D4 = Me.FGrid
  loc_137449C:             LateIdCallSt
  loc_13744C1:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_13744C9:             var_100 = CVar(CLng(4)) 'Long
  loc_13744F5:             var_A8 = (var_A8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1374504:           Else
  loc_137450C:             If (var_118 = "E") Then
  loc_1374513:               var_128 = CVar(CLng(var_86)) 'Long
  loc_137451B:               var_148 = CVar(CLng(3)) 'Long
  loc_1374544:               var_180 = CVar(CLng(var_86)) 'Long
  loc_137454C:               var_1A0 = CVar(CLng(4)) 'Long
  loc_1374555:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_137455D:               var_100 = CVar(CLng(2)) 'Long
  loc_1374585:               var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_137458D:               Set var_1D4 = Me.FGrid
  loc_1374593:               LateIdCallSt
  loc_13745B8:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_13745C0:               var_100 = CVar(CLng(4)) 'Long
  loc_13745EC:               var_B0 = (var_B0 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13745FB:             Else
  loc_1374603:               If (var_118 = "F") Then
  loc_137460A:                 var_128 = CVar(CLng(var_86)) 'Long
  loc_1374612:                 var_148 = CVar(CLng(3)) 'Long
  loc_137463B:                 var_180 = CVar(CLng(var_86)) 'Long
  loc_1374643:                 var_1A0 = CVar(CLng(4)) 'Long
  loc_137464C:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374654:                 var_100 = CVar(CLng(2)) 'Long
  loc_137467C:                 var_1C0 = CVar(CStr((Val(CStr(Me.FGrid.TextMatrix))) * Val(CStr(Me.FGrid.TextMatrix)))))) 'String
  loc_1374684:                 Set var_1D4 = Me.FGrid
  loc_137468A:                 LateIdCallSt
  loc_13746AF:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_13746B7:                 var_100 = CVar(CLng(4)) 'Long
  loc_13746E3:                 var_B8 = (var_B8 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13746EF:               End If
  loc_13746EF:             End If
  loc_13746EF:           End If
  loc_13746EF:         End If
  loc_13746EF:       End If
  loc_13746EF:     End If
  loc_13746EF:   End If
  loc_13746F2: Next var_D0 'Integer
  loc_137471C: For var_1E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_1E0 'Integer
  loc_1374726:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_137472E:   var_100 = CVar(CLng(6)) 'Long
  loc_1374759:   If (CStr(Me.FGrid.TextMatrix)) = "Total") Then
  loc_1374760:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374768:     var_100 = CVar(CLng(5)) 'Long
  loc_1374782:     var_1E4 = CStr(Me.FGrid.TextMatrix))
  loc_1374793:     If (var_1E4 = "A") Then
  loc_137479A:       var_E0 = CVar(CLng(var_86)) 'Long
  loc_13747A2:       var_100 = CVar(CLng(4)) 'Long
  loc_13747AC:       var_CC = CVar(CStr(var_90)) 'String
  loc_13747B4:       Set var_BC = Me.FGrid
  loc_13747BA:       LateIdCallSt
  loc_13747CB:     Else
  loc_13747D3:       If (var_1E4 = "B") Then
  loc_13747DA:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_13747E2:         var_100 = CVar(CLng(4)) 'Long
  loc_13747EC:         var_CC = CVar(CStr(var_98)) 'String
  loc_13747F4:         Set var_BC = Me.FGrid
  loc_13747FA:         LateIdCallSt
  loc_137480B:       Else
  loc_1374813:         If (var_1E4 = "C") Then
  loc_137481A:           var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374822:           var_100 = CVar(CLng(4)) 'Long
  loc_137482C:           var_CC = CVar(CStr(var_A0)) 'String
  loc_1374834:           Set var_BC = Me.FGrid
  loc_137483A:           LateIdCallSt
  loc_137484B:         Else
  loc_1374853:           If (var_1E4 = "D") Then
  loc_137485A:             var_E0 = CVar(CLng(var_86)) 'Long
  loc_1374862:             var_100 = CVar(CLng(4)) 'Long
  loc_137486C:             var_CC = CVar(CStr(var_A8)) 'String
  loc_1374874:             Set var_BC = Me.FGrid
  loc_137487A:             LateIdCallSt
  loc_137488B:           Else
  loc_1374893:             If (var_1E4 = "E") Then
  loc_137489A:               var_E0 = CVar(CLng(var_86)) 'Long
  loc_13748A2:               var_100 = CVar(CLng(4)) 'Long
  loc_13748AC:               var_CC = CVar(CStr(var_B0)) 'String
  loc_13748B4:               Set var_BC = Me.FGrid
  loc_13748BA:               LateIdCallSt
  loc_13748CB:             Else
  loc_13748D3:               If (var_1E4 = "F") Then
  loc_13748DA:                 var_E0 = CVar(CLng(var_86)) 'Long
  loc_13748E2:                 var_100 = CVar(CLng(4)) 'Long
  loc_13748EC:                 var_CC = CVar(CStr(var_B8)) 'String
  loc_13748F4:                 Set var_BC = Me.FGrid
  loc_13748FA:                 LateIdCallSt
  loc_1374908:               End If
  loc_1374908:             End If
  loc_1374908:           End If
  loc_1374908:         End If
  loc_1374908:       End If
  loc_1374908:     End If
  loc_1374908:   End If
  loc_137490B: Next var_1E0 'Integer
  loc_1374910: Exit Sub
End Sub

Public Sub Proc_222_36_138C2FC
  'Data Table: 463FD0
  Dim Me As Recordset15
  Dim var_D8 As Variant
  Dim var_B4 As Variant
  Dim var_A4 As Variant
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_10C As String
  Dim unk_463FE0 As Connection15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_130 As Variant
  Dim var_134 As TextBox
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_12C As Variant
  Dim var_1B4 As Variant
  loc_138BA50: On Error Goto loc_138C2F6
  loc_138BA6A: If (Me.RecordCount > 0) Then
  loc_138BAC3:   unk_463FE0.Execute CStr("Select * from DenominationDetail where Sno='" & Me.Fields.Item("SearchCode").Value & "' Order by SNO1"), var_12C, -1
  loc_138BACE:   Set var_88 = var_130
  loc_138BAF7:   Me.FGrid.Redraw = False
  loc_138BB12:   Me.FGrid.Rows = 1
  loc_138BB1C:   var_8A = 1
  loc_138BB33:   If (var_88.RecordCount > 0) Then
  loc_138BB36:     Call Proc_222_38_126E3D8(var_8A)
  loc_138BB74:     Me.lblSerialNo.Caption = CStr(var_88.Fields.Item("SNo").Value)
  loc_138BBC3:     var_108 = Format(CVar(var_88.Fields.Item("VDate")), "dd/MMM/yyyy")
  loc_138BBDA:     Set var_130 = Me.Txt
  loc_138BBE0:     Call 0.Method_Proc_222_36_138C2FC0 (CInt(0), var_134, CStr(var_108))
  loc_138BBE8:     var_134.Text = 1
  loc_138BC38:     Set var_130 = Me.Txt
  loc_138BC3E:     Call 0.Method_Proc_222_36_138C2FC0 (CInt(1), var_134)
  loc_138BC46:     var_134.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), 1)
  loc_138BC5A:     ' Referenced from: 138C09B
  loc_138BC69:     If Not(var_88.EOF) Then
  loc_138BC6C:       var_B4 = vbNullString
  loc_138BC76:       Set var_A4 = Me.FGrid
  loc_138BC8B:       Set var_13C = Me.FGrid
  loc_138BC92:       var_D8 = CVar(CLng(var_8A)) 'Long
  loc_138BC9A:       var_11C = CVar(CLng(0)) 'Long
  loc_138BCCB:       var_E8 = CVar(CStr(var_88.Fields.Item("Sno1").Value)) 'String
  loc_138BCD2:       LateIdCallSt
  loc_138BCF4:       var_11C = CVar(CLng(1)) 'Long
  loc_138BD21:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationType")), var_11C, CVar(CLng(var_8A)), var_13C, var_E8)) 'String
  loc_138BD28:       LateIdCallSt
  loc_138BD68:       var_D8 = "DenominationValue"
  loc_138BD8B:       Proc_6_39_E7C810(var_108, CVar(var_88.Fields.Item(var_D8)), var_D8)
  loc_138BDE1:       var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_13C, CVar(var_88.Fields.Item(var_D8)), var_11C) = "Entry"), var_108, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationValue")), CVar(CLng(2)), CVar(CLng(var_8A)))))
  loc_138BDF1:       LateIdCallSt
  loc_138BE6D:       Proc_6_39_E7C810(var_108, CVar(var_88.Fields.Item("DenominationUnit")), FGrid.DispID_10000)
  loc_138BEC3:       var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_13C, CVar(CStr(var_184))) = "Entry"), var_108, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationUnit")), CVar(CLng(3)), CVar(CLng(var_8A)))))
  loc_138BED3:       LateIdCallSt
  loc_138BF4F:       Proc_6_39_E7C810(var_108, CVar(var_88.Fields.Item("DenominationTotal")))
  loc_138BFA5:       var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_13C, CVar(CStr(var_184))) = "Entry"), var_108, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationTotal")), CVar(CLng(4)), CVar(CLng(var_8A)))))
  loc_138BFAE:       var_1B4 = CVar(CStr(var_184)) 'String
  loc_138BFB5:       LateIdCallSt
  loc_138C019:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Relation")), CVar(CLng(5)), CVar(CLng(var_8A)), var_13C)) 'String
  loc_138C020:       LateIdCallSt
  loc_138C06B:       var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), CVar(CLng(6)), CVar(CLng(var_8A)), var_13C)) 'String
  loc_138C072:       LateIdCallSt
  loc_138C086:       Set var_13C = Nothing 
  loc_138C090:       var_8A = (var_8A + 1)
  loc_138C096:       var_88.MoveNext
  loc_138C09B:       GoTo loc_138BC5A
  loc_138C09E:     End If
  loc_138C09E:   End If
  loc_138C0BD:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_138C0D3:     Me.FGrid.Rows = 2
  loc_138C0DB:   End If
  loc_138C0EE:   Me.FGrid.FixedRows = 1
  loc_138C104:   Me.FGrid.Redraw = True
  loc_138C131:   For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1CC 'Integer
  loc_138C13B:     var_B4 = CVar(CLng(var_8A)) 'Long
  loc_138C143:     var_F8 = CVar(CLng(6)) 'Long
  loc_138C15D:     var_10C = CStr(Me.FGrid.TextMatrix))
  loc_138C169:     var_14C = CVar(CLng(var_8A)) 'Long
  loc_138C1A9:     If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Title")) Then
  loc_138C1BF:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_138C1EC:       For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9A = var_1D0 'Integer
  loc_138C205:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_138C20D:         var_B4 = -2147483626
  loc_138C220:         Me.FGrid.CellBackColor = CVar(CLng(var_9A))
  loc_138C22B:       Next var_1D0 'Integer
  loc_138C233:     Else
  loc_138C246:       Me.FGrid.Row = CVar(CLng(var_8A))
  loc_138C273:       For var_1D4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9A = var_1D4 'Integer
  loc_138C28C:         Me.FGrid.Col = CVar(CLng(var_9A))
  loc_138C2A7:         Me.FGrid.CellBackColor = &HFFFFFF
  loc_138C2B2:       Next var_1D4 'Integer
  loc_138C2B7:     End If
  loc_138C2BA:   Next var_1CC 'Integer
  loc_138C2BF: End If
  loc_138C2D2: Me.FGrid.Row = 1
  loc_138C2ED: Me.FGrid.Col = 3
  loc_138C2F5: Exit Sub
  loc_138C2F6: ' Referenced from: 138BA50
  loc_138C2F6: Proc_6_60_E62BC4()
  loc_138C2FB: Exit Sub
End Sub

Public Sub Proc_222_37_131572C
  'Data Table: 463FD0
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_8A As Integer
  Dim unk_463FE0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_E4 As Variant
  Dim var_128 As String
  Dim var_1A8 As Variant
  loc_1314FF3: Me.FGrid.Redraw = False
  loc_1315008: Set var_B4 = Me.FGrid
  loc_131500E: var_B4.Rows = 1
  loc_1315018: var_8A = 1
  loc_1315031: unk_463FE0.Execute "SELECT * From DenominationFormat Order By Sno", var_C4, -1
  loc_131503C: Set var_88 = var_B4
  loc_1315059: If (var_88.RecordCount > 0) Then
  loc_131505C:   ' Referenced from: 131549D
  loc_131506B:   If Not(var_88.EOF) Then
  loc_131506E:     var_A0 = vbNullString
  loc_1315078:     Set var_B4 = Me.FGrid
  loc_131508D:     Set var_D0 = Me.FGrid
  loc_1315094:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_131509C:     var_F4 = CVar(CLng(0)) 'Long
  loc_13150CD:     var_114 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13150D4:     LateIdCallSt
  loc_13150EE:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_1315123:     var_114 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationType")), CVar(CLng(1)), var_B0, var_D0, var_114, CVar(CLng(1)))) 'String
  loc_131512A:     LateIdCallSt
  loc_131518D:     Proc_6_39_E7C810(var_140, CVar(var_88.Fields.Item("DenominationValue")), FGrid.DispID_10000)
  loc_13151D4:     var_128 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_D0, CVar(var_88.Fields.Item("DenominationValue")), "DenominationValue")
  loc_13151E3:     var_178 = IIf((var_128 = "Entry"), var_140, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationValue")), CVar(CLng(2)), CVar(CLng(var_8A)))))
  loc_13151F3:     LateIdCallSt
  loc_1315221:     var_A0 = "Type"
  loc_131526F:     Proc_6_39_E7C810(var_140, CVar(var_88.Fields.Item("DenominationUnit")), var_A0)
  loc_13152C5:     var_178 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item(var_A0)), var_D0, CVar(CStr(var_178))) = "Entry"), var_140, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationUnit")), CVar(CLng(3)), CVar(CLng(var_8A)))))
  loc_13152D5:     LateIdCallSt
  loc_1315351:     Proc_6_39_E7C810(var_140, CVar(var_88.Fields.Item("DenominationTotal")))
  loc_13153A7:     var_178 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), var_D0, CVar(CStr(var_178))) = "Entry"), var_140, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DenominationTotal")), CVar(CLng(4)), CVar(CLng(var_8A)))))
  loc_13153B0:     var_1A8 = CVar(CStr(var_178)) 'String
  loc_13153B7:     LateIdCallSt
  loc_131541B:     var_114 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Relation")), CVar(CLng(5)), CVar(CLng(var_8A)), var_D0)) 'String
  loc_1315422:     LateIdCallSt
  loc_131546D:     var_114 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Type")), CVar(CLng(6)), CVar(CLng(var_8A)), var_D0)) 'String
  loc_1315474:     LateIdCallSt
  loc_1315488:     Set var_D0 = Nothing 
  loc_1315492:     var_8A = (var_8A + 1)
  loc_1315498:     var_88.MoveNext
  loc_131549D:     GoTo loc_131505C
  loc_13154A0:   End If
  loc_13154A0: End If
  loc_13154BF: If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13154D5:   Me.FGrid.Rows = 2
  loc_13154DD: End If
  loc_13154DD: var_A0 = 1
  loc_13154E9: var_E4 = CVar(CLng(0)) 'Long
  loc_13154EE: var_104 = "1"
  loc_13154F8: Set var_B4 = Me.FGrid
  loc_13154FE: LateIdCallSt
  loc_131551C: Me.FGrid.FixedRows = 1
  loc_1315532: Me.FGrid.Redraw = True
  loc_131555F: For var_1C0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_1C0 'Integer
  loc_1315569:   var_A0 = CVar(CLng(var_8A)) 'Long
  loc_1315571:   var_E4 = CVar(CLng(6)) 'Long
  loc_131558B:   var_128 = CStr(Me.FGrid.TextMatrix))
  loc_1315597:   var_104 = CVar(CLng(var_8A)) 'Long
  loc_13155D7:   If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Title")) Then
  loc_13155ED:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_131561A:     For var_1C4 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_8C = var_1C4 'Integer
  loc_1315633:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_131563B:       var_A0 = -2147483626
  loc_131564E:       Me.FGrid.CellBackColor = CVar(CLng(var_8C))
  loc_1315659:     Next var_1C4 'Integer
  loc_1315661:   Else
  loc_1315674:     Me.FGrid.Row = CVar(CLng(var_8A))
  loc_13156A1:     For var_1C8 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_8C = var_1C8 'Integer
  loc_13156BA:       Me.FGrid.Col = CVar(CLng(var_8C))
  loc_13156D5:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_13156E0:     Next var_1C8 'Integer
  loc_13156E5:   End If
  loc_13156E8: Next var_1C0 'Integer
  loc_1315700: Me.FGrid.Row = 1
  loc_131571B: Me.FGrid.Col = 3
  loc_1315728: Set var_88 = Nothing
  loc_131572B: Exit Sub
End Sub

Public Sub Proc_222_38_126E3D8
  'Data Table: 463FD0
  Dim var_A4 As Variant
  Dim var_94 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_F8 As MSHFlexGrid
  loc_126DE3F: If (Me.ChkSetDeno.Value = 1) Then
  loc_126DE46:   Set var_94 = Me.FGrid
  loc_126DE55:   var_94.Width = CVar(CDbl(11400))
  loc_126DE66:   var_94.Cols = 7
  loc_126DE6B:   var_A4 = 0
  loc_126DE77:   var_C4 = CVar(CLng(0)) 'Long
  loc_126DE7C:   var_E4 = "Sno"
  loc_126DE85:   LateIdCallSt
  loc_126DE90:   var_A4 = CVar(CLng(0)) 'Long
  loc_126DE95:   var_C4 = &H1F4
  loc_126DEA1:   LateIdCallSt
  loc_126DEAC:   var_A4 = CVar(CLng(0)) 'Long
  loc_126DEB7:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126DEBE:   LateIdCallSt
  loc_126DEC6:   var_A4 = 0
  loc_126DED2:   var_C4 = CVar(CLng(1)) 'Long
  loc_126DED7:   var_E4 = "Denomination Type"
  loc_126DEE0:   LateIdCallSt
  loc_126DEEB:   var_A4 = CVar(CLng(1)) 'Long
  loc_126DEF0:   var_C4 = &H1194
  loc_126DEFC:   LateIdCallSt
  loc_126DF07:   var_A4 = CVar(CLng(1)) 'Long
  loc_126DF12:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126DF19:   LateIdCallSt
  loc_126DF21:   var_A4 = 0
  loc_126DF2D:   var_C4 = CVar(CLng(2)) 'Long
  loc_126DF32:   var_E4 = "Value (In Rs.)"
  loc_126DF3B:   LateIdCallSt
  loc_126DF46:   var_A4 = CVar(CLng(2)) 'Long
  loc_126DF4B:   var_C4 = &H5DC
  loc_126DF57:   LateIdCallSt
  loc_126DF62:   var_A4 = CVar(CLng(2)) 'Long
  loc_126DF6D:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126DF74:   LateIdCallSt
  loc_126DF7C:   var_A4 = 0
  loc_126DF88:   var_C4 = CVar(CLng(3)) 'Long
  loc_126DF8D:   var_E4 = "Unit"
  loc_126DF96:   LateIdCallSt
  loc_126DFA1:   var_A4 = CVar(CLng(3)) 'Long
  loc_126DFA6:   var_C4 = &H5DC
  loc_126DFB2:   LateIdCallSt
  loc_126DFBD:   var_A4 = CVar(CLng(3)) 'Long
  loc_126DFC8:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126DFCF:   LateIdCallSt
  loc_126DFDA:   var_A4 = CVar(CLng(3)) 'Long
  loc_126DFE5:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126DFEC:   LateIdCallSt
  loc_126DFF4:   var_A4 = 0
  loc_126E000:   var_C4 = CVar(CLng(4)) 'Long
  loc_126E005:   var_E4 = "Total"
  loc_126E00E:   LateIdCallSt
  loc_126E019:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E01E:   var_C4 = &H5DC
  loc_126E02A:   LateIdCallSt
  loc_126E035:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E040:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E047:   LateIdCallSt
  loc_126E04F:   var_A4 = 0
  loc_126E05B:   var_C4 = CVar(CLng(5)) 'Long
  loc_126E060:   var_E4 = "Group"
  loc_126E069:   LateIdCallSt
  loc_126E074:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E079:   var_C4 = &H320
  loc_126E085:   LateIdCallSt
  loc_126E090:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E09B:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E0A2:   LateIdCallSt
  loc_126E0AA:   var_A4 = 0
  loc_126E0B6:   var_C4 = CVar(CLng(6)) 'Long
  loc_126E0BB:   var_E4 = "Type"
  loc_126E0C4:   LateIdCallSt
  loc_126E0CF:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E0D4:   var_C4 = &H320
  loc_126E0E0:   LateIdCallSt
  loc_126E0EB:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E0F6:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E0FD:   LateIdCallSt
  loc_126E107:   Set var_94 = Nothing 
  loc_126E10E: Else
  loc_126E112:   Set var_F8 = Me.FGrid
  loc_126E121:   var_F8.Width = CVar(CDbl(9800))
  loc_126E132:   var_F8.Cols = 7
  loc_126E137:   var_A4 = 0
  loc_126E143:   var_C4 = CVar(CLng(0)) 'Long
  loc_126E148:   var_E4 = vbNullString
  loc_126E151:   LateIdCallSt
  loc_126E15C:   var_A4 = CVar(CLng(0)) 'Long
  loc_126E161:   var_C4 = &H1F4
  loc_126E16D:   LateIdCallSt
  loc_126E178:   var_A4 = CVar(CLng(0)) 'Long
  loc_126E183:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E18A:   LateIdCallSt
  loc_126E192:   var_A4 = 0
  loc_126E19E:   var_C4 = CVar(CLng(1)) 'Long
  loc_126E1A3:   var_E4 = vbNullString
  loc_126E1AC:   LateIdCallSt
  loc_126E1B7:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E1BC:   var_C4 = &H1194
  loc_126E1C8:   LateIdCallSt
  loc_126E1D3:   var_A4 = CVar(CLng(1)) 'Long
  loc_126E1DE:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E1E5:   LateIdCallSt
  loc_126E1ED:   var_A4 = 0
  loc_126E1F9:   var_C4 = CVar(CLng(2)) 'Long
  loc_126E1FE:   var_E4 = vbNullString
  loc_126E207:   LateIdCallSt
  loc_126E212:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E217:   var_C4 = &H5DC
  loc_126E223:   LateIdCallSt
  loc_126E22E:   var_A4 = CVar(CLng(2)) 'Long
  loc_126E239:   var_C4 = CVar(CInt(1)) 'Integer
  loc_126E240:   LateIdCallSt
  loc_126E248:   var_A4 = 0
  loc_126E254:   var_C4 = CVar(CLng(3)) 'Long
  loc_126E259:   var_E4 = vbNullString
  loc_126E262:   LateIdCallSt
  loc_126E26D:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E272:   var_C4 = &H5DC
  loc_126E27E:   LateIdCallSt
  loc_126E289:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E294:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E29B:   LateIdCallSt
  loc_126E2A6:   var_A4 = CVar(CLng(3)) 'Long
  loc_126E2B1:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E2B8:   LateIdCallSt
  loc_126E2C0:   var_A4 = 0
  loc_126E2CC:   var_C4 = CVar(CLng(4)) 'Long
  loc_126E2D1:   var_E4 = vbNullString
  loc_126E2DA:   LateIdCallSt
  loc_126E2E5:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E2EA:   var_C4 = &H5DC
  loc_126E2F6:   LateIdCallSt
  loc_126E301:   var_A4 = CVar(CLng(4)) 'Long
  loc_126E30C:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E313:   LateIdCallSt
  loc_126E31B:   var_A4 = 0
  loc_126E327:   var_C4 = CVar(CLng(5)) 'Long
  loc_126E32C:   var_E4 = vbNullString
  loc_126E335:   LateIdCallSt
  loc_126E340:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E345:   var_C4 = 0
  loc_126E351:   LateIdCallSt
  loc_126E35C:   var_A4 = CVar(CLng(5)) 'Long
  loc_126E367:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E36E:   LateIdCallSt
  loc_126E376:   var_A4 = 0
  loc_126E382:   var_C4 = CVar(CLng(6)) 'Long
  loc_126E387:   var_E4 = vbNullString
  loc_126E390:   LateIdCallSt
  loc_126E39B:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E3A0:   var_C4 = 0
  loc_126E3AC:   LateIdCallSt
  loc_126E3B7:   var_A4 = CVar(CLng(6)) 'Long
  loc_126E3C2:   var_C4 = CVar(CInt(7)) 'Integer
  loc_126E3C9:   LateIdCallSt
  loc_126E3D3:   Set var_F8 = Nothing 
  loc_126E3D7: End If
  loc_126E3D7: Exit Sub
End Sub

Public Sub Proc_222_39_DFBF08
  'Data Table: 463FD0
  loc_DFBF04: Exit Sub
End Sub

Public Sub Proc_222_40_E4575C
  'Data Table: 463FD0
  loc_E45738: Set var_88 = Me.TopCtrl1
  loc_E4573E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_E45757: If (CStr() = "Browse") Then
  loc_E4575A:   Exit Sub
  loc_E4575B: End If
  loc_E4575B: Exit Sub
End Sub

Public Sub Proc_222_41_12AAF2C(arg_C) '12AAF2C
  'Data Table: 463FD0
  Dim var_94 As Variant
  Dim var_AC As Long
  Dim var_C8 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_B0 As Variant
  Dim var_13C As Variant
  Dim var_B4 As String
  Dim var_14C As Variant
  loc_12AA928: If (arg_C = 0) Then
  loc_12AA946:   If (Me.ChkSetDeno.Value = 1) Then
  loc_12AA95C:     var_AC = CLng(Me.FGrid.Col)
  loc_12AA96C:     If Not (var_AC = CLng(3)) Then
  loc_12AA976:       If Not (var_AC = CLng(1)) Then
  loc_12AA980:         If Not (var_AC = CLng(2)) Then
  loc_12AA98A:           If (var_AC = CLng(4)) Then
  loc_12AA98D:           End If
  loc_12AA98D:         End If
  loc_12AA98D:       End If
  loc_12AA9A0:       var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AA9A9:       Set var_DC = Me.FGrid
  loc_12AA9CA:       Set var_94 = Me.TxtGrid
  loc_12AA9D0:       Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0, var_B4, CVar(CLng(var_DC.Col)))
  loc_12AA9D8:       var_FC = var_B0.Text
  loc_12AA9EF:       var_13C = CVar(CStr(Trim(CVar(var_B4)))) 'String
  loc_12AA9F7:       Set var_150 = Me.FGrid
  loc_12AA9FD:       LateIdCallSt
  loc_12AAA22:     Else
  loc_12AAA29:       If (var_AC = CLng(5)) Then
  loc_12AAA39:         Set var_94 = Me.TxtGrid
  loc_12AAA3F:         Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0, var_B4, var_150)
  loc_12AAA47:         var_13C = var_B0.Text
  loc_12AAA5E:         If (var_B4 <> vbNullString) Then
  loc_12AAA79:           Set var_B0 = Me.ListView.SelectedItem
  loc_12AAA7F:           var_B4 = var_B0.Text
  loc_12AAA91:           Set var_C8 = Me.TxtGrid
  loc_12AAA97:           Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_DC, var_B4)
  loc_12AAA9F:           var_DC.Text = var_AC
  loc_12AAAB5:         End If
  loc_12AAAC8:         var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AAAD1:         Set var_DC = Me.FGrid
  loc_12AAAE0:         var_11C = CVar(CLng(var_DC.Col)) 'Long
  loc_12AAAF2:         Set var_94 = Me.TxtGrid
  loc_12AAAF8:         Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0, var_B4)
  loc_12AAB00:         var_11C = var_B0.Text
  loc_12AAB08:         var_D8 = CVar(var_B4) 'String
  loc_12AAB10:         Set var_150 = Me.FGrid
  loc_12AAB16:         LateIdCallSt
  loc_12AAB37:       Else
  loc_12AAB3E:         If (var_AC = CLng(6)) Then
  loc_12AAB4E:           Set var_94 = Me.TxtGrid
  loc_12AAB54:           Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0, var_B4, var_150)
  loc_12AAB5C:           var_D8 = var_B0.Text
  loc_12AAB73:           If (var_B4 <> vbNullString) Then
  loc_12AAB8E:             Set var_B0 = Me.ListView.SelectedItem
  loc_12AAB94:             var_B4 = var_B0.Text
  loc_12AABA6:             Set var_C8 = Me.TxtGrid
  loc_12AABAC:             Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_DC, var_B4)
  loc_12AABB4:             var_DC.Text = var_FC
  loc_12AABCA:           End If
  loc_12AABDD:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AABF5:           var_11C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12AAC07:           Set var_94 = Me.TxtGrid
  loc_12AAC0D:           Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0, var_B4)
  loc_12AAC15:           var_11C = var_B0.Text
  loc_12AAC1D:           var_D8 = CVar(var_B4) 'String
  loc_12AAC25:           Set var_150 = Me.FGrid
  loc_12AAC2B:           LateIdCallSt
  loc_12AAC5C:           var_FC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AAC64:           var_11C = CVar(CLng(6)) 'Long
  loc_12AAC6D:           Set var_B0 = Me.FGrid
  loc_12AAC7E:           var_B4 = CStr(var_B0.TextMatrix))
  loc_12AAC99:           var_14C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AACE1:           If (CVar(CLng(6)) Or (CStr(Me.FGrid.TextMatrix)) = "Total")) Then
  loc_12AAD09:             For var_188 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_8E = var_188 'Integer
  loc_12AAD22:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_12AAD2A:               var_FC = -2147483626
  loc_12AAD3D:               Me.FGrid.CellBackColor = CVar(CLng(var_8E))
  loc_12AAD48:             Next var_188 'Integer
  loc_12AAD50:           Else
  loc_12AAD75:             For var_18C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):       var_8E = var_18C 'Integer
  loc_12AAD8E:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_12AADA9:               Me.FGrid.CellBackColor = &HFFFFFF
  loc_12AADB4:             Next var_18C 'Integer
  loc_12AADB9:           End If
  loc_12AADB9:         End If
  loc_12AADB9:       End If
  loc_12AADB9:     End If
  loc_12AADBC:   Else
  loc_12AADDF:     If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_12AADEC:       Set var_94 = Me.TxtGrid
  loc_12AADF2:       Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0)
  loc_12AAE0A:       If Not(IsNumeric(CVar(var_B0))) Then
  loc_12AAE1E:         Set var_94 = Me.TxtGrid
  loc_12AAE24:         Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0)
  loc_12AAE2C:         var_B0.Text = CStr(0)
  loc_12AAE3B:       End If
  loc_12AAE48:       Set var_94 = Me.TxtGrid
  loc_12AAE4E:       Call 0.Method_Proc_222_41_12AAF2C0 (arg_C, var_B0)
  loc_12AAE79:       var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12AAE91:       var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_12AAECC:       LateIdCallSt
  loc_12AAEF3:       Call Proc_222_35_1374914(Me.FGrid, CVar(CStr(Format(CVar(Val(var_B0.Text)), "0"))), 1, 1)
  loc_12AAEF8:     End If
  loc_12AAEF8:   End If
  loc_12AAEF8: End If
  loc_12AAF0B: Set var_94 = Me.TxtGrid
  loc_12AAF11: Call 0.Method_Proc_222_41_12AAF2C0 (0, var_B0, 0, &HFF)
  loc_12AAF19: var_B0.MaxLength = var_14C
  loc_12AAF25: Proc_222_41_12AAF2C = var_11C
End Sub

Public Sub Proc_222_42_E48844
  'Data Table: 463FD0
  loc_E4882B: If (Me.FrmList.Visible = &HFF) Then
  loc_E4883A:   Me.FrmList.Visible = False
  loc_E48842: End If
  loc_E48842: Exit Sub
End Sub
