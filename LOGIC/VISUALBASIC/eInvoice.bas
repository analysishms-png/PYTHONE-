
Public Sub Proc_348_0_113B044
  'Data Table: 421708
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_D8 As Variant
  Dim var_118 As String
  Dim var_F8 As Variant
  loc_113ACE8: If (Proc_348_16_FA99C8() = 0) Then
  loc_113ACEB:   Exit Sub
  loc_113ACEC: End If
  loc_113ACEF: Me(120) = vbNullString
  loc_113ACF7: Me(124) = vbNullString
  loc_113AD45: var_A8 = Me(136) & "auth?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&user_name=" & Me(68) & "&eInvPwd="
  loc_113AD4E: Me(24) = var_A8 & Me(72)
  loc_113AD73: Me(8) = Proc_344_0_ED9850(Me(24))
  loc_113AD83: Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_113AD89: var_B8 = "Status"
  loc_113ADA7: If (MemVar_41E208.Item = "0") Then
  loc_113ADAA:   var_118 = "ErrorMessage"
  loc_113ADB0:   var_D8 = 1
  loc_113ADB6:   var_B8 = "ErrorDetails"
  loc_113ADC1:   var_E8 = MemVar_41E208.Item
  loc_113ADC9:   VarIndexLdRfVar
  loc_113ADCF:   VarLateMemCallLdRfVar
  loc_113ADEA:   MsgBox(var_138, &H10, var_158, var_178, var_198)
  loc_113ADFE:   Exit Sub
  loc_113AE02: Else
  loc_113AE02:   var_B8 = "status_cd"
  loc_113AE20:   If (MemVar_41E208.Item = "0") Then
  loc_113AE23:     var_D8 = "message"
  loc_113AE29:     var_B8 = "error"
  loc_113AE34:     var_E8 = MemVar_41E208.Item
  loc_113AE3C:     VarLateMemCallLdRfVar
  loc_113AE57:     MsgBox(var_F8, &H10, var_138, var_158, var_178)
  loc_113AE69:     Exit Sub
  loc_113AE6A:   End If
  loc_113AE6A:   var_B8 = "Message"
  loc_113AE88:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_113AEA4:     var_E8 = MemVar_41E208.Item
  loc_113AEAC:     MsgBox(var_E8, "Message", 0, var_F8, var_138)
  loc_113AEBC:     Exit Sub
  loc_113AEBD:   End If
  loc_113AEC0:   Me(124) = vbNullString
  loc_113AEC5: End If
  loc_113AED0: Me(104) = CVar(FreeFile(var_E8))
  loc_113AED9: var_D8 = "AuthToken"
  loc_113AEDF: var_B8 = "Data"
  loc_113AEFB: Me(40) = CStr(MemVar_41E208.Item.Item)
  loc_113AF08: var_D8 = "TokenExpiry"
  loc_113AF0E: var_B8 = "Data"
  loc_113AF2A: Me(76) = CStr(MemVar_41E208.Item.Item)
  loc_113AF62: Me(76) = CStr(Format(Me(76), "DD/MM/YYYY hh:mm:ss"))
  loc_113AF6F: var_D8 = "AuthToken"
  loc_113AF75: var_B8 = "Data"
  loc_113AF80: var_E8 = MemVar_41E208.Item
  loc_113AF88: var_F8 = var_E8.Item
  loc_113AF91: Me(128) = CStr(var_F8)
  loc_113AFAA: var_19C = Me.Global.App
  loc_113AFC9: Open App.Path & "\LastAuthToken.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_113AFE2: Print CInt(Me(104)), Me(40)
  loc_113AFEE: Close CInt(Me(104))
  loc_113AFFA: If (Me(40) = vbNullString) Then
  loc_113B015:   MsgBox(Me(8), 0, var_E8, var_F8, var_138)
  loc_113B023:   Exit Sub
  loc_113B027: Else
  loc_113B039:   Me(124) = Me(40) & "Exp :   " & Me(76)
  loc_113B042: End If
  loc_113B042: Exit Sub
End Sub

