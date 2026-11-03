VERSION 5.00
Begin VB.Form FrmRevMergeCharge
  Caption = "Reverse Transfer Room"
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
  ClientWidth = 15495
  ClientHeight = 7275
  Begin CommandButton cmdTransferCharge
    Caption = "Reverse Room Merge"
    BackColor = &HFFC0FF&
    Left = 6960
    Top = 7200
    Width = 1455
    Height = 1095
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DisabledPicture = "FrmRevMergeCharge.frx":0
  End
  Begin CheckBox chkSelectALL
    Caption = "ALL"
    Index = 1
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 19605
    Top = 225
    Width = 570
    Height = 210
    Visible = 0   'False
    TabIndex = 8
    Style = 1
  End
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 0
    BackColor = &HC00000&
    Left = 345
    Top = 1005
    Width = 255
    Height = 255
    Visible = 0   'False
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 14595
    Top = 5100
    Width = 6090
    Height = 2055
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 14790
    Top = 3495
    Width = 3225
    Height = 1800
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton cmdTransferChargezzz
    Caption = "Transfer &Charges"
    Left = 18570
    Top = 5475
    Width = 1695
    Height = 420
    Visible = 0   'False
    TabIndex = 10
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    MaskColor = &H8000000F&
  End
  Begin TextBox Txt
    Index = 1
    Left = 20325
    Top = 420
    Width = 1455
    Height = 255
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSHFlexGrid FGrid
    Left = 210
    Top = 990
    Width = 10275
    Height = 5955
    TabIndex = 6
  End
End
Begin MSHFlexGrid FGrid1
  Left = 20205
  Top = 9345
  Width = 165
  Height = 7815
  TabIndex = 9
End
Begin MSHFlexGrid FGrid2
  Left = 270
  Top = 6960
  Width = 5415
  Height = 1455
  TabIndex = 12
End
Begin BtnEnh BtnExit
  Left = 8490
  Top = 7020
  Width = 1380
  Height = 1335
  TabIndex = 14
End
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 0
  Top = 0
  Width = 180
  Height = 540
  TabIndex = 13
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
Begin Label lbl
  BackColor = &H808080&
  Left = 20325
  Top = 420
  Width = 1455
  Height = 255
  Visible = 0   'False
  TabIndex = 2
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "List of Leader Rooms"
  Index = 0
  BackColor = &HC00000&
  ForeColor = &H80000005&
  Left = 165
  Top = 615
  Width = 10245
  Height = 375
  TabIndex = 4
  BorderStyle = 1 'Fixed Single
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
  Appearance = 0 'Flat
End
Begin Label Label1
  Caption = "List of Room's Charge"
  Index = 1
  BackColor = &H808080&
  ForeColor = &HFFFFFF&
  Left = 18570
  Top = 6600
  Width = 1770
  Height = 300
  Visible = 0   'False
  TabIndex = 7
  BorderStyle = 1 'Fixed Single
  Alignment = 2 'Center
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Appearance = 0 'Flat
End
Begin Label LblName
  Caption = "Enter Leader Room No"
  Index = 5
  ForeColor = &H0&
  Left = 18240
  Top = 420
  Width = 1935
  Height = 240
  Visible = 0   'False
  TabIndex = 0
  AutoSize = -1  'True
  BackStyle = 0 'Transparent
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
End
End

Attribute VB_Name = "FrmRevMergeCharge"

Private global_72 As Integer

Private Sub btnExit_UnknownEvent_9 'E17728
  'Data Table: 4780F4
  loc_E1771D: Me.Global.Unload Me
  loc_E17725: Exit Sub
End Sub

Private Sub Txt_Change(Index As Integer) 'E5940C
  'Data Table: 4780F4
  Dim Txt_Change4 As Variant
  loc_E593D6: If (Index = CInt(1)) Then
  loc_E593E3:   Txt_Change4 = Me.FGrid1.Text
  loc_E59401:   Me.FGrid1.Rows = 1
  loc_E59409: End If
  loc_E59409: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '103FC20
  'Data Table: 4780F4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_103F9E6: Set var_88 = Me.Txt
  loc_103F9EC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_103F9FA: Proc_6_74_E226B0(var_8C)
  loc_103FA06: Call Proc_182_27_E98704(var_8C)
  loc_103FA0B: On Error Goto loc_103FBDA
  loc_103FA11: var_92 = Index
  loc_103FA1C: If (var_92 = CInt(1)) Then
  loc_103FA36:   If (Me.RecordCount > 0) Then
  loc_103FA44:     Set var_8C = Me.FGPoint
  loc_103FA5C:     Call DGridTxtPointSet(Me.DGHelp, global_64, Index, var_8C)
  loc_103FA6A:   End If
  loc_103FAB8:   Set var_88 = Me.Txt
  loc_103FABE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_103FAC6:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_103FADE:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_103FAEE:     Set var_88 = Me.Txt
  loc_103FAF4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FAFC:     var_8C.Tag = vbNullString
  loc_103FB08:     Exit Sub
  loc_103FB09:   End If
  loc_103FB16:   Set var_88 = Me.Txt
  loc_103FB1C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FB24:   var_A0 = var_8C.Text
  loc_103FB36:   var_B0 = "RoomNo"
  loc_103FB71:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_103FB7A:     Me.MoveFirst
  loc_103FB9D:     Set var_88 = Me.Txt
  loc_103FBA3:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo='")
  loc_103FBAB:     0 = var_8C.Text
  loc_103FBC4:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_103FBD9:   End If
  loc_103FBD9: End If
  loc_103FBD9: Exit Sub
  loc_103FBDA: ' Referenced from: 103FA0B
  loc_103FBE2: Set var_88 = Err()
  loc_103FBE8: Call 0.Method_arg_2C (var_A0)
  loc_103FC09: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_103FC1C: Exit Sub
  loc_103FC1D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11A6264
  'Data Table: 4780F4
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_254 As String
  Dim unk_4780F7 As Connection15
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_294 As Column
  loc_11A5E8A: If (CLng(Shift) = &H1B) Then
  loc_11A5E9B:   Set var_8C = Me.Txt
  loc_11A5EA1:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_11A5EA9:   var_90.Text = vbNullString
  loc_11A5EB5:   Call Proc_182_27_E98704()
  loc_11A5EBA:   Exit Sub
  loc_11A5EBB: End If
  loc_11A5EC9: If (KeyCode = CInt(1)) Then
  loc_11A5F35:   var_114 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_11A5F49:   var_1B4 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_11A5F4E:   var_1C4 = var_114 & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1B4 
  loc_11A5F52:   var_1D4 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_11A5F78:   var_254 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_11A5F8B:   unk_4780F7.Execute CStr(var_1C4 & var_1D4 & CVar(MemVar_1F92078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_254), var_288, -1
  loc_11A5F9C:   Set global_52 = var_8C
  loc_11A5FE8:   If (Me.RecordCount <= 0) Then
  loc_11A5FEB:     Exit Sub
  loc_11A5FEC:   End If
  loc_11A5FF5:   CVarUnk
  loc_11A5FFA:   VerifyVarObj
  loc_11A6000:   Set var_8C = Me.FGrid
  loc_11A6006:   LateIdStAd
  loc_11A603C:   Set var_294 = Nothing
  loc_11A606A:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_64, Shift, 0, 0)
  loc_11A60D9:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11A60E0:     Set var_294 = Me.DGHelp
  loc_11A60FF:     Proc_6_138_106D6F8(var_294, global_64, KeyCode, Me.FGPoint, var_294, Me.FGPoint)
  loc_11A610D:   End If
  loc_11A611B:   Me.DGHelp.Visible = True
  loc_11A6135:   Set var_8C = Me.DGHelp
  loc_11A6154:   DGHelp.DispID_69.Item(1).Width = CDbl(2600)
  loc_11A6176:   Set var_8C = Me.DGHelp
  loc_11A6195:   DGHelp.DispID_69.Item(2).Width = CDbl(0)
  loc_11A61A6:   var_A4 = 1
  loc_11A61AF:   var_D4 = &HA28
  loc_11A61BC:   Set var_8C = Me.FGPoint
  loc_11A61C2:   LateIdCallSt
  loc_11A61CD:   var_A4 = 2
  loc_11A61D6:   var_D4 = 0
  loc_11A61E3:   Set var_8C = Me.FGPoint
  loc_11A61E9:   LateIdCallSt
  loc_11A6219:   For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2AC 'Integer
  loc_11A6223:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_11A6228:     var_D4 = 0
  loc_11A6231:     var_124 = vbNullString
  loc_11A623B:     Set var_8C = Me.FGrid
  loc_11A6241:     LateIdCallSt
  loc_11A624F:   Next var_2AC 'Integer
  loc_11A625A:   If (Shift = &HD) Then
  loc_11A625D:     Call DGHelp_UnknownEvent_9()
  loc_11A6262:   End If
  loc_11A6262: End If
  loc_11A6262: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F76778
  'Data Table: 4780F4
  Dim arg_10 As Integer
  Dim var_9A As Integer
  Dim var_A4 As TextBox
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  loc_F7663B: var_88 = "0123456789"
  loc_F76644: Proc_6_133_E7EF78(var_98)
  loc_F7664D: arg_10 = CInt(var_98)
  loc_F76656: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F7665E: var_9A = KeyAscii
  loc_F76669: If (var_9A = CInt(1)) Then
  loc_F76676:   If (CLng(arg_10) = &H1B) Then
  loc_F76687:     Set var_A0 = Me.Txt
  loc_F7668D:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4, vbNullString)
  loc_F76695:     var_A4.Text = var_9A
  loc_F766A1:     Call Proc_182_27_E98704(arg_10)
  loc_F766A6:     Exit Sub
  loc_F766A7:   End If
  loc_F766AD:   If (arg_10 <> 0) Then
  loc_F766BE:     Set var_A0 = Me.Txt
  loc_F766C4:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4)
  loc_F766CC:     var_A4.Text = vbNullString
  loc_F766E6:     Proc_303_0_FB9B68("{HOME}")
  loc_F766EE:   End If
  loc_F7670A:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F7671C:     var_A8 = "RoomNo"
  loc_F76737:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F76769:     Proc_6_138_106D6F8(Me.DGHelp, global_64, KeyAscii, Me.FGPoint)
  loc_F76777:   End If
  loc_F76777: End If
  loc_F76777: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4DE5C
  'Data Table: 4780F4
  loc_E4DE3A: Set var_88 = Me.Txt
  loc_E4DE40: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4DE4E: Proc_6_73_E22704(var_8C)
  loc_E4DE5A: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E2A8BC
  'Data Table: 4780F4
  loc_E2A8A2: If (Index = CInt(1)) Then
  loc_E2A8AD:   var_8C = "{HOME}+{END}"
  loc_E2A8B3:   Proc_303_0_FB9B68(var_8C, 0)
  loc_E2A8BB: End If
  loc_E2A8BB: Exit Sub
