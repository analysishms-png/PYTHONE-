VERSION 5.00
Begin VB.Form FrmMergeCharge
  Caption = "Room Merge"
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
  ClientWidth = 11880
  ClientHeight = 7275
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 1
    BackColor = &H808080&
    Left = 19530
    Top = 9675
    Width = 255
    Height = 255
    TabIndex = 8
  End
  Begin CheckBox chkSelectALL
    Caption = "Check1"
    Index = 0
    BackColor = &HFF0000&
    Left = 330
    Top = 975
    Width = 255
    Height = 255
    TabIndex = 5
  End
  Begin DataGrid DGHelp
    Left = 13635
    Top = 180
    Width = 6090
    Height = 2055
    TabIndex = 3
  End
  Begin MSFlexGrid FGPoint
    Left = 15585
    Top = 1860
    Width = 3225
    Height = 1800
    Visible = 0   'False
    TabIndex = 11
  End
  Begin CommandButton cmdTransferCharge
    Caption = "Transfer &Charges"
    Left = 12030
    Top = 3285
    Width = 1695
    Height = 375
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
    Left = 12690
    Top = 2610
    Width = 1455
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
  End
  Begin MSHFlexGrid FGrid
    Left = 285
    Top = 960
    Width = 10275
    Height = 7530
    TabIndex = 6
  End
  Begin MSHFlexGrid FGrid1
    Left = 19500
    Top = 9660
    Width = 870
    Height = 1335
    TabIndex = 9
  End
  Begin MSHFlexGrid FGrid2
    Left = 10605
    Top = 5400
    Width = 4770
    Height = 3075
    TabIndex = 12
  End
  Begin BtnEnh BtnroomMerge
    Left = 10890
    Top = 3735
    Width = 1350
    Height = 1350
    TabIndex = 14
  End
  Begin BtnEnh BtnExit
    Left = 12495
    Top = 3750
    Width = 1395
    Height = 1290
    TabIndex = 15
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
    Left = 12690
    Top = 2610
    Width = 1455
    Height = 255
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
    Caption = "List of Room"
    Index = 0
    BackColor = &HFF0000&
    ForeColor = &H80000005&
    Left = 210
    Top = 585
    Width = 10425
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
    Left = 19800
    Top = 8145
    Width = 750
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
    Caption = "Select Leader Room"
    Index = 5
    ForeColor = &HC0&
    Left = 10680
    Top = 2565
    Width = 1950
    Height = 240
    TabIndex = 0
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

Attribute VB_Name = "FrmMergeCharge"


Private Sub btnExit_UnknownEvent_9 'E17858
  'Data Table: 47FC44
  Dim var_3301 As Double
  loc_E1784D: Me.Global.Unload Me
  loc_E17855: Exit Sub
  loc_E17856: var_3301 = 
End Sub

Private Sub Txt_Change(Index As Integer) 'E59B8C
  'Data Table: 47FC44
  Dim Txt_Change4 As Variant
  Dim var_33BC As Double
  loc_E59B56: If (Index = CInt(1)) Then
  loc_E59B63:   Txt_Change4 = Me.FGrid1.Text
  loc_E59B81:   Me.FGrid1.Rows = 1
  loc_E59B89: End If
  loc_E59B89: Exit Sub
  loc_E59B8A: var_33BC = Txt_Change4
End Sub

Private Sub Txt_GotFocus(Index As Integer) '103FEC0
  'Data Table: 47FC44
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_103FC86: Set var_88 = Me.Txt
  loc_103FC8C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_103FC9A: Proc_6_74_E226B0(var_8C)
  loc_103FCA6: Call Proc_136_29_E987C0(var_8C)
  loc_103FCAB: On Error Goto loc_103FE7A
  loc_103FCB1: var_92 = Index
  loc_103FCBC: If (var_92 = CInt(1)) Then
  loc_103FCD6:   If (Me.RecordCount > 0) Then
  loc_103FCE4:     Set var_8C = Me.FGPoint
  loc_103FCFC:     Call DGridTxtPointSet(Me.DGHelp, global_64, Index, var_8C)
  loc_103FD0A:   End If
  loc_103FD58:   Set var_88 = Me.Txt
  loc_103FD5E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_103FD66:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_103FD7E:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_103FD8E:     Set var_88 = Me.Txt
  loc_103FD94:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FD9C:     var_8C.Tag = vbNullString
  loc_103FDA8:     Exit Sub
  loc_103FDA9:   End If
  loc_103FDB6:   Set var_88 = Me.Txt
  loc_103FDBC:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_103FDC4:   var_A0 = var_8C.Text
  loc_103FDD6:   var_B0 = "RoomNo"
  loc_103FE11:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_103FE1A:     Me.MoveFirst
  loc_103FE3D:     Set var_88 = Me.Txt
  loc_103FE43:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo='")
  loc_103FE4B:     0 = var_8C.Text
  loc_103FE64:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_103FE79:   End If
  loc_103FE79: End If
  loc_103FE79: Exit Sub
  loc_103FE7A: ' Referenced from: 103FCAB
  loc_103FE82: Set var_88 = Err()
  loc_103FE88: Call 0.Method_arg_2C (var_A0)
  loc_103FEA9: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_11C)
  loc_103FEBC: Exit Sub
  loc_103FEBD: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1199858
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_D4 As Variant
  Dim var_A4 As Variant
  Dim var_114 As Variant
  Dim var_124 As String
  Dim var_1B4 As String
  Dim var_1C4 As Variant
  Dim var_1D4 As String
  Dim var_254 As String
  Dim unk_47FC47 As Connection15
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_290 As Column
  loc_119949A: If (CLng(Shift) = &H1B) Then
  loc_11994AB:   Set var_8C = Me.Txt
  loc_11994B1:   Call 0.Method_Txt_KeyDown0 (CInt(1), var_90)
  loc_11994B9:   var_90.Text = vbNullString
  loc_11994C5:   Call Proc_136_29_E987C0()
  loc_11994CA:   Exit Sub
  loc_11994CB: End If
  loc_11994D9: If (KeyCode = CInt(1)) Then
  loc_1199545:   var_114 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_1199559:   var_1B4 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_119955E:   var_1C4 = var_114 & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1B4 
  loc_1199562:   var_1D4 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_1199588:   var_254 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_119959B:   unk_47FC47.Execute CStr(var_1C4 & var_1D4 & CVar(MemVar_1F92078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_254), var_288, -1
  loc_11995AC:   Set global_52 = var_8C
  loc_11995EA:   CVarUnk
  loc_11995EF:   VerifyVarObj
  loc_11995F5:   Set var_8C = Me.FGrid
  loc_11995FB:   LateIdStAd
  loc_1199631:   Set var_290 = Nothing
  loc_119965F:   Proc_6_69_134A198(Me.DGHelp, Me.Txt, KeyCode, global_64, Shift, 0, 0)
  loc_11996CE:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11996D5:     Set var_290 = Me.DGHelp
  loc_11996F4:     Proc_6_138_106D6F8(var_290, global_64, KeyCode, Me.FGPoint, var_290, Me.FGPoint)
  loc_1199702:   End If
  loc_1199710:   Me.DGHelp.Visible = True
  loc_119972A:   Set var_8C = Me.DGHelp
  loc_1199749:   DGHelp.DispID_69.Item(1).Width = CDbl(2600)
  loc_119976B:   Set var_8C = Me.DGHelp
  loc_119978A:   DGHelp.DispID_69.Item(2).Width = CDbl(0)
  loc_119979B:   var_A4 = 1
  loc_11997A4:   var_D4 = &HA28
  loc_11997B1:   Set var_8C = Me.FGPoint
  loc_11997B7:   LateIdCallSt
  loc_11997C2:   var_A4 = 2
  loc_11997CB:   var_D4 = 0
  loc_11997D8:   Set var_8C = Me.FGPoint
  loc_11997DE:   LateIdCallSt
  loc_119980E:   For var_2AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2AC 'Integer
  loc_1199818:     var_A4 = CVar(CLng(var_86)) 'Long
  loc_119981D:     var_D4 = 0
  loc_1199826:     var_124 = vbNullString
  loc_1199830:     Set var_8C = Me.FGrid
  loc_1199836:     LateIdCallSt
  loc_1199844:   Next var_2AC 'Integer
  loc_119984F:   If (Shift = &HD) Then
  loc_1199852:     Call DGHelp_UnknownEvent_9()
  loc_1199857:   End If
  loc_1199857: End If
  loc_1199857: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F762E0
  'Data Table: 47FC44
  Dim arg_10 As Integer
  Dim var_9A As Integer
  Dim var_A4 As TextBox
  Dim var_A0 As DataGrid
  Dim var_98 As Variant
  loc_F761A3: var_88 = "0123456789"
  loc_F761AC: Proc_6_133_E7EF78(var_98)
  loc_F761B5: arg_10 = CInt(var_98)
  loc_F761BE: Proc_6_58_E054C0(arg_10, arg_10)
  loc_F761C6: var_9A = KeyAscii
  loc_F761D1: If (var_9A = CInt(1)) Then
  loc_F761DE:   If (CLng(arg_10) = &H1B) Then
  loc_F761EF:     Set var_A0 = Me.Txt
  loc_F761F5:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4, vbNullString)
  loc_F761FD:     var_A4.Text = var_9A
  loc_F76209:     Call Proc_136_29_E987C0(arg_10)
  loc_F7620E:     Exit Sub
  loc_F7620F:   End If
  loc_F76215:   If (arg_10 <> 0) Then
  loc_F76226:     Set var_A0 = Me.Txt
  loc_F7622C:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_A4)
  loc_F76234:     var_A4.Text = vbNullString
  loc_F7624E:     Proc_303_0_FB9B68("{HOME}")
  loc_F76256:   End If
  loc_F76272:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F76284:     var_A8 = "RoomNo"
  loc_F7629F:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_64, arg_10)
  loc_F762D1:     Proc_6_138_106D6F8(Me.DGHelp, global_64, KeyAscii, Me.FGPoint)
  loc_F762DF:   End If
  loc_F762DF: End If
  loc_F762DF: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E52E18
  'Data Table: 47FC44
  loc_E52DF2: Set var_88 = Me.Txt
  loc_E52DF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E52E06: Proc_6_73_E22704(var_8C)
  loc_E52E12: Call Proc_136_28_1335900(var_8C)
  loc_E52E17: Exit Sub
End Sub

Private Sub Txt_Click(Index As Integer) 'E2A918
  'Data Table: 47FC44
  loc_E2A8FE: If (Index = CInt(1)) Then
  loc_E2A909:   var_8C = "{HOME}+{END}"
  loc_E2A90F:   Proc_303_0_FB9B68(var_8C, 0)
  loc_E2A917: End If
  loc_E2A917: Exit Sub
End Sub

