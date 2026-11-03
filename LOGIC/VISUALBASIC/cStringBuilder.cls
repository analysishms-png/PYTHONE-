VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "cStringBuilder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private global_56 As Long
Private global_60 As Long
Private global_64 As Long

Public Property Get Length() 'E14270
  'Data Table: 41D15C
  loc_E14267: Length = (global_60 / 2)
End Sub

Public Property Get Capacity() 'E14300
  'Data Table: 41D15C
  loc_E142F7: Capacity = (global_64 / 2)
End Sub

Public Property Get ChunkSize() 'E14348
  'Data Table: 41D15C
  loc_E1433F: ChunkSize = (global_56 / 2)
End Sub

Public Property Let ChunkSize(iChunkSize) 'E05D00
  'Data Table: 41D15C
  loc_E05CFC: global_56 = (iChunkSize * 2)
  loc_E05CFF: Exit Sub
End Sub

Public Property Get toString() 'E4C25C
  'Data Table: 41D15C
  loc_E4C236: If (global_60 > 0) Then
  loc_E4C250:   var_88 = Left$(global_52, (global_60 / 2))
  loc_E4C253: End If
  loc_E4C253: toString = 
End Sub

Public Property Let TheString(sThis) 'EDFE6C
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_EDFDAD: var_88 = LenB(sThis)
  loc_EDFDB9: If (var_88 = 0) Then
  loc_EDFDC2:   global_52 = vbNullString
  loc_EDFDCE:   global_60 = 0
  loc_EDFDD9:   global_64 = 0
  loc_EDFDDF: Else
  loc_EDFDE9:   If (global_64 < var_88) Then
  loc_EDFDEC:     Do 'loop at:   EDFE35
  loc_EDFE0D:     global_52 = global_52 & Space$((global_56 / 2))
  loc_EDFE28:     global_64 = (global_64 + global_56)
  loc_EDFE35:     Loop Until Not (global_64 < var_88) 'do at:   EDFDEC
  loc_EDFE38:   End If
  loc_EDFE5A:   CopyMemory(VarPtr(global_52), VarPtr(sThis), var_88)
  loc_EDFE66:   global_60 = var_88
  loc_EDFE69: End If
  loc_EDFE69: Exit Sub
End Sub

Public Sub Clear() 'E20E14
  'Data Table: 41D15C
  loc_E20DF6: global_52 = vbNullString
  loc_E20E02: global_60 = 0
  loc_E20E0D: global_64 = 0
  loc_E20E10: Exit Sub
End Sub

Public Sub AppendNL(sThis) 'E1C2F0
  'Data Table: 41D15C
  loc_E1C2D7: Call Append(sThis)
  loc_E1C2E5: Call Append(vbCrLf)
  loc_E1C2ED: Exit Sub
End Sub

Public Sub Append(sThis) 'EE8534
  'Data Table: 41D15C
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_94 As String
  loc_EE846D: var_88 = LenB(sThis)
  loc_EE847A: var_8C = (var_88 + global_60)
  loc_EE8487: If (var_8C > global_64) Then
  loc_EE8490:   var_90 = global_64
  loc_EE8493:   ' Referenced from: EE84AA
  loc_EE849A:   If (var_90 < var_8C) Then
  loc_EE84A7:     var_90 = (var_90 + global_56)
  loc_EE84AA:     GoTo loc_EE8493
  loc_EE84AD:   End If
  loc_EE84C8:   var_94 = Space$(((var_90 - global_64) / 2))
  loc_EE84D2:   global_52 = global_52 & var_94
  loc_EE84E3:   global_64 = var_90
  loc_EE84E6: End If
  loc_EE8503: Call Proc_347_15_E68C40(VarPtr(global_52), global_60, var_A0, VarPtr(global_52), global_64)
  loc_EE851C: CopyMemory(var_A0, VarPtr(sThis), var_88)
  loc_EE852F: global_60 = (global_60 + var_88)
  loc_EE8532: Exit Sub
End Sub

Public Sub AppendByVal(sThis) 'E0A9CC
  'Data Table: 41D15C
  loc_E0A9C5: Call Append(sThis)
  loc_E0A9CA: Exit Sub
End Sub

