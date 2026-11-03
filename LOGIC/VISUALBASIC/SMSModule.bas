
Public Sub Proc_233_0_ED9568
  'Data Table: 430AD8
  Dim var_90 As Long
  Dim var_86 As Integer
  loc_ED94CC: On Error Goto loc_ED9525
  loc_ED94DD: var_94 = var_8C
  loc_ED94FB: var_8C = var_98
  loc_ED9501: var_90 = InternetGetConnectedStateEx(var_90, var_94)
  loc_ED9514: If (var_90 = 1) Then
  loc_ED9519:   var_86 = &HFF
  loc_ED951F: Else
  loc_ED9521:   var_86 = 0
  loc_ED9524: End If
  loc_ED9524: Result var_86 End Sub 'Integer
  loc_ED9525: ' Referenced from: ED94CC
  loc_ED952D: Set var_A0 = Err()
  loc_ED9533: Call 0.Method_arg_2C (var_94, var_86, var_90, StrConv(var_98, vbUnicode))
  loc_ED9554: MsgBox(CVar(var_94), &H10, "Wininet.dll", var_F0, var_110)
  loc_ED9567: Result var_94 End Sub 'Integer
End Sub

Public Sub Proc_233_1_EBB140(arg_C) 'EBB140
  'Data Table: 430AD8
  Dim var_90 As Long
  Dim var_94 As Long
  Dim var_98 As Long
  loc_EBB0C7: var_90 = gethostbyname(arg_C & vbNullString)
  loc_EBB0DA: If (var_90 <> 0) Then
  loc_EBB0E0:   var_94 = var_90
  loc_EBB0EC:   var_98 = (var_90 + &HC)
  loc_EBB0FA:   CopyMemory(var_94, var_94, 4)
  loc_EBB10B:   CopyMemory(var_98, var_98, 4)
  loc_EBB11C:   CopyMemory(var_9C, var_98, 4)
  loc_EBB12D:   CopyMemory(var_A0, var_9C, 4)
  loc_EBB13B:   var_88 = Proc_233_2_E16E8C(var_A0, var_98, var_94)
  loc_EBB13E: End If
  loc_EBB13E: Exit Sub
End Sub

Public Sub Proc_233_2_E16E8C(arg_C) 'E16E8C
  'Data Table: 430AD8
  loc_E16E88: var_88 = Proc_233_3_E5DB34(inet_ntoa(arg_C))
  loc_E16E8B: Exit Sub
End Sub

Public Sub Proc_233_3_E5DB34(arg_C) 'E5DB34
  'Data Table: 430AD8
  loc_E5DB20: lstrcpy(String$(lstrlen(arg_C), 0), arg_C)
  loc_E5DB31: Exit Sub
End Sub

Public Sub Proc_233_4_E62FEC(arg_C) 'E62FEC
  'Data Table: 430AD8
  Dim var_A4 As Long
  Dim MemVar_B9999999 As Integer
  loc_E62FD9: var_A4 = GetRTTAndHopCount(inet_addr(arg_C), var_90, &H14, var_94, inet_addr(arg_C))
  loc_E62FE9: Result (var_A4 = 1) End Sub 'Integer
  loc_E62FEA: MemVar_B9999999 = var_A4
End Sub

Public Sub Proc_233_5_11B7494(arg_C, arg_10, arg_14, arg_18, arg_1C, arg_20, arg_24, arg_28, arg_2C, arg_30, arg_34) '11B7494
  'Data Table: 430AD8
  Dim var_C8 As Variant
  Dim var_8C As String
  Dim var_90 As String
  Dim unk_430AEB As Connection15
  Dim var_B4 As Recordset15
  Dim var_B8 As Fields15
  Dim var_CC As Field20
  Dim arg_18 As Integer
  Dim var_EC As String
  Dim var_DC As Variant
  Dim var_230 As Variant
  Dim var_2F0 As Variant
  Dim var_3B0 As Variant
  Dim var_500 As Variant
  Dim var_620 As Variant
  loc_11B7134: On Error Resume Next
  loc_11B713F: var_C8 = 0
  loc_11B715C: var_8C = "Select IsNull(Max(SNo),0)+1 From DBSendSMS With (NoLock) Where DocId='" & arg_C
  loc_11B716C: unk_430AEB.Execute var_8C & "'", var_B0, -1
  loc_11B7174: var_B4 = var_B4.Fields
  loc_11B717C: var_C8 = var_B8.Item(var_B8)
  loc_11B7184: var_CC = var_CC.Value
  loc_11B718D: arg_18 = CInt(var_DC)
  loc_11B71C7: var_90 = "insert into DBSendSMS (DocId,VType,VDate,VNo,SNo, " & "SubCode,Mobile1,Mobile2," & "TxtMsg,SMSDt,SMSTm,DelvDt,DelvTm,SenderName,PartyName,"
  loc_11B71E3: var_EC = var_90 & "U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code,RoomNo,BillAmount,SendTF,Comp_Code,MsgType) " & "values  ('" & arg_C & "','"
  loc_11B71FF: Proc_6_7_F25D88(var_B0, MemVar_1F920EC, CVar(var_EC & arg_10 & "',"))
  loc_11B7267: var_230 = arg_18 & var_B0 & "," & CVar(arg_14) & "," & CVar(arg_18) & ",'" & CVar(arg_1C) & "','" & CVar(arg_20) & "','" & CVar(arg_24) 
  loc_11B727F: Proc_6_17_EAA2B0(var_270, arg_28)
  loc_11B729F: Proc_6_7_F25D88(var_2C0, MemVar_1F920EC)
  loc_11B72B0: var_2F0 = var_230 & "'," & var_270 & "," & var_2C0 & ",'" 
  loc_11B72EF: Proc_6_7_F25D88(var_380, MemVar_1F920EC, 1 & Format(Now, "hh:mm") & "',")
  loc_11B7300: var_3B0 = 1 & var_380 & ",'" 
  loc_11B7372: var_500 = 1 & Format(Now, "hh:mm") & "','" & CVar(arg_2C) & "','" & CVar(arg_30) & "'," & "'A','" & CVar(MemVar_1F920C8) & "',GetDate(),'" 
  loc_11B73C9: var_620 = var_500 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "','" & CVar(arg_34) & "'," & CVar(arg_38) & ",'FALSE','" & CVar(MemVar_1F92128) 
  loc_11B7481: unk_430AEB.Execute CStr(var_620 & "','" & CVar(arg_3C) & "')"), var_B0, -1
  loc_11B748E: Exit Sub
  loc_11B7491: Exit Sub
End Sub

Public Sub Proc_233_6_1342D0C
  'Data Table: 430AD8
  Dim var_C0 As String
  Dim unk_430AEB As Connection15
  Dim var_94 As Recordset15
  Dim var_98 As Recordset15
  Dim var_F4 As Fields15
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_9C As Recordset15
  Dim var_170 As Variant
  Dim var_9E As Integer
  Dim var_1C0 As Variant
  Dim var_1E4 As Variant
  loc_1342580: On Error Resume Next
  loc_13425A6: var_C0 = -1 & Proc_6_38_E68A98(arg_24, "Select MsgType from DBSENDSMS With (NoLock) Where ISNULL(SENDTF,'')<>'TRUE' And DocId='", var_F0)
  loc_13425C9: unk_430AEB.Execute var_C0 & "' And IsNull(SNo,0)=" & CStr(arg_28) & vbNullString, var_F4, 
  loc_13425D4: Set var_94 = var_F4
  loc_1342602: If (var_94.RecordCount > 0) Then
  loc_134261D:   unk_430AEB.Execute "Select * from SMSEnviro With (NoLock)", var_F0, -1
  loc_1342628:   Set var_98 = var_F4
  loc_1342659:   If ((var_98.RecordCount > 0) And (var_98.EOF = 0)) Then
  loc_1342686:     Me(8) = Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsCenterUserName")))
  loc_13426BC:     Me(12) = Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsCenterPassword")))
  loc_13426F2:     Me(16) = Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsDisplayName")))
  loc_134270F:     var_F4 = var_98.Fields
  loc_1342728:     Me(20) = Proc_6_38_E68A98(CVar(var_F4.Item("SmsURL")))
  loc_1342737:   Else
  loc_134274E:     var_F0 = "Plz Set SMS Enviro Setting ........"
  loc_1342754:     MsgBox(var_F0, 0, var_110, var_130, var_150)
  loc_1342766:     Result var_F4 End Sub 'Integer
  loc_1342767:   End If
  loc_1342788:   Proc_6_17_EAA2B0(var_F0, MemVar_1F92078, "Select MobileNo from EmailSMSForward With (NoLock) Where LogSite_Code=")
  loc_13427C5:   var_160 = CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("MsgType")), var_1C0 & var_F0 & " And Len(MobileNo)>=10 And IsNull(TxtMsg,'')='' And Type=")) 'String
  loc_13427CB:   Proc_6_17_EAA2B0(var_170, var_160)
  loc_13427D3:   var_180 = -1 & var_170 
  loc_13427EA:   unk_430AEB.Execute CStr(var_180 & " And Type Not In ('Check In','Check Out','Outlet Bill')"), var_1C4, 
  loc_13427F5:   Set var_9C = var_1C4
  loc_134281F:   var_F8 = var_9C.RecordCount
  loc_134282D:   If (var_F8 > 0) Then
  loc_134288A:     var_170 = (IIf((var_A4 <> vbNullString), ",", vbNullString) + CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("MobileNo")))))
  loc_134288F:     var_A4 = CStr(var_170)
  loc_13428A6:   End If
  loc_13428D0:   var_A8 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsURL")))
  loc_134290A:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("TUser")))
  loc_1342947:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsCenterUserName")))
  loc_1342984:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("TPassword")))
  loc_13429C1:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsCenterPassword")))
  loc_13429FE:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("TFromSend")))
  loc_1342A3B:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("SmsDisplayName")))
  loc_1342A78:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("TPhNo")))
  loc_1342AA1:   var_A8 = var_A8 & Proc_6_38_E68A98(arg_14) & var_A4
  loc_1342ADC:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_98.Fields.Item("TMessage")))
  loc_1342AFE:   var_A8 = var_A8 & Proc_6_38_E68A98(arg_1C)
  loc_1342B18:   var_F4 = var_98.Fields
  loc_1342B35:   var_A8 = var_A8 & Proc_6_38_E68A98(CVar(var_F4.Item("TExtra")))
  loc_1342B4B:   If (Proc_233_0_ED9568() = &HFF) Then
  loc_1342B4E:     ' Referenced from: 1342B6B
  loc_1342B5F:     If CBool(MemVar_431388.Busy) Then
  loc_1342B64:       DoEvents()
  loc_1342B6B:       GoTo loc_1342B4E
  loc_1342B6E:     End If
  loc_1342B7C:     Call MemVar_431388.NAVIGATE
  loc_1342B82:     ' Referenced from: 1342B9F
  loc_1342B89:     var_F0 = MemVar_431388.Busy
  loc_1342B93:     If CBool(var_F0) Then
  loc_1342B98:       DoEvents()
  loc_1342B9F:       GoTo loc_1342B82
  loc_1342BA2:     End If
  loc_1342BAD:     unk_430AEB.BeginTrans var_F8
  loc_1342BB6:     var_9E = &HFF
  loc_1342BC6:     Proc_6_7_F25D88(var_F0, MemVar_1F920EC)
  loc_1342C43:     var_1E4 = "Update DBSENDSMS Set DelvDT=" & var_F0 & ",DelvTM='" & Format(Now, "HH:MM") & "',SenderName='" & "Analysis" & "',SendTF='TRUE' Where DocId='" 
  loc_1342C77:     unk_430AEB.Execute CStr(var_1E4 & CVar(Proc_6_38_E68A98(arg_24, 1, 1)) & "' And IsNull(SNo,0)=" & CVar(arg_28) & vbNullString), var_294, -1
  loc_1342CB1:     unk_430AEB.CommitTrans
  loc_1342CBA:     var_9E = 0
  loc_1342CBD:   End If
  loc_1342CBF: End If
  loc_1342CCF: Set var_94 = Nothing
  loc_1342CD9: Set var_98 = Nothing
  loc_1342CE3: Set var_9C = Nothing
  loc_1342CE8: Result &HFF End Sub 'Integer
  loc_1342CF1: If (var_9E = &HFF) Then
  loc_1342CFC:   unk_430AEB.RollbackTrans
  loc_1342D01: End If
  loc_1342D03: Proc_6_60_E62BC4(var_9E, var_F4)
  loc_1342D0A: Result var_9E End Sub 'Integer
End Sub

Public Sub Proc_233_7_EDF870(arg_C) 'EDF870
  'Data Table: 430AD8
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EDF7E4: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EDF803: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EDF826:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EDF842:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EDF84A:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EDF84F:   var_8C = CStr(var_108)
  loc_EDF863: Next var_B8 'Integer
  loc_EDF86B: var_88 = var_8C
  loc_EDF86E: Exit Sub
End Sub

Public Sub Proc_233_8_EE9B78(arg_C) 'EE9B78
  'Data Table: 430AD8
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  Dim var_6000 As Integer
  loc_EE9AC3: Randomize(var_B0)
  loc_EE9AE4: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EE9AF4: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EE9B0D: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EE9B49:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EE9B51:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EE9B56:   var_8C = CStr(var_10C)
  loc_EE9B6A: Next var_B8 'Integer
  loc_EE9B72: var_88 = var_8C
  loc_EE9B75: Exit Sub
  loc_EE9B76: var_6000 = 
End Sub