Private Sub chkSelectALL_Click(Index As Integer) '118B5B0
  'Data Table: 47FC44
  Dim var_8C As Variant
  Dim var_A0 As Variant
  Dim var_116 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_E0 As Long
  Dim var_12C As String
  loc_118B1CE: Set var_88 = Me.Txt
  loc_118B1D4: Call 0.Method_chkSelectALL_Click0 (CInt(1), var_8C)
  loc_118B1F3: If (var_8C.Text = vbNullString) Then
  loc_118B202:   Set var_88 = Me.chkSelectALL
  loc_118B208:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C)
  loc_118B210:   var_8C.Value = 0
  loc_118B23D:   MsgBox("Please Select Leader Room No.", &H40, "Error..", var_F0, var_110)
  loc_118B24D:   Exit Sub
  loc_118B24E: End If
  loc_118B251: var_116 = Index
  loc_118B25A: If (var_116 = 0) Then
  loc_118B26A:   Set var_88 = Me.chkSelectALL
  loc_118B270:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C)
  loc_118B278:   var_118 = var_8C.Value
  loc_118B28A:   If (var_118 = 1) Then
  loc_118B2B2:     For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_112 = var_11C 'Integer
  loc_118B2CB:       Me.FGrid.Row = CVar(CLng(var_112))
  loc_118B2E6:       Me.FGrid.Col = 0
  loc_118B2FE:       Me.FGrid.CellFontName = "WINGDINGS"
  loc_118B318:       Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_118B333:       Me.FGrid.CellForeColor = &HFF
  loc_118B33F:       var_A0 = CVar(CLng(var_112)) 'Long
  loc_118B344:       var_E0 = 0
  loc_118B34D:       var_12C = "ü"
  loc_118B357:       Set var_88 = Me.FGrid
  loc_118B35D:       LateIdCallSt
  loc_118B38D:       For var_140 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_114 = var_140 'Integer
  loc_118B3A6:         Me.FGrid.Col = CVar(CLng(var_114))
  loc_118B3C1:         Me.FGrid.CellBackColor = &HFF00
  loc_118B3CC:       Next var_140 'Integer
  loc_118B3D4:     Next var_11C 'Integer
  loc_118B3F2:     var_A0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_118B3F7:     var_E0 = 0
  loc_118B400:     var_12C = vbNullString
  loc_118B40A:     Set var_8C = Me.FGrid
  loc_118B410:     LateIdCallSt
  loc_118B422:     Call FGrid_UnknownEvent_9()
  loc_118B427:   End If
  loc_118B427:   Exit For
  loc_118B42A: End If
  loc_118B430: If (var_116 = 1) Then
  loc_118B440:   Set var_88 = Me.chkSelectALL
  loc_118B446:   Call 0.Method_chkSelectALL_Click0 (Index, var_8C, var_118, var_8C)
  loc_118B44E:   var_12C = var_8C.Value
  loc_118B460:   If (var_118 = 1) Then
  loc_118B488:     For var_144 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_112 = var_144 'Integer
  loc_118B4A1:       Me.FGrid1.Row = CVar(CLng(var_112))
  loc_118B4BC:       Me.FGrid1.Col = 0
  loc_118B4D4:       Me.FGrid1.CellFontName = "WINGDINGS"
  loc_118B4EE:       Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_118B509:       Me.FGrid1.CellForeColor = &HFF
  loc_118B515:       var_A0 = CVar(CLng(var_112)) 'Long
  loc_118B51A:       var_E0 = 0
  loc_118B523:       var_12C = "ü"
  loc_118B52D:       Set var_88 = Me.FGrid1
  loc_118B533:       LateIdCallSt
  loc_118B563:       For var_148 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_114 = var_148 'Integer
  loc_118B57C:         Me.FGrid1.Col = CVar(CLng(var_114))
  loc_118B597:         Me.FGrid1.CellBackColor = &HFF00
  loc_118B5A2:       Next var_148 'Integer
  loc_118B5AA:     Next var_144 'Integer
  loc_118B5AF:     ' Referenced from: 118B427
  loc_118B5AF:   End If
  loc_118B5AF: End If
  loc_118B5AF: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F2D744
  'Data Table: 47FC44
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_A8 As TextBox
  loc_F2D63C: Call Proc_136_29_E987C0()
  loc_F2D658: If (Me.RecordCount > 0) Then
  loc_F2D697:   Set var_A4 = Me.Txt
  loc_F2D69D:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2D6A5:   var_A8.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_F2D6D8:   var_A0 = Me.Fields.Item("FolioNo")
  loc_F2D6F7:   Set var_A4 = Me.Txt
  loc_F2D6FD:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(1), var_A8)
  loc_F2D705:   var_A8.Tag = CStr(var_A0.Value)
  loc_F2D71B:   Call Proc_136_27_1251F0C()
  loc_F2D720: End If
  loc_F2D729: Set var_8C = Me.chkSelectALL
  loc_F2D72F: Call 0.Method_DGHelp_UnknownEvent_90 (0)
  loc_F2D737: var_A0.SetFocus
  loc_F2D743: Exit Sub
End Sub

Public Sub DGHelp_UnknownEvent_1B(Index As Integer) 'E03800
  'Data Table: 47FC44
  loc_E037F6: If (Index = &HD) Then
  loc_E037F9:   Call DGHelp_UnknownEvent_9()
  loc_E037FE: End If
  loc_E037FE: Exit Sub
End Sub

Private Sub BtnroomMerge_UnknownEvent_9 '144EA8C
  'Data Table: 47FC44
  Dim var_86 As Integer
  Dim unk_47FC47 As Connection15
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_104 As TextBox
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_BC As Variant
  Dim var_108 As String
  Dim var_100 As Fields15
  Dim var_1C8 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Long
  Dim var_250 As Variant
  Dim var_218 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Long
  Dim var_440 As Variant
  Dim var_460 As Long
  Dim var_21C As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_3A0 As Variant
  Dim var_4C0 As Variant
  Dim var_4EC As String
  loc_144DFDE: unk_47FC47.BeginTrans var_94
  loc_144E03D: Set var_100 = Me.Txt
  loc_144E043: Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & Me.Fields.Item("FolioNoDocid").Value & "',GuestFolio.mFolioNo = ")
  loc_144E04B: var_1C4 = var_104.Tag
  loc_144E056: var_128 = -1 & CVar(var_108) 
  loc_144E078: var_14C = Me.Fields
  loc_144E088: var_170 = var_14C.Item("FolioNoDocid").Value
  loc_144E099: var_1A0 = var_128 & " WHERE GuestFolio.Docid = '" & var_170 & "'" 
  loc_144E0A7: unk_47FC47.Execute CStr(var_1A0), var_1C8, 0
  loc_144E0FC: For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_1CC 'Integer
  loc_144E106:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E10B:   var_EC = 0
  loc_144E13A:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_144E141:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E149:     var_EC = CVar(CLng(1)) 'Long
  loc_144E169:     global_80 = CStr(Me.FGrid.TextMatrix))
  loc_144E17A:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E182:     var_EC = CVar(CLng(2)) 'Long
  loc_144E19C:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_144E1C7:     var_A8 = "FolioNoDocid"
  loc_144E1DE:     var_AC = Me.Fields.Item(var_A8)
  loc_144E1EE:     var_DC = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & var_AC.Value 
  loc_144E209:     Set var_100 = Me.Txt
  loc_144E20F:     Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, var_DC & "',GuestFolio.mFolioNo = ", var_1A0, -1, var_14C)
  loc_144E217:     var_EC = var_104.Tag
  loc_144E23D:     Proc_6_17_EAA2B0(var_170, var_108, var_A8 & CVar(var_108) & " WHERE GuestFolio.Docid = ", var_EC)
  loc_144E253:     unk_47FC47.Execute CStr(var_A8 & var_170), var_EC, var_A8
  loc_144E290:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_144E2AB:     Me.FGrid.Col = 0
  loc_144E2C6:     Me.FGrid.CellForeColor = &HFF
  loc_144E2F3:     For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_1D0 'Integer
  loc_144E30C:       Me.FGrid.Col = CVar(CLng(var_90))
  loc_144E327:       Me.FGrid.CellBackColor = &HFF
  loc_144E342:       Me.FGrid.CellForeColor = &HFFFFFF
  loc_144E34E:       Set var_98 = Me.FGrid
  loc_144E362:     Next var_1D0 'Integer
  loc_144E367:   End If
  loc_144E36A: Next var_1CC 'Integer
  loc_144E38D: Set var_98 = Me.Txt
  loc_144E393: Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_AC, var_108, "UPDATE PayCharge SET RelatedFolioNo=")
  loc_144E39B: var_218 = var_AC.Tag
  loc_144E3A4: var_1A4 = -1 & var_108
  loc_144E3C8: var_104 = Me.Fields.Item("FolioNoDocid")
  loc_144E3D7: Proc_6_17_EAA2B0(var_DC, CVar(var_104))
  loc_144E415: Proc_6_17_EAA2B0(var_170, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144E426: var_1A0 = CVar(CStr(&HFFFFFF & var_170) & ",RelatedFolioNoDocId=") & var_DC & " WHERE FolioNoDocid = " & var_170 & " And (RelatedFolioNoDocId=" 
  loc_144E453: Proc_6_17_EAA2B0(var_1E4, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144E472: unk_47FC47.Execute CStr(var_1A0 & var_1E4 & " Or IsNull(RelatedFolioNoDocId,'')='')"), var_21C, 
  loc_144E4D3: For var_220 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_220 'Integer
  loc_144E4DD:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E4E2:   var_EC = 0
  loc_144E511:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_144E516:     var_86 = &HFF
  loc_144E51D:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144E540:     var_DC = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_144E54F:     var_108 = CStr(Trim(var_DC))
  loc_144E56B:     var_A8 = "FolioNoDocid"
  loc_144E591:     Proc_6_17_EAA2B0(var_DC, CVar(Me.Fields.Item(var_A8)), 1, var_A8)
  loc_144E5A4:     Set var_100 = Me.Txt
  loc_144E5AA:     Call 0.Method_BtnroomMerge_UnknownEvent_90 (CInt(1), var_104, var_108, var_86)
  loc_144E5B2:     var_EC = var_104.Tag
  loc_144E5BB:     var_15C = CVar(CLng(var_8E)) 'Long
  loc_144E5C0:     var_1B4 = &HB
  loc_144E602:     var_250 = CVar(CLng(var_8E)) 'Long
  loc_144E61A:     var_218 = Me.FGrid1.TextMatrix)
  loc_144E653:     Proc_6_7_F25D88(var_370, CVar(CStr(Me.FGrid1.TextMatrix))), 3, CVar(CLng(var_8E)), var_218, &HB)
  loc_144E65C:     var_3B0 = CVar(CLng(var_8E)) 'Long
  loc_144E661:     var_3D0 = &HC
  loc_144E684:     var_440 = CVar(CLng(var_8E)) 'Long
  loc_144E689:     var_460 = &HB
  loc_144E6BD:     var_FC = "UPDATE PayCharge SET PayCharge.FolioNoDocid = " & var_DC 
  loc_144E6C6:     var_118 = var_FC & ",PayCharge.FolioNo = " 
  loc_144E6E9:     var_204 = var_118 & CVar(var_108) & ",RelatedFolioNo=" & Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8)) & ",RelatedFolioNoDocId='" 
  loc_144E723:     var_3A0 = var_204 & CVar(CStr(var_218)) & "' WHERE PayCharge.RoomNo = '" & CVar(var_108) & "' AND PayCharge.VDate =" & var_370 & " AND PayCharge.VTime = '" 
  loc_144E74B:     var_4C0 = var_3A0 & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' " 
  loc_144E759:     unk_47FC47.Execute CStr(var_4C0), var_4E0, -1
  loc_144E7CE:     Me.FGrid1.Row = CVar(CLng(var_8E))
  loc_144E7E9:     Me.FGrid1.Col = 0
  loc_144E804:     Me.FGrid1.CellForeColor = &HFF
  loc_144E831:     For var_4E8 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_90 = var_4E8 'Integer
  loc_144E84A:       Me.FGrid1.Col = CVar(CLng(var_90))
  loc_144E865:       Me.FGrid1.CellBackColor = &HFF
  loc_144E880:       Me.FGrid1.CellForeColor = &HFFFFFF
  loc_144E88C:       Set var_98 = Me.FGrid1
  loc_144E8A0:     Next var_4E8 'Integer
  loc_144E8A5:   End If
  loc_144E8A8: Next var_220 'Integer
  loc_144E8B3: unk_47FC47.CommitTrans
  loc_144E8D6: If ((unk_47FC47.State > 0) And (var_86 = &HFF)) Then
  loc_144E8FA:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_FC, var_118)
  loc_144E916:   Me.cmdTransferCharge.Enabled = False
  loc_144E927:   Set var_98 = Me.BtnroomMerge
  loc_144E92D:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144E935:   Call Proc_136_28_1335900()
  loc_144E93A:   Call Proc_136_27_1251F0C()
  loc_144E942: Else
  loc_144E960:   If ((unk_47FC47.State > 0) And (var_86 = 0)) Then
  loc_144E984:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_FC, var_118)
  loc_144E994:     Exit Sub
  loc_144E998:   Else
  loc_144E9A0:     Set var_98 = Err()
  loc_144E9A6:     Call 0.Method_arg_2C (var_108)
  loc_144E9C4:     var_BC = CVar(var_108) 'String
  loc_144E9C7:     MsgBox(var_BC, &H10, "Save...", var_FC, var_118)
  loc_144E9E3:     Set var_98 = Me.BtnroomMerge
  loc_144E9E9:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144E9F1:   End If
  loc_144E9F1: End If
  loc_144EA05: var_108 = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.FolioNo = GuestFolio.FolioNo) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE (GuestFolio.LOGSITE_CODE='" & MemVar_1F92078
  loc_144EA1A: var_4EC = var_108 & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO')) ORDER BY RoomMast.Code"
  loc_144EA23: unk_47FC47.Execute var_4EC, var_BC, -1
  loc_144EA34: Set global_64 = var_98
  loc_144EA56: CVarUnk
  loc_144EA5B: VerifyVarObj
  loc_144EA61: Set var_98 = Me.DGHelp
  loc_144EA67: LateIdStAd
  loc_144EA79: Set var_98 = Me.DGHelp
  loc_144EA8A: Exit Sub
  loc_144EA8B: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1145204
  'Data Table: 47FC44
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_E0 As Long
  Dim var_A0 As String
  Dim var_124 As String
  loc_1144E7B: Set var_88 = Me.chkSelectALL
  loc_1144E81: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_1144E89: var_8C.Value = 0
  loc_1144EA0: Set var_88 = Me.chkSelectALL
  loc_1144EA6: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_1144EAE: var_8C.Value = 0
  loc_1144ED9: If (CLng(Me.FGrid.RowSel) = 0) Then
  loc_1144EDC:   Exit Sub
  loc_1144EDD: End If
  loc_1144EEB: Set var_88 = Me.Txt
  loc_1144EF1: Call 0.Method_FGrid_UnknownEvent_90 (CInt(1), var_8C)
  loc_1144F10: If (var_8C.Text = vbNullString) Then
  loc_1144F34:   MsgBox("Please Select Leader Room No.", &H40, "Error..", var_F0, var_110)
  loc_1144F44:   Exit Sub
  loc_1144F45: End If
  loc_1144F45: On Error Goto loc_11451BD
  loc_1144F5B: Me.FGrid.Col = 0
  loc_1144F73: Me.FGrid.CellFontName = "WINGDINGS"
  loc_1144F8D: Me.FGrid.CellFontSize = CVar(CDbl(&HD))
  loc_1144FA8: Me.FGrid.CellForeColor = &HFF0000
  loc_1144FD2: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_1144FF4: var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1144FF9: var_E0 = 0
  loc_1145017: var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_1145030: If (var_A0 = "ü") Then
  loc_1145046:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_114504B:   var_E0 = 0
  loc_1145054:   var_124 = vbNullString
  loc_114505E:   Set var_8C = Me.FGrid
  loc_1145064:   LateIdCallSt
  loc_114509B:   For var_138 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_112 = var_138 'Integer
  loc_11450B4:     Me.FGrid.Col = CVar(CLng(var_112))
  loc_11450CF:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_11450DA:   Next var_138 'Integer
  loc_11450E2: Else
  loc_11450F5:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11450FA:   var_E0 = 0
  loc_1145103:   var_124 = "ü"
  loc_114510D:   Set var_8C = Me.FGrid
  loc_1145113:   LateIdCallSt
  loc_114514A:   For var_13C = 1 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_112 = var_13C 'Integer
  loc_1145163:     Me.FGrid.Col = CVar(CLng(var_112))
  loc_114517E:     Me.FGrid.CellBackColor = &HFF00
  loc_1145189:   Next var_13C 'Integer
  loc_114518E: End If
  loc_114518E: Call Proc_136_28_1335900()
  loc_11451A2: Set var_88 = Me.chkSelectALL
  loc_11451A8: Call 0.Method_FGrid_UnknownEvent_90 (1, var_8C)
  loc_11451B0: var_8C.Value = CInt(1)
  loc_11451BC: Exit Sub
  loc_11451BD: ' Referenced from: 1144F45
  loc_11451C5: Set var_88 = Err()
  loc_11451CB: Call 0.Method_arg_2C (var_A0)
  loc_11451EC: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_11451FF: Exit Sub
  loc_1145200: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_A(Index As Integer) 'E8FD2C
  'Data Table: 47FC44
  loc_E8FCBA: If (Index = &HD) Then
  loc_E8FCCB:   Proc_303_0_FB9B68("	")
  loc_E8FCD3: End If
  loc_E8FCF2: If (CLng(Me.FGrid.Rows) < 1) Then
  loc_E8FCF5:   Exit Sub
  loc_E8FCF6: End If
  loc_E8FD20: If ((CLng(Index) = &H20) And (CLng(Me.FGrid.Col) = 0)) Then
  loc_E8FD23:   Call FGrid_UnknownEvent_9()
  loc_E8FD28: End If
  loc_E8FD28: Exit Sub
  loc_E8FD29: StUdtVar
End Sub

Private Sub FGrid_UnknownEvent_10 'F87214
  'Data Table: 47FC44
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F870DA: Me.FGrid.Row = CVar(CLng(Me.FGrid.RowSel))
  loc_F870FC: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F87101: var_D0 = 0
  loc_F87138: If (CStr(Me.FGrid.TextMatrix)) <> "ü") Then
  loc_F87160:   For var_F8 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F87179:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F87194:     Me.FGrid.CellBackColor = &HFFFFFF
  loc_F8719F:   Next var_F8 'Integer
  loc_F871A7: Else
  loc_F871CC:   For var_FC = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F871E5:     Me.FGrid.Col = CVar(CLng(var_86))
  loc_F87200:     Me.FGrid.CellBackColor = &HFF00
  loc_F8720B:   Next var_FC 'Integer
  loc_F87210: End If
  loc_F87210: Exit Sub
