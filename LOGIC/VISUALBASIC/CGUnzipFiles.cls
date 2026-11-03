VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "CGUnzipFiles"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_52 As Integer
Private global_54 As Integer
Private global_56 As Integer
Private global_60 As Long
Private global_64 As Integer
Private global_66 As Integer
Private global_68 As Long
Private global_72 As Integer
Private global_74 As Integer
Private global_76 As Integer
Private global_78 As Integer
Private global_80 As Integer
Private global_82 As Integer
Private global_84 As Integer
Private global_88 As Long

Public Property Get ExtractNewer() 'E0B1C8
  'Data Table: 41FE38
  loc_E0B1C0: ExtractNewer = (global_52 = 1)
End Sub

Public Property Let ExtractNewer(bExtractNewer) 'E51BF4
  'Data Table: 41FE38
  loc_E51BE5: global_52 = CInt(IIf(bExtractNewer, 1, 0))
  loc_E51BF1: Exit Sub
End Sub

Public Property Get SpaceToUnderScore() 'E0B140
  'Data Table: 41FE38
  loc_E0B138: SpaceToUnderScore = (global_54 = 1)
End Sub

Public Property Let SpaceToUnderScore(bConvert) 'E51B88
  'Data Table: 41FE38
  loc_E51B79: global_54 = CInt(IIf(bConvert, 1, 0))
  loc_E51B85: Exit Sub
End Sub

Public Property Get PromptOverwrite() 'E0A3B4
  'Data Table: 41FE38
  loc_E0A3AC: PromptOverwrite = (global_56 = 1)
End Sub

Public Property Let PromptOverwrite(bPrompt) 'E519D8
  'Data Table: 41FE38
  loc_E519C9: global_56 = CInt(IIf(bPrompt, 1, 0))
  loc_E519D5: Exit Sub
End Sub

Public Property Get MessageLevel() 'E02E00
  'Data Table: 41FE38
  loc_E02DF9: MessageLevel = global_60
End Sub

Public Property Let MessageLevel(iLevel) 'E00938
  'Data Table: 41FE38
  loc_E00932: global_60 = iLevel
  loc_E00935: Exit Sub
End Sub

Public Property Get WriteToStdOut() 'E0A3F8
  'Data Table: 41FE38
  loc_E0A3F0: WriteToStdOut = (global_64 = 1)
End Sub

Public Property Let WriteToStdOut(bWrite) 'E50BEC
  'Data Table: 41FE38
  loc_E50BDD: global_64 = CInt(IIf(bWrite, 1, 0))
  loc_E50BE9: Exit Sub
End Sub

Public Property Get TestZip() 'E0A43C
  'Data Table: 41FE38
  loc_E0A434: TestZip = (global_66 = 1)
End Sub

Public Property Let TestZip(bTest) 'E5160C
  'Data Table: 41FE38
  loc_E515FD: global_66 = CInt(IIf(bTest, 1, 0))
  loc_E51609: Exit Sub
End Sub

Public Property Get ExtractList() 'E04200
  'Data Table: 41FE38
  loc_E041F9: ExtractList = global_68
End Sub

Public Property Let ExtractList(zExType) 'E013C4
  'Data Table: 41FE38
  loc_E013BE: global_68 = zExType
  loc_E013C1: Exit Sub
End Sub

Public Property Get ExtractOnlyNewer() 'E0A480
  'Data Table: 41FE38
  loc_E0A478: ExtractOnlyNewer = (global_72 = 1)
End Sub

Public Property Let ExtractOnlyNewer(bOnlyNewer) 'E517BC
  'Data Table: 41FE38
  loc_E517AD: global_72 = CInt(IIf(bOnlyNewer, 1, 0))
  loc_E517B9: Exit Sub
End Sub

Public Property Get DisplayComment() 'E0A5D4
  'Data Table: 41FE38
  loc_E0A5CC: DisplayComment = (global_74 = 1)
End Sub

Public Property Let DisplayComment(bDisplay) 'E516E4
  'Data Table: 41FE38
  loc_E516D5: global_74 = CInt(IIf(bDisplay, 1, 0))
  loc_E516E1: Exit Sub
End Sub

Public Property Get HonorDirectories() 'E0A54C
  'Data Table: 41FE38
  loc_E0A544: HonorDirectories = (global_76 = 1)
End Sub

Public Property Let HonorDirectories(bHonor) 'E5145C
  'Data Table: 41FE38
  loc_E5144D: global_76 = CInt(IIf(bHonor, 1, 0))
  loc_E51459: Exit Sub
End Sub

Public Property Get OverWriteFiles() 'E0A590
  'Data Table: 41FE38
  loc_E0A588: OverWriteFiles = (global_78 = 1)
End Sub