Public Sub Proc_348_1_15A98F4(arg_C, arg_10) '15A98F4
  'Data Table: 421708
  Dim var_AC As Variant
  Dim var_120 As String
  Dim var_140 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  Dim var_FC As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  Dim var_1DC As String
  Dim var_1BC As Variant
  Dim var_18C As String
  Dim var_1AC As Variant
  Dim var_21C As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_23C As Variant
  Dim var_19C As Variant
  Dim var_1FC As Variant
  Dim var_29C As String
  Dim var_26C As String
  Dim var_27C As Variant
  Dim var_2DC As Variant
  Dim var_2EC As String
  Dim var_2FC As Variant
  Dim var_32C As Variant
  Dim var_3CC As Variant
  Dim var_DC As Variant
  Dim var_92 As Integer
  Dim var_1EC As Variant
  Dim var_24C As Variant
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_500 As IBodyPart
  Dim var_504 As Stream
  Dim var_508 As Stream
  loc_15A878C: If (Proc_348_16_FA99C8() = 0) Then
  loc_15A878F:   Exit Sub
  loc_15A8790: End If
  loc_15A8793: Me(148) = vbNullString
  loc_15A87A2: If (Me(144) = vbNullString) Then
  loc_15A87BE:   MsgBox("Please paste the JsonBody first and then click on Generate eInvoice", &H10, var_DC, var_FC, var_11C)
  loc_15A87CE:   Exit Sub
  loc_15A87CF: End If
  loc_15A87D4: var_98 = Me(144)
  loc_15A8820: var_140 = Me(140) & "Invoice?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&User_Name=" & Me(68) & "&QrCodeSize="
  loc_15A883E: Me(24) = var_140 & CStr(Me(168)) & "&AuthToken=" & Me(128)
  loc_15A886C: Me(8) = Proc_344_1_E93588(Me(24))
  loc_15A887C: Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_15A8882: var_AC = "Status"
  loc_15A88A0: If (MemVar_41E208.Item = "0") Then
  loc_15A88A3:   var_15C = "ErrorCode"
  loc_15A88A9:   var_EC = 1
  loc_15A88AF:   var_AC = "ErrorDetails"
  loc_15A88C2:   VarIndexLdRfVar
  loc_15A88E1:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A88E4:     var_15C = "ErrorMessage"
  loc_15A88EA:     var_EC = 1
  loc_15A88F0:     var_AC = "ErrorDetails"
  loc_15A8903:     VarIndexLdRfVar
  loc_15A8916:     var_11C = MemVar_41E208.Item.Item Like "*duplicate*"
  loc_15A891A:     var_1DC = "ErrorMessage"
  loc_15A8920:     var_1BC = 1
  loc_15A8939:     VarIndexLdRfVar
  loc_15A8950:     var_23C = "ErrorDetails" Or MemVar_41E208.Item.Item Like "*Duplicate*"
  loc_15A8965:     If CBool(var_23C) Then
  loc_15A8976:       var_15C = "ErrorCode"
  loc_15A897C:       var_EC = 1
  loc_15A8995:       VarIndexLdRfVar
  loc_15A89CB:       VarIndexLdRfVar
  loc_15A89DD:       MsgBox("ErrorDetails" & MemVar_41E208.Item.Item, 1, "ErrorMessage", MemVar_41E208.Item.Item & " : ", "ErrorDetails")
  loc_15A8A09:       var_19C = "IRN: "
  loc_15A8A0E:       var_17C = "Irn"
  loc_15A8A14:       var_15C = "Desc"
  loc_15A8A1A:       var_EC = 1
  loc_15A8A33:       VarIndexLdRfVar
  loc_15A8A39:       VarLateMemCallLdRfVar
  loc_15A8A5B:       var_21C = "InfoDtls" & MemVar_41E208.Item.Item & vbCrLf & "AckNo: " 
  loc_15A8A5F:       var_29C = "AckNo"
  loc_15A8A65:       var_26C = "Desc"
  loc_15A8A6B:       var_20C = 1
  loc_15A8A84:       VarIndexLdRfVar
  loc_15A8A8A:       VarLateMemCallLdRfVar
  loc_15A8A92:       var_27C = MemVar_41E208.Item.Item
  loc_15A8AA3:       var_2DC = "InfoDtls" & var_27C & vbCrLf 
  loc_15A8AD5:       VarIndexLdRfVar
  loc_15A8ADB:       VarLateMemCallLdRfVar
  loc_15A8AEB:       var_3CC = "InfoDtls" & MemVar_41E208.Item.Item 
  loc_15A8AEF:       MsgBox(var_3CC, 1, "Desc", "AckDt", var_2DC & "AckDt: ")
  loc_15A8B23:       Exit Sub
  loc_15A8B27:     Else
  loc_15A8B27:       var_15C = "ErrorCode"
  loc_15A8B2D:       var_EC = 1
  loc_15A8B33:       var_AC = "ErrorDetails"
  loc_15A8B46:       VarIndexLdRfVar
  loc_15A8B56:       var_1DC = "ErrorMessage"
  loc_15A8B5C:       var_1BC = 1
  loc_15A8B62:       var_18C = "ErrorDetails"
  loc_15A8B75:       VarIndexLdRfVar
  loc_15A8BA2:       var_22C = MemVar_41E208.Item.Item & " :   " & MemVar_41E208.Item.Item 
  loc_15A8BA6:       MsgBox(var_22C, &H10, var_23C, var_25C, var_27C)
  loc_15A8BC4:       Exit Sub
  loc_15A8BC5:     End If
  loc_15A8BC5:   End If
  loc_15A8BC5: End If
  loc_15A8BC5: var_AC = "Status_cd"
  loc_15A8BD0: var_BC = MemVar_41E208.Item
  loc_15A8BD8: var_EC = "0"
  loc_15A8C0C: If CBool("status_cd" Or (MemVar_41E208.Item = "0")) Then
  loc_15A8C0F:   var_EC = "error_cd"
  loc_15A8C15:   var_AC = "error"
  loc_15A8C3F:   If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_15A8C76:     var_FC = "error" & MemVar_41E208.Item.Item 
  loc_15A8C7F:     var_11C = var_FC & vbCrLf 
  loc_15A8C94:     var_1AC = MemVar_41E208.Item
  loc_15A8C9C:     var_1FC = var_1AC.Item
  loc_15A8CA8:     MsgBox("error" & var_1FC, "message", var_11C, "error_cd", "Error Code: ")
  loc_15A8CCF:     var_DC = "Message Box Title"
  loc_15A8CDA:     var_AC = "Do you want to call AuthToken"
  loc_15A8CEC:     Me(12) = CStr(MsgBox(var_AC, &H124, var_DC, var_FC, var_11C))
  loc_15A8D0B:     If (CDbl(Me(12)) = CDbl(6)) Then
  loc_15A8D0E:       Proc_348_0_113B044(0, var_22C, var_23C, var_25C, var_AC)
  loc_15A8D13:       var_AC = "Status"
  loc_15A8D31:       If (MemVar_41E208.Item = "0") Then
  loc_15A8D34:         var_15C = "ErrorMessage"
  loc_15A8D3A:         var_EC = 1
  loc_15A8D40:         var_AC = "ErrorDetails"
  loc_15A8D4B:         var_BC = MemVar_41E208.Item
  loc_15A8D53:         VarIndexLdRfVar
  loc_15A8D59:         VarLateMemCallLdRfVar
  loc_15A8D74:         MsgBox(var_FC, &H10, var_11C, var_1AC, var_1FC)
  loc_15A8D88:         Exit Sub
  loc_15A8D8C:       Else
  loc_15A8D8C:         var_AC = "status_cd"
  loc_15A8DAA:         If (MemVar_41E208.Item = "0") Then
  loc_15A8DD4:           VarLateMemCallLdRfVar
  loc_15A8DDC:           MsgBox(MemVar_41E208.Item, "error", "message", 0, var_FC)
  loc_15A8DEE:           Exit Sub
  loc_15A8DEF:         End If
  loc_15A8DEF:         var_AC = "Message"
  loc_15A8E0D:         If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A8E29:           var_BC = MemVar_41E208.Item
  loc_15A8E31:           MsgBox(var_BC, "Message", 0, var_DC, var_FC)
  loc_15A8E41:           Exit Sub
  loc_15A8E42:         End If
  loc_15A8E45:         Me(124) = vbNullString
  loc_15A8E4A:       End If
  loc_15A8E52:       var_92 = FreeFile(var_BC)
  loc_15A8E71:       var_DC = MemVar_41E208.Item.Item
  loc_15A8E7A:       Me(40) = CStr(var_DC)
  loc_15A8E93:       var_430 = Me.Global.App
  loc_15A8EAF:       Open App.Path & "\LastAuthToken.txt" For Output As var_92 Len = &HFF
  loc_15A8EC5:       Print var_92, Me(40)
  loc_15A8ECE:       Close var_92
  loc_15A8ED6:       Proc_348_1_15A98F4(arg_C, arg_10, "Data", "AuthToken", var_92, var_11C, "Data", var_11C)
  loc_15A8EDB:       Exit Sub
  loc_15A8EDF:     Else
  loc_15A8EDF:       Exit Sub
  loc_15A8EE0:     End If
  loc_15A8EE3:   Else
  loc_15A8EE3:     var_EC = "message"
  loc_15A8EE9:     var_AC = "error"
  loc_15A8EF4:     var_BC = MemVar_41E208.Item
  loc_15A8EFC:     VarLateMemCallLdRfVar
  loc_15A8F17:     MsgBox(var_DC, &H10, var_FC, var_11C, var_1AC)
  loc_15A8F29:   End If
  loc_15A8F29:   Exit Sub
  loc_15A8F2A: End If
  loc_15A8F2A: var_AC = "Message"
  loc_15A8F48: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A8F4B:   var_AC = "Message"
  loc_15A8F71:   MsgBox(MemVar_41E208.Item, &H10, var_DC, var_FC, var_11C)
  loc_15A8F81:   Exit Sub
  loc_15A8F82: End If
  loc_15A8F82: var_AC = "Status"
  loc_15A8FA0: If (MemVar_41E208.Item = "0") Then
  loc_15A8FA3:   var_15C = "ErrorCode"
  loc_15A8FA9:   var_EC = 1
  loc_15A8FAF:   var_AC = "ErrorDetails"
  loc_15A8FC2:   VarIndexLdRfVar
  loc_15A8FE1:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A8FE4:     var_15C = "ErrorCode"
  loc_15A8FEA:     var_EC = 1
  loc_15A8FF0:     var_AC = "ErrorDetails"
  loc_15A9003:     VarIndexLdRfVar
  loc_15A9013:     var_1DC = "ErrorMessage"
  loc_15A9019:     var_1BC = 1
  loc_15A901F:     var_18C = "ErrorDetails"
  loc_15A9032:     VarIndexLdRfVar
  loc_15A9063:     MsgBox(MemVar_41E208.Item.Item & " : " & MemVar_41E208.Item.Item, &H10, var_23C, var_25C, var_27C)
  loc_15A9081:     Exit Sub
  loc_15A9085:   Else
  loc_15A9085:     var_15C = "ErrorCode"
  loc_15A908B:     var_EC = 1
  loc_15A9091:     var_AC = "ErrorDetails"
  loc_15A90A4:     VarIndexLdRfVar
  loc_15A90C3:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_15A90D4:       var_15C = "ErrorCode"
  loc_15A90DA:       var_EC = 1
  loc_15A90F3:       VarIndexLdRfVar
  loc_15A9106:       var_11C = MemVar_41E208.Item.Item & " :   " 
  loc_15A9129:       VarIndexLdRfVar
  loc_15A912F:       var_21C = MemVar_41E208.Item.Item
  loc_15A913B:       MsgBox("ErrorDetails" & var_21C, 1, "ErrorMessage", var_11C, "ErrorDetails")
  loc_15A9159:       Exit Sub
  loc_15A915A:     End If
  loc_15A915A:   End If
  loc_15A915A: End If
  loc_15A916E: Me(20) = CStr(MemVar_41E208.Item)
  loc_15A9181: Me(48) = Proc_343_2_EC6BA0(Me(20), "Data", var_EC, var_15C, 0, var_23C)
  loc_15A9187: var_AC = "Irn"
  loc_15A91A6: Me(120) = CStr(Trim(MemVar_41E208.Item))
  loc_15A91B8: Me(124) = Me(8)
  loc_15A91BD: var_AC = "EwbNo"
  loc_15A91DB: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_15A91DE:   var_AC = "EwbNo"
  loc_15A91E9:   var_BC = MemVar_41E208.Item
  loc_15A91F2:   Me(148) = CStr(var_BC)
  loc_15A91FB: End If
  loc_15A9203: var_92 = FreeFile(var_BC)
  loc_15A9209: var_AC = "QrCodeImage"
  loc_15A921D: var_88 = CStr(MemVar_41E208.Item)
  loc_15A924B: Open App.Path & "\QR.txt" For Output As var_92 Len = &HFF
  loc_15A925F: Print var_92, var_88
  loc_15A9268: Close var_92
  loc_15A926A: var_AC = "AckNo"
  loc_15A9284: var_AC = "AckDt"
  loc_15A929B: var_AC = "Irn"
  loc_15A92B5: var_AC = "SignedInvoice"
  loc_15A92CF: var_AC = "SignedQRCode"
  loc_15A92E9: var_AC = "Status"
  loc_15A9303: var_AC = "Remarks"
  loc_15A930E: var_BC = MemVar_41E208.Item
  loc_15A9332: var_AC = CStr(MemVar_41E208.Item)
  loc_15A933A: Proc_6_17_EAA2B0(var_BC, var_AC, "Update eInvoiceBill1 Set AckNo=", var_4E8, -1, Me.Global.App, var_AC, var_AC)
  loc_15A9342: var_DC = var_AC & var_BC 
  loc_15A9355: Proc_6_8_EB0DE4(var_11C, MemVar_41E208.Item, var_DC & ",AckDt=", var_AC, var_AC)
  loc_15A9375: Proc_6_17_EAA2B0(var_21C, CStr(MemVar_41E208.Item), var_AC & var_11C & ",IRN=", var_AC)
  loc_15A9395: Proc_6_17_EAA2B0(var_25C, CStr(MemVar_41E208.Item), var_AC & var_21C & ",SignedInvoice=")
  loc_15A93B5: Proc_6_17_EAA2B0(var_2DC, CStr(MemVar_41E208.Item))
  loc_15A93BD: var_2FC = var_92 & var_25C & ",SignedQRCode=" & var_2DC 
  loc_15A93C6: var_32C = var_2FC & ",QrCodeImage=" 
  loc_15A93D5: Proc_6_17_EAA2B0(var_37C, var_88)
  loc_15A93F7: Proc_6_17_EAA2B0(var_3CC, Me(124))
  loc_15A9417: Proc_6_17_EAA2B0(var_42C, CStr(MemVar_41E208.Item))
  loc_15A9437: Proc_6_17_EAA2B0(var_498, CStr(var_BC))
  loc_15A9457: Proc_6_17_EAA2B0(var_4C8, arg_C)
  loc_15A9463: var_120 = CStr(var_32C & var_37C & ",JsonResponse=" & var_3CC & ",Status=" & var_42C & ",Remarks=" & var_498 & " Where Docid=" & var_4C8)
  loc_15A946D: MemVar_41E208.Connection15.Execute var_120, var_AC, 
  loc_15A94DC: var_430 = Me.Global.App
  loc_15A94F8: Open App.Path & "\LastIRN.txt" For Output As var_92 Len = &HFF
  loc_15A9517: Print var_92, Trim(Trim(Me(120)))
  loc_15A9523: Close var_92
  loc_15A9531: var_430 = Me.Global.App
  loc_15A954D: Open App.Path & "\GeneInvBody.txt" For Output As var_92 Len = &HFF
  loc_15A9573: Print var_92, Trim(Me(144))
  loc_15A957F: Close var_92
  loc_15A958D: var_430 = Me.Global.App
  loc_15A95A9: Open App.Path & "\Result.txt" For Output As var_92 Len = &HFF
  loc_15A95CF: Print var_92, Trim(Me(124))
  loc_15A95DB: Close var_92
  loc_15A95E1: Set var_4FC = New 
  loc_15A95EA: var_430 = Me.Message.BodyPart
  loc_15A95F2: Set var_500 = var_430
  loc_15A95FB: var_500.ContentMediaType = "image/bmp/jpg/png"
  loc_15A9606: var_500.ContentTransferEncoding = "base64"
  loc_15A9611: var_500.GetEncodedContentStream
  loc_15A9619: Set var_504 = var_430
  loc_15A9628: var_430 = Me.Global.App
  loc_15A9642: var_504.LoadFromFile App.Path & "\QR.txt"
  loc_15A9654: var_504.Flush
  loc_15A965B: Set var_504 = Nothing 
  loc_15A967F: Me(88) = App.Path & "\QRImage.jpg"
  loc_15A9691: var_500.GetDecodedContentStream
  loc_15A96A9: Me.Global.App.SaveToFile Me(88)
  loc_15A96B0: Set var_508 = Nothing 
  loc_15A96B6: Set var_500 = Nothing 
  loc_15A96BC: Set var_4FC = Nothing 
  loc_15A96E9: Me(124) = Proc_348_9_E612A8(App.Path & "\Result.txt", 2)
  loc_15A9703: Me(48) = Proc_343_2_EC6BA0(Me(124), Me.Global.App)
  loc_15A971A: If ((Me(148) = vbNullString) And (arg_10 = 1)) Then
  loc_15A971D:   var_AC = "InfoDtls"
  loc_15A973B:   If (IsNull(MemVar_41E208.Item) = &HFF) Then
  loc_15A973E:     Exit Sub
  loc_15A9742:   Else
  loc_15A9742:     var_15C = "InfCd"
  loc_15A9748:     var_EC = 1
  loc_15A974E:     var_AC = "InfoDtls"
  loc_15A9761:     VarIndexLdRfVar
  loc_15A9767:     var_FC = MemVar_41E208.Item.Item
  loc_15A9780:     If CBool(var_FC <> vbNullString) Then
  loc_15A9783:       var_19C = "ErrorCode"
  loc_15A9789:       var_17C = 1
  loc_15A978F:       var_15C = "Desc"
  loc_15A9795:       var_EC = 1
  loc_15A979B:       var_AC = "InfoDtls"
  loc_15A97AE:       VarIndexLdRfVar
  loc_15A97B4:       VarLateMemCallLdRfVar
  loc_15A97BC:       VarIndexLdRfVar
  loc_15A97DF:       If CBool(MemVar_41E208.Item.Item <> vbNullString) Then
  loc_15A97F0:         var_AC = "IRN Generated but - E-Way Bill not generated for this Invoice, Please check EWB Error given below!!"
  loc_15A97FB:         MsgBox(var_AC, 0, var_DC, var_FC, var_11C)
  loc_15A980B:         var_19C = "ErrorCode"
  loc_15A9811:         var_17C = 1
  loc_15A9817:         var_15C = "Desc"
  loc_15A981D:         var_EC = 1
  loc_15A9823:         var_AC = "InfoDtls"
  loc_15A9836:         VarIndexLdRfVar
  loc_15A983C:         VarLateMemCallLdRfVar
  loc_15A9844:         VarIndexLdRfVar
  loc_15A9854:         var_2EC = "ErrorMessage"
  loc_15A985A:         var_2AC = 1
  loc_15A9860:         var_28C = "Desc"
  loc_15A9866:         var_24C = 1
  loc_15A986C:         var_1EC = "InfoDtls"
  loc_15A987F:         VarIndexLdRfVar
  loc_15A9885:         VarLateMemCallLdRfVar
  loc_15A988D:         VarIndexLdRfVar
  loc_15A98C7:         MsgBox("EWB Error:   " & MemVar_41E208.Item.Item & ":   " & MemVar_41E208.Item.Item, &H10, var_2FC, var_32C, var_37C)
  loc_15A98EF:         GoTo loc_15A98F2
  loc_15A98F2:         ' Referenced from:   15A98EF
  loc_15A98F2:       End If
  loc_15A98F2:     End If
  loc_15A98F2:   End If
  loc_15A98F2: End If
  loc_15A98F2: Exit Sub
