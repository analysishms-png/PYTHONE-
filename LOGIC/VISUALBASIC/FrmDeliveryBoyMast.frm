VERSION 5.00
Begin VB.Form FrmDeliveryBoyMast
  Caption = "Delivery Boy Master"
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
  ClientTop = 345
  ClientWidth = 8070
  ClientHeight = 8760
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8070
    Height = 450
    TabIndex = 7
  End
  Begin DataGrid DGHelp
    Left = 1095
    Top = 2250
    Width = 4230
    Height = 1530
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 2
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2265
    Top = 1635
    Width = 4215
    Height = 285
    TabIndex = 0
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
  Begin MSFlexGrid FGPoint
    Left = 5490
    Top = 1440
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 3
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 435
    Width = 180
    Height = 540
    TabIndex = 6
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 225
    Top = 7980
    Width = 2880
    Height = 255
    TabIndex = 5
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 30
    Top = 8355
    Width = 2790
    Height = 285
    TabIndex = 4
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
  Begin Label LblName
    Caption = "Delivery Boy Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 360
    Top = 1665
    Width = 1815
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

Attribute VB_Name = "FrmDeliveryBoyMast"


Private Sub TopCtrl1_UnknownEvent_A 'EFD6A4
  'Data Table: 444598
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EFD5D8: On Error Goto loc_EFD65E
  loc_EFD5E8: Me.LblUser.Caption = vbNullString
  loc_EFD5FD: Me.LblLDt.Caption = vbNullString
  loc_EFD605: Call Proc_304_28_E7946C()
  loc_EFD61F: var_8C = "ADD"
  loc_EFD62D: Call Proc_304_27_E78FAC(Proc_5_1_100CB50(var_8C, Me))
  loc_EFD643: Set var_88 = Me.Txt
  loc_EFD649: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_EFD651: var_94.SetFocus
  loc_EFD65D: Exit Sub
  loc_EFD65E: ' Referenced from: EFD5D8
  loc_EFD666: Set var_88 = Err()
  loc_EFD66C: Call 0.Method_arg_2C (var_8C)
  loc_EFD68D: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EFD6A0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EC0C2C
  'Data Table: 444598
  loc_EC0B94: On Error Goto loc_EC0C24
  loc_EC0BCE: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EC0BD1:   Call Proc_304_31_E83F38()
  loc_EC0BE2:   Set var_110 = Me
  loc_EC0BF9:   Call Proc_304_27_E78FAC(Proc_5_1_100CB50("INI", var_110))
  loc_EC0C04:   Call Proc_304_29_11D3B44(global_52)
  loc_EC0C0C: Else
  loc_EC0C12:   Call 0.Method_arg_1E8 (var_110)
  loc_EC0C1A:   Call var_110.SetFocus
  loc_EC0C23: End If
  loc_EC0C23: Exit Sub
  loc_EC0C24: ' Referenced from: EC0B94
  loc_EC0C24: Proc_6_60_E62BC4()
  loc_EC0C29: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11417E4
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_96 As Integer
  Dim unk_4445AC As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_1141484: On Error Goto loc_114178B
  loc_1141495: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1141498:   Exit Sub
  loc_1141499: End If
  loc_11414CB: var_D4 = "KOT Entry"
  loc_1141513: If (Proc_6_108_1010FEC(MemVar_1F92044, "KOT", "DeliveryBoy", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_1141516:   Exit Sub
  loc_1141517: End If
  loc_114154E: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_1141553:   var_96 = 0
  loc_114155F:   unk_4445AC.BeginTrans var_D0
  loc_1141566:   var_96 = &HFF
  loc_114157A:   var_94 = Me.Bookmark 'Variant
  loc_11415C6:   var_118 = "Delete From DeliveryBoy Where Code='" & Me.Fields.Item("Code").Value & "'" 
  loc_11415D4:   unk_4445AC.Execute CStr(var_118), var_138, -1
  loc_114161F:   var_168 = 0
  loc_1141632:   var_160 = 0
  loc_114163D:   var_15C = 0
  loc_1141650:   var_154 = 0
  loc_114165B:   var_150 = 0
  loc_114166E:   var_148 = 0
  loc_11416AE:   var_B4 = "DeliveryBoy"
  loc_11416B7:   Proc_154_5_10E33A4(MemVar_1F92044, var_B4, "Code", &HC8, CStr(Me.Fields.Item("Code").Value), 0, 0, 0)
  loc_11416E5:   unk_4445AC.CommitTrans
  loc_11416EC:   var_96 = 0
  loc_11416FA:   Me.Requery -1
  loc_114170A:   Me.Requery -1
  loc_114172A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1141737:     Me.Bookmark = var_94
  loc_114173F:   Else
  loc_1141753:     If (Me.EOF = 0) Then
  loc_114175C:       Me.MoveLast
  loc_1141761:     End If
  loc_1141761:   End If
  loc_1141761:   Call Proc_304_29_11D3B44(var_96, var_148, 0, var_150, var_154)
  loc_1141782:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_114178A: End If
  loc_114178A: Exit Sub
  loc_114178B: ' Referenced from: 1141484
  loc_1141791: If (var_96 = &HFF) Then
  loc_114179A:   unk_4445AC.RollbackTrans
  loc_114179F: End If
  loc_11417A7: Set var_9C = Err()
  loc_11417AD: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_11417CE: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_11417E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6375C
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_F63638: On Error Goto loc_F63719
  loc_F63649: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_F6364C:   Exit Sub
  loc_F6364D: End If
  loc_F63664: If (Me.RecordCount > 0) Then
  loc_F6367C:   var_8C = "EDIT"
  loc_F6368A:   Call Proc_304_27_E78FAC(Proc_5_1_100CB50(var_8C, Me))
  loc_F636A0:   Set var_90 = Me.Txt
  loc_F636A6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F636AE:   var_98.SetFocus
  loc_F636BD: Else
  loc_F636DE:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F636EE: End If
  loc_F636FB: Me.LblUser.Caption = vbNullString
  loc_F63710: Me.LblLDt.Caption = vbNullString
  loc_F63718: Exit Sub
  loc_F63719: ' Referenced from: F63638
  loc_F63721: Set var_90 = Err()
  loc_F63727: Call 0.Method_arg_2C (var_8C)
  loc_F63748: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6375B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1A448
  'Data Table: 444598
  loc_E1A43D: Me.Global.Unload Me
  loc_E1A445: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28400
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F28300: On Error Goto loc_F28398
  loc_F2830C: var_88 = Me.RecordCount
  loc_F2831A: If (var_88 <= 0) Then
  loc_F28323:   var_B8 = "Information"
  loc_F2833E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F2834E:   Exit Sub
  loc_F2834F: End If
  loc_F2835D: MemVar_1F920E4 = "Select Code As SearchCode,Name FROM DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name"
  loc_F28367: var_10C = "3000"
  loc_F2836D: Proc_6_126_F1BCC0(var_10C)
  loc_F2837B: MemVar_1F92120 = Me
  loc_F28392: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28397: Exit Sub
  loc_F28398: ' Referenced from: F28300
  loc_F283A0: Set var_110 = Err()
  loc_F283A6: Call 0.Method_arg_1C (var_88)
  loc_F283B7: If (var_88 <> 0) Then
  loc_F283C2:   Set var_110 = Err()
  loc_F283C8:   Call 0.Method_arg_2C (var_10C)
  loc_F283E9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F283FC: End If
  loc_F283FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31C98
  'Data Table: 444598
  loc_E31C88: Proc_5_0_110649C(&HFF, Me)
  loc_E31C90: Call Proc_304_29_11D3B44(global_52)
  loc_E31C95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E396D8
  'Data Table: 444598
  loc_E396C8: Proc_5_0_110649C(&HFF, Me)
  loc_E396D0: Call Proc_304_29_11D3B44(global_52)
  loc_E396D5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32658
  'Data Table: 444598
  loc_E32648: Proc_5_0_110649C(&HFF, Me)
  loc_E32650: Call Proc_304_29_11D3B44(global_52)
  loc_E32655: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32538
  'Data Table: 444598
  loc_E32528: Proc_5_0_110649C(&HFF, Me)
  loc_E32530: Call Proc_304_29_11D3B44(global_52)
  loc_E32535: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '108BF6C
  'Data Table: 444598
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4445AC As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_12E As Integer
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_108BCD4: On Error Goto loc_108BF20
  loc_108BCFB: unk_4445AC.Execute "SELECT * from DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') order by Name", var_C4, -1
  loc_108BD06: Set var_88 = var_C8
  loc_108BD1C: var_CC = var_88.RecordCount
  loc_108BD2A: If (var_CC = 0) Then
  loc_108BD46:   MsgBox("No Record Present For Printing", 0, var_EC, var_10C, var_12C)
  loc_108BD56:   Exit Sub
  loc_108BD57: End If
  loc_108BD66: var_A4 = MemVar_1F920B4 & "\DeliveryBoyMast.ttx"
  loc_108BD6D: Set var_C8 = var_88 
  loc_108BD79: var_12E = CreateFieldDefFile(var_C8, var_A4)
  loc_108BD83: Set var_88 = var_C8
  loc_108BD89: var_B4 = CVar(var_12E) 'Integer
  loc_108BD8C: var_98 = var_B4 'Variant
  loc_108BDA8: var_A0 = MemVar_1F920B4 & "\DeliveryBoyMast.RPT"
  loc_108BDB1: Call 0.Method_arg_1C (var_A0, var_B4, var_C8)
  loc_108BDBC: MemVar_1F921E4 = var_C8
  loc_108BDD7: Call 0.Method_arg_90 (var_C8, var_CC, var_9A, 1)
  loc_108BDDF: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_108BDEB: For var_132 =  To CInt(var_CC): var_C8 = var_132 'Integer
  loc_108BE04:   Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108BE0C:   Call 0.Method_arg_20 (var_138)
  loc_108BE14:   Call 0.Method_arg_30 (var_A0)
  loc_108BE5A:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_108BE70:     Call 0.Method_arg_90 (var_C8, CLng(var_9A))
  loc_108BE78:     Call 0.Method_arg_20 (var_138)
  loc_108BE80:     Call 0.Method_arg_38 ("'Delivery Boy Master'")
  loc_108BE8C:   End If
  loc_108BE8F: Next var_132 'Integer
  loc_108BEAD: Call 0.Method_arg_64 (var_C8, CVar(var_88))
  loc_108BEB5: Call 0.Method_arg_2C (var_DC)
  loc_108BEC3: Call 0.Method_arg_150 (var_FC)
  loc_108BECE: Call 0.Method_arg_50 (var_A0)
  loc_108BED8: Set var_138 = Nothing
  loc_108BEF2: Set var_C8 = MemVar_1F921E4 
  loc_108BEFE: Proc_6_99_1483714(var_C8, 0, var_A0)
  loc_108BF09: MemVar_1F921E4 = var_C8
  loc_108BF1C: Set var_88 = Nothing
  loc_108BF1F: Exit Sub
  loc_108BF20: ' Referenced from: 108BCD4
  loc_108BF28: Set var_C8 = Err()
  loc_108BF2E: Call 0.Method_arg_2C (var_A0, &HFF)
  loc_108BF39: Call 0.Method_arg_50 (var_A4)
  loc_108BF55: MsgBox(CVar(var_A0), &H10, CVar(var_A4), var_10C, var_12C)
  loc_108BF68: Exit Sub
  loc_108BF69: arg_20FC = var_138 'Address Function
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0ABAC
  'Data Table: 444598
  Dim Me As Recordset15
  loc_E0ABA3: Me.Requery -1
  loc_E0ABA8: Exit Sub
  loc_E0ABA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12142D0
  'Data Table: 444598
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_4445AC As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_110 As String
  Dim var_B0 As Variant
  loc_1213E2C: On Error Goto loc_121427B
  loc_1213E33: var_86 = CByte(0) 'Byte
  loc_1213E42: Set var_90 = Me.Txt
  loc_1213E48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1213E71: If (Proc_183_19_E8DAFC(var_94, "Name") = 0) Then
  loc_1213E7B:   Call Txt_GotFocus()
  loc_1213E80:   Exit Sub
  loc_1213E81: End If
  loc_1213E85: Set var_90 = Me.TopCtrl1
  loc_1213E8B: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(CInt(0))
  loc_1213EA4: If (CStr(var_94) = "Add") Then
  loc_1213EAD:   var_D4 = 0
  loc_1213ECA:   var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode From DeliveryBoy WHERE SITE_CODE='" & MemVar_1F92070
  loc_1213ED1:   var_B4 = CStr(var_94) & "'"
  loc_1213EDA:   unk_4445AC.Execute var_B4, var_B0, -1
  loc_1213EE2:   var_90 = var_90.Fields
  loc_1213EEA:   var_D4 = var_94.Item(var_94)
  loc_1213EF2:   var_98 = var_98.Value
  loc_1213F2B:   var_F8 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_1213F51:   var_E4 = Format(CStr(var_E4), "0000")
  loc_1213F59:   var_108 = (1 + var_E4)
  loc_1213F64:   global_64 = CStr(var_108)
  loc_1213F79: Else
  loc_1213F96:   var_94 = Me.Fields.Item("Code")
  loc_1213FAD:   global_64 = CStr(var_94.Value)
  loc_1213FBE: End If
  loc_1213FC7: unk_4445AC.BeginTrans var_10C
  loc_1213FD0: var_86 = CByte(1) 'Byte
  loc_1213FD8: Set var_90 = Me.TopCtrl1
  loc_1213FDE: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(1)
  loc_1213FF7: If (CStr(var_F8) = "Add") Then
  loc_1214011:   var_9C = "Insert Into DeliveryBoy(Code,Name,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values('" & global_64
  loc_1214029:   Set var_90 = Me.Txt
  loc_121402F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_B4, var_9C & "','")
  loc_1214037:   var_184 = var_94.Text
  loc_1214040:   var_110 = -1 & var_B4
  loc_1214074:   Proc_6_7_F25D88(var_E4, Date, CVar(var_110 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',"))
  loc_12140A6:   unk_4445AC.Execute CStr(var_98 & var_E4 & ",'A','" & CVar(MemVar_1F92078) & "' )"), var_E4, 
  loc_12140DF: Else
  loc_12140FD:   Set var_90 = Me.Txt
  loc_1214103:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_9C, "UPDATE DeliveryBoy SET Name='")
  loc_121410B:   var_184 = var_94.Text
  loc_1214114:   var_B4 = -1 & var_9C
  loc_1214137:   var_F8 = CVar(var_B4 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") 'String
  loc_1214148:   Proc_6_7_F25D88(var_E4, Date)
  loc_1214150:   var_108 = var_F8 & var_E4 
  loc_1214154:   var_C4 = " ,U_AE='E' WHERE Code='"
  loc_121417D:   unk_4445AC.Execute CStr(var_108 & var_C4 & CVar(global_64) & "'"), var_98, 
  loc_12141AF: End If
  loc_12141B5: unk_4445AC.CommitTrans
  loc_12141BE: var_86 = CByte(0) 'Byte
  loc_12141CD: Me.Requery -1
  loc_12141DD: Me.Requery -1
  loc_121420A: Me.Find "Code='" & global_64 & "'", 0, 1
  loc_121421A: Set var_90 = Me.TopCtrl1
  loc_1214220: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_C4)
  loc_1214239: If (CStr() = "Add") Then
  loc_121423C:   Call TopCtrl1_UnknownEvent_A()
  loc_1214241:   Exit Sub
  loc_1214242: End If
  loc_1214257: var_9C = "INI"
  loc_1214265: Call Proc_304_27_E78FAC(Proc_5_1_100CB50(var_9C, Me))
  loc_1214270: Call Proc_304_31_E83F38(global_52)
  loc_1214275: Call Proc_304_29_11D3B44()
  loc_121427A: Exit Sub
  loc_121427B: ' Referenced from: 1213E2C
  loc_1214284: If (CInt(var_86) = 1) Then
  loc_121428D:   unk_4445AC.RollbackTrans
  loc_1214292: End If
  loc_121429A: Set var_90 = Err()
  loc_12142A0: Call 0.Method_arg_2C (var_9C)
  loc_12142B9: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_12142CC: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'EA918C
  'Data Table: 444598
  Dim Me As Recordset15
  loc_EA910A: Set var_88 = Me.Txt
  loc_EA9110: Call 0.Method_Txt_GotFocus0 (Index)
  loc_EA911E: Proc_6_74_E226B0(var_8C)
  loc_EA912A: Call Proc_304_31_E83F38(var_8C)
  loc_EA913D: If (Index = CInt(0)) Then
  loc_EA9157:   If (Me.RecordCount > 0) Then
  loc_EA9165:     Set var_8C = Me.FGPoint
  loc_EA917D:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_EA918B:   End If
  loc_EA918B: End If
  loc_EA918B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '101BF78
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_90 As TextBox
  loc_101BD6E: If (CLng(Shift) = &H1B) Then
  loc_101BD71:   Call Proc_304_31_E83F38()
  loc_101BD76:   Exit Sub
  loc_101BD77: End If
  loc_101BD85: If (KeyCode = CInt(0)) Then
  loc_101BDA5:   Set var_9C = Me.FGPoint
  loc_101BDD7:   Proc_6_79_11ACE04(Me.DGHelp, Me.Txt, CInt(0), global_56, Shift)
  loc_101BE44:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_101BE4B:     Set var_9C = Me.DGHelp
  loc_101BE52:     Set var_90 = Me.FGPoint
  loc_101BE6A:     Proc_6_138_106D6F8(var_9C, global_56, KeyCode, var_90, 0)
  loc_101BE78:   End If
  loc_101BE78: End If
  loc_101BE94: If (CBool(Me.DGHelp.Visible) = 0) Then
  loc_101BEB5:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(0))) Then
  loc_101BEBB:     Call Proc_304_30_10C2118(var_92, 1, var_9C)
  loc_101BEC6:     If (var_92 = &HFF) Then
  loc_101BED6:       Set var_8C = Me.Txt
  loc_101BEDC:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_101BEE4:       var_90.Text = 0
  loc_101BEF0:       Exit Sub
  loc_101BEF1:     End If
  loc_101BF28:     If (MsgBox("Save Record ?", 4, "Save Data", var_110, var_130) = 6) Then
  loc_101BF2B:       Call TopCtrl1_UnknownEvent_16()
  loc_101BF30:     End If
  loc_101BF30:     Exit Sub
  loc_101BF31:   End If
  loc_101BF46:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_101BF4F:     Proc_6_75_E527CC(Shift, arg_14)
  loc_101BF54:   End If
  loc_101BF67:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_101BF70:     Proc_6_76_E52838(Shift, arg_14)
  loc_101BF75:   End If
  loc_101BF75: End If
  loc_101BF75: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E261A4
  'Data Table: 444598
  Dim var_96 As Integer
  loc_E26186: Proc_6_133_E7EF78(var_94)
  loc_E26198: Proc_6_58_E054C0(CInt(var_94), CInt(var_94))
  loc_E261A0: var_96 = KeyAscii
  loc_E261A3: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'EC0D10
  'Data Table: 444598
  loc_EC0C82: If (KeyCode = CInt(0)) Then
  loc_EC0CA1:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EC0CAE:     var_A4 = "Name"
  loc_EC0CCD:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_EC0CFF:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_EC0D0D:   End If
  loc_EC0D0D: End If
  loc_EC0D0D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C734
  'Data Table: 444598
  loc_E4C712: Set var_88 = Me.Txt
  loc_E4C718: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C726: Proc_6_73_E22704(var_8C)
  loc_E4C732: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E26CBC
  'Data Table: 444598
  Dim arg_10 As Integer
  loc_E26C9E: If (Cancel = CInt(0)) Then
  loc_E26CA4:   Call Proc_304_30_10C2118(var_88)
  loc_E26CAF:   If (var_88 = &HFF) Then
  loc_E26CB4:     arg_10 = &HFF
  loc_E26CB7:     Exit Sub
  loc_E26CB8:   End If
  loc_E26CB8: End If
  loc_E26CB8: Exit Sub