End Sub

Private Sub FGrid2_UnknownEvent_B '133F360
  'Data Table: 47FC44
  Dim var_94 As Variant
  Dim var_C8 As Variant
  Dim var_B8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim unk_47FC47 As Connection15
  Dim var_12C As Variant
  Dim var_134 As String
  Dim Me As Recordset15
  Dim var_188 As Variant
  Dim var_8C As Recordset15
  Dim var_160 As Variant
  Dim var_180 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_270 As Variant
  Dim var_90 As Recordset15
  Dim var_140 As String
  loc_133EBFF: var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_133EC17: var_E8 = CVar(CLng(Me.FGrid2.Col)) 'Long
  loc_133EC40: var_88 = CStr(Trim(CVar(CStr(Me.FGrid2.TextMatrix)))))
  loc_133EC81: If ((CLng(Me.FGrid2.Col) = 0) Or (var_88 = vbNullString)) Then
  loc_133EC84:   Exit Sub
  loc_133EC85: End If
  loc_133EC8E: unk_47FC47.BeginTrans var_130
  loc_133ECB2: If (CLng(Me.FGrid2.CellBackColor) = &HFDE1FF) Then
  loc_133ECC8:   var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_133ECEF:   var_10C = Me.FGrid2.TextMatrix)
  loc_133ED01:   Call 0.Method_arg_50 (var_140, var_10C, CVar(CLng(Me.FGrid2.Col)))
  loc_133ED0F:   var_12C = CVar(var_140) 'String
  loc_133ED61:   If (MsgBox(CVar("Do You Want Transfer Remainning Charges Of All Rooms" & vbCrLf & "Into Leader Room No. " & CStr(var_10C)), &H14, var_12C, var_160, var_180) = 6) Then
  loc_133ED6A:     Me.MoveFirst
  loc_133ED6F:     ' Referenced from: 133F00D
  loc_133ED81:     If Not(Me.EOF) Then
  loc_133EDC6:       var_FC = Me.Fields
  loc_133EDCE:       var_188 = var_FC.Item("mFolioNo")
  loc_133EDF2:       If CBool(Me.Fields.Item("FolioNo").Value <> var_188.Value) Then
  loc_133EE30:         var_B8 = Trim(CVar(Me.Fields.Item("RoomNo")))
  loc_133EE41:         var_11C = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & var_B8 & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_133EE45:         var_134 = CStr(var_11C)
  loc_133EE4F:         unk_47FC47.Execute var_134, var_12C, -1
  loc_133EE5A:         Set var_8C = var_FC
  loc_133EE88:         If (var_8C.RecordCount > 0) Then
  loc_133EEA0:           var_C8 = "FolioNoDocid"
  loc_133EEAF:           var_94 = Me.Fields
  loc_133EEC6:           Proc_6_17_EAA2B0(var_B8, CVar(var_94.Item(var_C8)), "UPDATE PayCharge SET PayCharge.FolioNoDocid = ", var_290, -1)
  loc_133EED2:           var_E8 = ",PayCharge.FolioNo = "
  loc_133EED7:           var_11C = var_294 & var_B8 & var_E8 
  loc_133EEE9:           Set var_FC = Me.Txt
  loc_133EEEF:           Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(1), var_188, var_134, var_11C)
  loc_133EEF7:           var_FC = var_188.Tag
  loc_133EF02:           var_160 = var_C8 & CVar(var_134) 
  loc_133EF0B:           var_180 = var_160 & ",RelatedFolioNo=" 
  loc_133EF79:           var_218 = var_180 & var_8C.Fields.Item("FolioNo").Value & ",RelatedFolioNoDocId='" & var_8C.Fields.Item("DocID").Value & "' where (ContraDocId is NULL or contradocid='') and folionoDocid='" 
  loc_133EFBE:           unk_47FC47.Execute CStr(var_218 & var_8C.Fields.Item("DocID").Value & "'"), var_E8, var_C8
  loc_133F002:         End If
  loc_133F002:       End If
  loc_133F008:       Me.MoveNext
  loc_133F00D:       GoTo loc_133ED6F
  loc_133F010:     End If
  loc_133F010:   End If
  loc_133F013: Else
  loc_133F041:   var_10C = "Select DocId,FolioNo From RoomOcc Where RTrim(LTrim(RoomOcc.RoomNo))='" & Trim(var_88) & "' And (Roomocc.Type Not in ('C','O') OR Roomocc.Type is Null)" 
  loc_133F04F:   unk_47FC47.Execute CStr(var_10C), var_11C, -1
  loc_133F05A:   Set var_8C = var_94
  loc_133F082:   If (var_8C.RecordCount > 0) Then
  loc_133F0C1:     var_B8 = "Select * from paycharge where (ContraDocId is NULL or contradocid='') and folionoDocid='" & var_8C.Fields.Item("DocID").Value 
  loc_133F0D8:     unk_47FC47.Execute CStr(var_B8 & "' order by vDate,VTIME,VNO,SNO"), var_11C, -1
  loc_133F111:     If (var_FC.RecordCount > 0) Then
  loc_133F127:       var_C8 = CVar(CLng(Me.FGrid2.Row)) 'Long
  loc_133F136:       var_B8 = Me.FGrid2.Col
  loc_133F14E:       var_10C = Me.FGrid2.TextMatrix)
  loc_133F160:       Call 0.Method_arg_50 (var_298, var_10C, CVar(CLng(var_B8)))
  loc_133F17D:       var_134 = "Do You Want Transfer Remainning Charges Of" & vbCrLf
  loc_133F1C9:       If (MsgBox(CVar(var_134 & "Room No. " & CStr(var_10C) & " Into Leader Room."), &H24, CVar(var_298), var_160, var_180) = 6) Then
  loc_133F1F0:         var_94 = Me.Fields
  loc_133F207:         Proc_6_17_EAA2B0(var_B8, CVar(var_94.Item("FolioNoDocid")), "UPDATE PayCharge SET PayCharge.FolioNoDocid = ", var_290, -1)
  loc_133F230:         Call 0.Method_FGrid2_UnknownEvent_B0 (CInt(1), var_188, var_134, var_294 & var_B8 & ",PayCharge.FolioNo = ")
  loc_133F238:         var_C8 = var_188.Tag
  loc_133F2B1:         var_1F8 = Me.Txt & CVar(var_134) & ",RelatedFolioNo=" & var_8C.Fields.Item("FolioNo").Value & ",RelatedFolioNoDocId='" & var_8C.Fields.Item("DocID").Value 
  loc_133F2F1:         var_270 = var_1F8 & "' where (ContraDocId is NULL or contradocid='') and folionoDocid='" & var_8C.Fields.Item("DocID").Value & "'" 
  loc_133F2FF:         unk_47FC47.Execute CStr(var_270), var_94, 
  loc_133F343:       End If
  loc_133F343:     End If
  loc_133F343:   End If
  loc_133F343: End If
  loc_133F349: unk_47FC47.CommitTrans
  loc_133F353: Set var_8C = Nothing
  loc_133F35B: Set var_90 = Nothing
  loc_133F35E: Exit Sub
