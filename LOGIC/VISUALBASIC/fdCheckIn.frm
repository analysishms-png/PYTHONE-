VERSION 5.00
Begin VB.Form fdCheckIn
  Caption = "Look Up Reservation By Guest Name"
  BackColor = &HC6B7A4&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 11340
  ClientHeight = 4515
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
    Width = 11340
    Height = 450
    Visible = 0   'False
    TabIndex = 6
  End
  Begin BtnEnh CmdOK
    Left = 5400
    Top = 2865
    Width = 1155
    Height = 975
    TabIndex = 5
  End
  Begin PictureBox Picture2
    Picture = "fdCheckIn.frx":0
    Left = 10665
    Top = 6915
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 1560
    Top = 615
    Width = 9270
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
  Begin DataGrid DGHelp
    Left = 210
    Top = 915
    Width = 10965
    Height = 3375
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin MSFlexGrid FGPoint
    Left = 15
    Top = 3585
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label Label1
    Caption = "Guest Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 360
    Top = 615
    Width = 1155
    Height = 240
    TabIndex = 1
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

Attribute VB_Name = "fdCheckIn"

Private global_52 As Integer
Private global_54 As Integer

Private Sub DGHelp_UnknownEvent_9 'F33FA8
  'Data Table: 42DC88
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F33EA3: Me.DGHelp.Visible = False
  loc_F33EC2: If (Me.RecordCount > 0) Then
  loc_F33F01:   Set var_B4 = Me.Txt
  loc_F33F07:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F33F0F:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F33F3F:   var_B0 = Me.Fields.Item("Name")
  loc_F33F5E:   Set var_B4 = Me.Txt
  loc_F33F64:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F33F6C:   var_B8.Text = Proc_6_38_E68A98(CVar(var_B0))
  loc_F33F80: End If
  loc_F33F8B: Set var_A8 = Me.Txt
  loc_F33F91: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F33F99: var_B0.SetFocus
  loc_F33FA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F91CFC
  'Data Table: 42DC88
  Dim var_86 As Integer
  Dim unk_42DCAA As Connection15
  Dim var_94 As TextBox
  Dim MemVar_1F921A4 As String
  Dim Me As Recordset15
  Dim var_9C As String
  loc_F91BA0: On Error Goto loc_F91CE0
  loc_F91BAE: Set var_90 = Me.Txt
  loc_F91BB4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F91BBC: var_9C = "Name"
  loc_F91BDD: If (Proc_6_27_EA565C(var_94, var_9C) = 0) Then
  loc_F91BE0:   Exit Sub
  loc_F91BE1: End If
  loc_F91BE3: var_86 = &HFF
  loc_F91BEF: unk_42DCAA.BeginTrans var_A0
  loc_F91C02: Set var_90 = Me.Txt
  loc_F91C08: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F91C10: var_86 = var_94.Tag
  loc_F91C27: MemVar_1F921A4 = CStr(Trim(CVar(var_9C)))
  loc_F91C3F: unk_42DCAA.CommitTrans
  loc_F91C52: Set var_90 = Me.Txt
  loc_F91C58: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C)
  loc_F91C60: MemVar_1F921A4 = var_94.Tag
  loc_F91C74: var_86 = 0
  loc_F91C82: Me.Requery -1
  loc_F91CAC: Me.Find "SearchCode ='" & var_9C & "'", 0, 1
  loc_F91CC5: Set var_90 = Me.Txt
  loc_F91CCB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, &HFF)
  loc_F91CD3: var_94.Enabled = var_D4
  loc_F91CDF: Exit Sub
  loc_F91CE0: ' Referenced from: F91BA0
  loc_F91CE6: If (var_86 = &HFF) Then
  loc_F91CEF:   unk_42DCAA.RollbackTrans
  loc_F91CF4: End If
  loc_F91CF4: Proc_6_60_E62BC4(var_86)
  loc_F91CF9: Exit Sub
  loc_F91CFA: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 '100A814
  'Data Table: 42DC88
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_94 As Variant
  Dim var_8E As Integer
  loc_100A62A: Set var_94 = Me.Txt
  loc_100A630: Call 0.Method_CmdOK_UnknownEvent_90 (CInt(0), var_98)
  loc_100A667: If ((var_98.Text <> vbNullString) And (Me.RecordCount > 0)) Then
  loc_100A678:   var_B0 = "Arr_Date"
  loc_100A6AB:   If (CDate(MemVar_1F920EC) < Me.Fields.Item(var_B0).Value) Then
  loc_100A6E6:     If (MsgBox(CVar("Guest Arrived Before Arrival Date !" & vbCrLf & "Checked in Anyway?"), &H24, var_E0, var_F0, var_110) = 7) Then
  loc_100A6E9:       GoTo loc_100A801
  loc_100A6EC:     End If
  loc_100A6EC:   End If
  loc_100A6FA:   Call 0.Method_arg_2B0 (var_B0)
  loc_100A708:   fdWalkInEntry.AdvType = "CHK"
  loc_100A716:   fdWalkInEntry.FrmType = "Check In Entry"
  loc_100A721:   Call fdWalkInEntry.TopCtrl1_UnknownEvent_A()
  loc_100A775:   var_E0 = Me.Fields.Item("Code").Value
  loc_100A78F:   Call fdWalkInEntry.SEARCHBACKPARENT(CStr(fdWalkInEntry.Recordset15.Fields.Item("GuestProf").Value), CStr(var_E0))
  loc_100A7D6:   Proc_6_39_E7C810(var_E0, CVar(fdWalkInEntry.Recordset15.Fields.Item("no_Rooms")))
  loc_100A7DF:   var_8E = CInt(var_E0)
  loc_100A7F9:   Me.Global.Unload Me
  loc_100A801:   ' Referenced from: 100A6E9
  loc_100A801: End If
  loc_100A806: Set var_88 = Nothing
  loc_100A80E: Set var_8C = Nothing
  loc_100A811: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3BD14
  'Data Table: 42DC88
  loc_E3BD08: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3BD0B:   Call DGHelp_UnknownEvent_9()
  loc_E3BD10: End If
  loc_E3BD10: Exit Sub
