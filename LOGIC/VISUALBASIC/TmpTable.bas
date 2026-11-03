
Public Sub Proc_3_0_F9E6F4(arg_C) 'F9E6F4
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_F9E573: Set var_8C = arg_C 
  loc_F9E59B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_F9E5C7: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_F9E5F3: var_8C.Fields.Append "V_NO", 3, &HB
  loc_F9E61F: var_8C.Fields.Append "PARTY_CODE", 3, &HB
  loc_F9E64B: var_8C.Fields.Append "CR", 5, &H13
  loc_F9E677: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_F9E6A3: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_F9E6B3: var_8C.CursorType = 3
  loc_F9E6C0: var_8C.LockType = 3
  loc_F9E6DF: var_8C.Open var_A0, var_B0, -1
  loc_F9E6E6: Set var_8C = Nothing 
  loc_F9E6ED: Set var_88 = arg_C 
  loc_F9E6F1: Exit Sub
End Sub

Public Sub Proc_3_1_FB659C(arg_C) 'FB659C
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FB63EF: Set var_8C = arg_C 
  loc_FB6417: var_8C.Fields.Append "V_DATE", 7, 0
  loc_FB6443: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_FB646F: var_8C.Fields.Append "V_NO", 3, &HB
  loc_FB649B: var_8C.Fields.Append "PARTY_CODE", 3, &HB
  loc_FB64C7: var_8C.Fields.Append "DR", 5, &H13
  loc_FB64F3: var_8C.Fields.Append "AMTADJ", 5, &H13
  loc_FB651F: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_FB654B: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_FB655B: var_8C.CursorType = 3
  loc_FB6568: var_8C.LockType = 3
  loc_FB6587: var_8C.Open var_A0, var_B0, -1
  loc_FB658E: Set var_8C = Nothing 
  loc_FB6595: Set var_88 = arg_C 
  loc_FB6599: Exit Sub
End Sub

Public Sub Proc_3_2_F57F14(arg_C) 'F57F14
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_F57DEB: Set var_8C = arg_C 
  loc_F57E13: var_8C.Fields.Append "START_DATE", 7, 0
  loc_F57E3F: var_8C.Fields.Append "END_DATE", 7, 0
  loc_F57E6B: var_8C.Fields.Append "TYPE", &H81, &HF
  loc_F57E97: var_8C.Fields.Append "ACC", 3, &HB
  loc_F57EC3: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_F57ED3: var_8C.CursorType = 3
  loc_F57EE0: var_8C.LockType = 3
  loc_F57EFF: var_8C.Open var_A0, var_B0, -1
  loc_F57F06: Set var_8C = Nothing 
  loc_F57F0D: Set var_88 = arg_C 
  loc_F57F11: Exit Sub
End Sub

Public Sub Proc_3_3_1159120(arg_C) '1159120
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1158D63: Set var_8C = arg_C 
  loc_1158D8B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1158DB7: var_8C.Fields.Append "V_NO", 3, &HA
  loc_1158DE3: var_8C.Fields.Append "V_TYPE", &HC8, 5
  loc_1158E0F: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_1158E3B: var_8C.Fields.Append "V_ADD", &HC8, 5
  loc_1158E67: var_8C.Fields.Append "CR", 5, &H13
  loc_1158E93: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_1158EBF: var_8C.Fields.Append "SUBCODE", 3, &HB
  loc_1158EEB: var_8C.Fields.Append "NAME", &HC8, &H2F
  loc_1158F17: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_1158F43: var_8C.Fields.Append "VTYPE", &HC8, 5
  loc_1158F6F: var_8C.Fields.Append "VNO", 3, &HB
  loc_1158F9B: var_8C.Fields.Append "VADD", &HC8, 5
  loc_1158FC7: var_8C.Fields.Append "VSNO", 3, 6
  loc_1158FF3: var_8C.Fields.Append "VAL", &HC8, 2
  loc_115901F: var_8C.Fields.Append "NARRATION1", &HC8, &H96
  loc_115904B: var_8C.Fields.Append "NARRATION2", &HC8, &H96
  loc_1159077: var_8C.Fields.Append "NARRATION3", &HC8, &H96
  loc_11590A3: var_8C.Fields.Append "NAME1", &HC8, &H2F
  loc_11590CF: var_8C.Fields.Append "ADDRESS1", &HC8, &H32
  loc_11590DF: var_8C.CursorType = 3
  loc_11590EC: var_8C.LockType = 3
  loc_115910B: var_8C.Open var_A0, var_B0, -1
  loc_1159112: Set var_8C = Nothing 
  loc_1159119: Set var_88 = arg_C 
  loc_115911D: Exit Sub
End Sub

