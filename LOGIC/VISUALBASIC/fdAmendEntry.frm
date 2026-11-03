VERSION 5.00
Begin VB.Form fdAmendEntry
  Caption = "Amend Stay"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdAmendEntry.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 150
  ClientTop = 765
  ClientWidth = 10140
  ClientHeight = 8250
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 7800
    Width = 10140
    Height = 450
    Visible = 0   'False
    TabIndex = 35
  End
  Begin PictureBox Picture2
    Picture = "fdAmendEntry.frx":442
    Left = 7065
    Top = 8325
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 31
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2025
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 5400
    Width = 1680
    Height = 255
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2340
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    MaxLength = 11
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3855
    Top = 3270
    Width = 3480
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3855
    Top = 3585
    Width = 3480
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3855
    Top = 3900
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 8
    Locked = -1  'True
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6240
    Top = 2340
    Width = 435
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5790
    Top = 2340
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7455
    Top = 5400
    Width = 420
    Height = 255
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7005
    Top = 5400
    Width = 420
    Height = 255
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 1710
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5790
    Top = 2655
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 6240
    Top = 2655
    Width = 435
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3840
    Top = 2655
    Width = 1920
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin DataGrid DGRoomNo
    Left = 8745
    Top = 6630
    Width = 2610
    Height = 2115
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 29
  End
  Begin MSFlexGrid FGPoint
    Left = 11595
    Top = 6705
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 30
  End
  Begin BtnEnh BtnEnh1
    Left = 2250
    Top = 6135
    Width = 1350
    Height = 1050
    TabIndex = 32
  End
  Begin BtnEnh CmdExit
    Left = 6465
    Top = 6135
    Width = 1275
    Height = 1050
    TabIndex = 34
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 33
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
  Begin Label LblDepDay
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 7950
    Top = 5400
    Width = 1170
    Height = 240
    TabIndex = 28
    AutoSize = -1  'True
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
    Caption = "Ctrl+S To Save , Esc To Exit"
    Index = 2
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1260
    Top = 7725
    Width = 7920
    Height = 375
    Visible = 0   'False
    TabIndex = 27
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Amend Departure Details"
    Index = 1
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1260
    Top = 4710
    Width = 7920
    Height = 375
    TabIndex = 26
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Room No"
    Index = 34
    ForeColor = &HC00000&
    Left = 2130
    Top = 2070
    Width = 870
    Height = 285
    TabIndex = 25
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
  Begin Label Lbl
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 2115
    Top = 2370
    Width = 1320
    Height = 285
    TabIndex = 24
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
  Begin Label Lbl
    Caption = "Departure Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1440
    Top = 5400
    Width = 1440
    Height = 240
    TabIndex = 23
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
  Begin Label LblCheckInDay
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 6765
    Top = 2340
    Width = 1020
    Height = 285
    TabIndex = 22
    AutoSize = -1  'True
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
  Begin Label Lbl
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 2130
    Top = 3330
    Width = 1155
    Height = 240
    TabIndex = 21
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
  Begin Label Lbl
    Caption = "Company Name"
    Index = 3
    ForeColor = &HC00000&
    Left = 2130
    Top = 3645
    Width = 1515
    Height = 240
    TabIndex = 20
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
  Begin Label Lbl
    Caption = "Guest Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 2130
    Top = 3945
    Width = 1185
    Height = 285
    TabIndex = 19
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
  Begin Label Lbl
    Caption = "DepartureTime"
    Index = 4
    ForeColor = &HC00000&
    Left = 5475
    Top = 5400
    Width = 1425
    Height = 240
    TabIndex = 18
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
  Begin Label Lbl
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 2130
    Top = 1740
    Width = 795
    Height = 285
    TabIndex = 17
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
  Begin Label Lbl
    Caption = "Departure Date"
    Index = 8
    ForeColor = &HC00000&
    Left = 2130
    Top = 2715
    Width = 1440
    Height = 285
    TabIndex = 16
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
  Begin Label lblolddepday
    Caption = "."
    BackColor = &HFFC0C0&
    ForeColor = &H4080&
    Left = 6765
    Top = 2655
    Width = 1020
    Height = 285
    TabIndex = 15
    AutoSize = -1  'True
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
    Caption = "Guest Details"
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 1035
    Top = 1140
    Width = 7995
    Height = 375
    TabIndex = 0
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "fdAmendEntry"

Private MasterFormExit As Integer
Private global_80 As Long

Private Sub CmdExit_UnknownEvent_9 'E1B6B0
  'Data Table: 46F99C
  loc_E1B6A5: Me.Global.Unload Me
  loc_E1B6AD: Exit Sub
End Sub

Private Sub Form_Load() 'FCCDD4
  'Data Table: 46F99C
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_C0 As DataGrid
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim Me As Recordset15
  loc_FCCC30: On Error Goto loc_FCCDCC
  loc_FCCC3B: Call 0.Method_arg_7C (CDbl(1450))
  loc_FCCC48: Call 0.Method_arg_74 (CDbl(1625))
  loc_FCCC55: Call 0.Method_MeC (CDbl(9200))
  loc_FCCC62: Call 0.Method_Me4 (CDbl(17000))
  loc_FCCC6E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FCCC81: Set var_88 = Me.Txt
  loc_FCCC87: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_FCCCA6: Me.DGRoomNo.Left = CVar(var_8C.Left)
  loc_FCCCC2: Set var_B4 = Me.Txt
  loc_FCCCC8: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_FCCCE3: Set var_88 = Me.Txt
  loc_FCCCE9: Call 0.Method_Form_Load0 (CInt(0), var_8C)
  loc_FCCD01: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_FCCD0A: Set var_C0 = Me.DGRoomNo
  loc_FCCD10: var_C0.Top = CVar(var_8C.Left)
  loc_FCCD2C: Set global_76 = New 
  loc_FCCD3E: Me.var_C0.CursorLocation = 3
  loc_FCCD61: var_C4 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo,GuestFolio.DocId " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS "
  loc_FCCD84: var_E4 = CVar(var_C4 & " WHERE RoomMast.LogSite_Code='" & MemVar_1F92078 & "' and RoomOcc.LogSite_Code='" & MemVar_1F92078 & "' and Roommast.type='RO' and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomMast.Code,ROOMOCC.CHKOUTDATE DESC") 'String
  loc_FCCD8E: Me.Open var_E4, CVar(MemVar_1F92044), 2
  loc_FCCDAC: CVarUnk
  loc_FCCDB1: VerifyVarObj
  loc_FCCDB7: Set var_88 = Me.DGRoomNo
  loc_FCCDBD: LateIdStAd
  loc_FCCDCB: Exit Sub
  loc_FCCDCC: ' Referenced from: FCCC30
  loc_FCCDCC: Proc_6_60_E62BC4(var_88, global_76)
  loc_FCCDD1: Exit Sub
  loc_FCCDD2: Set arg_2400 = 3
End Sub

Private Sub Form_Resize() 'E72FE0
  'Data Table: 46F99C
  loc_E72F8A: Call 0.Method_arg_50 (var_88)
  loc_E72F9C: Me.LblFormCaption.Caption = var_88
  loc_E72FB5: Me.LblFormCaption.Left = CDbl(0)
  loc_E72FC3: Call 0.Method_arg_100 (var_90)
  loc_E72FD5: Me.LblFormCaption.Width = var_90
  loc_E72FDD: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E454A8
  'Data Table: 46F99C
  loc_E45483: Set global_76 = Nothing
  loc_E45495: Set global_72 = Nothing
  loc_E454A1: MasterFormExit = 0
  loc_E454A4: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B54C
  'Data Table: 46F99C
  loc_E5B514: Set var_88 = Me.TopCtrl1
  loc_E5B51A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B53D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B545:   Call Form_Unload(&HFF)
  loc_E5B54A: End If
  loc_E5B54A: Exit Sub
