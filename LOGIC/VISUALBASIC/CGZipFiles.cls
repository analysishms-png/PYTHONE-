VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "CGZipFiles"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_56 As Integer
Private global_64 As Integer
Private global_66 As Integer
Private global_80 As Integer
Private global_74 As Integer

Public Property Get RecurseFolders() 'E0B828
  'Data Table: 41D9FC
  loc_E0B820: RecurseFolders = (global_56 = 1)
End Sub

Public Property Let RecurseFolders(bRecurse) 'E50C58
  'Data Table: 41D9FC
  loc_E50C49: global_56 = CInt(IIf(bRecurse, 1, 0))
  loc_E50C55: Exit Sub
End Sub

Public Property Get ZipFileName() 'E11A7C
  'Data Table: 41D9FC
  loc_E11A70: var_88 = global_60
  loc_E11A73: ZipFileName = 
End Sub

Public Property Let ZipFileName(sZipFileName) 'E11A34
  'Data Table: 41D9FC
  loc_E11A2C: global_60 = sZipFileName
  loc_E11A30: Exit Sub
  loc_E11A31: Get , ,  'get  bytes
End Sub

Public Property Get Encrypted() 'E0B4F8
  'Data Table: 41D9FC
  loc_E0B4F0: Encrypted = (global_64 = 1)
End Sub

Public Property Let Encrypted(bEncrypt) 'E50FB8
  'Data Table: 41D9FC
  loc_E50FA9: global_64 = CInt(IIf(bEncrypt, 1, 0))
  loc_E50FB5: Exit Sub
End Sub

Public Property Get IncludeSystemFiles() 'E0B4B4
  'Data Table: 41D9FC
  loc_E0B4AC: IncludeSystemFiles = (global_66 = 1)
  loc_E0B4B2: Exit Sub
End Sub

Public Property Let IncludeSystemFiles(bInclude) 'E51CCC
  'Data Table: 41D9FC
  loc_E51CBD: global_66 = CInt(IIf(bInclude, 1, 0))
  loc_E51CC9: Exit Sub
End Sub

Public Property Get ZipFileCount() 'E48E60
  'Data Table: 41D9FC
  Dim var_88 As Long
  Dim Me As Collection
  loc_E48E32: If (global_52 Is Nothing) Then
  loc_E48E3A:   var_88 = 0
  loc_E48E40: Else
  loc_E48E57:   var_88 = (Me.Count - 1)
  loc_E48E5A: End If
  loc_E48E5A: ZipFileCount = var_88
End Sub

Public Property Get RootDirectory() 'E11494
  'Data Table: 41D9FC
  loc_E11488: var_88 = global_68
  loc_E1148B: RootDirectory = 
End Sub

Public Property Let RootDirectory(sRootDir) 'E113BC
  'Data Table: 41D9FC
  loc_E113B4: global_68 = sRootDir
  loc_E113B8: Exit Sub
End Sub

Public Property Get UpdatingZip() 'E0A2E8
  'Data Table: 41D9FC
  Dim var_7B88 As Long
  loc_E0A2E0: UpdatingZip = (global_80 = 1)
  loc_E0A2E6: var_7B88 = 
End Sub

Public Property Let UpdatingZip(bUpdating) 'E51D38
  'Data Table: 41D9FC
  loc_E51D29: global_80 = CInt(IIf(bUpdating, 1, 0))
  loc_E51D35: Exit Sub
End Sub

Public Function AddFile(sFileName) 'F080BC
  'Data Table: 41D9FC
  Dim Me As Collection
  loc_F07FE9: var_98 = sFileName
  loc_F07FF0: On Error Resume Next
  loc_F08006: var_C0 = Me.Item(var_98)
  loc_F08021: If (Len(CStr(var_C0)) = 0) Then
  loc_F0802B:   Set var_C4 = Err()
  loc_F08031:   VCallFPR8
  loc_F08039:   On Error GoTo 0
  loc_F0805A:   Me.Add var_98, var_98, var_C0, var_104
  loc_F08069: Else
  loc_F0806D:   On Error GoTo 0
  loc_F08098:   Set var_C4 = Err()
  loc_F0809E:   Call 0.Method_AddFile4 (-2147219503, "CGZip::AddFile", "File is already in Zip List")
  loc_F080B1: End If
  loc_F080B5: AddFile = var_114
End Function

Public Function RemoveFile(sFileName) 'EDCBD0
  'Data Table: 41D9FC
  Dim Me As Collection
  loc_EDCB2D: var_98 = sFileName
  loc_EDCB34: On Error Resume Next
  loc_EDCB65: If (Len(CStr(Me.Item(var_98))) = 0) Then
  loc_EDCB90:   Set var_124 = Err()
  loc_EDCB96:   Call 0.Method_RemoveFile4 (-2147219502, "CGZip::RemoveFile", "File is not in Zip List")
  loc_EDCBAC: Else
  loc_EDCBBE:   Me.Remove(var_98)
  loc_EDCBC3: End If
  loc_EDCBC7: RemoveFile = var_100
End Function

Public Function MakeZipFile() 'F8BE7C
  'Data Table: 41D9FC
  Dim var_22C As Long
  Dim var_238 As String
  Dim var_88 As Long
  loc_F8BD50: On Error Goto loc_F8BE09
  loc_F8BD64: For Each var_228 In global_52
  loc_F8BD6F:   var_238 = CStr(var_228)
  loc_F8BD7E:   var_218.0(0).global_0 = var_238
  loc_F8BD8E:   var_22C = (var_22C + 1)
  loc_F8BD94: Next
  loc_F8BE03: MakeZipFile = Proc_8_6_103B2AC(CInt(0), global_60, var_218, var_22E, global_56, global_80, 0, global_68)
  loc_F8BE09: ' Referenced from: F8BD50
  loc_F8BE0E: var_88 = -99
  loc_F8BE19: Set var_258 = Err()
  loc_F8BE1F: Call 0.Method_arg_1C (var_25C, Proc_8_6_103B2AC(CInt(0), global_60, var_218, var_22E, global_56, global_80, 0, global_68), 0, 0, 0)
  loc_F8BE2C: Set var_260 = Err()
  loc_F8BE32: Call 0.Method_arg_2C (var_238, 0, 0)
  loc_F8BE56: Set var_2D4 = Err()
  loc_F8BE5C: Call 0.Method_MakeZipFile4 (var_25C, "CGZipFiles::MakeZipFile", CVar(var_238), var_2B0)
  loc_F8BE75: MakeZipFile = var_2D0
End Function

Public Function GetLastMessage() 'E0AE50
  'Data Table: 41D9FC
  loc_E0AE45: var_88 = MemVar_1F937A8
  loc_E0AE48: GetLastMessage = 
End Function

Public Sub Proc_10_17_E92FC4
  'Data Table: 41D9FC
  loc_E92F5E: Set global_52 = New 
  loc_E92F87: Me.Collection.Add "querty", "querty", var_E8, var_108
  loc_E92F9C: global_64 = 0
  loc_E92FA4: global_66 = 0
  loc_E92FAD: global_68 = "\"
  loc_E92FB6: global_74 = 0
  loc_E92FBE: global_80 = 0
  loc_E92FC1: Exit Sub
End Sub

Public Sub Proc_10_18_E1237C
  'Data Table: 41D9FC
  loc_E12373: Set global_52 = Nothing
  loc_E1237A: Exit Sub
End Sub
