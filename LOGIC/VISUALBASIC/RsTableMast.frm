VERSION 5.00
Begin VB.Form RsTableMast
  Caption = "Table Master"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 7995
  ClientHeight = 8790
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 7995
    Height = 450
    TabIndex = 11
  End
  Begin DataGrid DGRest
    Left = 5880
    Top = 3465
    Width = 4230
    Height = 1725
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1890
    Width = 4215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 35
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2205
    Width = 1875
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 2520
    Width = 1875
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 15
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
  Begin MSFlexGrid FGPoint
    Left = 6120
    Top = 2040
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 7
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
    Width = 180
    Height = 540
    TabIndex = 10
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4080
    Top = 5400
    Width = 2790
    Height = 285
    TabIndex = 9
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 705
    Top = 5400
    Width = 2880
    Height = 255
    TabIndex = 8
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Times New Roman"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 1920
    Top = 1890
    Width = 1185
    Height = 240
    TabIndex = 5
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
  Begin Label LblName
    Caption = "Table Code"
    Index = 0
    ForeColor = &HC00000&
    Left = 1920
    Top = 2205
    Width = 1095
    Height = 240
    TabIndex = 4
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
  Begin Label LblLedgerAc
    Caption = "Table Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 1920
    Top = 2520
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
End

Attribute VB_Name = "RsTableMast"