Public Sub Proc_3_4_1218B58(arg_C) '1218B58
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1218667: Set var_8C = arg_C 
  loc_121868F: var_8C.Fields.Append "V_DATE", 7, 0
  loc_12186BB: var_8C.Fields.Append "V_NO", 3, &HA
  loc_12186E7: var_8C.Fields.Append "V_TYPE", &H81, 5
  loc_1218713: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_121873F: var_8C.Fields.Append "V_ADD", &H81, 5
  loc_121876B: var_8C.Fields.Append "VNO", 3, &HA
  loc_1218797: var_8C.Fields.Append "VTYPE", &H81, 5
  loc_12187C3: var_8C.Fields.Append "VSNO", 3, &HB
  loc_12187EF: var_8C.Fields.Append "VADD", &H81, 5
  loc_121881B: var_8C.Fields.Append "V_NO1", 3, &HA
  loc_1218847: var_8C.Fields.Append "V_TYPE1", &H81, 5
  loc_1218873: var_8C.Fields.Append "V_SNO1", 3, &HB
  loc_121889F: var_8C.Fields.Append "V_ADD1", &H81, 5
  loc_12188CB: var_8C.Fields.Append "CR", 5, &H13
  loc_12188F7: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_1218923: var_8C.Fields.Append "SUBCODE", &H81, &HA
  loc_121894F: var_8C.Fields.Append "NAME", &H81, &H32
  loc_121897B: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_12189A7: var_8C.Fields.Append "VAL", &H81, 2
  loc_12189D3: var_8C.Fields.Append "NAME1", &H81, &H32
  loc_12189FF: var_8C.Fields.Append "ADDRESS1", &H81, &H96
  loc_1218A2B: var_8C.Fields.Append "NARRATION1", &H81, &H96
  loc_1218A57: var_8C.Fields.Append "NARRATION2", &H81, &H96
  loc_1218A83: var_8C.Fields.Append "SNAME", &H81, &HF
  loc_1218AAF: var_8C.Fields.Append "CITY_NAME", &H81, &H32
  loc_1218ADB: var_8C.Fields.Append "GRNAME", &H81, &H32
  loc_1218B07: var_8C.Fields.Append "GRCODE", &H81, 4
  loc_1218B17: var_8C.CursorType = 3
  loc_1218B24: var_8C.LockType = 3
  loc_1218B43: var_8C.Open var_A0, var_B0, -1
  loc_1218B4A: Set var_8C = Nothing 
  loc_1218B51: Set var_88 = arg_C 
  loc_1218B55: Exit Sub
End Sub

Public Sub Proc_3_5_10CF140(arg_C) '10CF140
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10CEE33: Set var_8C = arg_C 
  loc_10CEE5B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_10CEE87: var_8C.Fields.Append "V_NO", 3, &HA
  loc_10CEEB3: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_10CEEDF: var_8C.Fields.Append "V_SNO", 3, &HB
  loc_10CEF0B: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_10CEF37: var_8C.Fields.Append "VDATE", 7, 0
  loc_10CEF63: var_8C.Fields.Append "VNO", 3, &HA
  loc_10CEF8F: var_8C.Fields.Append "VTYPE", &H81, 2
  loc_10CEFBB: var_8C.Fields.Append "VSNO", 3, &HB
  loc_10CEFE7: var_8C.Fields.Append "VADD", &H81, 1
  loc_10CF013: var_8C.Fields.Append "CR", 5, &H13
  loc_10CF03F: var_8C.Fields.Append "ADJAMT", 5, &H13
  loc_10CF06B: var_8C.Fields.Append "SUBCODE", 3, &HB
  loc_10CF097: var_8C.Fields.Append "NAME", &H81, &H23
  loc_10CF0C3: var_8C.Fields.Append "ADJQTY", 5, &H13
  loc_10CF0EF: var_8C.Fields.Append "VAL", &H81, 2
  loc_10CF0FF: var_8C.CursorType = 3
  loc_10CF10C: var_8C.LockType = 3
  loc_10CF12B: var_8C.Open var_A0, var_B0, -1
  loc_10CF132: Set var_8C = Nothing 
  loc_10CF139: Set var_88 = arg_C 
  loc_10CF13D: Exit Sub
End Sub

Public Sub Proc_3_6_1085B24(arg_C) '1085B24
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_108586F: Set var_8C = arg_C 
  loc_1085897: var_8C.Fields.Append "MONTH", 3, &HA
  loc_10858C3: var_8C.Fields.Append "V_DATE", 7, 0
  loc_10858EF: var_8C.Fields.Append "SALE_PCS", 3, &HA
  loc_108591B: var_8C.Fields.Append "SALE_MTR", 5, &H13
  loc_1085947: var_8C.Fields.Append "SALE_VALUE", 5, &H13
  loc_1085973: var_8C.Fields.Append "SALE_RET_PCS", 3, &HA
  loc_108599F: var_8C.Fields.Append "SALE_RET_MTR", 5, &H13
  loc_10859CB: var_8C.Fields.Append "SALE_RET_VALUE", 5, &H13
  loc_10859F7: var_8C.Fields.Append "PURCH_PCS", 3, &HA
  loc_1085A23: var_8C.Fields.Append "PURCH_MTR", 5, &H13
  loc_1085A4F: var_8C.Fields.Append "PURCH_VALUE", 5, &H13
  loc_1085A7B: var_8C.Fields.Append "PURCH_RET_PCS", 3, &HA
  loc_1085AA7: var_8C.Fields.Append "PURCH_RET_MTR", 5, &H13
  loc_1085AD3: var_8C.Fields.Append "PURCH_RET_VALUE", 5, &H13
  loc_1085AE3: var_8C.CursorType = 3
  loc_1085AF0: var_8C.LockType = 3
  loc_1085B0F: var_8C.Open var_A0, var_B0, -1
  loc_1085B16: Set var_8C = Nothing 
  loc_1085B1D: Set var_88 = arg_C 
  loc_1085B21: Exit Sub
End Sub

