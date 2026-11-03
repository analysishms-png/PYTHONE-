VERSION 5.00
Begin VB.Form RrLookUpGuest
  Caption = "New Reservation By Guest Reservation History"
  BackColor = &HF9E4CC&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RrLookUpGuest.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 930
  ClientWidth = 11340
  ClientHeight = 6435
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
    Top = 5985
    Width = 11340
    Height = 450
    Visible = 0   'False
    TabIndex = 12
  End
  Begin DataGrid DGHelp
    Left = 1875
    Top = 1905
    Width = 10965
    Height = 6690
    TabStop = 0   'False
    TabIndex = 5
  End
  Begin CommandButton Command1z
    Caption = "&Close"
    BackColor = &HBDD7D2&
    Left = 14160
    Top = 5130
    Width = 1545
    Height = 450
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 9735
    Top = 1260
    Width = 1410
    Height = 285
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
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 4290
    Top = 1260
    Width = 1410
    Height = 285
    TabIndex = 0
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 4290
    Top = 1575
    Width = 6870
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
  Begin CommandButton CmdOKz
    Caption = "&OK"
    BackColor = &HBDD7D2&
    Left = 12615
    Top = 5130
    Width = 1545
    Height = 450
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh Command1
    Left = 8265
    Top = 585
    Width = 1080
    Height = 570
    TabIndex = 10
  End
  Begin BtnEnh CmdOK
    Left = 5850
    Top = 585
    Width = 1080
    Height = 570
    TabIndex = 11
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 9
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
  Begin Shape Shape2
    BorderColor = &HFF0000&
    Left = 16275
    Top = 3450
    Width = 435
    Height = 630
    Visible = 0   'False
    Shape = 4
    BorderWidth = 2
    FillColor = &HFF0000&
  End
  Begin Label Label1
    Caption = "Arrival Date To"
    Index = 2
    ForeColor = &HC00000&
    Left = 8190
    Top = 1275
    Width = 1425
    Height = 240
    TabIndex = 7
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
    Caption = "Arrival Date From"
    Index = 1
    ForeColor = &HC00000&
    Left = 2550
    Top = 1275
    Width = 1680
    Height = 240
    TabIndex = 6
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
    Caption = "Guest Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2550
    Top = 1590
    Width = 1155
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
  Begin Shape Shape1
    BorderColor = &HFF0000&
    Left = 15945
    Top = 1755
    Width = 195
    Height = 975
    Visible = 0   'False
    Shape = 4
    BorderWidth = 2
    FillColor = &HFF0000&
  End
End

Attribute VB_Name = "RrLookUpGuest"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_16 'F92DB4
  'Data Table: 434638
  Dim var_86 As Integer
  Dim unk_43464A As Connection15
  Dim var_94 As TextBox
  Dim MemVar_1F921A4 As String
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F92C58: On Error Goto loc_F92D98
  loc_F92C66: Set var_90 = Me.Txt
  loc_F92C6C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F92C74: var_9C = "Name"
  loc_F92C95: If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_F92C98:   Exit Sub
  loc_F92C99: End If
  loc_F92C9B: var_86 = &HFF
  loc_F92CA7: unk_43464A.BeginTrans var_A0
  loc_F92CBA: Set var_90 = Me.Txt
  loc_F92CC0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F92CC8: var_86 = var_94.Tag
  loc_F92CDF: MemVar_1F921A4 = CStr(Trim(CVar(var_9C)))
  loc_F92CF7: unk_43464A.CommitTrans
  loc_F92D0A: Set var_90 = Me.Txt
  loc_F92D10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F92D18: MemVar_1F921A4 = var_94.Tag
  loc_F92D2C: var_86 = 0
  loc_F92D3A: Me.Requery -1
  loc_F92D64: Me.Find "SearchCode ='" & var_9C & "'", 0, 1
  loc_F92D7D: Set var_90 = Me.Txt
  loc_F92D83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, &HFF)
  loc_F92D8B: var_94.Enabled = var_D4
  loc_F92D97: Exit Sub
  loc_F92D98: ' Referenced from: F92C58
  loc_F92D9E: If (var_86 = &HFF) Then
  loc_F92DA7:   unk_43464A.RollbackTrans
  loc_F92DAC: End If
  loc_F92DAC: Proc_6_60_E62BC4(var_86)
  loc_F92DB1: Exit Sub
  loc_F92DB2: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 'EDBB9C
  'Data Table: 434638
  Dim Me As Recordset15
  Dim var_9C As String
  loc_EDBB03: If (Me.RecordCount > 0) Then
  loc_EDBB14:   Call 0.Method_arg_2B0 (var_9C)
  loc_EDBB1F:   Call RrRoomReservation.TopCtrl1_UnknownEvent_A()
  loc_EDBB2F:   RrRoomReservation.OpenMode = 1
  loc_EDBB6B:   Call RrRoomReservation.SEARCHBACK(CStr(RrRoomReservation.Recordset15.Fields.Item("Code").Value))
  loc_EDBB8A:   Me.Global.Unload Me
  loc_EDBB97:   Set var_8C = Nothing
  loc_EDBB9A: End If
  loc_EDBB9A: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E17560
  'Data Table: 434638
  loc_E17555: Me.Global.Unload Me
  loc_E1755D: Exit Sub