End Sub

Private Sub chkSelectALL_Click(Index As Integer) '11EADDC
  'Data Table: 4780F4
  Dim var_8A As Integer
  Dim var_94 As CheckBox
  Dim var_90 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Long
  Dim var_FC As String
  loc_11EA93F: var_8A = Index
  loc_11EA948: If (var_8A = 0) Then
  loc_11EA958:   Set var_90 = Me.chkSelectALL
  loc_11EA95E:   Call 0.Method_chkSelectALL_Click0 (Index, var_94)
  loc_11EA966:   var_96 = var_94.Value
  loc_11EA978:   If (var_96 = 1) Then
  loc_11EA9A0:     For var_AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_AC 'Integer
  loc_11EA9B9:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_11EA9D4:       Me.FGrid.Col = 0
  loc_11EA9EC:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_11EAA06:       Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_11EAA21:       Me.FGrid.CellForeColor = &HFF
  loc_11EAA2D:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EAA32:       var_DC = 0
  loc_11EAA3B:       var_FC = "ü"
  loc_11EAA45:       Set var_90 = Me.FGrid
  loc_11EAA4B:       LateIdCallSt
  loc_11EAA7B:       For var_110 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_88 = var_110 'Integer
  loc_11EAA94:         Me.FGrid.Col = CVar(CLng(var_88))
  loc_11EAAAF:         Me.FGrid.CellBackColor = &HFF00
  loc_11EAABA:       Next var_110 'Integer
  loc_11EAAC2:     Next var_AC 'Integer
  loc_11EAAE0:     var_BC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11EAAE5:     var_DC = 0
  loc_11EAAEE:     var_FC = vbNullString
  loc_11EAAF8:     Set var_94 = Me.FGrid
  loc_11EAAFE:     LateIdCallSt
  loc_11EAB10:     Call FGrid_UnknownEvent_9()
  loc_11EAB15:   End If
  loc_11EAB15:   Exit For
  loc_11EAB18: End If
  loc_11EAB1E: If (var_8A = 1) Then
  loc_11EAB2E:   Set var_90 = Me.chkSelectALL
  loc_11EAB34:   Call 0.Method_chkSelectALL_Click0 (Index, var_94, var_96, var_94)
  loc_11EAB3C:   var_FC = var_94.Value
  loc_11EAB4E:   If (var_96 = 1) Then
  loc_11EAB76:     For var_114 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_114 'Integer
  loc_11EAB8F:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_11EABAA:       Me.FGrid1.Col = 0
  loc_11EABC2:       Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11EABDC:       Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11EABF7:       Me.FGrid1.CellForeColor = &HFF
  loc_11EAC03:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EAC08:       var_DC = 0
  loc_11EAC11:       var_FC = "ü"
  loc_11EAC1B:       Set var_90 = Me.FGrid1
  loc_11EAC21:       LateIdCallSt
  loc_11EAC51:       For var_118 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_88 = var_118 'Integer
  loc_11EAC6A:         Me.FGrid1.Col = CVar(CLng(var_88))
  loc_11EAC85:         Me.FGrid1.CellBackColor = &HFF00
  loc_11EAC90:       Next var_118 'Integer
  loc_11EAC98:     Next var_114 'Integer
  loc_11EAC9D:     Exit For
  loc_11EACA0:   End If
  loc_11EACC5:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_11C 'Integer
  loc_11EACCF:     var_BC = CVar(CLng(var_86)) 'Long
  loc_11EACD4:     var_DC = 0
  loc_11EAD03:     If (CStr(Me.FGrid1.TextMatrix)) = "ü") Then
  loc_11EAD19:       Me.FGrid1.Row = CVar(CLng(var_86))
  loc_11EAD34:       Me.FGrid1.Col = 0
  loc_11EAD40:       var_BC = CVar(CLng(var_86)) 'Long
  loc_11EAD45:       var_DC = 0
  loc_11EAD4E:       var_FC = vbNullString
  loc_11EAD58:       Set var_90 = Me.FGrid1
  loc_11EAD5E:       LateIdCallSt
  loc_11EAD8E:       For var_124 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_88 = var_124 'Integer
  loc_11EADA7:         Me.FGrid1.Col = CVar(CLng(var_88))
  loc_11EADC2:         Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11EADCD:       Next var_124 'Integer
  loc_11EADD2:     End If
  loc_11EADD5:   Next var_11C 'Integer
  loc_11EADDA:   ' Referenced from: 11EAC9D
  loc_11EADDA:   ' Referenced from: 11EAB15
  loc_11EADDA: End If
  loc_11EADDA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F2DB34
  'Data Table: 4780F4
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F2DA2C: Call Proc_182_27_E98704()
  loc_F2DA48: If (Me.RecordCount > 0) Then
  loc_F2DA87:   Set var_A4 = Me.Txt
  loc_F2DA8D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2DA95:   var_A8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F2DAC8:   var_A0 = Me.Fields.Item("FolioNo")
  loc_F2DAE7:   Set var_A4 = Me.Txt
  loc_F2DAED:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2DAF5:   var_A8.Tag = CStr(var_A0.Value)
  loc_F2DB0B:   Call Proc_182_25_1135C40()
  loc_F2DB10: End If
  loc_F2DB19: Set var_8C = Me.chkSelectALL
  loc_F2DB1F: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_F2DB27: var_A0.SetFocus
  loc_F2DB33: Exit Sub
End Sub

Public Sub DGHelp_UnknownEvent_1B(Index As Integer) 'E03180
  'Data Table: 4780F4
  loc_E03176: If (Index = &HD) Then
  loc_E03179:   Call DGHelp_UnknownEvent_9()
  loc_E0317E: End If
  loc_E0317E: Exit Sub
End Sub