Private Sub TopCtrl1_UnknownEvent_A 'F07C30
  'Data Table: 44B334
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F07B44: On Error Goto loc_F07C28
  loc_F07B54: Me.LblUser.Caption = vbNullString
  loc_F07B69: Me.LblLDt.Caption = vbNullString
  loc_F07B94: Call Proc_40_26_E79FB4(Proc_5_1_100CB50("ADD", Me))
  loc_F07B9F: Call Proc_40_27_EB451C(global_52)
  loc_F07BB2: Set var_88 = Me.Txt
  loc_F07BB8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_94)
  loc_F07BD7: If (var_94.Text = vbNullString) Then
  loc_F07BE5:   Set var_88 = Me.Txt
  loc_F07BEB:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2))
  loc_F07BF3:   var_94.SetFocus
  loc_F07C02: Else
  loc_F07C0D:   Set var_88 = Me.Txt
  loc_F07C13:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_F07C1B:   var_94.SetFocus
  loc_F07C27: End If
  loc_F07C27: Exit Sub
  loc_F07C28: ' Referenced from: F07B44
  loc_F07C28: Proc_6_60_E62BC4(var_94)
  loc_F07C2D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC648C
  'Data Table: 44B334
  loc_EC63F4: On Error Goto loc_EC6484
  loc_EC642E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC643D:   Set var_110 = Me
  loc_EC6454:   Call Proc_40_26_E79FB4(Proc_5_1_100CB50("INI", var_110))
  loc_EC645F:   Call Proc_40_28_1243E48(global_52)
  loc_EC6464:   Call Proc_40_31_E86890()
  loc_EC646C: Else
  loc_EC6472:   Call 0.Method_arg_1E8 (var_110)
  loc_EC647A:   Call var_110.SetFocus
  loc_EC6483: End If
  loc_EC6483: Exit Sub
  loc_EC6484: ' Referenced from: EC63F4
  loc_EC6484: Proc_6_60_E62BC4()
  loc_EC6489: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '10028A4
  'Data Table: 44B334
  Dim unk_44B34B As Connection15
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_120 As String
  Dim var_124 As Fields15
  Dim var_F8 As Variant
  Dim var_118 As Variant
  loc_10026B4: On Error Goto loc_100284B
  loc_10026C5: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_10026C8:   Exit Sub
  loc_10026C9: End If
  loc_1002700: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_F8, var_118) = 6) Then
  loc_100270C:   unk_44B34B.BeginTrans var_11C
  loc_1002713:   var_96 = &HFF
  loc_1002727:   var_94 = Me.Bookmark 'Variant
  loc_100273F:   var_120 = "Delete From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1002776:   var_F8 = CVar(var_120 & "' or LOGSITE_CODE='HO') and Code='") & Me.Fields.Item("Code").Value 
  loc_100277F:   var_118 = var_F8 & "' And Type='TB'" 
  loc_100278D:   unk_44B34B.Execute CStr(var_118), var_13C, -1
  loc_10027B5:   unk_44B34B.CommitTrans
  loc_10027BC:   var_96 = 0
  loc_10027CA:   Me.Requery -1
  loc_10027EA:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_10027F7:     Me.Bookmark = var_94
  loc_10027FF:   Else
  loc_1002813:     If (Me.EOF = 0) Then
  loc_100281C:       Me.MoveLast
  loc_1002821:     End If
  loc_1002821:   End If
  loc_1002821:   Call Proc_40_28_1243E48(var_96, var_140)
  loc_1002842:   Proc_5_0_110649C(&HFF, Me, global_52)
  loc_100284A: End If
  loc_100284A: Exit Sub
  loc_100284B: ' Referenced from: 10026B4
  loc_1002851: If (var_96 = &HFF) Then
  loc_100285A:   unk_44B34B.RollbackTrans
  loc_100285F: End If
  loc_1002867: Set var_124 = Err()
  loc_100286D: Call 0.Method_arg_2C (var_120, 0)
  loc_100288E: MsgBox(CVar(var_120), &H30, " Deletion Error ", var_F8, var_118)
  loc_10028A1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F79A7C
  'Data Table: 44B334
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F79928: On Error Goto loc_F79A73
  loc_F79938: Me.LblUser.Caption = vbNullString
  loc_F7994D: Me.LblLDt.Caption = vbNullString
  loc_F79963: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F79966:   Exit Sub
  loc_F79967: End If
  loc_F7998A: Call Proc_40_26_E79FB4(Proc_5_1_100CB50("EDIT", Me))
  loc_F799A3: Set var_88 = Me.Txt
  loc_F799A9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F799BC: global_64 = var_94.Text
  loc_F799D8: Set var_88 = Me.Txt
  loc_F799DE: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F799F1: global_60 = var_94.Text
  loc_F79A0C: Set var_88 = Me.Txt
  loc_F79A12: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F79A1A: var_94.Enabled = False
  loc_F79A33: Set var_88 = Me.Txt
  loc_F79A39: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F79A41: var_94.Enabled = False
  loc_F79A58: Set var_88 = Me.Txt
  loc_F79A5E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F79A66: var_94.SetFocus
  loc_F79A72: Exit Sub
  loc_F79A73: ' Referenced from: F79928
  loc_F79A73: Proc_6_60_E62BC4(global_52)
  loc_F79A78: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1AF44
  'Data Table: 44B334
  loc_E1AF39: Me.Global.Unload Me
  loc_E1AF41: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F282B8
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F281B8: On Error Goto loc_F28250
  loc_F281C4: var_88 = Me.RecordCount
  loc_F281D2: If (var_88 <= 0) Then
  loc_F281DB:   var_B8 = "Information"
  loc_F281F6:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F28206:   Exit Sub
  loc_F28207: End If
  loc_F28215: MemVar_1F920E4 = "Select RoomMast.Code As SearchCode,RoomMast.code,RoomMast.Name FROM RoomMast where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='TB' Order by RoomMast.Name"
  loc_F28222: MemVar_1F92120 = Me
  loc_F28229: var_10C = "1000,1200"
  loc_F2822F: Proc_6_126_F1BCC0(var_10C)
  loc_F2824A: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F2824F: Exit Sub
  loc_F28250: ' Referenced from: F281B8
  loc_F28258: Set var_110 = Err()
  loc_F2825E: Call 0.Method_arg_1C (var_88)
  loc_F2826F: If (var_88 <> 0) Then
  loc_F2827A:   Set var_110 = Err()
  loc_F28280:   Call 0.Method_arg_2C (var_10C)
  loc_F282A1:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F282B4: End If
  loc_F282B4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E35A78
  'Data Table: 44B334
  loc_E35A68: Proc_5_0_110649C(&HFF, Me)
  loc_E35A70: Call Proc_40_28_1243E48(global_52)
  loc_E35A75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E35958
  'Data Table: 44B334
  loc_E35948: Proc_5_0_110649C(&HFF, Me)
  loc_E35950: Call Proc_40_28_1243E48(global_52)
  loc_E35955: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E359B8
  'Data Table: 44B334
  loc_E359A8: Proc_5_0_110649C(&HFF, Me)
  loc_E359B0: Call Proc_40_28_1243E48(global_52)
  loc_E359B5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E35A18
  'Data Table: 44B334
  loc_E35A08: Proc_5_0_110649C(&HFF, Me)
  loc_E35A10: Call Proc_40_28_1243E48(global_52)
  loc_E35A15: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10A65DC
  'Data Table: 44B334
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_44B34B As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_10A6324: On Error Goto loc_10A6592
  loc_10A633B: var_A0 = "select ROOMMAST.*,DEPART.NAME AS RestName FROM (RoomMast LEFT JOIN DEPART ON DEPART.CODE=ROOMMAST.RESTCODE) Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_10A634B: unk_44B34B.Execute var_A0 & "' or RoomMast.LOGSITE_CODE='HO') and Type='TB' order by ROOMMAST.Name", var_C4, -1
  loc_10A6356: Set var_88 = var_C8
  loc_10A636C: var_CC = var_88.RecordCount
  loc_10A637A: If (var_CC = 0) Then
  loc_10A6396:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_10A63A6:   Exit Sub
  loc_10A63A7: End If
  loc_10A63BD: Set var_C8 = var_88 
  loc_10A63C9: var_12E = CreateFieldDefFile(var_C8, MemVar_1F920B4 & "\TableMast.ttx")
  loc_10A63D3: Set var_88 = var_C8
  loc_10A63D9: var_B4 = CVar(var_12E) 'Integer
  loc_10A63DC: var_98 = var_B4 'Variant
  loc_10A63F8: var_A0 = MemVar_1F920B4 & "\TableMast.RPT"
  loc_10A6401: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_10A640C: MemVar_1F921E4 = var_C8
  loc_10A6427: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_10A642F: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_10A643B: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_10A6454:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A645C:   Call 0.Method_arg_20 (var_138)
  loc_10A6464:   Call 0.Method_arg_30 (var_A0)
  loc_10A64AA:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10A64B6:     Call 0.Method_arg_50 (var_A0)
  loc_10A64BF:     var_A4 = "'" & var_A0
  loc_10A64D9:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_10A64E1:     Call 0.Method_arg_20 (var_138)
  loc_10A64E9:     Call 0.Method_arg_38 (var_A4 & "'")
  loc_10A64FE:   End If
  loc_10A6501: Next var_132 'Integer
  loc_10A651F: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_10A6527: Call 0.Method_arg_2C (var_DC)
  loc_10A6535: Call 0.Method_arg_150 (var_FC)
  loc_10A6540: Call 0.Method_arg_50 (var_A0)
  loc_10A654A: Set var_138 = Nothing
  loc_10A6564: Set var_C8 = MemVar_1F921E4 
  loc_10A6570: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_10A657B: MemVar_1F921E4 = var_C8
  loc_10A658E: Set var_88 = Nothing
  loc_10A6591: Exit Sub
  loc_10A6592: ' Referenced from: 10A6324
  loc_10A659A: Set var_C8 = Err()
  loc_10A65A0: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_10A65AB: Call 0.Method_arg_50 (var_A4)
  loc_10A65C7: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_10A65DA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '123B3B0
  'Data Table: 44B334
  Dim unk_44B34B As Connection15
  Dim var_9C As String
  Dim var_94 As TextBox
  Dim var_B8 As String
  Dim var_C4 As String
  Dim var_BC As TextBox
  Dim var_D0 As TextBox
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_12C As String
  Dim var_13C As Variant
  Dim var_1A0 As Variant
  Dim Me As Recordset15
  Dim var_C0 As String
  loc_123AED4: On Error Goto loc_123B35D
  loc_123AEDB: var_86 = CByte(0) 'Byte
  loc_123AEEA: Set var_90 = Me.Txt
  loc_123AEF0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_123AF19: If (Proc_6_27_EA565C(var_94, "Code") = 0) Then
  loc_123AF23:   Call Txt_GotFocus()
  loc_123AF28:   Exit Sub
  loc_123AF29: End If
  loc_123AF34: Set var_90 = Me.Txt
  loc_123AF3A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_123AF63: If (Proc_6_27_EA565C(var_94, "Name") = 0) Then
  loc_123AF6D:   Call Txt_GotFocus()
  loc_123AF72:   Exit Sub
  loc_123AF73: End If
  loc_123AF7E: Set var_90 = Me.Txt
  loc_123AF84: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94, CInt(1))
  loc_123AFAD: If (Proc_6_27_EA565C(var_94, "Outlet Name") = 0) Then
  loc_123AFB7:   Call Txt_GotFocus()
  loc_123AFBC:   Exit Sub
  loc_123AFBD: End If
  loc_123AFC0: Call Proc_40_29_10DBE88(var_9E, CInt(2))
  loc_123AFCB: If (var_9E = &HFF) Then
  loc_123AFCE:   Exit Sub
  loc_123AFCF: End If
  loc_123AFD8: unk_44B34B.BeginTrans var_A4
  loc_123AFE1: var_86 = CByte(1) 'Byte
  loc_123AFE9: Set var_90 = Me.TopCtrl1
  loc_123AFEF: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_123AFF7: var_9C = CStr(var_94)
  loc_123B008: If (var_9C = "Add") Then
  loc_123B029:   Set var_90 = Me.Txt
  loc_123B02F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Insert Into RoomMast(Type,Code,Name,RoomCat,InclCount,RestCode,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('TB','")
  loc_123B037:   var_1A0 = var_94.Text
  loc_123B040:   var_B8 = -1 & var_9C
  loc_123B047:   var_C4 = var_B8 & "','"
  loc_123B058:   Set var_98 = Me.Txt
  loc_123B05E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C0)
  loc_123B066:   var_C4 = var_BC.Text
  loc_123B087:   Set var_CC = Me.Txt
  loc_123B08D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_D0)
  loc_123B0D2:   Proc_6_7_F25D88(var_FC, Date)
  loc_123B0E3:   var_13C = CVar(var_1A4 & var_C0 & "','TABLE','N','" & var_D0.Tag & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_FC & ",'A','" 
  loc_123B104:   unk_44B34B.Execute CStr(var_13C & CVar(MemVar_1F92078) & "')"), , 
  loc_123B14D: Else
  loc_123B16B:   Set var_90 = Me.Txt
  loc_123B171:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_9C, "UPDATE RoomMast SET Name='")
  loc_123B179:   var_1B4 = var_94.Text
  loc_123B182:   var_B8 = -1 & var_9C
  loc_123B189:   var_C4 = var_B8 & "',RestCode='"
  loc_123B19A:   Set var_98 = Me.Txt
  loc_123B1A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_BC, var_C0)
  loc_123B1A8:   var_C4 = var_BC.Tag
  loc_123B1D4:   var_10C = CVar(var_1A4 & var_C0 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_123B1E5:   Proc_6_7_F25D88(var_FC, Date)
  loc_123B1ED:   var_11C = var_10C & var_FC 
  loc_123B1F1:   var_12C = " ,U_AE='E' WHERE Code='"
  loc_123B208:   Set var_CC = Me.Txt
  loc_123B20E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_D0)
  loc_123B238:   unk_44B34B.Execute CStr(var_11C & var_12C & CVar(var_D0.Text) & "' and Type='TB'"), , 
  loc_123B27A: End If
  loc_123B280: unk_44B34B.CommitTrans
  loc_123B289: var_86 = CByte(0) 'Byte
  loc_123B298: Me.Requery -1
  loc_123B2BC: Set var_90 = Me.Txt
  loc_123B2C2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "Code='")
  loc_123B2CA: 0 = var_94.Text
  loc_123B2E3: Me.Find 1 & var_9C & "'", var_12C, 
  loc_123B2FC: Set var_90 = Me.TopCtrl1
  loc_123B302: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_123B31B: If (CStr() = "Add") Then
  loc_123B31E:   Call TopCtrl1_UnknownEvent_A()
  loc_123B323:   Exit Sub
  loc_123B324: End If
  loc_123B339: var_9C = "INI"
  loc_123B347: Call Proc_40_26_E79FB4(Proc_5_1_100CB50(var_9C, Me))
  loc_123B352: Call Proc_40_31_E86890(global_52)
  loc_123B357: Call Proc_40_28_1243E48()
  loc_123B35C: Exit Sub
  loc_123B35D: ' Referenced from: 123AED4
  loc_123B366: If (CInt(var_86) = 1) Then
  loc_123B36F:   unk_44B34B.RollbackTrans
  loc_123B374: End If
  loc_123B37C: Set var_90 = Err()
  loc_123B382: Call 0.Method_arg_2C (var_9C)
  loc_123B39B: MsgBox(CVar(var_9C), &H10, var_FC, var_10C, var_11C)
  loc_123B3AE: Exit Sub