Public Sub Proc_3_7_123F0F0(arg_C) '123F0F0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_123EBA7: Set var_8C = arg_C 
  loc_123EBCF: var_8C.Fields.Append "V_DATE", 7, 0
  loc_123EBFB: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_123EC27: var_8C.Fields.Append "V_NO", 3, &HA
  loc_123EC53: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_123EC7F: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_123ECAB: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_123ECD7: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_123ED03: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_123ED2F: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_123ED5B: var_8C.Fields.Append "CR", 5, &H13
  loc_123ED87: var_8C.Fields.Append "DR", 5, &H13
  loc_123EDB3: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_123EDDF: var_8C.Fields.Append "BAL_TYPE", &H81, 3
  loc_123EE0B: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_123EE37: var_8C.Fields.Append "interest", 5, &H13
  loc_123EE63: var_8C.Fields.Append "DR1", 5, &H13
  loc_123EE8F: var_8C.Fields.Append "ADDR", &H81, &H64
  loc_123EEBB: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_123EEE7: var_8C.Fields.Append "Party_Bill_Date", 7, 0
  loc_123EF13: var_8C.Fields.Append "DAYS", 3, &HA
  loc_123EF3F: var_8C.Fields.Append "AREACODE", 3, &HA
  loc_123EF6B: var_8C.Fields.Append "AREANAME", &H81, &H19
  loc_123EF97: var_8C.Fields.Append "CITYCODE", 3, &HA
  loc_123EFC3: var_8C.Fields.Append "CITYNAME", &H81, &H15
  loc_123EFEF: var_8C.Fields.Append "BROKER_CODE", 3, &HA
  loc_123F01B: var_8C.Fields.Append "BROKER_NAME", &H81, &H32
  loc_123F047: var_8C.Fields.Append "SL", 3, 0
  loc_123F073: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_123F09F: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_123F0AF: var_8C.CursorType = 3
  loc_123F0BC: var_8C.LockType = 3
  loc_123F0DB: var_8C.Open var_A0, var_B0, -1
  loc_123F0E2: Set var_8C = Nothing 
  loc_123F0E9: Set var_88 = arg_C 
  loc_123F0ED: Exit Sub
End Sub

Public Sub Proc_3_8_1137374(arg_C) '1137374
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1136FE3: Set var_8C = arg_C 
  loc_113700B: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1137037: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_1137063: var_8C.Fields.Append "V_NO", 3, &HA
  loc_113708F: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_11370BB: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_11370E7: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_1137113: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_113713F: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_113716B: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_1137197: var_8C.Fields.Append "CR", 5, &H13
  loc_11371C3: var_8C.Fields.Append "DR", 5, &H13
  loc_11371EF: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_113721B: var_8C.Fields.Append "BAL_TYPE", &H81, 3
  loc_1137247: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_1137273: var_8C.Fields.Append "interest", 5, &H13
  loc_113729F: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_11372CB: var_8C.Fields.Append "DAYS", 3, &HA
  loc_11372F7: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_1137323: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_1137333: var_8C.CursorType = 3
  loc_1137340: var_8C.LockType = 3
  loc_113735F: var_8C.Open var_A0, var_B0, -1
  loc_1137366: Set var_8C = Nothing 
  loc_113736D: Set var_88 = arg_C 
  loc_1137371: Exit Sub
End Sub

Public Sub Proc_3_9_12552AC(arg_C) '12552AC
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_1254D37: Set var_8C = arg_C 
  loc_1254D5F: var_8C.Fields.Append "PARTY_CODE", 3, &HA
  loc_1254D8B: var_8C.Fields.Append "PARTY_NAME", &H81, &H32
  loc_1254DB7: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_1254DE3: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_1254E0F: var_8C.Fields.Append "ADD3", &H81, &H23
  loc_1254E3B: var_8C.Fields.Append "ADD4", &H81, &H23
  loc_1254E67: var_8C.Fields.Append "V_DATE", 7, 0
  loc_1254E93: var_8C.Fields.Append "V_TYPE", &H81, 3
  loc_1254EBF: var_8C.Fields.Append "V_NO", 3, &HA
  loc_1254EEB: var_8C.Fields.Append "DR", 5, &H13
  loc_1254F17: var_8C.Fields.Append "V_DATE1", 7, 0
  loc_1254F43: var_8C.Fields.Append "V_TYPE1", &H81, 3
  loc_1254F6F: var_8C.Fields.Append "V_NO1", 3, &HA
  loc_1254F9B: var_8C.Fields.Append "CR", 5, &H13
  loc_1254FC7: var_8C.Fields.Append "DR_STAT", &H81, 1
  loc_1254FF3: var_8C.Fields.Append "interest", 5, &H13
  loc_125501F: var_8C.Fields.Append "interest1", 5, &H13
  loc_125504B: var_8C.Fields.Append "Party_Bill_No", &H81, &HF
  loc_1255077: var_8C.Fields.Append "Party_Bill_No1", &H81, &HF
  loc_12550A3: var_8C.Fields.Append "DAYS", 3, &HA
  loc_12550CF: var_8C.Fields.Append "DAYS1", 3, &HA
  loc_12550FB: var_8C.Fields.Append "AREACODE", 3, &HA
  loc_1255127: var_8C.Fields.Append "AREANAME", &H81, &H19
  loc_1255153: var_8C.Fields.Append "CITYCODE", 3, &HA
  loc_125517F: var_8C.Fields.Append "CITYNAME", &H81, &H15
  loc_12551AB: var_8C.Fields.Append "BROKER_CODE", 3, &HA
  loc_12551D7: var_8C.Fields.Append "BROKER_NAME", &H81, &H32
  loc_1255203: var_8C.Fields.Append "comp_name", &H81, &H32
  loc_125522F: var_8C.Fields.Append "Dhara", &H81, &HA
  loc_125525B: var_8C.Fields.Append "Dhara1", &H81, &HA
  loc_125526B: var_8C.CursorType = 3
  loc_1255278: var_8C.LockType = 3
  loc_1255297: var_8C.Open var_A0, var_B0, -1
  loc_125529E: Set var_8C = Nothing 
  loc_12552A5: Set var_88 = arg_C 
  loc_12552A9: Exit Sub