End Sub

Private Sub Form_Load() 'F1DAAC
  'Data Table: 42DC88
  Dim var_9C As Variant
  Dim var_8C As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  loc_F1D9BC: On Error Goto loc_F1DAA6
  loc_F1D9DB: Me.Recordset15.CursorLocation = 3
  loc_F1D9E3: var_9C = MemVar_1F920EC
  loc_F1D9EB: Proc_6_7_F25D88(var_AC)
  loc_F1DA0E: var_8C = "SELECT Booking.DocId AS CODE, GuestProf.Name, Booking.GuestProf, Booking.DocId AS ID, RoomCat.Name AS RoomType, RoomMast.Code AS RoomNo, Booking.ArrDate AS Arr_Date, Booking.NoDays AS tot_Days,Booking.NoOfRooms as NO_Rooms FROM ((Booking LEFT JOIN RoomCat ON (Booking.RoomType = RoomCat.Type) AND (Booking.RoomCat = RoomCat.Code)) LEFT JOIN RoomMast ON (Booking.RoomType = RoomMast.Type) AND (Booking.RoomNo = RoomMast.Code)) INNER JOIN GuestProf ON Booking.GuestProf = GuestProf.Code WHERE BOOKING.CANCEL='N' AND BOOKING.LOGSITE_CODE='" & MemVar_1F92078
  loc_F1DA15: var_BC = CVar(var_8C & "' AND (Select Count(Distinct Sno) From GrpBookingDetails Where Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocId,BookingSno As Sno from GuestFolio Where GrpBookingDetails.BookingDocId=GuestFolio.BookingDocId And GrpBookingDetails.Sno=GuestFolio.BookingSno)And IsNull(Cancel,'')<>'Y' And GrpBookingDetails.ArrDate=") 'String
  loc_F1DA38: Me.Open var_BC & var_AC & " And GrpBookingDetails.BookingDocid=Booking.DocId)>0" & " ORDER BY GuestProf.Name", CVar(MemVar_1F92044), 3
  loc_F1DA56: CVarUnk
  loc_F1DA5B: VerifyVarObj
  loc_F1DA61: Set var_88 = Me.DGHelp
  loc_F1DA67: LateIdStAd
  loc_F1DA7E: Call 0.Method_arg_160 (var_88, var_88, New)
  loc_F1DA8C: Call 0.Method_arg_164 (var_88, 1)
  loc_F1DA94: Call Proc_60_18_E2783C(-1)
  loc_F1DAA0: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F1DAA5: Exit Sub
  loc_F1DAA6: ' Referenced from: F1D9BC
  loc_F1DAA6: Proc_6_60_E62BC4(var_9C)
  loc_F1DAAB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1DA10
  'Data Table: 42DC88
  loc_E1D9FF: Set global_56 = Nothing
  loc_E1DA0B: global_52 = 0
  loc_E1DA0E: Exit Sub