End Sub

Private Sub Form_Load() '104BD70
  'Data Table: 44B334
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_44B34B As Connection15
  Dim var_DC As Variant
  loc_104BB20: On Error Goto loc_104BD2A
  loc_104BB32: Me.LblUser.Left = CDbl(13500)
  loc_104BB49: Me.LblUser.Top = CDbl(7800)
  loc_104BB60: Me.LblLDt.Top = CDbl(8160)
  loc_104BB77: Me.LblLDt.Left = CDbl(13500)
  loc_104BB86: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_104BB99: Set var_8C = Me.Txt
  loc_104BB9F: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_104BBBE: Me.DGRest.Left = CVar(var_90.Left)
  loc_104BBDA: Set var_B8 = Me.Txt
  loc_104BBE0: Call 0.Method_Form_Load0 (CInt(2), var_BC)
  loc_104BBFB: Set var_8C = Me.Txt
  loc_104BC01: Call 0.Method_Form_Load0 (CInt(2), var_90)
  loc_104BC19: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_104BC28: Me.DGRest.Top = CVar(var_90.Left)
  loc_104BC4E: var_C8 = "SELECT RoomMast.Code,RoomMast.Name,RestCode,D.Name as RestName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_104BC5E: unk_44B34B.Execute var_C8 & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' ORDER BY RoomMast.Name", var_DC, -1
  loc_104BC9F: var_CC = "Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and OutletYN='Y' aND RestType not in ('Room Service','Banquet') Order by Name"
  loc_104BCA8: unk_44B34B.Execute var_CC, var_DC, -1
  loc_104BCD7: CVarUnk
  loc_104BCDC: VerifyVarObj
  loc_104BCE2: Set var_8C = Me.DGRest
  loc_104BCE8: LateIdStAd
  loc_104BD02: Set var_8C = Me
  loc_104BD0B: var_C8 = "INI"
  loc_104BD19: Call Proc_40_26_E79FB4(Proc_5_1_100CB50(var_C8, var_8C, var_8C, var_8C), var_8C)
  loc_104BD24: Call Proc_40_28_1243E48(var_8C)
  loc_104BD29: Exit Sub
  loc_104BD2A: ' Referenced from: 104BB20
  loc_104BD32: Set var_8C = Err()
  loc_104BD38: Call 0.Method_arg_2C (var_C8)
  loc_104BD59: MsgBox(CVar(var_C8), &H40, "Information", var_100, var_120)
  loc_104BD6C: Exit Sub
  loc_104BD6D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED51E8
  'Data Table: 44B334
  Dim var_8C As Label
  Dim var_4301 As Double
  loc_ED5146: Call 0.Method_arg_50 (var_88)
  loc_ED5158: Me.LblFormCaption.Caption = var_88
  loc_ED5171: Me.LblFormCaption.Left = CDbl(0)
  loc_ED517D: Set var_A0 = Me.TopCtrl1
  loc_ED5183: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED5190: Set var_8C = Me.TopCtrl1
  loc_ED5196: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED51B0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED51CB: Call 0.Method_arg_100 (var_B8)
  loc_ED51DD: Me.LblFormCaption.Width = var_B8
  loc_ED51E5: Exit Sub
  loc_ED51E6: var_4301 = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E109E4
  'Data Table: 44B334
  loc_E109DB: Set global_52 = Nothing
  loc_E109E2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E89EA4
  'Data Table: 44B334
  loc_E89E40: On Error Goto loc_E89E60
  loc_E89E57: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E89E5F: Exit Sub
  loc_E89E60: ' Referenced from: E89E40
  loc_E89E68: Set var_88 = Err()
  loc_E89E6E: Call 0.Method_arg_2C (var_8C, Shift)
  loc_E89E8F: MsgBox(CVar(var_8C), &H40, "Information", var_DC, var_FC)
  loc_E89EA2: Exit Sub
  loc_E89EA3: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F4ABE4
  'Data Table: 44B334
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4AADB: Me.DGRest.Visible = False
  loc_F4AAFA: If (Me.RecordCount > 0) Then
  loc_F4AB39:   Set var_B4 = Me.Txt
  loc_F4AB3F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4AB47:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4AB7A:   var_B0 = Me.Fields.Item("Code")
  loc_F4AB99:   Set var_B4 = Me.Txt
  loc_F4AB9F:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4ABA7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4ABBD: End If
  loc_F4ABC8: Set var_A8 = Me.Txt
  loc_F4ABCE: Call 0.Method_DGRest_UnknownEvent_90 (CInt(2))
  loc_F4ABD6: var_B0.SetFocus
  loc_F4ABE2: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E6E9E8
  'Data Table: 44B334
  loc_E6E9A6: Proc_6_153_E91194(Me.DGRest, arg_14)
  loc_E6E9BD: Set var_8C = Me.FGPoint
  loc_E6E9D9: Proc_6_138_106D6F8(Me.DGRest, global_68, CInt(2))
  loc_E6E9E7: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10090C8
  'Data Table: 44B334
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_1008ED6: Set var_88 = Me.Txt
  loc_1008EDC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1008EEA: Proc_6_74_E226B0(var_8C)
  loc_1008EF6: Call Proc_40_31_E86890(var_8C)
  loc_1008EFE: var_92 = Index
  loc_1008F09: If (var_92 = CInt(2)) Then
  loc_1008F23:   If (Me.RecordCount > 0) Then
  loc_1008F31:     Set var_8C = Me.FGPoint
  loc_1008F49:     Proc_6_137_1193554(Me.DGRest, global_68, Index)
  loc_1008F57:   End If
  loc_1008FA5:   Set var_88 = Me.Txt
  loc_1008FAB:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1008FB3:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1008FCB:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1008FDB:     Set var_88 = Me.Txt
  loc_1008FE1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1008FE9:     var_8C.Tag = vbNullString
  loc_1008FF5:     Exit Sub
  loc_1008FF6:   End If
  loc_1009003:   Set var_88 = Me.Txt
  loc_1009009:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1009011:   var_A0 = var_8C.Text
  loc_1009023:   var_B0 = "Name"
  loc_100905E:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1009067:     Me.MoveFirst
  loc_100908A:     Set var_88 = Me.Txt
  loc_1009090:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name='")
  loc_1009098:     0 = var_8C.Text
  loc_10090B1:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_10090C6:   End If
  loc_10090C6: End If
  loc_10090C6: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '100B178
  'Data Table: 44B334
  Dim Me As Recordset15
  loc_100AF86: If (CLng(Shift) = &H1B) Then
  loc_100AF89:   Call Proc_40_31_E86890()
  loc_100AF8E:   Exit Sub
  loc_100AF8F: End If
  loc_100AF9D: If (KeyCode = CInt(2)) Then
  loc_100AFBD:   Set var_9C = Me.FGPoint
  loc_100AFC8:   Set var_98 = Nothing
  loc_100AFF6:   Proc_6_69_134A198(Me.DGRest, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_100B065:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_100B06C:     Set var_98 = Me.DGRest
  loc_100B08B:     Proc_6_138_106D6F8(var_98, global_68, KeyCode, Me.FGPoint, 1)
  loc_100B099:   End If
  loc_100B099: End If
  loc_100B0B5: If (CBool(Me.DGRest.Visible) = 0) Then
  loc_100B0CB:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_100B0D4:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_100B0D9:   End If
  loc_100B0F7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(1))) Then
  loc_100B100:     Call Txt_Validate(KeyCode)
  loc_100B10B:     If (var_86 = 0) Then
  loc_100B145:       If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_100B148:         Call TopCtrl1_UnknownEvent_16()
  loc_100B14D:       End If
  loc_100B14D:       Exit Sub
  loc_100B14E:     End If
  loc_100B151:   Else
  loc_100B166:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_100B16F:       Proc_6_75_E527CC(Shift, arg_14, var_86)
  loc_100B174:     End If
  loc_100B174:   End If
  loc_100B174: End If
  loc_100B174: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDA798
  'Data Table: 44B334
  Dim var_94 As Variant
  loc_EDA6EE: Proc_6_133_E7EF78(var_94)
  loc_EDA70B: If (KeyAscii = CInt(2)) Then
  loc_EDA72A:   If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EDA757:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, CInt(Me.DGRest.Visible), "Name")
  loc_EDA789:     Proc_6_138_106D6F8(Me.DGRest, global_68, KeyAscii, Me.FGPoint)
  loc_EDA797:   End If
  loc_EDA797: End If
  loc_EDA797: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E0039C
  'Data Table: 44B334
  Dim var_86 As Integer
  loc_E00397: var_86 = KeyCode
  loc_E0039A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4F44C
  'Data Table: 44B334
  loc_E4F42A: Set var_88 = Me.Txt
  loc_E4F430: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4F43E: Proc_6_73_E22704(var_8C)
  loc_E4F44A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'FCD3EC
  'Data Table: 44B334
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_FCD233: var_86 = Cancel
  loc_FCD23E: If (var_86 = CInt(0)) Then
  loc_FCD244:   Call Proc_40_29_10DBE88(var_88)
  loc_FCD24F:   If (var_88 = &HFF) Then
  loc_FCD254:     arg_10 = &HFF
  loc_FCD257:     Exit Sub
  loc_FCD258:   End If
  loc_FCD25B: Else
  loc_FCD263:   If (var_86 = CInt(1)) Then
  loc_FCD269:     Call Proc_40_30_10DD948(var_88, arg_10)
  loc_FCD274:     If (var_88 = &HFF) Then
  loc_FCD279:       arg_10 = &HFF
  loc_FCD27C:       Exit Sub
  loc_FCD27D:     End If
  loc_FCD280:   Else
  loc_FCD288:     If (var_86 = CInt(2)) Then
  loc_FCD2D9:       Set var_94 = Me.Txt
  loc_FCD2DF:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_FCD2E7:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_FCD2FF:       If (arg_10 Or (var_9C = vbNullString)) Then
  loc_FCD30F:         Set var_94 = Me.Txt
  loc_FCD315:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_FCD31D:         var_98.Tag = vbNullString
  loc_FCD329:         Exit Sub
  loc_FCD32A:       End If
  loc_FCD365:       Set var_B0 = Me.Txt
  loc_FCD36B:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FCD373:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FCD3C4:       Set var_B0 = Me.Txt
  loc_FCD3CA:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_FCD3D2:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FCD3E8:     End If
  loc_FCD3E8:   End If
  loc_FCD3E8: End If
  loc_FCD3E8: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E36014
  'Data Table: 44B334
  loc_E36008: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E3600B:   Call DGRest_UnknownEvent_9()
  loc_E36010: End If
  loc_E36010: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC4C04
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC4B7A: On Error Goto loc_EC4BBF
  loc_EC4B83: Me.MoveFirst
  loc_EC4B9D: var_8C = "code='" & MyValue
  loc_EC4BAD: Me.Find var_8C & "'", 0, 1
  loc_EC4BB9: Call Proc_40_28_1243E48(var_A0)
  loc_EC4BBE: Exit Sub
  loc_EC4BBF: ' Referenced from: EC4B7A
  loc_EC4BC7: Set var_A4 = Err()
  loc_EC4BCD: Call 0.Method_arg_2C (var_8C)
  loc_EC4BEE: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC4C01: Exit Sub
  loc_EC4C02: Exit Sub
