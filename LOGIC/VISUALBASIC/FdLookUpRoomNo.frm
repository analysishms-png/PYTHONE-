VERSION 5.00
Begin VB.Form FdLookUpRoomNo
  Caption = "Display Rack"
  BackColor = &HFFC0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11715
  ClientHeight = 7500
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin Frame FrRoomDtl
    Caption = "Frame1"
    Left = 30
    Top = 9105
    Width = 14310
    Height = 1230
    TabIndex = 7
    BorderStyle = 0 'None
    Begin Label Label4
      BackColor = &HFFC0C0&
      ForeColor = &HFF&
      Left = 0
      Top = 915
      Width = 14565
      Height = 315
      TabIndex = 4
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label3
      BackColor = &HFFC0C0&
      ForeColor = &HC00000&
      Left = 0
      Top = 600
      Width = 14565
      Height = 315
      TabIndex = 20
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblRoomDtl
      Caption = "Room Detail"
      ForeColor = &H0&
      Left = 120
      Top = 15
      Width = 14145
      Height = 210
      TabIndex = 19
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Caption = "Out Of Order"
      Index = 2
      BackColor = &HFF&
      ForeColor = &H80000008&
      Left = 2445
      Top = 315
      Width = 1170
      Height = 270
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Vacant Dirty"
      Index = 1
      BackColor = &HFFFF&
      ForeColor = &H80000008&
      Left = 1290
      Top = 315
      Width = 1125
      Height = 270
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Guest In House"
      Index = 3
      BackColor = &HFF00&
      ForeColor = &H80000008&
      Left = 3645
      Top = 315
      Width = 1350
      Height = 270
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Expected Arrival"
      Index = 4
      BackColor = &H8080FF&
      ForeColor = &H80000008&
      Left = 5025
      Top = 315
      Width = 1455
      Height = 270
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label LblTR
      BackColor = &HFFC0C0&
      ForeColor = &H8080&
      Left = 6525
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 14
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LBLOC
      BackColor = &HFFC0C0&
      ForeColor = &HC000&
      Left = 9465
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 13
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LBLOD
      BackColor = &HFFC0C0&
      ForeColor = &HC0&
      Left = 8730
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 12
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Lblblockroom
      BackColor = &HFFC0C0&
      ForeColor = &H808000&
      Left = 7995
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 11
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label lblOccRoom
      BackColor = &HFFC0C0&
      ForeColor = &H8000&
      Left = 7260
      Top = 315
      Width = 705
      Height = 255
      TabIndex = 10
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LBLRoomName
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 10260
      Top = 285
      Width = 4020
      Height = 285
      TabIndex = 8
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Vacant Clean"
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 60
      Top = 315
      Width = 1215
      Height = 270
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin Timer Timer1
    Enabled = 0   'False
    Interval = 1000
    Left = 9930
    Top = 3015
  End
  Begin TextBox Text1
    Left = 15120
    Top = 4605
    Width = 1590
    Height = 315
    Visible = 0   'False
    TabIndex = 2
  End
  Begin TextBox Text3
    BackColor = &HFFFFFF&
    Left = 810
    Top = 600
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    Tag = "2,0"
    Alignment = 2 'Center
    MaxLength = 1
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 0
    Top = 0
    Width = 14565
    Height = 7170
    TabIndex = 1
  End
  Begin CommonDialog CDLG
  End
  Begin BtnEnh BtnExit
    Left = 14550
    Top = 8160
    Width = 1275
    Height = 1050
    TabIndex = 3
  End
  Begin BtnEnh CmdOption
    Index = 1
    Left = 1470
    Top = 7230
    Width = 1020
    Height = 885
    Visible = 0   'False
    TabIndex = 5
  End
  Begin BtnEnh CmdOption
    Index = 0
    Left = 465
    Top = 7230
    Width = 975
    Height = 885
    Visible = 0   'False
    TabIndex = 6
  End
End

Attribute VB_Name = "FdLookUpRoomNo"

Private global_92 As Long
Private global_100 As Long
Private global_78 As Integer
Private global_84 As Recordset15

Private Sub btnExit_UnknownEvent_9 'E1805C
  'Data Table: 47DD54
  loc_E18051: Me.Global.Unload Me
  loc_E18059: Exit Sub
  loc_E1805A: CExtInstUnk
End Sub

Private Sub Label2_Click(Index As Integer) '101F9AC
  'Data Table: 47DD54
  Dim var_94 As Variant
  Dim var_A8 As CommonDialog
  Dim arg_20 As Variant
  Dim var_B8 As Variant
  Dim var_C0 As Label
  Dim var_D4 As String
  Dim unk_47DD60 As Connection15
  loc_101F7CC: var_94 = 1
  loc_101F7D6: Set var_A8 = Me.FGrid1
  loc_101F7F1: arg_20 = Me.CDLG._Action
  loc_101F81B: If (CLng(Me.CDLG.Color) = 0) Then
  loc_101F81E:   Exit Sub
  loc_101F81F: End If
  loc_101F829: var_B8 = Me.CDLG.Color
  loc_101F83C: Set var_BC = Me.Label2
  loc_101F842: Call 0.Method_Label2_Click0 (Index, var_C0, CLng(var_B8))
  loc_101F84A: var_C0.BackColor = arg_20
  loc_101F892: unk_47DD60.Execute "delete from Dispcolor where [index]=" & CStr(Index) & " and Logsite_Code='" & MemVar_1F92078 & "'", var_B8, -1
  loc_101F8D1: Set var_A8 = Me.CDLG
  loc_101F8E6: var_D4 = "Insert into DispColor([Index],[Color],Detail,Site_Code,U_EntDt,U_AE,LogSite_Code) values(" & CStr(Index) & ",'" & CStr(CLng(var_A8.Color))
  loc_101F8FD: Set var_BC = Me.Label2
  loc_101F903: Call 0.Method_Label2_Click0 (Index, var_C0, var_D8, var_D4 & "','", var_18C)
  loc_101F90B: -1 = var_C0.Caption
  loc_101F93A: Proc_6_7_F25D88(var_108, Date, CVar(var_190 & var_D8 & "','" & MemVar_1F92070 & "',"))
  loc_101F946: var_94 = ",'A','"
  loc_101F96C: unk_47DD60.Execute CStr(var_A8 & var_108 & var_94 & CVar(MemVar_1F92078) & "')"), FGrid1.DispID_18001, var_94
  loc_101F9AA: Exit Sub
End Sub

Private Sub Timer1_Timer() 'EDDE44
  'Data Table: 47DD54
  loc_EDDDB0: If (Me.Label3.Caption <> vbNullString) Then
  loc_EDDDFE:   Me.Label3.BackColor = RGB(CInt((CDbl(255) * Rnd(var_AC))), CInt((CDbl(255) * Rnd(var_CC))), CInt((CDbl(255) * Rnd(var_EC))))
  loc_EDDE1E:   Me.Label3.ForeColor = &HFFFFFF
  loc_EDDE29: Else
  loc_EDDE38:   Me.Label3.BackColor = &HE0E0E0
  loc_EDDE40: End If
  loc_EDDE40: Exit Sub
End Sub