End Sub

Private Sub Form_Load() 'F04214
  'Data Table: 434638
  Dim var_98 As Variant
  Dim Me As Recordset15
  loc_F04130: On Error Goto loc_F0420E
  loc_F0414F: Me.Recordset15.CursorLocation = 3
  loc_F0416B: var_98 = "SELECT Booking.DocId AS CODE, Booking.BookNo AS ResNo, GuestProf.Name, Booking.DocId AS ID, RoomCat.Name AS RoomType, Booking.RoomNo, Booking.ArrDate AS Arr_Date, Booking.NoDays AS tot_Days FROM (ViewBooking Booking LEFT JOIN RoomCat ON Booking.RoomCat = RoomCat.Code) LEFT JOIN GuestProf ON Booking.GuestProf = GuestProf.Code Order By GuestProf.Name,Booking.ArrDate"
  loc_F04177: Me.Open var_98, CVar(MemVar_1F92044), 3
  loc_F04185: CVarUnk
  loc_F0418A: VerifyVarObj
  loc_F04190: Set var_88 = Me.DGHelp
  loc_F04196: LateIdStAd
  loc_F041AD: Call 0.Method_arg_160 (var_88, var_88, New)
  loc_F041BB: Call 0.Method_arg_164 (var_88, 1)
  loc_F041C3: Call Proc_57_22_E29C2C(-1)
  loc_F041DE: Proc_6_23_DFBA28(Me, 0)
  loc_F041ED: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F041F6: var_98 = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_F041FF: Set var_88 = Me.Timer1
  loc_F0420D: Exit Sub
  loc_F0420E: ' Referenced from: F04130
  loc_F0420E: Proc_6_60_E62BC4(Timer1.DispID_FFFFFE0B, var_98)
  loc_F04213: Exit Sub
End Sub

Private Sub Form_Resize() 'E6FB44
  'Data Table: 434638
  loc_E6FAEE: Call 0.Method_arg_50 (var_88)
  loc_E6FB00: Me.LblFormCaption.Caption = var_88
  loc_E6FB19: Me.LblFormCaption.Left = CDbl(0)
  loc_E6FB27: Call 0.Method_arg_100 (var_90)
  loc_E6FB39: Me.LblFormCaption.Width = var_90
  loc_E6FB41: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1C520
  'Data Table: 434638
  loc_E1C50F: Set global_56 = Nothing
  loc_E1C51B: global_52 = 0
  loc_E1C51E: Exit Sub
End Sub

