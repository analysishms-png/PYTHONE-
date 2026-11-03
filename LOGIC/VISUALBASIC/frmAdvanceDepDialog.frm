VERSION 5.00
Begin VB.Form frmAdvanceDepDialog
  Caption = "Advance Deposit "
  BackColor = &H8000000A&
  ForeColor = &H4080&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmAdvanceDepDialog.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6915
  ClientHeight = 7365
  LockControls = -1  'True
  Begin Frame FrTxnNo
    BackColor = &HFFC0FF&
    Left = 11430
    Top = 945
    Width = 4515
    Height = 300
    Visible = 0   'False
    TabIndex = 80
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 26
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1110
      Top = 0
      Width = 3360
      Height = 285
      TabIndex = 17
      BorderStyle = 0 'None
      MaxLength = 20
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
    Begin Label LblName
      Caption = "Txn. No."
      Index = 14
      ForeColor = &HC00000&
      Left = 180
      Top = 15
      Width = 795
      Height = 240
      TabIndex = 81
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
  Begin TextBox Txt
    Index = 25
    ForeColor = &HC00000&
    Left = 2670
    Top = 675
    Width = 1110
    Height = 285
    Enabled = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 0
    Top = 3765
    Width = 2070
    Height = 1725
    Visible = 0   'False
    TabIndex = 77
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 30
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 78
    End
  End
End

Attribute VB_Name = "frmAdvanceDepDialog"

Private global_156 As Variant
Private global_96 As Long
Private global_100 As Long
Private global_124 As Double
Private global_92 As Integer
Private global_144 As Integer