End Sub

Private Sub Form_Load() 'FD67B8
  'Data Table: 444598
  Dim var_8C As Label
  Dim var_94 As String
  Dim unk_4445AC As Connection15
  Dim var_B8 As Variant
  loc_FD65F4: On Error Goto loc_FD6772
  loc_FD660D: Proc_6_23_DFBA28(Me, 0)
  loc_FD661C: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FD6630: Me.LblUser.Left = CDbl(13500)
  loc_FD6647: Me.LblUser.Top = CDbl(7800)
  loc_FD665E: Me.LblLDt.Top = CDbl(8160)
  loc_FD666F: Set var_8C = Me.LblLDt
  loc_FD6675: var_8C.Left = CDbl(13500)
  loc_FD667D: Call Proc_304_32_EDC524(0)
  loc_FD66A6: unk_4445AC.Execute "SELECT Code,Name FROM DeliveryBoy where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_B8, -1
  loc_FD66D5: CVarUnk
  loc_FD66DA: VerifyVarObj
  loc_FD66E6: LateIdStAd
  loc_FD6718: unk_4445AC.Execute "SELECT * FROM DeliveryBoy WHere (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order by Name", var_B8, -1
  loc_FD6753: var_94 = "INI"
  loc_FD6761: Call Proc_304_27_E78FAC(Proc_5_1_100CB50(var_94, Me, Me.DGHelp, Me), Me)
  loc_FD676C: Call Proc_304_29_11D3B44(Me)
  loc_FD6771: Exit Sub
  loc_FD6772: ' Referenced from: FD65F4
  loc_FD677A: Set var_8C = Err()
  loc_FD6780: Call 0.Method_arg_2C (var_94)
  loc_FD67A1: MsgBox(CVar(var_94), &H40, "Information", var_EC, var_10C)
  loc_FD67B4: Exit Sub
  loc_FD67B5: Exit Sub
