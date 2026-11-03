VERSION 5.00
Begin VB.Form HWIHistory
  Caption = "Walk In by Room History"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "HWIHistory.frx":0
  LinkTopic = "form4"
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 11775
  ClientHeight = 8385
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
  Begin DataGrid DGMobileNo
    Left = 11520
    Top = 7290
    Width = 2790
    Height = 2490
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 25
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HC00000&
    Left = 4140
    Top = 1020
    Width = 2250
    Height = 285
    TabIndex = 2
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
    Appearance = 0 'Flat
  End
  Begin DataGrid DGConfirmationNo
    Left = 11565
    Top = 6585
    Width = 2790
    Height = 2490
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
End
End

Attribute VB_Name = "HWIHistory"

Private global_60 As Integer
Private global_62 As Integer
Private global_84 As Byte

Private Sub DGCompanyName_UnknownEvent_9 'F3B1A4
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3B09B: (False).Visible = 
  loc_F3B0BA: If (Me.RecordCount > 0) Then
  loc_F3B0F9:   Set var_B4 = Me.Txt
  loc_F3B0FF:   Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3B107:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3B13A:   var_B0 = Me.Fields.Item("Name")
  loc_F3B159:   Set var_B4 = Me.Txt
  loc_F3B15F:   Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3B167:   var_B8.Text = CStr(var_B0.Value)
  loc_F3B17D: End If
  loc_F3B188: Set var_A8 = Me.Txt
  loc_F3B18E: Call 0.Method_DGCompanyName_UnknownEvent_90 (CInt(1))
  loc_F3B196: var_B0.SetFocus
  loc_F3B1A2: Exit Sub
  loc_F3B1A3: Exit Sub
End Sub

Private Sub Form_Load() '10AD5A8
  'Data Table: 476274
  Dim var_AC As Variant
  Dim var_8C As String
  Dim var_9C As Variant
  Dim Me As Recordset15
  loc_10AD2C8: On Error Goto loc_10AD5A1
  loc_10AD2E7: Me.Recordset15.CursorLocation = 3
  loc_10AD311: var_9C = CVar("Select Code as SearchCode, Code, Name FROM GuestProf Where logsite_code='" & MemVar_1F92078 & "' Order by Name") 'String
  loc_10AD31B: Me.Open var_9C, CVar(MemVar_1F92044), 2
  loc_10AD32F: CVarUnk
  loc_10AD334: VerifyVarObj
  loc_10AD33A: Set var_88 = 3(New)
  loc_10AD340: LateIdStAd
  loc_10AD36A: Me.Recordset15.CursorLocation = 3
  loc_10AD394: var_9C = CVar("Select SubCode as SearchCode, SubCode as Code, Name FROM SubGroup WHERE  (Logsite_code='" & MemVar_1F92078 & "' OR LogSite_Code='HO') And  Nature='Customer' Order by Name") 'String
  loc_10AD39E: Me.Open var_9C, CVar(MemVar_1F92044), 2
  loc_10AD3B2: CVarUnk
  loc_10AD3B7: VerifyVarObj
  loc_10AD3BD: Set var_88 = 3(New)
  loc_10AD3C3: LateIdStAd
  loc_10AD3ED: Me.Recordset15.CursorLocation = 3
  loc_10AD417: var_9C = CVar("Select Code as SearchCode, Code as RoomNo From RoomMast where RoomMast.LogSite_Code='" & MemVar_1F92078 & "' and type='RO' Order by Code") 'String
  loc_10AD421: Me.Open var_9C, CVar(MemVar_1F92044), 2
  loc_10AD435: CVarUnk
  loc_10AD43A: VerifyVarObj
  loc_10AD440: Set var_88 = 3(New)
  loc_10AD446: LateIdStAd
  loc_10AD470: Me.Recordset15.CursorLocation = 3
  loc_10AD493: var_8C = "Select DocID as SearchCode, DocID as Code, CONVERT(VARCHAR(8),BookNo) as ConfirmationNo From Booking Where LogSite_Code='" & MemVar_1F92078
  loc_10AD4B8: CVarUnk
  loc_10AD4BD: VerifyVarObj
  loc_10AD4C3: Set var_88 = Me.DGConfirmationNo
  loc_10AD4C9: LateIdStAd
  loc_10AD4F3: Me.DGConfirmationNo.CursorLocation = 3
  loc_10AD51D: var_9C = CVar("Select Code as SearchCode, MobileNo FROM GuestProf Where logsite_code='" & MemVar_1F92078 & "' Order by MobileNo") 'String
  loc_10AD527: ar("Select Code as SearchCode, MobileNo FROM GuestProf Where logsite_code='" & MemVar_1F92078 & "' Order by BookNo"), CVar(MemVar_1F92044), 2 var_9C, CVar(MemVar_1F92044), 2
  loc_10AD53B: CVarUnk
  loc_10AD540: VerifyVarObj
  loc_10AD546: Set var_88 = Me.DGMobileNo
  loc_10AD54C: LateIdStAd
  loc_10AD563: Call 0.Method_arg_160 (var_88, var_88, New, 3, -1, var_88, New, 3)
  loc_10AD571: Call 0.Method_arg_164 (var_88, -1, var_88, -1)
  loc_10AD580: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), var_88, -1)
  loc_10AD589: var_AC = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_10AD592: Set var_88 = Me.SMSTimer
  loc_10AD5A0: Exit Sub
  loc_10AD5A1: ' Referenced from: 10AD2C8
  loc_10AD5A1: Proc_6_60_E62BC4(SMSTimer.DispID_FFFFFE0B, var_AC)
  loc_10AD5A6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8A774
  'Data Table: 476274
  loc_E8A707: Set global_52 = Nothing
  loc_E8A713: global_60 = 0
  loc_E8A721: Set global_64 = Nothing
  loc_E8A733: Set global_68 = Nothing
  loc_E8A745: Set global_80 = Nothing
  loc_E8A757: Set global_72 = Nothing
  loc_E8A769: Set global_76 = Nothing
  loc_E8A770: Exit Sub