End Sub

Private Sub Form_Activate() 'E13658
  'Data Table: 42DC88
  loc_E13649: If (global_54 = &HFF) Then
  loc_E13651:   global_54 = 0
  loc_E13654: End If
  loc_E13654: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E3BCB8
  'Data Table: 42DC88
  loc_E3BC95: If (global_52 = &HFF) Then
  loc_E3BCA5:   Me.Global.Unload Me
  loc_E3BCAD: End If
  loc_E3BCB5: Exit Sub
  loc_E3BCB6: Set arg_1000 = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E3B898
  'Data Table: 42DC88
  loc_E3B86C: On Error Goto loc_E3B890
  loc_E3B887: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3B88F: Exit Sub
  loc_E3B890: ' Referenced from: E3B86C
  loc_E3B890: Proc_6_60_E62BC4(Shift)
  loc_E3B895: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10ABCAC
  'Data Table: 42DC88
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_B4 As String
  Dim var_90 As Fields15
  loc_10AB9F2: Set var_88 = Me.Txt
  loc_10AB9F8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_10ABA06: Proc_6_74_E226B0(var_8C)
  loc_10ABA21: Set var_88 = Me.Txt
  loc_10ABA27: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10ABA2F: var_8C.SelStart = 0
  loc_10ABA48: Set var_88 = Me.Txt
  loc_10ABA4E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10ABA56: var_94 = var_8C.Text
  loc_10ABA69: Set var_90 = Me.Txt
  loc_10ABA6F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_10ABA77: var_98.SelLength = Len(var_94)
  loc_10ABA8A: Call Proc_60_19_E86200(var_8C)
  loc_10ABA92: var_9A = Index
  loc_10ABA9D: If (var_9A = CInt(0)) Then
  loc_10ABAB7:   If (Me.RecordCount > 0) Then
  loc_10ABAC5:     Set var_8C = Me.FGPoint
  loc_10ABADD:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_10ABAEB:   End If
  loc_10ABB39:   Set var_88 = Me.Txt
  loc_10ABB3F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_10ABB47:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10ABB5F:   If (var_8C Or (var_94 = vbNullString)) Then
  loc_10ABB62:     Exit Sub
  loc_10ABB63:   End If
  loc_10ABB70:   Set var_88 = Me.Txt
  loc_10ABB76:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10ABB7E:   var_94 = var_8C.Text
  loc_10ABB90:   var_B4 = "Name"
  loc_10ABBA7:   var_98 = Me.Fields.Item(var_B4)
  loc_10ABBCB:   If CBool(CVar(var_94) <> var_98.Value) Then
  loc_10ABBD4:     Me.MoveFirst
  loc_10ABBF7:     Set var_88 = Me.Txt
  loc_10ABBFD:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_10ABC05:     0 = var_8C.Text
  loc_10ABC1E:     Me.Find 1 & var_94 & "'", var_B4, var_9A
  loc_10ABC33:   End If
  loc_10ABC33: End If
  loc_10ABC42: Set var_88 = Me.Txt
  loc_10ABC48: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10ABC50: var_8C.SelStart = 0
  loc_10ABC69: Set var_88 = Me.Txt
  loc_10ABC6F: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10ABC8A: Set var_90 = Me.Txt
  loc_10ABC90: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_10ABC98: var_98.SelLength = Len(var_8C.Text)
  loc_10ABCAB: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FA5138
  'Data Table: 42DC88
  Dim Me As Recordset15
  loc_FA4FC6: If (CLng(Shift) = &H1B) Then
  loc_FA4FC9:   Call Proc_60_19_E86200()
  loc_FA4FCE:   Exit Sub
  loc_FA4FCF: End If
  loc_FA4FDD: If (KeyCode = CInt(0)) Then
  loc_FA4FFD:   Set var_A0 = Me.FGPoint
  loc_FA5008:   Set var_9C = Nothing
  loc_FA503A:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift, 0)
  loc_FA50A9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_FA50B0:     Set var_9C = Me.DGHelp
  loc_FA50CF:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, Me.FGPoint, 1)
  loc_FA50DD:   End If
  loc_FA50DD: End If
  loc_FA50F9: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_FA5111:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FA511A:     Proc_6_75_E527CC(Shift, arg_14, var_9C)
  loc_FA511F:   End If
  loc_FA5129:   If (CLng(Shift) = &H26) Then
  loc_FA5132:     Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_FA5137:   End If
  loc_FA5137: End If
  loc_FA5137: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDF680
  'Data Table: 42DC88
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDF5CB: Proc_6_58_E054C0(arg_10)
  loc_EDF5D6: Proc_6_133_E7EF78(var_94)
  loc_EDF5F3: If (KeyAscii = CInt(0)) Then
  loc_EDF612:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EDF63F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, CInt(Me.DGHelp.Visible), "Name")
  loc_EDF671:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyAscii, Me.FGPoint)
  loc_EDF67F:   End If
  loc_EDF67F: End If
  loc_EDF67F: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F7CE00
  'Data Table: 42DC88
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_F7CCBB: var_86 = Cancel
  loc_F7CCC6: If (var_86 = CInt(0)) Then
  loc_F7CD17:   Set var_94 = Me.Txt
  loc_F7CD1D:   Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_F7CD25:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_F7CD3D:   If (var_86 Or (var_9C = vbNullString)) Then
  loc_F7CD40:     Exit Sub
  loc_F7CD41:   End If
  loc_F7CD7C:   Set var_B0 = Me.Txt
  loc_F7CD82:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F7CD8A:   var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F7CDDB:   Set var_B0 = Me.Txt
  loc_F7CDE1:   Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_F7CDE9:   var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F7CDFF: End If
  loc_F7CDFF: Exit Sub
