VERSION 5.00
Begin VB.Form prHoliday
  Caption = "HoliDay Master"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "prHoliday.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7350
  ClientHeight = 2175
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7350
    Height = 450
    TabIndex = 4
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HFF0000&
    Left = 3180
    Top = 1905
    Width = 5805
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 35
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HFF0000&
    Left = 3180
    Top = 1590
    Width = 1425
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 0
    Top = 3360
    Width = 2880
    Height = 255
    TabIndex = 7
    Alignment = 2 'Center
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3375
    Top = 3360
    Width = 2790
    Height = 285
    TabIndex = 6
    Alignment = 2 'Center
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 5
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
  Begin Label Label1
    Caption = "Remarks"
    Index = 1
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1920
    Width = 825
    Height = 240
    TabIndex = 3
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
    Caption = "Date "
    Index = 0
    ForeColor = &HFF0000&
    Left = 2280
    Top = 1605
    Width = 495
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

Attribute VB_Name = "prHoliday"


Private Sub TopCtrl1_UnknownEvent_A 'EAA064
  'Data Table: 43503C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EA9FD8: On Error Goto loc_EAA05E
  loc_EA9FE8: Me.LblUser.Caption = vbNullString
  loc_EA9FFD: Me.LblLDt.Caption = vbNullString
  loc_EAA028: Call Proc_316_25_E7A934(Proc_5_1_100CB50("ADD", Me))
  loc_EAA033: Call Proc_316_23_EADD00(global_52)
  loc_EAA043: Set var_88 = Me.Txt
  loc_EAA049: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EAA051: var_94.SetFocus
  loc_EAA05D: Exit Sub
  loc_EAA05E: ' Referenced from: EA9FD8
  loc_EAA05E: Proc_6_60_E62BC4(var_94)
  loc_EAA063: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F648
  'Data Table: 43503C
  loc_E9F5D0: On Error Goto loc_E9F641
  loc_E9F60A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_E9F630:   Call Proc_316_25_E7A934(Proc_5_1_100CB50("INI", Me))
  loc_E9F63B:   Call Proc_316_24_1134D14(global_52)
  loc_E9F640: End If
  loc_E9F640: Exit Sub
  loc_E9F641: ' Referenced from: E9F5D0
  loc_E9F641: Proc_6_60_E62BC4()
  loc_E9F646: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1440348
  'Data Table: 43503C
  Dim var_C0 As Variant
  Dim var_16C As Variant
  Dim var_110 As Variant
  Dim var_134 As String
  Dim unk_435049 As Connection15
  Dim var_158 As Variant
  Dim var_15C As Variant
  Dim var_170 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_AC As Fields15
  Dim var_B0 As Field20
  Dim var_E0 As Variant
  Dim var_A4 As Recordset15
  Dim var_154 As Variant
  Dim var_264 As Double
  Dim var_270 As Double
  Dim var_1C8 As Integer
  Dim var_1B4 As Variant
  Dim var_278 As Double
  Dim var_24C As Variant
  Dim var_25C As Variant
  loc_143F894: On Error Goto loc_14402F9
  loc_143F8A5: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_143F8A8:   Exit Sub
  loc_143F8A9: End If
  loc_143F8B4: Set var_AC = Me.Txt
  loc_143F8BA: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_143F8CE: var_E0 = "MMMyyyy"
  loc_143F8DE: var_F0 = Format(CVar(var_B0), var_E0)
  loc_143F8E9: var_16C = 0
  loc_143F907: var_110 = "Select count(*) from salary where mth_year='" & var_F0 
  loc_143F91E: unk_435049.Execute CStr(var_110 & "'"), var_154, -1
  loc_143F926: var_158 = var_158.Fields
  loc_143F92E: var_16C = var_15C.Item(var_15C)
  loc_143F936: var_170 = var_170.Value
  loc_143F965: If (var_180 > 0) Then
  loc_143F981:   MsgBox("Sorry! You Can't Delete This Record, Salary Already Created", &H40, var_E0, var_F0, var_110)
  loc_143F991:   Exit Sub
  loc_143F992: End If
  loc_143F99D: var_E0 = "Delete Entry !"
  loc_143F9C9: If (MsgBox("Are You Sure To Delete This ? ", &H114, var_E0, var_F0, var_110) = 6) Then
  loc_143F9D5:   unk_435049.BeginTrans var_1A4
  loc_143F9EB:   var_94 = Me.Bookmark 'Variant
  loc_143FA0C:   Set var_AC = Me.Txt
  loc_143FA12:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Select * from employee where joining_date<=", var_1B4, -1)
  loc_143FA21:   Proc_6_7_F25D88(var_E0, CVar(var_B0), var_170, var_180)
  loc_143FA41:   Set var_158 = Me.Txt
  loc_143FA47:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_15C, 1 & var_E0 & " and (Resign_date is null or resign_date>=")
  loc_143FA56:   Proc_6_7_F25D88(var_154, CVar(var_15C))
  loc_143FA75:   unk_435049.Execute CStr(1 & var_154 & ")"), var_B0, 
  loc_143FA80:   Set var_A8 = var_170
  loc_143FAA4:   ' Referenced from: 14401EC
  loc_143FAB6:   If Not(Me.Recordset15.EOF) Then
  loc_143FAEE:     Set var_158 = Me.Txt
  loc_143FAF4:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0))
  loc_143FB42:     var_180 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_15C), "MMMyyyy") 
  loc_143FB59:     unk_435049.Execute CStr(var_180 & "'"), var_1B4, -1
  loc_143FB64:     Set var_A4 = var_170
  loc_143FB9E:     If (var_A4.RecordCount > 0) Then
  loc_143FBB8:       var_B0 = var_A4.Fields.Item("ATTN_STR")
  loc_143FBDD:       Set var_AC = Me.Txt
  loc_143FBE3:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0)
  loc_143FCA4:       If (Ucase(Format(CVar(var_B0), "DDD")) = Ucase(Left(Format(CVar(Proc_6_38_E68A98(CVar(Me.Txt.Fields.Item("OffDay")), 1)), var_180), 3))) Then
  loc_143FCB2:         Set var_AC = Me.Txt
  loc_143FCB8:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, 1, 1)
  loc_143FCED:         var_264 = Val(CStr(Format(CVar(var_B0), "dd")))
  loc_143FD42:         Set var_1E0 = Me.Txt
  loc_143FD48:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1E4, 1)
  loc_143FD7D:         var_270 = Val(CStr(Format(CVar(var_1E4), "dd")))
  loc_143FD9B:         var_1D8 = Mid(CVar(var_A4.Fields.Item("ATTN_STR")), CLng(((CDbl(2) * var_270) - CDbl(1))), 2)
  loc_143FDAB:         Set var_1EC = Me.Txt
  loc_143FDB1:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1F0, var_270, 1)
  loc_143FDE6:         var_278 = Val(CStr(Format(CVar(var_1F0), "dd")))
  loc_143FE00:         var_110 = Left(Proc_6_38_E68A98(CVar(var_B0), var_A4.Fields, 1), CLng(((CDbl(2) * var_264) - CDbl(2))))
  loc_143FE33:         var_24C = CVar(Replace(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ATTN_STR")), var_264, 1, 1), CStr(var_1D8), "SS", CLng(((CDbl(2) * var_278) - CDbl(1))), 1, 1)) 'String
  loc_143FE36:         var_25C = (Ucase(Format(CVar(var_B0), "DDD")) + var_24C)
  loc_143FE3B:         var_A0 = CStr(var_25C)
  loc_143FE80:       Else
  loc_143FE8B:         Set var_AC = Me.Txt
  loc_143FE91:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, var_278, 1)
  loc_143FEC6:         var_264 = Val(CStr(Format(CVar(var_B0), "dd")))
  loc_143FF03:         var_170 = var_A4.Fields
  loc_143FF1B:         Set var_1E0 = Me.Txt
  loc_143FF21:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1E4, 1)
  loc_143FF56:         var_270 = Val(CStr(Format(CVar(var_1E4), "dd")))
  loc_143FF59:         var_1C8 = 2
  loc_143FF74:         var_1D8 = Mid(CVar(var_170.Item("ATTN_STR")), CLng(((CDbl(2) * var_270) - CDbl(1))), var_1C8)
  loc_143FF84:         Set var_1EC = Me.Txt
  loc_143FF8A:         Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_1F0, var_270, 1)
  loc_143FFBF:         var_278 = Val(CStr(Format(CVar(var_1F0), "dd")))
  loc_143FFD9:         var_110 = Left(var_A0, CLng(((CDbl(2) * var_264) - CDbl(2))))
  loc_144000C:         var_24C = CVar(Replace(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ATTN_STR")), var_264, 1, 1), CStr(var_1D8), "PP", CLng(((CDbl(2) * var_278) - CDbl(1))), 1, 1)) 'String
  loc_144000F:         var_25C = (Ucase(Format(CVar(var_B0), "DDD")) + var_24C)
  loc_1440014:         var_A0 = CStr(var_25C)
  loc_1440056:       End If
  loc_1440061:       Set var_AC = Me.Txt
  loc_1440067:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, var_278, 1, 1)
  loc_144007B:       var_E0 = "MMMyyyy"
  loc_14400E4:       var_154 = CVar("Update Attendence set Attn_Str='" & var_A0 & "' Where mth_Year='") & Format(CVar(var_B0), var_E0) & "' And Emp_Code='" 
  loc_14400EB:       var_1A0 = var_154 & Me.Txt.Fields.Item("Code").Value 
  loc_1440102:       unk_435049.Execute CStr(var_1A0 & "'"), var_1C8, -1
  loc_1440130:     End If
  loc_144014D:     Set var_AC = Me.Txt
  loc_1440153:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_B0, "Delete From Attend Where V_Date=", var_1A0, -1, var_170, var_170)
  loc_1440162:     Proc_6_7_F25D88(var_E0, CVar(var_B0), 1, 1)
  loc_1440173:     var_110 = 1 & var_E0 & " And Emp_Code='" 
  loc_14401B1:     var_134 = CStr(var_110 & Me.Txt.Fields.Item("Code").Value & "'")
  loc_14401BB:     unk_435049.Execute var_134, 1, 1
  loc_14401E7:     Me.Recordset15.MoveNext
  loc_14401EC:     GoTo loc_143FAA4
  loc_14401EF:   End If
  loc_1440206:   var_AC = Me.Fields
  loc_1440216:   var_C0 = CVar(var_AC.Item("SearchCode")) 'Address
  loc_144021D:   Proc_6_7_F25D88(var_E0, var_C0)
  loc_1440225:   var_F0 = "Delete From Holiday Where VDate=" & var_E0 
  loc_144024F:   unk_435049.Execute CStr(var_F0), var_C0, -1
  loc_1440260:   unk_435049.CommitTrans
  loc_1440270:   Me.Requery -1
  loc_1440290:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_144029D:     Me.Bookmark = var_94
  loc_14402A5:   Else
  loc_14402B9:     If (Me.EOF = 0) Then
  loc_14402C2:       Me.MoveLast
  loc_14402C7:     End If
  loc_14402C7:   End If
  loc_14402C7:   Call Proc_316_24_1134D14(var_AC)
  loc_14402E8:   Proc_5_0_110649C(&HFF, Me, global_52)
  loc_14402F0: End If
  loc_14402F5: Set var_A4 = Nothing
  loc_14402F8: Exit Sub
  loc_14402F9: ' Referenced from: 143F894
  loc_14402FF: unk_435049.RollbackTrans
  loc_144030C: Set var_AC = Err()
  loc_1440312: Call 0.Method_arg_2C (var_134, 0)
  loc_1440333: MsgBox(CVar(var_134), &H10, " Deletion Message", var_F0, var_110)
  loc_1440346: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F142A8
  'Data Table: 43503C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F141B0: On Error Goto loc_F1429F
  loc_F141C1: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F141C4:   Exit Sub
  loc_F141C5: End If
  loc_F141E8: Call Proc_316_25_E7A934(Proc_5_1_100CB50("EDIT", Me))
  loc_F14201: Set var_8C = Me.Txt
  loc_F14207: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F1421A: global_56 = var_94.Text
  loc_F14235: Set var_8C = Me.Txt
  loc_F1423B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F14243: var_94.Enabled = False
  loc_F1425A: Set var_8C = Me.Txt
  loc_F14260: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F14268: var_94.SetFocus
  loc_F14281: Me.LblUser.Caption = vbNullString
  loc_F14296: Me.LblLDt.Caption = vbNullString
  loc_F1429E: Exit Sub
  loc_F1429F: ' Referenced from: F141B0
  loc_F1429F: Proc_6_60_E62BC4(global_52)
  loc_F142A4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B9A8
  'Data Table: 43503C
  loc_E1B99D: Me.Global.Unload Me
  loc_E1B9A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EF218C
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EF20C0: On Error Goto loc_EF2186
  loc_EF20DA: If (Me.RecordCount <= 0) Then
  loc_EF20E3:   var_B8 = "Information"
  loc_EF20FE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EF210E:   Exit Sub
  loc_EF210F: End If
  loc_EF2117: If (MemVar_1F923AC = "S") Then
  loc_EF2121:   var_10C = "Select VDate as SearchCode,Convert(Varchar(11),vdate,103) as Holiday, convert(varchar(50),Remarks,103) as Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EF2128:   MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') Order by VDate"
  loc_EF2132: Else
  loc_EF213A:   If (MemVar_1F923AC = "A") Then
  loc_EF214B:     MemVar_1F920E4 = "Select VDate as SearchCode,vdate as Holiday, Remarks From Holiday where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by VDate"
  loc_EF2152:   End If
  loc_EF2152: End If
  loc_EF2158: MemVar_1F92120 = Me
  loc_EF2165: Proc_6_126_F1BCC0("2000,2000", MemVar_1F920E4)
  loc_EF2180: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EF2185: Exit Sub
  loc_EF2186: ' Referenced from: EF20C0
  loc_EF2186: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EF218B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D4B8
  'Data Table: 43503C
  loc_E3D4A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3D4B0: Call Proc_316_24_1134D14(global_52)
  loc_E3D4B5: Exit Sub
  loc_E3D4B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3B5F8
  'Data Table: 43503C
  loc_E3B5E8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B5F0: Call Proc_316_24_1134D14(global_52)
  loc_E3B5F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3D398
  'Data Table: 43503C
  loc_E3D388: Proc_5_0_110649C(&HFF, Me)
  loc_E3D390: Call Proc_316_24_1134D14(global_52)
  loc_E3D395: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B778
  'Data Table: 43503C
  Dim var_3B01 As Double
  loc_E3B768: Proc_5_0_110649C(&HFF, Me)
  loc_E3B770: Call Proc_316_24_1134D14(global_52)
  loc_E3B775: Exit Sub
  loc_E3B776: var_3B01 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '100877C
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim unk_435049 As Connection15
  Dim var_CC As String
  Dim var_D2 As Integer
  Dim var_B4 As Variant
  loc_100857C: On Error Goto loc_1008773
  loc_1008588: var_A4 = Me.RecordCount
  loc_1008596: If (var_A4 <= 0) Then
  loc_1008599:   Exit Sub
  loc_100859A: End If
  loc_100859D: var_88 = "Select H.*, H.VDate as SearchCode From Holiday H Order by VDate"
  loc_10085A8: If (var_88 = vbNullString) Then
  loc_10085AB:   Exit Sub
  loc_10085AC: End If
  loc_10085C2: unk_435049.Execute var_88, var_C4, -1
  loc_10085EC: Set var_C8 = var_C8 
  loc_10085F8: var_D2 = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\Holiday.ttx")
  loc_1008602: Set var_9C = var_C8
  loc_1008608: var_B4 = CVar(var_D2) 'Integer
  loc_100860B: var_98 = var_B4 'Variant
  loc_1008627: var_CC = MemVar_1F920B4 & "\Holiday.RPT"
  loc_1008630: Call 0.Method_arg_1C (var_CC, var_B4, var_C8)
  loc_100863B: MemVar_1F921E4 = var_C8
  loc_1008656: Call 0.Method_arg_90 (var_C8, var_A4, var_9E, 1)
  loc_100865E: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_100866A: For var_D6 =  To CInt(var_A4): var_C8 = var_D6 'Integer
  loc_1008683:   Call 0.Method_arg_90 (var_C8, CLng(var_9E))
  loc_100868B:   Call 0.Method_arg_20 (var_DC)
  loc_1008693:   Call 0.Method_arg_30 (var_CC)
  loc_10086AD:   If (var_CC = "Title") Then
  loc_10086C3:     Call 0.Method_arg_90 (var_C8, CLng(var_9E))
  loc_10086CB:     Call 0.Method_arg_20 (var_DC)
  loc_10086D3:     Call 0.Method_arg_38 ("'Holiday List'")
  loc_10086DF:   End If
  loc_10086E2: Next var_D6 'Integer
  loc_1008700: Call 0.Method_arg_64 (var_C8, CVar(var_9C))
  loc_1008708: Call 0.Method_arg_2C (var_F0)
  loc_1008716: Call 0.Method_arg_150 (var_100)
  loc_1008721: Call 0.Method_arg_50 (var_CC)
  loc_100872B: Set var_DC = Nothing
  loc_1008745: Set var_C8 = MemVar_1F921E4 
  loc_1008751: Proc_6_99_1483714(var_C8, 0, var_CC)
  loc_100875C: MemVar_1F921E4 = var_C8
  loc_100876F: Set var_9C = Nothing
  loc_1008772: Exit Sub
  loc_1008773: ' Referenced from: 100857C
  loc_1008773: Proc_6_60_E62BC4(&HFF)
  loc_1008778: Exit Sub
  loc_1008779: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1491D30
  'Data Table: 43503C
  Dim var_8A As Integer
  Dim unk_435049 As Connection15
  Dim var_B4 As String
  Dim var_EC As String
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_A8 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_B0 As Fields15
  Dim var_140 As Variant
  Dim var_260 As Double
  Dim var_194 As Fields15
  Dim var_1E4 As String
  Dim var_26C As Double
  Dim var_1C4 As Variant
  Dim var_190 As Variant
  Dim var_274 As Double
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_120 As Variant
  Dim var_1D4 As Variant
  Dim Me As Recordset15
  loc_149111C: On Error Goto loc_1491D12
  loc_149112A: Set var_A8 = Me.Txt
  loc_1491130: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1491159: If (Proc_6_27_EA565C(var_AC, "Date") = 0) Then
  loc_149115C:   Exit Sub
  loc_149115D: End If
  loc_1491168: Set var_A8 = Me.Txt
  loc_149116E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1491197: If (Proc_6_27_EA565C(var_AC, "Remarks") = 0) Then
  loc_149119A:   Exit Sub
  loc_149119B: End If
  loc_149119E: Call Proc_316_22_F8B9A0(var_B6)
  loc_14911A9: If (var_B6 = &HFF) Then
  loc_14911AC:   Exit Sub
  loc_14911AD: End If
  loc_14911BB: unk_435049.BeginTrans var_BC
  loc_14911C4: Set var_A8 = Me.TopCtrl1
  loc_14911CA: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_6803000C(&HFF)
  loc_14911E3: If (CStr(var_AC) = "Add") Then
  loc_1491203:   Set var_A8 = Me.Txt
  loc_1491209:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Select * from employee where joining_date<=")
  loc_1491218:   Proc_6_7_F25D88(var_DC, CVar(var_AC), var_190)
  loc_1491220:   var_FC = -1 & var_DC 
  loc_1491238:   Set var_B0 = Me.Txt
  loc_149123E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_149124D:   Proc_6_7_F25D88(var_140, CVar(var_120))
  loc_149126C:   unk_435049.Execute CStr(var_FC & " and (Resign_date is null or resign_date>=" & var_140 & ")"), var_194, 
  loc_1491277:   Set var_9C = var_194
  loc_149129B:   ' Referenced from: 14919F5
  loc_14912AD:   If Not(Me.Recordset15.EOF) Then
  loc_14912E5:     Set var_B0 = Me.Txt
  loc_14912EB:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1491339:     var_150 = "Select * from attendence where Emp_Code='" & Me.Recordset15.Fields.Item("Code").Value & "' and mth_Year='" & Format(CVar(var_120), "MMMyyyy") 
  loc_1491350:     unk_435049.Execute CStr(var_150 & "'"), var_190, -1
  loc_149135B:     Set var_A0 = var_194
  loc_1491398:     If (Me.Recordset15.RecordCount > 0) Then
  loc_14913B5:       var_AC = Me.Recordset15.Fields.Item("ATTN_STR")
  loc_14913DA:       Set var_A8 = Me.Txt
  loc_14913E0:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_14914A1:       If (Ucase(Format(CVar(var_AC), "DDD")) = Ucase(Left(Format(CVar(Proc_6_38_E68A98(CVar(Me.Txt.Fields.Item("OffDay")), 1)), var_150), 3))) Then
  loc_14914AF:         Set var_A8 = Me.Txt
  loc_14914B5:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, 1, 1)
  loc_14914EA:         var_260 = Val(CStr(Format(CVar(var_AC), "dd")))
  loc_1491545:         Set var_1DC = Me.Txt
  loc_149154B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, 1)
  loc_1491580:         var_26C = Val(CStr(Format(CVar(var_1E0), "dd")))
  loc_149159E:         var_1D4 = Mid(CVar(Me.Recordset15.Fields.Item("ATTN_STR")), CLng(((CDbl(2) * var_26C) - CDbl(1))), 2)
  loc_14915AE:         Set var_1E8 = Me.Txt
  loc_14915B4:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_26C, 1)
  loc_14915E9:         var_274 = Val(CStr(Format(CVar(var_1EC), "dd")))
  loc_1491603:         var_11C = Left(Proc_6_38_E68A98(CVar(var_AC), Me.Recordset15.Fields, 1), CLng(((CDbl(2) * var_260) - CDbl(2))))
  loc_1491636:         var_248 = CVar(Replace(Proc_6_38_E68A98(CVar(Me.Txt.Fields.Item("ATTN_STR")), var_260, 1, 1), CStr(var_1D4), "SS", CLng(((CDbl(2) * var_274) - CDbl(1))), 1, 1)) 'String
  loc_1491639:         var_258 = (Ucase(Format(CVar(var_AC), "DDD")) + var_248)
  loc_149163E:         var_A4 = CStr(var_258)
  loc_1491683:       Else
  loc_149168E:         Set var_A8 = Me.Txt
  loc_1491694:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_274, 1)
  loc_14916C9:         var_260 = Val(CStr(Format(CVar(var_AC), "dd")))
  loc_149170C:         var_194 = Me.Recordset15.Fields
  loc_1491724:         Set var_1DC = Me.Txt
  loc_149172A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1E0, 1)
  loc_149175F:         var_26C = Val(CStr(Format(CVar(var_1E0), "dd")))
  loc_1491762:         var_1C4 = 2
  loc_149177D:         var_1D4 = Mid(CVar(var_194.Item("ATTN_STR")), CLng(((CDbl(2) * var_26C) - CDbl(1))), var_1C4)
  loc_149178D:         Set var_1E8 = Me.Txt
  loc_1491793:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_1EC, var_26C, 1)
  loc_14917B7:         var_22C = Format(CVar(var_1EC), "dd")
  loc_14917C8:         var_274 = Val(CStr(var_22C))
  loc_14917E2:         var_11C = Left(var_A4, CLng(((CDbl(2) * var_260) - CDbl(2))))
  loc_1491815:         var_248 = CVar(Replace(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ATTN_STR")), var_260, 1, 1), CStr(var_1D4), "HH", CLng(((CDbl(2) * var_274) - CDbl(1))), 1, 1)) 'String
  loc_1491818:         var_258 = (Ucase(Format(CVar(var_AC), "DDD")) + var_248)
  loc_149181D:         var_A4 = CStr(var_258)
  loc_149185F:       End If
  loc_149186A:       Set var_A8 = Me.Txt
  loc_1491870:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_274, 1, 1)
  loc_1491884:       var_DC = "MMMyyyy"
  loc_14918ED:       var_140 = CVar("Update Attendence set Attn_Str='" & var_A4 & "' Where mth_Year='") & Format(CVar(var_AC), var_DC) & "' And Emp_Code='" 
  loc_14918F4:       var_170 = var_140 & Me.Txt.Fields.Item("Code").Value 
  loc_1491901:       var_1E4 = CStr(var_170 & "'")
  loc_149190B:       unk_435049.Execute var_1E4, var_1C4, -1
  loc_1491939:     End If
  loc_1491956:     Set var_A8 = Me.Txt
  loc_149195C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, "Delete From Attend Where V_Date=", var_170, -1, var_194, var_194)
  loc_149196B:     Proc_6_7_F25D88(var_DC, CVar(var_AC), 1, 1)
  loc_149199D:     var_120 = Me.Txt.Fields.Item("Code")
  loc_14919C4:     unk_435049.Execute CStr(1 & var_DC & " And Emp_Code='" & var_120.Value & "'"), 1, 1
  loc_14919F0:     Me.Recordset15.MoveNext
  loc_14919F5:     GoTo loc_149129B
  loc_14919F8:   End If
  loc_14919FF:   var_B4 = "Insert Into Holiday(" & "VDate,Remarks,sITE_cODE,U_Name,U_EntDt,U_AE,LogSite_Code) "
  loc_1491A14:   Set var_A8 = Me.Txt
  loc_1491A1A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1491A22:   var_CC = CVar(var_AC) 'Address
  loc_1491A29:   Proc_6_7_F25D88(var_DC, var_CC)
  loc_1491A3A:   var_130 = CVar(var_B4 & " Values(") & var_DC & ",'" 
  loc_1491A4C:   Set var_B0 = Me.Txt
  loc_1491A52:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_120, var_1E4)
  loc_1491A5A:   var_130 = var_120.Text
  loc_1491A78:   var_190 = var_120 & CVar(var_1E4) & "','" & CVar(MemVar_1F92070) 
  loc_1491AA3:   Proc_6_8_EB0DE4(var_22C)
  loc_1491ACC:   var_98 = CStr(CVar(Proc_6_14_EF349C(var_190 & "','" & CVar(MemVar_1F920C8) & "',")) & var_22C & ",'A','" & CVar(MemVar_1F92078) & "')")
  loc_1491B18:   unk_435049.Execute var_98, var_CC, -1
  loc_1491B26: Else
  loc_1491B3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4)
  loc_1491B45:   "Update Holiday Set Remarks='" = var_AC.Text
  loc_1491B6B:   var_CC = CVar(Proc_6_14_EF349C(CVar(Me.Txt & var_B4 & "',U_Name='" & MemVar_1F920C8 & "',U_EntDt="))) 'String
  loc_1491B71:   Proc_6_8_EB0DE4(var_DC)
  loc_1491B7D:   var_EC = ",U_AE='E',Site_Code='"
  loc_1491BA4:   Set var_B0 = Me.Txt
  loc_1491BAA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_120)
  loc_1491BB9:   Proc_6_7_F25D88(var_190, CVar(var_120))
  loc_1491C15:   unk_435049.Execute CStr(var_CC & var_DC & var_EC & CVar(MemVar_1F92070) & "' Where VDate=" & var_190 & vbNullString), var_CC, -1
  loc_1491C20: End If
  loc_1491C26: unk_435049.CommitTrans
  loc_1491C39: Set var_A8 = Me.Txt
  loc_1491C3F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1491C5B: var_8A = 0
  loc_1491C69: Me.Requery -1
  loc_1491C93: Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1491CA3: Set var_A8 = Me.TopCtrl1
  loc_1491CA9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_6803000C(var_EC)
  loc_1491CC2: If (CStr(var_8A) = "Add") Then
  loc_1491CC5:   Call TopCtrl1_UnknownEvent_A()
  loc_1491CCA:   Exit Sub
  loc_1491CCB: End If
  loc_1491CD7: Set var_A8 = Me
  loc_1491CEE: Call Proc_316_25_E7A934(Proc_5_1_100CB50("INI", var_A8), global_52)
  loc_1491CFE: Set var_88 = Nothing
  loc_1491D06: Set var_A0 = Nothing
  loc_1491D0E: Set var_9C = Nothing
  loc_1491D11: Exit Sub
  loc_1491D12: ' Referenced from: 149111C
  loc_1491D18: If (var_8A = &HFF) Then
  loc_1491D21:   unk_435049.RollbackTrans
  loc_1491D26: End If
  loc_1491D26: Proc_6_60_E62BC4(var_A8)
  loc_1491D2B: Exit Sub
  loc_1491D2C: Exit Sub
