VERSION 5.00
Begin VB.Form InHouseGuestFolio
  Caption = "Inhouse Guest Folio"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 360
  ClientWidth = 17160
  ClientHeight = 10185
  LockControls = -1  'True
  Begin Timer Timer2
    Interval = 5000
    Left = 16545
    Top = 6525
  End
  Begin Frame Frame2
    Left = 15750
    Top = -15
    Width = 5205
    Height = 2595
    Visible = 0   'False
    TabIndex = 41
    BorderStyle = 0 'None
    Begin CheckBox Check1
      Left = 3540
      Top = 1215
      Width = 195
      Height = 240
      TabIndex = 46
    End
    Begin TextBox txtEXTBChrg
      Left = 2235
      Top = 1215
      Width = 1200
      Height = 285
      TabIndex = 45
    End
    Begin TextBox txtFoliono
      Left = 2430
      Top = 105
      Width = 855
      Height = 285
      Enabled = 0   'False
      TabIndex = 43
    End
    Begin TextBox txtRoomNo
      Left = 4170
      Top = 105
      Width = 630
      Height = 285
      Enabled = 0   'False
      TabIndex = 42
    End
    Begin BtnEnh CmdOK
      Left = 2400
      Top = 2070
      Width = 780
      Height = 375
      TabIndex = 44
    End
    Begin Label Label1
      Caption = "Extra Bed Charge"
      Left = 750
      Top = 1215
      Width = 1395
      Height = 360
      TabIndex = 51
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "ExtraBed/Person for Folio No."
      Index = 0
      Left = 75
      Top = 105
      Width = 2355
      Height = 255
      TabIndex = 50
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "Room No."
      Index = 1
      Left = 3345
      Top = 105
      Width = 855
      Height = 195
      TabIndex = 49
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label5
      Caption = "Label5"
      BackColor = &H8000000A&
      ForeColor = &H80&
      Left = 105
      Top = 465
      Width = 5055
      Height = 345
      Visible = 0   'False
      TabIndex = 48
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label6
      Caption = "Note : Please Tick On Check Box For Charges Posting"
      Left = 210
      Top = 1710
      Width = 4320
      Height = 210
      TabIndex = 47
    End
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFF0000&
    Left = 0
    Top = 8265
    Width = 14460
    Height = 405
    TabIndex = 25
    BorderStyle = 0 'None
    Begin Label LBLVR
      Caption = "VR"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 9990
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 40
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Vacant Rooms"
    End
    Begin Label LBLVC
      Caption = "VC"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 13665
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 39
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Vacant Clean"
    End
    Begin Label LblMsgBox
      Caption = "*"
      ForeColor = &HFF0000&
      Left = 7530
      Top = 60
      Width = 270
      Height = 240
      TabIndex = 34
      Alignment = 2 'Center
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Wingdings"
        Size = 11.25
        Charset = 2
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label2
      Caption = "Guest Bill Printed "
      Index = 1
      BackColor = &HB4FEBD&
      ForeColor = &H80000008&
      Left = 1335
      Top = 30
      Width = 1440
      Height = 330
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = " In House Guest"
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 0
      Top = 30
      Width = 1335
      Height = 330
      TabIndex = 37
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Current Guest Selected"
      Index = 2
      BackColor = &HBFBDFF&
      ForeColor = &H80000008&
      Left = 2775
      Top = 30
      Width = 1905
      Height = 330
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Message"
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &H80000008&
      Left = 7515
      Top = 30
      Width = 990
      Height = 330
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label lblOccRoom
      Caption = "OR"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 9255
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 33
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Occupied Rooms"
    End
    Begin Label Label2
      Caption = "Plan/Package Guest"
      Index = 4
      BackColor = &HFFFFC0&
      ForeColor = &H80000008&
      Left = 4680
      Top = 30
      Width = 1635
      Height = 330
      TabIndex = 32
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
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
      Caption = "Exp.Departure"
      Index = 5
      BackColor = &H80FFFF&
      ForeColor = &H80000008&
      Left = 6315
      Top = 30
      Width = 1200
      Height = 330
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial Narrow"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Lblblockroom
      Caption = "OO"
      BackColor = &HC0FFC0&
      ForeColor = &H808000&
      Left = 10725
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 30
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Out of Order"
    End
    Begin Label LBLOD
      Caption = "OD"
      BackColor = &HC0FFC0&
      ForeColor = &HC0&
      Left = 11460
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 29
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Occupied Dirty"
    End
    Begin Label LBLOC
      Caption = "OC"
      BackColor = &HC0FFC0&
      ForeColor = &HC000&
      Left = 12195
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 28
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Occupied Clean"
    End
    Begin Label LblTR
      Caption = "TR"
      BackColor = &HC0FFC0&
      ForeColor = &H8080&
      Left = 8520
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 27
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Total Rooms"
    End
    Begin Label LBLVD
      Caption = "VD"
      BackColor = &HC0FFC0&
      ForeColor = &HC0&
      Left = 12930
      Top = 45
      Width = 720
      Height = 300
      TabIndex = 26
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Vacant Dirty"
    End
  End
  Begin BtnEnh CmdNew
    Index = 8
    Left = 30
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 9
  End
  Begin CommandButton Cmd1
    Caption = "House &Keeping"
    Index = 1
    Left = 6765
    Top = 10530
    Width = 1725
    Height = 510
    Visible = 0   'False
    TabIndex = 8
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 6090
    Top = 1800
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FPlanGrid
    Left = 5655
    Top = 3705
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid2
    Left = 0
    Top = 945
    Width = 540
    Height = 7250
    TabIndex = 5
  End
  Begin MSHFlexGrid FGrid
    Left = 555
    Top = 945
    Width = 15345
    Height = 7245
    TabIndex = 0
  End
  Begin CommandButton Cmd
    Caption = "Close Dial Facility"
    Index = 12
    Left = 5925
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Open Dial Facility"
    Index = 11
    Left = 5070
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Timer Timer1
    Interval = 1000
    Left = 0
    Top = 0
  End
  Begin CommandButton Cmd
    Caption = "Register wake - up Calls"
    Index = 3
    Left = 4215
    Top = 10185
    Width = 855
    Height = 855
    Visible = 0   'False
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh CmdNew
    Index = 14
    Left = 1065
    Top = 30
    Width = 1095
    Height = 885
    TabIndex = 10
  End
  Begin BtnEnh CmdNew
    Index = 2
    Left = 2160
    Top = 30
    Width = 1095
    Height = 885
    TabIndex = 11
  End
  Begin BtnEnh CmdNew
    Index = 7
    Left = 3240
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 12
  End
  Begin BtnEnh CmdNew
    Index = 6
    Left = 4260
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 13
  End
  Begin BtnEnh CmdNew
    Index = 1
    Left = 6300
    Top = 30
    Width = 975
    Height = 885
    TabIndex = 15
  End
  Begin BtnEnh CmdNew
    Index = 0
    Left = 9285
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 18
  End
  Begin BtnEnh CmdNew
    Index = 4
    Left = 10320
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 19
  End
  Begin BtnEnh CmdNew
    Index = 10
    Left = 11355
    Top = 30
    Width = 1035
    Height = 885
    TabIndex = 20
  End
  Begin BtnEnh CmdNew
    Index = 9
    Left = 12375
    Top = 30
    Width = 1005
    Height = 885
    TabIndex = 21
  End
  Begin BtnEnh CmdExit
    Left = 13380
    Top = 30
    Width = 1110
    Height = 885
    TabIndex = 22
  End
  Begin BtnEnh CmdUP
    Left = 16065
    Top = 3225
    Width = 930
    Height = 885
    TabIndex = 23
  End
  Begin BtnEnh CmdDown
    Left = 16080
    Top = 4530
    Width = 930
    Height = 885
    TabIndex = 24
  End
  Begin BtnEnh CmdNew
    Index = 3
    Left = 8295
    Top = 30
    Width = 990
    Height = 885
    TabIndex = 17
  End
  Begin BtnEnh CmdNew
    Index = 5
    Left = 7275
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 16
  End
  Begin BtnEnh CmdNew
    Index = 11
    Left = 5265
    Top = 30
    Width = 1020
    Height = 885
    TabIndex = 14
  End
  Begin BtnEnh CmdLockCard
    Left = 14490
    Top = 30
    Width = 1035
    Height = 885
    Visible = 0   'False
    TabIndex = 52
  End
  Begin Label LblWebProfile
    Caption = "Web Profile"
    BackColor = &HFF0000&
    ForeColor = &HFFFFFF&
    Left = 14475
    Top = 8730
    Width = 1470
    Height = 315
    TabIndex = 53
    Alignment = 2 'Center
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
  Begin Label Label3
    BackColor = &H0&
    ForeColor = &H0&
    Left = -15
    Top = 8670
    Width = 14475
    Height = 495
    TabIndex = 2
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "InHouseGuestFolio"


Private Sub Timer2_Timer() 'EB2A90
  'Data Table: 52FB64
  Dim var_88 As Label
  Dim var_90 As String
  Dim unk_52FB6A As Connection15
  Dim var_8C As Recordset15
  loc_EB2A09: Set var_88 = Me.LblWebProfile
  loc_EB2A0F: var_88.BackColor = &HFF0000
  loc_EB2A2B: var_90 = "Select Code FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_EB2A3B: unk_52FB6A.Execute var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null And GUESTPROF.WebYN='Y'", var_B4, -1
  loc_EB2A6A: If (var_88.RecordCount > 0) Then
  loc_EB2A7C:   Me.LblWebProfile.BackColor = &HFF00
  loc_EB2A84: End If
  loc_EB2A89: Set var_8C = Nothing
  loc_EB2A8C: Exit Sub
End Sub

Private Sub LblWebProfile_Click() 'F2FEE8
  'Data Table: 52FB64
  Dim var_90 As String
  Dim MemVar_1F920E4 As String
  Dim unk_52FB6A As Connection15
  Dim var_8C As Recordset15
  Dim var_D0 As String
  loc_F2FDEC: On Error Goto loc_F2FEDF
  loc_F2FE00: var_90 = "Select Code As SearchCode,GUESTPROF.Name As Name,ADD1 AS Address1,ADD2 AS Address2,CITY.CITYNAME AS CityName FROM GuestProf Left Join City on City.CityCode=GuestProf.City Where GuestProf.Code Not In (Select Distinct GuestProf From (Select GuestProf From Booking Union All Select GuestProf From GuestFolio Union All Select GuestProf From GuestFolioProfDetail Union All Select GuestProf From Paycharge) Q) And (GuestProf.LOGSITE_CODE='" & MemVar_1F92078
  loc_F2FE15: MemVar_1F920E4 = var_90 & "' or GuestProf.LOGSITE_CODE='HO') and GUESTPROF.Name is not null " & var_88 & " And GUESTPROF.WebYN='Y'" & " Order by GuestProf.Name"
  loc_F2FE38: unk_52FB6A.Execute MemVar_1F920E4, var_B8, -1
  loc_F2FE60: If (var_BC.RecordCount <= 0) Then
  loc_F2FE69:   var_D0 = "Information"
  loc_F2FE84:   MsgBox("No Records To Search.", &H40, var_D0, var_100, var_120)
  loc_F2FE94:   Exit Sub
  loc_F2FE95: End If
  loc_F2FE9B: MemVar_1F92120 = Me
  loc_F2FEA8: Proc_6_126_F1BCC0("3200,2500,2500,2400", var_BC)
  loc_F2FEB9: Call 0.Method_arg_54 ("Web Profile")
  loc_F2FED1: Call 0.Method_arg_2B0 (1, var_D0)
  loc_F2FEDB: Set var_8C = Nothing
  loc_F2FEDE: Exit Sub
  loc_F2FEDF: ' Referenced from: F2FDEC
  loc_F2FEDF: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F2FEE4: Exit Sub
End Sub

Private Sub CmdUp_UnknownEvent_9 'EE2AC8
  'Data Table: 52FB64
  Dim var_A8 As Variant
  loc_EE2A23: If (CLng(Me.FGrid.Row) > 1) Then
  loc_EE2A3F:   var_A8 = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_EE2A4E:   Me.FGrid.Row = var_A8
  loc_EE2A76:   var_A8 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_EE2A85:   Me.FGrid.ColSel = var_A8
  loc_EE2AB6:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_EE2AC5: End If
  loc_EE2AC5: Exit Sub
End Sub

Private Sub CmdDown_UnknownEvent_9 'F03D90
  'Data Table: 52FB64
  Dim var_BC As Variant
  loc_F03CEB: If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F03D07:   var_BC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_F03D16:   Me.FGrid.Row = var_BC
  loc_F03D3E:   var_BC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_F03D4D:   Me.FGrid.ColSel = var_BC
  loc_F03D7E:   Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_F03D8D: End If
  loc_F03D8D: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18270
  'Data Table: 52FB64
  Dim var_1301 As Double
  loc_E18265: Me.Global.Unload Me
  loc_E1826D: Exit Sub
  loc_E1826E: var_1301 = 
End Sub