End Sub

Public Sub Proc_348_2_12D8A94
  'Data Table: 421708
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_B0 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_214 As Variant
  Dim var_25C As IBodyPart
  Dim var_260 As Stream
  Dim var_264 As Stream
  loc_12D8424: If (Proc_348_16_FA99C8() = 0) Then
  loc_12D8427:   Exit Sub
  loc_12D8428: End If
  loc_12D842B: Me(124) = vbNullString
  loc_12D8433: Me(144) = vbNullString
  loc_12D8442: If (Me(120) = vbNullString) Then
  loc_12D8451:   var_88 = Me.Global.App
  loc_12D8474:   var_B0 = Trim(CVar(Proc_348_8_E613A8(App.Path & "\LastIRN.txt")))
  loc_12D847D:   Me(120) = CStr(var_B0)
  loc_12D84AA:   var_B4 = CStr(Trim(Me(120)))
  loc_12D84C9:   MsgBox("Last Stored IRN Loaded", 0, var_B0, var_F4, var_114)
  loc_12D84F2:   MsgBox("Please give the IRN Number first!", 0, var_B0, var_F4, var_114)
  loc_12D8502:   GoTo loc_12D8505
  loc_12D8505:   ' Referenced from: 12D8502
  loc_12D8505: End If
  loc_12D8526: var_F4 = CVar(Me(140) & "Invoice/irn/") & Trim(Me(120)) 
  loc_12D852F: var_114 = var_F4 & "?aspid=" 
  loc_12D853B: var_124 = var_114 & CVar(Me(28)) 
  loc_12D8544: var_134 = var_124 & "&password=" 
  loc_12D858F: var_214 = var_134 & CVar(Me(32)) & "&Gstin=" & CVar(Me(64)) & "&user_name=" & CVar(Me(68)) & "&AuthToken=" & CVar(Me(128)) 
  loc_12D85A9: Me(24) = CStr(var_214 & "&QrCodeSize=" & CVar(Me(168)))
  loc_12D85DA: Me(8) = Proc_344_0_ED9850(Me(24))
  loc_12D85EA: Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_12D85F0: var_C4 = "Status"
  loc_12D860E: If (MemVar_41E208.Item = "0") Then
  loc_12D8611:   var_144 = "ErrorMessage"
  loc_12D8617:   var_E4 = 1
  loc_12D861D:   var_C4 = "ErrorDetails"
  loc_12D8628:   var_A0 = MemVar_41E208.Item
  loc_12D8630:   VarIndexLdRfVar
  loc_12D8636:   VarLateMemCallLdRfVar
  loc_12D8651:   MsgBox(var_F4, &H10, var_114, var_124, var_134)
  loc_12D8665:   Exit Sub
  loc_12D8669: Else
  loc_12D8669:   var_C4 = "status_cd"
  loc_12D8687:   If (MemVar_41E208.Item = "0") Then
  loc_12D868A:     var_E4 = "error_cd"
  loc_12D8690:     var_C4 = "error"
  loc_12D86A3:     var_B0 = MemVar_41E208.Item.Item
  loc_12D86BA:     If (var_B0 = "GSP752") Then
  loc_12D86D6:       MsgBox("eInvoice AuthToken not found or expired, Please click on Get Auth Token button first and then call this API again.", 0, var_B0, var_F4, var_114)
  loc_12D86E6:       Exit Sub
  loc_12D86E7:     End If
  loc_12D86E7:     var_E4 = "message"
  loc_12D86ED:     var_C4 = "error"
  loc_12D86F8:     var_A0 = MemVar_41E208.Item
  loc_12D8700:     VarLateMemCallLdRfVar
  loc_12D871B:     MsgBox(var_B0, &H10, var_F4, var_114, var_124)
  loc_12D872D:     Exit Sub
  loc_12D872E:   End If
  loc_12D872E:   var_C4 = "Message"
  loc_12D874C:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12D874F:     var_C4 = "Message"
  loc_12D8775:     MsgBox(MemVar_41E208.Item, &H10, var_B0, var_F4, var_114)
  loc_12D8785:     Exit Sub
  loc_12D8786:   End If
  loc_12D8789:   Me(124) = vbNullString
  loc_12D878E: End If
  loc_12D8799: var_A0 = MemVar_41E208.Item
  loc_12D87A2: Me(20) = CStr(var_A0)
  loc_12D87B5: Me(48) = Proc_343_2_EC6BA0(Me(20), "Data", var_A0, "Data", "Data", var_A0, "Data")
  loc_12D87BB: var_C4 = "Irn"
  loc_12D87DA: Me(120) = CStr(Trim(MemVar_41E208.Item))
  loc_12D87EC: Me(124) = Me(8)
  loc_12D87F1: var_C4 = "EwbNo"
  loc_12D880F: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12D8812:   var_C4 = "EwbNo"
  loc_12D8826:   Me(148) = CStr(MemVar_41E208.Item)
  loc_12D882F: End If
  loc_12D885F: Me(120) = Replace(Me(120), CStr(Chr(&HA)), vbNullString, 1, -1, 0)
  loc_12D8873: var_A0 = Chr(&HD)
  loc_12D889B: Me(120) = Replace(Me(120), CStr(var_A0), vbNullString, 1, -1, 0)
  loc_12D88C6: Me(120) = Replace(Me(120), vbCrLf, vbNullString, 1, -1, 0)
  loc_12D88D7: Me(104) = CVar(FreeFile(var_A0))
  loc_12D88EC: var_88 = Me.Global.App
  loc_12D890B: Open App.Path & "\LastIRN.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_12D8924: Print CInt(Me(104)), Me(120)
  loc_12D8930: Close CInt(Me(104))
  loc_12D893D: Me(104) = CVar(FreeFile(var_A0))
  loc_12D8952: var_88 = Me.Global.App
  loc_12D8971: Open App.Path & "\QR.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_12D897F: var_C4 = "QrCodeImage"
  loc_12D899D: Print CInt(Me(104)), MemVar_41E208.Item
  loc_12D89AC: Close CInt(Me(104))
  loc_12D89B2: Set var_258 = New 
  loc_12D89BB: var_88 = Me.Message.BodyPart
  loc_12D89C3: Set var_25C = var_88
  loc_12D89CC: var_25C.ContentMediaType = "image/bmp/jpg/png"
  loc_12D89D7: var_25C.ContentTransferEncoding = "base64"
  loc_12D89E2: var_25C.GetEncodedContentStream
  loc_12D89EA: Set var_260 = var_88
  loc_12D89F9: var_88 = Me.Global.App
  loc_12D8A13: var_260.LoadFromFile App.Path & "\QR.txt"
  loc_12D8A25: var_260.Flush
  loc_12D8A2C: Set var_260 = Nothing 
  loc_12D8A50: Me(88) = App.Path & "\QRImage.jpg"
  loc_12D8A62: var_25C.GetDecodedContentStream
  loc_12D8A7A: Me.Global.App.SaveToFile Me(88)
  loc_12D8A81: Set var_264 = Nothing 
  loc_12D8A87: Set var_25C = Nothing 
  loc_12D8A8D: Set var_258 = Nothing 
  loc_12D8A91: Exit Sub