Private Sub ListView_UnknownEvent_13 'F154B4
  'Data Table: 51E0C8
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  loc_F153D0: On Error Goto loc_F154AE
  loc_F153D7: Set var_A4 = Me.ListView
  loc_F15421: Set var_BC = Me.Txt
  loc_F15427: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F1542F: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F1545B: Me.FrmList.Visible = False
  loc_F1547D: var_C8 = Val(CStr(Me.ListView.Tag))
  loc_F1548B: Set var_9C = Me.Txt
  loc_F15491: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F15499: var_A4.SetFocus
  loc_F154AD: Exit Sub
  loc_F154AE: ' Referenced from: F153D0
  loc_F154AE: Proc_6_60_E62BC4(var_C8)
  loc_F154B3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10B62EC
  'Data Table: 51E0C8
  Dim var_88 As String
  Dim var_94 As TextBox
  Dim var_98 As Long
  Dim var_B8 As String
  Dim var_D0 As Long
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_E4 As TextBox
  loc_10B6018: On Error Goto loc_10B62E5
  loc_10B603E: Call Proc_43_48_103D7A0(Proc_5_1_100CB50("ADD", Me))
  loc_10B6049: Call Proc_43_59_10FF3BC(global_52)
  loc_10B6053: var_88 = CStr(MemVar_1F920EC)
  loc_10B6061: Set var_8C = Me.Txt
  loc_10B6067: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_10B606F: var_94.Text = var_88
  loc_10B6084: var_98 = global_100
  loc_10B6090: If (var_98 = 1) Then
  loc_10B6099:   Call Proc_43_55_11588DC(MemVar_1F92044, var_88)
  loc_10B60B3:   var_B8 = "HH:mm"
  loc_10B60C6:   var_88 = Format$(Time, var_B8)
  loc_10B60D4:   Set var_8C = Me.Txt
  loc_10B60DA:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H10), var_94, var_88)
  loc_10B60E2:   var_94.Text = 1
  loc_10B610B:   var_D0 = OpenMode
  loc_10B6117:   If (var_D0 = 1) Then
  loc_10B6120:     Call 0.Method_arg_1C0 (var_88, var_D0, 0)
  loc_10B6130:     If (var_88 = "RES") Then
  loc_10B6136:       var_88 = pDocId
  loc_10B6149:       Set var_8C = Me.Txt
  loc_10B614F:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1D), var_94, var_88)
  loc_10B617D:       If (Me.RecordCount > 0) Then
  loc_10B6186:         Me.MoveFirst
  loc_10B61AA:         Set var_8C = Me.Txt
  loc_10B61B0:         Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1D), var_94, var_88, "Docid ='")
  loc_10B61B8:         0 = 1
  loc_10B61D1:         Me.Find 1 & var_88 & "'", var_B8, var_98
  loc_10B620F:         If ((Me.EOF = 0) And (Me.BOF = 0)) Then
  loc_10B622C:           var_94 = Me.Fields.Item("Name")
  loc_10B624B:           Set var_E0 = Me.Txt
  loc_10B6251:           Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_E4)
  loc_10B6259:           var_E4.Text = Proc_6_38_E68A98(CVar(var_94))
  loc_10B6279:           Call Txt_Validate(CInt(3))
  loc_10B628B:           Set var_8C = Me.Txt
  loc_10B6291:           Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(3), var_94)
  loc_10B6299:           var_94.Enabled = False
  loc_10B62A5:         End If
  loc_10B62A5:       End If
  loc_10B62A5:     End If
  loc_10B62A8:   Else
  loc_10B62B1:     If (var_D0 = 2) Then
  loc_10B62BA:       Call 0.Method_arg_1C4 (vbNullString)
  loc_10B62CA:       Set var_8C = Me.Txt
  loc_10B62D0:       Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H19), var_94)
  loc_10B62D8:       var_94.SetFocus
  loc_10B62E4:     End If
  loc_10B62E4:   End If
  loc_10B62E4: End If
  loc_10B62E4: Exit Sub
  loc_10B62E5: ' Referenced from: 10B6018
  loc_10B62E5: Proc_6_60_E62BC4(&HFF)
  loc_10B62EA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBEAEC
  'Data Table: 51E0C8
  loc_EBEA54: On Error Goto loc_EBEAE4
  loc_EBEA8E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBEA9D:   Set var_110 = Me
  loc_EBEAB4:   Call Proc_43_48_103D7A0(Proc_5_1_100CB50("INI", var_110))
  loc_EBEABF:   Call Proc_43_54_F6CE9C(global_52)
  loc_EBEAC4:   Call Proc_43_49_F05684()
  loc_EBEACC: Else
  loc_EBEAD2:   Call 0.Method_arg_1E8 (var_110)
  loc_EBEADA:   Call var_110.SetFocus
  loc_EBEAE3: End If
  loc_EBEAE3: Exit Sub
  loc_EBEAE4: ' Referenced from: EBEA54
  loc_EBEAE4: Proc_6_60_E62BC4()
  loc_EBEAE9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1202A6C
  'Data Table: 51E0C8
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A8 As String
  Dim unk_51E0D8 As Connection15
  Dim var_CC As Recordset15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_12C As String
  Dim var_C8 As Variant
  loc_12025F4: On Error Goto loc_1202A1E
  loc_1202605: Set var_98 = Me.Txt
  loc_120260B: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_1202613: var_A0 = var_9C.Text
  loc_120262A: If (var_A0 = vbNullString) Then
  loc_120262D:   Exit Sub
  loc_120262E: End If
  loc_1202634: var_E0 = 0
  loc_1202658: var_A8 = "Select Max(NCUR) from enviro where logsite_code='" & MemVar_1F92078 & "'"
  loc_1202661: unk_51E0D8.Execute var_A8, var_C8, -1
  loc_1202669: var_CC = var_CC.Fields
  loc_1202671: var_E0 = var_D0.Item(var_D0)
  loc_1202679: var_E4 = var_E4.Value
  loc_1202692: Set var_98 = Me.Txt
  loc_1202698: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(2), var_9C, var_A0)
  loc_12026A0: (MemVar_1F920B8 <> 1) = var_9C.Text
  loc_12026CE: If (var_F4 And (CDate(var_A0) <> CDate(var_F4))) Then
  loc_12026D7:   Call 0.Method_arg_50 (var_A0)
  loc_12026F8:   MsgBox("U can't delete previous entry.", &H10, CVar(var_A0), var_104, var_124)
  loc_1202708:   Exit Sub
  loc_1202709: End If
  loc_1202726: var_9C = Me.Fields.Item("SearchCode")
  loc_120273B: var_12C = "Checked In"
  loc_120275D: var_A0 = "GuestFolio"
  loc_1202783: If (Proc_6_108_1010FEC(MemVar_1F92044, var_A0, "BookingDocId", CStr(var_9C.Value)) = 0) Then
  loc_1202786:   Exit Sub
  loc_1202787: End If
  loc_12027BE: If (MsgBox("Delete Record?", &H24, "Confirmation", var_104, var_124) = 6) Then
  loc_12027CA:   unk_51E0D8.BeginTrans var_128
  loc_12027D8:   var_C8 = Me.Bookmark
  loc_12027E0:   var_94 = var_C8 'Variant
  loc_1202802:   Set var_98 = Me.Txt
  loc_1202808:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C, var_A0, "Delete From PayCharge Where Docid='", var_C8)
  loc_1202810:   -1 = var_9C.Text
  loc_1202820:   var_12C = var_E4 & var_A0 & "' And VNo="
  loc_1202831:   Set var_CC = Me.Txt
  loc_1202837:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_D0, var_A8, var_12C)
  loc_120283F:   0 = var_D0.Text
  loc_1202851:   unk_51E0D8.Execute var_12C & var_A8, 0, 
  loc_1202881:   Set var_98 = Me.Txt
  loc_1202887:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_9C)
  loc_12028A2:   Set var_CC = Me.Txt
  loc_12028A8:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_D0)
  loc_12028BF:   var_C8 = ().Tag
  loc_12028CD:   var_174 = 0
  loc_12028E0:   var_16C = 0
  loc_12028EB:   var_168 = 0
  loc_12028FE:   var_160 = 0
  loc_1202917:   var_154 = "SNo"
  loc_1202950:   var_A0 = "PayCharge"
  loc_1202959:   Proc_154_5_10E33A4(MemVar_1F92044, var_A0, "Docid", &HC8, var_9C.Text, "VNo", &HC8, var_D0.Text)
  loc_120298D:   unk_51E0D8.CommitTrans
  loc_120299D:   Me.Requery -1
  loc_12029BD:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_12029CA:     Me.Bookmark = var_94
  loc_12029D2:   Else
  loc_12029E6:     If (Me.EOF = 0) Then
  loc_12029EF:       Me.MoveLast
  loc_12029F4:     End If
  loc_12029F4:   End If
  loc_12029F4:   Call Proc_43_51_17ACC48(var_154, &HC8, CStr(var_C8), var_160)
  loc_1202A15:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_1202A1D: End If
  loc_1202A1D: Exit Sub
  loc_1202A1E: ' Referenced from: 12025F4
  loc_1202A24: unk_51E0D8.RollbackTrans
  loc_1202A31: Set var_98 = Err()
  loc_1202A37: Call 0.Method_arg_2C (var_A0, 0, var_168)
  loc_1202A58: MsgBox(CVar(var_A0), &H30, " Deletion Error ", var_104, var_124)
  loc_1202A6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1029588
  'Data Table: 51E0C8
  Dim var_8C As Variant
  Dim var_D0 As Integer
  Dim unk_51E0D8 As Connection15
  Dim var_BC As Recordset15
  Dim var_C0 As Fields15
  Dim var_D4 As Field20
  Dim var_E4 As Variant
  Dim Me As Variant
  Dim var_88 As Fields15
  loc_102936C: On Error Goto loc_1029582
  loc_102937D: Set var_88 = Me.Txt
  loc_1029383: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_8C)
  loc_102938B: var_90 = var_8C.Text
  loc_10293A2: If (var_90 = vbNullString) Then
  loc_10293A5:   Exit Sub
  loc_10293A6: End If
  loc_10293AC: var_D0 = 0
  loc_10293D9: unk_51E0D8.Execute "Select Max(NCUR) from enviro where logsite_code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_10293E1: var_BC = var_BC.Fields
  loc_10293E9: var_D0 = var_C0.Item(var_C0)
  loc_10293F1: var_D4 = var_D4.Value
  loc_102940A: Set var_88 = Me.Txt
  loc_1029410: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_8C, var_90)
  loc_1029418: (MemVar_1F920B8 <> 1) = var_8C.Text
  loc_1029446: If (var_E4 And (CDate(var_90) <> CDate(var_E4))) Then
  loc_102944F:   Call 0.Method_arg_50 (var_90)
  loc_1029470:   MsgBox("U can't edit previous entry.", &H10, CVar(var_90), var_F4, var_114)
  loc_1029480:   Exit Sub
  loc_1029481: End If
  loc_102949E: var_8C = Me.Fields.Item("SearchCode")
  loc_10294B3: var_11C = "Checked In"
  loc_10294FB: If (Proc_6_108_1010FEC(MemVar_1F92044, "GuestFolio", "BookingDocId", CStr(var_8C.Value)) = 0) Then
  loc_10294FE:   Exit Sub
  loc_10294FF: End If
  loc_1029522: Call Proc_43_48_103D7A0(Proc_5_1_100CB50("EDIT", Me, global_52), 0)
  loc_102953A: Set var_88 = Me.Txt
  loc_1029540: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_8C, 0)
  loc_1029548: var_8C.Enabled = var_11C
  loc_1029559: global_144 = &HFF
  loc_1029567: Set var_88 = Me.Txt
  loc_102956D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_8C)
  loc_1029575: var_8C.SetFocus
  loc_1029581: Exit Sub
  loc_1029582: ' Referenced from: 102936C
  loc_1029582: Proc_6_60_E62BC4(global_144)
  loc_1029587: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E176DC
  'Data Table: 51E0C8
  loc_E176D1: Me.Global.Unload Me
  loc_E176D9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FAE348
  'Data Table: 51E0C8
  Dim var_8C As String
  Dim unk_51E0D8 As Connection15
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_88 As Recordset15
  Dim var_B4 As Fields15
  Dim var_B0 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim MemVar_1F920E4 As String
  loc_FAE1C0: On Error Goto loc_FAE2E3
  loc_FAE1D7: var_8C = "Select NCUR from enviro where LogSite_Code='" & MemVar_1F92078
  loc_FAE1E7: unk_51E0D8.Execute var_8C & "'", var_B0, -1
  loc_FAE1F2: Set var_88 = var_B4
  loc_FAE20B: var_B8 = Me.RecordCount
  loc_FAE219: If (var_B8 <= 0) Then
  loc_FAE227:   var_D8 = "Information"
  loc_FAE23D:   MsgBox("Records Not Present For Searching.", &H40, var_D8, var_F8, var_118)
  loc_FAE24D:   Exit Sub
  loc_FAE24E: End If
  loc_FAE258: If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_FAE25E:   MemVar_1F920E4 = "SELECT Booking.DocId as SearchCode, GuestProf.Name, Booking.BookNo, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where booking.docid  in (select Distinct RefDocid from PayCharge Where VType In ('ARRES','ADRES')) ORDER BY Name"
  loc_FAE265: Else
  loc_FAE265:   var_C8 = "SELECT Booking.DocId as SearchCode, GuestProf.Name, Booking.BookNo, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where booking.docid not in (select Distinct bookingdocid from guestfolio) and booking.docid  in (select Distinct RefDocid from PayCharge where VType In ('ARRES','ADRES') And Vdate="
  loc_FAE290:   Proc_6_7_F25D88(var_D8, CVar(var_88.Fields.Item("Ncur")))
  loc_FAE298:   var_F8 = var_C8 & var_D8 
  loc_FAE2A1:   var_118 = var_F8 & ") ORDER BY Name" 
  loc_FAE2A6:   MemVar_1F920E4 = CStr(var_118)
  loc_FAE2B8: End If
  loc_FAE2BE: MemVar_1F92120 = Me
  loc_FAE2D5: Call 0.Method_arg_2B0 (1, var_C8)
  loc_FAE2DF: Set var_88 = Nothing
  loc_FAE2E2: Exit Sub
  loc_FAE2E3: ' Referenced from: FAE1C0
  loc_FAE2EB: Set var_B4 = Err()
  loc_FAE2F1: Call 0.Method_arg_1C (var_B8, MemVar_1F920E4)
  loc_FAE302: If (var_B8 <> 0) Then
  loc_FAE30D:   Set var_B4 = Err()
  loc_FAE313:   Call 0.Method_arg_2C (var_8C)
  loc_FAE334:   MsgBox(CVar(var_8C), &H40, "Validation", var_F8, var_118)
  loc_FAE347: End If
  loc_FAE347: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E339D8
  'Data Table: 51E0C8
  loc_E339C8: Proc_5_0_110649C(&HFF, Me)
  loc_E339D0: Call Proc_43_51_17ACC48(global_52)
  loc_E339D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33AF8
  'Data Table: 51E0C8
  loc_E33AE8: Proc_5_0_110649C(&HFF, Me)
  loc_E33AF0: Call Proc_43_51_17ACC48(global_52)
  loc_E33AF5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33A98
  'Data Table: 51E0C8
  loc_E33A88: Proc_5_0_110649C(&HFF, Me)
  loc_E33A90: Call Proc_43_51_17ACC48(global_52)
  loc_E33A95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33A38
  'Data Table: 51E0C8
  loc_E33A28: Proc_5_0_110649C(&HFF, Me)
  loc_E33A30: Call Proc_43_51_17ACC48(global_52)
  loc_E33A35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'DFFADC
  'Data Table: 51E0C8
  loc_DFFAD4: Call Proc_43_53_14B7998()
  loc_DFFAD9: Exit Sub
  loc_DFFADA: On Error Goto loc_E04B1F
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E62C54
  'Data Table: 51E0C8
  Dim Me As Recordset15
  loc_E62C0B: Me.Requery -1
  loc_E62C1B: Me.Requery -1
  loc_E62C2B: Me.Requery -1
  loc_E62C3B: Me.Requery -1
  loc_E62C4B: Me.Requery -1
  loc_E62C50: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1C4C0B4
  'Data Table: 51E0C8
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F8 As Variant
  Dim var_C0 As Variant
  Dim unk_51E0D8 As Connection15
  Dim var_134 As Long
  Dim var_140 As String
  Dim var_13C As Variant
  Dim var_8E As Integer
  Dim var_1170 As Double
  Dim var_24C As Variant
  Dim var_338 As TextBox
  Dim var_668 As TextBox
  Dim var_1178 As Double
  Dim var_1180 As Double
  Dim var_1188 As Double
  Dim var_C7C As Variant
  Dim var_D20 As Variant
  Dim var_E94 As Variant
  Dim var_1190 As Double
  Dim var_10FC As TextBox
  Dim var_150 As String
  Dim var_1F0 As String
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim var_26C As Variant
  Dim var_27C As Variant
  Dim var_35C As Variant
  Dim var_3F0 As Variant
  Dim var_484 As Variant
  Dim var_4A4 As Variant
  Dim var_538 As Variant
  Dim var_640 As Variant
  Dim var_68C As Variant
  Dim var_6AC As Variant
  Dim var_850 As Variant
  Dim var_870 As Variant
  Dim var_904 As Variant
  Dim var_924 As Variant
  Dim var_AC0 As Variant
  Dim var_B54 As Variant
  Dim var_DF0 As Variant
  Dim var_ED4 As Variant
  Dim var_FA8 As Variant
  Dim var_11AC As Double
  Dim var_3C0 As TextBox
  Dim var_10A0 As TextBox
  Dim var_BE8 As Variant
  Dim var_C8C As Variant
  Dim var_D30 As Variant
  Dim var_DC0 As Variant
  Dim var_F58 As Variant
  Dim var_98 As Double
  Dim var_11BC As Long
  Dim var_9C As Recordset15
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  loc_1C45FF0: On Error Goto loc_1C4C060
  loc_1C46009: Set var_E4 = 1(1)
  loc_1C4602B: If (CStr(Txt.DispID_41) = vbNullString) Then
  loc_1C46034:   var_C0 = "Save Date"
  loc_1C46039:   var_108 = var_C0
  loc_1C46049:   var_F4 = "Please Fill Payment Details Before Saving.."
  loc_1C4604F:   MsgBox(var_F4, &H40, var_108, var_118, var_128)
  loc_1C4605F:   Exit Sub
  loc_1C46060: End If
  loc_1C46064: var_86 = CByte(0) 'Byte
  loc_1C46068: Call Proc_43_58_1581F5C()
  loc_1C46076: unk_51E0D8.BeginTrans var_12C
  loc_1C4607F: var_86 = CByte(1) 'Byte
  loc_1C46087: Set var_E4 = ()
  loc_1C46095: var_F8 = CStr(Txt.DispID_68030005)
  loc_1C460A6: If (var_F8 = "Add") Then
  loc_1C460B2:   Set var_E4 = 1(var_9E)
  loc_1C460CE:   For var_130 =  To CInt((CLng(Txt.DispID_4) - 1)):  = var_130 'Integer
  loc_1C460DA:     var_134 = global_100
  loc_1C460E6:     If (var_134 = 1) Then
  loc_1C460FE:       Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4610F:       var_140 = CStr(Txt.DispID_41)
  loc_1C46120:       Set var_138 = Me.Txt
  loc_1C46126:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_13C, var_F8)
  loc_1C4612E:       var_140 = var_13C.Text
  loc_1C4614B:       If (var_134 = var_F8) Then
  loc_1C46159:         If (global_108 = "ADRES") Then
  loc_1C46162:           var_8E = (var_8E + 1)
  loc_1C46171:           var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4617A:           Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C461A1:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C461BA:           var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C461D2:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C461F9:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4620A:           var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C46210:           Proc_6_7_F25D88(var_25C, var_24C, Txt.DispID_41)
  loc_1C4622A:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4624A:           Set var_334 = Me.Txt
  loc_1C46250:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41)
  loc_1C46272:           Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C46299:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C462C0:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C462E7:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4630E:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4632E:           Set var_664 = Me.Txt
  loc_1C46334:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41)
  loc_1C4633C:           Txt.DispID_41 = var_668.Text
  loc_1C46349:           var_1178 = Val(var_66C)
  loc_1C46361:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4637A:           var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C46392:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C463AB:           var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C463C3:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C463EA:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C46411:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C46438:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4645F:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C46486:           Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C464AD:           Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C464C4:           Proc_6_7_F25D88(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C464DE:           Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C464EF:           var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C464F5:           Proc_6_17_EAA2B0(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C4650F:           Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C46520:           var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C46526:           Proc_6_7_F25D88(var_D30, var_D20, var_1178)
  loc_1C4652E:           var_DB0 = Date
  loc_1C46539:           Proc_6_7_F25D88(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C46553:           Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C46564:           var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C46584:           Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C465A6:           Proc_6_39_E7C810(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C465C0:           Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C465E7:           Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C46600:           var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C46611:           Set var_10F8 = Me.Txt
  loc_1C46617:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C4661F:           Txt.DispID_41 = var_10FC.Text
  loc_1C46638:           var_F8 = CStr(var_F4)
  loc_1C4663C:           var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C46693:           var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_338.Tag) & ",'" & MemVar_1F92070 & "','" & CStr(var_118)
  loc_1C466C7:           var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C466DB:           var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C466F8:           var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C46748:           var_6AC = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) & "," 
  loc_1C467A1:           var_924 = var_6AC & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) & "','" 
  loc_1C467E8:           var_B54 = var_924 & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C46844:           var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DC0 & ",'A','" 
  loc_1C46881:           var_FA8 = var_DF0 & CVar(MemVar_1F92078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F92078) 
  loc_1C468D3:           unk_51E0D8.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C46A48:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C46A6F:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C46A96:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C46AAF:           var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C46AC7:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C46AEE:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C46B15:           Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C46B35:           Set var_338 = Me.Txt
  loc_1C46B3B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C46B5D:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C46B8E:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C46BB5:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C46BDC:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C46C0D:           Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C46C24:           Proc_6_39_E7C810(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C46C3E:           Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C46C65:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C46C8C:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C46CB3:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C46CE2:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C46D0C:           var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C46D26:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C46D3B:           var_4F8 = Date
  loc_1C46D55:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C46D7F:           var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C46D87:           var_58C = Date
  loc_1C46DA1:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C46DB6:           var_11A4 = "Dr"
  loc_1C46DD2:           var_1100 = "A"
  loc_1C46E19:           var_66C = vbNullString
  loc_1C46E22:           var_33C = vbNullString
  loc_1C46E2B:           var_1F8 = vbNullString
  loc_1C46E42:           var_1F4 = vbNullString
  loc_1C46EA7:           Proc_96_10_18CC788(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F92070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C46F5A:           If (global_140 = "Room") Then
  loc_1C46F63:             var_8E = (var_8E + 1)
  loc_1C46F72:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C46F7B:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C46FA2:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C46FBB:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C46FD3:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C46FFA:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C47011:             Proc_6_7_F25D88(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C4702B:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4704B:             Set var_334 = Me.Txt
  loc_1C47051:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C47059:             CStr(var_2F0) = var_338.Tag
  loc_1C47073:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4709A:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C470C1:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C470E8:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4710F:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4712F:             Set var_664 = Me.Txt
  loc_1C47135:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4713D:             Txt.DispID_41 = var_668.Text
  loc_1C47162:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4717B:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C47193:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C471AC:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C471C4:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C471EB:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C47212:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C47239:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C47260:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C47287:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C472AE:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C472D5:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C472EC:             Proc_6_7_F25D88(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C47306:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4731D:             Proc_6_7_F25D88(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C47330:             Proc_6_7_F25D88(var_DB0, Date, var_1180)
  loc_1C4734A:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C47371:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4738A:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4739B:             Set var_100C = Me.Txt
  loc_1C473A1:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C473A9:             Txt.DispID_41 = var_10A0.Text
  loc_1C473C2:             var_F8 = CStr(var_F4)
  loc_1C473C6:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C47412:             var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F92070 & "','"
  loc_1C47465:             var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C474B5:             var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C4750E:             var_870 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," 
  loc_1C4755E:             var_AC0 = var_870 & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C47586:             var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C47596:             var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C475A6:             var_D30 = var_C8C & "," & var_D20 
  loc_1C475C9:             var_DC0 = var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DB0 
  loc_1C4760C:             var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C47627:             var_F58 = CVar(var_1100) 'String
  loc_1C47641:             unk_51E0D8.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C47785:           End If
  loc_1C47788:         Else
  loc_1C4778E:           var_8E = (var_8E + 1)
  loc_1C4779D:           var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C477A6:           Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C477CD:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C477E6:           var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C477FE:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C47825:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C47836:           var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4783C:           Proc_6_7_F25D88(var_25C, var_24C, Txt.DispID_41, var_1170, Txt.DispID_41)
  loc_1C47856:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C47876:           Set var_334 = Me.Txt
  loc_1C4787C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_8E)
  loc_1C47884:           var_10F8 = var_338.Tag
  loc_1C4789E:           Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C478C5:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C478EC:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C47913:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4793A:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4795A:           Set var_664 = Me.Txt
  loc_1C47960:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C47968:           Txt.DispID_41 = var_668.Text
  loc_1C47975:           var_1178 = Val(var_66C)
  loc_1C4798D:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C479A6:           var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C479BE:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C479D7:           var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C479EF:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C47A16:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C47A3D:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C47A64:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C47A8B:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C47AB2:           Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C47AD9:           Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C47AF0:           Proc_6_7_F25D88(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C47B0A:           Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C47B1B:           var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C47B21:           Proc_6_17_EAA2B0(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C47B3B:           Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C47B4C:           var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C47B52:           Proc_6_7_F25D88(var_D30, var_D20, var_1178)
  loc_1C47B5A:           var_DB0 = Date
  loc_1C47B65:           Proc_6_7_F25D88(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C47B7F:           Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C47B90:           var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C47BB0:           Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C47BD2:           Proc_6_39_E7C810(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C47BEC:           Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C47C13:           Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C47C2C:           var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C47C3D:           Set var_10F8 = Me.Txt
  loc_1C47C43:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C47C4B:           Txt.DispID_41 = var_10FC.Text
  loc_1C47C64:           var_F8 = CStr(var_F4)
  loc_1C47C68:           var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C47CBF:           var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F92070 & "','" & CStr(var_118)
  loc_1C47CF3:           var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C47D07:           var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C47D24:           var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C47D74:           var_6AC = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) & "," 
  loc_1C47DCD:           var_924 = var_6AC & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) & "','" 
  loc_1C47E14:           var_B54 = var_924 & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C47E70:           var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DC0 & ",'A','" 
  loc_1C47EAD:           var_FA8 = var_DF0 & CVar(MemVar_1F92078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F92078) 
  loc_1C47EFF:           unk_51E0D8.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C48074:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4809B:           Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C480C2:           Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C480DB:           var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C480F3:           Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4811A:           Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C48141:           Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C48161:           Set var_338 = Me.Txt
  loc_1C48167:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C48189:           Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C481BA:           Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C481E1:           Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C48208:           Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C48239:           Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C48250:           Proc_6_39_E7C810(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C4826A:           Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C48291:           Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C482B8:           Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C482DF:           Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4830E:           Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C48338:           var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C48352:           Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C48367:           var_4F8 = Date
  loc_1C48381:           Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C483AB:           var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C483B3:           var_58C = Date
  loc_1C483CD:           Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C483E2:           var_11A4 = "Cr"
  loc_1C483FE:           var_1100 = "A"
  loc_1C48445:           var_66C = vbNullString
  loc_1C4844E:           var_33C = vbNullString
  loc_1C48457:           var_1F8 = vbNullString
  loc_1C4846E:           var_1F4 = vbNullString
  loc_1C484D3:           Proc_96_10_18CC788(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F92070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C48586:           If (global_140 = "Room") Then
  loc_1C4858F:             var_8E = (var_8E + 1)
  loc_1C4859E:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C485A7:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C485CE:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C485E7:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C485FF:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C48626:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4863D:             Proc_6_7_F25D88(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C48657:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C48677:             Set var_334 = Me.Txt
  loc_1C4867D:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C48685:             CStr(var_2F0) = var_338.Tag
  loc_1C4869F:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C486C6:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C486ED:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C48714:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4873B:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4875B:             Set var_664 = Me.Txt
  loc_1C48761:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C48769:             Txt.DispID_41 = var_668.Text
  loc_1C4878E:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C487A7:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C487BF:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C487D8:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C487F0:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C48817:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4883E:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C48865:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4888C:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C488B3:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C488DA:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C48901:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C48918:             Proc_6_7_F25D88(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C48932:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C48949:             Proc_6_7_F25D88(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4895C:             Proc_6_7_F25D88(var_DB0, Date, var_1180)
  loc_1C48976:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4899D:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C489B6:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C489C7:             Set var_100C = Me.Txt
  loc_1C489CD:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C489D5:             Txt.DispID_41 = var_10A0.Text
  loc_1C489EE:             var_F8 = CStr(var_F4)
  loc_1C489F2:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C48A3E:             var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F92070 & "','"
  loc_1C48A91:             var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C48AE1:             var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C48B3A:             var_870 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," 
  loc_1C48B8A:             var_AC0 = var_870 & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C48BB2:             var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C48BC2:             var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C48BD2:             var_D30 = var_C8C & "," & var_D20 
  loc_1C48BF5:             var_DC0 = var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DB0 
  loc_1C48C38:             var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C48C53:             var_F58 = CVar(var_1100) 'String
  loc_1C48C6D:             unk_51E0D8.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C48DB1:           End If
  loc_1C48DB1:         End If
  loc_1C48DB1:       End If
  loc_1C48DC6:       Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C48DE9:       var_98 = (var_98 + Val(CStr(Txt.DispID_41)))
  loc_1C48DF5:     End If
  loc_1C48DF8:   Next var_130 'Integer
  loc_1C48E00: Else
  loc_1C48E04:   Set var_E4 = ()
  loc_1C48E12:   var_F8 = CStr(Txt.DispID_68030005)
  loc_1C48E23:   If (var_F8 = "Edit") Then
  loc_1C48E2F:     Set var_E4 = 1(var_9E)
  loc_1C48E4B:     For var_11B8 =  To CInt((CLng(Txt.DispID_4) - 1)):    = var_11B8 'Integer
  loc_1C48E57:       var_11BC = global_100
  loc_1C48E63:       If (var_11BC = 1) Then
  loc_1C48E7B:         Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C48E8C:         var_140 = CStr(Txt.DispID_41)
  loc_1C48E9D:         Set var_138 = Me.Txt
  loc_1C48EA3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_13C, var_F8)
  loc_1C48EAB:         var_140 = var_13C.Text
  loc_1C48EC8:         If (var_11BC = var_F8) Then
  loc_1C48EE0:           Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C48F1A:           unk_51E0D8.Execute "Delete From PayCharge Where Docid='" & CStr(var_F4) & "'", var_108, -1
  loc_1C48F41:           If (global_108 = "ADRES") Then
  loc_1C48F4A:             var_8E = (var_8E + 1)
  loc_1C48F59:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C48F62:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C48F89:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C48FA2:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C48FBA:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C48FE1:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C48FF2:             var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C48FF8:             Proc_6_7_F25D88(var_25C, var_24C, Txt.DispID_41, var_1170)
  loc_1C49012:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C49032:             Set var_334 = Me.Txt
  loc_1C49038:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41)
  loc_1C49040:             Txt.DispID_41 = var_338.Tag
  loc_1C4905A:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C49081:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C490A8:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C490CF:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C490F6:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C49116:             Set var_664 = Me.Txt
  loc_1C4911C:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49124:             Txt.DispID_41 = var_668.Text
  loc_1C49131:             var_1178 = Val(var_66C)
  loc_1C49149:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C49162:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4917A:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C49193:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C491AB:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C491D2:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C491F9:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C49220:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C49247:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4926E:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C49295:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C492AC:             Proc_6_7_F25D88(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C492C6:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C492D7:             var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C492DD:             Proc_6_17_EAA2B0(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C492F7:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C49308:             var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4930E:             Proc_6_7_F25D88(var_D30, var_D20, var_1178)
  loc_1C49316:             var_DB0 = Date
  loc_1C49321:             Proc_6_7_F25D88(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C4933B:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C4934C:             var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4936C:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C4938E:             Proc_6_39_E7C810(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C493A8:             Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C493CF:             Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C493E8:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C493F9:             Set var_10F8 = Me.Txt
  loc_1C493FF:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C49407:             Txt.DispID_41 = var_10FC.Text
  loc_1C49420:             var_F8 = CStr(var_F4)
  loc_1C49424:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4947B:             var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F92070 & "','" & CStr(var_118)
  loc_1C494AF:             var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C494C3:             var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C494E0:             var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C49527:             var_68C = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) 
  loc_1C49580:             var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C495D0:             var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4962C:             var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DC0 & ",'A','" 
  loc_1C49669:             var_FA8 = var_DF0 & CVar(MemVar_1F92078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F92078) 
  loc_1C496BB:             unk_51E0D8.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C49830:             Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C49857:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4987E:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C49897:             var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C498AF:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C498D6:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C498FD:             Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4991D:             Set var_338 = Me.Txt
  loc_1C49923:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49945:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C49976:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4999D:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C499C4:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C499F5:             Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C49A0C:             Proc_6_39_E7C810(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C49A26:             Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C49A4D:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C49A74:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C49A9B:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C49ACA:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C49AF4:             var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C49B0E:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C49B23:             var_4F8 = Date
  loc_1C49B3D:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C49B67:             var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C49B6F:             var_58C = Date
  loc_1C49B89:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C49B9E:             var_11A4 = "Dr"
  loc_1C49BBA:             var_1100 = "A"
  loc_1C49C01:             var_66C = vbNullString
  loc_1C49C0A:             var_33C = vbNullString
  loc_1C49C13:             var_1F8 = vbNullString
  loc_1C49C2A:             var_1F4 = vbNullString
  loc_1C49C8F:             Proc_96_10_18CC788(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F92070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C49D42:             If (global_140 = "Room") Then
  loc_1C49D4B:               var_8E = (var_8E + 1)
  loc_1C49D5A:               var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C49D63:               Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C49D8A:               Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C49DA3:               var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C49DBB:               Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C49DE2:               Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C49DF9:               Proc_6_7_F25D88(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C49E13:               Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C49E33:               Set var_334 = Me.Txt
  loc_1C49E39:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C49E41:               CStr(var_2F0) = var_338.Tag
  loc_1C49E5B:               Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C49E82:               Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C49EA9:               Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C49ED0:               Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C49EF7:               Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C49F17:               Set var_664 = Me.Txt
  loc_1C49F1D:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C49F25:               Txt.DispID_41 = var_668.Text
  loc_1C49F4A:               Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C49F63:               var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C49F7B:               Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C49F94:               var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C49FAC:               Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C49FD3:               Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C49FFA:               Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4A021:               Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4A048:               Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4A06F:               Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4A096:               Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4A0BD:               Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4A0D4:               Proc_6_7_F25D88(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4A0EE:               Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4A105:               Proc_6_7_F25D88(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4A118:               Proc_6_7_F25D88(var_DB0, Date, var_1180)
  loc_1C4A132:               Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4A159:               Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4A172:               var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4A183:               Set var_100C = Me.Txt
  loc_1C4A189:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C4A191:               Txt.DispID_41 = var_10A0.Text
  loc_1C4A1AA:               var_F8 = CStr(var_F4)
  loc_1C4A1AE:               var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4A1FA:               var_1F0 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F92070 & "','"
  loc_1C4A24D:               var_3F0 = CVar(var_1F0 & CStr(var_118) & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) 
  loc_1C4A29D:               var_640 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) 
  loc_1C4A2ED:               var_850 = var_640 & "'," & CVar(Val(var_66C)) & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) 
  loc_1C4A346:               var_AC0 = var_850 & "'," & "'" & CVar(CStr(var_8E4)) & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) 
  loc_1C4A36E:               var_BE8 = var_AC0 & "','" & CVar(CStr(var_B34)) & "','" & CVar(CStr(var_BC8)) 
  loc_1C4A37E:               var_C8C = var_BE8 & "'," & var_C7C 
  loc_1C4A38E:               var_D30 = var_C8C & "," & var_D20 
  loc_1C4A3B1:               var_DC0 = var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DB0 
  loc_1C4A3F4:               var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C4A40F:               var_F58 = CVar(var_1100) 'String
  loc_1C4A429:               unk_51E0D8.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & var_F58 & "')"), var_FA8, -1
  loc_1C4A56D:             End If
  loc_1C4A570:           Else
  loc_1C4A576:             var_8E = (var_8E + 1)
  loc_1C4A585:             var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4A58E:             Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4A5B5:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4A5CE:             var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4A5E6:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4A60D:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4A61E:             var_24C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A624:             Proc_6_7_F25D88(var_25C, var_24C, Txt.DispID_41, var_1170, Txt.DispID_41)
  loc_1C4A63E:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4A65E:             Set var_334 = Me.Txt
  loc_1C4A664:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_8E)
  loc_1C4A66C:             var_10F8 = var_338.Tag
  loc_1C4A686:             Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4A6AD:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4A6D4:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4A6FB:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4A722:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4A742:             Set var_664 = Me.Txt
  loc_1C4A748:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4A750:             Txt.DispID_41 = var_668.Text
  loc_1C4A75D:             var_1178 = Val(var_66C)
  loc_1C4A775:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4A78E:             var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4A7A6:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4A7BF:             var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4A7D7:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4A7FE:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4A825:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4A84C:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4A873:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4A89A:             Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4A8C1:             Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4A8D8:             Proc_6_7_F25D88(var_BE8, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4A8F2:             Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&H24)))
  loc_1C4A903:             var_C7C = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A909:             Proc_6_17_EAA2B0(var_C8C, var_C7C, Txt.DispID_41, var_1188, var_1180)
  loc_1C4A923:             Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4A934:             var_D20 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A93A:             Proc_6_7_F25D88(var_D30, var_D20, var_1178)
  loc_1C4A942:             var_DB0 = Date
  loc_1C4A94D:             Proc_6_7_F25D88(var_DC0, var_DB0, Txt.DispID_41)
  loc_1C4A967:             Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&H19)))
  loc_1C4A978:             var_E94 = CVar(CStr(Txt.DispID_41)) 'String
  loc_1C4A998:             Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1A)))
  loc_1C4A9BA:             Proc_6_39_E7C810(var_F58, Trim(CVar(CStr(Txt.DispID_41))))
  loc_1C4A9D4:             Set var_100C = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4A9FB:             Set var_10A0 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4AA14:             var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4AA25:             Set var_10F8 = Me.Txt
  loc_1C4AA2B:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10FC, var_1100, var_1190)
  loc_1C4AA33:             Txt.DispID_41 = var_10FC.Text
  loc_1C4AA4C:             var_F8 = CStr(var_F4)
  loc_1C4AA50:             var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,Vtime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtDr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,TxnNo,ExpDate,U_Name,U_EntDt,U_AE,RestCode,DbtChkIn,BatchNo,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4AAA7:             var_1F8 = var_140 & "'," & CStr(var_8E) & ",'" & global_108 & "'," & CStr(var_1170) & ",'" & MemVar_1F92070 & "','" & CStr(var_118)
  loc_1C4AADB:             var_35C = CVar(var_1F8 & "',") & var_25C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) 
  loc_1C4AAEF:             var_3F0 = var_35C & "','" & CVar(CStr(var_3D0)) 
  loc_1C4AB0C:             var_4A4 = var_3F0 & "','" & CVar(CStr(var_464)) & "','" 
  loc_1C4AB53:             var_68C = var_4A4 & CVar(CStr(var_4F8)) & "','" & CVar(CStr(var_58C)) & "','" & CVar(CStr(var_620)) & "'," & CVar(var_1178) 
  loc_1C4ABAC:             var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C4ABFC:             var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "',0,'" & CVar(CStr(var_A0C)) & "','" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4AC58:             var_DF0 = var_B54 & "'," & var_BE8 & "," & var_C8C & "," & var_D30 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DC0 & ",'A','" 
  loc_1C4AC95:             var_FA8 = var_DF0 & CVar(MemVar_1F92078) & "FOM','" & Trim(var_E94) & "'," & var_F58 & ",'" & CVar(MemVar_1F92078) 
  loc_1C4ACE7:             unk_51E0D8.Execute CStr(var_FA8 & "','" & CVar(CStr(var_101C)) & "'," & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_1164, -1
  loc_1C4AE5C:             Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4AE83:             Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H20)))
  loc_1C4AEAA:             Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4AEC3:             var_11AC = Val(CStr(Txt.DispID_41))
  loc_1C4AEDB:             Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4AF02:             Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4AF29:             Set var_334 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4AF49:             Set var_338 = Me.Txt
  loc_1C4AF4F:             Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_3C0, var_140, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4AF71:             Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4AFA2:             Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4AFC9:             Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4AFF0:             Set var_610 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4B021:             Set var_664 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4B038:             Proc_6_39_E7C810(var_35C, CVar(CStr(Txt.DispID_41)), Val(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41)
  loc_1C4B052:             Set var_668 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4B079:             Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4B0A0:             Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4B0C7:             Set var_820 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4B0F6:             Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4B120:             var_484 = IIf((CStr(var_3F0) = vbNullString), Date, CVar(CStr(Txt.DispID_41)))
  loc_1C4B13A:             Set var_968 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4B14F:             var_4F8 = Date
  loc_1C4B169:             Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4B193:             var_538 = IIf((CStr(var_4A4) = vbNullString), var_4F8, CVar(CStr(Txt.DispID_41)))
  loc_1C4B1B5:             Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4B1CA:             var_11A4 = "Cr"
  loc_1C4B1E6:             var_1100 = "A"
  loc_1C4B22D:             var_66C = vbNullString
  loc_1C4B236:             var_33C = vbNullString
  loc_1C4B23F:             var_1F8 = vbNullString
  loc_1C4B256:             var_1F4 = vbNullString
  loc_1C4B2BB:             Proc_96_10_18CC788(CStr(var_F4), CStr(var_108), var_8E, global_108, CLng(var_3C0.Tag), MemVar_1F92070, CStr(var_128), CDate(CStr(var_24C)))
  loc_1C4B36E:             If (global_140 = "Room") Then
  loc_1C4B377:               var_8E = (var_8E + 1)
  loc_1C4B386:               var_D0 = CVar(CLng(&H20)) 'Long
  loc_1C4B38F:               Set var_E4 = CVar(CLng(var_9E))(var_D0)
  loc_1C4B3B6:               Set var_138 = CVar(CLng(var_9E))(CVar(CLng(&H1F)))
  loc_1C4B3CF:               var_1170 = Val(CStr(Txt.DispID_41))
  loc_1C4B3E7:               Set var_13C = CVar(CLng(var_9E))(CVar(CLng(&H1E)))
  loc_1C4B40E:               Set var_23C = CVar(CLng(var_9E))(CVar(CLng(&H1C)))
  loc_1C4B425:               Proc_6_7_F25D88(var_25C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, var_1170, Txt.DispID_41, var_8E, CStr(var_25C))
  loc_1C4B43F:               Set var_2E0 = CVar(CLng(var_9E))(CVar(CLng(&H1D)))
  loc_1C4B45F:               Set var_334 = Me.Txt
  loc_1C4B465:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_338, var_33C, Txt.DispID_41, var_140, CStr(Trim(CVar(CStr(Txt.DispID_41)))))
  loc_1C4B46D:               CStr(var_2F0) = var_338.Tag
  loc_1C4B487:               Set var_3C0 = CVar(CLng(var_9E))(CVar(CLng(&H12)))
  loc_1C4B4AE:               Set var_454 = CVar(CLng(var_9E))(CVar(CLng(&H16)))
  loc_1C4B4D5:               Set var_4E8 = CVar(CLng(var_9E))(CVar(CLng(&H10)))
  loc_1C4B4FC:               Set var_57C = CVar(CLng(var_9E))(CVar(CLng(1)))
  loc_1C4B523:               Set var_610 = CVar(CLng(var_9E))(CVar(CLng(2)))
  loc_1C4B543:               Set var_664 = Me.Txt
  loc_1C4B549:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_668, var_66C, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4B551:               Txt.DispID_41 = var_668.Text
  loc_1C4B576:               Set var_6F0 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4B58F:               var_1180 = Val(CStr(Txt.DispID_41))
  loc_1C4B5A7:               Set var_788 = CVar(CLng(var_9E))(CVar(CLng(&H13)))
  loc_1C4B5C0:               var_1188 = Val(CStr(Txt.DispID_41))
  loc_1C4B5D8:               Set var_820 = CVar(CLng(var_9E))(CVar(CLng(4)))
  loc_1C4B5FF:               Set var_8D4 = CVar(CLng(var_9E))(CVar(CLng(5)))
  loc_1C4B626:               Set var_968 = CVar(CLng(var_9E))(CVar(CLng(6)))
  loc_1C4B64D:               Set var_9FC = CVar(CLng(var_9E))(CVar(CLng(&H18)))
  loc_1C4B674:               Set var_A90 = CVar(CLng(var_9E))(CVar(CLng(&HB)))
  loc_1C4B69B:               Set var_B24 = CVar(CLng(var_9E))(CVar(CLng(&HC)))
  loc_1C4B6C2:               Set var_BB8 = CVar(CLng(var_9E))(CVar(CLng(&HE)))
  loc_1C4B6E9:               Set var_C5C = CVar(CLng(var_9E))(CVar(CLng(&HF)))
  loc_1C4B700:               Proc_6_7_F25D88(var_C7C, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41, Txt.DispID_41)
  loc_1C4B71A:               Set var_D00 = CVar(CLng(var_9E))(CVar(CLng(&HD)))
  loc_1C4B731:               Proc_6_7_F25D88(var_D20, CVar(CStr(Txt.DispID_41)), Txt.DispID_41, Txt.DispID_41, var_1188)
  loc_1C4B744:               Proc_6_7_F25D88(var_DB0, Date, var_1180)
  loc_1C4B75E:               Set var_E74 = CVar(CLng(var_9E))(CVar(CLng(&HA)))
  loc_1C4B785:               Set var_F18 = CVar(CLng(var_9E))(CVar(CLng(&H1B)))
  loc_1C4B79E:               var_1190 = Val(CStr(Txt.DispID_41))
  loc_1C4B7AF:               Set var_100C = Me.Txt
  loc_1C4B7B5:               Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_10A0, var_1100, var_1190)
  loc_1C4B7BD:               Txt.DispID_41 = var_10A0.Text
  loc_1C4B7D6:               var_F8 = CStr(var_F4)
  loc_1C4B7DA:               var_140 = "Insert Into PayCharge (DocId,SNo,Vtype,VNo,Site_Code,VPrefix,Vdate,VTime,GuestProf,EmpCode,CompCode,Comments,PayCode,PayType,BillAmount,AmtCr,TipAmt,RoomCat,RoomType,RoomNo,FolioNo,CardNo,CardHolder,ChqNo,ChqDate,ExpDate,U_Name,U_EntDt,U_AE,RestCode,LogSite_Code,TaxStru,RefNo,RefDocID) Values ('" & var_F8
  loc_1C4B7F4:               var_150 = var_140 & "'," & CStr(var_8E) & ",'"
  loc_1C4B838:               var_26C = CVar(var_150 & global_108 & "','" & CStr(var_1170) & "','" & MemVar_1F92070 & "','" & CStr(var_118) & "',") 'String
  loc_1C4B83E:               var_27C = var_26C & var_25C 
  loc_1C4B88D:               var_484 = var_27C & ",'" & CVar(CStr(var_2F0)) & "','" & CVar(var_33C) & "','" & CVar(CStr(var_3D0)) & "','" & CVar(CStr(var_464)) 
  loc_1C4B8DD:               var_68C = var_484 & "','" & CVar(CStr(var_4F8)) & "','" & CVar(CStr(Date)) & "','" & CVar(CStr(var_620)) & "'," & CVar(Val(var_66C)) 
  loc_1C4B936:               var_904 = var_68C & "," & CVar(var_1180) & "," & CVar(var_1188) & ",'" & CVar(CStr(var_830)) & "'," & "'" & CVar(CStr(var_8E4)) 
  loc_1C4B986:               var_B54 = var_904 & "','" & CVar(CStr(var_978)) & "'," & CVar(CStr(var_A0C)) & ",'" & CVar(CStr(var_AA0)) & "','" & CVar(CStr(var_B34)) 
  loc_1C4B9DD:               var_DC0 = var_B54 & "','" & CVar(CStr(var_BC8)) & "'," & var_C7C & "," & var_D20 & ",'" & CVar(MemVar_1F920C8) & "'," & var_DB0 
  loc_1C4BA20:               var_ED4 = var_DC0 & ",'A','" & CVar(MemVar_1F92078) & "FOM','" & CVar(MemVar_1F92078) & "','" & CVar(CStr(var_E94)) & "'," 
  loc_1C4BA55:               unk_51E0D8.Execute CStr(var_ED4 & CVar(var_1190) & ",'" & CVar(var_1100) & "')"), var_FA8, -1
  loc_1C4BB99:             End If
  loc_1C4BB99:           End If
  loc_1C4BB99:         End If
  loc_1C4BBAE:         Set var_E4 = CVar(CLng(var_9E))(CVar(CLng(8)))
  loc_1C4BBD1:         var_98 = (var_98 + Val(CStr(Txt.DispID_41)))
  loc_1C4BBDD:       End If
  loc_1C4BBE0:     Next var_11B8 'Integer
  loc_1C4BBE5:   End If
  loc_1C4BBE5: End If
  loc_1C4BBF1: If (global_100 = 1) Then
  loc_1C4BC09:   Set var_E4 = 1(CVar(CLng(4)))
  loc_1C4BC2F:   var_F8 = CStr(var_F4)
  loc_1C4BC43:   unk_51E0D8.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_108, -1
  loc_1C4BC4E:   Set var_9C = var_138
  loc_1C4BC7C:   If (var_9C.RecordCount > 0) Then
  loc_1C4BC9E:     var_138 = var_9C.Fields.Item("MINADV")
  loc_1C4BCAD:     Proc_6_39_E7C810(var_108, CVar(var_138), CVar(var_98))
  loc_1C4BCC1:     If (var_138 >= var_108) Then
  loc_1C4BCE2:       Set var_E4 = Me.Txt
  loc_1C4BCE8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "Update Booking Set Guarantee='Y' where Docid='")
  loc_1C4BCF0:       var_F4 = var_138.Text
  loc_1C4BCF9:       var_140 = -1 & var_F8
  loc_1C4BD09:       unk_51E0D8.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_13C, Txt.DispID_41
  loc_1C4BD26:     Else
  loc_1C4BD44:       Set var_E4 = Me.Txt
  loc_1C4BD4A:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "Update Booking Set Guarantee='N' where Docid='")
  loc_1C4BD52:       var_F4 = var_138.Text
  loc_1C4BD5B:       var_140 = -1 & var_F8
  loc_1C4BD6B:       unk_51E0D8.Execute "Select minadv from roomCat where Code='" & var_F8 & "'", var_13C, 
  loc_1C4BD85:     End If
  loc_1C4BD85:   End If
  loc_1C4BD85: End If
  loc_1C4BD89: Set var_E4 = ()
  loc_1C4BDA8: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_1C4BDBF:   var_F8 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_1C4BDE5:   var_118 = CVar(var_F8 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='" & global_108 & "' And VP.Date_From<=") 'String
  loc_1C4BDF6:   Set var_E4 = Me.Txt
  loc_1C4BDFC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_138, var_150, var_118)
  loc_1C4BE04:   var_25C = var_138.Text
  loc_1C4BE12:   Proc_6_7_F25D88(var_108, CVar(var_150))
  loc_1C4BE1A:   var_128 = -1 & var_108 
  loc_1C4BE31:   unk_51E0D8.Execute CStr(var_128 & " Order By VP.Date_From DESC"), var_13C, 
  loc_1C4BE3C:   Set var_9C = var_13C
  loc_1C4BE7A:   If (var_9C.RecordCount > 0) Then
  loc_1C4BE91:     var_F8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where (SITE_CODE='" & MemVar_1F92070
  loc_1C4BEA6:     var_108 = CVar(var_F8 & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "') and V_Type='") 'String
  loc_1C4BEAF:     var_B0 = "V_Type"
  loc_1C4BEC3:     var_138 = var_9C.Fields.Item(var_B0)
  loc_1C4BED3:     var_118 = var_108 & var_138.Value 
  loc_1C4BEDC:     var_128 = var_118 & "' and Date_From=" 
  loc_1C4BF06:     Proc_6_7_F25D88(var_25C, CVar(var_9C.Fields.Item("Date_From")), var_128)
  loc_1C4BF1C:     unk_51E0D8.Execute CStr(var_27C & var_25C), -1, var_2E0
  loc_1C4BF4A:   End If
  loc_1C4BF4A: End If
  loc_1C4BF50: unk_51E0D8.CommitTrans
  loc_1C4BF59: var_86 = CByte(0) 'Byte
  loc_1C4BF68: Me.Requery -1
  loc_1C4BF8C: Set var_E4 = Me.Txt
  loc_1C4BF92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_138, var_F8, "SearchCode='")
  loc_1C4BF9A: 0 = var_138.Text
  loc_1C4BFB3: Me.Find 1 & var_F8 & "'", var_B0, 
  loc_1C4BFF7: If (MsgBox("Print Rect.?", &H24, var_108, var_118, var_128) = 6) Then
  loc_1C4BFFA:   Call Proc_43_53_14B7998()
  loc_1C4BFFF: End If
  loc_1C4C014: var_F8 = "INI"
  loc_1C4C022: Call Proc_43_48_103D7A0(Proc_5_1_100CB50(var_F8, Me))
  loc_1C4C03E: If (OpenMode = 1) Then
  loc_1C4C04E:   Me.Global.Unload Me
  loc_1C4C056:   Exit Sub
  loc_1C4C057: End If
  loc_1C4C05C: Set var_9C = Nothing
  loc_1C4C05F: Exit Sub
  loc_1C4C060: ' Referenced from: 1C45FF0
  loc_1C4C069: If (CInt(var_86) = 1) Then
  loc_1C4C072:   unk_51E0D8.RollbackTrans
  loc_1C4C077: End If
  loc_1C4C07F: Set var_E4 = Err()
  loc_1C4C085: Call 0.Method_arg_2C (var_F8)
  loc_1C4C09E: MsgBox(CVar(var_F8), &H10, var_108, var_118, var_128)
  loc_1C4C0B1: Exit Sub