Private Sub cmdTransferCharge_Click() '14BE574
  'Data Table: 4780F4
  Dim var_86 As Integer
  Dim unk_4780F7 As Connection15
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_138 As String
  Dim var_A0 As Long
  Dim var_13C As String
  Dim var_14C As String
  Dim var_A4 As Long
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Double
  Dim var_B8 As Recordset15
  Dim var_1BC As Double
  Dim var_1B4 As String
  Dim var_8C As Recordset15
  Dim var_F4 As Variant
  Dim var_1A8 As Variant
  Dim Me As Recordset15
  Dim var_114 As Variant
  Dim var_16C As Long
  Dim var_1CC As Variant
  Dim var_2E0 As Variant
  Dim var_300 As Long
  Dim var_374 As Variant
  Dim var_394 As Long
  Dim var_134 As Variant
  Dim var_20C As Variant
  Dim var_364 As Variant
  Dim cmdTransferCharge_Click4 As Variant
  loc_14BD8C6: var_86 = 0
  loc_14BD8D2: unk_4780F7.BeginTrans var_BC
  loc_14BD8FC: For var_D4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_B2 = var_D4 'Integer
  loc_14BD904:   var_86 = &HFF
  loc_14BD90B:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BD910:   var_104 = 1
  loc_14BD934:   var_134 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_14BD943:   global_80 = CStr(var_134)
  loc_14BD95A:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BD95F:   var_104 = &HD
  loc_14BD972:   var_D0 = Me.FGrid1.TextMatrix)
  loc_14BD986:   var_A0 = CLng(Val(CStr(var_D0)))
  loc_14BD9A3:   If ((var_A4 <> var_A0) And (var_A4 <> 0)) Then
  loc_14BD9C1:     var_13C = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & var_A8 & "' And Guestfolio.Docid='"
  loc_14BD9E6:     unk_4780F7.Execute var_13C & var_AC & "' And GuestFolio.Docid <>'" & var_A8 & "'", var_D0, -1
  loc_14BDA03:     var_A4 = var_A0
  loc_14BDA06:   End If
  loc_14BDA0F:   If (var_A4 = 0) Then
  loc_14BDA15:     var_A4 = var_A0
  loc_14BDA18:   End If
  loc_14BDA1C:   var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BDA21:   var_104 = 0
  loc_14BDA50:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_14BDA57:     var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BDA5C:     var_104 = &HC
  loc_14BDA7A:     var_138 = CStr(Me.FGrid1.TextMatrix))
  loc_14BDA84:     var_15C = CVar(CLng(global_72)) 'Long
  loc_14BDAC0:     If (CVar(CLng(&H11)) = CStr(Me.FGrid.TextMatrix))) Then
  loc_14BDAC7:       var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BDACC:       var_104 = &HD
  loc_14BDAF9:       var_15C = CVar(CLng(var_B2)) 'Long
  loc_14BDAFE:       var_17C = &HC
  loc_14BDB48:       var_14C = "SELECT DocId From GuestFolio WHERE FolioNo =" & CStr(Val(CStr(Me.FGrid1.TextMatrix)))) & " AND MFolioNODocID='" & CStr(Me.FGrid1.TextMatrix))
  loc_14BDB58:       unk_4780F7.Execute var_14C & "'", var_134, -1
  loc_14BDB63:       Set var_B8 = var_1A8
  loc_14BDB9D:       If (var_B8.RecordCount = 0) Then
  loc_14BDBA4:         var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BDBCF:         var_1B0 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_14BDBD6:         var_15C = CVar(CLng(var_B2)) 'Long
  loc_14BDBDB:         var_17C = &HF
  loc_14BDC01:         var_1BC = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_14BDC37:         var_1B4 = "Select Top 1 RoomNo,DocId From RoomOcc Where FolioNo=" & CStr(var_1B0) & " And VPrefix=" & CStr(var_1BC) & " Order By Sno desc"
  loc_14BDC40:         unk_4780F7.Execute var_1B4, var_134, -1
  loc_14BDC4B:         Set var_8C = var_1A8
  loc_14BDCAA:         var_94 = CStr(Trim(CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("RoomNo")), var_1A8, var_1BC, var_17C, var_15C, var_1B0, &HD))))
  loc_14BDCBC:         var_E4 = "DocID"
  loc_14BDCC8:         var_C0 = var_8C.Fields
  loc_14BDCD8:         var_D0 = CVar(var_C0.Item(var_E4)) 'Address
  loc_14BDCE1:         var_124 = CVar(Proc_6_38_E68A98(var_D0, var_E4, var_1A8, var_124)) 'String
  loc_14BDCE7:         var_134 = Trim(var_124)
  loc_14BDCF0:         var_98 = CStr(var_134)
  loc_14BDD42:         var_13C = "Select count(*) From RoomOcc Where DocId='" & var_98 & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)"
  loc_14BDD4B:         unk_4780F7.Execute var_13C, var_D0, -1
  loc_14BDD80:         var_190 = var_C0.Fields.Item(0)
  loc_14BDD88:         var_D0 = var_190.Value
  loc_14BDDA2:         If (var_D0 = 0) Then
  loc_14BDDB3:           var_90 = "Transation Failed!" & vbCrLf & "Room No. " & var_94 & " is Already removed from Group." & vbCrLf & "And Bill has been Settled."
  loc_14BDDBC:         Else
  loc_14BDDC2:           var_F4 = 0
  loc_14BDDEF:           unk_4780F7.Execute "Select Count(*) from PayCharge where FolioNoDocid='" & var_98 & "' and Bill_No<>'' and Bill_No is Not NULL", var_D0, -1
  loc_14BDDF7:           var_C0 = var_C0.Fields
  loc_14BDDFF:           var_F4 = var_190.Item(var_190)
  loc_14BDE07:           var_1A8 = var_1A8.Value
  loc_14BDE2E:           If (var_124 > 0) Then
  loc_14BDE38:             var_138 = var_90 & vbCrLf
  loc_14BDE3F:             var_90 = var_138 & "And Bill has been Generated."
  loc_14BDE45:           End If
  loc_14BDE45:         End If
  loc_14BDE4B:         Call 0.Method_arg_50 (var_138, var_124, var_C0)
  loc_14BDE69:         MsgBox(var_90, &H10, CVar(var_138), var_124, var_134)
  loc_14BDE7D:         unk_4780F7.RollbackTrans
  loc_14BDE8D:         Me.Requery -1
  loc_14BDE92:         Call Proc_182_26_133EB7C(var_17C, var_15C)
  loc_14BDE97:         Exit Sub
  loc_14BDE98:       End If
  loc_14BDEC3:       var_114 = CVar(CLng(var_B2)) 'Long
  loc_14BDEC8:       var_16C = &HD
  loc_14BDEDB:       var_1CC = Me.FGrid1.TextMatrix)
  loc_14BDF1E:       Proc_6_7_F25D88(var_2A0, CVar(CStr(Me.FGrid1.TextMatrix))), 4, CVar(CLng(var_B2)))
  loc_14BDF27:       var_2E0 = CVar(CLng(var_B2)) 'Long
  loc_14BDF2C:       var_300 = &HE
  loc_14BDF4F:       var_374 = CVar(CLng(var_B2)) 'Long
  loc_14BDF54:       var_394 = &HC
  loc_14BDF88:       var_124 = "UPDATE PayCharge SET PayCharge.FolioNoDocid = '" & var_B8.Fields.Item("DocID").Value 
  loc_14BDF91:       var_134 = var_124 & "', PayCharge.FolioNo = " 
  loc_14BDFB2:       var_20C = var_134 & CVar(Val(CStr(var_1CC))) & ",RelatedFolioNo=0,RelatedFolioNoDocId='' WHERE PayCharge.RoomNo = '" & CVar(global_80) 
  loc_14BDFDF:       var_364 = var_20C & "' AND PayCharge.VDate =" & var_2A0 & " AND PayCharge.VTime = '" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" 
  loc_14BE001:       unk_4780F7.Execute CStr(var_364 & CVar(CStr(Me.FGrid1.TextMatrix))) & "'"), var_418, -1
  loc_14BE067:       var_190 = var_B8.Fields.Item("DocID")
  loc_14BE078:       var_AC = CStr(var_190.Value)
  loc_14BE089:       var_E4 = CVar(CLng(var_B2)) 'Long
  loc_14BE08E:       var_104 = &HC
  loc_14BE0AC:       var_A8 = CStr(Me.FGrid1.TextMatrix))
  loc_14BE0C8:       Me.FGrid1.Row = CVar(CLng(var_B2))
  loc_14BE0E3:       Me.FGrid1.Col = 0
  loc_14BE0FE:       Me.FGrid1.CellForeColor = &HFF
  loc_14BE115:       var_D0 = Me.FGrid1.Cols
  loc_14BE12B:       For var_420 = 1 To CInt((CLng(var_D0) - 1)): var_B4 = var_420 'Integer
  loc_14BE144:         Me.FGrid1.Col = CVar(CLng(var_B4))
  loc_14BE15F:         Me.FGrid1.CellBackColor = &HFF
  loc_14BE17A:         Me.FGrid1.CellForeColor = &HFFFFFF
  loc_14BE186:         Set var_C0 = Me.FGrid1
  loc_14BE19A:       Next var_420 'Integer
  loc_14BE19F:     End If
  loc_14BE19F:   End If
  loc_14BE1A2: Next var_D4 'Integer
  loc_14BE1C2: var_13C = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & var_A8 & "' And Guestfolio.Docid='"
  loc_14BE1E7: unk_4780F7.Execute var_13C & var_AC & "' And GuestFolio.Docid <> '" & var_A8 & "'", var_D0, -1
  loc_14BE217: var_D0 = Me.Source
  loc_14BE229: unk_4780F7.Execute CStr(var_D0), var_124, -1
  loc_14BE258: If (var_C0.RecordCount = 0) Then
  loc_14BE27F:   unk_4780F7.Execute "UPDATE PayCharge SET RelatedFolioNo=0,RelatedFolioNoDocId='' WHERE PayCharge.FolioNoDocid='" & var_A8 & "'", var_D0, -1
  loc_14BE2B5:   unk_4780F7.Execute "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.Docid = '" & var_A8 & "'", var_D0, -1
  loc_14BE2E6:   If (CLng(Me.FGrid.Rows) > 2) Then
  loc_14BE2F0:     var_E4 = CVar(CLng(global_72)) 'Long
  loc_14BE2F9:     Set var_C0 = Me.FGrid
  loc_14BE30D:   Else
  loc_14BE317:     cmdTransferCharge_Click4 = Me.FGrid.Text
  loc_14BE322:     var_E4 = 1
  loc_14BE335:     Me.FGrid.Rows = var_E4
  loc_14BE33D:   End If
  loc_14BE345:   Call Proc_182_23_12BCF50(-1, cmdTransferCharge_Click4, FGrid.DispID_10000, var_E4)
  loc_14BE34D: Else
  loc_14BE365:   Set var_C0 = Me.FGrid
  loc_14BE376:   var_138 = CStr(var_C0.TextMatrix))
  loc_14BE37D:   Call Proc_182_23_12BCF50(CLng(var_138), CVar(CLng(&H10)), CVar(CLng(global_72)), var_C0)
  loc_14BE38B: End If
  loc_14BE390: Set var_8C = Nothing
  loc_14BE399: unk_4780F7.CommitTrans
  loc_14BE3A9: Me.Requery -1
  loc_14BE3AE: Call Proc_182_26_133EB7C(var_C0, var_C0)
  loc_14BE3D1: If ((unk_4780F7.State > 0) And (var_86 = &HFF)) Then
  loc_14BE3F5:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_134, var_1CC)
  loc_14BE41C:   If (Me.RecordCount > 0) Then
  loc_14BE42B:     Me.cmdTransferCharge.Enabled = True
  loc_14BE43E:     Set var_C0 = Me.chkSelectALL
  loc_14BE444:     Call 0.Method_cmdTransferCharge_Click0 (1, var_190)
  loc_14BE44C:     var_190.Visible = True
  loc_14BE45B:   Else
  loc_14BE467:     Me.cmdTransferCharge.Enabled = False
  loc_14BE47A:     Set var_C0 = Me.chkSelectALL
  loc_14BE480:     Call 0.Method_cmdTransferCharge_Click0 (1, var_190)
  loc_14BE488:     var_190.Visible = False
  loc_14BE494:   End If
  loc_14BE497: Else
  loc_14BE4B5:   If ((unk_4780F7.State > 0) And (var_86 = 0)) Then
  loc_14BE4D9:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_134, var_1CC)
  loc_14BE4E9:     Exit Sub
  loc_14BE4ED:   Else
  loc_14BE4F5:     Set var_C0 = Err()
  loc_14BE4FB:     Call 0.Method_arg_2C (var_138)
  loc_14BE51C:     MsgBox(CVar(var_138), &H10, "Save...", var_134, var_1CC)
  loc_14BE53B:     Me.cmdTransferCharge.Enabled = False
  loc_14BE543:   End If
  loc_14BE543: End If
  loc_14BE56C: If ((global_72 = 1) And (CLng(Me.FGrid.Rows) = 2)) Then
  loc_14BE56F:   GoTo loc_14BE572
  loc_14BE572:   ' Referenced from: 14BE56F
  loc_14BE572: End If
  loc_14BE572: Exit Sub
  loc_14BE573: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '122D954
  'Data Table: 4780F4
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F4 As String
  Dim var_104 As String
  Dim var_A0 As Integer
  loc_122D443: Set var_88 = Me.chkSelectALL
  loc_122D449: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_122D451: var_8C.Value = 0
  loc_122D47C: If (CLng(Me.FGrid.RowSel) = 0) Then
  loc_122D47F:   Exit Sub
  loc_122D480: End If
  loc_122D480: On Error Goto loc_122D90F
  loc_122D496: Me.FGrid.Col = 0
  loc_122D4AE: Me.FGrid.CellFontName = "WINGDINGS"
  loc_122D4C8: Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_122D4E3: Me.FGrid.CellForeColor = &HFF0000
  loc_122D50C: If (CLng(global_72) = CLng(Me.FGrid.Row)) Then
  loc_122D522:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122D527:   var_D0 = 0
  loc_122D55E:   If (CStr(Me.FGrid.TextMatrix)) = "ü") Then
  loc_122D574:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122D579:     var_D0 = 0
  loc_122D582:     var_104 = vbNullString
  loc_122D58C:     Set var_8C = Me.FGrid
  loc_122D592:     LateIdCallSt
  loc_122D5C9:     For var_118 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_9E = var_118 'Integer
  loc_122D5E2:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122D5FD:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_122D608:     Next var_118 'Integer
  loc_122D610:   Else
  loc_122D623:     var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122D628:     var_D0 = 0
  loc_122D631:     var_104 = "ü"
  loc_122D63B:     Set var_8C = Me.FGrid
  loc_122D641:     LateIdCallSt
  loc_122D678:     For var_11C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_11C 'Integer
  loc_122D691:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122D6AC:       Me.FGrid.CellBackColor = &HFF00
  loc_122D6B7:     Next var_11C 'Integer
  loc_122D6BC:   End If
  loc_122D6BF: Else
  loc_122D6D2:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_122D6D7:   var_D0 = 0
  loc_122D6E0:   var_104 = "ü"
  loc_122D6EA:   Set var_8C = Me.FGrid
  loc_122D6F0:   LateIdCallSt
  loc_122D727:   For var_120 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_120 'Integer
  loc_122D740:     Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122D75B:     Me.FGrid.CellBackColor = &HFF00
  loc_122D766:   Next var_120 'Integer
  loc_122D77F:   var_A0 = CInt(CLng(Me.FGrid.Row))
  loc_122D791:   If (global_72 <> 0) Then
  loc_122D79B:     var_B0 = CVar(CLng(global_72)) 'Long
  loc_122D7A0:     var_D0 = 0
  loc_122D7A9:     var_104 = vbNullString
  loc_122D7B3:     Set var_88 = Me.FGrid
  loc_122D7B9:     LateIdCallSt
  loc_122D7DA:     Me.FGrid.Row = CVar(CLng(global_72))
  loc_122D807:     For var_124 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_9E = var_124 'Integer
  loc_122D820:       Me.FGrid.Col = CVar(CLng(var_9E))
  loc_122D83B:       Me.FGrid.CellBackColor = &HFFFFFF
  loc_122D846:     Next var_124 'Integer
  loc_122D84B:   End If
  loc_122D851:   global_72 = var_A0
  loc_122D854: End If
  loc_122D85B: var_B0 = CVar(CLng(global_72)) 'Long
  loc_122D860: var_D0 = 0
  loc_122D88F: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_122D899:   var_B0 = CVar(CLng(global_72)) 'Long
  loc_122D8A1:   var_D0 = CVar(CLng(&H10)) 'Long
  loc_122D8BB:   var_F4 = CStr(Me.FGrid.TextMatrix))
  loc_122D8C2:   Call Proc_182_23_12BCF50(CLng(var_F4), var_D0, var_B0)
  loc_122D8D3: Else
  loc_122D8DB:   Call Proc_182_23_12BCF50(-1, var_D0)
  loc_122D8E0: End If
  loc_122D8E0: Call Proc_182_26_133EB7C(var_B0)
  loc_122D8F4: Set var_88 = Me.chkSelectALL
  loc_122D8FA: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_122D902: var_8C.Value = CInt(1)
  loc_122D90E: Exit Sub
  loc_122D90F: ' Referenced from: 122D480
  loc_122D917: Set var_88 = Err()
  loc_122D91D: Call 0.Method_arg_2C (var_F4)
  loc_122D93E: MsgBox(CVar(var_F4), &H40, "Information", var_138, var_148)
  loc_122D951: Exit Sub
  loc_122D952: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(Index As Integer) 'E8F138
  'Data Table: 4780F4
  loc_E8F0C6: If (Index = &HD) Then
  loc_E8F0D7:   Proc_303_0_FB9B68("	")
  loc_E8F0DF: End If
  loc_E8F0FE: If (CLng(Me.FGrid.Rows) < 1) Then
  loc_E8F101:   Exit Sub
  loc_E8F102: End If
  loc_E8F12C: If ((CLng(Index) = &H20) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_E8F12F:   Call FGrid_UnknownEvent_9()
  loc_E8F134: End If
  loc_E8F134: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 'F86D34
  'Data Table: 4780F4
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F86BFA: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_F86C1C: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F86C21: var_D0 = 0
  loc_F86C58: If (CStr(Me.FGrid.TextMatrix)) <> "ü") Then
  loc_F86C80:   For var_F8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F86C99:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F86CB4:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_F86CBF:   Next var_F8 'Integer
  loc_F86CC7: Else
  loc_F86CEC:   For var_FC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F86D05:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F86D20:     Me.FGrid.CellBackColor = &HFF00
  loc_F86D2B:   Next var_FC 'Integer
  loc_F86D30: End If
  loc_F86D30: Exit Sub
  loc_F86D33: () = 