End Sub

Private Sub Form_Load() '13C4A74
  'Data Table: 47FC44
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
  Dim unk_47FC47 As Connection15
  Dim var_D8 As Variant
  Dim var_2AC As String
  loc_13C413E: Proc_6_23_DFBA28(Me, 0)
  loc_13C414D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_13C4165: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13C4180: Me.FGrid2.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_13C4196: Set var_8C = Me.Txt
  loc_13C419C: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13C41BB: Me.DGHelp.Left = CVar(var_B4.Left)
  loc_13C41D7: Set var_BC = Me.Txt
  loc_13C41DD: Call 0.Method_Form_Load0 (CInt(1), var_C0)
  loc_13C41FE: Call 0.Method_Form_Load0 (CInt(1), var_B4)
  loc_13C4216: var_A0 = CVar(((var_B4.Top + var_C0.Height) + CDbl(&H1E))) 'Single
  loc_13C4225: Me.DGHelp.Top = CVar(var_B4.Left)
  loc_13C42A0: var_128 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_13C42B4: var_1C8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_13C42B9: var_1D8 = var_128 & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1C8 
  loc_13C42BD: var_1E8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE (GuestFolio.LOGSITE_CODE='"
  loc_13C42E3: var_268 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_13C42F6: unk_47FC47.Execute CStr(var_1D8 & var_1E8 & CVar(MemVar_1F92078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_268), var_29C, -1
  loc_13C4307: Set global_52 = Me.Txt
  loc_13C4345: CVarUnk
  loc_13C434A: VerifyVarObj
  loc_13C4350: Set var_8C = Me.FGrid
  loc_13C4356: LateIdStAd
  loc_13C4368: Set var_8C = Me.FGrid
  loc_13C4388: var_D8 = Me.FGrid.Rows
  loc_13C439E: For var_2A0 = 1 To CInt((CLng(var_D8) - 1)): var_86 = var_2A0 'Integer
  loc_13C43A8:   var_A0 = CVar(CLng(var_86)) 'Long
  loc_13C43AD:   var_E8 = 0
  loc_13C43B6:   var_138 = vbNullString
  loc_13C43C0:   Set var_8C = Me.FGrid
  loc_13C43C6:   LateIdCallSt
  loc_13C43D4: Next var_2A0 'Integer
  loc_13C43D9: var_A0 = 0
  loc_13C43E2: var_E8 = 0
  loc_13C43EB: var_138 = &H12C
  loc_13C43F8: Set var_8C = Me.FGrid
  loc_13C43FE: LateIdCallSt
  loc_13C4409: var_A0 = 1
  loc_13C4412: var_E8 = 0
  loc_13C441B: var_138 = &H384
  loc_13C4428: Set var_8C = Me.FGrid
  loc_13C442E: LateIdCallSt
  loc_13C4439: var_A0 = 2
  loc_13C4442: var_E8 = 0
  loc_13C444B: var_138 = 0
  loc_13C4458: Set var_8C = Me.FGrid
  loc_13C445E: LateIdCallSt
  loc_13C4469: var_A0 = 3
  loc_13C4472: var_E8 = 0
  loc_13C447B: var_138 = 0
  loc_13C4488: Set var_8C = Me.FGrid
  loc_13C448E: LateIdCallSt
  loc_13C4499: var_A0 = 4
  loc_13C44A2: var_E8 = 0
  loc_13C44AB: var_138 = 0
  loc_13C44B8: Set var_8C = Me.FGrid
  loc_13C44BE: LateIdCallSt
  loc_13C44C9: var_A0 = 5
  loc_13C44D2: var_E8 = 0
  loc_13C44DB: var_138 = &H44C
  loc_13C44E8: Set var_8C = Me.FGrid
  loc_13C44EE: LateIdCallSt
  loc_13C44F9: var_A0 = 6
  loc_13C4502: var_E8 = 0
  loc_13C450B: var_138 = &HB22
  loc_13C4518: Set var_8C = Me.FGrid
  loc_13C451E: LateIdCallSt
  loc_13C4529: var_A0 = 7
  loc_13C4532: var_E8 = 0
  loc_13C453B: var_138 = 0
  loc_13C4548: Set var_8C = Me.FGrid
  loc_13C454E: LateIdCallSt
  loc_13C4559: var_A0 = 8
  loc_13C4562: var_E8 = 0
  loc_13C456B: var_138 = &HAF0
  loc_13C4578: Set var_8C = Me.FGrid
  loc_13C457E: LateIdCallSt
  loc_13C4589: var_A0 = 9
  loc_13C4592: var_E8 = 0
  loc_13C459B: var_138 = 0
  loc_13C45A8: Set var_8C = Me.FGrid
  loc_13C45AE: LateIdCallSt
  loc_13C45B9: var_A0 = &HA
  loc_13C45C2: var_E8 = 0
  loc_13C45CB: var_138 = 0
  loc_13C45D8: Set var_8C = Me.FGrid
  loc_13C45DE: LateIdCallSt
  loc_13C45E9: var_A0 = &HB
  loc_13C45F2: var_E8 = 0
  loc_13C45FB: var_138 = &H898
  loc_13C4608: Set var_8C = Me.FGrid
  loc_13C460E: LateIdCallSt
  loc_13C4619: var_A0 = &HC
  loc_13C4622: var_E8 = 0
  loc_13C462B: var_138 = 0
  loc_13C4638: Set var_8C = Me.FGrid
  loc_13C463E: LateIdCallSt
  loc_13C4649: var_A0 = &HD
  loc_13C4652: var_E8 = 0
  loc_13C465B: var_138 = 0
  loc_13C4668: Set var_8C = Me.FGrid
  loc_13C466E: LateIdCallSt
  loc_13C4679: var_A0 = &HE
  loc_13C4682: var_E8 = 0
  loc_13C468B: var_138 = 0
  loc_13C4698: Set var_8C = Me.FGrid
  loc_13C469E: LateIdCallSt
  loc_13C46A9: var_A0 = &HF
  loc_13C46B2: var_E8 = 0
  loc_13C46BB: var_138 = 0
  loc_13C46C8: Set var_8C = Me.FGrid
  loc_13C46CE: LateIdCallSt
  loc_13C46D9: var_A0 = &H10
  loc_13C46E2: var_E8 = 0
  loc_13C46FE: LateIdCallSt
  loc_13C471D: var_27C = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.Docid = GuestFolio.Docid) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE ((GuestFolio.LOGSITE_CODE='" & MemVar_1F92078
  loc_13C4732: var_2AC = var_27C & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO'))) and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL)  ORDER BY RoomMast.Code"
  loc_13C473B: unk_47FC47.Execute var_2AC, var_D8, -1
  loc_13C476E: CVarUnk
  loc_13C4773: VerifyVarObj
  loc_13C4779: Set var_8C = Me.DGHelp
  loc_13C477F: LateIdStAd
  loc_13C479C: Me.DGHelp.Visible = False
  loc_13C47B0: Me.cmdTransferCharge.Enabled = False
  loc_13C47C1: Set var_8C = Me.BtnroomMerge
  loc_13C47C7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_13C47E0: Call 0.Method_Form_Load0 (1, var_B4, 0, Me.chkSelectALL, Me.FGrid, Me.chkSelectALL, Me.chkSelectALL)
  loc_13C47E8: var_B4.Visible = 0
  loc_13C47F4: var_A0 = 0
  loc_13C47FD: var_E8 = 0
  loc_13C4806: var_138 = &H258
  loc_13C4813: Set var_8C = Me.FGrid1
  loc_13C4819: LateIdCallSt
  loc_13C4824: var_A0 = 1
  loc_13C482D: var_E8 = 0
  loc_13C4836: var_138 = &H3E8
  loc_13C4843: Set var_8C = Me.FGrid1
  loc_13C4849: LateIdCallSt
  loc_13C4854: var_A0 = 2
  loc_13C485D: var_E8 = 0
  loc_13C4866: var_138 = &H3E8
  loc_13C4873: Set var_8C = Me.FGrid1
  loc_13C4879: LateIdCallSt
  loc_13C4884: var_A0 = 3
  loc_13C488D: var_E8 = 0
  loc_13C4896: var_138 = &H3E8
  loc_13C48A3: Set var_8C = Me.FGrid1
  loc_13C48A9: LateIdCallSt
  loc_13C48B4: var_A0 = 4
  loc_13C48BD: var_E8 = 0
  loc_13C48C6: var_138 = &H3E8
  loc_13C48D3: Set var_8C = Me.FGrid1
  loc_13C48D9: LateIdCallSt
  loc_13C48E4: var_A0 = 5
  loc_13C48ED: var_E8 = 0
  loc_13C48F6: var_138 = &H3E8
  loc_13C4903: Set var_8C = Me.FGrid1
  loc_13C4909: LateIdCallSt
  loc_13C4914: var_A0 = 6
  loc_13C491D: var_E8 = 0
  loc_13C4926: var_138 = &H3E8
  loc_13C4933: Set var_8C = Me.FGrid1
  loc_13C4939: LateIdCallSt
  loc_13C4944: var_A0 = 7
  loc_13C494D: var_E8 = 0
  loc_13C4956: var_138 = &H3E8
  loc_13C4963: Set var_8C = Me.FGrid1
  loc_13C4969: LateIdCallSt
  loc_13C4974: var_A0 = 8
  loc_13C497D: var_E8 = 0
  loc_13C4986: var_138 = &H3E8
  loc_13C4993: Set var_8C = Me.FGrid1
  loc_13C4999: LateIdCallSt
  loc_13C49A4: var_A0 = 9
  loc_13C49AD: var_E8 = 0
  loc_13C49B6: var_138 = &H3E8
  loc_13C49C3: Set var_8C = Me.FGrid1
  loc_13C49C9: LateIdCallSt
  loc_13C49D4: var_A0 = &HA
  loc_13C49DD: var_E8 = 0
  loc_13C49E6: var_138 = 0
  loc_13C49F3: Set var_8C = Me.FGrid1
  loc_13C49F9: LateIdCallSt
  loc_13C4A04: var_A0 = &HB
  loc_13C4A0D: var_E8 = 0
  loc_13C4A16: var_138 = 0
  loc_13C4A23: Set var_8C = Me.FGrid1
  loc_13C4A29: LateIdCallSt
  loc_13C4A59: LateIdCallSt
  loc_13C4A6C: Call Proc_136_25_139A994(-1, Me.FGrid1, 0, 0, &HC, Me.FGrid1, 0, 0)
  loc_13C4A71: Exit Sub
End Sub

Private Sub Form_Resize() 'E71A7C
  'Data Table: 47FC44
  loc_E71A26: Call 0.Method_arg_50 (var_88)
  loc_E71A38: Me.LblFormCaption.Caption = var_88
  loc_E71A51: Me.LblFormCaption.Left = CDbl(0)
  loc_E71A5F: Call 0.Method_arg_100 (var_90)
  loc_E71A71: Me.LblFormCaption.Width = var_90
  loc_E71A79: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E60138
  'Data Table: 47FC44
  loc_E600F7: Set global_72 = Nothing
  loc_E60109: Set global_64 = Nothing
  loc_E6011B: Set global_52 = Nothing
  loc_E6012D: Set global_68 = Nothing
  loc_E60134: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E33F14
  'Data Table: 47FC44
  loc_E33F08: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E33F0B:   Call DGHelp_UnknownEvent_9()
  loc_E33F10: End If
  loc_E33F10: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_A 'E05380
  'Data Table: 47FC44
  loc_E05376: If (Cancel = &HD) Then
  loc_E05379:   Call DGHelp_UnknownEvent_9()
  loc_E0537E: End If
  loc_E0537E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '11CEF54
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_8C As MSHFlexGrid
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
  loc_11CEB2C: On Error Goto loc_11CEF11
  loc_11CEB3A: Set var_8C = Me.chkSelectALL
  loc_11CEB40: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_90)
  loc_11CEB48: var_90.Value = 0
  loc_11CEB67: Me.FGrid1.Col = 0
  loc_11CEB7F: Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11CEB99: Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11CEBB4: Me.FGrid1.CellForeColor = &HFF0000
  loc_11CEBDE: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_11CEC00: var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CEC05: var_D0 = 0
  loc_11CEC23: var_F4 = CStr(Me.FGrid1.TextMatrix))
  loc_11CEC3C: If (var_F4 = "ü") Then
  loc_11CEC52:   var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CEC57:   var_D0 = 0
  loc_11CEC60:   var_104 = vbNullString
  loc_11CEC6A:   Set var_90 = Me.FGrid1
  loc_11CEC70:   LateIdCallSt
  loc_11CECA7:   For var_118 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_118 'Integer
  loc_11CECC0:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11CECDB:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11CECE6:   Next var_118 'Integer
  loc_11CECEE: Else
  loc_11CED01:   var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CED06:   var_D0 = 0
  loc_11CED0F:   var_104 = "ü"
  loc_11CED19:   Set var_90 = Me.FGrid1
  loc_11CED1F:   LateIdCallSt
  loc_11CED56:   For var_11C = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_11C 'Integer
  loc_11CED6F:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11CED8A:     Me.FGrid1.CellBackColor = &HFF00
  loc_11CED95:   Next var_11C 'Integer
  loc_11CED9A: End If
  loc_11CEDAD: var_A0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CEDB2: var_D0 = 1
  loc_11CEDDB: var_130 = Me.FGrid1.Row
  loc_11CEDE4: var_104 = CVar(CLng(var_130)) 'Long
  loc_11CEDE9: var_140 = 3
  loc_11CEDFC: var_164 = Me.FGrid1.TextMatrix)
  loc_11CEE1B: var_188 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CEE20: var_1A8 = &HC
  loc_11CEE33: var_1CC = Me.FGrid1.TextMatrix)
  loc_11CEE52: var_1F0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11CEE57: var_210 = &HB
  loc_11CEED0: Call Proc_136_26_11F7BC4(CStr(Me.FGrid1.TextMatrix)), CStr(var_164), CStr(var_1CC), CStr(Me.FGrid1.TextMatrix)), CStr(Me.FGrid1.TextMatrix)), 0, CVar(CLng(Me.FGrid1.Row)), Me.FGrid1.TextMatrix))
  loc_11CEF10: Exit Sub
  loc_11CEF11: ' Referenced from: 11CEB2C
  loc_11CEF19: Set var_8C = Err()
  loc_11CEF1F: Call 0.Method_arg_2C (var_F4, var_210, var_1F0, var_1CC, var_1A8)
  loc_11CEF40: MsgBox(CVar(var_F4), &H40, "Error...", var_130, var_164)
  loc_11CEF53: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E912F8
  'Data Table: 47FC44
  loc_E91286: If (Cancel = &HD) Then
  loc_E91297:   Proc_303_0_FB9B68("	")
  loc_E9129F: End If
  loc_E912BE: If (CLng(Me.FGrid1.Rows) < 1) Then
  loc_E912C1:   Exit Sub
  loc_E912C2: End If
  loc_E912EC: If ((CLng(Cancel) = &H20) And (CLng(Me.FGrid1.Col) = 0)) Then
  loc_E912EF:   Call Fgrid1_UnknownEvent_9()
  loc_E912F4: End If
  loc_E912F4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'F87074
  'Data Table: 47FC44
  Dim var_AC As Variant
  Dim var_D0 As Long
  loc_F86F3A: Me.FGrid1.Row = CVar(CLng(Me.FGrid1.RowSel))
  loc_F86F5C: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F86F61: var_D0 = 0
  loc_F86F98: If (CStr(Me.FGrid1.TextMatrix)) <> "ü") Then
  loc_F86FC0:   For var_F8 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_F8 'Integer
  loc_F86FD9:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F86FF4:     Me.FGrid1.CellBackColor = &HFFFFFF
  loc_F86FFF:   Next var_F8 'Integer
  loc_F87007: Else
  loc_F8702C:   For var_FC = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_FC 'Integer
  loc_F87045:     Me.FGrid1.Col = CVar(CLng(var_86))
  loc_F87060:     Me.FGrid1.CellBackColor = &HFF00
  loc_F8706B:   Next var_FC 'Integer
  loc_F87070: End If
  loc_F87070: Exit Sub
