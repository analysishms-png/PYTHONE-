VERSION 5.00
Begin VB.Form VoucherSundrySetting
  Caption = "Voucher Sundry Setting"
  BackColor = &HC5EFEE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  MaxButton = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11595
  ClientHeight = 7185
  Begin DataGrid DGVType
    Left = 3165
    Top = 3300
    Width = 5055
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin DataGrid DGRevenue
    Left = 2295
    Top = 2430
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 765
    Width = 1425
    Height = 255
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin DataGrid DGSundry
    Left = 2790
    Top = 5565
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 1815
    Top = 493
    Width = 3510
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFDF4B5&
    ForeColor = &H80000012&
    Left = 1065
    Top = 2460
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 375
    TabIndex = 0
  End
  Begin MSHFlexGrid FGrid
    Left = 45
    Top = 2205
    Width = 8790
    Height = 4275
    TabIndex = 4
  End
  Begin Label LblDepart
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 7890
    Top = 450
    Width = 3885
    Height = 510
    TabIndex = 10
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 20.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "App.Date"
    Index = 1
    ForeColor = &H0&
    Left = 225
    Top = 765
    Width = 855
    Height = 240
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet"
    Index = 0
    ForeColor = &H0&
    Left = 225
    Top = 495
    Width = 510
    Height = 240
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "VoucherSundrySetting"

Private global_68 As Integer
Private global_70 As Integer