End Sub

Private Sub FGrid2_UnknownEvent_B '10F5A38
  'Data Table: 4780F4
  Dim var_90 As MSHFlexGrid
  Dim var_A0 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_134 As String
  Dim unk_4780F7 As Connection15
  Dim var_8C As Recordset15
  loc_10F574B: var_C4 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_10F5763: var_E4 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_10F578C: var_88 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_10F57EF: If (((CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Or (CLng(Me.FGrid2.Col) = 0)) Or (var_88 = vbNullString)) Then
  loc_10F57F2:   Exit Sub
  loc_10F57F3: End If
  loc_10F57F7: Set var_90 = Me.FGrid2
  loc_10F5806: var_C4 = CVar(CLng(var_90.Row)) 'Long
  loc_10F582D: var_108 = Me.FGrid2.TextMatrix)
  loc_10F583F: Call 0.Method_arg_50 (var_140, var_108, CVar(CLng(Me.FGrid2.Col)))
  loc_10F5875: var_118 = CVar("Do You Want Remove Room No. " & CStr(var_108) & " from Group." & vbCrLf & "Without Transfer Charges.") 'String
  loc_10F58A8: If (MsgBox(var_118, &H24, CVar(var_140), var_160, var_180) = 6) Then
  loc_10F58B4:   unk_4780F7.BeginTrans var_184
  loc_10F58E7:   var_108 = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & Trim(var_88) & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_10F58F5:   unk_4780F7.Execute CStr(var_108), var_118, -1
  loc_10F5900:   Set var_8C = var_90
  loc_10F5928:   If (var_8C.RecordCount > 0) Then
  loc_10F5932:     var_C4 = CVar(CLng(global_72)) 'Long
  loc_10F593A:     var_E4 = CVar(CLng(&H11)) 'Long
  loc_10F5994:     var_134 = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='',GuestFolio.mFolioNo = 0 WHERE GuestFolio.MFolioNoDocid = '" & CStr(Me.FGrid.TextMatrix))
  loc_10F59B8:     unk_4780F7.Execute CStr(CVar(var_134 & "' And Guestfolio.Docid='") & var_8C.Fields.Item("DocID").Value & "'"), var_160, -1
  loc_10F59E0:   End If
  loc_10F59E5:   Set var_8C = Nothing
  loc_10F59EE:   unk_4780F7.CommitTrans
  loc_10F59FA:   var_C4 = CVar(CLng(global_72)) 'Long
  loc_10F5A0B:   Set var_90 = Me.FGrid
  loc_10F5A11:   var_A0 = var_90.TextMatrix)
  loc_10F5A23:   Call Proc_182_23_12BCF50(CLng(CStr(var_A0)), CVar(CLng(&H10)), var_C4, var_198, var_A0, CVar(CLng(&H10)))
  loc_10F5A31:   Call Proc_182_26_133EB7C(var_C4, var_90, var_C4)
  loc_10F5A36: End If
  loc_10F5A36: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E33B54
  'Data Table: 4780F4
  loc_E33B48: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E33B4B:   Call DGHelp_UnknownEvent_9()
  loc_E33B50: End If
  loc_E33B50: Exit Sub
End Sub

