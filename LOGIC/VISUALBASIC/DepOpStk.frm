VERSION 5.00
Begin VB.Form DepOpStk
  Caption = "Location wise Opening Stock Entry"
  BackColor = &HF8EBFC&
  ForeColor = &H404040&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 7530
  ClientHeight = 6180
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7530
    Height = 450
    TabIndex = 15
  End
End
End

Attribute VB_Name = "DepOpStk"

Private global_98 As Integer
Private global_100 As Integer
Private MasterFormExit As Integer
Private global_84 As Integer

Private Sub FGrid_UnknownEvent_0 'EA62A0
  'Data Table: 4771AC
  Dim var_BC As TextBox
  loc_EA621C: Set var_88 = ()
  loc_EA623B: If (CDbl(CLng(TxtGrid.DispID_10)) = CDbl(global_68)) Then
  loc_EA624A:   Set var_88 = (CVar(CLng(1)))
  loc_EA6258: End If
  loc_EA6265: Set var_88 = TxtGrid.DispID_B(CVar(CLng("14737632")))
  loc_EA627E: Set var_88 = var_BC(0)
  loc_EA6284: Call 0.Method_FGrid_UnknownEvent_00 (0)
  loc_EA628C: var_BC.Visible = TxtGrid.DispID_10
  loc_EA6298: Call Proc_130_48_E87070()
  loc_EA629D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E68880
  'Data Table: 4771AC
  Dim var_8C As TextBox
  loc_E6883C: Set var_88 = var_8C(0)
  loc_E68842: Call 0.Method_FGrid_UnknownEvent_10 (var_8E)
  loc_E6884A:  = var_8C.Visible
  loc_E6885C: If (var_8E = 0) Then
  loc_E6886F:   Set var_88 = (CVar(CLng(global_68)))
  loc_E6887D: End If
  loc_E6887D: Exit Sub
  loc_E6887E: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF564
  'Data Table: 4771AC
  loc_DFF55C: Call Proc_130_42_E45BA8()
  loc_DFF561: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '116DFDC
  'Data Table: 4771AC
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_B0 As Variant
  Dim var_EC As Long
  loc_116DC14: Set var_88 = Me.TopCtrl1
  loc_116DC1A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_116DC5F: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_116DC68:   Call Form_KeyDown(Cancel, arg_10)
  loc_116DC6D: End If
  loc_116DC71: Set var_88 = Me.TopCtrl1
  loc_116DC77: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_116DC90: If (CStr() = "Browse") Then
  loc_116DC93:   Exit Sub
  loc_116DC94: End If
  loc_116DC98: Set var_A0 = ()
  loc_116DC9E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DCAB: Set var_B4 = ()
  loc_116DCB1: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DCC8: Set var_88 = ((CLng(Cancel) = &H26))
  loc_116DCCE: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DD08: If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - (CLng(var_C4) - 1))))) Then
  loc_116DD1B:   Set var_88 = (CVar(CLng(global_68)))
  loc_116DD21:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_116DD31:   var_9C = "+{Tab}"
  loc_116DD37:   Proc_303_0_FB9B68(CStr())
  loc_116DD41:   Cancel = 0
  loc_116DD47: Else
  loc_116DD4B:   Set var_A0 = 0(Cancel)
  loc_116DD51:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_116DD68:   Set var_88 = ((CLng(Cancel) = &H28))
  loc_116DD6E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DD9E:   If ( And (CDbl(Val(CStr())) = CDbl((CLng(var_B0) - 1)))) Then
  loc_116DDB1:     Set var_88 = (CVar(CLng(global_68)))
  loc_116DDB7:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_116DDC4:     Call Proc_130_49_F0BC34(0)
  loc_116DDC9:   End If
  loc_116DDC9: End If
  loc_116DDD6: Set var_88 = (Cancel)
  loc_116DDDC: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DDEF: Set var_A0 = (CVar(CStr(CLng())))
  loc_116DDF5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000B()
  loc_116DE19: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_116DE20:   Set var_88 = ()
  loc_116DE26:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DE2F:   var_EC = CLng()
  loc_116DE3F:   If (var_EC = CLng(1)) Then
  loc_116DE46:     Set var_88 = (var_EC)
  loc_116DE4C:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DE5E:     Set var_A0 = (CVar(CLng()))
  loc_116DE64:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DE82:     LateIdCallSt
  loc_116DE9E:     Set var_88 = (CVar(CLng())(vbNullString))
  loc_116DEA4:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DECA:     LateIdCallSt
  loc_116DEE0:     Set var_88 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_116DEE6:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DF0C:     LateIdCallSt
  loc_116DF22:     Set var_88 = CVar(CLng())(CVar(CLng(2))(vbNullString))
  loc_116DF28:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DF31:     var_D4 = CVar(CLng()) 'Long
  loc_116DF48:     Set var_A0 = CVar(CLng(3))(vbNullString)
  loc_116DF4E:     LateIdCallSt
  loc_116DF63:   Else
  loc_116DF6A:     If (var_EC = CLng(3)) Then
  loc_116DF71:       Set var_88 = var_D4(var_A0)
  loc_116DF77:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_116DF89:       Set var_A0 = (CVar(CLng()))
  loc_116DF8F:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_116DFA7:       Set var_B4 = CVar(CLng())(vbNullString)
  loc_116DFAD:       LateIdCallSt
  loc_116DFC5:     End If
  loc_116DFC5:   End If
  loc_116DFC5: End If
  loc_116DFCB: If (Cancel = &HD) Then
  loc_116DFD3:   global_98 = 0
  loc_116DFD6: End If
  loc_116DFD8: Cancel = 0
  loc_116DFDB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E10178
  'Data Table: 4771AC
  loc_E10169: Call FGrid_UnknownEvent_C()
  loc_E10173: global_98 = 0
  loc_E10176: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1015530
  'Data Table: 4771AC
  Dim var_9C As String
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_1015320: Set var_88 = Me.TopCtrl1
  loc_1015326: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_101533F: If (CStr() = "Browse") Then
  loc_1015342:   Exit Sub
  loc_1015343: End If
  loc_1015347: Set var_88 = ()
  loc_101534D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1015356: var_A0 = CLng()
  loc_1015366: If (var_A0 = CLng(1)) Then
  loc_101536D:   Set var_C4 = (var_A0)
  loc_1015391:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_10153BE:   Set var_B4 = var_C4
  loc_10153D0:   Proc_6_63_110ABA4(Me, var_B4, (), 0)
  loc_10153F8:   Set var_88 = var_B4(0)
  loc_10153FE:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C, 0, Asc(var_9C))
  loc_1015406:   0 = var_B4.Text
  loc_101541F:   If (Len(var_9C) <= 1) Then
  loc_101542E:     Set var_88 = var_B4(0)
  loc_1015434:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_101543C:     var_CA = var_B4.Text
  loc_101544D:     Set var_B8 = var_C4(0)
  loc_1015453:     Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_101545B:     var_C4.Text = 
  loc_101546E:   End If
  loc_101547A:   Set var_88 = var_B4(0)
  loc_1015480:   Call 0.Method_FGrid_UnknownEvent_C0 (var_9C)
  loc_1015488:    = var_B4.Text
  loc_101549A:   Set var_B8 = var_C4(0)
  loc_10154A0:   Call 0.Method_FGrid_UnknownEvent_C0 (Len(var_9C))
  loc_10154A8:   var_C4.SelStart = 
  loc_10154BE: Else
  loc_10154C5:   If (var_A0 = CLng(3)) Then
  loc_1015506:     Proc_6_63_110ABA4(Me, (), (), 0)
  loc_1015518:   End If
  loc_1015518: End If
  loc_1015522: If (CLng(Cancel) <> &HD) Then
  loc_101552A:   global_98 = &HFF
  loc_101552D: End If
  loc_101552D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10577EC
  'Data Table: 4771AC
  Dim var_B4 As Variant
  Dim arg_3408 As Variant
  loc_1057588: Set var_90 = Me.TopCtrl1
  loc_105758E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_10575A7: If (CStr() = "Browse") Then
  loc_10575AA:   Exit Sub
  loc_10575AB: End If
  loc_10575AF: Set var_90 = ()
  loc_10575B5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_D()
  loc_10575C8: If (CLng() = CLng(0)) Then
  loc_10575CB:   Exit Sub
  loc_10575CC: End If
  loc_10575DD: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10575E4:   Set var_90 = ()
  loc_10575EA:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10575FF:   If (CLng() >= 1) Then
  loc_1057639:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_1057640:       Set var_90 = ()
  loc_1057646:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_105765B:       If (CLng() > 2) Then
  loc_1057662:         Set var_90 = ()
  loc_1057668:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_105767A:         Set var_118 = (CVar(CLng()))
  loc_1057680:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_1057695:       Else
  loc_10576A2:         Set var_90 = (1)
  loc_10576A8:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_10576D6:         Set var_118 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_10576DC:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_10576FD:         Set var_90 = (1)
  loc_1057703:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_105770B:       End If
  loc_105770F:       Set var_90 = Me.TopCtrl1
  loc_1057715:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_105772E:       If (CStr() = "Add") Then
  loc_105773A:         Set var_90 = 1(var_86)
  loc_1057740:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_1057756:         For var_124 =  To CInt((CLng() - 1)):  = var_124 'Integer
  loc_1057760:           var_B4 = CVar(CLng(var_86)) 'Long
  loc_105777A:           Set var_90 = CVar(CLng(0))(CVar(CStr(var_86)))
  loc_1057780:           LateIdCallSt
  loc_1057791:         Next var_124 'Integer
  loc_1057796:       End If
  loc_1057796:     End If
  loc_1057799:   Else
  loc_10577BA:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F4, var_114)
  loc_10577CA:   End If
  loc_10577CE:   Set var_90 = ()
  loc_10577D4:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_10577DF: End If
  loc_10577E4: Set var_8C = Nothing
  loc_10577E7: Exit Sub
  loc_10577E8: Exit Sub
  loc_10577E9: arg_3408 = CVar() 'Long
End Sub

Private Sub FGrid_UnknownEvent_15 'E43E60
  'Data Table: 4771AC
  Dim var_8C As TextBox
  loc_E43E34: Call Proc_130_48_E87070()
  loc_E43E44: Set var_88 = var_8C(0)
  loc_E43E4A: Call 0.Method_FGrid_UnknownEvent_150 (0)
  loc_E43E52: var_8C.Visible = 
  loc_E43E5E: Exit Sub
End Sub