End Sub

Private Sub Form_Load() 'F1A408
  'Data Table: 43503C
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_F1A308: On Error Goto loc_F1A402
  loc_F1A31A: Me.LblUser.Left = CDbl(13500)
  loc_F1A331: Me.LblUser.Top = CDbl(7800)
  loc_F1A348: Me.LblLDt.Top = CDbl(8160)
  loc_F1A35F: Me.LblLDt.Left = CDbl(13500)
  loc_F1A36E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F1A38F: Me.Recordset15.CursorLocation = 3
  loc_F1A3B9: var_A0 = CVar("Select H.*, H.VDate as SearchCode From Holiday H where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Vdate") 'String
  loc_F1A3C3: Me.Open var_A0, CVar(MemVar_1F92044), 2
  loc_F1A3F1: Call Proc_316_25_E7A934(Proc_5_1_100CB50("INI", Me, New), 3)
  loc_F1A3FC: Call Proc_316_24_1134D14(-1)
  loc_F1A401: Exit Sub
  loc_F1A402: ' Referenced from: F1A308
  loc_F1A402: Proc_6_60_E62BC4()
  loc_F1A407: Exit Sub
End Sub

Private Sub Form_Resize() 'ED17C8
  'Data Table: 43503C
  Dim var_8C As Label
  loc_ED1726: Call 0.Method_arg_50 (var_88)
  loc_ED1738: Me.LblFormCaption.Caption = var_88
  loc_ED1751: Me.LblFormCaption.Left = CDbl(0)
  loc_ED175D: Set var_A0 = Me.TopCtrl1
  loc_ED1763: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED1770: Set var_8C = Me.TopCtrl1
  loc_ED1776: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED1790: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED17AB: Call 0.Method_arg_100 (var_B8)
  loc_ED17BD: Me.LblFormCaption.Width = var_B8
  loc_ED17C5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0BB24
  'Data Table: 43503C
  loc_E0BB1B: Set global_52 = Nothing
  loc_E0BB22: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'F067A0
  'Data Table: 43503C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_9C As Variant
  Dim KeyCode As Integer
  loc_F066B4: On Error Goto loc_F06799
  loc_F066BA: var_86 = KeyCode
  loc_F066C7: If Not (var_86 = CInt(&HD)) Then
  loc_F066D4:   If Not (var_86 = CInt(&H28)) Then
  loc_F066E1:     If (var_86 = CInt(&H26)) Then
  loc_F066E4:     End If
  loc_F066E4:   End If
  loc_F066E7:   var_88 = KeyCode
  loc_F066F4:   If Not (var_88 = CInt(&H28)) Then
  loc_F06701:     If (var_88 = CInt(&H26)) Then
  loc_F06704:     End If
  loc_F06704:   End If
  loc_F0670A:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_F06719:   If TypeOf var_8C Is arg_1 Then
  loc_F06722:     Call 0.Method_arg_1E8 (var_8C)
  loc_F0672A:     var_9C = var_8C.index
  loc_F0673D:     Call Txt_Validate(CInt(var_9C))
  loc_F06748:   End If
  loc_F06765:   If (Proc_6_106_10BB81C(Me, KeyCode, Shift) = &HFF) Then
  loc_F0676F:     Call Proc_316_27_ED16D0(CInt(1), 0)
  loc_F06774:   End If
  loc_F06776:   KeyCode = 0
  loc_F0677C: Else
  loc_F06790:   Proc_6_88_FE81B4(Me, KeyCode, Shift, 0)
  loc_F06798: End If
  loc_F06798: Exit Sub
  loc_F06799: ' Referenced from: F066B4
  loc_F06799: Proc_6_60_E62BC4(KeyCode, var_9C)
  loc_F0679E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E531E4
  'Data Table: 43503C
  loc_E531BE: Set var_88 = Me.Txt
  loc_E531C4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E531D2: Proc_6_74_E226B0(var_8C)
  loc_E531DE: Call Proc_316_26_DFD838(var_8C)
  loc_E531E3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E09D54
  'Data Table: 43503C
  loc_E09D4A: If (CLng(Shift) = &H1B) Then
  loc_E09D4D:   Call Proc_316_26_DFD838()
  loc_E09D52:   Exit Sub
  loc_E09D53: End If
  loc_E09D53: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E23864
  'Data Table: 43503C
  loc_E2384A: Proc_6_133_E7EF78(var_94)
  loc_E2385C: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E23861: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47B3C
  'Data Table: 43503C
  loc_E47B1A: Set var_88 = Me.Txt
  loc_E47B20: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47B2E: Proc_6_73_E22704(var_8C)
  loc_E47B3A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FD0ADC
  'Data Table: 43503C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_A0 As TextBox
  loc_FD091B: var_86 = Cancel
  loc_FD0926: If (var_86 = CInt(0)) Then
  loc_FD0934:   Set var_8C = Me.Txt
  loc_FD093A:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD0942:   var_98 = "Date"
  loc_FD0963:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_FD0970:     Set var_8C = Me.Txt
  loc_FD0976:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD097E:     var_90.SetFocus
  loc_FD098C:     arg_10 = &HFF
  loc_FD098F:     Exit Sub
  loc_FD0990:   End If
  loc_FD099E:   Set var_8C = Me.Txt
  loc_FD09A4:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, var_98)
  loc_FD09AC:   arg_10 = var_90.Text
  loc_FD09C3:   If (var_98 = vbNullString) Then
  loc_FD09D9:     Set var_8C = Me.Txt
  loc_FD09DF:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD09E7:     var_90.Text = CStr(MemVar_1F920EC)
  loc_FD09F9:   Else
  loc_FD0A04:     Set var_8C = Me.Txt
  loc_FD0A0A:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_FD0A2B:     Set var_9C = Me.Txt
  loc_FD0A31:     Call 0.Method_Txt_Validate0 (CInt(0), var_A0)
  loc_FD0A39:     var_A0.Text = Proc_6_33_1512840(var_90)
  loc_FD0A4C:   End If
  loc_FD0A4F:   Call Proc_316_22_F8B9A0(var_A2)
  loc_FD0A5A:   If (var_A2 = &HFF) Then
  loc_FD0A5F:     arg_10 = &HFF
  loc_FD0A62:     Exit Sub
  loc_FD0A63:   End If
  loc_FD0A66: Else
  loc_FD0A6E:   If (var_86 = CInt(1)) Then
  loc_FD0A7C:     Set var_8C = Me.Txt
  loc_FD0A82:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_FD0AAB:     If (Proc_6_27_EA565C(var_90, "Remarks") = 0) Then
  loc_FD0AB8:       Set var_8C = Me.Txt
  loc_FD0ABE:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_FD0AC6:       var_90.SetFocus
  loc_FD0AD4:       arg_10 = &HFF
  loc_FD0AD7:       Exit Sub
  loc_FD0AD8:     End If
  loc_FD0AD8:   End If
  loc_FD0AD8: End If
  loc_FD0AD8: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E943E8
  'Data Table: 43503C
  Dim Me As Recordset15
  loc_E94376: On Error Goto loc_E943DF
  loc_E9437F: Me.MoveFirst
  loc_E943A9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E943D1: Proc_5_0_110649C(&HFF, Me, global_52)
  loc_E943D9: Call Proc_316_24_1134D14(0)
  loc_E943DE: Exit Sub
  loc_E943DF: ' Referenced from: E94376
  loc_E943DF: Proc_6_60_E62BC4(var_A0)
  loc_E943E4: Exit Sub