Private Sub Form_Load() '1234B5C
  'Data Table: 47DD54
  Dim var_90 As String
  Dim unk_47DD60 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_C0 As Fields15
  Dim var_224 As Field20
  loc_1234678: On Error Goto loc_1234B15
  loc_123469F: unk_47DD60.Execute "SELECT * FROM ENVIRO WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B4, -1
  loc_12346AA: Set var_8C = var_B8
  loc_12346CE: If (var_8C.RecordCount > 0) Then
  loc_12346F7:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("DisplayRackRow")))
  loc_1234704:   global_92 = CLng(var_D0)
  loc_1234737:   Proc_6_39_E7C810(var_D0, CVar(var_8C.Fields.Item("DisplayRackcol")))
  loc_1234768:   var_C0 = var_8C.Fields.Item("DisplayRackFontSize")
  loc_1234770:   var_B4 = CVar(var_C0) 'Address
  loc_1234777:   Proc_6_39_E7C810(var_D0, var_B4, CLng(var_D0))
  loc_1234784:   global_100 = CLng(var_D0)
  loc_1234791: End If
  loc_1234796: Set var_8C = Nothing
  loc_12347A0: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), global_100)
  loc_12347B2: Set var_B8 = Me.FGrid1
  loc_12347B8: var_B8.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_12347C0: Call ColorLabel()
  loc_12347C5: Call Proc_81_16_16B9EBC(global_92)
  loc_12347F9: var_D0 = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<") 'String
  loc_1234807: Proc_6_7_F25D88(var_B4, MemVar_1F920EC, var_D0, var_210, -1, var_B8)
  loc_1234827: Proc_6_7_F25D88(var_120, MemVar_1F920EC, var_C0 & var_B4 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_1234847: Proc_6_7_F25D88(var_170, MemVar_1F920EC, var_224 & var_120 & " And ChkOutDate > ")
  loc_1234867: Proc_6_7_F25D88(var_1C0, MemVar_1F920EC, var_234 & var_170 & ") OR (CHKINDATE=")
  loc_1234886: unk_47DD60.Execute CStr("OR: " & var_1C0 & " and  ChkOutDate is null)"), var_B8, 
  loc_123488E:  = var_B8.Fields
  loc_1234896:  = var_C0.Item()
  loc_123489E:  = var_224.Value
  loc_12348B8: Me.lblOccRoom.Caption = CStr(var_234)
  loc_1234923: var_D0 = CVar("SELECT Count(*) FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type ='O' And (FromDate = ") 'String
  loc_1234931: Proc_6_7_F25D88(var_B4, MemVar_1F920EC, var_D0, var_120, -1, var_B8)
  loc_1234942: var_100 = var_C0 & var_B4 & ")" 
  loc_1234950: unk_47DD60.Execute CStr(var_100), 0, var_224
  loc_1234960:  = var_C0.Item("OO: ")
  loc_1234968:  = var_224.Value
  loc_1234982: Me.Lblblockroom.Caption = CStr(var_B8.Fields)
  loc_12349AC: var_110 = "OD: "
  loc_12349B7: var_E0 = 0
  loc_12349D6: unk_47DD60.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO'", var_B4, -1
  loc_12349DE: var_B8 = var_B8.Fields
  loc_12349E6: var_E0 = var_C0.Item(var_C0)
  loc_12349EE: var_224 = var_224.Value
  loc_1234A08: Me.LBLOD.Caption = CStr(var_D0 & var_D0)
  loc_1234A24: var_110 = "OC: "
  loc_1234A2F: var_E0 = 0
  loc_1234A4E: unk_47DD60.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO'", var_B4, -1
  loc_1234A56: var_B8 = var_B8.Fields
  loc_1234A5E: var_E0 = var_C0.Item(var_C0)
  loc_1234A66: var_224 = var_224.Value
  loc_1234A80: Me.LBLOC.Caption = CStr(var_D0 & var_D0)
  loc_1234A9C: var_110 = "TR:"
  loc_1234AA7: var_E0 = 0
  loc_1234AC6: unk_47DD60.Execute "SELECT Count(*) FROM RoomMast where type='RO' and inclcount='Y'", var_B4, -1
  loc_1234ACE: var_B8 = var_B8.Fields
  loc_1234AD6: var_E0 = var_C0.Item(var_C0)
  loc_1234ADE: var_224 = var_224.Value
  loc_1234AE6: var_F0 = var_D0 & var_D0 
  loc_1234AEA: var_90 = CStr(var_F0)
  loc_1234AF8: Me.LblTR.Caption = var_90
  loc_1234B14: Exit Sub
  loc_1234B15: ' Referenced from: 1234678
  loc_1234B1D: Set var_B8 = Err()
  loc_1234B23: Call 0.Method_arg_2C (var_90, var_110)
  loc_1234B44: MsgBox(CVar(var_90), &H10, "Information", var_F0, var_100)
  loc_1234B57: Exit Sub
  loc_1234B58: Exit Sub
End Sub

Private Sub Form_Resize() 'EF9CC0
  'Data Table: 47DD54
  Dim var_98 As Variant
  Dim var_B4 As Variant
  loc_EF9BE6: Call 0.Method_arg_100 (var_88)
  loc_EF9BF2: var_98 = CVar((var_88 - CDbl(&H32))) 'Single
  loc_EF9C01: Me.FGrid1.Width = var_98
  loc_EF9C21: Call 0.Method_arg_108 (var_88)
  loc_EF9C38: Me.FrRoomDtl.Top = (var_88 - Me.FrRoomDtl.Height)
  loc_EF9C51: var_88 = Me.FrRoomDtl.Top
  loc_EF9C62: Set var_B4 = Me.BtnExit
  loc_EF9C68: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004(CVar(var_88))
  loc_EF9C8C: Call 0.Method_arg_108 (var_88)
  loc_EF9C9C: var_98 = CVar(((var_88 - Me.FrRoomDtl.Height) - CDbl(&H32))) 'Single
  loc_EF9CAB: Me.FGrid1.Height = CVar(var_88)
  loc_EF9CB7: Call Proc_81_16_16B9EBC()
  loc_EF9CBC: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E2A2A0
  'Data Table: 47DD54
  loc_E2A283: Set global_84 = Nothing
  loc_E2A295: Set global_88 = Nothing
  loc_E2A29C: Exit Sub
End Sub

Private Sub Form_Activate() '11584D0
  'Data Table: 47DD54
  Dim var_90 As Variant
  Dim var_94 As String
  Dim unk_47DD60 As Connection15
  Dim var_8C As Recordset15
  Dim var_B8 As Variant
  Dim var_C8 As String
  Dim var_D8 As Variant
  Dim var_128 As Variant
  Dim var_168 As String
  Dim var_1A8 As Variant
  Dim var_88 As Recordset15
  Dim var_1F0 As Fields15
  Dim var_198 As Variant
  loc_115816C: Call Proc_81_16_16B9EBC()
  loc_115817A: If (global_78 = &HFF) Then
  loc_115817D:   Call Proc_81_16_16B9EBC()
  loc_1158187:   global_78 = 0
  loc_115818A: End If
  loc_1158191: Set var_90 = Me.Label3
  loc_1158197: var_90.Caption = vbNullString
  loc_11581C3: unk_47DD60.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_B8, -1
  loc_11581CE: Set var_8C = var_90
  loc_11581DE: ' Referenced from: 1158466
  loc_11581ED: If Not(var_8C.EOF) Then
  loc_115820F:   var_90 = var_8C.Fields
  loc_1158228:   var_94 = Proc_6_38_E68A98(CVar(var_90.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1EC, -1)
  loc_115823A:   var_C8 = var_1F0 & "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F92078
  loc_115824F:   Proc_6_7_F25D88(var_E8, MemVar_1F920EC, CVar(var_C8 & "' AND "))
  loc_115826F:   Proc_6_7_F25D88(var_148, MemVar_1F920EC)
  loc_115827B:   var_168 = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_115828F:   Proc_6_7_F25D88(var_198, MemVar_1F920EC)
  loc_1158297:   var_1A8 = var_90 & var_E8 & " >=Arrdate and " & var_148 & var_168 & var_198 
  loc_11582AE:   unk_47DD60.Execute CStr(var_1A8 & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), global_78, 
  loc_11582B9:   Set var_88 = var_1F0
  loc_11582FF:   If (var_88.RecordCount > 0) Then
  loc_115831D:     If (Me.Timer1.Enabled = 0) Then
  loc_115832C:       Me.Timer1.Enabled = True
  loc_1158334:       ' Referenced from: 1158458
  loc_1158334:     End If
  loc_1158345:     If (var_88.EOF = 0) Then
  loc_115837D:       var_D8 = " Todays Expected Arrivals-> "
  loc_115839F:       var_128 = (CVar(Me.Label3.Caption) + IIf((Me.Label3.Caption = vbNullString), MemVar_1F920EC, " ; "))
  loc_1158400:       Proc_6_39_E7C810(var_1A8, CVar(var_88.Fields.Item("Rooms")))
  loc_115841A:       Me.Label3.Caption = CStr(Me.Label3 & " ; " & " >=Arrdate and " & var_8C.Fields.Item("Name").Value & "=" & var_1A8)
  loc_1158453:       var_88.MoveNext
  loc_1158458:       GoTo loc_1158334
  loc_115845B:     End If
  loc_115845B:     GoTo loc_115845E
  loc_115845E:     ' Referenced from: 115845B
  loc_115845E:   End If
  loc_1158461:   var_8C.MoveNext
  loc_1158466:   GoTo loc_11581DE
  loc_1158469: End If
  loc_1158489: If (Me.Label3.Caption <> vbNullString) Then
  loc_11584A7:   If (Me.Timer1.Enabled = 0) Then
  loc_11584B6:     Me.Timer1.Enabled = True
  loc_11584BE:   End If
  loc_11584BE: End If
  loc_11584C3: Set var_8C = Nothing
  loc_11584CB: Set var_88 = Nothing
  loc_11584CE: Exit Sub
loc_11584CF: End Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E57DB4
  'Data Table: 47DD54
  loc_E57D7E: If (CLng(KeyCode) = &H74) Then
  loc_E57D81:   Call Proc_81_16_16B9EBC()
  loc_E57D86: End If
  loc_E57D9B: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E57DAB:   Me.Global.Unload Me
  loc_E57DB3: End If
  loc_E57DB3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '10A1BF8
  'Data Table: 47DD54
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F4 As String
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_47DD60 As Connection15
  Dim var_F8 As Recordset15
  Dim var_1A0 As String
  Dim var_194 As Label
  Dim var_BC As String
  loc_10A1960: On Error Goto loc_10A1BB1
  loc_10A1982: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_10A1985:   Exit Sub
  loc_10A1986: End If
  loc_10A19A1: If (Me.Text3.Visible = &HFF) Then
  loc_10A19B0:   Me.Text3.Visible = False
  loc_10A19B8: End If
  loc_10A19C2: var_98 = Me.FGrid1.Rows
  loc_10A19D1: var_AC = 1
  loc_10A1A12: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_10A1A15:   Exit Sub
  loc_10A1A16: End If
  loc_10A1A23: Me.Label4.Caption = vbNullString
  loc_10A1A3E: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10A1A5C: var_CC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_10A1A6B: var_10C = Me.FGrid1.TextMatrix)
  loc_10A1A76: var_11C = CVar(CStr(var_10C)) 'String
  loc_10A1A95: var_F4 = "Select RF.Name As RoomFeature from Roommast1 R Left Join RoomFeature RF On R.RoomFeat=RF.code Where (R.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A1AB9: unk_47DD60.Execute CStr(CVar(var_F4 & "') and R.RoomCode='") & Trim(var_11C) & "' Order By R.Sno"), var_190, -1
  loc_10A1AC4: Set var_F8 = var_194
  loc_10A1B02: If (var_F8.RecordCount > 0) Then
  loc_10A1B12:   Me.Label4.Caption = "Room Features : "
  loc_10A1B1A:   ' Referenced from: 10A1BA5
  loc_10A1B29:   If Not(var_F8.EOF) Then
  loc_10A1B39:     var_F4 = Me.Label4.Caption
  loc_10A1B44:     var_AC = "RoomFeature"
  loc_10A1B74:     var_1A0 = var_AC & Proc_6_38_E68A98(CVar(var_F8.Fields.Item(var_AC)), var_F4, var_194, 1) & " + "
  loc_10A1B81:     Me.Label4.Caption = var_1A0
  loc_10A1BA0:     var_F8.MoveNext
  loc_10A1BA5:     GoTo loc_10A1B1A
  loc_10A1BA8:   End If
  loc_10A1BA8: End If
  loc_10A1BAD: Set var_F8 = Nothing
  loc_10A1BB0: Exit Sub
  loc_10A1BB1: ' Referenced from: 10A1960
  loc_10A1BB9: Set var_88 = Err()
  loc_10A1BBF: Call 0.Method_arg_2C (var_F4, var_AC)
  loc_10A1BDD: var_98 = CVar(var_F4) 'String
  loc_10A1BE0: MsgBox(var_98, &H10, "Information", var_10C, var_11C)
  loc_10A1BF3: Exit Sub
  loc_10A1BF4: Exit Sub
  loc_10A1BF5: var_BC = (CLng(var_98) = 2)
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E8F9A8
  'Data Table: 47DD54
  loc_E8F936: If (KeyCode = &HD) Then
  loc_E8F964:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E8F967:     Call Fgrid1_UnknownEvent_9()
  loc_E8F96C:   End If
  loc_E8F99F:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E8F9A2:     Call Fgrid1_UnknownEvent_B()
  loc_E8F9A7:   End If
  loc_E8F9A7: End If
  loc_E8F9A7: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '1320A2C
  'Data Table: 47DD54
  Dim var_A4 As Variant
  Dim var_A8 As String
  Dim var_8E As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As Variant
  Dim var_160 As Variant
  Dim var_170 As Variant
  Dim var_1A0 As Variant
  Dim var_1C4 As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim unk_47DD60 As Connection15
  Dim var_11C As Variant
  Dim var_DC As Variant
  loc_1320323: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_132033A:   var_8E = CInt(CLng(Me.FGrid1.Col))
  loc_1320346: Else
  loc_1320385:   var_8E = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1320399: End If
  loc_13203AC: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13203B5: var_EC = CVar(CLng(var_8E)) 'Long
  loc_13203F0: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_13203F8: var_14C = "VACANT"
  loc_1320406: Set var_160 = Me.FGrid1
  loc_132040C: var_170 = var_160.Row
  loc_1320421: var_1A0 = CVar(CLng((var_8E + 1))) 'Long
  loc_1320488: If CBool(var_1A0 And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "O")) Then
  loc_132049E:   var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13204AA:   var_EC = CVar(CLng((var_8E - 1))) 'Long
  loc_13204E3:   var_A8 = "SELECT RoomCat.Name, RoomCat.Code FROM RoomMast Inner JOIN RoomCat ON RoomMast.RoomCat = RoomCat.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_13204F0:   var_13C = CVar(var_A8 & "') and RoomMast.CODE='") & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) 
  loc_13204F4:   var_14C = "'"
  loc_1320507:   unk_47DD60.Execute CStr(var_13C & var_14C), var_170, -1
  loc_1320512:   Set var_8C = var_160
  loc_132054F:   If (Me.Recordset15.RecordCount > 0) Then
  loc_1320568:     If (FdLookUpRoomNo.OpenMode = "Online") Then
  loc_1320575:       var_11C = Me.FGrid1.Col
  loc_1320581:       var_CC = "Code"
  loc_13205A9:       var_170 = CVar(Proc_6_38_E68A98(CVar(Me.var_11C.Fields.Item(var_CC)), var_11C, var_160, var_EC, var_CC, CVar(CLng(var_170)))) 'String
  loc_13205B0:       var_DC = "Name"
  loc_13205D8:       var_1C4 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_DC)), var_170, (var_13C = var_14C), var_EC)) 'String
  loc_13205EF:       var_EC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_132060B:       var_14C = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_11C) + 1)) / CDbl(6)))))) 'Long
  loc_132062B:       var_15C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_132063A:       Call unk_47DD7A.SEARCHBACKRoomNo
  loc_132066F:       Me.Global.Unload Me
  loc_132067A:     Else
  loc_1320684:       var_BC = Me.FGrid1.Col
  loc_13206A0:       var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13206BC:       var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_13206CB:       var_10C = Me.FGrid1.TextMatrix)
  loc_13206EE:       fdWalkInEntry.PRoomNo = CStr(Trim(CVar(CStr(var_10C))))
  loc_132070F:       var_CC = "Code"
  loc_1320740:       fdWalkInEntry.PRoomTypeCode = Proc_6_38_E68A98(CVar(Me.var_10C.Fields.Item(var_CC)), var_EC, var_CC, var_BC, var_15C, var_14C)
  loc_1320751:       var_CC = "Name"
  loc_1320782:       fdWalkInEntry.PRoomTypeName = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_CC)), var_EC, var_1C4)
  loc_1320799:       Call 0.Method_arg_1C4 ("Online", var_CC)
  loc_13207AC:       Call 0.Method_arg_2B0 (var_CC, var_DC)
  loc_13207B6:       global_78 = &HFF
  loc_13207B9:     End If
  loc_13207B9:   End If
  loc_13207BC: Else
  loc_13207D6:   If (global_84.RecordCount > 0) Then
  loc_13207E2:     Me.Recordset15.MoveFirst
  loc_13207E7:   End If
  loc_1320818:   var_EC = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1320827:   var_10C = Me.FGrid1.TextMatrix)
  loc_1320868:   Me.var_10C.Find "RoomNo='" & Proc_6_38_E68A98(CVar(CStr(var_10C)), var_EC, CVar(CLng(Me.FGrid1.Row))) & "'", 0, 1
  loc_13208A6:   If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_13208EB:     If CBool(Me.Recordset15.Fields.Item("FolioNo").Value <> 0) Then
  loc_13208F2:       var_248 = New fdDisplayFolio 'Address Function
  loc_1320923:       var_248.FDispDocid = CVar(Me.Recordset15.Fields.Item("DocID"))
  loc_132095A:       var_248.mFolioNo = CVar(Me.Recordset15.Fields.Item("mFolioNo"))
  loc_1320970:       var_248.OpenMode = 1
  loc_1320974:       var_DC = 0
  loc_132099F:       var_A4 = CVar(Me.Recordset15.Fields.Item("RoomNo")) 'Address
  loc_13209A7:       VarLateMemCallSt
  loc_13209B3:       var_DC = 10
  loc_13209DE:       var_A4 = CVar(Me.Recordset15.Fields.Item("FolioNo")) 'Address
  loc_13209E6:       VarLateMemCallSt
  loc_13209F2:       var_CC = 0
  loc_13209F8:       var_EC = True
  loc_1320A01:       Call var_248.Txt_Validate
  loc_1320A07:       var_CC = 1
  loc_1320A15:       Call var_248.Show
  loc_1320A1B:     End If
  loc_1320A1B:   End If
  loc_1320A1B: End If
  loc_1320A20: Set var_88 = Nothing
  loc_1320A28: Set var_8C = Nothing
  loc_1320A2B: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5A380
  'Data Table: 47DD54
  loc_E5A346: If (KeyCode = &HD) Then
  loc_E5A374:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5A377:     Call Fgrid1_UnknownEvent_9()
  loc_E5A37C:   End If
  loc_E5A37C: End If
  loc_E5A37C: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '148439C
  'Data Table: 47DD54
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_178 As Variant
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_188 As Variant
  Dim var_190 As String
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim var_1D0 As String
  Dim var_1F0 As String
  Dim var_220 As Variant
  Dim var_240 As Variant
  Dim var_280 As Variant
  Dim var_2A0 As Variant
  Dim unk_47DD60 As Connection15
  Dim var_2E4 As String
  Dim var_88 As Recordset15
  Dim var_33C As Variant
  Dim var_36C As Variant
  Dim var_8C As Recordset15
  Dim var_168 As Variant
  loc_14837F7: var_178 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_148380E: var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148387A: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1483890:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14838A8:   var_104 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_14838C2:   var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_14838ED:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148390B:   var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1483930:   var_90 = var_104 & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_148395F:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_148397D:   var_104 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1483997:   var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_14839AF: Else
  loc_14839D4:   var_178 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14839EB:   var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483A57:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1483A6D:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483A8B:     var_104 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1483AA5:     var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1483AD0:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483B0D:     var_90 = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1483B3C:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483B5A:     var_104 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1483B74:     var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_1483B8C:   Else
  loc_1483BB1:     var_178 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1483BC8:     var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483C34:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_1483C4A:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483C68:       var_104 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1483C82:       var_94 = CStr(Me.FGrid1.TextMatrix))
  loc_1483CAD:       var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1483CCB:       var_104 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1483CF0:       var_90 = CVar(CLng(Me.FGrid1.Col)) & CStr(Me.FGrid1.TextMatrix)) & ")"
  loc_1483D10:       Set var_9C = Me.FGrid1
  loc_1483D1F:       var_E4 = CVar(CLng(var_9C.Row)) 'Long
  loc_1483D37:       var_104 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_1483D51:       var_98 = CStr(Me.FGrid1.TextMatrix))
  loc_1483D66:     End If
  loc_1483D66:   End If
  loc_1483D66: End If
  loc_1483D83: var_90 = Replace(var_90, vbCrLf, " ", 1, -1, 0)
  loc_1483D86: var_104 = "convert(char,GuestFolio.vDate ,103)"
  loc_1483D96: var_AC = " GuestFolio.Vdate "
  loc_1483DE7: var_114 = "SELECT Distinct RoomOcc.adult as NoOfPax,GuestFolio.rodisc as Discount,RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot,"
  loc_1483DF8: var_138 = var_114 & IIf((MemVar_1F923AC = "A"), var_AC, var_104) & " as CheckInDate ," 
  loc_1483E03: var_1D0 = " as DepDate , GuestProf.Name AS GuestName, GuestProf.GuestStatus, SubGroup.Name AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,RoomOcc.PlanCode,PlanMast.Plan_package,GuestFolio.DocId ,GuestFolio.MFolioNoDocid,RoomOcc.ChkinTime,RoomOcc.DepTime,(CASE WHEN GuestFolio.DocId =GuestFolio.MFolioNoDocid THEN 'Ldr' ELSE '' END) AS Leader,PlanMast.Name AS PlanType "
  loc_1483E0C: var_1F0 = " FROM (((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_1483E1B: var_220 = var_138 & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1D0 & var_1F0 & CVar(MemVar_1F92078) 
  loc_1483E37: var_280 = var_220 & "' AND ROOMMAST.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and roommast.code='" 
  loc_1483E58: unk_47DD60.Execute CStr(var_280 & CVar(var_94) & "' ORDER BY RoomMast.Code"), var_2E0, -1
  loc_1483E63: Set var_88 = var_9C
  loc_1483EB2: var_190 = "Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type In ('O','M') And RoomCode='"
  loc_1483EC6: var_E4 = MemVar_1F920EC
  loc_1483ECE: Proc_6_7_F25D88(var_AC, var_E4, CVar(var_190 & var_94 & "' And "), var_138, -1, var_9C, var_9C, var_104)
  loc_1483EED: unk_47DD60.Execute CStr(var_E4 & var_AC & " between fromdate and ToDate"), var_E4, "("
  loc_1483EF8: Set var_8C = var_9C
  loc_1483F2A: If (var_88.RecordCount > 0) Then
  loc_1483F33:   var_E4 = "PlanType"
  loc_1483F5A:   var_104 = "PlanType"
  loc_1484022:   var_178 = CVar(var_90) 'String
  loc_1484030:   var_114 = " <-> Plan Type "
  loc_1484038:   var_128 = (var_114 + var_88.Fields.Item(var_104).Value)
  loc_1484053:   var_168 = IIf((var_88.Fields.Item(var_E4).Value <> vbNullString), var_E4 & var_88.Fields.Item(var_E4).Value & " between fromdate and ToDate", vbNullString)
  loc_148405B:   var_188 = (var_178 + var_168)
  loc_1484074:   var_240 = CVar(" <-> Discount " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("Discount")), var_104, var_E4)) 'String
  loc_148408E:   var_280 = IIf((var_88.Fields.Item("Discount").Value <> 0), (var_88.Fields.Item("Discount").Value <> 0) & "' AND ROOMMAST.LOGSITE_CODE='", vbNullString)
  loc_1484096:   var_2A0 = (IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") + var_280)
  loc_14840AF:   var_33C = CVar(" <-> No Of Pax " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("NoofPax")), var_E4)) 'String
  loc_14840D1:   var_36C = (var_280 & CVar(var_94) + IIf((var_88.Fields.Item("NoofPax").Value <> 0), var_33C, vbNullString))
  loc_14840E3:   Me.LblRoomDtl.Caption = CStr(var_36C)
  loc_148413E: Else
  loc_1484152:   If (var_8C.RecordCount > 0) Then
  loc_1484164:     var_C4 = var_8C.Fields
  loc_14841AE:     var_B0 = var_8C.Fields.Item("U_Name")
  loc_14841B6:     var_AC = CVar(var_B0) 'Address
  loc_14841CA:     var_138 = CVar(var_178 & Proc_6_38_E68A98(var_AC, var_90 & " Blocked By :   ") & " From :   ") 'String
  loc_14841FD:     var_168 = 1 & Format(CVar(var_C4.Item("FromDate")), "dd/MMM/yyyy") & " To " 
  loc_1484273:     var_2A0 = 1 & Format(CVar(var_8C.Fields.Item("ToDate")), "dd/MMM/yyyy") & Space(3) & "Reason:   " & var_8C.Fields.Item("Reasons").Value 
  loc_1484285:     Me.LblRoomDtl.Caption = CStr(var_2A0)
  loc_14842CA:   Else
  loc_14842D7:     Me.LblRoomDtl.Caption = var_90
  loc_14842DF:   End If
  loc_14842DF: End If
  loc_14842E5: var_F4 = 0
  loc_1484310: var_2E4 = "Select IsNull(Max(Name),'') from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and code='" & var_94
  loc_1484320: unk_47DD60.Execute var_2E4 & "'", var_AC, -1
  loc_1484328: var_9C = var_9C.Fields
  loc_1484330: var_F4 = var_B0.Item(var_B0)
  loc_1484352: Me.LBLRoomName.Caption = var_168 & Proc_6_38_E68A98(CVar(var_C4), var_C4, " ", 1)
  loc_1484380: Me.LBLRoomName.Refresh
  loc_148438D: Set var_88 = Nothing
  loc_1484395: Set var_8C = Nothing
  loc_1484398: Exit Sub