End Sub

Public Sub Proc_3_10_FFC438(arg_C) 'FFC438
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFC233: Set var_8C = arg_C 
  loc_FFC25B: var_8C.Fields.Append "Sr_No", 3, &HA
  loc_FFC287: var_8C.Fields.Append "Sr_No1", 3, &HA
  loc_FFC2B3: var_8C.Fields.Append "Pcs", 5, &H13
  loc_FFC2DF: var_8C.Fields.Append "Meters", 5, &H13
  loc_FFC30B: var_8C.Fields.Append "DISC_NAME1", &H81, &HF
  loc_FFC337: var_8C.Fields.Append "DISC_CODE1", 3, &HA
  loc_FFC363: var_8C.Fields.Append "DISC_RATE1", 5, &H13
  loc_FFC38F: var_8C.Fields.Append "DISC_CODE2", 3, &HA
  loc_FFC3BB: var_8C.Fields.Append "DISC_RATE2", 5, &H13
  loc_FFC3E7: var_8C.Fields.Append "DISC_NAME2", &H81, &HF
  loc_FFC3F7: var_8C.CursorType = 3
  loc_FFC404: var_8C.LockType = 3
  loc_FFC423: var_8C.Open var_A0, var_B0, -1
  loc_FFC42A: Set var_8C = Nothing 
  loc_FFC431: Set var_88 = arg_C 
  loc_FFC435: Exit Sub
End Sub

Public Sub Proc_3_11_12007A0(arg_C) '12007A0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_12002DB: Set var_8C = arg_C 
  loc_1200303: var_8C.Fields.Append "CR", 5, &H13
  loc_120032F: var_8C.Fields.Append "CL_DR", 5, &H13
  loc_120035B: var_8C.Fields.Append "GRP_CODE", 3, &HA
  loc_1200387: var_8C.Fields.Append "S_NAME", &H81, &H23
  loc_12003B3: var_8C.Fields.Append "CL_CR", 5, &H13
  loc_12003DF: var_8C.Fields.Append "G_NAME", &H81, &H23
  loc_120040B: var_8C.Fields.Append "LAST_DR", 5, &H13
  loc_1200437: var_8C.Fields.Append "LAST_CR", 5, &H13
  loc_1200463: var_8C.Fields.Append "DRAMT", 5, &H13
  loc_120048F: var_8C.Fields.Append "GROUP_CODE", 3, &HA
  loc_12004BB: var_8C.Fields.Append "GR_CODE", 3, &HA
  loc_12004E7: var_8C.Fields.Append "G_TYPE", &H81, &HF
  loc_1200513: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_120053F: var_8C.Fields.Append "V_NO", 3, &HA
  loc_120056B: var_8C.Fields.Append "NET_AMT", 5, &H13
  loc_1200597: var_8C.Fields.Append "SALE_RETU", 5, &H13
  loc_12005C3: var_8C.Fields.Append "RECD", 5, &H13
  loc_12005EF: var_8C.Fields.Append "V_DATE", 7, 0
  loc_120061B: var_8C.Fields.Append "CODE", 3, &HA
  loc_1200647: var_8C.Fields.Append "NAME", &H81, &H23
  loc_1200673: var_8C.Fields.Append "OP_DR", 5, &H13
  loc_120069F: var_8C.Fields.Append "OP_CR", 5, &H13
  loc_12006CB: var_8C.Fields.Append "DR", 5, &H13
  loc_12006F7: var_8C.Fields.Append "OUR_GROUPCODE", &H81, 4
  loc_1200723: var_8C.Fields.Append "GrPrintSr", 3, &HA
  loc_120074F: var_8C.Fields.Append "PrintSr", 3, &HA
  loc_120075F: var_8C.CursorType = 3
  loc_120076C: var_8C.LockType = 3
  loc_120078B: var_8C.Open var_A0, var_B0, -1
  loc_1200792: Set var_8C = Nothing 
  loc_1200799: Set var_88 = arg_C 
  loc_120079D: Exit Sub
End Sub

Public Sub Proc_3_12_10AEEAC(arg_C) '10AEEAC
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10AEBCB: Set var_8C = arg_C 
  loc_10AEBF3: var_8C.Fields.Append "V_DATE", 7, 0
  loc_10AEC1F: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_10AEC4B: var_8C.Fields.Append "V_NO", 3, &HA
  loc_10AEC77: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_10AECA3: var_8C.Fields.Append "V_SNO", 3, &HA
  loc_10AECCF: var_8C.Fields.Append "SUBCODE", 3, &HA
  loc_10AECFB: var_8C.Fields.Append "NAME", &H81, &H23
  loc_10AED27: var_8C.Fields.Append "aMOUNT", 5, &H13
  loc_10AED53: var_8C.Fields.Append "CONTRASUB", 3, &HA
  loc_10AED7F: var_8C.Fields.Append "VAL", &H81, 2
  loc_10AEDAB: var_8C.Fields.Append "CHQ_NO", &H81, &HF
  loc_10AEDD7: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_10AEE03: var_8C.Fields.Append "CLG_DATE", 7, 0
  loc_10AEE2F: var_8C.Fields.Append "NARRATION", &H81, &H96
  loc_10AEE5B: var_8C.Fields.Append "CONTRANAME", &H81, &H23
  loc_10AEE6B: var_8C.CursorType = 3
  loc_10AEE78: var_8C.LockType = 3
  loc_10AEE97: var_8C.Open var_A0, var_B0, -1
  loc_10AEE9E: Set var_8C = Nothing 
  loc_10AEEA5: Set var_88 = arg_C 
  loc_10AEEA9: Exit Sub