End Sub

Private Sub Form_Activate() 'E85430
  'Data Table: 46F99C
  Dim var_A4 As TextBox
  loc_E853C8: On Error Goto loc_E8542A
  loc_E853CF: Set var_8C = Me.TopCtrl1
  loc_E853D5: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E853EA: If (CLng(CInt()) = &H2D) Then
  loc_E853ED: End If
  loc_E85401: If (fdAmendEntry.OpenMode = 1) Then
  loc_E8540F:   Set var_8C = Me.Txt
  loc_E85415:   Call 0.Method_Form_Activate0 (CInt(4))
  loc_E8541D:   var_A4.SetFocus
  loc_E85429: End If
  loc_E85429: Exit Sub
  loc_E8542A: ' Referenced from: E853C8
  loc_E8542A: Proc_6_60_E62BC4(var_A4)
  loc_E8542F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25754
  'Data Table: 46F99C
  loc_E25739: If (MasterFormExit = &HFF) Then
  loc_E25749:   Me.Global.Unload Me
  loc_E25751: End If
  loc_E25751: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E60C38
  'Data Table: 46F99C
  loc_E60BEC: On Error Goto loc_E60C2F
  loc_E60BF9: If (CLng(KeyCode) = &H1B) Then
  loc_E60C09:   Me.Global.Unload Me
  loc_E60C11:   Exit Sub
  loc_E60C12: End If
  loc_E60C26: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E60C2E: Exit Sub
  loc_E60C2F: ' Referenced from: E60BEC
  loc_E60C2F: Proc_6_60_E62BC4(Shift)
  loc_E60C34: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F38444
  'Data Table: 46F99C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3833B: Me.DGRoomNo.Visible = False
  loc_F3835A: If (Me.RecordCount > 0) Then
  loc_F38399:   Set var_B4 = Me.Txt
  loc_F3839F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F383A7:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F383DA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F383F9:   Set var_B4 = Me.Txt
  loc_F383FF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F38407:   var_B8.Text = CStr(var_B0.Value)
  loc_F3841D: End If
  loc_F38428: Set var_A8 = Me.Txt
  loc_F3842E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F38436: var_B0.SetFocus
  loc_F38442: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9B990
  'Data Table: 46F99C
  Dim var_A8 As Variant
  loc_E9B914: Set var_88 = Me.DGRoomNo
  loc_E9B93E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B946: Set var_BC = Me.DGRoomNo
  loc_E9B980: Proc_6_138_106D6F8(Me.DGRoomNo, global_76, 0, Me.FGPoint)
  loc_E9B98E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B6FC
  'Data Table: 46F99C
  loc_E1B6F1: Me.Global.Unload Me
  loc_E1B6F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E3D638
  'Data Table: 46F99C
  loc_E3D628: Proc_5_0_110649C(&HFF, Me)
  loc_E3D630: Call Proc_58_34_10FA330(global_72)
  loc_E3D635: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3D578
  'Data Table: 46F99C
  loc_E3D568: Proc_5_0_110649C(&HFF, Me)
  loc_E3D570: Call Proc_58_34_10FA330(global_72)
  loc_E3D575: Exit Sub
  loc_E3D576: Set arg_2400 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3B958
  'Data Table: 46F99C
  loc_E3B948: Proc_5_0_110649C(&HFF, Me)
  loc_E3B950: Call Proc_58_34_10FA330(global_72)
  loc_E3B955: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3B538
  'Data Table: 46F99C
  loc_E3B528: Proc_5_0_110649C(&HFF, Me)
  loc_E3B530: Call Proc_58_34_10FA330(global_72)
  loc_E3B535: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '152D098
  'Data Table: 46F99C
  Dim var_98 As TextBox
  Dim var_178 As TextBox
  Dim var_194 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1A4 As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim unk_46F9AB As Connection15
  Dim var_17C As String
  Dim var_218 As String
  Dim var_128 As TextBox
  Dim var_140 As TextBox
  Dim var_310 As Variant
  Dim var_368 As Variant
  Dim var_23C As String
  Dim var_240 As String
  Dim var_3C8 As Variant
  Dim var_184 As TextBox
  Dim var_1DC As TextBox
  Dim var_278 As Variant
  Dim var_358 As Variant
  Dim var_214 As Double
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_152C20C: On Error Goto loc_152D046
  loc_152C213: var_86 = CByte(0) 'Byte
  loc_152C222: Set var_94 = Me.Txt
  loc_152C228: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_152C230: var_A0 = "Room No"
  loc_152C251: If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_152C25B:   Call Txt_GotFocus()
  loc_152C260:   Exit Sub
  loc_152C261: End If
  loc_152C26F: Set var_94 = Me.Txt
  loc_152C275: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98, var_A0)
  loc_152C27D: CInt(0) = var_98.Text
  loc_152C295: If (CDate(var_A0) < MemVar_1F920EC) Then
  loc_152C2B1:   MsgBox("Departure Date Can't be Less than Current Date", &H40, var_E4, var_104, var_124)
  loc_152C2C1:   Exit Sub
  loc_152C2C2: End If
  loc_152C2D0: Set var_94 = Me.Txt
  loc_152C2D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98)
  loc_152C2F7: If (CDate(var_98.Text) < CDate(CDbl(1))) Then
  loc_152C313:   MsgBox("Departure Date Can't be Less than Check in Date", &H40, var_E4, var_104, var_124)
  loc_152C323:   Exit Sub
  loc_152C324: End If
  loc_152C332: Set var_174 = Me.Txt
  loc_152C338: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_178)
  loc_152C350: Set var_180 = Me.Txt
  loc_152C356: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_184)
  loc_152C375: Set var_1D8 = Me.Txt
  loc_152C37B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_152C39D: Set var_94 = Me.Txt
  loc_152C3A3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_152C3B7: var_104 = CVar(var_98.Text & " ") 'String
  loc_152C3C5: Set var_9C = Me.Txt
  loc_152C3CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152C3DA: var_E4 = Trim(CVar(var_128))
  loc_152C3E2: var_124 = (var_104 + var_E4)
  loc_152C3EB: var_138 = (var_124 + ":")
  loc_152C3FA: Set var_13C = Me.Txt
  loc_152C400: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152C417: var_170 = (var_138 + Trim(CVar(var_140)))
  loc_152C42A: var_1C4 = (CVar(var_178.Text & " ") + Trim(CVar(var_184)))
  loc_152C433: var_1D4 = (var_1C4 + ":")
  loc_152C43A: var_20C = (var_1D4 + Trim(CVar(var_1DC)))
  loc_152C482: If (CDate(var_170) >= CDate(var_20C)) Then
  loc_152C49E:   MsgBox("Check New Departure Date and Time", &H40, var_E4, var_104, var_124)
  loc_152C4AE:   Exit Sub
  loc_152C4AF: End If
  loc_152C4BD: Set var_94 = Me.Txt
  loc_152C4C3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98)
  loc_152C4CB: var_A0 = var_98.Text
  loc_152C4DB: Set var_9C = Me.Txt
  loc_152C4E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152C500: Set var_13C = Me.Txt
  loc_152C506: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152C528: Set var_174 = Me.Txt
  loc_152C52E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_178)
  loc_152C546: Set var_180 = Me.Txt
  loc_152C54C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_184)
  loc_152C568: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152C577: Set var_1D8 = Me.Txt
  loc_152C57D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1DC)
  loc_152C594: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152C5AE: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152C5B5: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152C5C7: Proc_6_122_14E77A8(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152C5CD: var_8E = CInt(CStr(var_1C4))
  loc_152C617: Set var_94 = Me.Txt
  loc_152C61D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_98, var_A0)
  loc_152C635: Set var_9C = Me.Txt
  loc_152C63B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_128)
  loc_152C660: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_140)
  loc_152C682: Set var_174 = Me.Txt
  loc_152C688: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_178)
  loc_152C6A0: Set var_180 = Me.Txt
  loc_152C6A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_184)
  loc_152C6C2: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152C6D1: Set var_1D8 = Me.Txt
  loc_152C6D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_1DC)
  loc_152C6EE: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152C708: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152C70F: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152C721: Proc_6_122_14E77A8(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152C727: var_90 = CInt(CStr(var_1C4))
  loc_152C76C: unk_46F9AB.BeginTrans var_228
  loc_152C775: var_86 = CByte(1) 'Byte
  loc_152C77E: var_218 = 0
  loc_152C792: Set var_94 = Me.Txt
  loc_152C798: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_A0)
  loc_152C7A0: var_218 = var_98.Tag
  loc_152C7AE: var_E4 = Trim(CVar(var_A0))
  loc_152C7BB: Proc_96_84_FFBAD4(CStr(var_E4), var_90)
  loc_152C7F3: Set var_94 = Me.Txt
  loc_152C7F9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_A0, "Delete From GuestFolioAmend Where FOlioNO=")
  loc_152C801: var_170 = var_98.Text
  loc_152C80A: var_17C = -1 & var_A0
  loc_152C81F: Set var_9C = Me.Txt
  loc_152C825: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_128, CVar(var_178.Text & " and OldDepDate="))
  loc_152C834: Proc_6_7_F25D88(var_E4, CVar(var_128))
  loc_152C866: unk_46F9AB.Execute CStr(Me.Txt & var_E4 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_98, 
  loc_152C8A0: Set var_94 = Me.Txt
  loc_152C8A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98)
  loc_152C8AE: var_A0 = var_98.Text
  loc_152C8C1: Set var_9C = Me.Txt
  loc_152C8C7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_128)
  loc_152C8E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_140)
  loc_152C900: Set var_174 = Me.Txt
  loc_152C906: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_152C915: Proc_6_7_F25D88(var_E4, CVar(var_178))
  loc_152C925: Set var_180 = Me.Txt
  loc_152C92B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_184)
  loc_152C93B: Set var_1D8 = Me.Txt
  loc_152C941: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_1DC)
  loc_152C972: var_194 = (Format(CVar(var_184), "00") + ":")
  loc_152C98E: var_1A4 = CVar(var_1DC) 'Address
  loc_152C99D: var_1D4 = (1 + Format(var_1A4, "00"))
  loc_152C9B4: Set var_254 = Me.Txt
  loc_152C9BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_258, 1, CVar(var_184))
  loc_152C9C9: Proc_6_7_F25D88(var_278, CVar(var_258), 1)
  loc_152C9D9: Set var_2AC = Me.Txt
  loc_152C9DF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2B0)
  loc_152C9EF: Set var_314 = Me.Txt
  loc_152C9F5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_318)
  loc_152CA26: var_310 = (Format(CVar(var_2B0), "00") + ":")
  loc_152CA51: var_368 = (1 + Format(CVar(var_318), "00"))
  loc_152CA6B: Proc_6_7_F25D88(var_408, Date, 1, var_310)
  loc_152CA84: var_17C = "Insert into GuestFolioAmend (FolioNo,Site_Code,GuestProf,RoomNo,OldDepDate,OldDepTime,DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code) values(" & var_A0
  loc_152CA8B: var_218 = var_17C & ",'"
  loc_152CAA7: var_23C = var_218 & MemVar_1F92070 & "','" & var_128.Tag & "','"
  loc_152CAFE: var_3C8 = CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(var_1D4) & "'," & var_278 & ",'" & Trim(var_368) & "','" & CVar(MemVar_1F920C8) 
  loc_152CB38: unk_46F9AB.Execute CStr(var_3C8 & "'," & var_408 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_49C, -1
  loc_152CBE3: Set var_94 = Me.Txt
  loc_152CBE9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_98, "Update GuestFolio Set DepDate=", var_1A4, -1, Me.Txt)
  loc_152CBF8: Proc_6_7_F25D88(var_E4, CVar(var_98), var_4A0, 1)
  loc_152CC09: var_124 = 1 & var_E4 & " where Docid='" 
  loc_152CC1B: Set var_9C = Me.Txt
  loc_152CC21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_128, var_A0)
  loc_152CC29: var_124 = var_128.Tag
  loc_152CC34: var_150 = 1 & CVar(var_A0) 
  loc_152CC54: var_17C = CStr(var_150 & "' and Site_Code='" & CVar(MemVar_1F92070) & "'")
  loc_152CC5E: unk_46F9AB.Execute var_17C, var_178, 
  loc_152CC93: Set var_94 = Me.Txt
  loc_152CC99: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_152CCA8: Proc_6_7_F25D88(var_E4, CVar(var_98))
  loc_152CCB2: var_138 = CVar(Proc_6_15_EF2C1C(var_98)) 'String
  loc_152CCB8: Proc_6_7_F25D88(var_150)
  loc_152CCC8: Set var_9C = Me.Txt
  loc_152CCCE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_128)
  loc_152CCDE: Set var_13C = Me.Txt
  loc_152CCE4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_140)
  loc_152CD15: var_1C4 = (Format(CVar(var_128), "00") + ":")
  loc_152CD40: var_20C = (1 + Format(CVar(var_140), "00"))
  loc_152CD60: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_178, var_A0, 1)
  loc_152CD68: var_1C4 = var_178.Tag
  loc_152CD7B: Set var_180 = Me.Txt
  loc_152CD81: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_184, var_17C)
  loc_152CD89: 1 = var_184.Text
  loc_152CD9C: Set var_1D8 = Me.Txt
  loc_152CDA2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_1DC, var_218)
  loc_152CDAA: 1 = var_1DC.Tag
  loc_152CDD2: var_104 = "Update RoomOcc set DepDate=" & var_E4 
  loc_152CDDB: var_124 = var_104 & ",U_EntDt=" 
  loc_152CDF2: var_278 = var_124 & var_150 & ",U_AE='E',DepTime='" & Trim(CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(CVar(var_140)) & "',") 
  loc_152CE34: var_358 = var_278 & "' where Docid='" & CVar(var_A0) & "' and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_17C) & "' and DocId='" 
  loc_152CE55: unk_46F9AB.Execute CStr(var_358 & CVar(Proc_6_38_E68A98(CVar(var_218))) & "'"), var_3C8, -1
  loc_152CEC9: Set var_94 = Me.Txt
  loc_152CECF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_98, var_218)
  loc_152CED7: var_254 = var_98.Text
  loc_152CEE4: var_214 = Val(var_218)
  loc_152CEF5: Set var_9C = Me.Txt
  loc_152CEFB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_128, var_23C)
  loc_152CF16: Set var_13C = Me.Txt
  loc_152CF1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_152CF4C: var_A0 = CStr(var_98.Text)
  loc_152CF78: var_240 = "Update PlanDetails Set NoofDays=" & var_A0 & " Where FolioNO=" & CStr(var_128.Text) & " and Site_Code='" & MemVar_1F92070 & "' and RoomNO='"
  loc_152CFAC: unk_46F9AB.Execute var_240 & var_23C & "' and DocId='" & Proc_6_38_E68A98(CVar(var_140.Tag)) & "' and noofDays=" & CStr(var_90), var_E4, -1
  loc_152CFF6: unk_46F9AB.CommitTrans
  loc_152D000: Set var_8C = Nothing
  loc_152D007: var_86 = CByte(0) 'Byte
  loc_152D00B: Call Proc_58_32_E9B698(Me.Txt)
  loc_152D01B: Me.Requery -1
  loc_152D02B: Set var_94 = Me.Txt
  loc_152D031: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_98)
  loc_152D039: var_98.SetFocus
  loc_152D045: Exit Sub
  loc_152D046: ' Referenced from: 152C20C
  loc_152D04F: If (CInt(var_86) = 1) Then
  loc_152D058:   unk_46F9AB.RollbackTrans
  loc_152D05D: End If
  loc_152D065: Set var_94 = Err()
  loc_152D06B: Call 0.Method_arg_2C (var_A0)
  loc_152D084: MsgBox(CVar(var_A0), &H10, var_E4, var_104, var_124)
  loc_152D097: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 '152E090
  'Data Table: 46F99C
  Dim var_98 As TextBox
  Dim var_178 As TextBox
  Dim var_194 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_20C As Variant
  Dim var_1A4 As Variant
  Dim var_8E As Integer
  Dim var_90 As Integer
  Dim unk_46F9AB As Connection15
  Dim var_17C As String
  Dim var_218 As String
  Dim var_128 As TextBox
  Dim var_140 As TextBox
  Dim var_310 As Variant
  Dim var_368 As Variant
  Dim var_23C As String
  Dim var_240 As String
  Dim var_3C8 As Variant
  Dim var_184 As TextBox
  Dim var_1DC As TextBox
  Dim var_278 As Variant
  Dim var_358 As Variant
  Dim var_214 As Double
  Dim var_A0 As String
  Dim Me As Recordset15
  loc_152D204: On Error Goto loc_152E03E
  loc_152D20B: var_86 = CByte(0) 'Byte
  loc_152D21A: Set var_94 = Me.Txt
  loc_152D220: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0))
  loc_152D228: var_A0 = "Room No"
  loc_152D249: If (Proc_6_27_EA565C(var_98, var_A0) = 0) Then
  loc_152D253:   Call Txt_GotFocus()
  loc_152D258:   Exit Sub
  loc_152D259: End If
  loc_152D267: Set var_94 = Me.Txt
  loc_152D26D: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98, var_A0)
  loc_152D275: CInt(0) = var_98.Text
  loc_152D28D: If (CDate(var_A0) < MemVar_1F920EC) Then
  loc_152D2A9:   MsgBox("Departure Date Can't be Less than Current Date", &H40, var_E4, var_104, var_124)
  loc_152D2B9:   Exit Sub
  loc_152D2BA: End If
  loc_152D2C8: Set var_94 = Me.Txt
  loc_152D2CE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98)
  loc_152D2EF: If (CDate(var_98.Text) < CDate(CDbl(1))) Then
  loc_152D30B:   MsgBox("Departure Date Can't be Less than Check in Date", &H40, var_E4, var_104, var_124)
  loc_152D31B:   Exit Sub
  loc_152D31C: End If
  loc_152D32A: Set var_174 = Me.Txt
  loc_152D330: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_178)
  loc_152D348: Set var_180 = Me.Txt
  loc_152D34E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_184)
  loc_152D36D: Set var_1D8 = Me.Txt
  loc_152D373: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_1DC)
  loc_152D395: Set var_94 = Me.Txt
  loc_152D39B: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98)
  loc_152D3AF: var_104 = CVar(var_98.Text & " ") 'String
  loc_152D3BD: Set var_9C = Me.Txt
  loc_152D3C3: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152D3D2: var_E4 = Trim(CVar(var_128))
  loc_152D3DA: var_124 = (var_104 + var_E4)
  loc_152D3E3: var_138 = (var_124 + ":")
  loc_152D3F2: Set var_13C = Me.Txt
  loc_152D3F8: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152D40F: var_170 = (var_138 + Trim(CVar(var_140)))
  loc_152D422: var_1C4 = (CVar(var_178.Text & " ") + Trim(CVar(var_184)))
  loc_152D42B: var_1D4 = (var_1C4 + ":")
  loc_152D432: var_20C = (var_1D4 + Trim(CVar(var_1DC)))
  loc_152D47A: If (CDate(var_170) >= CDate(var_20C)) Then
  loc_152D496:   MsgBox("Check New Departure Date and Time", &H40, var_E4, var_104, var_124)
  loc_152D4A6:   Exit Sub
  loc_152D4A7: End If
  loc_152D4B5: Set var_94 = Me.Txt
  loc_152D4BB: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98)
  loc_152D4C3: var_A0 = var_98.Text
  loc_152D4D3: Set var_9C = Me.Txt
  loc_152D4D9: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152D4F8: Set var_13C = Me.Txt
  loc_152D4FE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152D520: Set var_174 = Me.Txt
  loc_152D526: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_178)
  loc_152D53E: Set var_180 = Me.Txt
  loc_152D544: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_184)
  loc_152D560: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152D56F: Set var_1D8 = Me.Txt
  loc_152D575: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_1DC)
  loc_152D58C: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152D5A6: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152D5AD: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152D5BF: Proc_6_122_14E77A8(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152D5C5: var_8E = CInt(CStr(var_1C4))
  loc_152D60F: Set var_94 = Me.Txt
  loc_152D615: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(1), var_98, var_A0)
  loc_152D62D: Set var_9C = Me.Txt
  loc_152D633: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(2), var_128)
  loc_152D658: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(3), var_140)
  loc_152D67A: Set var_174 = Me.Txt
  loc_152D680: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD), var_178)
  loc_152D698: Set var_180 = Me.Txt
  loc_152D69E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HB), var_184)
  loc_152D6BA: var_194 = (Trim(CVar(var_184)) + ":")
  loc_152D6C9: Set var_1D8 = Me.Txt
  loc_152D6CF: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HC), var_1DC)
  loc_152D6E6: var_1C4 = (CVar(var_184) + Trim(CVar(var_1DC)))
  loc_152D700: var_104 = (Trim(CVar(var_128)) + ":")
  loc_152D707: var_150 = (var_104 + Trim(CVar(var_140)))
  loc_152D719: Proc_6_122_14E77A8(CDate(var_A0), CStr(CVar(var_140)), CDate(var_178.Text))
  loc_152D71F: var_90 = CInt(CStr(var_1C4))
  loc_152D764: unk_46F9AB.BeginTrans var_228
  loc_152D76D: var_86 = CByte(1) 'Byte
  loc_152D776: var_218 = 0
  loc_152D78A: Set var_94 = Me.Txt
  loc_152D790: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_A0)
  loc_152D798: var_218 = var_98.Tag
  loc_152D7A6: var_E4 = Trim(CVar(var_A0))
  loc_152D7B3: Proc_96_84_FFBAD4(CStr(var_E4), var_90)
  loc_152D7EB: Set var_94 = Me.Txt
  loc_152D7F1: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_A0, "Delete From GuestFolioAmend Where FOlioNO=")
  loc_152D7F9: var_170 = var_98.Text
  loc_152D802: var_17C = -1 & var_A0
  loc_152D817: Set var_9C = Me.Txt
  loc_152D81D: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD), var_128, CVar(var_178.Text & " and OldDepDate="))
  loc_152D82C: Proc_6_7_F25D88(var_E4, CVar(var_128))
  loc_152D85E: unk_46F9AB.Execute CStr(Me.Txt & var_E4 & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_98, 
  loc_152D898: Set var_94 = Me.Txt
  loc_152D89E: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98)
  loc_152D8A6: var_A0 = var_98.Text
  loc_152D8B9: Set var_9C = Me.Txt
  loc_152D8BF: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(7), var_128)
  loc_152D8E0: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_140)
  loc_152D8F8: Set var_174 = Me.Txt
  loc_152D8FE: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HD))
  loc_152D90D: Proc_6_7_F25D88(var_E4, CVar(var_178))
  loc_152D91D: Set var_180 = Me.Txt
  loc_152D923: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HB), var_184)
  loc_152D933: Set var_1D8 = Me.Txt
  loc_152D939: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HC), var_1DC)
  loc_152D96A: var_194 = (Format(CVar(var_184), "00") + ":")
  loc_152D986: var_1A4 = CVar(var_1DC) 'Address
  loc_152D995: var_1D4 = (1 + Format(var_1A4, "00"))
  loc_152D9AC: Set var_254 = Me.Txt
  loc_152D9B2: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_258, 1, CVar(var_184))
  loc_152D9C1: Proc_6_7_F25D88(var_278, CVar(var_258), 1)
  loc_152D9D1: Set var_2AC = Me.Txt
  loc_152D9D7: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_2B0)
  loc_152D9E7: Set var_314 = Me.Txt
  loc_152D9ED: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_318)
  loc_152DA1E: var_310 = (Format(CVar(var_2B0), "00") + ":")
  loc_152DA49: var_368 = (1 + Format(CVar(var_318), "00"))
  loc_152DA63: Proc_6_7_F25D88(var_408, Date, 1, var_310)
  loc_152DA7C: var_17C = "Insert into GuestFolioAmend (FolioNo,Site_Code,GuestProf,RoomNo,OldDepDate,OldDepTime,DepDate,DepTime,U_Name,U_EntDt,U_AE,LogSite_Code) values(" & var_A0
  loc_152DA83: var_218 = var_17C & ",'"
  loc_152DA9F: var_23C = var_218 & MemVar_1F92070 & "','" & var_128.Tag & "','"
  loc_152DAF6: var_3C8 = CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(var_1D4) & "'," & var_278 & ",'" & Trim(var_368) & "','" & CVar(MemVar_1F920C8) 
  loc_152DB30: unk_46F9AB.Execute CStr(var_3C8 & "'," & var_408 & ",'A','" & CVar(MemVar_1F92078) & "')"), var_49C, -1
  loc_152DBDB: Set var_94 = Me.Txt
  loc_152DBE1: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4), var_98, "Update GuestFolio Set DepDate=", var_1A4, -1, Me.Txt)
  loc_152DBF0: Proc_6_7_F25D88(var_E4, CVar(var_98), var_4A0, 1)
  loc_152DC01: var_124 = 1 & var_E4 & " where Docid='" 
  loc_152DC13: Set var_9C = Me.Txt
  loc_152DC19: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_128, var_A0)
  loc_152DC21: var_124 = var_128.Tag
  loc_152DC2C: var_150 = 1 & CVar(var_A0) 
  loc_152DC4C: var_17C = CStr(var_150 & "' and Site_Code='" & CVar(MemVar_1F92070) & "'")
  loc_152DC56: unk_46F9AB.Execute var_17C, var_178, 
  loc_152DC8B: Set var_94 = Me.Txt
  loc_152DC91: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(4))
  loc_152DCA0: Proc_6_7_F25D88(var_E4, CVar(var_98))
  loc_152DCAA: var_138 = CVar(Proc_6_15_EF2C1C(var_98)) 'String
  loc_152DCB0: Proc_6_7_F25D88(var_150)
  loc_152DCC0: Set var_9C = Me.Txt
  loc_152DCC6: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(5), var_128)
  loc_152DCD6: Set var_13C = Me.Txt
  loc_152DCDC: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(6), var_140)
  loc_152DD0D: var_1C4 = (Format(CVar(var_128), "00") + ":")
  loc_152DD38: var_20C = (1 + Format(CVar(var_140), "00"))
  loc_152DD58: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_178, var_A0, 1)
  loc_152DD60: var_1C4 = var_178.Tag
  loc_152DD73: Set var_180 = Me.Txt
  loc_152DD79: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_184, var_17C)
  loc_152DD81: 1 = var_184.Text
  loc_152DD94: Set var_1D8 = Me.Txt
  loc_152DD9A: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_1DC, var_218)
  loc_152DDA2: 1 = var_1DC.Tag
  loc_152DDCA: var_104 = "Update RoomOcc set DepDate=" & var_E4 
  loc_152DDD3: var_124 = var_104 & ",U_EntDt=" 
  loc_152DDEA: var_278 = var_124 & var_150 & ",U_AE='E',DepTime='" & Trim(CVar(var_23C & var_140.Text & "',") & var_E4 & ",'" & Trim(CVar(var_140)) & "',") 
  loc_152DE2C: var_358 = var_278 & "' where Docid='" & CVar(var_A0) & "' and Site_Code='" & CVar(MemVar_1F92070) & "' and RoomNO='" & CVar(var_17C) & "' and DocId='" 
  loc_152DE4D: unk_46F9AB.Execute CStr(var_358 & CVar(Proc_6_38_E68A98(CVar(var_218))) & "'"), var_3C8, -1
  loc_152DEC1: Set var_94 = Me.Txt
  loc_152DEC7: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_98, var_218)
  loc_152DECF: var_254 = var_98.Text
  loc_152DEDC: var_214 = Val(var_218)
  loc_152DEED: Set var_9C = Me.Txt
  loc_152DEF3: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_128, var_23C)
  loc_152DF0E: Set var_13C = Me.Txt
  loc_152DF14: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(&HA), var_140)
  loc_152DF44: var_A0 = CStr(var_98.Text)
  loc_152DF70: var_240 = "Update PlanDetails Set NoofDays=" & var_A0 & " Where FolioNO=" & CStr(var_128.Text) & " and Site_Code='" & MemVar_1F92070 & "' and RoomNO='"
  loc_152DFA4: unk_46F9AB.Execute var_240 & var_23C & "' and DocId='" & Proc_6_38_E68A98(CVar(var_140.Tag)) & "' and noofDays=" & CStr(var_90), var_E4, -1
  loc_152DFEE: unk_46F9AB.CommitTrans
  loc_152DFF8: Set var_8C = Nothing
  loc_152DFFF: var_86 = CByte(0) 'Byte
  loc_152E003: Call Proc_58_32_E9B698(Me.Txt)
  loc_152E013: Me.Requery -1
  loc_152E023: Set var_94 = Me.Txt
  loc_152E029: Call 0.Method_BtnEnh1_UnknownEvent_90 (CInt(0), var_98)
  loc_152E031: var_98.SetFocus
  loc_152E03D: Exit Sub
  loc_152E03E: ' Referenced from: 152D204
  loc_152E047: If (CInt(var_86) = 1) Then
  loc_152E050:   unk_46F9AB.RollbackTrans
  loc_152E055: End If
  loc_152E05D: Set var_94 = Err()
  loc_152E063: Call 0.Method_arg_2C (var_A0)
  loc_152E07C: MsgBox(CVar(var_A0), &H10, var_E4, var_104, var_124)
  loc_152E08F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10510B0
  'Data Table: 46F99C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_1050E5E: Set var_88 = Me.Txt
  loc_1050E64: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1050E72: Proc_6_74_E226B0(var_8C)
  loc_1050E81: var_92 = Index
  loc_1050E8C: If (var_92 = CInt(0)) Then
  loc_1050EA6:   If (Me.RecordCount > 0) Then
  loc_1050EB4:     Set var_8C = Me.FGPoint
  loc_1050ECC:     Proc_6_137_1193554(Me.DGRoomNo, global_76, Index)
  loc_1050EDA:   End If
  loc_1050F28:   Set var_88 = Me.Txt
  loc_1050F2E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1050F36:   var_8C = var_8C.Text
  loc_1050F5C:   If (var_8C Or (Proc_6_38_E68A98(CVar(var_A0), var_92) = vbNullString)) Then
  loc_1050F5F:     Exit Sub
  loc_1050F60:   End If
  loc_1050F6D:   Set var_88 = Me.Txt
  loc_1050F73:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1050F7B:   var_A0 = var_8C.Text
  loc_1050F8D:   var_C4 = "RoomNo"
  loc_1050FA4:   var_C8 = Me.Fields.Item(var_C4)
  loc_1050FC8:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1050FD1:     Me.MoveFirst
  loc_1050FF4:     Set var_88 = Me.Txt
  loc_1050FFA:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_1051002:     0 = var_8C.Text
  loc_105101B:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1051030:   End If
  loc_1051030: End If
  loc_105103F: Set var_88 = Me.Txt
  loc_1051045: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_105104D: var_8C.SelStart = 0
  loc_1051066: Set var_88 = Me.Txt
  loc_105106C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1051087: Set var_90 = Me.Txt
  loc_105108D: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1051095: var_C8.SelLength = Len(var_8C.Text)
  loc_10510A8: Call Proc_58_33_E86698()
  loc_10510AD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10082CC
  'Data Table: 46F99C
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10080D7: var_88 = Shift
  loc_10080E4: If (CLng(Shift) = &H1B) Then
  loc_10080E7:   Call Proc_58_33_E86698(var_88)
  loc_10080EC:   Exit Sub
  loc_10080ED: End If
  loc_10080FB: If (KeyCode = CInt(0)) Then
  loc_100811B:   Set var_A4 = Me.FGPoint
  loc_1008126:   Set var_A0 = Nothing
  loc_1008158:   Proc_6_69_134A198(Me.DGRoomNo, Me.Txt, CInt(0), global_76, Shift, 0)
  loc_10081C7:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10081CE:     Set var_A0 = Me.DGRoomNo
  loc_10081ED:     Proc_6_138_106D6F8(var_A0, global_76, KeyCode, Me.FGPoint, 1)
  loc_10081FB:   End If
  loc_10081FB: End If
  loc_1008217: If (CBool(Me.DGRoomNo.Visible) = 0) Then
  loc_1008238:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(6))) Then
  loc_1008241:     Call Txt_Validate(KeyCode)
  loc_100824C:     If (var_86 = &HFF) Then
  loc_100824F:       Exit Sub
  loc_1008250:     End If
  loc_1008287:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_100828A:       Call TopCtrl1_UnknownEvent_16()
  loc_100828F:     End If
  loc_100828F:     Exit Sub
  loc_1008290:   End If
  loc_10082A5:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10082AE:     Proc_6_75_E527CC(Shift, arg_14, var_86, var_A0)
  loc_10082B3:   End If
  loc_10082BD:   If (CLng(Shift) = &H26) Then
  loc_10082C6:     Proc_6_76_E52838(Shift, arg_14, var_A4)
  loc_10082CB:   End If
  loc_10082CB: End If
  loc_10082CB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDFB6C
  'Data Table: 46F99C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDFAB7: Proc_6_58_E054C0(arg_10)
  loc_EDFAC2: Proc_6_133_E7EF78(var_94)
  loc_EDFADF: If (KeyAscii = CInt(0)) Then
  loc_EDFAFE:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EDFB2B:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_76, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EDFB5D:     Proc_6_138_106D6F8(Me.DGRoomNo, global_76, KeyAscii, Me.FGPoint)
  loc_EDFB6B:   End If
  loc_EDFB6B: End If
  loc_EDFB6B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EAAB48
  'Data Table: 46F99C
  Dim var_86 As Integer
  loc_EAAACB: var_86 = KeyCode
  loc_EAAAD6: If (var_86 = CInt(0)) Then
  loc_EAAAF5:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EAAB09:     var_A8 = "RoomNO"
  loc_EAAB31:     Proc_6_68_129FB34(Me.DGRoomNo, Me.Txt, CInt(0), global_76)
  loc_EAAB44:   End If
  loc_EAAB44: End If
  loc_EAAB44: Exit Sub
  loc_EAAB45: Put var_86, var_A8, Shift
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4731C
  'Data Table: 46F99C
  loc_E472FA: Set var_88 = Me.Txt
  loc_E47300: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4730E: Proc_6_73_E22704(var_8C)
  loc_E4731A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '149FA44
  'Data Table: 46F99C
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_94 As String
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_114 As TextBox
  Dim var_110 As Label
  Dim var_B4 As Variant
  loc_149ED8F: var_86 = Cancel
  loc_149ED9A: If (var_86 = CInt(0)) Then
  loc_149EDAB:   Set var_8C = Me.Txt
  loc_149EDB1:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_149EDD0:   If (var_90.Text = vbNullString) Then
  loc_149EDD5:     arg_10 = &HFF
  loc_149EDD8:   End If
  loc_149EDF6:   Set var_8C = Me.Txt
  loc_149EDFC:   Call 0.Method_Txt_Validate0 (CInt(0), var_90, "RoomNo='", 0)
  loc_149EE1C:   var_F4 = 1 & Trim(CVar(var_90)) & "'" 
  loc_149EE20:   var_94 = CStr(var_F4)
  loc_149EE2A:   Me.Find var_94, var_104, arg_10
  loc_149EE8E:   Set var_8C = Me.Txt
  loc_149EE94:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_149EE9C:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_149EEB4:   If (var_86 Or (var_94 = vbNullString)) Then
  loc_149EEC4:     Set var_8C = Me.Txt
  loc_149EECA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_149EED2:     var_90.Tag = vbNullString
  loc_149EEDE:     Exit Sub
  loc_149EEDF:   End If
  loc_149EF1A:   Set var_110 = Me.Txt
  loc_149EF20:   Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_149EF28:   var_114.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_149EF79:   Set var_110 = Me.Txt
  loc_149EF7F:   Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_149EF87:   var_114.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_149EFD6:   Set var_110 = Me.Txt
  loc_149EFDC:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_114)
  loc_149EFE4:   var_114.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("FolioNo")))
  loc_149F031:   Set var_110 = Me.Txt
  loc_149F037:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_114)
  loc_149F03F:   var_114.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("DocID")))
  loc_149F06D:   var_90 = Me.Fields.Item("ChkInDate")
  loc_149F08C:   Set var_110 = Me.Txt
  loc_149F092:   Call 0.Method_Txt_Validate0 (CInt(1), var_114)
  loc_149F09A:   var_114.Text = Proc_6_38_E68A98(CVar(var_90))
  loc_149F0B9:   Set var_8C = Me.Txt
  loc_149F0BF:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_149F0F9:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_149F164:   Set var_110 = Me.Txt
  loc_149F16A:   Call 0.Method_Txt_Validate0 (CInt(2), var_114, CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_149F172:   var_114.Text = 1
  loc_149F1E3:   Set var_110 = Me.Txt
  loc_149F1E9:   Call 0.Method_Txt_Validate0 (CInt(3), var_114)
  loc_149F1F1:   var_114.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_149F248:   Set var_110 = Me.Txt
  loc_149F24E:   Call 0.Method_Txt_Validate0 (CInt(4), var_114)
  loc_149F256:   var_114.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")))
  loc_149F2BD:   Set var_110 = Me.Txt
  loc_149F2C3:   Call 0.Method_Txt_Validate0 (CInt(5), var_114)
  loc_149F2CB:   var_114.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_149F303:   var_90 = Me.Fields.Item("DepTime")
  loc_149F33C:   Set var_110 = Me.Txt
  loc_149F342:   Call 0.Method_Txt_Validate0 (CInt(6), var_114)
  loc_149F34A:   var_114.Text = CStr(Right(CVar(Proc_6_38_E68A98(CVar(var_90))), 2))
  loc_149F373:   Set var_8C = Me.Txt
  loc_149F379:   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_149F3B3:   Me.LblDepDay.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_149F404:   Set var_110 = Me.Txt
  loc_149F40A:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_114, Proc_6_38_E68A98(CVar(Me.Fields.Item("DepDate")), 1))
  loc_149F412:   var_114.Text = 1
  loc_149F479:   Set var_110 = Me.Txt
  loc_149F47F:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_114)
  loc_149F487:   var_114.Text = CStr(Left(CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_149F4BF:   var_90 = Me.Fields.Item("DepTime")
  loc_149F4D0:   var_118 = Proc_6_38_E68A98(CVar(var_90))
  loc_149F4F8:   Set var_110 = Me.Txt
  loc_149F4FE:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_114)
  loc_149F506:   var_114.Text = CStr(Right(CVar(var_118), 2))
  loc_149F52F:   Set var_8C = Me.Txt
  loc_149F535:   Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_149F56F:   Me.lblolddepday.Caption = CStr(Format(CVar(var_90), "DDDD"))
  loc_149F5C3:   Set var_110 = Me.Txt
  loc_149F5C9:   Call 0.Method_Txt_Validate0 (CInt(7), var_114, CStr(Me.Fields.Item("GuestCode").Value))
  loc_149F5D1:   var_114.Tag = 1
  loc_149F623:   Set var_110 = Me.Txt
  loc_149F629:   Call 0.Method_Txt_Validate0 (CInt(7), var_114, CStr(Me.Fields.Item("GuestName").Value))
  loc_149F631:   var_114.Text = 1
  loc_149F680:   Set var_110 = Me.Txt
  loc_149F686:   Call 0.Method_Txt_Validate0 (CInt(8), var_114)
  loc_149F68E:   var_114.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("companyCode")))
  loc_149F6BC:   var_90 = Me.Fields.Item("CompanyName")
  loc_149F6DB:   Set var_110 = Me.Txt
  loc_149F6E1:   Call 0.Method_Txt_Validate0 (CInt(8), var_114)
  loc_149F6E9:   var_114.Text = Proc_6_38_E68A98(CVar(var_90))
  loc_149F700: Else
  loc_149F708:   If (var_86 = CInt(4)) Then
  loc_149F718:     Set var_8C = Me.Txt
  loc_149F71E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_149F744:     Set var_110 = Me.Txt
  loc_149F74A:     Call 0.Method_Txt_Validate0 (Cancel, var_114)
  loc_149F774:     Set var_8C = Me.Txt
  loc_149F77A:     Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_149F78E:     var_B4 = "DDDD"
  loc_149F79E:     var_D4 = Format(CVar(var_90), var_B4)
  loc_149F7A6:     var_94 = CStr(var_D4)
  loc_149F7B4:     Me.LblDepDay.Caption = var_94
  loc_149F7DA:     Set var_110 = Me.Txt
  loc_149F7E0:     Call 0.Method_Txt_Validate0 (CInt(4), var_114, var_118)
  loc_149F7E8:     1 = Proc_6_34_14ECF20(var_90.Text)
  loc_149F7FB:     Set var_8C = Me.Txt
  loc_149F801:     Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_94)
  loc_149F809:     1 = var_90.Text
  loc_149F82B:     If (CDate(var_94) > CDate(var_118)) Then
  loc_149F847:       MsgBox("Departure Date Must Be Greater than Check in Date", &H40, var_B4, var_D4, var_F4)
  loc_149F859:       arg_10 = &HFF
  loc_149F85C:     End If
  loc_149F85F:   Else
  loc_149F867:     If Not (var_86 = CInt(5)) Then
  loc_149F872:       If (var_86 = CInt(2)) Then
  loc_149F875:       End If
  loc_149F882:       Set var_8C = Me.Txt
  loc_149F888:       Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_149F890:       arg_10 = var_90.Text
  loc_149F8AC:       If (CDbl(Val(var_94)) > CDbl(&H17)) Then
  loc_149F8C8:         MsgBox("Invalid Time", &H40, var_B4, var_D4, var_F4)
  loc_149F8DA:         arg_10 = &HFF
  loc_149F8DD:       End If
  loc_149F8E7:       Set var_8C = Me.Txt
  loc_149F8ED:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_149F901:       var_B4 = "00"
  loc_149F911:       var_D4 = Format(CVar(var_90), var_B4)
  loc_149F919:       var_94 = CStr(var_D4)
  loc_149F927:       Set var_110 = Me.Txt
  loc_149F92D:       Call 0.Method_Txt_Validate0 (Cancel, var_114, var_94, 1)
  loc_149F935:       var_114.Text = 1
  loc_149F952:     Else
  loc_149F95A:       If Not (var_86 = CInt(3)) Then
  loc_149F965:         If (var_86 = CInt(6)) Then
  loc_149F968:         End If
  loc_149F975:         Set var_8C = Me.Txt
  loc_149F97B:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_94)
  loc_149F983:         arg_10 = var_90.Text
  loc_149F99F:         If (CDbl(Val(var_94)) > CDbl(&H3B)) Then
  loc_149F9BB:           MsgBox("Invalid Time", &H40, var_B4, var_D4, var_F4)
  loc_149F9CD:           arg_10 = &HFF
  loc_149F9D0:         End If
  loc_149F9DA:         Set var_8C = Me.Txt
  loc_149F9E0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_149FA1A:         Set var_110 = Me.Txt
  loc_149FA20:         Call 0.Method_Txt_Validate0 (Cancel, var_114, CStr(Format(CVar(var_90), "00")), 1)
  loc_149FA28:         var_114.Text = 1
  loc_149FA42:       End If
  loc_149FA42:     End If
  loc_149FA42:   End If
  loc_149FA42: End If
  loc_149FA42: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E3BE94
  'Data Table: 46F99C
  loc_E3BE88: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E3BE8B:   Call DGRoomNo_UnknownEvent_9()
  loc_E3BE90: End If
  loc_E3BE90: Exit Sub