End Sub

Public Sub ColorLabel() 'F688EC
  'Data Table: 47DD54
  Dim unk_47DD60 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_B8 As Fields15
  Dim var_E4 As Label
  loc_F687DE: unk_47DD60.Execute "Select * from DispColor", var_A8, -1
  loc_F687E9: Set var_88 = var_AC
  loc_F687F2: ' Referenced from: F688E7
  loc_F687F8: var_AE = var_88.EOF
  loc_F68801: If Not(var_AE) Then
  loc_F68816:   var_AC = var_88.Fields
  loc_F68835:   Set var_B8 = Me.Label2
  loc_F6883B:   Call 0.Method_ColorLabel8 (var_AE, var_AC.Item("index").Value)
  loc_F68855:   If (var_AC <= CVar(var_AE)) Then
  loc_F688B6:     Set var_E0 = Me.Label2
  loc_F688BC:     Call 0.Method_ColorLabel0 (CInt(var_88.Fields.Item("index").Value), var_E4)
  loc_F688C4:     var_E4.BackColor = CLng(var_88.Fields.Item("Color").Value)
  loc_F688DF:   End If
  loc_F688E2:   var_88.MoveNext
  loc_F688E7:   GoTo loc_F687F2
  loc_F688EA: End If
  loc_F688EA: Exit Sub