End Sub

Public Sub Proc_3_13_12D2268(arg_C) '12D2268
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_12D1BBF: Set var_8C = arg_C 
  loc_12D1BE7: var_8C.Fields.Append "V_NUM", &H81, &HF
  loc_12D1C13: var_8C.Fields.Append "V_DATE", 7, 0
  loc_12D1C3F: var_8C.Fields.Append "ACC_TYPE", &H81, 2
  loc_12D1C6B: var_8C.Fields.Append "ACC_CODE", 3, &HA
  loc_12D1C97: var_8C.Fields.Append "ACC_CODENAME", &H81, &H23
  loc_12D1CC3: var_8C.Fields.Append "ACC", 3, &HA
  loc_12D1CEF: var_8C.Fields.Append "ACC_NAME", &H81, &H32
  loc_12D1D1B: var_8C.Fields.Append "NEGBAL", 5, &H13
  loc_12D1D47: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_12D1D73: var_8C.Fields.Append "NARRATION", &H81, &H96
  loc_12D1D9F: var_8C.Fields.Append "CHQ_DATE", 7, 0
  loc_12D1DCB: var_8C.Fields.Append "CHQ_NO", &H81, &HF
  loc_12D1DF7: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_12D1E23: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_12D1E4F: var_8C.Fields.Append "INTRST", 5, &H13
  loc_12D1E7B: var_8C.Fields.Append "CLG_DATE", 7, 0
  loc_12D1EA7: var_8C.Fields.Append "BALNAME", &H81, &H14
  loc_12D1ED3: var_8C.Fields.Append "START_DATE", 7, 0
  loc_12D1EFF: var_8C.Fields.Append "END_DATE", 7, 0
  loc_12D1F2B: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_12D1F57: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_12D1F83: var_8C.Fields.Append "CITY", &H81, &H15
  loc_12D1FAF: var_8C.Fields.Append "PIN", &H81, 6
  loc_12D1FDB: var_8C.Fields.Append "PRICE", 5, &H13
  loc_12D2007: var_8C.Fields.Append "REPORT_NAME", &H81, &H32
  loc_12D2033: var_8C.Fields.Append "OTHERS", 5, &H13
  loc_12D205F: var_8C.Fields.Append "NAMT", 5, &H13
  loc_12D208B: var_8C.Fields.Append "AGE", 5, &H13
  loc_12D20B7: var_8C.Fields.Append "inv_NO", &H81, &HF
  loc_12D20E3: var_8C.Fields.Append "v_no", 3, &HA
  loc_12D210F: var_8C.Fields.Append "V_SNO", 3, &HA
  loc_12D213B: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_12D2167: var_8C.Fields.Append "CONTRA_CODE", 3, &H13
  loc_12D2193: var_8C.Fields.Append "CONTRA_NAME", &H81, &H23
  loc_12D21BF: var_8C.Fields.Append "CONTRA_SUBCODE", 3, &HA
  loc_12D21EB: var_8C.Fields.Append "CONTRA_SUBNAME", &H81, &H32
  loc_12D2217: var_8C.Fields.Append "RS_IN_WORDS", &H81, &H64
  loc_12D2227: var_8C.CursorType = 3
  loc_12D2234: var_8C.LockType = 3
  loc_12D2253: var_8C.Open var_A0, var_B0, -1
  loc_12D225A: Set var_8C = Nothing 
  loc_12D2261: Set var_88 = arg_C 
  loc_12D2265: Exit Sub
End Sub