End Sub

Private Sub Form_Resize() 'ED1048
  'Data Table: 444598
  Dim var_8C As Label
  loc_ED0FA6: Call 0.Method_arg_50 (var_88)
  loc_ED0FB8: Me.LblFormCaption.Caption = var_88
  loc_ED0FD1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED0FDD: Set var_A0 = Me.TopCtrl1
  loc_ED0FE3: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010006()
  loc_ED0FF0: Set var_8C = Me.TopCtrl1
  loc_ED0FF6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_80010004()
  loc_ED1010: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED102B: Call 0.Method_arg_100 (var_B8)
  loc_ED103D: Me.LblFormCaption.Width = var_B8
  loc_ED1045: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E271C0
  'Data Table: 444598
  loc_E271A3: Set global_52 = Nothing
  loc_E271B5: Set global_56 = Nothing
  loc_E271BC: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E272D4
  'Data Table: 444598
  loc_E272AC: On Error Goto loc_E272CB
  loc_E272C3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E272CB: ' Referenced from: E272AC
  loc_E272CB: Proc_6_60_E62BC4(Shift)
  loc_E272D0: Exit Sub
  loc_E272D1: If 0 Then Exit Sub
  loc_E272D1: End If
End Sub

Private Sub FGPoint_UnknownEvent_9 'E391F4
  'Data Table: 444598
  loc_E391E8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E391EB:   Call DGHelp_UnknownEvent_9()
  loc_E391F0: End If
  loc_E391F0: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'EE3BBC
  'Data Table: 444598
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_EE3B13: Me.DGHelp.Visible = False
  loc_EE3B32: If (Me.RecordCount > 0) Then
  loc_EE3B52:   var_B0 = Me.Fields.Item("Name")
  loc_EE3B71:   Set var_B4 = Me.Txt
  loc_EE3B77:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_EE3B7F:   var_B8.Text = CStr(var_B0.Value)
  loc_EE3B95: End If
  loc_EE3BA0: Set var_A8 = Me.Txt
  loc_EE3BA6: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_EE3BAE: var_B0.SetFocus
  loc_EE3BBA: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6E13C
  'Data Table: 444598
  loc_E6E0FA: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6E111: Set var_8C = Me.FGPoint
  loc_E6E12D: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6E13B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EC0A64
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC09DA: On Error Goto loc_EC0A1F
  loc_EC09E3: Me.MoveFirst
  loc_EC09FD: var_8C = "code='" & MyValue
  loc_EC0A0D: Me.Find var_8C & "'", 0, 1
  loc_EC0A19: Call Proc_304_29_11D3B44(var_A0)
  loc_EC0A1E: Exit Sub
  loc_EC0A1F: ' Referenced from: EC09DA
  loc_EC0A27: Set var_A4 = Err()
  loc_EC0A2D: Call 0.Method_arg_2C (var_8C)
  loc_EC0A4E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC0A61: Exit Sub
  loc_EC0A62: Exit Sub