Public Sub Proc_233_9_139E18C
  'Data Table: 430AD8
  Dim var_94 As Double
  Dim var_D8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_17C As Fields15
  Dim var_C8 As Variant
  Dim var_128 As Variant
  Dim var_86 As Integer
  Dim var_19C As Fields15
  Dim var_178 As Variant
  Dim var_1E8 As Variant
  loc_139D8DE: var_94 = CDate(Proc_6_14_EF349C())
  loc_139D8F1: var_D8 = "Select JS.*,JD.Job_Id,JD.JobName From JobSchedule JS Inner Join JobScheduledDetail JD On JS.Schedule_Id=JD.Schedule_Id Where JS.LogSite_Code="
  loc_139D901: Proc_6_17_EAA2B0(var_C8, MemVar_1F92078, var_D8, var_178)
  loc_139D909: var_E8 = -1 & var_C8 
  loc_139D921: Proc_6_7_F25D88(var_128, var_94, var_E8 & " And ")
  loc_139D929: var_138 = var_17C & var_128 
  loc_139D940: unk_430AEB.Execute CStr(var_138 & " Between JS.ScheduleStartDate And JS.ScheduleEndDate And JS.ScheduleEnabled=1"), var_94, 
  loc_139D979: If (var_17C.RecordCount = 0) Then
  loc_139D981:   Set var_8C = Nothing
  loc_139D984:   Result  End Sub 'Integer
  loc_139D985: End If
  loc_139D988: var_B8 = var_94
  loc_139D990: Proc_6_10_E8DF1C(var_C8)
  loc_139D999: var_A0 = CStr(var_C8)
  loc_139D9AA: Proc_6_11_F0A84C(var_C8, var_94)
  loc_139D9B3: var_98 = CStr(var_C8)
  loc_139D9C4: Proc_6_12_E8D2BC(var_C8, var_94)
  loc_139D9CD: var_9C = CStr(var_C8)
  loc_139D9D3: ' Referenced from: 139E188
  loc_139D9E2: If Not(var_8C.EOF) Then
  loc_139DA0F:   var_198 = var_8C.Fields.Item("ScheduleType").Value 'Variant
  loc_139DA25:   If (var_198 = "One Time") Then
  loc_139DA47:     var_C8 = CVar(var_8C.Fields.Item("OneTimeOccur")) 'Address
  loc_139DA4E:     Proc_6_10_E8DF1C(var_E8, var_C8)
  loc_139DA6A:     If (CDate(var_E8) = CDate(var_A0)) Then
  loc_139DA82:       var_B8 = var_94
  loc_139DA8A:       Proc_6_7_F25D88(var_C8, var_B8, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_139DA92:       var_E8 = -1 & var_C8 
  loc_139DAC5:       Proc_6_17_EAA2B0(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_E8 & " Where Job_Id=")
  loc_139DADB:       unk_430AEB.Execute CStr(var_19C & var_138), var_B8, 
  loc_139DAFD:       var_86 = &HFF
  loc_139DB00:     End If
  loc_139DB03:   Else
  loc_139DB0E:     If (var_198 = "Recurring") Then
  loc_139DB3B:       var_1AC = var_8C.Fields.Item("FreqOccurs").Value 'Variant
  loc_139DB51:       If (var_1AC = "Daily") Then
  loc_139DB7F:         var_E8 = CDate(CDate(var_98))
  loc_139DBAA:         var_19C = var_8C.Fields
  loc_139DBE2:         If ((DateDiff("d", CVar(var_8C.Fields.Item("ScheduleStartDate")), var_E8, 1, 1) Mod var_19C.Item("FreqRecurs").Value) = 0) Then
  loc_139DC21:           If (var_8C.Fields.Item("DFreq").Value = 0) Then
  loc_139DC43:             var_C8 = CVar(var_8C.Fields.Item("DFreqOccursOnce")) 'Address
  loc_139DC4A:             Proc_6_12_E8D2BC(var_E8, var_C8)
  loc_139DC66:             If (CDate(var_E8) = CDate(var_9C)) Then
  loc_139DC86:               Proc_6_7_F25D88(var_C8, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_139DC8E:               var_E8 = -1 & var_C8 
  loc_139DC97:               var_108 = var_E8 & " Where Job_Id=" 
  loc_139DCC1:               Proc_6_17_EAA2B0(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_108)
  loc_139DCD7:               unk_430AEB.Execute CStr(var_19C & var_138), var_86, 
  loc_139DCF9:               var_86 = &HFF
  loc_139DCFC:             End If
  loc_139DCFF:           Else
  loc_139DD3B:             If (var_8C.Fields.Item("DFreq").Value = 1) Then
  loc_139DD7A:               If (var_8C.Fields.Item("DFreqOccursType").Value = "hour(s)") Then
  loc_139DDC0:                 Proc_6_12_E8D2BC(var_108, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139DE51:                 Proc_6_12_E8D2BC(var_210, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139DE5F:                 var_138 = (DatePart("h", var_9C, 1, 1) - DatePart("h", var_108, 1, 1))
  loc_139DE71:                 var_1E8 = (Int((var_138 / var_8C.Fields.Item("DFreqOccursEvery").Value)) * var_8C.Fields.Item("DFreqOccursEvery").Value)
  loc_139DE88:                 Proc_6_12_E8D2BC(var_230, DateAdd("h", CSng(var_1E8), var_210))
  loc_139DE91:                 var_A4 = CStr(var_230)
  loc_139DEBD:               Else
  loc_139DEF9:                 If (var_8C.Fields.Item("DFreqOccursType").Value = "minute(s)") Then
  loc_139DF38:                   var_E8 = CVar(var_8C.Fields.Item("DFreqOccursStartTime")) 'Address
  loc_139DF3F:                   Proc_6_12_E8D2BC(var_108, var_E8)
  loc_139DF57:                   var_128 = DatePart("n", var_108, 1, 1)
  loc_139DFD0:                   Proc_6_12_E8D2BC(var_210, CVar(var_8C.Fields.Item("DFreqOccursStartTime")))
  loc_139DFDE:                   var_138 = (DatePart("n", var_9C, 1, 1) - var_128)
  loc_139DFE5:                   var_178 = (var_138 / var_8C.Fields.Item("DFreqOccursEvery").Value)
  loc_139E007:                   Proc_6_12_E8D2BC(var_230, DateAdd("n", CSng((Int(var_178) * var_8C.Fields.Item("DFreqOccursEvery").Value)), var_210))
  loc_139E010:                   var_A4 = CStr(var_230)
  loc_139E039:                 End If
  loc_139E039:               End If
  loc_139E058:               var_C8 = CVar(var_8C.Fields.Item("DFreqOccursStartTime")) 'Address
  loc_139E05F:               Proc_6_12_E8D2BC(var_E8, var_C8)
  loc_139E073:               var_19C = var_8C.Fields
  loc_139E08A:               Proc_6_12_E8D2BC(var_128, CVar(var_19C.Item("DFreqOccursEndTime")))
  loc_139E0C8:               If (((CDate(var_A4) >= CDate(var_E8)) And (CDate(var_A4) <= CDate(var_128))) And (CDate(var_A4) = CDate(var_9C))) Then
  loc_139E0E8:                 Proc_6_7_F25D88(var_C8, var_94, "Update JobScheduledDetail Set JobEnabled=1,JobScheduledOn=", var_178)
  loc_139E0F0:                 var_E8 = -1 & var_C8 
  loc_139E123:                 Proc_6_17_EAA2B0(var_138, CVar(var_8C.Fields.Item("Job_Id")), var_E8 & " Where Job_Id=")
  loc_139E139:                 unk_430AEB.Execute CStr(var_19C & var_138), var_86, 
  loc_139E15B:                 var_86 = &HFF
  loc_139E15E:               End If
  loc_139E15E:             End If
  loc_139E15E:           End If
  loc_139E15E:         End If
  loc_139E161:       Else
  loc_139E16C:         If (var_1AC = "Weekly") Then
  loc_139E16F:           GoTo loc_139E180
  loc_139E172:         End If
  loc_139E17D:         If (var_1AC = "Monthly") Then
  loc_139E180:           ' Referenced from:     139E16F
  loc_139E180:         End If
  loc_139E180:       End If
  loc_139E180:     End If
  loc_139E180:   End If
  loc_139E183:   var_8C.MoveNext
  loc_139E188:   GoTo loc_139D9D3
  loc_139E18B: End If
  loc_139E18B: Result var_86 End Sub 'Integer
End Sub

Public Sub Proc_233_10_117EC28
  'Data Table: 430AD8
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_A8 As Variant
  Dim var_EC As Variant
  loc_117E86E: unk_430AEB.Execute "Select * from JOBScheduledDetail Where JobEnabled=1 And JobScheduledOn Is Not Null", var_A8, -1
  loc_117E879: Set var_88 = var_AC
  loc_117E882: ' Referenced from: 117EC21
  loc_117E891: If Not(var_88.EOF) Then
  loc_117E8CF:   If (Len(Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))) >= &HA) Then
  loc_117E8E6:     var_AC = var_88.Fields
  loc_117E91B:     If (InStr(var_AC, Proc_6_38_E68A98(CVar(var_AC.Item("ScheduledJob")), 1), "<FOM Sale&Collection>", 0) <> 0) Then
  loc_117E93D:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117E953:       Proc_233_11_1A18D30("FOM Sale&Collection")
  loc_117E965:     End If
  loc_117E989:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117E9AE:     If (InStr(Proc_6_38_E68A98(var_A8), Proc_6_38_E68A98(var_A8, 1), "<POS Sale&Collection>", 0) <> 0) Then
  loc_117E9D0:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117E9E6:       Proc_233_11_1A18D30("POS Sale&Collection")
  loc_117E9F8:     End If
  loc_117EA1C:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117EA41:     If (InStr(Proc_6_38_E68A98(var_A8), Proc_6_38_E68A98(var_A8, 1), "<BANQ Sale&Collection>", 0) <> 0) Then
  loc_117EA63:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EA79:       Proc_233_11_1A18D30("BANQ Sale&Collection")
  loc_117EA8B:     End If
  loc_117EAAF:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117EAD4:     If (InStr(Proc_6_38_E68A98(var_A8), Proc_6_38_E68A98(var_A8, 1), "<POS&BANQ Sale&Collection>", 0) <> 0) Then
  loc_117EAF6:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EB0C:       Proc_233_11_1A18D30("POS&BANQ Sale&Collection")
  loc_117EB1E:     End If
  loc_117EB42:     var_A8 = CVar(var_88.Fields.Item("ScheduledJob")) 'Address
  loc_117EB67:     If (InStr(Proc_6_38_E68A98(var_A8), Proc_6_38_E68A98(var_A8, 1), "<Total Collection>", 0) <> 0) Then
  loc_117EB89:       var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EB9F:       Proc_233_11_1A18D30("Total Collection")
  loc_117EBB1:     End If
  loc_117EBB1:   End If
  loc_117EBE2:   var_A8 = CVar(var_88.Fields.Item("Job_Id")) 'Address
  loc_117EBE9:   Proc_6_17_EAA2B0(var_CC, var_A8, "Update JOBScheduledDetail Set JobEnabled=0,JobScheduledOn=Null Where Job_Id=", var_10C)
  loc_117EBF1:   var_EC = -1 & var_CC 
  loc_117EBFF:   unk_430AEB.Execute CStr(var_EC), var_110, Proc_6_38_E68A98(var_A8)
  loc_117EC1C:   var_88.MoveNext
  loc_117EC21:   GoTo loc_117E882
  loc_117EC24: End If
  loc_117EC24: Exit Sub
End Sub

Public Sub Proc_233_11_1A18D30(arg_C, arg_10) '1A18D30
  'Data Table: 430AD8
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_E4 As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_108 As Variant
  Dim var_C0 As Variant
  Dim var_15A As Integer
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_9C As Double
  Dim var_104 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_250 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_1C0 As Variant
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_1F0 As Variant
  Dim var_110 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_290 As Variant
  Dim var_2A0 As Variant
  Dim var_2D0 As Variant
  Dim var_2F0 As String
  Dim var_320 As Variant
  Dim var_330 As String
  Dim var_360 As Variant
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3C4 As String
  Dim var_118 As Recordset15
  Dim var_3E8 As Fields15
  Dim var_3FC As Field20
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_2C0 As Variant
  Dim var_3E4 As Variant
  Dim var_210 As Variant
  Dim var_450 As String
  Dim var_454 As String
  Dim var_164 As Recordset15
  Dim var_160 As Recordset15
  Dim var_16A As Integer
  Dim unk_430C03 As Connection15
  loc_1A15885: Proc_6_17_EAA2B0(var_C0, arg_10, "Select * from JOBScheduledDetail Where Job_Id=")
  loc_1A1589B: unk_430AEB.Execute CStr(var_104 & var_C0), -1, var_108
  loc_1A158A6: Set var_88 = var_108
  loc_1A158CC: If (var_88.RecordCount > 0) Then
  loc_1A158F7:   var_8C = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MsgHeader")))
  loc_1A15928:   var_90 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MsgFooter")))
  loc_1A15959:   var_94 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")))
  loc_1A1599C:   var_114 = var_88.Fields
  loc_1A159A4:   var_118 = var_114.Item("JobScheduledOn")
  loc_1A159C2:   var_104 = IIf(IsNull(CVar(var_88.Fields.Item("JobScheduledOn"))), MemVar_1F920EC, CVar(var_118))
  loc_1A159EC:   var_9C = CDate(Format(var_104, "dd/MMM/yyyy"))
  loc_1A15A14:   var_108 = var_88.Fields
  loc_1A15A1C:   var_110 = var_108.Item("TemplateId")
  loc_1A15A24:   var_C0 = CVar(var_110) 'Address
  loc_1A15A2D:   var_A0 = Proc_6_38_E68A98(var_C0, var_9C, 1)
  loc_1A15A39: Else
  loc_1A15A3E:   Set var_88 = Nothing
  loc_1A15A41:   Exit Sub
  loc_1A15A42: End If
  loc_1A15A5F: Proc_6_17_EAA2B0(var_C0, MemVar_1F92078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=", var_104)
  loc_1A15A67: var_E0 = -1 & var_C0 
  loc_1A15A75: unk_430AEB.Execute CStr(CVar(var_118)), var_108, 1
  loc_1A15A80: Set var_160 = var_108
  loc_1A15A95: Me(60) = arg_C
  loc_1A15A9D: var_170 = arg_C
  loc_1A15AA8: If (var_170 = "FOM Sale&Collection") Then
  loc_1A15AC6:   var_104 = CVar(var_168 & var_8C & "\n" & "DSR: (FOM) ") 'String
  loc_1A15AD8:   var_C0 = "dd/MMM/yyyy"
  loc_1A15B16:   var_250 = CVar(CStr(1 & Format(var_9C, var_C0) & "\n") & "Room Charge.: ") 'String
  loc_1A15B35:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A15B45:   Proc_6_7_F25D88(var_C0, var_9C, "dd/MMM/yyyy", var_210, -1, var_108, var_110)
  loc_1A15B64:   var_138 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Room Charge' And Code<>'"
  loc_1A15B86:   var_1D0 = 0 & var_C0 & " And RestCode='" & CVar(MemVar_1F92078) & var_138 & CVar(MemVar_1F92078) & "EXTB') And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_1A15B9D:   unk_430AEB.Execute CStr(var_1D0 & "'"), var_114, var_230
  loc_1A15BA5:   var_250 = var_108.Fields
  loc_1A15BAD:   var_104 = var_110.Item(1)
  loc_1A15BB5:   var_15A = var_114.Value
  loc_1A15BC0:   Proc_6_50_EF5590(var_240)
  loc_1A15BFA:   var_2D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A15C0A:   Proc_6_7_F25D88(var_2C0, var_9C, var_2D0, var_3E4, -1, var_118)
  loc_1A15C29:   var_330 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Room Charge' And Code<>'"
  loc_1A15C41:   var_380 = var_3E8 & var_2C0 & " And RestCode='" & CVar(MemVar_1F92078) & var_330 & CVar(MemVar_1F92078) & "EXTB') And LogSite_Code='" 
  loc_1A15C62:   unk_430AEB.Execute CStr(var_380 & CVar(MemVar_1F92078) & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A15C72:    = var_3E8.Item(var_230 & var_240 & "\n" & " UnBilled: ")
  loc_1A15C7A:    = var_3FC.Value
  loc_1A15C85:   Proc_6_50_EF5590(var_41C)
  loc_1A15D19:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A15D29:   Proc_6_7_F25D88(var_C0, var_9C, "dd/MMM/yyyy", var_210, -1, var_108)
  loc_1A15D60:   var_1B0 = var_110 & var_C0 & " And RestCode='" & CVar(MemVar_1F92078) & "FOM' And PayCode='" & CVar(MemVar_1F92078) & "EXTB' And LogSite_Code='" 
  loc_1A15D6A:   var_1D0 = var_1B0 & CVar(MemVar_1F92078) 
  loc_1A15D81:   unk_430AEB.Execute CStr(var_1D0 & "'"), 0, var_114
  loc_1A15D91:    = var_110.Item(CVar(CStr(var_118.Fields & var_41C & "\n") & "Extra Bed.: "))
  loc_1A15D99:    = var_114.Value
  loc_1A15DA4:   Proc_6_50_EF5590(var_240)
  loc_1A15DB5:   var_280 = var_108.Fields & var_240 & "\n" 
  loc_1A15DDE:   var_2D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A15DEE:   Proc_6_7_F25D88(var_2C0, var_9C, var_2D0, var_3E4, -1, var_118)
  loc_1A15E1C:   var_360 = var_3E8 & var_2C0 & " And RestCode='" & CVar(MemVar_1F92078) & "FOM' And PayCode='" & CVar(MemVar_1F92078) 
  loc_1A15E2F:   var_3A0 = var_360 & "EXTB' And LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_1A15E46:   unk_430AEB.Execute CStr(var_3A0 & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A15E56:    = var_3E8.Item(var_280 & " UnBilled: ")
  loc_1A15E5E:    = var_3FC.Value
  loc_1A15E69:   Proc_6_50_EF5590(var_41C)
  loc_1A15EFD:   var_D0 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate="
  loc_1A15F0D:   Proc_6_7_F25D88(var_C0, var_9C, "dd/MMM/yyyy", var_1D0, -1, var_108)
  loc_1A15F2C:   var_138 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Meal Charge') And LogSite_Code='"
  loc_1A15F31:   var_158 = var_110 & var_C0 & " And RestCode='" & CVar(MemVar_1F92078) & var_138 
  loc_1A15F52:   unk_430AEB.Execute CStr(var_158 & CVar(MemVar_1F92078) & "'"), 0, var_114
  loc_1A15F5A:   var_1F0 = var_108.Fields
  loc_1A15F62:    = var_110.Item(CVar(CStr(var_118.Fields & var_41C & "\n") & "Meal Charge.: "))
  loc_1A15F6A:    = var_114.Value
  loc_1A15F75:   Proc_6_50_EF5590(var_210)
  loc_1A15FAF:   var_290 = "SELECT ISNULL(SUM(AMTDR)-SUM(AMTCR),0) AS PAY1 FROM PayCharge Where VDate<="
  loc_1A15FBF:   Proc_6_7_F25D88(var_280, var_9C, " UnBilled: ", var_360, -1, var_118)
  loc_1A15FD0:   var_2C0 = var_3E8 & var_280 & " And RestCode='" 
  loc_1A15FDE:   var_2F0 = "FOM' And PayCode IN (SELECT Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature = 'Meal Charge') And LogSite_Code='"
  loc_1A15FED:   var_320 = var_2C0 & CVar(MemVar_1F92078) & var_2F0 & CVar(MemVar_1F92078) 
  loc_1A16004:   unk_430AEB.Execute CStr(var_320 & "' And SettleDate Is Null"), 0, var_3FC
  loc_1A16014:    = var_3E8.Item(var_1F0 & var_210 & "\n" & " UnBilled: ")
  loc_1A1601C:    = var_3FC.Value
  loc_1A16027:   Proc_6_50_EF5590(var_3A0)
  loc_1A160BA:   var_E4 = "SELECT ISNULL(SUM(Q.PAY1),0) As PAY1 From (SELECT ISNULL(SUM(PC.AmtCr)-SUM(PC.AmtDr),0) PAY1,PC.PayType FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A160C1:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A160CF:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_1D0, -1, var_108)
  loc_1A160DB:   var_D0 = " And PC.PAYTYPE IN ('Cash') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))<>0 Union SELECT IsNull(Sum(E.Amount),0) PAY1,'Cash' as PayType FROM ExpSheet E WHERE E.VDate="
  loc_1A160EF:   Proc_6_7_F25D88(var_158, var_9C, var_110 & var_C0 & "dd/MMM/yyyy", 0)
  loc_1A16100:   var_1B0 = var_114 & var_158 & " And E.VTYPE='HTSAL' And E.Amount>0)Q Where Q.PayType IN ('Cash')" 
  loc_1A1610E:   unk_430AEB.Execute CStr(var_1B0), var_1F0, CVar(CStr(var_118.Fields & var_3A0 & "\n") & "Cash.: ")
  loc_1A16116:    = var_108.Fields
  loc_1A1611E:    = var_110.Item()
  loc_1A16126:    = var_114.Value
  loc_1A16131:   Proc_6_50_EF5590(var_210)
  loc_1A161A4:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A161AB:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A161B9:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A161C5:   var_D0 = " And PC.PAYTYPE IN ('Cheque','Credit Card','Cash Card') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A161D8:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A161E8:    = var_110.Item(CVar(CStr(var_1F0 & var_210 & "\n") & "Card.: "))
  loc_1A161F0:    = var_114.Value
  loc_1A161FB:   Proc_6_50_EF5590(var_1B0)
  loc_1A16268:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr)-SUM(PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A1626F:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A1627D:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A16289:   var_D0 = " And PC.PAYTYPE IN ('Company','Member') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A1629C:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A162AC:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "BTC.: "))
  loc_1A162B4:    = var_114.Value
  loc_1A162BF:   Proc_6_50_EF5590(var_1B0)
  loc_1A1632C:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A16333:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A16341:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A1634D:   var_D0 = " And PC.PAYTYPE IN ('UPI') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A16360:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A16370:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "UPI.: "))
  loc_1A16378:    = var_114.Value
  loc_1A16383:   Proc_6_50_EF5590(var_1B0)
  loc_1A163F0:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A163F7:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A16405:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A16411:   var_D0 = " And PC.PAYTYPE IN ('Other') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A16424:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A16434:    = var_110.Item(CVar(CStr(var_108.Fields & var_1B0 & "\n") & "Other.: "))
  loc_1A1643C:    = var_114.Value
  loc_1A16447:   Proc_6_50_EF5590(var_1B0)
  loc_1A16483:   var_1D0 = CVar(CStr(var_108.Fields & var_1B0) & " Compl.: ") 'String
  loc_1A164A9:   var_E4 = "SELECT ISNULL(SUM(PC.AmtCr-PC.AmtDr),0) PAY1 FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') And (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='" & MemVar_1F92078
  loc_1A164B0:   var_E0 = CVar(CStr(var_158 & CVar(MemVar_1F92078) & "'") & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A164BE:   Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_158, -1, var_108)
  loc_1A164CA:   var_D0 = " And PC.PAYTYPE IN ('Complementary') And PC.AmtCr-PC.AmtDr<>0"
  loc_1A164DD:   unk_430AEB.Execute CStr(var_110 & var_C0 & "dd/MMM/yyyy"), 0, var_114
  loc_1A164E5:   var_190 = var_108.Fields
  loc_1A164ED:    = var_110.Item(var_1D0)
  loc_1A164F5:    = var_114.Value
  loc_1A16500:   Proc_6_50_EF5590(var_1B0)
  loc_1A16576:   Proc_6_7_F25D88(var_C0, var_9C, "SELECT IsNull(SUM(E.Amount),0) As NetSale FROM ExpSheet E WHERE E.VDate=", var_190, -1, var_108)
  loc_1A165A8:   unk_430AEB.Execute CStr(var_110 & var_C0 & " And E.VTYPE='HTEXP' And E.Amount>0 And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), 0, var_114
  loc_1A165B8:    = var_110.Item(CVar(CStr(var_190 & var_108.Fields & "\n") & "Expenses.: "))
  loc_1A165C0:    = var_114.Value
  loc_1A165CB:   Proc_6_50_EF5590(var_1D0)
  loc_1A16610:   var_1F0 = CVar(CStr(var_108.Fields & var_1D0 & "\n") & "Cancel.: ") 'String
  loc_1A1663F:   Proc_6_7_F25D88(var_C0, var_9C, "SELECT COUNT(*) From FOMBillDetails Where Bill_Date=", var_190, -1, var_108)
  loc_1A16650:   var_104 = var_110 & var_C0 & " And Status='CANCEL' And LogSite_Code='" 
  loc_1A1665A:   var_148 = var_104 & CVar(MemVar_1F92078) 
  loc_1A16671:   unk_430AEB.Execute CStr(var_148 & "'"), 0, var_114
  loc_1A16681:    = var_110.Item(var_1F0)
  loc_1A16689:    = var_114.Value
  loc_1A16694:   Proc_6_49_EF5480(var_1D0)
  loc_1A1669C:   var_210 = var_108.Fields & var_1D0 
  loc_1A166D9:   var_240 = CVar(CStr(var_210 & "\n") & "Vacant Room.: ") 'String
  loc_1A166DF:   var_D0 = 0
  loc_1A1670C:   unk_430AEB.Execute "Select Count(*) From RoomMast RM WHERE RM.Type='RO' And RM.InclCount='Y' And LogSite_Code='" & MemVar_1F92078 & "'", var_C0, -1
  loc_1A16714:   var_108 = var_108.Fields
  loc_1A1671C:   var_D0 = var_110.Item(var_110)
  loc_1A1672B:   Proc_6_49_EF5480(var_104, CVar(var_114))
  loc_1A16756:   var_450 = "select count(Distinct Convert(Varchar(11),Vdate,102)+RoomNo) from paycharge where Amtdr>0 and PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge') And PayCode Not In ('" & MemVar_1F92078
  loc_1A16779:   Proc_6_7_F25D88(var_148, var_9C, CVar(var_450 & "DISC','" & MemVar_1F92078 & "EXTB') And vdate="), var_1D0, -1, var_118, var_3E8)
  loc_1A1678A:   var_1B0 = 0 & var_148 & vbNullString 
  loc_1A16798:   unk_430AEB.Execute CStr(var_1B0), var_3FC, var_1F0
  loc_1A167A0:   var_104 = var_118.Fields
  loc_1A167A8:   var_240 = var_3E8.Item(var_114)
  loc_1A167B0:    = var_3FC.Value
  loc_1A167BB:   Proc_6_39_E7C810(var_210)
  loc_1A167C3:   var_230 = (var_1F0 - var_210)
  loc_1A1683E:   var_E4 = "Select count(Distinct Convert(Varchar(11),Vdate,102)+RoomNo) from paycharge where Amtdr>0 and PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge') And PayCode Not In ('" & MemVar_1F92078
  loc_1A1684C:   var_450 = "Select Count(*) From RoomMast RM WHERE RM.Type='RO' And RM.InclCount='Y' And LogSite_Code='" & MemVar_1F92078 & "DISC','" & MemVar_1F92078
  loc_1A16861:   Proc_6_7_F25D88(var_C0, var_9C, CVar(var_450 & "EXTB') And vdate="), var_1B0, -1, var_108)
  loc_1A16885:   var_190 = var_110 & var_C0 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'" 
  loc_1A16893:   unk_430AEB.Execute CStr(var_190), 0, var_114
  loc_1A1689B:   var_1D0 = var_108.Fields
  loc_1A168A3:    = var_110.Item(CVar(CStr(var_210 & "\n" & "\n") & "Occupied Room.: "))
  loc_1A168AB:    = var_114.Value
  loc_1A168B6:   Proc_6_49_EF5480(var_1F0)
  loc_1A168C7:   var_240 = var_1D0 & var_1F0 & "\n" 
  loc_1A16934:   Proc_6_7_F25D88(var_C0, var_9C, "Select Count(*) From RoomOccDet Where ChkINDt=ChkOutDt And Type='O' And ChkInDt=", var_190, -1, var_108)
  loc_1A16966:   unk_430AEB.Execute CStr(var_110 & var_C0 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), 0, var_114
  loc_1A16976:    = var_110.Item(CVar(CStr(var_240) & "Day Use.: "))
  loc_1A1697E:    = var_114.Value
  loc_1A16989:   Proc_6_49_EF5480(var_1D0)
  loc_1A16991:   var_210 = var_108.Fields & var_1D0 
  loc_1A169CE:   var_250 = CVar(CStr(var_210 & "\n") & "Complementary.: ") 'String
  loc_1A169ED:   var_D0 = "SELECT Count(Distinct Convert(Varchar(11),Vdate,102)+Case When RelatedFolionoDocid='' Then FolionoDocId Else RelatedFolionoDocid End) RoomOcc FROM PayCharge Where AmtDr<=1 And vdate="
  loc_1A169FD:   Proc_6_7_F25D88(var_C0, var_9C, "Select Count(*) From RoomOccDet Where ChkINDt=ChkOutDt And Type='O' And ChkInDt=", var_210, -1, var_108)
  loc_1A16A34:   var_1B0 = var_110 & var_C0 & " And PayCode Not In ('" & CVar(MemVar_1F92078) & "DISC','" & CVar(MemVar_1F92078) & "EXTB') And RestCode='" 
  loc_1A16A42:   var_1E0 = "FOM' And PayCode In (Select Code FROM RevMast Where FlagAMR='Detail' AND FlagType='FOM' AND FieldType='C' And Nature='Room Charge')"
  loc_1A16A47:   var_1F0 = var_1B0 & CVar(MemVar_1F92078) & var_1E0 
  loc_1A16A55:   unk_430AEB.Execute CStr(var_1F0), 0, var_114
  loc_1A16A65:    = var_110.Item(var_250)
  loc_1A16A6D:    = var_114.Value
  loc_1A16A78:   Proc_6_49_EF5480(var_240)
  loc_1A16AD8:   var_168 = Proc_6_14_EF349C(CStr(var_108.Fields & var_240 & "\n") & "Last Synced On ") & " "
  loc_1A16AEB:   var_168 = var_168 & var_90
  loc_1A16AF5:   var_168 = var_168 & var_A0
  loc_1A16AFB: Else
  loc_1A16B03:   If (var_170 = "POSSaleCollection") Then
  loc_1A16B1A:     var_E4 = "SELECT Depart.Name as DepartName,Max(Depart.ShortName) ShortName, Max(S.VNo) LastBillNo, Sum(S.NetAmt) As SaleAmt, Sum(S.DiscAmt) As DiscAmt, IsNull(Sum(P.AmtCr),0) SettleAmt FROM Sale1 AS S Left Join Depart On S.RestCode=Depart.Code Left Join (Select DocId,Sum(AmtCr) AmtCr From PayCharge Where LogSite_Code='" & MemVar_1F92078
  loc_1A16B2F:     Proc_6_7_F25D88(var_C0, var_9C, CVar(var_E4 & "' AND VDate="))
  loc_1A16B53:     var_190 = var_240 & var_C0 & " And IsNull(PAYCODE,'') NOT IN ('" & CVar(MemVar_1F92078) & "TOUT') Group By DocId) P On S.DocId=P.DocId Where S.DelFlag='N' and S.LogSite_Code='" 
  loc_1A16B75:     Proc_6_7_F25D88(var_1F0, var_9C, var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A16B7D:     var_210 = -1 & var_1F0 
  loc_1A16B94:     unk_430AEB.Execute CStr(var_210 & " Group by Depart.Name Order by Depart.Name"), var_108, 
  loc_1A16B9F:     Set var_164 = var_108
  loc_1A16BDB:     If (var_164.RecordCount >= 0) Then
  loc_1A16C18:       If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A16C23:         var_D0 = "Upto:   "
  loc_1A16C4E:         var_148 = (1 + Format(CVar(Proc_6_14_EF349C()), "dd/MMM/yy hh:nn"))
  loc_1A16C62:         var_190 = (var_240 & CVar(Proc_6_14_EF349C()) & " And IsNull(PAYCODE,'') NOT IN ('" + Chr(&HD))
  loc_1A16C76:         var_1D0 = (var_190 + Chr(&HA))
  loc_1A16C7B:         var_168 = CStr(var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A16C97:       Else
  loc_1A16C97:         var_F4 = "Of Date:     "
  loc_1A16CC4:         var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A16CD8:         var_158 = (Format(CVar(Proc_6_14_EF349C()), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A16CEC:         var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A16CF1:         var_168 = CStr(Chr(&HA))
  loc_1A16D05:         ' Referenced from:     1A17050
  loc_1A16D05:       End If
  loc_1A16D14:       If Not(var_164.EOF) Then
  loc_1A16D4B:         var_F4 = ":-"
  loc_1A16D60:         var_148 = (var_F4 + Chr(&HD))
  loc_1A16D74:         var_190 = (Chr(&HD) + Chr(&HA))
  loc_1A16DF4:         var_158 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_164.Fields.Item("LastBillNo")), "0")), &HA, CVar(CStr(CVar(var_168) & var_164.Fields.Item("DEPARTNAME").Value & Chr(&HA)) & "Cur Bill:   "), 1, 1)) 'String
  loc_1A16E07:         var_190 = (var_158 + Chr(&HD))
  loc_1A16E1B:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A16EA0:         var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Net Sale:   "), 1)) 'String
  loc_1A16EB3:         var_190 = (var_158 + Chr(&HD))
  loc_1A16EC7:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A16F4C:         var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_164.Fields.Item("DiscAmt")), "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Discount:   "), 1)) 'String
  loc_1A16F5F:         var_190 = (var_158 + Chr(&HD))
  loc_1A16F73:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A16FAB:         var_108 = var_164.Fields
  loc_1A16FD0:         var_C0 = CVar(var_108.Item("SettleAmt")) 'Address
  loc_1A16FF8:         var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_C0, "0.00")), &HA, CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   "), 1)) 'String
  loc_1A1700B:         var_190 = (var_158 + Chr(&HD))
  loc_1A1701F:         var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A17028:         var_168 = CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A1704B:         var_164.MoveNext
  loc_1A17050:         GoTo loc_1A16D05
  loc_1A17053:       End If
  loc_1A17053:     End If
  loc_1A17056:   Else
  loc_1A1705E:     If (var_170 = "FOMPOSSaleCollection") Then
  loc_1A17075:       var_E4 = "SELECT  max(Revmast.name) as RevenueName, sum(PayCharge.AmtDr-PayCharge.AmtCr) as SaleAmt " & " FROM (PayCharge LEFT JOIN RevMast ON PayCharge.PayCode = RevMast.Code) LEFT JOIN (RoomOcc LEFT JOIN GuestProf ON RoomOcc.GuestProf = GuestProf.Code) ON PayCharge.FolioNoDocid = RoomOcc.Docid "
  loc_1A1707C:       var_3C4 = Proc_6_14_EF349C() & " where paycharge.AmtDr-paycharge.AMTCR<>0  and paycharge.FOliono<>0 and paycharge.RoomType='RO' and roomocc.type='O' and SettleDate is not NULL and (((Bill_No is Not Null and Bill_No<>'') OR PAYCODE='"
  loc_1A17083:       var_450 = CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=" & " Group by Depart.Name Order by Depart.Name") & MemVar_1F92078
  loc_1A17098:       Proc_6_7_F25D88(var_C0, var_9C, CVar(var_450 & "ROFF') and SettleDate ="), Chr(&HA), -1)
  loc_1A170A4:       var_D0 = ")"
  loc_1A170AD:       var_F4 = " Group by Paycharge.PayCode Order By Max(RevMast.FieldType)"
  loc_1A170C0:       unk_430AEB.Execute CStr(var_108 & var_C0 & var_D0 & var_F4), var_F4, 1
  loc_1A170CB:       Set var_164 = var_108
  loc_1A170FF:       If (var_164.RecordCount >= 0) Then
  loc_1A1713C:         If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A17147:           var_D0 = "Upto:     "
  loc_1A17172:           var_148 = (1 + Format(CVar(Proc_6_14_EF349C(var_D0)), "dd/MMM/yy hh:nn"))
  loc_1A17186:           var_190 = (var_160.Fields & CVar(Proc_6_14_EF349C(var_D0)) & var_D0 + Chr(&HD))
  loc_1A1719A:           var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A1719F:           var_168 = CStr(Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A171BB:         Else
  loc_1A171BB:           var_F4 = "Of Date:       "
  loc_1A171E8:           var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A171FC:           var_158 = (Format(CVar(Proc_6_14_EF349C("dd/MMM/yy")), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A17210:           var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A17215:           var_168 = CStr(Chr(&HA))
  loc_1A17229:         End If
  loc_1A17244:         var_E0 = ("**CHARGES SUMMARY**" + Chr(&HD))
  loc_1A17258:         var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A17261:         var_168 = CStr(CVar(var_168) & Chr(&HD))
  loc_1A17271:         ' Referenced from:     1A17372
  loc_1A17280:         If Not(var_164.EOF) Then
  loc_1A172A9:           var_F4 = "0.00"
  loc_1A172D5:           var_108 = var_164.Fields
  loc_1A172E5:           var_C0 = CVar(var_108.Item("RevenueName")) 'Address
  loc_1A1730E:           var_190 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), var_F4)), &HA, CVar(1 & Proc_6_38_E68A98(var_C0, var_168, 1, 1) & ":     "))) 'String
  loc_1A17321:           var_1B0 = (var_190 + Chr(&HD))
  loc_1A17335:           var_1F0 = (Chr(&HA) + Chr(&HA))
  loc_1A1733E:           var_168 = CStr(var_F4 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   "))
  loc_1A1736D:           var_164.MoveNext
  loc_1A17372:           GoTo loc_1A17271
  loc_1A17375:         End If
  loc_1A17375:       End If
  loc_1A17389:       var_E4 = "SELECT MAX(PC.VDATE) AS VDATE,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,Sum(TipAmt) As TipAmt1,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(PC.U_NAME) AS UNAME,MAX(PC.Comments) AS COMMENT,'PAYMENT RECD.' AS DEPARTNAME,1 AS AA FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) " & "Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') and (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='"
  loc_1A17397:       var_E0 = CVar(Proc_6_38_E68A98(var_C0, var_168, 1, 1) & MemVar_1F92070 & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=") 'String
  loc_1A173A5:       Proc_6_7_F25D88(var_C0, var_9C, var_E0, var_320)
  loc_1A173AD:       var_104 = -1 & var_C0 
  loc_1A173B1:       var_D0 = " And PC.PAYTYPE IN ('Cash','Cheque','Complementary','Company','Member','Credit Card','Cash Card','Hold','Other','Room','Staff') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))>0 "
  loc_1A173BA:       var_F4 = "Union SELECT MAX(PC.VDATE) AS VDATE,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,Sum(TipAmt) As TipAmt1,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(PC.U_NAME) AS UNAME,MAX(PC.Comments) AS COMMENT,'PAYMENT MADE' AS DEPARTNAME,2 AS AA FROM (PayCharge PC Left Join RevMast PY On PC.PayCode=PY.Code) "
  loc_1A173C3:       var_128 = "Where ((PC.VTYPE In ('ARRES','ADRES','AWRES') AND PC.DbtChkIn<>'Yes') or (PC.VType Not In ('ARRES','ADRES','AWRES') and (PC.CONTRADOCID IS NULL OR PC.CONTRADOCID =''))) and PC.RESTCODE='"
  loc_1A173DB:       var_1D0 = var_F4 & "SaleAmt" & var_F4 & var_128 & CVar(MemVar_1F92070) & "FOM' AND PY.FieldType In ('P') And PC.VTYPE Not IN ('CHK') And PC.VDate=" 
  loc_1A173EA:       Proc_6_7_F25D88(CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   "), var_9C, var_1D0)
  loc_1A173F6:       var_1C0 = " And PC.PAYTYPE IN ('Cash','Cheque','Complementary','Company','Member','Credit Card','Cash Card','Hold','Other','Room','Staff') Group by PC.PayType Having (sum(PC.AmtCr)-sum(PC.AmtDr))<0 "
  loc_1A173FB:       var_230 = var_108 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   ") & " Group by Depart.Name Order by Depart.Name" 
  loc_1A173FF:       var_1E0 = "Union SELECT Max(E.VDATE) AS VDATE,-Max(E.Amount) as NetSale,0 As TipAmt1,'' AS PAYCODE,'Cash' as PType, Max(E.U_NAME) AS UNAME,Max(E.Remarks) AS COMMENT,'MISC.PAYMENT' AS DEPARTNAME,3 AS AA FROM ExpSheet E WHERE E.VDate="
  loc_1A17404:       var_240 = var_230 & var_1E0 
  loc_1A17413:       Proc_6_7_F25D88(var_250, var_9C, var_240)
  loc_1A1741B:       var_260 = 1 & var_250 
  loc_1A17424:       var_280 = var_260 & " And E.VTYPE='HTEXP' And E.Amount >0 " 
  loc_1A17428:       var_270 = "Union SELECT Max(E.VDATE) AS VDATE, Max(E.Amount) as NetSale,0 As TipAmt1,'' AS PAYCODE,'Cash' as PType, Max(E.U_NAME) AS UNAME,Max(E.Remarks) AS COMMENT,'MISC.RECEIPT' AS DEPARTNAME,4 AS AA FROM ExpSheet E WHERE E.VDate="
  loc_1A1742D:       var_2A0 = var_280 & var_270 
  loc_1A1743C:       Proc_6_7_F25D88(var_2C0, var_9C)
  loc_1A1745B:       unk_430AEB.Execute CStr(var_2A0 & var_2C0 & " And E.VTYPE='HTSAL' And E.Amount >0 Order BY AA,PType"), "SaleAmt", 
  loc_1A17466:       Set var_164 = var_108
  loc_1A174B4:       If (var_164.RecordCount >= 0) Then
  loc_1A174CD:         var_E0 = (CVar(var_168) + Chr(&HD))
  loc_1A174E1:         var_148 = (var_E0 + Chr(&HA))
  loc_1A1750F:         var_E0 = ("**COLLECTION SUMMARY**" + Chr(&HD))
  loc_1A17523:         var_148 = (var_E0 + Chr(&HA))
  loc_1A1752C:         var_168 = CStr(CVar(CStr(var_F4 & "SaleAmt")) & var_F4 & "SaleAmt")
  loc_1A1753C:         ' Referenced from:     1A17776
  loc_1A1754B:         If Not(var_164.EOF) Then
  loc_1A1756D:           var_C0 = CVar(var_164.Fields.Item("NetSale")) 'Address
  loc_1A17574:           Proc_6_39_E7C810(var_E0)
  loc_1A1758E:           If CBool(var_E0 <> 0) Then
  loc_1A175CE:             If CBool(CVar(var_16A) <> var_164.Fields.Item("AA").Value) Then
  loc_1A175F3:               var_C0 = CVar(var_164.Fields.Item("DEPARTNAME")) 'Address
  loc_1A17603:               var_D0 = ":- "
  loc_1A17618:               var_104 = (CVar(var_16A) + Chr(&HD))
  loc_1A1762C:               var_158 = (Chr(&HA) + Chr(&HA))
  loc_1A17635:               var_168 = CStr(CVar(var_C0 & Proc_6_38_E68A98(var_C0, var_168)) & CVar(CStr(var_F4 & "SaleAmt")) & var_F4 & "SaleAmt")
  loc_1A1767A:               var_16A = CInt(var_164.Fields.Item("AA").Value)
  loc_1A17687:             End If
  loc_1A17696:             var_114 = var_164.Fields
  loc_1A176D9:             var_108 = var_164.Fields
  loc_1A176E9:             var_C0 = CVar(var_108.Item("pType")) 'Address
  loc_1A17725:             var_1B0 = (CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_114.Item("NetSale")), "0.00")), &HA)) + Chr(&HD))
  loc_1A17739:             var_1F0 = (CVar(var_C0 & Proc_6_38_E68A98(var_C0, var_168)) & CVar(CStr("0.00" & "SaleAmt")) & "0.00" & "SaleAmt" + Chr(&HA))
  loc_1A1773D:             var_230 = CVar(1 & Proc_6_38_E68A98(var_C0, var_168, 1) & ":     ") & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   ") 
  loc_1A17742:             var_168 = CStr(var_230)
  loc_1A1776E:           End If
  loc_1A17771:           var_164.MoveNext
  loc_1A17776:           GoTo loc_1A1753C
  loc_1A17779:         End If
  loc_1A17779:       End If
  loc_1A1778D:       var_E4 = "SELECT Depart.Name as DepartName,Max(Depart.ShortName) ShortName, Max(S.VNo) LastBillNo, Sum(S.NetAmt) As SaleAmt, Sum(S.DiscAmt) As DiscAmt, IsNull(Sum(P.AmtCr),0) SettleAmt FROM Sale1 AS S Left Join Depart On S.RestCode=Depart.Code Left Join (Select DocId,Sum(AmtCr) AmtCr From PayCharge Where LogSite_Code='" & MemVar_1F92078
  loc_1A177A2:       Proc_6_7_F25D88(var_C0, var_9C, CVar(var_E4 & "' AND VDate="), var_240)
  loc_1A177AA:       var_104 = -1 & var_C0 
  loc_1A177C6:       var_190 = "0.00" & " And IsNull(PAYCODE,'') NOT IN ('" & CVar(MemVar_1F92078) & "TOUT') Group By DocId) P On S.DocId=P.DocId Where S.DelFlag='N' and S.LogSite_Code='" 
  loc_1A177E8:       Proc_6_7_F25D88(CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   "), var_9C, var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A177F9:       var_230 = var_108 & CVar(CStr(1 & Chr(&HA) & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :   ") & " Group by Depart.Name Order by Depart.Name" 
  loc_1A17807:       unk_430AEB.Execute CStr(var_230), var_16A, 
  loc_1A17812:       Set var_164 = var_108
  loc_1A1784E:       If (var_164.RecordCount >= 0) Then
  loc_1A17867:         var_E0 = (CVar(var_168) + Chr(&HD))
  loc_1A1787B:         var_148 = (CVar(var_E4 & "' AND VDate=") + Chr(&HA))
  loc_1A178A9:         var_E0 = ("**POS SUMMARY**" + Chr(&HD))
  loc_1A178BD:         var_148 = (CVar(var_E4 & "' AND VDate=") + Chr(&HA))
  loc_1A178C6:         var_168 = CStr(CVar(CStr("0.00" & " And IsNull(PAYCODE,'') NOT IN ('")) & "0.00" & " And IsNull(PAYCODE,'') NOT IN ('")
  loc_1A178D6:         ' Referenced from:     1A17C21
  loc_1A178E5:         If Not(var_164.EOF) Then
  loc_1A1791C:           var_F4 = ":-"
  loc_1A17931:           var_148 = (CVar(MemVar_1F92078) + Chr(&HD))
  loc_1A17945:           var_190 = ("0.00" & " And IsNull(PAYCODE,'') NOT IN ('" + Chr(&HA))
  loc_1A179C5:           var_158 = CVar(Proc_6_45_EAD428(CStr(Format(CVar(var_164.Fields.Item("LastBillNo")), "0")), &HA, CVar(CStr(CVar(CStr(CVar(var_168) & var_164.Fields.Item("DEPARTNAME").Value & var_190)) & var_164.Fields.Item("DEPARTNAME").Value & var_190) & "Cur Bill:     "))) 'String
  loc_1A179D8:           var_190 = (var_158 + Chr(&HD))
  loc_1A179EC:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A17A71:           var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_164.Fields.Item("SaleAmt")), "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Net Sale:     "))) 'String
  loc_1A17A84:           var_190 = (var_158 + Chr(&HD))
  loc_1A17A98:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A17B1D:           var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(CVar(var_164.Fields.Item("DiscAmt")), "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Discount:     "), 1)) 'String
  loc_1A17B30:           var_190 = (var_158 + Chr(&HD))
  loc_1A17B44:           var_1D0 = (var_190 + Chr(&HA))
  loc_1A17B7C:           var_108 = var_164.Fields
  loc_1A17B84:           var_110 = var_108.Item("SettleAmt")
  loc_1A17BA1:           var_C0 = CVar(var_110) 'Address
  loc_1A17BC9:           var_158 = CVar(Proc_6_52_EAD4F4(CStr(Format(var_C0, "0.00")), &HA, CVar(CStr(1 & var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=") & "Collect :     "), 1)) 'String
  loc_1A17BDC:           var_190 = (var_158 + Chr(&HD))
  loc_1A17BE8:           var_1B0 = Chr(&HA)
  loc_1A17BF0:           var_1D0 = (var_190 + var_1B0)
  loc_1A17BF9:           var_168 = CStr(1 & var_190 & CVar(MemVar_1F92078) & "' AND S.VDate=")
  loc_1A17C1C:           var_164.MoveNext
  loc_1A17C21:           GoTo loc_1A178D6
  loc_1A17C24:         End If
  loc_1A17C24:       End If
  loc_1A17C27:     Else
  loc_1A17C2F:       If (var_170 = "POS&BANQ Sale&Collection") Then
  loc_1A17C46:         var_E4 = "SELECT ROW_NUMBER() OVER (ORDER BY D.NAME) As Seq_No,Substring(D.Name,1,25)+':       '+Cast(Round(ISNULL(SUM(S.Total)-SUM(S.DiscAmt),0),2) AS VarChar) PAY1 FROM  Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A17C5B:         Proc_6_7_F25D88(var_C0, var_9C, CVar(var_E4 & "' And S.DELFLAG<>'D' And S.VDate="), var_158)
  loc_1A17C63:         var_104 = -1 & var_C0 
  loc_1A17C7A:         unk_430AEB.Execute CStr(Format(var_C0, "0.00") & " And D.RestType In ('Outlet') Group By D.Name"), var_108, 1
  loc_1A17C85:         Set var_164 = var_108
  loc_1A17CBA:         var_104 = CVar(var_168 & var_8C & "\n" & "DSR:       (POS/BANQ) ") 'String
  loc_1A17CCC:         var_C0 = "dd/MMM/yyyy"
  loc_1A17CEE:         var_158 = 1 & Format(var_9C, var_C0) & "\n" 
  loc_1A17D0A:         var_1D0 = CVar(CStr(var_158) & "Room Service.:       ") 'String
  loc_1A17D30:         var_E4 = "SELECT ISNULL(SUM(S.Total)-SUM(S.DiscAmt),0) AS PAY1 FROM Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A17D45:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_158) & var_8C & "' And S.DELFLAG<>'D' And S.VDate="), var_158, -1, var_108, var_110)
  loc_1A17D64:         unk_430AEB.Execute CStr(0 & var_C0 & " And D.RestType In ('Room Service')"), var_114, var_190
  loc_1A17D6C:         var_1D0 = var_108.Fields
  loc_1A17D74:         var_104 = var_110.Item(1)
  loc_1A17D7C:         1 = var_114.Value
  loc_1A17D87:         Proc_6_50_EF5590(var_1B0)
  loc_1A17DD8:         If (var_164.EOF = 0) Then
  loc_1A17E1D:           var_168 = CStr(CVar(CStr(var_190 & var_1B0 & "\n") & "Outlet1.") & var_164.Fields.Item("PAY1").Value & "\n")
  loc_1A17E35:           var_164.MoveNext
  loc_1A17E3D:         Else
  loc_1A17E52:           var_168 = var_168 & "Outlet1.:         " & "NA" & "\n"
  loc_1A17E5C:         End If
  loc_1A17E6D:         If (var_164.EOF = 0) Then
  loc_1A17E8C:           var_108 = var_164.Fields
  loc_1A17E94:           var_110 = var_108.Item("PAY1")
  loc_1A17E9C:           var_C0 = var_110.Value
  loc_1A17EB2:           var_168 = CStr(CVar(var_168 & "Outlet2.") & var_C0 & "\n")
  loc_1A17ECA:           var_164.MoveNext
  loc_1A17ED2:         Else
  loc_1A17EE7:           var_168 = var_168 & "Outlet2.:         " & "NA" & "\n"
  loc_1A17EF1:         End If
  loc_1A17F1E:         var_E4 = "SELECT ISNULL(SUM(Amount)-SUM(Discount),0) PAY1 From (Select S.DocId,Case When S.SunCode='" & MemVar_1F92078
  loc_1A17F33:         var_454 = var_168 & "Outlet2.:         " & "TOT' Then Amt Else 0 End As Amount,Case When S.SunCode='" & MemVar_1F92078 & "DIS' Then Amt Else 0 End As Discount from SunTransaction S Where S.SunCode In ('"
  loc_1A17F5D:         Proc_6_7_F25D88(var_C0, var_9C, CVar(var_454 & MemVar_1F92078 & "TOT','" & MemVar_1F92078 & "DIS') And S.VDate="), var_158, -1, var_108)
  loc_1A17F7C:         unk_430AEB.Execute CStr(var_110 & var_C0 & ")Q"), 0, var_114
  loc_1A17F8C:          = var_110.Item(CVar(var_168 & "Banquet.:       "))
  loc_1A17F94:          = var_114.Value
  loc_1A17F9F:         Proc_6_50_EF5590(var_1B0)
  loc_1A18018:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A1802D:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_108.Fields & var_1B0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A18048:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A1804C:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A18086:         Proc_6_7_F25D88(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F92078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A180A5:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Cash')"), var_280, CVar(CStr(var_108.Fields & var_158 & 0 & CVar(MemVar_1F92078) & "\n") & "Cash.:       ")
  loc_1A180AD:          = var_108.Fields
  loc_1A180B5:          = var_110.Item()
  loc_1A180BD:          = var_114.Value
  loc_1A180C8:         Proc_6_50_EF5590(var_2A0)
  loc_1A18147:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A1815C:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A18177:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A1817B:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A181B5:         Proc_6_7_F25D88(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F92078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A181D4:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Cheque','Credit Card','Cash Card')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "Card.:       ")
  loc_1A181DC:          = var_108.Fields
  loc_1A181E4:          = var_110.Item()
  loc_1A181EC:          = var_114.Value
  loc_1A181F7:         Proc_6_50_EF5590(var_2A0)
  loc_1A18276:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A1828B:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A182A6:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A182AA:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A182E4:         Proc_6_7_F25D88(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F92078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A18303:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Company','Member')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "BTC.:       ")
  loc_1A1830B:          = var_108.Fields
  loc_1A18313:          = var_110.Item()
  loc_1A1831B:          = var_114.Value
  loc_1A18326:         Proc_6_50_EF5590(var_2A0)
  loc_1A183A5:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A183BA:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A183D5:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A183D9:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A18413:         Proc_6_7_F25D88(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F92078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A18432:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('UPI')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "UPI.:       ")
  loc_1A1843A:          = var_108.Fields
  loc_1A18442:          = var_110.Item()
  loc_1A1844A:          = var_114.Value
  loc_1A18455:         Proc_6_50_EF5590(var_2A0)
  loc_1A184D4:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A184E9:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_280 & var_2A0 & "\n") & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A18504:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A18508:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A18542:         Proc_6_7_F25D88(var_230, var_9C, var_158 & 0 & CVar(MemVar_1F92078) & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A18561:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Other')"), var_280, CVar(CStr(var_280 & var_2A0 & "\n") & "Other.:       ")
  loc_1A18569:          = var_108.Fields
  loc_1A18571:          = var_110.Item()
  loc_1A18579:          = var_114.Value
  loc_1A18584:         Proc_6_50_EF5590(var_2A0)
  loc_1A185F8:         var_E4 = "SELECT ISNULL(SUM(PAY1),0) PAY1 FROM (SELECT PC.PAYTYPE,SUM(PC.AmtCr)-SUM(PC.AmtDr) PAY1 FROM (Sale1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A1860D:         Proc_6_7_F25D88(var_C0, var_9C, CVar(CStr(var_280 & var_2A0) & "Outlet2.:         " & "' AND PC.VDate="), var_260, -1, var_108)
  loc_1A18628:         var_158 = var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet') And IsNull(PC.PAYCODE,'')<>'" & CVar(MemVar_1F92078) 
  loc_1A1862C:         var_128 = "TOUT' GROUP BY PC.PAYTYPE UNION ALL SELECT PH.PAYTYPE,SUM(PH.AmtCr)-SUM(PH.AmtDr) PAY1 FROM (PayChargeH PH LEFT JOIN HallBook HB ON PH.ContraDocID=HB.DocId) WHERE PH.LogSite_Code='"
  loc_1A1863B:         var_1B0 = var_158 & 0 & CVar(MemVar_1F92078) 
  loc_1A18666:         Proc_6_7_F25D88(var_230, var_9C, var_1B0 & "' AND PH.RestCode IN ('" & CVar(MemVar_1F92078) & "BANQ') AND PH.VDate=", 0)
  loc_1A18685:         unk_430AEB.Execute CStr(var_114 & var_230 & " GROUP BY PH.PAYTYPE)Q Where Q.PayType IN ('Complementary')"), var_280, CVar(CStr(var_280 & var_2A0) & " Compl.:       ")
  loc_1A1868D:          = var_108.Fields
  loc_1A18695:          = var_110.Item()
  loc_1A1869D:          = var_114.Value
  loc_1A186A8:         Proc_6_50_EF5590(var_2A0)
  loc_1A18727:         var_E4 = "SELECT Count(Distinct S.DocId) FROM  Sale1 S Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_1A1873C:         Proc_6_7_F25D88(var_C0, var_9C, CVar(var_E4 & "' And S.DELFLAG='D' And S.VDate="), var_158, -1, var_108)
  loc_1A1875B:         unk_430AEB.Execute CStr(var_110 & var_C0 & " And D.RestType In ('Room Service','Outlet')"), 0, var_114
  loc_1A1876B:          = var_110.Item(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A18773:          = var_114.Value
  loc_1A1877E:         Proc_6_49_EF5480(var_1B0)
  loc_1A1878F:         var_210 = var_108.Fields & var_1B0 & "\n" 
  loc_1A187D8:         var_168 = Proc_6_14_EF349C(CStr(var_210) & "Last Synced On ") & " "
  loc_1A187EB:         var_168 = var_168 & var_90
  loc_1A187F5:         var_168 = var_168 & var_A0
  loc_1A187FB:       Else
  loc_1A18803:         If (var_170 = "TotalCollection") Then
  loc_1A18840:           If (var_9C = CDate(var_160.Fields.Item("Ncur").Value)) Then
  loc_1A1884B:             var_D0 = "Upto:         "
  loc_1A18876:             var_148 = (1 + Format(CVar(Proc_6_14_EF349C()), "dd/MMM/yy hh:nn"))
  loc_1A1888A:             var_190 = (var_160.Fields.Item("Ncur") & CVar(Proc_6_14_EF349C()) & " And D.RestType In ('Room Service','Outlet')" + Chr(&HD))
  loc_1A1889E:             var_1D0 = (var_160.Fields.Fields + Chr(&HA))
  loc_1A188A3:             var_168 = CStr(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A188BF:           Else
  loc_1A188BF:             var_F4 = "Of Date:           "
  loc_1A188EC:             var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A18900:             var_158 = (Format(CVar(Proc_6_14_EF349C()), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A18914:             var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A18919:             var_168 = CStr(Chr(&HA))
  loc_1A1892D:           End If
  loc_1A18948:           var_E0 = ("**TOTAL COLLECTION**" + Chr(&HD))
  loc_1A1895C:           var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A18984:           var_168 = var_F4 & Proc_233_13_188F7FC(var_9C, CStr(CVar(var_168) & Chr(&HD)), 1)
  loc_1A1898D:         Else
  loc_1A18995:           If (var_170 = "BANQSaleCollection") Then
  loc_1A189AA:             var_108 = var_160.Fields
  loc_1A189B2:             var_110 = var_108.Item("Ncur")
  loc_1A189D2:             If (var_9C = CDate(var_110.Value)) Then
  loc_1A189DD:               var_D0 = "Upto:           "
  loc_1A18A08:               var_148 = (1 + Format(CVar(Proc_6_14_EF349C(1)), "dd/MMM/yy hh:nn"))
  loc_1A18A1C:               var_190 = (Chr(&HD) + Chr(&HD))
  loc_1A18A30:               var_1D0 = (Chr(&HA) + Chr(&HA))
  loc_1A18A35:               var_168 = CStr(CVar(CStr(var_280 & var_2A0 & "\n") & "Cancel.:       "))
  loc_1A18A51:             Else
  loc_1A18A51:               var_F4 = "Of Date:             "
  loc_1A18A7E:               var_104 = (1 + Format(var_9C, "dd/MMM/yy"))
  loc_1A18A92:               var_158 = (Format(CVar(Proc_6_14_EF349C(1)), "dd/MMM/yy hh:nn") + Chr(&HD))
  loc_1A18AA6:               var_1B0 = (Chr(&HD) + Chr(&HA))
  loc_1A18AAB:               var_168 = CStr(Chr(&HA))
  loc_1A18ABF:             End If
  loc_1A18AD2:             var_C0 = Chr(&HD)
  loc_1A18ADA:             var_E0 = ("**BANQUET SUMMARY**" + var_C0)
  loc_1A18AEE:             var_148 = (Format(var_9C, "dd/MMM/yy") + Chr(&HA))
  loc_1A18B16:             var_168 = 1 & Proc_233_14_1563908(var_9C, CStr(CVar(var_168) & Chr(&HD)), 1, var_F4)
  loc_1A18B1C:           End If
  loc_1A18B1C:         End If
  loc_1A18B1C:       End If
  loc_1A18B1C:     End If
  loc_1A18B1C:   End If
  loc_1A18B1C: End If
  loc_1A18B26: If (Len(var_168) <> 0) Then
  loc_1A18B2C:   Me(28) = "SCHDL"
  loc_1A18B34:   Me(36) = MemVar_1F9212C
  loc_1A18B55:   var_D0 = "Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS With (NoLock) Where VType="
  loc_1A18B67:   Proc_6_17_EAA2B0(var_C0, Me(28), CVar(var_168), var_210, -1, var_108)
  loc_1A18BA0:   var_1B0 = var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" 
  loc_1A18BC1:   unk_430C03.Execute CStr(var_1B0 & CVar(MemVar_1F92078) & "'"), 0, var_114
  loc_1A18BD1:   var_D0 = var_110.Item(var_D0)
  loc_1A18BD9:    = var_114.Value
  loc_1A18BE3:   Me(32) = CLng(var_108.Fields)
  loc_1A18C3C:   var_C0 = Space((5 - Len(Me(28))))
  loc_1A18C44:   var_104 = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & Me(28)) + var_C0)
  loc_1A18C57:   var_148 = Space((5 - Len(Me(36))))
  loc_1A18C5F:   var_158 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" + var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)))
  loc_1A18C6B:   var_190 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" + CVar(Me(36)))
  loc_1A18C83:   var_1B0 = Space((8 - Len(CStr(Me(32)))))
  loc_1A18C8B:   var_1D0 = (var_110 & var_C0 & " And SubString(Docid,10,4)='" & CVar(Me(36)) & "' And SITE_CODE='" & CVar(MemVar_1F92070) + var_1B0)
  loc_1A18C99:   var_210 = (var_1B0 & CVar(MemVar_1F92078) + CVar(CStr(Me(32))))
  loc_1A18C9E:   Me(24) = CStr(var_210)
  loc_1A18CC7:   var_450 = "SCHEDULED MSG"
  loc_1A18CE1:   var_3C4 = "Auto"
  loc_1A18D0F:   Proc_233_5_11B7494(Me(24), Me(28), Me(32), 0, Me(40), var_94, vbNullString)
  loc_1A18D1D: End If
  loc_1A18D22: Set var_160 = Nothing
  loc_1A18D2A: Set var_164 = Nothing
  loc_1A18D2D: Exit Sub
End Sub

Public Sub Proc_233_12_EF5054(arg_C) 'EF5054
  'Data Table: 430AD8
  Dim var_8C As Recordset15
  loc_EF4F83: Set var_8C = arg_C 
  loc_EF4FAB: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_EF4FD7: var_8C.Fields.Append "SMSSTR", &HC8, &H96
  loc_EF5003: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EF5013: var_8C.CursorType = 3
  loc_EF5020: var_8C.LockType = 3
  loc_EF503F: var_8C.Open var_A0, var_B0, -1
  loc_EF5046: Set var_8C = Nothing 
  loc_EF504D: Set var_88 = arg_C 
  loc_EF5051: Exit Sub
End Sub

Public Sub Proc_233_13_188F7FC(arg_C) '188F7FC
  'Data Table: 430AD8
  Dim var_144 As String
  Dim unk_430AEB As Connection15
  Dim var_180 As Variant
  Dim var_158 As Variant
  Dim var_170 As Recordset15
  Dim var_16C As Fields15
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_94 As Recordset15
  Dim var_220 As Recordset15
  Dim var_168 As Variant
  Dim var_C0 As Recordset15
  Dim var_230 As Recordset15
  Dim var_214 As Variant
  Dim var_240 As Variant
  Dim var_10C As Recordset15
  Dim var_254 As Recordset15
  Dim var_264 As Variant
  Dim var_270 As Recordset15
  Dim var_90 As Recordset15
  Dim var_274 As Recordset15
  Dim var_278 As Recordset15
  Dim var_290 As String
  Dim var_2A8 As Variant
  Dim var_2B0 As Recordset15
  Dim var_138 As Recordset15
  Dim var_250 As Variant
  Dim var_304 As Recordset15
  Dim var_308 As Recordset15
  Dim var_30C As Recordset15
  Dim var_310 As Recordset15
  Dim var_314 As Recordset15
  Dim var_318 As Recordset15
  Dim var_31C As Recordset15
  Dim var_320 As Recordset15
  Dim var_324 As Recordset15
  Dim var_328 As Recordset15
  Dim var_32C As Recordset15
  Dim var_330 As Recordset15
  Dim var_334 As Recordset15
  Dim var_338 As Recordset15
  Dim var_33C As Recordset15
  Dim var_340 As Recordset15
  Dim var_344 As Recordset15
  Dim var_348 As Recordset15
  Dim var_34C As Recordset15
  Dim var_8C As Recordset15
  loc_188D18C: On Error Goto loc_188F7DE
  loc_188D1B3: unk_430AEB.Execute "Select * from Enviro where logsite_code='" & MemVar_1F92078 & "'", var_168, -1
  loc_188D1BE: Set var_138 = var_16C
  loc_188D1D2: Set var_8C = New 
  loc_188D1DD: Set var_8C = Proc_233_12_EF5054(var_8C)
  loc_188D1E3: Set var_170 = var_8C 
  loc_188D1F2: Me.Recordset15.AddNew var_158, var_180
  loc_188D1F7: var_180 = "CASH:-"
  loc_188D200: var_158 = "SMSSTR"
  loc_188D20C: var_16C = var_170.Fields
  loc_188D21C: var_16C.Item(var_158).Value = var_180
  loc_188D233: var_170.Update var_158, var_180
  loc_188D23A: Set var_170 = Nothing 
  loc_188D24B: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) As Amount FROM (PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188D253: var_158 = arg_C
  loc_188D25B: Proc_6_7_F25D88(var_168, var_158, var_180, var_214)
  loc_188D263: var_194 = -1 & var_168 
  loc_188D27F: var_1F4 = var_194 & " AND P.RESTCODE='" & CVar(MemVar_1F92078) & "FOM' and PY.FieldType='P'  and P.PayType='Cash'  and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188D28D: unk_430AEB.Execute CStr(var_1F4), var_16C, var_16C
  loc_188D298: Set var_94 = var_16C
  loc_188D2C4: If (var_94.RecordCount > 0) Then
  loc_188D2C7:   ' Referenced from: 188D402
  loc_188D2D6:   If Not(var_94.EOF) Then
  loc_188D2DC:     Set var_220 = var_8C 
  loc_188D2EB:     var_220.AddNew var_158, var_180
  loc_188D315:     var_220.Fields.Item("mLine").Value = vbNullString
  loc_188D340:     var_168 = CVar(var_94.Fields.Item("Amount")) 'Address
  loc_188D347:     Proc_6_39_E7C810(var_194)
  loc_188D34C:     var_1A4 = "FOM: "
  loc_188D374:     var_1F4 = (1 + Format(var_194, "0.00"))
  loc_188D398:     var_220.Fields.Item("SMSSTR").Value = var_1F4
  loc_188D3B3:     var_180 = "*"
  loc_188D3BC:     var_158 = "Mark"
  loc_188D3C8:     var_16C = var_220.Fields
  loc_188D3D8:     var_16C.Item(var_158).Value = var_180
  loc_188D3EF:     var_220.Update var_158, var_180
  loc_188D3F6:     Set var_220 = Nothing 
  loc_188D3FD:     var_94.MoveNext
  loc_188D402:     GoTo loc_188D2C7
  loc_188D405:   End If
  loc_188D405: End If
  loc_188D42D: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ','" & MemVar_1F92078 & "ODC') AND P.VDate =") 'String
  loc_188D433: var_158 = arg_C
  loc_188D43B: Proc_6_7_F25D88(var_168, var_158, var_194, CDbl(0))
  loc_188D471: var_144 = "SELECT P.VTYPE,P.PayType, Sum(P.AmtCr) AS Amount FROM PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId " & CStr(CDbl(0) & var_168)
  loc_188D481: unk_430AEB.Execute var_144 & " And P.PayType='Cash' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188D48C: Set var_C0 = var_16C
  loc_188D4B0: If (var_C0.RecordCount > 0) Then
  loc_188D4B6:   var_C0.MoveFirst
  loc_188D4BB:   ' Referenced from: 188D594
  loc_188D4CA:   If Not(var_C0.EOF) Then
  loc_188D4D0:     Set var_230 = var_8C 
  loc_188D4DF:     var_230.AddNew var_158, var_180
  loc_188D4E7:     var_158 = "Amount"
  loc_188D4F3:     var_16C = var_C0.Fields
  loc_188D503:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D50A:     Proc_6_39_E7C810(var_194, var_168, var_16C)
  loc_188D50F:     var_1A4 = "BANQ: "
  loc_188D51E:     var_180 = "0.00"
  loc_188D537:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188D55B:     var_230.Fields.Item("SMSSTR").Value = var_1F4
  loc_188D581:     var_230.Update var_158, var_180
  loc_188D588:     Set var_230 = Nothing 
  loc_188D58F:     var_C0.MoveNext
  loc_188D594:     GoTo loc_188D4BB
  loc_188D597:   End If
  loc_188D597: End If
  loc_188D59A: var_9C = vbNullString
  loc_188D5B1: var_144 = "SELECT SUM(S.NetAmt) AS NetAmt,sum(PC.AmtCr)-sum(PC.AmtDr) as NetSale,MAX(PC.PAYCODE) AS PAYCODE,Max(PC.PayType) AS PType,MAX(D.NAME) AS DEPARTNAME FROM (SAle1 S LEFT Join PayCharge PC On S.DocId=PC.Docid) Left Join DEPART D On S.RESTCODE=D.Code Where S.LogSite_Code='" & MemVar_1F92078
  loc_188D5BE: var_158 = arg_C
  loc_188D5C6: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') And D.POS IN('Y') And PC.VDATE ="), var_250, -1, var_16C)
  loc_188D5D2: var_180 = " and  PC.PAYCODE NOT IN ('"
  loc_188D5DE: var_1A4 = CVar(MemVar_1F92078) 'String
  loc_188D5EA: var_214 = 1 & var_168 & var_180 & var_1A4 & "TOUT" 
  loc_188D601: unk_430AEB.Execute CStr(var_214 & "') AND PC.PAYTYPE ='Cash' Group by S.RESTCODE Order By MAX(D.NAME)"), var_1A4, 1
  loc_188D60C: Set var_10C = var_16C
  loc_188D640: If (var_10C.RecordCount > 0) Then
  loc_188D646:   var_10C.MoveFirst
  loc_188D64B:   ' Referenced from: 188D768
  loc_188D65A:   If Not(var_10C.EOF) Then
  loc_188D660:     Set var_254 = var_8C 
  loc_188D66F:     var_254.AddNew var_158, var_180
  loc_188D677:     var_1A4 = "NetSale"
  loc_188D693:     var_1F4 = CVar(var_10C.Fields.Item(var_1A4)) 'Address
  loc_188D69A:     Proc_6_39_E7C810(var_214, var_1F4)
  loc_188D6A2:     var_158 = "DEPARTNAME"
  loc_188D6AE:     var_16C = var_10C.Fields
  loc_188D6BE:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D6D5:     var_180 = ": "
  loc_188D6DA:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168, var_1A4))) + var_180)
  loc_188D701:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188D725:     var_254.Fields.Item("SMSSTR").Value = var_264
  loc_188D755:     var_254.Update var_158, var_180
  loc_188D75C:     Set var_254 = Nothing 
  loc_188D763:     var_10C.MoveNext
  loc_188D768:     GoTo loc_188D64B
  loc_188D76B:   End If
  loc_188D76B: End If
  loc_188D77F: var_144 = "Select Q.VType,Q.PayType,Max(Depart.Name) DEPARTNAME,IsNull(Sum(Q.AmtCr),0) Advance From (Select RestCode,vType,PayType,AmtCr,Case When AmtCr>0 Then 'D' Else 'R' End PayType1 From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F92078
  loc_188D78C: var_158 = arg_C
  loc_188D794: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "') And PayType='Cash' AND VDate="), var_1F4, -1)
  loc_188D7A0: var_180 = ") Q Left Join Depart On Depart.Code=Q.RestCode Group By Q.VType,Q.PayType"
  loc_188D7A5: var_1D4 = var_16C & var_168 & var_180 
  loc_188D7B3: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188D7BE: Set var_10C = var_16C
  loc_188D7EC: If (var_10C.RecordCount > 0) Then
  loc_188D7F2:   var_10C.MoveFirst
  loc_188D7F7:   ' Referenced from: 188D914
  loc_188D806:   If Not(var_10C.EOF) Then
  loc_188D80C:     Set var_270 = var_8C 
  loc_188D81B:     var_270.AddNew var_158, var_180
  loc_188D846:     Proc_6_39_E7C810(var_214, CVar(var_10C.Fields.Item("Advance")))
  loc_188D84E:     var_158 = "DEPARTNAME"
  loc_188D85A:     var_16C = var_10C.Fields
  loc_188D86A:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188D881:     var_180 = "(ADV.): "
  loc_188D886:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168))) + var_180)
  loc_188D899:     var_240 = "0.00"
  loc_188D8AD:     var_264 = (1 + Format(var_214, var_240))
  loc_188D8D1:     var_270.Fields.Item("SMSSTR").Value = var_264
  loc_188D901:     var_270.Update var_158, var_180
  loc_188D908:     Set var_270 = Nothing 
  loc_188D90F:     var_10C.MoveNext
  loc_188D914:     GoTo loc_188D7F7
  loc_188D917:   End If
  loc_188D917: End If
  loc_188D924: var_180 = "Select max(Name)as CurName,sum(Qty)as Qty,sum(Amount) as [Value] from ForExTrans left join ForEx on ForEx.Code=ForExTrans.ForExCode where ForExTrans.VDate="
  loc_188D92C: var_158 = arg_C
  loc_188D934: Proc_6_7_F25D88(var_168, var_158, var_180, var_214, -1)
  loc_188D945: var_1B4 = var_16C & var_168 & " And ForExTrans.PayMode='Cash' And ForExTrans.logSite_Code= '" 
  loc_188D94F: var_1D4 = var_1B4 & CVar(MemVar_1F92078) 
  loc_188D966: unk_430AEB.Execute CStr(var_1D4 & "' Group by Code"), 1, var_1D4
  loc_188D971: Set var_90 = var_16C
  loc_188D99D: If (var_90.RecordCount > 0) Then
  loc_188D9A3:   Set var_274 = var_8C 
  loc_188D9B2:   var_274.AddNew var_158, var_180
  loc_188D9B7:   var_180 = "FOREX:-"
  loc_188D9C0:   var_158 = "SMSSTR"
  loc_188D9DC:   var_274.Fields.Item(var_158).Value = var_180
  loc_188D9F3:   var_274.Update var_158, var_180
  loc_188D9FA:   Set var_274 = Nothing 
  loc_188DA01:   var_90.MoveFirst
  loc_188DA06:   ' Referenced from: 188DBB0
  loc_188DA15:   If Not(var_90.EOF) Then
  loc_188DA1B:     Set var_278 = var_8C 
  loc_188DA2A:     var_278.AddNew var_158, var_180
  loc_188DA32:     var_158 = "CurName"
  loc_188DA3E:     var_16C = var_90.Fields
  loc_188DA4E:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188DA5D:     var_180 = "qty"
  loc_188DA80:     Proc_6_39_E7C810(var_1B4, CVar(var_90.Fields.Item(var_180)))
  loc_188DAC4:     var_214 = CVar(var_90.Fields.Item("Value")) 'Address
  loc_188DACB:     Proc_6_39_E7C810(var_240, var_214, 1)
  loc_188DB2F:     var_290 = Proc_6_52_EAD4F4(CStr(Format(var_240, "0.00")), &HB, 1 & Proc_6_52_EAD4F4(CStr(Format(var_1B4, "0.00")), &HA, Proc_6_45_EAD428(Proc_6_38_E68A98(var_168), &H12, 1)))
  loc_188DB56:     var_278.Fields.Item("SMSSTR").Value = CVar(1 & var_290)
  loc_188DB9D:     var_278.Update var_158, var_180
  loc_188DBA4:     Set var_278 = Nothing 
  loc_188DBAB:     var_90.MoveNext
  loc_188DBB0:     GoTo loc_188DA06
  loc_188DBB3:   End If
  loc_188DBB3: End If
  loc_188DBC0: var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTSAL' And ExpSheet.VDate="
  loc_188DBD0: Proc_6_7_F25D88(var_168, arg_C, var_180, var_214)
  loc_188DBD8: var_194 = -1 & var_168 
  loc_188DBF4: var_1F4 = CVar(var_90.Fields.Item(var_180)) & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or ExpSheet.LOGSITE_CODE='HO')" 
  loc_188DC02: unk_430AEB.Execute CStr(var_1F4), var_16C, var_168
  loc_188DC0D: Set var_90 = var_16C
  loc_188DC39: If (var_90.RecordCount > 0) Then
  loc_188DC3F:   var_158 = "Amount"
  loc_188DC5B:   var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188DC62:   Proc_6_39_E7C810(CVar(var_90.Fields.Item(var_180)))
  loc_188DC6A:   var_180 = 0
  loc_188DC7C:   If CBool(CVar(var_90.Fields.Item(var_180)) <> var_180) Then
  loc_188DC82:     Set var_2B0 = var_8C 
  loc_188DC91:     var_2B0.AddNew var_158, var_180
  loc_188DC99:     var_158 = "Amount"
  loc_188DCBC:     Proc_6_39_E7C810(CVar(var_90.Fields.Item(var_180)), CVar(var_90.Fields.Item(var_158)))
  loc_188DCC1:     var_1A4 = "MISC. REC: "
  loc_188DCD0:     var_180 = "0.00"
  loc_188DCE9:     var_1F4 = (1 + Format(CVar(var_90.Fields.Item(var_180)), var_180))
  loc_188DD0D:     var_2B0.Fields.Item("SMSSTR").Value = var_1F4
  loc_188DD33:     var_2B0.Update var_158, var_180
  loc_188DD3A:     Set var_2B0 = Nothing 
  loc_188DD3E:   End If
  loc_188DD3E: End If
  loc_188DD4D: var_16C = var_138.Fields
  loc_188DD5D: var_168 = CVar(var_16C.Item("IncCashPurchInFOCC")) 'Address
  loc_188DD7E: If (Ucase(var_168) = "YES") Then
  loc_188DD8E:   var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTEXP' And ExpSheet.VDate="
  loc_188DD9E:   Proc_6_7_F25D88(var_168, arg_C, var_180, var_300, -1)
  loc_188DDAA:   var_1A4 = " And (ExpSheet.LOGSITE_CODE='"
  loc_188DDC2:   var_1F4 = var_16C & var_168 & var_1A4 & CVar(MemVar_1F92078) & "' or ExpSheet.LOGSITE_CODE='HO') UNION SELECT Sum(NetAmt) from Purch1 where VDate=" 
  loc_188DDD1:   Proc_6_7_F25D88(var_214, arg_C, var_1F4)
  loc_188DDF5:   var_2A8 = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or LOGSITE_CODE='HO') and vtype='PBPC'" 
  loc_188DE03:   unk_430AEB.Execute CStr(var_2A8), var_1A4, var_168
  loc_188DE0E:   Set var_90 = var_16C
  loc_188DE33: Else
  loc_188DE40:   var_180 = "Select Sum(Amount)Amount From ExpSheet Left join SubGroup on ExpSheet.AgAc=SubGroup.subcode where Vtype='HTEXP' And ExpSheet.VDate="
  loc_188DE50:   Proc_6_7_F25D88(var_168, arg_C, var_180)
  loc_188DE58:   var_194 = var_214 & var_168 
  loc_188DE82:   unk_430AEB.Execute CStr(var_194 & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or ExpSheet.LOGSITE_CODE='HO')"), -1, var_16C
  loc_188DE8D:   Set var_90 = var_16C
  loc_188DEA5: End If
  loc_188DEB9: If (var_90.RecordCount > 0) Then
  loc_188DEBF:   var_158 = "Amount"
  loc_188DEDB:   var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188DEE2:   Proc_6_39_E7C810(var_194)
  loc_188DEEA:   var_180 = 0
  loc_188DEFC:   If CBool(var_194 <> var_180) Then
  loc_188DF02:     Set var_304 = var_8C 
  loc_188DF11:     var_304.AddNew var_158, var_180
  loc_188DF19:     var_158 = "Amount"
  loc_188DF35:     var_168 = CVar(var_90.Fields.Item(var_158)) 'Address
  loc_188DF3C:     Proc_6_39_E7C810(var_194, var_168)
  loc_188DF41:     var_1A4 = "MISC. PAY: "
  loc_188DF50:     var_180 = "0.00"
  loc_188DF69:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188DF8D:     var_304.Fields.Item("SMSSTR").Value = var_194 & " And (ExpSheet.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or ExpSheet.LOGSITE_CODE='HO')"
  loc_188DFB3:     var_304.Update var_158, var_180
  loc_188DFBA:     Set var_304 = Nothing 
  loc_188DFBE:   End If
  loc_188DFBE: End If
  loc_188DFC1: Set var_308 = var_8C 
  loc_188DFD0: var_308.AddNew var_158, var_180
  loc_188DFD5: var_180 = "COMPANY:-"
  loc_188DFDE: var_158 = "SMSSTR"
  loc_188DFEA: var_16C = var_308.Fields
  loc_188DFFA: var_16C.Item(var_158).Value = var_180
  loc_188E011: var_308.Update var_158, var_180
  loc_188E018: Set var_308 = Nothing 
  loc_188E029: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188E031: var_158 = arg_C
  loc_188E039: Proc_6_7_F25D88(var_168, var_158, var_180, var_214, -1)
  loc_188E045: var_1A4 = " and p.modeset='S' AND P.RESTCODE='"
  loc_188E05D: var_1F4 = var_16C & var_168 & var_1A4 & CVar(MemVar_1F92070) & "FOM' and PY.FieldType='P'  and P.PayType='Company' and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188E06B: unk_430AEB.Execute CStr(var_1F4), 1, var_1A4
  loc_188E076: Set var_94 = var_16C
  loc_188E0A2: If (var_94.RecordCount > 0) Then
  loc_188E0A5:   ' Referenced from: 188E171
  loc_188E0B4:   If Not(var_94.EOF) Then
  loc_188E0BA:     Set var_30C = var_8C 
  loc_188E0C9:     var_30C.AddNew var_158, var_180
  loc_188E0D1:     var_158 = "Amount"
  loc_188E0DD:     var_16C = var_94.Fields
  loc_188E0EA:     var_1A4 = "FOM: "
  loc_188E0F9:     var_180 = "0.00"
  loc_188E107:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E116:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188E13A:     var_30C.Fields.Item("SMSSTR").Value = var_16C & var_168 & var_1A4 & CVar(MemVar_1F92070)
  loc_188E15E:     var_30C.Update var_158, var_180
  loc_188E165:     Set var_30C = Nothing 
  loc_188E16C:     var_94.MoveNext
  loc_188E171:     GoTo loc_188E0A5
  loc_188E174:   End If
  loc_188E174: End If
  loc_188E190: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ','" & MemVar_1F92078 & "ODC') AND P.VDate =") 'String
  loc_188E196: var_158 = arg_C
  loc_188E19E: Proc_6_7_F25D88(var_168, var_158, var_194)
  loc_188E1D4: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(1 & var_168)
  loc_188E1E4: unk_430AEB.Execute var_144 & " And P.PayType='Company' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188E1EF: Set var_C0 = var_16C
  loc_188E213: If (var_C0.RecordCount > 0) Then
  loc_188E216:   ' Referenced from: 188E2EF
  loc_188E225:   If Not(var_C0.EOF) Then
  loc_188E22B:     Set var_310 = var_8C 
  loc_188E23A:     var_310.AddNew var_158, var_180
  loc_188E242:     var_158 = "Amount"
  loc_188E24E:     var_16C = var_C0.Fields
  loc_188E25E:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E265:     Proc_6_39_E7C810(var_194, var_168, var_16C)
  loc_188E26A:     var_1A4 = "BANQ: "
  loc_188E279:     var_180 = "0.00"
  loc_188E292:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188E2B6:     var_310.Fields.Item("SMSSTR").Value = var_1F4
  loc_188E2DC:     var_310.Update var_158, var_180
  loc_188E2E3:     Set var_310 = Nothing 
  loc_188E2EA:     var_C0.MoveNext
  loc_188E2EF:     GoTo loc_188E216
  loc_188E2F2:   End If
  loc_188E2F2: End If
  loc_188E2F5: var_9C = vbNullString
  loc_188E30C: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.LogSite_Code='" & MemVar_1F92078
  loc_188E319: var_158 = arg_C
  loc_188E321: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE ="), var_1F4, -1)
  loc_188E32D: var_180 = " and P.PAYTYPE ='Company' Group By P.VType,P.PayType"
  loc_188E340: unk_430AEB.Execute CStr(var_16C & var_168 & var_180), 1, var_1A4
  loc_188E34B: Set var_10C = var_16C
  loc_188E379: If (var_10C.RecordCount > 0) Then
  loc_188E37C:   ' Referenced from: 188E499
  loc_188E38B:   If Not(var_10C.EOF) Then
  loc_188E391:     Set var_314 = var_8C 
  loc_188E3A0:     var_314.AddNew var_158, var_180
  loc_188E3A8:     var_1A4 = "Amount"
  loc_188E3CB:     Proc_6_39_E7C810(var_214, CVar(var_10C.Fields.Item(var_1A4)))
  loc_188E3D3:     var_158 = "Department"
  loc_188E3EF:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188E406:     var_180 = ": "
  loc_188E40B:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168, var_1A4))) + var_180)
  loc_188E432:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188E456:     var_314.Fields.Item("SMSSTR").Value = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F92078)
  loc_188E486:     var_314.Update var_158, var_180
  loc_188E48D:     Set var_314 = Nothing 
  loc_188E494:     var_10C.MoveNext
  loc_188E499:     GoTo loc_188E37C
  loc_188E49C:   End If
  loc_188E49C: End If
  loc_188E49F: Set var_318 = var_8C 
  loc_188E4AE: var_318.AddNew var_158, var_180
  loc_188E4B3: var_180 = "HOLD:-"
  loc_188E4BC: var_158 = "SMSSTR"
  loc_188E4C8: var_16C = var_318.Fields
  loc_188E4D8: var_16C.Item(var_158).Value = var_180
  loc_188E4EF: var_318.Update var_158, var_180
  loc_188E4F6: Set var_318 = Nothing 
  loc_188E50D: var_180 = "SELECT P.VTYPE,P.PayType,Sum(p.AmtCr) As Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188E515: var_158 = arg_C
  loc_188E51D: Proc_6_7_F25D88(var_168, var_158, var_180, var_214, -1)
  loc_188E541: var_1F4 = var_16C & var_168 & " and p.modeset='S'AND P.RESTCODE='" & CVar(MemVar_1F92070) & "FOM' and PY.FieldType='P'  and P.PayType='Hold' and P.Vtype<>'CHK' Group by P.VTYPE,P.PayType" 
  loc_188E54F: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188E55A: Set var_94 = var_16C
  loc_188E586: If (var_94.RecordCount > 0) Then
  loc_188E589:   ' Referenced from: 188E655
  loc_188E598:   If Not(var_94.EOF) Then
  loc_188E59E:     Set var_31C = var_8C 
  loc_188E5AD:     var_31C.AddNew var_158, var_180
  loc_188E5B5:     var_158 = "Amount"
  loc_188E5C1:     var_16C = var_94.Fields
  loc_188E5CE:     var_1A4 = "FOM: "
  loc_188E5DD:     var_180 = "0.00"
  loc_188E5EB:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E5FA:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188E61E:     var_31C.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and p.modeset='S'AND P.RESTCODE='" & CVar(MemVar_1F92070)
  loc_188E642:     var_31C.Update var_158, var_180
  loc_188E649:     Set var_31C = Nothing 
  loc_188E650:     var_94.MoveNext
  loc_188E655:     GoTo loc_188E589
  loc_188E658:   End If
  loc_188E658: End If
  loc_188E674: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ','" & MemVar_1F92078 & "ODC') AND P.VDate =") 'String
  loc_188E67A: var_158 = arg_C
  loc_188E682: Proc_6_7_F25D88(var_168, var_158, var_194, 1)
  loc_188E6B8: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) AS Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188E6C8: unk_430AEB.Execute var_144 & " And P.PayType='Hold' Group By P.VType,P.PayType", var_168, -1
  loc_188E6D3: Set var_C0 = var_16C
  loc_188E6F7: If (var_C0.RecordCount > 0) Then
  loc_188E6FA:   ' Referenced from: 188E7D3
  loc_188E709:   If Not(var_C0.EOF) Then
  loc_188E70F:     Set var_320 = var_8C 
  loc_188E71E:     var_320.AddNew var_158, var_180
  loc_188E726:     var_158 = "Amount"
  loc_188E732:     var_16C = var_C0.Fields
  loc_188E742:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188E749:     Proc_6_39_E7C810(var_194, var_168, var_16C)
  loc_188E74E:     var_1A4 = "BANQ: "
  loc_188E75D:     var_180 = "0.00"
  loc_188E776:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188E79A:     var_320.Fields.Item("SMSSTR").Value = var_1F4
  loc_188E7C0:     var_320.Update var_158, var_180
  loc_188E7C7:     Set var_320 = Nothing 
  loc_188E7CE:     var_C0.MoveNext
  loc_188E7D3:     GoTo loc_188E6FA
  loc_188E7D6:   End If
  loc_188E7D6: End If
  loc_188E7D9: var_9C = vbNullString
  loc_188E7F0: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.LogSite_Code='" & MemVar_1F92078
  loc_188E7FD: var_158 = arg_C
  loc_188E805: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE ="), var_1F4, -1)
  loc_188E811: var_180 = " and P.PAYTYPE ='Hold' Group By P.VType,P.PayType"
  loc_188E816: var_1D4 = var_16C & var_168 & var_180 
  loc_188E824: unk_430AEB.Execute CStr(var_1D4), 1, var_1A4
  loc_188E82F: Set var_10C = var_16C
  loc_188E85D: If (var_10C.RecordCount > 0) Then
  loc_188E860:   ' Referenced from: 188E97D
  loc_188E86F:   If Not(var_10C.EOF) Then
  loc_188E875:     Set var_324 = var_8C 
  loc_188E884:     var_324.AddNew var_158, var_180
  loc_188E8AF:     Proc_6_39_E7C810(var_214, CVar(var_10C.Fields.Item("Amount")))
  loc_188E8B7:     var_158 = "Department"
  loc_188E8D3:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188E8EA:     var_180 = ": "
  loc_188E8EF:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168, var_1D4))) + var_180)
  loc_188E902:     var_240 = "0.00"
  loc_188E916:     var_264 = (1 + Format(var_214, var_240))
  loc_188E93A:     var_324.Fields.Item("SMSSTR").Value = 1 & var_214 & " And (LOGSITE_CODE='" & CVar(MemVar_1F92078)
  loc_188E96A:     var_324.Update var_158, var_180
  loc_188E971:     Set var_324 = Nothing 
  loc_188E978:     var_10C.MoveNext
  loc_188E97D:     GoTo loc_188E860
  loc_188E980:   End If
  loc_188E980: End If
  loc_188E983: Set var_328 = var_8C 
  loc_188E992: var_328.AddNew var_158, var_180
  loc_188E997: var_180 = "CHEQUE:-"
  loc_188E9A0: var_158 = "SMSSTR"
  loc_188E9AC: var_16C = var_328.Fields
  loc_188E9BC: var_16C.Item(var_158).Value = var_180
  loc_188E9D3: var_328.Update var_158, var_180
  loc_188E9DA: Set var_328 = Nothing 
  loc_188E9F1: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) As Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188E9F9: var_158 = arg_C
  loc_188EA01: Proc_6_7_F25D88(var_168, var_158, var_180, var_214, -1)
  loc_188EA25: var_1F4 = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F92070) & "FOM' and PY.FieldType='P'  and P.PayType='Cheque' and P.Vtype<>'CHK' Group By P.VTYPE,P.PayType" 
  loc_188EA33: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188EA3E: Set var_94 = var_16C
  loc_188EA6A: If (var_94.RecordCount > 0) Then
  loc_188EA6D:   ' Referenced from: 188EB39
  loc_188EA7C:   If Not(var_94.EOF) Then
  loc_188EA82:     Set var_32C = var_8C 
  loc_188EA91:     var_32C.AddNew var_158, var_180
  loc_188EA99:     var_158 = "Amount"
  loc_188EAA5:     var_16C = var_94.Fields
  loc_188EAB2:     var_1A4 = "FOM: "
  loc_188EAC1:     var_180 = "0.00"
  loc_188EACF:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188EADE:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188EB02:     var_32C.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F92070)
  loc_188EB26:     var_32C.Update var_158, var_180
  loc_188EB2D:     Set var_32C = Nothing 
  loc_188EB34:     var_94.MoveNext
  loc_188EB39:     GoTo loc_188EA6D
  loc_188EB3C:   End If
  loc_188EB3C: End If
  loc_188EB58: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ','" & MemVar_1F92078 & "ODC') AND P.VDate =") 'String
  loc_188EB5E: var_158 = arg_C
  loc_188EB66: Proc_6_7_F25D88(var_168, var_158, var_194, 1)
  loc_188EB9C: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188EBAC: unk_430AEB.Execute var_144 & " And P.PayType='Cheque' Group By P.VTYPE,P.PayType", var_168, -1
  loc_188EBB7: Set var_C0 = var_16C
  loc_188EBDB: If (var_C0.RecordCount > 0) Then
  loc_188EBDE:   ' Referenced from: 188ECB7
  loc_188EBED:   If Not(var_C0.EOF) Then
  loc_188EBF3:     Set var_330 = var_8C 
  loc_188EC02:     var_330.AddNew var_158, var_180
  loc_188EC0A:     var_158 = "Amount"
  loc_188EC16:     var_16C = var_C0.Fields
  loc_188EC26:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188EC2D:     Proc_6_39_E7C810(var_194, var_168, var_16C)
  loc_188EC32:     var_1A4 = "BANQ: "
  loc_188EC41:     var_180 = "0.00"
  loc_188EC5A:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188EC7E:     var_330.Fields.Item("SMSSTR").Value = var_1F4
  loc_188ECA4:     var_330.Update var_158, var_180
  loc_188ECAB:     Set var_330 = Nothing 
  loc_188ECB2:     var_C0.MoveNext
  loc_188ECB7:     GoTo loc_188EBDE
  loc_188ECBA:   End If
  loc_188ECBA: End If
  loc_188ECBD: var_9C = vbNullString
  loc_188ECD4: var_144 = "SELECT P.VType,P.PayType,Max(D.Name)DEPARTMENT,Sum(P.AmtCr-P.AmtDr) AS Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.Vtype Not In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F92078
  loc_188ECE1: var_158 = arg_C
  loc_188ECE9: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "') And PayType='Cheque' AND VDate="), var_2A8, -1)
  loc_188ECF5: var_180 = " And P.LogSite_Code='"
  loc_188ECFA: var_1D4 = var_16C & var_168 & var_180 
  loc_188ED01: var_1A4 = CVar(MemVar_1F92078) 'String
  loc_188ED0D: var_214 = var_1D4 & var_1A4 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE =" 
  loc_188ED1C: Proc_6_7_F25D88(var_240, arg_C, var_214, 1)
  loc_188ED3B: unk_430AEB.Execute CStr(var_1A4 & var_240 & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"), var_1D4, var_168
  loc_188ED46: Set var_10C = var_16C
  loc_188ED7E: If (var_10C.RecordCount > 0) Then
  loc_188ED81:   ' Referenced from: 188EE9E
  loc_188ED90:   If Not(var_10C.EOF) Then
  loc_188ED96:     Set var_334 = var_8C 
  loc_188EDA5:     var_334.AddNew var_158, var_180
  loc_188EDC9:     var_1F4 = CVar(var_10C.Fields.Item("Amount")) 'Address
  loc_188EDD0:     Proc_6_39_E7C810(var_214)
  loc_188EDD8:     var_158 = "Department"
  loc_188EDE4:     var_16C = var_10C.Fields
  loc_188EDF4:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188EE0B:     var_180 = ": "
  loc_188EE10:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168))) + var_180)
  loc_188EE37:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188EE5B:     var_334.Fields.Item("SMSSTR").Value = "Amount" & "0.00" & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"
  loc_188EE8B:     var_334.Update var_158, var_180
  loc_188EE92:     Set var_334 = Nothing 
  loc_188EE99:     var_10C.MoveNext
  loc_188EE9E:     GoTo loc_188ED81
  loc_188EEA1:   End If
  loc_188EEA1: End If
  loc_188EEB5: var_144 = "Select VType,PayType,Sum(AmtCr) Amount From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F92078
  loc_188EEC2: var_158 = arg_C
  loc_188EECA: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "') And PayType='Cheque' AND VDate="), var_1F4, -1)
  loc_188EED2: var_1B4 = var_16C & var_168 
  loc_188EED6: var_180 = " Group By VType,PayType"
  loc_188EEDB: var_1D4 = var_1B4 & var_180 
  loc_188EEE9: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188EEF4: Set var_10C = var_16C
  loc_188EF22: If (var_10C.RecordCount > 0) Then
  loc_188EF28:   var_10C.MoveFirst
  loc_188EF2D:   ' Referenced from: 188F04D
  loc_188EF3C:   If Not(var_10C.EOF) Then
  loc_188EF42:     Set var_338 = var_8C 
  loc_188EF51:     var_338.AddNew var_158, var_180
  loc_188EF59:     var_158 = "PayType"
  loc_188EF75:     var_168 = CVar(var_10C.Fields.Item(var_158)) 'Address
  loc_188EF84:     var_180 = "Amount"
  loc_188EFA7:     Proc_6_39_E7C810(var_1B4, CVar(var_10C.Fields.Item(var_180)))
  loc_188EFBD:     var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(var_168), &H14)) 'String
  loc_188EFE3:     var_240 = (1 + Format(var_1B4, "0.00"))
  loc_188F007:     var_338.Fields.Item("SMSSTR").Value = "0.00"
  loc_188F03A:     var_338.Update var_158, var_180
  loc_188F041:     Set var_338 = Nothing 
  loc_188F048:     var_10C.MoveNext
  loc_188F04D:     GoTo loc_188EF2D
  loc_188F050:   End If
  loc_188F050: End If
  loc_188F053: Set var_33C = var_8C 
  loc_188F062: var_33C.AddNew var_158, var_180
  loc_188F067: var_180 = "CREDIT CARD:-"
  loc_188F070: var_158 = "SMSSTR"
  loc_188F07C: var_16C = var_33C.Fields
  loc_188F08C: var_16C.Item(var_158).Value = var_180
  loc_188F0A3: var_33C.Update var_158, var_180
  loc_188F0AA: Set var_33C = Nothing 
  loc_188F0C1: var_180 = "SELECT P.VTYPE,P.PayType,Sum(P.AmtCr) Amount FROM (((PayCharge P Left Join RevMast PY On P.PayCode=PY.Code) Left Join GUESTFOLIO G On P.FOLIONODOCID=G.DOCID)  Left join SubGroup S on P.CompCode= S.SubCode) Where ((P.VTYPE In ('ARRES','ADRES','AWRES') AND P.DbtChkIn<>'Yes') or (P.VType Not In ('ARRES','ADRES','AWRES') and (P.CONTRADOCID IS NULL or P.CONTRADOCID=''))) AND P.Vdate="
  loc_188F0C9: var_158 = arg_C
  loc_188F0D1: Proc_6_7_F25D88(var_168, var_158, var_180, var_214, -1)
  loc_188F0F5: var_1F4 = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F92070) & "FOM' and PY.FieldType='P'  and P.PayType='Credit Card' and P.Vtype<>'CHK' Group By P.VTYPE,P.PAYTYPE" 
  loc_188F103: unk_430AEB.Execute CStr(var_1F4), CDbl(0), 1
  loc_188F10E: Set var_94 = var_16C
  loc_188F13A: If (var_94.RecordCount > 0) Then
  loc_188F13D:   ' Referenced from: 188F209
  loc_188F14C:   If Not(var_94.EOF) Then
  loc_188F152:     Set var_340 = var_8C 
  loc_188F161:     var_340.AddNew var_158, var_180
  loc_188F169:     var_158 = "Amount"
  loc_188F175:     var_16C = var_94.Fields
  loc_188F182:     var_1A4 = "FOM: "
  loc_188F191:     var_180 = "0.00"
  loc_188F19F:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188F1AE:     var_1D4 = (1 + Format(var_168, var_180))
  loc_188F1D2:     var_340.Fields.Item("SMSSTR").Value = var_16C & var_168 & " and P.RESTCODE='" & CVar(MemVar_1F92070)
  loc_188F1F6:     var_340.Update var_158, var_180
  loc_188F1FD:     Set var_340 = Nothing 
  loc_188F204:     var_94.MoveNext
  loc_188F209:     GoTo loc_188F13D
  loc_188F20C:   End If
  loc_188F20C: End If
  loc_188F228: var_194 = CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ','" & MemVar_1F92078 & "ODC') AND P.VDate =") 'String
  loc_188F22E: var_158 = arg_C
  loc_188F236: Proc_6_7_F25D88(var_168, var_158, var_194, 1)
  loc_188F26C: var_144 = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(var_1A4 & var_168)
  loc_188F27C: unk_430AEB.Execute var_144 & " And P.PayType='Credit Card' Group By P.VTYPE,P.PAYTYPE", var_168, -1
  loc_188F287: Set var_C0 = var_16C
  loc_188F2AB: If (var_C0.RecordCount > 0) Then
  loc_188F2AE:   ' Referenced from: 188F387
  loc_188F2BD:   If Not(var_C0.EOF) Then
  loc_188F2C3:     Set var_344 = var_8C 
  loc_188F2D2:     var_344.AddNew var_158, var_180
  loc_188F2DA:     var_158 = "Amount"
  loc_188F2E6:     var_16C = var_C0.Fields
  loc_188F2F6:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188F2FD:     Proc_6_39_E7C810(var_194, var_168, var_16C)
  loc_188F302:     var_1A4 = "BANQ: "
  loc_188F311:     var_180 = "0.00"
  loc_188F32A:     var_1F4 = (1 + Format(var_194, var_180))
  loc_188F34E:     var_344.Fields.Item("SMSSTR").Value = var_1F4
  loc_188F374:     var_344.Update var_158, var_180
  loc_188F37B:     Set var_344 = Nothing 
  loc_188F382:     var_C0.MoveNext
  loc_188F387:     GoTo loc_188F2AE
  loc_188F38A:   End If
  loc_188F38A: End If
  loc_188F38D: var_9C = vbNullString
  loc_188F3A4: var_144 = "SELECT P.VType,P.PayType,Max(D.Name) DEPARTMENT,Sum(P.AmtCr-P.AmtDr) Amount FROM (PayCharge P left join SubGroup S on P.CompCode=S.SubCode) Left Join Depart D On D.Code=P.RestCode Where P.Vtype Not In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F92078
  loc_188F3B9: var_194 = CVar(var_144 & "') And P.LogSite_Code='" & MemVar_1F92078 & "' AND D.RestType in('Outlet', 'Room Service') AND D.POS IN('Y') And P.VDATE =") 'String
  loc_188F3BF: var_158 = arg_C
  loc_188F3C7: Proc_6_7_F25D88(var_168, var_158, var_194, var_1F4, -1)
  loc_188F3D3: var_180 = " and P.PAYTYPE ='Credit Card' Group By P.VType,P.PayType"
  loc_188F3E6: unk_430AEB.Execute CStr(var_16C & var_168 & var_180), 1, var_1A4
  loc_188F3F1: Set var_10C = var_16C
  loc_188F423: If (var_10C.RecordCount > 0) Then
  loc_188F426:   ' Referenced from: 188F543
  loc_188F435:   If Not(var_10C.EOF) Then
  loc_188F43B:     Set var_348 = var_8C 
  loc_188F44A:     var_348.AddNew var_158, var_180
  loc_188F46E:     var_1F4 = CVar(var_10C.Fields.Item("Amount")) 'Address
  loc_188F475:     Proc_6_39_E7C810(var_214, var_1F4)
  loc_188F47D:     var_158 = "Department"
  loc_188F489:     var_16C = var_10C.Fields
  loc_188F499:     var_168 = CVar(var_16C.Item(var_158)) 'Address
  loc_188F4B0:     var_180 = ": "
  loc_188F4B5:     var_1D4 = (Ucase(CVar(Proc_6_38_E68A98(var_168, var_214))) + var_180)
  loc_188F4DC:     var_264 = (1 + Format(var_214, "0.00"))
  loc_188F500:     var_348.Fields.Item("SMSSTR").Value = "Amount" & "0.00" & " and P.PAYTYPE ='Cheque' Group By P.VTYPE,P.PayType"
  loc_188F530:     var_348.Update var_158, var_180
  loc_188F537:     Set var_348 = Nothing 
  loc_188F53E:     var_10C.MoveNext
  loc_188F543:     GoTo loc_188F426
  loc_188F546:   End If
  loc_188F546: End If
  loc_188F55A: var_144 = "Select VType,PayType,Sum(AmtCr) As Amount From PayCharge Where Vtype In (Select 'A'+IsNull(ShortName,'') From depart Where RestType='Outlet' And LogSite_Code='" & MemVar_1F92078
  loc_188F567: var_158 = arg_C
  loc_188F56F: Proc_6_7_F25D88(var_168, var_158, CVar(var_144 & "') And PayType='Credit Card' AND VDate="), var_1F4, -1)
  loc_188F577: var_1B4 = var_16C & var_168 
  loc_188F57B: var_180 = " Group By VType,PayType"
  loc_188F580: var_1D4 = var_1B4 & var_180 
  loc_188F58E: unk_430AEB.Execute CStr(var_1D4), 1, var_1D4
  loc_188F599: Set var_10C = var_16C
  loc_188F5C7: If (var_10C.RecordCount > 0) Then
  loc_188F5CD:   var_10C.MoveFirst
  loc_188F5D2:   ' Referenced from: 188F6F2
  loc_188F5E1:   If Not(var_10C.EOF) Then
  loc_188F5E7:     Set var_34C = var_8C 
  loc_188F5F6:     var_34C.AddNew var_158, var_180
  loc_188F5FE:     var_158 = "PayType"
  loc_188F629:     var_180 = "Amount"
  loc_188F64C:     Proc_6_39_E7C810(var_1B4, CVar(var_10C.Fields.Item(var_180)))
  loc_188F662:     var_214 = CVar(Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_10C.Fields.Item(var_158))), &H14)) 'String
  loc_188F688:     var_240 = (1 + Format(var_1B4, "0.00"))
  loc_188F6AC:     var_34C.Fields.Item("SMSSTR").Value = "0.00"
  loc_188F6DF:     var_34C.Update var_158, var_180
  loc_188F6E6:     Set var_34C = Nothing 
  loc_188F6ED:     var_10C.MoveNext
  loc_188F6F2:     GoTo loc_188F5D2
  loc_188F6F5:   End If
  loc_188F6F5: End If
  loc_188F709: If (var_8C.RecordCount > 0) Then
  loc_188F70F:   var_8C.MoveFirst
  loc_188F714:   ' Referenced from: 188F7A4
  loc_188F723:   If Not(var_8C.EOF) Then
  loc_188F756:     var_194 = (CVar(var_140) + var_8C.Fields.Item("SMSSTR").Value)
  loc_188F76A:     var_1D4 = (CVar(var_10C.Fields.Item(CVar(var_140))) + Chr(&HD))
  loc_188F77E:     var_214 = ("0.00" + Chr(&HA))
  loc_188F783:     var_140 = CStr(var_214)
  loc_188F79F:     var_8C.MoveNext
  loc_188F7A4:     GoTo loc_188F714
  loc_188F7A7:   End If
  loc_188F7AA:   var_88 = var_140
  loc_188F7AD: End If
  loc_188F7B2: Set var_8C = Nothing
  loc_188F7BA: Set var_90 = Nothing
  loc_188F7C2: Set var_94 = Nothing
  loc_188F7CA: Set var_C0 = Nothing
  loc_188F7D2: Set var_10C = Nothing
  loc_188F7DA: Set var_BC = Nothing
  loc_188F7DD: Exit Sub
  loc_188F7DE: ' Referenced from: 188D18C
  loc_188F7E6: Set var_16C = Err()
  loc_188F7EC: Call 0.Method_arg_2C (var_144, 1)
  loc_188F7F4: var_88 = var_144
  loc_188F7FA: Exit Sub