Public Sub Proc_3_14_137E950(arg_C) '137E950
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_137E097: Set var_8C = arg_C 
  loc_137E0BF: var_8C.Fields.Append "ACC", 3, &HA
  loc_137E0EB: var_8C.Fields.Append "V_ADD", &H81, 1
  loc_137E117: var_8C.Fields.Append "BALANCE", 5, &H13
  loc_137E143: var_8C.Fields.Append "START_DATE", 7, 0
  loc_137E16F: var_8C.Fields.Append "END_DATE", 7, 0
  loc_137E19B: var_8C.Fields.Append "INT_RATE", &H81, &H14
  loc_137E1C7: var_8C.Fields.Append "TYPE", &H81, 3
  loc_137E1F3: var_8C.Fields.Append "TOT_INT", 5, &H13
  loc_137E21F: var_8C.Fields.Append "BALANCE_TYPE", &H81, &H23
  loc_137E24B: var_8C.Fields.Append "ADD1", &H81, &H23
  loc_137E277: var_8C.Fields.Append "ADD2", &H81, &H23
  loc_137E2A3: var_8C.Fields.Append "CITY", &H81, &H15
  loc_137E2CF: var_8C.Fields.Append "PIN", &H81, 6
  loc_137E2FB: var_8C.Fields.Append "INTRST", 5, &H13
  loc_137E327: var_8C.Fields.Append "BAL1", 5, &H13
  loc_137E353: var_8C.Fields.Append "BAL_TYPE1", &H81, &H23
  loc_137E37F: var_8C.Fields.Append "DATE1", 7, 0
  loc_137E3AB: var_8C.Fields.Append "ITEM_CODE", 3, &HA
  loc_137E3D7: var_8C.Fields.Append "REPORT_NAME", &H81, &H32
  loc_137E403: var_8C.Fields.Append "EX_AMT", 5, &H13
  loc_137E42F: var_8C.Fields.Append "G_TOT", 5, &H13
  loc_137E45B: var_8C.Fields.Append "EX_RATE", 5, &H13
  loc_137E487: var_8C.Fields.Append "TOTAL", 5, &H13
  loc_137E4B3: var_8C.Fields.Append "DIS_AMT", 5, &H13
  loc_137E4DF: var_8C.Fields.Append "STAX_AMT", 5, &H13
  loc_137E50B: var_8C.Fields.Append "SUR_AMT", 5, &H13
  loc_137E537: var_8C.Fields.Append "VENDOR", &H81, &HA
  loc_137E563: var_8C.Fields.Append "ORDER_NO", &H81, &HF
  loc_137E58F: var_8C.Fields.Append "PART_NO", &H81, &HA
  loc_137E5BB: var_8C.Fields.Append "CUST_NAME", &H81, &H23
  loc_137E5E7: var_8C.Fields.Append "DESP_NO", 3, &HA
  loc_137E613: var_8C.Fields.Append "DESP_DT", 7, 0
  loc_137E63F: var_8C.Fields.Append "TOT_WORDS", &H81, &H64
  loc_137E66B: var_8C.Fields.Append "PLA", 3, &HA
  loc_137E697: var_8C.Fields.Append "RGA", 3, &HA
  loc_137E6C3: var_8C.Fields.Append "RGC", 3, &HA
  loc_137E6EF: var_8C.Fields.Append "INV_TIME", &H81, 8
  loc_137E71B: var_8C.Fields.Append "TOT_WRDS1", &H81, &H64
  loc_137E747: var_8C.Fields.Append "TAR_NAME", &H81, &H32
  loc_137E773: var_8C.Fields.Append "EX_ECC_NO", &H81, &H19
  loc_137E79F: var_8C.Fields.Append "TAX_PER", 5, &H13
  loc_137E7CB: var_8C.Fields.Append "REM1", &H81, &H64
  loc_137E7F7: var_8C.Fields.Append "REM2", &H81, &H64
  loc_137E823: var_8C.Fields.Append "AMD_DATE", 7, 0
  loc_137E84F: var_8C.Fields.Append "V_DATE", 7, 0
  loc_137E87B: var_8C.Fields.Append "EXMP_NOTIFY", &H81, &H23
  loc_137E8A7: var_8C.Fields.Append "D3", 3, &HA
  loc_137E8D3: var_8C.Fields.Append "AG_FORM", &H81, &H23
  loc_137E8FF: var_8C.Fields.Append "V_TYPE", &H81, 2
  loc_137E90F: var_8C.CursorType = 3
  loc_137E91C: var_8C.LockType = 3
  loc_137E93B: var_8C.Open var_A0, var_B0, -1
  loc_137E942: Set var_8C = Nothing 
  loc_137E949: Set var_88 = arg_C 
  loc_137E94D: Exit Sub
End Sub

Public Sub Proc_3_15_FFBFB0(arg_C) 'FFBFB0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFBDAB: Set var_8C = arg_C 
  loc_FFBDD3: var_8C.Fields.Append "FIELD1", &H81, &HC
  loc_FFBDFF: var_8C.Fields.Append "FIELD2", &H81, &H14
  loc_FFBE2B: var_8C.Fields.Append "FIELD3", &H81, &HC
  loc_FFBE57: var_8C.Fields.Append "FIELD4", &H81, &HC
  loc_FFBE83: var_8C.Fields.Append "FIELD5", &H81, &HC
  loc_FFBEAF: var_8C.Fields.Append "FIELD6", &H81, &HC
  loc_FFBEDB: var_8C.Fields.Append "FIELD7", &H81, &H14
  loc_FFBF07: var_8C.Fields.Append "FIELD8", &H81, &HC
  loc_FFBF33: var_8C.Fields.Append "FIELD9", &H81, &HC
  loc_FFBF5F: var_8C.Fields.Append "FIELD10", &H81, &HC
  loc_FFBF6F: var_8C.CursorType = 3
  loc_FFBF7C: var_8C.LockType = 3
  loc_FFBF9B: var_8C.Open var_A0, var_B0, -1
  loc_FFBFA2: Set var_8C = Nothing 
  loc_FFBFA9: Set var_88 = arg_C 
  loc_FFBFAD: Exit Sub
End Sub

Public Sub Proc_3_16_10ADBEC(arg_C) '10ADBEC
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10AD90B: Set var_8C = arg_C 
  loc_10AD933: var_8C.Fields.Append "VDATE", 7, 0
  loc_10AD95F: var_8C.Fields.Append "CVTYPE", &HC8, 5
  loc_10AD98B: var_8C.Fields.Append "CVNO", 3, &HA
  loc_10AD9B7: var_8C.Fields.Append "CVADD", &HC8, 5
  loc_10AD9E3: var_8C.Fields.Append "CVSNO", 3, &HB
  loc_10ADA0F: var_8C.Fields.Append "CNAME", &HC8, &H2F
  loc_10ADA3B: var_8C.Fields.Append "CR", 5, &H13
  loc_10ADA67: var_8C.Fields.Append "CDR", 5, &H13
  loc_10ADA93: var_8C.Fields.Append "DVTYPE", &HC8, 5
  loc_10ADABF: var_8C.Fields.Append "DVNO", 3, &HB
  loc_10ADAEB: var_8C.Fields.Append "DVADD", &HC8, 5
  loc_10ADB17: var_8C.Fields.Append "DVSNO", 3, 6
  loc_10ADB43: var_8C.Fields.Append "NAME1", &HC8, &H2F
  loc_10ADB6F: var_8C.Fields.Append "DR", 5, &H13
  loc_10ADB9B: var_8C.Fields.Append "DCR", 5, &H13
  loc_10ADBAB: var_8C.CursorType = 3
  loc_10ADBB8: var_8C.LockType = 3
  loc_10ADBD7: var_8C.Open var_A0, var_B0, -1
  loc_10ADBDE: Set var_8C = Nothing 
  loc_10ADBE5: Set var_88 = arg_C 
  loc_10ADBE9: Exit Sub