End Sub

Private Sub cmdTransferCharge_Click() '144D334
  'Data Table: 47FC44
  Dim var_86 As Integer
  Dim unk_47FC47 As Connection15
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_104 As TextBox
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_15C As Variant
  Dim var_14C As Variant
  Dim var_1A0 As Variant
  Dim var_1A4 As String
  Dim var_BC As Variant
  Dim var_108 As String
  Dim var_100 As Fields15
  Dim var_1C8 As Variant
  Dim var_1C4 As Variant
  Dim var_204 As Variant
  Dim var_1B4 As Long
  Dim var_250 As Variant
  Dim var_218 As Variant
  Dim var_3B0 As Variant
  Dim var_3D0 As Long
  Dim var_440 As Variant
  Dim var_460 As Long
  Dim var_21C As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_3A0 As Variant
  Dim var_4C0 As Variant
  Dim var_4EC As String
  loc_144C886: unk_47FC47.BeginTrans var_94
  loc_144C8E5: Set var_100 = Me.Txt
  loc_144C8EB: Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & Me.Fields.Item("FolioNoDocid").Value & "',GuestFolio.mFolioNo = ")
  loc_144C8F3: var_1C4 = var_104.Tag
  loc_144C8FE: var_128 = -1 & CVar(var_108) 
  loc_144C920: var_14C = Me.Fields
  loc_144C930: var_170 = var_14C.Item("FolioNoDocid").Value
  loc_144C941: var_1A0 = var_128 & " WHERE GuestFolio.Docid = '" & var_170 & "'" 
  loc_144C94F: unk_47FC47.Execute CStr(var_1A0), var_1C8, 0
  loc_144C9A4: For var_1CC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8E = var_1CC 'Integer
  loc_144C9AE:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144C9B3:   var_EC = 0
  loc_144C9E2:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_144C9E9:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144C9F1:     var_EC = CVar(CLng(1)) 'Long
  loc_144CA11:     global_80 = CStr(Me.FGrid.TextMatrix))
  loc_144CA22:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144CA2A:     var_EC = CVar(CLng(2)) 'Long
  loc_144CA44:     var_108 = CStr(Me.FGrid.TextMatrix))
  loc_144CA6F:     var_A8 = "FolioNoDocid"
  loc_144CA86:     var_AC = Me.Fields.Item(var_A8)
  loc_144CA96:     var_DC = "UPDATE GuestFolio SET GuestFolio.mFolioNoDocId='" & var_AC.Value 
  loc_144CAB1:     Set var_100 = Me.Txt
  loc_144CAB7:     Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, var_DC & "',GuestFolio.mFolioNo = ", var_1A0, -1, var_14C)
  loc_144CABF:     var_EC = var_104.Tag
  loc_144CAE5:     Proc_6_17_EAA2B0(var_170, var_108, var_A8 & CVar(var_108) & " WHERE GuestFolio.Docid = ", var_EC)
  loc_144CAFB:     unk_47FC47.Execute CStr(var_A8 & var_170), var_EC, var_A8
  loc_144CB38:     Me.FGrid.Row = CVar(CLng(var_8E))
  loc_144CB53:     Me.FGrid.Col = 0
  loc_144CB6E:     Me.FGrid.CellForeColor = &HFF
  loc_144CB9B:     For var_1D0 = 1 To CInt((CLng(Me.FGrid.Cols) - 1)): var_90 = var_1D0 'Integer
  loc_144CBB4:       Me.FGrid.Col = CVar(CLng(var_90))
  loc_144CBCF:       Me.FGrid.CellBackColor = &HFF
  loc_144CBEA:       Me.FGrid.CellForeColor = &HFFFFFF
  loc_144CBF6:       Set var_98 = Me.FGrid
  loc_144CC0A:     Next var_1D0 'Integer
  loc_144CC0F:   End If
  loc_144CC12: Next var_1CC 'Integer
  loc_144CC35: Set var_98 = Me.Txt
  loc_144CC3B: Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_AC, var_108, "UPDATE PayCharge SET RelatedFolioNo=")
  loc_144CC43: var_218 = var_AC.Tag
  loc_144CC4C: var_1A4 = -1 & var_108
  loc_144CC70: var_104 = Me.Fields.Item("FolioNoDocid")
  loc_144CC7F: Proc_6_17_EAA2B0(var_DC, CVar(var_104))
  loc_144CCBD: Proc_6_17_EAA2B0(var_170, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144CCCE: var_1A0 = CVar(CStr(&HFFFFFF & var_170) & ",RelatedFolioNoDocId=") & var_DC & " WHERE FolioNoDocid = " & var_170 & " And (RelatedFolioNoDocId=" 
  loc_144CCFB: Proc_6_17_EAA2B0(var_1E4, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_144CD1A: unk_47FC47.Execute CStr(var_1A0 & var_1E4 & " Or IsNull(RelatedFolioNoDocId,'')='')"), var_21C, 
  loc_144CD7B: For var_220 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_8E = var_220 'Integer
  loc_144CD85:   var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144CD8A:   var_EC = 0
  loc_144CDB9:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_144CDBE:     var_86 = &HFF
  loc_144CDC5:     var_A8 = CVar(CLng(var_8E)) 'Long
  loc_144CDE8:     var_DC = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_144CDF7:     var_108 = CStr(Trim(var_DC))
  loc_144CE13:     var_A8 = "FolioNoDocid"
  loc_144CE39:     Proc_6_17_EAA2B0(var_DC, CVar(Me.Fields.Item(var_A8)), 1, var_A8)
  loc_144CE4C:     Set var_100 = Me.Txt
  loc_144CE52:     Call 0.Method_cmdTransferCharge_Click0 (CInt(1), var_104, var_108, var_86)
  loc_144CE5A:     var_EC = var_104.Tag
  loc_144CE63:     var_15C = CVar(CLng(var_8E)) 'Long
  loc_144CE68:     var_1B4 = &HB
  loc_144CEAA:     var_250 = CVar(CLng(var_8E)) 'Long
  loc_144CEC2:     var_218 = Me.FGrid1.TextMatrix)
  loc_144CEFB:     Proc_6_7_F25D88(var_370, CVar(CStr(Me.FGrid1.TextMatrix))), 3, CVar(CLng(var_8E)), var_218, &HB)
  loc_144CF04:     var_3B0 = CVar(CLng(var_8E)) 'Long
  loc_144CF09:     var_3D0 = &HC
  loc_144CF2C:     var_440 = CVar(CLng(var_8E)) 'Long
  loc_144CF31:     var_460 = &HB
  loc_144CF65:     var_FC = "UPDATE PayCharge SET PayCharge.FolioNoDocid = " & var_DC 
  loc_144CF6E:     var_118 = var_FC & ",PayCharge.FolioNo = " 
  loc_144CF91:     var_204 = var_118 & CVar(var_108) & ",RelatedFolioNo=" & Trim(Right(CVar(CStr(Me.FGrid1.TextMatrix))), 8)) & ",RelatedFolioNoDocId='" 
  loc_144CFCB:     var_3A0 = var_204 & CVar(CStr(var_218)) & "' WHERE PayCharge.RoomNo = '" & CVar(var_108) & "' AND PayCharge.VDate =" & var_370 & " AND PayCharge.VTime = '" 
  loc_144CFF3:     var_4C0 = var_3A0 & CVar(CStr(Me.FGrid1.TextMatrix))) & "' AND PayCharge.FolioNoDocid='" & CVar(CStr(Me.FGrid1.TextMatrix))) & "' " 
  loc_144D001:     unk_47FC47.Execute CStr(var_4C0), var_4E0, -1
  loc_144D076:     Me.FGrid1.Row = CVar(CLng(var_8E))
  loc_144D091:     Me.FGrid1.Col = 0
  loc_144D0AC:     Me.FGrid1.CellForeColor = &HFF
  loc_144D0D9:     For var_4E8 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_90 = var_4E8 'Integer
  loc_144D0F2:       Me.FGrid1.Col = CVar(CLng(var_90))
  loc_144D10D:       Me.FGrid1.CellBackColor = &HFF
  loc_144D128:       Me.FGrid1.CellForeColor = &HFFFFFF
  loc_144D134:       Set var_98 = Me.FGrid1
  loc_144D148:     Next var_4E8 'Integer
  loc_144D14D:   End If
  loc_144D150: Next var_220 'Integer
  loc_144D15B: unk_47FC47.CommitTrans
  loc_144D17E: If ((unk_47FC47.State > 0) And (var_86 = &HFF)) Then
  loc_144D1A2:   MsgBox("Charges Transfered Successfully", &H40, "Save...", var_FC, var_118)
  loc_144D1BE:   Me.cmdTransferCharge.Enabled = False
  loc_144D1CF:   Set var_98 = Me.BtnroomMerge
  loc_144D1D5:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144D1DD:   Call Proc_136_28_1335900()
  loc_144D1E2:   Call Proc_136_27_1251F0C()
  loc_144D1EA: Else
  loc_144D208:   If ((unk_47FC47.State > 0) And (var_86 = 0)) Then
  loc_144D22C:     MsgBox("Please select any charges to be transfer", &H40, "Save...", var_FC, var_118)
  loc_144D23C:     Exit Sub
  loc_144D240:   Else
  loc_144D248:     Set var_98 = Err()
  loc_144D24E:     Call 0.Method_arg_2C (var_108)
  loc_144D26C:     var_BC = CVar(var_108) 'String
  loc_144D26F:     MsgBox(var_BC, &H10, "Save...", var_FC, var_118)
  loc_144D28B:     Set var_98 = Me.BtnroomMerge
  loc_144D291:     Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_144D299:   End If
  loc_144D299: End If
  loc_144D2AD: var_108 = "SELECT RoomMast.Code AS RoomNo, GuestProf.Name AS GuestName, GuestFolio.DocId AS FolioNoDocid,GuestFolio.FolioNo AS FolioNo FROM ((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.FolioNo = GuestFolio.FolioNo) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code WHERE (GuestFolio.LOGSITE_CODE='" & MemVar_1F92078
  loc_144D2C2: var_4EC = var_108 & "' And RoomMast.LOGSITE_CODE='" & MemVar_1F92078 & "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=GuestFolio.FolioNo or GuestFolio.mFolioNo=0) AND (((RoomOcc.Type) Not In ('C','O')) AND ((RoomMast.Type)='RO')) OR (((RoomOcc.Type) Is Null) AND ((RoomMast.Type)='RO')) ORDER BY RoomMast.Code"
  loc_144D2CB: unk_47FC47.Execute var_4EC, var_BC, -1
  loc_144D2DC: Set global_64 = var_98
  loc_144D2FE: CVarUnk
  loc_144D303: VerifyVarObj
  loc_144D309: Set var_98 = Me.DGHelp
  loc_144D30F: LateIdStAd
  loc_144D321: Set var_98 = Me.DGHelp
  loc_144D332: Exit Sub
  loc_144D333: Exit Sub