Private Sub DGDepart_UnknownEvent_9 'F3EE24
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3ED15: Set var_A8 = (False)
  loc_F3ED1B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_F3ED3A: If (Me.RecordCount > 0) Then
  loc_F3ED79:   Set var_B4 = var_B8(CInt(4))
  loc_F3ED7F:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_F3ED87:   var_B8.Text = 
  loc_F3EDBA:   var_B0 = Me.Fields.Item("Code")
  loc_F3EDD9:   Set var_B4 = var_B8(CInt(4))
  loc_F3EDDF:   Call 0.Method_DGDepart_UnknownEvent_90 (CStr(var_B0.Value))
  loc_F3EDE7:   var_B8.Tag = 
  loc_F3EDFD: End If
  loc_F3EE08: Set var_A8 = var_B0(CInt(4))
  loc_F3EE0E: Call 0.Method_DGDepart_UnknownEvent_90 ()
  loc_F3EE16: var_B0.SetFocus
  loc_F3EE22: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EDA6A8
  'Data Table: 4771AC
  Dim var_8C As String
  Dim var_98 As TextBox
  loc_EDA5F4: On Error Goto loc_EDA6A0
  loc_EDA61A: Call Proc_130_47_EC8AD4(Proc_5_1_100CB50("ADD", Me))
  loc_EDA625: Call Proc_130_46_F5C998(global_64)
  loc_EDA62F: var_8C = CStr(MemVar_1F920EC)
  loc_EDA63D: Set var_90 = var_98(CInt(2))
  loc_EDA643: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_8C)
  loc_EDA64B: var_98.Text = 
  loc_EDA660: Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_EDA66B: global_72 = var_8C
  loc_EDA67D: Set var_90 = var_98(CInt(4))
  loc_EDA683: Call 0.Method_TopCtrl1_UnknownEvent_A0 (var_8C)
  loc_EDA68B: var_98.SetFocus
  loc_EDA69C: Set var_88 = Nothing
  loc_EDA69F: Exit Sub
  loc_EDA6A0: ' Referenced from: EDA5F4
  loc_EDA6A0: Proc_6_60_E62BC4()
  loc_EDA6A5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EB4BAC
  'Data Table: 4771AC
  loc_EB4B20: On Error Goto loc_EB4BA3
  loc_EB4B5A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EB4B80:   Call Proc_130_47_EC8AD4(Proc_5_1_100CB50("INI", Me))
  loc_EB4B8B:   Call Proc_130_44_135B81C(global_64)
  loc_EB4B96:   global_104 = vbNullString
  loc_EB4B9F:   global_100 = 0
  loc_EB4BA2: End If
  loc_EB4BA2: Exit Sub
  loc_EB4BA3: ' Referenced from: EB4B20
  loc_EB4BA3: Proc_6_60_E62BC4(global_100)
  loc_EB4BA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12F3610
  'Data Table: 4771AC
  Dim unk_4771C1 As Connection15
  Dim Me As Recordset15
  Dim var_11C As Fields15
  Dim var_F4 As Variant
  Dim var_124 As String
  loc_12F2F44: On Error Goto loc_12F35BF
  loc_12F2F7E: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_F4, var_114) = 6) Then
  loc_12F2F8A:   unk_4771C1.BeginTrans var_118
  loc_12F2FA0:   var_94 = Me.Bookmark 'Variant
  loc_12F2FFA:   unk_4771C1.Execute CStr("Delete From Ledger Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F3045:   var_160 = 0
  loc_12F3058:   var_158 = 0
  loc_12F3063:   var_154 = 0
  loc_12F3076:   var_14C = 0
  loc_12F3081:   var_148 = 0
  loc_12F3094:   var_140 = 0
  loc_12F30DD:   Proc_154_5_10E33A4(MemVar_1F92044, "Ledger", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F315B:   unk_4771C1.Execute CStr("Delete From Purch1 Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F31A6:   var_160 = 0
  loc_12F31B9:   var_158 = 0
  loc_12F31C4:   var_154 = 0
  loc_12F31D7:   var_14C = 0
  loc_12F31E2:   var_148 = 0
  loc_12F31F5:   var_140 = 0
  loc_12F323E:   Proc_154_5_10E33A4(MemVar_1F92044, "Purch1", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F32BC:   unk_4771C1.Execute CStr("Delete From Stock Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, -1
  loc_12F3307:   var_160 = 0
  loc_12F331A:   var_158 = 0
  loc_12F3325:   var_154 = 0
  loc_12F3338:   var_14C = 0
  loc_12F3343:   var_148 = 0
  loc_12F3356:   var_140 = 0
  loc_12F339F:   Proc_154_5_10E33A4(MemVar_1F92044, "Stock", "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F340F:   var_F4 = "Delete From KClStk Where Docid='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_12F341D:   unk_4771C1.Execute CStr(var_F4), var_114, -1
  loc_12F3468:   var_160 = 0
  loc_12F347B:   var_158 = 0
  loc_12F3486:   var_154 = 0
  loc_12F3499:   var_14C = 0
  loc_12F34A4:   var_148 = 0
  loc_12F34B7:   var_140 = 0
  loc_12F34F7:   var_124 = "KClStk"
  loc_12F3500:   Proc_154_5_10E33A4(MemVar_1F92044, var_124, "DocId", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_12F352E:   unk_4771C1.CommitTrans
  loc_12F353E:   Me.Requery -1
  loc_12F355E:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12F356B:     Me.Bookmark = var_94
  loc_12F3573:   Else
  loc_12F3587:     If (Me.EOF = 0) Then
  loc_12F3590:       Me.MoveLast
  loc_12F3595:     End If
  loc_12F3595:   End If
  loc_12F3595:   Call Proc_130_44_135B81C(var_140, 0, var_148, var_14C)
  loc_12F35B6:   Proc_5_0_110649C(&HFF, Me, global_64, 0)
  loc_12F35BE: End If
  loc_12F35BE: Exit Sub
  loc_12F35BF: ' Referenced from: 12F2F44
  loc_12F35C5: unk_4771C1.RollbackTrans
  loc_12F35D2: Set var_11C = Err()
  loc_12F35D8: Call 0.Method_arg_2C (var_124, 0, var_154)
  loc_12F35F9: MsgBox(CVar(var_124), &H10, " Deletion Message", var_F4, var_114)
  loc_12F360C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'E8055C
  'Data Table: 4771AC
  Dim var_94 As TextBox
  loc_E804F8: On Error Goto loc_E80554
  loc_E8051E: Call Proc_130_47_EC8AD4(Proc_5_1_100CB50("EDIT", Me))
  loc_E80534: Set var_8C = var_94(CInt(4))
  loc_E8053A: Call 0.Method_TopCtrl1_UnknownEvent_D0 (global_64)
  loc_E80542: var_94.SetFocus
  loc_E8054E: Call Proc_130_52_E899FC()
  loc_E80553: Exit Sub
  loc_E80554: ' Referenced from: E804F8
  loc_E80554: Proc_6_60_E62BC4()
  loc_E80559: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A3B0
  'Data Table: 4771AC
  loc_E1A3A5: Me.Global.Unload Me
  loc_E1A3AD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EB4ADC
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB4A4C: On Error Goto loc_EB4AD6
  loc_EB4A66: If (Me.RecordCount <= 0) Then
  loc_EB4A6F:   var_B8 = "Information"
  loc_EB4A8A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB4A9A:   Exit Sub
  loc_EB4A9B: End If
  loc_EB4A9E: MemVar_1F920E4 = "Select DISTINCT Docid as SearchCode,K.Vtype As VType,Convert(Varchar(10),K.VNo) as VrNo ,Convert(Varchar(12),K.VDate,103) as VDate,GodownMast.NAME AS Location From KClStk K LEFT JOIN GodownMast ON K.DEPARTCODE=GodownMast.CODE Order By VRno"
  loc_EB4AAB: Proc_6_126_F1BCC0("1000,1000,1000,4000")
  loc_EB4AB9: MemVar_1F92120 = Me
  loc_EB4AD0: Call 0.Method_arg_2B0 (1)
  loc_EB4AD5: Exit Sub
  loc_EB4AD6: ' Referenced from: EB4A4C
  loc_EB4AD6: Proc_6_60_E62BC4(var_B8)
  loc_EB4ADB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E372D8
  'Data Table: 4771AC
  loc_E372C8: Proc_5_0_110649C(&HFF, Me)
  loc_E372D0: Call Proc_130_44_135B81C(global_64)
  loc_E372D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37278
  'Data Table: 4771AC
  loc_E37268: Proc_5_0_110649C(&HFF, Me)
  loc_E37270: Call Proc_130_44_135B81C(global_64)
  loc_E37275: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37098
  'Data Table: 4771AC
  loc_E37088: Proc_5_0_110649C(&HFF, Me)
  loc_E37090: Call Proc_130_44_135B81C(global_64)
  loc_E37095: Exit Sub
  loc_E37096: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E36F78
  'Data Table: 4771AC
  Dim arg_34FF As Double
  loc_E36F68: Proc_5_0_110649C(&HFF, Me)
  loc_E36F70: Call Proc_130_44_135B81C(global_64)
  loc_E36F75: Exit Sub
  loc_E36F76: arg_34FF = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFF024
  'Data Table: 4771AC
  loc_DFF01C: Exit Sub
  loc_DFF01D: Proc_6_60_E62BC4()
  loc_DFF022: Exit Sub
  loc_DFF023:  = 
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E1FF50
  'Data Table: 4771AC
  Dim Me As Recordset15
  loc_E1FF37: Me.Requery -1
  loc_E1FF47: Me.Requery -1
  loc_E1FF4C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '14681A4
  'Data Table: 4771AC
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_124 As Variant
  Dim var_C0 As String
  Dim var_158 As String
  Dim unk_4771C1 As Connection15
  Dim var_BC As Variant
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Variant
  Dim var_B4 As Fields15
  Dim var_8E As Integer
  Dim var_1DC As Variant
  Dim var_540 As Double
  Dim var_214 As TextBox
  Dim var_548 As Double
  Dim var_234 As TextBox
  Dim var_550 As Double
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1F0 As String
  Dim var_154 As Variant
  Dim var_258 As Variant
  Dim var_408 As Variant
  Dim var_134 As Variant
  Dim var_114 As Variant
  Dim var_88 As Recordset15
  Dim var_1EC As String
  loc_14676D0: On Error Goto loc_1468189
  loc_14676DE: Set var_B4 = var_B8(CInt(2))
  loc_14676E4: Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_14676EC: var_C0 = "Invoice Date"
  loc_146770D: If (Proc_6_27_EA565C(var_B8) = 0) Then
  loc_1467710:   Exit Sub
  loc_1467711: End If
  loc_146771C: Set var_B4 = var_B8(CInt(1))
  loc_1467722: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_146772A: var_C0 = "Invoice No"
  loc_1467733: Set var_BC = var_B8
  loc_146774B: If (Proc_6_27_EA565C(var_BC) = 0) Then
  loc_146774E:   Exit Sub
  loc_146774F: End If
  loc_1467752: Call Proc_130_45_1090098(var_C2)
  loc_146775D: If (var_C2 = 0) Then
  loc_1467760:   Exit Sub
  loc_1467761: End If
  loc_146776C: Set var_B4 = var_B8(0)
  loc_1467772: Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_146777A: var_B8.Visible = var_C0
  loc_1467786: Call Proc_130_48_E87070()
  loc_14677A1: Set var_B4 = 1(1)
  loc_14677A7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_14677B2: var_124 = CVar(CStr()) 'String
  loc_14677B8: var_134 = Trim(var_124)
  loc_14677D4: If (var_134 = vbNullString) Then
  loc_14677EA:   var_114 = "Item Detail Required "
  loc_14677F0:   MsgBox(var_114, 0, var_124, var_134, var_154)
  loc_146780D:   Set var_B4 = (1)
  loc_1467813:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_146781F:   Set var_B4 = ()
  loc_1467825:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_146783D:   Set var_B4 = (CVar(CLng("14737632")))
  loc_1467843:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_146784B:   Exit Sub
  loc_146784C: End If
  loc_146784F: Call Proc_130_51_1012A04(var_C2)
  loc_146785A: If (var_C2 = 0) Then
  loc_1467868:   Set var_B4 = var_B8(CInt(2))
  loc_146786E:   Call 0.Method_TopCtrl1_UnknownEvent_160 ()
  loc_1467876:   var_B8.SetFocus
  loc_1467882:   Exit Sub
  loc_1467883: End If
  loc_1467887: Set var_B4 = Me.TopCtrl1
  loc_146788D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1467895: var_C0 = CStr()
  loc_14678A6: If (var_C0 = "Add") Then
  loc_14678D6:   Set var_B4 = var_B8(CInt(3))
  loc_14678DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, "Select Count(*) From Purch1 Where DocID='", var_114, -1, var_BC)
  loc_14678FD:   unk_4771C1.Execute 0 & var_C0 & "'", var_164, var_124
  loc_1467905:    = var_BC.Fields
  loc_146790D:    = var_B8.Text.Item()
  loc_1467915:    = var_164.Value
  loc_1467942:   If (var_124 > 0) Then
  loc_146794B:     Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_146795E:     Set var_B4 = var_B8(CInt(3))
  loc_1467964:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_146796C:     var_B8.Text = var_C0
  loc_146797B:     Exit Sub
  loc_146797C:   End If
  loc_146797F: Else
  loc_146799C:   var_B8 = Me.Fields.Item("DocID")
  loc_14679A4:   var_114 = var_B8.Value
  loc_14679AD:   var_C0 = CStr(var_114)
  loc_14679B3:   global_72 = var_C0
  loc_14679C4: End If
  loc_14679D2: unk_4771C1.BeginTrans var_168
  loc_14679F5: Set var_B4 = var_B8(CInt(3))
  loc_14679FB: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, "Delete From KClStk Where DocID='", var_114)
  loc_1467A03: -1 = var_B8.Text
  loc_1467A1C: unk_4771C1.Execute var_BC & var_C0 & "'", &HFF, 
  loc_1467A3F: Set var_B4 = 1(var_98)
  loc_1467A45: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_1467A5B: For var_16C =  To CInt((CLng() - 1)):  = var_16C 'Integer
  loc_1467A76:   Set var_B4 = CVar(CLng(var_98))(CVar(CLng(1)))
  loc_1467A7C:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1467A8D:   var_134 = Trim(CVar(CStr()))
  loc_1467AB4:   Set var_B8 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1467ABA:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41((var_134 <> vbNullString))
  loc_1467AC5:   var_C0 = CStr()
  loc_1467AF3:   If CBool( And (CDbl(Val(var_C0)) <> CDbl(0))) Then
  loc_1467B04:     Set var_B4 = var_B8(CInt(3))
  loc_1467B0A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_1467B12:      = var_B8.Text
  loc_1467B2C:     Set var_BC = CVar(CLng(var_98))(CVar(CLng(0)))
  loc_1467B32:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1467B45:     var_540 = Val(CStr())
  loc_1467B56:     Set var_160 = var_164(CInt(0))
  loc_1467B5C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1EC)
  loc_1467B76:      = (var_1FC).Caption
  loc_1467B89:     Set var_210 = var_214(CInt(1))
  loc_1467B8F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_218)
  loc_1467B97:      = var_214.Text
  loc_1467BA4:     var_548 = Val(var_218)
  loc_1467BB2:     Set var_228 = var_22C(CInt(2))
  loc_1467BB8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_548)
  loc_1467BC0:     var_124 = CVar(var_22C) 'Address
  loc_1467BC7:     Proc_6_7_F25D88(var_134)
  loc_1467BDA:     Set var_230 = var_234(CInt(4))
  loc_1467BE0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_238)
  loc_1467BE8:     var_124 = var_234.Tag
  loc_1467C02:     Set var_26C = CVar(CLng(var_98))(CVar(CLng(4)))
  loc_1467C08:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1467C29:     Set var_300 = CVar(CLng(var_98))(CVar(CLng(3)))
  loc_1467C2F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1467C42:     var_550 = Val(CStr())
  loc_1467C5A:     Set var_398 = CVar(CLng(var_98))(CVar(CLng(2)))
  loc_1467C60:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41(var_550)
  loc_1467C6F:     Proc_6_104_ED5D18(var_438)
  loc_1467C78:     Set var_46C = Me.TopCtrl1
  loc_1467C7E:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1467CC9:     var_158 = "Insert Into KClStk (DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,DepartCode,Item,Qty,Unit,U_Name,U_EntDt,U_AE) Values ('" & var_C0
  loc_1467CD0:     var_1E0 = var_158 & "',"
  loc_1467D20:     var_154 = CVar(var_1E0 & CStr(var_164.Tag) & ",'" & var_1EC & "','" & var_1FC & "','" & MemVar_1F92070 & "'," & CStr(var_548) & ",") 'String
  loc_1467D2F:     var_1DC = var_154 & var_134 & ",'" 
  loc_1467D39:     var_258 = var_1DC & CVar(var_238) 
  loc_1467D88:     var_408 = var_258 & "','" & CVar(CStr(var_27C)) & "'," & CVar(var_550) & ",'" & CVar(CStr(var_3A8)) & "','" & CVar(MemVar_1F920C8) 
  loc_1467DBF:     unk_4771C1.Execute CStr(var_408 & "'," & var_438 & ",'" & IIf((CStr(var_47C) = "Add"), "A", "E") & "')"), var_534, -1
  loc_1467E59:   End If
  loc_1467E5C: Next var_16C 'Integer
  loc_1467E65: Set var_B4 = Me.TopCtrl1
  loc_1467E6B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1467E84: If (CStr() = "Add") Then
  loc_1467E9B:   var_C0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1467EC1:   Set var_B4 = var_B8(CInt(0))
  loc_1467EC7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1E0, var_C0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='", var_1DC)
  loc_1467ECF:   -1 = var_B8.Tag
  loc_1467EDF:   var_134 = CVar(var_164 & var_1E0 & "' And VP.Date_From<=") 'String
  loc_1467EF0:   Set var_BC = var_160(CInt(2))
  loc_1467EF6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (var_1EC)
  loc_1467EFE:   var_134 = var_160.Text
  loc_1467F0C:   Proc_6_7_F25D88(var_124)
  loc_1467F2B:   unk_4771C1.Execute CStr(CVar(var_1EC) & var_124 & " Order By VP.Date_From DESC"), , 
  loc_1467F36:   Set var_88 = var_164
  loc_1467F7A:   If (var_88.RecordCount > 0) Then
  loc_1467F8B:     Set var_B4 = var_B8(CInt(1))
  loc_1467F91:     Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0)
  loc_1467F99:      = var_B8.Text
  loc_1467FA6:     var_540 = Val(var_C0)
  loc_1467FAF:     var_D4 = "V_Type"
  loc_1467FF6:     Proc_6_7_F25D88(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_1468029:     var_1E8 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_540) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_1468051:     var_1F0 = CStr(CVar(var_1E8 & MemVar_1F92078 & "') and V_Type='") & var_88.Fields.Item(var_D4).Value & "' and Date_From=" & var_1DC)
  loc_146805B:     unk_4771C1.Execute var_1F0, var_258, -1
  loc_1468095:   End If
  loc_1468095: End If
  loc_146809B: unk_4771C1.CommitTrans
  loc_14680B3: Set var_B4 = var_B8(CInt(3))
  loc_14680B9: Call 0.Method_TopCtrl1_UnknownEvent_160 (var_C0, 0)
  loc_14680C1: var_210 = var_B8.Text
  loc_14680D5: var_8E = 0
  loc_14680E3: Me.Requery -1
  loc_146810D: Me.Find "SearchCode ='" & "SearchCode ='" & var_C0 & "'", 0, 1
  loc_146811D: Set var_B4 = Me.TopCtrl1
  loc_1468123: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_D4)
  loc_146813C: If (CStr(var_8E) = "Add") Then
  loc_146813F:   Call TopCtrl1_UnknownEvent_A()
  loc_1468144:   Exit Sub
  loc_1468145: End If
  loc_1468168: Call Proc_130_47_EC8AD4(Proc_5_1_100CB50("INI", Me), global_64)
  loc_1468173: Call Proc_130_44_135B81C(var_540)
  loc_146817D: global_100 = 0
  loc_1468185: Set var_88 = Nothing
  loc_1468188: Exit Sub
  loc_1468189: ' Referenced from: 14676D0
  loc_146818F: If (var_8E = &HFF) Then
  loc_1468198:   unk_4771C1.RollbackTrans
  loc_146819D: End If
  loc_146819D: Proc_6_60_E62BC4(global_100)
  loc_14681A2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FE6C20
  'Data Table: 4771AC
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FE6A5A: Set var_88 = var_8C(Index)
  loc_FE6A60: Call 0.Method_Txt_GotFocus0 ()
  loc_FE6A6E: Proc_6_74_E226B0(var_8C)
  loc_FE6A7A: Call Proc_130_48_E87070()
  loc_FE6A8D: If (Index = CInt(4)) Then
  loc_FE6ADE:   Set var_88 = var_8C(Index)
  loc_FE6AE4:   Call 0.Method_Txt_GotFocus0 (var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_FE6AEC:   var_92 = var_8C.Text
  loc_FE6B04:   If ( Or (var_A0 = vbNullString)) Then
  loc_FE6B07:     Exit Sub
  loc_FE6B08:   End If
  loc_FE6B15:   Set var_88 = var_8C(Index)
  loc_FE6B1B:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_FE6B23:    = var_8C.Text
  loc_FE6B2E:   global_108 = var_A0
  loc_FE6B49:   Set var_88 = var_8C(Index)
  loc_FE6B4F:   Call 0.Method_Txt_GotFocus0 (var_A0)
  loc_FE6B57:    = var_8C.Text
  loc_FE6B5F:   var_D4 = CVar(var_A0) 'String
  loc_FE6BA4:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FE6BAD:     Me.MoveFirst
  loc_FE6BD2:     Set var_88 = var_8C(Index)
  loc_FE6BD8:     Call 0.Method_Txt_GotFocus0 (var_A0, "Name =", 0)
  loc_FE6BE0:     1 = var_8C.Text
  loc_FE6BEE:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_FE6C04:     Me.Find CStr(var_F8 & var_D4), , 
  loc_FE6C1C:   End If
  loc_FE6C1C: End If
  loc_FE6C1C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB0314
  'Data Table: 4771AC
  Dim var_86 As Integer
  loc_FB018E: If (CLng(Shift) = &H1B) Then
  loc_FB0191:   Call Proc_130_48_E87070()
  loc_FB0196:   Exit Sub
  loc_FB0197: End If
  loc_FB019A: var_86 = KeyCode
  loc_FB01A5: If (var_86 = CInt(4)) Then
  loc_FB01C0:   Set var_9C = Nothing
  loc_FB01CB:   Set var_98 = Nothing
  loc_FB01F9:   Proc_6_69_134A198((var_86), (), KeyCode, global_60, Shift)
  loc_FB020D: End If
  loc_FB0211: Set var_8C = 1(0)
  loc_FB0217: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007(var_98)
  loc_FB0229: If (CBool(var_9C) = 0) Then
  loc_FB0241:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB024A:     Proc_6_75_E527CC(Shift, arg_14)
  loc_FB024F:   End If
  loc_FB0253:   Set var_8C = Me.TopCtrl1
  loc_FB0259:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(0)
  loc_FB0272:   If (CStr() = "Add") Then
  loc_FB028A:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB0293:       Proc_6_76_E52838(Shift)
  loc_FB0298:     End If
  loc_FB029B:   Else
  loc_FB029F:     Set var_8C = Me.TopCtrl1
  loc_FB02A5:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_14)
  loc_FB02BE:     If (CStr() = "Edit") Then
  loc_FB02D6:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB02DF:         Proc_6_76_E52838(Shift)
  loc_FB02E4:       End If
  loc_FB02E4:     End If
  loc_FB02E4:   End If
  loc_FB02F9:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB0304:     Call Txt_Validate(KeyCode)
  loc_FB030C:     Call Proc_130_49_F0BC34(KeyCode, 0)
  loc_FB0311:   End If
  loc_FB0311: End If
  loc_FB0311: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE73E4
  'Data Table: 4771AC
  Dim var_86 As Integer
  loc_EE7324: On Error Goto loc_EE73DE
  loc_EE732A: Proc_6_58_E054C0(arg_10)
  loc_EE7332: var_86 = KeyAscii
  loc_EE733D: If (var_86 = CInt(1)) Then
  loc_EE734A:   Set var_8C = var_90(KeyAscii)
  loc_EE7350:   Call 0.Method_Txt_KeyPress0 (var_86)
  loc_EE736B:   Proc_6_42_129A86C(var_90, arg_10)
  loc_EE737A: Else
  loc_EE7382:   If (var_86 = CInt(4)) Then
  loc_EE7389:     Set var_8C = 0(8)
  loc_EE738F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_EE73A1:     If (CBool() = &HFF) Then
  loc_EE73B3:       var_AC = "Name"
  loc_EE73CE:       Proc_6_89_146F1AC((), KeyAscii, global_60)
  loc_EE73DD:     End If
  loc_EE73DD:   End If
  loc_EE73DD: End If
  loc_EE73DD: Exit Sub
  loc_EE73DE: ' Referenced from: EE7324
  loc_EE73DE: Proc_6_60_E62BC4(arg_10, var_AC)
  loc_EE73E3: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E504F4
  'Data Table: 4771AC
  loc_E504D2: Set var_88 = var_8C(Index)
  loc_E504D8: Call 0.Method_Txt_LostFocus0 ()
  loc_E504E6: Proc_6_73_E22704(var_8C)
  loc_E504F2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '12AE998
  'Data Table: 4771AC
  Dim var_94 As Integer
  Dim var_AC As String
  Dim var_B0 As Variant
  Dim var_98 As Variant
  Dim var_B4 As String
  Dim unk_4771C1 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_A8 As Variant
  Dim var_114 As Long
  Dim Me As Recordset15
  loc_12AE37C: On Error Goto loc_12AE98F
  loc_12AE382: var_94 = Cancel
  loc_12AE38D: If (var_94 = CInt(1)) Then
  loc_12AE394:   Set var_98 = Me.TopCtrl1
  loc_12AE39A:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_12AE3A2:   var_AC = CStr()
  loc_12AE3B3:   If (var_AC = "Add") Then
  loc_12AE3BC:     Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_12AE3DF:     Set var_98 = var_B0(CInt(3))
  loc_12AE3E5:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE3ED:     var_B0.Text = var_AC
  loc_12AE409:     (global_80).Caption = 
  loc_12AE411:   End If
  loc_12AE415:   Set var_98 = Me.TopCtrl1
  loc_12AE41B:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_12AE423:   var_AC = CStr()
  loc_12AE434:   If (var_AC = "Add") Then
  loc_12AE464:     Set var_98 = var_B0(CInt(3))
  loc_12AE46A:     Call 0.Method_Txt_Validate0 (var_AC, "Select Count(*) From Purch1 Where DocID='", var_A8, -1, var_CC)
  loc_12AE47B:     var_B4 = 0 & var_AC
  loc_12AE48B:     unk_4771C1.Execute var_B4 & "'", var_E4, var_F4
  loc_12AE493:      = var_CC.Fields
  loc_12AE49B:      = var_B0.Text.Item()
  loc_12AE4A3:      = var_E4.Value
  loc_12AE4D0:     If (var_F4 > 0) Then
  loc_12AE4D9:       Call 0.Method_arg_50 (var_AC)
  loc_12AE4FA:       MsgBox("Duplicate Invoice No.", &H40, CVar(var_AC), var_114, var_124)
  loc_12AE510:       Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_12AE520:       If (var_AC = vbNullString) Then
  loc_12AE52D:         Set var_98 = var_B0(Cancel)
  loc_12AE533:         Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE53B:         var_B0.SetFocus
  loc_12AE549:         arg_10 = &HFF
  loc_12AE54C:         Exit Sub
  loc_12AE54D:       End If
  loc_12AE553:       Call Proc_130_50_114E24C(MemVar_1F92044, var_AC)
  loc_12AE566:       Set var_98 = var_B0(CInt(3))
  loc_12AE56C:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE574:       var_B0.Text = arg_10
  loc_12AE585:       arg_10 = &HFF
  loc_12AE588:       Exit Sub
  loc_12AE589:     End If
  loc_12AE589:   End If
  loc_12AE58C: Else
  loc_12AE594:   If (var_94 = CInt(2)) Then
  loc_12AE5A5:     Set var_98 = var_B0(CInt(2))
  loc_12AE5AB:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE5B3:     arg_10 = var_B0.Text
  loc_12AE5C9:     var_114 = Len(Trim(CVar(var_AC)))
  loc_12AE5E3:     If (var_114 = 0) Then
  loc_12AE5F9:       Set var_98 = var_B0(CInt(2))
  loc_12AE5FF:       Call 0.Method_Txt_Validate0 (CStr(MemVar_1F920EC))
  loc_12AE607:       var_B0.Text = 
  loc_12AE619:     Else
  loc_12AE623:       Set var_98 = var_B0(Cancel)
  loc_12AE629:       Call 0.Method_Txt_Validate0 ()
  loc_12AE63C:       var_AC = Proc_6_33_1512840(var_B0)
  loc_12AE649:       Set var_D0 = var_E4(Cancel)
  loc_12AE64F:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE657:       var_E4.Text = 
  loc_12AE66A:     End If
  loc_12AE677:     Set var_98 = var_B0(Cancel)
  loc_12AE67D:     Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE685:      = var_B0.Text
  loc_12AE6A0:     Set var_CC = var_D0(Cancel)
  loc_12AE6A6:     Call 0.Method_Txt_Validate0 (var_B4)
  loc_12AE6AE:     (CDate(var_AC) >= MemVar_1F920F4) = var_D0.Text
  loc_12AE6D0:     If Not(( And (CDate(var_B4) <= MemVar_1F920FC))) Then
  loc_12AE6F4:       MsgBox("Invoice Date Not Between Current Fin. Year", 0, "Date Validate", var_114, var_124)
  loc_12AE70E:       Set var_98 = var_B0(Cancel)
  loc_12AE714:       Call 0.Method_Txt_Validate0 ()
  loc_12AE71C:       var_B0.SetFocus
  loc_12AE72A:       arg_10 = &HFF
  loc_12AE72D:       Exit Sub
  loc_12AE72E:     End If
  loc_12AE732:     Set var_98 = Me.TopCtrl1
  loc_12AE738:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(arg_10)
  loc_12AE740:     var_AC = CStr()
  loc_12AE751:     If (var_AC = "Add") Then
  loc_12AE75A:       Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_12AE76D:       Set var_98 = var_B0(CInt(3))
  loc_12AE773:       Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE77B:       var_B0.Text = var_AC
  loc_12AE78A:     End If
  loc_12AE78D:   Else
  loc_12AE795:     If (var_94 = CInt(4)) Then
  loc_12AE7A3:       Set var_98 = var_B0(CInt(4))
  loc_12AE7A9:       Call 0.Method_Txt_Validate0 ()
  loc_12AE7B1:       var_AC = "Department Name"
  loc_12AE7D2:       If (Proc_6_27_EA565C(var_B0) = 0) Then
  loc_12AE7E0:         Set var_98 = var_B0(CInt(4))
  loc_12AE7E6:         Call 0.Method_Txt_Validate0 (var_AC)
  loc_12AE7EE:         var_B0.SetFocus
  loc_12AE7FC:         arg_10 = &HFF
  loc_12AE7FF:         Exit Sub
  loc_12AE800:       End If
  loc_12AE84E:       Set var_98 = var_B0(Cancel)
  loc_12AE854:       Call 0.Method_Txt_Validate0 (var_AC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_12AE85C:       arg_10 = var_B0.Text
  loc_12AE874:       If ( Or (var_AC = vbNullString)) Then
  loc_12AE884:         Set var_98 = var_B0(Cancel)
  loc_12AE88A:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_12AE892:         var_B0.Text = 
  loc_12AE8AB:         Set var_98 = var_B0(Cancel)
  loc_12AE8B1:         Call 0.Method_Txt_Validate0 (vbNullString)
  loc_12AE8B9:         var_B0.Tag = 
  loc_12AE8C8:       Else
  loc_12AE903:         Set var_CC = var_D0(Cancel)
  loc_12AE909:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Name").Value))
  loc_12AE911:         var_D0.Text = 
  loc_12AE962:         Set var_CC = var_D0(Cancel)
  loc_12AE968:         Call 0.Method_Txt_Validate0 (CStr(Me.Fields.Item("Code").Value))
  loc_12AE970:         var_D0.Tag = 
  loc_12AE986:       End If
  loc_12AE986:     End If
  loc_12AE986:   End If
  loc_12AE986: End If
  loc_12AE98B: Set var_88 = Nothing
  loc_12AE98E: Exit Sub
  loc_12AE98F: ' Referenced from: 12AE37C
  loc_12AE98F: Proc_6_60_E62BC4()
  loc_12AE994: Exit Sub
End Sub

Private Sub Form_Load() '102B3A8
  'Data Table: 4771AC
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B8 As TextBox
  Dim Me As Recordset15
  loc_102B170: On Error Goto loc_102B3A2
  loc_102B181: Set var_88 = var_8C(CInt(4))
  loc_102B187: Call 0.Method_Form_Load0 (var_90)
  loc_102B18F:  = var_8C.Left
  loc_102B1A0: Set var_B4 = (CVar(var_90))
  loc_102B1A6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102B1C2: Set var_B4 = var_B8(CInt(4))
  loc_102B1C8: Call 0.Method_Form_Load0 (var_BC)
  loc_102B1D0:  = var_B8.Height
  loc_102B1E3: Set var_88 = var_8C(CInt(4))
  loc_102B1E9: Call 0.Method_Form_Load0 (var_90)
  loc_102B1F1:  = var_8C.Top
  loc_102B1FD: var_A0 = CVar((var_90 + var_BC)) 'Single
  loc_102B206: Set var_C0 = (CVar(var_90))
  loc_102B20C: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102B23A: Me.Recordset15.CursorLocation = 3
  loc_102B262: Me.Open "Select Code,I.Name as Name ,I.Unit,I.PurchRate as Rate From ItemMast I Where ItemType='Store' Order by Name", CVar(MemVar_1F92044), 3
  loc_102B270: CVarUnk
  loc_102B275: VerifyVarObj
  loc_102B27B: Set var_88 = 1(New)
  loc_102B281: LateIdStAd
  loc_102B2AB: Me.Recordset15.CursorLocation = 3
  loc_102B2D3: Me.Open "Select G.Code,G.Name From GodownMast G Left join Depart D on D.Code=G.Code Where D.RestType='Kitchen' Order by G.Name", CVar(MemVar_1F92044), 2
  loc_102B2E1: CVarUnk
  loc_102B2E6: VerifyVarObj
  loc_102B2EC: Set var_88 = 3(New)
  loc_102B2F2: LateIdStAd
  loc_102B31C: Me.Recordset15.CursorLocation = 3
  loc_102B344: Me.Open "Select Distinct K.Docid as SearchCode,K.DocID From KClStk K Order by Docid", CVar(MemVar_1F92044), 3
  loc_102B36C: Call Proc_130_47_EC8AD4(Proc_5_1_100CB50("INI", Me, New, 1, -1), Me, -1)
  loc_102B389: Set var_88 = Me
  loc_102B38F: Proc_6_23_DFBA28(var_88, 5370, 6735)
  loc_102B397: Call Proc_130_41_102B638(var_88)
  loc_102B39C: Call Proc_130_44_135B81C(-1)
  loc_102B3A1: Exit Sub
  loc_102B3A2: ' Referenced from: 102B170
  loc_102B3A2: Proc_6_60_E62BC4()
  loc_102B3A7: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E58738
  'Data Table: 4771AC
  loc_E58703: Set global_56 = Nothing
  loc_E58715: Set global_60 = Nothing
  loc_E58727: Set global_64 = Nothing
  loc_E58733: MasterFormExit = 0
  loc_E58736: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2517C
  'Data Table: 4771AC
  loc_E25161: If (MasterFormExit = &HFF) Then
  loc_E25171:   Me.Global.Unload Me
  loc_E25179: End If
  loc_E25179: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E37518
  'Data Table: 4771AC
  loc_E374EC: On Error Goto loc_E37510
  loc_E37507: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3750F: Exit Sub
  loc_E37510: ' Referenced from: E374EC
  loc_E37510: Proc_6_60_E62BC4(Shift)
  loc_E37515: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10C57D4
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_A8 As Fields15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_DC As Variant
  Dim var_FC As Variant
  loc_10C54FD: Set var_A8 = (False)
  loc_10C5503: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_10C5522: If (Me.RecordCount > 0) Then
  loc_10C555F:   Set var_B4 = var_B8(0)
  loc_10C5565:   Call 0.Method_DGItem_UnknownEvent_90 (CStr(Me.Fields.Item("Name").Value))
  loc_10C556D:   var_B8.Text = 
  loc_10C5587:   Set var_B4 = ()
  loc_10C558D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C55DF:   LateIdCallSt
  loc_10C55FF:   Set var_B4 = CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_10C5605:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C5657:   LateIdCallSt
  loc_10C5677:   Set var_B4 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_10C567D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C56CF:   LateIdCallSt
  loc_10C5705:   var_B0 = Me.Fields.Item("qty")
  loc_10C570E:   Set var_B4 = CVar(CLng())(CVar(CLng(2))(CVar(CStr(Me.Fields.Item("Unit").Value))))
  loc_10C5714:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_10C571D:   var_DC = CVar(CLng()) 'Long
  loc_10C5725:   var_FC = CVar(CLng(3)) 'Long
  loc_10C575A:   Set var_B8 = 1(CVar(CStr(Format(CVar(var_B0), "0.00"))))
  loc_10C5760:   LateIdCallSt
  loc_10C577E: End If
  loc_10C578A: Set var_A8 = var_B0(0)
  loc_10C5790: Call 0.Method_DGItem_UnknownEvent_90 (var_15E, var_B8, 1)
  loc_10C5798: var_FC = var_B0.Visible
  loc_10C57AA: If (var_15E = &HFF) Then
  loc_10C57B6:   Set var_A8 = var_B0(0)
  loc_10C57BC:   Call 0.Method_DGItem_UnknownEvent_90 (var_DC)
  loc_10C57C4:   var_B0.SetFocus
  loc_10C57D0: End If
  loc_10C57D0: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1131470
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_C0 As TextBox
  Dim var_108 As TextBox
  loc_1131104: Call Proc_130_48_E87070()
  loc_113110C: var_86 = Index
  loc_1131115: If (var_86 = 0) Then
  loc_1131128:   Set var_AC = var_86(CVar(CLng(global_68)))
  loc_113112E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_113113A:   Set var_AC = ()
  loc_1131140:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131152:   Set var_C0 = (CVar(CLng()))
  loc_1131158:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_113116A:   Set var_F4 = (CVar(CLng()))
  loc_1131170:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131188:   Set var_108 = var_10C(Index)
  loc_113118E:   Call 0.Method_TxtGrid_GotFocus0 (CStr())
  loc_1131196:   var_10C.Tag = 
  loc_11311B8:   Set var_AC = ()
  loc_11311BE:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_11311C7:   var_114 = CLng()
  loc_11311D7:   If (var_114 = CLng(1)) Then
  loc_11311DE:     Set var_AC = (var_114)
  loc_11311E4:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_11311FE:     Set var_C0 = CVar(CLng())(CVar(CLng(4)))
  loc_1131204:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131215:     global_116 = CStr()
  loc_1131233:     var_118 = Me.RecordCount
  loc_113126B:     If ((var_118 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_113126E:       Exit Sub
  loc_113126F:     End If
  loc_1131273:     Set var_AC = ()
  loc_1131279:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1131293:     Set var_C0 = CVar(CLng())(CVar(CLng(1)))
  loc_1131299:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_11312BD:     If (CStr() <> vbNullString) Then
  loc_11312C6:       Me.MoveFirst
  loc_11312CF:       Set var_AC = ()
  loc_11312D5:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_11312EF:       Set var_C0 = CVar(CLng())(CVar(CLng(4)))
  loc_11312F5:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1131300:       var_104 = CVar(CStr()) 'String
  loc_1131306:       Proc_6_17_EAA2B0(var_12C)
  loc_113132F:       Me.Find CStr("Code =" & var_12C), 0, 1
  loc_113135F:       If (Me.EOF = &HFF) Then
  loc_1131368:         Me.MoveFirst
  loc_113136D:       End If
  loc_113136D:     End If
  loc_113137A:     Set var_AC = var_C0(Index)
  loc_1131380:     Call 0.Method_TxtGrid_GotFocus0 (var_118, var_15C)
  loc_1131388:     var_104 = var_C0.Left
  loc_1131399:     Set var_F4 = (CVar(var_118))
  loc_113139F:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_11313BA:     Set var_F4 = var_108(Index)
  loc_11313C0:     Call 0.Method_TxtGrid_GotFocus0 (var_160)
  loc_11313C8:      = var_108.Height
  loc_11313DA:     Set var_AC = var_C0(Index)
  loc_11313E0:     Call 0.Method_TxtGrid_GotFocus0 (var_118)
  loc_11313E8:      = var_C0.Top
  loc_11313F4:     var_98 = CVar((var_118 + var_160)) 'Single
  loc_11313FD:     Set var_10C = (CVar(var_118))
  loc_1131403:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_1131418:   Else
  loc_113141F:     If (var_114 = CLng(3)) Then
  loc_1131431:       Set var_AC = var_C0(Index)
  loc_1131437:       Call 0.Method_TxtGrid_GotFocus0 (0)
  loc_113143F:       var_C0.MaxLength = 
  loc_1131454:       If (global_98 = 0) Then
  loc_113145F:         var_110 = "{Home}+{End}"
  loc_1131465:         Proc_303_0_FB9B68(CStr("Code =" & var_12C))
  loc_113146D:       End If
  loc_113146D:     End If
  loc_113146D:   End If
  loc_113146D: End If
  loc_113146D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '105A6A0
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_B0 As Long
  loc_105A43C: If (KeyCode = 0) Then
  loc_105A449:   If (CLng(Shift) = &H1B) Then
  loc_105A459:     Set var_8C = var_90(KeyCode)
  loc_105A45F:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_105A467:     var_86 = var_90.Tag
  loc_105A479:     Set var_98 = var_9C(KeyCode)
  loc_105A47F:     Call 0.Method_TxtGrid_KeyDown0 (var_94)
  loc_105A487:     var_9C.Text = 
  loc_105A4A3:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_105A4A8:     Call Proc_130_48_E87070(arg_14)
  loc_105A4B1:     Set var_8C = ()
  loc_105A4B7:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_105A4CE:     Set var_8C = var_90(KeyCode)
  loc_105A4D4:     Call 0.Method_TxtGrid_KeyDown0 (0)
  loc_105A4DC:     var_90.Visible = 
  loc_105A4E8:     Exit Sub
  loc_105A4E9:   End If
  loc_105A4ED:   Set var_8C = ()
  loc_105A4F3:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_105A4FC:   var_B0 = CLng()
  loc_105A50C:   If (var_B0 = CLng(1)) Then
  loc_105A532:     Set var_98 = Nothing
  loc_105A560:     Proc_6_69_134A198((var_B0), (), KeyCode, global_56, Shift)
  loc_105A57E:     If (CLng(Shift) = &HD) Then
  loc_105A587:       Call Proc_130_43_1225300(KeyCode, var_B2, &HFF, 1)
  loc_105A592:       If (var_B2 = &HFF) Then
  loc_105A5D8:         Proc_6_62_1253BC4(Nothing(Nothing(var_98)), (0), KeyCode, Shift, global_98)
  loc_105A5E8:       End If
  loc_105A5E8:     End If
  loc_105A5EB:   Else
  loc_105A5F2:     If (var_B0 = CLng(3)) Then
  loc_105A635:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_98 = &HFF))) Then
  loc_105A63E:         Call Proc_130_43_1225300(KeyCode, var_B2, 3)
  loc_105A649:         If (var_B2 = &HFF) Then
  loc_105A68F:           Proc_6_62_1253BC4(3(2), (0), KeyCode, Shift, global_98)
  loc_105A69F:         End If
  loc_105A69F:       End If
  loc_105A69F:     End If
  loc_105A69F:   End If
  loc_105A69F: End If
  loc_105A69F: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F02CAC
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_F02BD3: Proc_6_58_E054C0(arg_10)
  loc_F02BDB: var_86 = KeyAscii
  loc_F02BE4: If (var_86 = 0) Then
  loc_F02BEB:   Set var_8C = (var_86)
  loc_F02BF1:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_F02BFA:   var_A0 = CLng()
  loc_F02C0A:   If (var_A0 = CLng(1)) Then
  loc_F02C11:     Set var_8C = (var_A0)
  loc_F02C17:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_F02C29:     If (CBool() = &HFF) Then
  loc_F02C30:       Set var_AC = ()
  loc_F02C3B:       var_A4 = "Name"
  loc_F02C56:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_56)
  loc_F02C65:     End If
  loc_F02C68:   Else
  loc_F02C6F:     If (var_A0 = CLng(3)) Then
  loc_F02C7C:       Set var_8C = var_AC(KeyAscii)
  loc_F02C82:       Call 0.Method_TxtGrid_KeyPress0 (arg_10, var_A4)
  loc_F02C9D:       Proc_6_42_129A86C(var_AC, arg_10, 8)
  loc_F02CA9:     End If
  loc_F02CA9:   End If
  loc_F02CA9: End If
  loc_F02CA9: Exit Sub
  loc_F02CAA: DOC
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'EDB30C
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim var_A0 As Long
  loc_EDB258: On Error Goto loc_EDB303
  loc_EDB25E: var_86 = KeyCode
  loc_EDB267: If (var_86 = 0) Then
  loc_EDB26E:   Set var_8C = (var_86)
  loc_EDB274:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_EDB27D:   var_A0 = CLng()
  loc_EDB28D:   If (var_A0 = CLng(1)) Then
  loc_EDB29A:     Set var_8C = var_A0((Shift <> &HD))
  loc_EDB2A0:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_EDB2B3:     If ( And (CBool() = 0)) Then
  loc_EDB2C4:       Call TxtGrid_KeyDown(KeyCode, global_96)
  loc_EDB2D8:       var_A8 = "Name"
  loc_EDB2F3:       Proc_6_89_146F1AC((0), KeyCode, global_56)
  loc_EDB302:     End If
  loc_EDB302:   End If
  loc_EDB302: End If
  loc_EDB302: Exit Sub
  loc_EDB303: ' Referenced from: EDB258
  loc_EDB303: Proc_6_60_E62BC4(Shift, var_A8)
  loc_EDB308: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2019C
  'Data Table: 4771AC
  Dim arg_10 As Integer
  loc_E20184: If (Cancel = 0) Then
  loc_E2018D:   Call Proc_130_43_1225300(Cancel, var_88)
  loc_E20196:   arg_10 = Not(var_88)
  loc_E20199: End If
  loc_E20199: Exit Sub