End Sub

Private Sub Form_Activate() 'E10718
  'Data Table: 476274
  loc_E10709: If (global_62 = &HFF) Then
  loc_E10711:   global_62 = 0
  loc_E10714: End If
  loc_E10714: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E31CF8
  'Data Table: 476274
  loc_E31CD5: If (global_60 = &HFF) Then
  loc_E31CE5:   Me.Global.Unload Me
  loc_E31CED: End If
  loc_E31CF2: global_62 = &HFF
  loc_E31CF5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E31098
  'Data Table: 476274
  loc_E3106C: On Error Goto loc_E31090
  loc_E31087: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3108F: Exit Sub
  loc_E31090: ' Referenced from: E3106C
  loc_E31090: Proc_6_60_E62BC4(Shift)
  loc_E31095: Exit Sub
End Sub

Private Sub DGConfirmationNo_UnknownEvent_9 'F3AD84
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3AC7B: Me.DGConfirmationNo.Visible = False
  loc_F3AC9A: If (Me.RecordCount > 0) Then
  loc_F3ACD9:   Set var_B4 = Me.Txt
  loc_F3ACDF:   Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3ACE7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3AD1A:   var_B0 = Me.Fields.Item("ConfirmationNo")
  loc_F3AD39:   Set var_B4 = Me.Txt
  loc_F3AD3F:   Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5), var_B8)
  loc_F3AD47:   var_B8.Text = CStr(var_B0.Value)
  loc_F3AD5D: End If
  loc_F3AD68: Set var_A8 = Me.Txt
  loc_F3AD6E: Call 0.Method_DGConfirmationNo_UnknownEvent_90 (CInt(5))
  loc_F3AD76: var_B0.SetFocus
  loc_F3AD82: Exit Sub
End Sub

Private Sub DGGuestName_UnknownEvent_9 'F3AAC4
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A9BB: (False).Visible = 
  loc_F3A9DA: If (Me.RecordCount > 0) Then
  loc_F3AA19:   Set var_B4 = Me.Txt
  loc_F3AA1F:   Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AA27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3AA5A:   var_B0 = Me.Fields.Item("Name")
  loc_F3AA79:   Set var_B4 = Me.Txt
  loc_F3AA7F:   Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3AA87:   var_B8.Text = CStr(var_B0.Value)
  loc_F3AA9D: End If
  loc_F3AAA8: Set var_A8 = Me.Txt
  loc_F3AAAE: Call 0.Method_DGGuestName_UnknownEvent_90 (CInt(0))
  loc_F3AAB6: var_B0.SetFocus
  loc_F3AAC2: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 'F97B8C
  'Data Table: 476274
  Dim var_C8 As Column
  Dim var_8C As Variant
  loc_F97A24: Set var_8C = ()
  loc_F97A3B: If (CInt(Txt.DispID_1B) >= 0) Then
  loc_F97A4C:   If (ReservationYN = &HFF) Then
  loc_F97A53:     Set var_88 = New RrRoomReservation
  loc_F97A62:     var_88.OpenMode = 1
  loc_F97A76:     Set var_8C = var_C8(0)
  loc_F97A87:     Set var_C4 = Txt.DispID_69
  loc_F97A8D:      = var_88.Columns.Item(var_D8)
  loc_F97A95:      = var_C8.Value
  loc_F97AA1:     var_88.pDocId = var_D8
  loc_F97AC3:     var_88.TopCtrl1.TopText2 = "Add"
  loc_F97ACD:     Call var_88.Show
  loc_F97AE0:     Me.Global.Unload Me
  loc_F97AEB:   Else
  loc_F97AEF:     Set var_88 = New fdWalkInEntry
  loc_F97AFE:     var_88.OpenMode = 1
  loc_F97B12:     Set var_8C = var_C8(0)
  loc_F97B23:     Set var_C4 = Txt.DispID_69
  loc_F97B29:      = var_88.Columns.Item(var_D8)
  loc_F97B31:      = var_C8.Value
  loc_F97B3D:     var_88.pDocId = var_D8
  loc_F97B5F:     var_88.TopCtrl1.TopText2 = "Add"
  loc_F97B69:     Call var_88.Show
  loc_F97B7C:     Me.Global.Unload Me
  loc_F97B84:   End If
  loc_F97B84: End If
  loc_F97B86: Set var_88 = Nothing 
  loc_F97B8A: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F39E64
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39D5B: (False).Visible = 
  loc_F39D7A: If (Me.RecordCount > 0) Then
  loc_F39DB9:   Set var_B4 = Me.Txt
  loc_F39DBF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2), var_B8)
  loc_F39DC7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F39DFA:   var_B0 = Me.Fields.Item("Name")
  loc_F39E19:   Set var_B4 = Me.Txt
  loc_F39E1F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2), var_B8)
  loc_F39E27:   var_B8.Text = CStr(var_B0.Value)
  loc_F39E3D: End If
  loc_F39E48: Set var_A8 = Me.Txt
  loc_F39E4E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(2))
  loc_F39E56: var_B0.SetFocus
  loc_F39E62: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_18 'DFDAEC
  'Data Table: 476274
  loc_DFDAE4: Call CmdOK_UnknownEvent_9()
  loc_DFDAE9: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'DFB9F4
  'Data Table: 476274
  loc_DFB9F0: Exit Sub
End Sub