End Sub

Public Sub Proc_348_3_11E86B4
  'Data Table: 421708
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim var_12C As String
  Dim var_D4 As Variant
  Dim var_14C As String
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_18C As Variant
  Dim var_1AC As Variant
  loc_11E8260: If (Proc_348_16_FA99C8() = 0) Then
  loc_11E8263:   Exit Sub
  loc_11E8264: End If
  loc_11E8267: Me(148) = vbNullString
  loc_11E8276: If (Me(128) = vbNullString) Then
  loc_11E8292:   MsgBox("Generate Auth Code First", &H10, var_C4, var_E4, var_104)
  loc_11E82A2:   Exit Sub
  loc_11E82A3: End If
  loc_11E82AD: If (Me(120) = vbNullString) Then
  loc_11E82BC:   var_108 = Me.Global.App
  loc_11E82DF:   var_C4 = Trim(CVar(Proc_348_8_E613A8(App.Path & "\LastIRN.txt")))
  loc_11E82E8:   Me(120) = CStr(var_C4)
  loc_11E8318:   MsgBox("Last Stored IRN Loaded", 0, var_C4, var_E4, var_104)
  loc_11E8341:   MsgBox("Please give the IRN Number first!", 0, var_C4, var_E4, var_104)
  loc_11E8351:   GoTo loc_11E8354
  loc_11E8354:   ' Referenced from: 11E8351
  loc_11E8354: End If
  loc_11E83B7: Me(144) = "{" & vbCrLf & "'Irn':'" & Me(120) & " '," & vbCrLf & "'CnlRsn':'1'," & vbCrLf & "'CnlRem':'Wrong entry'" & vbCrLf & "}"
  loc_11E83DB: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_11E83EC: var_C4 = "Cancle IRN"
  loc_11E8411: Me(84) = CStr(MsgBox(CVar("Do you want to cancle IRN Number: " & Me(120) & "?"), 4, var_C4, var_E4, var_104))
  loc_11E8433: If (CDbl(Me(84)) = CDbl(6)) Then
  loc_11E843B:   var_134 = Me(144)
  loc_11E8480:   var_12C = Me(140) & "Invoice/Cancel?&aspid=" & Me(28) & "&password=" & Me(32) & "&gstin=" & Me(64) & "&User_name=" & Me(68)
  loc_11E84A0:   Me(24) = var_12C & "&eInvPwd=" & Me(72) & "&AuthToken=" & Me(128)
  loc_11E84CC:   Me(8) = Proc_344_1_E93588(Me(24))
  loc_11E84DC:   Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_11E84E2:   var_94 = "Status"
  loc_11E8500:   If (MemVar_41E208.Item = "0") Then
  loc_11E8503:     var_14C = "ErrorMessage"
  loc_11E8509:     var_D4 = 1
  loc_11E850F:     var_94 = "ErrorDetails"
  loc_11E851A:     var_A4 = MemVar_41E208.Item
  loc_11E8522:     VarIndexLdRfVar
  loc_11E8528:     VarLateMemCallLdRfVar
  loc_11E8543:     MsgBox(var_E4, &H10, var_104, var_18C, var_1AC)
  loc_11E8557:     Exit Sub
  loc_11E855B:   Else
  loc_11E855B:     var_94 = "status_cd"
  loc_11E8579:     If (MemVar_41E208.Item = "0") Then
  loc_11E857C:       var_D4 = "message"
  loc_11E8582:       var_94 = "error"
  loc_11E858D:       var_A4 = MemVar_41E208.Item
  loc_11E8595:       VarLateMemCallLdRfVar
  loc_11E85B0:       MsgBox(var_C4, &H10, var_E4, var_104, var_18C)
  loc_11E85C2:       Exit Sub
  loc_11E85C3:     End If
  loc_11E85C3:     var_94 = "Message"
  loc_11E85D6:     var_D4 = vbNullString
  loc_11E85E1:     If CBool(MemVar_41E208.Item <> var_D4) Then
  loc_11E85F2:       var_94 = "Message"
  loc_11E85FD:       var_A4 = MemVar_41E208.Item
  loc_11E8605:       MsgBox(var_A4, var_94, 0, var_C4, var_E4)
  loc_11E8615:       Exit Sub
  loc_11E8616:     End If
  loc_11E8616:   End If
  loc_11E8620:   Me(48) = Proc_343_2_EC6BA0(Me(8), var_104, var_94, var_A4, var_94, var_D4)
  loc_11E8631:   var_A4 = MemVar_41E208.Item
  loc_11E863A:   Me(20) = CStr(var_A4)
  loc_11E864D:   Me(48) = Proc_343_2_EC6BA0(Me(20), "Data", "Data", var_A4)
  loc_11E8653:   var_D4 = "Irn No: "
  loc_11E867D:   var_104 = "Irn" & MemVar_41E208.Item & vbCrLf & "CancelDate : " 
  loc_11E8699:   Me(124) = CStr("CancelDate" & MemVar_41E208.Item)
  loc_11E86B1: Else
  loc_11E86B1:   Exit Sub
  loc_11E86B2: End If
  loc_11E86B2: Exit Sub
End Sub

Public Sub Proc_348_4_136B314
  'Data Table: 421708
  Dim var_A0 As Variant
  Dim var_D0 As String
  Dim var_134 As String
  Dim var_F0 As Variant
  Dim var_154 As String
  Dim var_100 As Variant
  Dim var_1D4 As String
  Dim var_1B4 As Integer
  Dim var_184 As String
  Dim var_1A4 As Variant
  Dim var_204 As Variant
  Dim var_120 As Variant
  Dim var_B0 As Variant
  loc_136AAF4: If (Proc_348_16_FA99C8() = 0) Then
  loc_136AAF7:   Exit Sub
  loc_136AAF8: End If
  loc_136AAFB: Me(144) = vbNullString
  loc_136AB0C: var_88 = Me.Global.App
  loc_136AB2F: var_B0 = Trim(CVar(Proc_348_8_E613A8(App.Path & "\LastIRN.txt")))
  loc_136AB38: Me(120) = CStr(var_B0)
  loc_136AB59: If (Me(28) = vbNullString) Then
  loc_136AB75:   MsgBox("Please Enter your ASP ID", &H10, var_B0, var_100, var_120)
  loc_136AB85:   Exit Sub
  loc_136AB86: End If
  loc_136AB90: If (Me(32) = vbNullString) Then
  loc_136ABAC:   MsgBox("Please Enter your ASP Password", &H10, var_B0, var_100, var_120)
  loc_136ABBC:   Exit Sub
  loc_136ABBD: End If
  loc_136AC05: var_128 = "{" & vbCrLf & "'Irn':'" & Me(120) & "'," & vbCrLf & "'TransId':'12AWGPV7107B1Z1'," & vbCrLf & "'Distance':0" & vbCrLf & "}"
  loc_136AC20: Me(144) = var_128
  loc_136AC44: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_136AC4F: Me(80) = Me(144)
  loc_136AC7D: var_134 = "http://gstsandbox.charteredinfo.com/eiewb/dec/v1.03/ewaybill?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64)
  loc_136AC9D: Me(24) = var_134 & "&user_name=" & Me(68) & "&AuthToken=" & Me(128)
  loc_136ACC5: Me(8) = Proc_344_1_E93588(Me(24))
  loc_136ACD5: Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_136ACDB: var_D0 = "Status"
  loc_136ACF9: If (MemVar_41E208.Item = "0") Then
  loc_136ACFC:   var_154 = "ErrorCode"
  loc_136AD02:   var_F0 = 1
  loc_136AD08:   var_D0 = "ErrorDetails"
  loc_136AD1B:   VarIndexLdRfVar
  loc_136AD3A:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136AD3D:     var_154 = "ErrorCode"
  loc_136AD43:     var_F0 = 1
  loc_136AD49:     var_D0 = "ErrorDetails"
  loc_136AD5C:     VarIndexLdRfVar
  loc_136AD6C:     var_1D4 = "ErrorMessage"
  loc_136AD72:     var_1B4 = 1
  loc_136AD78:     var_184 = "ErrorDetails"
  loc_136AD8B:     VarIndexLdRfVar
  loc_136ADB1:     var_120 = MemVar_41E208.Item.Item & " : " 
  loc_136ADBC:     MsgBox(var_120 & MemVar_41E208.Item.Item, &H10, var_234, var_254, var_274)
  loc_136ADDA:     Exit Sub
  loc_136ADDB:   End If
  loc_136ADDB: End If
  loc_136ADDB: var_D0 = "Status_cd"
  loc_136ADE6: var_A0 = MemVar_41E208.Item
  loc_136ADEE: var_F0 = "0"
  loc_136AE03: var_100 = MemVar_41E208.Item
  loc_136AE15: var_1A4 = "status_cd" Or (var_100 = "0")
  loc_136AE22: If CBool(var_1A4) Then
  loc_136AE25:   var_F0 = "error_cd"
  loc_136AE2B:   var_D0 = "error"
  loc_136AE55:   If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_136AE66:     var_F0 = "message"
  loc_136AE7F:     VarLateMemCallLdRfVar
  loc_136AE87:     MsgBox(MemVar_41E208.Item, "error", var_F0, 0, var_100)
  loc_136AEA4:     var_B0 = "Message Box Title"
  loc_136AEAF:     var_D0 = "Do you want to call AuthToken"
  loc_136AEB4:     var_A0 = var_D0
  loc_136AEC1:     Me(12) = CStr(MsgBox(var_A0, &H124, var_B0, var_100, var_120))
  loc_136AEE0:     If (CDbl(Me(12)) = CDbl(6)) Then
  loc_136AEE3:       Proc_348_0_113B044(var_120, var_1A4, var_D0, var_F0, (var_A0 = var_F0), var_D0)
  loc_136AEE8:       var_D0 = "Status"
  loc_136AF06:       If (MemVar_41E208.Item = "0") Then
  loc_136AF09:         var_154 = "ErrorMessage"
  loc_136AF0F:         var_F0 = 1
  loc_136AF15:         var_D0 = "ErrorDetails"
  loc_136AF20:         var_A0 = MemVar_41E208.Item
  loc_136AF28:         VarIndexLdRfVar
  loc_136AF2E:         VarLateMemCallLdRfVar
  loc_136AF49:         MsgBox(var_100, &H10, var_120, var_1A4, var_1F4)
  loc_136AF5D:         Exit Sub
  loc_136AF61:       Else
  loc_136AF61:         var_D0 = "status_cd"
  loc_136AF7F:         If (MemVar_41E208.Item = "0") Then
  loc_136AFA9:           VarLateMemCallLdRfVar
  loc_136AFB1:           MsgBox(MemVar_41E208.Item, "error", "message", 0, var_100)
  loc_136AFC3:           Exit Sub
  loc_136AFC4:         End If
  loc_136AFC4:         var_D0 = "Message"
  loc_136AFE2:         If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_136B006:           MsgBox(MemVar_41E208.Item, "Message", 0, var_B0, var_100)
  loc_136B016:           Exit Sub
  loc_136B017:         End If
  loc_136B01A:         Me(124) = vbNullString
  loc_136B01F:       End If
  loc_136B022:     Else
  loc_136B022:       Exit Sub
  loc_136B023:     End If
  loc_136B026:   Else
  loc_136B026:     var_F0 = "message"
  loc_136B02C:     var_D0 = "error"
  loc_136B037:     var_A0 = MemVar_41E208.Item
  loc_136B03F:     VarLateMemCallLdRfVar
  loc_136B05A:     MsgBox(var_B0, &H10, var_100, var_120, var_1A4)
  loc_136B06C:   End If
  loc_136B06C:   Exit Sub
  loc_136B06D: End If
  loc_136B06D: var_D0 = "Message"
  loc_136B08B: If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_136B0AF:   MsgBox(MemVar_41E208.Item, "Message", 0, var_B0, var_100)
  loc_136B0BF:   Exit Sub
  loc_136B0C0: End If
  loc_136B0C0: var_D0 = "Status"
  loc_136B0DE: If (MemVar_41E208.Item = "0") Then
  loc_136B0E1:   var_154 = "ErrorCode"
  loc_136B0E7:   var_F0 = 1
  loc_136B0ED:   var_D0 = "ErrorDetails"
  loc_136B100:   VarIndexLdRfVar
  loc_136B11F:   If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136B122:     var_154 = "ErrorCode"
  loc_136B128:     var_F0 = 1
  loc_136B12E:     var_D0 = "ErrorDetails"
  loc_136B141:     VarIndexLdRfVar
  loc_136B151:     var_1D4 = "ErrorMessage"
  loc_136B157:     var_1B4 = 1
  loc_136B15D:     var_184 = "ErrorDetails"
  loc_136B170:     VarIndexLdRfVar
  loc_136B1A1:     MsgBox(MemVar_41E208.Item.Item & " : " & MemVar_41E208.Item.Item, &H10, var_234, var_254, var_274)
  loc_136B1BF:     Exit Sub
  loc_136B1C3:   Else
  loc_136B1C3:     var_154 = "ErrorCode"
  loc_136B1C9:     var_F0 = 1
  loc_136B1CF:     var_D0 = "ErrorDetails"
  loc_136B1E2:     VarIndexLdRfVar
  loc_136B201:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_136B204:       var_154 = "ErrorCode"
  loc_136B20A:       var_F0 = 1
  loc_136B210:       var_D0 = "ErrorDetails"
  loc_136B223:       VarIndexLdRfVar
  loc_136B233:       var_1D4 = "ErrorMessage"
  loc_136B239:       var_1B4 = 1
  loc_136B23F:       var_184 = "ErrorDetails"
  loc_136B252:       VarIndexLdRfVar
  loc_136B258:       var_204 = MemVar_41E208.Item.Item
  loc_136B283:       MsgBox(MemVar_41E208.Item.Item & " :   " & var_204, &H10, var_234, var_254, var_274)
  loc_136B2A1:       Exit Sub
  loc_136B2A2:     End If
  loc_136B2A2:   End If
  loc_136B2A2: End If
  loc_136B2B6: Me(20) = CStr(MemVar_41E208.Item)
  loc_136B2C9: Me(48) = Proc_343_2_EC6BA0(Me(20), "Data", var_204, var_184, var_1B4, var_1D4)
  loc_136B2CF: var_D0 = "Irn"
  loc_136B2E3: Me(120) = CStr(MemVar_41E208.Item)
  loc_136B2F1: Me(124) = Me(8)
  loc_136B2F6: var_D0 = "EwbNo"
  loc_136B30A: Me(148) = CStr(MemVar_41E208.Item)
  loc_136B313: Exit Sub