End Sub

Public Function MasterFormExitGet() '477C60
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '477C6F
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96218
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_15C As String
  loc_E961A6: On Error Goto loc_E9620F
  loc_E961AF: Me.MoveFirst
  loc_E961D9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96201: Proc_5_0_110649C(&HFF, Me, global_64)
  loc_E96209: Call Proc_130_44_135B81C(0)
  loc_E9620E: Exit Sub
  loc_E9620F: ' Referenced from: E961A6
  loc_E9620F: Proc_6_60_E62BC4(var_A0)
  loc_E96214: Exit Sub
  loc_E96215: var_15C = 
End Sub

Public Sub FindMove(mDocId) 'E72200
  'Data Table: 4771AC
  Dim Me As Recordset15
  loc_E721AA: Me.MoveFirst
  loc_E721D4: Me.Find "DOCID='" & mDocId & "'", 0, 1
  loc_E721F4: If (Me.EOF = 0) Then
  loc_E721F7:   Call Proc_130_44_135B81C(var_9C)
  loc_E721FC: End If
  loc_E721FC: Exit Sub
End Sub

Public Sub Proc_130_41_102B638
  'Data Table: 4771AC
  Dim var_94 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_102B400: Set var_A8 = (CVar(CDbl(&H4B)))
  loc_102B406: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102B41B: Set var_A8 = (CVar(CDbl(1100)))
  loc_102B421: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102B435: Set var_A8 = (CVar(CDbl(&HF)))
  loc_102B43B: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010003()
  loc_102B450: Set var_A8 = (CVar(CDbl(5145)))
  loc_102B456: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_102B46B: Set var_A8 = (CVar(CDbl(6500)))
  loc_102B471: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010005()
  loc_102B486: Set var_A8 = (CVar(CDbl(3800)))
  loc_102B48C: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_102B498: Set var_AC = ()
  loc_102B49E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_FFFFFE0B()
  loc_102B4AF: global_68 = CStr(CLng())
  loc_102B4C5: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_5(5)
  loc_102B4CD: var_94 = CVar(CLng(0)) 'Long
  loc_102B4D2: var_D0 = &HFA
  loc_102B4DE: LateIdCallSt
  loc_102B4E6: var_94 = 0
  loc_102B4F2: var_D0 = CVar(CLng(1)) 'Long
  loc_102B4F7: var_F0 = "Item Name"
  loc_102B500: LateIdCallSt
  loc_102B50B: var_94 = CVar(CLng(1)) 'Long
  loc_102B516: var_D0 = CVar(CInt(1)) 'Integer
  loc_102B51D: LateIdCallSt
  loc_102B528: var_94 = CVar(CLng(1)) 'Long
  loc_102B52D: var_D0 = &HED8
  loc_102B539: LateIdCallSt
  loc_102B541: var_94 = 0
  loc_102B54D: var_D0 = CVar(CLng(2)) 'Long
  loc_102B552: var_F0 = "Unit"
  loc_102B55B: LateIdCallSt
  loc_102B566: var_94 = CVar(CLng(2)) 'Long
  loc_102B571: var_D0 = CVar(CInt(1)) 'Integer
  loc_102B578: LateIdCallSt
  loc_102B583: var_94 = CVar(CLng(2)) 'Long
  loc_102B588: var_D0 = &H320
  loc_102B594: LateIdCallSt
  loc_102B59C: var_94 = 0
  loc_102B5A8: var_D0 = CVar(CLng(3)) 'Long
  loc_102B5AD: var_F0 = "Quantity"
  loc_102B5B6: LateIdCallSt
  loc_102B5C1: var_94 = CVar(CLng(3)) 'Long
  loc_102B5CC: var_D0 = CVar(CInt(7)) 'Integer
  loc_102B5D3: LateIdCallSt
  loc_102B5DE: var_94 = CVar(CLng(3)) 'Long
  loc_102B5E9: var_D0 = CVar(CInt(7)) 'Integer
  loc_102B5F0: LateIdCallSt
  loc_102B5FB: var_94 = CVar(CLng(3)) 'Long
  loc_102B600: var_D0 = &H5DC
  loc_102B60C: LateIdCallSt
  loc_102B617: var_94 = CVar(CLng(4)) 'Long
  loc_102B61C: var_D0 = 0
  loc_102B628: LateIdCallSt
  loc_102B632: Set var_AC = Nothing 
  loc_102B636: Exit Sub