Private Sub TopCtrl1_UnknownEvent_11 'E8019C
  'Data Table: 48CC30
  Dim var_94 As TextBox
  loc_E80138: On Error Goto loc_E80194
  loc_E8015E: Call Proc_82_52_E787F4(Proc_5_1_100CB50("ADD", Me))
  loc_E80169: Call Proc_82_50_F290F0(global_72)
  loc_E80179: Set var_8C = Me.Txt
  loc_E8017F: Call 0.Method_TopCtrl1_UnknownEvent_110 (CInt(0))
  loc_E80187: var_94.SetFocus
  loc_E80193: Exit Sub
  loc_E80194: ' Referenced from: E80138
  loc_E80194: Proc_6_60_E62BC4(var_94)
  loc_E80199: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'E18308
  'Data Table: 48CC30
  loc_E182FD: Me.Global.Unload Me
  loc_E18305: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E369D8
  'Data Table: 48CC30
  Dim var_4701 As Double
  loc_E369C8: Proc_5_0_110649C(&HFF, Me)
  loc_E369D0: Call Proc_82_51_13DDC6C(global_72)
  loc_E369D5: Exit Sub
  loc_E369D6: var_4701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'E3B3B8
  'Data Table: 48CC30
  loc_E3B3A8: Proc_5_0_110649C(&HFF, Me)
  loc_E3B3B0: Call Proc_82_51_13DDC6C(global_72)
  loc_E3B3B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_17 'E3B418
  'Data Table: 48CC30
  loc_E3B408: Proc_5_0_110649C(&HFF, Me)
  loc_E3B410: Call Proc_82_51_13DDC6C(global_72)
  loc_E3B415: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_18 'E367F8
  'Data Table: 48CC30
  loc_E367E8: Proc_5_0_110649C(&HFF, Me)
  loc_E367F0: Call Proc_82_51_13DDC6C(global_72)
  loc_E367F5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_19 '14DCB0C
  'Data Table: 48CC30
  Dim var_EC As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_CC As Variant
  Dim var_12C As Variant
  Dim var_14C As String
  Dim var_16C As Variant
  Dim var_15C As Variant
  Dim unk_48CC57 As Connection15
  Dim var_A0 As Variant
  Dim var_19C As Variant
  Dim var_11C As Variant
  Dim var_23C As MSHFlexGrid
  Dim var_18C As Variant
  Dim var_1F0 As Variant
  Dim var_240 As MSHFlexGrid
  Dim var_2A4 As Variant
  Dim var_2C4 As Variant
  Dim var_358 As Variant
  Dim var_378 As Variant
  Dim var_3EC As Variant
  Dim var_40C As Variant
  Dim var_490 As Variant
  Dim var_4B0 As Variant
  Dim var_534 As Variant
  Dim var_554 As Variant
  Dim var_5CC As Variant
  Dim var_5EC As Variant
  Dim var_684 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_738 As Variant
  Dim var_7AC As Variant
  Dim var_7CC As Variant
  Dim var_884 As Variant
  Dim var_918 As Variant
  Dim var_A28 As Variant
  Dim var_A48 As Variant
  Dim var_A8 As String
  Dim var_224 As String
  Dim var_13C As Variant
  Dim var_1BC As Variant
  Dim var_210 As Variant
  Dim var_3BC As Variant
  Dim var_59C As Variant
  Dim var_77C As Variant
  Dim var_968 As Variant
  Dim var_AC0 As String
  Dim var_238 As TextBox
  Dim Me As Recordset15
  loc_14DBEB8: On Error Goto loc_14DCAB9
  loc_14DBEBF: var_86 = CByte(0) 'Byte
  loc_14DBECE: Set var_9C = Me.Txt
  loc_14DBED4: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0))
  loc_14DBEFD: If (Proc_6_27_EA565C(var_A0, "Voucher Type") = 0) Then
  loc_14DBF07:   Call Txt_GotFocus()
  loc_14DBF0C:   Exit Sub
  loc_14DBF0D: End If
  loc_14DBF18: Set var_9C = Me.Txt
  loc_14DBF1E: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_A0)
  loc_14DBF26: var_A8 = "App. Date"
  loc_14DBF47: If (Proc_6_27_EA565C(var_A0, var_A8) = 0) Then
  loc_14DBF51:   Call Txt_GotFocus()
  loc_14DBF56:   Exit Sub
  loc_14DBF57: End If
  loc_14DBF5A: Call Proc_82_46_FC8808(var_AA, CInt(1))
  loc_14DBF65: If (var_AA = &HFF) Then
  loc_14DBF68:   Exit Sub
  loc_14DBF69: End If
  loc_14DBF8A: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14DBF94: For var_10C = 1 To var_DC: var_98 = var_10C 'Variant
  loc_14DBF9F:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBFA7:   var_EC = CVar(CLng(3)) 'Long
  loc_14DBFE3:   If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_14DBFEB:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DBFF3:     var_EC = CVar(CLng(1)) 'Long
  loc_14DC02F:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DC037:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC03F:       var_EC = CVar(CLng(3)) 'Long
  loc_14DC086:       MsgBox("Fill S.NO For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DC0A3:       Set var_9C = Me.FGrid
  loc_14DC0B4:       Exit Sub
  loc_14DC0B5:     End If
  loc_14DC0BA:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC0C2:     var_EC = CVar(CLng(4)) 'Long
  loc_14DC0FE:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DC106:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC10E:       var_EC = CVar(CLng(3)) 'Long
  loc_14DC155:       MsgBox("Fill Disp. Name For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DC172:       Set var_9C = Me.FGrid
  loc_14DC183:       Exit Sub
  loc_14DC184:     End If
  loc_14DC189:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC191:     var_EC = CVar(CLng(6)) 'Long
  loc_14DC1CD:     If (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = vbNullString) Then
  loc_14DC1D5:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC1DD:       var_EC = CVar(CLng(3)) 'Long
  loc_14DC224:       MsgBox("Fill Per/Amt For Sundry Name " & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), &H40, "Information", var_19C, var_1BC)
  loc_14DC241:       Set var_9C = Me.FGrid
  loc_14DC252:       Exit Sub
  loc_14DC253:     End If
  loc_14DC253:   End If
  loc_14DC256: Next var_10C 'Variant
  loc_14DC265: unk_48CC57.BeginTrans var_1C0
  loc_14DC26E: var_86 = CByte(1) 'Byte
  loc_14DC293: var_DC = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_14DC29D: For var_1E0 = 1 To var_DC: var_98 = var_1E0 'Variant
  loc_14DC2A8:   var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC2B0:   var_EC = CVar(CLng(2)) 'Long
  loc_14DC2D0:   var_13C = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_14DC2D8:   var_14C = vbNullString
  loc_14DC2E7:   var_16C = CVar(CLng(var_98)) 'Long
  loc_14DC2F8:   Set var_A0 = Me.FGrid
  loc_14DC33D:   If CBool(CVar(CLng(1)) And (Trim(CVar(CStr(var_A0.TextMatrix)))) <> vbNullString)) Then
  loc_14DC345:     var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC34D:     var_EC = CVar(CLng(&HB)) 'Long
  loc_14DC367:     var_12C = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14DC36D:     var_13C = Trim(var_12C)
  loc_14DC389:     If (var_13C = vbNullString) Then
  loc_14DC391:       var_CC = CVar(CLng(var_98)) 'Long
  loc_14DC399:       var_EC = CVar(CLng(&HB)) 'Long
  loc_14DC39E:       var_14C = "+"
  loc_14DC3A8:       Set var_9C = Me.FGrid
  loc_14DC3AE:       LateIdCallSt
  loc_14DC3B9:     End If
  loc_14DC3C7:     Set var_9C = Me.Txt
  loc_14DC3CD:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0, var_22C, var_9C, vbNullString, var_EC, var_CC)
  loc_14DC3D5:     var_EC = var_A0.Tag
  loc_14DC3EB:     Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1), var_238, var_CC, var_16C)
  loc_14DC3FA:     Proc_6_7_F25D88(var_12C, CVar(var_238), (var_13C <> vbNullString))
  loc_14DC404:     var_DC = CVar(CLng(var_98)) 'Long
  loc_14DC40C:     var_11C = CVar(CLng(2)) 'Long
  loc_14DC42C:     var_18C = CVar(CLng(var_98)) 'Long
  loc_14DC434:     var_1F0 = CVar(CLng(1)) 'Long
  loc_14DC43D:     Set var_240 = Me.FGrid
  loc_14DC45E:     var_2A4 = CVar(CLng(var_98)) 'Long
  loc_14DC466:     var_2C4 = CVar(CLng(4)) 'Long
  loc_14DC486:     var_358 = CVar(CLng(var_98)) 'Long
  loc_14DC48E:     var_378 = CVar(CLng(5)) 'Long
  loc_14DC4AE:     var_3EC = CVar(CLng(var_98)) 'Long
  loc_14DC4B6:     var_40C = CVar(CLng(6)) 'Long
  loc_14DC4EA:     var_490 = CVar(CLng(var_98)) 'Long
  loc_14DC4F2:     var_4B0 = CVar(CLng(8)) 'Long
  loc_14DC526:     var_534 = CVar(CLng(var_98)) 'Long
  loc_14DC52E:     var_554 = CVar(CLng(7)) 'Long
  loc_14DC558:     var_5CC = CVar(CLng(var_98)) 'Long
  loc_14DC560:     var_5EC = CVar(CLng(9)) 'Long
  loc_14DC58A:     var_684 = CVar(CLng(var_98)) 'Long
  loc_14DC592:     var_6A4 = CVar(CLng(&HF)) 'Long
  loc_14DC5B2:     var_718 = CVar(CLng(var_98)) 'Long
  loc_14DC5BA:     var_738 = CVar(CLng(&HA)) 'Long
  loc_14DC5DA:     var_7AC = CVar(CLng(var_98)) 'Long
  loc_14DC5E2:     var_7CC = CVar(CLng(&HB)) 'Long
  loc_14DC619:     var_884 = Me.FGrid.TextMatrix)
  loc_14DC641:     var_918 = Me.FGrid.TextMatrix)
  loc_14DC66F:     Proc_6_7_F25D88(var_9E8, Date, var_918, CVar(CLng(&HC)), CVar(CLng(var_98)), var_884, CVar(CLng(&HE)), CVar(CLng(var_98)))
  loc_14DC679:     var_A28 = CVar(CLng(var_98)) 'Long
  loc_14DC681:     var_A48 = CVar(CLng(&H10)) 'Long
  loc_14DC6C4:     var_A8 = "Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName," & "CalcFormula,PerOrAmt,RoundOff,SValue,Limit,"
  loc_14DC6CB:     var_224 = var_A8 & "RevCode,Nature,CalcSign,SysYN,Grp,"
  loc_14DC701:     var_210 = CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC746:     var_3BC = var_210 & "'," & CVar(Val(CStr(var_240.TextMatrix)))) & ",'" & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC77A:     var_59C = var_3BC & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14DC7BF:     var_77C = var_59C & "," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & "," & "'" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_14DC800:     var_968 = var_77C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_884)) & "','" & Left(CVar(CStr(var_918)), 1) & "'," 
  loc_14DC840:     var_AC0 = CStr(var_968 & "'" & CVar(MemVar_1F920C8) & "'," & var_9E8 & ",'A','" & Left(CVar(CStr(Me.FGrid.TextMatrix))), 1) & "')")
  loc_14DC84A:     unk_48CC57.Execute var_AC0, var_AE0, -1
  loc_14DC920:   End If
  loc_14DC923: Next var_1E0 'Variant
  loc_14DC92F: unk_48CC57.CommitTrans
  loc_14DC938: var_86 = CByte(0) 'Byte
  loc_14DC947: Set var_23C = Me.Txt
  loc_14DC94D: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(1))
  loc_14DC960: Set var_9C = Me.Txt
  loc_14DC966: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_A0)
  loc_14DC976: var_12C = CVar(var_A0.Tag) 'String
  loc_14DC98C: Set var_A4 = Me.Txt
  loc_14DC992: Call 0.Method_TopCtrl1_UnknownEvent_190 (CInt(0), var_238, var_224)
  loc_14DC99A: 5 = var_238.Tag
  loc_14DC9A7: var_BC = Space((var_12C - Len(var_224)))
  loc_14DC9AF: var_13C = (var_240 + CVar(var_238))
  loc_14DC9B3: var_CC = "**"
  loc_14DC9B8: var_15C = (CVar(var_224 & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") + var_CC)
  loc_14DC9E3: var_210 = (1 + Format(CVar(var_240), "dd/mm/yyyy"))
  loc_14DCA24: Me.Requery -1
  loc_14DCA51: Me.Find "SearchCode ='" & CStr(var_210) & "'", 0, 1
  loc_14DCA61: Set var_9C = Me.TopCtrl1
  loc_14DCA67: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E(var_CC)
  loc_14DCA7C: If (1 = "Add") Then
  loc_14DCA7F:   Call TopCtrl1_UnknownEvent_11()
  loc_14DCA84:   Exit Sub
  loc_14DCA85: End If
  loc_14DCA9A: var_A8 = "INI"
  loc_14DCAA8: Call Proc_82_52_E787F4(Proc_5_1_100CB50(var_A8, Me), global_72)
  loc_14DCAB3: Call Proc_82_51_13DDC6C(CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14DCAB8: Exit Sub
  loc_14DCAB9: ' Referenced from: 14DBEB8
  loc_14DCAC2: If (CInt(var_86) = 1) Then
  loc_14DCACB:   unk_48CC57.RollbackTrans
  loc_14DCAD0: End If
  loc_14DCAD8: Set var_9C = Err()
  loc_14DCADE: Call 0.Method_arg_2C (var_A8)
  loc_14DCAF7: MsgBox(CVar(var_A8), &H10, var_12C, CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',"), CVar("SearchCode ='" & CStr(var_210) & "'" & "U_Name,U_EntDt,U_AE,AutoManual) " & " Values ('" & var_22C & "',") & var_12C)
  loc_14DCB0A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1A 'EE7F0C
  'Data Table: 48CC30
  loc_EE7E50: On Error Goto loc_EE7F05
  loc_EE7E8A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EE7EB0:   Call Proc_82_52_E787F4(Proc_5_1_100CB50("INI", Me))
  loc_EE7EC3:   Set var_10C = Me.TopCtrl1
  loc_EE7EC9:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(True)
  loc_EE7EDA:   Set var_10C = Me.TopCtrl1
  loc_EE7EE0:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000B(False)
  loc_EE7EF1:   Set var_10C = Me.TopCtrl1
  loc_EE7EF7:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000A(False)
  loc_EE7EFF:   Call Proc_82_51_13DDC6C(global_72)
  loc_EE7F04: End If
  loc_EE7F04: Exit Sub
  loc_EE7F05: ' Referenced from: EE7E50
  loc_EE7F05: Proc_6_60_E62BC4()
  loc_EE7F0A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1B 'EB2814
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_B8 As String
  loc_EB2784: On Error Goto loc_EB280E
  loc_EB279E: If (Me.RecordCount <= 0) Then
  loc_EB27A7:   var_B8 = "Information"
  loc_EB27C2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EB27D2:   Exit Sub
  loc_EB27D3: End If
  loc_EB27D6: MemVar_1F920E4 = "Select (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode,VT.Description,Convert(Varchar(11),SP.AppDate,103) As AppDate,SP.SNo,SM.Name As SundryName,SP.DispName,SP.CalcFormula,RM.Name As Revenue From (((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Order by SP.AppDate,VT.Description"
  loc_EB27E0: MemVar_1F92120 = Me
  loc_EB27ED: Proc_6_126_F1BCC0("2000,1000,1000,2000,2000,2000,2000")
  loc_EB2808: Call 0.Method_arg_2B0 (1)
  loc_EB280D: Exit Sub
  loc_EB280E: ' Referenced from: EB2784
  loc_EB280E: Proc_6_60_E62BC4(var_B8)
  loc_EB2813: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_1D 'E415C8
  'Data Table: 48CC30
  Dim Me As Recordset15
  loc_E4159F: Me.Requery -1
  loc_E415AF: Me.Requery -1
  loc_E415BF: Me.Requery -1
  loc_E415C4: Exit Sub
End Sub

Private Sub Form_Load() '111BE40
  'Data Table: 48CC30
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_88 As MSHFlexGrid
  loc_111BAE0: On Error Goto loc_111BE39
  loc_111BAFB: Proc_6_23_DFBA28(Me, 7590)
  loc_111BB0D: Set var_88 = Me.TopCtrl1
  loc_111BB13: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_111BB21: Call 0.Method_arg_50 (var_B0)
  loc_111BB31: Set var_88 = Me.TopCtrl1
  loc_111BB37: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000F(CVar(var_B0))
  loc_111BB40: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_0()
  loc_111BB59: Set global_76 = New 
  loc_111BB6B: Me.TopCtrl1.CursorLocation = 3
  loc_111BB93: Me.Open "Select ShortName as Code,Name,Code as DCOde From Depart Where ShortName='PURC' Order by Name", CVar(MemVar_1F92044), 3
  loc_111BBA1: CVarUnk
  loc_111BBA6: VerifyVarObj
  loc_111BBAC: Set var_88 = Me.DGVType
  loc_111BBB2: LateIdStAd
  loc_111BBDC: Me.DGVType.CursorLocation = 3
  loc_111BC04: Me.Open "Select Code,Name,Nature,SysYN From SundryMast Order By Name", CVar(MemVar_1F92044), 3
  loc_111BC12: CVarUnk
  loc_111BC17: VerifyVarObj
  loc_111BC1D: Set var_88 = Me.DGSundry
  loc_111BC23: LateIdStAd
  loc_111BC4D: Me.DGSundry.CursorLocation = 3
  loc_111BC75: Me.Open "Select Code,Name,DeskCode,Type From RevMast Where FlagType Is Null And FieldType<>'P' Order By Name", CVar(MemVar_1F92044), 3
  loc_111BC83: CVarUnk
  loc_111BC88: VerifyVarObj
  loc_111BC8E: Set var_88 = Me.DGRevenue
  loc_111BC94: LateIdStAd
  loc_111BCBE: Me.DGRevenue.CursorLocation = 3
  loc_111BCDA: var_9C = "Select DISTINCT (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP Where V_Type in (Select ShortName From Depart Where ShortName='PURC') Order By (SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103))"
  loc_111BCE6: Me.Open "Select Code,Name,DeskCode,Type From RevMast Where FlagType Is Null And FieldType<>'P' Order By Name", CVar(MemVar_1F92044), 3
  loc_111BD0E: Call Proc_82_52_E787F4(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me, New, 1), -1, Me, New)
  loc_111BD21: Set var_88 = Me.TopCtrl1
  loc_111BD27: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000C(True)
  loc_111BD38: Set var_88 = Me.TopCtrl1
  loc_111BD3E: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000B(False)
  loc_111BD55: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000A(False)
  loc_111BD5D: Call Proc_82_45_12DC314(1, -1)
  loc_111BD62: Call Proc_82_51_13DDC6C(Me.TopCtrl1)
  loc_111BD6D: Call 0.Method_Me0 (var_E4)
  loc_111BD79: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111BD82: Set var_88 = Me.TopCtrl1
  loc_111BD88: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010005(False)
  loc_111BDA2: Me.FGrid.Left = CVar(CDbl(0))
  loc_111BDB0: Call 0.Method_Me0 (var_E4)
  loc_111BDBC: var_9C = CVar((var_E4 - CDbl(&H7D))) 'Single
  loc_111BDCB: Me.FGrid.Width = CVar(CDbl(0))
  loc_111BDE6: Me.FGrid.Top = CVar(CDbl(1340))
  loc_111BDF8: var_C0 = Me.FGrid.Top
  loc_111BE07: Call 0.Method_Me8 (var_E4, var_C0)
  loc_111BE1A: var_9C = CVar(((var_E4 - CDbl(400)) - CDbl(var_C0))) 'Single
  loc_111BE29: Me.FGrid.Height = CVar(CDbl(1340))
  loc_111BE38: Exit Sub
  loc_111BE39: ' Referenced from: 111BAE0
  loc_111BE39: Proc_6_60_E62BC4(global_76)
  loc_111BE3E: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6681C
  'Data Table: 48CC30
  loc_E667D3: Set global_76 = Nothing
  loc_E667E5: Set global_72 = Nothing
  loc_E667F7: Set global_80 = Nothing
  loc_E66809: Set global_84 = Nothing
  loc_E66818: Exit Sub
  loc_E66819: Set var_88 = 0
End Sub

Private Sub Form_Activate() 'E49408
  'Data Table: 48CC30
  loc_E493D8: On Error Goto loc_E49402
  loc_E493DF: Set var_88 = Me.TopCtrl1
  loc_E493E5: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030010()
  loc_E493FA: If (CLng(CInt()) = &H2D) Then
  loc_E493FD:   Call TopCtrl1_UnknownEvent_1D()
  loc_E49402:   ' Referenced from: E493D8
  loc_E49402: End If
  loc_E49402: Proc_6_60_E62BC4()
  loc_E49407: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E268DC
  'Data Table: 48CC30
  loc_E268C1: If (MasterFormExit = &HFF) Then
  loc_E268D1:   Me.Global.Unload Me
  loc_E268D9: End If
  loc_E268D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2766C
  'Data Table: 48CC30
  loc_E27644: On Error Goto loc_E27664
  loc_E2765B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27663: Exit Sub
  loc_E27664: ' Referenced from: E27644
  loc_E27664: Proc_6_60_E62BC4(Shift)
  loc_E27669: Exit Sub
End Sub

Private Sub DGSundry_UnknownEvent_9 '102A220
  'Data Table: 48CC30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  loc_1029FFB: Me.DGSundry.Visible = False
  loc_102A01A: If (Me.RecordCount > 0) Then
  loc_102A030:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102A038:   var_E4 = CVar(CLng(2)) 'Long
  loc_102A06B:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_102A073:   Set var_128 = Me.FGrid
  loc_102A079:   LateIdCallSt
  loc_102A0A8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102A0B0:   var_E4 = CVar(CLng(3)) 'Long
  loc_102A0E3:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_102A0F1:   LateIdCallSt
  loc_102A158:   var_114 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_114, CVar(CLng(&HA)))) 'String
  loc_102A160:   Set var_128 = Me.FGrid
  loc_102A166:   LateIdCallSt
  loc_102A193:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_102A19B:   var_E4 = CVar(CLng(&HE)) 'Long
  loc_102A1BD:   var_B0 = Me.Fields.Item("SysYN")
  loc_102A1CE:   var_114 = CVar(CStr(var_B0.Value)) 'String
  loc_102A1D6:   Set var_128 = Me.FGrid
  loc_102A1DC:   LateIdCallSt
  loc_102A1F8: End If
  loc_102A203: Set var_A8 = Me.TxtGrid
  loc_102A209: Call 0.Method_DGSundry_UnknownEvent_90 (CInt(3), var_B0, var_128, var_114, var_E4, var_A4, var_128)
  loc_102A211: var_B0.SetFocus
  loc_102A21D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FBA534
  'Data Table: 48CC30
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FBA3A2: Set var_88 = Me.Txt
  loc_FBA3A8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FBA3B6: Proc_6_74_E226B0(var_8C)
  loc_FBA3C2: Call Proc_82_53_EB9F3C(var_8C)
  loc_FBA3CA: var_92 = Index
  loc_FBA3D5: If (var_92 = CInt(0)) Then
  loc_FBA426:   Set var_88 = Me.Txt
  loc_FBA42C:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FBA434:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FBA44C:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FBA44F:     Exit Sub
  loc_FBA450:   End If
  loc_FBA45D:   Set var_88 = Me.Txt
  loc_FBA463:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FBA46B:   var_A0 = var_8C.Text
  loc_FBA473:   var_D4 = CVar(var_A0) 'String
  loc_FBA4B8:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FBA4C1:     Me.MoveFirst
  loc_FBA4E6:     Set var_88 = Me.Txt
  loc_FBA4EC:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name=")
  loc_FBA4F4:     0 = var_8C.Text
  loc_FBA502:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0))
  loc_FBA518:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_FBA530:   End If
  loc_FBA530: End If
  loc_FBA530: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'F6F880
  'Data Table: 48CC30
  Dim var_98 As DataGrid
  loc_F6F75E: If (CLng(Shift) = &H1B) Then
  loc_F6F761:   Call Proc_82_53_EB9F3C()
  loc_F6F766:   Exit Sub
  loc_F6F767: End If
  loc_F6F775: If (KeyCode = CInt(0)) Then
  loc_F6F790:   Set var_9C = Nothing
  loc_F6F79B:   Set var_98 = Nothing
  loc_F6F7C9:   Proc_6_69_134A198(Me.DGVType, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_F6F7DD: End If
  loc_F6F80E: Set var_98 = Me.DGRevenue
  loc_F6F833: If (((CBool(Me.DGVType.Visible) = 0) And (CBool(Me.DGSundry.Visible) = 0)) And (CBool(var_98.Visible) = 0)) Then
  loc_F6F84B:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_F6F854:     Proc_6_75_E527CC(Shift, arg_14, 1, var_98)
  loc_F6F859:   End If
  loc_F6F86E:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_F6F877:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_F6F87C:   End If
  loc_F6F87C: End If
  loc_F6F87C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07780
  'Data Table: 48CC30
  Dim var_86 As Integer
  loc_E07773: Proc_6_58_E054C0(arg_10)
  loc_E0777B: var_86 = KeyAscii
  loc_E0777E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EA4C60
  'Data Table: 48CC30
  loc_EA4BF2: If (KeyCode = CInt(0)) Then
  loc_EA4C11:   If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EA4C25:     var_A4 = "Name"
  loc_EA4C49:     Proc_6_68_129FB34(Me.DGVType, Me.Txt, KeyCode, global_76)
  loc_EA4C5C:   End If
  loc_EA4C5C: End If
  loc_EA4C5C: Exit Sub
  loc_EA4C5D: StAryRecCopy
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4994C
  'Data Table: 48CC30
  loc_E4992A: Set var_88 = Me.Txt
  loc_E49930: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4993E: Proc_6_73_E22704(var_8C)
  loc_E4994A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '110C828
  'Data Table: 48CC30
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_94 As Label
  Dim var_C8 As TextBox
  loc_110C4E3: var_86 = Cancel
  loc_110C4EE: If (var_86 = CInt(0)) Then
  loc_110C4FC:   Set var_8C = Me.Txt
  loc_110C502:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110C50A:   var_98 = "Voucher Type"
  loc_110C52B:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_110C539:     Set var_8C = Me.Txt
  loc_110C53F:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_110C547:     var_90.SetFocus
  loc_110C555:     arg_10 = &HFF
  loc_110C558:     Exit Sub
  loc_110C559:   End If
  loc_110C5A7:   Set var_8C = Me.Txt
  loc_110C5AD:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_110C5B5:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_110C5CD:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_110C5DD:     Set var_8C = Me.Txt
  loc_110C5E3:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110C5EB:     var_90.Text = vbNullString
  loc_110C604:     Set var_8C = Me.Txt
  loc_110C60A:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110C612:     var_90.Tag = vbNullString
  loc_110C62B:     Me.LblDepart.Caption = vbNullString
  loc_110C636:   Else
  loc_110C671:     Set var_94 = Me.Txt
  loc_110C677:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110C67F:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_110C6D0:     Set var_94 = Me.Txt
  loc_110C6D6:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_110C6DE:     var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_110C70E:     var_90 = Me.Fields.Item("Name")
  loc_110C72C:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_90))
  loc_110C73E:     Call Proc_82_55_12CC238(var_86)
  loc_110C743:   End If
  loc_110C746: Else
  loc_110C74E:   If (var_86 = CInt(1)) Then
  loc_110C75C:     Set var_8C = Me.Txt
  loc_110C762:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_110C78B:     If (Proc_6_27_EA565C(var_90, "App. Date") = 0) Then
  loc_110C799:       Set var_8C = Me.Txt
  loc_110C79F:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_110C7A7:       var_90.SetFocus
  loc_110C7B5:       arg_10 = &HFF
  loc_110C7B8:       Exit Sub
  loc_110C7B9:     End If
  loc_110C7C3:     Set var_8C = Me.Txt
  loc_110C7C9:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_110C7E9:     Set var_B4 = Me.Txt
  loc_110C7EF:     Call 0.Method_Txt_Validate0 (Cancel, var_C8)
  loc_110C7F7:     var_C8.Text = Proc_6_33_1512840(var_90, arg_10)
  loc_110C81C:     Me.FGrid.Col = CVar(CLng(1))
  loc_110C824:   End If
  loc_110C824: End If
  loc_110C824: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '11E3E38
  'Data Table: 48CC30
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  Dim Me As Recordset15
  loc_11E39C0: Call Proc_82_53_EB9F3C()
  loc_11E39D8: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_11E39F3: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E39FC: Set var_BC = Me.FGrid
  loc_11E3A32: Set var_104 = Me.TxtGrid
  loc_11E3A38: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_11E3A40: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_11E3A71: var_110 = CLng(Me.FGrid.Col)
  loc_11E3A81: If (var_110 = CLng(3)) Then
  loc_11E3A93:   Set var_A8 = Me.TxtGrid
  loc_11E3A99:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3AA1:   var_BC.MaxLength = var_110
  loc_11E3AEE:   If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3AF1:     Exit Sub
  loc_11E3AF2:   End If
  loc_11E3B05:   var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3B0D:   var_DC = CVar(CLng(3)) 'Long
  loc_11E3B40:   If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E3B49:     Me.MoveFirst
  loc_11E3B61:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3B69:     var_DC = CVar(CLng(2)) 'Long
  loc_11E3B72:     Set var_BC = Me.FGrid
  loc_11E3B89:     Proc_6_17_EAA2B0(var_128, CVar(CStr(var_BC.TextMatrix))), var_DC, var_94)
  loc_11E3BB2:     Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E3BE2:     If (Me.EOF = &HFF) Then
  loc_11E3BEB:       Me.MoveFirst
  loc_11E3BF0:     End If
  loc_11E3BF0:   End If
  loc_11E3BF3: Else
  loc_11E3BFA:   If Not (var_110 = CLng(7)) Then
  loc_11E3C04:     If (var_110 = CLng(9)) Then
  loc_11E3C07:     End If
  loc_11E3C16:     Set var_A8 = Me.TxtGrid
  loc_11E3C1C:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB, var_158)
  loc_11E3C24:     var_BC.MaxLength = var_DC
  loc_11E3C39:     If (global_70 = 0) Then
  loc_11E3C44:       var_10C = "{Home}+{End}"
  loc_11E3C4A:       Proc_303_0_FB9B68(CStr("Code=" & var_128), 0)
  loc_11E3C52:     End If
  loc_11E3C55:   Else
  loc_11E3C5C:     If (var_110 = CLng(4)) Then
  loc_11E3C6E:       Set var_A8 = Me.TxtGrid
  loc_11E3C74:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &H14)
  loc_11E3C7C:       var_BC.MaxLength = var_94
  loc_11E3C8B:     Else
  loc_11E3C92:       If (var_110 = CLng(5)) Then
  loc_11E3CA4:         Set var_A8 = Me.TxtGrid
  loc_11E3CAA:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3CB2:         var_BC.MaxLength = &H32
  loc_11E3CC1:       Else
  loc_11E3CC8:         If (var_110 = CLng(&HD)) Then
  loc_11E3CDA:           Set var_A8 = Me.TxtGrid
  loc_11E3CE0:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_11E3CE8:           var_BC.MaxLength = &H32
  loc_11E3D35:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_11E3D38:             Exit Sub
  loc_11E3D39:           End If
  loc_11E3D4C:           var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E3D54:           var_DC = CVar(CLng(&HD)) 'Long
  loc_11E3D87:           If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_11E3D90:             Me.MoveFirst
  loc_11E3DD0:             Proc_6_17_EAA2B0(var_128, CVar(CStr(Me.FGrid.TextMatrix))), CVar(CLng(&HF)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3DF9:             Me.Find CStr("Code=" & var_128), 0, 1
  loc_11E3E29:             If (Me.EOF = &HFF) Then
  loc_11E3E32:               Me.MoveFirst
  loc_11E3E37:             End If
  loc_11E3E37:           End If
  loc_11E3E37:         End If
  loc_11E3E37:       End If
  loc_11E3E37:     End If
  loc_11E3E37:   End If
  loc_11E3E37: End If
  loc_11E3E37: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '13B9A0C
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  Dim var_C8 As Variant
  Dim var_94 As DataGrid
  loc_13B909C: On Error Goto loc_13B9A06
  loc_13B90A9: If (CLng(Shift) = &H1B) Then
  loc_13B90B9:   Set var_88 = Me.TxtGrid
  loc_13B90BF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B90D9:   Set var_94 = Me.TxtGrid
  loc_13B90DF:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_13B90E7:   var_98.Text = var_8C.Tag
  loc_13B9103:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_13B9108:   Call Proc_82_53_EB9F3C(arg_14)
  loc_13B9111:   Set var_88 = Me.FGrid
  loc_13B912E:   Set var_88 = Me.TxtGrid
  loc_13B9134:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_13B913C:   var_8C.Visible = False
  loc_13B9148:   Exit Sub
  loc_13B9149: End If
  loc_13B915C: var_AC = CLng(Me.FGrid.Col)
  loc_13B916C: If (var_AC = CLng(1)) Then
  loc_13B9179:   If (CLng(Shift) = &HD) Then
  loc_13B9182:     Call Proc_82_49_150700C(KeyCode, var_AE)
  loc_13B918D:     If (var_AE = &HFF) Then
  loc_13B919B:       Set var_98 = Me.TxtGrid
  loc_13B91C4:       Set var_8C = var_98
  loc_13B91D3:       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF)
  loc_13B91E3:     End If
  loc_13B91E3:   End If
  loc_13B91E6: Else
  loc_13B91ED:   If (var_AC = CLng(3)) Then
  loc_13B91FC:     Set var_88 = Me.TxtGrid
  loc_13B9202:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0)
  loc_13B920A:     3 = var_8C.Left
  loc_13B9221:     Me.DGSundry.Left = CVar(var_B8)
  loc_13B923B:     Set var_94 = Me.TxtGrid
  loc_13B9241:     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B9249:     0 = var_98.Height
  loc_13B925A:     Set var_88 = Me.TxtGrid
  loc_13B9260:     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B9268:     var_AC = var_8C.Top
  loc_13B9274:     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B9283:     Me.DGSundry.Top = CVar(var_B8)
  loc_13B92AD:     Set var_98 = Nothing
  loc_13B92E6:     Proc_6_69_134A198(Me.DGSundry, Me.TxtGrid, KeyCode, global_80, Shift, &HFF)
  loc_13B9304:     If (CLng(Shift) = &HD) Then
  loc_13B930D:       Call Proc_82_49_150700C(KeyCode, var_AE, 1, Nothing)
  loc_13B9318:       If (var_AE = &HFF) Then
  loc_13B935E:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B936E:       End If
  loc_13B936E:     End If
  loc_13B9371:   Else
  loc_13B9378:     If (var_AC = CLng(4)) Then
  loc_13B93BB:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B93C4:         Call Proc_82_49_150700C(KeyCode, var_AE, 0, 4)
  loc_13B93CF:         If (var_AE = &HFF) Then
  loc_13B9415:           Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9425:         End If
  loc_13B9425:       End If
  loc_13B9428:     Else
  loc_13B942F:       If (var_AC = CLng(5)) Then
  loc_13B9472:         If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B947B:           Call Proc_82_49_150700C(KeyCode, var_AE, 5, 0)
  loc_13B9486:           If (var_AE = &HFF) Then
  loc_13B94CC:             Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B94DC:           End If
  loc_13B94DC:         End If
  loc_13B94DF:       Else
  loc_13B94E6:         If (var_AC = CLng(6)) Then
  loc_13B9529:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9532:             Call Proc_82_49_150700C(KeyCode, var_AE, 6, 0)
  loc_13B953D:             If (var_AE = &HFF) Then
  loc_13B9583:               Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9593:             End If
  loc_13B9593:           End If
  loc_13B9596:         Else
  loc_13B959D:           If (var_AC = CLng(7)) Then
  loc_13B95E0:             If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B95E9:               Call Proc_82_49_150700C(KeyCode, var_AE, 7, 0)
  loc_13B95F4:               If (var_AE = &HFF) Then
  loc_13B963A:                 Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B964A:               End If
  loc_13B964A:             End If
  loc_13B964D:           Else
  loc_13B9654:             If Not (var_AC = CLng(8)) Then
  loc_13B965E:               If (var_AC = CLng(&H10)) Then
  loc_13B9661:               End If
  loc_13B96A1:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B96AA:                 Call Proc_82_49_150700C(KeyCode, var_AE, &HC, 0)
  loc_13B96B5:                 If (var_AE = &HFF) Then
  loc_13B96FB:                   Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B970B:                 End If
  loc_13B970B:               End If
  loc_13B970E:             Else
  loc_13B9715:               If (var_AC = CLng(9)) Then
  loc_13B9758:                 If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9761:                   Call Proc_82_49_150700C(KeyCode, var_AE, 9, 0)
  loc_13B976C:                   If (var_AE = &HFF) Then
  loc_13B97B2:                     Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF, 0)
  loc_13B97C2:                   End If
  loc_13B97C2:                 End If
  loc_13B97C5:               Else
  loc_13B97CC:                 If (var_AC = CLng(&HC)) Then
  loc_13B980F:                   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_13B9818:                     Call Proc_82_49_150700C(KeyCode, var_AE, &HC, 0)
  loc_13B9823:                     If (var_AE = &HFF) Then
  loc_13B9831:                       Set var_98 = Me.TxtGrid
  loc_13B985A:                       Set var_8C = var_98
  loc_13B9869:                       Proc_6_62_1253BC4(Me.FGrid, var_8C, KeyCode, Shift, global_70, &HF, 0)
  loc_13B9879:                     End If
  loc_13B9879:                   End If
  loc_13B987C:                 Else
  loc_13B9883:                   If (var_AC = CLng(&HD)) Then
  loc_13B9892:                     Set var_88 = Me.TxtGrid
  loc_13B9898:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8, 0, 0)
  loc_13B98A0:                     0 = var_8C.Left
  loc_13B98B7:                     Me.DGRevenue.Left = CVar(var_B8)
  loc_13B98D1:                     Set var_94 = Me.TxtGrid
  loc_13B98D7:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_98, var_DC)
  loc_13B98DF:                     var_98 = var_98.Height
  loc_13B98F0:                     Set var_88 = Me.TxtGrid
  loc_13B98F6:                     Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, var_B8)
  loc_13B98FE:                     0 = var_8C.Top
  loc_13B990A:                     var_C8 = CVar((var_B8 + var_DC)) 'Single
  loc_13B9919:                     Me.DGRevenue.Top = CVar(var_B8)
  loc_13B9943:                     Set var_98 = Nothing
  loc_13B997C:                     Proc_6_69_134A198(Me.DGRevenue, Me.TxtGrid, KeyCode, global_84, Shift, &HFF)
  loc_13B999A:                     If (CLng(Shift) = &HD) Then
  loc_13B99A3:                       Call Proc_82_49_150700C(KeyCode, var_AE, 1, Nothing)
  loc_13B99AE:                       If (var_AE = &HFF) Then
  loc_13B99F6:                         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, &HF)
  loc_13B9A06:                       End If
  loc_13B9A06:                     End If
  loc_13B9A06:                   End If
  loc_13B9A06:                 End If
  loc_13B9A06:               End If
  loc_13B9A06:             End If
  loc_13B9A06:           End If
  loc_13B9A06:         End If
  loc_13B9A06:       End If
  loc_13B9A06:       ' Referenced from: 13B909C
  loc_13B9A06:     End If
  loc_13B9A06:   End If
  loc_13B9A06: End If
  loc_13B9A06: Proc_6_60_E62BC4(CByte(1), 0, 0)
  loc_13B9A0B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '116D7AC
  'Data Table: 48CC30
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim var_B4 As Integer
  Dim arg_10 As Integer
  Dim var_AC As TextBox
  loc_116D3E3: Proc_6_58_E054C0(arg_10)
  loc_116D3F4: If (KeyAscii = 0) Then
  loc_116D40A:   var_A0 = CLng(Me.FGrid.Col)
  loc_116D41A:   If (var_A0 = CLng(3)) Then
  loc_116D439:     If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_116D440:       Set var_AC = Me.TxtGrid
  loc_116D44B:       var_A4 = "Name"
  loc_116D466:       Proc_6_89_146F1AC(var_AC, KeyAscii, global_80, arg_10)
  loc_116D475:     End If
  loc_116D478:   Else
  loc_116D47F:     If Not (var_A0 = CLng(9)) Then
  loc_116D489:       If (var_A0 = CLng(7)) Then
  loc_116D48C:       End If
  loc_116D496:       Set var_8C = Me.TxtGrid
  loc_116D49C:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_116D4B7:       Proc_6_42_129A86C(var_AC, arg_10, 8, 2)
  loc_116D4C6:     Else
  loc_116D4CD:       If (var_A0 = CLng(5)) Then
  loc_116D4D3:         var_B4 = arg_10
  loc_116D4DF:         If Not (&H39 > var_B4 > &H31) Then
  loc_116D4E8:           If Not (var_B4 = &H2B) Then
  loc_116D4F1:             If Not (var_B4 = &H2D) Then
  loc_116D4FA:               If Not (var_B4 = 8) Then
  loc_116D503:                 If (var_B4 = &H30) Then
  loc_116D506:                 End If
  loc_116D506:               End If
  loc_116D506:             End If
  loc_116D506:           End If
  loc_116D509:         Else
  loc_116D50B:           arg_10 = 0
  loc_116D50E:         End If
  loc_116D511:       Else
  loc_116D518:         If (var_A0 = CLng(6)) Then
  loc_116D528:           If ((arg_10 = &H50) Or (arg_10 = &H70)) Then
  loc_116D538:             Set var_8C = Me.TxtGrid
  loc_116D53E:             Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Per", arg_10)
  loc_116D546:             var_AC.Text = var_B4
  loc_116D554:             arg_10 = 0
  loc_116D55A:           Else
  loc_116D567:             If ((arg_10 = &H41) Or (arg_10 = &H5A)) Then
  loc_116D577:               Set var_8C = Me.TxtGrid
  loc_116D57D:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Amt", arg_10)
  loc_116D585:               var_AC.Text = 0
  loc_116D593:               arg_10 = 0
  loc_116D599:             Else
  loc_116D5A6:               Set var_8C = Me.TxtGrid
  loc_116D5AC:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116D5B4:               var_AC.Text = arg_10
  loc_116D5C2:               arg_10 = 0
  loc_116D5C5:             End If
  loc_116D5C5:           End If
  loc_116D5C8:         Else
  loc_116D5CF:           If Not (var_A0 = CLng(8)) Then
  loc_116D5D9:             If (var_A0 = CLng(&HC)) Then
  loc_116D5DC:             End If
  loc_116D5E9:             If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_116D5F9:               Set var_8C = Me.TxtGrid
  loc_116D5FF:               Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "No")
  loc_116D607:               var_AC.Text = arg_10
  loc_116D615:               arg_10 = 0
  loc_116D61B:             Else
  loc_116D628:               If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_116D638:                 Set var_8C = Me.TxtGrid
  loc_116D63E:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_116D646:                 var_AC.Text = arg_10
  loc_116D654:                 arg_10 = 0
  loc_116D65A:               Else
  loc_116D667:                 Set var_8C = Me.TxtGrid
  loc_116D66D:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, vbNullString)
  loc_116D675:                 var_AC.Text = arg_10
  loc_116D683:                 arg_10 = 0
  loc_116D686:               End If
  loc_116D686:             End If
  loc_116D689:           Else
  loc_116D690:             If (var_A0 = CLng(&H10)) Then
  loc_116D6BC:               If (Ucase(Chr(CLng(arg_10))) = "A") Then
  loc_116D6CC:                 Set var_8C = Me.TxtGrid
  loc_116D6D2:                 Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Auto")
  loc_116D6DA:                 var_AC.Text = arg_10
  loc_116D6E8:                 arg_10 = 0
  loc_116D6EE:               Else
  loc_116D717:                 If (Ucase(Chr(CLng(arg_10))) = "M") Then
  loc_116D727:                   Set var_8C = Me.TxtGrid
  loc_116D72D:                   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_AC, "Manual")
  loc_116D735:                   var_AC.Text = arg_10
  loc_116D743:                   arg_10 = 0
  loc_116D746:                 End If
  loc_116D746:               End If
  loc_116D749:             Else
  loc_116D750:               If (var_A0 = CLng(&HD)) Then
  loc_116D76F:                 If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_116D79C:                   Proc_6_89_146F1AC(Me.TxtGrid, KeyAscii, global_84, arg_10, "Name")
  loc_116D7AB:                 End If
  loc_116D7AB:               End If
  loc_116D7AB:             End If
  loc_116D7AB:           End If
  loc_116D7AB:         End If
  loc_116D7AB:       End If
  loc_116D7AB:     End If
  loc_116D7AB:   End If
  loc_116D7AB: End If
  loc_116D7AB: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'FB95C8
  'Data Table: 48CC30
  Dim var_9C As Long
  Dim var_AA As Integer
  Dim Shift As Integer
  loc_FB9418: On Error Goto loc_FB95C1
  loc_FB942E: var_9C = CLng(Me.FGrid.Col)
  loc_FB943E: If (var_9C = CLng(3)) Then
  loc_FB9464:   If ((Shift <> &HD) And (CBool(Me.DGSundry.Visible) = 0)) Then
  loc_FB9472:     Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9486:     var_A4 = "Name"
  loc_FB94A1:     Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_80, Shift)
  loc_FB94B0:   End If
  loc_FB94B3: Else
  loc_FB94BA:   If Not (var_9C = CLng(6)) Then
  loc_FB94C4:     If Not (var_9C = CLng(8)) Then
  loc_FB94CE:       If Not (var_9C = CLng(&HC)) Then
  loc_FB94D8:         If Not (var_9C = CLng(5)) Then
  loc_FB94E2:           If (var_9C = CLng(&H10)) Then
  loc_FB94E5:           End If
  loc_FB94E5:         End If
  loc_FB94E5:       End If
  loc_FB94E5:     End If
  loc_FB94EB:     If (Shift <> &HD) Then
  loc_FB94F4:       Call TxtGrid_KeyPress(KeyCode)
  loc_FB94F9:     End If
  loc_FB94FC:   Else
  loc_FB9503:     If (var_9C = CLng(&HD)) Then
  loc_FB9529:       If ((Shift <> &HD) And (CBool(Me.DGRevenue.Visible) = 0)) Then
  loc_FB9537:         Call TxtGrid_KeyDown(KeyCode, Shift)
  loc_FB9566:         Proc_6_89_146F1AC(Me.TxtGrid, KeyCode, global_84, Shift, "Name", &HFF)
  loc_FB9575:       End If
  loc_FB9578:     Else
  loc_FB957F:       If (var_9C = CLng(5)) Then
  loc_FB9585:         var_AA = Shift
  loc_FB9591:         If Not (&H39 > var_AA > &H31) Then
  loc_FB959A:           If Not (var_AA = &H2B) Then
  loc_FB95A3:             If Not (var_AA = &H2D) Then
  loc_FB95AC:               If Not (var_AA = 8) Then
  loc_FB95B5:                 If (var_AA = &H30) Then
  loc_FB95B8:                 End If
  loc_FB95B8:               End If
  loc_FB95B8:             End If
  loc_FB95B8:           End If
  loc_FB95BB:         Else
  loc_FB95BD:           Shift = 0
  loc_FB95C0:         End If
  loc_FB95C0:       End If
  loc_FB95C0:     End If
  loc_FB95C0:   End If
  loc_FB95C0: End If
  loc_FB95C0: Exit Sub
  loc_FB95C1: ' Referenced from: FB9418
  loc_FB95C1: Proc_6_60_E62BC4(Shift, var_AA, 0, Shift)
  loc_FB95C6: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20B74
  'Data Table: 48CC30
  Dim arg_10 As Integer
  loc_E20B5C: If (Cancel = 0) Then
  loc_E20B65:   Call Proc_82_49_150700C(Cancel, var_88)
  loc_E20B6E:   arg_10 = Not(var_88)
  loc_E20B71: End If
  loc_E20B71: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 '103C7E4
  'Data Table: 48CC30
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_E4 As Variant
  Dim var_B0 As Variant
  Dim var_114 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As String
  loc_103C5A3: Me.DGRevenue.Visible = False
  loc_103C5C2: If (Me.RecordCount > 0) Then
  loc_103C5D8:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C5E0:   var_E4 = CVar(CLng(&HF)) 'Long
  loc_103C613:   var_114 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_103C61B:   Set var_128 = Me.FGrid
  loc_103C621:   LateIdCallSt
  loc_103C650:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C658:   var_E4 = CVar(CLng(&HD)) 'Long
  loc_103C68B:   var_114 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_103C693:   Set var_128 = Me.FGrid
  loc_103C699:   LateIdCallSt
  loc_103C6F4:   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_103C70A:     var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C712:     var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C717:     var_F4 = "+"
  loc_103C721:     Set var_B0 = Me.FGrid
  loc_103C727:     LateIdCallSt
  loc_103C73C:   Else
  loc_103C77B:     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_103C791:       var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_103C799:       var_D4 = CVar(CLng(&HB)) 'Long
  loc_103C79E:       var_F4 = "-"
  loc_103C7A8:       Set var_B0 = Me.FGrid
  loc_103C7AE:       LateIdCallSt
  loc_103C7C0:     End If
  loc_103C7C0:   End If
  loc_103C7C0: End If
  loc_103C7C9: Set var_A8 = Me.TxtGrid
  loc_103C7CF: Call 0.Method_DGRevenue_UnknownEvent_90 (0, var_B0, var_B0, var_F4, var_D4, var_94, var_B0)
  loc_103C7D7: var_B0.SetFocus
  loc_103C7E3: Exit Sub