End Sub

Private Sub DGEmp_UnknownEvent_9 'F46724
  'Data Table: 51E0C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4661B: (False).Visible = 
  loc_F4663A: If (Me.RecordCount > 0) Then
  loc_F46679:   Set var_B4 = Me.Txt
  loc_F4667F:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F46687:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F466BA:   var_B0 = Me.Fields.Item("Code")
  loc_F466D9:   Set var_B4 = Me.Txt
  loc_F466DF:   Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18), var_B8)
  loc_F466E7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F466FD: End If
  loc_F46708: Set var_A8 = Me.Txt
  loc_F4670E: Call 0.Method_DGEmp_UnknownEvent_90 (CInt(&H18))
  loc_F46716: var_B0.SetFocus
  loc_F46722: Exit Sub
End Sub

Private Sub DGTaxStru_UnknownEvent_9 'F46E04
  'Data Table: 51E0C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46CFB: (False).Visible = 
  loc_F46D1A: If (Me.RecordCount > 0) Then
  loc_F46D59:   Set var_B4 = Me.Txt
  loc_F46D5F:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F46D67:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F46D9A:   var_B0 = Me.Fields.Item("Name")
  loc_F46DB9:   Set var_B4 = Me.Txt
  loc_F46DBF:   Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11), var_B8)
  loc_F46DC7:   var_B8.Text = CStr(var_B0.Value)
  loc_F46DDD: End If
  loc_F46DE8: Set var_A8 = Me.Txt
  loc_F46DEE: Call 0.Method_DGTaxStru_UnknownEvent_90 (CInt(&H11))
  loc_F46DF6: var_B0.SetFocus
  loc_F46E02: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14DBE4C
  'Data Table: 51E0C8
  Dim var_8C As TextBox
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim var_B0 As Variant
  Dim var_C0 As String
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_90 As Variant
  Dim var_D8 As TextBox
  Dim var_88 As Frame
  loc_14DB096: Set var_88 = Me.Txt
  loc_14DB09C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14DB0AA: Proc_6_74_E226B0(var_8C)
  loc_14DB0B6: Call Proc_43_54_F6CE9C(var_8C)
  loc_14DB0CA: Set var_88 = Me.Txt
  loc_14DB0D0: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB0D8: var_8C.SelStart = 0
  loc_14DB0F1: Set var_88 = Me.Txt
  loc_14DB0F7: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB0FF: var_94 = var_8C.Text
  loc_14DB112: Set var_90 = Me.Txt
  loc_14DB118: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_14DB120: var_98.SelLength = Len(var_94)
  loc_14DB136: var_9A = Index
  loc_14DB141: If (var_9A = CInt(&H19)) Then
  loc_14DB151:   ReDim var_A0(0 To 1)
  loc_14DB168:   var_A0(0) = "Advance"
  loc_14DB16A:   var_C0 = "Refund"
  loc_14DB177:   var_A0(1) = var_C0
  loc_14DB18E:   global_156 = Array(var_A0)
  loc_14DB199:   Set var_98 = Me.ListView
  loc_14DB1A0:   Set var_D8 = Me.Txt
  loc_14DB1B4:   Set var_8C = var_D8
  loc_14DB1CE:   Set global_172 = Proc_6_66_EFF8FC(var_98, var_8C, Index, global_156)
  loc_14DB1EC:   Set var_88 = Me.Txt
  loc_14DB1F2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_14DB1FA:   2 = var_8C.Text
  loc_14DB20C:   Set var_90 = Me.Txt
  loc_14DB212:   Call 0.Method_Txt_GotFocus0 (Index, var_98, var_94)
  loc_14DB21A:   var_98.Tag = global_156
  loc_14DB230: Else
  loc_14DB238:   If (var_9A = CInt(3)) Then
  loc_14DB289:     Set var_88 = Me.Txt
  loc_14DB28F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94)
  loc_14DB297:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14DB2AF:     If (var_9A Or (var_94 = vbNullString)) Then
  loc_14DB2B2:       Exit Sub
  loc_14DB2B3:     End If
  loc_14DB2C0:     Set var_88 = Me.Txt
  loc_14DB2C6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB2CE:     var_94 = var_8C.Text
  loc_14DB2E0:     var_B0 = "Name"
  loc_14DB31B:     If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DB324:       Me.MoveFirst
  loc_14DB347:       Set var_88 = Me.Txt
  loc_14DB34D:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DB355:       0 = var_8C.Text
  loc_14DB36E:       Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DB383:     End If
  loc_14DB386:   Else
  loc_14DB38E:     If (var_9A = CInt(5)) Then
  loc_14DB39E:        = (var_10C).Top
  loc_14DB3B1:       Set var_98 = Me.Txt
  loc_14DB3B7:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_D8)
  loc_14DB3D2:       Set var_88 = Me.Txt
  loc_14DB3D8:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_14DB3F0:       var_B0 = CVar(((var_8C.Top + var_10C) + var_D8.Height)) 'Single
  loc_14DB3FF:       (var_B0).Top = 
  loc_14DB420:        = (var_10C).Left
  loc_14DB433:       Set var_88 = Me.Txt
  loc_14DB439:       Call 0.Method_Txt_GotFocus0 (CInt(5), var_8C)
  loc_14DB44D:       var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DB45C:       (var_B0).Left = 
  loc_14DB4BA:       Set var_88 = Me.Txt
  loc_14DB4C0:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB4E0:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DB4E3:         Exit Sub
  loc_14DB4E4:       End If
  loc_14DB4F1:       Set var_88 = Me.Txt
  loc_14DB4F7:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB50A:       global_148 = var_8C.Tag
  loc_14DB525:       Set var_88 = Me.Txt
  loc_14DB52B:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB533:       var_94 = var_8C.Text
  loc_14DB545:       var_B0 = "Name"
  loc_14DB580:       If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DB589:         Me.MoveFirst
  loc_14DB5AC:         Set var_88 = Me.Txt
  loc_14DB5B2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DB5BA:         0 = var_8C.Text
  loc_14DB5D3:         Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DB5E8:       End If
  loc_14DB5EB:     Else
  loc_14DB5F3:       If (var_9A = CInt(&H11)) Then
  loc_14DB603:          = (var_10C).Top
  loc_14DB616:         Set var_98 = Me.Txt
  loc_14DB61C:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_D8)
  loc_14DB624:         var_110 = var_D8.Height
  loc_14DB637:         Set var_88 = Me.Txt
  loc_14DB63D:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14DB655:         var_B0 = CVar(((var_8C.Top + var_10C) + var_110)) 'Single
  loc_14DB664:         (var_B0).Top = 
  loc_14DB685:          = (var_10C).Left
  loc_14DB698:         Set var_88 = Me.Txt
  loc_14DB69E:         Call 0.Method_Txt_GotFocus0 (CInt(&H11), var_8C)
  loc_14DB6B2:         var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DB6C1:         (var_B0).Left = 
  loc_14DB71F:         Set var_88 = Me.Txt
  loc_14DB725:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB745:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DB748:           Exit Sub
  loc_14DB749:         End If
  loc_14DB756:         Set var_88 = Me.Txt
  loc_14DB75C:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB764:         var_94 = var_8C.Text
  loc_14DB776:         var_B0 = "Name"
  loc_14DB7B1:         If CBool(CVar(var_94) <> Me.Fields.Item(var_B0).Value) Then
  loc_14DB7BA:           Me.MoveFirst
  loc_14DB7DD:           Set var_88 = Me.Txt
  loc_14DB7E3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DB7EB:           0 = var_8C.Text
  loc_14DB804:           Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DB819:         End If
  loc_14DB81C:       Else
  loc_14DB824:         If (var_9A = CInt(&H18)) Then
  loc_14DB830:           var_DC = Me.RecordCount
  loc_14DB875:           Set var_88 = Me.Txt
  loc_14DB87B:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB89B:           If (((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DB89E:             Exit Sub
  loc_14DB89F:           End If
  loc_14DB8AC:           Set var_88 = Me.Txt
  loc_14DB8B2:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DB8BA:           var_94 = var_8C.Text
  loc_14DB8CC:           var_B0 = "Name"
  loc_14DB8DB:           var_90 = Me.Fields
  loc_14DB907:           If CBool(CVar(var_94) <> var_90.Item(var_B0).Value) Then
  loc_14DB910:             Me.MoveFirst
  loc_14DB933:             Set var_88 = Me.Txt
  loc_14DB939:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name ='")
  loc_14DB941:             0 = var_8C.Text
  loc_14DB95A:             Me.Find 1 & var_94 & "'", var_B0, 
  loc_14DB96F:           End If
  loc_14DB972:         Else
  loc_14DB97A:           If (var_9A = CInt(&H1B)) Then
  loc_14DB98B:             Set var_8C = Me.Txt
  loc_14DB991:             Call 0.Method_Txt_GotFocus0 (CInt(&H1B), var_90)
  loc_14DB999:             var_10C = var_90.Height
  loc_14DB9AB:              = (var_DC).Top
  loc_14DB9B7:             var_B0 = CVar((var_DC + var_10C)) 'Single
  loc_14DB9C6:             (var_B0).Top = 
  loc_14DB9E3:              = (var_10C).Left
  loc_14DB9F6:             Set var_88 = Me.Txt
  loc_14DB9FC:             Call 0.Method_Txt_GotFocus0 (CInt(&H1B), var_8C)
  loc_14DBA10:             var_B0 = CVar((var_8C.Left + var_10C)) 'Single
  loc_14DBA1F:             (var_B0).Left = 
  loc_14DBA38:             var_DC = Me.RecordCount
  loc_14DBA7D:             Set var_88 = Me.Txt
  loc_14DBA83:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBAA3:             If (((var_DC = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DBAA6:               Exit Sub
  loc_14DBAA7:             End If
  loc_14DBAB4:             Set var_88 = Me.Txt
  loc_14DBABA:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBAC2:             var_94 = var_8C.Text
  loc_14DBACA:             var_F0 = CVar(var_94) 'String
  loc_14DBAE3:             var_90 = Me.Fields
  loc_14DBB0F:             If CBool(var_F0 <> var_90.Item("Name").Value) Then
  loc_14DBB18:               Me.MoveFirst
  loc_14DBB3D:               Set var_88 = Me.Txt
  loc_14DBB43:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_14DBB4B:               0 = var_8C.Text
  loc_14DBB59:               Proc_6_17_EAA2B0(var_F0, CVar(var_94))
  loc_14DBB6F:               Me.Find CStr(1 & var_F0), var_C0, 
  loc_14DBB87:             End If
  loc_14DBB8A:           Else
  loc_14DBB92:             If (var_9A = CInt(&H1C)) Then
  loc_14DBBA3:               Set var_8C = Me.Txt
  loc_14DBBA9:               Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_90)
  loc_14DBBB1:               var_10C = var_90.Height
  loc_14DBBC3:                = (var_DC).Top
  loc_14DBBCF:               var_B0 = CVar((var_DC + var_10C)) 'Single
  loc_14DBBDE:               ("Name =").Top = 
  loc_14DBBFB:                = (var_10C).Left
  loc_14DBC0D:                = (var_110).Left
  loc_14DBC20:               Set var_88 = Me.Txt
  loc_14DBC26:               Call 0.Method_Txt_GotFocus0 (CInt(&H1C), var_8C)
  loc_14DBC3E:               var_B0 = CVar(((var_8C.Left + var_10C) + var_110)) 'Single
  loc_14DBC4D:               ("Name =").Left = 
  loc_14DBCAD:               Set var_88 = Me.Txt
  loc_14DBCB3:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBCD3:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_14DBCD6:                 Exit Sub
  loc_14DBCD7:               End If
  loc_14DBCE4:               Set var_88 = Me.Txt
  loc_14DBCEA:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBCF2:               var_94 = var_8C.Text
  loc_14DBCFA:               var_F0 = CVar(var_94) 'String
  loc_14DBD1B:               var_98 = Me.Fields.Item("Name")
  loc_14DBD3F:               If CBool(var_F0 <> var_98.Value) Then
  loc_14DBD48:                 Me.MoveFirst
  loc_14DBD6D:                 Set var_88 = Me.Txt
  loc_14DBD73:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_94, "Name =")
  loc_14DBD7B:                 0 = var_8C.Text
  loc_14DBD89:                 Proc_6_17_EAA2B0(var_F0, CVar(var_94))
  loc_14DBD9F:                 Me.Find CStr(1 & var_F0), var_C0, 
  loc_14DBDB7:               End If
  loc_14DBDBA:             Else
  loc_14DBDC2:               If Not (var_9A = CInt(6)) Then
  loc_14DBDCD:                 If (var_9A = CInt(4)) Then
  loc_14DBDD0:                 End If
  loc_14DBDDF:                 Set var_88 = Me.Txt
  loc_14DBDE5:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBDED:                 var_8C.SelStart = 0
  loc_14DBE06:                 Set var_88 = Me.Txt
  loc_14DBE0C:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14DBE27:                 Set var_90 = Me.Txt
  loc_14DBE2D:                 Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_14DBE35:                 var_98.SelLength = Len(var_8C.Text)
  loc_14DBE48:               End If
  loc_14DBE48:             End If
  loc_14DBE48:           End If
  loc_14DBE48:         End If
  loc_14DBE48:       End If
  loc_14DBE48:     End If
  loc_14DBE48:   End If
  loc_14DBE48: End If
  loc_14DBE48: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1337128
  'Data Table: 51E0C8
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_B4 As TextBox
  Dim Me As Recordset15
  Dim var_128 As Boolean
  Dim var_8C As Variant
  Dim var_98 As Frame
  Dim var_A4 As Frame
  Dim var_B0 As Frame
  Dim Shift As Integer
  loc_1336996: If (CLng(Shift) = &H1B) Then
  loc_1336999:   Call Proc_43_54_F6CE9C()
  loc_133699E:   Exit Sub
  loc_133699F: End If
  loc_13369A2: var_88 = KeyCode
  loc_13369AD: If (var_88 = CInt(&H19)) Then
  loc_13369D2:   Set var_8C = Me.Txt
  loc_13369D8:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_13369E0:   var_94 = var_90.Left
  loc_13369F2:   Set var_98 = Me.Txt
  loc_13369F8:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1336A00:   var_A0 = var_9C.Top
  loc_1336A12:   Set var_A4 = Me.Txt
  loc_1336A18:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1336A20:   var_AC = var_A8.Height
  loc_1336A32:   Set var_B0 = Me.Txt
  loc_1336A38:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1336A40:   var_B8 = var_B4.Width
  loc_1336A88:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1336AAF: Else
  loc_1336AB7:   If (var_88 = CInt(3)) Then
  loc_1336ABE:     Set var_A4 = CInt((var_A0 + var_AC))(CInt(var_94))
  loc_1336AD2:     Set var_9C = Nothing
  loc_1336ADD:     Set var_98 = Nothing
  loc_1336B0F:     Proc_6_69_134A198(var_A4, Me.Txt, CInt(3), global_56, Shift, 0, 1)
  loc_1336B26:   Else
  loc_1336B2E:     If (var_88 = CInt(5)) Then
  loc_1336B49:       Set var_9C = Nothing
  loc_1336B54:       Set var_98 = Nothing
  loc_1336B82:       Proc_6_69_134A198(var_9C(var_98), Me.Txt, KeyCode, global_60, Shift, 0, 1)
  loc_1336B99:     Else
  loc_1336BA1:       If (var_88 = CInt(&H11)) Then
  loc_1336BBC:         Set var_9C = Nothing
  loc_1336BF9:         Proc_6_69_134A198(var_9C(Nothing), Me.Txt, CInt(&H11), global_80, Shift, 0, 1, Nothing)
  loc_1336C10:       Else
  loc_1336C18:         If (var_88 = CInt(&H18)) Then
  loc_1336C33:           Set var_9C = Nothing
  loc_1336C6C:           Proc_6_69_134A198(0(var_9C), Me.Txt, KeyCode, global_64, Shift, 0, 1, Nothing)
  loc_1336C83:         Else
  loc_1336C8B:           If (var_88 = CInt(&H1B)) Then
  loc_1336CA6:             Set var_9C = Nothing
  loc_1336CD0:             Set var_90 = Me.Txt
  loc_1336CDF:             Proc_6_69_134A198(0(var_9C), var_90, KeyCode, global_72, Shift, 0, 1, Nothing)
  loc_1336CF6:           Else
  loc_1336CFE:             If (var_88 = CInt(6)) Then
  loc_1336D0B:               Set var_8C = Me.Txt
  loc_1336D11:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_9C, 0, 0)
  loc_1336D2C:               Proc_6_41_FA0BA4(var_90, Shift, 8, 2)
  loc_1336D3B:             Else
  loc_1336D43:               If (var_88 = CInt(&H1C)) Then
  loc_1336D97:                 Proc_6_69_134A198(CInt(var_B8)(0), Me.Txt, KeyCode, global_76, Shift, 0)
  loc_1336DC2:                 If (Me.RecordCount > 0) Then
  loc_1336DF3:                   var_128 = (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9))
  loc_1336E14:                   var_90 = Me.Fields.Item("CompanyType")
  loc_1336E42:                   If CBool(var_128 And (var_90.Value = "Travel Agency")) Then
  loc_1336E51:                     1(&HFF).Visible = Nothing
  loc_1336E65:                     Nothing(1).Value = 0
  loc_1336E70:                   Else
  loc_1336E7C:                     570(0).Visible = var_88
  loc_1336E90:                     (0).Value = 
  loc_1336E98:                   End If
  loc_1336E98:                 End If
  loc_1336E9B:               Else
  loc_1336EA3:                 If (var_88 = CInt(&HE)) Then
  loc_1336EB0:                   Set var_8C = Me.Txt
  loc_1336EB6:                   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_1336ED1:                   Proc_6_41_FA0BA4(var_90, Shift, 8)
  loc_1336EDD:                 End If
  loc_1336EDD:               End If
  loc_1336EDD:             End If
  loc_1336EDD:           End If
  loc_1336EDD:         End If
  loc_1336EDD:       End If
  loc_1336EDD:     End If
  loc_1336EDD:   End If
  loc_1336EDD: End If
  loc_1336EEA: var_C6 = Me.FrmList.Visible
  loc_1336EF9: Set var_90 = 0((var_C6 = 0))
  loc_1336F55: Set var_A8 = (( And (CBool((( And (CBool((( And (CBool(((var_90 And (CBool(var_90.Visible) = 0))).Visible) = 0))).Visible) = 0))).Visible) = 0)))
  loc_1336F9F: If ( And (CBool((( And (CBool(var_A8.Visible) = 0))).Visible) = 0)) Then
  loc_1336FED:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((((((KeyCode = CInt(&HE)) Or (KeyCode = CInt(&H16))) Or (KeyCode = CInt(&H1B))) Or (KeyCode = CInt(&H18))) Or (KeyCode = CInt(&H1C))) Or (KeyCode = CInt(&H1A)))) Then
  loc_1336FFA:     If (CLng(Shift) = &H28) Then
  loc_1336FFD:       Exit Sub
  loc_1336FFE:     End If
  loc_1336FFE:     Call Proc_43_58_1581F5C()
  loc_1337005:     Shift = 0
  loc_1337008:     Exit Sub
  loc_133700C:   Else
  loc_1337047:      = ( And (var_C6 = 0))(var_C8).Visible
  loc_1337060:      = ( And (var_C8 = 0))(var_CA).Visible
  loc_1337079:      = ( And (var_CA = 0))(var_CC).Visible
  loc_1337092:      = ( And (var_CC = 0))(var_16A).Visible
  loc_13370CF:     If ((( And (var_16A = 0)) And (Me.FrTxnNo.Visible = 0)) And (KeyCode = CInt(&H11))) Then
  loc_13370DC:       If (CLng(((CLng(Shift) = &H28) Or (CLng(Shift) = &HD))(var_C6).Visible) = &H28) Then
  loc_13370DF:         Exit Sub
  loc_13370E0:       End If
  loc_13370E0:       Call Proc_43_58_1581F5C()
  loc_13370E7:       Shift = 0
  loc_13370EA:       Exit Sub
  loc_13370EB:     End If
  loc_13370EB:   End If
  loc_1337100:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1337109:     Proc_6_75_E527CC(Shift, arg_14)
  loc_133710E:   End If
  loc_1337118:   If (CLng(Shift) = &H26) Then
  loc_1337121:     Proc_6_76_E52838(Shift, arg_14)
  loc_1337126:   End If
  loc_1337126: End If
  loc_1337126: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F187F8
  'Data Table: 51E0C8
  Dim arg_10 As Integer
  Dim var_86 As Integer
  loc_F18706: If (arg_10 = &HD) Then
  loc_F1870B:   arg_10 = 0
  loc_F1870E: End If
  loc_F18711: Proc_6_58_E054C0(arg_10)
  loc_F18719: var_86 = KeyAscii
  loc_F18724: If Not (var_86 = CInt(6)) Then
  loc_F1872F:   If (var_86 = CInt(4)) Then
  loc_F18732:   End If
  loc_F1873C:   Set var_8C = Me.Txt
  loc_F18742:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F1875D:   Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F1876C: Else
  loc_F18774:   If (var_86 = CInt(&HE)) Then
  loc_F18781:     Set var_8C = Me.Txt
  loc_F18787:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90, 2)
  loc_F187A2:     Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_F187B1:   Else
  loc_F187B9:     If (var_86 = CInt(&H11)) Then
  loc_F187E6:       Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_F187F5:     End If
  loc_F187F5:   End If
  loc_F187F5: End If
  loc_F187F5: Exit Sub
  loc_F187F6: If 0 Then Exit Sub
  loc_F187F6: End If
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '103D4F4
  'Data Table: 51E0C8
  Dim var_86 As Integer
  Dim arg_5003 As String
  loc_103D2A3: var_86 = KeyCode
  loc_103D2AE: If (var_86 = CInt(3)) Then
  loc_103D2CD:   If (CBool((var_86).Visible) = &HFF) Then
  loc_103D2E1:     var_A8 = "Name"
  loc_103D309:     Proc_6_68_129FB34((), Me.Txt, CInt(3))
  loc_103D31C:   End If
  loc_103D31F: Else
  loc_103D327:   If (var_86 = CInt(5)) Then
  loc_103D346:     If (CBool(Shift(global_56).Visible) = &HFF) Then
  loc_103D35A:       var_A8 = "Name"
  loc_103D37E:       Proc_6_68_129FB34((var_A8), Me.Txt, KeyCode)
  loc_103D391:     End If
  loc_103D394:   Else
  loc_103D39C:     If (var_86 = CInt(&H18)) Then
  loc_103D3BB:       If (CBool(Shift(global_60).Visible) = &HFF) Then
  loc_103D3CF:         var_A8 = "Name"
  loc_103D3F3:         Proc_6_68_129FB34((var_A8), Me.Txt, KeyCode)
  loc_103D406:       End If
  loc_103D409:     Else
  loc_103D411:       If (var_86 = CInt(&H1B)) Then
  loc_103D430:         If (CBool(Shift(global_64).Visible) = &HFF) Then
  loc_103D444:           var_A8 = "Name"
  loc_103D468:           Proc_6_68_129FB34((var_A8), Me.Txt, KeyCode)
  loc_103D47B:         End If
  loc_103D47E:       Else
  loc_103D486:         If (var_86 = CInt(&H1C)) Then
  loc_103D4A5:           If (CBool(Shift(global_72).Visible) = &HFF) Then
  loc_103D4B9:             var_A8 = "Name"
  loc_103D4DD:             Proc_6_68_129FB34((var_A8), Me.Txt, KeyCode)
  loc_103D4F0:           End If
  loc_103D4F0:         End If
  loc_103D4F0:       End If
  loc_103D4F0:     End If
  loc_103D4F0:   End If
  loc_103D4F0: End If
  loc_103D4F0: Exit Sub
  loc_103D4F1: arg_5003 = global_76
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E33C
  'Data Table: 51E0C8
  loc_E4E31A: Set var_88 = Me.Txt
  loc_E4E320: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E32E: Proc_6_73_E22704(var_8C)
  loc_E4E33A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15F1D20
  'Data Table: 51E0C8
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_D4 As String
  Dim var_E4 As Variant
  Dim var_EC As String
  Dim unk_51E0D8 As Connection15
  Dim var_E0 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As String
  Dim var_11C As TextBox
  Dim var_130 As String
  Dim var_12C As TextBox
  Dim var_B0 As Variant
  Dim var_128 As TextBox
  Dim var_160 As Variant
  loc_15F0944: On Error Goto loc_15F1CE5
  loc_15F094A: var_86 = Cancel
  loc_15F0955: If (var_86 = CInt(&H19)) Then
  loc_15F0963:   Set var_8C = Me.Txt
  loc_15F0969:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_90)
  loc_15F0978:   var_B0 = Trim(CVar(var_90))
  loc_15F0992:   If (var_B0 = vbNullString) Then
  loc_15F0997:     arg_10 = &HFF
  loc_15F099A:     Exit Sub
  loc_15F099B:   End If
  loc_15F09A9:   Set var_8C = Me.Txt
  loc_15F09AF:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_90, var_D4)
  loc_15F09B7:   arg_10 = var_90.Text
  loc_15F09CE:   If (var_D4 = "Advance") Then
  loc_15F09D7:     global_108 = "ADRES"
  loc_15F09E1:     Call Proc_43_55_11588DC(MemVar_1F92044, var_D4)
  loc_15F09EC:   Else
  loc_15F09F2:     global_108 = "ARRES"
  loc_15F09FC:     Call Proc_43_55_11588DC(MemVar_1F92044, var_D4)
  loc_15F0A04:   End If
  loc_15F0A07: Else
  loc_15F0A0F:   If (var_86 = CInt(&H1B)) Then
  loc_15F0A60:     Set var_8C = Me.Txt
  loc_15F0A66:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_D4)
  loc_15F0A6E:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_15F0A86:     If (var_86 Or (var_D4 = vbNullString)) Then
  loc_15F0A96:       Set var_8C = Me.Txt
  loc_15F0A9C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F0AA4:       var_90.Text = vbNullString
  loc_15F0ABD:       Set var_8C = Me.Txt
  loc_15F0AC3:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F0ACB:       var_90.Tag = vbNullString
  loc_15F0ADA:     Else
  loc_15F0B15:       Set var_E0 = Me.Txt
  loc_15F0B1B:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F0B23:       var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F0B56:       var_90 = Me.Fields.Item("FolioNo")
  loc_15F0B74:       Set var_E0 = Me.Txt
  loc_15F0B7A:       Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F0B82:       var_E4.Tag = CStr(var_90.Value)
  loc_15F0B98:     End If
  loc_15F0B9B:   Else
  loc_15F0BA3:     If (var_86 = CInt(3)) Then
  loc_15F0BB4:       Set var_8C = Me.Txt
  loc_15F0BBA:       Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_15F0BD9:       If (var_90.Text = vbNullString) Then
  loc_15F0BE9:         Set var_8C = Me.Txt
  loc_15F0BEF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F0C09:         If (var_90.Enabled = &HFF) Then
  loc_15F0C16:           Set var_8C = Me.Txt
  loc_15F0C1C:           Call 0.Method_Txt_Validate0 (Cancel)
  loc_15F0C45:           If (Proc_6_27_EA565C(var_90, "Name") = 0) Then
  loc_15F0C52:             Set var_8C = Me.Txt
  loc_15F0C58:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F0C60:             var_90.SetFocus
  loc_15F0C6E:             arg_10 = &HFF
  loc_15F0C71:             Exit Sub
  loc_15F0C72:           End If
  loc_15F0C75:         Else
  loc_15F0C77:           arg_10 = &HFF
  loc_15F0C7A:           Exit Sub
  loc_15F0C7B:         End If
  loc_15F0C7B:       End If
  loc_15F0C98:       var_90 = Me.Fields.Item("DocID")
  loc_15F0CA0:       var_A0 = var_90.Value
  loc_15F0CA9:       var_D4 = CStr(var_A0)
  loc_15F0CB7:       Set var_E0 = Me.Txt
  loc_15F0CBD:       Call 0.Method_Txt_Validate0 (CInt(&H1D), var_E4, var_D4)
  loc_15F0CC5:       var_E4.Text = arg_10
  loc_15F0D08:       Set var_8C = Me.Txt
  loc_15F0D0E:       Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90, var_D4, "Select count(*) from PayCharge where RefDocid='", var_A0, -1, var_E0)
  loc_15F0D16:       var_E4 = var_90.Text
  loc_15F0D26:       var_EC = 0 & var_D4 & "' And VType In ('ARRES','ADRES')"
  loc_15F0D2F:       unk_51E0D8.Execute var_EC, var_100, var_B0
  loc_15F0D37:       arg_10 = var_E0.Fields
  loc_15F0D3F:        = var_E4.Item(var_90)
  loc_15F0D47:        = var_100.Value
  loc_15F0D74:       If (var_B0 > 0) Then
  loc_15F0D77:         Call Proc_43_51_17ACC48()
  loc_15F0D7F:       Else
  loc_15F0D7F:         Call Proc_43_56_127254C()
  loc_15F0D91:         Set var_8C = (1)
  loc_15F0DC7:         Set var_8C = Txt.DispID_4("1").Name(1)
  loc_15F0E11:         Set var_E0 = Me.Txt
  loc_15F0E17:         Call 0.Method_Txt_Validate0 (CInt(3), var_E4)
  loc_15F0E1F:         var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F0E71:         Set var_E0 = Me.Txt
  loc_15F0E77:         Call 0.Method_Txt_Validate0 (CInt(3), var_E4)
  loc_15F0E7F:         var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15F0EA0:         If (global_108 = "ADRES") Then
  loc_15F0EE0:           var_114 = "Adv. Agst. Res.No. " & CStr(Me.Fields.Item("BookNo").Value) & " Rect.No. "
  loc_15F0EF1:           Set var_E0 = Me.Txt
  loc_15F0EF7:           Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_EC)
  loc_15F0EFF:           var_114 = var_E4.Text
  loc_15F0F20:           Set var_100 = Me.Txt
  loc_15F0F26:           Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F0F45:           Set var_128 = Me.Txt
  loc_15F0F4B:           Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F0F53:           var_12C.Text = Txt.DispID_6 & var_EC & " Dt. " & var_11C.Text
  loc_15F0F84:         Else
  loc_15F0F8F:           If (global_108 = "ARRES") Then
  loc_15F0FE0:             Set var_E0 = Me.Txt
  loc_15F0FE6:             Call 0.Method_Txt_Validate0 (CInt(1), var_E4)
  loc_15F100F:             Set var_100 = Me.Txt
  loc_15F1015:             Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F1026:             var_130 = "Ref. Agst. Res.No. " & CStr(Me.Fields.Item("BookNo").Value) & " Rect.No. " & var_E4.Text & " Dt. " & var_11C.Text
  loc_15F1034:             Set var_128 = Me.Txt
  loc_15F103A:             Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F1042:             var_12C.Text = var_130
  loc_15F1070:           End If
  loc_15F1070:         End If
  loc_15F10AC:         Set var_E0 = Me.Txt
  loc_15F10B2:         Call 0.Method_Txt_Validate0 (CInt(8), var_E4)
  loc_15F10BA:         var_E4.Text = CStr(Me.Fields.Item("Bookingdate").Value)
  loc_15F110C:         Set var_E0 = Me.Txt
  loc_15F1112:         Call 0.Method_Txt_Validate0 (CInt(9), var_E4)
  loc_15F111A:         var_E4.Text = CStr(Me.Fields.Item("ArrDate").Value)
  loc_15F114D:         var_90 = Me.Fields.Item("DepDate")
  loc_15F1155:         var_A0 = var_90.Value
  loc_15F115E:         var_D4 = CStr(var_A0)
  loc_15F116C:         Set var_E0 = Me.Txt
  loc_15F1172:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_E4)
  loc_15F117A:         var_E4.Text = var_D4
  loc_15F11BA:         Set var_8C = Me.Txt
  loc_15F11C0:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90, var_D4, "Select sum(AmtCr) from PayCharge where RefDocid='", var_A0)
  loc_15F11C8:         -1 = var_90.Text
  loc_15F11E1:         unk_51E0D8.Execute var_E0 & var_D4 & "' And VType In ('ARRES','ADRES')", var_E4, 0
  loc_15F11E9:         var_100 = var_E0.Fields
  loc_15F11F1:          = var_E4.Item()
  loc_15F11F9:         var_B0 = CVar(var_100) 'Address
  loc_15F1200:         Proc_6_39_E7C810(var_D0)
  loc_15F1217:         Set var_11C = Me.Txt
  loc_15F121D:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_128)
  loc_15F1225:         var_128.Text = CStr(var_D0)
  loc_15F1289:         Set var_E0 = Me.Txt
  loc_15F128F:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_E4)
  loc_15F1297:         var_E4.Text = CStr(Me.Fields.Item("RoomRate").Value)
  loc_15F12E6:         Set var_E0 = Me.Txt
  loc_15F12EC:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_E4)
  loc_15F12F4:         var_E4.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CreditCardNo")))
  loc_15F133C:         global_132 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_15F136A:         var_90 = Me.Fields.Item("Roomtype")
  loc_15F1381:         global_136 = CStr(var_90.Value)
  loc_15F1392:       End If
  loc_15F1395:     Else
  loc_15F139D:       If (var_86 = CInt(2)) Then
  loc_15F13AE:         Set var_8C = Me.Txt
  loc_15F13B4:         Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_15F13BC:         var_D4 = var_90.Text
  loc_15F13DB:         Set var_E0 = Me.Txt
  loc_15F13E1:         Call 0.Method_Txt_Validate0 (CInt(2), var_E4)
  loc_15F13E9:         var_E4.Text = Proc_6_34_14ECF20(var_D4)
  loc_15F1406:         Call Proc_43_55_11588DC(MemVar_1F92044, var_D4)
  loc_15F141C:         Set var_8C = Me.Txt
  loc_15F1422:         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F1441:         If (var_90.Text = vbNullString) Then
  loc_15F1446:           arg_10 = &HFF
  loc_15F1449:         End If
  loc_15F144C:       Else
  loc_15F1454:         If Not (var_86 = CInt(&H16)) Then
  loc_15F145F:           If (var_86 = CInt(&H14)) Then
  loc_15F1462:           End If
  loc_15F146C:           Set var_8C = Me.Txt
  loc_15F1472:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F1492:           Set var_E4 = Me.Txt
  loc_15F1498:           Call 0.Method_Txt_Validate0 (Cancel, var_100)
  loc_15F14A0:           var_100.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_15F14B6:         Else
  loc_15F14BE:           If (var_86 = CInt(5)) Then
  loc_15F14CE:             Set var_8C = Me.Txt
  loc_15F14D4:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F14F3:             If (var_90.Text <> vbNullString) Then
  loc_15F1539:               If CBool(CVar(global_148) <> Me.Fields.Item("Code").Value) Then
  loc_15F153C:                 Call Proc_43_59_10FF3BC(var_B0)
  loc_15F1541:               End If
  loc_15F157C:               Set var_E0 = Me.Txt
  loc_15F1582:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F158A:               var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F15DB:               Set var_E0 = Me.Txt
  loc_15F15E1:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F15E9:               var_E4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_15F1619:               var_90 = Me.Fields.Item("PayType")
  loc_15F162A:               var_D4 = Proc_6_38_E68A98(CVar(var_90))
  loc_15F1630:               global_140 = var_D4
  loc_15F1648:               If (global_108 = "ADRES") Then
  loc_15F1656:                 Set var_8C = Me.Txt
  loc_15F165C:                 Call 0.Method_Txt_Validate0 (CInt(&H17))
  loc_15F1685:                 If (Trim(CVar(var_90)) = vbNullString) Then
  loc_15F1693:                   Set var_8C = Me.Txt
  loc_15F1699:                   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F16D3:                   var_160 = "Adv. Agst. Res.No. " & Trim(Mid(CVar(var_90), &HE, 8)) & " Rect.No. " 
  loc_15F16E5:                   Set var_E0 = Me.Txt
  loc_15F16EB:                   Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_D4)
  loc_15F16F3:                   var_160 = var_E4.Text
  loc_15F1719:                   Set var_100 = Me.Txt
  loc_15F171F:                   Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F1745:                   Set var_128 = Me.Txt
  loc_15F174B:                   Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F1753:                   var_12C.Text = CStr(var_90 & CVar(var_D4) & " Dt. " & CVar(var_11C.Text))
  loc_15F1785:                 End If
  loc_15F1788:               Else
  loc_15F1793:                 If (global_108 = "ARRES") Then
  loc_15F17A1:                   Set var_8C = Me.Txt
  loc_15F17A7:                   Call 0.Method_Txt_Validate0 (CInt(&H17))
  loc_15F17D0:                   If (Trim(CVar(var_90)) = vbNullString) Then
  loc_15F17DE:                     Set var_8C = Me.Txt
  loc_15F17E4:                     Call 0.Method_Txt_Validate0 (CInt(&H1D), var_90)
  loc_15F181E:                     var_160 = "Ref. Agst. Res.No. " & Trim(Mid(CVar(var_90), &HE, 8)) & " Rect.No. " 
  loc_15F1830:                     Set var_E0 = Me.Txt
  loc_15F1836:                     Call 0.Method_Txt_Validate0 (CInt(1), var_E4, var_D4)
  loc_15F183E:                     var_160 = var_E4.Text
  loc_15F1864:                     Set var_100 = Me.Txt
  loc_15F186A:                     Call 0.Method_Txt_Validate0 (CInt(2), var_11C)
  loc_15F1890:                     Set var_128 = Me.Txt
  loc_15F1896:                     Call 0.Method_Txt_Validate0 (CInt(&H17), var_12C)
  loc_15F189E:                     var_12C.Text = CStr(var_90 & CVar(var_D4) & " Dt. " & CVar(var_11C.Text))
  loc_15F18D0:                   End If
  loc_15F18D0:                 End If
  loc_15F18D0:               End If
  loc_15F18DC:               (0).Visible = 
  loc_15F18F0:               (0).Visible = 
  loc_15F1904:               (0).Visible = 
  loc_15F1926:               var_90 = Me.Fields.Item("PayType")
  loc_15F193B:               Call Proc_43_57_12883D8(Proc_6_38_E68A98(CVar(var_90)))
  loc_15F1949:             End If
  loc_15F194C:           Else
  loc_15F1954:             If (var_86 = CInt(&H11)) Then
  loc_15F19A5:               Set var_8C = Me.Txt
  loc_15F19AB:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F19CB:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_15F19DB:                 Set var_8C = Me.Txt
  loc_15F19E1:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F19E9:                 var_90.Tag = vbNullString
  loc_15F19F5:                 Exit Sub
  loc_15F19F6:               End If
  loc_15F1A31:               Set var_E0 = Me.Txt
  loc_15F1A37:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F1A3F:               var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F1A72:               var_90 = Me.Fields.Item("Code")
  loc_15F1A90:               Set var_E0 = Me.Txt
  loc_15F1A96:               Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F1A9E:               var_E4.Tag = CStr(var_90.Value)
  loc_15F1AB7:             Else
  loc_15F1ABF:               If Not (var_86 = CInt(&H11)) Then
  loc_15F1ACA:                 If (var_86 = CInt(6)) Then
  loc_15F1ACD:                 End If
  loc_15F1AD7:                 Set var_8C = Me.Txt
  loc_15F1ADD:                 Call 0.Method_Txt_Validate0 (Cancel)
  loc_15F1AE9:                 Proc_6_40_EA50F0(CVar(var_90))
  loc_15F1B00:                 var_D0 = "0.00"
  loc_15F1B09:                 var_B0 = CVar(var_90) 'Double
  loc_15F1B10:                 var_140 = Format(var_B0, var_D0)
  loc_15F1B18:                 var_D4 = CStr(var_140)
  loc_15F1B26:                 Set var_E0 = Me.Txt
  loc_15F1B2C:                 Call 0.Method_Txt_Validate0 (Cancel, var_E4, var_D4)
  loc_15F1B34:                 var_E4.Text = 1
  loc_15F1B53:               Else
  loc_15F1B5B:                 If (var_86 = CInt(&H1C)) Then
  loc_15F1BAC:                   Set var_8C = Me.Txt
  loc_15F1BB2:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_D4)
  loc_15F1BBA:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_15F1BD2:                   If (1 Or (var_D4 = vbNullString)) Then
  loc_15F1BE2:                     Set var_8C = Me.Txt
  loc_15F1BE8:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F1BF0:                     var_90.Text = vbNullString
  loc_15F1C09:                     Set var_8C = Me.Txt
  loc_15F1C0F:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_15F1C17:                     var_90.Tag = vbNullString
  loc_15F1C26:                   Else
  loc_15F1C61:                     Set var_E0 = Me.Txt
  loc_15F1C67:                     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F1C6F:                     var_E4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15F1CB3:                     var_D4 = CStr(Me.Fields.Item("Code").Value)
  loc_15F1CC0:                     Set var_E0 = Me.Txt
  loc_15F1CC6:                     Call 0.Method_Txt_Validate0 (Cancel, var_E4)
  loc_15F1CCE:                     var_E4.Tag = var_D4
  loc_15F1CE4:                   End If
  loc_15F1CE4:                 End If
  loc_15F1CE4:               End If
  loc_15F1CE4:             End If
  loc_15F1CE4:           End If
  loc_15F1CE4:         End If
  loc_15F1CE4:       End If
  loc_15F1CE4:     End If
  loc_15F1CE4:   End If
  loc_15F1CE4: End If
  loc_15F1CE4: Exit Sub
  loc_15F1CE5: ' Referenced from: 15F0944
  loc_15F1CED: Set var_8C = Err()
  loc_15F1CF3: Call 0.Method_arg_2C (var_D4)
  loc_15F1D0C: MsgBox(CVar(var_D4), &H10, var_B0, var_D0, var_140)
  loc_15F1D1F: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F398E4
  'Data Table: 51E0C8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F397DB: (False).Visible = 
  loc_F397FA: If (Me.RecordCount > 0) Then
  loc_F39839:   Set var_B4 = Me.Txt
  loc_F3983F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39847:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3987A:   var_B0 = Me.Fields.Item("Code")
  loc_F39899:   Set var_B4 = Me.Txt
  loc_F3989F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3), var_B8)
  loc_F398A7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F398BD: End If
  loc_F398C8: Set var_A8 = Me.Txt
  loc_F398CE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(3))
  loc_F398D6: var_B0.SetFocus
  loc_F398E2: Exit Sub