End Sub

Public Sub Proc_130_42_E45BA8
  'Data Table: 4771AC
  loc_E45B84: Set var_88 = Me.TopCtrl1
  loc_E45B8A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_E45BA3: If (CStr() = "Browse") Then
  loc_E45BA6:   Exit Sub
  loc_E45BA7: End If
  loc_E45BA7: Exit Sub
End Sub

Public Sub Proc_130_43_1225300(arg_C) '1225300
  'Data Table: 4771AC
  Dim var_94 As Integer
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_BC As String
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_98 As Fields15
  loc_1224E23: var_94 = arg_C
  loc_1224E2C: If (var_94 = 0) Then
  loc_1224E33:   Set var_98 = (var_94)
  loc_1224E39:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1224E52:   If (CLng() = CLng(1)) Then
  loc_1224EA3:     Set var_98 = var_B8(arg_C)
  loc_1224EA9:     Call 0.Method_Proc_130_43_12253000 (var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1224EB1:     var_AC = var_B8.Text
  loc_1224EC9:     If ( Or (var_BC = vbNullString)) Then
  loc_1224ED0:       Set var_98 = ()
  loc_1224ED6:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1224EFC:       LateIdCallSt
  loc_1224F12:       Set var_98 = CVar(CLng())(CVar(CLng(1))(vbNullString))
  loc_1224F18:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1224F3E:       LateIdCallSt
  loc_1224F54:       Set var_98 = CVar(CLng())(CVar(CLng(4))(vbNullString))
  loc_1224F5A:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1224F63:       var_CC = CVar(CLng()) 'Long
  loc_1224F7A:       Set var_B8 = CVar(CLng(2))(vbNullString)
  loc_1224F80:       LateIdCallSt
  loc_1224F95:     Else
  loc_1224F9F:       Set var_98 = var_B8(global_116)
  loc_1224FA5:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A(var_CC)
  loc_1224FBF:       Set var_B8 = CVar(CLng())(CVar(CLng(4)))
  loc_1224FC5:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1224FDF:       Set var_130 = ( <> CStr())(global_116)
  loc_1224FE5:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1224FFF:       Set var_164 = CVar(CLng())(CVar(CLng(4)))
  loc_1225005:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_1225019:       Set var_17C = (( = CStr()))
  loc_122501F:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225039:       Set var_1D0 = CVar(CLng())(CVar(CLng(4)))
  loc_122503F:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_122507B:       If ( Or ( And (CStr() = vbNullString))) Then
  loc_1225082:         Set var_130 = ()
  loc_1225088:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_12250DA:         LateIdCallSt
  loc_12250FA:         Set var_130 = CVar(CLng())(CVar(CLng(1))(CVar(CStr(Me.Fields.Item("Name").Value))))
  loc_1225100:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225152:         LateIdCallSt
  loc_1225172:         Set var_130 = CVar(CLng())(CVar(CLng(4))(CVar(CStr(Me.Fields.Item("Code").Value))))
  loc_1225178:         Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225181:         var_DC = CVar(CLng()) 'Long
  loc_12251AB:         var_B8 = Me.Fields.Item("Unit")
  loc_12251C4:         Set var_164 = CVar(CLng(2))(CVar(CStr(var_B8.Value)))
  loc_12251CA:         LateIdCallSt
  loc_12251E6:       End If
  loc_12251E6:     End If
  loc_12251E9:   Else
  loc_12251F0:     If (var_AC = CLng(3)) Then
  loc_12251FD:       Set var_98 = var_B8(arg_C)
  loc_1225203:       Call 0.Method_Proc_130_43_12253000 (var_164)
  loc_122521B:       If Not(IsNumeric(CVar(var_B8))) Then
  loc_1225222:         var_BC = CStr(0)
  loc_122522F:         Set var_98 = var_B8(arg_C)
  loc_1225235:         Call 0.Method_Proc_130_43_12253000 (var_BC)
  loc_122523D:         var_B8.Text = var_DC
  loc_122524C:       End If
  loc_1225259:       Set var_98 = var_B8(arg_C)
  loc_122525F:       Call 0.Method_Proc_130_43_12253000 (var_BC)
  loc_1225267:        = var_B8.Text
  loc_1225270:       Set var_130 = ()
  loc_1225276:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1225288:       Set var_164 = (CVar(CLng()))
  loc_122528E:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_B()
  loc_1225297:       var_FC = CVar(CLng()) 'Long
  loc_12252CB:       Set var_17C = 1(CVar(CStr(Format(CVar(var_BC), "0.000"))))
  loc_12252D1:       LateIdCallSt
  loc_12252F5:     End If
  loc_12252F5:   End If
  loc_12252F5: End If
  loc_12252FA: Proc_130_43_1225300 = &HFF
End Sub

Public Sub Proc_130_44_135B81C
  'Data Table: 4771AC
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_A8 As Variant
  Dim var_98 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_100 As String
  Dim unk_4771C1 As Connection15
  Dim var_128 As Recordset15
  Dim var_12C As Variant
  Dim var_124 As Variant
  Dim var_138 As Field20
  Dim var_144 As TextBox
  Dim var_BC As Variant
  Dim var_8E As Integer
  Dim var_88 As Recordset15
  Dim var_110 As Variant
  Dim var_15C As Variant
  Dim var_120 As Variant
  loc_135B008: On Error Goto loc_135B813
  loc_135B022: If (Me.RecordCount > 0) Then
  loc_135B032:   var_CC = "Select DISTINCT K.DOCID,K.VDATE, GodownMast.Name as Location,GodownMast.Code as DepartCode,K.Vno,K.Vtype,K.VPrefix From KClStk K  left join GodownMast on GodownMast.Code=K.DepartCode Where DocID='"
  loc_135B064:   var_DC = var_CC & Me.Fields.Item("DocID").Value 
  loc_135B07B:   unk_4771C1.Execute CStr(var_DC & "'"), var_120, -1
  loc_135B0A3:   Set var_128 = var_124 
  loc_135B0E6:   Call 0.Method_Proc_130_44_135B81C0 (CStr(var_128.Fields.Item("DocID").Value))
  loc_135B0EE:   var_12C.Text = var_12C(CInt(3))
  loc_135B11E:   var_AC = var_128.Fields.Item("vType")
  loc_135B126:   var_BC = var_AC.Value
  loc_135B12F:   var_100 = CStr(var_BC)
  loc_135B13D:   Set var_124 = var_12C(CInt(0))
  loc_135B143:   Call 0.Method_Proc_130_44_135B81C0 (var_100)
  loc_135B14B:   var_12C.Tag = 
  loc_135B18E:   Set var_98 = var_AC(CInt(0))
  loc_135B194:   Call 0.Method_Proc_130_44_135B81C0 (var_100, "Select NCAT From Voucher_Type Where V_Type='", var_BC, -1, var_124)
  loc_135B1B5:   unk_4771C1.Execute 0 & var_100 & "'", var_138, var_DC
  loc_135B1BD:    = var_124.Fields
  loc_135B1C5:    = var_AC.Tag.Item()
  loc_135B1CD:    = var_138.Value
  loc_135B1DC:   global_88 = CStr(var_DC)
  loc_135B22C:   Set var_98 = var_AC(CInt(0))
  loc_135B232:   Call 0.Method_Proc_130_44_135B81C0 (var_100, "Select Description From Voucher_type Where V_Type='", var_BC, -1, var_124)
  loc_135B23A:   var_12C = var_AC.Tag
  loc_135B253:   unk_4771C1.Execute 0 & var_100 & "'", var_138, var_DC
  loc_135B25B:    = var_124.Fields
  loc_135B263:    = var_12C.Item()
  loc_135B26B:    = var_138.Value
  loc_135B282:   Set var_140 = var_144(CInt(0))
  loc_135B288:   Call 0.Method_Proc_130_44_135B81C0 (CStr(var_DC))
  loc_135B290:   var_144.Text = 
  loc_135B2F1:   Set var_124 = var_12C(CInt(1))
  loc_135B2F7:   Call 0.Method_Proc_130_44_135B81C0 (CStr(var_128.Fields.Item("VNo").Value))
  loc_135B2FF:   var_12C.Text = 
  loc_135B367:   Set var_124 = var_12C(CInt(2))
  loc_135B36D:   Call 0.Method_Proc_130_44_135B81C0 (CStr(Format(CVar(var_128.Fields.Item("VDate")), "DD/MMM/YYYY")), 1)
  loc_135B375:   var_12C.Text = 1
  loc_135B3C7:   (CStr(var_128.Fields.Item("vPrefix").Value)).Caption = 
  loc_135B411:   Set var_124 = var_12C(CInt(4))
  loc_135B417:   Call 0.Method_Proc_130_44_135B81C0 (Proc_6_38_E68A98(CVar(var_128.Fields.Item("DepartCode"))))
  loc_135B41F:   var_12C.Tag = 
  loc_135B469:   Set var_124 = var_12C(CInt(4))
  loc_135B46F:   Call 0.Method_Proc_130_44_135B81C0 (Proc_6_38_E68A98(CVar(var_128.Fields.Item("Location"))))
  loc_135B477:   var_12C.Text = 
  loc_135B48D:   Set var_128 = Nothing 
  loc_135B49A:   Set var_98 = (False)
  loc_135B4A0:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_19()
  loc_135B4B5:   Set var_98 = (1)
  loc_135B4BB:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_135B4C5:   var_8E = 1
  loc_135B4D5:   var_CC = "Select S.*,I.Name as ItemName From KcLsTK S Left Join ItemMast I On S.Item=I.Code And S.RestCode=I.RestCode Where S.Docid='"
  loc_135B51E:   unk_4771C1.Execute CStr(var_CC & Me.Fields.Item("DocID").Value & "'"), var_120, -1
  loc_135B529:   Set var_88 = var_124
  loc_135B557:   If (var_88.RecordCount > 0) Then
  loc_135B55A:     ' Referenced from: 135B74A
  loc_135B569:     If Not(var_88.EOF) Then
  loc_135B576:       Set var_98 = var_124(vbNullString)
  loc_135B57C:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000(var_8E)
  loc_135B58B:       Set var_14C = ()
  loc_135B592:       var_A8 = CVar(CLng(var_8E)) 'Long
  loc_135B59A:       var_EC = CVar(CLng(0)) 'Long
  loc_135B5A4:       var_BC = CVar(CStr(var_8E)) 'String
  loc_135B5AB:       LateIdCallSt
  loc_135B5BA:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135B5C2:       var_110 = CVar(CLng(4)) 'Long
  loc_135B5F2:       var_DC = CVar(CStr(var_88.Fields.Item("Item").Value)) 'String
  loc_135B5F9:       LateIdCallSt
  loc_135B613:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135B61B:       var_110 = CVar(CLng(1)) 'Long
  loc_135B64B:       var_DC = CVar(CStr(var_88.Fields.Item("ItemName").Value)) 'String
  loc_135B652:       LateIdCallSt
  loc_135B66C:       var_CC = CVar(CLng(var_8E)) 'Long
  loc_135B674:       var_110 = CVar(CLng(2)) 'Long
  loc_135B6A4:       var_DC = CVar(CStr(var_88.Fields.Item("Unit").Value)) 'String
  loc_135B6AB:       LateIdCallSt
  loc_135B6E1:       var_EC = CVar(CLng(var_8E)) 'Long
  loc_135B6E9:       var_15C = CVar(CLng(3)) 'Long
  loc_135B6F8:       var_CC = "0.000"
  loc_135B6FD:       var_DC = var_CC
  loc_135B716:       var_120 = CVar(CStr(Format(CVar(var_88.Fields.Item("qty")), var_DC))) 'String
  loc_135B71D:       LateIdCallSt
  loc_135B735:       Set var_14C = Nothing 
  loc_135B73F:       var_8E = (var_8E + 1)
  loc_135B745:       var_88.MoveNext
  loc_135B74A:       GoTo loc_135B55A
  loc_135B74D:     End If
  loc_135B75A:     Set var_98 = var_8E(1)
  loc_135B760:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6(var_14C)
  loc_135B768:   End If
  loc_135B770:   Set var_98 = var_120(True)
  loc_135B776:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_19(1)
  loc_135B784:   If (var_8E = 1) Then
  loc_135B794:     Set var_98 = 1(1)
  loc_135B79A:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4(var_15C)
  loc_135B7C8:     Set var_AC = var_CC(CVar(CStr(Proc_6_127_F24F80(var_14C(var_EC), CInt(0), var_DC, var_110))))
  loc_135B7CE:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000(var_14C)
  loc_135B7EF:     Set var_98 = var_DC(1)
  loc_135B7F5:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_135B7FD:   End If
  loc_135B800: Else
  loc_135B800:   Call Proc_130_46_F5C998()
  loc_135B805: End If
  loc_135B805: Call Proc_130_48_E87070()
  loc_135B80F: Set var_88 = Nothing
  loc_135B812: Exit Sub
  loc_135B813: ' Referenced from: 135B008
  loc_135B813: Proc_6_60_E62BC4()
  loc_135B818: Exit Sub
End Sub

Public Sub Proc_130_45_1090098
  'Data Table: 4771AC
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_4771C1 As Connection15
  Dim var_D0 As Recordset15
  Dim var_E8 As Field20
  Dim var_F8 As Variant
  Dim var_AC As Variant
  loc_108FE11: Set var_9C = Me.TopCtrl1
  loc_108FE17: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(&HFF)
  loc_108FE1F: var_B0 = CStr()
  loc_108FE30: If (var_B0 = "Add") Then
  loc_108FE60:   Set var_9C = var_B4(CInt(3))
  loc_108FE66:   Call 0.Method_Proc_130_45_10900980 (var_B0, "Select Count(*) From Purch1 Where DocID='", var_AC, -1, var_D0)
  loc_108FE87:   unk_4771C1.Execute 0 & var_B0 & "'", var_E8, var_F8
  loc_108FE8F:    = var_D0.Fields
  loc_108FE97:    = var_B4.Text.Item()
  loc_108FE9F:    = var_E8.Value
  loc_108FECC:   If (var_F8 > 0) Then
  loc_108FED5:     Call 0.Method_arg_50 (var_B0)
  loc_108FEF6:     MsgBox("Duplicate Purch.Bill No.", &H40, CVar(var_B0), var_118, var_128)
  loc_108FF0C:     Call Proc_130_50_114E24C(MemVar_1F92044)
  loc_108FF1F:     Set var_9C = var_B4(CInt(3))
  loc_108FF25:     Call 0.Method_Proc_130_45_10900980 (var_B0)
  loc_108FF2D:     var_B4.Text = var_B0
  loc_108FF41:     Proc_130_45_1090098 = 0
  loc_108FF47:   End If
  loc_108FF47: End If
  loc_108FF50: Set var_9C = 1(var_88)
  loc_108FF56: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_108FF6C: For var_12C =  To CInt((CLng() - 1)):  = var_12C 'Integer
  loc_108FF87:   Set var_9C = CVar(CLng(var_88))(CVar(CLng(1)))
  loc_108FF8D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_108FF9E:   var_118 = Trim(CVar(CStr()))
  loc_108FFBA:   If CBool(var_118 <> vbNullString) Then
  loc_108FFD2:     Set var_9C = CVar(CLng(var_88))(CVar(CLng(3)))
  loc_108FFD8:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_41()
  loc_108FFF9:     If (CDbl(Val(CStr())) = CDbl(0)) Then
  loc_1090021:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_118, var_128)
  loc_1090041:       Set var_9C = (CVar(CLng(var_88)))
  loc_1090047:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_A()
  loc_1090053:       Set var_9C = ()
  loc_1090059:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001()
  loc_1090071:       Set var_9C = (CVar(CLng("14737632")))
  loc_1090077:       Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_26()
  loc_1090084:       Proc_130_45_1090098 = 0
  loc_109008A:     End If
  loc_109008A:   End If
  loc_109008D: Next var_12C 'Integer
  loc_1090092: Proc_130_45_1090098 = 