End Sub

Private Sub DGVType_UnknownEvent_9 'F3DC44
  'Data Table: 48CC30
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3DB3B: Me.DGVType.Visible = False
  loc_F3DB5A: If (Me.RecordCount > 0) Then
  loc_F3DB99:   Set var_B4 = Me.Txt
  loc_F3DB9F:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DBA7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3DBDA:   var_B0 = Me.Fields.Item("Code")
  loc_F3DBF9:   Set var_B4 = Me.Txt
  loc_F3DBFF:   Call 0.Method_DGVType_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3DC07:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3DC1D: End If
  loc_F3DC28: Set var_A8 = Me.Txt
  loc_F3DC2E: Call 0.Method_DGVType_UnknownEvent_90 (CInt(0))
  loc_F3DC36: var_B0.SetFocus
  loc_F3DC42: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E84718
  'Data Table: 48CC30
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E846BB: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E846CE: Set var_A8 = Me.TxtGrid
  loc_E846D4: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E846DC: var_AC.Visible = False
  loc_E846F6: Set var_A8 = Me.TxtGrid
  loc_E846FC: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E84704: var_AC.MaxLength = 0
  loc_E84710: Call Proc_82_53_EB9F3C()
  loc_E84715: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E65A48
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E65A04: Set var_88 = Me.TxtGrid
  loc_E65A0A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E65A24: If (var_8C.Visible = 0) Then
  loc_E65A3D:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E65A45: End If
  loc_E65A45: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DD80
  'Data Table: 48CC30
  loc_E1DD77: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DD7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFE1B4
  'Data Table: 48CC30
  loc_DFE1AC: Call Proc_82_48_E364F0()
  loc_DFE1B1: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1236C84
  'Data Table: 48CC30
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_E0 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_E4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_DC As String
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_123675C: Set var_88 = Me.TopCtrl1
  loc_1236762: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_12367B2: If CBool(( = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_12367BB:   Call Form_KeyDown(Cancel, arg_10)
  loc_12367C0: End If
  loc_12367C4: Set var_88 = Me.TopCtrl1
  loc_12367CA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_12367DF: If ( = "Browse") Then
  loc_12367E2:   Exit Sub
  loc_12367E3: End If
  loc_1236800: var_D8 = Me.FGrid.Rows
  loc_1236857: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_D8) - 1))))) Then
  loc_123686D:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_123687D:   var_DC = "+{Tab}"
  loc_1236883:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_123688D:   Cancel = 0
  loc_1236893: Else
  loc_123689D:   var_B8 = Me.FGrid.Rows
  loc_12368EA:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B8) - 1)))) Then
  loc_1236900:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1236916:     Proc_303_0_FB9B68("{Tab}", 0, var_B8)
  loc_1236920:     Cancel = 0
  loc_123695A:     If (MsgBox("Save Record ?", 4, "Save Data", var_D8, var_118) = 6) Then
  loc_123695D:       Call TopCtrl1_UnknownEvent_19()
  loc_1236962:     End If
  loc_1236962:   End If
  loc_1236962: End If
  loc_1236968: global_68 = Cancel
  loc_123698E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_12369B2: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_12369C8:   var_11C = CLng(Me.FGrid.Col)
  loc_12369D8:   If (var_11C = CLng(3)) Then
  loc_12369EE:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_12369F6:     var_F8 = CVar(CLng(3)) 'Long
  loc_12369FB:     var_12C = vbNullString
  loc_1236A05:     Set var_E0 = Me.FGrid
  loc_1236A0B:     LateIdCallSt
  loc_1236A30:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236A38:     var_F8 = CVar(CLng(2)) 'Long
  loc_1236A3D:     var_12C = vbNullString
  loc_1236A47:     Set var_E0 = Me.FGrid
  loc_1236A4D:     LateIdCallSt
  loc_1236A72:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236A7A:     var_F8 = CVar(CLng(&HA)) 'Long
  loc_1236A7F:     var_12C = vbNullString
  loc_1236A89:     Set var_E0 = Me.FGrid
  loc_1236A8F:     LateIdCallSt
  loc_1236AB4:     var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236ABC:     var_F8 = CVar(CLng(&HE)) 'Long
  loc_1236AC1:     var_12C = vbNullString
  loc_1236ACB:     Set var_E0 = Me.FGrid
  loc_1236AD1:     LateIdCallSt
  loc_1236AE6:   Else
  loc_1236AED:     If Not (var_11C = CLng(1)) Then
  loc_1236AF7:       If Not (var_11C = CLng(4)) Then
  loc_1236B01:         If Not (var_11C = CLng(5)) Then
  loc_1236B0B:           If Not (var_11C = CLng(6)) Then
  loc_1236B15:             If Not (var_11C = CLng(7)) Then
  loc_1236B1F:               If Not (var_11C = CLng(8)) Then
  loc_1236B29:                 If Not (var_11C = CLng(9)) Then
  loc_1236B33:                   If Not (var_11C = CLng(&HC)) Then
  loc_1236B3D:                     If (var_11C = CLng(&H10)) Then
  loc_1236B40:                     End If
  loc_1236B40:                   End If
  loc_1236B40:                 End If
  loc_1236B40:               End If
  loc_1236B40:             End If
  loc_1236B40:           End If
  loc_1236B40:         End If
  loc_1236B40:       End If
  loc_1236B53:       var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236B6B:       var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1236B70:       var_12C = vbNullString
  loc_1236B7A:       Set var_E4 = Me.FGrid
  loc_1236B80:       LateIdCallSt
  loc_1236B9B:     Else
  loc_1236BA2:       If (var_11C = CLng(&HD)) Then
  loc_1236BB8:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236BC0:         var_F8 = CVar(CLng(&HF)) 'Long
  loc_1236BC5:         var_12C = vbNullString
  loc_1236BCF:         Set var_E0 = Me.FGrid
  loc_1236BD5:         LateIdCallSt
  loc_1236BFA:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236C02:         var_F8 = CVar(CLng(&HD)) 'Long
  loc_1236C07:         var_12C = vbNullString
  loc_1236C11:         Set var_E0 = Me.FGrid
  loc_1236C17:         LateIdCallSt
  loc_1236C3C:         var_98 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1236C44:         var_F8 = CVar(CLng(&HB)) 'Long
  loc_1236C49:         var_12C = vbNullString
  loc_1236C53:         Set var_E0 = Me.FGrid
  loc_1236C59:         LateIdCallSt
  loc_1236C6B:       End If
  loc_1236C6B:     End If
  loc_1236C6B:   End If
  loc_1236C6B: End If
  loc_1236C71: If (Cancel = &HD) Then
  loc_1236C79:   global_70 = 0
  loc_1236C7C: End If
  loc_1236C7E: Cancel = 0
  loc_1236C81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12800
  'Data Table: 48CC30
  loc_E127F1: Call FGrid_UnknownEvent_C()
  loc_E127FB: global_70 = 0
  loc_E127FE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '11858E8
  'Data Table: 48CC30
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Long
  Dim var_C0 As String
  Dim var_DA As Integer
  Dim var_C4 As TextBox
  Dim var_D4 As TextBox
  loc_118550C: Set var_88 = Me.TopCtrl1
  loc_1185512: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_1185527: If ( = "Browse") Then
  loc_118552A:   Exit Sub
  loc_118552B: End If
  loc_118552F: Set var_88 = Me.TopCtrl1
  loc_1185535: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_118554A: If ( = "Browse") Then
  loc_118554D:   Exit Sub
  loc_118554E: End If
  loc_1185561: var_BC = CLng(Me.FGrid.Col)
  loc_1185571: If Not (var_BC = CLng(3)) Then
  loc_118557B:   If Not (var_BC = CLng(4)) Then
  loc_1185585:     If Not (var_BC = CLng(&HD)) Then
  loc_118558F:       If Not (var_BC = CLng(6)) Then
  loc_1185599:         If Not (var_BC = CLng(8)) Then
  loc_11855A3:           If Not (var_BC = CLng(&HC)) Then
  loc_11855AD:             If (var_BC = CLng(&H10)) Then
  loc_11855B0:             End If
  loc_11855B0:           End If
  loc_11855B0:         End If
  loc_11855B0:       End If
  loc_11855B0:     End If
  loc_11855B0:   End If
  loc_11855B4:   Set var_D4 = Me.FGrid
  loc_11855D8:   var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1185605:   Set var_C4 = var_D4
  loc_1185617:   Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, 0)
  loc_118563F:   Set var_88 = Me.TxtGrid
  loc_1185645:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, Asc(var_C0))
  loc_118564D:   0 = var_C4.Text
  loc_1185666:   If (Len(var_C0) <= 1) Then
  loc_1185675:     Set var_88 = Me.TxtGrid
  loc_118567B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1185683:     var_DA = var_C4.Text
  loc_1185694:     Set var_C8 = Me.TxtGrid
  loc_118569A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_11856A2:     var_D4.Text = var_C0
  loc_11856B5:   End If
  loc_11856C1:   Set var_88 = Me.TxtGrid
  loc_11856C7:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11856E1:   Set var_C8 = Me.TxtGrid
  loc_11856E7:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_11856EF:   var_D4.SelStart = Len(var_C4.Text)
  loc_1185705: Else
  loc_118570C:   If (var_BC = CLng(5)) Then
  loc_118574D:     Proc_6_63_110ABA4(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_1185762:   Else
  loc_1185769:     If Not (var_BC = CLng(1)) Then
  loc_1185773:       If Not (var_BC = CLng(9)) Then
  loc_118577D:         If (var_BC = CLng(7)) Then
  loc_1185780:         End If
  loc_1185780:       End If
  loc_1185784:       Set var_D4 = Me.FGrid
  loc_11857A8:       var_C0 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11857B1:       var_DA = Asc(var_C0)
  loc_11857D5:       Set var_C4 = var_D4
  loc_11857E7:       Proc_6_63_110ABA4(Me, var_C4, Me.TxtGrid, 0, &HFF, var_DA)
  loc_118580F:       Set var_88 = Me.TxtGrid
  loc_1185815:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0, 0, var_DA)
  loc_118581D:       0 = var_C4.Text
  loc_1185836:       If (Len(var_C0) <= 1) Then
  loc_1185845:         Set var_88 = Me.TxtGrid
  loc_118584B:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4, var_C0)
  loc_1185853:         Cancel = var_C4.Text
  loc_1185864:         Set var_C8 = Me.TxtGrid
  loc_118586A:         Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4, var_C0)
  loc_1185872:         var_D4.Text = 0
  loc_1185885:       End If
  loc_1185891:       Set var_88 = Me.TxtGrid
  loc_1185897:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11858B1:       Set var_C8 = Me.TxtGrid
  loc_11858B7:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_D4)
  loc_11858BF:       var_D4.SelStart = Len(var_C4.Text)
  loc_11858D2:     End If
  loc_11858D2:   End If
  loc_11858D2: End If
  loc_11858DC: If (CLng(Cancel) <> &HD) Then
  loc_11858E4:   global_70 = &HFF
  loc_11858E7: End If
  loc_11858E7: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1000888
  'Data Table: 48CC30
  Dim var_A0 As Variant
  Dim var_90 As MSHFlexGrid
  Dim var_B0 As Variant
  loc_1000690: Set var_90 = Me.TopCtrl1
  loc_1000696: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_10006AB: If ( = "Browse") Then
  loc_10006AE:   Exit Sub
  loc_10006AF: End If
  loc_10006B3: Set var_90 = Me.TopCtrl1
  loc_10006B9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_10006CE: If ( = "Edit") Then
  loc_10006D1:   Exit Sub
  loc_10006D2: End If
  loc_10006EF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10006F2:   Exit Sub
  loc_10006F3: End If
  loc_1000704: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_1000726:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_1000760:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_1000782:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1000798:         var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10007A1:         Set var_114 = Me.FGrid
  loc_10007BC:       Else
  loc_10007CF:         Me.FGrid.Rows = 1
  loc_10007F5:         var_B0 = CVar(CStr(Proc_6_127_F24F80(Me.FGrid, CInt(1)))) 'String
  loc_10007FD:         Set var_114 = Me.FGrid
  loc_100082A:         Me.FGrid.FixedRows = 1
  loc_1000832:       End If
  loc_1000832:     End If
  loc_1000835:   Else
  loc_1000856:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1000866:   End If
  loc_100086A:   Set var_90 = Me.FGrid
  loc_100087B: End If
  loc_1000880: Set var_8C = Nothing
  loc_1000883: Exit Sub
  loc_1000884: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1DC40
  'Data Table: 48CC30
  loc_E1DC37: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1DC3F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1DD30
  'Data Table: 48CC30
  loc_E1DD27: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DD2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E41430
  'Data Table: 48CC30
  Dim var_8C As TextBox
  loc_E41404: Call Proc_82_53_EB9F3C()
  loc_E41414: Set var_88 = Me.TxtGrid
  loc_E4141A: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E41422: var_8C.Visible = False
  loc_E4142E: Exit Sub