End Sub

Private Sub Form_Load() '13A2CF4
  'Data Table: 51E0C8
  Dim var_90 As Long
  Dim var_94 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As String
  Dim var_CC As String
  Dim unk_51E0D8 As Connection15
  Dim var_D0 As Variant
  Dim var_D8 As Variant
  Dim var_DC As TextBox
  Dim var_E4 As TextBox
  Dim var_8C As Recordset15
  Dim var_F0 As Long
  Dim var_110 As Variant
  Dim var_120 As Variant
  loc_13A23F4: On Error Goto loc_13A2CAE
  loc_13A23FD: var_90 = global_100
  loc_13A2409: If (var_90 = 1) Then
  loc_13A2414:   Call 0.Method_arg_7C (CDbl(1450))
  loc_13A2421:   Call 0.Method_arg_74 (CDbl(1625))
  loc_13A242E:   Call 0.Method_MeC (CDbl(9200))
  loc_13A243B:   Call 0.Method_Me4 (CDbl(17000))
  loc_13A244F:   var_90(CDbl(13500)).Left = 
  loc_13A2466:   (CDbl(7800)).Top = 
  loc_13A247D:   (CDbl(8160)).Top = 
  loc_13A2494:   (CDbl(13500)).Left = 
  loc_13A24A3:   Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13A24B5:   Set var_94 = (CVar(CLng(MemVar_1F921B4)))
  loc_13A24D1:   Txt.DispID_12(CLng(MemVar_1F921B4)).BackColor = 
  loc_13A24E7:   (CLng(MemVar_1F921B4)).BackColor = 
  loc_13A24FD:   (CLng(MemVar_1F921B4)).BackColor = 
  loc_13A2513:   (CLng(MemVar_1F921B4)).BackColor = 
  loc_13A2529:   (CLng(MemVar_1F921B4)).BackColor = 
  loc_13A253F:   (CLng(MemVar_1F921B4)).BackColor = 
  loc_13A2555:   Me.FrTxnNo.BackColor = CLng(MemVar_1F921B4)
  loc_13A255D: End If
  loc_13A256D: ("AEDP").Tag = 
  loc_13A257B: Call 0.Method_arg_50 (var_B8)
  loc_13A2583: var_C8 = CVar(var_B8) 'String
  loc_13A25AD: global_108 = frmAdvanceDepDialog.AdvType
  loc_13A25CF: var_CC = "SELECT Code,Name,PayType FROM RevMast Where PayType<>'Hold' and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and FieldType='P' ORDER BY Name"
  loc_13A25D8: unk_51E0D8.Execute var_CC, var_C8, -1
  loc_13A2607: CVarUnk
  loc_13A260C: VerifyVarObj
  loc_13A2612: Set var_94 = var_94((var_C8))
  loc_13A2618: LateIdStAd
  loc_13A2634: Set var_94 = Me.Txt
  loc_13A263A: Call 0.Method_Form_Load0 (CInt(5), var_D0, var_D4)
  loc_13A2642: var_94 = var_D0.Left
  loc_13A2659: FrTxnNo.DispID_68030007(CVar(var_D4)).Left = 
  loc_13A2675: Set var_D8 = Me.Txt
  loc_13A267B: Call 0.Method_Form_Load0 (CInt(5), var_DC)
  loc_13A2683: var_E0 = var_DC.Height
  loc_13A269C: Call 0.Method_Form_Load0 (CInt(5), var_D0)
  loc_13A26A4: var_D4 = var_D0.Top
  loc_13A26B0: var_A4 = CVar((var_D4 + var_E0)) 'Single
  loc_13A26B9: Set var_E4 = (CVar(var_D4))
  loc_13A26BF: var_E4.Top = 
  loc_13A26F5: unk_51E0D8.Execute "SELECT distinct Code,Name FROM TaxStru WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_13A2724: CVarUnk
  loc_13A2729: VerifyVarObj
  loc_13A2735: LateIdStAd
  loc_13A2767: unk_51E0D8.Execute "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_C8, -1
  loc_13A2796: CVarUnk
  loc_13A279B: VerifyVarObj
  loc_13A27A1: Set var_94 = var_94(var_94(Me.Txt))
  loc_13A27A7: LateIdStAd
  loc_13A27C3: Set var_D0 = Me.Txt
  loc_13A27C9: Call 0.Method_Form_Load0 (CInt(3), var_D8, var_E0)
  loc_13A27D1: var_94 = var_D8.Top
  loc_13A27E4: Set var_DC = Me.Txt
  loc_13A27EA: Call 0.Method_Form_Load0 (CInt(3), var_E4)
  loc_13A27FE: Set var_94 = var_94(var_D4)
  loc_13A2804:  = var_94.Top
  loc_13A2818: var_A4 = CVar((((var_D4 + var_E0) + var_E4.Height) + CDbl(&H1E))) 'Single
  loc_13A2827: (CVar(var_D4)).Top = 
  loc_13A2847: If (global_100 = 7) Then
  loc_13A285E:   var_B8 = "SELECT GF.Code, GF.Name + ' (' + cast(RO.FolioNo As Varchar) + ')' As Name , RO.FolioNo AS BookNo, RO.Vtype AS BookType, GF.CreditCardNo, GF.ExpiresOn, GF.CreditLimit, RO.ChkInDate AS BookingDate, RO.ChkInDate AS ArrDate, RO.ChkInTime AS Arrtime, 0 AS NoDays, 0 AS DepositeReq, 0 AS RoomRate, RO.RoomType, RO.RoomCat, RO.RoomNo, RO.DepDate, RO.DocId, RO.Vprefix FROM RoomOcc AS RO LEFT JOIN GuestProf AS GF ON RO.GuestProf = GF.Code Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_13A286E:   unk_51E0D8.Execute "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and ChkOutDate is null", var_C8, -1
  loc_13A287F:   Set global_56 = var_94
  loc_13A28A4:   Set var_94 = var_D8(2)
  loc_13A28B5:   Set var_D0 = Txt.DispID_69
  loc_13A28BB:   var_94 = var_D0.Item("Folio No.")
  loc_13A28C3:   var_D8.Caption = 
  loc_13A28D7: Else
  loc_13A28EB:   var_B8 = "SELECT GuestProf.Code, GuestProf.Name + ' (' + cast(Booking.BookNo As Varchar) + ')' As Name, Booking.BookNo,Booking.Vtype as BookType, GuestProf.CreditCardNo, GuestProf.ExpiresOn, GuestProf.CreditLimit, Booking.VDate as BookingDate, Booking.ArrDate,Booking.Arrtime, Booking.NoDays, Booking.DepositeReq, Booking.RoomRate,Booking.RoomType,Booking.RoomCat,Booking.Roomno,Booking.DepDate,Booking.DocId,Booking.Vprefix FROM GuestProf right Join Booking on Booking.GuestProf=GuestProf.COde where (Booking.LOGSITE_CODE='" & MemVar_1F92078
  loc_13A28F2:   var_CC = "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F92078 & "' or Booking.LOGSITE_CODE='HO') and booking.docid not in (select bookingdocid from guestfolio) And isnull(Booking.Cancel,'')<>'Y' ORDER BY Name"
  loc_13A28FB:   unk_51E0D8.Execute var_CC, var_C8, -1
  loc_13A290C:   Set global_56 = var_94
  loc_13A2921: End If
  loc_13A292A: CVarUnk
  loc_13A292F: VerifyVarObj
  loc_13A2935: Set var_94 = var_94(global_56)
  loc_13A293B: LateIdStAd
  loc_13A2957: Set var_D8 = Me.Txt
  loc_13A295D: Call 0.Method_Form_Load0 (CInt(3), var_DC)
  loc_13A297E: Call 0.Method_Form_Load0 (CInt(3), var_D0)
  loc_13A2992: var_A4 = CVar((var_D0.Top + var_DC.Height)) 'Single
  loc_13A29A1: Me.Txt(2).Top = 
  loc_13A29C7: Call 0.Method_Form_Load0 (CInt(3), var_D0)
  loc_13A29E0: Set var_D8 = (CVar(var_D0.Left))
  loc_13A29E6: var_D8.Left = 
  loc_13A2A08: var_B8 = "Select T.Type+t.RoomCat+space(5-len(T.RoomCat))+Code+space(5-len(Code)) as Code,T.Code As Name,RoomOcc.FolioNO From RoomMast T inner join RoomOcc on RoomOcc.RoomNo=T.Code where (RoomOcc.LOGSITE_CODE='" & MemVar_1F92078
  loc_13A2A0F: var_CC = "SELECT Code,Name FROM Employee where (LOGSITE_CODE='" & MemVar_1F92078 & "' or RoomOcc.LOGSITE_CODE='HO') and T.Type in ('RO') and RoomOcc.ChkoutDate is NULL Order By T.Code"
  loc_13A2A18: unk_51E0D8.Execute var_CC, var_C8, -1
  loc_13A2A47: CVarUnk
  loc_13A2A4C: VerifyVarObj
  loc_13A2A58: LateIdStAd
  loc_13A2A81: var_CC = "Select SubCode as Code,Name,CompanyType From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and CompanyType in ('Corporate','Travel Agency') Order By Name"
  loc_13A2A8A: unk_51E0D8.Execute var_CC, var_C8, -1
  loc_13A2AB9: CVarUnk
  loc_13A2ABE: VerifyVarObj
  loc_13A2ACA: LateIdStAd
  loc_13A2AFC: unk_51E0D8.Execute "Select NCUR,CreditCardInfoMandatory from enviro where LogSite_Code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_13A2B07: Set var_8C = var_94(var_94(Me.Txt))
  loc_13A2B26: var_94 = var_8C.Fields
  loc_13A2B36: var_C8 = CVar(var_94.Item("CreditCardInfoMandatory")) 'Address
  loc_13A2B50: If (Proc_6_38_E68A98(var_C8, var_94) = "Y") Then
  loc_13A2B59:   global_152 = "Y"
  loc_13A2B5D: End If
  loc_13A2B63: var_F0 = global_100
  loc_13A2B6F: If (var_F0 = 1) Then
  loc_13A2B7C:   If (CDbl(MemVar_1F920B8) = CDbl("1")) Then
  loc_13A2B9A:     var_CC = "SELECT Distinct RefDocid as SearchCode,Site_Code,LogSite_Code FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And VType In ('ARRES','ADRES')"
  loc_13A2BA3:     unk_51E0D8.Execute var_CC, var_C8, -1
  loc_13A2BB4:     Set global_52 = var_94
  loc_13A2BCC:   Else
  loc_13A2BE7:     var_110 = CVar("SELECT Distinct RefDocid as SearchCode,Site_Code,LogSite_Code FROM PayCharge Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And RefDocId Not In (Select Distinct Bookingdocid from guestfolio) And VType In ('ARRES','ADRES') And vdate=") 'String
  loc_13A2BF9:     var_94 = var_8C.Fields
  loc_13A2C10:     Proc_6_7_F25D88(var_100, CVar(var_94.Item("Ncur")), var_110, var_150, -1)
  loc_13A2C18:     var_120 = var_D8 & var_100 
  loc_13A2C2F:     unk_51E0D8.Execute CStr(var_120 & vbNullString), var_94, var_F0
  loc_13A2C40:     Set global_52 = var_D8
  loc_13A2C63:   End If
  loc_13A2C63: End If
  loc_13A2C68: Set var_8C = Nothing
  loc_13A2C77: Set var_94 = Me
  loc_13A2C80: var_B8 = "INI"
  loc_13A2C8E: Call Proc_43_48_103D7A0(Proc_5_1_100CB50(var_B8, var_94, global_52), var_94)
  loc_13A2C99: Call Proc_43_50_10A31A4(var_94)
  loc_13A2C9E: Call Proc_43_56_127254C()
  loc_13A2CA3: Call Proc_43_49_F05684()
  loc_13A2CA8: Call Proc_43_60_DFC1AC()
  loc_13A2CAD: Exit Sub
  loc_13A2CAE: ' Referenced from: 13A23F4
  loc_13A2CB6: Set var_94 = Err()
  loc_13A2CBC: Call 0.Method_arg_2C (var_B8)
  loc_13A2CDD: MsgBox(CVar(var_B8), &H40, "Information", var_110, var_120)
  loc_13A2CF0: Exit Sub
  loc_13A2CF1: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E82E50
  'Data Table: 51E0C8
  loc_E82DEB: Set global_68 = Nothing
  loc_E82DFD: Set global_52 = Nothing
  loc_E82E0F: Set global_56 = Nothing
  loc_E82E21: Set global_60 = Nothing
  loc_E82E33: Set global_80 = Nothing
  loc_E82E45: Set global_64 = Nothing
  loc_E82E4C: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'ED9B28
  'Data Table: 51E0C8
  Dim Cancel As Integer
  loc_ED9A9A: Set var_C8 = 1(1)
  loc_ED9AB7: Set var_E0 = ((CStr(Txt.DispID_41) <> vbNullString))
  loc_ED9AE3: If ( And (CStr(Txt.DispID_68030005) <> "Browse")) Then
  loc_ED9B15:   If (MsgBox("Exit without Saving Transaction?", &H121, var_F0, var_104, var_114) = 2) Then
  loc_ED9B1A:     Cancel = 1
  loc_ED9B1D:     Exit Sub
  loc_ED9B21:   Else
  loc_ED9B23:     Cancel = 0
  loc_ED9B26:   End If
  loc_ED9B26: End If
  loc_ED9B26: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EDC150
  'Data Table: 51E0C8
  Dim var_B4 As TextBox
  loc_EDC0C0: If ((OpenMode = 1) And (CLng(KeyCode) = &H1B)) Then
  loc_EDC0F4:   Set var_B4 = (( And (CBool(((CBool(().Visible) = 0)).Visible) = 0)))
  loc_EDC119:   If ( And (CBool(var_B4.Visible) = 0)) Then
  loc_EDC129:     Me.var_B4.Unload Me
  loc_EDC131:     Exit Sub
  loc_EDC132:   End If
  loc_EDC132: End If
  loc_EDC146: Proc_6_88_FE81B4(Me, KeyCode)
  loc_EDC14E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E0DEE0
  'Data Table: 51E0C8
  loc_E0DEC8: Call Proc_43_54_F6CE9C()
  loc_E0DECD: Call Proc_43_61_14EEC90()
  loc_E0DED8: Call Proc_43_57_12883D8(global_140)
  loc_E0DEDD: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F8ACA0
  'Data Table: 51E0C8
  Dim var_A8 As Variant
  Dim var_AC As Long
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_BC As TextBox
  loc_F8AB53: (False).Visible = 
  loc_F8AB61: var_AC = global_100
  loc_F8AB6D: If Not (var_AC = 1) Then
  loc_F8AB79:   If Not (var_AC = 2) Then
  loc_F8AB85:     If Not (var_AC = 3) Then
  loc_F8AB91:       If Not (var_AC = 6) Then
  loc_F8AB9D:         If (var_AC = 4) Then
  loc_F8ABA0:         End If
  loc_F8ABA0:       End If
  loc_F8ABA0:     End If
  loc_F8ABA0:   End If
  loc_F8ABB7:   If (Me.RecordCount > 0) Then
  loc_F8ABF6:     Set var_B8 = Me.Txt
  loc_F8ABFC:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_BC)
  loc_F8AC04:     var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F8AC37:     var_B4 = Me.Fields.Item("Code")
  loc_F8AC56:     Set var_B8 = Me.Txt
  loc_F8AC5C:     Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_BC)
  loc_F8AC64:     var_BC.Tag = CStr(var_B4.Value)
  loc_F8AC7A:   End If
  loc_F8AC85:   Set var_A8 = Me.Txt
  loc_F8AC8B:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(5), var_B4)
  loc_F8AC93:   var_B4.SetFocus
  loc_F8AC9F: End If
  loc_F8AC9F: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBE684
  'Data Table: 51E0C8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EBE5FA: On Error Goto loc_EBE63F
  loc_EBE603: Me.MoveFirst
  loc_EBE61D: var_8C = "Searchcode='" & MyValue
  loc_EBE62D: Me.Find var_8C & "'", 0, 1
  loc_EBE639: Call Proc_43_51_17ACC48(var_A0)
  loc_EBE63E: Exit Sub
  loc_EBE63F: ' Referenced from: EBE5FA
  loc_EBE647: Set var_A4 = Err()
  loc_EBE64D: Call 0.Method_arg_2C (var_8C)
  loc_EBE66E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EBE681: Exit Sub
  loc_EBE682: Exit Sub