End Sub

Public Sub Proc_233_14_1563908(arg_C) '1563908
  'Data Table: 430AD8
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Recordset15
  Dim var_CC As Fields15
  Dim var_9C As Double
  Dim unk_430AEB As Connection15
  Dim var_90 As Recordset15
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_16C As String
  Dim var_94 As Recordset15
  Dim var_E0 As Variant
  Dim var_190 As Recordset15
  Dim var_194 As Fields15
  Dim var_138 As Variant
  Dim var_1B8 As Variant
  Dim var_1BC As Fields15
  Dim var_1C4 As Recordset15
  Dim var_1C8 As Recordset15
  Dim var_1CC As Recordset15
  Dim var_254 As Recordset15
  Dim var_258 As Recordset15
  Dim var_25C As Recordset15
  Dim var_8C As Recordset15
  loc_15628CC: Set var_8C = New 
  loc_15628D7: Set var_8C = Proc_233_12_EF5054(var_8C)
  loc_15628DD: Set var_A8 = var_8C 
  loc_15628EC: Me.Recordset15.AddNew var_B8, var_C8
  loc_1562916: var_A8.Fields.Item("mLine").Value = "GF"
  loc_1562922: var_C8 = "BANQUET SALE:-"
  loc_1562947: var_A8.Fields.Item("SMSSTR").Value = "GF"
  loc_1562953: var_C8 = "*"
  loc_156295C: var_B8 = "Mark"
  loc_1562968: var_CC = var_A8.Fields
  loc_1562978: var_CC.Item(var_B8).Value = var_C8
  loc_156298F: var_A8.Update var_B8, var_C8
  loc_1562996: Set var_A8 = Nothing 
  loc_156299D: var_9C = CDbl(0)
  loc_15629B6: unk_430AEB.Execute "SELECT DISTINCT CATTYPE AS NAME FROM ITEMCATMAST WHERE (REVCODE IS NOT NULL AND REVCODE<>'') AND (CATTYPE<>'' AND CATTYPE IS NOT NULL) Order By CATTYPE", var_E0, -1
  loc_15629C1: Set var_90 = var_CC
  loc_15629DE: If (var_90.RecordCount > 0) Then
  loc_15629E4:   var_90.MoveFirst
  loc_15629E9:   ' Referenced from: 1562F74
  loc_15629F8:   If Not(var_90.EOF) Then
  loc_1562A0D:     var_CC = var_90.Fields
  loc_1562A1D:     var_E0 = var_CC.Item("Name").Value
  loc_1562A37:     If (var_E0 = "Food") Then
  loc_1562A57:       Proc_6_7_F25D88(var_E0, arg_C, "select Sum(aa.Tot) as PAY2 from (select sum(Amount) as Tot from SunTranH where vdate=", var_18C)
  loc_1562A5F:       var_F8 = -1 & var_E0 
  loc_1562A63:       var_108 = " and vtype='IDC' and DispName='Total' Union select sum(Amount) as Tot from (HallStock Inner join itemmast on itemmast.code=hallstock.item And itemmast.Restcode=hallstock.RestCode) Inner join ItemCatMast on ItemCatMast.Code=itemmast.ItemCatCode where ItemCatMast.CatType='Food' and vdate="
  loc_1562A77:       Proc_6_7_F25D88(var_138, arg_C, var_F8 & var_108)
  loc_1562A88:       var_168 = var_CC & var_138 & "  and vtype='IDC') as aa" 
  loc_1562A96:       unk_430AEB.Execute CStr(var_168), var_CC, var_9C
  loc_1562AA1:       Set var_94 = var_CC
  loc_1562ABE:       var_B8 = "PAY2"
  loc_1562ADA:       var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_1562AE1:       Proc_6_39_E7C810(var_F8)
  loc_1562AE9:       var_C8 = 0
  loc_1562AFB:       If CBool(var_F8 <> var_C8) Then
  loc_1562B01:         Set var_190 = var_8C 
  loc_1562B10:         var_190.AddNew var_B8, var_C8
  loc_1562B3A:         var_190.Fields.Item("mLine").Value = vbNullString
  loc_1562B80:         var_194 = var_94.Fields
  loc_1562B97:         Proc_6_39_E7C810(var_168, CVar(var_194.Item("PAY2")))
  loc_1562BA9:         var_F8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))) 'String
  loc_1562BBC:         var_138 = (StrConv(var_F8, 3, 0) + ": ")
  loc_1562BCF:         var_18C = "0.00"
  loc_1562BE3:         var_1B8 = (1 + Format(var_168, var_18C))
  loc_1562C07:         var_190.Fields.Item("SMSSTR").Value = var_1B8
  loc_1562C2F:         var_C8 = "*"
  loc_1562C38:         var_B8 = "Mark"
  loc_1562C54:         var_190.Fields.Item(var_B8).Value = var_C8
  loc_1562C6B:         var_190.Update var_B8, var_C8
  loc_1562C9D:         Proc_6_39_E7C810(var_F8, CVar(var_94.Fields.Item("PAY2")), CVar(var_9C))
  loc_1562CA5:         var_118 = (1 + var_F8)
  loc_1562CAA:         var_9C = CSng(StrConv(var_F8, 3, 0))
  loc_1562CBB:         Set var_190 = Nothing 
  loc_1562CBF:       End If
  loc_1562CC2:       var_90.MoveNext
  loc_1562CCA:     Else
  loc_1562CD7:       var_C8 = "Select sum(Amount) as PAY2 from (HallStock Inner join itemmast on itemmast.code=hallstock.item And itemmast.Restcode=hallstock.RestCode) Inner join ItemCatMast on ItemCatMast.Code=itemmast.ItemCatCode where ItemCatMast.CatType='"
  loc_1562D06:       var_F8 = var_C8 & var_90.Fields.Item("Name").Value 
  loc_1562D1E:       Proc_6_7_F25D88(var_138, arg_C, var_F8 & "' and vdate=", var_18C, -1)
  loc_1562D2F:       var_168 = var_194 & var_138 & " and vtype='IDC'" 
  loc_1562D3D:       unk_430AEB.Execute CStr(var_168), var_9C, var_138
  loc_1562D48:       Set var_94 = var_194
  loc_1562D6B:       var_B8 = "PAY2"
  loc_1562D8E:       Proc_6_39_E7C810(var_F8, CVar(var_94.Fields.Item(var_B8)))
  loc_1562D96:       var_C8 = 0
  loc_1562DA8:       If CBool(var_F8 <> var_C8) Then
  loc_1562DAE:         Set var_1C4 = var_8C 
  loc_1562DBD:         var_1C4.AddNew var_B8, var_C8
  loc_1562DE7:         var_1C4.Fields.Item("mLine").Value = vbNullString
  loc_1562E44:         Proc_6_39_E7C810(var_168, CVar(var_94.Fields.Item("PAY2")))
  loc_1562E56:         var_F8 = CVar(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Name")))) 'String
  loc_1562E69:         var_138 = (StrConv(var_F8, 3, 0) + ":   ")
  loc_1562E7C:         var_18C = "0.00"
  loc_1562E90:         var_1B8 = (1 + Format(var_168, var_18C))
  loc_1562EA4:         var_1BC = var_1C4.Fields
  loc_1562EB4:         var_1BC.Item("SMSSTR").Value = var_1B8
  loc_1562EDC:         var_C8 = "*"
  loc_1562EE5:         var_B8 = "Mark"
  loc_1562F01:         var_1C4.Fields.Item(var_B8).Value = var_C8
  loc_1562F18:         var_1C4.Update var_B8, var_C8
  loc_1562F33:         var_CC = var_94.Fields
  loc_1562F43:         var_E0 = CVar(var_CC.Item("PAY2")) 'Address
  loc_1562F4A:         Proc_6_39_E7C810(var_F8, var_E0, CVar(var_9C))
  loc_1562F52:         var_118 = (1 + var_F8)
  loc_1562F57:         var_9C = CSng(StrConv(var_F8, 3, 0))
  loc_1562F68:         Set var_1C4 = Nothing 
  loc_1562F6C:       End If
  loc_1562F6F:       var_90.MoveNext
  loc_1562F74:     End If
  loc_1562F74:     GoTo loc_15629E9
  loc_1562F77:   End If
  loc_1562F77: End If
  loc_1562F94: Proc_6_7_F25D88(var_E0, arg_C, "select Sum(aa.Tot) as PAY2 from (select sum(Amount) as Tot from SunTranH where vdate=", var_18C, -1)
  loc_1562F9C: var_F8 = var_CC & var_E0 
  loc_1562FB4: Proc_6_7_F25D88(var_138, arg_C, var_F8 & " and vtype='IDC' and DispName='Discount' Union select sum(DiscAmt) as Tot from HallStock where vdate=")
  loc_1562FD3: unk_430AEB.Execute CStr(var_9C & var_138 & "  and vtype='IDC') as aa"), var_138, var_E0
  loc_1562FDE: Set var_94 = var_CC
  loc_1562FFB: var_B8 = "PAY2"
  loc_1563017: var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_156301E: Proc_6_39_E7C810(var_F8)
  loc_1563026: var_C8 = 0
  loc_1563038: If CBool(var_F8 <> var_C8) Then
  loc_156303E:   Set var_1C8 = var_8C 
  loc_156304D:   var_1C8.AddNew var_B8, var_C8
  loc_1563077:   var_1C8.Fields.Item("mLine").Value = vbNullString
  loc_15630A9:   Proc_6_39_E7C810(var_F8, CVar(var_94.Fields.Item("PAY2")))
  loc_15630B5:   var_148 = CVar("Disc." & ": ") 'String
  loc_15630D3:   var_138 = Format(var_F8, "0.00")
  loc_15630DB:   var_168 = (1 + var_138)
  loc_15630FF:   var_1C8.Fields.Item("SMSSTR").Value = var_9C & var_138 & "  and vtype='IDC') as aa"
  loc_156311C:   var_C8 = "*"
  loc_1563125:   var_B8 = "Mark"
  loc_1563141:   var_1C8.Fields.Item(var_B8).Value = var_C8
  loc_1563158:   var_1C8.Update var_B8, var_C8
  loc_1563160:   var_C8 = CVar(var_9C) 'Double
  loc_1563167:   var_B8 = "PAY2"
  loc_1563183:   var_E0 = CVar(var_94.Fields.Item(var_B8)) 'Address
  loc_156318A:   Proc_6_39_E7C810(var_F8, var_E0, var_C8)
  loc_1563192:   var_118 = (1 - var_F8)
  loc_1563197:   var_9C = CSng("0.00")
  loc_15631A6:   Set var_1C8 = Nothing 
  loc_15631AA: End If
  loc_15631AD: Set var_1CC = var_8C 
  loc_15631BC: var_1CC.AddNew var_B8, var_C8
  loc_15631E6: var_1CC.Fields.Item("mLine").Value = "GF"
  loc_15631F2: var_C8 = "BANQUET TAXES:-"
  loc_1563217: var_1CC.Fields.Item("SMSSTR").Value = "GF"
  loc_1563223: var_C8 = "*"
  loc_156322C: var_B8 = "Mark"
  loc_1563238: var_CC = var_1CC.Fields
  loc_1563248: var_CC.Item(var_B8).Value = var_C8
  loc_156325F: var_1CC.Update var_B8, var_C8
  loc_1563266: Set var_1CC = Nothing 
  loc_156328E: unk_430AEB.Execute "SELECT Code,Name FROM Revmast WHERE  FieldType IN ('T') And Sundry<>'" & MemVar_1F92078 & "SCH'", var_E0, -1
  loc_1563299: Set var_90 = var_CC
  loc_15632BD: If (var_90.RecordCount > 0) Then
  loc_15632C0:   ' Referenced from: 1563596
  loc_15632CF:   If Not(var_90.EOF) Then
  loc_15632F6:     var_CC = var_90.Fields
  loc_1563306:     var_E0 = var_CC.Item("Code").Value
  loc_1563317:     var_118 = "SELECT SUM(AA.NETAMT) FROM (select SUM(aMOUNT) AS NETAMT from suntran where vtype in ('IDC') AND REVCODE='" & var_E0 & "' AND VDATE=" 
  loc_1563326:     Proc_6_7_F25D88(var_138, arg_C, var_118, var_250, -1)
  loc_156332E:     var_148 = var_1BC & var_138 
  loc_1563337:     var_168 = var_148 & " Union select SUM(AMOUNT) AS NETAMT from suntranH where vtype in ('IDC') AND REVCODE='" 
  loc_156337D:     Proc_6_7_F25D88(var_200, arg_C, var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE=", var_CC)
  loc_156339C:     unk_430AEB.Execute CStr(var_9C & var_200 & ") AS AA"), var_148, var_E0
  loc_15633A7:     Set var_94 = var_1BC
  loc_15633DD:     var_B8 = 0
  loc_1563401:     var_C8 = 0
  loc_1563413:     If CBool(var_94.Fields.Item(var_B8).Value <> var_C8) Then
  loc_1563419:       Set var_254 = var_8C 
  loc_1563428:       var_254.AddNew var_B8, var_C8
  loc_1563452:       var_254.Fields.Item("mLine").Value = "GF"
  loc_156347D:       var_E0 = CVar(var_90.Fields.Item("Name")) 'Address
  loc_15634A8:       var_148 = CVar(var_94.Fields.Item(0)) 'Address
  loc_15634AF:       Proc_6_39_E7C810(var_168)
  loc_15634D4:       var_138 = (StrConv(CVar(Proc_6_38_E68A98(var_E0)), 3, 0) + ": ")
  loc_15634FB:       var_1B8 = (1 + Format(var_168, "0.00"))
  loc_156351F:       var_254.Fields.Item("SMSSTR").Value = var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE="
  loc_1563547:       var_C8 = vbNullString
  loc_1563550:       var_B8 = "Mark"
  loc_156356C:       var_254.Fields.Item(var_B8).Value = var_C8
  loc_1563583:       var_254.Update var_B8, var_C8
  loc_156358A:       Set var_254 = Nothing 
  loc_156358E:     End If
  loc_1563591:     var_90.MoveNext
  loc_1563596:     GoTo loc_15632C0
  loc_1563599:   End If
  loc_1563599: End If
  loc_156359C: Set var_258 = var_8C 
  loc_15635AB: var_258.AddNew var_B8, var_C8
  loc_15635D5: var_258.Fields.Item("mLine").Value = "GF"
  loc_15635E1: var_C8 = "BANQUET COLLECTION:-"
  loc_1563606: var_258.Fields.Item("SMSSTR").Value = "GF"
  loc_1563612: var_C8 = "*"
  loc_156361B: var_B8 = "Mark"
  loc_1563627: var_CC = var_258.Fields
  loc_1563637: var_CC.Item(var_B8).Value = var_C8
  loc_156364E: var_258.Update var_B8, var_C8
  loc_1563655: Set var_258 = Nothing 
  loc_156366D: var_B8 = arg_C
  loc_1563675: Proc_6_7_F25D88(var_E0, var_B8, CVar("WHERE P.RestCode IN ('" & MemVar_1F92078 & "BANQ') AND P.VDate ="))
  loc_15636A5: var_16C = "SELECT P.VType,P.PayType,Sum(P.AmtCr) Amount FROM ((PayChargeH P LEFT JOIN HallBook H ON P.ContraDocID=H.DocId)left Join SubGroup S On P.CompCode=S.SubCode) " & CStr(1 & var_E0)
  loc_15636B5: unk_430AEB.Execute var_16C & " Group By P.VTYPE,P.PayType", var_E0, -1
  loc_15636C0: Set var_94 = var_CC
  loc_15636E4: If (var_94.RecordCount > 0) Then
  loc_15636E7:   ' Referenced from: 1563817
  loc_15636F6:   If Not(var_94.EOF) Then
  loc_15636FC:     Set var_25C = var_8C 
  loc_156370B:     var_25C.AddNew var_B8, var_C8
  loc_1563713:     var_B8 = "PayType"
  loc_156371F:     var_CC = var_94.Fields
  loc_1563738:     var_16C = Proc_6_38_E68A98(CVar(var_CC.Item(var_B8)), var_CC)
  loc_1563761:     Proc_6_39_E7C810(var_168, CVar(var_94.Fields.Item("Amount")))
  loc_1563781:     var_C8 = ": "
  loc_1563786:     var_138 = (StrConv(CVar(var_16C), 3, 0) + var_C8)
  loc_15637AD:     var_1B8 = (1 + Format(var_168, "0.00"))
  loc_15637D1:     var_25C.Fields.Item("SMSSTR").Value = var_168 & var_90.Fields.Item("Code").Value & "' AND VDATE="
  loc_1563804:     var_25C.Update var_B8, var_C8
  loc_156380B:     Set var_25C = Nothing 
  loc_1563812:     var_94.MoveNext
  loc_1563817:     GoTo loc_15636E7
  loc_156381A:   End If
  loc_156381A: End If
  loc_156382E: If (var_8C.RecordCount > 0) Then
  loc_1563834:   var_8C.MoveFirst
  loc_1563839:   ' Referenced from: 15638C9
  loc_1563848:   If Not(var_8C.EOF) Then
  loc_156387B:     var_F8 = (CVar(var_A4) + var_8C.Fields.Item("SMSSTR").Value)
  loc_156388F:     var_138 = (CVar(var_16C) + Chr(&HD))
  loc_15638A3:     var_168 = (var_138 + Chr(&HA))
  loc_15638A8:     var_A4 = CStr(var_168)
  loc_15638C4:     var_8C.MoveNext
  loc_15638C9:     GoTo loc_1563839
  loc_15638CC:   End If
  loc_15638CF:   var_88 = var_A4
  loc_15638D2: End If
  loc_15638D7: Set var_8C = Nothing
  loc_15638DF: Set var_90 = Nothing
  loc_15638E7: Set var_94 = Nothing
  loc_15638EA: Exit Sub
  loc_15638F3: Set var_CC = Err()
  loc_15638F9: Call 0.Method_arg_2C (var_16C, 1, var_138)
  loc_1563901: var_88 = var_16C
  loc_1563907: Exit Sub
End Sub

Public Sub Proc_233_15_15FAD24(arg_C, arg_10) '15FAD24
  'Data Table: 430AD8
  Dim var_8C As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_C4 As Recordset15
  Dim var_BC As Fields15
  Dim var_B8 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_140 As Variant
  Dim var_C8 As Recordset15
  loc_15F9940: var_8C = "Select Code,Name,IssDate,CardNo,Addr,Phone,ValidUpto,U_Name,MemberCode,RewardBal,RewardSale,RewardPoint,RedeemPoint From SmartCardRegistration Where Code='" & arg_C
  loc_15F995E: unk_430AEB.Execute var_8C & "' And LogSite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_15F9969: Set var_88 = var_BC
  loc_15F9991: If (var_88.RecordCount = 1) Then
  loc_15F99B8:   unk_430AEB.Execute "Select GuestRegistrationMsg,RewardPointMsg,RedeemPointMsg from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_15F99C3:   Set var_C4 = var_BC
  loc_15F99E7:   If (var_C4.RecordCount > 0) Then
  loc_15F99F9:     var_BC = var_C4.Fields
  loc_15F9A21:     var_DC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_BC.Item("GuestRegistrationMsg")), var_BC))))
  loc_15F9A67:     var_E0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RewardPointMsg"))))))
  loc_15F9AAD:     var_E4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_C4.Fields.Item("RedeemPointMsg"))))))
  loc_15F9ABC:   End If
  loc_15F9AC4:   If (arg_10 <> vbNullString) Then
  loc_15F9ACA:     var_D4 = var_E0
  loc_15F9AD0:     var_D8 = var_E4
  loc_15F9AD6:   Else
  loc_15F9AD9:     var_D4 = var_DC
  loc_15F9ADC:   End If
  loc_15F9AE6:   If (Len(var_D4) <> 0) Then
  loc_15F9B35:     var_D4 = Replace(var_D4, "<Registration Id>", CStr(Trim(CVar(var_88.Fields.Item("CardNo")))), 1, -1, 0)
  loc_15F9BA6:     var_D4 = Replace(var_D4, "<Registration Date>", CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/mm/yy")), 1, -1, 0)
  loc_15F9C04:     var_D4 = Replace(var_D4, "<Guest Full Name>", CStr(Trim(CVar(var_88.Fields.Item("Name")))), 1, -1, 0)
  loc_15F9C60:     var_D4 = Replace(var_D4, "<Mobile Number>", CStr(Trim(CVar(var_88.Fields.Item("Phone")))), 1, -1, 0)
  loc_15F9CBC:     var_D4 = Replace(var_D4, "<Address>", CStr(Trim(CVar(var_88.Fields.Item("Addr")))), 1, -1, 0)
  loc_15F9CF7:     var_F8 = "dd/mm/yy"
  loc_15F9D2D:     var_D4 = Replace(var_D4, "<Valid UpToDate>", CStr(Format(CVar(var_88.Fields.Item("ValidUpto")), var_F8)), 1, -1, 0)
  loc_15F9D65:     Proc_6_39_E7C810(var_F8, CVar(var_88.Fields.Item("RewardPoint")), 1, 1)
  loc_15F9D90:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("RedeemPoint")), 1)
  loc_15F9DB0:     var_140 = (var_F8 - var_130)
  loc_15F9DE4:     var_D4 = Replace(var_D4, "<RPoint Balance>", CStr(Format(var_140, "0.00")), 1, -1, 0)
  loc_15F9E28:     Proc_6_39_E7C810(var_F8, CVar(var_88.Fields.Item("RewardBal")), 1)
  loc_15F9E48:     var_130 = Format(var_F8, "0.00")
  loc_15F9E6E:     var_D4 = Replace(var_D4, "<RValue Balance>", CStr(var_130), 1, -1, 0)
  loc_15F9E82:   End If
  loc_15F9E8C:   If (Len(var_D8) <> 0) Then
  loc_15F9EDB:     var_D8 = Replace(var_D8, "<Registration Id>", CStr(Trim(CVar(var_88.Fields.Item("CardNo")))), 1, -1, 0)
  loc_15F9F4C:     var_D8 = Replace(var_D8, "<Registration Date>", CStr(Format(CVar(var_88.Fields.Item("IssDate")), "dd/mm/yy")), 1, -1, 0)
  loc_15F9FAA:     var_D8 = Replace(var_D8, "<Guest Full Name>", CStr(Trim(CVar(var_88.Fields.Item("Name")))), 1, -1, 0)
  loc_15FA006:     var_D8 = Replace(var_D8, "<Mobile Number>", CStr(Trim(CVar(var_88.Fields.Item("Phone")))), 1, -1, 0)
  loc_15FA062:     var_D8 = Replace(var_D8, "<Address>", CStr(Trim(CVar(var_88.Fields.Item("Addr")))), 1, -1, 0)
  loc_15FA09D:     var_F8 = "dd/mm/yy"
  loc_15FA0D3:     var_D8 = Replace(var_D8, "<Valid UpToDate>", CStr(Format(CVar(var_88.Fields.Item("ValidUpto")), var_F8)), 1, -1, 0)
  loc_15FA10B:     Proc_6_39_E7C810(var_F8, CVar(var_88.Fields.Item("RewardPoint")), 1, 1, 1, 1)
  loc_15FA136:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("RedeemPoint")), 1, 1)
  loc_15FA156:     var_140 = (var_F8 - var_130)
  loc_15FA18A:     var_D8 = Replace(var_D8, "<RPoint Balance>", CStr(Format(var_140, "0.00")), 1, -1, 0)
  loc_15FA1B7:     var_BC = var_88.Fields
  loc_15FA1C7:     var_B8 = CVar(var_BC.Item("RewardBal")) 'Address
  loc_15FA1CE:     Proc_6_39_E7C810(var_F8, var_B8, 1, 1)
  loc_15FA214:     var_D8 = Replace(var_D8, "<RValue Balance>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA228:   End If
  loc_15FA230:   If (arg_10 <> vbNullString) Then
  loc_15FA247:     var_8C = "Select Vdate,BillNo,BillAmt,U_Name,RewardPoint,RedemPoint,RewardValue,RedeemValue From GuestReward Where DocId='" & arg_10
  loc_15FA265:     unk_430AEB.Execute var_8C & "' And RegId='" & arg_C & "'", var_B8, -1
  loc_15FA270:     Set var_C8 = var_BC
  loc_15FA298:     If (var_C8.RecordCount = 1) Then
  loc_15FA2A5:       If (Len(var_D4) <> 0) Then
  loc_15FA2D3:         var_F8 = "dd/mm/yy"
  loc_15FA309:         var_D4 = Replace(var_D4, "<Bill Date>", CStr(Format(CVar(var_C8.Fields.Item("VDate")), var_F8)), 1, -1, 0)
  loc_15FA364:         var_D4 = Replace(var_D4, "<Bill Number>", CStr(var_C8.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_15FA383:         var_BC = var_C8.Fields
  loc_15FA39A:         Proc_6_39_E7C810(var_F8, CVar(var_BC.Item("RewardPoint")), 1, 1, var_BC)
  loc_15FA3E0:         var_D4 = Replace(var_D4, "<Reward Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA41A:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RewardValue")), 1, 1, 1)
  loc_15FA460:         var_D4 = Replace(var_D4, "<Reward Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA49A:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RedemPoint")), 1, 1)
  loc_15FA4E0:         var_D4 = Replace(var_D4, "<Redeem Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA51A:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RedeemValue")), 1, 1)
  loc_15FA560:         var_D4 = Replace(var_D4, "<Redeem Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA574:       End If
  loc_15FA57E:       If (Len(var_D8) <> 0) Then
  loc_15FA5AC:         var_F8 = "dd/mm/yy"
  loc_15FA5E2:         var_D8 = Replace(var_D8, "<Bill Date>", CStr(Format(CVar(var_C8.Fields.Item("VDate")), var_F8)), 1, -1, 0)
  loc_15FA63D:         var_D8 = Replace(var_D8, "<Bill Number>", CStr(var_C8.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_15FA673:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RewardPoint")), 1, 1, 1)
  loc_15FA6B9:         var_D8 = Replace(var_D8, "<Reward Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA6F3:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RewardValue")), 1, 1, 1)
  loc_15FA739:         var_D8 = Replace(var_D8, "<Reward Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA773:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RedemPoint")), 1, 1)
  loc_15FA7B9:         var_D8 = Replace(var_D8, "<Redeem Points>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA7F3:         Proc_6_39_E7C810(var_F8, CVar(var_C8.Fields.Item("RedeemValue")), 1, 1)
  loc_15FA839:         var_D8 = Replace(var_D8, "<Redeem Value>", CStr(Format(var_F8, "0.00")), 1, -1, 0)
  loc_15FA84D:       End If
  loc_15FA84D:     End If
  loc_15FA84D:   End If
  loc_15FA87C:   var_D0 = CStr(Trim(CVar(var_88.Fields.Item("Phone"))))
  loc_15FA893:   If (Len(var_D0) >= &HA) Then
  loc_15FA89E:     If (arg_10 <> vbNullString) Then
  loc_15FA8CA:       var_CC = CStr(Trim(Mid(arg_10, 4, 5)))
  loc_15FA8E0:       If (Len(var_D4) <> 0) Then
  loc_15FA953:         var_108 = var_C8.Fields.Item("U_Name").Value
  loc_15FA97A:         var_130 = var_88.Fields.Item("Name").Value
  loc_15FA9A1:         var_140 = var_C8.Fields.Item("BillAmt").Value
  loc_15FA9A9:         var_1CC = "Reward Point"
  loc_15FA9BA:         var_1C0 = vbNullString
  loc_15FA9FA:         Proc_233_5_11B7494(arg_10, var_CC, CLng(var_C8.Fields.Item("BillNo").Value), 1, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D4)
  loc_15FAA32:       End If
  loc_15FAA3C:       If (Len(var_D8) <> 0) Then
  loc_15FAAAF:         var_108 = var_C8.Fields.Item("U_Name").Value
  loc_15FAAD6:         var_130 = var_88.Fields.Item("Name").Value
  loc_15FAAFD:         var_140 = var_C8.Fields.Item("BillAmt").Value
  loc_15FAB05:         var_1CC = "Redeem Point"
  loc_15FAB16:         var_1C0 = vbNullString
  loc_15FAB56:         Proc_233_5_11B7494(arg_10, var_CC, CLng(var_C8.Fields.Item("BillNo").Value), 2, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D8)
  loc_15FAB8E:       End If
  loc_15FAB91:     Else
  loc_15FAB9B:       If (Len(var_D4) <> 0) Then
  loc_15FAC4A:         var_130 = var_88.Fields.Item("U_Name").Value
  loc_15FAC71:         var_140 = var_88.Fields.Item("Name").Value
  loc_15FAC79:         var_1D4 = "Guest Registration"
  loc_15FAC89:         var_1D0 = vbNullString
  loc_15FACCD:         Proc_233_5_11B7494(CStr(var_88.Fields.Item("Code").Value), "GREG", CLng(Val(CStr(var_88.Fields.Item("Code").Value))), 1, CStr(var_88.Fields.Item("MemberCode").Value), var_D0, vbNullString, var_D4)
  loc_15FAD09:       End If
  loc_15FAD09:     End If
  loc_15FAD09:   End If
  loc_15FAD09: End If
  loc_15FAD0E: Set var_88 = Nothing
  loc_15FAD16: Set var_C4 = Nothing
  loc_15FAD1E: Set var_C8 = Nothing
  loc_15FAD21: Exit Sub
End Sub

Public Sub Proc_233_16_1655ECC(arg_C, arg_10, arg_14) '1655ECC
  'Data Table: 430AD8
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_430AEB As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Recordset15
  Dim var_E8 As Variant
  Dim var_E4 As Variant
  Dim var_100 As Variant
  Dim var_128 As Variant
  Dim var_114 As String
  Dim var_118 As String
  Dim var_F0 As Variant
  Dim var_12C As Variant
  Dim var_98 As Recordset15
  Dim var_110 As Variant
  loc_1654888: unk_430AEB.Execute "Select DepartName,Vdate,BillNo,DiscAmt,BillAmt,MobileNo,CustCode,U_Name From GuestReward Where DocId='" & arg_C & "'", var_E4, -1
  loc_1654893: Set var_88 = var_E8
  loc_16548B7: If (var_88.RecordCount = 1) Then
  loc_16548DE:   unk_430AEB.Execute "Select POSBillMsg,AssignDeliveryMsg from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E4, -1
  loc_16548E9:   Set var_94 = var_E8
  loc_165490D:   If (var_94.RecordCount > 0) Then
  loc_165491F:     var_E8 = var_94.Fields
  loc_1654947:     var_B0 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_E8.Item("POSBillMsg")), var_E8))))
  loc_165496D:     var_F0 = var_94.Fields.Item("AssignDeliveryMsg")
  loc_1654975:     var_E4 = CVar(var_F0) 'Address
  loc_165497E:     var_100 = CVar(Proc_6_38_E68A98(var_E4)) 'String
  loc_165498D:     var_B4 = CStr(Trim(var_100))
  loc_165499C:   End If
  loc_16549A4:   If (arg_10 = "Assign Delivery") Then
  loc_16549AA:     var_A4 = var_B4
  loc_16549B3:     var_128 = 0
  loc_16549D0:     var_C0 = "Select IsNull(Max(GuestMsg),'') from EmailSMSForward WHERE Type='Assign Delivery' And FlagType='POS' And DepartCode='" & arg_14
  loc_16549EE:     unk_430AEB.Execute var_C0 & "' And LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E4, -1
  loc_16549F6:     var_E8 = var_E8.Fields
  loc_16549FE:     var_128 = var_F0.Item(var_F0)
  loc_1654A06:     var_12C = var_12C.Value
  loc_1654A0F:     var_8C = CStr(var_100)
  loc_1654A30:   Else
  loc_1654A33:     var_A4 = var_B0
  loc_1654A3C:     var_128 = 0
  loc_1654A59:     var_C0 = "Select IsNull(Max(GuestMsg),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & arg_14
  loc_1654A77:     unk_430AEB.Execute var_C0 & "' And LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E4, -1
  loc_1654A7F:     var_E8 = var_E8.Fields
  loc_1654A87:     var_128 = var_F0.Item(var_F0)
  loc_1654A8F:     var_12C = var_12C.Value
  loc_1654A98:     var_8C = CStr(var_100)
  loc_1654AB6:   End If
  loc_1654AD4:   If CBool(Trim(var_8C) <> vbNullString) Then
  loc_1654ADA:     var_A4 = var_8C
  loc_1654ADD:   End If
  loc_1654AE7:   If (Len(var_A4) <> 0) Then
  loc_1654B36:     var_A4 = Replace(var_A4, "<Outlet Title>", CStr(Trim(CVar(var_88.Fields.Item("DEPARTNAME")))), 1, -1, 0)
  loc_1654B71:     var_100 = "dd/mm/yy"
  loc_1654BA7:     var_A4 = Replace(var_A4, "<Bill Date>", CStr(Format(CVar(var_88.Fields.Item("VDate")), var_100)), 1, -1, 0)
  loc_1654C02:     var_A4 = Replace(var_A4, "<Bill Number>", CStr(var_88.Fields.Item("BillNo").Value), 1, -1, 0)
  loc_1654C5D:     var_A4 = Replace(var_A4, "<Mobile Number>", Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), 1, 1), 1, -1, 0)
  loc_1654C93:     Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("DiscAmt")), var_100)
  loc_1654CD9:     var_A4 = Replace(var_A4, "<Disc Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1654D13:     Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("BillAmt")), 1)
  loc_1654D59:     var_A4 = Replace(var_A4, "<Bill Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1654D9C:     var_A4 = Replace(var_A4, "<Item Detail>", Proc_233_18_FB24BC(arg_C, 1, 1) & "D", 1, -1, 0)
  loc_1654DC3:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty>", 0) <> 0)) Then
  loc_1654DC9:       var_B8 = "<Item-Qty>"
  loc_1654DCF:     Else
  loc_1654DEC:       var_A4 = Replace(var_A4, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_1654DEF:     End If
  loc_1654E10:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_1654E16:       var_B8 = "<Item-Qty-Rate>"
  loc_1654E1C:     Else
  loc_1654E39:       var_A4 = Replace(var_A4, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_1654E3C:     End If
  loc_1654E5D:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_1654E63:       var_B8 = "<Item-Qty-Amt>"
  loc_1654E69:     Else
  loc_1654E86:       var_A4 = Replace(var_A4, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_1654E89:     End If
  loc_1654EB4:     var_A4 = Replace(var_A4, var_B8, Proc_233_17_119F3C4(arg_C, var_B8, 1), 1, -1, 0)
  loc_1654EB7:   End If
  loc_1654EFB:   If (var_100 And (Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), (Len(var_A4) <> 0)) <> vbNullString)) Then
  loc_1654F1D:     var_E8 = var_88.Fields
  loc_1654F3A:     var_C4 = -1 & Proc_6_38_E68A98(CVar(var_E8.Item("MobileNo")), "Select Name,Add1,CityName from guestprof Where MobileNo='", var_100)
  loc_1654F41:     var_114 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), 1, 1) & "' And Code In (Select Distinct CustCode From GuestReward)"
  loc_1654F4A:     unk_430AEB.Execute var_114, var_12C, var_E8
  loc_1654F55:     Set var_98 = var_12C
  loc_1654F83:     If (var_98.RecordCount > 0) Then
  loc_1654FAE:       var_A8 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Name")))
  loc_1655002:       var_A4 = Replace(var_A4, "<Guest Full Name>", Proc_6_38_E68A98(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_1655021:       var_E8 = var_98.Fields
  loc_1655031:       var_E4 = CVar(var_E8.Item("Add1")) 'Address
  loc_1655099:       var_A4 = Replace(var_A4, "<Address>", Proc_6_38_E68A98(var_E4) & ", " & Proc_6_38_E68A98(CVar(var_98.Fields.Item("CityName"))), 1, -1, 0)
  loc_16550B9:     End If
  loc_16550B9:   End If
  loc_16550C1:   If (arg_10 = "Assign Delivery") Then
  loc_16550D8:     var_C0 = "Select AD.*,DB.Name From (AssignDelivery AD Left Join DeliveryBoy DB On AD.DeliBoy = DB.Code) Where AD.Site_Code='" & MemVar_1F92070
  loc_1655104:     unk_430AEB.Execute var_C0 & "' and (AD.LOGSITE_CODE='" & MemVar_1F92078 & "' or AD.LOGSITE_CODE='HO') and DocId='" & arg_C & "'", var_E4, -1
  loc_165510F:     Set var_98 = var_E8
  loc_165513B:     If (var_98.RecordCount = 1) Then
  loc_1655148:       If (Len(var_A4) <> 0) Then
  loc_1655196:         var_A4 = Replace(var_A4, "<Delivery Boy>", Proc_6_38_E68A98(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_1655207:         var_A4 = Replace(var_A4, "<Assign DateTime>", CStr(Format(CVar(var_98.Fields.Item("DDate")), "dd/mm/yy hh:nn")), 1, -1, 0)
  loc_1655264:         var_A4 = Replace(var_A4, "<Assign Remark>", Proc_6_38_E68A98(CVar(var_98.Fields.Item("Remark")), 1), 1, -1, 0)
  loc_1655274:       End If
  loc_1655274:     End If
  loc_1655274:   End If
  loc_165529C:   var_A0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), 1)
  loc_16552B8:   If ((Len(var_A0) >= &HA) And (arg_C <> vbNullString)) Then
  loc_16552FA:     If (Len(var_A4) <> 0) Then
  loc_1655317:       var_F0 = var_88.Fields.Item("BillNo")
  loc_165531F:       var_E4 = var_F0.Value
  loc_1655346:       var_100 = var_88.Fields.Item("CustCode").Value
  loc_165536D:       var_110 = var_88.Fields.Item("U_Name").Value
  loc_1655394:       var_13C = var_88.Fields.Item("BillAmt").Value
  loc_16553A7:       var_118 = vbNullString
  loc_16553E2:       Proc_233_5_11B7494(arg_C, CStr(Trim(Mid(arg_C, 4, 5))), CLng(var_E4), 1, CStr(var_100), var_A0, vbNullString)
  loc_1655410:     End If
  loc_1655410:   End If
  loc_1655410: End If
  loc_1655418: If (arg_10 = "Outlet Bill") Then
  loc_1655421:   var_128 = 0
  loc_165543E:   var_C0 = "Select IsNull(Max(MobileNo),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & MemVar_1F92078
  loc_165545C:   unk_430AEB.Execute var_C0 & "RS' And LOGSITE_CODE='" & MemVar_1F92078 & "'", var_E4, -1
  loc_1655464:   var_E8 = var_E8.Fields
  loc_165546C:   var_128 = var_F0.Item(var_F0)
  loc_1655474:   var_12C = var_12C.Value
  loc_165547D:   var_A0 = CStr(var_100)
  loc_16554A1:   var_128 = 0
  loc_16554C5:   var_C4 = "Select IsNull(Max(TxtMsg),'') from EmailSMSForward WHERE Type='Outlet Bill' And FlagType='POS' And DepartCode='" & arg_14 & "' And LOGSITE_CODE='"
  loc_16554D3:   var_118 = var_C4 & MemVar_1F92078 & "'"
  loc_16554DC:   unk_430AEB.Execute var_118, var_E4, -1
  loc_16554E4:   var_E8 = var_E8.Fields
  loc_16554EC:   var_128 = var_F0.Item(var_F0)
  loc_16554F4:   var_12C = var_12C.Value
  loc_16554FD:   var_8C = CStr(var_100)
  loc_1655526:   var_E4 = Trim(var_8C)
  loc_1655546:   var_110 = (var_E4 <> vbNullString) And (Len(var_A0) >= &HA)
  loc_1655553:   If CBool(var_110) Then
  loc_1655559:     var_A4 = var_8C
  loc_165555C:   End If
  loc_1655566:   If (Len(var_A4) <> 0) Then
  loc_165558D:     unk_430AEB.Execute "Select MobileNo From GuestReward Where DocId='" & arg_C & "'", var_E4, -1
  loc_1655598:     Set var_88 = var_E8
  loc_16555BC:     If (var_88.RecordCount = 1) Then
  loc_16555CE:       var_E8 = var_88.Fields
  loc_165560A:       var_A4 = Replace(var_A4, "<Mobile Number>", Proc_6_38_E68A98(CVar(var_E8.Item("MobileNo")), var_E8, var_100, var_100, var_A4), 1, -1, 0)
  loc_165561D:     Else
  loc_165563A:       var_A4 = Replace(var_A4, "<Mobile Number>", vbNullString, 1, -1, 0)
  loc_165563D:     End If
  loc_1655651:     If (var_88.RecordCount = 1) Then
  loc_165568C:       var_C0 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), "Select Name,Add1,CityName from guestprof Where MobileNo='", var_100, -1, var_12C)
  loc_1655697:       var_114 = CStr(var_110) & Proc_6_38_E68A98(CVar(var_88.Fields.Item("MobileNo")), var_88.Fields, var_100, var_100, var_A4) & "' And Code In (Select Distinct CustCode From GuestReward)"
  loc_16556A0:       unk_430AEB.Execute var_114, var_A8, var_118
  loc_16556AB:       Set var_98 = var_12C
  loc_16556D9:       If (var_98.RecordCount > 0) Then
  loc_1655704:         var_A8 = Proc_6_38_E68A98(CVar(var_98.Fields.Item("Name")), CSng(var_13C))
  loc_1655758:         var_A4 = Replace(var_A4, "<Guest Full Name>", Proc_6_38_E68A98(CVar(var_98.Fields.Item("Name"))), 1, -1, 0)
  loc_1655777:         var_E8 = var_98.Fields
  loc_1655787:         var_E4 = CVar(var_E8.Item("Add1")) 'Address
  loc_16557EF:         var_A4 = Replace(var_A4, "<Address>", Proc_6_38_E68A98(var_E4) & ", " & Proc_6_38_E68A98(CVar(var_98.Fields.Item("CityName"))), 1, -1, 0)
  loc_1655812:       Else
  loc_165582F:         var_A4 = Replace(var_A4, "<Guest Full Name>", vbNullString, 1, -1, 0)
  loc_165584F:         var_A4 = Replace(var_A4, "<Address>", vbNullString, 1, -1, 0)
  loc_1655852:       End If
  loc_1655852:     End If
  loc_1655876:     unk_430AEB.Execute "Select Top 1 PayType from PayCharge where DocId='" & arg_C & "' Order By SNo", var_E4, -1
  loc_1655881:     Set var_88 = var_E8
  loc_16558A5:     If (var_88.RecordCount = 1) Then
  loc_16558B7:       var_E8 = var_88.Fields
  loc_16558C7:       var_E4 = CVar(var_E8.Item("PayType")) 'Address
  loc_16558F3:       var_A4 = Replace(var_A4, "<Payment Type>", Proc_6_38_E68A98(var_E4, var_E8), 1, -1, 0)
  loc_1655903:     End If
  loc_1655917:     var_C0 = "Select D.Name DEPARTNAME,S1.VType,S1.VDate,S1.VNo,S1.DiscAmt,S1.NetAmt,S1.U_Name,S1.RoomNo From Sale1 S1 Left Join Depart D On S1.Restcode=D.Code Where DocId='" & arg_C
  loc_1655927:     unk_430AEB.Execute var_C0 & "'", var_E4, -1
  loc_1655932:     Set var_88 = var_E8
  loc_1655956:     If (var_88.RecordCount = 1) Then
  loc_16559A5:       var_A4 = Replace(var_A4, "<Outlet Title>", CStr(Trim(CVar(var_88.Fields.Item("DEPARTNAME")))), 1, -1, 0)
  loc_1655A16:       var_A4 = Replace(var_A4, "<Bill Date>", CStr(Format(CVar(var_88.Fields.Item("VDate")), "dd/mm/yy")), 1, -1, 0)
  loc_1655A75:       var_100 = var_88.Fields.Item("VNo").Value
  loc_1655AAD:       var_A4 = Replace(var_A4, "<Bill Number>", Proc_6_38_E68A98(CVar(var_88.Fields.Item("vType")), 1, 1) & "/" & CStr(var_100), 1, -1, 0)
  loc_1655AF3:       Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("DiscAmt")))
  loc_1655B39:       var_A4 = Replace(var_A4, "<Disc Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1655B73:       Proc_6_39_E7C810(var_100, CVar(var_88.Fields.Item("NetAmt")), 1)
  loc_1655BB9:       var_A4 = Replace(var_A4, "<Bill Amount>", CStr(Format(var_100, "0.00")), 1, -1, 0)
  loc_1655C18:       var_A4 = Replace(var_A4, "<Table Number>", Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoomNo")), 1, 1), 1, -1, 0)
  loc_1655C28:     End If
  loc_1655C57:     var_A4 = Replace(var_A4, "<Item Detail>", Proc_233_18_FB24BC(arg_C, 1) & "D", 1, -1, 0)
  loc_1655C7E:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty>", 0) <> 0)) Then
  loc_1655C84:       var_B8 = "<Item-Qty>"
  loc_1655C8A:     Else
  loc_1655CA7:       var_A4 = Replace(var_A4, "<Item-Qty>", vbNullString, 1, -1, 0)
  loc_1655CAA:     End If
  loc_1655CCB:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Rate>", 0) <> 0)) Then
  loc_1655CD1:       var_B8 = "<Item-Qty-Rate>"
  loc_1655CD7:     Else
  loc_1655CF4:       var_A4 = Replace(var_A4, "<Item-Qty-Rate>", vbNullString, 1, -1, 0)
  loc_1655CF7:     End If
  loc_1655D18:     If ((var_B8 = vbNullString) And (InStr(1, var_A4, "<Item-Qty-Amt>", 0) <> 0)) Then
  loc_1655D1E:       var_B8 = "<Item-Qty-Amt>"
  loc_1655D24:     Else
  loc_1655D41:       var_A4 = Replace(var_A4, "<Item-Qty-Amt>", vbNullString, 1, -1, 0)
  loc_1655D44:     End If
  loc_1655D6F:     var_A4 = Replace(var_A4, var_B8, Proc_233_17_119F3C4(arg_C, var_B8), 1, -1, 0)
  loc_1655D85:     If ((Len(var_A0) >= &HA) And (arg_C <> vbNullString)) Then
  loc_1655DC7:       If (Len(var_A4) <> 0) Then
  loc_1655E13:         var_100 = var_88.Fields.Item("U_Name").Value
  loc_1655E3A:         var_110 = var_88.Fields.Item("NetAmt").Value
  loc_1655E4D:         var_118 = vbNullString
  loc_1655E89:         Proc_233_5_11B7494(arg_C, CStr(Trim(Mid(arg_C, 4, 5))), CLng(var_88.Fields.Item("VNo").Value), 1, vbNullString, var_A0, vbNullString, var_A4)
  loc_1655EB1:       End If
  loc_1655EB1:     End If
  loc_1655EB1:   End If
  loc_1655EB1: End If
  loc_1655EB6: Set var_88 = Nothing
  loc_1655EBE: Set var_94 = Nothing
  loc_1655EC6: Set var_98 = Nothing
  loc_1655EC9: Exit Sub
End Sub

Public Sub Proc_233_17_119F3C4(arg_C, arg_10) '119F3C4
  'Data Table: 430AD8
  Dim var_94 As String
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_168 As Variant
  Dim var_178 As String
  Dim var_188 As Variant
  Dim var_200 As Variant
  Dim var_220 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  loc_119F028: var_94 = "Select MAX(S.SNO)AS SRNO,MAX(S.TAXPER) AS TAXPER,Sum(S.TAXAMT) AS TAXAMT,S.RATE,Max(S.Remarks) As Remarks,MAX(S.ItemRate) AS ItemRate,SUM(S.QTYISS) AS QTY,SUM(S.AMOUNT) AS AMT,MAX(I.NAME) AS ITEMNAME,MAX(I.DISPCODE) As DISPCODE,Case When SUM(S.TAXAMT)=0 THEN SUM(S.AMOUNT) ELSE 0 END AS NONTAXABLE,Case When SUM(S.TAXAMT)<>0 THEN SUM(S.AMOUNT) ELSE 0 END AS TAXABLE,Max(S.Unit) As UNIT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_119F03F: unk_430AEB.Execute var_94 & arg_C & "' GROUP BY S.ITEM,S.RATE ORDER BY MAX(I.NAME) ", var_BC, -1
  loc_119F04A: Set var_8C = var_C0
  loc_119F070: If (var_8C.RecordCount > 0) Then
  loc_119F076:   var_90 = "D"
  loc_119F079:   ' Referenced from: 119F3B0
  loc_119F088:   If Not(var_8C.EOF) Then
  loc_119F08E:     var_CC = arg_10
  loc_119F099:     If (var_CC = "<Item-Qty>") Then
  loc_119F0CC:       var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F0D0:       var_100 = " - "
  loc_119F0D5:       var_110 = (var_F0 + var_100)
  loc_119F0FF:       Proc_6_39_E7C810(var_148, CVar(var_8C.Fields.Item("qty")))
  loc_119F10C:       var_168 = (var_110 + CVar(CStr(var_148)))
  loc_119F115:       var_188 = (var_168 + "%0D")
  loc_119F11A:       var_90 = CStr(var_188)
  loc_119F13E:     Else
  loc_119F146:       If (var_CC = "<Item-Qty-Rate>") Then
  loc_119F16F:         Proc_6_39_E7C810(var_1C0, CVar(var_8C.Fields.Item("ItemRate")))
  loc_119F1A4:         var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F1A8:         var_100 = " - "
  loc_119F1AD:         var_110 = (var_F0 + var_100)
  loc_119F1D7:         Proc_6_39_E7C810(var_148, CVar(var_8C.Fields.Item("qty")))
  loc_119F1E4:         var_168 = (var_110 + CVar(CStr(var_148)))
  loc_119F1E8:         var_178 = " - "
  loc_119F1ED:         var_188 = (var_168 + "%0D")
  loc_119F20C:         var_1F0 = Format(var_1C0, "0.00")
  loc_119F214:         var_200 = (1 + var_1F0)
  loc_119F21D:         var_220 = (var_200 + "%0D")
  loc_119F222:         var_90 = CStr(var_220)
  loc_119F254:       Else
  loc_119F25C:         If (var_CC = "<Item-Qty-Amt>") Then
  loc_119F285:           Proc_6_39_E7C810(var_1C0, CVar(var_8C.Fields.Item("qty")), 1)
  loc_119F2B0:           Proc_6_39_E7C810(var_1F0, CVar(var_8C.Fields.Item("ItemRate")))
  loc_119F2E5:           var_F0 = (CVar(var_90) + var_8C.Fields.Item("ItemName").Value)
  loc_119F2E9:           var_100 = " - "
  loc_119F2EE:           var_110 = (var_F0 + var_100)
  loc_119F318:           Proc_6_39_E7C810(var_148, CVar(var_8C.Fields.Item("qty")), var_110)
  loc_119F325:           var_168 = (var_188 + CVar(CStr(var_148)))
  loc_119F329:           var_178 = " - "
  loc_119F32E:           var_188 = (var_168 + "%0D")
  loc_119F363:           var_258 = (1 + Format((var_1C0 * var_1F0), "0.00"))
  loc_119F36C:           var_278 = (var_258 + "%0D")
  loc_119F371:           var_90 = CStr(var_278)
  loc_119F3A8:         End If
  loc_119F3A8:       End If
  loc_119F3A8:     End If
  loc_119F3AB:     var_8C.MoveNext
  loc_119F3B0:     GoTo loc_119F079
  loc_119F3B3:   End If
  loc_119F3B3: End If
  loc_119F3B6: var_88 = var_90
  loc_119F3BE: Set var_8C = Nothing
  loc_119F3C1: Exit Sub
End Sub

Public Sub Proc_233_18_FB24BC(arg_C) 'FB24BC
  'Data Table: 430AD8
  Dim var_98 As String
  Dim unk_430AEB As Connection15
  Dim var_8C As Recordset15
  Dim var_C4 As Fields15
  Dim var_C0 As Variant
  Dim var_92 As Integer
  Dim var_F0 As Variant
  loc_FB2358: var_98 = "Select S.SNO,I.NAME AS ITEMNAME,S.AMOUNT From Stock S LEFT JOIN ITEMMAST I ON I.CODE=S.ITEM And S.ItemRestCode=I.RestCode " & " Where S.DocID='"
  loc_FB236F: unk_430AEB.Execute var_98 & arg_C & "' ORDER BY S.SNO ", var_C0, -1
  loc_FB237A: Set var_8C = var_C4
  loc_FB23A0: If (var_8C.RecordCount > 0) Then
  loc_FB23A6:   var_8C.MoveFirst
  loc_FB23F6:   var_90 = Replace(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("ItemName"))), "&", vbNullString, 1, -1, 0)
  loc_FB2409:   var_8C.MoveNext
  loc_FB2410:   var_92 = 0
  loc_FB2413:   ' Referenced from: FB2436
  loc_FB2422:   If Not(var_8C.EOF) Then
  loc_FB242B:     var_92 = (var_92 + 1)
  loc_FB2431:     var_8C.MoveNext
  loc_FB2436:     GoTo loc_FB2413
  loc_FB2439:   End If
  loc_FB2456:   var_F0 = (Left(var_90, &H18) + "...")
  loc_FB249A:   var_88 = CStr(IIf((Len(var_90) <= &H1B), var_90, var_F0) & " And " & CVar(CStr(var_92)) & " More")
  loc_FB24B0: End If
  loc_FB24B5: Set var_8C = Nothing
  loc_FB24B8: Exit Sub
End Sub