Private Sub Form_Activate() 'E0C308
  'Data Table: 434638
  loc_E0C2F9: If (global_54 = &HFF) Then
  loc_E0C301:   global_54 = 0
  loc_E0C304: End If
  loc_E0C304: Exit Sub
  loc_E0C305: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E334F8
  'Data Table: 434638
  loc_E334D5: If (global_52 = &HFF) Then
  loc_E334E5:   Me.Global.Unload Me
  loc_E334ED: End If
  loc_E334F5: Exit Sub
  loc_E334F6: Set var_3FAC = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E33558
  'Data Table: 434638
  loc_E3352C: On Error Goto loc_E33550
  loc_E33547: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3354F: Exit Sub
  loc_E33550: ' Referenced from: E3352C
  loc_E33550: Proc_6_60_E62BC4(Shift)
  loc_E33555: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1064D30
  'Data Table: 434638
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_1064AC6: Set var_88 = Me.Txt
  loc_1064ACC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1064ADA: Proc_6_74_E226B0(var_8C)
  loc_1064AF5: Set var_88 = Me.Txt
  loc_1064AFB: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064B03: var_8C.SelStart = 0
  loc_1064B1C: Set var_88 = Me.Txt
  loc_1064B22: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064B2A: var_94 = var_8C.Text
  loc_1064B3D: Set var_90 = Me.Txt
  loc_1064B43: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1064B4B: var_98.SelLength = Len(var_94)
  loc_1064B61: var_9A = Index
  loc_1064B6C: If (var_9A = CInt(0)) Then
  loc_1064BBD:   Set var_88 = Me.Txt
  loc_1064BC3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_1064BCB:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1064BE3:   If (var_9A Or (var_94 = vbNullString)) Then
  loc_1064BE6:     Exit Sub
  loc_1064BE7:   End If
  loc_1064BF4:   Set var_88 = Me.Txt
  loc_1064BFA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064C02:   var_94 = var_8C.Text
  loc_1064C14:   var_B4 = "Name"
  loc_1064C2B:   var_98 = Me.Fields.Item(var_B4)
  loc_1064C4F:   If CBool(CVar(var_94) <> var_98.Value) Then
  loc_1064C58:     Me.MoveFirst
  loc_1064C7B:     Set var_88 = Me.Txt
  loc_1064C81:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_1064C89:     0 = var_8C.Text
  loc_1064CA2:     Me.Find 1 & var_94 & "'", var_B4, var_8C
  loc_1064CB7:   End If
  loc_1064CB7: End If
  loc_1064CC6: Set var_88 = Me.Txt
  loc_1064CCC: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064CD4: var_8C.SelStart = 0
  loc_1064CED: Set var_88 = Me.Txt
  loc_1064CF3: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1064D0E: Set var_90 = Me.Txt
  loc_1064D14: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_1064D1C: var_98.SelLength = Len(var_8C.Text)
  loc_1064D2F: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F01868
  'Data Table: 434638
  Dim Shift As Integer
  loc_F0179A: If (CLng(Shift) = &H1B) Then
  loc_F0179D:   Exit Sub
  loc_F0179E: End If
  loc_F017AC: If (KeyCode = CInt(0)) Then
  loc_F017B9:   If (CLng(Shift) = &HD) Then
  loc_F017BE:     Shift = 0
  loc_F017C1:   End If
  loc_F017D9:   Set var_A0 = Nothing
  loc_F017E4:   Set var_9C = Nothing
  loc_F01816:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_F0182A: End If
  loc_F01832: If (KeyCode = CInt(0)) Then
  loc_F0183F:   If (CLng(Shift) = &H28) Then
  loc_F01842:     Exit Sub
  loc_F01843:   End If
  loc_F01843: End If
  loc_F01858: If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F01861:   Proc_6_75_E527CC(Shift, arg_14, 1, var_9C)
  loc_F01866: End If
  loc_F01866: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E9091C
  'Data Table: 434638
  loc_E908AB: Proc_6_58_E054C0(arg_10)
  loc_E908BE: If (KeyAscii = CInt(0)) Then
  loc_E908DD:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E908EF:     var_A0 = "Name"
  loc_E9090A:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_E90919:   End If
  loc_E90919: End If
  loc_E90919: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA9AE0
  'Data Table: 434638
  loc_EA9A6E: If (KeyCode = CInt(0)) Then
  loc_EA9A8D:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EA9AA1:     var_A8 = "Name"
  loc_EA9AC9:     Proc_6_68_129FB34(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_EA9ADC:   End If
  loc_EA9ADC: End If
  loc_EA9ADC: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DB1C
  'Data Table: 434638
  loc_E4DAFA: Set var_88 = Me.Txt
  loc_E4DB00: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DB0E: Proc_6_73_E22704(var_8C)
  loc_E4DB1A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1214814
  'Data Table: 434638
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  Dim var_C8 As TextBox
  loc_1214357: var_86 = Cancel
  loc_1214362: If (var_86 = CInt(0)) Then
  loc_12143B3:   Set var_94 = Me.Txt
  loc_12143B9:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_12143C1:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_12143D9:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_12143DC:     Exit Sub
  loc_12143DD:   End If
  loc_1214418:   Set var_B0 = Me.Txt
  loc_121441E:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1214426:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1214459:   var_98 = Me.Fields.Item("Code")
  loc_1214477:   Set var_B0 = Me.Txt
  loc_121447D:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_1214485:   var_B4.Tag = CStr(var_98.Value)
  loc_121449E: Else
  loc_12144A6:   If Not (var_86 = CInt(1)) Then
  loc_12144B1:     If (var_86 = CInt(2)) Then
  loc_12144B4:     End If
  loc_12144BE:     Set var_94 = Me.Txt
  loc_12144C4:     Call 0.Method_Txt_Validate0 (Cancel)
  loc_12144E4:     Set var_B4 = Me.Txt
  loc_12144EA:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_12144F2:     var_C8.Text = Proc_6_33_1512840(var_98)
  loc_1214513:     Set var_94 = Me.Txt
  loc_1214519:     Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_121453C:     Set var_B0 = Me.Txt
  loc_1214542:     Call 0.Method_Txt_Validate0 (CInt(2), var_B4, var_CC)
  loc_121454A:     (var_98.Text <> vbNullString) = var_B4.Text
  loc_121456A:     If (var_98 And (var_CC <> vbNullString)) Then
  loc_121457C:       Me.Filter = 0
  loc_1214591:       Set var_94 = Me.Txt
  loc_1214597:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12145A6:       Proc_6_7_F25D88(var_DC, CVar(var_98))
  loc_12145C6:       Set var_B0 = Me.Txt
  loc_12145CC:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_12145DB:       Proc_6_7_F25D88(var_12C, CVar(var_B4))
  loc_12145EE:       Me.Filter = "Arr_Date>=" & var_DC & " And Arr_Date<=" & var_12C
  loc_121460E:     Else
  loc_121461C:       Set var_94 = Me.Txt
  loc_1214622:       Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1214645:       Set var_B0 = Me.Txt
  loc_121464B:       Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_1214673:       If ((var_98.Text <> vbNullString) And (var_B4.Text = vbNullString)) Then
  loc_1214685:         Me.Filter = 0
  loc_121469A:         Set var_94 = Me.Txt
  loc_12146A0:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_12146AF:         Proc_6_7_F25D88(var_DC, CVar(var_98))
  loc_12146C2:         Me.Filter = "Arr_Date>=" & var_DC
  loc_12146D6:       Else
  loc_12146E4:         Set var_94 = Me.Txt
  loc_12146EA:         Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_121470D:         Set var_B0 = Me.Txt
  loc_1214713:         Call 0.Method_Txt_Validate0 (CInt(2), var_B4)
  loc_121473B:         If ((var_98.Text = vbNullString) And (var_B4.Text <> vbNullString)) Then
  loc_121474D:           Me.Filter = 0
  loc_1214762:           Set var_94 = Me.Txt
  loc_1214768:           Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_1214777:           Proc_6_7_F25D88(var_DC, CVar(var_98))
  loc_121478A:           Me.Filter = "Arr_Date<=" & var_DC
  loc_121479E:         Else
  loc_12147AD:           Me.Filter = 0
  loc_12147BE:           Me.Filter = "CODE<>''"
  loc_12147C3:         End If
  loc_12147C3:       End If
  loc_12147C3:     End If
  loc_12147D1:     Set var_94 = Me.Txt
  loc_12147D7:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_12147DF:     var_98.Text = vbNullString
  loc_12147F9:     Set var_94 = Me.Txt
  loc_12147FF:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1214807:     var_98.Tag = vbNullString
  loc_1214813:   End If
  loc_1214813: End If
  loc_1214813: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_18 'E00054
  'Data Table: 434638
  loc_E0004C: Call CmdOK_UnknownEvent_9()
  loc_E00051: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'DFBB2C
  'Data Table: 434638
  loc_DFBB28: Exit Sub
End Sub

Public Function global_52Get() '434E0C
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '434E1B
  global_52 = Value
End Sub

Public Function global_54Get() '434E2A
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '434E39
  global_54 = Value
End Sub

Public Sub Proc_57_21_E3F810
  'Data Table: 434638
  Dim var_8C As TextBox
  loc_E3F7F2: Set var_88 = Me.Txt
  loc_E3F7F8: Call 0.Method_Proc_57_21_E3F8100 (CInt(0), var_8C)
  loc_E3F800: var_8C.Tag = vbNullString
  loc_E3F80C: Exit Sub
End Sub

Public Sub Proc_57_22_E29C2C
  'Data Table: 434638
  Dim Me As Recordset15
  loc_E29C00: On Error Goto loc_E29C26
  loc_E29C1A: If (Me.RecordCount > 0) Then
  loc_E29C1D:   GoTo loc_E29C25
  loc_E29C20: End If
  loc_E29C20: Call Proc_57_21_E3F810()
  loc_E29C25: ' Referenced from: E29C1D
  loc_E29C25: Exit Sub
  loc_E29C26: ' Referenced from: E29C00
  loc_E29C26: Proc_6_60_E62BC4()
  loc_E29C2B: Exit Sub
End Sub