Public Sub FGPoint_UnknownEvent_A(Index As Integer) 'E029C0
  'Data Table: 4780F4
  loc_E029B6: If (Index = &HD) Then
  loc_E029B9:   Call DGHelp_UnknownEvent_9()
  loc_E029BE: End If
  loc_E029BE: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '11B82F8
  'Data Table: 4780F4
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_C0 As MSHFlexGrid
  Dim var_D0 As Long
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_130 As Variant
  Dim var_140 As Long
  Dim var_164 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Long
  Dim var_1CC As Variant
  Dim var_1F0 As Variant
  Dim var_210 As Long
  loc_11B7EF4: On Error Goto loc_11B82B4
  loc_11B7F0A: Me.FGrid1.Col = 0
  loc_11B7F34: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_11B7F53: Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11B7F6D: Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11B7F88: Me.FGrid1.CellForeColor = &HFF0000
  loc_11B7FA3: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B7FA8: var_D0 = 0
  loc_11B7FC6: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_11B7FDF: If (var_F4 = "ü") Then
  loc_11B7FF5:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B7FFA:   var_D0 = 0
  loc_11B8003:   var_104 = vbNullString
  loc_11B800D:   Set var_C0 = Me.FGrid1
  loc_11B8013:   LateIdCallSt
  loc_11B804A:   For var_118 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_118 'Integer
  loc_11B8063:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11B807E:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11B8089:   Next var_118 'Integer
  loc_11B8091: Else
  loc_11B80A4:   var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B80A9:   var_D0 = 0
  loc_11B80B2:   var_104 = "ü"
  loc_11B80BC:   Set var_C0 = Me.FGrid1
  loc_11B80C2:   LateIdCallSt
  loc_11B80F9:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_11C 'Integer
  loc_11B8112:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11B812D:     Me.FGrid1.CellBackColor = &HFF00
  loc_11B8138:   Next var_11C 'Integer
  loc_11B813D: End If
  loc_11B8150: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B8155: var_D0 = 1
  loc_11B817E: var_130 = Me.FGrid1.Row
  loc_11B8187: var_104 = CVar(CLng(var_130)) 'Long
  loc_11B818C: var_140 = 4
  loc_11B819F: var_164 = Me.FGrid1.TextMatrix)
  loc_11B81BE: var_188 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B81C3: var_1A8 = &HE
  loc_11B81D6: var_1CC = Me.FGrid1.TextMatrix)
  loc_11B81F5: var_1F0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11B81FA: var_210 = &HC
  loc_11B8273: Call Proc_182_24_11F71DC(CStr(Me.FGrid1.TextMatrix)), CStr(var_164), CStr(var_1CC), CStr(Me.FGrid1.TextMatrix)), CStr(Me.FGrid1.TextMatrix)), 0, CVar(CLng(Me.FGrid1.Row)), Me.FGrid1.TextMatrix))
  loc_11B82B3: Exit Sub
  loc_11B82B4: ' Referenced from: 11B7EF4
  loc_11B82BC: Set var_AC = Err()
  loc_11B82C2: Call 0.Method_arg_2C (var_F4, var_210, var_1F0, var_1CC, var_1A8)
  loc_11B82E3: MsgBox(CVar(var_F4), &H40, "Error...", var_130, var_164)
  loc_11B82F6: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E8ED00
  'Data Table: 4780F4
  loc_E8EC8E: If (Index = &HD) Then
  loc_E8EC9F:   Proc_303_0_FB9B68("	")
  loc_E8ECA7: End If
  loc_E8ECC6: If (CLng(Me.FGrid1.Rows) < 1) Then
  loc_E8ECC9:   Exit Sub
  loc_E8ECCA: End If
  loc_E8ECF4: If ((CLng(Index) = &H20) And (CLng(Me.FGrid1.Col) = 0)) Then
  loc_E8ECF7:   Call Fgrid1_UnknownEvent_9()
  loc_E8ECFC: End If
  loc_E8ECFC: Exit Sub
  loc_E8ECFD: Set var_C0 = 0
End Sub

Private Sub Fgrid1_UnknownEvent_10 'F87BD4
  'Data Table: 4780F4
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F87A9A: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F87ABC: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F87AC1: var_D0 = 0
  loc_F87AF8: If (CStr(Me.FGrid1.TextMatrix)) <> "ü") Then
  loc_F87B20:   For var_F8 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F87B39:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F87B54:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_F87B5F:   Next var_F8 'Integer
  loc_F87B67: Else
  loc_F87B8C:   For var_FC = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F87BA5:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F87BC0:     Me.FGrid1.CellBackColor = &HFF00
  loc_F87BCB:   Next var_FC 'Integer
  loc_F87BD0: End If
  loc_F87BD0: Exit Sub
End Sub