End Sub

Public Function MasterFormExitGet() '48D7D4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '48D7E3
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '48D7F2
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '48D801
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E95528
  'Data Table: 48CC30
  Dim Me As Recordset15
  loc_E954B6: On Error Goto loc_E9551F
  loc_E954BF: Me.MoveFirst
  loc_E954E9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95511: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E95519: Call Proc_82_51_13DDC6C(0)
  loc_E9551E: Exit Sub
  loc_E9551F: ' Referenced from: E954B6
  loc_E9551F: Proc_6_60_E62BC4(var_A0)
  loc_E95524: Exit Sub
End Sub

Public Sub Proc_82_45_12DC314
  'Data Table: 48CC30
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As MSHFlexGrid
  Dim var_E8 As Variant
  Dim var_108 As String
  loc_12DBC54: On Error Goto loc_12DC30D
  loc_12DBC65: Set var_88 = Me.Txt
  loc_12DBC6B: Call 0.Method_Proc_82_45_12DC3140 (CInt(0), var_8C)
  loc_12DBC8A: Me.DGVType.Left = CVar(var_8C.Left)
  loc_12DBCA6: Set var_B4 = Me.Txt
  loc_12DBCAC: Call 0.Method_Proc_82_45_12DC3140 (CInt(0), var_B8)
  loc_12DBCC7: Set var_88 = Me.Txt
  loc_12DBCCD: Call 0.Method_Proc_82_45_12DC3140 (CInt(0), var_8C)
  loc_12DBCD5: var_90 = var_8C.Top
  loc_12DBCE5: var_A0 = CVar(((var_90 + var_B8.Height) + CDbl(&H19))) 'Single
  loc_12DBCF4: Me.DGVType.Top = CVar(var_8C.Left)
  loc_12DBD0C: Call 0.Method_Me0 (var_90)
  loc_12DBD18: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DBD27: Me.FGrid.Width = CVar(var_8C.Left)
  loc_12DBD35: Call 0.Method_Me8 (var_90)
  loc_12DBD41: var_A0 = CVar((var_90 - CDbl(&H32))) 'Single
  loc_12DBD50: Me.FGrid.Height = CVar(var_8C.Left)
  loc_12DBD5C: Set var_C4 = Me.FGrid
  loc_12DBD6B: var_C4.Cols = &H11
  loc_12DBD7C: var_C4.Rows = 1
  loc_12DBD95: global_60 = CStr(CLng(var_C4.BackColor))
  loc_12DBD9F: var_A0 = 0
  loc_12DBDA8: var_E8 = &H64
  loc_12DBDB4: LateIdCallSt
  loc_12DBDBF: var_A0 = CVar(CLng(1)) 'Long
  loc_12DBDC4: var_E8 = &H159
  loc_12DBDD0: LateIdCallSt
  loc_12DBDD8: var_A0 = 0
  loc_12DBDE4: var_E8 = CVar(CLng(1)) 'Long
  loc_12DBDE9: var_108 = "Sn."
  loc_12DBDF2: LateIdCallSt
  loc_12DBDFD: var_A0 = CVar(CLng(1)) 'Long
  loc_12DBE08: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBE0F: LateIdCallSt
  loc_12DBE1A: var_A0 = CVar(CLng(2)) 'Long
  loc_12DBE1F: var_E8 = 0
  loc_12DBE2B: LateIdCallSt
  loc_12DBE36: var_A0 = CVar(CLng(3)) 'Long
  loc_12DBE3B: var_E8 = &H5DC
  loc_12DBE47: LateIdCallSt
  loc_12DBE4F: var_A0 = 0
  loc_12DBE5B: var_E8 = CVar(CLng(3)) 'Long
  loc_12DBE60: var_108 = "Sundry Name"
  loc_12DBE69: LateIdCallSt
  loc_12DBE74: var_A0 = CVar(CLng(3)) 'Long
  loc_12DBE7F: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBE86: LateIdCallSt
  loc_12DBE91: var_A0 = CVar(CLng(4)) 'Long
  loc_12DBE96: var_E8 = &H640
  loc_12DBEA2: LateIdCallSt
  loc_12DBEAA: var_A0 = 0
  loc_12DBEB6: var_E8 = CVar(CLng(4)) 'Long
  loc_12DBEBB: var_108 = "Display Name"
  loc_12DBEC4: LateIdCallSt
  loc_12DBECF: var_A0 = CVar(CLng(4)) 'Long
  loc_12DBEDA: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBEE1: LateIdCallSt
  loc_12DBEEC: var_A0 = CVar(CLng(5)) 'Long
  loc_12DBEF1: var_E8 = &H6D6
  loc_12DBEFD: LateIdCallSt
  loc_12DBF05: var_A0 = 0
  loc_12DBF11: var_E8 = CVar(CLng(5)) 'Long
  loc_12DBF16: var_108 = "Cal. Formula"
  loc_12DBF1F: LateIdCallSt
  loc_12DBF2A: var_A0 = CVar(CLng(5)) 'Long
  loc_12DBF35: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBF3C: LateIdCallSt
  loc_12DBF47: var_A0 = CVar(CLng(5)) 'Long
  loc_12DBF52: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBF59: LateIdCallSt
  loc_12DBF64: var_A0 = CVar(CLng(6)) 'Long
  loc_12DBF69: var_E8 = &H226
  loc_12DBF75: LateIdCallSt
  loc_12DBF7D: var_A0 = 0
  loc_12DBF89: var_E8 = CVar(CLng(6)) 'Long
  loc_12DBF8E: var_108 = "P/A"
  loc_12DBF97: LateIdCallSt
  loc_12DBFA2: var_A0 = CVar(CLng(6)) 'Long
  loc_12DBFAD: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DBFB4: LateIdCallSt
  loc_12DBFBF: var_A0 = CVar(CLng(7)) 'Long
  loc_12DBFC4: var_E8 = &H320
  loc_12DBFD0: LateIdCallSt
  loc_12DBFD8: var_A0 = 0
  loc_12DBFE4: var_E8 = CVar(CLng(7)) 'Long
  loc_12DBFE9: var_108 = "Value"
  loc_12DBFF2: LateIdCallSt
  loc_12DBFFD: var_A0 = CVar(CLng(7)) 'Long
  loc_12DC008: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DC00F: LateIdCallSt
  loc_12DC01A: var_A0 = CVar(CLng(7)) 'Long
  loc_12DC025: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DC02C: LateIdCallSt
  loc_12DC037: var_A0 = CVar(CLng(8)) 'Long
  loc_12DC03C: var_E8 = 0
  loc_12DC048: LateIdCallSt
  loc_12DC050: var_A0 = 0
  loc_12DC05C: var_E8 = CVar(CLng(8)) 'Long
  loc_12DC061: var_108 = "ROff"
  loc_12DC06A: LateIdCallSt
  loc_12DC075: var_A0 = CVar(CLng(8)) 'Long
  loc_12DC080: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DC087: LateIdCallSt
  loc_12DC092: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DC097: var_E8 = &H320
  loc_12DC0A3: LateIdCallSt
  loc_12DC0AB: var_A0 = 0
  loc_12DC0B7: var_E8 = CVar(CLng(&H10)) 'Long
  loc_12DC0BC: var_108 = "A/M"
  loc_12DC0C5: LateIdCallSt
  loc_12DC0D0: var_A0 = CVar(CLng(&H10)) 'Long
  loc_12DC0DB: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DC0E2: LateIdCallSt
  loc_12DC0ED: var_A0 = CVar(CLng(9)) 'Long
  loc_12DC0F2: var_E8 = 0
  loc_12DC0FE: LateIdCallSt
  loc_12DC106: var_A0 = 0
  loc_12DC112: var_E8 = CVar(CLng(9)) 'Long
  loc_12DC117: var_108 = "Limit"
  loc_12DC120: LateIdCallSt
  loc_12DC12B: var_A0 = CVar(CLng(9)) 'Long
  loc_12DC136: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DC13D: LateIdCallSt
  loc_12DC148: var_A0 = CVar(CLng(9)) 'Long
  loc_12DC153: var_E8 = CVar(CInt(7)) 'Integer
  loc_12DC15A: LateIdCallSt
  loc_12DC165: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DC16A: var_E8 = 0
  loc_12DC176: LateIdCallSt
  loc_12DC17E: var_A0 = 0
  loc_12DC18A: var_E8 = CVar(CLng(&HA)) 'Long
  loc_12DC18F: var_108 = "Nature"
  loc_12DC198: LateIdCallSt
  loc_12DC1A3: var_A0 = CVar(CLng(&HA)) 'Long
  loc_12DC1AE: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DC1B5: LateIdCallSt
  loc_12DC1C0: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DC1C5: var_E8 = 0
  loc_12DC1D1: LateIdCallSt
  loc_12DC1D9: var_A0 = 0
  loc_12DC1E5: var_E8 = CVar(CLng(&HB)) 'Long
  loc_12DC1EA: var_108 = "+/-"
  loc_12DC1F3: LateIdCallSt
  loc_12DC1FE: var_A0 = CVar(CLng(&HB)) 'Long
  loc_12DC209: var_E8 = CVar(CInt(4)) 'Integer
  loc_12DC210: LateIdCallSt
  loc_12DC21B: var_A0 = CVar(CLng(&HE)) 'Long
  loc_12DC220: var_E8 = 0
  loc_12DC22C: LateIdCallSt
  loc_12DC237: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DC23C: var_E8 = &H258
  loc_12DC248: LateIdCallSt
  loc_12DC250: var_A0 = 0
  loc_12DC25C: var_E8 = CVar(CLng(&HC)) 'Long
  loc_12DC261: var_108 = "Bold"
  loc_12DC26A: LateIdCallSt
  loc_12DC275: var_A0 = CVar(CLng(&HC)) 'Long
  loc_12DC280: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DC287: LateIdCallSt
  loc_12DC292: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DC297: var_E8 = &H9C4
  loc_12DC2A3: LateIdCallSt
  loc_12DC2AB: var_A0 = 0
  loc_12DC2B7: var_E8 = CVar(CLng(&HD)) 'Long
  loc_12DC2BC: var_108 = "Revenue Charge"
  loc_12DC2C5: LateIdCallSt
  loc_12DC2D0: var_A0 = CVar(CLng(&HD)) 'Long
  loc_12DC2DB: var_E8 = CVar(CInt(1)) 'Integer
  loc_12DC2E2: LateIdCallSt
  loc_12DC2ED: var_A0 = CVar(CLng(&HF)) 'Long
  loc_12DC2F2: var_E8 = 0
  loc_12DC2FE: LateIdCallSt
  loc_12DC308: Set var_C4 = Nothing 
  loc_12DC30C: Exit Sub
  loc_12DC30D: ' Referenced from: 12DBC54
  loc_12DC30D: Proc_6_60_E62BC4(var_C4, var_E8, var_A0, var_C4, var_E8, var_A0, var_C4, var_108)
  loc_12DC312: Exit Sub