End Sub

Public Sub Proc_3_17_FB63B0(arg_C) 'FB63B0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FB6203: Set var_8C = arg_C 
  loc_FB622B: var_8C.Fields.Append "ProdCode", &H81, 8
  loc_FB6257: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_FB6283: var_8C.Fields.Append "BillDate", 7, 0
  loc_FB62AF: var_8C.Fields.Append "PackName", 5, &H13
  loc_FB62DB: var_8C.Fields.Append "Qty", 5, &H13
  loc_FB6307: var_8C.Fields.Append "Weight", 5, &H13
  loc_FB6333: var_8C.Fields.Append "Amount", 5, &H13
  loc_FB635F: var_8C.Fields.Append "Remark", &H81, &HFF
  loc_FB636F: var_8C.CursorType = 3
  loc_FB637C: var_8C.LockType = 3
  loc_FB639B: var_8C.Open var_A0, var_B0, -1
  loc_FB63A2: Set var_8C = Nothing 
  loc_FB63A9: Set var_88 = arg_C 
  loc_FB63AD: Exit Sub
End Sub

Public Sub Proc_3_18_FFC1F4(arg_C) 'FFC1F4
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_FFBFEF: Set var_8C = arg_C 
  loc_FFC017: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_FFC043: var_8C.Fields.Append "BillDate", 7, 0
  loc_FFC06F: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_FFC09B: var_8C.Fields.Append "Purchase", 5, &H13
  loc_FFC0C7: var_8C.Fields.Append "TotRect", 5, &H13
  loc_FFC0F3: var_8C.Fields.Append "PurchRet", 5, &H13
  loc_FFC11F: var_8C.Fields.Append "Issue", 5, &H13
  loc_FFC14B: var_8C.Fields.Append "Damage", 5, &H13
  loc_FFC177: var_8C.Fields.Append "TotIss", 5, &H13
  loc_FFC1A3: var_8C.Fields.Append "Balance", 5, &H13
  loc_FFC1B3: var_8C.CursorType = 3
  loc_FFC1C0: var_8C.LockType = 3
  loc_FFC1DF: var_8C.Open var_A0, var_B0, -1
  loc_FFC1E6: Set var_8C = Nothing 
  loc_FFC1ED: Set var_88 = arg_C 
  loc_FFC1F1: Exit Sub
End Sub

Public Sub Proc_3_19_1020B10(arg_C) '1020B10
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10208DF: Set var_8C = arg_C 
  loc_1020907: var_8C.Fields.Append "ProdName", &H81, &H28
  loc_1020933: var_8C.Fields.Append "BillDate", 7, 0
  loc_102095F: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_102098B: var_8C.Fields.Append "ProdQty", 5, &H13
  loc_10209B7: var_8C.Fields.Append "SRetQty", 5, &H13
  loc_10209E3: var_8C.Fields.Append "TotRect", 5, &H13
  loc_1020A0F: var_8C.Fields.Append "SaleQty", 5, &H13
  loc_1020A3B: var_8C.Fields.Append "StkTran", 5, &H13
  loc_1020A67: var_8C.Fields.Append "Damage", 5, &H13
  loc_1020A93: var_8C.Fields.Append "TotIss", 5, &H13
  loc_1020ABF: var_8C.Fields.Append "Balance", 5, &H13
  loc_1020ACF: var_8C.CursorType = 3
  loc_1020ADC: var_8C.LockType = 3
  loc_1020AFB: var_8C.Open var_A0, var_B0, -1
  loc_1020B02: Set var_8C = Nothing 
  loc_1020B09: Set var_88 = arg_C 
  loc_1020B0D: Exit Sub
End Sub

Public Sub Proc_3_20_10208A0(arg_C) '10208A0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_102066F: Set var_8C = arg_C 
  loc_1020697: var_8C.Fields.Append "BillDate", 7, 0
  loc_10206C3: var_8C.Fields.Append "OpenQty", 5, &H13
  loc_10206EF: var_8C.Fields.Append "MillQty", 5, &H13
  loc_102071B: var_8C.Fields.Append "Total", 5, &H13
  loc_1020747: var_8C.Fields.Append "TotRect", 5, &H13
  loc_1020773: var_8C.Fields.Append "ClQty", 5, &H13
  loc_102079F: var_8C.Fields.Append "FinProd1", 5, &H13
  loc_10207CB: var_8C.Fields.Append "FinProd2", 5, &H13
  loc_10207F7: var_8C.Fields.Append "FinProd3", 5, &H13
  loc_1020823: var_8C.Fields.Append "FinProd4", 5, &H13
  loc_102084F: var_8C.Fields.Append "FinProd5", 5, &H13
  loc_102085F: var_8C.CursorType = 3
  loc_102086C: var_8C.LockType = 3
  loc_102088B: var_8C.Open var_A0, var_B0, -1
  loc_1020892: Set var_8C = Nothing 
  loc_1020899: Set var_88 = arg_C 
  loc_102089D: Exit Sub