Private Sub DGMobileNo_UnknownEvent_9 'F41B84
  'Data Table: 476274
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F41A7B: Me.DGMobileNo.Visible = False
  loc_F41A9A: If (Me.RecordCount > 0) Then
  loc_F41AD9:   Set var_B4 = Me.Txt
  loc_F41ADF:   Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6), var_B8)
  loc_F41AE7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F41B1A:   var_B0 = Me.Fields.Item("MobileNo")
  loc_F41B39:   Set var_B4 = Me.Txt
  loc_F41B3F:   Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6), var_B8)
  loc_F41B47:   var_B8.Text = CStr(var_B0.Value)
  loc_F41B5D: End If
  loc_F41B68: Set var_A8 = Me.Txt
  loc_F41B6E: Call 0.Method_DGMobileNo_UnknownEvent_90 (CInt(6))
  loc_F41B76: var_B0.SetFocus
  loc_F41B82: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14AB240
  'Data Table: 476274
  Dim var_94 As TextBox
  Dim var_A0 As Variant
  Dim var_A2 As Integer
  Dim var_BC As Variant
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_14AA56A: Set var_90 = Me.Txt
  loc_14AA570: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14AA57E: Proc_6_74_E226B0(var_94)
  loc_14AA599: Set var_90 = Me.Txt
  loc_14AA59F: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AA5A7: var_94.SelStart = 0
  loc_14AA5C0: Set var_90 = Me.Txt
  loc_14AA5C6: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AA5CE: var_9C = var_94.Text
  loc_14AA5E1: Set var_98 = Me.Txt
  loc_14AA5E7: Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_14AA5EF: var_A0.SelLength = Len(var_9C)
  loc_14AA602: Call Proc_65_26_F6FB9C(var_94)
  loc_14AA60A: var_A2 = Index
  loc_14AA615: If (var_A2 = CInt(0)) Then
  loc_14AA626:   Set var_98 = Me.Txt
  loc_14AA62C:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_A0)
  loc_14AA647:   Set var_90 = Me.Txt
  loc_14AA64D:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_94)
  loc_14AA665:   var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AA674:   var_A2(var_BC).Top = 
  loc_14AA694:   Set var_90 = Me.Txt
  loc_14AA69A:   Call 0.Method_Txt_GotFocus0 (CInt(0), var_94)
  loc_14AA6B9:   (CVar(var_94.Left)).Left = 
  loc_14AA6DE:   If (Me.RecordCount > 0) Then
  loc_14AA6EC:     Set var_94 = ()
  loc_14AA704:     Proc_6_137_1193554((), global_68)
  loc_14AA712:   End If
  loc_14AA760:   Set var_90 = Me.Txt
  loc_14AA766:   Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AA76E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AA786:   If (Index Or (var_9C = vbNullString)) Then
  loc_14AA789:     Exit Sub
  loc_14AA78A:   End If
  loc_14AA797:   Set var_90 = Me.Txt
  loc_14AA79D:   Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AA7A5:   var_9C = var_94.Text
  loc_14AA7B7:   var_BC = "Name"
  loc_14AA7CE:   var_A0 = Me.Fields.Item(var_BC)
  loc_14AA7F2:   If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AA7FB:     Me.MoveFirst
  loc_14AA81E:     Set var_90 = Me.Txt
  loc_14AA824:     Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Name ='")
  loc_14AA82C:     0 = var_94.Text
  loc_14AA845:     Me.Find 1 & var_9C & "'", var_BC, var_94
  loc_14AA85A:   End If
  loc_14AA85D: Else
  loc_14AA865:   If (var_A2 = CInt(6)) Then
  loc_14AA876:     Set var_98 = Me.Txt
  loc_14AA87C:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_A0)
  loc_14AA897:     Set var_90 = Me.Txt
  loc_14AA89D:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_94)
  loc_14AA8B5:     var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AA8C4:     Me.DGMobileNo.Top = var_BC
  loc_14AA8E4:     Set var_90 = Me.Txt
  loc_14AA8EA:     Call 0.Method_Txt_GotFocus0 (CInt(6), var_94)
  loc_14AA909:     Me.DGMobileNo.Left = CVar(var_94.Left)
  loc_14AA92E:     If (Me.RecordCount > 0) Then
  loc_14AA93C:       Set var_94 = ()
  loc_14AA954:       Proc_6_137_1193554(Me.DGMobileNo, global_80)
  loc_14AA962:     End If
  loc_14AA9B0:     Set var_90 = Me.Txt
  loc_14AA9B6:     Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AA9BE:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AA9D6:     If (Index Or (var_9C = vbNullString)) Then
  loc_14AA9D9:       Exit Sub
  loc_14AA9DA:     End If
  loc_14AA9E7:     Set var_90 = Me.Txt
  loc_14AA9ED:     Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AA9F5:     var_9C = var_94.Text
  loc_14AAA07:     var_BC = "MobileNo"
  loc_14AAA1E:     var_A0 = Me.Fields.Item(var_BC)
  loc_14AAA42:     If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AAA4B:       Me.MoveFirst
  loc_14AAA6E:       Set var_90 = Me.Txt
  loc_14AAA74:       Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "MobileNo ='")
  loc_14AAA7C:       0 = var_94.Text
  loc_14AAA95:       Me.Find 1 & var_9C & "'", var_BC, var_94
  loc_14AAAAA:     End If
  loc_14AAAAD:   Else
  loc_14AAAB5:     If (var_A2 = CInt(1)) Then
  loc_14AAAC6:       Set var_98 = Me.Txt
  loc_14AAACC:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_A0)
  loc_14AAAE7:       Set var_90 = Me.Txt
  loc_14AAAED:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_94)
  loc_14AAB05:       var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AAB14:       (var_BC).Top = 
  loc_14AAB34:       Set var_90 = Me.Txt
  loc_14AAB3A:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_94)
  loc_14AAB59:       (CVar(var_94.Left)).Left = 
  loc_14AAB7E:       If (Me.RecordCount > 0) Then
  loc_14AAB8C:         Set var_94 = ()
  loc_14AABA4:         Proc_6_137_1193554((), global_72)
  loc_14AABB2:       End If
  loc_14AAC00:       Set var_90 = Me.Txt
  loc_14AAC06:       Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AAC0E:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AAC34:       If (var_94 Or (Proc_6_38_E68A98(CVar(var_9C), Index) = vbNullString)) Then
  loc_14AAC37:         Exit Sub
  loc_14AAC38:       End If
  loc_14AAC45:       Set var_90 = Me.Txt
  loc_14AAC4B:       Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AAC53:       var_9C = var_94.Text
  loc_14AAC65:       var_BC = "Name"
  loc_14AAC7C:       var_A0 = Me.Fields.Item(var_BC)
  loc_14AACA0:       If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AACA9:         Me.MoveFirst
  loc_14AACCC:         Set var_90 = Me.Txt
  loc_14AACD2:         Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Name ='")
  loc_14AACDA:         0 = var_94.Text
  loc_14AACF3:         Me.Find 1 & var_9C & "'", var_BC, 
  loc_14AAD08:       End If
  loc_14AAD0B:     Else
  loc_14AAD13:       If (var_A2 = CInt(2)) Then
  loc_14AAD24:         Set var_98 = Me.Txt
  loc_14AAD2A:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_A0)
  loc_14AAD45:         Set var_90 = Me.Txt
  loc_14AAD4B:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_94)
  loc_14AAD63:         var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AAD72:         (var_BC).Top = 
  loc_14AAD92:         Set var_90 = Me.Txt
  loc_14AAD98:         Call 0.Method_Txt_GotFocus0 (CInt(2), var_94)
  loc_14AADB7:         (CVar(var_94.Left)).Left = 
  loc_14AADDC:         If (Me.RecordCount > 0) Then
  loc_14AADEA:           Set var_94 = ()
  loc_14AAE02:           Proc_6_137_1193554((), global_64)
  loc_14AAE10:         End If
  loc_14AAE5E:         Set var_90 = Me.Txt
  loc_14AAE64:         Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AAE6C:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AAE92:         If (var_94 Or (Proc_6_38_E68A98(CVar(var_9C), Index) = vbNullString)) Then
  loc_14AAE95:           Exit Sub
  loc_14AAE96:         End If
  loc_14AAEA3:         Set var_90 = Me.Txt
  loc_14AAEA9:         Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AAEB1:         var_9C = var_94.Text
  loc_14AAEC3:         var_BC = "RoomNo"
  loc_14AAEDA:         var_A0 = Me.Fields.Item(var_BC)
  loc_14AAEFE:         If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AAF07:           Me.MoveFirst
  loc_14AAF2A:           Set var_90 = Me.Txt
  loc_14AAF30:           Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "RoomNo ='")
  loc_14AAF38:           0 = var_94.Text
  loc_14AAF51:           Me.Find 1 & var_9C & "'", var_BC, 
  loc_14AAF66:         End If
  loc_14AAF69:       Else
  loc_14AAF71:         If (var_A2 = CInt(5)) Then
  loc_14AAF82:           Set var_98 = Me.Txt
  loc_14AAF88:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_A0)
  loc_14AAFA3:           Set var_90 = Me.Txt
  loc_14AAFA9:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_94)
  loc_14AAFC1:           var_BC = CVar(((var_94.Top + var_A0.Height) + CDbl(&H19))) 'Single
  loc_14AAFD0:           Me.DGConfirmationNo.Top = var_BC
  loc_14AAFF0:           Set var_90 = Me.Txt
  loc_14AAFF6:           Call 0.Method_Txt_GotFocus0 (CInt(5), var_94)
  loc_14AB015:           Me.DGConfirmationNo.Left = CVar(var_94.Left)
  loc_14AB03A:           If (Me.RecordCount > 0) Then
  loc_14AB048:             Set var_94 = ()
  loc_14AB060:             Proc_6_137_1193554(Me.DGConfirmationNo, global_76)
  loc_14AB06E:           End If
  loc_14AB0BC:           Set var_90 = Me.Txt
  loc_14AB0C2:           Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C)
  loc_14AB0CA:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_94.Text
  loc_14AB0F0:           If (var_94 Or (Proc_6_38_E68A98(CVar(var_9C), Index) = vbNullString)) Then
  loc_14AB0F3:             Exit Sub
  loc_14AB0F4:           End If
  loc_14AB101:           Set var_90 = Me.Txt
  loc_14AB107:           Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB10F:           var_9C = var_94.Text
  loc_14AB121:           var_BC = "ConfirmationNo"
  loc_14AB138:           var_A0 = Me.Fields.Item(var_BC)
  loc_14AB15C:           If CBool(CVar(var_9C) <> var_A0.Value) Then
  loc_14AB165:             Me.MoveFirst
  loc_14AB188:             Set var_90 = Me.Txt
  loc_14AB18E:             Call 0.Method_Txt_GotFocus0 (Index, var_94, var_9C, "Code ='")
  loc_14AB196:             0 = var_94.Tag
  loc_14AB1AF:             Me.Find 1 & var_9C & "'", var_BC, 
  loc_14AB1C4:           End If
  loc_14AB1C4:         End If
  loc_14AB1C4:       End If
  loc_14AB1C4:     End If
  loc_14AB1C4:   End If
  loc_14AB1C4: End If
  loc_14AB1D3: Set var_90 = Me.Txt
  loc_14AB1D9: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB1E1: var_94.SelStart = 0
  loc_14AB1FA: Set var_90 = Me.Txt
  loc_14AB200: Call 0.Method_Txt_GotFocus0 (Index, var_94)
  loc_14AB21B: Set var_98 = Me.Txt
  loc_14AB221: Call 0.Method_Txt_GotFocus0 (Index, var_A0)
  loc_14AB229: var_A0.SelLength = Len(var_94.Text)
  loc_14AB23C: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12CCFDC
  'Data Table: 476274
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_9C As DataGrid
  Dim var_A0 As DataGrid
  loc_12CC972: If (CLng(Shift) = &H1B) Then
  loc_12CC975:   Call Proc_65_26_F6FB9C()
  loc_12CC97A:   Exit Sub
  loc_12CC97B: End If
  loc_12CC97E: var_88 = KeyCode
  loc_12CC989: If (var_88 = CInt(0)) Then
  loc_12CC9B4:   Set var_9C = Nothing
  loc_12CC9E6:   Proc_6_69_134A198((var_88), Me.Txt, CInt(0), global_68, Shift)
  loc_12CCA55:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CCA5C:     Set var_9C = 2(0)
  loc_12CCA63:     Set var_90 = ()(var_9C)
  loc_12CCA7B:     Proc_6_138_106D6F8(var_9C, global_68, KeyCode)
  loc_12CCA89:   End If
  loc_12CCA8C: Else
  loc_12CCA94:   If (var_88 = CInt(6)) Then
  loc_12CCAB4:     Set var_A0 = 0(var_90)
  loc_12CCABF:     Set var_9C = Nothing
  loc_12CCAF1:     Proc_6_69_134A198(Me.DGMobileNo, Me.Txt, CInt(6), global_80, Shift)
  loc_12CCB60:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CCB67:       Set var_9C = Me.DGMobileNo
  loc_12CCB86:       Proc_6_138_106D6F8(var_9C, global_80, KeyCode, 1(0))
  loc_12CCB94:     End If
  loc_12CCB97:   Else
  loc_12CCB9F:     If (var_88 = CInt(1)) Then
  loc_12CCBCA:       Set var_9C = Nothing
  loc_12CCBFC:       Proc_6_69_134A198((0)(var_9C), Me.Txt, CInt(1), global_72, Shift)
  loc_12CCC6B:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CCC72:         Set var_9C = 2(0)
  loc_12CCC79:         Set var_90 = (0)(var_9C)
  loc_12CCC91:         Proc_6_138_106D6F8(var_9C, global_72, KeyCode)
  loc_12CCC9F:       End If
  loc_12CCCA2:     Else
  loc_12CCCAA:       If (var_88 = CInt(2)) Then
  loc_12CCCD5:         Set var_9C = Nothing
  loc_12CCD07:         Proc_6_69_134A198(0(Me.Txt), Me.Txt, CInt(2), global_64, Shift)
  loc_12CCD76:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CCD7D:           Set var_9C = 1(0)
  loc_12CCD84:           Set var_90 = ()(var_9C)
  loc_12CCD9C:           Proc_6_138_106D6F8(var_9C, global_64, KeyCode)
  loc_12CCDAA:         End If
  loc_12CCDAD:       Else
  loc_12CCDB5:         If (var_88 = CInt(5)) Then
  loc_12CCDD5:           Set var_A0 = 0(var_90)
  loc_12CCDE0:           Set var_9C = Nothing
  loc_12CCE12:           Proc_6_69_134A198(Me.DGConfirmationNo, Me.Txt, CInt(5), global_76, Shift)
  loc_12CCE81:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12CCE88:             Set var_9C = Me.DGConfirmationNo
  loc_12CCEA7:             Proc_6_138_106D6F8(var_9C, global_76, KeyCode, 2(0))
  loc_12CCEB5:           End If
  loc_12CCEB5:         End If
  loc_12CCEB5:       End If
  loc_12CCEB5:     End If
  loc_12CCEB5:   End If
  loc_12CCEB5: End If
  loc_12CCF41: If (( And (CBool((( And (CBool(0(((CBool(var_A0(var_9C).Visible) = 0) And (CBool(Me.DGMobileNo.Visible) = 0))).Visible) = 0))).Visible) = 0)) And (CBool(Me.DGConfirmationNo.Visible) = 0)) Then
  loc_12CCF62:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(5))) Then
  loc_12CCF6B:     Proc_6_75_E527CC(Shift)
  loc_12CCF70:   End If
  loc_12CCF8E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(5))) Then
  loc_12CCF99:     Call Txt_Validate(KeyCode)
  loc_12CCF9E:   End If
  loc_12CCFB3:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12CCFBC:     Proc_6_75_E527CC(Shift, arg_14)
  loc_12CCFC1:   End If
  loc_12CCFCB:   If (CLng(Shift) = &H26) Then
  loc_12CCFD4:     Proc_6_76_E52838(Shift, arg_14)
  loc_12CCFD9:   End If
  loc_12CCFD9: End If
  loc_12CCFD9: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10DBB70
  'Data Table: 476274
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_10DB85F: Proc_6_58_E054C0(arg_10)
  loc_10DB86A: Proc_6_133_E7EF78(var_94)
  loc_10DB873: arg_10 = CInt(var_94)
  loc_10DB87C: var_96 = KeyAscii
  loc_10DB887: If (var_96 = CInt(0)) Then
  loc_10DB8A6:   If (CBool(arg_10(var_96).Visible) = &HFF) Then
  loc_10DB8D3:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10)
  loc_10DB8ED:     Set var_A8 = (arg_10)
  loc_10DB905:     Proc_6_138_106D6F8(0("Name"), global_68)
  loc_10DB913:   End If
  loc_10DB916: Else
  loc_10DB91E:   If (var_96 = CInt(6)) Then
  loc_10DB93D:     If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_10DB96A:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10)
  loc_10DB984:       Set var_A8 = 0("MobileNo")
  loc_10DB99C:       Proc_6_138_106D6F8(Me.DGMobileNo, global_80, KeyAscii)
  loc_10DB9AA:     End If
  loc_10DB9AD:   Else
  loc_10DB9B5:     If (var_96 = CInt(1)) Then
  loc_10DB9D4:       If (CBool(KeyAscii(var_A8).Visible) = &HFF) Then
  loc_10DBA01:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_72, arg_10)
  loc_10DBA1B:         Set var_A8 = (var_A8)
  loc_10DBA33:         Proc_6_138_106D6F8(0("Name"), global_72)
  loc_10DBA41:       End If
  loc_10DBA44:     Else
  loc_10DBA4C:       If (var_96 = CInt(2)) Then
  loc_10DBA6B:         If (CBool(var_A8(KeyAscii).Visible) = &HFF) Then
  loc_10DBA98:           Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64)
  loc_10DBAB2:           Set var_A8 = (0)
  loc_10DBACA:           Proc_6_138_106D6F8("RoomNo"(arg_10), global_64)
  loc_10DBAD8:         End If
  loc_10DBADB:       Else
  loc_10DBAE3:         If (var_96 = CInt(5)) Then
  loc_10DBB02:           If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_10DBB2F:             Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, arg_10)
  loc_10DBB49:             Set var_A8 = 0("ConfirmationNo")
  loc_10DBB61:             Proc_6_138_106D6F8(Me.DGConfirmationNo, global_76, KeyAscii)
  loc_10DBB6F:           End If
  loc_10DBB6F:         End If
  loc_10DBB6F:       End If
  loc_10DBB6F:     End If
  loc_10DBB6F:   End If
  loc_10DBB6F: End If
  loc_10DBB6F: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4946C
  'Data Table: 476274
  loc_E4944A: Set var_88 = Me.Txt
  loc_E49450: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4945E: Proc_6_73_E22704(var_8C)
  loc_E4946A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '132E88C
  'Data Table: 476274
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_E8 As TextBox
  loc_132E0E7: var_86 = Cancel
  loc_132E0F2: If (var_86 = CInt(0)) Then
  loc_132E143:   Set var_94 = Me.Txt
  loc_132E149:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132E151:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_132E169:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_132E16C:     Exit Sub
  loc_132E16D:   End If
  loc_132E1A8:   Set var_B0 = Me.Txt
  loc_132E1AE:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E1B6:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_132E1E9:   var_98 = Me.Fields.Item("Code")
  loc_132E207:   Set var_B0 = Me.Txt
  loc_132E20D:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E215:   var_B4.Tag = CStr(var_98.Value)
  loc_132E22B:   Call FillDetail()
  loc_132E233: Else
  loc_132E23B:   If (var_86 = CInt(1)) Then
  loc_132E28C:     Set var_94 = Me.Txt
  loc_132E292:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_132E2B2:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_132E2B5:       Exit Sub
  loc_132E2B6:     End If
  loc_132E2F1:     Set var_B0 = Me.Txt
  loc_132E2F7:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E2FF:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_132E332:     var_98 = Me.Fields.Item("Code")
  loc_132E343:     var_9C = CStr(var_98.Value)
  loc_132E350:     Set var_B0 = Me.Txt
  loc_132E356:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E35E:     var_B4.Tag = var_9C
  loc_132E374:     Call FillDetail()
  loc_132E37C:   Else
  loc_132E384:     If (var_86 = CInt(6)) Then
  loc_132E392:       Set var_94 = Me.Txt
  loc_132E398:       Call 0.Method_Txt_Validate0 (CInt(6))
  loc_132E3C1:       If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_132E3C4:       End If
  loc_132E412:       Set var_94 = Me.Txt
  loc_132E418:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132E420:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_132E438:       If (var_98 Or (var_9C = vbNullString)) Then
  loc_132E448:         Set var_94 = Me.Txt
  loc_132E44E:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_132E456:         var_98.Tag = vbNullString
  loc_132E462:         Exit Sub
  loc_132E463:       End If
  loc_132E49E:       Set var_B0 = Me.Txt
  loc_132E4A4:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E4AC:       var_B4.Text = CStr(Me.Fields.Item("MobileNo").Value)
  loc_132E4DF:       var_98 = Me.Fields.Item("SearchCode")
  loc_132E4F0:       var_9C = CStr(var_98.Value)
  loc_132E4FD:       Set var_B0 = Me.Txt
  loc_132E503:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E50B:       var_B4.Tag = var_9C
  loc_132E521:       Call FillDetail()
  loc_132E529:     Else
  loc_132E531:       If (var_86 = CInt(2)) Then
  loc_132E53F:         Set var_94 = Me.Txt
  loc_132E545:         Call 0.Method_Txt_Validate0 (CInt(2))
  loc_132E56E:         If CBool(Trim(CVar(var_98)) <> vbNullString) Then
  loc_132E571:         End If
  loc_132E5BF:         Set var_94 = Me.Txt
  loc_132E5C5:         Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132E5CD:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_132E5E5:         If (var_98 Or (var_9C = vbNullString)) Then
  loc_132E5F5:           Set var_94 = Me.Txt
  loc_132E5FB:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_132E603:           var_98.Tag = vbNullString
  loc_132E60F:           Exit Sub
  loc_132E610:         End If
  loc_132E64B:         Set var_B0 = Me.Txt
  loc_132E651:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E659:         var_B4.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_132E68C:         var_98 = Me.Fields.Item("SearchCode")
  loc_132E6AA:         Set var_B0 = Me.Txt
  loc_132E6B0:         Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E6B8:         var_B4.Tag = CStr(var_98.Value)
  loc_132E6CE:         Call FillDetail()
  loc_132E6D6:       Else
  loc_132E6DE:         If Not (var_86 = CInt(3)) Then
  loc_132E6E9:           If (var_86 = CInt(4)) Then
  loc_132E6EC:           End If
  loc_132E6F6:           Set var_94 = Me.Txt
  loc_132E6FC:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_132E70F:           var_9C = Proc_6_33_1512840(var_98)
  loc_132E71C:           Set var_B4 = Me.Txt
  loc_132E722:           Call 0.Method_Txt_Validate0 (Cancel, var_E8)
  loc_132E72A:           var_E8.Text = var_9C
  loc_132E73D:           Call FillDetail()
  loc_132E745:         Else
  loc_132E74D:           If (var_86 = CInt(5)) Then
  loc_132E79E:             Set var_94 = Me.Txt
  loc_132E7A4:             Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_132E7AC:             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_132E7C4:             If (var_98 Or (var_9C = vbNullString)) Then
  loc_132E7C7:               Exit Sub
  loc_132E7C8:             End If
  loc_132E803:             Set var_B0 = Me.Txt
  loc_132E809:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E811:             var_B4.Text = CStr(Me.Fields.Item("ConfirmationNo").Value)
  loc_132E862:             Set var_B0 = Me.Txt
  loc_132E868:             Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_132E870:             var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_132E886:             Call FillDetail()
  loc_132E88B:           End If
  loc_132E88B:         End If
  loc_132E88B:       End If
  loc_132E88B:     End If
  loc_132E88B:   End If
  loc_132E88B: End If
  loc_132E88B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'ED8678
  'Data Table: 476274
  loc_ED85DC: If (CBool(().Visible) = &HFF) Then
  loc_ED85DF:   Call DGRoomNo_UnknownEvent_9()
  loc_ED85E4: End If
  loc_ED8600: If (CBool(().Visible) = &HFF) Then
  loc_ED8603:   Call DGGuestName_UnknownEvent_9()
  loc_ED8608: End If
  loc_ED8624: If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_ED8627:   Call DGConfirmationNo_UnknownEvent_9()
  loc_ED862C: End If
  loc_ED8648: If (CBool(().Visible) = &HFF) Then
  loc_ED864B:   Call DGCompanyName_UnknownEvent_9()
  loc_ED8650: End If
  loc_ED866C: If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_ED866F:   Call DGMobileNo_UnknownEvent_9()
  loc_ED8674: End If
  loc_ED8674: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E6BD78
  'Data Table: 476274
  loc_E6BD29: Me.Global.Unload Me
  loc_E6BD3F: If (ReservationYN = &HFF) Then
  loc_E6BD52:   Me.Global.Load MemVar_1F934E8
  loc_E6BD5D: Else
  loc_E6BD6D:   Me.Global.Load MemVar_1F9296C
  loc_E6BD75: End If
  loc_E6BD75: Exit Sub