Public Sub Insert(iIndex, sThis) 'F68604
  'Data Table: 41D15C
  Dim var_88 As Long
  Dim var_8C As Long
  Dim var_90 As Long
  Dim var_120 As Long
  loc_F684E8: If ((iIndex * 2) > global_60) Then
  loc_F68501:   Set var_114 = Err()
  loc_F68507:   Call 0.Method_Insert4 (9, var_B0, var_D0)
  loc_F6851D: Else
  loc_F68522:   var_88 = LenB(sThis)
  loc_F68536:   If ((global_60 + var_88) > global_64) Then
  loc_F6855A:     global_52 = global_52 & Space$((global_56 / 2))
  loc_F68575:     global_64 = (global_64 + global_56)
  loc_F68578:   End If
  loc_F6859B:   Call Proc_347_15_E68C40(VarPtr(global_52), (iIndex * 2), var_128, VarPtr(global_52))
  loc_F685A3:   var_8C = var_128
  loc_F685B6:   var_90 = (global_60 - (iIndex * 2))
  loc_F685C2:   Call Proc_347_15_E68C40(var_8C, var_88, var_120, var_90, var_8C)
  loc_F685D0:   CopyMemory(var_120, var_8C, var_90)
  loc_F685EA:   CopyMemory(var_8C, VarPtr(sThis), var_88)
  loc_F685FD:   global_60 = (global_60 + var_88)
  loc_F68600: End If
  loc_F68600: Exit Sub
End Sub

Public Sub InsertByVal(iIndex, sThis) 'E13BF4
  'Data Table: 41D15C
  loc_E13BEC: Call Insert(iIndex, sThis)
  loc_E13BF1: Exit Sub
End Sub

Public Sub Remove(iIndex, lLen) 'F614E4
  'Data Table: 41D15C
  Dim var_90 As Long
  loc_F613C8: If ((iIndex * 2) > global_60) Then
  loc_F613E1:   Set var_114 = Err()
  loc_F613E7:   Call 0.Method_Remove4 (9, var_B0, var_D0)
  loc_F613FD: Else
  loc_F61411:   If (((iIndex + lLen) * 2) > global_60) Then
  loc_F6142A:     Set var_114 = Err()
  loc_F61430:     Call 0.Method_Remove4 (9, var_B0, var_D0, var_F0)
  loc_F61446:   Else
  loc_F6146D:     Call Proc_347_15_E68C40(VarPtr(global_52), ((iIndex + lLen) * 2), var_120, VarPtr(global_52))
  loc_F6149B:     Call Proc_347_15_E68C40(VarPtr(global_52), (iIndex * 2), var_120, VarPtr(global_52))
  loc_F614BA:     var_90 = (global_60 - ((iIndex + lLen) * 2))
  loc_F614C6:     CopyMemory(var_120, var_120, var_90)
  loc_F614DF:     global_60 = (global_60 - (lLen * 2))
  loc_F614E2:   End If
  loc_F614E2: End If
  loc_F614E2: Exit Sub
End Sub

Public Function Find(sToFind, lStartIndex, compare) 'E80880
  'Data Table: 41D15C
  Dim var_90 As Long
  Dim var_88 As Long
  loc_E8081B: var_8C = sToFind
  loc_E80827: If (lStartIndex > 0) Then
  loc_E8083B:   var_90 = InStr(lStartIndex, global_52, var_8C, compare)
  loc_E80841: Else
  loc_E8085A:   var_90 = InStr(CLng(global_52), var_8C, CStr(compare), 0)
  loc_E80860: End If
  loc_E80870: If (var_90 < (global_60 / 2)) Then
  loc_E80876:   var_88 = var_90
  loc_E80879: End If
  loc_E80879: Find = var_88
End Function

Public Sub HeapMinimize() 'E814B0
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_E81454: If ((global_64 - global_60) > global_56) Then
  loc_E8145D:   var_88 = global_64
  loc_E81460:   ' Referenced from: E81481
  loc_E81471:   If ((var_88 - global_60) > global_56) Then
  loc_E8147E:     var_88 = (var_88 - global_56)
  loc_E81481:     GoTo loc_E81460
  loc_E81484:   End If
  loc_E8149E:   global_52 = Left$(global_52, (var_88 / 2))
  loc_E814AB:   global_64 = var_88
  loc_E814AE: End If
  loc_E814AE: Exit Sub
End Sub

Public Sub Proc_347_15_E68C40(arg_C, arg_10) 'E68C40
  'Data Table: 41D15C
  Dim var_88 As Long
  loc_E68BF3: If CBool((arg_C And -2147483648)) Then
  loc_E68BFD:   var_88 = (arg_C + arg_10)
  loc_E68C03: Else
  loc_E68C11:   If ((arg_C Or -2147483648) < -arg_10) Then
  loc_E68C1B:     var_88 = (arg_C + arg_10)
  loc_E68C21:   Else
  loc_E68C34:     var_88 = ((arg_C + -2147483648) + (arg_10 + -2147483648))
  loc_E68C37:   End If
  loc_E68C37: End If
  loc_E68C37: Proc_347_15_E68C40 = var_88
End Sub

Public Sub Proc_347_16_E0206C
  'Data Table: 41D15C
  loc_E02068: global_56 = &H4000
  loc_E0206B: Exit Sub
End Sub