End Sub

Public Sub DGridTxtPointSet(DGrid, Rst, TxtIndex, PointerGrid) '1192CC4
  'Data Table: 47FC44
  Dim var_A4 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_108 As Variant
  Dim var_F4 As Variant
  Dim Me As DataGrid
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_90 As Double
  loc_11928E5: If (Àº$·ó.Recordset15.EOF = 0) Then
  loc_11928F0:   If Not((PointerGrid Is Nothing)) Then
  loc_1192901:     Me.Font.Name = "MS SANS SARIFF"
  loc_1192916:     Me.HeadFont.Name = "SYSTEM"
  loc_1192932:     Me.Font.Size = 9.75
  loc_119294E:     Me.HeadFont.Size = 9.75
  loc_1192965:     Me.HeadLines = 1.5
  loc_1192979:     Me.RowHeight = &H10E
  loc_1192990:     var_E4 = (Me.Columns.Count + 1)
  loc_1192996:     var_B4 = CVar(CLng(var_E4)) 'Long
  loc_11929C4:     var_E4 = (Me.Columns.Count - 1)
  loc_11929D0:     For var_F8 = 0 To CInt(var_E4): var_86 = var_F8 'Integer
  loc_11929DA:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_11929F9:       var_108 = CVar(CLng(Me.Columns.width)) 'Long
  loc_1192A01:       LateIdCallSt
  loc_1192A10:       var_B4 = 0
  loc_1192A1D:       var_108 = CVar(CLng(var_86)) 'Long
  loc_1192A3B:       var_E4 = CVar(CStr(Me.Columns.TEXT)) 'String
  loc_1192A42:       LateIdCallSt
  loc_1192A7A:       If (Me.Columns.Alignment = 0) Then
  loc_1192A81:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1192A8C:         var_F4 = CVar(CInt(1)) 'Integer
  loc_1192A93:         LateIdCallSt
  loc_1192A9E:       Else
  loc_1192AA2:         var_A4 = CVar(CLng(var_86)) 'Long
  loc_1192AAD:         var_F4 = CVar(CInt(7)) 'Integer
  loc_1192AB4:         LateIdCallSt
  loc_1192ABC:       End If
  loc_1192ABF:     Next var_F8 'Integer
  loc_1192AD6:     Me.Height = CVar(CDbl(Me.RowHeight))
  loc_1192ADE:     var_A4 = 0
  loc_1192AF1:     var_F4 = CVar(CLng(Me.RowHeight)) 'Long
  loc_1192AF9:     LateIdCallSt
  loc_1192B19:     var_D4 = (Me.Row - 1)
  loc_1192B29:     var_158 = (Me.top + (Me.Columns.Alignment * Me.RowHeight))
  loc_1192B35:     var_178 = (var_158 + Me.RowHeight)
  loc_1192B3E:     var_188 = (var_178 + 260)
  loc_1192B4C:     Me.Top = CVar(CDbl(var_188))
  loc_1192B6F:     var_D4 = (Me.left + 310)
  loc_1192B7D:     Me.Left = CVar(CDbl(Me.Columns.Alignment))
  loc_1192BA6:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1192BAC:     Me.DGHelp.ColumnLabelCount = Me.Font.Size
  loc_1192BC5:     var_E4 = Me.Font.Name
  loc_1192BDA:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1192BE0:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_0
  loc_1192C0E:     Set var_18C = DGHelp.DispID_FFFFFE00
  loc_1192C14:     Me.DGHelp.RowLabelCount = Me.Font.Bold
  loc_1192C3D:     var_E4 = (Me.Columns.Count - 1)
  loc_1192C49:     For var_190 = 0 To CInt(Me.Font.Bold): var_86 = var_190 'Integer
  loc_1192C74:       If (Me.Columns.Visible = True) Then
  loc_1192C7A:         var_B4 = CVar(var_90) 'Double
  loc_1192C96:         var_E4 = (var_86 + Me.Columns.width)
  loc_1192C9B:         var_90 = CSng(Me.Font.Bold)
  loc_1192CA7:       End If
  loc_1192CAA:     Next var_190 'Integer
  loc_1192CB6:     var_A4 = CVar((var_90 - CDbl(&H14))) 'Single
  loc_1192CBE:     Me.Width = 1
  loc_1192CC3:   End If
  loc_1192CC3: End If
  loc_1192CC3: Exit Sub
End Sub

Public Sub Proc_136_25_139A994(arg_C) '139A994
  'Data Table: 47FC44
  Dim var_E4 As Variant
  Dim var_AC As String
  Dim var_BC As String
  Dim var_D4 As Variant
  Dim Me As Recordset15
  Dim var_A8 As Variant
  Dim var_104 As Variant
  Dim var_F4 As Variant
  Dim var_134 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_168 As Variant
  Dim var_16C As MSHFlexGrid
  Dim var_114 As Variant
  loc_139A0B8: On Error Goto loc_139A92D
  loc_139A0C5: Set global_72 = New 
  loc_139A0D7: Me.Recordset15.CursorLocation = 3
  loc_139A0FA: var_AC = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,RoomOcc.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid,GuestFolio.Mfoliono,GuestFolio.MfolionoDOCID,RoomOcc.PlanCode  " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS WHERE ROOMMAST.LOGSITE_CODE='"
  loc_139A116: var_BC = var_AC & MemVar_1F92078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F92078 & "' AND Roommast.type='RO'  and GuestFolio.Mfoliono="
  loc_139A129: var_D4 = CVar(var_BC & CStr(arg_C) & " and RoomMast.Code in (Select ISNULL(RoomNo,'') from RoomOcc where isnull(type,'')<>'C' and isnull(type,'')<>'O')  and isnull(RoomOcc.type,'')<>'C' and isnull(RoomOcc.type,'')<>'O' Order by RoomCat.Name,RoomMast.Code,ROOMOCC.CHKOUTDATE ") 'String
  loc_139A133: Me.Open var_D4, CVar(MemVar_1F92044), 2
  loc_139A15F: Me.FGrid2.Rows = 1
  loc_139A17A: Me.FGrid2.Cols = 1
  loc_139A186: var_A2 = CByte(0) 'Byte
  loc_139A18E: var_A4 = CByte(0) 'Byte
  loc_139A197: var_E4 = CVar(CLng(var_A4)) 'Long
  loc_139A19C: var_104 = &H1F4
  loc_139A1A9: Set var_A8 = Me.FGrid2
  loc_139A1AF: LateIdCallSt
  loc_139A1C3: var_118 = Me.RecordCount
  loc_139A1D1: If (var_118 > 0) Then
  loc_139A1DA:   Me.MoveFirst
  loc_139A20D:   var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_139A21A: End If
  loc_139A21A: var_E4 = 0
  loc_139A223: var_104 = 0
  loc_139A237: Set var_A8 = Me.FGrid2
  loc_139A23D: LateIdCallSt
  loc_139A253: var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_139A257: ' Referenced from: 139A914
  loc_139A269: If Not(Me.EOF) Then
  loc_139A2DA:   If CBool(Me.Fields.Item("FolioNo").Value <> Me.Fields.Item("mFolioNo").Value) Then
  loc_139A2E8:     If (global_76 = vbNullString) Then
  loc_139A31F:       global_76 = CStr(Me.Fields.Item("DocID").Value)
  loc_139A376:       global_80 = CStr("'" & Me.Fields.Item("RoomNo").Value & "'")
  loc_139A3D3:       global_84 = CStr(" WHERE PayCharge.FolioNoDocid ='" & Me.Fields.Item("DocID").Value & "'")
  loc_139A3ED:     Else
  loc_139A432:       global_76 = CStr(CVar(global_76 & ",") & Me.Fields.Item("DocID").Value)
  loc_139A497:       global_80 = CStr(CVar(global_80 & ",'") & Me.Fields.Item("RoomNo").Value & "'")
  loc_139A4EA:       var_158 = CVar(global_84 & " OR PayCharge.FolioNoDocid ='") & Me.Fields.Item("DocID").Value 
  loc_139A4F3:       var_168 = var_158 & "'" 
  loc_139A4FE:       global_84 = CStr(var_168)
  loc_139A517:     End If
  loc_139A517:   End If
  loc_139A557:   If (CVar(var_A0) = Me.Fields.Item("RoomCat").Value) Then
  loc_139A55A:     ' Referenced from: 139A828
  loc_139A55E:     Set var_16C = Me.FGrid2
  loc_139A57C:     If ((CLng(var_16C.Cols) - 1) < CLng(var_A2)) Then
  loc_139A591:       var_E4 = CVar((CLng(var_16C.Cols) + 1)) 'Long
  loc_139A599:       var_16C.Cols = "RoomCat"
  loc_139A5A1:     End If
  loc_139A5A6:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_139A5B0:     var_114 = CVar(CLng(var_A2)) 'Long
  loc_139A5E3:     var_148 = CVar(CStr(Me.Fields.Item("RoomNo").Value)) 'String
  loc_139A5EA:     LateIdCallSt
  loc_139A66E:     If (Me.Fields.Item("FolioNo").Value = Me.Fields.Item("mFolioNo").Value) Then
  loc_139A685:       Me.FGrid2.Row = CVar(CLng(var_A4))
  loc_139A6A1:       Me.FGrid2.Col = CVar(CLng(var_A2))
  loc_139A6BC:       Me.FGrid2.CellBackColor = &HFDE1FF
  loc_139A700:       Me.FGrid2.Tag = CVar(CStr(Me.Fields.Item("RoomNo").Value))
  loc_139A715:     End If
  loc_139A71A:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_139A71F:     var_104 = &H28A
  loc_139A72C:     Set var_A8 = Me.FGrid2
  loc_139A732:     LateIdCallSt
  loc_139A742:     var_E4 = CVar(CLng(var_A2)) 'Long
  loc_139A74D:     var_104 = CVar(CInt(4)) 'Integer
  loc_139A755:     Set var_A8 = Me.FGrid2
  loc_139A75B:     LateIdCallSt
  loc_139A771:     var_A2 = CByte((CInt(var_A2) + 1)) 'Byte
  loc_139A777:     Set var_16C = Nothing 
  loc_139A77E:   Else
  loc_139A783:     var_F4 = CVar(CLng(var_A4)) 'Long
  loc_139A788:     var_114 = 0
  loc_139A7BF:     var_148 = CVar(CStr(Me.Fields.Item("RoomCat").Value)) 'String
  loc_139A7C7:     Set var_134 = Me.FGrid2
  loc_139A7CD:     LateIdCallSt
  loc_139A813:     var_A0 = CStr(Me.Fields.Item("RoomCat").Value)
  loc_139A824:     var_A2 = CByte(1) 'Byte
  loc_139A828:     GoTo loc_139A55A
  loc_139A82B:   End If
  loc_139A831:   Me.MoveNext
  loc_139A84A:   If (Me.EOF = 0) Then
  loc_139A88D:     If CBool(CVar(var_A0) <> Me.Fields.Item("RoomCat").Value) Then
  loc_139A8A9:       var_E4 = CVar((CLng(Me.FGrid2.Rows) + 1)) 'Long
  loc_139A8B8:       Me.FGrid2.Rows = "RoomCat"
  loc_139A8E2:       var_A4 = CByte((CLng(Me.FGrid2.Rows) - 1)) 'Byte
  loc_139A8F1:       var_E4 = CVar(CLng(var_A4)) 'Long
  loc_139A8F6:       var_104 = &H1F4
  loc_139A903:       Set var_A8 = Me.FGrid2
  loc_139A909:       LateIdCallSt
  loc_139A914:     End If
  loc_139A914:   End If
  loc_139A914:   GoTo loc_139A257
  loc_139A917: End If
  loc_139A91B: Set var_A8 = Me.FGrid2
  loc_139A92C: Exit Sub
  loc_139A92D: ' Referenced from: 139A0B8
  loc_139A93B: var_E4 = "FILL DETAILS"
  loc_139A946: MsgBox(var_E4, 0, var_148, var_158, var_168)
  loc_139A972: Call 0.Method_arg_1C (var_118, 0, var_148, var_158, var_168, FGrid2.DispID_FFFF, Err(), var_104)
  loc_139A97E: MsgBox(CVar(var_118), var_E4, var_134, var_148, var_114)
  loc_139A991: Exit Sub