Private Sub Form_Load() '13D6C30
  'Data Table: 4780F4
  Dim var_A0 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_BC As DataGrid
  Dim var_C0 As TextBox
  Dim var_E8 As Variant
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_1C8 As String
  Dim var_1D8 As Variant
  Dim var_1E8 As String
  Dim var_268 As String
  Dim var_27C As String
  Dim unk_4780F7 As Connection15
  Dim var_D8 As Variant
  Dim var_2AC As String
  loc_13D62B2: Proc_6_23_DFBA28(Me, 0)
  loc_13D62C1: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13D62D9: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13D62F4: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13D630F: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13D6325: Set var_8C = Me.Txt
  loc_13D632B: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13D634A: Me.DGHelp.Left = CVar(var_B4.Left)
  loc_13D6366: Set var_BC = Me.Txt
  loc_13D636C: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_13D6387: Set var_8C = Me.Txt
  loc_13D638D: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13D63A5: var_A0 = CVar(((var_B4.Top + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_13D63B4: Me.DGHelp.Top = CVar(var_B4.Left)
  loc_13D63D9: Me.FGrid2.Rows = 1
  loc_13D63EE: Set var_8C = Me.FGrid2
  loc_13D63F4: var_8C.Cols = 1
  loc_13D6465: var_128 = "SELECT RoomMast.Code AS [SELECT], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid,  RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_13D6479: var_1C8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono,GuestFolio.MFolioNoDocId FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_13D647E: var_1D8 = var_128 & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1C8 
  loc_13D6482: var_1E8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (GuestFolio.LOGSITE_CODE='"
  loc_13D64A8: var_268 = "') AND (GuestFolio.DocId = GuestFolio.mFolioNoDocId) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_13D64BB: unk_4780F7.Execute CStr(var_1D8 & var_1E8 & CVar(MemVar_1F92078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_268), var_29C, -1
  loc_13D64CC: Set global_52 = var_8C
  loc_13D650A: CVarUnk
  loc_13D650F: VerifyVarObj
  loc_13D6515: Set var_8C = Me.FGrid
  loc_13D651B: LateIdStAd
  loc_13D652D: Set var_8C = Me.FGrid
  loc_13D654D: var_D8 = Me.FGrid.Rows
  loc_13D6563: For var_2A0 = 1 To CInt((CLng(var_D8) - 1)): var_86 = var_2A0 'Integer
  loc_13D656D:   var_A0 = CVar(CLng(var_86)) 'Long
  loc_13D6572:   var_E8 = 0
  loc_13D657B:   var_138 = vbNullString
  loc_13D6585:   Set var_8C = Me.FGrid
  loc_13D658B:   LateIdCallSt
  loc_13D6599: Next var_2A0 'Integer
  loc_13D659E: var_A0 = 0
  loc_13D65A7: var_E8 = 0
  loc_13D65B0: var_138 = &H352
  loc_13D65BD: Set var_8C = Me.FGrid
  loc_13D65C3: LateIdCallSt
  loc_13D65CE: var_A0 = 1
  loc_13D65D7: var_E8 = 0
  loc_13D65E0: var_138 = &H384
  loc_13D65ED: Set var_8C = Me.FGrid
  loc_13D65F3: LateIdCallSt
  loc_13D65FE: var_A0 = 2
  loc_13D6607: var_E8 = 0
  loc_13D6610: var_138 = 0
  loc_13D661D: Set var_8C = Me.FGrid
  loc_13D6623: LateIdCallSt
  loc_13D662E: var_A0 = 3
  loc_13D6637: var_E8 = 0
  loc_13D6640: var_138 = 0
  loc_13D664D: Set var_8C = Me.FGrid
  loc_13D6653: LateIdCallSt
  loc_13D665E: var_A0 = 4
  loc_13D6667: var_E8 = 0
  loc_13D6670: var_138 = 0
  loc_13D667D: Set var_8C = Me.FGrid
  loc_13D6683: LateIdCallSt
  loc_13D668E: var_A0 = 5
  loc_13D6697: var_E8 = 0
  loc_13D66A0: var_138 = &H44C
  loc_13D66AD: Set var_8C = Me.FGrid
  loc_13D66B3: LateIdCallSt
  loc_13D66BE: var_A0 = 6
  loc_13D66C7: var_E8 = 0
  loc_13D66D0: var_138 = &HB22
  loc_13D66DD: Set var_8C = Me.FGrid
  loc_13D66E3: LateIdCallSt
  loc_13D66EE: var_A0 = 7
  loc_13D66F7: var_E8 = 0
  loc_13D6700: var_138 = 0
  loc_13D670D: Set var_8C = Me.FGrid
  loc_13D6713: LateIdCallSt
  loc_13D671E: var_A0 = 8
  loc_13D6727: var_E8 = 0
  loc_13D6730: var_138 = &HA8C
  loc_13D673D: Set var_8C = Me.FGrid
  loc_13D6743: LateIdCallSt
  loc_13D674E: var_A0 = 9
  loc_13D6757: var_E8 = 0
  loc_13D6760: var_138 = 0
  loc_13D676D: Set var_8C = Me.FGrid
  loc_13D6773: LateIdCallSt
  loc_13D677E: var_A0 = &HA
  loc_13D6787: var_E8 = 0
  loc_13D6790: var_138 = 0
  loc_13D679D: Set var_8C = Me.FGrid
  loc_13D67A3: LateIdCallSt
  loc_13D67AE: var_A0 = &HB
  loc_13D67B7: var_E8 = 0
  loc_13D67C0: var_138 = &H6A4
  loc_13D67CD: Set var_8C = Me.FGrid
  loc_13D67D3: LateIdCallSt
  loc_13D67DE: var_A0 = &HC
  loc_13D67E7: var_E8 = 0
  loc_13D67F0: var_138 = 0
  loc_13D67FD: Set var_8C = Me.FGrid
  loc_13D6803: LateIdCallSt
  loc_13D680E: var_A0 = &HD
  loc_13D6817: var_E8 = 0
  loc_13D6820: var_138 = 0
  loc_13D682D: Set var_8C = Me.FGrid
  loc_13D6833: LateIdCallSt
  loc_13D683E: var_A0 = &HE
  loc_13D6847: var_E8 = 0
  loc_13D6850: var_138 = 0
  loc_13D685D: Set var_8C = Me.FGrid
  loc_13D6863: LateIdCallSt
  loc_13D686E: var_A0 = &HF
  loc_13D6877: var_E8 = 0
  loc_13D6880: var_138 = 0
  loc_13D688D: Set var_8C = Me.FGrid
  loc_13D6893: LateIdCallSt
  loc_13D689E: var_A0 = &H10
  loc_13D68A7: var_E8 = 0
  loc_13D68B0: var_138 = 0
  loc_13D68BD: Set var_8C = Me.FGrid
  loc_13D68C3: LateIdCallSt
  loc_13D68CE: var_A0 = &H11
  loc_13D68D7: var_E8 = 0
  loc_13D68F3: LateIdCallSt
  loc_13D6912: var_27C = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.Docid = GuestFolio.Docid) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE ((GuestFolio.LOGSITE_CODE='" & MemVar_1F92078
  loc_13D6927: var_2AC = var_27C & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO'))) and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL)  ORDER BY RoomMast.Code"
  loc_13D6930: unk_4780F7.Execute var_2AC, var_D8, -1
  loc_13D6963: CVarUnk
  loc_13D6968: VerifyVarObj
  loc_13D696E: Set var_8C = Me.DGHelp
  loc_13D6974: LateIdStAd
  loc_13D6991: Me.DGHelp.Visible = False
  loc_13D69A5: Me.cmdTransferCharge.Enabled = False
  loc_13D69BE: Call 0.Method_Form_Load0 (1, var_B4, 0, Me.chkSelectALL, Me.FGrid, Me.chkSelectALL, Me.chkSelectALL)
  loc_13D69C6: var_B4.Visible = 0
  loc_13D69E5: Me.FGrid1.Rows = 1
  loc_13D69ED: var_A0 = 0
  loc_13D69F6: var_E8 = 0
  loc_13D69FF: var_138 = &HA
  loc_13D6A0C: Set var_8C = Me.FGrid1
  loc_13D6A12: LateIdCallSt
  loc_13D6A1D: var_A0 = 1
  loc_13D6A26: var_E8 = 0
  loc_13D6A2F: var_138 = &H3E8
  loc_13D6A3C: Set var_8C = Me.FGrid1
  loc_13D6A42: LateIdCallSt
  loc_13D6A4D: var_A0 = 2
  loc_13D6A56: var_E8 = 0
  loc_13D6A5F: var_138 = 0
  loc_13D6A6C: Set var_8C = Me.FGrid1
  loc_13D6A72: LateIdCallSt
  loc_13D6A7D: var_A0 = 3
  loc_13D6A86: var_E8 = 0
  loc_13D6A8F: var_138 = 0
  loc_13D6A9C: Set var_8C = Me.FGrid1
  loc_13D6AA2: LateIdCallSt
  loc_13D6AAD: var_A0 = 4
  loc_13D6AB6: var_E8 = 0
  loc_13D6ABF: var_138 = &H4B0
  loc_13D6ACC: Set var_8C = Me.FGrid1
  loc_13D6AD2: LateIdCallSt
  loc_13D6ADD: var_A0 = 5
  loc_13D6AE6: var_E8 = 0
  loc_13D6AEF: var_138 = &H3E8
  loc_13D6AFC: Set var_8C = Me.FGrid1
  loc_13D6B02: LateIdCallSt
  loc_13D6B0D: var_A0 = 6
  loc_13D6B16: var_E8 = 0
  loc_13D6B1F: var_138 = &H3E8
  loc_13D6B2C: Set var_8C = Me.FGrid1
  loc_13D6B32: LateIdCallSt
  loc_13D6B3D: var_A0 = 7
  loc_13D6B46: var_E8 = 0
  loc_13D6B4F: var_138 = &H4B0
  loc_13D6B5C: Set var_8C = Me.FGrid1
  loc_13D6B62: LateIdCallSt
  loc_13D6B6D: var_A0 = 8
  loc_13D6B76: var_E8 = 0
  loc_13D6B7F: var_138 = &H4B0
  loc_13D6B8C: Set var_8C = Me.FGrid1
  loc_13D6B92: LateIdCallSt
  loc_13D6B9D: var_A0 = 9
  loc_13D6BA6: var_E8 = 0
  loc_13D6BAF: var_138 = &H4B0
  loc_13D6BBC: Set var_8C = Me.FGrid1
  loc_13D6BC2: LateIdCallSt
  loc_13D6BCD: var_A0 = &HA
  loc_13D6BD6: var_E8 = 0
  loc_13D6BDF: var_138 = 0
  loc_13D6BEC: Set var_8C = Me.FGrid1
  loc_13D6BF2: LateIdCallSt
  loc_13D6BFD: var_A0 = &HB
  loc_13D6C06: var_E8 = 0
  loc_13D6C0F: var_138 = 0
  loc_13D6C1C: Set var_8C = Me.FGrid1
  loc_13D6C22: LateIdCallSt
  loc_13D6C2D: Exit Sub
End Sub

Private Sub Form_Resize() 'E6EDF8
  'Data Table: 4780F4
  Dim arg_7CFF As Integer
  loc_E6EDA2: Call 0.Method_arg_50 (var_88)
  loc_E6EDB4: Me.LblFormCaption.Caption = var_88
  loc_E6EDCD: Me.LblFormCaption.Left = CDbl(0)
  loc_E6EDDB: Call 0.Method_arg_100 (var_90)
  loc_E6EDED: Me.LblFormCaption.Width = var_90
  loc_E6EDF5: Exit Sub
  loc_E6EDF6: arg_7CFF = 
End Sub

Public Sub DGridTxtPointSet(DGrid, Rst, TxtIndex, PointerGrid) '119399C
  'Data Table: 4780F4
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_F4 As Variant
  Dim @ As Label
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_90 As Double
  loc_11935BD: If (Me.Recordset15.EOF = 0) Then
  loc_11935C8:   If Not((PointerGrid Is Nothing)) Then
  loc_11935D9:     Me.Font.Name = "MS SANS SARIFF"
  loc_11935EE:     Me.HeadFont.Name = "SYSTEM"
  loc_119360A:     Me.Font.Size = 9.75
  loc_1193626:     Me.HeadFont.Size = 9.75
  loc_119363D:     Me.HeadLines = 1.5
  loc_1193651:     Me.RowHeight = &H10E
  loc_1193668:     var_E4 = (Me.Columns.Count + 1)
  loc_119366E:     var_B4 = CVar(CLng(var_E4)) 'Long
  loc_119369C:     var_E4 = (Me.Columns.Count - 1)
  loc_11936A8:     For var_F8 = 0 To CInt(var_E4): var_86 = var_F8 'Integer
  loc_11936B2:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_11936D1:       var_108 = CVar(CLng(Me.Columns.width)) 'Long
  loc_11936D9:       LateIdCallSt
  loc_11936E8:       var_B4 = 0
  loc_11936F5:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1193713:       var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_119371A:       LateIdCallSt
  loc_1193752:       If (Me.Columns.Alignment = 0) Then
  loc_1193759:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1193764:         var_F4 = CVar(CInt(1)) 'Integer
  loc_119376B:         LateIdCallSt
  loc_1193776:       Else
  loc_119377A:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1193785:         var_F4 = CVar(CInt(7)) 'Integer
  loc_119378C:         LateIdCallSt
  loc_1193794:       End If
  loc_1193797:     Next var_F8 'Integer
  loc_11937AE:     @.Height = CVar(CDbl(Me.RowHeight))
  loc_11937B6:     var_A4 = 0
  loc_11937C9:     var_F4 = CVar(CLng(Me.RowHeight)) 'Long
  loc_11937D1:     LateIdCallSt
  loc_11937F1:     var_D4 = (Me.Row - 1)
  loc_1193801:     var_158 = (Me.top + (Me.Columns.Alignment * Me.RowHeight))
  loc_119380D:     var_178 = (var_158 + Me.RowHeight)
  loc_1193816:     var_188 = (var_178 + 260)
  loc_1193824:     @.Top = CVar(CDbl(var_188))
  loc_1193847:     var_D4 = (Me.left + 310)
  loc_1193855:     @.Left = CVar(CDbl(Me.Columns.Alignment))
  loc_1193869:     var_E4 = Me.Font.Size
  loc_119387E:     Set var_18C = LblFormCaption.DispID_FFFFFE00
  loc_119389D:     var_E4 = Me.Font.Name
  loc_11938B2:     Set var_18C = LblFormCaption.DispID_FFFFFE00
  loc_11938B8:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_0
  loc_11938D1:     var_E4 = Me.Font.Bold
  loc_11938E6:     Set var_18C = LblFormCaption.DispID_FFFFFE00
  loc_1193915:     var_E4 = (Me.Columns.Count - 1)
  loc_1193921:     For var_190 = 0 To CInt(var_E4): var_86 = var_190 'Integer
  loc_119394C:       If (Me.Columns.Visible = True) Then
  loc_1193952:         var_B4 = CVar(var_90) 'Double
  loc_119396E:         var_E4 = (var_86 + Me.Columns.width)
  loc_1193973:         var_90 = CSng(var_E4)
  loc_119397F:       End If
  loc_1193982:     Next var_190 'Integer
  loc_119398E:     var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_1193996:     @.Width = 1
  loc_119399B:   End If
  loc_119399B: End If
  loc_119399B: Exit Sub
End Sub

Public Sub Proc_182_23_12BCF50(arg_C) '12BCF50
  'Data Table: 4780F4
  Dim var_E4 As Variant
  Dim var_AC As String
  Dim var_BC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_144 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_140 As Variant
  Dim var_158 As Variant
  loc_12BC920: On Error Goto loc_12BCEEA
  loc_12BC92D: Set global_84 = New 
  loc_12BC93F: Me.Recordset15.CursorLocation = 3
  loc_12BC962: var_AC = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDOCID,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_12BC97E: var_BC = var_AC & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_12BC991: var_D4 = CVar(var_BC & CStr(arg_C) & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_12BC99B: Me.Open var_D4, CVar(MemVar_1F92044), 2
  loc_12BC9C7: Me.FGrid2.Rows = 1
  loc_12BC9E2: Me.FGrid2.Cols = 1
  loc_12BC9EE: var_A2 = CByte(0) 'Byte
  loc_12BC9F6: var_A4 = CByte(0) 'Byte
  loc_12BC9FF: var_E4 = CVar(CLng(var_A4)) 'Long
  loc_12BCA04: var_104 = &H1F4
  loc_12BCA11: Set var_A8 = Me.FGrid2
  loc_12BCA17: LateIdCallSt
  loc_12BCA2B: var_118 = Me.RecordCount
  loc_12BCA39: If (var_118 > 0) Then
  loc_12BCA42:   Me.MoveFirst
  loc_12BCA75:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_12BCA82: End If
  loc_12BCA82: var_E4 = 0
  loc_12BCA8B: var_104 = 0
  loc_12BCA9F: Set var_A8 = Me.FGrid2
  loc_12BCAA5: LateIdCallSt
  loc_12BCABB: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_12BCABF: ' Referenced from: 12BCED1
  loc_12BCAD1: If Not(Me.EOF) Then
  loc_12BCB14:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_12BCB17:     ' Referenced from: 12BCDE5
  loc_12BCB1B:     Set var_144 = Me.FGrid2
  loc_12BCB39:     If ((CLng(var_144.Cols) - 1) < CLng(var_A2)) Then
  loc_12BCB4E:       var_E4 = CVar((CLng(var_144.Cols) + 1)) 'Long
  loc_12BCB56:       var_144.Cols = "RoomCat"
  loc_12BCB5E:     End If
  loc_12BCB63:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_12BCB6D:     var_114 = CVar(CLng(var_A2)) 'Long
  loc_12BCBA0:     var_140 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_12BCBA7:     LateIdCallSt
  loc_12BCC2B:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_12BCC42:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_12BCC5E:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_12BCC79:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_12BCCBD:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_12BCCD2:     End If
  loc_12BCCD7:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_12BCCDC:     var_104 = &H28A
  loc_12BCCE9:     Set var_A8 = Me.FGrid2
  loc_12BCCEF:     LateIdCallSt
  loc_12BCCFF:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_12BCD0A:     var_104 = CVar(CInt(4)) 'Integer
  loc_12BCD12:     Set var_A8 = Me.FGrid2
  loc_12BCD18:     LateIdCallSt
  loc_12BCD2E:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_12BCD34:     Set var_144 = Nothing 
  loc_12BCD3B:   Else
  loc_12BCD40:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_12BCD45:     var_114 = 0
  loc_12BCD7C:     var_140 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_12BCD84:     Set var_158 = Me.FGrid2
  loc_12BCD8A:     LateIdCallSt
  loc_12BCDD0:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_12BCDE1:     var_A2 = CByte(1) 'Byte
  loc_12BCDE5:     GoTo loc_12BCB17
  loc_12BCDE8:   End If
  loc_12BCDEE:   Me.MoveNext
  loc_12BCE07:   If (Me.EOF = 0) Then
  loc_12BCE4A:     If CBool(CVar(var_A0) <> Me.Fields.Item("RoomCat").Value) Then
  loc_12BCE66:       var_E4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_12BCE75:       Me.FGrid2.Rows = "RoomCat"
  loc_12BCE9F:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_12BCEAE:       var_E4 = CVar(CLng(var_A4)) 'Long
  loc_12BCEB3:       var_104 = &H1F4
  loc_12BCEC0:       Set var_A8 = Me.FGrid2
  loc_12BCEC6:       LateIdCallSt
  loc_12BCED1:     End If
  loc_12BCED1:   End If
  loc_12BCED1:   GoTo loc_12BCABF
  loc_12BCED4: End If
  loc_12BCED8: Set var_A8 = Me.FGrid2
  loc_12BCEE9: Exit Sub
  loc_12BCEEA: ' Referenced from: 12BC920
  loc_12BCEF8: var_E4 = "FILL DETAILS"
  loc_12BCF03: MsgBox(var_E4, 0, var_140, var_16C, var_17C)
  loc_12BCF2F: Call 0.Method_arg_1C (var_118, 0, var_140, var_16C, var_17C, FGrid2.DispID_FFFF, Err(), var_104)
  loc_12BCF3B: MsgBox(CVar(var_118), var_E4, var_158, var_140, var_114)
  loc_12BCF4E: Exit Sub
End Sub

Public Sub Proc_182_24_11F71DC(arg_C, arg_10, arg_14, arg_18, arg_1C) '11F71DC
  'Data Table: 4780F4
  Dim var_8C As MSHFlexGrid
  Dim var_86 As Integer
  Dim var_B0 As Variant
  Dim var_D0 As Long
  Dim var_110 As Variant
  Dim var_140 As Variant
  Dim var_174 As MSHFlexGrid
  Dim var_188 As String
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_220 As Variant
  Dim var_230 As Variant
  loc_11F6D60: On Error Goto loc_11F7198
  loc_11F6D88: For var_A0 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Integer
  loc_11F6D90:   var_86 = 0
  loc_11F6D97:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_11F6D9C:   var_D0 = 1
  loc_11F6DC0:   var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F6DD3:   var_120 = Trim(arg_C)
  loc_11F6DE3:   var_140 = CVar(CLng(var_88)) 'Long
  loc_11F6E12:   var_1A8 = 4 And (CStr(Me.FGrid1.TextMatrix)) = arg_10)
  loc_11F6E1A:   var_1B8 = CVar(CLng(var_88)) 'Long
  loc_11F6E49:   var_220 = &HE And (CStr(Me.FGrid1.TextMatrix)) = arg_14)
  loc_11F6E51:   var_230 = CVar(CLng(var_88)) 'Long
  loc_11F6EB1:   If CBool(&HC And (CStr(Me.FGrid1.TextMatrix)) = arg_18)) Then
  loc_11F6EC7:     Me.FGrid1.Col = 0
  loc_11F6EE2:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11F6EFA:     Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11F6F14:     Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11F6F2F:     Me.FGrid1.CellForeColor = &HFF0000
  loc_11F6F4A:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F6F4F:     var_D0 = 0
  loc_11F6F86:     If (CStr(Me.FGrid1.TextMatrix)) <> arg_1C) Then
  loc_11F6F9C:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F6FA1:       var_D0 = 0
  loc_11F6FB5:       Set var_174 = Me.FGrid1
  loc_11F6FBB:       LateIdCallSt
  loc_11F6FE0:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F6FE5:       var_D0 = 0
  loc_11F7003:       var_188 = CStr(Me.FGrid1.TextMatrix))
  loc_11F701C:       If (var_188 <> "ü") Then
  loc_11F7032:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7037:         var_D0 = 0
  loc_11F7040:         var_110 = vbNullString
  loc_11F704A:         Set var_174 = Me.FGrid1
  loc_11F7050:         LateIdCallSt
  loc_11F7087:         For var_29C = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_29C 'Integer
  loc_11F70A0:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F70BB:           Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11F70C6:         Next var_29C 'Integer
  loc_11F70CE:       Else
  loc_11F70E1:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F70E6:         var_D0 = 0
  loc_11F70EF:         var_110 = "ü"
  loc_11F70F9:         Set var_174 = Me.FGrid1
  loc_11F70FF:         LateIdCallSt
  loc_11F7136:         For var_2A0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_2A0 'Integer
  loc_11F714F:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F716A:           Me.FGrid1.CellBackColor = &HFF00
  loc_11F7175:         Next var_2A0 'Integer
  loc_11F717A:       End If
  loc_11F717A:     End If
  loc_11F717A:   End If
  loc_11F717D: Next var_A0 'Integer
  loc_11F7186: Set var_8C = Me.FGrid1
  loc_11F7197: Exit Sub
  loc_11F7198: ' Referenced from: 11F6D60
  loc_11F71A0: Set var_8C = Err()
  loc_11F71A6: Call 0.Method_arg_2C (var_188)
  loc_11F71C7: MsgBox(CVar(var_188), &H40, "Error...", var_100, var_120)
  loc_11F71DA: Exit Sub
End Sub

Public Sub Proc_182_25_1135C40
  'Data Table: 4780F4
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_260 As TextBox
  Dim var_F8 As String
  Dim var_118 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As String
  Dim var_1C8 As String
  Dim var_248 As String
  Dim var_284 As Variant
  Dim var_294 As String
  Dim unk_4780F7 As Connection15
  Dim var_25C As MSHFlexGrid
  loc_1135962: Set var_25C = Me.Txt
  loc_1135968: Call 0.Method_Proc_182_25_1135C400 (CInt(1), var_260)
  loc_113598D: var_F8 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo , GuestFolio.Docid as FolioNoDocid, GuestProf.Name AS [Guest Name], RoomMast.Name AS Quot,"
  loc_11359A5: var_198 = var_F8 & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") 
  loc_11359A9: var_1A8 = " as [Departure Date], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_11359B2: var_1C8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_11359D8: var_248 = "') AND (GuestFolio.mFolioNo is Null or GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' AND RoomOcc.RoomNo <> '"
  loc_11359E8: var_284 = var_198 & var_1A8 & var_1C8 & CVar(MemVar_1F92078) & "' And RoomMAst.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_248 & CVar(Val(var_260.Text)) 
  loc_11359EC: var_294 = "')  and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_11359FF: unk_4780F7.Execute CStr(var_284 & var_294), var_2C8, -1
  loc_1135A10: Set global_52 = var_2CC
  loc_1135A5A: CVarUnk
  loc_1135A5F: VerifyVarObj
  loc_1135A65: Set var_25C = Me.FGrid
  loc_1135A6B: LateIdStAd
  loc_1135A7D: Set var_25C = Me.FGrid
  loc_1135AB3: For var_2DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2DC 'Integer
  loc_1135ABD:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1135AC2:   var_C8 = 0
  loc_1135ACB:   var_118 = vbNullString
  loc_1135AD5:   Set var_25C = Me.FGrid
  loc_1135ADB:   LateIdCallSt
  loc_1135AE9: Next var_2DC 'Integer
  loc_1135AEE: var_98 = 2
  loc_1135AF7: var_C8 = 0
  loc_1135B00: var_118 = &H7D0
  loc_1135B0D: Set var_25C = Me.FGrid
  loc_1135B13: LateIdCallSt
  loc_1135B1E: var_98 = 3
  loc_1135B27: var_C8 = 0
  loc_1135B30: var_118 = 0
  loc_1135B3D: Set var_25C = Me.FGrid
  loc_1135B43: LateIdCallSt
  loc_1135B4E: var_98 = 4
  loc_1135B57: var_C8 = 0
  loc_1135B60: var_118 = &H4B0
  loc_1135B6D: Set var_25C = Me.FGrid
  loc_1135B73: LateIdCallSt
  loc_1135B7E: var_98 = 5
  loc_1135B87: var_C8 = 0
  loc_1135B90: var_118 = &H4B0
  loc_1135B9D: Set var_25C = Me.FGrid
  loc_1135BA3: LateIdCallSt
  loc_1135BAE: var_98 = &HD
  loc_1135BB7: var_C8 = 0
  loc_1135BC0: var_118 = 0
  loc_1135BCD: Set var_25C = Me.FGrid
  loc_1135BD3: LateIdCallSt
  loc_1135BDE: var_98 = &HE
  loc_1135BE7: var_C8 = 0
  loc_1135BF0: var_118 = 0
  loc_1135BFD: Set var_25C = Me.FGrid
  loc_1135C03: LateIdCallSt
  loc_1135C0E: var_98 = &HF
  loc_1135C17: var_C8 = 0
  loc_1135C20: var_118 = 0
  loc_1135C2D: Set var_25C = Me.FGrid
  loc_1135C33: LateIdCallSt
  loc_1135C3E: Exit Sub
End Sub

Public Sub Proc_182_26_133EB7C
  'Data Table: 4780F4
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_194 As Variant
  Dim unk_4780F7 As Connection15
  Dim Me As Recordset15
  loc_133E3BC: On Error Goto loc_133EB38
  loc_133E3C2: var_88 = vbNullString
  loc_133E3CB: global_80 = vbNullString
  loc_133E3FE: For var_A4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8A = var_A4 'Integer
  loc_133E408:   var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E40D:   var_D4 = 0
  loc_133E43C:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_133E44A:     If (vbNullString = vbNullString) Then
  loc_133E451:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E459:       var_D4 = CVar(CLng(2)) 'Long
  loc_133E479:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_133E48D:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E4C0:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133E4D3:       var_120 = " WHERE (RTrim(LTrim(RO.RoomNo))<>'"
  loc_133E4DC:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E504:       var_110 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_133E50C:       var_130 = CVar(CLng(1)) & var_110 
  loc_133E515:       var_150 = var_130 & "' Or Ro.RoomNo is Null) And PayCharge.FolioNoDocid ='" 
  loc_133E51D:       var_160 = CVar(CLng(var_8A)) 'Long
  loc_133E52E:       Set var_194 = Me.FGrid
  loc_133E550:       var_88 = CStr(CVar(CLng(2)) & CVar(CStr(var_194.TextMatrix))) & "'")
  loc_133E572:     Else
  loc_133E57C:       var_E8 = global_80 & ",'"
  loc_133E583:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E5B6:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133E5D2:       var_E8 = var_88 & " OR PayCharge.FolioNoDocid ='"
  loc_133E5D9:       var_B4 = CVar(CLng(var_8A)) 'Long
  loc_133E5F0:       var_A0 = Me.FGrid.TextMatrix)
  loc_133E606:       var_88 = CVar(CLng(2)) & CStr(var_A0) & "'"
  loc_133E618:     End If
  loc_133E618:   End If
  loc_133E61B: Next var_A4 'Integer
  loc_133E624: Set var_90 = Me.FGrid1
  loc_133E658: If (((global_80 = vbNullString) Or (global_80 = "0")) Or (global_80 = vbNullString)) Then
  loc_133E683:   Me.FGrid1.Rows = 1
  loc_133E696:   Set var_90 = Me.chkSelectALL
  loc_133E69C:   Call 0.Method_Proc_182_26_133EB7C0 (1, var_194, 0)
  loc_133E6A4:   var_194.Visible = Me.FGrid1.Text
  loc_133E6B6:   Set var_90 = Me.cmdTransferCharge
  loc_133E6BC:   var_90.Enabled = False
  loc_133E6C4:   Exit Sub
  loc_133E6C5: End If
  loc_133E6D9: var_E8 = "SELECT '' AS [SELECT], PayCharge.RoomNo As PRoomNO, CASE WHEN RO.RoomNo IS NULL THEN 'NA' ELSE RO.RoomNo END AS RoomNo, PayCharge.RoomType, convert(Varchar(11),PayCharge.VDate) AS [Dept Date], PayCharge.Comments , PayCharge.PayType, PayCharge.AmtCr AS Credit, PayCharge.AmtDr AS Debit, PayCharge.TipAmt, GuestProf.Name As [Guest Name], PayCharge.FolioNo, PayCharge.FolioNoDocid , PayCharge.RelatedFolioNo,PayCharge.VTime,RO.VPrefix From PayCharge Left Join GuestProf on guestprof.code=paycharge.guestProf Left Join (Select * From RoomOcc Where (Roomocc.Type Not in ('C') OR Roomocc.Type is Null)) RO on RO.FolioNO=paycharge.RelatedFolioNo " & var_88
  loc_133E6E0: var_EC = var_E8 & " And Paycharge.RelatedFolioNo<>0 ORDER BY PayCharge.RelatedFolioNo,PayCharge.RoomNo, PayCharge.Vdate, PayCharge.Vtime"
  loc_133E6E9: unk_4780F7.Execute var_EC, var_A0, -1
  loc_133E6FA: Set global_68 = var_90
  loc_133E726: If (Me.RecordCount <= 0) Then
  loc_133E751:   Me.FGrid1.Rows = 1
  loc_133E765:   Me.cmdTransferCharge.Enabled = False
  loc_133E778:   Set var_90 = Me.chkSelectALL
  loc_133E77E:   Call 0.Method_Proc_182_26_133EB7C0 (1, var_194, 0)
  loc_133E786:   var_194.Visible = Me.FGrid1.Text
  loc_133E792:   Exit Sub
  loc_133E796: Else
  loc_133E7A7:   Call 0.Method_Proc_182_26_133EB7C0 (1, var_194, &HFF)
  loc_133E7AF:   var_194.Visible = Me.chkSelectALL
  loc_133E7BB: End If
  loc_133E7CE: Me.FGrid1.Rows = 2
  loc_133E7E9: Me.FGrid1.FixedRows = 1
  loc_133E7FA: CVarUnk
  loc_133E7FF: VerifyVarObj
  loc_133E805: Set var_90 = Me.FGrid1
  loc_133E80B: LateIdStAd
  loc_133E819: var_B4 = 1
  loc_133E822: var_D4 = 0
  loc_133E82B: var_120 = 0
  loc_133E838: Set var_90 = Me.FGrid1
  loc_133E83E: LateIdCallSt
  loc_133E849: var_B4 = 2
  loc_133E852: var_D4 = 0
  loc_133E85B: var_120 = &H2BC
  loc_133E868: Set var_90 = Me.FGrid1
  loc_133E86E: LateIdCallSt
  loc_133E879: var_B4 = 3
  loc_133E882: var_D4 = 0
  loc_133E88B: var_120 = 0
  loc_133E898: Set var_90 = Me.FGrid1
  loc_133E89E: LateIdCallSt
  loc_133E8A9: var_B4 = 4
  loc_133E8B2: var_D4 = 0
  loc_133E8BB: var_120 = &H384
  loc_133E8C8: Set var_90 = Me.FGrid1
  loc_133E8CE: LateIdCallSt
  loc_133E8D9: var_B4 = 5
  loc_133E8E2: var_D4 = 0
  loc_133E8EB: var_120 = 0
  loc_133E8F8: Set var_90 = Me.FGrid1
  loc_133E8FE: LateIdCallSt
  loc_133E909: var_B4 = 6
  loc_133E912: var_D4 = 0
  loc_133E91B: var_120 = 0
  loc_133E928: Set var_90 = Me.FGrid1
  loc_133E92E: LateIdCallSt
  loc_133E939: var_B4 = 7
  loc_133E942: var_D4 = 0
  loc_133E94B: var_120 = 0
  loc_133E958: Set var_90 = Me.FGrid1
  loc_133E95E: LateIdCallSt
  loc_133E969: var_B4 = 8
  loc_133E972: var_D4 = 0
  loc_133E97B: var_120 = 0
  loc_133E988: Set var_90 = Me.FGrid1
  loc_133E98E: LateIdCallSt
  loc_133E999: var_B4 = 9
  loc_133E9A2: var_D4 = 0
  loc_133E9AB: var_120 = 0
  loc_133E9B8: Set var_90 = Me.FGrid1
  loc_133E9BE: LateIdCallSt
  loc_133E9C9: var_B4 = &HA
  loc_133E9D2: var_D4 = 0
  loc_133E9DB: var_120 = &H960
  loc_133E9E8: Set var_90 = Me.FGrid1
  loc_133E9EE: LateIdCallSt
  loc_133E9F9: var_B4 = &HB
  loc_133EA02: var_D4 = 0
  loc_133EA0B: var_120 = 0
  loc_133EA18: Set var_90 = Me.FGrid1
  loc_133EA1E: LateIdCallSt
  loc_133EA29: var_B4 = &HC
  loc_133EA32: var_D4 = 0
  loc_133EA3B: var_120 = 0
  loc_133EA48: Set var_90 = Me.FGrid1
  loc_133EA4E: LateIdCallSt
  loc_133EA59: var_B4 = &HD
  loc_133EA62: var_D4 = 0
  loc_133EA6B: var_120 = 0
  loc_133EA78: Set var_90 = Me.FGrid1
  loc_133EA7E: LateIdCallSt
  loc_133EA89: var_B4 = &HE
  loc_133EA92: var_D4 = 0
  loc_133EA9B: var_120 = 0
  loc_133EAA8: Set var_90 = Me.FGrid1
  loc_133EAAE: LateIdCallSt
  loc_133EAC2: var_D4 = 0
  loc_133EACB: var_120 = 0
  loc_133EAD8: Set var_90 = Me.FGrid1
  loc_133EADE: LateIdCallSt
  loc_133EAED: Set var_90 = Me.FGrid1
  loc_133EB0F: Call 0.Method_Proc_182_26_133EB7C0 (1, var_194, 0, FGrid1.DispID_FFFF, Me.chkSelectALL, var_120, var_D4)
  loc_133EB17: var_194.Value = &HF
  loc_133EB2F: Me.cmdTransferCharge.Enabled = True
  loc_133EB37: Exit Sub
  loc_133EB38: ' Referenced from: 133E3BC
  loc_133EB46: Call 0.Method_arg_2C (var_E8, Err(), var_120, var_D4)
  loc_133EB67: MsgBox(CVar(var_E8), &H10, "Error...", var_110, var_130)
  loc_133EB7A: Exit Sub
End Sub

Public Sub Proc_182_27_E98704
  'Data Table: 4780F4
  loc_E9869C: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E986AE:   Me.DGHelp.Visible = False
  loc_E986B6: End If
  loc_E986D2: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E986E4:   Me.FGPoint.Visible = False
  loc_E986EC: End If
  loc_E986F8: Me.cmdTransferCharge.Enabled = False
  loc_E98700: Exit Sub
End Sub