End Sub

Public Sub Proc_82_46_FC8808
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_DC As Variant
  Dim var_EC As Variant
  Dim unk_48CC57 As Connection15
  Dim var_138 As Fields15
  Dim var_14C As Field20
  loc_FC86A3: If (Me.RecordCount = 0) Then
  loc_FC86A6:   Proc_82_46_FC8808 = 
  loc_FC86AC: End If
  loc_FC86E7: Set var_94 = Me.Txt
  loc_FC86ED: Call 0.Method_Proc_82_46_FC88080 (CInt(0), var_98, var_9C, "Select Count(*) From SundryType Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (V_Type='", var_130, -1)
  loc_FC8705: var_DC = CVar(var_138 & var_9C & "' And AppDate=") 'String
  loc_FC8713: Set var_A8 = Me.Txt
  loc_FC8719: Call 0.Method_Proc_82_46_FC88080 (CInt(1), var_AC, var_DC)
  loc_FC8728: Proc_6_7_F25D88(var_CC, CVar(var_AC), 0)
  loc_FC8730: var_EC = var_14C & var_CC 
  loc_FC8747: unk_48CC57.Execute CStr(var_EC & ")"), var_15C, 
  loc_FC874F:  = var_98.Tag.Fields
  loc_FC8757:  = var_138.Item()
  loc_FC875F:  = var_14C.Value
  loc_FC879C: If (var_15C > 0) Then
  loc_FC87C0:   MsgBox("Duplicate Entry", &H40, "Information", var_DC, var_EC)
  loc_FC87DB:   Set var_94 = Me.Txt
  loc_FC87E1:   Call 0.Method_Proc_82_46_FC88080 (CInt(0))
  loc_FC87E9:   var_98.SetFocus
  loc_FC87FA:   Proc_82_46_FC8808 = &HFF
  loc_FC8800: End If
  loc_FC8800: Proc_82_46_FC8808 = var_98