End Sub

Public Property Get OpenMode() 'E02980
  'Data Table: 51E0C8
  loc_E02979: OpenMode = global_96
End Sub

Public Property Let OpenMode(vNewValue) 'E00410
  'Data Table: 51E0C8
  loc_E0040A: global_96 = vNewValue
  loc_E0040D: Exit Sub
End Sub

Public Property Get OpenType() 'E03340
  'Data Table: 51E0C8
  loc_E03339: OpenType = global_100
End Sub

Public Property Let OpenType(vNewValue) 'E00758
  'Data Table: 51E0C8
  loc_E00752: global_100 = vNewValue
  loc_E00755: Exit Sub
End Sub

Public Property Get AdvType() 'E0D03C
  'Data Table: 51E0C8
  loc_E0D030: var_88 = global_108
  loc_E0D033: AdvType = 
End Sub

Public Property Let AdvType(vNewValue) 'E0E47C
  'Data Table: 51E0C8
  loc_E0E474: global_108 = vNewValue
  loc_E0E478: Exit Sub
End Sub

Public Property Get IdNo() 'E0E3A4
  'Data Table: 51E0C8
  loc_E0E398: var_88 = global_104
  loc_E0E39B: IdNo = 
End Sub

Public Property Let IdNo(vNewValue) 'E110EC
  'Data Table: 51E0C8
  loc_E110E4: global_104 = vNewValue
  loc_E110E8: Exit Sub
End Sub

Public Property Get PersonCode() 'E1051C
  'Data Table: 51E0C8
  loc_E10510: var_88 = global_116
  loc_E10513: PersonCode = 
End Sub

Public Property Let PersonCode(vNewValue) 'E1048C
  'Data Table: 51E0C8
  loc_E10484: global_116 = vNewValue
  loc_E10488: Exit Sub
End Sub

Public Property Get pDocId() 'E0D474
  'Data Table: 51E0C8
  loc_E0D468: var_88 = global_112
  loc_E0D46B: pDocId = 
End Sub

Public Property Let pDocId(vNewValue) 'E10294
  'Data Table: 51E0C8
  loc_E1028C: global_112 = vNewValue
  loc_E10290: Exit Sub
End Sub

Public Property Get PTableOrRoomNo() 'E102DC
  'Data Table: 51E0C8
  loc_E102D0: var_88 = global_120
  loc_E102D3: PTableOrRoomNo = 
End Sub

Public Property Let PTableOrRoomNo(vNewValue) 'E0FCAC
  'Data Table: 51E0C8
  loc_E0FCA4: global_120 = vNewValue
  loc_E0FCA8: Exit Sub
End Sub

Public Property Get PBillAmt() 'E0D27C
  'Data Table: 51E0C8
  loc_E0D272: var_88 = CStr(global_124)
  loc_E0D275: PBillAmt = 
End Sub

Public Property Let PBillAmt(vNewValue) 'E0CFF4
  'Data Table: 51E0C8
  loc_E0CFEE: global_124 = CDbl(vNewValue)
  loc_E0CFF1: Exit Sub
End Sub

Public Property Get RstParty() 'E0F04C
  'Data Table: 51E0C8
  loc_E0F043: Set var_88 = global_56
  loc_E0F046: RstParty = 
End Sub

Public Property Set RstParty(PRst, MyValue) 'E5DFB0
  'Data Table: 51E0C8
  loc_E5DF8F: CVarUnk
  loc_E5DF94: VerifyVarObj
  loc_E5DF9A: Set var_8C = (PRst)
  loc_E5DFA0: LateIdStAd
  loc_E5DFAE: Exit Sub
End Sub

Public Sub Proc_43_48_103D7A0(arg_C) '103D7A0
  'Data Table: 51E0C8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_103D54A: Set var_8C = Me.Txt
  loc_103D550: Call 0.Method_Proc_43_48_103D7A08 (var_8E, var_86)
  loc_103D55D: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_103D573:   Set var_8C = Me.Txt
  loc_103D579:   Call 0.Method_Proc_43_48_103D7A00 (CInt(var_86), var_98)
  loc_103D581:   var_98.Enabled = arg_C
  loc_103D590: Next var_92 'Byte
  loc_103D5A9: (Not(arg_C)).Enabled = 
  loc_103D5C1: (arg_C).Enabled = 
  loc_103D5D6: Set var_8C = Me.Txt
  loc_103D5DC: Call 0.Method_Proc_43_48_103D7A00 (CInt(0), var_98)
  loc_103D5E4: var_98.Enabled = False
  loc_103D5FD: Set var_8C = Me.Txt
  loc_103D603: Call 0.Method_Proc_43_48_103D7A00 (CInt(1), var_98)
  loc_103D60B: var_98.Enabled = False
  loc_103D624: Set var_8C = Me.Txt
  loc_103D62A: Call 0.Method_Proc_43_48_103D7A00 (CInt(2), var_98)
  loc_103D632: var_98.Enabled = False
  loc_103D64B: Set var_8C = Me.Txt
  loc_103D651: Call 0.Method_Proc_43_48_103D7A00 (CInt(&H10), var_98)
  loc_103D659: var_98.Enabled = False
  loc_103D672: Set var_8C = Me.Txt
  loc_103D678: Call 0.Method_Proc_43_48_103D7A00 (CInt(&H1D), var_98)
  loc_103D680: var_98.Enabled = False
  loc_103D699: Set var_8C = Me.Txt
  loc_103D69F: Call 0.Method_Proc_43_48_103D7A00 (CInt(8), var_98)
  loc_103D6A7: var_98.Enabled = False
  loc_103D6C0: Set var_8C = Me.Txt
  loc_103D6C6: Call 0.Method_Proc_43_48_103D7A00 (CInt(9), var_98)
  loc_103D6CE: var_98.Enabled = False
  loc_103D6E7: Set var_8C = Me.Txt
  loc_103D6ED: Call 0.Method_Proc_43_48_103D7A00 (CInt(&HA), var_98)
  loc_103D6F5: var_98.Enabled = False
  loc_103D70E: Set var_8C = Me.Txt
  loc_103D714: Call 0.Method_Proc_43_48_103D7A00 (CInt(&HB), var_98)
  loc_103D71C: var_98.Enabled = False
  loc_103D735: Set var_8C = Me.Txt
  loc_103D73B: Call 0.Method_Proc_43_48_103D7A00 (CInt(&HC), var_98)
  loc_103D743: var_98.Enabled = False
  loc_103D75C: Set var_8C = Me.Txt
  loc_103D762: Call 0.Method_Proc_43_48_103D7A00 (CInt(&HD), var_98)
  loc_103D76A: var_98.Enabled = False
  loc_103D783: Set var_8C = Me.Txt
  loc_103D789: Call 0.Method_Proc_43_48_103D7A00 (CInt(7), var_98)
  loc_103D791: var_98.Enabled = False
  loc_103D79D: Exit Sub
End Sub

Public Sub Proc_43_49_F05684
  'Data Table: 51E0C8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F055A6: Set var_8C = Me.Txt
  loc_F055AC: Call 0.Method_Proc_43_49_F056848 (var_8E, var_86)
  loc_F055B9: For var_92 =  To CByte(var_8E): CByte(0) = var_92 'Byte
  loc_F055CF:   Set var_8C = Me.Txt
  loc_F055D5:   Call 0.Method_Proc_43_49_F056840 (CInt(var_86), var_98)
  loc_F055DD:   var_98.Text = vbNullString
  loc_F055F9:   Set var_8C = Me.Txt
  loc_F055FF:   Call 0.Method_Proc_43_49_F056840 (CInt(var_86), var_98)
  loc_F05607:   var_98.Tag = vbNullString
  loc_F05616: Next var_92 'Byte
  loc_F05628: (0).Value = 
  loc_F0563D: Set var_8C = (1)
  loc_F05673: Set var_8C = Txt.DispID_4("1").Name(1)
  loc_F05681: Exit Sub
End Sub

Public Sub Proc_43_50_10A31A4
  'Data Table: 51E0C8
  Dim var_8C As Long
  Dim var_A8 As Variant
  loc_10A2ED3: var_88 = OpenType
  loc_10A2EDB: var_8C = var_88
  loc_10A2EE7: If (var_8C = 1) Then
  loc_10A2EF7:    = var_8C(var_98).Height
  loc_10A2F09:    = (var_88).Top
  loc_10A2F1A:   var_A8 = CVar(((var_88 + var_98) + CDbl(950))) 'Single
  loc_10A2F29:   (var_A8).Top = 
  loc_10A2F37: End If
  loc_10A2F4A: (CVar(CDbl(2200))).Left = 
  loc_10A2F61: (CDbl(1100)).Top = 
  loc_10A2F78: (CDbl(2000)).Left = 
  loc_10A2F8F: (CDbl(3700)).Top = 
  loc_10A2FA6: (CDbl(2175)).Left = 
  loc_10A2FBD: (CDbl(3700)).Top = 
  loc_10A2FD4: (CDbl(2175)).Left = 
  loc_10A2FEB: (CDbl(3700)).Top = 
  loc_10A3002: (CDbl(2175)).Left = 
  loc_10A3019: (CDbl(3700)).Top = 
  loc_10A3030: (CDbl(2175)).Left = 
  loc_10A3047: (CDbl(3700)).Top = 
  loc_10A305E: (CDbl(2175)).Left = 
  loc_10A3075: Me.FrTxnNo.Top = CDbl(3700)
  loc_10A308C: Me.FrTxnNo.Left = CDbl(2175)
  loc_10A30A7: (CVar(CDbl(585))).Top = 
  loc_10A30C2: (CVar(CDbl(1350))).Left = 
  loc_10A30DD: (CVar(CDbl(3950))).Top = 
  loc_10A30F8: (CVar(CDbl(3200))).Left = 
  loc_10A3113: (CVar(CDbl(465))).Top = 
  loc_10A312E: (CVar(CDbl(1350))).Left = 
  loc_10A3149: (CVar(CDbl(2460))).Top = 
  loc_10A3164: (CVar(CDbl(1335))).Left = 
  loc_10A317F: (CVar(CDbl(2350))).Top = 
  loc_10A319A: (CVar(CDbl(3675))).Left = 
  loc_10A31A2: Exit Sub
End Sub

Public Sub Proc_43_51_17ACC48
  'Data Table: 51E0C8
  Dim Me As Variant
  Dim var_16C As Variant
  Dim var_AC As String
  Dim var_13C As Variant
  Dim var_F8 As Variant
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_51E0D8 As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Fields15
  Dim var_FC As Field20
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_180 As Long
  Dim var_B8 As String
  Dim var_B0 As Variant
  Dim var_184 As String
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_10C As Variant
  Dim var_A8 As Variant
  Dim var_1EC As Variant
  Dim var_1F0 As Long
  Dim var_20C As TextBox
  Dim var_8C As Recordset15
  Dim var_8E As Integer
  loc_17AACE0: On Error Goto loc_17ACC04
  loc_17AACE3: Call Proc_43_56_127254C()
  loc_17AACEE: Proc_183_45_E5C118(global_52)
  loc_17AAD12: Set var_98 = ((Me.RecordCount <= 0))
  loc_17AAD59: Set var_B0 = Me.Txt
  loc_17AAD5F: Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1D), var_B4, var_B8, "Select count(*) from PayCharge where RefDocid='", var_E0, -1)
  loc_17AAD70: var_BC = var_E8 & var_B8
  loc_17AAD80: unk_51E0D8.Execute var_BC & "' And VType In ('ARRES','ADRES')", 0, var_FC
  loc_17AAD90:  = var_E8.Item((CStr(Txt.DispID_68030005) = "Add"))
  loc_17AAD98:  = var_FC.Value
  loc_17AADAA: var_14C =  And (var_B4.Text.Fields > 0)
  loc_17AADDF: If CBool( And Not var_14C) Then
  loc_17AADE2:   Call Proc_43_49_F05684()
  loc_17AADEA: Else
  loc_17AADF0:   var_180 = global_100
  loc_17AADFC:   If (var_180 = 1) Then
  loc_17AAE03:     Set var_98 = (var_180)
  loc_17AAE22:     If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_17AAE39:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VTYPE,ST.VPREFIX,ST.VTIME,ST.BillAmount,ST.SNo,ST.BatchNo ,ST.GuestProf,ST.DbtChkIn ,GP.Name + ' (' + cast(B.BookNo As Varchar) + ')' AS GPName, ST.EmpCode,E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, CASE When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr END Amount, CASE When ST.AmtCr<>0 Then 'Cr' Else 'Dr' END AmtType, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo,R.Name AS RoomName, ST.FolioNo, ST.CardNo AS cARD_nO, ST.CardHolder, ST.ChqNo,ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode, B.CardNo, B.vDate as BookingDate,B.ArrDate, B.ArrTime, B.NoDays, B.RoomRate, B.DepositeReq,ST.RefNo,ST.RefDocID,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.TaxStru,T.Name As TaxStruName FROM " & "((((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode=E.Code) LEFT JOIN RevMast AS P ON ST.PayCode=P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat=R.RoomCat) AND (ST.RoomType=R.Type) AND (ST.RoomNo=R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode) LEFT JOIN Booking B ON (ST.RefDocId = B.DocID) "
  loc_17AAE47:       var_C0 = CStr(Txt.DispID_68030005) & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)" & " where ST.RefDocId='"
  loc_17AAE58:       Set var_98 = Me.Txt
  loc_17AAE5E:       Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1D), var_B0, var_BC, var_C0)
  loc_17AAE66:       var_A8 = var_B0.Text
  loc_17AAE6F:       var_184 = -1 & var_BC
  loc_17AAE7F:       unk_51E0D8.Execute var_184 & "' And ST.VType In ('ARRES','ADRES') Order By ST.Vdate,ST.VNo,ST.SNo", var_B4, 
  loc_17AAE8A:       Set var_88 = var_B4
  loc_17AAEAB:     Else
  loc_17AAEBF:       var_AC = "SELECT ST.DOCID,ST.VNO,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.VDATE,ST.VTYPE,ST.VPREFIX,ST.VTIME,ST.BillAmount,ST.SNo,ST.BatchNo, ST.GuestProf,ST.DbtChkIn, GP.Name + ' (' + cast(B.BookNo As Varchar) + ')' AS GPName, ST.EmpCode,E.Name AS EmpName, ST.Comments, ST.PayCode, P.Name AS PayName,ST.PayType, CASE When ST.AmtCr<>0 Then ST.AmtCr Else ST.AmtDr END Amount, CASE When ST.AmtCr<>0 Then 'Cr' Else 'Dr' END AmtType, ST.TipAmt, ST.RoomCat,ST.RoomType,ST.RoomNo,R.Name AS RoomName, ST.FolioNo, ST.CardNo AS cARD_nO, ST.CardHolder, ST.ChqNo,ST.ChqDate, ST.TxnNo, ST.ExpDate,CC.Name as CompName,CompCode, B.CardNo, B.vDate as BookingDate,B.ArrDate, B.ArrTime, B.NoDays, B.RoomRate, B.DepositeReq,ST.RefNo,ST.RefDocID,ST.U_AE,ST.U_Name,ST.U_EntDt,ST.TaxStru,T.Name As TaxStruName FROM " & "((((((PayCharge AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode) "
  loc_17AAECD:       var_E0 = CVar(CStr(Txt.DispID_68030005) & " LEFT JOIN (Select Distinct Code,Name From TaxStru) AS T ON ST.TaxStru = T.Code)" & "LEFT JOIN Booking B ON (ST.RefDocId = B.DocId) where ST.RefDocId='") 'String
  loc_17AAF06:       var_12C = var_E0 & Me.Fields.Item("SearchCode").Value & "' And ST.VType In ('ARRES','ADRES') Order By ST.Vdate,ST.VNo,ST.SNo" 
  loc_17AAF14:       unk_51E0D8.Execute CStr(var_12C), var_14C, -1
  loc_17AAF1F:       Set var_88 = var_B4
  loc_17AAF41:     End If
  loc_17AAF41:   End If
  loc_17AAF81:   var_B4 = Me.Recordset15.Fields
  loc_17AAFEA:   var_17C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_B4.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_17AB032:   (CStr(var_B4 & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_Name")), var_17C)))).Caption = 
  loc_17AB0B2:   var_E4 = Me.Recordset15.Fields.Item("U_AE")
  loc_17AB0BA:   var_E0 = CVar(var_E4) 'Address
  loc_17AB0CB:   var_12C = "entdt :   "
  loc_17AB113:   var_17C = IIf((Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(var_E0) = "E"), "Last Update :   ", var_12C))
  loc_17AB15B:   (CStr(var_17C & CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("U_EntDt")))))).Caption = 
  loc_17AB1CF:   Set var_B4 = Me.Txt
  loc_17AB1D5:   Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1D), var_E4)
  loc_17AB1DD:   var_E4.Text = CStr(Me.Recordset15.Fields.Item("RefDocId").Value)
  loc_17AB22C:   Set var_B4 = Me.Txt
  loc_17AB232:   Call 0.Method_Proc_43_51_17ACC480 (CInt(3), var_E4)
  loc_17AB23A:   var_E4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("GPName")))
  loc_17AB28A:   Set var_B4 = Me.Txt
  loc_17AB290:   Call 0.Method_Proc_43_51_17ACC480 (CInt(3), var_E4)
  loc_17AB298:   var_E4.Tag = CStr(Me.Recordset15.Fields.Item("GuestProf").Value)
  loc_17AB2B2:   Set var_98 = ()
  loc_17AB2D1:   If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_17AB2D4:     GoTo loc_17AB55D
  loc_17AB2D7:   End If
  loc_17AB313:   Set var_B4 = Me.Txt
  loc_17AB319:   Call 0.Method_Proc_43_51_17ACC480 (CInt(&H17), var_E4)
  loc_17AB321:   var_E4.Text = CStr(Me.Recordset15.Fields.Item("Comments").Value)
  loc_17AB370:   Set var_B4 = Me.Txt
  loc_17AB376:   Call 0.Method_Proc_43_51_17ACC480 (CInt(5), var_E4)
  loc_17AB37E:   var_E4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayType")))
  loc_17AB3C4:   Call Proc_43_57_12883D8(CStr(Me.Recordset15.Fields.Item("PayType").Value))
  loc_17AB412:   Set var_B4 = Me.Txt
  loc_17AB418:   Call 0.Method_Proc_43_51_17ACC480 (CInt(5), var_E4)
  loc_17AB420:   var_E4.Tag = CStr(Me.Recordset15.Fields.Item("PayCode").Value)
  loc_17AB458:   var_A8 = CVar(Me.Recordset15.Fields.Item("Amount")) 'Address
  loc_17AB45F:   Proc_6_39_E7C810(var_E0)
  loc_17AB476:   Set var_B4 = Me.Txt
  loc_17AB47C:   Call 0.Method_Proc_43_51_17ACC480 (CInt(6), var_E4)
  loc_17AB484:   var_E4.Text = CStr(var_E0)
  loc_17AB4D5:   Set var_B4 = Me.Txt
  loc_17AB4DB:   Call 0.Method_Proc_43_51_17ACC480 (CInt(&H12), var_E4)
  loc_17AB4E3:   var_E4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Card_No")))
  loc_17AB520:   Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("RefNo")))
  loc_17AB537:   Set var_B4 = Me.Txt
  loc_17AB53D:   Call 0.Method_Proc_43_51_17ACC480 (CInt(&HF), var_E4)
  loc_17AB545:   var_E4.Text = CStr(var_E0)
  loc_17AB55D:   ' Referenced from:   17AB2D4
  loc_17AB563:   var_1F0 = global_100
  loc_17AB56F:   If (var_1F0 = 1) Then
  loc_17AB5AB:     Set var_B4 = Me.Txt
  loc_17AB5B1:     Call 0.Method_Proc_43_51_17ACC480 (CInt(8), var_E4)
  loc_17AB5B9:     var_E4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Bookingdate")), var_1F0)
  loc_17AB606:     Set var_B4 = Me.Txt
  loc_17AB60C:     Call 0.Method_Proc_43_51_17ACC480 (CInt(9), var_E4)
  loc_17AB614:     var_E4.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ArrDate")))
  loc_17AB651:     Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("RoomRate")))
  loc_17AB668:     Set var_B4 = Me.Txt
  loc_17AB66E:     Call 0.Method_Proc_43_51_17ACC480 (CInt(&HD), var_E4)
  loc_17AB676:     var_E4.Text = CStr(var_E0)
  loc_17AB6CA:     If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ArrDate"))) <> vbNullString) Then
  loc_17AB715:       var_E4 = Me.Recordset15.Fields.Item("ArrTime")
  loc_17AB71D:       var_E0 = CVar(var_E4) 'Address
  loc_17AB74B:       var_10C = CVar(Me.Recordset15.Fields.Item("NoDays")) 'Address
  loc_17AB752:       Proc_6_39_E7C810(var_12C, var_10C)
  loc_17AB75C:       var_BC = 0
  loc_17AB78F:       var_210 = Proc_6_121_1428EEC(CDate(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ArrDate")))), Proc_6_38_E68A98(var_E0), CSng(var_12C))
  loc_17AB7A0:       var_15C = Left(CVar(var_210), &HB)
  loc_17AB7B7:       Set var_1EC = Me.Txt
  loc_17AB7BD:       Call 0.Method_Proc_43_51_17ACC480 (CInt(&HA), var_20C, CStr(var_15C))
  loc_17AB7C5:       var_20C.Text = 0
  loc_17AB7F7:     End If
  loc_17AB811:     var_B0 = Me.Recordset15.Fields.Item("DepositeReq")
  loc_17AB819:     var_A8 = CVar(var_B0) 'Address
  loc_17AB820:     Proc_6_39_E7C810(var_E0, var_A8)
  loc_17AB837:     Set var_B4 = Me.Txt
  loc_17AB83D:     Call 0.Method_Proc_43_51_17ACC480 (CInt(&HB), var_E4, CStr(var_E0))
  loc_17AB845:     var_E4.Text = var_BC
  loc_17AB861:     Set var_98 = (var_A8)
  loc_17AB86F:     var_AC = CStr(Txt.DispID_68030005)
  loc_17AB880:     If (var_AC = "Add") Then
  loc_17AB8AD:       Set var_98 = Me.Txt
  loc_17AB8B3:       Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1D), var_B0, var_AC, "Select sum(AmtCr) from PayCharge where RefDocid='", var_A8)
  loc_17AB8BB:       -1 = var_B0.Text
  loc_17AB8D4:       unk_51E0D8.Execute var_B4 & var_AC & "' And VType In ('ARRES','ADRES')", var_E4, 0
  loc_17AB8DC:       var_E8 = var_B4.Fields
  loc_17AB8E4:        = var_E4.Item()
  loc_17AB8EC:       var_E0 = CVar(var_E8) 'Address
  loc_17AB8F3:       Proc_6_39_E7C810(var_10C)
  loc_17AB90A:       Set var_FC = Me.Txt
  loc_17AB910:       Call 0.Method_Proc_43_51_17ACC480 (CInt(&HC), var_1EC)
  loc_17AB918:       var_1EC.Text = CStr(var_10C)
  loc_17AB943:     Else
  loc_17AB946:       var_16C = 0
  loc_17AB98E:       var_E0 = "Select sum(AmtCr) from PayCharge where RefDocid='" & Me.Fields.Item("SearchCode").Value 
  loc_17AB9A5:       unk_51E0D8.Execute CStr(var_E0 & "' And VType In ('ARRES','ADRES')"), var_12C, -1
  loc_17AB9AD:       var_B4 = var_B4.Fields
  loc_17AB9B5:       var_16C = var_E4.Item(var_E4)
  loc_17AB9C4:       Proc_6_39_E7C810(var_15C, CVar(var_E8))
  loc_17AB9DB:       Set var_FC = Me.Txt
  loc_17AB9E1:       Call 0.Method_Proc_43_51_17ACC480 (CInt(&HC), var_1EC, CStr(var_15C))
  loc_17AB9E9:       var_1EC.Text = var_E8
  loc_17ABA13:     End If
  loc_17ABA2D:     var_B0 = Me.Recordset15.Fields.Item("RoomNo")
  loc_17ABA3E:     var_AC = Proc_6_38_E68A98(CVar(var_B0))
  loc_17ABA4C:     Set var_B4 = Me.Txt
  loc_17ABA52:     Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1B), var_E4)
  loc_17ABA5A:     var_E4.Text = var_AC
  loc_17ABA6E:   End If
  loc_17ABA8C:   Set var_98 = Me.Txt
  loc_17ABA92:   Call 0.Method_Proc_43_51_17ACC480 (CInt(&H1D), var_B0, var_AC, "Select Guarantee From Booking Where Docid='")
  loc_17ABA9A:   var_A8 = var_B0.Text
  loc_17ABAA3:   var_B8 = -1 & var_AC
  loc_17ABAB3:   unk_51E0D8.Execute CStr(var_15C) & "'", var_B4, var_E0
  loc_17ABABE:   Set var_8C = var_B4
  loc_17ABAEA:   If (var_8C.RecordCount > 0) Then
  loc_17ABB26:     Set var_B4 = Me.Txt
  loc_17ABB2C:     Call 0.Method_Proc_43_51_17ACC480 (CInt(7), var_E4)
  loc_17ABB34:     var_E4.Text = CStr(var_8C.Fields.Item(0).Value)
  loc_17ABB4A:   End If
  loc_17ABB53:   Set var_98 = (False)
  loc_17ABB6E:   Set var_98 = Txt.DispID_19(1)
  loc_17ABB7E:   var_8E = 1
  loc_17ABB98:   If (Me.Recordset15.RecordCount > 0) Then
  loc_17ABB9B:     ' Referenced from:   17ACAFD
  loc_17ABBAD:     If Not(Me.Recordset15.EOF) Then
  loc_17ABBCF:       Set var_218 = Txt.DispID_4(var_8E(vbNullString).Name)
  loc_17ABBD6:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17ABBDE:       var_11C = CVar(CLng(0)) 'Long
  loc_17ABBE8:       var_A8 = CVar(CStr(var_8E)) 'String
  loc_17ABBEF:       LateIdCallSt
  loc_17ABBFE:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABC06:       var_13C = CVar(CLng(&H20)) 'Long
  loc_17ABC39:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("DocID").Value)) 'String
  loc_17ABC40:       LateIdCallSt
  loc_17ABC5A:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABC62:       var_13C = CVar(CLng(&H1F)) 'Long
  loc_17ABC95:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("VNo").Value)) 'String
  loc_17ABC9C:       LateIdCallSt
  loc_17ABCB6:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABCBE:       var_13C = CVar(CLng(&H21)) 'Long
  loc_17ABCF1:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("vType").Value)) 'String
  loc_17ABCF8:       LateIdCallSt
  loc_17ABD12:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABD1A:       var_13C = CVar(CLng(&H22)) 'Long
  loc_17ABD4D:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("SNo").Value)) 'String
  loc_17ABD54:       LateIdCallSt
  loc_17ABD8D:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17ABD95:       var_16C = CVar(CLng(&H1C)) 'Long
  loc_17ABDC2:       var_12C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("VDate")), "dd/MMM/yyyy"))) 'String
  loc_17ABDC9:       LateIdCallSt
  loc_17ABE02:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17ABE0A:       var_16C = CVar(CLng(&H1D)) 'Long
  loc_17ABE30:       var_10C = CVar(Format$(CVar(Me.Recordset15.Fields.Item("VTIME")), "HH:mm")) 'String
  loc_17ABE37:       LateIdCallSt
  loc_17ABE4F:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABE57:       var_13C = CVar(CLng(&H1E)) 'Long
  loc_17ABE8A:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("vPrefix").Value)) 'String
  loc_17ABE91:       LateIdCallSt
  loc_17ABEAB:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABEB3:       var_13C = CVar(CLng(2)) 'Long
  loc_17ABEE6:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("PayType").Value)) 'String
  loc_17ABEED:       LateIdCallSt
  loc_17ABF07:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ABF0F:       var_13C = CVar(CLng(1)) 'Long
  loc_17ABF42:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("PayCode").Value)) 'String
  loc_17ABF49:       LateIdCallSt
  loc_17ABF9B:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PayName")), CVar(CLng(3)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(3)), CVar(CLng(var_8E)))) 'String
  loc_17ABFA2:       LateIdCallSt
  loc_17ABFF0:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TaxStru")), CVar(CLng(&HA)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17ABFF7:       LateIdCallSt
  loc_17AC045:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TaxStruName")), CVar(CLng(9)), CVar(CLng(var_8E)), var_218, var_E0)) 'String
  loc_17AC04C:       LateIdCallSt
  loc_17AC062:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC06A:       var_13C = CVar(CLng(4)) 'Long
  loc_17AC09D:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("RoomCat").Value)) 'String
  loc_17AC0A4:       LateIdCallSt
  loc_17AC0BE:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC0C6:       var_13C = CVar(CLng(5)) 'Long
  loc_17AC0F9:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Roomtype").Value)) 'String
  loc_17AC100:       LateIdCallSt
  loc_17AC11A:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC122:       var_13C = CVar(CLng(6)) 'Long
  loc_17AC155:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("RoomNo").Value)) 'String
  loc_17AC15C:       LateIdCallSt
  loc_17AC1AE:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomName")), CVar(CLng(7)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(7)), CVar(CLng(var_8E)))) 'String
  loc_17AC1B5:       LateIdCallSt
  loc_17AC1EA:       var_11C = CVar(CLng(var_8E)) 'Long
  loc_17AC1F2:       var_16C = CVar(CLng(8)) 'Long
  loc_17AC21F:       var_12C = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("Amount")), "0.00"))) 'String
  loc_17AC226:       LateIdCallSt
  loc_17AC240:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC248:       var_13C = CVar(CLng(&HB)) 'Long
  loc_17AC27B:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Card_No").Value)) 'String
  loc_17AC282:       LateIdCallSt
  loc_17AC29C:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC2A4:       var_13C = CVar(CLng(&HC)) 'Long
  loc_17AC2D7:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("CardHolder").Value)) 'String
  loc_17AC2DE:       LateIdCallSt
  loc_17AC330:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ExpDate")), CVar(CLng(&HD)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&HD)), CVar(CLng(var_8E)))) 'String
  loc_17AC337:       LateIdCallSt
  loc_17AC34D:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC355:       var_13C = CVar(CLng(&HE)) 'Long
  loc_17AC388:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("ChqNo").Value)) 'String
  loc_17AC38F:       LateIdCallSt
  loc_17AC3A9:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC3B1:       var_13C = CVar(CLng(&H1A)) 'Long
  loc_17AC3E4:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("BatchNo").Value)) 'String
  loc_17AC3EB:       LateIdCallSt
  loc_17AC43D:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("ChqDate")), CVar(CLng(&HF)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&HF)), CVar(CLng(var_8E)))) 'String
  loc_17AC444:       LateIdCallSt
  loc_17AC492:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("TxnNo")), CVar(CLng(&H24)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17AC499:       LateIdCallSt
  loc_17AC4AF:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC4B7:       var_13C = CVar(CLng(&H10)) 'Long
  loc_17AC4EA:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("Comments").Value)) 'String
  loc_17AC4F1:       LateIdCallSt
  loc_17AC543:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("EmpName")), CVar(CLng(&H11)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&H11)), CVar(CLng(var_8E)))) 'String
  loc_17AC54A:       LateIdCallSt
  loc_17AC560:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC568:       var_13C = CVar(CLng(&H12)) 'Long
  loc_17AC59B:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("EmpCode").Value)) 'String
  loc_17AC5A2:       LateIdCallSt
  loc_17AC5F4:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompCode")), CVar(CLng(&H16)), CVar(CLng(var_8E)), var_218, var_E0, CVar(CLng(&H16)), CVar(CLng(var_8E)))) 'String
  loc_17AC5FB:       LateIdCallSt
  loc_17AC649:       var_E0 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("CompName")), CVar(CLng(&H17)), CVar(CLng(var_8E)), var_218, var_E0, var_218)) 'String
  loc_17AC650:       LateIdCallSt
  loc_17AC666:       var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AC66E:       var_11C = CVar(CLng(&H21)) 'Long
  loc_17AC68F:       If (CStr(Txt.DispID_41) = "ADRES") Then
  loc_17AC696:         var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AC69E:         var_11C = CVar(CLng(&H23)) 'Long
  loc_17AC6A3:         var_16C = "Advance"
  loc_17AC6AC:         LateIdCallSt
  loc_17AC6B7:       Else
  loc_17AC6BB:         var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AC6C3:         var_11C = CVar(CLng(&H21)) 'Long
  loc_17AC6E4:         If (CStr(Txt.DispID_41) = "ARRES") Then
  loc_17AC6EB:           var_D0 = CVar(CLng(var_8E)) 'Long
  loc_17AC6F3:           var_11C = CVar(CLng(&H23)) 'Long
  loc_17AC6F8:           var_16C = "Refund"
  loc_17AC701:           LateIdCallSt
  loc_17AC709:         End If
  loc_17AC709:       End If
  loc_17AC748:       If (Me.Recordset15.Fields.Item("PayType").Value = "Company") Then
  loc_17AC77D:         var_E0 = "Code='" & Me.Recordset15.Fields.Item("CompCode").Value 
  loc_17AC781:         var_11C = "'"
  loc_17AC791:         Me.Filter = var_E0 & var_11C
  loc_17AC7BD:         If (Me.RecordCount > 0) Then
  loc_17AC7FF:           If (Me.Fields.Item("CompanyType").Value = "Travel Agency") Then
  loc_17AC80E:             var_218(&HFF).Visible = var_16C
  loc_17AC819:             var_D0 = "DbtChkIn"
  loc_17AC852:             If (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_D0)), var_11C, var_D0, var_11C, var_D0) = "Yes") Then
  loc_17AC861:               var_218(1).Value = var_16C
  loc_17AC869:             End If
  loc_17AC86C:           Else
  loc_17AC878:             var_11C(0).Visible = var_D0
  loc_17AC880:           End If
  loc_17AC880:         End If
  loc_17AC88F:         Me.Filter = 0
  loc_17AC89F:         Me.Requery -1
  loc_17AC8A4:       End If
  loc_17AC8A8:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC8B0:       var_13C = CVar(CLng(&H18)) 'Long
  loc_17AC8DE:       Proc_6_39_E7C810(var_E0, CVar(Me.Recordset15.Fields.Item("FolioNo")))
  loc_17AC8E7:       var_10C = CVar(CStr(var_E0)) 'String
  loc_17AC8EE:       LateIdCallSt
  loc_17AC906:       var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17AC90E:       var_13C = CVar(CLng(&H13)) 'Long
  loc_17AC941:       var_E0 = CVar(CStr(Me.Recordset15.Fields.Item("TipAmt").Value)) 'String
  loc_17AC948:       LateIdCallSt
  loc_17AC96B:       var_F8 = "SELECT P.RoomType+P.RoomCat+SPACE(5-LEN(P.RoomCat))+P.RoomNo+SPACE(5-LEN(P.RoomNo)),code FROM PayCharge AS P LEFT JOIN RoomMast AS R ON (P.RoomNo = R.Code) AND (P.RoomCat = R.RoomCat) AND (P.RoomType = R.Type) Where DocId='"
  loc_17AC9A6:       var_10C = var_F8 & Me.Recordset15.Fields.Item("DocID").Value & "' And SNo=" 
  loc_17AC9CF:       var_12C = Me.Recordset15.Fields.Item("SNo").Value
  loc_17AC9E5:       unk_51E0D8.Execute CStr(var_10C & var_12C), var_15C, -1
  loc_17AC9F0:       Set var_8C = var_E8
  loc_17ACA26:       If (var_8C.RecordCount > 0) Then
  loc_17ACA69:         var_E0 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(0).Value, CVar(CLng(&H14)), CVar(CLng(var_8E)), var_E8, var_218, var_E0)) 'String
  loc_17ACA70:         LateIdCallSt
  loc_17ACA8A:         var_F8 = CVar(CLng(var_8E)) 'Long
  loc_17ACA92:         var_13C = CVar(CLng(&H15)) 'Long
  loc_17ACAC6:         var_E0 = CVar(Proc_6_38_E68A98(var_8C.Fields.Item(1).Value, var_13C, var_F8, var_218, var_E0)) 'String
  loc_17ACACD:         LateIdCallSt
  loc_17ACAE3:       End If
  loc_17ACAE5:       Set var_218 = Nothing 
  loc_17ACAEF:       var_8E = (var_8E + 1)
  loc_17ACAF8:       Me.Recordset15.MoveNext
  loc_17ACAFD:       GoTo loc_17ABB9B
  loc_17ACB00:     End If
  loc_17ACB0D:     Set var_98 = var_8E(1)
  loc_17ACB1B:   End If
  loc_17ACB23:   Set var_98 = Txt.DispID_6(True)
  loc_17ACB37:   If (var_8E = 1) Then
  loc_17ACB47:     Set var_98 = Txt.DispID_19(1)
  loc_17ACBA2:     Set var_98 = var_F8(CVar(CStr(Proc_6_127_F24F80(var_218(Txt.DispID_4), CInt(0), var_E0, var_13C)))).Name(1)
  loc_17ACBB0:   End If
  loc_17ACBB0:   Call Proc_43_60_DFC1AC(Txt.DispID_6, var_218)
  loc_17ACBB9:   Set var_98 = var_13C(var_10C)
  loc_17ACBC7:   var_AC = CStr(Txt.DispID_68030005)
  loc_17ACBD8:   If (var_AC = "Add") Then
  loc_17ACBE0:     global_144 = 0
  loc_17ACBE6:   Else
  loc_17ACBE6:     Call Proc_43_61_14EEC90(global_144)
  loc_17ACBF0:     global_144 = &HFF
  loc_17ACBF3:   End If
  loc_17ACBF3: End If
  loc_17ACBF8: Set var_88 = Nothing
  loc_17ACC00: Set var_8C = Nothing
  loc_17ACC03: Exit Sub
  loc_17ACC04: ' Referenced from: 17AACE0
  loc_17ACC0C: Set var_98 = Err()
  loc_17ACC12: Call 0.Method_arg_2C (var_AC)
  loc_17ACC33: MsgBox(CVar(var_AC), &H40, "Information", var_10C, var_12C)
  loc_17ACC46: Exit Sub