End Sub

Public Sub Proc_3_21_10D0854(arg_C) '10D0854
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10D0547: Set var_8C = arg_C 
  loc_10D056F: var_8C.Fields.Append "Code", &H81, 5
  loc_10D059B: var_8C.Fields.Append "RoomName", &H81, &HF
  loc_10D05C7: var_8C.Fields.Append "RoomCategory", &H81, &H19
  loc_10D05F3: var_8C.Fields.Append "Extention", 3, &HB
  loc_10D061F: var_8C.Fields.Append "MultiPer", 3, &HB
  loc_10D064B: var_8C.Fields.Append "MaidStation", &H81, &HB
  loc_10D0677: var_8C.Fields.Append "InclCount", &H81, 3
  loc_10D06A3: var_8C.Fields.Append "OccType", &H81, &HC
  loc_10D06CF: var_8C.Fields.Append "Rate1", 5, &H13
  loc_10D06FB: var_8C.Fields.Append "Rate2", 5, &H13
  loc_10D0727: var_8C.Fields.Append "Rate3", 5, &H13
  loc_10D0753: var_8C.Fields.Append "Rate4", 5, &H13
  loc_10D077F: var_8C.Fields.Append "Rate5", 5, &H13
  loc_10D07AB: var_8C.Fields.Append "WeekRate", 5, &H13
  loc_10D07D7: var_8C.Fields.Append "MonRate", 5, &H13
  loc_10D0803: var_8C.Fields.Append "RoomFeature", &H81, &H19
  loc_10D0813: var_8C.CursorType = 3
  loc_10D0820: var_8C.LockType = 3
  loc_10D083F: var_8C.Open var_A0, var_B0, -1
  loc_10D0846: Set var_8C = Nothing 
  loc_10D084D: Set var_88 = arg_C 
  loc_10D0851: Exit Sub
End Sub

Public Sub Proc_3_22_10F5DEC(arg_C) '10F5DEC
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_10F5AB3: Set var_8C = arg_C 
  loc_10F5ADB: var_8C.Fields.Append "RoomCatName", &H81, &H19
  loc_10F5B07: var_8C.Fields.Append "ShortName", &H81, 6
  loc_10F5B33: var_8C.Fields.Append "RevCharge", &H81, &H19
  loc_10F5B5F: var_8C.Fields.Append "NoRoom", 3, &HB
  loc_10F5B8B: var_8C.Fields.Append "MultiPer", 3, &HB
  loc_10F5BB7: var_8C.Fields.Append "RetenCharge", 5, &H13
  loc_10F5BE3: var_8C.Fields.Append "CancelCharge", 5, &H13
  loc_10F5C0F: var_8C.Fields.Append "MinAdvance", 5, &H13
  loc_10F5C3B: var_8C.Fields.Append "InclCount", &H81, 3
  loc_10F5C67: var_8C.Fields.Append "OccType", &H81, &HC
  loc_10F5C93: var_8C.Fields.Append "Rate1", 5, &H13
  loc_10F5CBF: var_8C.Fields.Append "Rate2", 5, &H13
  loc_10F5CEB: var_8C.Fields.Append "Rate3", 5, &H13
  loc_10F5D17: var_8C.Fields.Append "Rate4", 5, &H13
  loc_10F5D43: var_8C.Fields.Append "Rate5", 5, &H13
  loc_10F5D6F: var_8C.Fields.Append "WeekRate", 5, &H13
  loc_10F5D9B: var_8C.Fields.Append "MonRate", 5, &H13
  loc_10F5DAB: var_8C.CursorType = 3
  loc_10F5DB8: var_8C.LockType = 3
  loc_10F5DD7: var_8C.Open var_A0, var_B0, -1
  loc_10F5DDE: Set var_8C = Nothing 
  loc_10F5DE5: Set var_88 = arg_C 
  loc_10F5DE9: Exit Sub
  loc_10F5DEA: ThisVCallAd
End Sub

Public Sub Proc_3_23_10203C0(arg_C) '10203C0
  'Data Table: 4227B0
  Dim var_8C As Recordset15
  loc_102018F: Set var_8C = arg_C 
  loc_10201B7: var_8C.Fields.Append "ACC_NAME", &HC8, &H23
  loc_10201E3: var_8C.Fields.Append "DEBIT1", 5, &H13
  loc_102020F: var_8C.Fields.Append "DEBIT2", 5, &H13
  loc_102023B: var_8C.Fields.Append "DEBIT3", 5, &H13
  loc_1020267: var_8C.Fields.Append "DEBIT4", 5, &H13
  loc_1020293: var_8C.Fields.Append "DEBIT5", 5, &H13
  loc_10202BF: var_8C.Fields.Append "DEBIT6", 5, &H13
  loc_10202EB: var_8C.Fields.Append "DEBIT", 5, &H13
  loc_1020317: var_8C.Fields.Append "TOTALDR", 5, &H13
  loc_1020343: var_8C.Fields.Append "CREDIT", 5, &H13
  loc_102036F: var_8C.Fields.Append "ANAME", &HC8, &H23
  loc_102037F: var_8C.CursorType = 3
  loc_102038C: var_8C.LockType = 3
  loc_10203AB: var_8C.Open var_A0, var_B0, -1
  loc_10203B2: Set var_8C = Nothing 
  loc_10203B9: Set var_88 = arg_C 
  loc_10203BD: Exit Sub
End Sub