End Sub

Public Sub Proc_348_5_122E96C
  'Data Table: 421708
  Dim var_94 As String
  Dim var_110 As String
  Dim var_124 As String
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_138 As String
  Dim var_104 As Variant
  Dim var_198 As Variant
  Dim var_E4 As Variant
  loc_122E47C: If (Proc_348_16_FA99C8() = 0) Then
  loc_122E47F:   Exit Sub
  loc_122E480: End If
  loc_122E483: Me(124) = vbNullString
  loc_122E48B: Me(144) = vbNullString
  loc_122E49A: If (Me(148) = vbNullString) Then
  loc_122E4B6:   MsgBox("Please Enter EWB Number first!", &H10, var_C4, var_E4, var_104)
  loc_122E4C6:   Exit Sub
  loc_122E4C7: End If
  loc_122E501: var_124 = "{" & vbCrLf & "'ewbNo':'" & Me(148) & " '," & vbCrLf & "'cancelRsnCode':'2'," & vbCrLf & "'cancelRmrk':'Cancelled the order'"
  loc_122E50F: Me(60) = var_124 & vbCrLf & "}"
  loc_122E52F: Me(144) = Me(60)
  loc_122E553: Me(144) = Replace(Me(144), "'", """", 1, -1, 0)
  loc_122E55E: Me(60) = Me(144)
  loc_122E593: Me(84) = CStr(MsgBox(CVar("Do you want to cancle eWay Bill Number: " & Me(148) & "?"), 4, "Cancle eWay Bill", var_E4, var_104))
  loc_122E5B5: If (CDbl(Me(84)) = CDbl(6)) Then
  loc_122E5CF:   var_110 = "http://gstsandbox.charteredinfo.com/ewaybillapi/dec/v1.03/ewayapi?SelEInvSb&action=CANEWB" & "&aspid=" & Me(28) & "&password="
  loc_122E608:   Me(24) = var_110 & Me(32) & "&Gstin=" & Me(64) & "&user_name=" & Me(68) & "&AuthToken=" & Me(128)
  loc_122E632:   Me(8) = Proc_344_1_E93588(Me(24))
  loc_122E642:   Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_122E648:   var_94 = "status_cd"
  loc_122E666:   If (MemVar_41E208.Item = "0") Then
  loc_122E669:     var_D4 = "error_cd"
  loc_122E66F:     var_94 = "error"
  loc_122E682:     var_C4 = MemVar_41E208.Item.Item
  loc_122E6A5:     var_104 = MemVar_41E208.Item
  loc_122E6AD:     var_198 = var_104.Item
  loc_122E6D0:     If CBool("error" Or (var_198 = "GSP752")) Then
  loc_122E6FA:       VarLateMemCallLdRfVar
  loc_122E702:       MsgBox(MemVar_41E208.Item, "error", "message", 0, var_E4)
  loc_122E71F:       var_C4 = "Message Box Title"
  loc_122E72F:       var_A4 = "Do you want to call AuthToken"
  loc_122E73C:       Me(12) = CStr(MsgBox(var_A4, &H124, var_C4, var_E4, var_104))
  loc_122E75B:       If (CDbl(Me(12)) = CDbl(6)) Then
  loc_122E75E:         Proc_348_0_113B044(var_104, var_198, "error_cd", (var_C4 = "GSP102"))
  loc_122E76E:         Me(104) = CVar(FreeFile(var_A4))
  loc_122E790:         var_C4 = MemVar_41E208.Item.Item
  loc_122E799:         Me(40) = CStr(var_C4)
  loc_122E7B2:         var_1BC = Me.Global.App
  loc_122E7D1:         Open App.Path & "\LastAuthToken.txt" For Output As CInt(Me(104)) Len = &HFF
  loc_122E7EA:         Print CInt(Me(104)), Me(40)
  loc_122E7F6:         Close CInt(Me(104))
  loc_122E7F8:         Proc_348_7_11A5518("Data", "AuthToken", "Data")
  loc_122E800:       Else
  loc_122E800:         Exit Sub
  loc_122E801:       End If
  loc_122E801:     End If
  loc_122E801:   End If
  loc_122E801:   var_94 = "Status"
  loc_122E81F:   If (MemVar_41E208.Item = "0") Then
  loc_122E822:     var_138 = "ErrorMessage"
  loc_122E828:     var_D4 = 1
  loc_122E82E:     var_94 = "ErrorDetails"
  loc_122E839:     var_A4 = MemVar_41E208.Item
  loc_122E841:     VarIndexLdRfVar
  loc_122E847:     VarLateMemCallLdRfVar
  loc_122E862:     MsgBox(var_E4, &H10, var_104, var_198, var_1A8)
  loc_122E876:     Exit Sub
  loc_122E87A:   Else
  loc_122E87A:     var_94 = "Message"
  loc_122E898:     If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_122E89B:       var_94 = "Message"
  loc_122E8C1:       MsgBox(MemVar_41E208.Item, &H10, var_C4, var_E4, var_104)
  loc_122E8D1:       Exit Sub
  loc_122E8D2:     End If
  loc_122E8D2:     var_94 = "status_cd"
  loc_122E8F0:     If (MemVar_41E208.Item = "0") Then
  loc_122E8F3:       var_D4 = "message"
  loc_122E8F9:       var_94 = "error"
  loc_122E904:       var_A4 = MemVar_41E208.Item
  loc_122E90C:       var_C4 = var_A4.Item
  loc_122E924:       var_138 = "Error Code - "
  loc_122E930:       MsgBox(var_138 & var_C4, &H10, var_104, var_198, var_1A8)
  loc_122E944:       Exit Sub
  loc_122E945:     End If
  loc_122E945:   End If
  loc_122E948: Else
  loc_122E948:   Exit Sub
  loc_122E94C:   Me(124) = vbNullString
  loc_122E951: End If
  loc_122E956: Me(124) = Me(8)
  loc_122E965: Me(48) = Proc_343_2_EC6BA0(Me(20), var_C4, var_94, var_D4, var_94, var_A4)
  loc_122E96B: Exit Sub
End Sub

Public Sub Proc_348_6_12EE634(arg_C) '12EE634
  'Data Table: 421708
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_124 As String
  Dim var_12C As String
  Dim var_138 As String
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_150 As String
  Dim var_DC As Variant
  Dim var_180 As String
  Dim var_160 As String
  Dim var_11C As Variant
  Dim var_190 As Variant
  Dim var_FC As Variant
  Dim var_1B0 As Variant
  Dim var_222 As Integer
  Dim var_25C As Double
  loc_12EDFD0: If (Proc_348_16_FA99C8() = 0) Then
  loc_12EDFD3:   Exit Sub
  loc_12EDFD4: End If
  loc_12EDFDE: If (Me(148) = vbNullString) Then
  loc_12EDFFA:   MsgBox("Please Enter EWB Number first!", 0, var_DC, var_FC, var_11C)
  loc_12EE00A:   Exit Sub
  loc_12EE00B: End If
  loc_12EE016: var_DC = "Print EWB"
  loc_12EE021: var_AC = "Please note that, This will generate a sample PDF for E-Way Bill generated from sandbox Data. You need ASP Credits to call Print EWB API. Please recharge your account before calling this API"
  loc_12EE02C: MsgBox("Please Enter EWB Number first!", 0, var_DC, var_FC, var_11C)
  loc_12EE041: var_90 = Me(148)
  loc_12EE05B: var_9C = Environ$("USERPROFILE") & "\Desktop"
  loc_12EE06B: var_124 = var_9C & "\EWB - "
  loc_12EE079: var_98 = Environ$("USERPROFILE") & var_90 & ".PDF"
  loc_12EE09C: var_12C = "http://gstsandbox.charteredinfo.com/ewaybillapi/dec/v1.03/ewayapi?action=GetEwayBill&aspid=" & Me(28) & "&password=" & Me(32)
  loc_12EE0E8: var_88 = Proc_344_0_ED9850(var_12C & "&gstin=" & Me(64) & "&ewbNo=" & var_90 & "&authtoken=" & Me(128))
  loc_12EE0F3: Me(48) = Proc_343_2_EC6BA0(var_88)
  loc_12EE0F9: var_AC = "Status"
  loc_12EE117: If (MemVar_41E208.Item = "0") Then
  loc_12EE11A:   var_150 = "ErrorMessage"
  loc_12EE120:   var_EC = 1
  loc_12EE126:   var_AC = "ErrorDetails"
  loc_12EE131:   var_BC = MemVar_41E208.Item
  loc_12EE139:   VarIndexLdRfVar
  loc_12EE13F:   VarLateMemCallLdRfVar
  loc_12EE15A:   MsgBox(var_FC, &H10, var_11C, var_190, var_1B0)
  loc_12EE16E:   Exit Sub
  loc_12EE172: Else
  loc_12EE172:   var_AC = "Message"
  loc_12EE190:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_12EE1B4:     MsgBox(MemVar_41E208.Item, "Message", 0, var_DC, var_FC)
  loc_12EE1C4:     Exit Sub
  loc_12EE1C5:   End If
  loc_12EE1C5:   var_AC = "status_cd"
  loc_12EE1E3:   If (MemVar_41E208.Item = "0") Then
  loc_12EE1E6:     var_EC = "error_cd"
  loc_12EE1EC:     var_AC = "error"
  loc_12EE216:     If CBool(MemVar_41E208.Item.Item <> "0") Then
  loc_12EE219:       var_EC = "error_cd"
  loc_12EE21F:       var_AC = "error"
  loc_12EE232:       var_DC = MemVar_41E208.Item.Item
  loc_12EE23C:       var_180 = "message"
  loc_12EE242:       var_160 = "error"
  loc_12EE24D:       var_11C = MemVar_41E208.Item
  loc_12EE255:       var_190 = var_11C.Item
  loc_12EE275:       var_FC = var_DC & " :   " 
  loc_12EE280:       MsgBox(var_FC & var_190, &H10, var_1D0, var_1F0, var_210)
  loc_12EE29A:       Exit Sub
  loc_12EE29B:     End If
  loc_12EE29B:   End If
  loc_12EE29B: End If
  loc_12EE2A0: var_222 = CInt(Len(var_88))
  loc_12EE2D4: var_BC = Right(var_88, CLng((var_222 - 1)))
  loc_12EE2EF: var_22C = Me.Global.App
  loc_12EE312: var_DC = Trim(CVar(Proc_348_8_E613A8(App.Path & "\LastIRN.txt", var_222, var_190, var_160, var_180, var_DC)))
  loc_12EE351: var_88 = CStr(Left(var_88, 1)) & """irn"":""" & CStr(var_DC) & """," & CStr(Left(var_88, 1))
  loc_12EE360: Me(124) = var_88
  loc_12EE37D: If (InStr(1, var_88, var_90, 1) <> 0) Then
  loc_12EE3AE:   var_138 = "https://einvapi.charteredinfo.com/aspapi/v1.0/" & "printewb" & "?&aspid=" & Me(28) & "&password=" & Me(32) & "&gstin="
  loc_12EE3E0:   Set var_230 = CreateObject("WinHttp.WinHttpRequest.5.1", 0)
  loc_12EE3E6:   var_AC = False
  loc_12EE3F4:   Call 0.Method_arg_24 ("POST", var_138 & Me(64), var_AC, var_AC, var_EC)
  loc_12EE402:   Call 0.Method_arg_28 ("Content-Type", "application/json; charset=utf-8", var_AC)
  loc_12EE411:   Call 0.Method_arg_34 (CVar(var_88), var_EC)
  loc_12EE42C:   SetVarVarFunc
  loc_12EE437:   var_240.Type = 1
  loc_12EE440:   Call var_240.Open
  loc_12EE44C:   Call 0.Method_Proc_348_6_12EE6344 (CreateObject("ADODB.Stream", 0), var_240, CreateObject("ADODB.Stream", 0))
  loc_12EE45A:   Call var_240.Write
  loc_12EE46A:   var_CC = 2
  loc_12EE475:   Call var_240.SaveToFile
  loc_12EE4A6:   ShellExecute(arg_C, "Save", var_98, 0, var_9C, 1)
  loc_12EE4D3:   var_AC = "Please note that: The EWB Generated PDF File in this demo project is a sample only with SAND Box Data, and not for any official use."
  loc_12EE4DE:   MsgBox(var_AC, 0, var_DC, var_FC, var_11C)
  loc_12EE503:   var_248 = var_9C & "\" & var_90 & " Signed.pdf"
  loc_12EE518:   var_DC = "Question"
  loc_12EE54F:   If (CDbl(CStr(MsgBox("Do you want to Sign the generated EWB Digitally?", 4, var_DC, var_FC, var_11C))) = CDbl(6)) Then
  loc_12EE555:     var_250 = "C:\TaxPro\TaxPro PDF Signer\TaxPro PDF Signer.exe"
  loc_12EE560:     If (var_250 = vbNullString) Then
  loc_12EE576:       var_BC = "TaxPro PDF Signing Utility is not isntalled in your PC, Please contact TaxPro GSP for PDF Signing!"
  loc_12EE57C:       MsgBox(var_BC, 0, var_DC, var_FC, var_11C)
  loc_12EE58C:       Exit Sub
  loc_12EE58D:     End If
  loc_12EE5D9:     var_25C = Shell("""" & var_250 & """ """ & var_98 & """ """ & var_248 & """ ", 2)
  loc_12EE5DF:   Else
  loc_12EE5DF:     Exit Sub
  loc_12EE5E0:   End If
  loc_12EE5E3: Else
  loc_12EE5F9:   MsgBox(var_88, 0, var_BC, var_DC, var_FC)
  loc_12EE620:   MsgBox("Error Occured while Getting EwayBill Details, Please Retry", &H10, var_DC, var_FC, var_11C)
  loc_12EE630: End If
  loc_12EE630: Exit Sub
End Sub

Public Sub Proc_348_7_11A5518
  'Data Table: 421708
  Dim var_9C As String
  Dim var_130 As String
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_15C As String
  Dim var_8A As Integer
  loc_11A5134: If (Proc_348_16_FA99C8() = 0) Then
  loc_11A5137:   Exit Sub
  loc_11A5138: End If
  loc_11A5142: If (Me(128) = vbNullString) Then
  loc_11A515E:   MsgBox("Please take AuthToken First", 0, var_CC, var_EC, var_10C)
  loc_11A516E:   Exit Sub
  loc_11A516F: End If
  loc_11A5179: If (Me(132) = vbNullString) Then
  loc_11A5195:   MsgBox("Please Provide the GSTIN to be searched!!", 0, var_CC, var_EC, var_10C)
  loc_11A51A5:   Exit Sub
  loc_11A51A6: End If
  loc_11A51EF: var_130 = Me(136) & "Master/gstin/" & Me(132) & "?aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64) & "&user_name="
  loc_11A5208: Me(24) = var_130 & Me(68) & "&AuthToken=" & Me(128)
  loc_11A5231: Me(8) = Proc_344_0_ED9850(Me(24))
  loc_11A5241: Me(48) = Proc_343_2_EC6BA0(Me(8))
  loc_11A524F: For Each var_148 In Me(48)
  loc_11A5260:   If (var_148 = "error") Then
  loc_11A5263:     var_DC = "error_cd"
  loc_11A5269:     var_9C = "error"
  loc_11A5293:     If (MemVar_41E208.Item.Item = "GSP752") Then
  loc_11A52BD:       VarLateMemCallLdRfVar
  loc_11A52C5:       MsgBox(MemVar_41E208.Item, "error", "message", 0, var_EC)
  loc_11A52F2:       var_AC = "Do you want to call AuthToken"
  loc_11A52FF:       Me(12) = CStr(MsgBox(var_AC, &H124, "Message Box Title", var_EC, var_10C))
  loc_11A531E:       If (CDbl(Me(12)) = CDbl(6)) Then
  loc_11A5321:         Proc_348_0_113B044(var_10C, var_18C)
  loc_11A532E:         var_8A = FreeFile(var_AC)
  loc_11A534D:         var_CC = MemVar_41E208.Item.Item
  loc_11A5356:         Me(40) = CStr(var_CC)
  loc_11A536F:         var_190 = Me.Global.App
  loc_11A538B:         Open App.Path & "\LastAuthToken.txt" For Output As var_8A Len = &HFF
  loc_11A53A1:         Print var_8A, Me(40)
  loc_11A53AA:         Close var_8A
  loc_11A53AC:         Proc_348_7_11A5518("Data", "AuthToken", var_8A)
  loc_11A53B4:       Else
  loc_11A53B4:         Exit Sub
  loc_11A53B5:       End If
  loc_11A53B5:     End If
  loc_11A53B5:   End If
  loc_11A53B8: Next
  loc_11A53BE: var_9C = "Status"
  loc_11A53DC: If (MemVar_41E208.Item = "0") Then
  loc_11A53DF:   var_15C = "ErrorMessage"
  loc_11A53E5:   var_DC = 1
  loc_11A53EB:   var_9C = "ErrorDetails"
  loc_11A53F6:   var_AC = MemVar_41E208.Item
  loc_11A53FE:   VarIndexLdRfVar
  loc_11A5404:   VarLateMemCallLdRfVar
  loc_11A541F:   MsgBox(var_EC, &H10, var_10C, var_18C, var_1C0)
  loc_11A5433:   Exit Sub
  loc_11A5437: Else
  loc_11A5437:   var_9C = "status_cd"
  loc_11A5455:   If (MemVar_41E208.Item = "0") Then
  loc_11A5458:     var_DC = "message"
  loc_11A545E:     var_9C = "error"
  loc_11A5469:     var_AC = MemVar_41E208.Item
  loc_11A5471:     VarLateMemCallLdRfVar
  loc_11A548C:     MsgBox(var_CC, &H10, var_EC, var_10C, var_18C)
  loc_11A549E:     Exit Sub
  loc_11A549F:   End If
  loc_11A549F:   var_9C = "Message"
  loc_11A54BD:   If CBool(MemVar_41E208.Item <> vbNullString) Then
  loc_11A54C0:     var_9C = "Message"
  loc_11A54E6:     MsgBox(MemVar_41E208.Item, &H10, var_CC, var_EC, var_10C)
  loc_11A54F6:     Exit Sub
  loc_11A54F7:   End If
  loc_11A54F7: End If
  loc_11A54F7: var_9C = "Data"
  loc_11A550B: Me(124) = CStr(MemVar_41E208.Item)
  loc_11A5514: Exit Sub
End Sub

Public Sub Proc_348_8_E613A8(arg_C) 'E613A8
  'Data Table: 421708
  loc_E61384: Call 0.Method_arg_7C (arg_C, 1, 0)
  loc_E6138F: Set var_90 = var_94
  loc_E6139B: Call 0.Method_arg_30 (var_98, 0)
  loc_E613A3: var_88 = var_98
  loc_E613A6: Exit Sub
End Sub

Public Sub Proc_348_9_E612A8(arg_C) 'E612A8
  'Data Table: 421708
  loc_E61284: Call 0.Method_arg_7C (arg_C, 1, 0)
  loc_E6128F: Set var_90 = var_94
  loc_E6129B: Call 0.Method_arg_34 (var_98, 0)
  loc_E612A3: var_88 = var_98
  loc_E612A6: Exit Sub
End Sub

Public Sub Proc_348_10_1043B64
  'Data Table: 421708
  Dim var_D8 As String
  loc_1043920: On Error Resume Next
  loc_104393A: var_90 = Me.Global.App
  loc_1043942: var_94 = App.Path
  loc_1043954: Call 0.Method_arg_60 (var_94 & "\QRImage.jpg")
  loc_1043971: Set var_9C = New 
  loc_1043993: Call 0.Method_arg_1C (var_90, "Convert", var_C0)
  loc_104399B: Call 0.Method_arg_1C (var_94)
  loc_10439A3: Call 0.Method_arg_24 (0)
  loc_10439B1: Call 0.Method_arg_20 (var_C4)
  loc_10439B9: Call 0.Method_arg_28 (var_94)
  loc_10439CF: var_D8 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_10439F9: Call 0.Method_arg_20 (var_90, 1, var_C0, var_C4)
  loc_1043A01: Call 0.Method_arg_1C ("FormatID", var_C8)
  loc_1043A09: Call 0.Method_arg_28 (var_D8)
  loc_1043A11: Call 0.Method_arg_1C ()
  loc_1043A19: Call 0.Method_arg_20 ()
  loc_1043A56: Call 0.Method_arg_20 (var_90, 1, var_C0, var_C4)
  loc_1043A5E: Call 0.Method_arg_1C ("Quality", var_C8)
  loc_1043A66: Call 0.Method_arg_28 (70)
  loc_1043A6E: Call 0.Method_arg_1C ()
  loc_1043A76: Call 0.Method_arg_20 ()
  loc_1043A9E: Call 0.Method_arg_24 (New)
  loc_1043AA9: Set var_88 = var_C0
  loc_1043AB7: Set var_9C = Nothing 
  loc_1043AC9: var_90 = Me.Global.App
  loc_1043AE0: Kill CVar(App.Path & "\QRImage.jpg")
  loc_1043AFC: var_90 = Me.Global.App
  loc_1043B16: Call 0.Method_arg_64 (App.Path & "\QRImage.jpg")
  loc_1043B33: var_90 = Me.Global.App
  loc_1043B50: Me(124) = Proc_348_9_E612A8(App.Path & "\QR.txt")
  loc_1043B62: Exit Sub
End Sub

Public Sub Proc_348_11_E7AD58
  'Data Table: 421708
  loc_E7ACFF: Me(132) = vbNullString
  loc_E7AD07: Me(120) = vbNullString
  loc_E7AD0F: Me(124) = vbNullString
  loc_E7AD17: Me(148) = vbNullString
  loc_E7AD28: var_88 = Me.Global.App
  loc_E7AD45: Me(144) = Proc_348_9_E612A8(App.Path & "\GeneInvBody.txt")
  loc_E7AD55: Exit Sub
End Sub

Public Sub Proc_348_12_E80690
  'Data Table: 421708
  loc_E80644: var_88 = Me.Global.App
  loc_E80678: Me(144) = Proc_348_9_E612A8(Proc_349_0_F00984(App.Path, "All Files|*.*"))
  loc_E8068C: Exit Sub
  loc_E8068D: Set var_2F9C = vbNullString 
End Sub

Public Sub Proc_348_13_1195FD4
  'Data Table: 421708
  Dim var_A0 As String
  Dim var_12C As String
  Dim var_13C As String
  Dim var_B0 As Variant
  Dim var_114 As Long
  Dim var_C0 As String
  Dim var_D0 As Integer
  loc_1195C50: If (Proc_348_16_FA99C8() = 0) Then
  loc_1195C53:   Exit Sub
  loc_1195C54: End If
  loc_1195C74: If (((Me(156) = vbNullString) And (Me(160) = vbNullString)) And (Me(164) = vbNullString)) Then
  loc_1195C85:   var_A0 = "Please Enter your Actual Payee Name + UPI ID + Invoice Amount first and then try to generate Dyn QR"
  loc_1195C90:   MsgBox(var_A0, 0, var_D0, var_F0, var_110)
  loc_1195CA0:   Exit Sub
  loc_1195CA1: End If
  loc_1195CB6: Set var_120 = CreateObject("WinHttp.WinHttpRequest.5.1", 0) 
  loc_1195CE6: var_13C = "https://einvapi.charteredinfo.com/aspapi/v1.0/dynamicqr?&aspid=" & Me(28) & "&password=" & Me(32) & "&Gstin=" & Me(64)
  loc_1195D2B: Me(24) = var_13C & "&UpiId=" & Me(156) & "&PayeeName=" & Me(160) & "&QrCodeSize=" & CStr(Me(168)) & "&InvAmt=" & Me(164)
  loc_1195D4E: var_A0 = "GET"
  loc_1195D65: Call var_120.Open
  loc_1195D6E: Call var_120.Send
  loc_1195D77: var_B0 = var_120.ResponseBody
  loc_1195D94: var_114 = CLng(FreeFile(var_B0))
  loc_1195DA6: var_174 = Me.Global.App
  loc_1195DC3: Open App.Path & "\DynQRImage.jpg" For Binary As CInt(var_114) Len = &HFF
  loc_1195DDD: Put CInt(var_114), 1, var_B0
  loc_1195DE5: Close CInt(var_114)
  loc_1195DFA: var_174 = Me.Global.App
  loc_1195E02: var_12C = App.Path
  loc_1195E14: Call 0.Method_arg_60 (var_12C & "\DynQRImage.jpg", var_114, False)
  loc_1195E2D: Set var_180 = New 
  loc_1195E3C: var_A0 = "Convert"
  loc_1195E4D: Call 0.Method_arg_1C (var_174, var_A0, var_184, var_12C)
  loc_1195E55: Call 0.Method_arg_1C (0, Me(24))
  loc_1195E5D: Call 0.Method_arg_24 (var_A0)
  loc_1195E6B: Call 0.Method_arg_20 (var_188)
  loc_1195E73: Call 0.Method_arg_28 (var_12C)
  loc_1195E87: var_C0 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_1195EB1: Call 0.Method_arg_20 (var_174, 1, var_184, var_188)
  loc_1195EB9: Call 0.Method_arg_1C ("FormatID", var_18C)
  loc_1195EC1: Call 0.Method_arg_28 (var_C0)
  loc_1195EC9: Call 0.Method_arg_1C ()
  loc_1195ED1: Call 0.Method_arg_20 ()
  loc_1195F0C: Call 0.Method_arg_20 (var_174, 1, var_184, var_188)
  loc_1195F14: Call 0.Method_arg_1C ("Quality", var_18C)
  loc_1195F1C: Call 0.Method_arg_28 (70)
  loc_1195F24: Call 0.Method_arg_1C ()
  loc_1195F2C: Call 0.Method_arg_20 ()
  loc_1195F52: Call 0.Method_arg_24 (New)
  loc_1195F5D: Set var_178 = var_184
  loc_1195F69: Set var_180 = Nothing 
  loc_1195F79: var_174 = Me.Global.App
  loc_1195F90: Kill CVar(App.Path & "\DynQRImage.jpg")
  loc_1195FAA: var_174 = Me.Global.App
  loc_1195FC4: Call 0.Method_arg_64 (App.Path & "\DynQRImage.jpg")
  loc_1195FD3: Exit Sub
End Sub

Public Sub Proc_348_14_EFBE94
  'Data Table: 421708
  Dim var_86 As Integer
  loc_EFBDC8: On Error Goto loc_EFBE91
  loc_EFBDD3: If (Proc_344_2_E5B210() = 0) Then
  loc_EFBDF7:   MsgBox("You are not connected to Internet! Please check your connection and try again!", &H40, "Connection Status", var_E8, var_108)
loc_EFBE07: End Sub
  loc_EFBE08: End If
  loc_EFBE08: Proc_348_19_E262B0()
  loc_EFBE19: var_10C = Me.Global.App
  loc_EFBE36: Me(144) = Proc_348_9_E612A8(App.Path & "\GeneInvBody.txt")
  loc_EFBE50: If (Me(128) = vbNullString) Then
  loc_EFBE5F:   var_10C = Me.Global.App
  loc_EFBE7C:   Me(128) = Proc_348_9_E612A8(App.Path & "\LastAuthToken.txt")
  loc_EFBE8C: End If
  loc_EFBE8E: var_86 = &HFF
  loc_EFBE91: ' Referenced from: EFBDC8
  loc_EFBE91: End Sub
End Sub

Public Sub Proc_348_15_E10910(arg_C) 'E10910
  'Data Table: 421708
  loc_E10900: If (Proc_348_14_EFBE94() = 0) Then
  loc_E10903:   Exit Sub
  loc_E10904: End If
  loc_E1090A: Proc_348_1_15A98F4(arg_C)
  loc_E1090F: Exit Sub
End Sub

Public Sub Proc_348_16_FA99C8
  'Data Table: 421708
  Dim unk_421757 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  loc_FA9856: unk_421757.Execute "Select Top 1 * From eInvoiceEnviro", var_AC, -1
  loc_FA9861: Set var_8C = var_B0
  loc_FA9892: Me(28) = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ASPID")))
  loc_FA98C6: Me(32) = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ASPPwd")))
  loc_FA98D5: Me(64) = MemVar_1F92154
  loc_FA9902: Me(68) = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("eInvUserName")))
  loc_FA991D: var_B0 = var_8C.Fields
  loc_FA9936: Me(72) = Proc_6_38_E68A98(CVar(var_B0.Item("eInvPwd")))
  loc_FA9945: Me(168) = 250
  loc_FA9954: If (Me(28) = vbNullString) Then
  loc_FA9970:   MsgBox("Please Enter your ASP ID", &H10, var_D4, var_F4, var_114)