End Sub

Public Sub Proc_82_47_11594FC(arg_C, arg_10) '11594FC
  'Data Table: 48CC30
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_C4 As String
  Dim var_E4 As Variant
  Dim var_138 As Variant
  Dim var_86 As Integer
  Dim var_A2 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_178 As Boolean
  Dim var_9A As Integer
  Dim var_148 As Variant
  Dim var_118 As Variant
  loc_1159160: var_B4 = CVar(CLng(arg_C)) 'Long
  loc_1159169: var_D4 = CVar(CLng(arg_10)) 'Long
  loc_1159183: var_98 = CStr(Me.FGrid.TextMatrix))
  loc_11591A4: var_C4 = "+"
  loc_11591BE: var_118 = Left(var_98, 1)
  loc_11591C6: var_E4 = "-"
  loc_11591DD: If CBool((Left(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_11591FE:   MsgBox("Invalid Operator at Starting position of furmula", 0, var_108, var_118, var_128)
  loc_115920E:   Proc_82_47_11594FC = &HFF
  loc_1159214: End If
  loc_115922C: var_C4 = "+"
  loc_1159246: var_118 = Right(var_98, 1)
  loc_115924E: var_E4 = "-"
  loc_1159265: If CBool((Right(var_98, 1) = var_C4) Or (var_118 = var_E4)) Then
  loc_1159286:   MsgBox("Invalid Operator at Ending position of furmula", 0, var_108, var_118, var_128)
  loc_1159296:   Proc_82_47_11594FC = &HFF
  loc_115929C: End If
  loc_115929E: var_86 = 0
  loc_11592A1: ' Referenced from: 11594F0
  loc_11592AB: If (Len(var_98) > 0) Then
  loc_11592B0:   var_A2 = 0
  loc_11592C5:   var_108 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_11592DB:   var_F8 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_11592F7:   var_B4 = (InStr(1, var_98, "-", 0) = 0)
  loc_1159315:   var_138 = CVar(InStr(1, var_98, "+", 0)) 'Long
  loc_115932B:   var_128 = CVar(InStr(1, var_98, "-", 0)) 'Long
  loc_1159347:   var_E4 = (InStr(1, var_98, "+", 0) = 0)
  loc_115934E:   var_168 = IIf(var_E4, var_128, (Right(var_98, 1) = var_C4) Or (IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108) = var_E4))
  loc_115937E:   var_178 = (InStr(1, var_98, "+", 0) >= InStr(1, var_98, "-", 0))
  loc_1159385:   var_188 = IIf(var_178, IIf("Invalid Operator at Ending position of furmula", "Invalid Operator at Ending position of furmula", var_108), var_168)
  loc_115938E:   var_9A = CInt(var_188)
  loc_11593AE:   If (var_9A = 0) Then
  loc_11593B4:     var_A0 = var_98
  loc_11593BA:   Else
  loc_11593CC:     var_F8 = Left(var_98, CLng((var_9A - 1)))
  loc_11593D5:     var_A0 = CStr("Invalid Operator at Ending position of furmula")
  loc_11593DB:   End If
  loc_11593E6:   For var_18C = 1 To (arg_C - 1): var_88 = var_18C 'Integer
  loc_11593EF:     var_148 = CVar(var_A0) 'String
  loc_11593F7:     var_B4 = CVar(CLng(var_88)) 'Long
  loc_1159435:     If (CVar(CLng(1)) = Trim(CVar(CStr(Me.FGrid.TextMatrix))))) Then
  loc_115943A:       var_A2 = &HFF
  loc_115943D:       Exit For
  loc_1159440:     End If
  loc_1159443:   Next var_18C 'Integer
  loc_1159448:   ' Referenced from: 115943D
  loc_115944E:   If (var_A2 = 0) Then
  loc_115945C:     var_F8 = Trim(var_A0)
  loc_115947F:     var_108 = ("Invalid Row Reference " + var_F8)
  loc_1159488:     var_118 = (CVar(CStr(Me.FGrid.TextMatrix))) + vbCrLf)
  loc_1159491:     var_128 = (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Please Enter Correct No.")
  loc_1159495:     MsgBox(var_128, &H40, "Validation", var_168, var_188)
  loc_11594B0:     Proc_82_47_11594FC = &HFF
  loc_11594B6:   End If
  loc_11594BC:   If (var_9A = 0) Then
  loc_11594C2:     var_98 = vbNullString
  loc_11594C8:   Else
  loc_11594DD:     var_108 = Mid(var_98, CLng((var_9A + 1)), var_F8)
  loc_11594E6:     var_98 = CStr(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_11594F0:   End If
  loc_11594F0:   GoTo loc_11592A1
  loc_11594F3: End If
  loc_11594F3: Proc_82_47_11594FC = 
End Sub

Public Sub Proc_82_48_E364F0
  'Data Table: 48CC30
  loc_E364D0: Set var_88 = Me.TopCtrl1
  loc_E364D6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_6803000E()
  loc_E364EB: If ( = "Browse") Then
  loc_E364EE:   Exit Sub
  loc_E364EF: End If
  loc_E364EF: Exit Sub
End Sub

Public Sub Proc_82_49_150700C(arg_C) '150700C
  'Data Table: 48CC30
  Dim var_8C As Variant
  Dim var_A0 As Long
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_86 As Integer
  Dim var_114 As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_134 As Variant
  Dim var_B0 As String
  Dim var_138 As MSHFlexGrid
  Dim var_170 As Variant
  loc_150614B: var_A0 = CLng(Me.FGrid.Col)
  loc_150615B: If (var_A0 = CLng(3)) Then
  loc_150617E:   var_A6 = Me.EOF
  loc_15061AC:   Set var_8C = Me.TxtGrid
  loc_15061B2:   Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0)
  loc_15061BA:   ((Me.RecordCount = 0) Or ((var_A6 = &HFF) Or (Me.BOF = &HFF))) = var_AC.Text
  loc_15061D2:   If (var_A0 Or (var_B0 = vbNullString)) Then
  loc_15061E8:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15061F0:     var_E0 = CVar(CLng(3)) 'Long
  loc_15061F5:     var_100 = vbNullString
  loc_15061FF:     Set var_AC = Me.FGrid
  loc_1506205:     LateIdCallSt
  loc_150622A:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506232:     var_E0 = CVar(CLng(2)) 'Long
  loc_1506237:     var_100 = vbNullString
  loc_1506241:     Set var_AC = Me.FGrid
  loc_1506247:     LateIdCallSt
  loc_150626C:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506274:     var_E0 = CVar(CLng(&HA)) 'Long
  loc_1506279:     var_100 = vbNullString
  loc_1506283:     Set var_AC = Me.FGrid
  loc_1506289:     LateIdCallSt
  loc_15062AE:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15062B6:     var_E0 = CVar(CLng(&HE)) 'Long
  loc_15062BB:     var_100 = vbNullString
  loc_15062C5:     Set var_AC = Me.FGrid
  loc_15062CB:     LateIdCallSt
  loc_15062E0:   Else
  loc_15062E3:     Call Proc_82_54_FC50FC(var_A6, var_AC, var_100, var_E0, var_C0, var_AC, var_100, var_E0)
  loc_15062EE:     If (var_A6 = 0) Then
  loc_15062F6:       Proc_82_49_150700C = 0
  loc_15062FC:     End If
  loc_150630F:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506317:     var_F0 = CVar(CLng(3)) 'Long
  loc_150634A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1506352:     Set var_138 = Me.FGrid
  loc_1506358:     LateIdCallSt
  loc_1506387:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150638F:     var_F0 = CVar(CLng(2)) 'Long
  loc_15063C2:     var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_15063CA:     Set var_138 = Me.FGrid
  loc_15063D0:     LateIdCallSt
  loc_15063FF:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506407:     var_F0 = CVar(CLng(4)) 'Long
  loc_150643A:     var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1506448:     LateIdCallSt
  loc_15064AF:     var_134 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_134, CVar(CLng(&HA)), CVar(CLng(Me.FGrid.Row)))) 'String
  loc_15064B7:     Set var_138 = Me.FGrid
  loc_15064BD:     LateIdCallSt
  loc_15064EA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15064F2:     var_F0 = CVar(CLng(&HE)) 'Long
  loc_1506525:     var_134 = CVar(CStr(Me.Fields.Item("SysYN").Value)) 'String
  loc_150652D:     Set var_138 = Me.FGrid
  loc_1506533:     LateIdCallSt
  loc_150654F:   End If
  loc_1506562:   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150656A:   var_E0 = CVar(CLng(&H10)) 'Long
  loc_150656F:   var_100 = "Manual"
  loc_1506579:   Set var_AC = Me.FGrid
  loc_150657F:   LateIdCallSt
  loc_15065AA:   var_C0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_15065AF:   var_E0 = 1
  loc_15065BC:   Set var_AC = Me.FGrid
  loc_15065CD:   var_B0 = CStr(var_AC.TextMatrix))
  loc_15065E6:   If (var_B0 <> vbNullString) Then
  loc_15065E9:     var_C0 = vbNullString
  loc_15065F3:     Set var_8C = Me.FGrid
  loc_1506604:   End If
  loc_1506607: Else
  loc_150660E:   If Not (var_A0 = CLng(1)) Then
  loc_1506618:     If (var_A0 = CLng(4)) Then
  loc_150661B:     End If
  loc_1506657:     Set var_8C = Me.TxtGrid
  loc_150665D:     Call 0.Method_Proc_82_49_150700C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_1506665:     var_E0 = var_AC.Text
  loc_150666D:     var_134 = CVar(var_B0) 'String
  loc_1506675:     Set var_13C = Me.FGrid
  loc_150667B:     LateIdCallSt
  loc_150669C:   Else
  loc_15066A3:     If (var_A0 = CLng(5)) Then
  loc_15066E3:       Set var_8C = Me.TxtGrid
  loc_15066E9:       Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_13C, var_134)
  loc_15066F1:       var_C0 = var_AC.Text
  loc_15066F9:       var_134 = CVar(var_B0) 'String
  loc_1506701:       Set var_13C = Me.FGrid
  loc_1506707:       LateIdCallSt
  loc_1506744:       If (CLng(Me.FGrid.Row) = 1) Then
  loc_150675A:         var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506763:         Set var_AC = Me.FGrid
  loc_1506772:         var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506777:         var_100 = vbNullString
  loc_1506781:         Set var_114 = Me.FGrid
  loc_1506787:         LateIdCallSt
  loc_15067A4:         Proc_82_49_150700C = &HFF
  loc_15067AA:       End If
  loc_15067B7:       Set var_8C = Me.TxtGrid
  loc_15067BD:       Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, var_114, var_100, var_E0, var_C0)
  loc_15067C5:       var_13C = var_AC.Text
  loc_15067DC:       If (var_B0 <> vbNullString) Then
  loc_150681A:         Call Proc_82_47_11594FC(CInt(CLng(Me.FGrid.Row)), CInt(CLng(Me.FGrid.Col)))
  loc_1506833:         If (var_13E = &HFF) Then
  loc_1506838:           var_86 = 0
  loc_150684E:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506857:           Set var_AC = Me.FGrid
  loc_1506866:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_150686B:           var_100 = vbNullString
  loc_150687B:           LateIdCallSt
  loc_1506893:           Proc_82_49_150700C = Me.FGrid
  loc_1506899:         End If
  loc_1506899:       End If
  loc_150689C:     Else
  loc_15068A3:       If Not (var_A0 = CLng(8)) Then
  loc_15068AD:         If (var_A0 = CLng(&HC)) Then
  loc_15068B0:         End If
  loc_15068EC:         Set var_8C = Me.TxtGrid
  loc_15068F2:         Call 0.Method_Proc_82_49_150700C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)), var_100, CVar(CLng(Me.FGrid.Col)))
  loc_15068FA:         var_C0 = var_AC.Text
  loc_1506910:         LateIdCallSt
  loc_150693B:         Set var_8C = Me.TxtGrid
  loc_1506941:         Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0), var_86)
  loc_1506949:         var_13E = var_AC.Text
  loc_1506960:         If (var_B0 = vbNullString) Then
  loc_1506976:           var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_150697F:           Set var_AC = Me.FGrid
  loc_150698E:           var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506993:           var_100 = "No"
  loc_150699D:           Set var_114 = Me.FGrid
  loc_15069A3:           LateIdCallSt
  loc_15069BB:         End If
  loc_15069BE:       Else
  loc_15069C5:         If (var_A0 = CLng(&H10)) Then
  loc_15069CC:           Set var_114 = Me.FGrid
  loc_1506A04:           Set var_8C = Me.TxtGrid
  loc_1506A0A:           Call 0.Method_Proc_82_49_150700C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1506A12:           var_E0 = var_AC.Text
  loc_1506A28:           LateIdCallSt
  loc_1506A53:           Set var_8C = Me.TxtGrid
  loc_1506A59:           Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1506A61:           var_C0 = var_AC.Text
  loc_1506A78:           If (var_B0 = vbNullString) Then
  loc_1506A8E:             var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506A97:             Set var_AC = Me.FGrid
  loc_1506AA6:             var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506AAB:             var_100 = "Manual"
  loc_1506AB5:             Set var_114 = Me.FGrid
  loc_1506ABB:             LateIdCallSt
  loc_1506AD3:           End If
  loc_1506AD6:         Else
  loc_1506ADD:           If (var_A0 = CLng(6)) Then
  loc_1506AE4:             Set var_114 = Me.FGrid
  loc_1506B1C:             Set var_8C = Me.TxtGrid
  loc_1506B22:             Call 0.Method_Proc_82_49_150700C0 (0, var_AC, var_B0, CVar(CLng(Me.FGrid.Col)), CVar(CLng(var_114.Row)), var_114, var_100)
  loc_1506B2A:             var_E0 = var_AC.Text
  loc_1506B40:             LateIdCallSt
  loc_1506B6B:             Set var_8C = Me.TxtGrid
  loc_1506B71:             Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, Me.FGrid, CVar(var_B0))
  loc_1506B79:             var_C0 = var_AC.Text
  loc_1506B90:             If (var_B0 = vbNullString) Then
  loc_1506BA6:               var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506BAF:               Set var_AC = Me.FGrid
  loc_1506BBE:               var_E0 = CVar(CLng(var_AC.Col)) 'Long
  loc_1506BC3:               var_100 = "Amt"
  loc_1506BCD:               Set var_114 = Me.FGrid
  loc_1506BD3:               LateIdCallSt
  loc_1506BEB:             End If
  loc_1506BEE:           Else
  loc_1506BF5:             If Not (var_A0 = CLng(9)) Then
  loc_1506BFF:               If (var_A0 = CLng(7)) Then
  loc_1506C02:               End If
  loc_1506C0E:               Set var_8C = Me.TxtGrid
  loc_1506C14:               Call 0.Method_Proc_82_49_150700C0 (0, var_AC, var_B0, var_114, var_100, var_E0)
  loc_1506C1C:               var_C0 = var_AC.Text
  loc_1506C3F:               var_E0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506C57:               var_100 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1506C84:               var_170 = CVar(CStr(Format(CVar(Val(var_B0)), "0.00"))) 'String
  loc_1506C8C:               Set var_13C = Me.FGrid
  loc_1506C92:               LateIdCallSt
  loc_1506CBC:             Else
  loc_1506CC3:               If (var_A0 = CLng(&HD)) Then
  loc_1506D14:                 Set var_8C = Me.TxtGrid
  loc_1506D1A:                 Call 0.Method_Proc_82_49_150700C0 (arg_C, var_AC, var_B0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_13C, var_170, 1)
  loc_1506D22:                 1 = var_AC.Text
  loc_1506D3A:                 If (var_100 Or (var_B0 = vbNullString)) Then
  loc_1506D50:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506D58:                   var_E0 = CVar(CLng(&HF)) 'Long
  loc_1506D5D:                   var_100 = vbNullString
  loc_1506D67:                   Set var_AC = Me.FGrid
  loc_1506D6D:                   LateIdCallSt
  loc_1506D92:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506D9A:                   var_E0 = CVar(CLng(&HD)) 'Long
  loc_1506D9F:                   var_100 = vbNullString
  loc_1506DA9:                   Set var_AC = Me.FGrid
  loc_1506DAF:                   LateIdCallSt
  loc_1506DD4:                   var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506DDC:                   var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506DE1:                   var_100 = vbNullString
  loc_1506DEB:                   Set var_AC = Me.FGrid
  loc_1506DF1:                   LateIdCallSt
  loc_1506E06:                 Else
  loc_1506E19:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506E21:                   var_F0 = CVar(CLng(&HF)) 'Long
  loc_1506E54:                   var_134 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_1506E5C:                   Set var_138 = Me.FGrid
  loc_1506E62:                   LateIdCallSt
  loc_1506E91:                   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506E99:                   var_F0 = CVar(CLng(&HD)) 'Long
  loc_1506ECC:                   var_134 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_1506ED4:                   Set var_138 = Me.FGrid
  loc_1506EDA:                   LateIdCallSt
  loc_1506F35:                   If (Me.Fields.Item("Type").Value = "Cr") Then
  loc_1506F4B:                     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506F53:                     var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506F58:                     var_100 = "+"
  loc_1506F62:                     Set var_AC = Me.FGrid
  loc_1506F68:                     LateIdCallSt
  loc_1506F7D:                   Else
  loc_1506FBC:                     If (Me.Fields.Item("Type").Value = "Dr") Then
  loc_1506FD2:                       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1506FDA:                       var_E0 = CVar(CLng(&HB)) 'Long
  loc_1506FDF:                       var_100 = "-"
  loc_1506FE9:                       Set var_AC = Me.FGrid
  loc_1506FEF:                       LateIdCallSt
  loc_1507001:                     End If
  loc_1507001:                   End If
  loc_1507001:                 End If
  loc_1507001:               End If
  loc_1507001:             End If
  loc_1507001:           End If
  loc_1507001:         End If
  loc_1507001:       End If
  loc_1507001:     End If
  loc_1507001:   End If
  loc_1507001: End If
  loc_1507006: Proc_82_49_150700C = &HFF