End Sub

Public Sub Proc_304_27_E78FAC(arg_C) 'E78FAC
  'Data Table: 444598
  Dim var_98 As TextBox
  loc_E78F5A: Set var_8C = Me.Txt
  loc_E78F60: Call 0.Method_Proc_304_27_E78FACC (var_8E, var_86)
  loc_E78F70: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78F86:   Set var_8C = Me.Txt
  loc_E78F8C:   Call 0.Method_Proc_304_27_E78FAC0 (CInt(var_86), var_98)
  loc_E78F94:   var_98.Enabled = arg_C
  loc_E78FA3: Next var_92 'Byte
  loc_E78FA9: Exit Sub
End Sub

Public Sub Proc_304_28_E7946C
  'Data Table: 444598
  Dim var_98 As TextBox
  loc_E7941A: Set var_8C = Me.Txt
  loc_E79420: Call 0.Method_Proc_304_28_E7946CC (var_8E, var_86)
  loc_E79430: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E79446:   Set var_8C = Me.Txt
  loc_E7944C:   Call 0.Method_Proc_304_28_E7946C0 (CInt(var_86), var_98)
  loc_E79454:   var_98.Text = vbNullString
  loc_E79463: Next var_92 'Byte
  loc_E79469: Exit Sub
End Sub