End Sub

Public Sub Proc_43_52_DFC860
  'Data Table: 51E0C8
  Dim arg_113D As Boolean
  loc_DFC85C: Exit Sub
  loc_DFC85D: arg_113D = True
End Sub

Public Sub Proc_43_53_14B7998
  'Data Table: 51E0C8
  Dim var_C4 As Variant
  Dim var_C8 As String
  Dim var_E4 As String
  Dim var_F4 As String
  Dim var_EC As TextBox
  Dim unk_51E0D8 As Connection15
  Dim var_DC As String
  Dim var_110 As TextBox
  Dim var_D8 As Variant
  Dim var_140 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_C0 As Variant
  Dim var_180 As Variant
  Dim var_88 As Integer
  Dim var_A8 As Recordset15
  Dim var_86 As Integer
  Dim var_150 As String
  Dim var_E8 As Fields15
  Dim var_160 As Variant
  Dim var_198 As Variant
  Dim var_1C8 As Variant
  Dim var_1E6 As Integer
  Dim var_B8 As Recordset15
  loc_14B6CEC: On Error Goto loc_14B7990
  loc_14B6CFD: Set var_C0 = Me.Txt
  loc_14B6D03: Call 0.Method_Proc_43_53_14B79980 (CInt(0), var_C4)
  loc_14B6D22: If (var_C4.Text = vbNullString) Then
  loc_14B6D25:   Exit Sub
  loc_14B6D26: End If
  loc_14B6D2A: Set var_C0 = ()
  loc_14B6D49: If (CStr(Txt.DispID_68030005) = "Add") Then
  loc_14B6D60:   var_C8 = "Select B.DocId,B.BookNo AS BookNo,B.VDate AS Vdate,B.ArrDate AS ArrDate,B.DepDate AS DepDate,B.RoomNo AS RoomNo,B.RoomRate AS RoomRate,B.Adult AS Adult,B.Child AS Child,RC.Name As RoomType,B.GuestName AS GNAME,GroupProf.Name AS GroupName,GF.Add1 AS Add1,GF.Add2 AS Add2,GF.PhoneNo AS PhoneNo,GF.MobileNo AS MobileNo,PC.CardNo AS CCardNo,PC.Cardholder As CCardholder,PC.ChqNo,PC.ChqDate,PC.ExpDate AS CCExpDate,PC.BatchNo,City.CityName AS CityName,City.ZipCode AS Zip,State.Name as StateName,SG.NAME AS CompanyName,(PC.AmtCr-PC.AmtDr) AS ADVANCE,PC.PayType As RECTMODE,PC.U_Name As UserName,B.Guarantee as Guarantee,PC.Vdate As VoucherDate,PC.VType,PC.VNo,R.Name PayName,PC.TxnNo,PC.Comments From " & "(((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.RefDocId LEFT JOIN RevMast AS R ON PC.PayCode = R.Code) "
  loc_14B6D78:   Set var_C0 = Me.Txt
  loc_14B6D7E:   Call 0.Method_Proc_43_53_14B79980 (CInt(&H1D), var_C4, var_DC, CStr(Txt.DispID_68030005) & " Where B.DocId='")
  loc_14B6D86:   var_D8 = var_C4.Text
  loc_14B6D8F:   var_E4 = -1 & var_DC
  loc_14B6D96:   var_F4 = var_E4 & "' And PC.VType In ('ARRES','ADRES') And PC.DocId='"
  loc_14B6DA7:   Set var_E8 = Me.Txt
  loc_14B6DAD:   Call 0.Method_Proc_43_53_14B79980 (CInt(0), var_EC, var_F0)
  loc_14B6DB5:   var_F4 = var_EC.Text
  loc_14B6DCE:   unk_51E0D8.Execute var_110 & var_F0 & "' Order By PC.Sno", , 
  loc_14B6DD9:   Set var_A8 = var_110
  loc_14B6E1D:   Set var_C0 = Me.Txt
  loc_14B6E23:   Call 0.Method_Proc_43_53_14B79980 (CInt(0), var_C4, CStr(Txt.DispID_68030005), "Select R.Name As TaxName,PC.TaxPer,Abs(PC.AmtCr-PC.AmtDr) as TaxAmt,PC.OnAmt as TaxableAmt From PayCharge PC Left Join RevMast R On PC.PayCode=R.Code where PC.Docid='")
  loc_14B6E2B:   var_D8 = var_C4.Text
  loc_14B6E34:   var_DC = -1 & CStr(Txt.DispID_68030005)
  loc_14B6E44:   unk_51E0D8.Execute var_DC & "' And PC.TaxPer<>0 Order by PC.TaxPer Desc,PC.PayCode", var_E8, 
  loc_14B6E4F:   Set var_B8 = var_E8
  loc_14B6E6A: Else
  loc_14B6E7E:   var_C8 = "Select B.DocId,B.BookNo AS BookNo,B.VDate AS Vdate,B.ArrDate AS ArrDate,B.DepDate AS DepDate,B.RoomNo AS RoomNo,B.RoomRate AS RoomRate,B.Adult AS Adult,B.Child AS Child,RC.Name As RoomType,B.GuestName AS GNAME,GroupProf.Name AS GroupName,GF.Add1 AS Add1,GF.Add2 AS Add2,GF.PhoneNo AS PhoneNo,GF.MobileNo AS MobileNo,PC.CardNo AS CCardNo,PC.Cardholder As CCardholder,PC.ChqNo,PC.ChqDate,PC.ExpDate AS CCExpDate,PC.BatchNo,City.CityName AS CityName,City.ZipCode AS Zip,State.Name as StateName,SG.NAME AS CompanyName,(PC.AmtCr-PC.AmtDr) AS ADVANCE,PC.PayType As RECTMODE,PC.U_Name As UserName,B.Guarantee as Guarantee,PC.Vdate As VoucherDate,PC.VType,PC.VNo,R.Name PayName,PC.TxnNo,PC.Comments From " & "(((((((Booking B LEFT JOIN RoomCat RC ON B.RoomCat = RC.Code) Left Join GuestProf GF ON B.GuestProf=GF.Code) LEFT JOIN City ON GF.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN SUBGROUP SG ON B.Company=SG.SubCode) LEFT JOIN GroupProf ON B.GroupCode = GroupProf.Code) Left Join PayCharge PC ON B.DocId=PC.RefDocId LEFT JOIN RevMast AS R ON PC.PayCode = R.Code) "
  loc_14B6E96:   Set var_C0 = Me.Txt
  loc_14B6E9C:   Call 0.Method_Proc_43_53_14B79980 (CInt(&H1D), var_C4, var_DC, CStr(Txt.DispID_68030005) & " Where B.DocId='")
  loc_14B6EA4:   var_12C = var_C4.Text
  loc_14B6EAD:   var_E4 = -1 & var_DC
  loc_14B6EB4:   var_F4 = var_E4 & "' And PC.VType In ('ARRES','ADRES') And PC.DocId='"
  loc_14B6EC5:   Set var_E8 = Me.Txt
  loc_14B6ECB:   Call 0.Method_Proc_43_53_14B79980 (CInt(0), var_EC, var_F0)
  loc_14B6ED3:   var_F4 = var_EC.Text
  loc_14B6F0C:   unk_51E0D8.Execute CStr((var_130 & var_F0 & "' And PC.SNo=").Tag) & " Order By PC.Sno", , 
  loc_14B6F17:   Set var_A8 = var_130
  loc_14B6F67:   Set var_C0 = Me.Txt
  loc_14B6F6D:   Call 0.Method_Proc_43_53_14B79980 (CInt(0), var_C4, CStr(Txt.DispID_68030005), "Select R.Name As TaxName,PC.TaxPer,Abs(PC.AmtCr-PC.AmtDr) as TaxAmt,PC.OnAmt as TaxableAmt From PayCharge PC Left Join RevMast R On PC.PayCode=R.Code where PC.Docid='")
  loc_14B6F75:   var_D8 = var_C4.Text
  loc_14B6F7E:   var_DC = -1 & CStr(Txt.DispID_68030005)
  loc_14B6F8E:   unk_51E0D8.Execute var_DC & "' And PC.TaxPer<>0 Order by PC.TaxPer Desc,PC.PayCode", var_E8, 
  loc_14B6F99:   Set var_B8 = var_E8
  loc_14B6FB1: End If
  loc_14B6FDA: Proc_6_17_EAA2B0(var_D8, MemVar_1F92078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_160, -1)
  loc_14B6FF0: unk_51E0D8.Execute CStr(var_C0 & var_D8), var_C4, 0
  loc_14B7000:  = var_C4.Item()
  loc_14B702C: var_A4 = " ADVANCE RECEIPT VOUCHER "
  loc_14B7031: Close 1
  loc_14B703A: Open "C:\reptmp\TEXTFILE.TXT" For Output As 1 Len = &HFF
  loc_14B7040: var_88 = 1
  loc_14B7046: MemVar_1F923C0 = "N"
  loc_14B704D: MemVar_1F923C4 = "N"
  loc_14B7054: MemVar_1F923C8 = "M"
  loc_14B705E: var_184 = var_A8.RecordCount
  loc_14B706C: If (var_184 > 0) Then
  loc_14B708D:   If CBool(Trim(Proc_6_38_E68A98(CVar(var_C0.Fields))) <> "W") Then
  loc_14B7090:     ' Referenced from: 14B7413
  loc_14B709F:     If Not(var_A8.EOF) Then
  loc_14B70A8:       If (var_86 = 0) Then
  loc_14B70C3:         Print 1, vbNullString
  loc_14B70CE:         Print 1, vbNullString
  loc_14B70F5:         Print 1, Proc_6_128_10272A8(var_A4, "B", &H50)
  loc_14B7109:         Print 1, vbNullString
  loc_14B713E:         var_12C = Space(&H1E)
  loc_14B7146:         var_150 = "VDate"
  loc_14B7152:         var_E8 = var_A8.Fields
  loc_14B715A:         var_EC = var_E8.Item(var_150)
  loc_14B717A:         var_160 = CVar("Receipt No.  :" & CStr(var_A8.Fields.Item("BookNo").Value)) 'String
  loc_14B7180:         var_180 = (var_160 + var_12C)
  loc_14B7184:         var_140 = "Date :"
  loc_14B7189:         var_198 = (CVar(var_A8.Fields.Fields) + var_140)
  loc_14B7193:         var_1C8 = (var_198 + CVar(Proc_6_38_E68A98(CVar(var_EC), Proc_6_129_12B6C1C(var_88, var_86))))
  loc_14B7199:         Print 1, var_1C8
  loc_14B71C7:         Print 1, vbNullString
  loc_14B7207:         Print 1, "Recieved with thanks from Mr." & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("GName")), &H50)
  loc_14B7221:         Print 1, vbNullString
  loc_14B724D:         Proc_6_39_E7C810(var_12C, CVar(var_A8.Fields.Item("Advance")))
  loc_14B7263:         Print 1, "Against Room charge, a Sum of Rs. " & CStr(var_12C)
  loc_14B7281:         Print 1, vbNullString
  loc_14B72AD:         Proc_6_39_E7C810(var_12C, CVar(var_A8.Fields.Item("Advance")))
  loc_14B72B5:         var_DC = vbNullString
  loc_14B72E3:         Print 1, "(In Words)" & Proc_6_43_10041F4(CSng(var_12C), "Rs")
  loc_14B7305:         Print 1, vbNullString
  loc_14B7311:         var_10C = "BookNo"
  loc_14B7325:         var_C4 = var_A8.Fields.Item(var_10C)
  loc_14B7343:         Print 1, "Against Reservation No." & CStr(var_C4.Value)
  loc_14B735F:         Print 1, vbNullString
  loc_14B736A:         Print 1, vbNullString
  loc_14B7375:         Print 1, vbNullString
  loc_14B7380:         Print 1, vbNullString
  loc_14B738B:         Print 1, vbNullString
  loc_14B7399:         var_C8 = "Signature"
  loc_14B73AF:         Print 1, Proc_6_52_EAD4F4(var_C8, &H46)
  loc_14B73C3:         Print 1, vbNullString
  loc_14B73CE:         Print 1, "---------------------------------------------------------------------------------------"
  loc_14B73D4:       End If
  loc_14B73DA:       var_86 = (var_86 + &H18)
  loc_14B73DD:       ' Referenced from: 14B73FA
  loc_14B73E3:       If (Proc_6_129_12B6C1C(var_88, var_86) < &H22) Then
  loc_14B73EB:         Print 1, vbNullString
  loc_14B73F7:         var_86 = (var_86 + 1)
  loc_14B73FA:         GoTo loc_14B73DD
  loc_14B73FD:       End If
  loc_14B73FF:       var_86 = 0
  loc_14B7408:       var_88 = (var_88 + 1)
  loc_14B740E:       var_A8.MoveNext
  loc_14B7413:       GoTo loc_14B7090
  loc_14B7416:     End If
  loc_14B7419:   Else
  loc_14B741C:     var_AC = "ADVANCE RECIEPT RESERVATION"
  loc_14B7425:     Call 0.Method_arg_50 (var_C8, var_88, var_86, var_86)
  loc_14B743C:     var_B0 = CStr(Ucase(CVar(var_C8)))
  loc_14B746A:     Set var_C0 = var_A8 
  loc_14B7471:     CreateFieldDefFile(var_C0, MemVar_1F920B4 & "\" & var_AC & ".ttx", &HFF)
  loc_14B749C:     var_C8 = MemVar_1F920B4 & "\"
  loc_14B74A3:     var_DC = var_C8 & var_AC
  loc_14B74B3:     Call 0.Method_arg_1C (var_DC & ".RPT", var_10C, var_C0)
  loc_14B74BE:     MemVar_1F921E4 = var_C0
  loc_14B74E7:     Call 0.Method_arg_64 (var_C0, CVar(var_C0), var_140, var_150)
  loc_14B74EF:     Call 0.Method_arg_2C (var_86, var_DC)
  loc_14B74FD:     Call 0.Method_arg_150 (var_88)
  loc_14B7513:     Call 0.Method_arg_90 (var_C0, var_184)
  loc_14B751B:     Call 0.Method_arg_24 (var_B2)
  loc_14B7527:     For var_1D4 =  To CInt(var_184):   1 = var_1D4 'Integer
  loc_14B7540:       Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B7548:       Call 0.Method_arg_20 (var_C4)
  loc_14B7550:       Call 0.Method_arg_30 (var_C8)
  loc_14B757F:       If (Ucase(CVar(var_C8)) = "TITLE") Then
  loc_14B7589:         var_C8 = "'" & var_AC
  loc_14B75A3:         Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B75AB:         Call 0.Method_arg_20 (var_C4)
  loc_14B75B3:         Call 0.Method_arg_38 (var_C8 & "'")
  loc_14B75C6:       End If
  loc_14B75C9:     Next var_1D4 'Integer
  loc_14B75D0:     var_1E6 = 1
  loc_14B75D3:     ' Referenced from:   14B78C1
  loc_14B75E2:     If Not(var_B8.EOF) Then
  loc_14B75F6:       Call 0.Method_arg_90 (var_C0, var_184, var_B2)
  loc_14B75FE:       Call 0.Method_arg_24 (1)
  loc_14B760A:       For var_1EA =  To CInt(var_184):   var_1E6 = var_1EA 'Integer
  loc_14B7623:         Call 0.Method_arg_90 (var_C0, CLng(var_B2))
  loc_14B762B:         Call 0.Method_arg_20 (var_C4)
  loc_14B7633:         Call 0.Method_arg_30 (var_C8)
  loc_14B7649:         var_1FC = Ucase(CVar(var_C8)) 'Variant
  loc_14B7672:         If (var_1FC = CVar("STNAME" & CStr(var_1E6))) Then
  loc_14B76A3:           Proc_6_17_EAA2B0(var_160)
  loc_14B76BF:           Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B76C7:           Call 0.Method_arg_20 (CStr(var_160))
  loc_14B76CF:           Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TaxName")))))
  loc_14B76EC:         Else
  loc_14B7707:           If (var_1FC = CVar("STPER" & CStr(var_1E6))) Then
  loc_14B7738:             Proc_6_17_EAA2B0(var_160)
  loc_14B7754:             Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B775C:             Call 0.Method_arg_20 (CStr(var_160))
  loc_14B7764:             Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TaxPer")))))
  loc_14B7781:           Else
  loc_14B779C:             If (var_1FC = CVar("STAMT" & CStr(var_1E6))) Then
  loc_14B77CD:               Proc_6_17_EAA2B0(var_160)
  loc_14B77E9:               Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B77F1:               Call 0.Method_arg_20 (CStr(var_160))
  loc_14B77F9:               Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TaxAmt")))))
  loc_14B7816:             Else
  loc_14B7831:               If (var_1FC = CVar("STABLEAMT" & CStr(var_1E6))) Then
  loc_14B7862:                 Proc_6_17_EAA2B0(var_160)
  loc_14B787E:                 Call 0.Method_arg_90 (var_E8, CLng(var_B2), var_EC)
  loc_14B7886:                 Call 0.Method_arg_20 (CStr(var_160))
  loc_14B788E:                 Call 0.Method_arg_38 (CVar(Proc_6_38_E68A98(CVar(var_B8.Fields.Item("TaxableAmt")))))
  loc_14B78A8:               End If
  loc_14B78A8:             End If
  loc_14B78A8:           End If
  loc_14B78A8:         End If
  loc_14B78AB:       Next var_1EA 'Integer
  loc_14B78B6:       var_1E6 = (var_1E6 + 1)
  loc_14B78BC:       var_B8.MoveNext
  loc_14B78C1:       GoTo loc_14B75D3
  loc_14B78C4:     End If
  loc_14B78DF:     Set var_C0 = MemVar_1F921E4 
  loc_14B78EB:     Proc_6_99_1483714(var_C0, 0, var_AC)
  loc_14B78F6:     MemVar_1F921E4 = var_C0
  loc_14B7904:     Call 0.Method_arg_2B4 (&HFF, Nothing)
  loc_14B7909:   End If
  loc_14B7909: End If
  loc_14B790B: Close 1
  loc_14B7914: Open "C:\reptmp\SBILL.BAT" For Output As 1 Len = &HFF
  loc_14B7924: Print 1, "TYPE C:\reptmp\TEXTFILE.TXT>" & MemVar_1F923B4
  loc_14B792F: Close 1
  loc_14B7939: If (MemVar_1F923B8 = "Y") Then
  loc_14B7955:   var_98 = CVar(Shell("C:\reptmp\SBILL.PIF", 0)) 'Variant
  loc_14B795F: Else
  loc_14B7978:   var_98 = CVar(Shell("C:\reptmp\SBILL.BAT", 0)) 'Variant
  loc_14B797F: End If
  loc_14B7984: Set var_A8 = Nothing
  loc_14B798C: Set var_B8 = Nothing
  loc_14B798F: Exit Sub
  loc_14B7990: ' Referenced from: 14B6CEC
  loc_14B7990: Proc_6_60_E62BC4(var_1E6)
  loc_14B7995: Exit Sub
End Sub

Public Sub Proc_43_54_F6CE9C
  'Data Table: 51E0C8
  loc_F6CD70: If (CBool(().Visible) = &HFF) Then
  loc_F6CD82:   (False).Visible = 
  loc_F6CD8A: End If
  loc_F6CDA6: If (CBool(().Visible) = &HFF) Then
  loc_F6CDB8:   (False).Visible = 
  loc_F6CDC0: End If
  loc_F6CDDC: If (CBool(().Visible) = &HFF) Then
  loc_F6CDEE:   (False).Visible = 
  loc_F6CDF6: End If
  loc_F6CE12: If (CBool(().Visible) = &HFF) Then
  loc_F6CE24:   (False).Visible = 
  loc_F6CE2C: End If
  loc_F6CE48: If (CBool(().Visible) = &HFF) Then
  loc_F6CE5A:   (False).Visible = 
  loc_F6CE62: End If
  loc_F6CE7E: If (CBool(().Visible) = &HFF) Then
  loc_F6CE90:   (False).Visible = 
  loc_F6CE98: End If
  loc_F6CE98: Exit Sub
End Sub

Public Sub Proc_43_55_11588DC
  'Data Table: 51E0C8
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
  loc_1158570: var_90 = global_108
  loc_1158587: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_11585B8: Set var_A8 = Me.Txt
  loc_11585BE: Call 0.Method_Proc_43_55_11588DC0 (CInt(2), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And "))
  loc_11585CD: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_11585D5: var_EC = -1 & var_CC 
  loc_11585E9: Me.Execute CStr(var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC"), var_134, 
  loc_11585F4: Set var_8C = var_134
  loc_1158630: If (var_8C.RecordCount > 0) Then
  loc_115866F:   If (var_8C.Fields.Item("Number_Method").Value = "Manual") Then
  loc_1158672:     GoTo loc_11586FF
  loc_1158675:   End If
  loc_11586A6:   global_88 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_11586D1:   var_AC = var_8C.Fields.Item("start_srl_no")
  loc_11586E6:   var_CC = (var_AC.Value + 1)
  loc_11586EE:   global_92 = CInt(var_CC)
  loc_11586FF:   ' Referenced from: 1158672
  loc_115872A:   var_BC = Space((5 - Len(var_90)))
  loc_1158732:   var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_AC.Value)
  loc_1158746:   var_EC = Space((5 - Len(global_88)))
  loc_115874E:   var_10C = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90 & "' And ") + var_EC)
  loc_115875B:   var_130 = (var_EC & " between VP.Date_From and VP.Date_to Order By VP.Date_From DESC" + CVar(global_88))
  loc_1158774:   var_14C = Space((8 - Len(CStr(global_92))))
  loc_115877C:   var_15C = (var_130 + var_14C)
  loc_115878B:   var_17C = (var_15C + CVar(CStr(global_92)))
  loc_1158796:   global_84 = CStr(var_17C)
  loc_11587CC:   global_92(global_88).Caption = 
  loc_11587E5:   Set var_A8 = Me.Txt
  loc_11587EB:   Call 0.Method_Proc_43_55_11588DC0 (CInt(0), var_AC)
  loc_11587F3:   var_AC.Text = global_84
  loc_1158815:   Set var_A8 = Me.Txt
  loc_115881B:   Call 0.Method_Proc_43_55_11588DC0 (CInt(1), var_AC)
  loc_1158823:   var_AC.Text = CStr(global_92)
  loc_1158838:   var_88 = global_84
  loc_115883E: Else
  loc_1158844:   global_84 = vbNullString
  loc_115886A:   0(vbNullString).Caption = 
  loc_1158883:   Set var_A8 = Me.Txt
  loc_1158889:   Call 0.Method_Proc_43_55_11588DC0 (CInt(0), var_AC)
  loc_1158891:   var_AC.Text = global_84
  loc_11588AB:   Set var_A8 = Me.Txt
  loc_11588B1:   Call 0.Method_Proc_43_55_11588DC0 (CInt(1), var_AC)
  loc_11588B9:   var_AC.Text = vbNullString
  loc_11588CB:   var_88 = global_84
  loc_11588CE: End If
  loc_11588D3: Set var_8C = Nothing
  loc_11588D6: Proc_43_55_11588DC = 