End Sub

Public Sub Proc_130_46_F5C998
  'Data Table: 4771AC
  Dim var_8C As Label
  Dim var_98 As TextBox
  loc_F5C87D: (vbNullString).Caption = 
  loc_F5C88B: global_104 = vbNullString
  loc_F5C895: global_108 = vbNullString
  loc_F5C8A7: Set var_8C = var_86(var_8E)
  loc_F5C8AD: Call 0.Method_Proc_130_46_F5C998C (CByte(0))
  loc_F5C8BD: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_F5C8D3:   Set var_8C = var_98(CInt(var_86))
  loc_F5C8D9:   Call 0.Method_Proc_130_46_F5C9980 (vbNullString)
  loc_F5C8E1:   var_98.Text = 
  loc_F5C8FD:   Set var_8C = var_98(CInt(var_86))
  loc_F5C903:   Call 0.Method_Proc_130_46_F5C9980 (vbNullString)
  loc_F5C90B:   var_98.Tag = 
  loc_F5C91A: Next var_92 'Byte
  loc_F5C92D: Set var_8C = (1)
  loc_F5C933: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_4()
  loc_F5C961: Set var_98 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_F5C967: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_10000()
  loc_F5C988: Set var_8C = (1)
  loc_F5C98E: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_6()
  loc_F5C996: Exit Sub