End Sub

Public Property Let ReservationYN(vNewValue) 'E01568
  'Data Table: 476274
  loc_E01562: global_84 = vNewValue
  loc_E01566: Exit Sub
End Sub

Public Property Get ReservationYN() 'E0AE10
  'Data Table: 476274
  loc_E0AE08: ReservationYN = CBool(global_84)
End Sub

Public Sub FillDetail() '13477BC
  'Data Table: 476274
  Dim var_B4 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_178 As Variant
  Dim var_1A0 As TextBox
  Dim var_B8 As String
  Dim var_D8 As Variant
  Dim unk_476293 As Connection15
  Dim var_9C As Recordset15
  loc_1346FF4: On Error Goto loc_13477B4
  loc_1346FFC: var_94 = vbNullString 'Variant
  loc_1347003: var_98 = vbNullString
  loc_1347014: Set var_B0 = Me.Txt
  loc_134701A: Call 0.Method_FillDetail0 (CInt(0), var_B4)
  loc_1347039: If (var_B4.Text <> vbNullString) Then
  loc_134706F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1347078:   var_148 = (var_128 + " GuestProf.Code='")
  loc_1347099:   var_B4 = Me.Fields.Item("Code")
  loc_13470B7:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_13470D6: End If
  loc_13470E4: Set var_B0 = Me.Txt
  loc_13470EA: Call 0.Method_FillDetail0 (CInt(1), var_B4)
  loc_1347109: If (var_B4.Text <> vbNullString) Then
  loc_134713F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1347148:   var_148 = (var_128 + " Company.SubCode='")
  loc_1347169:   var_B4 = Me.Fields.Item("Code")
  loc_1347187:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_13471A6: End If
  loc_13471B4: Set var_B0 = Me.Txt
  loc_13471BA: Call 0.Method_FillDetail0 (CInt(6), var_B4)
  loc_13471D9: If (var_B4.Text <> vbNullString) Then
  loc_134720F:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_1347218:   var_148 = (var_128 + " GuestProf.Code='")
  loc_1347239:   var_B4 = Me.Fields.Item("SearchCode")
  loc_1347257:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_1347276: End If
  loc_1347284: Set var_B0 = Me.Txt
  loc_134728A: Call 0.Method_FillDetail0 (CInt(2), var_B4)
  loc_13472A9: If (var_B4.Text <> vbNullString) Then
  loc_13472DF:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_13472E8:   var_148 = (var_128 + " RO.RoomNO='")
  loc_1347309:   var_B4 = Me.Fields.Item("SearchCode")
  loc_1347319:   var_178 = var_148 & var_B4.Value 
  loc_1347327:   var_98 = CStr(var_178 & "'")
  loc_1347346: End If
  loc_1347354: Set var_B0 = Me.Txt
  loc_134735A: Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_134737D: Set var_19C = Me.Txt
  loc_1347383: Call 0.Method_FillDetail0 (CInt(4), var_1A0)
  loc_13473AB: If ((var_B4.Text <> vbNullString) And (var_1A0.Text <> vbNullString)) Then
  loc_13473E1:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", "And "))
  loc_13473EA:   var_148 = (var_128 + " RO.ChkInDT Between ")
  loc_13473F9:   Set var_B0 = Me.Txt
  loc_13473FF:   Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_134740E:   Proc_6_7_F25D88(var_178, CVar(var_B4))
  loc_134742E:   Set var_19C = Me.Txt
  loc_1347434:   Call 0.Method_FillDetail0 (CInt(4), var_1A0)
  loc_1347443:   Proc_6_7_F25D88(var_1D4, CVar(var_1A0))
  loc_1347459:   var_98 = CStr(var_148 & var_178 & " And " & var_1D4 & vbNullString)
  loc_1347485: Else
  loc_1347493:   Set var_B0 = Me.Txt
  loc_1347499:   Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_13474B8:   If (var_B4.Text <> vbNullString) Then
  loc_13474EE:     var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_13474F7:     var_148 = (var_128 + " RO.ChkInDT=")
  loc_1347506:     Set var_B0 = Me.Txt
  loc_134750C:     Call 0.Method_FillDetail0 (CInt(3), var_B4)
  loc_134751B:     Proc_6_7_F25D88(var_178, CVar(var_B4))
  loc_1347531:     var_98 = CStr(var_148 & var_178 & vbNullString)
  loc_134754E:   End If
  loc_134754E: End If
  loc_134755C: Set var_B0 = Me.Txt
  loc_1347562: Call 0.Method_FillDetail0 (CInt(5), var_B4)
  loc_1347581: If (var_B4.Text <> vbNullString) Then
  loc_13475B7:   var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_13475C0:   var_148 = (var_128 + " Booking.DocID='")
  loc_13475D9:   var_B0 = Me.Fields
  loc_13475E1:   var_B4 = var_B0.Item("Code")
  loc_13475FF:   var_98 = CStr(var_148 & var_B4.Value & "'")
  loc_134761E: End If
  loc_1347651: var_128 = (CVar(var_98) + IIf((var_98 = vbNullString), " Where ", " And "))
  loc_134765A: var_148 = (var_128 + " RO.Logsite_code='")
  loc_134768F: var_B8 = "SELECT RO.DocId AS GuestDocID,RO.Type, GuestProf.Name AS GuestName, Booking.DocId AS BookingID, RO.RoomNo, RoomCat.Name AS RoomType, RO.ChkInDt AS ArrivalDate,RO.Adult,DateDiff(d,ChkInDt,ChkOutDt) Days,RO.RoomTarrif,RO.RRTaxInc,PlanMast.Tariff As PlanType,RO.PlanAmt FROM ((((RoomOccDet RO Inner JOIN GuestFolio ON RO.DocId = GuestFolio.DocId) lEFT JOIN Booking ON GuestFolio.BookingDocId = Booking.DocId) inner JOIN GuestProf ON RO.GuestProf = GuestProf.Code) inner JOIN RoomCat ON (RO.RoomType = RoomCat.Type) AND (RO.RoomCat = RoomCat.Code)) Left JOIN SubGroup AS Company ON GuestFolio.Company = Company.SubCode Left JOIN PlanMast ON PlanMast.Code = RO.PlanCode " & CStr(var_148 & CVar(MemVar_1F92078) & "'")
  loc_1347696: var_D8 = CVar(var_B8 & " ORDER BY GuestProf.Name,RO.ChkInDt Desc") 'String
  loc_13476BA: unk_476293.Execute CStr(var_D8), var_D8, -1
  loc_13476C5: Set var_9C = var_B0
  loc_13476DA: var_9C.Filter = "Type='O'"
  loc_13476E5: CVarUnk
  loc_13476EA: VerifyVarObj
  loc_13476F0: Set var_B0 = var_B0(var_9C)
  loc_13476F6: LateIdStAd
  loc_1347712: var_B0(True).Visible = 
  loc_1347740: Set var_B0 = var_B4(0)
  loc_1347746: Call 0.Method_FillDetail0 (CStr(Val(CStr(var_9C.RecordCount))))
  loc_134774E: var_B4.Caption = 
  loc_134776C: Set var_B0 = var_B4(0)
  loc_1347772: Call 0.Method_FillDetail0 (&HFF)
  loc_134777A: var_B4.Visible = 
  loc_1347791: Set var_B0 = var_B4(1)
  loc_1347797: Call 0.Method_FillDetail0 (&HFF)
  loc_134779F: var_B4.Visible = 
  loc_13477B0: Set var_9C = Nothing
  loc_13477B3: Exit Sub
  loc_13477B4: ' Referenced from: 1346FF4
  loc_13477B4: Proc_6_60_E62BC4()
  loc_13477B9: Exit Sub