loc_FA9980: End Sub
  loc_FA9981: End If
  loc_FA998B: If (Me(32) = vbNullString) Then
  loc_FA99A7:   MsgBox("Please Enter your ASP Password", &H10, var_D4, var_F4, var_114)
loc_FA99B7: End Sub
  loc_FA99B8: End If
  loc_FA99C2: Set var_8C = Nothing
  loc_FA99C5: End Sub
End Sub

Public Sub Proc_348_17_E25E90
  'Data Table: 421708
  loc_E25E6B: Me(4) = "https://einvapi.charteredinfo.com/"
  loc_E25E79: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E25E88: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E25E8E: Exit Sub
End Sub

Public Sub Proc_348_18_E25EE8
  'Data Table: 421708
  loc_E25EC3: Me(4) = "https://einvapimum1.charteredinfo.com/"
  loc_E25ED1: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E25EE0: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E25EE6: Exit Sub
End Sub

Public Sub Proc_348_19_E262B0
  'Data Table: 421708
  loc_E2628B: Me(4) = "https://einvapidel2.charteredinfo.com/"
  loc_E26299: Me(136) = Me(4) & "eivital/dec/v1.04/"
  loc_E262A8: Me(140) = Me(4) & "eicore/dec/v1.03/"
  loc_E262AE: Exit Sub