End Sub

Public Sub Proc_130_47_EC8AD4(arg_C) 'EC8AD4
  'Data Table: 4771AC
  Dim var_98 As TextBox
  loc_EC8A36: Set var_8C = var_86(var_8E)
  loc_EC8A3C: Call 0.Method_Proc_130_47_EC8AD4C (CByte(0))
  loc_EC8A4C: For var_92 =  To CByte((var_8E - 1)):  = var_92 'Byte
  loc_EC8A62:   Set var_8C = var_98(CInt(var_86))
  loc_EC8A68:   Call 0.Method_Proc_130_47_EC8AD40 (arg_C)
  loc_EC8A70:   var_98.Enabled = 
  loc_EC8A7F: Next var_92 'Byte
  loc_EC8A92: Set var_8C = var_98(CInt(1))
  loc_EC8A98: Call 0.Method_Proc_130_47_EC8AD40 (0)
  loc_EC8AA0: var_98.Enabled = 
  loc_EC8AB9: Set var_8C = var_98(CInt(2))
  loc_EC8ABF: Call 0.Method_Proc_130_47_EC8AD40 (0)
  loc_EC8AC7: var_98.Enabled = 
  loc_EC8AD3: Exit Sub
End Sub

Public Sub Proc_130_48_E87070
  'Data Table: 4771AC
  loc_E87004: Set var_88 = ()
  loc_E8700A: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E8701C: If (CBool() = &HFF) Then
  loc_E87028:   Set var_88 = (False)
  loc_E8702E:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87036: End If
  loc_E8703A: Set var_88 = ()
  loc_E87040: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E87052: If (CBool() = &HFF) Then
  loc_E8705E:   Set var_88 = (False)
  loc_E87064:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010007()
  loc_E8706C: End If
  loc_E8706C: Exit Sub
  loc_E8706D: BranchFVar 6655