End Sub

Public Sub Proc_43_56_127254C
  'Data Table: 51E0C8
  Dim var_8C As Frame
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As String
  loc_1271FA9: global_100(&HFF).Visible = 
  loc_1271FB5: Set var_90 = ()
  loc_1271FB8: var_A0 = &H25
  loc_1271FC9: var_A0 = 0
  loc_1271FD5: var_C0 = CVar(CLng(0)) 'Long
  loc_1271FDA: var_E0 = "SNo"
  loc_1271FE3: LateIdCallSt
  loc_1271FEE: var_A0 = CVar(CLng(0)) 'Long
  loc_1271FF3: var_C0 = &H1F4
  loc_1271FFF: LateIdCallSt
  loc_127200A: var_A0 = CVar(CLng(1)) 'Long
  loc_127200F: var_C0 = 0
  loc_127201B: LateIdCallSt
  loc_1272026: var_A0 = CVar(CLng(2)) 'Long
  loc_127202B: var_C0 = 0
  loc_1272037: LateIdCallSt
  loc_127203F: var_A0 = 0
  loc_127204B: var_C0 = CVar(CLng(3)) 'Long
  loc_1272050: var_E0 = "Payment Type"
  loc_1272059: LateIdCallSt
  loc_1272064: var_A0 = CVar(CLng(3)) 'Long
  loc_127206F: var_C0 = CVar(CInt(1)) 'Integer
  loc_1272076: LateIdCallSt
  loc_1272081: var_A0 = CVar(CLng(3)) 'Long
  loc_1272086: var_C0 = &H9C4
  loc_1272092: LateIdCallSt
  loc_127209D: var_A0 = CVar(CLng(4)) 'Long
  loc_12720A2: var_C0 = 0
  loc_12720AE: LateIdCallSt
  loc_12720B9: var_A0 = CVar(CLng(5)) 'Long
  loc_12720BE: var_C0 = 0
  loc_12720CA: LateIdCallSt
  loc_12720D5: var_A0 = CVar(CLng(6)) 'Long
  loc_12720DA: var_C0 = 0
  loc_12720E6: LateIdCallSt
  loc_12720F1: var_A0 = CVar(CLng(7)) 'Long
  loc_12720F6: var_C0 = 0
  loc_1272102: LateIdCallSt
  loc_127210A: var_A0 = 0
  loc_1272116: var_C0 = CVar(CLng(8)) 'Long
  loc_127211B: var_E0 = "Amount"
  loc_1272124: LateIdCallSt
  loc_127212F: var_A0 = CVar(CLng(8)) 'Long
  loc_127213A: var_C0 = CVar(CInt(7)) 'Integer
  loc_1272141: LateIdCallSt
  loc_127214C: var_A0 = CVar(CLng(8)) 'Long
  loc_1272157: var_C0 = CVar(CInt(7)) 'Integer
  loc_127215E: LateIdCallSt
  loc_1272169: var_A0 = CVar(CLng(8)) 'Long
  loc_127216E: var_C0 = &H44C
  loc_127217A: LateIdCallSt
  loc_1272182: var_A0 = 0
  loc_127218E: var_C0 = CVar(CLng(9)) 'Long
  loc_1272193: var_E0 = "Tax Stru"
  loc_127219C: LateIdCallSt
  loc_12721A7: var_A0 = CVar(CLng(9)) 'Long
  loc_12721B2: var_C0 = CVar(CInt(1)) 'Integer
  loc_12721B9: LateIdCallSt
  loc_12721C4: var_A0 = CVar(CLng(9)) 'Long
  loc_12721C9: var_C0 = &H708
  loc_12721D5: LateIdCallSt
  loc_12721E0: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12721E5: var_C0 = 0
  loc_12721F1: LateIdCallSt
  loc_12721FC: var_A0 = CVar(CLng(&HB)) 'Long
  loc_1272201: var_C0 = 0
  loc_127220D: LateIdCallSt
  loc_1272218: var_A0 = CVar(CLng(&HC)) 'Long
  loc_127221D: var_C0 = 0
  loc_1272229: LateIdCallSt
  loc_1272234: var_A0 = CVar(CLng(&HD)) 'Long
  loc_1272239: var_C0 = 0
  loc_1272245: LateIdCallSt
  loc_1272250: var_A0 = CVar(CLng(&HE)) 'Long
  loc_1272255: var_C0 = 0
  loc_1272261: LateIdCallSt
  loc_127226C: var_A0 = CVar(CLng(&HF)) 'Long
  loc_1272271: var_C0 = 0
  loc_127227D: LateIdCallSt
  loc_1272288: var_A0 = CVar(CLng(&H10)) 'Long
  loc_127228D: var_C0 = 0
  loc_1272299: LateIdCallSt
  loc_12722A4: var_A0 = CVar(CLng(&H11)) 'Long
  loc_12722A9: var_C0 = 0
  loc_12722B5: LateIdCallSt
  loc_12722C0: var_A0 = CVar(CLng(&H12)) 'Long
  loc_12722C5: var_C0 = 0
  loc_12722D1: LateIdCallSt
  loc_12722DC: var_A0 = CVar(CLng(&H13)) 'Long
  loc_12722E1: var_C0 = 0
  loc_12722ED: LateIdCallSt
  loc_12722F8: var_A0 = CVar(CLng(&H14)) 'Long
  loc_12722FD: var_C0 = 0
  loc_1272309: LateIdCallSt
  loc_1272314: var_A0 = CVar(CLng(&H15)) 'Long
  loc_1272319: var_C0 = 0
  loc_1272325: LateIdCallSt
  loc_1272330: var_A0 = CVar(CLng(&H16)) 'Long
  loc_1272335: var_C0 = 0
  loc_1272341: LateIdCallSt
  loc_127234C: var_A0 = CVar(CLng(&H17)) 'Long
  loc_1272351: var_C0 = 0
  loc_127235D: LateIdCallSt
  loc_1272368: var_A0 = CVar(CLng(&H18)) 'Long
  loc_127236D: var_C0 = 0
  loc_1272379: LateIdCallSt
  loc_1272384: var_A0 = CVar(CLng(&H19)) 'Long
  loc_1272389: var_C0 = 0
  loc_1272395: LateIdCallSt
  loc_12723A0: var_A0 = CVar(CLng(&H1A)) 'Long
  loc_12723A5: var_C0 = 0
  loc_12723B1: LateIdCallSt
  loc_12723BC: var_A0 = CVar(CLng(&H1B)) 'Long
  loc_12723C1: var_C0 = 0
  loc_12723CD: LateIdCallSt
  loc_12723D8: var_A0 = CVar(CLng(&H1C)) 'Long
  loc_12723DD: var_C0 = 0
  loc_12723E9: LateIdCallSt
  loc_12723F4: var_A0 = CVar(CLng(&H1D)) 'Long
  loc_12723F9: var_C0 = 0
  loc_1272405: LateIdCallSt
  loc_1272410: var_A0 = CVar(CLng(&H1E)) 'Long
  loc_1272415: var_C0 = 0
  loc_1272421: LateIdCallSt
  loc_127242C: var_A0 = CVar(CLng(&H1F)) 'Long
  loc_1272431: var_C0 = 0
  loc_127243D: LateIdCallSt
  loc_1272448: var_A0 = CVar(CLng(&H20)) 'Long
  loc_127244D: var_C0 = 0
  loc_1272459: LateIdCallSt
  loc_1272464: var_A0 = CVar(CLng(&H21)) 'Long
  loc_1272469: var_C0 = 0
  loc_1272475: LateIdCallSt
  loc_1272480: var_A0 = CVar(CLng(&H22)) 'Long
  loc_1272485: var_C0 = 0
  loc_1272491: LateIdCallSt
  loc_127249C: var_A0 = CVar(CLng(&H24)) 'Long
  loc_12724A1: var_C0 = 0
  loc_12724AD: LateIdCallSt
  loc_12724B5: var_A0 = 0
  loc_12724C1: var_C0 = CVar(CLng(&H23)) 'Long
  loc_12724C6: var_E0 = "Type"
  loc_12724CF: LateIdCallSt
  loc_12724DA: var_A0 = CVar(CLng(&H23)) 'Long
  loc_12724E5: var_C0 = CVar(CInt(1)) 'Integer
  loc_12724EC: LateIdCallSt
  loc_12724F7: var_A0 = CVar(CLng(&H23)) 'Long
  loc_12724FC: var_C0 = &H352
  loc_1272508: LateIdCallSt
  loc_1272512: Set var_90 = Nothing 
  loc_1272516: var_A0 = 1
  loc_1272534: Set var_8C = 0(CVar(CStr(1)))
  loc_127253A: LateIdCallSt
  loc_1272548: Exit Sub
End Sub

Public Sub Proc_43_57_12883D8(arg_C) '12883D8
  'Data Table: 51E0C8
  Dim var_88 As Frame
  Dim var_8C As Long
  Dim var_98 As Frame
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  Dim var_B0 As Frame
  loc_1287E0C: (0).Visible = 
  loc_1287E20: (0).Visible = 
  loc_1287E34: (0).Visible = 
  loc_1287E48: (0).Visible = 
  loc_1287E5C: (0).Visible = 
  loc_1287E70: Me.FrTxnNo.Visible = False
  loc_1287E7E: var_8C = global_100
  loc_1287E8A: If (var_8C = 1) Then
  loc_1287E90:   var_90 = arg_C
  loc_1287E9B:   If (var_90 = "Cheque") Then
  loc_1287EAA:     var_8C(&HFF).Visible = 
  loc_1287EBF:      = (var_94).Left
  loc_1287ED1:     (var_94).Left = 
  loc_1287EEB:     Set var_98 = Me.Txt
  loc_1287EF1:     Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_9C)
  loc_1287F0C:     Set var_A4 = Me.Txt
  loc_1287F12:     Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_A8)
  loc_1287F2C:      = (var_94).Top
  loc_1287F45:     Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_1287F4B:     var_B0.Top = 
  loc_1287F62:   Else
  loc_1287F6A:     If (var_90 = "Credit Card") Then
  loc_1287F79:       (&HFF).Visible = 
  loc_1287F8E:        = (var_94).Left
  loc_1287FA0:       (var_94).Left = 
  loc_1287FBA:       Set var_98 = Me.Txt
  loc_1287FC0:       Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_9C)
  loc_1287FDB:       Set var_A4 = Me.Txt
  loc_1287FE1:       Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_A8)
  loc_1287FFB:        = (var_94).Top
  loc_1288014:       Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_128801A:       var_B0.Top = 
  loc_1288031:     Else
  loc_1288039:       If (var_90 = "Staff") Then
  loc_1288048:         (&HFF).Visible = 
  loc_128805D:          = (var_94).Left
  loc_128806F:         (var_94).Left = 
  loc_1288089:         Set var_98 = Me.Txt
  loc_128808F:         Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_9C)
  loc_12880AA:         Set var_A4 = Me.Txt
  loc_12880B0:         Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_A8)
  loc_12880CA:          = (var_94).Top
  loc_12880E3:         Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_12880E9:         var_B0.Top = 
  loc_1288100:       Else
  loc_1288108:         If (var_90 = "Company") Then
  loc_1288117:           (&HFF).Visible = 
  loc_128812C:            = (var_94).Left
  loc_128813E:           (var_94).Left = 
  loc_1288158:           Set var_98 = Me.Txt
  loc_128815E:           Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_9C)
  loc_1288179:           Set var_A4 = Me.Txt
  loc_128817F:           Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_A8)
  loc_1288199:            = (var_94).Top
  loc_12881B2:           Set var_B0 = ((((var_94 + var_9C.Top) + var_A8.Height) + CDbl(&HF)))
  loc_12881B8:           var_B0.Top = 
  loc_12881CF:         Else
  loc_12881D7:           If (var_90 = "Room") Then
  loc_12881E6:             (&HFF).Visible = 
  loc_12881FB:              = (var_94).Left
  loc_128820D:             (var_94).Left = 
  loc_1288227:             Set var_98 = Me.Txt
  loc_128822D:             Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_9C)
  loc_1288235:             var_A0 = var_9C.Top
  loc_1288248:             Set var_A4 = Me.Txt
  loc_128824E:             Call 0.Method_Proc_43_57_12883D80 (CInt(6), var_A8)
  loc_1288268:              = (var_94).Top
  loc_1288281:             Set var_B0 = ((((var_94 + var_A0) + var_A8.Height) + CDbl(&HF)))
  loc_1288287:             var_B0.Top = 
  loc_128829E:           Else
  loc_12882A6:             If (var_90 = "UPI") Then
  loc_12882B5:               Me.FrTxnNo.Visible = True
  loc_12882CA:                = (var_94).Left
  loc_12882DC:               Me.FrTxnNo.Left = var_94
  loc_12882F5:                = (var_A0).Height
  loc_1288307:                = (var_94).Top
  loc_1288322:               Me.FrTxnNo.Top = ((var_94 + var_A0) + CDbl(&HF))
  loc_1288330:               GoTo loc_1288333
  loc_1288333:               ' Referenced from:           1288330
  loc_1288333:             End If
  loc_1288333:           End If
  loc_1288333:         End If
  loc_1288333:       End If
  loc_1288333:     End If
  loc_1288333:   End If
  loc_1288333: End If
  loc_128833D: Set var_88 = (0)
  loc_1288358: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_1288373: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_128838E: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_12883A9: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_12883C4: Set var_88 = FrTxnNo.DispID_18001(0)
  loc_12883D5: Exit Sub
End Sub