End Sub

Public Sub Proc_316_22_F8B9A0
  'Data Table: 43503C
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim unk_435049 As Connection15
  Dim var_FC As Recordset15
  Dim var_100 As Fields15
  Dim var_114 As Field20
  Dim var_A4 As TextBox
  loc_F8B868: Set var_8C = Me.TopCtrl1
  loc_F8B86E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_F8B887: If (CStr() = "Add") Then
  loc_F8B8B4:   var_C4 = CVar("Select Count(*) From Holiday Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and VDate=") 'String
  loc_F8B8C2:   Set var_8C = Me.Txt
  loc_F8B8C8:   Call 0.Method_Proc_316_22_F8B9A00 (CInt(0), var_A4, var_C4, var_F8, -1)
  loc_F8B8D7:   Proc_6_7_F25D88(var_B4, CVar(var_A4), var_FC, var_100)
  loc_F8B8DF:   var_D4 = 0 & var_B4 
  loc_F8B8ED:   unk_435049.Execute CStr(var_D4), var_114, var_124
  loc_F8B8F5:    = var_FC.Fields
  loc_F8B8FD:    = var_100.Item()
  loc_F8B905:    = var_114.Value
  loc_F8B936:   If (var_124 > 0) Then
  loc_F8B95A:     MsgBox("Duplicate Holiday ", &H40, "Information", var_C4, var_D4)
  loc_F8B975:     Set var_8C = Me.Txt
  loc_F8B97B:     Call 0.Method_Proc_316_22_F8B9A00 (CInt(0))
  loc_F8B983:     var_A4.SetFocus
  loc_F8B994:     Proc_316_22_F8B9A0 = &HFF
  loc_F8B99A:   End If
  loc_F8B99A: End If
  loc_F8B99A: Proc_316_22_F8B9A0 = var_A4