End Sub

Public Property Get FrmOpenType() 'E0FAB4
  'Data Table: 476274
  loc_E0FAA8: var_88 = global_56
  loc_E0FAAB: FrmOpenType = 
End Sub

Public Property Let FrmOpenType(vNewValue) 'E0F994
  'Data Table: 476274
  loc_E0F98C: global_56 = vNewValue
  loc_E0F990: Exit Sub
End Sub

Public Sub Proc_65_25_E40E54
  'Data Table: 476274
  Dim var_8C As TextBox
  loc_E40E36: Set var_88 = Me.Txt
  loc_E40E3C: Call 0.Method_Proc_65_25_E40E540 (CInt(0), var_8C)
  loc_E40E44: var_8C.Tag = vbNullString
  loc_E40E50: Exit Sub
  loc_E40E51: Exit Sub
End Sub

Public Sub Proc_65_26_F6FB9C
  'Data Table: 476274
  loc_F6FA70: If (CBool(().Visible) = &HFF) Then
  loc_F6FA82:   (False).Visible = 
  loc_F6FA8A: End If
  loc_F6FAA6: If (CBool(().Visible) = &HFF) Then
  loc_F6FAB8:   (False).Visible = 
  loc_F6FAC0: End If
  loc_F6FADC: If (CBool(().Visible) = &HFF) Then
  loc_F6FAEE:   (False).Visible = 
  loc_F6FAF6: End If
  loc_F6FB12: If (CBool(Me.DGConfirmationNo.Visible) = &HFF) Then
  loc_F6FB24:   Me.DGConfirmationNo.Visible = False
  loc_F6FB2C: End If
  loc_F6FB48: If (CBool(Me.DGMobileNo.Visible) = &HFF) Then
  loc_F6FB5A:   Me.DGMobileNo.Visible = False
  loc_F6FB62: End If
  loc_F6FB7E: If (CBool(().Visible) = &HFF) Then
  loc_F6FB90:   (False).Visible = 
  loc_F6FB98: End If
  loc_F6FB98: Exit Sub
  loc_F6FB99:  = arg_2A00
End Sub

Public Sub Proc_65_27_DFBDD0
  'Data Table: 476274
  loc_DFBDCC: Exit Sub
End Sub