Public Sub Proc_304_29_11D3B44
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_90 As Fields15
  Dim var_B8 As String
  Dim var_C0 As TextBox
  Dim var_100 As Variant
  Dim unk_4445AC As Connection15
  Dim var_88 As Recordset15
  Dim var_BC As Fields15
  Dim var_1CC As Variant
  loc_11D3710: On Error Goto loc_11D3B01
  loc_11D3719: Proc_183_45_E5C118(global_52)
  loc_11D3735: If (Me.RecordCount <= 0) Then
  loc_11D3738:   Call Proc_304_28_E7946C()
  loc_11D3740: Else
  loc_11D3774:   global_64 = CStr(Me.Fields.Item("Name").Value)
  loc_11D37C1:   Set var_BC = Me.Txt
  loc_11D37C7:   Call 0.Method_Proc_304_29_11D3B440 (CInt(0), var_C0)
  loc_11D37CF:   var_C0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11D3827:   Call 0.Method_Proc_304_29_11D3B440 (CInt(0), var_C0)
  loc_11D382F:   var_C0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_11D389B:   unk_4445AC.Execute CStr("Select U_Name,U_AE,U_EntDt From DeliveryBoy where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_11D38A6:   Set var_88 = Me.Txt
  loc_11D38FA:   var_BC = var_88.Fields
  loc_11D3963:   var_184 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_BC.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_11D39A8:   Me.LblUser.Caption = CStr(var_BC & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_184)))
  loc_11D3A3B:   var_120 = "entdt :   "
  loc_11D3A46:   var_100 = "Last Update :   "
  loc_11D3A74:   var_B8 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")))
  loc_11D3AB6:   var_1CC = IIf((var_B8 = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), var_100, var_120)) & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))) 
  loc_11D3AC8:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_11D3B00: End If
  loc_11D3B00: Exit Sub
  loc_11D3B01: ' Referenced from: 11D3710
  loc_11D3B09: Set var_90 = Err()
  loc_11D3B0F: Call 0.Method_arg_2C (var_B8)
  loc_11D3B30: MsgBox(CVar(var_B8), &H40, "Information", var_100, var_120)
  loc_11D3B43: Exit Sub