End Sub

Public Function global_52Get() '42E390
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '42E39F
  global_52 = Value
End Sub

Public Function global_54Get() '42E3AE
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '42E3BD
  global_54 = Value
End Sub

Public Sub Proc_60_17_E4556C
  'Data Table: 42DC88
  Dim var_8C As TextBox
  loc_E4554E: Set var_88 = Me.Txt
  loc_E45554: Call 0.Method_Proc_60_17_E4556C0 (CInt(0), var_8C)
  loc_E4555C: var_8C.Tag = vbNullString
  loc_E45568: Exit Sub
End Sub

Public Sub Proc_60_18_E2783C
  'Data Table: 42DC88
  Dim Me As Recordset15
  loc_E27810: On Error Goto loc_E27836
  loc_E2782A: If (Me.RecordCount > 0) Then
  loc_E2782D:   GoTo loc_E27835
  loc_E27830: End If
  loc_E27830: Call Proc_60_17_E4556C()
  loc_E27835: ' Referenced from: E2782D
  loc_E27835: Exit Sub
  loc_E27836: ' Referenced from: E27810
  loc_E27836: Proc_6_60_E62BC4()
  loc_E2783B: Exit Sub
End Sub

Public Sub Proc_60_19_E86200
  'Data Table: 42DC88
  loc_E861AC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E861BE:   Me.DGHelp.Visible = False
  loc_E861C6: End If
  loc_E861E2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E861F4:   Me.FGPoint.Visible = False
  loc_E861FC: End If
  loc_E861FC: Exit Sub
End Sub