End Sub

Public Property Get OpenMode() 'E0F1B4
  'Data Table: 47DD54
  loc_E0F1A8: var_88 = global_80
  loc_E0F1AB: OpenMode = 
End Sub

Public Property Let OpenMode(vNewValue) 'E0F1FC
  'Data Table: 47DD54
  loc_E0F1F4: global_80 = vNewValue
  loc_E0F1F8: Exit Sub
End Sub

Public Sub Proc_81_16_16B9EBC
  'Data Table: 47DD54
  Dim var_96 As Integer
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_47DD60 As Connection15
  Dim var_CC As String
  Dim var_DC As Variant
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_C4 As Variant
  Dim var_8C As Integer
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_C8 As Variant
  Dim var_120 As Variant
  Dim var_16C As Variant
  Dim var_134 As Variant
  Dim var_20C As Variant
  Dim var_220 As Variant
  Dim var_2D4 As Variant
  Dim var_2C4 As Variant
  Dim var_2F4 As Variant
  Dim var_2A0 As Variant
  Dim var_190 As Field20
  Dim var_130 As Variant
  Dim var_1A0 As Variant
  Dim var_17C As Variant
  Dim var_1B0 As Variant
  Dim var_18C As Variant
  Dim var_1B4 As Variant
  Dim var_1B8 As Field20
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_290 As Variant
  Dim var_314 As Variant
  Dim Me As Recordset15
  Dim var_1C8 As Variant
  Dim var_9C As Recordset15
  Dim var_230 As Variant
  Dim var_240 As Variant
  Dim var_92 As Integer
  loc_16B8561: var_A0 = "SELECT roommast.*, RoomCat.Name AS RoomCategory, RoomCat.ShortName FROM roommast INNER JOIN RoomCat ON (roommast.Type = RoomCat.Type) AND (roommast.RoomCat = RoomCat.Code) WHERE (ROOMMAST.LOGSITE_CODE='" & MemVar_1F92078
  loc_16B8571: unk_47DD60.Execute var_A0 & "') AND (((roommast.Type)='RO' AND RoomMast.InclCount='Y')) ORDER BY roommast.Code", var_C4, -1
  loc_16B857C: Set var_88 = var_C8
  loc_16B85A0: var_A0 = "Select RoomOcc.dOCID,RoomOcc.FolioNo,RoomOcc.Vtype,RoomOcc.Site_Code,RoomOcc.VPrefix,RoomOcc.GuestProf,RoomOcc.RoomCat,RoomOcc.RoomType,RoomOcc.RoomNo,RoomOcc.RateCode,RoomOcc.RoomRate,GuestProf.Name,GuestFolio.mFolioNo from RoomOcc Inner Join GuestFolio On GuestFolio.DocId=RoomOcc.DocId left join GuestProf on RoomOcc.Guestprof=Guestprof.code where (ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078
  loc_16B85A7: var_A4 = var_A0 & "') AND ChkOutDate is Null Union Select DOCID,0 as FolioNo, Vtype,Site_Code,VPrefix,GuestProf,RoomCat,RoomType,RoomNo,RateCode,RoomRate,GuestName,0 mFolioNo from booking where (LOGSITE_CODE='"
  loc_16B85C3: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, CVar(var_A4 & MemVar_1F92078 & "') AND (RoomNo is Not Null and RoomNO<>'') and Arrdate="), var_130)
  loc_16B85CB: var_EC = -1 & var_C4 
  loc_16B85E2: unk_47DD60.Execute CStr(var_EC & " and cancel='N' and Docid not in (Select BookingDocid from GuestFolio)"), var_C8, var_C8
  loc_16B85F3: Set global_84 = var_C8
  loc_16B863F: Proc_6_7_F25D88(var_C4, MemVar_1F920EC, CVar("Select * from RoomBlockOut where (LOGSITE_CODE='" & MemVar_1F92078 & "') AND Type='O' And "), var_130)
  loc_16B8647: var_EC = -1 & var_C4 
  loc_16B8650: var_10C = var_EC & " between fromdate and ToDate" 
  loc_16B865E: unk_47DD60.Execute CStr(var_10C), var_C8, 0
  loc_16B866F: Set global_88 = var_C8
  loc_16B8690: var_8A = &HA
  loc_16B86B9: If (((global_92 <> 0) And (global_96 <> 0)) And (global_92 < &HA)) Then
  loc_16B86C9:   var_8A = CInt((global_92 + 1))
  loc_16B86CC: End If
  loc_16B86E3: If (var_88.RecordCount > 0) Then
  loc_16B8713:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_16B8780:     var_C4 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_16B87A1:     var_8C = CInt(((Val(CStr(Format(var_C4, "00"))) + CDbl(1)) * CDbl(6)))
  loc_16B87B9:   Else
  loc_16B87D6:     var_DC = "00"
  loc_16B87E8:     var_C4 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_16B87EF:     var_EC = Format(var_C4, var_DC)
  loc_16B8809:     var_8C = CInt(((Val(CStr(var_EC)) + CDbl(1)) * CDbl(6)))
  loc_16B8818:   End If
  loc_16B881B: Else
  loc_16B8834:   MsgBox("No Records in Room Master", &H40, var_DC, var_EC, var_10C)
  loc_16B8847: Else
  loc_16B8849:   var_90 = 1
  loc_16B884E:   var_8E = 0
  loc_16B8864:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_16B887F:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_16B8899:   Call Proc_81_17_11A0A28((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1)
  loc_16B88B1:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_16B88CC:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_16B88E3:   Me.FGrid1.Redraw = False
  loc_16B8910:   For var_164 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_164 'Integer
  loc_16B8922:     If (global_92 <> 0) Then
  loc_16B8929:       var_B4 = CVar(CLng(var_94)) 'Long
  loc_16B894F:       var_120 = CVar(CLng(((CDbl(Me.FGrid1.Height) - CDbl(285)) / CDbl(global_92)))) 'Long
  loc_16B8958:       Set var_134 = Me.FGrid1
  loc_16B895E:       LateIdCallSt
  loc_16B8973:     Else
  loc_16B8977:       var_B4 = CVar(CLng(var_94)) 'Long
  loc_16B897C:       var_120 = &H320
  loc_16B8989:       Set var_C8 = Me.FGrid1
  loc_16B898F:       LateIdCallSt
  loc_16B899A:     End If
  loc_16B899D:   Next var_164 'Integer
  loc_16B89A2:   ' Referenced from:   16B9E97
  loc_16B89B6:   If (Me.FGrid1.EOF = 0) Then
  loc_16B89BB:     var_90 = 1
  loc_16B89BE:     ' Referenced from:   16B9E94
  loc_16B89C8:     If (var_90 <= (var_8A - 1)) Then
  loc_16B89CD:       var_96 = &HFF
  loc_16B89DF:       For var_168 = (var_8C - 6) To (var_8C - 1):   var_94 = var_168 'Integer
  loc_16B89EF:         If (var_94 = (var_8C - 6)) Then
  loc_16B89F6:           var_FC = CVar(CLng(var_90)) 'Long
  loc_16B8A05:           var_DC = Me.FGrid1.Col
  loc_16B8A3E:           var_EC = CVar(Proc_6_38_E68A98(CVar(Me.var_DC.Fields.Item("Code")), CVar(CLng(var_DC)), var_FC)) 'String
  loc_16B8A46:           Set var_190 = Me.FGrid1
  loc_16B8A4C:           LateIdCallSt
  loc_16B8A7F:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B8A8E:           Me.FGrid1.Col = "Code"
  loc_16B8A9D:         End If
  loc_16B8AA7:         If (var_94 = (var_8C - 5)) Then
  loc_16B8AC4:           If (Me.Recordset15.RecordCount > 0) Then
  loc_16B8AD0:             Me.Recordset15.MoveFirst
  loc_16B8AD5:           End If
  loc_16B8B28:           Me.Recordset15.Find var_190 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomNo='", 0, 1, var_FC) & "'", var_EC, (var_8C - 6)
  loc_16B8B56:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B8B9B:             If (Me.Recordset15.Fields.Item("FolioNo").Value = 0) Then
  loc_16B8BD3:               var_2D4 = CVar(CLng(var_90)) 'Long
  loc_16B8BE2:               var_2C4 = Me.FGrid1.Col
  loc_16B8BEB:               var_2F4 = CVar(CLng(var_2C4)) 'Long
  loc_16B8C27:               var_DC = (Me.var_2C4.Fields.Item("ShortName").Value + "(")
  loc_16B8C60:               var_130 = (var_DC + CVar(CStr(Me.Recordset15.Fields.Item("RoomRate").Value)))
  loc_16B8C69:               var_1A0 = (var_130 + ")")
  loc_16B8C72:               var_1B0 = (var_1A0 + vbCrLf)
  loc_16B8CA3:               var_1D8 = (var_1B0 + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B8CAC:               var_1F8 = (var_1D8 + vbCrLf)
  loc_16B8CC3:               var_250 = (var_1F8 + Left(Trim(CVar(Me.Recordset15.Fields.Item("Name"))), &HF))
  loc_16B8CCC:               var_270 = (var_250 + vbCrLf)
  loc_16B8CD5:               var_290 = (var_270 + "Vacant")
  loc_16B8CDE:               var_314 = CVar(CStr("*" & var_290)) 'String
  loc_16B8CE6:               Set var_328 = Me.FGrid1
  loc_16B8CEC:               LateIdCallSt
  loc_16B8D35:             Else
  loc_16B8D6A:               var_260 = CVar(CLng(var_90)) 'Long
  loc_16B8D79:               var_270 = Me.FGrid1.Col
  loc_16B8D82:               var_2A0 = CVar(CLng(var_270)) 'Long
  loc_16B8DB4:               var_FC = "("
  loc_16B8DB9:               var_DC = (Me.var_270.Fields.Item("ShortName").Value + var_FC)
  loc_16B8DD5:               var_16C = Me.Recordset15.Fields
  loc_16B8DF2:               var_130 = (var_DC + CVar(CStr(var_16C.Item("RoomRate").Value)))
  loc_16B8DFB:               var_1A0 = (var_130 + ")")
  loc_16B8E04:               var_1B0 = (var_1A0 + vbCrLf)
  loc_16B8E35:               var_1D8 = (var_1B0 + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B8E3E:               var_1F8 = (var_1D8 + vbCrLf)
  loc_16B8E55:               var_250 = (var_1F8 + Left(Trim(CVar(Me.Recordset15.Fields.Item("Name"))), &HF))
  loc_16B8E5A:               var_290 = CVar(CStr(var_250)) 'String
  loc_16B8E62:               Set var_328 = Me.FGrid1
  loc_16B8E68:               LateIdCallSt
  loc_16B8EA8:             End If
  loc_16B8EAB:           Else
  loc_16B8EC2:             If (Me.RecordCount > 0) Then
  loc_16B8ECB:               Me.MoveFirst
  loc_16B8ED0:             End If
  loc_16B8F10:             var_A4 = var_2A0 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_FC, var_328, var_290)
  loc_16B8F20:             Me.Find var_A4 & "'", var_260, var_328
  loc_16B8F4E:             If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B8F9C:               var_EC = CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomNo='") & Me.Recordset15.Fields.Item("Code").Value 
  loc_16B8FB3:               unk_47DD60.Execute CStr(var_EC & "'"), var_130, -1
  loc_16B8FBE:               Set var_9C = var_16C
  loc_16B8FE2:               var_18C = CVar(CLng(var_90)) 'Long
  loc_16B8FEB:               Set var_1B4 = Me.FGrid1
  loc_16B8FF1:               var_1B0 = var_1B4.Col
  loc_16B8FFA:               var_20C = CVar(CLng(var_1B0)) 'Long
  loc_16B9031:               var_DC = (Me.var_1B0.Fields.Item("ShortName").Value + vbCrLf)
  loc_16B9062:               var_10C = (CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F92078 & "') and RoomNo='") + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B906B:               var_130 = (Me.Recordset15.Fields.Item("Code").Value & "'" + vbCrLf)
  loc_16B9074:               var_1A0 = (var_130 + "Out Of Order")
  loc_16B9079:               var_1C8 = CVar(CStr(var_1A0)) 'String
  loc_16B9081:               Set var_1B8 = Me.FGrid1
  loc_16B9087:               LateIdCallSt
  loc_16B90B4:             Else
  loc_16B90CF:               var_DC = CVar("Select Rate2 from ratelist where (LOGSITE_CODE='" & MemVar_1F92078 & "') and COde='*' and RoomNo='") 'String
  loc_16B9139:               var_1A0 = var_DC & Me.Recordset15.Fields.Item("Code").Value & "' and RoomCat='" & Me.Recordset15.Fields.Item("RoomCat").Value 
  loc_16B9150:               unk_47DD60.Execute CStr(var_1A0 & "'"), var_1C8, -1
  loc_16B915B:               Set var_9C = var_1B4
  loc_16B9199:               If (var_9C.RecordCount <= 0) Then
  loc_16B91A0:                 var_18C = CVar(CLng(var_90)) 'Long
  loc_16B91AF:                 var_1B0 = Me.FGrid1.Col
  loc_16B91B8:                 var_20C = CVar(CLng(var_1B0)) 'Long
  loc_16B91EF:                 var_DC = (Me.var_1B0.Fields.Item("ShortName").Value + vbCrLf)
  loc_16B9220:                 var_10C = (var_DC + Me.Recordset15.Fields.Item("Code").Value)
  loc_16B9229:                 var_130 = (var_DC & Me.Recordset15.Fields.Item("Code").Value & "' and RoomCat='" + vbCrLf)
  loc_16B9232:                 var_1A0 = (Me.Recordset15.Fields.Item("RoomCat").Value + "Vacant")
  loc_16B9237:                 var_1C8 = CVar(CStr(var_1A0)) 'String
  loc_16B923F:                 Set var_1B8 = Me.FGrid1
  loc_16B9245:                 LateIdCallSt
  loc_16B9272:               Else
  loc_16B9276:                 var_260 = CVar(CLng(var_90)) 'Long
  loc_16B9285:                 var_230 = Me.FGrid1.Col
  loc_16B928E:                 var_2A0 = CVar(CLng(var_230)) 'Long
  loc_16B92C0:                 var_FC = "("
  loc_16B92C5:                 var_DC = (Me.var_230.Fields.Item("ShortName").Value + var_FC)
  loc_16B92F8:                 var_130 = (var_DC + CVar(CStr(var_9C.Fields.Item("Rate2").Value)))
  loc_16B9301:                 var_1A0 = (Me.Recordset15.Fields.Item("RoomCat").Value + ")")
  loc_16B930A:                 var_1B0 = (var_1A0 + vbCrLf)
  loc_16B932B:                 var_1B8 = Me.Recordset15.Fields.Item("Code")
  loc_16B9333:                 var_1C8 = var_1B8.Value
  loc_16B933B:                 var_1D8 = (var_1B0 + var_1C8)
  loc_16B9344:                 var_1F8 = (var_1D8 + vbCrLf)
  loc_16B934D:                 var_220 = (var_1F8 + "Vacant")
  loc_16B9352:                 var_240 = CVar(CStr(CVar(Me.Recordset15.Fields.Item("Name")))) 'String
  loc_16B935A:                 Set var_210 = Me.FGrid1
  loc_16B9360:                 LateIdCallSt
  loc_16B9398:               End If
  loc_16B9398:             End If
  loc_16B9398:           End If
  loc_16B93B1:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B93C0:           Me.FGrid1.Col = "ShortName"
  loc_16B93CF:         End If
  loc_16B93D9:         If (var_94 = (var_8C - 4)) Then
  loc_16B93F3:           If (Me.RecordCount > 0) Then
  loc_16B93FC:             Me.MoveFirst
  loc_16B9401:           End If
  loc_16B9448:           var_CC = var_2A0 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "RoomCode='", 0, 1, var_FC, var_210, var_240) & "'"
  loc_16B9451:           Me.Find var_CC, var_260, var_1B8
  loc_16B947C:           If (Me.AbsolutePosition > 0) Then
  loc_16B94CB:             var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Type")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_16B94D3:             Set var_190 = Me.FGrid1
  loc_16B94D9:             LateIdCallSt
  loc_16B94F6:           Else
  loc_16B9537:             var_1A0 = Me.FGrid1.Col
  loc_16B9570:             var_10C = CVar(Proc_6_38_E68A98(CVar(Me.var_1A0.Fields.Item("RoomStat")), CVar(CLng(var_1A0)), CVar(CLng(var_90)))) 'String
  loc_16B9589:             var_120 = (Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), Me.var_1A0.Fields.Item("RoomStat"), "C") = vbNullString)
  loc_16B9599:             var_1B0 = CVar(CStr(IIf(var_120, "C", var_10C))) 'String
  loc_16B95A1:             Set var_1B8 = Me.FGrid1
  loc_16B95A7:             LateIdCallSt
  loc_16B95D4:           End If
  loc_16B95E8:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_16B9604:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_16B9625:           Call Proc_81_18_13C7C1C(CByte(CLng(Me.FGrid1.Col)), var_92, var_1B8, var_1B0)
  loc_16B9643:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_16B9664:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B9673:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_16B9682:         End If
  loc_16B968C:         If (var_94 = (var_8C - 3)) Then
  loc_16B96DC:           If (Trim(CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("RoomStat")), var_1C8))) = "O") Then
  loc_16B96F6:             If (Me.RecordCount > 0) Then
  loc_16B96FF:               Me.MoveFirst
  loc_16B975B:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & "'"), 0, 1
  loc_16B978A:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B97D9:                 var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Reasons")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))) 'String
  loc_16B97E1:                 Set var_190 = Me.FGrid1
  loc_16B97E7:                 LateIdCallSt
  loc_16B9804:               Else
  loc_16B9808:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9820:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9825:                 var_17C = vbNullString
  loc_16B982F:                 Set var_134 = Me.FGrid1
  loc_16B9835:                 LateIdCallSt
  loc_16B9847:               End If
  loc_16B984A:             Else
  loc_16B984E:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9866:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B986B:               var_17C = vbNullString
  loc_16B9875:               Set var_134 = Me.FGrid1
  loc_16B987B:               LateIdCallSt
  loc_16B988D:             End If
  loc_16B9890:           Else
  loc_16B9894:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B98AC:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B98B1:             var_17C = vbNullString
  loc_16B98BB:             Set var_134 = Me.FGrid1
  loc_16B98C1:             LateIdCallSt
  loc_16B98D3:           End If
  loc_16B98EC:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B98FB:           Me.FGrid1.Col = var_B4
  loc_16B990A:         End If
  loc_16B9914:         If (var_94 = (var_8C - 2)) Then
  loc_16B991A:           var_B4 = "RoomStat"
  loc_16B9931:           var_134 = Me.Recordset15.Fields.Item(var_B4)
  loc_16B9964:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_134), var_134, var_17C, var_120, var_B4, var_134, var_17C))) = "O") Then
  loc_16B997E:             If (Me.RecordCount > 0) Then
  loc_16B9987:               Me.MoveFirst
  loc_16B99D0:               var_120 = "'"
  loc_16B99E3:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_120), 0, 1
  loc_16B9A12:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B9A61:                 var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("FromDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_120)) 'String
  loc_16B9A69:                 Set var_190 = Me.FGrid1
  loc_16B9A6F:                 LateIdCallSt
  loc_16B9A8C:               Else
  loc_16B9A90:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9AA8:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9AAD:                 var_17C = vbNullString
  loc_16B9AB7:                 Set var_134 = Me.FGrid1
  loc_16B9ABD:                 LateIdCallSt
  loc_16B9ACF:               End If
  loc_16B9AD2:             Else
  loc_16B9AD6:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9AEE:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9AF3:               var_17C = vbNullString
  loc_16B9AFD:               Set var_134 = Me.FGrid1
  loc_16B9B03:               LateIdCallSt
  loc_16B9B15:             End If
  loc_16B9B18:           Else
  loc_16B9B1C:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9B34:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9B39:             var_17C = vbNullString
  loc_16B9B43:             Set var_134 = Me.FGrid1
  loc_16B9B49:             LateIdCallSt
  loc_16B9B5B:           End If
  loc_16B9B74:           var_B4 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_16B9B83:           Me.FGrid1.Col = var_B4
  loc_16B9B92:         End If
  loc_16B9B9C:         If (var_94 = (var_8C - 1)) Then
  loc_16B9BA2:           var_B4 = "RoomStat"
  loc_16B9BB9:           var_134 = Me.Recordset15.Fields.Item(var_B4)
  loc_16B9BEC:           If (Trim(CVar(Proc_6_38_E68A98(CVar(var_134), var_134, var_17C, var_120, var_B4, var_134, var_17C))) = "O") Then
  loc_16B9C06:             If (Me.RecordCount > 0) Then
  loc_16B9C0F:               Me.MoveFirst
  loc_16B9C58:               var_120 = "'"
  loc_16B9C6B:               Me.Find CStr("RoomCode='" & Me.Recordset15.Fields.Item("Code").Value & var_120), 0, 1
  loc_16B9C9A:               If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_16B9CE9:                 var_EC = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ToDate")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), CVar(CLng(Me.FGrid1.Col)), var_120)) 'String
  loc_16B9CF1:                 Set var_190 = Me.FGrid1
  loc_16B9CF7:                 LateIdCallSt
  loc_16B9D14:               Else
  loc_16B9D18:                 var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9D30:                 var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9D35:                 var_17C = vbNullString
  loc_16B9D3F:                 Set var_134 = Me.FGrid1
  loc_16B9D45:                 LateIdCallSt
  loc_16B9D57:               End If
  loc_16B9D5A:             Else
  loc_16B9D5E:               var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9D76:               var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9D7B:               var_17C = vbNullString
  loc_16B9D85:               Set var_134 = Me.FGrid1
  loc_16B9D8B:               LateIdCallSt
  loc_16B9D9D:             End If
  loc_16B9DA0:           Else
  loc_16B9DA4:             var_B4 = CVar(CLng(var_90)) 'Long
  loc_16B9DBC:             var_120 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_16B9DC1:             var_17C = vbNullString
  loc_16B9DCB:             Set var_134 = Me.FGrid1
  loc_16B9DD1:             LateIdCallSt
  loc_16B9DE3:           End If
  loc_16B9DFC:           var_B4 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_16B9E0B:           Me.FGrid1.Col = var_B4
  loc_16B9E1A:         End If
  loc_16B9E1D:       Next var_168 'Integer
  loc_16B9E28:       var_90 = (var_90 + 1)
  loc_16B9E35:       If (var_90 > (var_8A - 1)) Then
  loc_16B9E51:         var_B4 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_16B9E60:         Me.FGrid1.Col = var_B4
  loc_16B9E6F:       End If
  loc_16B9E75:       var_88.MoveNext
  loc_16B9E8E:       If (var_88.EOF = &HFF) Then
  loc_16B9E91:         GoTo loc_16B9E9A
  loc_16B9E94:       End If
  loc_16B9E94:       GoTo loc_16B89BE
  loc_16B9E97:     End If
  loc_16B9E97:     GoTo loc_16B89A2
  loc_16B9E9A:     ' Referenced from:   16B9E91
  loc_16B9E9A:   End If
  loc_16B9E9A: End If
  loc_16B9EA8: Me.FGrid1.Redraw = True
  loc_16B9EB5: Set var_88 = Nothing
  loc_16B9EB8: Exit Sub
End Sub

Public Sub Proc_81_17_11A0A28(arg_C, arg_10) '11A0A28
  'Data Table: 47DD54
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_FC As String
  Dim var_120 As Variant
  Dim arg_10 As Integer
  loc_11A061B: Me.FGrid1.Row = 0
  loc_11A0636: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A063B: var_CC = 0
  loc_11A0648: Set var_E0 = Me.FGrid1
  loc_11A064E: LateIdCallSt
  loc_11A066C: If (global_100 > 8) Then
  loc_11A0695:   Me.FGrid1.Font.FormatString = CVar(global_100)
  loc_11A06A4:   ' Referenced from: 11A096B
  loc_11A06A4: End If
  loc_11A06AA: If (arg_10 < 5) Then
  loc_11A06AD:   GoTo loc_11A096E
  loc_11A06B0: End If
  loc_11A06B4: Set var_E4 = Me.FGrid1
  loc_11A06C5: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_11A06CF:   var_98 = CVar(CLng(var_86)) 'Long
  loc_11A06D4:   var_CC = 0
  loc_11A06E1:   Set var_AC = Me.FGrid1
  loc_11A06E7:   LateIdCallSt
  loc_11A06F5: Next var_E8 'Integer
  loc_11A0709: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_11A0719:   If (var_86 = (arg_10 - 5)) Then
  loc_11A0720:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0725:     var_CC = 0
  loc_11A0732:     Set var_AC = Me.FGrid1
  loc_11A0738:     LateIdCallSt
  loc_11A0747:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A074C:     var_CC = 1
  loc_11A0756:     Set var_AC = Me.FGrid1
  loc_11A075C:     LateIdCallSt
  loc_11A077A:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A0783:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A0788:     var_FC = "Room No"
  loc_11A0792:     Set var_E0 = Me.FGrid1
  loc_11A0798:     LateIdCallSt
  loc_11A07AA:   End If
  loc_11A07B4:   If (var_86 = (arg_10 - 4)) Then
  loc_11A07C3:     If (global_96 <> 0) Then
  loc_11A07CA:       var_98 = CVar(CLng(var_86)) 'Long
  loc_11A07F0:       var_CC = CVar(CLng(((CDbl(Me.FGrid1.Width) - CDbl(285)) / CDbl(global_96)))) 'Long
  loc_11A07F9:       Set var_E0 = Me.FGrid1
  loc_11A07FF:       LateIdCallSt
  loc_11A0814:     Else
  loc_11A0818:       var_98 = CVar(CLng(var_86)) 'Long
  loc_11A081D:       var_CC = &H4B0
  loc_11A082A:       Set var_AC = Me.FGrid1
  loc_11A0830:       LateIdCallSt
  loc_11A083B:     End If
  loc_11A083F:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A0844:     var_CC = 1
  loc_11A084E:     Set var_AC = Me.FGrid1
  loc_11A0854:     LateIdCallSt
  loc_11A0872:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A087B:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A088E:     var_120 = CVar("Room Rate" & vbCrLf & "Status") 'String
  loc_11A0896:     Set var_E0 = Me.FGrid1
  loc_11A089C:     LateIdCallSt
  loc_11A08B5:   End If
  loc_11A08BF:   If (var_86 = (arg_10 - 3)) Then
  loc_11A08C6:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A08CB:     var_CC = &H12C
  loc_11A08D8:     Set var_AC = Me.FGrid1
  loc_11A08DE:     LateIdCallSt
  loc_11A08ED:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11A08F8:     var_CC = CVar(CInt(4)) 'Integer
  loc_11A0900:     Set var_AC = Me.FGrid1
  loc_11A0906:     LateIdCallSt
  loc_11A0924:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11A092D:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11A0932:     var_FC = vbNullString
  loc_11A093C:     Set var_E0 = Me.FGrid1
  loc_11A0942:     LateIdCallSt
  loc_11A0954:   End If
  loc_11A0957: Next var_EC 'Integer
  loc_11A095E: Set var_E4 = Nothing 
  loc_11A0968: arg_10 = (arg_10 - 6)
  loc_11A096B: GoTo loc_11A06A4
  loc_11A096E: ' Referenced from: 11A06AD
  loc_11A0995: For var_124 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_124 'Integer
  loc_11A09AE:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11A09BE:   For var_128 = 1 To arg_C: var_88 = var_128 'Integer
  loc_11A09D7:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11A09F2:     Me.FGrid1.CellBackColor = &HE69839
  loc_11A0A0D:     Me.FGrid1.CellForeColor = &HFFFF
  loc_11A0A18:   Next var_128 'Integer
  loc_11A0A20: Next var_124 'Integer
  loc_11A0A25: Exit Sub
End Sub

Public Sub Proc_81_18_13C7C1C(arg_C) '13C7C1C
  'Data Table: 47DD54
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_13C729B: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C72A5: var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13C72E7: If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "D") Then
  loc_13C72FD:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C730C:   var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C7360:   If CBool(Right(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 6) <> "Vacant") Then
  loc_13C737C:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7385:     Set var_DC = Me.FGrid1
  loc_13C738B:     var_DC.Col = var_A8
  loc_13C73A6:     Set var_88 = Me.Label2
  loc_13C73AC:     Call 0.Method_Proc_81_18_13C7C1C0 (3, var_DC, var_140, var_C8)
  loc_13C73B4:     var_A8 = var_DC.BackColor
  loc_13C73CB:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C73F2:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C73FB:     Set var_DC = Me.FGrid1
  loc_13C7401:     var_DC.Col = CVar(var_140)
  loc_13C741C:     Set var_88 = Me.Label2
  loc_13C7422:     Call 0.Method_Proc_81_18_13C7C1C0 (3, var_DC, var_140)
  loc_13C742A:     var_C8 = var_DC.BackColor
  loc_13C7441:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C7452:   Else
  loc_13C7465:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C7474:     var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C74C8:     If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_13C74E4:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C74ED:       Set var_DC = Me.FGrid1
  loc_13C74F3:       var_DC.Col = var_A8
  loc_13C750E:       Set var_88 = Me.Label2
  loc_13C7514:       Call 0.Method_Proc_81_18_13C7C1C0 (4, var_DC, var_140)
  loc_13C751C:       var_C8 = var_DC.BackColor
  loc_13C7533:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C755A:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7563:       Set var_DC = Me.FGrid1
  loc_13C7569:       var_DC.Col = CVar(var_140)
  loc_13C7584:       Set var_88 = Me.Label2
  loc_13C758A:       Call 0.Method_Proc_81_18_13C7C1C0 (4, var_DC, var_140)
  loc_13C7592:       var_A8 = var_DC.BackColor
  loc_13C75A9:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C75BA:     Else
  loc_13C75D3:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C75DC:       Set var_DC = Me.FGrid1
  loc_13C75E2:       var_DC.Col = CVar(var_140)
  loc_13C75FD:       Set var_88 = Me.Label2
  loc_13C7603:       Call 0.Method_Proc_81_18_13C7C1C0 (1, var_DC)
  loc_13C7622:       Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13C7649:       var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7652:       Set var_DC = Me.FGrid1
  loc_13C7658:       var_DC.Col = CVar(var_DC.BackColor)
  loc_13C7673:       Set var_88 = Me.Label2
  loc_13C7679:       Call 0.Method_Proc_81_18_13C7C1C0 (1, var_DC)
  loc_13C7681:       var_140 = var_DC.BackColor
  loc_13C7698:       Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C76A6:     End If
  loc_13C76A6:   End If
  loc_13C76A9: Else
  loc_13C76BC:   var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C76C6:   var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13C7708:   If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "O") Then
  loc_13C7724:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C772D:     Set var_DC = Me.FGrid1
  loc_13C7733:     var_DC.Col = var_A8
  loc_13C774E:     Set var_88 = Me.Label2
  loc_13C7754:     Call 0.Method_Proc_81_18_13C7C1C0 (2, var_DC, var_140)
  loc_13C775C:     var_C8 = var_DC.BackColor
  loc_13C7773:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C779A:     var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C77A3:     Set var_DC = Me.FGrid1
  loc_13C77A9:     var_DC.Col = CVar(var_140)
  loc_13C77C4:     Set var_88 = Me.Label2
  loc_13C77CA:     Call 0.Method_Proc_81_18_13C7C1C0 (2, var_DC, var_140)
  loc_13C77D2:     var_A8 = var_DC.BackColor
  loc_13C77E9:     Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C77FA:   Else
  loc_13C780D:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C7817:     var_C8 = CVar(CLng(arg_C)) 'Long
  loc_13C7859:     If (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) = "C") Then
  loc_13C786F:       var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C787E:       var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C78D2:       If CBool(Right(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 6) <> "Vacant") Then
  loc_13C78EE:         var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C78F7:         Set var_DC = Me.FGrid1
  loc_13C78FD:         var_DC.Col = var_A8
  loc_13C7918:         Set var_88 = Me.Label2
  loc_13C791E:         Call 0.Method_Proc_81_18_13C7C1C0 (3, var_DC, var_140, var_C8)
  loc_13C7926:         var_A8 = var_DC.BackColor
  loc_13C793D:         Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C7964:         var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C796D:         Set var_DC = Me.FGrid1
  loc_13C7973:         var_DC.Col = CVar(var_140)
  loc_13C798E:         Set var_88 = Me.Label2
  loc_13C7994:         Call 0.Method_Proc_81_18_13C7C1C0 (3, var_DC, var_140)
  loc_13C799C:         var_C8 = var_DC.BackColor
  loc_13C79B3:         Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C79C4:       Else
  loc_13C79D7:         var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13C79E6:         var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_13C7A3A:         If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_13C7A56:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7A5F:           Set var_DC = Me.FGrid1
  loc_13C7A65:           var_DC.Col = var_A8
  loc_13C7A80:           Set var_88 = Me.Label2
  loc_13C7A86:           Call 0.Method_Proc_81_18_13C7C1C0 (4, var_DC, var_140, var_C8)
  loc_13C7A8E:           var_A8 = var_DC.BackColor
  loc_13C7AA5:           Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C7ACC:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7AD5:           Set var_DC = Me.FGrid1
  loc_13C7ADB:           var_DC.Col = CVar(var_140)
  loc_13C7AF6:           Set var_88 = Me.Label2
  loc_13C7AFC:           Call 0.Method_Proc_81_18_13C7C1C0 (4, var_DC, var_140)
  loc_13C7B04:           var_A8 = var_DC.BackColor
  loc_13C7B1B:           Me.FGrid1.CellBackColor = CVar(var_140)
  loc_13C7B2C:         Else
  loc_13C7B45:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7B4E:           Set var_DC = Me.FGrid1
  loc_13C7B54:           var_DC.Col = CVar(var_140)
  loc_13C7B6F:           Set var_88 = Me.Label2
  loc_13C7B75:           Call 0.Method_Proc_81_18_13C7C1C0 (0, var_DC)
  loc_13C7B94:           Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13C7BBB:           var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13C7BC4:           Set var_DC = Me.FGrid1
  loc_13C7BCA:           var_DC.Col = CVar(var_DC.BackColor)
  loc_13C7BE5:           Set var_88 = Me.Label2
  loc_13C7BEB:           Call 0.Method_Proc_81_18_13C7C1C0 (0, var_DC)
  loc_13C7C0A:           Me.FGrid1.CellBackColor = CVar(var_DC.BackColor)
  loc_13C7C18:         End If
  loc_13C7C18:       End If
  loc_13C7C18:     End If
  loc_13C7C18:   End If
  loc_13C7C18: End If
  loc_13C7C18: Exit Sub
End Sub