End Sub

Public Sub Proc_130_49_F0BC34
  'Data Table: 4771AC
  loc_F0BB58: Call Proc_130_48_E87070()
  loc_F0BB68: Set var_88 = var_8C(CInt(2))
  loc_F0BB6E: Call 0.Method_Proc_130_49_F0BC340 ()
  loc_F0BB76: var_94 = "Invoice Date"
  loc_F0BB97: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_F0BB9A:   Exit Sub
  loc_F0BB9B: End If
  loc_F0BBA6: Set var_88 = var_8C(CInt(1))
  loc_F0BBAC: Call 0.Method_Proc_130_49_F0BC340 (var_94)
  loc_F0BBB4: var_94 = "Invoice No"
  loc_F0BBD5: If (Proc_6_27_EA565C(var_8C) = 0) Then
  loc_F0BBD8:   Exit Sub
  loc_F0BBD9: End If
  loc_F0BC10: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0BC13:   Call TopCtrl1_UnknownEvent_16()
  loc_F0BC1B: Else
  loc_F0BC21:   Call 0.Method_arg_1E8 (var_88)
  loc_F0BC29:   Call var_88.SetFocus
  loc_F0BC32: End If
  loc_F0BC32: Exit Sub
  loc_F0BC33: var_94() = 
End Sub