End Sub

Public Sub Proc_82_50_F290F0
  'Data Table: 48CC30
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_F28FF2: Set var_8C = Me.Txt
  loc_F28FF8: Call 0.Method_Proc_82_50_F290F0C (var_8E, var_86)
  loc_F29008: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F2901E:   Set var_8C = Me.Txt
  loc_F29024:   Call 0.Method_Proc_82_50_F290F00 (CInt(var_86), var_98)
  loc_F2902C:   var_98.Text = vbNullString
  loc_F29048:   Set var_8C = Me.Txt
  loc_F2904E:   Call 0.Method_Proc_82_50_F290F00 (CInt(var_86), var_98)
  loc_F29056:   var_98.Tag = vbNullString
  loc_F29065: Next var_92 'Byte
  loc_F29078: Me.LblDepart.Caption = vbNullString
  loc_F29093: Me.FGrid.Rows = 1
  loc_F290B0: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F290B8: Set var_98 = Me.FGrid
  loc_F290E7: Me.FGrid.FixedRows = 1
  loc_F290EF: Exit Sub
End Sub

Public Sub Proc_82_51_13DDC6C
  'Data Table: 48CC30
  Dim Me As Recordset15
  Dim var_C8 As Variant
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_D8 As Variant
  Dim unk_48CC57 As Connection15
  Dim var_88 As Recordset15
  Dim var_124 As TextBox
  Dim var_120 As Label
  Dim var_8A As Integer
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_11C As Variant
  loc_13DD29C: On Error Goto loc_13DDC64
  loc_13DD2B6: If (Me.RecordCount > 0) Then
  loc_13DD2B9:   Call Proc_82_50_F290F0()
  loc_13DD2CB:   var_C8 = "Select VT.Description,SP.*,SM.Name As SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left Join RevMast RM On SP.RevCode=RM.Code) Where SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)='"
  loc_13DD314:   unk_48CC57.Execute CStr(var_C8 & Me.Fields.Item("SearchCode").Value & "' Order By SP.SNo"), var_11C, -1
  loc_13DD31F:   Set var_88 = var_120
  loc_13DD34D:   If (var_88.RecordCount > 0) Then
  loc_13DD386:     Set var_120 = Me.Txt
  loc_13DD38C:     Call 0.Method_Proc_82_51_13DDC6C0 (CInt(0), var_124)
  loc_13DD394:     var_124.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("V_Type")))
  loc_13DD3DE:     Set var_120 = Me.Txt
  loc_13DD3E4:     Call 0.Method_Proc_82_51_13DDC6C0 (CInt(0), var_124)
  loc_13DD3EC:     var_124.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_13DD439:     If (Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department"))) = vbNullString) Then
  loc_13DD43C:     End If
  loc_13DD471:     Me.LblDepart.Caption = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Department")))
  loc_13DD4D5:     Set var_120 = Me.Txt
  loc_13DD4DB:     Call 0.Method_Proc_82_51_13DDC6C0 (CInt(1), var_124, CStr(Format(CVar(var_88.Fields.Item("AppDate")), "dd/mm/yyyy")))
  loc_13DD4E3:     var_124.Text = 1
  loc_13DD4FF:     var_8A = 1
  loc_13DD515:     Me.FGrid.Rows = 1
  loc_13DD51D:     ' Referenced from: 13DDBDB
  loc_13DD52C:     If Not(var_88.EOF) Then
  loc_13DD52F:       var_A4 = vbNullString
  loc_13DD539:       Set var_94 = Me.FGrid
  loc_13DD54E:       Set var_12C = Me.FGrid
  loc_13DD555:       var_C8 = CVar(CLng(var_8A)) 'Long
  loc_13DD55D:       var_10C = CVar(CLng(1)) 'Long
  loc_13DD58D:       var_D8 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_13DD594:       LateIdCallSt
  loc_13DD5E3:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(2)))) 'String
  loc_13DD5EA:       LateIdCallSt
  loc_13DD635:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(var_8A)))) 'String
  loc_13DD63C:       LateIdCallSt
  loc_13DD687:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DD68E:       LateIdCallSt
  loc_13DD6D9:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DD6E0:       LateIdCallSt
  loc_13DD721:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DD729:       var_15C = CVar(CLng(6)) 'Long
  loc_13DD75F:       var_17C = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_12C, "Per", FGrid.DispID_10000) = "P"), "Per", "Amt"))) 'String
  loc_13DD766:       LateIdCallSt
  loc_13DD7E3:       LateIdCallSt
  loc_13DD821:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_13DD828:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DD830:       var_15C = CVar(CLng(8)) 'Long
  loc_13DD866:       var_17C = CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))) 'String
  loc_13DD86D:       LateIdCallSt
  loc_13DD8EA:       LateIdCallSt
  loc_13DD939:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_12C, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_13DD940:       LateIdCallSt
  loc_13DD98B:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcSign")), CVar(CLng(&HB)), CVar(CLng(var_8A)), var_12C, var_D8, CVar(CLng(9)))) 'String
  loc_13DD992:       LateIdCallSt
  loc_13DD9E4:       LateIdCallSt
  loc_13DDA1E:       var_190 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_12C, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_12C, var_D8)), CVar(CLng(var_8A)))
  loc_13DDA6A:       LateIdCallSt
  loc_13DDAC4:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(&HF)), CVar(CLng(var_8A)), var_12C, CVar(CStr(IIf((var_190 = "Y"), "Yes", "No"))), CVar(CLng(&HC)))) 'String
  loc_13DDACB:       LateIdCallSt
  loc_13DDB16:       var_D8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("RevName")), CVar(CLng(&HD)), CVar(CLng(var_8A)), var_12C, var_D8)) 'String
  loc_13DDB1D:       LateIdCallSt
  loc_13DDB5E:       var_13C = CVar(CLng(var_8A)) 'Long
  loc_13DDB66:       var_15C = CVar(CLng(&H10)) 'Long
  loc_13DDB93:       var_11C = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("AutoManual")), var_12C, "Auto", CVar(CLng(var_8A))) = "A"), "Auto", "Manual")
  loc_13DDB9C:       var_17C = CVar(CStr(var_11C)) 'String
  loc_13DDBA3:       LateIdCallSt
  loc_13DDBC6:       Set var_12C = Nothing 
  loc_13DDBD0:       var_8A = (var_8A + 1)
  loc_13DDBD6:       var_88.MoveNext
  loc_13DDBDB:       GoTo loc_13DD51D
  loc_13DDBDE:     End If
  loc_13DDBDE:   End If
  loc_13DDBDE:   var_A4 = 0
  loc_13DDBE8:   Set var_94 = Me.FGrid
  loc_13DDC15:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_13DDC18:     var_A4 = "1"
  loc_13DDC22:     Set var_94 = Me.FGrid
  loc_13DDC33:   End If
  loc_13DDC33:   var_A4 = 1
  loc_13DDC46:   Me.FGrid.FixedRows = var_A4
  loc_13DDC51: Else
  loc_13DDC51:   Call Proc_82_50_F290F0(FGrid.DispID_10000, var_A4, FGrid.DispID_2E, var_A4, var_8A, var_12C, var_17C)
  loc_13DDC56: End If
  loc_13DDC56: Call Proc_82_53_EB9F3C(var_15C, var_13C, var_12C)
  loc_13DDC60: Set var_88 = Nothing
  loc_13DDC63: Exit Sub
  loc_13DDC64: ' Referenced from: 13DD29C
  loc_13DDC64: Proc_6_60_E62BC4(var_17C, var_15C)
  loc_13DDC69: Exit Sub