End Sub

Public Sub Proc_316_23_EADD00
  'Data Table: 43503C
  Dim var_98 As TextBox
  loc_EADC72: global_56 = vbNullString
  loc_EADC84: Set var_8C = Me.Txt
  loc_EADC8A: Call 0.Method_Proc_316_23_EADD00C (var_8E, var_86)
  loc_EADC9A: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EADCB0:   Set var_8C = Me.Txt
  loc_EADCB6:   Call 0.Method_Proc_316_23_EADD000 (CInt(var_86), var_98)
  loc_EADCBE:   var_98.Text = vbNullString
  loc_EADCDA:   Set var_8C = Me.Txt
  loc_EADCE0:   Call 0.Method_Proc_316_23_EADD000 (CInt(var_86), var_98)
  loc_EADCE8:   var_98.Tag = vbNullString
  loc_EADCF7: Next var_92 'Byte
  loc_EADCFD: Exit Sub
End Sub

Public Sub Proc_316_24_1134D14
  'Data Table: 43503C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_A4 As Fields15
  loc_11349D0: On Error Goto loc_1134D0D
  loc_11349EA: If (Me.RecordCount > 0) Then
  loc_1134A29:   Set var_A4 = Me.Txt
  loc_1134A2F:   Call 0.Method_Proc_316_24_1134D140 (CInt(0), var_A8)
  loc_1134A37:   var_A8.Text = CStr(Me.Fields.Item("VDate").Value)
  loc_1134A89:   Set var_A4 = Me.Txt
  loc_1134A8F:   Call 0.Method_Proc_316_24_1134D140 (CInt(1), var_A8)
  loc_1134A97:   var_A8.Text = CStr(Me.Fields.Item("Remarks").Value)
  loc_1134B56:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1134B9E:   Me.LblUser.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")))))
  loc_1134C7F:   var_180 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_1134CC7:   Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))))
  loc_1134D02: Else
  loc_1134D02:   Call Proc_316_23_EADD00()
  loc_1134D07: End If
  loc_1134D07: Call Proc_316_26_DFD838()
  loc_1134D0C: Exit Sub
  loc_1134D0D: ' Referenced from: 11349D0
  loc_1134D0D: Proc_6_60_E62BC4()
  loc_1134D12: Exit Sub