End Sub

Public Sub Proc_40_26_E79FB4(arg_C) 'E79FB4
  'Data Table: 44B334
  Dim var_98 As TextBox
  loc_E79F62: Set var_8C = Me.Txt
  loc_E79F68: Call 0.Method_Proc_40_26_E79FB4C (var_8E, var_86)
  loc_E79F78: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79F8E:   Set var_8C = Me.Txt
  loc_E79F94:   Call 0.Method_Proc_40_26_E79FB40 (CInt(var_86), var_98)
  loc_E79F9C:   var_98.Enabled = arg_C
  loc_E79FAB: Next var_92 'Byte
  loc_E79FB1: Exit Sub
End Sub

Public Sub Proc_40_27_EB451C
  'Data Table: 44B334
  Dim var_98 As TextBox
  loc_EB4486: global_60 = vbNullString
  loc_EB4498: Set var_8C = Me.Txt
  loc_EB449E: Call 0.Method_Proc_40_27_EB451CC (var_8E, var_86)
  loc_EB44AE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB44BB:   If (var_86 <> 2) Then
  loc_EB44CE:     Set var_8C = Me.Txt
  loc_EB44D4:     Call 0.Method_Proc_40_27_EB451C0 (CInt(var_86), var_98)
  loc_EB44DC:     var_98.Text = vbNullString
  loc_EB44F8:     Set var_8C = Me.Txt
  loc_EB44FE:     Call 0.Method_Proc_40_27_EB451C0 (CInt(var_86), var_98)
  loc_EB4506:     var_98.Tag = vbNullString
  loc_EB4512:   End If
  loc_EB4515: Next var_92 'Byte
  loc_EB451B: Exit Sub