End Sub

Public Function MasterFormExitGet() '470548
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '470557
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '470566
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '470575
  mVType = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96948
  'Data Table: 46F99C
  Dim Me As Recordset15
  loc_E968D6: On Error Goto loc_E9693F
  loc_E968DF: Me.MoveFirst
  loc_E96909: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96931: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E96939: Call Proc_58_34_10FA330(0)
  loc_E9693E: Exit Sub
  loc_E9693F: ' Referenced from: E968D6
  loc_E9693F: Proc_6_60_E62BC4(var_A0)
  loc_E96944: Exit Sub
End Sub

Public Property Get OpenMode() 'E04D40
  'Data Table: 46F99C
  loc_E04D39: OpenMode = global_80
End Sub

Public Property Let OpenMode(vNewValue) 'E02210
  'Data Table: 46F99C
  loc_E0220A: global_80 = vNewValue
  loc_E0220D: Exit Sub
End Sub

Public Sub Proc_58_31_E78594(arg_C) 'E78594
  'Data Table: 46F99C
  Dim var_98 As TextBox
  loc_E78542: Set var_8C = Me.Txt
  loc_E78548: Call 0.Method_Proc_58_31_E78594C (var_8E, var_86)
  loc_E78558: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7856E:   Set var_8C = Me.Txt
  loc_E78574:   Call 0.Method_Proc_58_31_E785940 (CInt(var_86), var_98)
  loc_E7857C:   var_98.Enabled = arg_C
  loc_E7858B: Next var_92 'Byte
  loc_E78591: Exit Sub