End Sub

Public Sub Proc_136_26_11F7BC4(arg_C, arg_10, arg_14, arg_18, arg_1C) '11F7BC4
  'Data Table: 47FC44
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
  loc_11F7748: On Error Goto loc_11F7B80
  loc_11F7770: For var_A0 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_A0 'Integer
  loc_11F7778:   var_86 = 0
  loc_11F777F:   var_B0 = CVar(CLng(var_88)) 'Long
  loc_11F7784:   var_D0 = 1
  loc_11F77A8:   var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_11F77BB:   var_120 = Trim(arg_C)
  loc_11F77CB:   var_140 = CVar(CLng(var_88)) 'Long
  loc_11F77FA:   var_1A8 = 3 And (CStr(Me.FGrid1.TextMatrix)) = arg_10)
  loc_11F7802:   var_1B8 = CVar(CLng(var_88)) 'Long
  loc_11F7831:   var_220 = &HC And (CStr(Me.FGrid1.TextMatrix)) = arg_14)
  loc_11F7839:   var_230 = CVar(CLng(var_88)) 'Long
  loc_11F7899:   If CBool(&HB And (CStr(Me.FGrid1.TextMatrix)) = arg_18)) Then
  loc_11F78AF:     Me.FGrid1.Col = 0
  loc_11F78CA:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_11F78E2:     Me.FGrid1.CellFontName = "WINGDINGS"
  loc_11F78FC:     Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_11F7917:     Me.FGrid1.CellForeColor = &HFF0000
  loc_11F7932:     var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7937:     var_D0 = 0
  loc_11F796E:     If (CStr(Me.FGrid1.TextMatrix)) <> arg_1C) Then
  loc_11F7984:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7989:       var_D0 = 0
  loc_11F799D:       Set var_174 = Me.FGrid1
  loc_11F79A3:       LateIdCallSt
  loc_11F79C8:       var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F79CD:       var_D0 = 0
  loc_11F79EB:       var_188 = CStr(Me.FGrid1.TextMatrix))
  loc_11F7A04:       If (var_188 <> "ü") Then
  loc_11F7A1A:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7A1F:         var_D0 = 0
  loc_11F7A28:         var_110 = vbNullString
  loc_11F7A32:         Set var_174 = Me.FGrid1
  loc_11F7A38:         LateIdCallSt
  loc_11F7A6F:         For var_29C = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_29C 'Integer
  loc_11F7A88:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F7AA3:           Me.FGrid1.CellBackColor = &HFFFFFF
  loc_11F7AAE:         Next var_29C 'Integer
  loc_11F7AB6:       Else
  loc_11F7AC9:         var_B0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11F7ACE:         var_D0 = 0
  loc_11F7AD7:         var_110 = "ü"
  loc_11F7AE1:         Set var_174 = Me.FGrid1
  loc_11F7AE7:         LateIdCallSt
  loc_11F7B1E:         For var_2A0 = 1 To CInt((CLng(Me.FGrid1.Cols) - 1)):   var_86 = var_2A0 'Integer
  loc_11F7B37:           Me.FGrid1.Col = CVar(CLng(var_86))
  loc_11F7B52:           Me.FGrid1.CellBackColor = &HFF00
  loc_11F7B5D:         Next var_2A0 'Integer
  loc_11F7B62:       End If
  loc_11F7B62:     End If
  loc_11F7B62:   End If
  loc_11F7B65: Next var_A0 'Integer
  loc_11F7B6E: Set var_8C = Me.FGrid1
  loc_11F7B7F: Exit Sub
  loc_11F7B80: ' Referenced from: 11F7748
  loc_11F7B88: Set var_8C = Err()
  loc_11F7B8E: Call 0.Method_arg_2C (var_188)
  loc_11F7BAF: MsgBox(CVar(var_188), &H40, "Error...", var_100, var_120)
  loc_11F7BC2: Exit Sub
End Sub

Public Sub Proc_136_27_1251F0C
  'Data Table: 47FC44
  Dim var_C8 As Variant
  Dim var_98 As Variant
  Dim var_260 As TextBox
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_1A8 As String
  Dim var_1B8 As Variant
  Dim var_1C8 As String
  Dim var_248 As String
  Dim var_284 As Variant
  Dim var_294 As String
  Dim unk_47FC47 As Connection15
  Dim var_25C As MSHFlexGrid
  loc_1251A4E: Set var_25C = Me.Txt
  loc_1251A54: Call 0.Method_Proc_136_27_1251F0C0 (CInt(1), var_260)
  loc_1251A81: var_108 = "SELECT RoomMast.Code AS [S    All], RoomMast.Code AS RoomNo ,GuestFolio.Docid as FolioNoDocid, RoomMast.Name AS Quot," & IIf((MemVar_1F923AC = "A"), " GuestFolio.Vdate ", "convert(char,GuestFolio.vDate ,103)") 
  loc_1251A95: var_1A8 = " as [Departure Date], GuestProf.Name AS [Guest Name], GuestProf.GuestStatus AS Status, SubGroup.Name AS [Company Name],GuestProf.Add1 AS Address1,GuestProf.Add2 AS Address2,GuestProf.CityName AS [City Name],GuestProf.StateName AS [State Name],GuestProf.CountryName AS [Country Name], GuestFolio.FolioNo AS FolioNo,Guestprof.Code as GuestCode,GuestFolio.Mfoliono FROM ((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) "
  loc_1251A9A: var_1B8 = var_108 & " as [CheckIn Date] ," & IIf((MemVar_1F923AC = "A"), " RoomOcc.DepDate", "convert(char,RoomOcc.DepDate ,103)") & var_1A8 
  loc_1251A9E: var_1C8 = "INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) Left JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code WHERE ((GuestFolio.LOGSITE_CODE='"
  loc_1251AC4: var_248 = "') AND (GuestFolio.mFolioNo is Null OR GuestFolio.mFolioNo=0) AND (roomocc.type not in ('C','O') or roomocc.type is null)  AND ROOMMAST.TYPE='RO' AND RoomOcc.RoomNo <> '"
  loc_1251AD4: var_284 = var_1B8 & var_1C8 & CVar(MemVar_1F92078) & "' And RoomMast.LOGSITE_CODE='" & CVar(MemVar_1F92078) & var_248 & CVar(Val(var_260.Text)) 
  loc_1251AD8: var_294 = "') and GuestFolio.Docid Not in (Select Distinct Folionodocid from paycharge where Bill_No is not null and bill_no<>'' and folionodocid<>'' and folionodocid is not null and Settledate is NULL) ORDER BY RoomMast.Code"
  loc_1251AEB: unk_47FC47.Execute CStr(var_284 & var_294), var_2C8, -1
  loc_1251AFC: Set global_52 = var_2CC
  loc_1251B46: CVarUnk
  loc_1251B4B: VerifyVarObj
  loc_1251B51: Set var_25C = Me.FGrid
  loc_1251B57: LateIdStAd
  loc_1251B69: Set var_25C = Me.FGrid
  loc_1251B9F: For var_2DC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_2DC 'Integer
  loc_1251BA9:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1251BAE:   var_C8 = 0
  loc_1251BB7:   var_118 = vbNullString
  loc_1251BC1:   Set var_25C = Me.FGrid
  loc_1251BC7:   LateIdCallSt
  loc_1251BD5: Next var_2DC 'Integer
  loc_1251BDA: var_98 = 0
  loc_1251BE3: var_C8 = 0
  loc_1251BEC: var_118 = &H12C
  loc_1251BF9: Set var_25C = Me.FGrid
  loc_1251BFF: LateIdCallSt
  loc_1251C0A: var_98 = 1
  loc_1251C13: var_C8 = 0
  loc_1251C1C: var_118 = &H384
  loc_1251C29: Set var_25C = Me.FGrid
  loc_1251C2F: LateIdCallSt
  loc_1251C3A: var_98 = 2
  loc_1251C43: var_C8 = 0
  loc_1251C4C: var_118 = 0
  loc_1251C59: Set var_25C = Me.FGrid
  loc_1251C5F: LateIdCallSt
  loc_1251C6A: var_98 = 3
  loc_1251C73: var_C8 = 0
  loc_1251C7C: var_118 = 0
  loc_1251C89: Set var_25C = Me.FGrid
  loc_1251C8F: LateIdCallSt
  loc_1251C9A: var_98 = 4
  loc_1251CA3: var_C8 = 0
  loc_1251CAC: var_118 = 0
  loc_1251CB9: Set var_25C = Me.FGrid
  loc_1251CBF: LateIdCallSt
  loc_1251CCA: var_98 = 5
  loc_1251CD3: var_C8 = 0
  loc_1251CDC: var_118 = &H44C
  loc_1251CE9: Set var_25C = Me.FGrid
  loc_1251CEF: LateIdCallSt
  loc_1251CFA: var_98 = 6
  loc_1251D03: var_C8 = 0
  loc_1251D0C: var_118 = &HB22
  loc_1251D19: Set var_25C = Me.FGrid
  loc_1251D1F: LateIdCallSt
  loc_1251D2A: var_98 = 7
  loc_1251D33: var_C8 = 0
  loc_1251D3C: var_118 = 0
  loc_1251D49: Set var_25C = Me.FGrid
  loc_1251D4F: LateIdCallSt
  loc_1251D5A: var_98 = 8
  loc_1251D63: var_C8 = 0
  loc_1251D6C: var_118 = &HAF0
  loc_1251D79: Set var_25C = Me.FGrid
  loc_1251D7F: LateIdCallSt
  loc_1251D8A: var_98 = 9
  loc_1251D93: var_C8 = 0
  loc_1251D9C: var_118 = 0
  loc_1251DA9: Set var_25C = Me.FGrid
  loc_1251DAF: LateIdCallSt
  loc_1251DBA: var_98 = &HA
  loc_1251DC3: var_C8 = 0
  loc_1251DCC: var_118 = 0
  loc_1251DD9: Set var_25C = Me.FGrid
  loc_1251DDF: LateIdCallSt
  loc_1251DEA: var_98 = &HB
  loc_1251DF3: var_C8 = 0
  loc_1251DFC: var_118 = &H898
  loc_1251E09: Set var_25C = Me.FGrid
  loc_1251E0F: LateIdCallSt
  loc_1251E1A: var_98 = &HC
  loc_1251E23: var_C8 = 0
  loc_1251E2C: var_118 = 0
  loc_1251E39: Set var_25C = Me.FGrid
  loc_1251E3F: LateIdCallSt
  loc_1251E4A: var_98 = &HD
  loc_1251E53: var_C8 = 0
  loc_1251E5C: var_118 = 0
  loc_1251E69: Set var_25C = Me.FGrid
  loc_1251E6F: LateIdCallSt
  loc_1251E7A: var_98 = &HE
  loc_1251E83: var_C8 = 0
  loc_1251E8C: var_118 = 0
  loc_1251E99: Set var_25C = Me.FGrid
  loc_1251E9F: LateIdCallSt
  loc_1251EAA: var_98 = &HF
  loc_1251EB3: var_C8 = 0
  loc_1251EBC: var_118 = 0
  loc_1251EC9: Set var_25C = Me.FGrid
  loc_1251ECF: LateIdCallSt
  loc_1251EDA: var_98 = &H10
  loc_1251EE3: var_C8 = 0
  loc_1251EEC: var_118 = 0
  loc_1251EF9: Set var_25C = Me.FGrid
  loc_1251EFF: LateIdCallSt
  loc_1251F0A: Exit Sub