Private Sub FGrid2_UnknownEvent_9 '106E244
  'Data Table: 52FB64
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_10C As String
  loc_106DFCC: On Error Goto loc_106E23C
  loc_106DFE2: var_C0 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_106DFFA: var_E0 = CVar(CLng(Me.FGrid2.ColSel)) 'Long
  loc_106E014: var_108 = CStr(Me.FGrid2.TextMatrix))
  loc_106E031: If (var_108 = "*") Then
  loc_106E03B:   var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F92078
  loc_106E0A8:   MemVar_1F92120 = Me
  loc_106E0B5:   Proc_6_126_F1BCC0("2500,800,2000,1600,10000,500", CVar(CLng(&H13)) & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_106E0D0:   Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND IsNull(GuestMessage.Solved,'')<>'Y' AND RoomOcc.DocId='")
  loc_106E0D8: Else
  loc_106E0E0:   If (var_108 = ") 'String Then
  loc_106E0EA:     var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F92078
  loc_106E157:     MemVar_1F92120 = Me
  loc_106E164:     Proc_6_126_F1BCC0("2500,800,2000,1600,10000,500", CVar(CLng(&H13)) & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_106E17F:     Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND RoomOcc.DocId='")
  loc_106E187:   Else
  loc_106E18F:     If (var_108 = "*) 'String Then
  loc_106E199:       var_10C = "SELECT GuestMessage.DocId as SearchCode, GuestProf.Name, GuestMessage.RoomNo, GuestMessage.Caller, GuestMessage.Telephone, GuestMessage.Message,'' as Status FROM RoomOcc LEFT JOIN (GuestMessage INNER JOIN GuestProf ON GuestMessage.GuestProf = GuestProf.Code) ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL And (GuestMessage.LOGSITE_CODE='" & MemVar_1F92078
  loc_106E1BE:       var_E0 = CVar(CLng(&H13)) 'Long
  loc_106E206:       MemVar_1F92120 = Me
  loc_106E213:       Proc_6_126_F1BCC0("2500,800,2000,1600,10000,500", var_E0 & CStr(Me.FGrid.TextMatrix)) & "'", CVar(CLng(Me.FGrid2.Row)))
  loc_106E22E:       Call 0.Method_arg_2B0 (1, var_D0, "2500,800,2000,1600,10000,500" & "' or GuestMessage.LOGSITE_CODE='HO') AND RoomOcc.DocId='")
  loc_106E233:     End If
  loc_106E233:   End If
  loc_106E233: End If
  loc_106E238: Set var_88 = Nothing
  loc_106E23B: Exit Sub
  loc_106E23C: ' Referenced from: 106DFCC
  loc_106E23C: Proc_6_60_E62BC4(var_E0)
  loc_106E241: Exit Sub
End Sub

Private Sub CmdOK_UnknownEvent_9 'FB8DBC
  'Data Table: 52FB64
  Dim var_A4 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim Me As Recordset15
  Dim var_17C As Variant
  Dim unk_52FB6A As Connection15
  loc_FB8C73: If (Me.Check1.Value = 1) Then
  loc_FB8C8D:   var_A4 = CVar(Proc_6_15_EF2C1C()) 'String
  loc_FB8C93:   Proc_6_7_F25D88(var_B4)
  loc_FB8CAB:   var_118 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FB8CB3:   var_138 = CVar(CLng(&H13)) 'Long
  loc_FB8D2D:   var_17C = CVar("Update RoomOcc set Extrabed=" & Me.txtEXTBChrg.Text & ",U_EntDt=") & var_B4 & ",U_AE='E' where Docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_FB8D54:   unk_52FB6A.Execute CStr(var_17C & "' and Sno='" & Me.Fields.Item("SNo").Value & "' "), var_218, -1
  loc_FB8D90: End If
  loc_FB8D9C: Me.Frame2.Visible = False
  loc_FB8DB0: Me.Label5.Visible = False
  loc_FB8DB8: Exit Sub
End Sub

Private Sub Timer1_Timer() 'FCE004
  'Data Table: 52FB64
  Dim var_8C As Variant
  Dim var_F8 As Single
  Dim var_FC As Single
  Dim Me As Variant
  loc_FCDE68: If (Me.Label3.Caption <> vbNullString) Then
  loc_FCDE89:   var_FC = Rnd(var_F0)
  loc_FCDEB6:   Me.Label3.BackColor = RGB(CInt((CDbl(255) * Rnd(var_B0))), CInt((CDbl(255) * Rnd(var_D0))), CInt((CDbl(255) * var_FC)))
  loc_FCDED6:   Me.Label3.ForeColor = &HFFFFFF
  loc_FCDEE1: Else
  loc_FCDEEA:   Set var_8C = Me.Label3
  loc_FCDEF0:   var_8C.BackColor = &HE0E0E0
  loc_FCDEF8: End If
  loc_FCDF06: Me.Clone
  loc_FCDF11: Set var_88 = var_8C
  loc_FCDF22: Me.Recordset15.Requery -1
  loc_FCDF41: var_F8 = Me.RecordCount
  loc_FCDF4A: If (Me.Recordset15.RecordCount <> var_F8) Then
  loc_FCDF5C:   Me.FGrid.Redraw = False
  loc_FCDF73:   Me.FGrid2.Redraw = False
  loc_FCDF86:   Me.Requery -1
  loc_FCDF94:   CVarUnk
  loc_FCDF99:   VerifyVarObj
  loc_FCDF9F:   Set var_8C = Me.FGrid
  loc_FCDFA5:   LateIdStAd
  loc_FCDFBE:   Me.Requery -1
  loc_FCDFCB:   Set var_8C = Me.FGrid
  loc_FCDFD1:   var_8C.Redraw = True
  loc_FCDFD9:   Call Proc_52_37_1395F08(var_8C, global_52, -1, var_8C)
  loc_FCDFEC:   Me.FGrid2.Redraw = True
  loc_FCDFF4:   Call Proc_52_33_1500598(var_FC, var_F8)
  loc_FCDFF9: End If
  loc_FCDFFE: Set var_88 = Nothing
  loc_FCE001: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EEC6C4
  'Data Table: 52FB64
  Dim var_88 As Variant
  loc_EEC5FB: If (Proc_183_12_E7A3E4(KeyCode) = &HFF) Then
  loc_EEC602:   Set var_88 = Me.FGrid
  loc_EEC61F:   Me.TxtSearch.Visible = False
  loc_EEC627: End If
  loc_EEC631: If (CLng(KeyCode) = &H2E) Then
  loc_EEC641:   Me.TxtSearch.Text = vbNullString
  loc_EEC649: End If
  loc_EEC65E: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EEC665:   Set var_88 = Me.FGrid
  loc_EEC682:   Me.TxtSearch.Visible = False
  loc_EEC68A: End If
  loc_EEC69F: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EEC6B8:   Me.FGrid.CellBackColor = CVar(CLng(global_84))
  loc_EEC6C0: End If
  loc_EEC6C0: Exit Sub
  loc_EEC6C1: Get , , FGrid.DispID_8001 'get FGrid.DispID_8001 bytes
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'F01978
  'Data Table: 52FB64
  Dim Me As Recordset15
  Dim KeyAscii As Integer
  loc_F0192D: Call MadFaSelGridKeyPress(Me.TxtSearch, Me.FGrid, global_52, KeyAscii, Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name, global_84, global_84)
  loc_F0194B: KeyAscii = 0
  loc_F01969: global_84 = CStr(CLng(Me.FGrid.CellBackColor))
  loc_F01976: Exit Sub
End Sub

Private Sub TxtSearch_LostFocus() 'E57F10
  'Data Table: 52FB64
  Dim var_88 As TextBox
  loc_E57EDD: Me.TxtSearch.Text = vbNullString
  loc_E57EE9: Set var_88 = Me.FGrid
  loc_E57F06: Me.TxtSearch.Visible = False
  loc_E57F0E: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E57E9C
  'Data Table: 52FB64
  Dim var_88 As TextBox
  loc_E57E69: Me.TxtSearch.Text = vbNullString
  loc_E57E75: Set var_88 = Me.FGrid
  loc_E57E92: Me.TxtSearch.Visible = False
  loc_E57E9A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E53B0C
  'Data Table: 52FB64
  loc_E53AF0: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E53B02:   Me.FPlanGrid.Visible = False
  loc_E53B0A: End If
  loc_E53B0A: Exit Sub
  loc_E53B0B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFB6E8
  'Data Table: 52FB64
  loc_DFB6E4: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(arg_C, arg_10) 'FD69D0
  'Data Table: 52FB64
  Dim var_A0 As Variant
  Dim Me As Recordset15
  loc_FD6819: If ((CLng(arg_C) = &H53) And (arg_10 = 2)) Then
  loc_FD683D:   For var_A4 = CInt(CLng(Me.FGrid.Col)) To 1 Step &HFF: var_8A = var_A4 'Integer
  loc_FD687C:     var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & ","
  loc_FD6890:   Next var_A4 'Integer
  loc_FD689F:   var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_FD68BC:   var_88 = CStr(Mid(var_88, 1, Me.FGrid.Col))
  loc_FD68D1:   Me.Requery -1
  loc_FD68DF:   Me.Sort = var_88
  loc_FD68E4:   Call Form_Paint()
  loc_FD68EC: Else
  loc_FD68FD:   If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_FD6921:     For var_E4 = CInt(CLng(Me.FGrid.Col)) To 1 Step &HFF:   var_8A = var_E4 'Integer
  loc_FD6960:       var_88 = var_88 & Me.Fields.Item(CVar(var_8A)).Name & " Desc ,"
  loc_FD6974:     Next var_E4 'Integer
  loc_FD6983:     var_A0 = CVar((Len(var_88) - 1)) 'Long
  loc_FD69B5:     Me.Requery -1
  loc_FD69C3:     Me.Sort = CStr(Mid(var_88, 1, Me.FGrid.Col))
  loc_FD69C8:     Call Form_Paint()
  loc_FD69CD:   End If
  loc_FD69CD: End If
  loc_FD69CD: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F29C74
  'Data Table: 52FB64
  Dim Me As Recordset15
  loc_F29C23: Call MadFaSelGridKeyPress(Me.TxtSearch, Me.FGrid, global_52, Index, Me.Fields.Item(CVar(CLng(Me.FGrid.Col))).Name, "16777152", CStr(CLng(Me.FGrid.CellBackColor)))
  loc_F29C66: global_84 = CStr(CLng(Me.FGrid.CellBackColor))
  loc_F29C73: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_10(Index As Integer) '10CDA18
  'Data Table: 52FB64
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_118 As MSHFlexGrid
  Dim var_138 As Long
  Dim var_16C As Variant
  loc_10CD73F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CD744: var_C8 = &H11
  loc_10CD77B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_10CD784:   If (Index = 2) Then
  loc_10CD78B:     Set var_88 = Me.FGrid
  loc_10CD7AA:     Me.FPlanGrid.Visible = True
  loc_10CD7C5:     Me.FPlanGrid.Rows = 0
  loc_10CD7E0:     var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CD7E5:     var_C8 = &H11
  loc_10CD811:     var_104 = CVar(CStr(Me.FGrid.TextMatrix)) & " " & "Posting") 'String
  loc_10CD819:     Set var_118 = Me.FPlanGrid
  loc_10CD840:     var_A8 = "Post Plan/Package Charges For All Rooms"
  loc_10CD84A:     Set var_88 = Me.FPlanGrid
  loc_10CD85B:     var_A8 = 0
  loc_10CD864:     var_C8 = &H12C
  loc_10CD871:     Set var_88 = Me.FPlanGrid
  loc_10CD877:     LateIdCallSt
  loc_10CD882:     var_A8 = 1
  loc_10CD88B:     var_C8 = &H12C
  loc_10CD898:     Set var_88 = Me.FPlanGrid
  loc_10CD89E:     LateIdCallSt
  loc_10CD8A9:     var_A8 = 0
  loc_10CD8BC:     var_98 = Me.FPlanGrid.RowHeight)
  loc_10CD8E9:     var_114 = CVar(CDbl((1 + CLng(Me.FPlanGrid.RowHeight))))) 'Single
  loc_10CD8F8:     Me.FPlanGrid.Height = var_114
  loc_10CD90D:     var_A8 = 0
  loc_10CD916:     var_C8 = &HFA0
  loc_10CD923:     Set var_88 = Me.FPlanGrid
  loc_10CD929:     LateIdCallSt
  loc_10CD934:     var_A8 = 0
  loc_10CD953:     var_C8 = 1
  loc_10CD972:     var_114 = 0
  loc_10CD991:     var_138 = 1
  loc_10CD9D2:     var_16C = CVar((((arg_18 + CDbl(CLng(Me.FPlanGrid.RowHeight)))) + CDbl(CLng(Me.FPlanGrid.RowHeight)))) - (CDbl((CLng(Me.FPlanGrid.RowHeight)) + CLng(Me.FPlanGrid.RowHeight)))) / CDbl(4)))) 'Single
  loc_10CD9E1:     Me.FPlanGrid.Top = var_16C
  loc_10CDA0F:     Me.FPlanGrid.Left = arg_14
  loc_10CDA17:   End If
  loc_10CDA17: End If
  loc_10CDA17: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E538DC
  'Data Table: 52FB64
  loc_E538C0: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E538D2:   Me.FPlanGrid.Visible = False
  loc_E538DA: End If
  loc_E538DA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'F7DDB4
  'Data Table: 52FB64
  Dim var_8A As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_8C As Integer
  Dim var_88 As Integer
  loc_F7DC5E: var_8A = 0
  loc_F7DC86: For var_A4 = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_A4 'Integer
  loc_F7DC90:   var_D4 = CVar(CLng(var_86)) 'Long
  loc_F7DC99:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7DCB4:   var_F4 = CVar(CLng(Me.FGrid.RowHeight))) 'Long
  loc_F7DCBD:   Set var_108 = Me.FGrid2
  loc_F7DCC3:   LateIdCallSt
  loc_F7DCD8: Next var_A4 'Integer
  loc_F7DD02: For var_10C = 0 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_10C 'Integer
  loc_F7DD0C:   var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7DD30:   If (CBool(Me.FGrid.RowIsVisible)) = 0) Then
  loc_F7DD36:     var_8A = var_86
  loc_F7DD3B:     var_8C = &HFF
  loc_F7DD41:     var_88 = var_86
  loc_F7DD44:   End If
  loc_F7DD47: Next var_10C 'Integer
  loc_F7DD70: If (CLng(var_8A) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_F7DD7B:   For var_110 = 1 To var_8A: var_86 = var_110 'Integer
  loc_F7DD85:     var_B4 = CVar(CLng(var_86)) 'Long
  loc_F7DD8A:     var_D4 = 0
  loc_F7DD97:     Set var_90 = Me.FGrid2
  loc_F7DD9D:     LateIdCallSt
  loc_F7DDAB:   Next var_110 'Integer
  loc_F7DDB0: End If
  loc_F7DDB0: Exit Sub
  loc_F7DDB1: StAryRecMove
End Sub

Private Sub FPlanGrid_UnknownEvent_9 'E2AA28
  'Data Table: 52FB64
  loc_E2AA1B: Call Proc_52_36_136A99C(CInt(CLng(Me.FPlanGrid.Row)))
  loc_E2AA26: Exit Sub
End Sub

Public Sub CmdNew_UnknownEvent_9(arg_C, arg_10) '1C8C58C
  'Data Table: 52FB64
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_116 As Integer
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim unk_52FB6A As Connection15
  Dim var_94 As Recordset15
  Dim var_138 As Variant
  Dim var_1E0 As Variant
  Dim var_1BC As Variant
  Dim var_1D0 As Variant
  Dim var_1FC As String
  Dim var_200 As Variant
  Dim var_204 As Variant
  Dim var_18C As Variant
  Dim var_22C As Variant
  Dim var_208 As String
  Dim var_21C As Variant
  Dim var_230 As Variant
  Dim var_250 As Variant
  Dim var_8C As Recordset15
  Dim MemVar_1F920EC As Double
  Dim var_1AC As Variant
  Dim var_320 As Variant
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3C0 As Variant
  Dim var_450 As Variant
  Dim var_460 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_158 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2C0 As Variant
  Dim var_218 As Variant
  Dim var_2F0 As Variant
  Dim var_300 As Variant
  Dim var_340 As Variant
  Dim var_350 As String
  Dim var_3E0 As Variant
  Dim var_400 As Variant
  Dim var_430 As String
  Dim var_4E0 As Variant
  Dim unk_52FBDC As Connection15
  Dim var_90 As Long
  Dim var_240 As Variant
  Dim var_504 As String
  Dim var_508 As String
  Dim var_50C As String
  Dim var_510 As String
  Dim var_514 As String
  Dim var_518 As String
  Dim var_260 As Variant
  Dim var_C0 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2A0 As Variant
  Dim var_2D0 As Variant
  Dim var_AC As Double
  Dim var_B8 As Recordset15
  Dim var_548 As Double
  Dim var_524 As Fields15
  Dim Me As Recordset15
  Dim var_D8 As Integer
  loc_1C85ED8: If ((((CLng(Me.FGrid.Rows) = 1) And (arg_C <> 5)) And (arg_C <> &HD)) And (arg_C <> &HF)) Then
  loc_1C85EDB:   Exit Sub
  loc_1C85EDC: End If
  loc_1C85EDF: var_116 = arg_C
  loc_1C85EE8: If (var_116 = 0) Then
  loc_1C85EFE:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C85F06:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C85F20:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C85F26:   var_18C = Trim(var_17C)
  loc_1C85F48:   If (var_18C = vbNullString) Then
  loc_1C85F5E:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C85F66:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C85F99:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C85FA9:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C85FE6:     If (var_1BC.RecordCount > 0) Then
  loc_1C8600A:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C8601A:       Exit Sub
  loc_1C8601B:     End If
  loc_1C8601E:   Else
  loc_1C86031:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86039:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8606C:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C8607C:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C860B9:     If (var_1BC.RecordCount > 0) Then
  loc_1C860C2:       var_138 = "Bill Already Generated"
  loc_1C860DD:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C860ED:       Exit Sub
  loc_1C860EE:     End If
  loc_1C860EE:   End If
  loc_1C860F8:   Set var_88 = New fdPaymentCharge
  loc_1C8610A:   var_88.OpenMode = 1
  loc_1C86118:   Set var_104 = var_1BC(0)
  loc_1C86127:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8612F:   var_148 = CVar(CLng(1)) 'Long
  loc_1C86149:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86150:   LateMemCallSt
  loc_1C86166:   var_128 = 0
  loc_1C8616C:   var_148 = True
  loc_1C86173:   Call var_88.Txt_Validate
  loc_1C8617D:   var_128 = 1
  loc_1C86189:   var_88.Show var_128, var_138
  loc_1C8618E:   GoTo loc_1C8C571
  loc_1C86191: End If
  loc_1C86197: If (var_116 = 1) Then
  loc_1C861A4:   Set var_88 = New fdDisplayFolio
  loc_1C861AE:   Set var_104 = var_128(var_148)
  loc_1C861E6:   var_88.FDispDocid = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_1C861FE:   Set var_104 = CVar(CLng(fdDisplayFolio.FGrid.Row))(CVar(CLng(&H13)))
  loc_1C8620D:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86241:   var_88.mFolioNo = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C86263:   var_88.OpenMode = 1
  loc_1C86271:   Set var_104 = CVar(CLng(&HF))(0)
  loc_1C86280:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86288:   var_148 = CVar(CLng(1)) 'Long
  loc_1C862A2:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C862A9:   LateMemCallSt
  loc_1C862BF:   var_19C = 10
  loc_1C862D8:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C862E0:   var_148 = CVar(CLng(3)) 'Long
  loc_1C862FA:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86301:   LateMemCallSt
  loc_1C86317:   var_128 = 0
  loc_1C8631D:   var_148 = True
  loc_1C86324:   Call var_88.Txt_Validate
  loc_1C8633A:   var_88.Show 1, var_138
  loc_1C8633F:   GoTo loc_1C8C571
  loc_1C86342: End If
  loc_1C86348: If (var_116 = 2) Then
  loc_1C86355:   Set var_88 = New FrmHouGuestMsg
  loc_1C86367:   var_88.OpenMode = 1
  loc_1C86375:   Set var_104 = var_148(2)
  loc_1C86384:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8638C:   var_148 = CVar(CLng(1)) 'Long
  loc_1C863A6:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C863AD:   LateMemCallSt
  loc_1C863C3:   var_128 = 2
  loc_1C863C9:   var_148 = True
  loc_1C863D0:   Call var_88.Txt_Validate
  loc_1C863E6:   var_88.Show 1, var_138
  loc_1C863EB:   GoTo loc_1C8C571
  loc_1C863EE: End If
  loc_1C863F4: If (var_116 = 3) Then
  loc_1C86401:   Set var_88 = New fdPrintScreen
  loc_1C86413:   var_88.OpenMode = 1
  loc_1C86421:   Set var_104 = var_148(0)
  loc_1C86430:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86438:   var_148 = CVar(CLng(1)) 'Long
  loc_1C86452:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86459:   LateMemCallSt
  loc_1C8646F:   var_19C = 10
  loc_1C86488:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86490:   var_148 = CVar(CLng(3)) 'Long
  loc_1C864AA:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C864B1:   LateMemCallSt
  loc_1C864C7:   var_128 = 0
  loc_1C864CD:   var_148 = True
  loc_1C864D4:   Call var_88.Txt_Validate
  loc_1C864EA:   var_88.Show 1, var_138
  loc_1C864EF:   GoTo loc_1C8C571
  loc_1C864F2: End If
  loc_1C864F8: If (var_116 = 4) Then
  loc_1C8650E:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86516:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C86536:   var_18C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C86558:   If CBool(var_18C <> vbNullString) Then
  loc_1C86580:     For var_1E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_1E4 'Integer
  loc_1C8658A:       var_128 = CVar(CLng(var_96)) 'Long
  loc_1C86592:       var_148 = CVar(CLng(&H14)) 'Long
  loc_1C865AC:       var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C865B9:       var_16C = Me.FGrid.Row
  loc_1C865C2:       var_19C = CVar(CLng(var_16C)) 'Long
  loc_1C865D3:       Set var_1BC = Me.FGrid
  loc_1C865D9:       var_17C = var_1BC.TextMatrix)
  loc_1C86602:       If (CVar(CLng(&H14)) = CStr(var_17C)) Then
  loc_1C86609:         var_128 = CVar(CLng(var_96)) 'Long
  loc_1C86611:         var_148 = CVar(CLng(1)) 'Long
  loc_1C86632:         var_1D0 = 0
  loc_1C86656:         var_1B4 = "Select Count(*) From ROOMOCC RC where LogSite_Code='" & MemVar_1F92078 & "' and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And ROOMNO In (Select RoomNo From KOT Where RoomType='RO' And Pending='Y' AND NCKOT<> 'Y' AND VOIDYN='N' AND (DELFLAG='N' Or Delflag is NULL or Delflag='') and RoomNo='"
  loc_1C86671:         unk_52FB6A.Execute var_1B4 & CStr(Me.FGrid.TextMatrix)) & "')", var_16C, -1
  loc_1C86679:         var_15C = var_15C.Fields
  loc_1C86681:         var_1D0 = var_1BC.Item(var_1BC)
  loc_1C86689:         var_200 = var_200.Value
  loc_1C866BA:         If (var_17C > 0) Then
  loc_1C866C1:           var_128 = CVar(CLng(var_96)) 'Long
  loc_1C866C9:           var_148 = CVar(CLng(1)) 'Long
  loc_1C86700:           MsgBox(CVar("There is Some Room Service Bills are pending for Room No. " & CStr(Me.FGrid.TextMatrix))), &H40, var_17C, var_18C, var_1AC)
  loc_1C86718:           Exit Sub
  loc_1C86719:         End If
  loc_1C86719:       End If
  loc_1C8671C:     Next var_1E4 'Integer
  loc_1C86734:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8673C:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8674B:     var_16C = Me.FGrid.TextMatrix)
  loc_1C8675D:     var_1D0 = 0
  loc_1C8678E:     unk_52FB6A.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & CStr(var_16C) & "' and Bill_No<>'' and Bill_No is Not NULL", var_17C, -1
  loc_1C86796:     var_1BC = var_1BC.Fields
  loc_1C8679E:     var_1D0 = var_200.Item(var_200)
  loc_1C867A6:     var_204 = var_204.Value
  loc_1C867D7:     If (var_18C > 0) Then
  loc_1C867DA:       Exit Sub
  loc_1C867DB:     End If
  loc_1C8680A:     If (MsgBox("Do you want to split bill ?", &H24, var_16C, var_17C, var_18C) = 6) Then
  loc_1C86824:       New FdGrpdetCheckOut.SplitBill = True
  loc_1C8682B:     Else
  loc_1C86835:       Set var_88 = New FdGrpdetCheckOut
  loc_1C86843:       var_88.SplitBill = False
  loc_1C86847:     End If
  loc_1C86853:     var_88.OpenMode = 1
  loc_1C8685B:     Set var_104 = var_16C(var_18C)
  loc_1C8686A:     var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86872:     var_148 = CVar(CLng(&HF)) 'Long
  loc_1C8688C:     var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86892:     var_18C = Trim(var_17C)
  loc_1C8689E:     var_88.mFolioNo = var_18C
  loc_1C868C4:     var_88.Show 1, var_138
  loc_1C868CC:   Else
  loc_1C868DF:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C868E7:     var_148 = CVar(CLng(1)) 'Long
  loc_1C868F6:     var_16C = Me.FGrid.TextMatrix)
  loc_1C86908:     var_1D0 = 0
  loc_1C8693E:     var_1FC = "Select COunt(*) From KOT Where LogSite_Code='" & MemVar_1F92078 & "' and RoomType='RO' And RoomNO='" & CStr(var_16C) & "' and Pending='Y' AND NCKOT<>'Y' AND VOIDYN='N' AND (DELFLAG='N' or Delflag is NULL or DelFlag ='')"
  loc_1C86947:     unk_52FB6A.Execute var_1FC, var_17C, -1
  loc_1C8694F:     var_1BC = var_1BC.Fields
  loc_1C86957:     var_1D0 = var_200.Item(var_200)
  loc_1C8695F:     var_204 = var_204.Value
  loc_1C86994:     If (var_18C > 0) Then
  loc_1C869B0:       MsgBox("KOT is Pending for this Room, First Clear Bill", &H40, var_16C, var_17C, var_18C)
  loc_1C869C0:       Exit Sub
  loc_1C869C1:     End If
  loc_1C869D4:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C869DC:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C869EB:     var_16C = Me.FGrid.TextMatrix)
  loc_1C869FD:     var_1D0 = 0
  loc_1C86A2E:     unk_52FB6A.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & CStr(var_16C) & "' and IsNull(Bill_No,'')<>''", var_17C, -1
  loc_1C86A36:     var_1BC = var_1BC.Fields
  loc_1C86A3E:     var_1D0 = var_200.Item(var_200)
  loc_1C86A46:     var_204 = var_204.Value
  loc_1C86A77:     If (var_18C > 0) Then
  loc_1C86A7A:       Exit Sub
  loc_1C86A7B:     End If
  loc_1C86A85:     Set var_88 = New FdCheckOut
  loc_1C86A97:     var_88.OpenMode = 1
  loc_1C86A9F:     Set var_104 = var_16C(var_18C)
  loc_1C86AAE:     var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86AB6:     var_148 = CVar(CLng(1)) 'Long
  loc_1C86AD3:     var_1E0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86AE8:     var_88.Txt.TEXT = 0
  loc_1C86AFF:     var_128 = 0
  loc_1C86B05:     var_148 = True
  loc_1C86B0C:     Call var_88.Txt_Validate
  loc_1C86B22:     var_88.Show 1, var_138
  loc_1C86B27:   End If
  loc_1C86B27:   GoTo loc_1C8C571
  loc_1C86B2A: End If
  loc_1C86B30: If (var_116 = 5) Then
  loc_1C86B3D:   Set var_88 = New fdDisplayFolioSumm
  loc_1C86B4F:   var_88.OpenMode = 1
  loc_1C86B5D:   Set var_104 = var_148(0)
  loc_1C86B6C:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86B74:   var_148 = CVar(CLng(1)) 'Long
  loc_1C86B8E:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86B95:   LateMemCallSt
  loc_1C86BAB:   var_19C = 10
  loc_1C86BC4:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86BCC:   var_148 = CVar(CLng(3)) 'Long
  loc_1C86BE6:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86BED:   LateMemCallSt
  loc_1C86C03:   var_128 = 0
  loc_1C86C09:   var_148 = True
  loc_1C86C10:   Call var_88.Txt_Validate
  loc_1C86C26:   var_88.Show 1, var_138
  loc_1C86C2B:   GoTo loc_1C8C571
  loc_1C86C2E: End If
  loc_1C86C34: If (var_116 = 6) Then
  loc_1C86C4A:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86C52:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C86C71:   Set var_1BC = Me.FGrid
  loc_1C86C80:   var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C86C88:   var_1E0 = CVar(CLng(&H13)) 'Long
  loc_1C86C91:   Set var_200 = Me.FGrid
  loc_1C86CA9:   var_22C = 0
  loc_1C86CCA:   var_1B4 = "Select Count(*) from PayCharge where Folionodocid is not null and folionodocid<>'' and (FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C86CEC:   unk_52FB6A.Execute var_1B4 & "' Or Folionodocid='" & CStr(var_200.TextMatrix)) & "') and Bill_No<>'' and Bill_No is Not NULL", var_1AC, -1
  loc_1C86CF4:   var_204 = var_204.Fields
  loc_1C86CFC:   var_22C = var_21C.Item(var_21C)
  loc_1C86D04:   var_230 = var_230.Value
  loc_1C86D43:   If (var_240 > 0) Then
  loc_1C86D46:     Exit Sub
  loc_1C86D47:   End If
  loc_1C86D51:   Set var_88 = New fdRoomChange
  loc_1C86D63:   var_88.OpenMode = 1
  loc_1C86D71:   Set var_104 = var_240(0)
  loc_1C86D80:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86D88:   var_148 = CVar(CLng(1)) 'Long
  loc_1C86DA2:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86DA9:   LateMemCallSt
  loc_1C86DBF:   var_128 = 0
  loc_1C86DC5:   var_148 = True
  loc_1C86DCC:   Call var_88.Txt_Validate
  loc_1C86DE2:   var_88.Show 1, var_138
  loc_1C86DE7:   GoTo loc_1C8C571
  loc_1C86DEA: End If
  loc_1C86DF0: If (var_116 = 7) Then
  loc_1C86DFD:   Set var_88 = New fdAmendEntry
  loc_1C86E0F:   var_88.OpenMode = 1
  loc_1C86E1D:   Set var_104 = var_148(0)
  loc_1C86E2C:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C86E34:   var_148 = CVar(CLng(1)) 'Long
  loc_1C86E4E:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86E55:   LateMemCallSt
  loc_1C86E6B:   var_128 = 0
  loc_1C86E71:   var_148 = True
  loc_1C86E78:   Call var_88.Txt_Validate
  loc_1C86E8E:   var_88.Show 1, var_138
  loc_1C86E93:   GoTo loc_1C8C571
  loc_1C86E96: End If
  loc_1C86E9C: If (var_116 = 8) Then
  loc_1C86EB2:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86EBA:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C86ED4:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C86EDA:   var_18C = Trim(var_17C)
  loc_1C86EFC:   If (var_18C = vbNullString) Then
  loc_1C86F12:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86F1A:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C86F4D:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C86F5D:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C86F9A:     If (var_1BC.RecordCount > 0) Then
  loc_1C86FBE:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C86FCE:       Exit Sub
  loc_1C86FCF:     End If
  loc_1C86FD2:   Else
  loc_1C86FE5:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C86FED:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C87020:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C87030:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C8706D:     If (var_1BC.RecordCount > 0) Then
  loc_1C87076:       var_138 = "Bill Already Generated"
  loc_1C87091:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C870A1:       Exit Sub
  loc_1C870A2:     End If
  loc_1C870A2:   End If
  loc_1C870AC:   Set var_88 = New GuestProfile
  loc_1C870F9:   var_88.GuestFolio = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1C87113:   Set var_104 = CVar(CLng(Me.FGrid.Row))(CVar(CLng(&H13)))
  loc_1C87122:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C8712A:   var_148 = CVar(CLng(&HE)) 'Long
  loc_1C87144:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8714A:   var_18C = Trim(var_17C)
  loc_1C87156:   var_88.GuestCode = var_18C
  loc_1C87175:   var_88.OpenType = "ChangeGuestProfile"
  loc_1C87185:   var_88.OpenMode = 1
  loc_1C87199:   var_88.Show 1, var_138
  loc_1C8719E:   GoTo loc_1C8C571
  loc_1C871A1: End If
  loc_1C871A7: If (var_116 = 9) Then
  loc_1C871BD:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C871C5:   var_148 = CVar(CLng(&HF)) 'Long
  loc_1C871FD:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1C87213:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8721B:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8722A:     var_16C = Me.FGrid.TextMatrix)
  loc_1C87251:     var_1B4 = "Select  bill_no,AmtDr from paycharge where LogSite_Code='" & MemVar_1F92078 & "' and (ContraDocId is NULL or contradocid='') and  (modeset<>'S' or ModeSet is NULL) and folionoDocid='"
  loc_1C8726C:     unk_52FB6A.Execute var_1B4 & CStr(var_16C) & "'", var_17C, -1
  loc_1C87277:     Set var_94 = var_1BC
  loc_1C872AD:     If (var_94.RecordCount > 0) Then
  loc_1C872B9:       var_94.Filter = "Bill_No='' and AmtDr<>0"
  loc_1C872BE:     End If
  loc_1C872C4:     var_1C0 = var_94.RecordCount
  loc_1C872D2:     If (var_1C0 > 0) Then
  loc_1C872EE:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C872FE:       Exit Sub
  loc_1C872FF:     End If
  loc_1C87312:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8731A:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C87323:     Set var_15C = Me.FGrid
  loc_1C87329:     var_16C = var_15C.TextMatrix)
  loc_1C87365:     var_1FC = "Select distinct bill_no from paycharge where LogSite_Code='" & MemVar_1F92078 & "' and folionoDocid='" & CStr(var_16C) & "' and IsNull(Bill_NO,'')<>''"
  loc_1C8736E:     unk_52FB6A.Execute var_1FC, var_17C, -1
  loc_1C87376:     var_1BC = var_1BC.RecordCount
  loc_1C873A3:     If (var_1C0 <= 0) Then
  loc_1C873BF:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C873CF:       Exit Sub
  loc_1C873D0:     End If
  loc_1C873D3:   Else
  loc_1C873D3:     var_128 = 3
  loc_1C873E6:     Me.FGrid.Col = var_128
  loc_1C873FA:     Set var_104 = Me.Label2
  loc_1C87400:     Call 0.Method_CmdNew_UnknownEvent_90 (1, var_15C, var_1C0, var_1C0, var_16C, var_148, var_128)
  loc_1C87408:     var_1BC = var_15C.BackColor
  loc_1C87430:     If (var_1C0 <> CLng(Me.FGrid.CellBackColor)) Then
  loc_1C8744C:       MsgBox("First Print Bill ", &H40, var_16C, var_17C, var_18C)
  loc_1C8745C:       Exit Sub
  loc_1C8745D:     End If
  loc_1C8745D:   End If
  loc_1C87467:   Set var_88 = New fdPaymentCharge
  loc_1C87479:   var_88.OpenMode = 1
  loc_1C87486:   var_88.ParentForm = "Check Out"
  loc_1C87494:   Set var_104 = var_16C(0)
  loc_1C874A3:   var_128 = CVar(CLng(var_88.FGrid.Row)) 'Long
  loc_1C874AB:   var_148 = CVar(CLng(1)) 'Long
  loc_1C874C5:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C874CC:   LateMemCallSt
  loc_1C874E2:   var_128 = 1
  loc_1C874E9:   var_148 = False
  loc_1C874F1:   Call var_88.Txt_Validate
  loc_1C874FD:   var_88.Caption = "Bill Settlement"
  loc_1C87512:   Form.Show 1, var_138
  loc_1C8752A:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C87532:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C87553:   var_1D0 = 0
  loc_1C87577:   var_1B4 = "Select Count(*) from PayCharge where LogSite_Code='" & MemVar_1F92078 & "' and VType Not In ('ARRES','ADRES') and FolionoDocid='"
  loc_1C87592:   unk_52FB6A.Execute var_1B4 & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C8759A:   var_1BC = var_1BC.Fields
  loc_1C875A2:   var_1D0 = var_200.Item(var_200)
  loc_1C875AA:   var_204 = var_204.Value
  loc_1C875DF:   If (var_18C > 0) Then
  loc_1C875F5:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C875FD:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8760C:     var_16C = Me.FGrid.TextMatrix)
  loc_1C8762C:     var_1B0 = "Select Sum(AmtDr)-Sum(AmtCr) as Bal from PayCharge where LogSite_Code='" & MemVar_1F92078
  loc_1C87633:     var_1B4 = "Select Count(*) from PayCharge where LogSite_Code='" & MemVar_1F92078 & "' and VType Not In ('ARRES','ADRES') and FolionoDocid='"
  loc_1C8764E:     unk_52FB6A.Execute var_1B4 & CStr(var_16C) & "'", var_17C, -1
  loc_1C87659:     Set var_8C = var_1BC
  loc_1C8767E:   Else
  loc_1C87681:   Else
  loc_1C87684:     var_128 = "Bal"
  loc_1C87698:     var_15C = var_8C.Fields.Item(var_128)
  loc_1C876A7:     Proc_6_39_E7C810(var_16C, CVar(var_15C), var_1BC, var_16C, var_148, var_128, var_18C)
  loc_1C876BB:     var_17C = "0.00"
  loc_1C876C7:     var_18C = Format(var_16C, var_17C)
  loc_1C876E5:     If CBool(var_18C <> 0) Then
  loc_1C876FB:       var_114 = "Guest Not Checked Out"
  loc_1C87701:       MsgBox(var_114, &H40, var_16C, var_17C, var_18C)
  loc_1C87715:       Set var_104 = Me.FGrid
  loc_1C87726:       Exit Sub
  loc_1C8772A:     Else
  loc_1C8772A:     End If
  loc_1C87730:     var_138 = 0
  loc_1C8775D:     unk_52FB6A.Execute "Select NCUR from enviro where logsite_code='" & MemVar_1F92078 & "'", var_114, -1
  loc_1C87765:     var_104 = var_104.Fields
  loc_1C8776D:     var_138 = var_15C.Item(var_15C)
  loc_1C87775:     var_1BC = var_1BC.Value
  loc_1C8777F:     MemVar_1F920EC = CDate(var_16C)
  loc_1C877A2:     unk_52FB6A.BeginTrans var_1C0
  loc_1C877BA:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C877C2:     var_148 = CVar(CLng(3)) 'Long
  loc_1C877DC:     var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C877F2:     var_19C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C87836:     If (CVar(CLng(&HF)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_1C878C8:       If (CVar(CLng(&HF)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_1C878D0:         var_1B4 = Proc_6_16_EF29FC(CVar(CLng(Me.FGrid.Row)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)), CVar(CLng(Me.FGrid.Row)), CStr(Me.FGrid.TextMatrix)), CVar(CLng(&HF)))
  loc_1C878DD:         var_128 = "hh"
  loc_1C878E2:         var_16C = var_128
  loc_1C8792C:         Proc_6_7_F25D88(var_2A0, MemVar_1F920EC, 1, 1)
  loc_1C8793C:         Proc_6_7_F25D88(var_2D0, MemVar_1F920EC, var_16C)
  loc_1C8794C:         Proc_6_7_F25D88(var_330, CVar(Proc_6_15_EF2C1C(FGrid.DispID_8001, 1)))
  loc_1C8797B:         var_3C0 = Me.FGrid.TextMatrix)
  loc_1C87991:         var_450 = Me.FGrid.Row
  loc_1C879B1:         var_4A0 = Me.FGrid.TextMatrix)
  loc_1C879D7:         var_18C = (Format(CVar(var_1B4), var_16C) + ":")
  loc_1C879DE:         var_270 = (Me.FGrid.TextMatrix) + Format(CVar(Proc_6_16_EF29FC(1, 1, var_128, MemVar_1F920EC)), "nn"))
  loc_1C87A0B:         var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C87A42:         var_400 = var_2F0 & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" & var_330 & ",U_AE='E' where Docid='" & CVar(CStr(var_3C0)) & "' and LogSite_Code='" 
  loc_1C87A77:         unk_52FB6A.Execute CStr(var_400 & CVar(MemVar_1F92078) & "' and RoomNo='" & CVar(CStr(var_4A0)) & "' And (IsNull(Type,'')='')"), var_500, -1
  loc_1C87B01:         var_17C = Format(CVar(Proc_6_16_EF29FC(var_204, var_4A0, CVar(CLng(1)), CVar(CLng(var_450)))), "hh")
  loc_1C87B2C:         var_260 = Format(CVar(Proc_6_16_EF29FC(1, 1, var_3C0)), "nn")
  loc_1C87B3C:         Proc_6_7_F25D88(var_2A0, MemVar_1F920EC, 1, 1)
  loc_1C87B4C:         Proc_6_7_F25D88(var_2D0, MemVar_1F920EC, CVar(CLng(&H13)))
  loc_1C87B5C:         Proc_6_7_F25D88(var_330, CVar(Proc_6_15_EF2C1C(CVar(CLng(Me.FGrid.Row)))))
  loc_1C87B74:         var_380 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C87B7C:         var_3A0 = CVar(CLng(&H13)) 'Long
  loc_1C87BB1:         var_18C = (var_17C + ":")
  loc_1C87BB8:         var_270 = (Me.FGrid.TextMatrix) + var_260)
  loc_1C87BE5:         var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C87C03:         var_350 = ",U_AE='E' WHERE DocId In (SELECT G.DocId FROM GuestFolio G LEFT JOIN PayCharge P On G.DocId=P.FolioNoDocId WHERE G.MFolioNoDocid='"
  loc_1C87C1C:         var_400 = var_2F0 & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" & var_330 & var_350 & CVar(CStr(Me.FGrid.TextMatrix))) & "' and G.LogSite_Code='" 
  loc_1C87C2A:         var_430 = "' GROUP BY G.DocId HAVING Round(IsNull(Sum(P.AmtDr),0)-IsNull(Sum(P.AmtCr),0),2)=0) And (IsNull(Type,'')='')"
  loc_1C87C3D:         unk_52FB6A.Execute CStr(var_400 & CVar(MemVar_1F92078) & "' and RoomNo='"), var_450, -1
  loc_1C87C9D:         var_114 = Me.FGrid.Row
  loc_1C87CA6:         var_128 = CVar(CLng(var_114)) 'Long
  loc_1C87CAE:         var_148 = CVar(CLng(1)) 'Long
  loc_1C87CB7:         Set var_15C = Me.FGrid
  loc_1C87CBD:         var_16C = var_15C.TextMatrix)
  loc_1C87CF1:         unk_52FB6A.Execute "Update RoomMast set ROOMSTAT='D' WHERE CODE='" & CStr(var_16C) & "' AND TYPE='RO'", var_17C, -1
  loc_1C87D19:         If (MemVar_1F921D0 = "Y") Then
  loc_1C87D22:           var_138 = 0
  loc_1C87D41:           unk_52FBDC.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C87D49:           var_104 = var_104.Fields
  loc_1C87D51:           var_138 = var_15C.Item(var_15C)
  loc_1C87D59:           var_1BC = var_1BC.Value
  loc_1C87D63:           var_90 = CLng(var_16C)
  loc_1C87D80:           var_114 = Me.FGrid.Row
  loc_1C87D89:           var_128 = CVar(CLng(var_114)) 'Long
  loc_1C87D91:           var_148 = CVar(CLng(1)) 'Long
  loc_1C87DB0:           Set var_1BC = Me.FGrid
  loc_1C87DBF:           var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C87DC7:           var_1E0 = CVar(CLng(3)) 'Long
  loc_1C87DD6:           var_18C = Me.FGrid.TextMatrix)
  loc_1C87DE6:           Set var_204 = Me.FGrid
  loc_1C87DF5:           var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C87DFD:           var_250 = CVar(CLng(6)) 'Long
  loc_1C87E0C:           var_240 = Me.FGrid.TextMatrix)
  loc_1C87E43:           var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_90) & ",'CHKOT','" & CStr(Me.FGrid.TextMatrix))
  loc_1C87E77:           unk_52FBDC.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C87EB9:         End If
  loc_1C87EC4:         Proc_6_7_F25D88(var_114, MemVar_1F920EC, var_230, var_240, var_250, var_218, var_18C)
  loc_1C87EDC:         var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C87EE4:         var_1D0 = CVar(CLng(&H13)) 'Long
  loc_1C87EF3:         var_1AC = Me.FGrid.TextMatrix)
  loc_1C87F31:         var_270 = "Update Paycharge set SettleDate=" & var_114 & " where FolioNoDocid='" & CVar(CStr(var_1AC)) & "' and LogSite_Code='" 
  loc_1C87F52:         unk_52FB6A.Execute CStr(var_270 & CVar(MemVar_1F92078) & "'"), var_2A0, -1
  loc_1C87F7C:       End If
  loc_1C87F97:       var_148 = CVar(CLng(&H13)) 'Long
  loc_1C87FA6:       var_16C = Me.FGrid.TextMatrix)
  loc_1C87FC5:       Proc_96_84_FFBAD4(CStr(var_16C), 0, var_16C, var_148, CVar(CLng(Me.FGrid.Row)), var_1BC, var_1AC, var_1D0)
  loc_1C87FE2:     Else
  loc_1C87FF4:       var_128 = "hh"
  loc_1C88008:       var_17C = Format(CVar(Proc_6_16_EF29FC(var_158, var_1E0, var_19C, var_128)), var_128)
  loc_1C88043:       Proc_6_7_F25D88(var_2A0, MemVar_1F920EC, 1, 1)
  loc_1C88053:       Proc_6_7_F25D88(var_2D0, MemVar_1F920EC, var_128)
  loc_1C88063:       Proc_6_7_F25D88(var_330, CVar(Proc_6_15_EF2C1C(var_90)))
  loc_1C8807B:       var_380 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88083:       var_3A0 = CVar(CLng(&H13)) 'Long
  loc_1C880A2:       Set var_1BC = Me.FGrid
  loc_1C880B1:       var_460 = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C880B9:       var_480 = CVar(CLng(1)) 'Long
  loc_1C880EE:       var_18C = (var_17C + ":")
  loc_1C880F5:       var_270 = (Me.FGrid.Row + Format(CVar(Proc_6_16_EF29FC(1, 1, "nn")), "nn"))
  loc_1C88122:       var_2F0 = "Update RoomOcc set chkouttime='" & var_270 & "',ChkOutDate=" & var_2A0 & ",UserchkoutDate=" & var_2D0 & ",ChkOutUser='" 
  loc_1C88150:       var_3E0 = var_2F0 & CVar(MemVar_1F920C8) & "',Type='O',U_EntDt=" & var_330 & ",U_AE='E' where Docid='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1C88180:       var_4E0 = var_3E0 & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "' and RoomNo='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' And (IsNull(Type,'')='')" 
  loc_1C8818E:       unk_52FB6A.Execute CStr(var_4E0), var_500, -1
  loc_1C881FC:       var_114 = Me.FGrid.Row
  loc_1C88205:       var_128 = CVar(CLng(var_114)) 'Long
  loc_1C8821C:       var_16C = Me.FGrid.TextMatrix)
  loc_1C88255:       var_1FC = "Update RoomMast set ROOMSTAT='D' WHERE logsite_code='" & MemVar_1F92078 & "' and CODE='" & CStr(var_16C) & "' AND TYPE='RO'"
  loc_1C8825E:       unk_52FB6A.Execute var_1FC, var_17C, -1
  loc_1C8828D:       Proc_6_7_F25D88(var_114, MemVar_1F920EC, var_1BC, var_16C, CVar(CLng(1)), MemVar_1F920EC, var_204)
  loc_1C882A5:       var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C882AD:       var_1D0 = CVar(CLng(&H13)) 'Long
  loc_1C882B6:       Set var_15C = Me.FGrid
  loc_1C882DD:       var_16C = "Update Paycharge set SettleDate=" & var_114 
  loc_1C882F1:       var_260 = var_16C & " where FolioNoDocid='" & CVar(CStr(var_15C.TextMatrix))) 
  loc_1C8831B:       unk_52FB6A.Execute CStr(var_260 & "' and LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_2A0, -1
  loc_1C8834D:       If (MemVar_1F921D0 = "Y") Then
  loc_1C88356:         var_138 = 0
  loc_1C88375:         unk_52FBDC.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C8837D:         var_104 = var_104.Fields
  loc_1C88385:         var_138 = var_15C.Item(var_15C)
  loc_1C8838D:         var_1BC = var_1BC.Value
  loc_1C88397:         var_90 = CLng(var_16C)
  loc_1C883B4:         var_114 = Me.FGrid.Row
  loc_1C883BD:         var_128 = CVar(CLng(var_114)) 'Long
  loc_1C883C5:         var_148 = CVar(CLng(1)) 'Long
  loc_1C883E4:         Set var_1BC = Me.FGrid
  loc_1C883F3:         var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C883FB:         var_1E0 = CVar(CLng(3)) 'Long
  loc_1C8840A:         var_18C = Me.FGrid.TextMatrix)
  loc_1C8841A:         Set var_204 = Me.FGrid
  loc_1C88429:         var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C88431:         var_250 = CVar(CLng(6)) 'Long
  loc_1C88440:         var_240 = Me.FGrid.TextMatrix)
  loc_1C88477:         var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_90) & ",'CHKOT','" & CStr(Me.FGrid.TextMatrix))
  loc_1C884AB:         unk_52FBDC.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C884ED:       End If
  loc_1C884F8:       Proc_6_7_F25D88(var_114, MemVar_1F920EC, var_230, var_240, var_250, var_218, var_18C)
  loc_1C88510:       var_158 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88527:       var_1AC = Me.FGrid.TextMatrix)
  loc_1C8856F:       var_280 = "Update Paycharge set SettleDate=" & var_114 & " where FolioNoDocid='" & CVar(CStr(var_1AC)) & "' and LogSite_Code='" & CVar(MemVar_1F92078) 
  loc_1C88586:       unk_52FB6A.Execute CStr(var_280 & "'"), var_2A0, -1
  loc_1C885B4:       Set var_104 = Me.FGrid
  loc_1C885BA:       var_114 = var_104.Row
  loc_1C885CB:       var_148 = CVar(CLng(&H13)) 'Long
  loc_1C885F9:       Proc_96_84_FFBAD4(CStr(Me.FGrid.TextMatrix)), 0, Me.FGrid.TextMatrix), var_148, CVar(CLng(var_114)), var_1BC, var_1AC, CVar(CLng(&H13)))
  loc_1C88613:     End If
  loc_1C88619:     unk_52FB6A.CommitTrans
  loc_1C88639:     var_1B4 = "Select TxtMsg,MobileNo from EmailSMSForward WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And Type='Check Out' And Len(MobileNo)>=10 And Len(TxtMsg)>0"
  loc_1C88642:     unk_52FB6A.Execute var_1B4, var_114, -1
  loc_1C8864D:     Set var_C0 = var_104
  loc_1C88671:     If (var_C0.RecordCount > 0) Then
  loc_1C88683:       var_104 = var_C0.Fields
  loc_1C886AB:       var_CC = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_104.Item("MobileNo")), var_104, var_158, var_1E0, var_19C))))
  loc_1C886C9:       var_104 = var_C0.Fields
  loc_1C886D9:       var_114 = CVar(var_104.Item("TxtMsg")) 'Address
  loc_1C886F1:       var_C8 = CStr(Trim(CVar(Proc_6_38_E68A98(var_114, CVar(Proc_6_38_E68A98(var_114, var_16C, var_148)), var_148))))
  loc_1C88700:     End If
  loc_1C88724:     unk_52FB6A.Execute "Select CheckOutMsg,SendingMessageText from SMSEnviro WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_114, -1
  loc_1C8872F:     Set var_C0 = var_104
  loc_1C88753:     If (var_C0.RecordCount > 0) Then
  loc_1C88759:       var_128 = "SendingMessageText"
  loc_1C88765:       var_104 = var_C0.Fields
  loc_1C8878D:       var_D4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_104.Item(var_128)), var_104, var_128))))
  loc_1C887D3:       var_C4 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_C0.Fields.Item("CheckOutMsg")), var_90))))
  loc_1C887E2:     End If
  loc_1C887F5:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C887FD:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C88842:     var_18C = Me.FGrid.TextMatrix)
  loc_1C88862:     var_1B0 = "Select FB.Bill_No,FB.SettAmt,FB.FolionoDocId,R.RoomNo,R.GuestProf,GP.Name,GP.MobileNo,R.RoomRate,R.ChkOutDate,R.ChkOutTime,Q.DebitAmt,Q.CreditAmt,GP.Add1,GP.Add2,City.CityName From ((FomBillDetails FB Inner Join RoomOcc R On R.DocId=FB.FolioNoDocId And R.Type='O' And FB.Status='SETTLE') " & "Inner Join (select FolionoDocid,SUM(AmtDR) DebitAmt,SUM(AmtCr) CreditAmt from PayCharge where FolioNoDocid ='"
  loc_1C88882:     var_208 = var_1B0 & CStr(Me.FGrid.TextMatrix)) & "' And Not (ModeSet='S' And PayCode<>'" & MemVar_1F92078 & "ROFF') Group By FolioNoDocid)Q On FB.FolioNoDocid=Q.FolioNoDocid Inner Join GuestProf GP On R.GuestProf=GP.Code And R.Type='O') Left Join City On City.CityCode=GP.City Where FB.FolioNoDocid='"
  loc_1C888AB:     unk_52FB6A.Execute var_208 & CStr(var_18C) & "' And FB.LogSite_Code='" & MemVar_1F92078 & "'", var_1AC, -1
  loc_1C888B6:     Set var_A4 = var_204
  loc_1C88900:     If (var_A4.RecordCount > 0) Then
  loc_1C88930:       If ((var_D4 <> "Auto") And (Len(CStr(Trim(var_C4))) <> 0)) Then
  loc_1C88936:         var_128 = "Add1"
  loc_1C8895B:         var_16C = CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item(var_128)), var_204, var_18C, CVar(CLng(&H13)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_1C88969:         var_148 = "Add2"
  loc_1C889FA:         var_2C0 = Trim(var_16C) & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item(var_148)), var_16C, var_148))) & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("CityName")), var_128))) 
  loc_1C88A0D:         var_D0 = Replace(var_D0, "<Address>", CStr(var_2C0), 1, -1, 0)
  loc_1C88A64:         var_16C = "dd/MMM/yyyy"
  loc_1C88AC5:         var_260 = Format(CVar(var_A4.Fields.Item("ChkOutDate")), var_16C) & " " & CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkOutTime")), 1)) 
  loc_1C88AD8:         var_D0 = Replace(var_D0, "<Check Out Date>", CStr(var_260), 1, -1, 0)
  loc_1C88B20:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("DebitAmt")))
  loc_1C88B66:         var_D0 = Replace(var_D0, "<Debit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C88BA0:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("CreditAmt")), 1)
  loc_1C88BE6:         var_D0 = Replace(var_D0, "<Credit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C88C20:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("SettAmt")), 1, 1)
  loc_1C88C66:         var_D0 = Replace(var_D0, "<Bill Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C88CC5:         var_D0 = Replace(var_D0, "<Bill Number>", Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_1C88D29:         var_D0 = Replace(var_D0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_1C88D63:         var_16C = CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")), 1)) 'String
  loc_1C88D85:         var_200 = var_A4.Fields.Item("Name")
  loc_1C88E30:         var_2C0 = (InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name"))))), " ", 0) - 1)
  loc_1C88E34:         var_320 = var_2C0 'Variant
  loc_1C88E65:         var_340 = IIf((InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_200)))), " ", 0) <> 0), var_320, Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")))))))
  loc_1C88E9B:         var_D0 = Replace(var_D0, "<Guest First Name>", CStr(Left(Trim(var_16C), CLng(var_340))), 1, -1, 0)
  loc_1C88F20:         var_D0 = Replace(var_D0, "<Room Number>", Proc_6_38_E68A98(CVar(var_A4.Fields.Item("RoomNo"))), 1, -1, 0)
  loc_1C88F56:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("RoomRate")))
  loc_1C88F6A:         var_17C = "0.00"
  loc_1C88F76:         var_18C = Format(var_16C, var_17C)
  loc_1C88F9C:         var_D0 = Replace(var_D0, "<Room Tariff>", CStr(var_18C), 1, -1, 0)
  loc_1C88FC8:         If (InStr(1, CStr(Trim(var_C4)), "<Room Discount>", 0) > 0) Then
  loc_1C88FDE:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C88FE6:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89007:           var_1D0 = 0
  loc_1C89024:           var_1B0 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F92078
  loc_1C89046:           unk_52FB6A.Execute CStr(var_18C) & "DISC') And FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C8904E:           var_1BC = var_1BC.Fields
  loc_1C89056:           var_1D0 = var_200.Item(var_200)
  loc_1C8905E:           var_204 = var_204.Value
  loc_1C89067:           var_AC = CSng(var_18C)
  loc_1C890B9:           var_17C = vbNullString
  loc_1C890F6:           var_D0 = Replace(var_D0, "<Room Discount>", CStr(IIf((var_AC <> CDbl(0)), Format(var_AC, "0.00"), var_17C)), 1, -1, 0)
  loc_1C89109:         End If
  loc_1C89121:         If (InStr(1, CStr(Trim(var_C4)), "<Payment Mode>", 0) > 0) Then
  loc_1C89137:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8913F:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8914E:           var_16C = Me.FGrid.TextMatrix)
  loc_1C89172:           var_1B4 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='" & CStr(var_16C)
  loc_1C89182:           unk_52FB6A.Execute var_1B4 & "' And AmtCr>0", var_17C, -1
  loc_1C8918D:           Set var_B8 = var_1BC
  loc_1C891AE:           var_BC = vbNullString
  loc_1C891B1:           ' Referenced from:   1C89211
  loc_1C891C0:           If Not(var_B8.EOF) Then
  loc_1C891C9:             var_128 = "PayType"
  loc_1C891F9:             var_BC = 1 & Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_128)), var_BC, var_1BC, var_16C, var_148, var_128, 1) & ", "
  loc_1C8920C:             var_B8.MoveNext
  loc_1C89211:             GoTo loc_1C891B1
  loc_1C89214:           End If
  loc_1C89219:           Set var_B8 = Nothing
  loc_1C89247:           var_1AC = Trim(var_BC)
  loc_1C8925D:           var_260 = (Len(var_1AC) - 1)
  loc_1C89275:           var_18C = (Len(Trim(var_BC)) > 0)
  loc_1C892CF:           var_D0 = Replace(var_D0, "<Payment Mode>", CStr(Left(Trim(var_BC), CLng(IIf(var_18C, InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_200)))), " ", 0), 0)))), 1, -1, 0)
  loc_1C892D2:         End If
  loc_1C892D2:       End If
  loc_1C89324:       var_240 = (Len(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("MobileNo")), var_AC, var_18C)))) >= 10) And (Len(CStr(Trim(var_C4))) <> 0)
  loc_1C89338:       If CBool(var_240) Then
  loc_1C89394:         Proc_6_39_E7C810(var_1AC, CVar(var_A4.Fields.Item("Bill_no")))
  loc_1C893A5:         var_548 = Val(CStr(var_1AC))
  loc_1C893AB:         var_148 = "GuestProf"
  loc_1C8943C:         var_2D0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")))))
  loc_1C8946F:         var_300 = Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("RoomNo")))))
  loc_1C8949A:         Proc_6_39_E7C810(var_320, CVar(var_A4.Fields.Item("SettAmt")))
  loc_1C894A2:         var_50C = "Check Out"
  loc_1C894FC:         Proc_233_5_11B7494(CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("FolioNoDocid")), var_16C)))), "CHKOT", CLng(var_548), 0, CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item(var_148)), var_548)))), CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("MobileNo")), var_148)))), vbNullString)
  loc_1C89550:       End If
  loc_1C89564:       var_D0 = CStr(Trim(var_C8))
  loc_1C8957D:       If ((var_D4 <> "Auto") And (Len(var_D0) <> 0)) Then
  loc_1C89637:         var_270 = Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Add1")), var_D0, MemVar_1F920C8, CStr(var_2D0)))) & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Add2")), CStr(var_300), CSng(var_320)))) 
  loc_1C8965A:         var_D0 = Replace(var_D0, "<Address>", CStr(var_270 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("CityName")), var_50C)))), 1, -1, 0)
  loc_1C896B1:         var_16C = "dd/MMM/yyyy"
  loc_1C89712:         var_260 = Format(CVar(var_A4.Fields.Item("ChkOutDate")), var_16C) & " " & CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("ChkOutTime")), 1)) 
  loc_1C89725:         var_D0 = Replace(var_D0, "<Check Out Date>", CStr(var_260), 1, -1, 0)
  loc_1C8976D:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("DebitAmt")))
  loc_1C897B3:         var_D0 = Replace(var_D0, "<Debit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C897ED:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("CreditAmt")), 1)
  loc_1C89833:         var_D0 = Replace(var_D0, "<Credit Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C8986D:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("SettAmt")), 1, 1)
  loc_1C898B3:         var_D0 = Replace(var_D0, "<Bill Amount>", CStr(Format(var_16C, "0.00")), 1, -1, 0)
  loc_1C89912:         var_D0 = Replace(var_D0, "<Bill Number>", Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Bill_no")), 1, 1), 1, -1, 0)
  loc_1C89976:         var_D0 = Replace(var_D0, "<Guest Full Name>", CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")), 1)))), 1, -1, 0)
  loc_1C899B0:         var_16C = CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")), 1)) 'String
  loc_1C899D2:         var_200 = var_A4.Fields.Item("Name")
  loc_1C89A4F:         var_2F0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name")))))
  loc_1C89A7D:         var_2C0 = (InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("Name"))))), " ", 0) - 1)
  loc_1C89AB2:         var_340 = IIf((InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_200)))), " ", 0) <> 0), var_270 & ", " & Trim(CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("CityName")), var_50C))), Len(var_2F0))
  loc_1C89AE8:         var_D0 = Replace(var_D0, "<Guest First Name>", CStr(Left(Trim(var_16C), CLng(var_340))), 1, -1, 0)
  loc_1C89B6D:         var_D0 = Replace(var_D0, "<Room Number>", Proc_6_38_E68A98(CVar(var_A4.Fields.Item("RoomNo"))), 1, -1, 0)
  loc_1C89BA3:         Proc_6_39_E7C810(var_16C, CVar(var_A4.Fields.Item("RoomRate")))
  loc_1C89BB7:         var_17C = "0.00"
  loc_1C89BC3:         var_18C = Format(var_16C, var_17C)
  loc_1C89BE9:         var_D0 = Replace(var_D0, "<Room Tariff>", CStr(var_18C), 1, -1, 0)
  loc_1C89C15:         If (InStr(1, var_D0, "<Room Discount>", 0) > 0) Then
  loc_1C89C2B:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89C33:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89C54:           var_1D0 = 0
  loc_1C89C71:           var_1B0 = "Select IsNull(Sum(AmtCr)-Sum(AmtDr),0) from Paycharge Where PayCode In ('" & MemVar_1F92078
  loc_1C89C93:           unk_52FB6A.Execute CStr(var_18C) & "DISC') And FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "'", var_17C, -1
  loc_1C89C9B:           var_1BC = var_1BC.Fields
  loc_1C89CA3:           var_1D0 = var_200.Item(var_200)
  loc_1C89CAB:           var_204 = var_204.Value
  loc_1C89CB4:           var_AC = CSng(var_18C)
  loc_1C89D06:           var_17C = vbNullString
  loc_1C89D43:           var_D0 = Replace(var_D0, "<Room Discount>", CStr(IIf((var_AC <> CDbl(0)), Format(var_AC, "0.00"), var_17C)), 1, -1, 0)
  loc_1C89D56:         End If
  loc_1C89D6E:         If (InStr(1, var_D0, "<Payment Mode>", 0) > 0) Then
  loc_1C89D84:           var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C89D8C:           var_148 = CVar(CLng(&H13)) 'Long
  loc_1C89D9B:           var_16C = Me.FGrid.TextMatrix)
  loc_1C89DBF:           var_1B4 = "SELECT ST.DOCID,ST.VNO,ST.VDATE,ST.VPREFIX,ST.BillAmount,ST.SNo, ST.GuestProf,GP.Name AS GPName, ST.EmpCode, E.Name AS EmpName, ST.Comments, ST.PayCode,ST.BatchNo ,P.Name AS PayName,ST.PayType, ST.AmtCr, ST.TipAmt, ST.RoomCat, ST.RoomType, ST.RoomNo, R.Name AS RoomName, ST.CardNo, ST.CardHolder, ST.ChqNo, ST.ChqDate, ST.ExpDate,CC.Name as CompName,CompCode FROM ((((PAYCHARGE AS ST LEFT JOIN GuestProf AS GP ON ST.GuestProf = GP.Code) LEFT JOIN Employee AS E ON ST.EmpCode = E.Code) LEFT JOIN RevMast AS P ON ST.PayCode = P.Code) LEFT JOIN RoomMast AS R ON (ST.RoomCat = R.RoomCat) AND (ST.RoomType = R.Type) AND (ST.RoomNo = R.Code))Left join SubGroup CC on CC.SubCode=ST.CompCode where ModeSet='S' and ST.FolionoDocid='" & CStr(var_16C)
  loc_1C89DCF:           unk_52FB6A.Execute var_1B4 & "' And AmtCr>0", var_17C, -1
  loc_1C89DDA:           Set var_B8 = var_1BC
  loc_1C89DFB:           var_BC = vbNullString
  loc_1C89DFE:           ' Referenced from:   1C89E5E
  loc_1C89E0D:           If Not(var_B8.EOF) Then
  loc_1C89E16:             var_128 = "PayType"
  loc_1C89E46:             var_BC = 1 & Proc_6_38_E68A98(CVar(var_B8.Fields.Item(var_128)), var_BC, var_1BC, var_16C, var_148, var_128, 1) & ", "
  loc_1C89E59:             var_B8.MoveNext
  loc_1C89E5E:             GoTo loc_1C89DFE
  loc_1C89E61:           End If
  loc_1C89E66:           Set var_B8 = Nothing
  loc_1C89E94:           var_1AC = Trim(var_BC)
  loc_1C89EAA:           var_260 = (Len(var_1AC) - 1)
  loc_1C89EC2:           var_18C = (Len(Trim(var_BC)) > 0)
  loc_1C89F1C:           var_D0 = Replace(var_D0, "<Payment Mode>", CStr(Left(Trim(var_BC), CLng(IIf(var_18C, InStr(1, Trim(CVar(Proc_6_38_E68A98(CVar(var_200)))), " ", 0), 0)))), 1, -1, 0)
  loc_1C89F1F:         End If
  loc_1C89F1F:       End If
  loc_1C89F34:       If ((Len(var_CC) >= &HA) And (Len(var_D0) <> 0)) Then
  loc_1C89F5F:         var_16C = CVar(Proc_6_38_E68A98(CVar(var_A4.Fields.Item("FolioNoDocid")), var_AC, var_18C)) 'String
  loc_1C89F65:         var_17C = Trim(var_16C)
  loc_1C89F79:         var_1BC = var_A4.Fields
  loc_1C89F89:         var_18C = CVar(var_1BC.Item("Bill_no")) 'Address
  loc_1C89F90:         Proc_6_39_E7C810(var_1AC, var_18C, var_16C)
  loc_1C89FA1:         var_548 = Val(CStr(var_1AC))
  loc_1C89FA7:         var_148 = "GuestProf"
  loc_1C89FB3:         var_204 = var_A4.Fields
  loc_1C89FC3:         var_240 = CVar(var_204.Item(var_148)) 'Address
  loc_1C89FCC:         var_260 = CVar(Proc_6_38_E68A98(var_240, var_548)) 'String
  loc_1C89FE6:         var_230 = var_A4.Fields
  loc_1C89FEE:         var_51C = var_230.Item("Name")
  loc_1C8A005:         var_2A0 = Trim(CVar(Proc_6_38_E68A98(CVar(var_51C), var_148)))
  loc_1C8A019:         var_524 = var_A4.Fields
  loc_1C8A021:         var_528 = var_524.Item("RoomNo")
  loc_1C8A032:         var_2C0 = CVar(Proc_6_38_E68A98(CVar(var_528))) 'String
  loc_1C8A038:         var_2D0 = Trim(var_2C0)
  loc_1C8A063:         Proc_6_39_E7C810(var_2F0, CVar(var_A4.Fields.Item("SettAmt")))
  loc_1C8A06B:         var_508 = "Check Out"
  loc_1C8A0C0:         Proc_233_5_11B7494(CStr(var_17C), "CHKOT", CLng(var_548), 0, CStr(Trim(var_260)), var_CC, vbNullString)
  loc_1C8A10A:       End If
  loc_1C8A10A:     End If
  loc_1C8A10F:     Set var_C0 = Nothing
  loc_1C8A117:     Set var_A4 = Nothing
  loc_1C8A11A:   End If
  loc_1C8A11E:   Set var_104 = Me.FGrid
  loc_1C8A138:   Call 0.Method_arg_2AC (1, FGrid.DispID_8001, var_D0, MemVar_1F920C8, CStr(var_2A0))
  loc_1C8A13D:   GoTo loc_1C8C571
  loc_1C8A140: End If
  loc_1C8A146: If (var_116 = &HA) Then
  loc_1C8A15C:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A164:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8A173:   var_16C = Me.FGrid.TextMatrix)
  loc_1C8A197:   var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT,FolioNoDocid from Paycharge where bill_no<>'' and Bill_No is not null and FolioNoDocid='" & CStr(var_16C)
  loc_1C8A1A7:   unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C8A1B2:   Set var_94 = var_1BC
  loc_1C8A1D6:   var_1C0 = var_94.RecordCount
  loc_1C8A1E4:   If (var_1C0 > 0) Then
  loc_1C8A216:     If (MsgBox("Are you sure to Cancel bill?", 4, var_16C, var_17C, var_18C) = 6) Then
  loc_1C8A22A:       var_17C = vbNullString
  loc_1C8A235:       var_16C = "Bill Cancel"
  loc_1C8A24B:       var_A0 = InputBox("Reason For Cancellation", var_16C, var_17C, var_18C, var_1AC, var_240, var_260)
  loc_1C8A27D:       If (Trim(var_A0) = vbNullString) Then
  loc_1C8A29F:         MsgBox(CVar("Blank Reason Is Not Allowed" & vbCrLf & "Bill Cancellation Aborted."), &H40, var_16C, var_17C, var_18C)
  loc_1C8A2B2:         Exit Sub
  loc_1C8A2B3:       End If
  loc_1C8A2F8:       var_17C = "Delete From paycharge where folionoDocid='" & var_94.Fields.Item("FolioNoDocid").Value & "' and modeset='S' and paycode='" 
  loc_1C8A319:       unk_52FB6A.Execute CStr(var_17C & CVar(MemVar_1F92078) & "ROFF'"), var_240, -1
  loc_1C8A374:       var_518 = 0
  loc_1C8A387:       var_514 = 0
  loc_1C8A392:       var_510 = 0
  loc_1C8A3A5:       var_50C = 0
  loc_1C8A3B0:       var_508 = 0
  loc_1C8A3C3:       var_504 = 0
  loc_1C8A40D:       Proc_154_5_10E33A4(MemVar_1F92044, "PayCharge", "FolioNo", 1, CStr(Val(CStr(var_94.Fields.Item("FolioNo").Value))), 0, 0, 0)
  loc_1C8A437:       ' Referenced from: 1C8A5BC
  loc_1C8A43D:       var_51E = var_94.EOF
  loc_1C8A446:       If Not(var_51E) Then
  loc_1C8A46E:         var_16C = "Update FOMBillDetails set SettMode='" & Trim(var_A0) 
  loc_1C8A493:         var_240 = CVar(Proc_6_15_EF2C1C(var_16C & "',U_Name='" & CVar(MemVar_1F920C8) & "',Status='CANCEL',U_AE='E',U_EntDt=", var_2C0, -1, var_1BC, var_504, 0)) 'String
  loc_1C8A499:         Proc_6_7_F25D88(var_260, var_240, var_508, var_50C)
  loc_1C8A4A1:         var_270 = 0 & var_260 
  loc_1C8A4EF:         unk_52FB6A.Execute CStr(var_270 & " where Bill_NO='" & var_94.Fields.Item("Bill_no").Value & "'"), var_510, var_514
  loc_1C8A534:         var_114 = CVar(Proc_6_15_EF2C1C("Update PayCharge set Bill_No='',U_EntDt=", var_270, -1)) 'String
  loc_1C8A53A:         Proc_6_7_F25D88(var_16C, Trim(var_A0))
  loc_1C8A542:         var_17C = var_1BC & var_16C 
  loc_1C8A54B:         var_18C = var_17C & " where folionoDocId='" 
  loc_1C8A582:         var_260 = var_18C & var_94.Fields.Item("FolioNoDocid").Value & "'" 
  loc_1C8A590:         unk_52FB6A.Execute CStr(var_260), 0, 
  loc_1C8A5B7:         var_94.MoveNext
  loc_1C8A5BC:         GoTo loc_1C8A437
  loc_1C8A5BF:       End If
  loc_1C8A5BF:       Call Form_Paint()
  loc_1C8A5C4:     End If
  loc_1C8A5C7:   Else
  loc_1C8A5DA:     var_114 = "Bill is not Generated"
  loc_1C8A5E0:     MsgBox(var_114, 0, var_16C, var_17C, var_18C)
  loc_1C8A5F0:   End If
  loc_1C8A5F0:   GoTo loc_1C8C571
  loc_1C8A5F3: End If
  loc_1C8A5F9: If (var_116 = &HB) Then
  loc_1C8A608:   Me.Frame2.Visible = True
  loc_1C8A61F:   Me.Frame2.Top = CDbl(1000)
  loc_1C8A636:   Me.Frame2.Left = CDbl(2000)
  loc_1C8A644:   Set var_104 = Me.Check1
  loc_1C8A64A:   var_104.Value = 0
  loc_1C8A668:   unk_52FB6A.Execute "Select SaleRate from RevMast where ShortName='EXTB' ", var_114, -1
  loc_1C8A679:   Set global_68 = var_104
  loc_1C8A6C5:   var_17C = Format(CVar(Me.Fields.Item("SaleRate")), "0.00")
  loc_1C8A6DB:   Me.txtEXTBChrg.Text = CStr(var_17C)
  loc_1C8A706:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A70E:   var_148 = CVar(CLng(1)) 'Long
  loc_1C8A735:   Me.txtRoomNo.Text = CStr(Me.FGrid.TextMatrix))
  loc_1C8A760:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A768:   var_148 = CVar(CLng(3)) 'Long
  loc_1C8A789:   Set var_1BC = Me.txtFoliono
  loc_1C8A78F:   var_1BC.Text = CStr(Me.FGrid.TextMatrix))
  loc_1C8A7BA:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A7C2:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8A805:   unk_52FB6A.Execute "Select MAX(sno) AS SNO from RoomOcc where Docid='" & CStr(Me.FGrid.TextMatrix)) & "' ", var_17C, -1
  loc_1C8A816:   Set global_76 = var_1BC
  loc_1C8A84A:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8A861:   var_16C = Me.FGrid.TextMatrix)
  loc_1C8A882:   var_1BC = Me.Fields
  loc_1C8A8B6:   var_18C = CVar("Select Extrabed from RoomOcc where Docid='" & CStr(var_16C) & "' and Sno='") 'String
  loc_1C8A8D3:   unk_52FB6A.Execute CStr(var_18C & var_1BC.Item("SNo").Value & "' "), var_260, -1
  loc_1C8A8E4:   Set global_72 = var_204
  loc_1C8A950:   If (Me.Fields.Item("ExtraBed").Value > 0) Then
  loc_1C8A95F:     Me.Label5.Visible = True
  loc_1C8A96F:     var_128 = "ExtraBed"
  loc_1C8A986:     var_15C = Me.Fields.Item(var_128)
  loc_1C8A995:     Proc_6_39_E7C810(var_16C, CVar(var_15C), "Extra Bed charges All Ready Posted For Rs. ", var_204, var_16C, CVar(CLng(&H13)), var_128)
  loc_1C8A99D:     var_17C = var_1BC & var_16C 
  loc_1C8A9AF:     Me.Label5.Caption = CStr(var_17C)
  loc_1C8A9C7:   End If
  loc_1C8A9C7:   GoTo loc_1C8C571
  loc_1C8A9CA: End If
  loc_1C8A9D0: If (var_116 = &HC) Then
  loc_1C8A9DB:   If (MemVar_1F921D0 = "Y") Then
  loc_1C8A9E9:     var_16C = "EPABX Message"
  loc_1C8A9F9:     var_114 = "Want to Close Dial Facility ?"
  loc_1C8AA15:     If (MsgBox(var_114, &H24, var_16C, var_17C, var_18C) = 6) Then
  loc_1C8AA1E:       var_138 = 0
  loc_1C8AA3D:       unk_52FBDC.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_114, -1
  loc_1C8AA45:       var_104 = var_104.Fields
  loc_1C8AA4D:       var_138 = var_15C.Item(var_15C)
  loc_1C8AA55:       var_1BC = var_1BC.Value
  loc_1C8AA5F:       var_90 = CLng(var_16C)
  loc_1C8AA76:       Set var_104 = Me.FGrid
  loc_1C8AA85:       var_128 = CVar(CLng(var_104.Row)) 'Long
  loc_1C8AA8D:       var_148 = CVar(CLng(1)) 'Long
  loc_1C8AA96:       Set var_15C = Me.FGrid
  loc_1C8AA9C:       var_16C = var_15C.TextMatrix)
  loc_1C8AAAC:       Set var_1BC = Me.FGrid
  loc_1C8AABB:       var_19C = CVar(CLng(var_1BC.Row)) 'Long
  loc_1C8AAC3:       var_1E0 = CVar(CLng(3)) 'Long
  loc_1C8AACC:       Set var_200 = Me.FGrid
  loc_1C8AAD2:       var_18C = var_200.TextMatrix)
  loc_1C8AAE2:       Set var_204 = Me.FGrid
  loc_1C8AAF1:       var_218 = CVar(CLng(var_204.Row)) 'Long
  loc_1C8AAF9:       var_250 = CVar(CLng(6)) 'Long
  loc_1C8AB02:       Set var_21C = Me.FGrid
  loc_1C8AB08:       var_240 = var_21C.TextMatrix)
  loc_1C8AB29:       var_1B0 = CStr(var_90)
  loc_1C8AB3F:       var_1FC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & var_1B0 & ",'CHKOT','" & CStr(var_16C)
  loc_1C8AB73:       unk_52FBDC.Execute var_1FC & "','" & CStr(var_18C) & "','" & CStr(var_240) & "',0)", var_260, -1
  loc_1C8ABB5:     End If
  loc_1C8ABB5:   End If
  loc_1C8ABB5:   GoTo loc_1C8C571
  loc_1C8ABB8: End If
  loc_1C8ABBE: If (var_116 = &HD) Then
  loc_1C8ABC3:   Close 1
  loc_1C8ABCC:   Open "C:\reptmp\STRUCT.TXT" For Output As 1 Len = &HFF
  loc_1C8ABE3:   Call 0.Method_arg_9C (-1, var_230, var_240, var_250, var_218, var_18C, var_1E0)
  loc_1C8ABEB:   Set var_55C = New 
  loc_1C8ABF4:   Call 0.Method_arg_BC (0, var_19C, var_16C, var_148)
  loc_1C8ABFE:   Call 0.Method_arg_E8 (0, var_128)
  loc_1C8AC09:   var_138 = "SA"
  loc_1C8AC19:   Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_138, vbNullString)
  loc_1C8AC20:   Set var_55C = Nothing 
  loc_1C8AC3B:   Call 0.Method_arg_34 (var_104, CVar(MemVar_1F92108), var_138)
  loc_1C8AC43:   Call 0.Method_arg_30 (var_15C, var_90)
  loc_1C8AC4B:   MemVar_1F92204 = var_15C
  loc_1C8AC55:   Set var_560 = MemVar_1F92204 
  loc_1C8AC67:   Call 0.Method_arg_3C (var_104, var_1C0, var_D6)
  loc_1C8AC6F:   Call 0.Method_arg_38 (1)
  loc_1C8AC7B:   For var_564 =  To CInt(var_1C0): var_16C = var_564 'Integer
  loc_1C8AC98:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8ACA0:     Call 0.Method_arg_30 (var_15C)
  loc_1C8ACA8:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8ACB0:     var_E0 = var_1B0
  loc_1C8ACC1:     var_1B0 = "SanCreateTableObj """ & var_E0
  loc_1C8ACC8:     var_1B4 = var_1B0 & """"
  loc_1C8ACCD:     Print 1, var_1B4
  loc_1C8ACEE:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8ACF6:     Call 0.Method_arg_30 (var_138)
  loc_1C8ACFE:     Set var_568 = var_15C
  loc_1C8AD12:     Call 0.Method_arg_3C (var_104, var_1C0, var_D8)
  loc_1C8AD1A:     Call 0.Method_arg_38 (1)
  loc_1C8AD26:     For var_56C =  To CInt(var_1C0): var_15C = var_56C 'Integer
  loc_1C8AD3F:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8AD47:       Call 0.Method_arg_30 (var_15C)
  loc_1C8AD4F:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8AD65:       var_57C = Ucase(CVar(var_1B0)) 'Variant
  loc_1C8AD7E:       If Not (var_57C = "INT") Then
  loc_1C8AD8C:         If Not (var_57C = "SMALLINT") Then
  loc_1C8AD9A:           If Not (var_57C = "LONG") Then
  loc_1C8ADA8:             If Not (var_57C = "DOUBLE") Then
  loc_1C8ADB6:               If Not (var_57C = "DATETIME") Then
  loc_1C8ADC4:                 If (var_57C = "FLOAT") Then
  loc_1C8ADC7:                 End If
  loc_1C8ADC7:               End If
  loc_1C8ADC7:             End If
  loc_1C8ADC7:           End If
  loc_1C8ADC7:         End If
  loc_1C8ADCA:         var_E8 = "0"
  loc_1C8ADD0:       Else
  loc_1C8ADDB:         If Not (var_57C = "VARCHAR") Then
  loc_1C8ADE9:           If Not (var_57C = "CHAR") Then
  loc_1C8ADF7:             If (var_57C = "NVARCHAR") Then
  loc_1C8ADFA:             End If
  loc_1C8ADFA:           End If
  loc_1C8ADFD:           var_E8 = """"""""""""""
  loc_1C8AE00:         End If
  loc_1C8AE00:       End If
  loc_1C8AE13:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8AE1B:       Call 0.Method_arg_30 (var_15C)
  loc_1C8AE23:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8AE4F:       If (Ucase(CVar(var_1B0)) = "NVARCHAR") Then
  loc_1C8AE55:         var_F0 = vbNullString
  loc_1C8AE71:         Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8AE79:         Call 0.Method_arg_30 (var_15C)
  loc_1C8AE81:         Call 0.Method_arg_34 (var_1B4)
  loc_1C8AE99:         Call 0.Method_arg_3C (var_1BC, CVar(var_D8))
  loc_1C8AEA1:         Call 0.Method_arg_30 (var_200)
  loc_1C8AEA9:         Call 0.Method_arg_60 (var_1C0)
  loc_1C8AEC1:         Call 0.Method_arg_3C (var_204, CVar(var_D8))
  loc_1C8AEC9:         Call 0.Method_arg_30 (var_21C)
  loc_1C8AED1:         Call 0.Method_arg_78 (var_51E)
  loc_1C8AEE9:         Call 0.Method_arg_3C (var_230, CVar(var_D8))
  loc_1C8AEF1:         Call 0.Method_arg_30 (var_51C)
  loc_1C8AEF9:         Call 0.Method_arg_78 (var_57E)
  loc_1C8AF1A:         var_1FC = "SanFieldsProperties """ & var_E0 & """, """ & var_1B4 & """, """
  loc_1C8AF72:         Print 1, CVar(var_1FC & "varchar" & """, " & CStr(var_1C0) & ", ") & var_51E & ", " & CVar(var_E8) & ", " & var_57E
  loc_1C8AFB6:         var_F0 = vbNullString
  loc_1C8AFBC:       Else
  loc_1C8AFCF:         Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8AFD7:         Call 0.Method_arg_30 (var_15C)
  loc_1C8AFDF:         Call 0.Method_arg_34 (var_1B4)
  loc_1C8AFED:         var_138 = CVar(var_D8) 'Integer
  loc_1C8AFF7:         Call 0.Method_arg_3C (var_1BC, var_138)
  loc_1C8AFFF:         Call 0.Method_arg_30 (var_200)
  loc_1C8B007:         Call 0.Method_arg_54 (var_1FC)
  loc_1C8B01F:         Call 0.Method_arg_3C (var_204, CVar(var_D8))
  loc_1C8B027:         Call 0.Method_arg_30 (var_21C)
  loc_1C8B02F:         Call 0.Method_arg_60 (var_1C0)
  loc_1C8B047:         Call 0.Method_arg_3C (var_230, CVar(var_D8))
  loc_1C8B04F:         Call 0.Method_arg_30 (var_51C)
  loc_1C8B057:         Call 0.Method_arg_78 (var_51E)
  loc_1C8B06F:         Call 0.Method_arg_3C (var_524, CVar(var_D8))
  loc_1C8B077:         Call 0.Method_arg_30 (var_528)
  loc_1C8B07F:         Call 0.Method_arg_78 (var_57E)
  loc_1C8B08B:         var_1B0 = "SanFieldsProperties """ & var_E0
  loc_1C8B0DE:         var_18C = CVar(var_1B0 & """, """ & var_1B4 & """, """ & var_1FC & """, " & CStr(var_1C0) & ", ") & var_51E & ", " & CVar(var_E8) 
  loc_1C8B0F8:         Print 1, var_18C & ", " & var_57E
  loc_1C8B13F:       End If
  loc_1C8B142:       var_E8 = vbNullString
  loc_1C8B148:     Next var_56C 'Integer
  loc_1C8B14F:     Set var_568 = Nothing 
  loc_1C8B158:     Print 1, vbNullString
  loc_1C8B161:   Next var_564 'Integer
  loc_1C8B168:   Set var_560 = Nothing 
  loc_1C8B16F:   Set var_584 = MemVar_1F92204 
  loc_1C8B181:   Call 0.Method_arg_3C (var_104, var_1C0)
  loc_1C8B189:   Call 0.Method_arg_38 (var_D6)
  loc_1C8B195:   For var_588 =  To CInt(var_1C0): 1 = var_588 'Integer
  loc_1C8B1B2:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8B1BA:     Call 0.Method_arg_30 (var_15C)
  loc_1C8B1C2:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8B1CA:     var_E0 = var_1B0
  loc_1C8B1E8:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8B1F0:     Call 0.Method_arg_30 (var_138)
  loc_1C8B1F8:     Set var_58C = var_15C
  loc_1C8B200:     var_D8 = 1
  loc_1C8B209:     Call 0.Method_arg_60 (var_104, var_D8)
  loc_1C8B219:     If Not((var_104 Is Nothing)) Then
  loc_1C8B225:       Call 0.Method_arg_60 (var_104, var_1B0)
  loc_1C8B22D:       Call 0.Method_arg_34 (var_15C)
  loc_1C8B23E:       var_F0 = vbNullString
  loc_1C8B248:       var_1B0 = "SanCreateKey """ & var_1B0
  loc_1C8B275:       Call 0.Method_arg_60 (var_104, var_15C)
  loc_1C8B27D:       Call 0.Method_CmdNew_UnknownEvent_9C (var_1C0)
  loc_1C8B285:       Call 0.Method_arg_38 ()
  loc_1C8B29A:       If (var_1C0 = 1) Then
  loc_1C8B2B3:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8B2BB:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8B2C3:         Call 0.Method_arg_30 (var_1B0 & """, """ & var_E0 & """, SQLDMOKey_Primary, True, True, """)
  loc_1C8B2D3:         var_F0 = var_1B0 & """"
  loc_1C8B2E7:       Else
  loc_1C8B2F8:         Call 0.Method_arg_60 (var_104, var_15C, var_1C0)
  loc_1C8B300:         Call 0.Method_CmdNew_UnknownEvent_9C (var_D8)
  loc_1C8B308:         Call 0.Method_arg_38 (1)
  loc_1C8B31E:         For var_590 =  To CInt((var_1C0 - 1)):    = var_590 'Integer
  loc_1C8B33A:           Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8B342:           Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8B34A:           Call 0.Method_arg_30 (var_F0)
  loc_1C8B35A:           var_F0 = var_1B0 & """, """
  loc_1C8B36E:         Next var_590 'Integer
  loc_1C8B389:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8B391:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8B399:         Call 0.Method_arg_30 (var_F0)
  loc_1C8B3A2:         var_1B4 = var_1B0
  loc_1C8B3A9:         var_F0 = var_1B4 & """"
  loc_1C8B3BA:       End If
  loc_1C8B3BF:       Print 1, var_F0
  loc_1C8B3C5:     End If
  loc_1C8B3D3:     Call 0.Method_arg_64 (var_104, var_1C0)
  loc_1C8B3DB:     Call 0.Method_arg_38 (var_D8)
  loc_1C8B3E7:     For var_594 =  To CInt(var_1C0): 1 = var_594 'Integer
  loc_1C8B3F0:       var_F0 = vbNullString
  loc_1C8B40B:       Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8B413:       Call 0.Method_arg_30 (var_1B0)
  loc_1C8B41B:       Call 0.Method_arg_34 (1)
  loc_1C8B44B:       Call 0.Method_arg_64 (var_1BC, CVar(var_D8), var_200)
  loc_1C8B453:       Call 0.Method_arg_30 (var_1B4, 1)
  loc_1C8B45B:       Call 0.Method_arg_34 ((InStr(, var_1B0, "PK", 0) = 0))
  loc_1C8B486:       If ( And (InStr(, var_1B4, "Sys", 0) = 0)) Then
  loc_1C8B49F:         Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8B4A7:         Call 0.Method_arg_30 (var_1B0)
  loc_1C8B4AF:         Call 0.Method_arg_34 ("SanCreateIndex """)
  loc_1C8B4F5:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8B4FD:         Call 0.Method_arg_30 (var_15C)
  loc_1C8B505:         Call 0.Method_arg_5C (var_1BC)
  loc_1C8B50D:         Set var_EC = var_1BC
  loc_1C8B522:         Call 0.Method_arg_38 (var_1C0, var_DA)
  loc_1C8B531:         For var_598 =  To CInt((var_1C0 - 1)): 1 = var_598 'Integer
  loc_1C8B544:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8B56D:           var_F0 = CStr(CVar(var_1B0 & """, """ & var_E0 & """, SQLDMOIndex_Default, """) & var_104.Name & """, """)
  loc_1C8B57C:         Next var_598 'Integer
  loc_1C8B587:         Call 0.Method_arg_38 (var_1C0)
  loc_1C8B595:         If (var_1C0 = 1) Then
  loc_1C8B5A5:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8B5AD:           var_100 = var_104 'Address Function
  loc_1C8B5B1:         End If
  loc_1C8B5C0:         var_16C = CVar(var_F0) & var_100.Name 
  loc_1C8B5C9:         var_17C = var_16C & """" 
  loc_1C8B5DF:         Print 1, CStr(var_17C)
  loc_1C8B5E5:       End If
  loc_1C8B5E8:     Next var_594 'Integer
  loc_1C8B5EF:     Set var_58C = Nothing 
  loc_1C8B5F8:     Print 1, vbNullString
  loc_1C8B601:   Next var_588 'Integer
  loc_1C8B608:   Set var_584 = Nothing 
  loc_1C8B625:   MsgBox("structure created !!", &H40, var_16C, var_17C, var_18C)
  loc_1C8B63A:   MemVar_1F92208 = Nothing
  loc_1C8B643:   MemVar_1F92204 = Nothing
  loc_1C8B64C:   Set var_EC = Nothing
  loc_1C8B651:   Close 1
  loc_1C8B653:   GoTo loc_1C8C571
  loc_1C8B656: End If
  loc_1C8B65C: If (var_116 = &HE) Then
  loc_1C8B672:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8B67A:   var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8B694:   var_17C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1C8B69A:   var_18C = Trim(var_17C)
  loc_1C8B6BC:   If (var_18C = vbNullString) Then
  loc_1C8B6D2:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8B6DA:     var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8B70D:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_1C8B71D:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C8B75A:     If (var_1BC.RecordCount > 0) Then
  loc_1C8B77E:       MsgBox("Operation is Not Allowed", &H10, "Bill Already Generated", var_17C, var_18C)
  loc_1C8B78E:       Exit Sub
  loc_1C8B78F:     End If
  loc_1C8B792:   Else
  loc_1C8B7A5:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1C8B7AD:     var_148 = CVar(CLng(&H14)) 'Long
  loc_1C8B7DC:     var_1B0 = CStr(Me.FGrid.TextMatrix))
  loc_1C8B7E0:     var_1B4 = "Select Distinct Bill_No,FolioNo,SPLIT from Paycharge where bill_no<>'' and Bill_No is not Null and FolioNoDocid='" & var_1B0
  loc_1C8B7F0:     unk_52FB6A.Execute var_1B4 & "'", var_17C, -1
  loc_1C8B81F:     var_1C0 = var_1BC.RecordCount
  loc_1C8B82D:     If (var_1C0 > 0) Then
  loc_1C8B836:       var_138 = "Bill Already Generated"
  loc_1C8B851:       MsgBox("Operation is Not Allowed", &H10, var_138, var_17C, var_18C)
  loc_1C8B861:       Exit Sub
  loc_1C8B862:     End If
  loc_1C8B862:   End If
  loc_1C8B86C:   Set var_88 = New GuestProfile
  loc_1C8B876:   Set var_104 = Me.FGrid
  loc_1C8B885:   var_128 = CVar(CLng(var_104.Row)) 'Long
  loc_1C8B88D:   var_148 = CVar(CLng(&H13)) 'Long
  loc_1C8B896:   Set var_15C = Me.FGrid
  loc_1C8B89C:   var_16C = var_15C.TextMatrix)
  loc_1C8B8B9:   var_88.GuestFolio = Trim(CVar(CStr(var_16C)))
  loc_1C8B8D8:   var_88.OpenType = "InsertGuestProfile"
  loc_1C8B8E8:   var_88.OpenMode = 1
  loc_1C8B8F0:   var_128 = 1
  loc_1C8B8FC:   var_88.Show var_128, var_138
  loc_1C8B901:   GoTo loc_1C8C571
  loc_1C8B904: End If
  loc_1C8B90A: If (var_116 = &HF) Then
  loc_1C8B90F:   Close 1
  loc_1C8B918:   Open "C:\reptmp\ASSSTRUCT.TXT" For Output As 1 Len = &HFF
  loc_1C8B92F:   Call 0.Method_arg_9C (-1, var_148, var_128, var_1BC, var_16C, var_148, var_128)
  loc_1C8B937:   Set var_5A0 = New 
  loc_1C8B940:   Call 0.Method_arg_BC (0, var_1BC, var_16C, var_148)
  loc_1C8B94A:   Call 0.Method_arg_E8 (0, var_128)
  loc_1C8B94F:   var_148 = vbNullString
  loc_1C8B955:   var_138 = "SA"
  loc_1C8B965:   Call 0.Method_arg_100 (CVar(MemVar_1F92098), var_138, var_148)
  loc_1C8B96C:   Set var_5A0 = Nothing 
  loc_1C8B987:   Call 0.Method_arg_34 (var_104, CVar(MemVar_1F92108), var_138)
  loc_1C8B98F:   Call 0.Method_arg_30 (var_15C, var_148)
  loc_1C8B997:   MemVar_1F92204 = var_15C
  loc_1C8B9A1:   var_E0 = vbNullString
  loc_1C8B9A7:   Set var_5A4 = MemVar_1F92204 
  loc_1C8B9B9:   Call 0.Method_arg_3C (var_104, var_1C0, var_D6)
  loc_1C8B9C1:   Call 0.Method_arg_38 (1)
  loc_1C8B9CD:   For var_5A8 =  To CInt(var_1C0): var_128 = var_5A8 'Integer
  loc_1C8B9EA:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8B9F2:     Call 0.Method_arg_30 (var_15C)
  loc_1C8B9FA:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8BA02:     var_E0 = var_1B0
  loc_1C8BA13:     var_1B0 = "bl = PubAnalysis.SanFaCreateTable(Cat, """ & var_E0
  loc_1C8BA1F:     Print 1, var_1B0 & """)"
  loc_1C8BA40:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8BA48:     Call 0.Method_arg_30 (var_138)
  loc_1C8BA50:     Set var_5AC = var_15C
  loc_1C8BA64:     Call 0.Method_arg_3C (var_104, var_1C0, var_D8)
  loc_1C8BA6C:     Call 0.Method_arg_38 (1)
  loc_1C8BA78:     For var_5B0 =  To CInt(var_1C0): var_15C = var_5B0 'Integer
  loc_1C8BA91:       Call 0.Method_arg_3C (var_104, CVar(var_D8))
  loc_1C8BA99:       Call 0.Method_arg_30 (var_15C)
  loc_1C8BAA1:       Call 0.Method_arg_54 (var_1B0)
  loc_1C8BAB7:       var_5C0 = Ucase(CVar(var_1B0)) 'Variant
  loc_1C8BAD0:       If Not (var_5C0 = "INT") Then
  loc_1C8BADE:         If Not (var_5C0 = "SMALLINT") Then
  loc_1C8BAEC:           If (var_5C0 = "LONG") Then
  loc_1C8BAEF:           End If
  loc_1C8BAEF:         End If
  loc_1C8BAF2:         var_E8 = "0"
  loc_1C8BAFE:         var_F0 = vbNullString
  loc_1C8BB08:         var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8BB32:         Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BB3A:         Call 0.Method_arg_30 (var_1B0)
  loc_1C8BB42:         Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8BB92:         Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BB9A:         Call 0.Method_arg_30 (var_51E)
  loc_1C8BBA2:         Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adInteger" & """, " & "adInteger" & """, " & "adInteger" & ", , "))
  loc_1C8BBCE:         Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8BBD6:         Call 0.Method_arg_30 (var_57E)
  loc_1C8BBDE:         Call 0.Method_arg_78 (var_51E & ", 0, ")
  loc_1C8BC1B:         Print 1, CStr(Not(var_57E) & ")")
  loc_1C8BC24:       Else
  loc_1C8BC2F:         If (var_5C0 = "DOUBLE") Then
  loc_1C8BC35:           var_E8 = "0"
  loc_1C8BC41:           var_F0 = vbNullString
  loc_1C8BC4B:           var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8BC75:           Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BC7D:           Call 0.Method_arg_30 (var_1B0)
  loc_1C8BC85:           Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8BCD5:           Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BCDD:           Call 0.Method_arg_30 (var_51E)
  loc_1C8BCE5:           Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adDouble" & """, " & "adDouble" & """, " & "adDouble" & ", , "))
  loc_1C8BD11:           Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8BD19:           Call 0.Method_arg_30 (var_57E)
  loc_1C8BD21:           Call 0.Method_arg_78 (var_51E & ", 0, ")
  loc_1C8BD5E:           Print 1, CStr(Not(var_57E) & ")")
  loc_1C8BD67:         Else
  loc_1C8BD72:           If (var_5C0 = "DATETIME") Then
  loc_1C8BD7E:             var_F0 = vbNullString
  loc_1C8BD88:             var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8BDB2:             Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BDBA:             Call 0.Method_arg_30 (var_1B0)
  loc_1C8BDC2:             Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8BE12:             Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BE1A:             Call 0.Method_arg_30 (var_51E)
  loc_1C8BE22:             Call 0.Method_arg_78 (CVar(var_1B0 & """, " & "adDate" & """, " & "adDate" & """, " & "adDate" & ", , "))
  loc_1C8BE4E:             Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8BE56:             Call 0.Method_arg_30 (var_57E)
  loc_1C8BE5E:             Call 0.Method_arg_78 (var_51E & ", , ")
  loc_1C8BE9B:             Print 1, CStr(Not(var_57E) & ")")
  loc_1C8BEA4:           Else
  loc_1C8BEAF:             If Not (var_5C0 = "VARCHAR") Then
  loc_1C8BEBD:               If Not (var_5C0 = "CHAR") Then
  loc_1C8BECB:                 If (var_5C0 = "NVARCHAR") Then
  loc_1C8BECE:                 End If
  loc_1C8BECE:               End If
  loc_1C8BEDD:               var_F0 = vbNullString
  loc_1C8BEE7:               var_1B0 = "bl = PubAnalysis.SanFaCreatFields(Cat, """ & var_E0
  loc_1C8BF11:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BF19:               Call 0.Method_arg_30 (var_1B0)
  loc_1C8BF21:               Call 0.Method_arg_34 (var_1B0 & """, " & """")
  loc_1C8BF4B:               var_1B0 = var_1B0 & """, " & "adWChar"
  loc_1C8BF68:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BF70:               Call 0.Method_arg_30 (var_1C0)
  loc_1C8BF78:               Call 0.Method_arg_60 (var_1B0 & ", ")
  loc_1C8BFA5:               var_138 = CVar(CStr(var_1C0) & ", ") 'String
  loc_1C8BFBB:               Call 0.Method_arg_3C (var_104, CVar(var_D8), var_15C)
  loc_1C8BFC3:               Call 0.Method_arg_30 (var_51E)
  loc_1C8BFCB:               Call 0.Method_arg_78 (var_138)
  loc_1C8BFF3:               var_18C = var_51E & ", " & CVar("""""""""""""") & ", " 
  loc_1C8C00A:               Call 0.Method_arg_3C (var_1BC, CVar(var_D8), var_200)
  loc_1C8C012:               Call 0.Method_arg_30 (var_57E)
  loc_1C8C01A:               Call 0.Method_arg_78 (var_18C)
  loc_1C8C05B:               Print 1, CStr(Not(var_57E) & ")")
  loc_1C8C061:             End If
  loc_1C8C061:           End If
  loc_1C8C061:         End If
  loc_1C8C061:       End If
  loc_1C8C064:     Next var_5B0 'Integer
  loc_1C8C06B:     Set var_5AC = Nothing 
  loc_1C8C074:     Print 1, vbNullString
  loc_1C8C07D:   Next var_5A8 'Integer
  loc_1C8C084:   Set var_5A4 = Nothing 
  loc_1C8C08B:   Set var_5C4 = MemVar_1F92204 
  loc_1C8C09D:   Call 0.Method_arg_3C (var_104, var_1C0)
  loc_1C8C0A5:   Call 0.Method_arg_38 (var_D6)
  loc_1C8C0B1:   For var_5C8 =  To CInt(var_1C0): 1 = var_5C8 'Integer
  loc_1C8C0CE:     Call 0.Method_arg_3C (var_104, CVar(var_D6), var_138)
  loc_1C8C0D6:     Call 0.Method_arg_30 (var_15C)
  loc_1C8C0DE:     Call 0.Method_arg_34 (var_1B0)
  loc_1C8C0E6:     var_E0 = var_1B0
  loc_1C8C104:     Call 0.Method_arg_3C (var_104, CVar(var_D6))
  loc_1C8C10C:     Call 0.Method_arg_30 (var_138)
  loc_1C8C114:     Set var_5CC = var_15C
  loc_1C8C11C:     var_D8 = 1
  loc_1C8C125:     Call 0.Method_arg_60 (var_104, var_D8)
  loc_1C8C135:     If Not((var_104 Is Nothing)) Then
  loc_1C8C141:       Call 0.Method_arg_60 (var_104, var_1B0)
  loc_1C8C149:       Call 0.Method_arg_34 (var_15C)
  loc_1C8C15A:       var_F0 = vbNullString
  loc_1C8C164:       var_1B0 = "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0
  loc_1C8C191:       Call 0.Method_arg_60 (var_104, var_15C)
  loc_1C8C199:       Call 0.Method_CmdNew_UnknownEvent_9C (var_1C0)
  loc_1C8C1A1:       Call 0.Method_arg_38 ()
  loc_1C8C1B6:       If (var_1C0 = 1) Then
  loc_1C8C1CF:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8C1D7:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8C1DF:         Call 0.Method_arg_30 (var_1B0 & """, """ & var_1B0 & """, True, True, adIndexNullsDisallow, """)
  loc_1C8C1EF:         var_F0 = var_1B0 & """)"
  loc_1C8C203:       Else
  loc_1C8C214:         Call 0.Method_arg_60 (var_104, var_15C, var_1C0)
  loc_1C8C21C:         Call 0.Method_CmdNew_UnknownEvent_9C (var_D8)
  loc_1C8C224:         Call 0.Method_arg_38 (1)
  loc_1C8C23A:         For var_5D0 =  To CInt((var_1C0 - 1)):    = var_5D0 'Integer
  loc_1C8C256:           Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8C25E:           Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8C266:           Call 0.Method_arg_30 (var_F0)
  loc_1C8C276:           var_F0 = var_1B0 & """, """
  loc_1C8C28A:         Next var_5D0 'Integer
  loc_1C8C2A5:         Call 0.Method_arg_60 (var_104, var_15C, CVar(var_D8))
  loc_1C8C2AD:         Call 0.Method_CmdNew_UnknownEvent_9C (var_1B0)
  loc_1C8C2B5:         Call 0.Method_arg_30 (var_F0)
  loc_1C8C2BE:         var_1B4 = var_1B0
  loc_1C8C2C5:         var_F0 = var_1B4 & """)"
  loc_1C8C2D6:       End If
  loc_1C8C2DB:       Print 1, var_F0
  loc_1C8C2E1:     End If
  loc_1C8C2EF:     Call 0.Method_arg_64 (var_104, var_1C0)
  loc_1C8C2F7:     Call 0.Method_arg_38 (var_D8)
  loc_1C8C303:     For var_5D4 =  To CInt(var_1C0): 1 = var_5D4 'Integer
  loc_1C8C30C:       var_F0 = vbNullString
  loc_1C8C312:       var_E4 = vbNullString
  loc_1C8C32D:       Call 0.Method_arg_64 (var_104, CVar(var_D8), var_15C)
  loc_1C8C335:       Call 0.Method_arg_30 (var_1B0)
  loc_1C8C33D:       Call 0.Method_arg_34 (1)
  loc_1C8C36D:       Call 0.Method_arg_64 (var_1BC, CVar(var_D8), var_200)
  loc_1C8C375:       Call 0.Method_arg_30 (var_1B4, 1)
  loc_1C8C37D:       Call 0.Method_arg_34 ((InStr(, var_1B0, "PK", 0) = 0))
  loc_1C8C3A8:       If ( And (InStr(, var_1B4, "Sys", 0) = 0)) Then
  loc_1C8C3BE:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8C3C6:         Call 0.Method_arg_30 (var_15C)
  loc_1C8C3CE:         Call 0.Method_arg_34 (var_1B0)
  loc_1C8C3F5:         var_1B8 = "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0 & """, """ & "b1 = PubAnalysis.SanFaCreateIndex(Cat, """ & var_E0
  loc_1C8C41B:         Call 0.Method_arg_64 (var_104, CVar(var_D8))
  loc_1C8C423:         Call 0.Method_arg_30 (var_15C)
  loc_1C8C42B:         Call 0.Method_arg_5C (var_1BC)
  loc_1C8C433:         Set var_EC = var_1BC
  loc_1C8C448:         Call 0.Method_arg_38 (var_1C0, var_DA)
  loc_1C8C457:         For var_5D8 =  To CInt((var_1C0 - 1)): 1 = var_5D8 'Integer
  loc_1C8C46A:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8C493:           var_F0 = CStr(CVar(var_1B8 & """, False, False, adIndexNullsAllow, """) & var_104.Name & """, """)
  loc_1C8C4A2:         Next var_5D8 'Integer
  loc_1C8C4AD:         Call 0.Method_arg_38 (var_1C0)
  loc_1C8C4BB:         If (var_1C0 = 1) Then
  loc_1C8C4CB:           Call 0.Method_arg_30 (CVar(var_DA))
  loc_1C8C4D3:           var_100 = var_104 'Address Function
  loc_1C8C4D7:         End If
  loc_1C8C4E6:         var_16C = CVar(var_F0) & var_100.Name 
  loc_1C8C4EF:         var_17C = var_16C & """)" 
  loc_1C8C505:         Print 1, CStr(var_17C)
  loc_1C8C50B:       End If
  loc_1C8C50E:     Next var_5D4 'Integer
  loc_1C8C515:     Set var_5CC = Nothing 
  loc_1C8C51E:     Print 1, vbNullString
  loc_1C8C527:   Next var_5C8 'Integer
  loc_1C8C52E:   Set var_5C4 = Nothing 
  loc_1C8C54B:   MsgBox("access structure created !!", &H40, var_16C, var_17C, var_18C)
  loc_1C8C560:   MemVar_1F92208 = Nothing
  loc_1C8C569:   MemVar_1F92204 = Nothing
  loc_1C8C56F:   Close 1
  loc_1C8C571:   ' Referenced from: 1C8B901
  loc_1C8C571:   ' Referenced from: 1C8B653
  loc_1C8C571:   ' Referenced from: 1C8ABB5
  loc_1C8C571:   ' Referenced from: 1C8A9C7
  loc_1C8C571:   ' Referenced from: 1C8A5F0
  loc_1C8C571:   ' Referenced from: 1C8A13D
  loc_1C8C571:   ' Referenced from: 1C8719E
  loc_1C8C571:   ' Referenced from: 1C86E93
  loc_1C8C571:   ' Referenced from: 1C86DE7
  loc_1C8C571:   ' Referenced from: 1C86C2B
  loc_1C8C571:   ' Referenced from: 1C86B27
  loc_1C8C571:   ' Referenced from: 1C864EF
  loc_1C8C571:   ' Referenced from: 1C863EB
  loc_1C8C571:   ' Referenced from: 1C8633F
  loc_1C8C571:   ' Referenced from: 1C8618E
  loc_1C8C571: End If
  loc_1C8C576: Set var_8C = Nothing
  loc_1C8C57E: Set var_94 = Nothing
  loc_1C8C586: Set var_88 = Nothing
  loc_1C8C589: Exit Sub
End Sub

Private Sub Form_Load() '110F318
  'Data Table: 52FB64
  Dim var_AC As Variant
  Dim var_B4 As String
  Dim var_A8 As Variant
  Dim var_D4 As Variant
  Dim var_100 As String
  Dim var_104 As String
  Dim unk_52FB6A As Connection15
  Dim var_110 As Variant
  Dim var_114 As Field20
  loc_110EFF3: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_110F00B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_110F026: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_110F03E: Set var_AC = Me
  loc_110F044: Proc_6_23_DFBA28(var_AC, 0)
  loc_110F057: If (global_60 <> vbNullString) Then
  loc_110F06B:   var_88 = " And RoomOcc.RoomNo='" & global_60 & "'"
  loc_110F071: End If
  loc_110F071: Call Proc_52_35_14342C4(0)
  loc_110F097: If CBool(Trim(global_56) <> vbNullString) Then
  loc_110F0B8:   var_D4 = CVar(var_88 & " And LEFT(GuestProf.NAme," & CStr(Len(global_56)) & ") Like '") 'String
  loc_110F0C9:   var_C4 = Trim(global_56)
  loc_110F0DF:   var_88 = CStr(var_D4 & var_C4 & "'")
  loc_110F0F6: End If
  loc_110F10A: var_B4 = "SELECT Distinct RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, convert(Varchar(6),GuestFolio.FolioNo) FolioNo,convert(Varchar(10),GuestFolio.vDate ,103) as ChkInDate ,convert(Varchar(10),RoomOcc.DepDate ,103) as DepDate , GuestProf.Name AS GuestName, GuestStat.Name GuestStatus, IsNull(SubGroup.Name,'') + Case When IsNull(TA.Name,'')='' Or IsNull(SubGroup.Name,'')='' Then '' Else '/ ' End + IsNull(TA.Name,'') AS CompanyName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,Guestprof.Code as GuestCode,GuestFolio.mFoliono,RoomOcc.PlanCode,PlanMast.Plan_package,PlanMast.name as PlanName,GuestFolio.DocId,GuestFolio.MFolioNoDocid,Case RoomOcc.RateCode When '1' Then E.Rate1 When '2' Then E.Rate2 When '3' Then E.Rate3 When '4' Then E.Rate4 When '5' Then E.Rate5 End RateLabel,RoomOcc.ChkInTime,RoomOcc.DepTime,Cast(RoomOcc.Adult As Varchar)+'/'+Cast(RoomOcc.Children As Varchar) Pax" & " FROM ((((((RoomOcc iNNER JOIN RoomMast ON RoomMast.Code = RoomOcc.RoomNo) Left join PlanMast on RoomOcc.PlanCode=PlanMast.Code) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN GuestStat ON GuestStat.Code = GuestProf.GuestStatus) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN SubGroup TA ON GuestFolio.TravelAgent = TA.SubCode INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code INNER JOIN Enviro E On GuestFolio.LogSite_Code=E.LogSite_Code WHERE (ROOMOCC.LOGSITE_CODE='"
  loc_110F126: var_104 = var_88 & " And LEFT(GuestProf.NAme," & MemVar_1F92078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' "
  loc_110F13D: unk_52FB6A.Execute var_104 & var_88 & " ORDER BY RoomMast.Code", var_C4, -1
  loc_110F176: CVarUnk
  loc_110F17B: VerifyVarObj
  loc_110F187: LateIdStAd
  loc_110F1A9: var_B4 = "SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where (ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078
  loc_110F1B9: unk_52FB6A.Execute var_B4 & "' or ROOMOCC.LOGSITE_CODE='HO') AND RoomOcc.ChkoutDate is NULL AND Solved<>'Y' order by RoomOcc.RoomNO", var_C4, -1
  loc_110F1CA: Set global_64 = Me.FGrid
  loc_110F1EB: Set var_AC = Me.Label2
  loc_110F1F1: Call 0.Method_Form_Load0 (3, var_110, "wingdings", var_AC)
  loc_110F1F9: var_110.FontName = var_AC
  loc_110F212: Set var_AC = Me.Label2
  loc_110F218: Call 0.Method_Form_Load0 (3, var_110, CDbl(&HF))
  loc_110F220: var_110.FontSize = var_AC
  loc_110F238: Set var_AC = Me.Label2
  loc_110F23E: Call 0.Method_Form_Load0 (3, var_110)
  loc_110F246: var_110.Caption = "*"
  loc_110F25D: Set var_AC = Me.Label2
  loc_110F263: Call 0.Method_Form_Load0 (3, var_110)
  loc_110F26B: var_110.FontBold = True
  loc_110F27D: var_A8 = 0
  loc_110F2AF: var_100 = "Select count(*) from menuhelp where Flag<>'V' And username='" & MemVar_1F920C8 & "' and CompCode='" & MemVar_1F92128 & "' AND MODULE_NAME='LockManage'"
  loc_110F2B8: unk_52FB6A.Execute var_100, var_C4, -1
  loc_110F2C0: var_AC = var_AC.Fields
  loc_110F2C8: var_A8 = var_110.Item(var_110)
  loc_110F2D0: var_114 = var_114.Value
  loc_110F2FB: If CBool(var_D4 <> 0) Then
  loc_110F306:   Set var_AC = Me.CmdLockCard
  loc_110F30C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_110F314: End If
  loc_110F314: Exit Sub
End Sub

Private Sub Form_Activate() 'FA29D4
  'Data Table: 52FB64
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_D4 As String
  Dim unk_52FB6A As Connection15
  Dim var_88 As Recordset15
  loc_FA2887: If (CLng(Me.FGrid.Rows) > 1) Then
  loc_FA289D:   Me.FGrid.Row = 1
  loc_FA28A9:   Set var_90 = Me.FGrid
  loc_FA28AF:   var_A0 = var_90.Cols
  loc_FA28BE:   var_B0 = CVar((CLng(var_A0) - 1)) 'Long
  loc_FA28CD:   Me.FGrid.ColSel = 1
  loc_FA28DC: End If
  loc_FA2905: var_D4 = "SELECT CancelGuestBill FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F92078 & "' And CompCode='" & MemVar_1F92128 & "' And UserName='"
  loc_FA291C: unk_52FB6A.Execute var_D4 & MemVar_1F920C8 & "'", var_A0, -1
  loc_FA2927: Set var_88 = var_90
  loc_FA2953: If (var_88.RecordCount > 0) Then
  loc_FA296D:   var_C4 = var_88.Fields.Item("CancelGuestBill")
  loc_FA297E:   var_8C = Proc_6_38_E68A98(CVar(var_C4))
  loc_FA2987: End If
  loc_FA298F: If (var_8C <> "Yes") Then
  loc_FA29A0:   Set var_90 = Me.CmdNew
  loc_FA29A6:   Call 0.Method_Form_Activate0 (&HA, var_C4)
  loc_FA29AE:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_FA29BA: End If
  loc_FA29BF: Set var_88 = Nothing
  loc_FA29CB: Call 0.Method_arg_9C (CInt(2))
  loc_FA29D0: Exit Sub
  loc_FA29D1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E8DD14
  'Data Table: 52FB64
  loc_E8DCAD: If ((CLng(KeyCode) = &H74) And (Shift = 2)) Then
  loc_E8DCB0:   GoTo loc_E8DCE6
  loc_E8DCB3: End If
  loc_E8DCC4: If ((CLng(KeyCode) = &H43) And (Shift = 4)) Then
  loc_E8DCCC:   Call CmdNew_UnknownEvent_9(8, )
  loc_E8DCD4: Else
  loc_E8DCDE:   If (CLng(KeyCode) = &H74) Then
  loc_E8DCE1:     Call Proc_52_33_1500598()
  loc_E8DCE6:   End If
  loc_E8DCE6:   ' Referenced from: E8DCB0
  loc_E8DCE6: End If
  loc_E8DCFB: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &H79)) Then
  loc_E8DD0B:   Me.Global.Unload Me
  loc_E8DD13: End If
  loc_E8DD13: Exit Sub
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'E53B7C
  'Data Table: 52FB64
  loc_E53B60: If (CBool(Me.FPlanGrid.Visible) = &HFF) Then
  loc_E53B72:   Me.FPlanGrid.Visible = False
  loc_E53B7A: End If
  loc_E53B7A: Exit Sub
End Sub

Private Sub Form_Paint() '1209ED4
  'Data Table: 52FB64
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_52FB6A As Connection15
  Dim var_90 As Recordset15
  Dim var_C4 As Variant
  Dim var_DC As String
  Dim var_FC As Variant
  Dim var_12C As Variant
  Dim var_16C As String
  Dim var_1AC As Variant
  Dim var_88 As Recordset15
  Dim var_1F4 As Fields15
  Dim var_19C As Variant
  Dim var_8A As Integer
  loc_1209A63: Me.FGrid.Redraw = False
  loc_1209A76: Me.Requery -1
  loc_1209A84: CVarUnk
  loc_1209A89: VerifyVarObj
  loc_1209A95: LateIdStAd
  loc_1209AA3: Call Proc_52_35_14342C4(Me.FGrid)
  loc_1209ABA: Me.FGrid.Col = CVar(CLng(1))
  loc_1209AC2: Call Proc_52_33_1500598(global_52)
  loc_1209ACE: Set var_B4 = Me.Label3
  loc_1209AD4: var_B4.Caption = vbNullString
  loc_1209B00: unk_52FB6A.Execute "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'", var_C4, -1
  loc_1209B0B: Set var_90 = var_B4
  loc_1209B1B: ' Referenced from: 1209DEB
  loc_1209B2A: If Not(var_90.EOF) Then
  loc_1209B4C:   var_B4 = var_90.Fields
  loc_1209B65:   var_C8 = Proc_6_38_E68A98(CVar(var_B4.Item("Code")), "Select max(RoomCAt.Name) as RoomType,Sum(NoofRooms) as  Rooms from ViewBooking as Booking INNER join RoomCat on Booking.RoomCAt=RoomCAt.Code  where bOOKING.ROOMCAT='", var_1F0)
  loc_1209B69:   var_CC = -1 & var_C8
  loc_1209B77:   var_DC = "SELECT * FROM ROOMCAT WHERE LOGSITE_CODE='" & MemVar_1F92078 & "'" & "' AND Cancel='N' and BOOKING.LOGSITE_CODE='" & MemVar_1F92078
  loc_1209B8C:   Proc_6_7_F25D88(var_EC, MemVar_1F920EC, CVar(var_DC & "' AND "))
  loc_1209BAC:   Proc_6_7_F25D88(var_14C, MemVar_1F920EC)
  loc_1209BB8:   var_16C = " < Depdate and Not Exists (Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_1209BCC:   Proc_6_7_F25D88(var_19C, MemVar_1F920EC)
  loc_1209BD4:   var_1AC = var_1F4 & var_EC & " >=Arrdate and " & var_14C & var_16C & var_19C 
  loc_1209BEB:   unk_52FB6A.Execute CStr(var_1AC & " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Group By Booking.RoomCAt"), var_B4, 
  loc_1209BF6:   Set var_88 = var_1F4
  loc_1209C3C:   If (var_88.RecordCount > 0) Then
  loc_1209C5A:     If (Me.Timer1.Enabled = 0) Then
  loc_1209C69:       Me.Timer1.Enabled = True
  loc_1209C71:       ' Referenced from: 1209DDD
  loc_1209C71:     End If
  loc_1209C82:     If (var_88.EOF = 0) Then
  loc_1209CB4:       var_EC = "; "
  loc_1209CDC:       var_12C = (CVar(Me.Label3.Caption) + IIf((Me.Label3.Caption = vbNullString), vbNullString, var_EC))
  loc_1209D3D:       Proc_6_39_E7C810(var_1AC, CVar(var_88.Fields.Item("Rooms")))
  loc_1209D57:       Me.Label3.Caption = CStr(var_90.Fields & var_EC & " >=Arrdate and " & var_90.Fields.Item("Name").Value & "=" & var_1AC)
  loc_1209DB9:       Proc_6_39_E7C810(var_EC, CVar(var_88.Fields.Item("Rooms")))
  loc_1209DC1:       var_FC = (CVar(var_8A) + var_EC)
  loc_1209DC6:       var_8A = CInt(IIf((Me.Label3.Caption = vbNullString), vbNullString, var_EC))
  loc_1209DD8:       var_88.MoveNext
  loc_1209DDD:       GoTo loc_1209C71
  loc_1209DE0:     End If
  loc_1209DE0:     GoTo loc_1209DE3
  loc_1209DE3:     ' Referenced from: 1209DE0
  loc_1209DE3:   End If
  loc_1209DE6:   var_90.MoveNext
  loc_1209DEB:   GoTo loc_1209B1B
  loc_1209DEE: End If
  loc_1209E0E: If (Me.Label3.Caption <> vbNullString) Then
  loc_1209E4A:   Me.Label3.Caption = "ToDay 's Arrivals (" & CStr(var_8A) & ") > " & Me.Label3.Caption
  loc_1209E7E:   If (Me.Timer1.Enabled = 0) Then
  loc_1209E8D:     Me.Timer1.Enabled = True
  loc_1209E95:   End If
  loc_1209E95: End If
  loc_1209E9A: Set var_88 = Nothing
  loc_1209EA2: Set var_90 = Nothing
  loc_1209EB3: Me.FGrid.Redraw = True
  loc_1209EC6: Me.Requery -1
  loc_1209ECB: Call Proc_52_37_1395F08(var_8A)
  loc_1209ED0: Exit Sub
End Sub

Private Sub CmdLockCard_UnknownEvent_9 'E7C640
  'Data Table: 52FB64
  Dim var_AC As Variant
  Dim var_88 As Long
  loc_E7C5FF: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_E7C62A: var_88 = Proc_336_1_11FB75C(CStr(Me.FGrid.TextMatrix)), CVar(CLng(&H13)))
  loc_E7C63E: Exit Sub
End Sub

Private Sub Label3_Click() 'F745AC
  'Data Table: 52FB64
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_128 As String
  Dim var_178 As String
  Dim MemVar_1F920E4 As String
  Dim unk_52FB6A As Connection15
  Dim var_88 As Recordset15
  loc_F74488: On Error Goto loc_F745A5
  loc_F74492: var_B8 = CVar("Select '' As SearchCode,Booking.BookNo as Res_No,LTrim(GuestName) As Guest_Name,Case When LTrim(IsNull(GuestProf.MobileNo,''))<>'' Then LTrim(IsNull(GuestProf.MobileNo,'')) Else LTrim(IsNull(GuestProf.PhoneNo,'')) End Mobile_No,Roomcat.Name as Room_Type,Convert(Varchar(11),Booking.ArrDate,106) Arr_Date,Booking.ArrTime As Arr_Tm,Convert(Varchar(11),Booking.DepDate,106) Dep_Date,Booking.DepTime Dep_Tm,RoomNo,Booking.ResStatus Status,BookedBy Booked_By,Booking.Remarks,Booking.NoofRooms as RoomDet,Booking.Adult As Pax,Booking.Child as Child,PlanMast.Name As Plan_Name,LTrim(ISNULL(S.Name,''))  + Case When LTrim(ISNULL(sg.Name,''))<>'' Then '/' Else '' End + LTrim(ISNULL(sg.Name,'')) as [Company/Travel Agent],ArrFrom as Arr_From " & "From ViewBooking as Booking Left Join GuestProf On GuestProf.Code=Booking.GuestProf Left Join PlanMast On Booking.PackageCode=PlanMast.Code Left Join Roomcat On Roomcat.code=Booking.RoomCat Left Join Subgroup S On Booking.Company=S.SubCode LEFT JOIN SubGroup sg ON Booking.TravelAgency = sg.SubCode where RoomType='RO' And Cancel='N' And ") 'String
  loc_F744A0: Proc_6_7_F25D88(var_A8, MemVar_1F920EC)
  loc_F744AC: var_D8 = " >=Booking.Arrdate and "
  loc_F744C0: Proc_6_7_F25D88(var_108, MemVar_1F920EC)
  loc_F744CC: var_128 = " < Booking.Depdate And Not Exists(Select Distinct isnull(BookingDocid,'') As BookingDocid,BookingSno From GuestFolio inner Join  RoomOcc on RoomOcc.docid=GuestFolio.Docid Where Booking.DocId=GuestFolio.BookingDocId And Booking.Sno=GuestFolio.BookingSno And RoomType='RO' And "
  loc_F744E0: Proc_6_7_F25D88(var_158, MemVar_1F920EC)
  loc_F744EC: var_178 = " >= RoomOcc.ChkInDate AND (type is NUll or Type='' or Type='O')) Order by Booking.ResStatus,Booking.ArrDate,Guest_Name,Res_No,Booking.Sno"
  loc_F744F6: MemVar_1F920E4 = CStr(var_B8 & var_A8 & var_D8 & var_108 & var_128 & var_158 & var_178)
  loc_F74527: unk_52FB6A.Execute MemVar_1F920E4, var_A8, -1
  loc_F7454F: If (var_18C.RecordCount = 0) Then
  loc_F74557:   Set var_88 = Nothing
  loc_F7455A:   Exit Sub
  loc_F7455B: End If
  loc_F74561: MemVar_1F92120 = Me
  loc_F7456E: Proc_6_126_F1BCC0("600,2000,1100,1400,1100,650,1100,650,700,800,1200,1200,0,0,0,1600,2000,1400", var_18C)
  loc_F7457F: Call 0.Method_arg_54 ("Arrival List")
  loc_F74597: Call 0.Method_arg_2B0 (1, var_D8)
  loc_F745A1: Set var_88 = Nothing
  loc_F745A4: Exit Sub
  loc_F745A5: ' Referenced from: F74488
  loc_F745A5: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_F745AA: Exit Sub
End Sub

Public Property Get PGuestName() 'E1489C
  'Data Table: 52FB64
  loc_E14890: var_88 = global_56
  loc_E14893: PGuestName = 
  loc_E14899: If  Then Exit Sub
  loc_E14899: End If
End Sub

Public Property Let PGuestName(vNewValue) 'E1477C
  'Data Table: 52FB64
  loc_E14774: global_56 = vNewValue
  loc_E14778: Exit Sub
End Sub

Public Property Get PRoomNo() 'E1099C
  'Data Table: 52FB64
  loc_E10990: var_88 = global_60
  loc_E10993: PRoomNo = 
End Sub

Public Property Let PRoomNo(vNewValue) 'E0D594
  'Data Table: 52FB64
  loc_E0D583: var_88 = vNewValue
  loc_E0D58F: global_60 = global_60
  loc_E0D593: Exit Sub
End Sub

Public Sub MadFaSelGridKeyPress(Txt, FGrid, Rst, KeyAscii, FindFldName, CellBackColEnter, CellBackColLeave) '1125504
  'Data Table: 52FB64
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_E0 As Variant
  Dim KeyAscii As Integer
  loc_11251BB: If (.rows < 1) Then
  loc_11251BE:   Exit Sub
  loc_11251BF: End If
  loc_11251D3: If (Me.RecordCount <= 0) Then
  loc_11251DF:   Me.TEXT = vbNullString
  loc_11251E3:   Exit Sub
  loc_11251E4: End If
  loc_11251F9: If ((CLng(KeyAscii) = &H1B) Or (CLng(KeyAscii) = &HD)) Then
  loc_11251FC:   Exit Sub
  loc_11251FD: End If
  loc_1125207: If (CLng(KeyAscii) = 8) Then
  loc_1125221:   If (Len(Me.SelText) > 1) Then
  loc_1125235:     var_E0 = (Len(Me.SelText) - 1)
  loc_112523D:     Me.SelLength = var_E0
  loc_112524D:     var_8C = CStr(Me.SelText)
  loc_1125256:   Else
  loc_112525F:     Me.TEXT = vbNullString
  loc_1125266:     Call .SetFocus
  loc_1125274:     Me.Visible = False
  loc_1125278:     Exit Sub
  loc_1125279:   End If
  loc_112527C: Else
  loc_1125293:   var_E0 = (Me.SelText + Chr(CLng(KeyAscii)))
  loc_1125298:   var_8C = CStr(var_E0)
  loc_11252A4: End If
  loc_11252C1: var_8C = Replace(var_8C, "'", "''", 1, -1, 0)
  loc_11252C7: Me.Recordset15.MoveFirst
  loc_1125304: If (Me.Recordset15.Fields.Item(CVar(FindFldName)).Type = 3) Then
  loc_1125347:   Me.Recordset15.Find vbNullString & FindFldName & " >=" & CStr(Val(var_8C)) & vbNullString, 0, 1
  loc_112535C: Else
  loc_112538C:   Me.Recordset15.Find vbNullString & FindFldName & " like '" & var_8C & "*'", 0, 1
  loc_112539C: End If
  loc_112539E: KeyAscii = 0
  loc_11253CA: If ((Me.Recordset15.AbsolutePosition <> -3) And (Me.Recordset15.AbsolutePosition <> -2)) Then
  loc_11253E3:   .Row = CVar(Me.Recordset15.AbsolutePosition)
  loc_1125416:   Me.TEXT = Me.Recordset15.Fields.Item(CVar(FindFldName)).Value
  loc_1125430:   Me.SelLength = CVar(Len(var_8C))
  loc_1125444:   var_E0 = (.CellLeft + .left)
  loc_112544C:   Me.left = var_E0
  loc_1125469:   var_E0 = (.CellTop + .top)
  loc_1125471:   Me.top = var_E0
  loc_1125490:   If (Me.Visible = False) Then
  loc_112549A:     Me.Visible = True
  loc_112549E:     var_9C = 0
  loc_11254A7:     Call Me.ZOrder
  loc_11254B0:     Call Me.SetFocus
  loc_11254C2:     Me.BackColor = .CellBackColor
  loc_11254D5:     Me.ForeColor = .CellForeColor
  loc_11254E8:     Me.width = .CellWidth
  loc_11254FB:     Me.height = .CellHeight
  loc_1125502:   End If
  loc_1125502: End If
  loc_1125502: Exit Sub
End Sub

Public Sub Proc_52_33_1500598
  'Data Table: 52FB64
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_144 As Variant
  Dim var_14C As Variant
  Dim var_DC As Integer
  Dim unk_52FB6A As Connection15
  Dim var_18C As Variant
  Dim var_1AC As Variant
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_28C As Variant
  Dim var_2DC As Variant
  Dim var_2E4 As String
  Dim var_2E8 As String
  Dim var_2EC As String
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_1BC As Integer
  Dim var_300 As Fields15
  Dim var_304 As Field20
  loc_14FF73C: On Error Resume Next
  loc_14FF756: var_A2 = CByte(CLng(Me.FGrid.Row)) 'Byte
  loc_14FF787: For var_BC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_BC 'Integer
  loc_14FF793:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14FF798:   var_EC = &H1C2
  loc_14FF7A5:   Set var_A8 = Me.FGrid
  loc_14FF7AB:   LateIdCallSt
  loc_14FF7BC:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14FF7DF:   var_10C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14FF801:   If CBool(Trim(var_10C) <> vbNullString) Then
  loc_14FF817:     var_B8 = Me.FGrid.Cols
  loc_14FF82E:     For var_140 = CByte(1) To CByte((CLng(var_B8) - 1)): var_8E = var_140 'Byte
  loc_14FF849:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_14FF867:       Me.FGrid.Col = CVar(CLng(var_8E))
  loc_14FF87D:       Set var_A8 = Me.Label2
  loc_14FF883:       Call 0.Method_Proc_52_33_15005980 (4, var_144, var_148, CByte(1), &H11)
  loc_14FF88B:       var_CC = var_144.BackColor
  loc_14FF8A2:       Me.FGrid.CellBackColor = CVar(var_148)
  loc_14FF8B5:     Next var_140 'Byte
  loc_14FF8BB:   End If
  loc_14FF8C5:   var_DC = 0
  loc_14FF8E4:   unk_52FB6A.Execute "Select getDate()", var_B8, -1
  loc_14FF8EC:   var_A8 = var_A8.Fields
  loc_14FF8F4:   var_DC = var_144.Item(var_144)
  loc_14FF8FC:   var_14C = var_14C.Value
  loc_14FF921:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14FF929:   var_EC = CVar(CLng(5)) 'Long
  loc_14FF949:   var_11C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14FF952:   var_18C = CVar(CLng(var_86)) 'Long
  loc_14FF95A:   var_1AC = CVar(CLng(&H17)) 'Long
  loc_14FF963:   Set var_144 = Me.FGrid
  loc_14FF9D8:   var_13C = "dd/MMM/yyyy"
  loc_14FF9F1:   var_17C = (Format(var_11C, var_13C) + " ")
  loc_14FFA18:   var_22C = (1 + Format(Trim(CVar(CStr(var_144.TextMatrix)))), "hh:nn"))
  loc_14FFA26:   var_28C = (Format(MemVar_1F920EC, "dd/MMM/yyyy") + " ")
  loc_14FFA2D:   var_2DC = (var_28C + Format(CDate(CVar(CStr(Me.FGrid.TextMatrix)))), "hh:nn"))
  loc_14FFA66:   If (CDate(var_22C) <= CDate(var_2DC)) Then
  loc_14FFA93:     For var_2E0 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)): var_8E = var_2E0 'Byte
  loc_14FFAAE:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_14FFACC:       Me.FGrid.Col = CVar(CLng(var_8E))
  loc_14FFAE2:       Set var_A8 = Me.Label2
  loc_14FFAE8:       Call 0.Method_Proc_52_33_15005980 (5, var_144, var_148, CByte(1), 1, var_17C, 1)
  loc_14FFAF0:       1 = var_144.BackColor
  loc_14FFB07:       Me.FGrid.CellBackColor = CVar(var_148)
  loc_14FFB1A:     Next var_2E0 'Byte
  loc_14FFB20:   End If
  loc_14FFB28:   var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFB30:   var_EC = CVar(CLng(&HF)) 'Long
  loc_14FFB4A:   var_2E4 = CStr(Me.FGrid.TextMatrix))
  loc_14FFB56:   var_12C = CVar(CLng(var_86)) 'Long
  loc_14FFB9B:   If (CVar(CLng(&HF)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_14FFBA4:     var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFBAC:     var_EC = CVar(CLng(3)) 'Long
  loc_14FFBC6:     var_2E4 = CStr(Me.FGrid.TextMatrix))
  loc_14FFBCD:     var_12C = CVar(CLng(var_86)) 'Long
  loc_14FFBDE:     Set var_144 = Me.FGrid
  loc_14FFBE4:     var_10C = var_144.TextMatrix)
  loc_14FFC09:     If (CVar(CLng(&HF)) = CStr(var_10C)) Then
  loc_14FFC12:       var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFC1A:       var_EC = CVar(CLng(&H13)) 'Long
  loc_14FFC54:       var_2EC = "Select Distinct Bill_No from paycharge where FolionodOCID='" & CStr(Me.FGrid.TextMatrix)) & "' and (Bill_No<>'' or bill_no is Not Null)"
  loc_14FFC5D:       unk_52FB6A.Execute var_2EC, var_10C, -1
  loc_14FFC68:       Set var_8C = var_144
  loc_14FFC98:       If (var_8C.RecordCount > 0) Then
  loc_14FFCA6:         var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_14FFCAB:       End If
  loc_14FFCC1:       If (var_8C.RecordCount > 0) Then
  loc_14FFCCA:         var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFCD2:         var_EC = CVar(CLng(&H13)) 'Long
  loc_14FFD05:         var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and folionodOCID='" & CStr(Me.FGrid.TextMatrix))
  loc_14FFD15:         unk_52FB6A.Execute var_2E8 & "'", var_10C, -1
  loc_14FFD20:         Set var_94 = var_144
  loc_14FFD50:         If (var_94.RecordCount > 0) Then
  loc_14FFD5E:           var_94.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_14FFD63:         End If
  loc_14FFD6B:         var_148 = var_94.RecordCount
  loc_14FFD79:         If (var_148 > 0) Then
  loc_14FFD7E:           GoTo loc_150051E
  loc_14FFD81:         End If
  loc_14FFD94:         var_B8 = Me.FGrid.Cols
  loc_14FFDAB:         For var_2F0 = CByte(1) To CByte((CLng(var_B8) - 1)): var_8E = var_2F0 'Byte
  loc_14FFDC6:           Me.FGrid.Row = CVar(CLng(var_86))
  loc_14FFDE4:           Me.FGrid.Col = CVar(CLng(var_8E))
  loc_14FFDFA:           Set var_A8 = Me.Label2
  loc_14FFE00:           Call 0.Method_Proc_52_33_15005980 (1, var_144, var_148, CByte(1), var_144, var_B8, var_EC)
  loc_14FFE08:           var_CC = var_144.BackColor
  loc_14FFE1F:           Me.FGrid.CellBackColor = CVar(var_148)
  loc_14FFE32:         Next var_2F0 'Byte
  loc_14FFE38:       End If
  loc_14FFE5B:       If (CLng(Me.FGrid.Rows) > 1) Then
  loc_14FFE73:         Me.FGrid.Row = 1
  loc_14FFE7B:       End If
  loc_14FFE7E:     Else
  loc_14FFE86:       var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFE8E:       var_EC = CVar(CLng(&H13)) 'Long
  loc_14FFEC8:       var_2EC = "Select Distinct Bill_No from paycharge where FolioNoDocid='" & CStr(Me.FGrid.TextMatrix)) & "' and (ModeSet<>'S' OR ModeSet is NULL or Modeset='') and (Bill_No<>'' or bill_no is Not Null)"
  loc_14FFED1:       unk_52FB6A.Execute var_2EC, var_10C, -1
  loc_14FFEDC:       Set var_8C = var_144
  loc_14FFEFE:       var_148 = var_8C.RecordCount
  loc_14FFF0C:       If (var_148 <= 0) Then
  loc_14FFF15:         var_CC = CVar(CLng(var_86)) 'Long
  loc_14FFF1D:         var_EC = CVar(CLng(3)) 'Long
  loc_14FFF3C:         var_12C = CVar(CLng(var_86)) 'Long
  loc_14FFF44:         var_18C = CVar(CLng(&H14)) 'Long
  loc_14FFF4D:         Set var_144 = Me.FGrid
  loc_14FFF53:         var_10C = var_144.TextMatrix)
  loc_14FFF65:         var_1BC = 0
  loc_14FFF8D:         var_2EC = "Select COunt(*) from paycharge where Bill_No<>'' and RelatedFolioNo=" & CStr(Me.FGrid.TextMatrix)) & " and FolioNODocid='"
  loc_14FFFA8:         unk_52FB6A.Execute var_2EC & CStr(var_10C) & "'", var_11C, -1
  loc_14FFFB0:         var_14C = var_14C.Fields
  loc_14FFFB8:         var_1BC = var_300.Item(var_300)
  loc_14FFFC0:         var_304 = var_304.Value
  loc_14FFFF7:         If (var_13C > 0) Then
  loc_1500024:           For var_308 = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)):   var_8E = var_308 'Byte
  loc_150003F:             Me.FGrid.Row = CVar(CLng(var_86))
  loc_150005D:             Me.FGrid.Col = CVar(CLng(var_8E))
  loc_1500073:             Set var_A8 = Me.Label2
  loc_1500079:             Call 0.Method_Proc_52_33_15005980 (1, var_144, var_148, CByte(1), var_13C, var_10C)
  loc_1500081:             var_18C = var_144.BackColor
  loc_1500098:             Me.FGrid.CellBackColor = CVar(var_148)
  loc_15000AB:           Next var_308 'Byte
  loc_15000B4:         Else
  loc_15000BB:         Else
  loc_15000C0:         Else
  loc_15000CD:           var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_15000E8:           If (var_8C.RecordCount > 0) Then
  loc_15000F1:             var_CC = CVar(CLng(var_86)) 'Long
  loc_15000F9:             var_EC = CVar(CLng(&H13)) 'Long
  loc_150012C:             var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet<>'S' OR ModeSet is NULL) and folionoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_150013C:             unk_52FB6A.Execute var_2E8 & "'", var_10C, -1
  loc_1500147:             Set var_94 = var_144
  loc_1500177:             If (var_94.RecordCount > 0) Then
  loc_1500185:               var_94.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_150018A:             End If
  loc_1500192:             var_148 = var_94.RecordCount
  loc_15001A0:             If (var_148 > 0) Then
  loc_15001A5:               GoTo loc_150051E
  loc_15001A8:             End If
  loc_15001D2:             For var_30C = CByte(1) To CByte((CLng(Me.FGrid.Cols) - 1)):       var_8E = var_30C 'Byte
  loc_15001ED:               Me.FGrid.Row = CVar(CLng(var_86))
  loc_150020B:               Me.FGrid.Col = CVar(CLng(var_8E))
  loc_1500221:               Set var_A8 = Me.Label2
  loc_1500227:               Call 0.Method_Proc_52_33_15005980 (1, var_144, var_148, CByte(1))
  loc_150022F:               var_144 = var_144.BackColor
  loc_1500246:               Me.FGrid.CellBackColor = CVar(var_148)
  loc_1500259:             Next var_30C 'Byte
  loc_150025F:           End If
  loc_1500282:           If (CLng(Me.FGrid.Rows) > 1) Then
  loc_150029A:             Me.FGrid.Row = 1
  loc_15002A2:           End If
  loc_15002A2:         End If
  loc_15002A4:       End If
  loc_15002A9:     Else
  loc_15002B1:       var_CC = CVar(CLng(var_86)) 'Long
  loc_15002B9:       var_EC = CVar(CLng(&H13)) 'Long
  loc_15002F3:       var_2EC = "Select Distinct Bill_No from paycharge where FolionoDocid='" & CStr(Me.FGrid.TextMatrix)) & "' and (ModeSet<>'S' OR ModeSet is NULL) and (Bill_No<>'' and bill_no is Not Null)"
  loc_15002FC:       unk_52FB6A.Execute var_2EC, var_10C, -1
  loc_1500307:       Set var_8C = var_144
  loc_1500337:       If (var_8C.RecordCount > 0) Then
  loc_1500345:         var_8C.Filter = "Bill_No<>NULL and BIll_No<>''"
  loc_150034A:       End If
  loc_1500360:       If (var_8C.RecordCount > 0) Then
  loc_1500369:         var_CC = CVar(CLng(var_86)) 'Long
  loc_1500371:         var_EC = CVar(CLng(&H13)) 'Long
  loc_15003A4:         var_2E8 = "Select  bill_no,AmtDr,RoomNo from paycharge where (ContraDocId is NULL or contradocid='') and (ModeSet<>'S' OR ModeSet is NULL) and folionoDocid='" & CStr(Me.FGrid.TextMatrix))
  loc_15003B4:         unk_52FB6A.Execute var_2E8 & "'", var_10C, -1
  loc_15003BF:         Set var_94 = var_144
  loc_15003EF:         If (var_94.RecordCount > 0) Then
  loc_15003FD:           var_94.Filter = "Bill_No='' and AmtDr<>0"
  loc_1500402:         End If
  loc_150040C:         var_148 = var_94.RecordCount
  loc_150041A:         If (var_148 > 0) Then
  loc_150041F:           GoTo loc_150051E
  loc_1500422:         End If
  loc_1500435:         var_B8 = Me.FGrid.Cols
  loc_150044C:         For var_310 = CByte(1) To CByte((CLng(var_B8) - 1)):     var_8E = var_310 'Byte
  loc_1500467:           Me.FGrid.Row = CVar(CLng(var_86))
  loc_1500485:           Me.FGrid.Col = CVar(CLng(var_8E))
  loc_150049B:           Set var_A8 = Me.Label2
  loc_15004A1:           Call 0.Method_Proc_52_33_15005980 (1, var_144, var_148, CByte(1), var_144, var_B8)
  loc_15004A9:           var_EC = var_144.BackColor
  loc_15004C0:           Me.FGrid.CellBackColor = CVar(var_148)
  loc_15004D3:         Next var_310 'Byte
  loc_15004D9:       End If
  loc_15004FC:       If (CLng(Me.FGrid.Rows) > 1) Then
  loc_1500514:         Me.FGrid.Row = 1
  loc_150051C:       End If
  loc_150051C:     End If
  loc_150051E:     ' Referenced from:   150041F
  loc_150051E:     ' Referenced from:   15001A5
  loc_150051E:   End If
  loc_150051E:   ' Referenced from: 14FFD7E
  loc_1500523: Next var_BC 'Integer
  loc_150053E: Me.FGrid.Row = CVar(CLng(var_A2))
  loc_1500561: var_CC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_1500570: Me.FGrid.ColSel = CVar(CLng(var_A2))
  loc_1500586: Set var_8C = Nothing
  loc_1500590: Set var_98 = Nothing
  loc_1500595: Exit Sub
End Sub

Public Sub Proc_52_34_E51DA0
  'Data Table: 52FB64
  loc_E51D8D: MsgBox("aa", 0, var_C4, var_E4, var_104)
  loc_E51D9D: Exit Sub
End Sub

Public Sub Proc_52_35_14342C4
  'Data Table: 52FB64
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_104 As MSHFlexGrid
  loc_14337DC: Set var_88 = Me.FGrid
  loc_14337EA: var_88.Left = CVar(CDbl(0))
  loc_14337FB: var_88.Cols = &H19
  loc_1433800: var_98 = 0
  loc_1433809: var_B8 = &H20D
  loc_1433815: LateIdCallSt
  loc_1433820: var_98 = CVar(CLng(0)) 'Long
  loc_1433825: var_B8 = &H221
  loc_1433831: LateIdCallSt
  loc_1433839: var_98 = 0
  loc_1433845: var_B8 = CVar(CLng(1)) 'Long
  loc_143384A: var_D8 = "Room No."
  loc_1433853: LateIdCallSt
  loc_143385E: var_98 = CVar(CLng(1)) 'Long
  loc_1433869: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433870: LateIdCallSt
  loc_143387B: var_98 = CVar(CLng(1)) 'Long
  loc_1433880: var_B8 = &H28A
  loc_143388C: LateIdCallSt
  loc_1433897: var_98 = CVar(CLng(2)) 'Long
  loc_143389C: var_B8 = 0
  loc_14338A8: LateIdCallSt
  loc_14338B0: var_98 = 0
  loc_14338BC: var_B8 = CVar(CLng(3)) 'Long
  loc_14338C1: var_D8 = "Folio No."
  loc_14338CA: LateIdCallSt
  loc_14338D5: var_98 = CVar(CLng(3)) 'Long
  loc_14338E0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14338E7: LateIdCallSt
  loc_14338F2: var_98 = CVar(CLng(3)) 'Long
  loc_14338FD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433904: LateIdCallSt
  loc_143390F: var_98 = CVar(CLng(3)) 'Long
  loc_1433914: var_B8 = &H28A
  loc_1433920: LateIdCallSt
  loc_1433928: var_98 = 0
  loc_1433934: var_B8 = CVar(CLng(4)) 'Long
  loc_1433939: var_D8 = "Arrival Date"
  loc_1433942: LateIdCallSt
  loc_143394D: var_98 = CVar(CLng(4)) 'Long
  loc_1433958: var_B8 = CVar(CInt(1)) 'Integer
  loc_143395F: LateIdCallSt
  loc_143396A: var_98 = CVar(CLng(4)) 'Long
  loc_1433975: var_B8 = CVar(CInt(1)) 'Integer
  loc_143397C: LateIdCallSt
  loc_1433987: var_98 = CVar(CLng(4)) 'Long
  loc_143398C: var_B8 = &H38E
  loc_1433998: LateIdCallSt
  loc_14339A0: var_98 = 0
  loc_14339AC: var_B8 = CVar(CLng(5)) 'Long
  loc_14339B1: var_D8 = "Depature Date"
  loc_14339BA: LateIdCallSt
  loc_14339C5: var_98 = CVar(CLng(5)) 'Long
  loc_14339D0: var_B8 = CVar(CInt(1)) 'Integer
  loc_14339D7: LateIdCallSt
  loc_14339E2: var_98 = CVar(CLng(5)) 'Long
  loc_14339ED: var_B8 = CVar(CInt(1)) 'Integer
  loc_14339F4: LateIdCallSt
  loc_14339FF: var_98 = CVar(CLng(5)) 'Long
  loc_1433A04: var_B8 = &H38E
  loc_1433A10: LateIdCallSt
  loc_1433A18: var_98 = 0
  loc_1433A24: var_B8 = CVar(CLng(6)) 'Long
  loc_1433A29: var_D8 = "Guest Name"
  loc_1433A32: LateIdCallSt
  loc_1433A3D: var_98 = CVar(CLng(6)) 'Long
  loc_1433A48: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433A4F: LateIdCallSt
  loc_1433A5A: var_98 = CVar(CLng(6)) 'Long
  loc_1433A65: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433A6C: LateIdCallSt
  loc_1433A77: var_98 = CVar(CLng(6)) 'Long
  loc_1433A7C: var_B8 = &H7D0
  loc_1433A88: LateIdCallSt
  loc_1433A90: var_98 = 0
  loc_1433A9C: var_B8 = CVar(CLng(7)) 'Long
  loc_1433AA1: var_D8 = "Guest Status"
  loc_1433AAA: LateIdCallSt
  loc_1433AB5: var_98 = CVar(CLng(7)) 'Long
  loc_1433AC0: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433AC7: LateIdCallSt
  loc_1433AD2: var_98 = CVar(CLng(7)) 'Long
  loc_1433ADD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433AE4: LateIdCallSt
  loc_1433AEF: var_98 = CVar(CLng(7)) 'Long
  loc_1433AF4: var_B8 = &H2BC
  loc_1433B00: LateIdCallSt
  loc_1433B08: var_98 = 0
  loc_1433B14: var_B8 = CVar(CLng(8)) 'Long
  loc_1433B19: var_D8 = "Company/Travel Agent"
  loc_1433B22: LateIdCallSt
  loc_1433B2D: var_98 = CVar(CLng(8)) 'Long
  loc_1433B38: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433B3F: LateIdCallSt
  loc_1433B4A: var_98 = CVar(CLng(8)) 'Long
  loc_1433B55: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433B5C: LateIdCallSt
  loc_1433B67: var_98 = CVar(CLng(8)) 'Long
  loc_1433B6C: var_B8 = &H7D0
  loc_1433B78: LateIdCallSt
  loc_1433B80: var_98 = 0
  loc_1433B8C: var_B8 = CVar(CLng(9)) 'Long
  loc_1433B91: var_D8 = "Address"
  loc_1433B9A: LateIdCallSt
  loc_1433BA5: var_98 = CVar(CLng(9)) 'Long
  loc_1433BB0: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433BB7: LateIdCallSt
  loc_1433BC2: var_98 = CVar(CLng(9)) 'Long
  loc_1433BCD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433BD4: LateIdCallSt
  loc_1433BDF: var_98 = CVar(CLng(9)) 'Long
  loc_1433BE4: var_B8 = &H7D0
  loc_1433BF0: LateIdCallSt
  loc_1433BF8: var_98 = 0
  loc_1433C04: var_B8 = CVar(CLng(&HA)) 'Long
  loc_1433C09: var_D8 = "Address2"
  loc_1433C12: LateIdCallSt
  loc_1433C1D: var_98 = CVar(CLng(&HA)) 'Long
  loc_1433C28: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433C2F: LateIdCallSt
  loc_1433C3A: var_98 = CVar(CLng(&HA)) 'Long
  loc_1433C45: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433C4C: LateIdCallSt
  loc_1433C57: var_98 = CVar(CLng(&HA)) 'Long
  loc_1433C5C: var_B8 = 0
  loc_1433C68: LateIdCallSt
  loc_1433C70: var_98 = 0
  loc_1433C7C: var_B8 = CVar(CLng(&HB)) 'Long
  loc_1433C81: var_D8 = "City"
  loc_1433C8A: LateIdCallSt
  loc_1433C95: var_98 = CVar(CLng(&HB)) 'Long
  loc_1433CA0: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433CA7: LateIdCallSt
  loc_1433CB2: var_98 = CVar(CLng(&HB)) 'Long
  loc_1433CBD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433CC4: LateIdCallSt
  loc_1433CCF: var_98 = CVar(CLng(&HB)) 'Long
  loc_1433CD4: var_B8 = &H3E8
  loc_1433CE0: LateIdCallSt
  loc_1433CE8: var_98 = 0
  loc_1433CF4: var_B8 = CVar(CLng(&HC)) 'Long
  loc_1433CF9: var_D8 = "State"
  loc_1433D02: LateIdCallSt
  loc_1433D0D: var_98 = CVar(CLng(&HC)) 'Long
  loc_1433D18: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433D1F: LateIdCallSt
  loc_1433D2A: var_98 = CVar(CLng(&HC)) 'Long
  loc_1433D35: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433D3C: LateIdCallSt
  loc_1433D47: var_98 = CVar(CLng(&HC)) 'Long
  loc_1433D4C: var_B8 = 0
  loc_1433D58: LateIdCallSt
  loc_1433D60: var_98 = 0
  loc_1433D6C: var_B8 = CVar(CLng(&HD)) 'Long
  loc_1433D71: var_D8 = "Country"
  loc_1433D7A: LateIdCallSt
  loc_1433D85: var_98 = CVar(CLng(&HD)) 'Long
  loc_1433D90: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433D97: LateIdCallSt
  loc_1433DA2: var_98 = CVar(CLng(&HD)) 'Long
  loc_1433DAD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433DB4: LateIdCallSt
  loc_1433DBF: var_98 = CVar(CLng(&HD)) 'Long
  loc_1433DC4: var_B8 = &H3E8
  loc_1433DD0: LateIdCallSt
  loc_1433DDB: var_98 = CVar(CLng(&HE)) 'Long
  loc_1433DE0: var_B8 = 0
  loc_1433DEC: LateIdCallSt
  loc_1433DF7: var_98 = CVar(CLng(&HF)) 'Long
  loc_1433DFC: var_B8 = 0
  loc_1433E08: LateIdCallSt
  loc_1433E13: var_98 = CVar(CLng(&H10)) 'Long
  loc_1433E18: var_B8 = 0
  loc_1433E24: LateIdCallSt
  loc_1433E2C: var_98 = &H11
  loc_1433E35: var_B8 = 0
  loc_1433E41: LateIdCallSt
  loc_1433E49: var_98 = 0
  loc_1433E55: var_B8 = CVar(CLng(&H12)) 'Long
  loc_1433E5A: var_D8 = "Plan"
  loc_1433E63: LateIdCallSt
  loc_1433E6E: var_98 = CVar(CLng(&H12)) 'Long
  loc_1433E79: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433E80: LateIdCallSt
  loc_1433E8B: var_98 = CVar(CLng(&H12)) 'Long
  loc_1433E96: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433E9D: LateIdCallSt
  loc_1433EA8: var_98 = CVar(CLng(&H12)) 'Long
  loc_1433EAD: var_B8 = &H3E8
  loc_1433EB9: LateIdCallSt
  loc_1433EC4: var_98 = CVar(CLng(&H13)) 'Long
  loc_1433EC9: var_B8 = 0
  loc_1433ED5: LateIdCallSt
  loc_1433EE0: var_98 = CVar(CLng(&H14)) 'Long
  loc_1433EE5: var_B8 = 0
  loc_1433EF1: LateIdCallSt
  loc_1433EF9: var_98 = 0
  loc_1433F05: var_B8 = CVar(CLng(&H15)) 'Long
  loc_1433F0A: var_D8 = "Label"
  loc_1433F13: LateIdCallSt
  loc_1433F1E: var_98 = CVar(CLng(&H15)) 'Long
  loc_1433F29: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433F30: LateIdCallSt
  loc_1433F3B: var_98 = CVar(CLng(&H15)) 'Long
  loc_1433F46: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433F4D: LateIdCallSt
  loc_1433F58: var_98 = CVar(CLng(&H15)) 'Long
  loc_1433F5D: var_B8 = &H258
  loc_1433F69: LateIdCallSt
  loc_1433F71: var_98 = 0
  loc_1433F7D: var_B8 = CVar(CLng(&H16)) 'Long
  loc_1433F82: var_D8 = "Arr. Time"
  loc_1433F8B: LateIdCallSt
  loc_1433F96: var_98 = CVar(CLng(&H16)) 'Long
  loc_1433FA1: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433FA8: LateIdCallSt
  loc_1433FB3: var_98 = CVar(CLng(&H16)) 'Long
  loc_1433FBE: var_B8 = CVar(CInt(1)) 'Integer
  loc_1433FC5: LateIdCallSt
  loc_1433FD0: var_98 = CVar(CLng(&H16)) 'Long
  loc_1433FD5: var_B8 = &H1F4
  loc_1433FE1: LateIdCallSt
  loc_1433FE9: var_98 = 0
  loc_1433FF5: var_B8 = CVar(CLng(&H17)) 'Long
  loc_1433FFA: var_D8 = "Dep. Time"
  loc_1434003: LateIdCallSt
  loc_143400E: var_98 = CVar(CLng(&H17)) 'Long
  loc_1434019: var_B8 = CVar(CInt(1)) 'Integer
  loc_1434020: LateIdCallSt
  loc_143402B: var_98 = CVar(CLng(&H17)) 'Long
  loc_1434036: var_B8 = CVar(CInt(1)) 'Integer
  loc_143403D: LateIdCallSt
  loc_1434048: var_98 = CVar(CLng(&H17)) 'Long
  loc_143404D: var_B8 = 0
  loc_1434059: LateIdCallSt
  loc_1434061: var_98 = 0
  loc_143406D: var_B8 = CVar(CLng(&H18)) 'Long
  loc_1434072: var_D8 = "Pax"
  loc_143407B: LateIdCallSt
  loc_1434086: var_98 = CVar(CLng(&H18)) 'Long
  loc_1434091: var_B8 = CVar(CInt(4)) 'Integer
  loc_1434098: LateIdCallSt
  loc_14340A3: var_98 = CVar(CLng(&H18)) 'Long
  loc_14340AE: var_B8 = CVar(CInt(4)) 'Integer
  loc_14340B5: LateIdCallSt
  loc_14340C0: var_98 = CVar(CLng(&H18)) 'Long
  loc_14340C5: var_B8 = &H1F4
  loc_14340D1: LateIdCallSt
  loc_14340DB: Set var_88 = Nothing 
  loc_1434101: Me.FGrid2.Rows = CVar(CLng(Me.FGrid.Rows))
  loc_1434114: Set var_104 = Me.FGrid2
  loc_1434122: var_104.Left = CVar(CDbl(0))
  loc_1434142: var_104.Top = CVar(CDbl(Me.FGrid.Top))
  loc_1434168: var_104.Height = CVar(CDbl(Me.FGrid.Height))
  loc_143417F: var_104.Cols = 2
  loc_1434184: var_98 = 0
  loc_143418D: var_B8 = &H20D
  loc_1434199: LateIdCallSt
  loc_14341A1: var_98 = 0
  loc_14341AA: var_B8 = 0
  loc_14341B6: LateIdCallSt
  loc_14341FA: var_104.FontFixed.FormatString = CVar(CCur(Me.FGrid.FontFixed.FormatString))
  loc_143422C: var_104.ForeColorFixed = CVar(CLng(Me.FGrid.ForeColorFixed))
  loc_1434252: var_104.BackColorFixed = CVar(CLng(Me.FGrid.BackColorFixed))
  loc_143425D: var_98 = 0
  loc_1434266: var_B8 = 1
  loc_143426F: var_D8 = "Msg."
  loc_1434278: LateIdCallSt
  loc_1434280: var_98 = 1
  loc_143428F: var_B8 = CVar(CInt(4)) 'Integer
  loc_1434296: LateIdCallSt
  loc_143429E: var_98 = 1
  loc_14342A7: var_B8 = &H221
  loc_14342B3: LateIdCallSt
  loc_14342BD: Set var_104 = Nothing 
  loc_14342C1: Exit Sub
End Sub

Public Sub Proc_52_36_136A99C(arg_C) '136A99C
  'Data Table: 52FB64
  Dim var_88 As Integer
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_13C As Variant
  Dim var_15C As Byte
  Dim var_1C0 As Variant
  Dim var_1E0 As Byte
  Dim var_230 As Variant
  Dim var_250 As Integer
  Dim var_2A0 As Variant
  Dim var_2C0 As Byte
  Dim var_310 As Variant
  Dim var_330 As Byte
  Dim var_380 As Variant
  Dim var_3A0 As Byte
  Dim var_3F0 As Variant
  Dim var_410 As Byte
  Dim var_4AC As Variant
  Dim var_8C As MSHFlexGrid
  loc_136A233: Call 0.Method_arg_A4 (CInt(&HB))
  loc_136A23B: var_88 = arg_C
  loc_136A244: If (var_88 = 0) Then
  loc_136A253:   var_8C = Me.Global.Screen
  loc_136A268:   var_B8 = Screen.ActiveForm.FGrid.Row
  loc_136A26F:   var_D8 = &HF
  loc_136A282:   var_A4 = Me.Global.Screen
  loc_136A2B7:   var_110 = Me.Global.Screen
  loc_136A2CC:   var_13C = Screen.ActiveForm.FGrid.Row
  loc_136A2D3:   var_15C = 3
  loc_136A2E6:   var_128 = Me.Global.Screen
  loc_136A31B:   var_194 = Me.Global.Screen
  loc_136A330:   var_1C0 = Screen.ActiveForm.FGrid.Row
  loc_136A337:   var_1E0 = &H10
  loc_136A34A:   var_1AC = Me.Global.Screen
  loc_136A375:   var_204 = Me.Global.Screen
  loc_136A38A:   var_230 = Screen.ActiveForm.FGrid.Row
  loc_136A391:   var_250 = 17
  loc_136A3A3:   var_21C = Me.Global.Screen
  loc_136A3CE:   var_274 = Me.Global.Screen
  loc_136A3E3:   var_2A0 = Screen.ActiveForm.FGrid.Row
  loc_136A3EA:   var_2C0 = 1
  loc_136A3FD:   var_28C = Me.Global.Screen
  loc_136A428:   var_2E4 = Me.Global.Screen
  loc_136A43D:   var_310 = Screen.ActiveForm.FGrid.Row
  loc_136A444:   var_330 = &HE
  loc_136A457:   var_2FC = Me.Global.Screen
  loc_136A482:   var_354 = Me.Global.Screen
  loc_136A497:   var_380 = Screen.ActiveForm.FGrid.Row
  loc_136A49E:   var_3A0 = &H13
  loc_136A4B1:   var_36C = Me.Global.Screen
  loc_136A4DC:   var_3C4 = Me.Global.Screen
  loc_136A4F1:   var_3F0 = Screen.ActiveForm.FGrid.Row
  loc_136A4F8:   var_410 = &H14
  loc_136A50B:   var_3DC = Me.Global.Screen
  loc_136A520:   var_4AC = Screen.ActiveForm.FGrid.TextMatrix
  loc_136A566:   Proc_96_23_1C33AEC(MemVar_1F920EC, CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix))
  loc_136A607: Else
  loc_136A60D:   If (var_88 = 1) Then
  loc_136A61C:     var_8C = Me.Global.Screen
  loc_136A64D:     If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_136A663:       var_8C = Me.Global.Screen
  loc_136A683:       var_F8 = (Screen.ActiveForm.FGrid.rows - 1)
  loc_136A697:       For var_4C4 = CByte(1) To CByte(Screen.ActiveForm.FGrid):   var_86 = var_4C4 'Byte
  loc_136A6A4:         var_D8 = 17
  loc_136A6B6:         var_8C = Me.Global.Screen
  loc_136A6CB:         VarLateMemCallLdRfVar
  loc_136A6F6:         If CBool(Trim(Screen.ActiveForm.FGrid) <> vbNullString) Then
  loc_136A700:           var_D8 = &HF
  loc_136A713:           var_8C = Me.Global.Screen
  loc_136A743:           var_15C = 3
  loc_136A756:           var_A4 = Me.Global.Screen
  loc_136A786:           var_1E0 = &H10
  loc_136A799:           var_110 = Me.Global.Screen
  loc_136A7BF:           var_250 = 17
  loc_136A7D1:           var_128 = Me.Global.Screen
  loc_136A7F7:           var_2C0 = 1
  loc_136A80A:           var_194 = Me.Global.Screen
  loc_136A830:           var_330 = &HE
  loc_136A843:           var_1AC = Me.Global.Screen
  loc_136A869:           var_3A0 = &H13
  loc_136A87C:           var_204 = Me.Global.Screen
  loc_136A8A2:           var_410 = &H14
  loc_136A8B5:           var_21C = Me.Global.Screen
  loc_136A8CA:           var_2A0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_136A910:           Proc_96_23_1C33AEC(MemVar_1F920EC, CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CLng(Val(CStr(Screen.ActiveForm.FGrid.TextMatrix))), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix), CStr(Screen.ActiveForm.FGrid.TextMatrix))
  loc_136A96E:         End If
  loc_136A971:       Next var_4C4 'Byte
  loc_136A977:     End If
  loc_136A977:   End If
  loc_136A977: End If
  loc_136A986: Me.FPlanGrid.Visible = False
  loc_136A995: Call 0.Method_arg_A4 (CInt(0))
  loc_136A99A: Exit Sub
End Sub

Public Sub Proc_52_37_1395F08
  'Data Table: 52FB64
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F8 As String
  Dim unk_52FB6A As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As MSHFlexGrid
  Dim var_10C As Variant
  Dim var_164 As Variant
  Dim var_C8 As Variant
  Dim var_184 As Variant
  Dim var_11C As Variant
  Dim var_1A8 As Variant
  Dim var_23C As Field20
  Dim var_274 As String
  loc_1395690: Set var_CC = Me.FGrid2
  loc_1395696: var_CC.Rows = CVar(CLng(Me.FGrid.Rows))
  loc_13956CA: For var_D0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_D0 'Integer
  loc_13956D4:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_13956D9:   var_E0 = 1
  loc_1395710:   var_F8 = "SELECT RoomOcc.FolioNo, GuestMessage.Message,Solved FROM RoomOcc LEFT JOIN GuestMessage ON RoomOcc.FolioNo = GuestMessage.FolioNo where RoomOcc.ChkoutDate is NULL AND (Solved<>'Y' or Solved is NULL) AND GuestMessage.RoomNo = '" & CStr(Me.FGrid.TextMatrix))
  loc_1395720:   unk_52FB6A.Execute var_F8 & "' order by RoomOcc.RoomNO", var_11C, -1
  loc_139572B:   Set var_8C = var_CC
  loc_1395759:   If (var_8C.RecordCount > 0) Then
  loc_1395760:     Set var_124 = Me.FGrid2
  loc_1395763:     var_B8 = vbNullString
  loc_1395780:     var_124.Col = 1
  loc_1395791:     var_124.Row = CVar(CLng(var_86))
  loc_139579F:     var_124.CellFontName = "wingdings"
  loc_13957AF:     var_124.CellFontSize = CVar(CDbl(&HC))
  loc_13957C0:     var_124.CellForeColor = &HFF0000
  loc_13957F4:     var_10C = CVar(CLng(var_86)) 'Long
  loc_13957F9:     var_164 = 1
  loc_139582B:     var_184 = CVar(CStr(IIf(IsNull(CVar(var_8C.Fields.Item("Message"))), vbNullString, "*"))) 'String
  loc_1395832:     LateIdCallSt
  loc_139584E:     Set var_124 = Nothing 
  loc_1395855:   Else
  loc_1395859:     var_B8 = CVar(CLng(var_86)) 'Long
  loc_139585E:     var_E0 = 1
  loc_1395867:     var_10C = vbNullString
  loc_1395871:     Set var_98 = Me.FGrid2
  loc_1395877:     LateIdCallSt
  loc_1395882:   End If
  loc_1395886:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_139588F:   var_B8 = CVar(CLng(var_86)) 'Long
  loc_13958AA:   var_10C = CVar(CLng(Me.FGrid.RowHeight))) 'Long
  loc_13958B3:   Set var_CC = Me.FGrid2
  loc_13958B9:   LateIdCallSt
  loc_13958CE: Next var_D0 'Integer
  loc_13958D7: Set var_98 = Me.FGrid
  loc_13958DD: var_A8 = var_98.Rows
  loc_13958EF: Set var_CC = Me.FGrid2
  loc_13958F5: var_CC.Rows = CVar(CLng(var_A8))
  loc_1395933: var_11C = CVar("SELECT Count(*) FROM RoomOcc WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type Not IN ('O','C')  AND (CHKINDATE<=") 'String
  loc_1395941: Proc_6_7_F25D88(var_A8, MemVar_1F920EC, var_11C, var_228, -1, var_98)
  loc_1395961: Proc_6_7_F25D88(var_184, MemVar_1F920EC, var_CC & var_A8 & " and  ChkOutDate IS NULL)  Or (ChkInDate <= ", 0)
  loc_1395981: Proc_6_7_F25D88(var_1C8, MemVar_1F920EC, var_23C & var_184 & " And ChkOutDate > ")
  loc_13959A1: Proc_6_7_F25D88(var_1F8, MemVar_1F920EC)
  loc_13959C0: unk_52FB6A.Execute CStr(var_24C & var_1C8 & ") OR (CHKINDATE=" & var_1F8 & " and  ChkOutDate is null)"), "OR: ", 
  loc_13959C8:  = var_98.Fields
  loc_13959D0:  = var_CC.Item()
  loc_13959D8:  = var_23C.Value
  loc_13959F2: Me.lblOccRoom.Caption = CStr(var_24C)
  loc_1395A5D: var_11C = CVar("SELECT Count(*) FROM RoomBlockOut WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') and Type ='O' And ") 'String
  loc_1395A6B: Proc_6_7_F25D88(var_A8, MemVar_1F920EC, var_11C, var_184, -1, var_98)
  loc_1395A8A: unk_52FB6A.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate"), 0, var_23C
  loc_1395A92: var_1A8 = var_98.Fields
  loc_1395A9A:  = var_CC.Item("OO:")
  loc_1395AA2:  = var_23C.Value
  loc_1395ABC: Me.Lblblockroom.Caption = CStr(var_1A8)
  loc_1395AE6: var_E0 = "OD:"
  loc_1395AF1: var_C8 = 0
  loc_1395B10: unk_52FB6A.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='D' and roommast.type='RO'", var_A8, -1
  loc_1395B18: var_98 = var_98.Fields
  loc_1395B20: var_C8 = var_CC.Item(var_CC)
  loc_1395B28: var_23C = var_23C.Value
  loc_1395B42: Me.LBLOD.Caption = CStr(var_11C & var_11C)
  loc_1395B5E: var_E0 = "TR:"
  loc_1395B69: var_C8 = 0
  loc_1395B88: unk_52FB6A.Execute "SELECT Count(*) FROM RoomMast where type='RO' and inclcount='Y'", var_A8, -1
  loc_1395B90: var_98 = var_98.Fields
  loc_1395B98: var_C8 = var_CC.Item(var_CC)
  loc_1395BA0: var_23C = var_23C.Value
  loc_1395BBA: Me.LblTR.Caption = CStr(var_11C & var_11C)
  loc_1395BD6: var_E0 = "OC:"
  loc_1395BE1: var_C8 = 0
  loc_1395C00: unk_52FB6A.Execute "SELECT Count(*)From RoomOcc Left Join roommast on roomocc.RoomNo=Roommast.code where roomocc.type not in ('O','C') and roommast.roomstat='C' and roommast.type='RO'", var_A8, -1
  loc_1395C08: var_98 = var_98.Fields
  loc_1395C10: var_C8 = var_CC.Item(var_CC)
  loc_1395C18: var_23C = var_23C.Value
  loc_1395C32: Me.LBLOC.Caption = CStr(var_11C & var_11C)
  loc_1395C4E: var_10C = "VR:"
  loc_1395C7D: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_1395C8B: var_274 = var_F8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1395CA7: Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_274 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98, var_CC)
  loc_1395CC6: unk_52FB6A.Execute CStr(0 & var_A8 & " between Fromdate and ToDate)"), var_23C, var_1A8
  loc_1395CCE: var_10C = var_98.Fields
  loc_1395CD6: var_E0 = var_CC.Item(var_E0)
  loc_1395CDE: var_E0 = var_23C.Value
  loc_1395CF8: Me.LBLVR.Caption = CStr(var_1A8)
  loc_1395D59: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_1395D67: var_274 = var_F8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1395D83: Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_274 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98)
  loc_1395DA2: unk_52FB6A.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate) And Roomstat='D'"), 0, var_23C
  loc_1395DB2:  = var_CC.Item("VD:")
  loc_1395DBA:  = var_23C.Value
  loc_1395DD4: Me.LBLVD.Caption = CStr(var_98.Fields)
  loc_1395E35: var_F8 = "Select Count(*) FROM RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND type='RO' AND InclCount='Y' And Code not in (Select RoomNo from RoomOcc where (LOGSITE_CODE='"
  loc_1395E43: var_274 = var_F8 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and type not  in ('C','O')) and Code not in (Select RoomCode from RoomBLockOut where (LOGSITE_CODE='"
  loc_1395E5F: Proc_6_7_F25D88(var_A8, MemVar_1F920EC, CVar(var_274 & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And "), var_184, -1, var_98)
  loc_1395E7E: unk_52FB6A.Execute CStr(var_CC & var_A8 & " between Fromdate and ToDate) And Roomstat='C'"), 0, var_23C
  loc_1395E8E:  = var_CC.Item("VC:")
  loc_1395E96:  = var_23C.Value
  loc_1395EB0: Me.LBLVC.Caption = CStr(var_98.Fields)
  loc_1395EF4: Me.FGrid.Col = CVar(CLng(1))
  loc_1395F01: Set var_8C = Nothing
  loc_1395F04: Exit Sub
End Sub