End Sub

Public Sub Proc_58_32_E9B698
  'Data Table: 46F99C
  Dim var_98 As TextBox
  loc_E9B61E: Set var_8C = Me.Txt
  loc_E9B624: Call 0.Method_Proc_58_32_E9B698C (var_8E, var_86)
  loc_E9B634: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9B64A:   Set var_8C = Me.Txt
  loc_E9B650:   Call 0.Method_Proc_58_32_E9B6980 (CInt(var_86), var_98)
  loc_E9B658:   var_98.Text = vbNullString
  loc_E9B674:   Set var_8C = Me.Txt
  loc_E9B67A:   Call 0.Method_Proc_58_32_E9B6980 (CInt(var_86), var_98)
  loc_E9B682:   var_98.Tag = vbNullString
  loc_E9B691: Next var_92 'Byte
  loc_E9B697: Exit Sub
End Sub

Public Sub Proc_58_33_E86698
  'Data Table: 46F99C
  loc_E86644: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E86656:   Me.DGRoomNo.Visible = False
  loc_E8665E: End If
  loc_E8667A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E8668C:   Me.FGPoint.Visible = False
  loc_E86694: End If
  loc_E86694: Exit Sub
End Sub

Public Sub Proc_58_34_10FA330
  'Data Table: 46F99C
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim unk_46F9AB As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_8C As Recordset15
  loc_10FA014: On Error Goto loc_10FA327
  loc_10FA02E: If (Me.RecordCount > 0) Then
  loc_10FA045:   var_C8 = CVar("SELECT GuestFolio.DocId, RoomCat.Name AS RoomCatNAme, RoomCat.Type, RoomOcc.RoomCat, RoomOcc.RoomNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.Adult, RoomOcc.Children, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.Type, GuestFolio.FolioNo, GuestFolio.Vtype, GuestFolio.Vdate, GuestFolio.Vprefix, GuestFolio.GuestProf, GuestProf.Name, GuestFolio.Add1, GuestFolio.Add2, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName, GuestFolio.NoDays, GuestFolio.SplitFolio, GuestFolio.Remarks, GuestFolio.Authorisation, GuestFolio.Company, GuestFolio.PurVisit, GuestFolio.Nationality, GuestFolio.ArrFrom, GuestFolio.Destination, GuestFolio.TravelMode, GuestFolio.TclFac, GuestFolio.Remark, GuestFolio.RODisc, GuestFolio.RSDisc,GuestFolio.BookingDocId, City.CityName AS ArrivedFrom, City_1.CityName AS DestinationCity, SubGroup.Name AS CompanyName" & " FROM (((((GuestFolio LEFT JOIN RoomOcc ON GuestFolio.DocId = RoomOcc.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN City ON GuestFolio.ArrFrom = City.CityCode) LEFT JOIN City AS City_1 ON GuestFolio.Destination = City_1.CityCode) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode Where Guestfolio.Docid='") 'String
  loc_10FA07E:   var_F8 = var_C8 & Me.Fields.Item("SearchCode").Value & "'" 
  loc_10FA08C:   unk_46F9AB.Execute CStr(var_F8), var_11C, -1
  loc_10FA097:   Set var_88 = var_120
  loc_10FA0EC:   Set var_120 = Me.Txt
  loc_10FA0F2:   Call 0.Method_Proc_58_34_10FA3300 (CInt(0), var_124)
  loc_10FA0FA:   var_124.Text = CStr(var_88.Fields.Item("RoomNo").Value)
  loc_10FA149:   Set var_120 = Me.Txt
  loc_10FA14F:   Call 0.Method_Proc_58_34_10FA3300 (CInt(8), var_124)
  loc_10FA157:   var_124.Tag = CStr(var_88.Fields.Item("Company").Value)
  loc_10FA1A9:   Call 0.Method_Proc_58_34_10FA3300 (CInt(8), var_124)
  loc_10FA1B1:   var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CompanyName")))
  loc_10FA1D2:   var_E8 = "SELECT GuestProf.Code, GuestProf.Name, GuestProf.Add1,GuestProf.ExpiresOn, GuestProf.Add2, GuestProf.Type, GuestProf.PhoneNo, GuestProf.FaxNo, GuestProf.MobileNo, GuestProf.EmailId, GuestProf.Nationality, GuestProf.BirthDate, GuestProf.Anniversary, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, City.CityName, City.ZipCode, State.Name as StateName, Country.Name as CountryName , GuestStat.Name as Status FROM GuestStat RIGHT JOIN (((GuestProf LEFT JOIN City ON GuestProf.City = City.CityCode) LEFT JOIN State ON City.State = State.Code) LEFT JOIN Country ON City.Country = Country.Code) ON GuestStat.Code = GuestProf.GuestStatus  where GuestProf.Code='"
  loc_10FA218:   unk_46F9AB.Execute CStr(var_E8 & var_88.Fields.Item("GuestProf").Value & "'"), var_F8, -1
  loc_10FA223:   Set var_8C = Me.Txt
  loc_10FA251:   If (var_8C.RecordCount > 0) Then
  loc_10FA293:     Call 0.Method_Proc_58_34_10FA3300 (CInt(7), var_124, CStr(var_8C.Fields.Item("Code").Value))
  loc_10FA29B:     var_124.Tag = Me.Txt
  loc_10FA2E7:     Set var_120 = Me.Txt
  loc_10FA2ED:     Call 0.Method_Proc_58_34_10FA3300 (CInt(7), var_124)
  loc_10FA2F5:     var_124.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Name")))
  loc_10FA309:   End If
  loc_10FA30C: Else
  loc_10FA30C:   Call Proc_58_32_E9B698(var_120)
  loc_10FA311: End If
  loc_10FA311: Call Proc_58_33_E86698()
  loc_10FA31B: Set var_8C = Nothing
  loc_10FA323: Set var_88 = Nothing
  loc_10FA326: Exit Sub
  loc_10FA327: ' Referenced from: 10FA014
  loc_10FA327: Proc_6_60_E62BC4()
  loc_10FA32C: Exit Sub
End Sub