End Sub

Public Sub Proc_348_20_E263B8
  'Data Table: 421708
  loc_E26393: Me(0) = "https://gstsandbox.charteredinfo.com/"
  loc_E263A1: Me(136) = Me(0) & "eivital/dec/v1.04/"
  loc_E263B0: Me(140) = Me(0) & "eicore/dec/v1.03/"
  loc_E263B6: Exit Sub
End Sub

Public Sub Proc_348_21_12A7B74(arg_C) '12A7B74
  'Data Table: 421708
  Dim var_A8 As Variant
  Dim var_FC As Variant
  Dim arg_1C As Double
  Dim var_110 As String
  Dim var_90 As Recordset15
  Dim var_EC As Fields15
  Dim var_11C As Field20
  Dim var_96 As Integer
  Dim var_124 As IBodyPart
  Dim var_128 As Stream
  Dim var_12C As Stream
  Dim var_B8 As String
  loc_12A757D: var_8C = arg_C
  loc_12A7582: On Error Resume Next
  loc_12A75A5: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_12A75AD: var_FC = CVar(var_EC) 'Address
  loc_12A75B5: Me.Picture = var_FC
  loc_12A75C1: arg_14 = vbNullString
  loc_12A75CA: arg_18 = vbNullString
  loc_12A75D7: arg_1C = CDate(CDbl(1))
  loc_12A7600: Me.Connection15.Execute "Select QrCodeImage,IRN,AckNo,AckDt From eInvoiceBill1 Where DocID='" & var_8C & "'", var_FC, -1
  loc_12A760B: Set var_90 = var_EC
  loc_12A7631: If (var_90.RecordCount <> 1) Then