End Sub

Public Sub Proc_82_52_E787F4(arg_C) 'E787F4
  'Data Table: 48CC30
  Dim var_98 As TextBox
  loc_E787A2: Set var_8C = Me.Txt
  loc_E787A8: Call 0.Method_Proc_82_52_E787F4C (var_8E, var_86)
  loc_E787B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E787CE:   Set var_8C = Me.Txt
  loc_E787D4:   Call 0.Method_Proc_82_52_E787F40 (CInt(var_86), var_98)
  loc_E787DC:   var_98.Enabled = arg_C
  loc_E787EB: Next var_92 'Byte
  loc_E787F1: Exit Sub
End Sub

Public Sub Proc_82_53_EB9F3C
  'Data Table: 48CC30
  loc_EB9EB4: If (CBool(Me.DGVType.Visible) = &HFF) Then
  loc_EB9EC6:   Me.DGVType.Visible = False
  loc_EB9ECE: End If
  loc_EB9EEA: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EB9EFC:   Me.DGRevenue.Visible = False
  loc_EB9F04: End If
  loc_EB9F20: If (CBool(Me.DGSundry.Visible) = &HFF) Then
  loc_EB9F32:   Me.DGSundry.Visible = False
  loc_EB9F3A: End If
  loc_EB9F3A: Exit Sub
End Sub

Public Sub Proc_82_54_FC50FC
  'Data Table: 48CC30
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC4F7F: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_FC4F84:   var_92 = 3 'Byte
  loc_FC4F88: End If
  loc_FC4F91: Set var_98 = Me.TxtGrid
  loc_FC4F97: Call 0.Method_Proc_82_54_FC50FC0 (0, var_B0)
  loc_FC4FBA: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC4FEE: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC5012:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC5015:     GoTo loc_FC50E7
  loc_FC5018:   End If
  loc_FC501C:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC5046:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC5050:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC5085:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC50A9:     MsgBox("Duplicate Sundry Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC50C2:     Set var_98 = Me.TxtGrid
  loc_FC50C8:     Call 0.Method_Proc_82_54_FC50FC0 (0, var_B0, CVar(CLng(var_92)))
  loc_FC50D0:     var_B0.SetFocus
  loc_FC50E1:     Proc_82_54_FC50FC = 0
  loc_FC50E7:     ' Referenced from: FC5015
  loc_FC50E7:   End If
  loc_FC50EA: Next var_D4 'Integer
  loc_FC50F4: Proc_82_54_FC50FC = &HFF
  loc_FC50FA: () = 
End Sub

Public Sub Proc_82_55_12CC238
  'Data Table: 48CC30
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim unk_48CC57 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_F8 As Variant
  Dim var_D8 As Field20
  Dim var_118 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_158 As Variant
  Dim var_E8 As Variant
  Dim var_178 As Variant
  loc_12CBBC0: On Error Goto loc_12CC232
  loc_12CBBD0: Set var_B0 = Me.FGrid
  loc_12CBBD6: var_B0.Rows = 1
  loc_12CBBE0: var_8A = 1
  loc_12CBBFE: var_B8 = "SELECT SF.*,SM.Name as SundryName" & " FROM SundryTypeFix SF LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code" & " Order By SNo "
  loc_12CBC07: unk_48CC57.Execute var_B8, var_C8, -1
  loc_12CBC12: Set var_88 = var_B0
  loc_12CBC36: If (var_88.RecordCount > 0) Then
  loc_12CBC39:   ' Referenced from: 12CC18E
  loc_12CBC48:   If Not(var_88.EOF) Then
  loc_12CBC4B:     var_9C = vbNullString
  loc_12CBC55:     Set var_B0 = Me.FGrid
  loc_12CBC6A:     Set var_D4 = Me.FGrid
  loc_12CBC71:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12CBC79:     var_F8 = CVar(CLng(1)) 'Long
  loc_12CBCA9:     var_118 = CVar(CStr(var_88.Fields.Item("SNo").Value)) 'String
  loc_12CBCB0:     LateIdCallSt
  loc_12CBCFF:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryCode")), CVar(CLng(2)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(2)))) 'String
  loc_12CBD06:     LateIdCallSt
  loc_12CBD51:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SundryName")), CVar(CLng(3)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_12CBD58:     LateIdCallSt
  loc_12CBDA3:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DispName")), CVar(CLng(4)), CVar(CLng(var_8A)), var_D4, var_118)) 'String
  loc_12CBDAA:     LateIdCallSt
  loc_12CBDC0:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_12CBDFC:     LateIdCallSt
  loc_12CBE36:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PerOrAmt")), var_D4, CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("CalcFormula")), CVar(CLng(5)), var_AC, var_D4, var_118)), var_AC)
  loc_12CBE3D:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CBE45:     var_158 = CVar(CLng(6)) 'Long
  loc_12CBE7B:     var_178 = CVar(CStr(IIf((var_B8 = "P"), "Per", "Amt"))) 'String
  loc_12CBE82:     LateIdCallSt
  loc_12CBEFF:     LateIdCallSt
  loc_12CBF3D:     var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("RoundOff")), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("SValue")), "0.00"))), 1, 1, CVar(CLng(7)), CVar(CLng(var_8A)))
  loc_12CBF44:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CBF4C:     var_158 = CVar(CLng(8)) 'Long
  loc_12CBF82:     var_178 = CVar(CStr(IIf((var_B8 = "Y"), "Yes", "No"))) 'String
  loc_12CBF89:     LateIdCallSt
  loc_12CC006:     LateIdCallSt
  loc_12CC055:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Nature")), CVar(CLng(&HA)), CVar(CLng(var_8A)), var_D4, CVar(CStr(Format(CVar(var_88.Fields.Item("Limit")), "0.00"))), 1, 1)) 'String
  loc_12CC05C:     LateIdCallSt
  loc_12CC0A7:     var_118 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("SysYN")), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_D4, var_118, CVar(CLng(9)))) 'String
  loc_12CC0AE:     LateIdCallSt
  loc_12CC0EF:     var_108 = CVar(CLng(var_8A)) 'Long
  loc_12CC0F7:     var_158 = CVar(CLng(&HC)) 'Long
  loc_12CC12D:     var_178 = CVar(CStr(IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("GRP")), var_D4, "Yes", CVar(CLng(var_8A))) = "Y"), "Yes", "No"))) 'String
  loc_12CC134:     LateIdCallSt
  loc_12CC159:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_12CC161:     var_E8 = CVar(CLng(&H10)) 'Long
  loc_12CC166:     var_108 = "Manual"
  loc_12CC16F:     LateIdCallSt
  loc_12CC179:     Set var_D4 = Nothing 
  loc_12CC183:     var_8A = (var_8A + 1)
  loc_12CC189:     var_88.MoveNext
  loc_12CC18E:     GoTo loc_12CBC39
  loc_12CC191:   End If
  loc_12CC1A4:   Me.FGrid.FixedRows = 1
  loc_12CC1AC: End If
  loc_12CC1B2: If (var_8A = 1) Then
  loc_12CC1C8:   Me.FGrid.Rows = 1
  loc_12CC1E5:   var_118 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_12CC1ED:   Set var_D8 = Me.FGrid
  loc_12CC209:   var_9C = 1
  loc_12CC21C:   Me.FGrid.FixedRows = var_9C
  loc_12CC224: End If
  loc_12CC224: Call Proc_82_53_EB9F3C(FGrid.DispID_10000, var_118, var_8A, var_D4, var_108, var_E8, var_9C)
  loc_12CC22E: Set var_88 = Nothing
  loc_12CC231: Exit Sub
  loc_12CC232: ' Referenced from: 12CBBC0
  loc_12CC232: Proc_6_60_E62BC4(var_D4, var_178, var_158)
  loc_12CC237: Exit Sub
End Sub