End Sub

Public Sub Proc_136_28_1335900
  'Data Table: 47FC44
  Dim var_90 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_94 As String
  Dim unk_47FC47 As Connection15
  Dim Me As Recordset15
  Dim var_108 As Variant
  loc_1335140: On Error Goto loc_13358BC
  loc_1335149: global_84 = vbNullString
  loc_1335153: global_80 = vbNullString
  loc_133516F: Set var_8C = Me.Txt
  loc_1335175: Call 0.Method_Proc_136_28_13359000 (CInt(1), var_90)
  loc_133518E: Call Proc_136_25_139A994(CLng(Val(var_90.Tag)))
  loc_13351C2: For var_AC = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_AC 'Integer
  loc_13351CC:   var_BC = CVar(CLng(var_86)) 'Long
  loc_13351D1:   var_DC = 0
  loc_1335200:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_133520E:     If (vbNullString = vbNullString) Then
  loc_1335215:       var_BC = CVar(CLng(var_86)) 'Long
  loc_133521D:       var_DC = CVar(CLng(2)) 'Long
  loc_133523D:       global_76 = CStr(Me.FGrid.TextMatrix))
  loc_1335251:       var_BC = CVar(CLng(var_86)) 'Long
  loc_1335284:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133529E:       var_BC = CVar(CLng(var_86)) 'Long
  loc_13352D1:       global_84 = CVar(CLng(2)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_13352E7:     Else
  loc_13352F1:       var_94 = global_76 & ","
  loc_13352F8:       var_BC = CVar(CLng(var_86)) 'Long
  loc_1335324:       global_76 = CVar(CLng(&HE)) & CStr(Me.FGrid.TextMatrix))
  loc_1335341:       var_94 = global_80 & ",'"
  loc_1335348:       var_BC = CVar(CLng(var_86)) 'Long
  loc_133537B:       global_80 = CVar(CLng(1)) & CStr(Me.FGrid.TextMatrix)) & "'"
  loc_133539A:       var_94 = global_84 & " OR PayCharge.FolioNoDocid ='"
  loc_13353A1:       var_BC = CVar(CLng(var_86)) 'Long
  loc_13353B8:       var_A8 = Me.FGrid.TextMatrix)
  loc_13353D4:       global_84 = CVar(CLng(2)) & CStr(var_A8) & "'"
  loc_13353E9:     End If
  loc_13353E9:   End If
  loc_13353EC: Next var_AC 'Integer
  loc_13353F5: Set var_8C = Me.FGrid1
  loc_1335429: If (((global_80 = vbNullString) Or (global_80 = "0")) Or (global_80 = vbNullString)) Then
  loc_1335454:   Me.FGrid1.Rows = 1
  loc_1335467:   Set var_8C = Me.chkSelectALL
  loc_133546D:   Call 0.Method_Proc_136_28_13359000 (1, var_90, 0)
  loc_1335475:   var_90.Visible = Me.FGrid1.Text
  loc_133548A:   Set var_8C = Me.BtnroomMerge
  loc_1335490:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_1335498:   Exit Sub
  loc_1335499: End If
  loc_13354B0: var_94 = "SELECT PayCharge.RoomNo AS [S     All], PayCharge.RoomNo, PayCharge.RoomType, convert(Varchar(11),PayCharge.VDate) AS [Dept Date], PayCharge.Comments, PayCharge.PayType, PayCharge.AmtCr AS Credit, PayCharge.AmtDr AS Debit, PayCharge.TipAmt, GuestProf.Name As [Guest Name], PayCharge.FolioNo, PayCharge.FolioNoDocid, PayCharge.VTime From PayCharge Left Join GuestProf on guestprof.code=paycharge.guestProf " & global_84
  loc_13354C0: unk_47FC47.Execute var_94 & " ORDER BY PayCharge.RoomNo, PayCharge.Vdate, PayCharge.Vtime", var_A8, -1
  loc_13354D1: Set global_68 = var_8C
  loc_13354FD: If (Me.RecordCount <= 0) Then
  loc_1335528:   Me.FGrid1.Rows = 1
  loc_133553B:   Set var_8C = Me.chkSelectALL
  loc_1335541:   Call 0.Method_Proc_136_28_13359000 (1, var_90, 0)
  loc_1335549:   var_90.Visible = Me.FGrid1.Text
  loc_133555E:   Set var_8C = Me.BtnroomMerge
  loc_1335564:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_133556C:   Exit Sub
  loc_133556D: End If
  loc_133557E: Call 0.Method_Proc_136_28_13359000 (1, var_90, &HFF)
  loc_1335586: var_90.Visible = Me.chkSelectALL
  loc_13355A5: Me.FGrid1.Rows = 2
  loc_13355C0: Me.FGrid1.FixedRows = 1
  loc_13355D1: CVarUnk
  loc_13355D6: VerifyVarObj
  loc_13355DC: Set var_8C = Me.FGrid1
  loc_13355E2: LateIdStAd
  loc_13355F0: var_BC = 1
  loc_13355F9: var_DC = 0
  loc_1335602: var_108 = &H2BC
  loc_133560F: Set var_8C = Me.FGrid1
  loc_1335615: LateIdCallSt
  loc_1335620: var_BC = 2
  loc_1335629: var_DC = 0
  loc_1335632: var_108 = 0
  loc_133563F: Set var_8C = Me.FGrid1
  loc_1335645: LateIdCallSt
  loc_1335650: var_BC = 3
  loc_1335659: var_DC = 0
  loc_1335662: var_108 = &H384
  loc_133566F: Set var_8C = Me.FGrid1
  loc_1335675: LateIdCallSt
  loc_1335680: var_BC = 4
  loc_1335689: var_DC = 0
  loc_1335692: var_108 = &HBB8
  loc_133569F: Set var_8C = Me.FGrid1
  loc_13356A5: LateIdCallSt
  loc_13356B0: var_BC = 5
  loc_13356B9: var_DC = 0
  loc_13356C2: var_108 = 0
  loc_13356CF: Set var_8C = Me.FGrid1
  loc_13356D5: LateIdCallSt
  loc_13356E0: var_BC = 6
  loc_13356E9: var_DC = 0
  loc_13356F2: var_108 = &H708
  loc_13356FF: Set var_8C = Me.FGrid1
  loc_1335705: LateIdCallSt
  loc_1335710: var_BC = 7
  loc_1335719: var_DC = 0
  loc_1335722: var_108 = &H708
  loc_133572F: Set var_8C = Me.FGrid1
  loc_1335735: LateIdCallSt
  loc_1335740: var_BC = 8
  loc_1335749: var_DC = 0
  loc_1335752: var_108 = 0
  loc_133575F: Set var_8C = Me.FGrid1
  loc_1335765: LateIdCallSt
  loc_1335770: var_BC = 9
  loc_1335779: var_DC = 0
  loc_1335782: var_108 = &H960
  loc_133578F: Set var_8C = Me.FGrid1
  loc_1335795: LateIdCallSt
  loc_13357A0: var_BC = &HA
  loc_13357A9: var_DC = 0
  loc_13357B2: var_108 = 0
  loc_13357BF: Set var_8C = Me.FGrid1
  loc_13357C5: LateIdCallSt
  loc_13357D0: var_BC = &HB
  loc_13357D9: var_DC = 0
  loc_13357E2: var_108 = 0
  loc_13357EF: Set var_8C = Me.FGrid1
  loc_13357F5: LateIdCallSt
  loc_1335800: var_BC = &HC
  loc_1335809: var_DC = 0
  loc_1335812: var_108 = 0
  loc_133581F: Set var_8C = Me.FGrid1
  loc_1335825: LateIdCallSt
  loc_1335855: For var_11C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_11C 'Integer
  loc_133585F:   var_BC = CVar(CLng(var_86)) 'Long
  loc_1335864:   var_DC = 0
  loc_133586D:   var_108 = vbNullString
  loc_1335877:   Set var_8C = Me.FGrid1
  loc_133587D:   LateIdCallSt
  loc_133588C:   Set var_8C = Me.FGrid1
  loc_13358A0: Next var_11C 'Integer
  loc_13358AD: Set var_8C = Me.BtnroomMerge
  loc_13358B3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(True)
  loc_13358BB: Exit Sub
  loc_13358BC: ' Referenced from: 1335140
  loc_13358C4: Set var_8C = Err()
  loc_13358CA: Call 0.Method_arg_2C (var_94)
  loc_13358EB: MsgBox(CVar(var_94), &H10, "Error...", var_13C, var_14C)
  loc_13358FE: Exit Sub
End Sub

Public Sub Proc_136_29_E987C0
  'Data Table: 47FC44
  Dim var_88 As Variant
  loc_E98758: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E9876A:   Me.DGHelp.Visible = False
  loc_E98772: End If
  loc_E9878E: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E987A0:   Me.FGPoint.Visible = False
  loc_E987A8: End If
  loc_E987B1: Set var_88 = Me.BtnroomMerge
  loc_E987B7: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_8001000D(False)
  loc_E987BF: Exit Sub
End Sub