End Sub

Public Sub Proc_304_30_10C2118
  'Data Table: 444598
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_4445AC As Connection15
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_148 As Fields15
  Dim var_14C As Field20
  loc_10C1E77: If (Me.RecordCount = 0) Then
  loc_10C1E7A:   Proc_304_30_10C2118 = 
  loc_10C1E80: End If
  loc_10C1E84: Set var_90 = Me.TopCtrl1
  loc_10C1E8A: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10C1EA3: If (CStr() = "Add") Then
  loc_10C1EE1:   Set var_90 = Me.Txt
  loc_10C1EE7:   Call 0.Method_Proc_304_30_10C21180 (CInt(0), var_A8, var_AC, "Select Count(*) From DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_A0, -1)
  loc_10C1F08:   unk_4445AC.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10C1F18:    = var_D0.Item()
  loc_10C1F20:    = var_E4.Value
  loc_10C1F51:   If (var_A8.Text.Fields > 0) Then
  loc_10C1F75:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10C1F90:     Set var_90 = Me.Txt
  loc_10C1F96:     Call 0.Method_Proc_304_30_10C21180 (CInt(0))
  loc_10C1F9E:     var_A8.SetFocus
  loc_10C1FAF:     Proc_304_30_10C2118 = &HFF
  loc_10C1FB5:   End If
  loc_10C1FB8: Else
  loc_10C1FF3:   Set var_90 = Me.Txt
  loc_10C1FF9:   Call 0.Method_Proc_304_30_10C21180 (CInt(0), var_A8, var_AC, "Select Count(*) From DeliveryBoy Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and Name='", var_144, -1)
  loc_10C2041:   var_114 = CVar(var_148 & var_AC & "' And Name<>'") & Me.Fields.Item("Name").Value 
  loc_10C204A:   var_134 = var_114 & "'" 
  loc_10C2058:   unk_4445AC.Execute CStr(var_134), 0, var_14C
  loc_10C2068:    = var_148.Item(var_A8)
  loc_10C2070:    = var_14C.Value
  loc_10C20AD:   If (var_A8.Text.Fields > 0) Then
  loc_10C20D1:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_10C20EC:     Set var_90 = Me.Txt
  loc_10C20F2:     Call 0.Method_Proc_304_30_10C21180 (CInt(0))
  loc_10C20FA:     var_A8.SetFocus
  loc_10C210B:     Proc_304_30_10C2118 = &HFF
  loc_10C2111:   End If
  loc_10C2111: End If
  loc_10C2111: Proc_304_30_10C2118 = var_A8
End Sub

Public Sub Proc_304_31_E83F38
  'Data Table: 444598
  loc_E83EE4: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E83EF6:   Me.DGHelp.Visible = False
  loc_E83EFE: End If
  loc_E83F1A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E83F2C:   Me.FGPoint.Visible = False
  loc_E83F34: End If
  loc_E83F34: Exit Sub
  loc_E83F35: CExtInstUnk
End Sub

Public Sub Proc_304_32_EDC524
  'Data Table: 444598
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_EDC482: Set var_88 = Me.Txt
  loc_EDC488: Call 0.Method_Proc_304_32_EDC5240 (CInt(0), var_8C)
  loc_EDC4A7: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_EDC4C3: Set var_B4 = Me.Txt
  loc_EDC4C9: Call 0.Method_Proc_304_32_EDC5240 (CInt(0), var_B8)
  loc_EDC4E4: Set var_88 = Me.Txt
  loc_EDC4EA: Call 0.Method_Proc_304_32_EDC5240 (CInt(0), var_8C)
  loc_EDC502: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_EDC511: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_EDC523: Exit Sub
End Sub