End Sub

Public Sub Proc_316_25_E7A934(arg_C) 'E7A934
  'Data Table: 43503C
  Dim var_98 As TextBox
  loc_E7A8E2: Set var_8C = Me.Txt
  loc_E7A8E8: Call 0.Method_Proc_316_25_E7A934C (var_8E, var_86)
  loc_E7A8F8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7A90E:   Set var_8C = Me.Txt
  loc_E7A914:   Call 0.Method_Proc_316_25_E7A9340 (CInt(var_86), var_98)
  loc_E7A91C:   var_98.Enabled = arg_C
  loc_E7A92B: Next var_92 'Byte
  loc_E7A931: Exit Sub
End Sub

Public Sub Proc_316_26_DFD838
  'Data Table: 43503C
  loc_DFD834: Exit Sub
End Sub

Public Sub Proc_316_27_ED16D0
  'Data Table: 43503C
  loc_ED1630: Call Proc_316_26_DFD838()
  loc_ED1640: Set var_88 = Me.Txt
  loc_ED1646: Call 0.Method_Proc_316_27_ED16D00 (CInt(0))
  loc_ED166F: If (Proc_6_27_EA565C(var_8C, "Date") = 0) Then
  loc_ED1672:   Exit Sub
  loc_ED1673: End If
  loc_ED16AA: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_ED16AD:   Call TopCtrl1_UnknownEvent_16()
  loc_ED16B5: Else
  loc_ED16BB:   Call 0.Method_arg_1E8 (var_88)
  loc_ED16C3:   Call var_88.SetFocus
  loc_ED16CC: End If
  loc_ED16CC: Exit Sub
End Sub