Public Sub Proc_130_50_114E24C
  'Data Table: 4771AC
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As TextBox
  loc_114DEED: var_90 = "KC"
  loc_114DF04: var_94 = "Select VT.Number_Method,VP.V_Type,Vt.Description,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_114DF35: Set var_A8 = var_AC(CInt(2))
  loc_114DF3B: Call 0.Method_Proc_130_50_114E24C0 (CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="), var_130)
  loc_114DF4A: Proc_6_7_F25D88(var_CC, CVar(var_AC))
  loc_114DF52: var_EC = -1 & var_CC 
  loc_114DF66: Me.Connection15.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_114DF71: Set var_8C = var_134
  loc_114DFAD: If (var_8C.RecordCount > 0) Then
  loc_114DFEC:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_114DFEF:     GoTo loc_114E07C
  loc_114DFF2:   End If
  loc_114E023:   global_80 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_114E04E:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_114E063:   var_CC = (var_AC.Value + 1)
  loc_114E06B:   global_84 = CInt(var_CC)
  loc_114E07C:   ' Referenced from: 114DFEF
  loc_114E07C: End If
  loc_114E0A7: var_BC = Space((5 - Len(var_90)))
  loc_114E0AF: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_114E0C3: var_EC = Space((5 - Len(global_80)))
  loc_114E0CB: var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_114E0D8: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_80))
  loc_114E0F1: var_14C = Space((8 - Len(CStr(global_84))))
  loc_114E0F9: var_15C = (var_130 + var_14C)
  loc_114E108: var_17C = (var_15C + CVar(CStr(global_84)))
  loc_114E113: global_72 = CStr(var_17C)
  loc_114E149: global_84(global_80).Caption = 
  loc_114E162: Set var_A8 = var_AC(CInt(3))
  loc_114E168: Call 0.Method_Proc_130_50_114E24C0 (global_72)
  loc_114E170: var_AC.Text = 
  loc_114E192: Set var_A8 = var_AC(CInt(1))
  loc_114E198: Call 0.Method_Proc_130_50_114E24C0 (CStr(global_84))
  loc_114E1A0: var_AC.Text = 
  loc_114E1BD: Set var_A8 = var_AC(CInt(0))
  loc_114E1C3: Call 0.Method_Proc_130_50_114E24C0 (var_90)
  loc_114E1CB: var_AC.Tag = 
  loc_114E210: Set var_134 = var_180(CInt(0))
  loc_114E216: Call 0.Method_Proc_130_50_114E24C0 (CStr(var_8C.Fields.Item("Description").Value))
  loc_114E21E: var_180.Text = 
  loc_114E23A: var_88 = global_72
  loc_114E242: Set var_8C = Nothing
  loc_114E245: Proc_130_50_114E24C = 
End Sub

Public Sub Proc_130_51_1012A04
  'Data Table: 4771AC
  Dim var_86 As Integer
  Dim unk_4771C1 As Connection15
  Dim var_8C As Recordset15
  Dim var_B0 As Fields15
  Dim var_B8 As Variant
  Dim var_13C As TextBox
  Dim var_120 As Variant
  loc_101281A: var_86 = &HFF
  loc_1012833: unk_4771C1.Execute "Select Name, Srno,IsNull(SDate,'') as SDate,IsNull(EDate,'') as EDate From DateLock Where Name='Purchase Bill Entry' ", var_AC, -1
  loc_101283E: Set var_8C = var_B0
  loc_101285B: If (var_8C.RecordCount > 0) Then
  loc_1012878:   var_B8 = var_8C.Fields.Item("SDate")
  loc_10128DE:   If CBool((var_B8.Value <> vbNullString) And (var_8C.Fields.Item("EDate").Value <> vbNullString)) Then
  loc_10128F5:     Call 0.Method_Proc_130_51_1012A040 (var_134, var_B8(CInt(2)))
  loc_10128FD:     var_86 = var_B8.Text
  loc_1012948:     Set var_138 = var_13C(CInt(2))
  loc_101294E:     Call 0.Method_Proc_130_51_1012A040 (var_140)
  loc_1012956:     (CDate(CDate(var_134)) >= var_8C.Fields.Item("SDate").Value) = var_13C.Text
  loc_1012987:     var_100 = var_8C.Fields.Item("EDate").Value
  loc_101298F:     var_120 = (CDate(CDate(var_140)) <= var_100)
  loc_10129BE:     If CBool(Not  And var_120) Then
  loc_10129E2:       MsgBox("Date Locked!", &H40, "Date Validation", var_100, var_120)
  loc_10129F7:       Proc_130_51_1012A04 = 0
  loc_10129FD:     End If
  loc_10129FD:   End If
  loc_10129FD: End If
  loc_10129FD: Proc_130_51_1012A04 = 
End Sub

Public Sub Proc_130_52_E899FC
  'Data Table: 4771AC
  loc_E89996: Set global_60 = New 
  loc_E899B3: Me.Connection15.Execute "Select Code,D.Name as Name From Depart D Order by Name", var_A8, -1
  loc_E899DB: CVarUnk
  loc_E899E0: VerifyVarObj
  loc_E899E6: Set var_88 = var_88(var_88)
  loc_E899EC: LateIdStAd
  loc_E899FA: Exit Sub
End Sub