Public Property Let OverWriteFiles(bOverWrite) 'E511D4
  'Data Table: 41FE38
  loc_E511C5: global_78 = CInt(IIf(bOverWrite, 1, 0))
  loc_E511D1: Exit Sub
End Sub

Public Property Get ConvertCRtoCRLF() 'E0B294
  'Data Table: 41FE38
  loc_E0B28C: ConvertCRtoCRLF = (global_80 = 1)
End Sub

Public Property Let ConvertCRtoCRLF(bConvert) 'E51318
  'Data Table: 41FE38
  loc_E51309: global_80 = CInt(IIf(bConvert, 1, 0))
  loc_E51315: Exit Sub
End Sub

Public Property Get Verbose() 'E0B20C
  'Data Table: 41FE38
  loc_E0B204: Verbose = (global_82 = 1)
End Sub

Public Property Let Verbose(bVerbose) 'E51F54
  'Data Table: 41FE38
  loc_E51F45: global_82 = CInt(IIf(bVerbose, 1, 0))
  loc_E51F51: Exit Sub
End Sub

Public Property Get CaseSensitive() 'E0B250
  'Data Table: 41FE38
  loc_E0B248: CaseSensitive = (global_84 = 1)
End Sub

Public Property Let CaseSensitive(bCaseSensitive) 'E50EE0
  'Data Table: 41FE38
  loc_E50ED1: global_84 = CInt(IIf(bCaseSensitive, 1, 0))
  loc_E50EDD: Exit Sub
End Sub

Public Property Get Privilege() 'E03200
  'Data Table: 41FE38
  loc_E031F9: Privilege = global_88
End Sub

Public Property Let Privilege(zPriv) 'E00E9C
  'Data Table: 41FE38
  loc_E00E96: global_88 = zPriv
  loc_E00E99: Exit Sub
End Sub

Public Property Get ZipFileName() 'E100E4
  'Data Table: 41FE38
  loc_E100D8: var_88 = global_92
  loc_E100DB: ZipFileName = 
End Sub

Public Property Let ZipFileName(sZipFileName) 'E1009C
  'Data Table: 41FE38
  loc_E10094: global_92 = sZipFileName
  loc_E10098: Exit Sub
End Sub

Public Property Get ExtractDir() 'E10054
  'Data Table: 41FE38
  loc_E10048: var_88 = global_96
  loc_E1004B: ExtractDir = 
End Sub

Public Property Let ExtractDir(sExtractDir) 'E1000C
  'Data Table: 41FE38
  loc_E10004: global_96 = sExtractDir
  loc_E10008: Exit Sub
End Sub

Public Function Unzip(sZipFileName, sExtractDir) 'F67170
  'Data Table: 41FE38
  Dim var_8C As Long
  loc_F67048: On Error Goto loc_F67104
  loc_F67055: If (Len(sZipFileName) > 0) Then
  loc_F6705E:   global_92 = sZipFileName
  loc_F67062: End If
  loc_F6706C: If (Len(sExtractDir) > 0) Then
  loc_F67075:   global_96 = sExtractDir
  loc_F67079: End If
  loc_F670F5: var_8C = Proc_8_13_1180C90(global_92, global_96, global_52, global_54, global_56, CInt(global_60), global_64, global_66)
  loc_F670FE: Unzip = var_8C
  loc_F67104: ' Referenced from: F67048
  loc_F6710C: Set var_A8 = Err()
  loc_F67112: Call 0.Method_arg_1C (var_AC, var_8C, CInt(global_68), global_72, global_74)
  loc_F6711F: Set var_B0 = Err()
  loc_F67125: Call 0.Method_arg_2C (var_B4, global_76, global_78)
  loc_F67149: Set var_118 = Err()
  loc_F6714F: Call 0.Method_Unzip4 (var_AC, "CGUnZipFiles::Unzip", CVar(var_B4), var_F4)
  loc_F67168: Unzip = var_114
End Function

Public Function GetLastMessage() 'E0A658
  'Data Table: 41FE38
  loc_E0A64D: var_88 = MemVar_1F937A8
  loc_E0A650: GetLastMessage = 
End Function

Public Sub Proc_9_36_E909E0
  'Data Table: 41FE38
  loc_E90961: global_52 = 0
  loc_E90969: global_54 = 0
  loc_E90971: global_56 = 0
  loc_E9097C: global_60 = 2
  loc_E90984: global_64 = 0
  loc_E9098C: global_66 = 0
  loc_E90997: global_68 = 0
  loc_E9099F: global_72 = 0
  loc_E909A7: global_74 = 0
  loc_E909AF: global_76 = 1
  loc_E909B7: global_78 = 1
  loc_E909BF: global_80 = 0
  loc_E909C7: global_82 = 0
  loc_E909CF: global_84 = 1
  loc_E909DA: global_88 = 0
  loc_E909DD: Exit Sub
End Sub