loc_12A7636: End Sub
  loc_12A7637: End If
  loc_12A7661: arg_14 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("Irn")), arg_1C)
  loc_12A7695: arg_18 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("AckNo")))
  loc_12A76CD: arg_1C = CDate(var_90.Fields.Item("AckDt").Value)
  loc_12A76EB: var_EC = var_90.Fields
  loc_12A7715: If (Proc_6_38_E68A98(CVar(var_EC.Item("QrCodeImage")), arg_1C) = vbNullString) Then
  loc_12A7738:   Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_12A7740:   var_FC = CVar(var_EC) 'Address
  loc_12A7748:   Me.Picture = var_FC
loc_12A7751: End Sub
  loc_12A7752: End If
  loc_12A775C: var_96 = FreeFile(var_FC)
  loc_12A7770: var_EC = Me.Global.App
  loc_12A778C: Open App.Path & "\QR.txt" For Output As var_96 Len = &HFF
  loc_12A77B3: var_11C = var_90.Fields.Item("QrCodeImage")
  loc_12A77D0: Print var_96, Proc_6_38_E68A98(CVar(var_11C), var_96)
  loc_12A77E8: Close var_96
  loc_12A77F0: Set var_120 = New 
  loc_12A77FB: var_EC = Me.Message.BodyPart
  loc_12A7803: Set var_124 = var_EC
  loc_12A780E: var_124.ContentMediaType = "image/bmp/jpg/png"
  loc_12A781B: var_124.ContentTransferEncoding = "base64"
  loc_12A7828: var_124.GetEncodedContentStream
  loc_12A7830: Set var_128 = var_EC
  loc_12A7841: var_EC = Me.Global.App
  loc_12A785B: var_128.LoadFromFile App.Path & "\QR.txt"
  loc_12A786F: var_128.Flush
  loc_12A7878: Set var_128 = Nothing 
  loc_12A789E: var_94 = App.Path & "\QRImage.jpg"
  loc_12A78AF: var_124.GetDecodedContentStream
  loc_12A78B7: Set var_12C = Me.Global.App
  loc_12A78C2: var_12C.LoadFromFile var_94
  loc_12A78D4: var_12C.SaveToFile var_94
  loc_12A78DD: Set var_12C = Nothing 
  loc_12A78E5: Set var_124 = Nothing 
  loc_12A78ED: Set var_120 = Nothing 
  loc_12A7908: var_EC = Me.Global.App
  loc_12A7910: var_110 = App.Path
  loc_12A7922: Call 0.Method_arg_60 (var_110 & "\QRImage.jpg", 2, var_EC)
  loc_12A793F: Set var_138 = New 
  loc_12A7961: Call 0.Method_arg_1C (var_EC, "Convert", var_11C, var_110)
  loc_12A7969: Call 0.Method_arg_1C (0, var_EC)
  loc_12A7971: Call 0.Method_arg_24 (var_EC)
  loc_12A797F: Call 0.Method_arg_20 (var_13C)
  loc_12A7987: Call 0.Method_arg_28 (var_110)
  loc_12A799D: var_B8 = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
  loc_12A79C7: Call 0.Method_arg_20 (var_EC, 1, var_11C, var_13C)
  loc_12A79CF: Call 0.Method_arg_1C ("FormatID", var_140)
  loc_12A79D7: Call 0.Method_arg_28 (var_B8)
  loc_12A79DF: Call 0.Method_arg_1C ()
  loc_12A79E7: Call 0.Method_arg_20 ()
  loc_12A7A08: var_A8 = "Quality"
  loc_12A7A24: Call 0.Method_arg_20 (var_EC, 1, var_11C, var_13C)
  loc_12A7A2C: Call 0.Method_arg_1C (var_A8, var_140)
  loc_12A7A34: Call 0.Method_arg_28 (70)
  loc_12A7A3C: Call 0.Method_arg_1C ()
  loc_12A7A44: Call 0.Method_arg_20 ()
  loc_12A7A6C: Call 0.Method_arg_24 (New)
  loc_12A7A77: Set var_130 = var_11C
  loc_12A7A85: Set var_138 = Nothing 
  loc_12A7A97: var_EC = Me.Global.App
  loc_12A7AAE: Kill CVar(App.Path & "\QRImage.jpg")
  loc_12A7ACA: var_EC = Me.Global.App
  loc_12A7AE4: Call 0.Method_arg_64 (App.Path & "\QRImage.jpg")
  loc_12A7AF8: Call Me.Refresh
  loc_12A7B1F: var_EC = Me.Global.App
  loc_12A7B3D: Me.Global.LoadPicture CVar(App.Path & "\QRImage.jpg"), var_A8, var_B8, var_C8, var_D8
  loc_12A7B4D: Me.Picture = CVar(var_11C)
  loc_12A7B6C: Set var_90 = Nothing
  loc_12A7B71: End Sub
End Sub