Public Sub Proc_43_58_1581F5C
  'Data Table: 51E0C8
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_94 As String
  Dim var_FC As Variant
  Dim Proc_43_58_1581F5C2 As Variant
  Dim var_86 As Integer
  Dim var_124 As Long
  Dim var_EC As Variant
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_10C As Variant
  Dim var_148 As Variant
  loc_1580E12: Set var_8C = Me.Txt
  loc_1580E18: Call 0.Method_Proc_43_58_1581F5C0 (CInt(6), var_90)
  loc_1580E3C: If (CDbl(Val(var_90.Text)) = CDbl(0)) Then
  loc_1580E4D:   Set var_8C = Me.Txt
  loc_1580E53:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(6), var_90)
  loc_1580E5B:   var_90.Text = vbNullString
  loc_1580E67: End If
  loc_1580E72: Set var_8C = Me.Txt
  loc_1580E78: Call 0.Method_Proc_43_58_1581F5C0 (CInt(5))
  loc_1580E87: var_B4 = Trim(CVar(var_90))
  loc_1580EA1: If (var_B4 = vbNullString) Then
  loc_1580EA4:   Exit Sub
  loc_1580EA5: End If
  loc_1580EB3: Set var_8C = Me.Txt
  loc_1580EB9: Call 0.Method_Proc_43_58_1581F5C0 (CInt(6), var_90)
  loc_1580EC1: var_D6 = var_90.Visible
  loc_1580ED3: If (var_D6 = &HFF) Then
  loc_1580EE1:   Set var_8C = Me.Txt
  loc_1580EE7:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(6), var_90)
  loc_1580EEF:   var_94 = "Amount"
  loc_1580F10:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1580F13:     Exit Sub
  loc_1580F14:   End If
  loc_1580F14: End If
  loc_1580F2D: Set var_8C = Me.Txt
  loc_1580F33: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H18), var_90, var_94)
  loc_1580F3B: (global_140 = "Staff") = var_90.Text
  loc_1580F53: If (var_90 And (var_94 = vbNullString)) Then
  loc_1580F61:   Set var_8C = Me.Txt
  loc_1580F67:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H18))
  loc_1580F6F:   var_94 = "Staff Name"
  loc_1580F90:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1580F93:     Exit Sub
  loc_1580F94:   End If
  loc_1580F94: End If
  loc_1580FAD: Set var_8C = Me.Txt
  loc_1580FB3: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1B), var_90, var_94)
  loc_1580FBB: (global_140 = "Room") = var_90.Text
  loc_1580FD3: If (var_90 And (var_94 = vbNullString)) Then
  loc_1580FE1:   Set var_8C = Me.Txt
  loc_1580FE7:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1B))
  loc_1580FEF:   var_94 = "Room Name"
  loc_1581010:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1581013:     Exit Sub
  loc_1581014:   End If
  loc_1581014: End If
  loc_158102D: Set var_8C = Me.Txt
  loc_1581033: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1C), var_90, var_94)
  loc_158103B: (global_140 = "Company") = var_90.Text
  loc_1581053: If (var_90 And (var_94 = vbNullString)) Then
  loc_1581061:   Set var_8C = Me.Txt
  loc_1581067:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1C))
  loc_158106F:   var_94 = "Company Name"
  loc_1581090:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_1581093:     Exit Sub
  loc_1581094:   End If
  loc_1581094: End If
  loc_15810AD: Set var_8C = Me.Txt
  loc_15810B3: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&HF), var_90, var_94)
  loc_15810BB: (global_140 = "Company") = var_90.Text
  loc_15810D3: If (var_90 And (var_94 = vbNullString)) Then
  loc_158110E:   If (MsgBox(CVar("It's Not Recommended to Save Details Without Ref No." & vbCrLf & "Continue Anyway"), &H104, var_B4, var_D4, var_10C) = 7) Then
  loc_1581111:     Exit Sub
  loc_1581112:   End If
  loc_1581112: End If
  loc_158111D: If (global_152 = "Y") Then
  loc_1581139:   Set var_8C = Me.Txt
  loc_158113F:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H12), var_90)
  loc_158115F:   If ((global_140 = "Credit Card") And (var_90.Text = vbNullString)) Then
  loc_158116D:     Set var_8C = Me.Txt
  loc_1581173:     Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H12))
  loc_158117B:     var_94 = "Credit Card No."
  loc_158119C:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158119F:       Exit Sub
  loc_15811A0:     End If
  loc_15811A0:   End If
  loc_15811B9:   Set var_8C = Me.Txt
  loc_15811BF:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H13), var_90, var_94)
  loc_15811C7:   (global_140 = "Credit Card") = var_90.Text
  loc_15811DF:   If (var_90 And (var_94 = vbNullString)) Then
  loc_15811ED:     Set var_8C = Me.Txt
  loc_15811F3:     Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H13))
  loc_15811FB:     var_94 = "Holder's Name"
  loc_158121C:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158121F:       Exit Sub
  loc_1581220:     End If
  loc_1581220:   End If
  loc_1581239:   Set var_8C = Me.Txt
  loc_158123F:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&HE), var_90, var_94)
  loc_1581247:   (global_140 = "Credit Card") = var_90.Text
  loc_158125F:   If (var_90 And (var_94 = vbNullString)) Then
  loc_158126D:     Set var_8C = Me.Txt
  loc_1581273:     Call 0.Method_Proc_43_58_1581F5C0 (CInt(&HE))
  loc_158127B:     var_94 = "Batch No"
  loc_158129C:     If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158129F:       Exit Sub
  loc_15812A0:     End If
  loc_15812A0:   End If
  loc_15812A0: End If
  loc_15812B9: Set var_8C = Me.Txt
  loc_15812BF: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1A), var_90, var_94)
  loc_15812C7: (global_140 = "UPI") = var_90.Text
  loc_15812DF: If (var_90 And (var_94 = vbNullString)) Then
  loc_15812ED:   Set var_8C = Me.Txt
  loc_15812F3:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1A))
  loc_15812FB:   var_94 = "Txn. No."
  loc_158131C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158131F:     Exit Sub
  loc_1581320:   End If
  loc_1581320: End If
  loc_1581339: Set var_8C = Me.Txt
  loc_158133F: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H15), var_90, var_94)
  loc_1581347: (global_140 = "Cheque") = var_90.Text
  loc_158135F: If (var_90 And (var_94 = vbNullString)) Then
  loc_158136D:   Set var_8C = Me.Txt
  loc_1581373:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H15))
  loc_158137B:   var_94 = "Cheque No."
  loc_158139C:   If (Proc_6_27_EA565C(var_90, var_94) = 0) Then
  loc_158139F:     Exit Sub
  loc_15813A0:   End If
  loc_15813A0: End If
  loc_15813B9: Set var_8C = Me.Txt
  loc_15813BF: Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H16), var_90, var_94)
  loc_15813C7: (global_140 = "Cheque") = var_90.Text
  loc_15813DF: If (var_90 And (var_94 = vbNullString)) Then
  loc_15813ED:   Set var_8C = Me.Txt
  loc_15813F3:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H16))
  loc_158141C:   If (Proc_6_27_EA565C(var_90, "Cheque Dt.") = 0) Then
  loc_158141F:     Exit Sub
  loc_1581420:   End If
  loc_1581420: End If
  loc_1581429: If (global_144 = 0) Then
  loc_1581430:   Set var_8C = (var_90)
  loc_1581445:   var_C4 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_1581456:   Set var_90 = vbNullString(CVar(CLng(3)))
  loc_1581467:   var_94 = CStr(Txt.DispID_41)
  loc_1581480:   If (var_94 <> vbNullString) Then
  loc_15814A9:     Set var_90 = CInt(0)(CVar(CStr(Proc_6_127_F24F80(()))))
  loc_15814AF:     Proc_43_58_1581F5C2 = var_90.Name
  loc_15814C3:   End If
  loc_15814C7:   Set var_8C = (Proc_43_58_1581F5C2)
  loc_15814DD:   var_86 = CInt((CLng(Txt.DispID_4) - 1))
  loc_15814F3:   Set var_8C = var_86(CVar(CLng(var_86)))
  loc_1581506:   global_144 = &HFF
  loc_158150C: Else
  loc_1581510:   Set var_8C = Txt.DispID_A(global_144)
  loc_1581520:   var_86 = CInt(CLng(Txt.DispID_A))
  loc_1581529: End If
  loc_1581534: var_124 = OpenType
  loc_1581540: If (var_124 = 1) Then
  loc_1581547:   Set var_128 = var_86(var_124)
  loc_158154E:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1581556:   var_FC = CVar(CLng(1)) 'Long
  loc_1581569:   Set var_8C = Me.Txt
  loc_158156F:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(5), var_90, var_94)
  loc_1581577:   var_FC = var_90.Tag
  loc_158157F:   var_A4 = CVar(var_94) 'String
  loc_1581586:   LateIdCallSt
  loc_158159C:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15815A4:   var_FC = CVar(CLng(2)) 'Long
  loc_15815B6:   LateIdCallSt
  loc_15815DD:   Set var_8C = Me.Txt
  loc_15815E3:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(5), var_90, var_94, CVar(CLng(3)), CVar(CLng(var_86)), var_128)
  loc_15815F3:   var_A4 = CVar(var_94) 'String
  loc_15815FA:   LateIdCallSt
  loc_1581617:   If (var_90.Text = "Room") Then
  loc_158161E:     var_EC = CVar(CLng(var_86)) 'Long
  loc_1581626:     var_11C = CVar(CLng(&H18)) 'Long
  loc_1581648:     var_90 = Me.Fields.Item("FolioNo")
  loc_1581659:     var_B4 = CVar(CStr(var_90.Value)) 'String
  loc_1581660:     LateIdCallSt
  loc_1581676:   End If
  loc_158167A:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1581682:   var_FC = CVar(CLng(4)) 'Long
  loc_1581694:   LateIdCallSt
  loc_15816A0:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15816A8:   var_FC = CVar(CLng(5)) 'Long
  loc_15816BA:   LateIdCallSt
  loc_15816C6:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_15816E1:   Set var_8C = Me.Txt
  loc_15816E7:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1B), var_90, var_94, CVar(CLng(6)), var_C4, var_128, global_136)
  loc_15816EF:   var_FC = var_90.Text
  loc_15816FE:   LateIdCallSt
  loc_158171B:   Set var_8C = Me.Txt
  loc_1581721:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(6), var_90, var_128, CVar(var_94), var_C4)
  loc_158172A:   var_EC = CVar(CLng(var_86)) 'Long
  loc_1581766:   LateIdCallSt
  loc_158179B:   Set var_8C = Me.Txt
  loc_15817A1:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H11), var_90, var_94, CVar(CLng(&HA)), CVar(CLng(var_86)), var_128, CVar(CStr(Format(CVar(var_90), "0.00"))))
  loc_15817A9:   1 = var_90.Tag
  loc_15817B8:   LateIdCallSt
  loc_15817E9:   Set var_8C = Me.Txt
  loc_15817EF:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H11), var_90, var_94, CVar(CLng(9)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_15817F7:   1 = var_90.Text
  loc_15817FF:   var_A4 = CVar(var_94) 'String
  loc_1581806:   LateIdCallSt
  loc_1581837:   Set var_8C = Me.Txt
  loc_158183D:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(4), var_90, var_94, CVar(CLng(&H13)), CVar(CLng(var_86)), var_128)
  loc_1581845:   var_A4 = var_90.Text
  loc_158184D:   var_A4 = CVar(var_94) 'String
  loc_1581854:   LateIdCallSt
  loc_1581885:   Set var_8C = Me.Txt
  loc_158188B:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H12), var_90, var_94, CVar(CLng(&HB)), CVar(CLng(var_86)), var_128)
  loc_1581893:   var_A4 = var_90.Text
  loc_158189B:   var_A4 = CVar(var_94) 'String
  loc_15818A2:   LateIdCallSt
  loc_15818D3:   Set var_8C = Me.Txt
  loc_15818D9:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H13), var_90, var_94, CVar(CLng(&HC)), CVar(CLng(var_86)), var_128)
  loc_15818E1:   var_A4 = var_90.Text
  loc_15818E9:   var_A4 = CVar(var_94) 'String
  loc_15818F0:   LateIdCallSt
  loc_1581921:   Set var_8C = Me.Txt
  loc_1581927:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H14), var_90, var_94, CVar(CLng(&HD)), CVar(CLng(var_86)), var_128)
  loc_158192F:   var_A4 = var_90.Text
  loc_1581937:   var_A4 = CVar(var_94) 'String
  loc_158193E:   LateIdCallSt
  loc_158196F:   Set var_8C = Me.Txt
  loc_1581975:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&HE), var_90, var_94, CVar(CLng(&H1A)), CVar(CLng(var_86)), var_128)
  loc_158197D:   var_A4 = var_90.Text
  loc_1581985:   var_A4 = CVar(var_94) 'String
  loc_158198C:   LateIdCallSt
  loc_15819BD:   Set var_8C = Me.Txt
  loc_15819C3:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1A), var_90, var_94, CVar(CLng(&H24)), CVar(CLng(var_86)), var_128)
  loc_15819CB:   var_A4 = var_90.Text
  loc_15819D3:   var_A4 = CVar(var_94) 'String
  loc_15819DA:   LateIdCallSt
  loc_1581A0B:   Set var_8C = Me.Txt
  loc_1581A11:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H15), var_90, var_94, CVar(CLng(&HE)), CVar(CLng(var_86)), var_128)
  loc_1581A19:   var_A4 = var_90.Text
  loc_1581A21:   var_A4 = CVar(var_94) 'String
  loc_1581A28:   LateIdCallSt
  loc_1581A59:   Set var_8C = Me.Txt
  loc_1581A5F:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H16), var_90, var_94, CVar(CLng(&HF)), CVar(CLng(var_86)), var_128)
  loc_1581A67:   var_A4 = var_90.Text
  loc_1581A6F:   var_A4 = CVar(var_94) 'String
  loc_1581A76:   LateIdCallSt
  loc_1581AA7:   Set var_8C = Me.Txt
  loc_1581AAD:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H17), var_90, var_94, CVar(CLng(&H10)), CVar(CLng(var_86)), var_128)
  loc_1581AB5:   var_A4 = var_90.Text
  loc_1581ABD:   var_A4 = CVar(var_94) 'String
  loc_1581AC4:   LateIdCallSt
  loc_1581AF5:   Set var_8C = Me.Txt
  loc_1581AFB:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H18), var_90, var_94, CVar(CLng(&H11)), CVar(CLng(var_86)), var_128)
  loc_1581B03:   var_A4 = var_90.Text
  loc_1581B0B:   var_A4 = CVar(var_94) 'String
  loc_1581B12:   LateIdCallSt
  loc_1581B43:   Set var_8C = Me.Txt
  loc_1581B49:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H18), var_90, var_94, CVar(CLng(&H12)), CVar(CLng(var_86)), var_128)
  loc_1581B51:   var_A4 = var_90.Tag
  loc_1581B59:   var_A4 = CVar(var_94) 'String
  loc_1581B60:   LateIdCallSt
  loc_1581B91:   Set var_8C = Me.Txt
  loc_1581B97:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1B), var_90, var_94, CVar(CLng(&H14)), CVar(CLng(var_86)), var_128)
  loc_1581B9F:   var_A4 = var_90.Tag
  loc_1581BA7:   var_A4 = CVar(var_94) 'String
  loc_1581BAE:   LateIdCallSt
  loc_1581BDF:   Set var_8C = Me.Txt
  loc_1581BE5:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1B), var_90, var_94, CVar(CLng(&H15)), CVar(CLng(var_86)), var_128)
  loc_1581BED:   var_A4 = var_90.Text
  loc_1581BF5:   var_A4 = CVar(var_94) 'String
  loc_1581BFC:   LateIdCallSt
  loc_1581C2D:   Set var_8C = Me.Txt
  loc_1581C33:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1C), var_90, var_94, CVar(CLng(&H16)), CVar(CLng(var_86)), var_128)
  loc_1581C3B:   var_A4 = var_90.Tag
  loc_1581C43:   var_A4 = CVar(var_94) 'String
  loc_1581C4A:   LateIdCallSt
  loc_1581C7B:   Set var_8C = Me.Txt
  loc_1581C81:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H1C), var_90, var_94, CVar(CLng(&H17)), CVar(CLng(var_86)), var_128)
  loc_1581C89:   var_A4 = var_90.Text
  loc_1581C91:   var_A4 = CVar(var_94) 'String
  loc_1581C98:   LateIdCallSt
  loc_1581CB7:   var_A4 = var_128(var_D6).Value
  loc_1581CC3:   Set var_90 = CVar(CLng(8))(var_14A)
  loc_1581CC9:   var_EC = var_90.Visible
  loc_1581CD2:   var_11C = CVar(CLng(var_86)) 'Long
  loc_1581CDA:   var_148 = CVar(CLng(&H19)) 'Long
  loc_1581D12:   var_10C = CVar(CStr(IIf(((var_D6 = 1) And (var_14A = &HFF)), "Yes", "No"))) 'String
  loc_1581D19:   LateIdCallSt
  loc_1581D54:   Set var_8C = Me.Txt
  loc_1581D5A:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&HF), var_90, var_94, CVar(CLng(&H1B)), CVar(CLng(var_86)), var_128)
  loc_1581D62:   var_10C = var_90.Text
  loc_1581D6A:   var_A4 = CVar(var_94) 'String
  loc_1581D71:   LateIdCallSt
  loc_1581DA2:   Set var_8C = Me.Txt
  loc_1581DA8:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(2), var_90, var_94, CVar(CLng(&H1C)), CVar(CLng(var_86)), var_128)
  loc_1581DB0:   var_A4 = var_90.Text
  loc_1581DB8:   var_A4 = CVar(var_94) 'String
  loc_1581DBF:   LateIdCallSt
  loc_1581DF0:   Set var_8C = Me.Txt
  loc_1581DF6:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(&H10), var_90, var_94, CVar(CLng(&H1D)), CVar(CLng(var_86)), var_128)
  loc_1581DFE:   var_A4 = var_90.Text
  loc_1581E06:   var_A4 = CVar(var_94) 'String
  loc_1581E0D:   LateIdCallSt
  loc_1581E23:   var_C4 = CVar(CLng(var_86)) 'Long
  loc_1581E3D:   var_C4 = CVar(CLng(&H1E))(var_94).Caption
  loc_1581E4C:   LateIdCallSt
  loc_1581E79:   Set var_8C = Me.Txt
  loc_1581E7F:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(1), var_90, var_94, CVar(CLng(&H1F)), CVar(CLng(var_86)), var_128, CVar(var_94))
  loc_1581E96:   LateIdCallSt
  loc_1581EB4:   var_FC = CVar(CLng(&H20)) 'Long
  loc_1581EC7:   Set var_8C = Me.Txt
  loc_1581ECD:   Call 0.Method_Proc_43_58_1581F5C0 (CInt(0), var_90, var_94, var_FC, CVar(CLng(var_86)), var_90.Text, CVar(var_94))
  loc_1581ED5:   var_A4 = var_90.Text
  loc_1581EDD:   var_A4 = CVar(var_94) 'String
  loc_1581EE4:   LateIdCallSt
  loc_1581EF8:   Set var_128 = Nothing 
  loc_1581EFC: End If
  loc_1581EFC: Call Proc_43_60_DFC1AC(var_128, var_A4, var_148, var_11C)
  loc_1581F0A: If (global_144 = 0) Then
  loc_1581F0D:   Call Proc_43_59_10FF3BC(var_128, global_132)
  loc_1581F12: End If
  loc_1581F1F:  = var_FC(var_D6).Visible
  loc_1581F2D: If (var_D6 = 0) Then
  loc_1581F30:   GoTo loc_1581F58
  loc_1581F33: End If
  loc_1581F3E: Set var_8C = Me.Txt
  loc_1581F44: Call 0.Method_Proc_43_58_1581F5C0 (CInt(5))
  loc_1581F4C: var_90.SetFocus
  loc_1581F58: ' Referenced from: 1581F30
  loc_1581F58: Exit Sub
End Sub

Public Sub Proc_43_59_10FF3BC
  'Data Table: 51E0C8
  Dim var_8C As TextBox
  Dim var_88 As CheckBox
  loc_10FF07E: Set var_88 = Me.Txt
  loc_10FF084: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H18), var_8C)
  loc_10FF08C: var_8C.Text = vbNullString
  loc_10FF0A6: Set var_88 = Me.Txt
  loc_10FF0AC: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H18), var_8C)
  loc_10FF0B4: var_8C.Tag = vbNullString
  loc_10FF0CE: Set var_88 = Me.Txt
  loc_10FF0D4: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H17), var_8C)
  loc_10FF0DC: var_8C.Text = vbNullString
  loc_10FF0F6: Set var_88 = Me.Txt
  loc_10FF0FC: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H12), var_8C)
  loc_10FF104: var_8C.Text = vbNullString
  loc_10FF11E: Set var_88 = Me.Txt
  loc_10FF124: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H13), var_8C)
  loc_10FF12C: var_8C.Text = vbNullString
  loc_10FF146: Set var_88 = Me.Txt
  loc_10FF14C: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H14), var_8C)
  loc_10FF154: var_8C.Text = vbNullString
  loc_10FF16E: Set var_88 = Me.Txt
  loc_10FF174: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&HE), var_8C)
  loc_10FF17C: var_8C.Text = vbNullString
  loc_10FF196: Set var_88 = Me.Txt
  loc_10FF19C: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H15), var_8C)
  loc_10FF1A4: var_8C.Text = vbNullString
  loc_10FF1BE: Set var_88 = Me.Txt
  loc_10FF1C4: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H16), var_8C)
  loc_10FF1CC: var_8C.Text = vbNullString
  loc_10FF1E6: Set var_88 = Me.Txt
  loc_10FF1EC: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(5), var_8C)
  loc_10FF1F4: var_8C.Tag = vbNullString
  loc_10FF20E: Set var_88 = Me.Txt
  loc_10FF214: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(5), var_8C)
  loc_10FF21C: var_8C.Text = vbNullString
  loc_10FF236: Set var_88 = Me.Txt
  loc_10FF23C: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(5), var_8C)
  loc_10FF244: var_8C.Text = vbNullString
  loc_10FF25E: Set var_88 = Me.Txt
  loc_10FF264: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H1C), var_8C)
  loc_10FF26C: var_8C.Tag = vbNullString
  loc_10FF286: Set var_88 = Me.Txt
  loc_10FF28C: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H1C), var_8C)
  loc_10FF294: var_8C.Text = vbNullString
  loc_10FF2AE: Set var_88 = Me.Txt
  loc_10FF2B4: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H11), var_8C)
  loc_10FF2BC: var_8C.Tag = vbNullString
  loc_10FF2D6: Set var_88 = Me.Txt
  loc_10FF2DC: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H11), var_8C)
  loc_10FF2E4: var_8C.Text = vbNullString
  loc_10FF2FE: Set var_88 = Me.Txt
  loc_10FF304: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&HF), var_8C)
  loc_10FF30C: var_8C.Text = vbNullString
  loc_10FF31E: global_132 = vbNullString
  loc_10FF328: global_136 = vbNullString
  loc_10FF33A: Set var_88 = Me.Txt
  loc_10FF340: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(6), var_8C)
  loc_10FF348: var_8C.Text = vbNullString
  loc_10FF362: Set var_88 = Me.Txt
  loc_10FF368: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H12), var_8C)
  loc_10FF370: var_8C.Text = vbNullString
  loc_10FF38A: Set var_88 = Me.Txt
  loc_10FF390: Call 0.Method_Proc_43_59_10FF3BC0 (CInt(&H14), var_8C)
  loc_10FF398: var_8C.Text = vbNullString
  loc_10FF3B0: (0).Value = 
  loc_10FF3B8: Exit Sub
End Sub

Public Sub Proc_43_60_DFC1AC
  'Data Table: 51E0C8
  loc_DFC1A8: Exit Sub
  loc_DFC1A9: Proc_43_60_DFC1AC00 = 
End Sub

Public Sub Proc_43_61_14EEC90
  'Data Table: 51E0C8
  Dim var_A8 As Variant
  Dim var_F0 As String
  Dim var_F8 As TextBox
  Dim var_DC As Variant
  Dim var_F4 As TextBox
  Dim Me As Recordset15
  Dim var_88 As Variant
  loc_14EDE54: Set var_88 = ()
  loc_14EDE74: Set var_DC = CVar(CLng(Txt.DispID_A))(CVar(CLng(1)))
  loc_14EDE9E: If (CStr(Txt.DispID_41) <> vbNullString) Then
  loc_14EDEA5:   Set var_F4 = ()
  loc_14EDEAC:   Set var_88 = ()
  loc_14EDEE4:   Set var_DC = Me.Txt
  loc_14EDEEA:   Call 0.Method_Proc_43_61_14EEC900 (CInt(0), var_F8, CStr(Txt.DispID_41))
  loc_14EDEF2:   var_F8.Text = CVar(CLng(&H20))
  loc_14EDF0E:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EDF46:   Set var_DC = Me.Txt
  loc_14EDF4C:   Call 0.Method_Proc_43_61_14EEC900 (CInt(1), var_F8, CStr(Txt.DispID_41))
  loc_14EDF54:   var_F8.Text = CVar(CLng(&H1F))
  loc_14EDF70:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EDFAF:   If (CStr(Txt.DispID_41) = "ADRES") Then
  loc_14EDFB6:     Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H21)))
  loc_14EDFC5:     var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EDFE6:     global_108 = CStr(Txt.DispID_41)
  loc_14EE005:     Set var_88 = Me.Txt
  loc_14EE00B:     Call 0.Method_Proc_43_61_14EEC900 (CInt(&H19), var_DC, "Advance")
  loc_14EE013:     var_DC.Text = CVar(CLng(&H21))
  loc_14EE022:   Else
  loc_14EE026:     Set var_88 = (var_A8)
  loc_14EE065:     If (CStr(Txt.DispID_41) = "ARRES") Then
  loc_14EE06C:       Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H21)))
  loc_14EE07B:       var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EE09C:       global_108 = CStr(Txt.DispID_41)
  loc_14EE0BB:       Set var_88 = Me.Txt
  loc_14EE0C1:       Call 0.Method_Proc_43_61_14EEC900 (CInt(&H19), var_DC, "Refund")
  loc_14EE0C9:       var_DC.Text = CVar(CLng(&H21))
  loc_14EE0D5:     End If
  loc_14EE0D5:   End If
  loc_14EE0D9:   Set var_88 = (var_A8)
  loc_14EE114:   var_F4.Tag = CVar(CStr(Val(CStr(Txt.DispID_41))))
  loc_14EE12C:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H22)))
  loc_14EE13B:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EE18D:   Set var_DC = Me.Txt
  loc_14EE193:   Call 0.Method_Proc_43_61_14EEC900 (CInt(2), var_F8, CStr(Format(CVar(CStr(var_EC)), "dd/MMM/yyyy")), 1)
  loc_14EE19B:   var_F8.Text = 1
  loc_14EE1BD:   Set var_88 = CVar(CLng(&H1C))(Txt.DispID_41)
  loc_14EE217:   Set var_DC = Me.Txt
  loc_14EE21D:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H10), var_F8, Format$(CVar(CStr(var_EC)), "HH:mm"), 1, 1)
  loc_14EE225:   var_F8.Text = Txt.DispID_41
  loc_14EE245:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H1D)))
  loc_14EE254:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EE27C:   CVar(CLng(&H1E))(CStr(Txt.DispID_41)).Caption = var_A8
  loc_14EE296:   Set var_88 = (var_A8)
  loc_14EE2CE:   Set var_DC = Me.Txt
  loc_14EE2D4:   Call 0.Method_Proc_43_61_14EEC900 (CInt(5), var_F8, CStr(Txt.DispID_41))
  loc_14EE2DC:   var_F8.Tag = CVar(CLng(1))
  loc_14EE2F8:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE328:   global_140 = CStr(Txt.DispID_41)
  loc_14EE33D:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(2)))
  loc_14EE375:   Set var_DC = Me.Txt
  loc_14EE37B:   Call 0.Method_Proc_43_61_14EEC900 (CInt(5), var_F8, CStr(Txt.DispID_41))
  loc_14EE383:   var_F8.Text = CVar(CLng(3))
  loc_14EE39F:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE3CF:   global_132 = CStr(Txt.DispID_41)
  loc_14EE3E4:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(4)))
  loc_14EE414:   global_136 = CStr(Txt.DispID_41)
  loc_14EE429:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(5)))
  loc_14EE438:   var_A8 = CVar(CLng(Txt.DispID_A)) 'Long
  loc_14EE48A:   Set var_DC = Me.Txt
  loc_14EE490:   Call 0.Method_Proc_43_61_14EEC900 (CInt(6), var_F8, CStr(Format(CVar(CStr(var_EC)), "0.00")), 1)
  loc_14EE498:   var_F8.Text = 1
  loc_14EE4BA:   Set var_88 = CVar(CLng(8))(Txt.DispID_41)
  loc_14EE4F2:   Set var_DC = Me.Txt
  loc_14EE4F8:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H12), var_F8, CStr(Txt.DispID_41))
  loc_14EE500:   var_F8.Text = CVar(CLng(&HB))
  loc_14EE51C:   Set var_88 = CVar(CLng(Txt.DispID_A))(CVar(CLng(Txt.DispID_A)))
  loc_14EE554:   Set var_DC = Me.Txt
  loc_14EE55A:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H13), var_F8, CStr(Txt.DispID_41))
  loc_14EE562:   var_F8.Text = CVar(CLng(&HC))
  loc_14EE57E:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE5B6:   Set var_DC = Me.Txt
  loc_14EE5BC:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H14), var_F8, CStr(Txt.DispID_41))
  loc_14EE5C4:   var_F8.Text = CVar(CLng(&HD))
  loc_14EE5E0:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE618:   Set var_DC = Me.Txt
  loc_14EE61E:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&HE), var_F8, CStr(Txt.DispID_41))
  loc_14EE626:   var_F8.Text = CVar(CLng(&H1A))
  loc_14EE642:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE67A:   Set var_DC = Me.Txt
  loc_14EE680:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1A), var_F8, CStr(Txt.DispID_41))
  loc_14EE688:   var_F8.Text = CVar(CLng(&H24))
  loc_14EE6A4:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE6DC:   Set var_DC = Me.Txt
  loc_14EE6E2:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H15), var_F8, CStr(Txt.DispID_41))
  loc_14EE6EA:   var_F8.Text = CVar(CLng(&HE))
  loc_14EE706:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE73E:   Set var_DC = Me.Txt
  loc_14EE744:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H16), var_F8, CStr(Txt.DispID_41))
  loc_14EE74C:   var_F8.Text = CVar(CLng(&HF))
  loc_14EE768:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE7A0:   Set var_DC = Me.Txt
  loc_14EE7A6:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H17), var_F8, CStr(Txt.DispID_41))
  loc_14EE7AE:   var_F8.Text = CVar(CLng(&H10))
  loc_14EE7CA:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE802:   Set var_DC = Me.Txt
  loc_14EE808:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H18), var_F8, CStr(Txt.DispID_41))
  loc_14EE810:   var_F8.Text = CVar(CLng(&H11))
  loc_14EE82C:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE864:   Set var_DC = Me.Txt
  loc_14EE86A:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H18), var_F8, CStr(Txt.DispID_41))
  loc_14EE872:   var_F8.Tag = CVar(CLng(&H12))
  loc_14EE88E:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE8C6:   Set var_DC = Me.Txt
  loc_14EE8CC:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_14EE8D4:   var_F8.Text = CVar(CLng(9))
  loc_14EE8F0:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE928:   Set var_DC = Me.Txt
  loc_14EE92E:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H11), var_F8, CStr(Txt.DispID_41))
  loc_14EE936:   var_F8.Tag = CVar(CLng(&HA))
  loc_14EE952:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE98A:   Set var_DC = Me.Txt
  loc_14EE990:   Call 0.Method_Proc_43_61_14EEC900 (CInt(4), var_F8, CStr(Txt.DispID_41))
  loc_14EE998:   var_F8.Text = CVar(CLng(&H13))
  loc_14EE9B4:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EE9EC:   Set var_DC = Me.Txt
  loc_14EE9F2:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1B), var_F8, CStr(Txt.DispID_41))
  loc_14EE9FA:   var_F8.Tag = CVar(CLng(&H18))
  loc_14EEA16:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EEA4E:   Set var_DC = Me.Txt
  loc_14EEA54:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1B), var_F8, CStr(Txt.DispID_41))
  loc_14EEA5C:   var_F8.Text = CVar(CLng(6))
  loc_14EEA78:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EEAB0:   Set var_DC = Me.Txt
  loc_14EEAB6:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1C), var_F8, CStr(Txt.DispID_41))
  loc_14EEABE:   var_F8.Tag = CVar(CLng(&H16))
  loc_14EEADA:   Set var_88 = (CVar(CLng(Txt.DispID_A)))
  loc_14EEB04:   var_F0 = CStr(Txt.DispID_41)
  loc_14EEB12:   Set var_DC = Me.Txt
  loc_14EEB18:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1C), var_F8, var_F0)
  loc_14EEB20:   var_F8.Text = CVar(CLng(&H17))
  loc_14EEB49:   Set var_88 = Me.Txt
  loc_14EEB4F:   Call 0.Method_Proc_43_61_14EEC900 (CInt(&H1C), var_DC, var_F0)
  loc_14EEB57:   "Code='" = var_DC.Tag
  loc_14EEB71:   Me.Filter = CVar(CVar(CLng(Txt.DispID_A)) & var_F0 & "'")
  loc_14EEB9E:   If (Me.RecordCount > 0) Then
  loc_14EEBE0:     If (Me.Fields.Item("CompanyType").Value = "Travel Agency") Then
  loc_14EEBEF:       (&HFF).Visible = 
  loc_14EEBFB:       Set var_88 = ()
  loc_14EEC1B:       Set var_DC = CVar(CLng(Txt.DispID_A))(CVar(CLng(&H19)))
  loc_14EEC45:       If (CStr(Txt.DispID_41) = "Yes") Then
  loc_14EEC54:         (1).Value = 
  loc_14EEC5C:       End If
  loc_14EEC5F:     Else
  loc_14EEC6B:       (0).Visible = 
  loc_14EEC73:     End If
  loc_14EEC73:   End If
  loc_14EEC82:   Me.Filter = 0
  loc_14EEC89:   Set var_F4 = Nothing 
  loc_14EEC8D: End If
  loc_14EEC8D: Exit Sub
End Sub