End Sub

Public Sub Proc_40_28_1243E48
  'Data Table: 44B334
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_F4 As Variant
  Dim var_F8 As String
  Dim unk_44B34B As Connection15
  Dim var_88 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As TextBox
  loc_1243944: On Error Goto loc_1243E05
  loc_124395E: If (Me.RecordCount > 0) Then
  loc_12439B7:   unk_44B34B.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_118, -1
  loc_12439C2:   Set var_88 = var_11C
  loc_1243A16:   var_11C = var_88.Fields
  loc_1243A7F:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1243AC4:   Me.LblUser.Caption = CStr(var_11C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_1243B3E:   var_120 = var_88.Fields.Item("U_AE")
  loc_1243B57:   var_118 = "entdt : "
  loc_1243B62:   var_F4 = "Last Update : "
  loc_1243B9F:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_120)) = "E"), var_F4, var_118))
  loc_1243BE4:   Me.LblLDt.Caption = CStr(var_184 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1243C1C: End If
  loc_1243C22: Proc_183_45_E5C118(global_52)
  loc_1243C3E: If (Me.RecordCount <= 0) Then
  loc_1243C41:   Call Proc_40_27_EB451C()
  loc_1243C49: Else
  loc_1243C7D:   global_56 = CStr(Me.Fields.Item("Name").Value)
  loc_1243CCA:   Set var_11C = Me.Txt
  loc_1243CD0:   Call 0.Method_Proc_40_28_1243E480 (CInt(0), var_120)
  loc_1243CD8:   var_120.Text = CStr(Me.Fields.Item("Code").Value)
  loc_1243D2A:   Set var_11C = Me.Txt
  loc_1243D30:   Call 0.Method_Proc_40_28_1243E480 (CInt(1), var_120)
  loc_1243D38:   var_120.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1243D87:   Set var_11C = Me.Txt
  loc_1243D8D:   Call 0.Method_Proc_40_28_1243E480 (CInt(2), var_120)
  loc_1243D95:   var_120.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestName")))
  loc_1243DD4:   var_F8 = Proc_6_38_E68A98(CVar(Me.Fields.Item("RestCode")))
  loc_1243DE2:   Set var_11C = Me.Txt
  loc_1243DE8:   Call 0.Method_Proc_40_28_1243E480 (CInt(2), var_120)
  loc_1243DF0:   var_120.Tag = var_F8
  loc_1243E04: End If
  loc_1243E04: Exit Sub
  loc_1243E05: ' Referenced from: 1243944
  loc_1243E0D: Set var_90 = Err()
  loc_1243E13: Call 0.Method_arg_2C (var_F8)
  loc_1243E34: MsgBox(CVar(var_F8), &H40, "Information", var_F4, var_118)
  loc_1243E47: Exit Sub
End Sub

Public Sub Proc_40_29_10DBE88
  'Data Table: 44B334
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim unk_44B34B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10DBBB8: Set var_8C = Me.TopCtrl1
  loc_10DBBBE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10DBBD7: If (CStr() = "Add") Then
  loc_10DBBE0:   var_F0 = 0
  loc_10DBC04:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DBC15:   Set var_8C = Me.Txt
  loc_10DBC1B:   Call 0.Method_Proc_40_29_10DBE880 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DBC44:   Set var_B4 = Me.Txt
  loc_10DBC4A:   Call 0.Method_Proc_40_29_10DBE880 (CInt(0), var_B8, var_BC, var_E0 & var_A8 & "' and COde='")
  loc_10DBC52:   var_F0 = var_B8.Text
  loc_10DBC6B:   unk_44B34B.Execute var_F4 & var_BC & "'", var_104, 
  loc_10DBC73:    = var_A4.Tag.Fields
  loc_10DBC7B:    = var_E0.Item()
  loc_10DBC83:    = var_F4.Value
  loc_10DBCBE:   If (var_104 > 0) Then
  loc_10DBCCC:     var_104 = "Information"
  loc_10DBCDC:     var_9C = "Duplicate  Name"
  loc_10DBCE2:     MsgBox(var_9C, &H40, var_104, var_124, var_144)
  loc_10DBCFD:     Set var_8C = Me.Txt
  loc_10DBD03:     Call 0.Method_Proc_40_29_10DBE880 (CInt(1))
  loc_10DBD0B:     var_A4.SetFocus
  loc_10DBD1C:     Proc_40_29_10DBE88 = &HFF
  loc_10DBD22:   End If
  loc_10DBD25: Else
  loc_10DBD2B:   var_F0 = 0
  loc_10DBD4F:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DBD60:   Set var_8C = Me.Txt
  loc_10DBD66:   Call 0.Method_Proc_40_29_10DBE880 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DBD8F:   Set var_B4 = Me.Txt
  loc_10DBD95:   Call 0.Method_Proc_40_29_10DBE880 (CInt(0), var_B8, var_BC, var_E0 & var_A8 & "'  And COde='")
  loc_10DBD9D:   var_F0 = var_B8.Text
  loc_10DBDC7:   unk_44B34B.Execute var_F4 & var_BC & "' And Code<>'" & global_64 & "'", var_104, var_A4
  loc_10DBDCF:    = var_A4.Tag.Fields
  loc_10DBDD7:    = var_E0.Item()
  loc_10DBDDF:    = var_F4.Value
  loc_10DBE1E:   If (var_104 > 0) Then
  loc_10DBE42:     MsgBox("Duplicate  Name", &H40, "Information", var_124, var_144)
  loc_10DBE5D:     Set var_8C = Me.Txt
  loc_10DBE63:     Call 0.Method_Proc_40_29_10DBE880 (CInt(1))
  loc_10DBE6B:     var_A4.SetFocus
  loc_10DBE7C:     Proc_40_29_10DBE88 = &HFF
  loc_10DBE82:   End If
  loc_10DBE82: End If
  loc_10DBE82: Proc_40_29_10DBE88 = var_A4
End Sub

Public Sub Proc_40_30_10DD948
  'Data Table: 44B334
  Dim var_F0 As Variant
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_B8 As TextBox
  Dim unk_44B34B As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_10DD678: Set var_8C = Me.TopCtrl1
  loc_10DD67E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10DD697: If (CStr() = "Add") Then
  loc_10DD6A0:   var_F0 = 0
  loc_10DD6C4:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DD6D5:   Set var_8C = Me.Txt
  loc_10DD6DB:   Call 0.Method_Proc_40_30_10DD9480 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DD704:   Set var_B4 = Me.Txt
  loc_10DD70A:   Call 0.Method_Proc_40_30_10DD9480 (CInt(1), var_B8, var_BC, var_E0 & var_A8 & "' And Name='")
  loc_10DD712:   var_F0 = var_B8.Text
  loc_10DD72B:   unk_44B34B.Execute var_F4 & var_BC & "'", var_104, 
  loc_10DD733:    = var_A4.Tag.Fields
  loc_10DD73B:    = var_E0.Item()
  loc_10DD743:    = var_F4.Value
  loc_10DD77E:   If (var_104 > 0) Then
  loc_10DD78C:     var_104 = "Information"
  loc_10DD79C:     var_9C = "Duplicate  Name"
  loc_10DD7A2:     MsgBox(var_9C, &H40, var_104, var_124, var_144)
  loc_10DD7BD:     Set var_8C = Me.Txt
  loc_10DD7C3:     Call 0.Method_Proc_40_30_10DD9480 (CInt(1))
  loc_10DD7CB:     var_A4.SetFocus
  loc_10DD7DC:     Proc_40_30_10DD948 = &HFF
  loc_10DD7E2:   End If
  loc_10DD7E5: Else
  loc_10DD7EB:   var_F0 = 0
  loc_10DD80F:   var_AC = "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Type='TB' And Restcode='"
  loc_10DD820:   Set var_8C = Me.Txt
  loc_10DD826:   Call 0.Method_Proc_40_30_10DD9480 (CInt(2), var_A4, var_A8, var_AC, var_9C, -1)
  loc_10DD84F:   Set var_B4 = Me.Txt
  loc_10DD855:   Call 0.Method_Proc_40_30_10DD9480 (CInt(1), var_B8, var_BC, var_E0 & var_A8 & "' And Name='")
  loc_10DD85D:   var_F0 = var_B8.Text
  loc_10DD887:   unk_44B34B.Execute var_F4 & var_BC & "' And Name<>'" & global_60 & "'", var_104, var_A4
  loc_10DD88F:    = var_A4.Tag.Fields
  loc_10DD897:    = var_E0.Item()
  loc_10DD89F:    = var_F4.Value
  loc_10DD8DE:   If (var_104 > 0) Then
  loc_10DD902:     MsgBox("Duplicate  Name", &H40, "Information", var_124, var_144)
  loc_10DD91D:     Set var_8C = Me.Txt
  loc_10DD923:     Call 0.Method_Proc_40_30_10DD9480 (CInt(1))
  loc_10DD92B:     var_A4.SetFocus
  loc_10DD93C:     Proc_40_30_10DD948 = &HFF
  loc_10DD942:   End If
  loc_10DD942: End If
  loc_10DD942: Proc_40_30_10DD948 = var_A4
End Sub

Public Sub Proc_40_31_E86890
  'Data Table: 44B334
  loc_E8683C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E8684E:   Me.DGRest.Visible = False
  loc_E86856: End If
  loc_E86872: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E86884:   Me.FGPoint.Visible = False
  loc_E8688C: End If
  loc_E8688C: Exit Sub
  loc_E8688D: BranchFVar 3583
End Sub
