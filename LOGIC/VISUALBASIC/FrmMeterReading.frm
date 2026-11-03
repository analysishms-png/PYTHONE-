VERSION 5.00
Begin VB.Form FrmMeterReading
  Caption = "Meter Reading"
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
  ClientWidth = 4680
  ClientHeight = 3195
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4680
    Height = 420
    TabIndex = 10
  End
  Begin DataGrid DGFacility
    Left = 7440
    Top = 3045
    Width = 4515
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin DataGrid DGLocation
    Left = 7440
    Top = 2505
    Width = 4515
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1815
    Top = 900
    Width = 4080
    Height = 255
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
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
    ForeColor = &HFF0000&
    Left = 1815
    Top = 630
    Width = 4080
    Height = 255
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 30
    BeginProperty Font
      Name = "Tahoma"
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
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 2250
    Top = 2430
    Width = 1485
    Height = 240
    Visible = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame FrmList
    Left = 1200
    Top = 4005
    Width = 1845
    Height = 1815
    Visible = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1845
      Height = 1815
      TabStop = 0   'False
      TabIndex = 4
    End
  End
  Begin MSHFlexGrid FGrid
    Left = 1815
    Top = 1230
    Width = 4500
    Height = 7500
    TabIndex = 2
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 8370
    Top = 7365
    Width = 3375
    Height = 285
    TabIndex = 12
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
    Left = 8370
    Top = 7650
    Width = 3330
    Height = 255
    TabIndex = 11
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
    Caption = "Facility Name"
    Index = 1
    ForeColor = &HFF0000&
    Left = 225
    Top = 900
    Width = 1140
    Height = 240
    TabIndex = 9
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
  Begin Label LblName
    Caption = "Location Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 225
    Top = 630
    Width = 1260
    Height = 240
    TabIndex = 8
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

Attribute VB_Name = "FrmMeterReading"

Private MasterFormExit As Integer
Private global_68 As Integer
Private global_70 As Integer

Private Sub TxtGrid_GotFocus(Index As Integer) 'F86378
  'Data Table: 49A594
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F86230: Call Proc_327_54_EB8B7C()
  loc_F86248: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F86263: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F8626C: Set var_BC = Me.FGrid
  loc_F862A2: Set var_104 = Me.TxtGrid
  loc_F862A8: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F862B0: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F862E1: var_110 = CLng(Me.FGrid.Col)
  loc_F862F1: If (var_110 = CLng(1)) Then
  loc_F86303:   Set var_A8 = Me.TxtGrid
  loc_F86309:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, &HB)
  loc_F86311:   var_BC.MaxLength = var_110
  loc_F86320: Else
  loc_F86327:   If (var_110 = CLng(2)) Then
  loc_F86339:     Set var_A8 = Me.TxtGrid
  loc_F8633F:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC)
  loc_F86347:     var_BC.MaxLength = &HC
  loc_F8635C:     If (global_70 = 0) Then
  loc_F86367:       var_10C = "{Home}+{End}"
  loc_F8636D:       Proc_303_0_FB9B68(CStr(Me.FGrid.TextMatrix)), 0)
  loc_F86375:     End If
  loc_F86375:   End If
  loc_F86375: End If
  loc_F86375: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1001AF0
  'Data Table: 49A594
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10018EC: On Error Goto loc_1001AEA
  loc_10018F9: If (CLng(Shift) = &H1B) Then
  loc_1001909:   Set var_88 = Me.TxtGrid
  loc_100190F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_1001929:   Set var_94 = Me.TxtGrid
  loc_100192F:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_1001937:   var_98.Text = var_8C.Tag
  loc_1001953:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1001958:   Call Proc_327_54_EB8B7C(arg_14)
  loc_1001961:   Set var_88 = Me.FGrid
  loc_100197E:   Set var_88 = Me.TxtGrid
  loc_1001984:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_100198C:   var_8C.Visible = False
  loc_1001998:   Exit Sub
  loc_1001999: End If
  loc_10019AC: var_AC = CLng(Me.FGrid.Col)
  loc_10019BC: If (var_AC = CLng(1)) Then
  loc_10019C9:   If (CLng(Shift) = &HD) Then
  loc_10019D2:     Call Proc_327_50_1052BB0(KeyCode, var_AE)
  loc_10019DD:     If (var_AE = &HFF) Then
  loc_1001A23:       Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, 2)
  loc_1001A33:     End If
  loc_1001A33:   End If
  loc_1001A36: Else
  loc_1001A3D:   If (var_AC = CLng(2)) Then
  loc_1001A80:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_70 = &HFF))) Then
  loc_1001A89:       Call Proc_327_50_1052BB0(KeyCode, var_AE, 0, 2)
  loc_1001A94:       If (var_AE = &HFF) Then
  loc_1001ADA:         Proc_6_62_1253BC4(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_70, 2)
  loc_1001AEA:       End If
  loc_1001AEA:       ' Referenced from: 10018EC
  loc_1001AEA:     End If
  loc_1001AEA:   End If
  loc_1001AEA: End If
  loc_1001AEA: Proc_6_60_E62BC4(0, 2, 0)
  loc_1001AEF: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EA3A08
  'Data Table: 49A594
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EA3987: Proc_6_58_E054C0(arg_10)
  loc_EA3998: If (KeyAscii = 0) Then
  loc_EA39AE:   var_A0 = CLng(Me.FGrid.Col)
  loc_EA39BE:   If (var_A0 = CLng(1)) Then
  loc_EA39C1:     GoTo loc_EA3A05
  loc_EA39C4:   End If
  loc_EA39CB:   If (var_A0 = CLng(2)) Then
  loc_EA39D8:     Set var_8C = Me.TxtGrid
  loc_EA39DE:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EA39F9:     Proc_6_42_129A86C(var_A4, arg_10, 8)
  loc_EA3A05:     ' Referenced from: EA39C1
  loc_EA3A05:   End If
  loc_EA3A05: End If
  loc_EA3A05: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E4DF30
  'Data Table: 49A594
  Dim var_9C As Long
  loc_E4DF00: On Error Goto loc_E4DF2A
  loc_E4DF16: var_9C = CLng(Me.FGrid.Col)
  loc_E4DF26: If (var_9C = CLng(1)) Then
  loc_E4DF29: End If
  loc_E4DF29: Exit Sub
  loc_E4DF2A: ' Referenced from: E4DF00
  loc_E4DF2A: Proc_6_60_E62BC4(var_9C)
  loc_E4DF2F: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E2115C
  'Data Table: 49A594
  Dim arg_10 As Integer
  loc_E21144: If (Cancel = 0) Then
  loc_E2114D:   Call Proc_327_50_1052BB0(Cancel, var_88)
  loc_E21156:   arg_10 = Not(var_88)
  loc_E21159: End If
  loc_E21159: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F592AC
  'Data Table: 49A594
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F591CE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F591D5:   Set var_A8 = Me.ListView
  loc_F5921F:   Set var_C0 = Me.TxtGrid
  loc_F59225:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5922D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5924D: End If
  loc_F59259: Me.FrmList.Visible = False
  loc_F59289: Set var_9C = Me.TxtGrid
  loc_F5928F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F59297: var_A8.SetFocus
  loc_F592AB: Exit Sub
End Sub

Private Sub DGLocation_UnknownEvent_9 'F439C4
  'Data Table: 49A594
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F438BB: Me.DGLocation.Visible = False
  loc_F438DA: If (Me.RecordCount > 0) Then
  loc_F43919:   Set var_B4 = Me.Txt
  loc_F4391F:   Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1), var_B8)
  loc_F43927:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F4395A:   var_B0 = Me.Fields.Item("Code")
  loc_F43979:   Set var_B4 = Me.Txt
  loc_F4397F:   Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1), var_B8)
  loc_F43987:   var_B8.Tag = CStr(var_B0.Value)
  loc_F4399D: End If
  loc_F439A8: Set var_A8 = Me.Txt
  loc_F439AE: Call 0.Method_DGLocation_UnknownEvent_90 (CInt(1))
  loc_F439B6: var_B0.SetFocus
  loc_F439C2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'ECE988
  'Data Table: 49A594
  Dim var_94 As TextBox
  loc_ECE8D8: On Error Goto loc_ECE982
  loc_ECE8FE: Call Proc_327_53_E7ADF4(Proc_5_1_100CB50("ADD", Me))
  loc_ECE909: Call Proc_327_51_F16848(global_72)
  loc_ECE91B: Set var_8C = Me.Txt
  loc_ECE921: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_ECE929: var_94.Enabled = True
  loc_ECE942: Set var_8C = Me.Txt
  loc_ECE948: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_ECE950: var_94.Enabled = True
  loc_ECE967: Set var_8C = Me.Txt
  loc_ECE96D: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_ECE975: var_94.SetFocus
  loc_ECE981: Exit Sub
  loc_ECE982: ' Referenced from: ECE8D8
  loc_ECE982: Proc_6_60_E62BC4(var_94)
  loc_ECE987: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F348
  'Data Table: 49A594
  loc_E9F2D0: On Error Goto loc_E9F341
  loc_E9F30A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F330:   Call Proc_327_53_E7ADF4(Proc_5_1_100CB50("INI", Me))
  loc_E9F33B:   Call Proc_327_52_12D6E88(global_72)
  loc_E9F340: End If
  loc_E9F340: Exit Sub
  loc_E9F341: ' Referenced from: E9F2D0
  loc_E9F341: Proc_6_60_E62BC4()
  loc_E9F346: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '11C37C4
  'Data Table: 49A594
  Dim unk_49A5AC As Connection15
  Dim Me As Recordset15
  Dim var_12C As Fields15
  Dim var_104 As Variant
  Dim var_134 As String
  loc_11C33A0: On Error Goto loc_11C3773
  loc_11C33B1: If (Proc_183_56_FE8818(global_72) = &HFF) Then
  loc_11C33B4:   Exit Sub
  loc_11C33B5: End If
  loc_11C33EC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_104, var_124) = 6) Then
  loc_11C33F8:   unk_49A5AC.BeginTrans var_128
  loc_11C340E:   var_94 = Me.Bookmark 'Variant
  loc_11C3468:   unk_49A5AC.Execute CStr("Delete From FMReading Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_124, -1
  loc_11C34B3:   var_170 = 0
  loc_11C34C6:   var_168 = 0
  loc_11C34D1:   var_164 = 0
  loc_11C34E4:   var_15C = 0
  loc_11C34EF:   var_158 = 0
  loc_11C3502:   var_150 = 0
  loc_11C354B:   Proc_154_5_10E33A4(MemVar_1F92044, "FMReading", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C35BB:   var_104 = "Delete From FMReading1 Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_11C35C9:   unk_49A5AC.Execute CStr(var_104), var_124, -1
  loc_11C3614:   var_170 = 0
  loc_11C3627:   var_168 = 0
  loc_11C3632:   var_164 = 0
  loc_11C3645:   var_15C = 0
  loc_11C3650:   var_158 = 0
  loc_11C3663:   var_150 = 0
  loc_11C36A3:   var_134 = "FMReading1"
  loc_11C36AC:   Proc_154_5_10E33A4(MemVar_1F92044, var_134, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_11C36DA:   unk_49A5AC.CommitTrans
  loc_11C36EA:   Me.Requery -1
  loc_11C370A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_11C3717:     Me.Bookmark = var_94
  loc_11C371F:   Else
  loc_11C3733:     If (Me.EOF = 0) Then
  loc_11C373C:       Me.MoveLast
  loc_11C3741:     End If
  loc_11C3741:   End If
  loc_11C3741:   Call Proc_327_52_12D6E88(var_150, 0, var_158, var_15C)
  loc_11C3762:   Proc_5_0_110649C(&HFF, Me, global_72, 0)
  loc_11C376A: End If
  loc_11C376F: Set var_98 = Nothing
  loc_11C3772: Exit Sub
  loc_11C3773: ' Referenced from: 11C33A0
  loc_11C3779: unk_49A5AC.RollbackTrans
  loc_11C3786: Set var_12C = Err()
  loc_11C378C: Call 0.Method_arg_2C (var_134, 0, var_164)
  loc_11C37AD: MsgBox(CVar(var_134), &H10, " Deletion Message", var_104, var_124)
  loc_11C37C0: Exit Sub
  loc_11C37C1: ThisVCallI2
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2EDB8
  'Data Table: 49A594
  Dim var_94 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  loc_F2ECA8: On Error Goto loc_F2EDAF
  loc_F2ECCE: Call Proc_327_53_E7ADF4(Proc_5_1_100CB50("EDIT", Me))
  loc_F2ECE6: Set var_8C = Me.Txt
  loc_F2ECEC: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F2ECF4: var_94.Enabled = False
  loc_F2ED0D: Set var_8C = Me.Txt
  loc_F2ED13: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F2ED1B: var_94.Enabled = False
  loc_F2ED40: var_B4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_F2ED48: var_D4 = CVar(CLng(1)) 'Long
  loc_F2ED7B: If (CStr(Me.FGrid.TextMatrix)) <> vbNullString) Then
  loc_F2ED7E:   var_B4 = vbNullString
  loc_F2ED88:   Set var_8C = Me.FGrid
  loc_F2ED99: End If
  loc_F2ED9D: Set var_8C = Me.FGrid
  loc_F2EDAE: Exit Sub
  loc_F2EDAF: ' Referenced from: F2ECA8
  loc_F2EDAF: Proc_6_60_E62BC4(FGrid.DispID_8001, FGrid.DispID_10000, var_B4)
  loc_F2EDB4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18C88
  'Data Table: 49A594
  loc_E18C7D: Me.Global.Unload Me
  loc_E18C85: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC9104
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC9064: On Error Goto loc_EC90FC
  loc_EC907E: If (Me.RecordCount <= 0) Then
  loc_EC9087:   var_B8 = "Information"
  loc_EC90A2:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC90B2:   Exit Sub
  loc_EC90B3: End If
  loc_EC90BA: var_10C = "Select FM.Code AS SearchCode,LM.Name As LocationName,F.Name As FacilityName From ((FMReading FM Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where (FM.LOGSITE_CODE='" & MemVar_1F92078
  loc_EC90C1: MemVar_1F920E4 = var_10C & "' or FM.LOGSITE_CODE='HO') Order By FM.Code"
  loc_EC90CE: MemVar_1F92120 = Me
  loc_EC90DB: Proc_6_126_F1BCC0("4000,3000")
  loc_EC90F6: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC90FB: Exit Sub
  loc_EC90FC: ' Referenced from: EC9064
  loc_EC90FC: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC9101: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32AD8
  'Data Table: 49A594
  Dim arg_1CFF As Double
  loc_E32AC8: Proc_5_0_110649C(&HFF, Me)
  loc_E32AD0: Call Proc_327_52_12D6E88(global_72)
  loc_E32AD5: Exit Sub
  loc_E32AD6: arg_1CFF = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32B38
  'Data Table: 49A594
  loc_E32B28: Proc_5_0_110649C(&HFF, Me)
  loc_E32B30: Call Proc_327_52_12D6E88(global_72)
  loc_E32B35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32B98
  'Data Table: 49A594
  Dim arg_1CFF As Double
  loc_E32B88: Proc_5_0_110649C(&HFF, Me)
  loc_E32B90: Call Proc_327_52_12D6E88(global_72)
  loc_E32B95: Exit Sub
  loc_E32B96: arg_1CFF = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32C58
  'Data Table: 49A594
  loc_E32C48: Proc_5_0_110649C(&HFF, Me)
  loc_E32C50: Call Proc_327_52_12D6E88(global_72)
  loc_E32C55: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C8EC0
  'Data Table: 49A594
  Dim var_A0 As String
  Dim var_E0 As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_AC As Fields15
  Dim var_C0 As Field20
  Dim var_F0 As Variant
  Dim var_100 As String
  Dim var_110 As Variant
  Dim unk_49A5AC As Connection15
  Dim var_88 As Recordset15
  Dim var_14E As Integer
  loc_10C8BEC: On Error Goto loc_10C8E98
  loc_10C8C03: var_A0 = "Select FM1.Code,LM.Name As LocationName,F.Name As FacilityName,FM1.ForDate,FM1.Reading From (((FMReading1 FM1 Left Join FMReading FM On FM1.Code=Fm.Code)Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where FM.LogSite_Code='" & MemVar_1F92078
  loc_10C8C18: var_E0 = CVar(var_A0 & "' and FM.Site_Code='" & MemVar_1F92070 & "' and FM.Code='") 'String
  loc_10C8C38: var_C0 = Me.Fields.Item("SearchCode")
  loc_10C8C48: var_F0 = var_E0 & var_C0.Value 
  loc_10C8C4C: var_100 = "' Order By FM1.ForDate"
  loc_10C8C51: var_110 = var_F0 & var_100 
  loc_10C8C5F: unk_49A5AC.Execute CStr(var_110), var_134, -1
  loc_10C8C6A: Set var_88 = var_138
  loc_10C8C94: var_13C = var_88.RecordCount
  loc_10C8CA2: If (var_13C = 0) Then
  loc_10C8CBE:   MsgBox("No Record Present For Printing", 0, var_E0, var_F0, var_110)
  loc_10C8CCE:   Exit Sub
  loc_10C8CCF: End If
  loc_10C8CE5: Set var_AC = var_88 
  loc_10C8CF1: var_14E = CreateFieldDefFile(var_AC, MemVar_1F920B4 & "\FMReading.ttx")
  loc_10C8CFB: Set var_88 = var_AC
  loc_10C8D01: var_BC = CVar(var_14E) 'Integer
  loc_10C8D04: var_98 = var_BC 'Variant
  loc_10C8D20: var_A0 = MemVar_1F920B4 & "\FMReading.RPT"
  loc_10C8D29: Call 0.Method_arg_1C (var_A0, var_BC, var_AC)
  loc_10C8D34: MemVar_1F921E4 = var_AC
  loc_10C8D4F: Call 0.Method_arg_90 (var_AC, var_13C, var_9A, 1)
  loc_10C8D57: Call 0.Method_arg_24 (var_14E, &HFF)
  loc_10C8D63: For var_152 =  To CInt(var_13C): var_138 = var_152 'Integer
  loc_10C8D7C:   Call 0.Method_arg_90 (var_AC, CLng(var_9A))
  loc_10C8D84:   Call 0.Method_arg_20 (var_C0)
  loc_10C8D8C:   Call 0.Method_arg_30 (var_A0)
  loc_10C8DD2:   If (Ucase(CVar(var_A0)) = Ucase("Title")) Then
  loc_10C8DE8:     Call 0.Method_arg_90 (var_AC, CLng(var_9A))
  loc_10C8DF0:     Call 0.Method_arg_20 (var_C0)
  loc_10C8DF8:     Call 0.Method_arg_38 ("'Facility Meter Reading'")
  loc_10C8E04:   End If
  loc_10C8E07: Next var_152 'Integer
  loc_10C8E25: Call 0.Method_arg_64 (var_AC, CVar(var_88))
  loc_10C8E2D: Call 0.Method_arg_2C (var_100)
  loc_10C8E3B: Call 0.Method_arg_150 (var_124)
  loc_10C8E46: Call 0.Method_arg_50 (var_A0)
  loc_10C8E50: Set var_C0 = Nothing
  loc_10C8E6A: Set var_AC = MemVar_1F921E4 
  loc_10C8E76: Proc_6_99_1483714(var_AC, 0, var_A0)
  loc_10C8E81: MemVar_1F921E4 = var_AC
  loc_10C8E94: Set var_88 = Nothing
  loc_10C8E97: Exit Sub
  loc_10C8E98: ' Referenced from: 10C8BEC
  loc_10C8E9E: Call 0.Method_arg_50 (var_A0, &HFF)
  loc_10C8EB3: Proc_183_57_104AA84(var_A0, "TopCtrl1_ePrn")
  loc_10C8EBF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E2169C
  'Data Table: 49A594
  Dim Me As Recordset15
  loc_E21683: Me.Requery -1
  loc_E21693: Me.Requery -1
  loc_E21698: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13996A4
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim unk_49A5FB As Connection15
  Dim var_90 As Variant
  Dim var_94 As Variant
  Dim var_98 As Field20
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_C4 As Variant
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_E4 As Variant
  Dim var_11C As Variant
  Dim unk_49A5AC As Connection15
  Dim var_14C As TextBox
  Dim var_1A0 As Variant
  Dim var_210 As Variant
  Dim var_368 As Double
  Dim var_1D0 As Variant
  Dim var_1E0 As Variant
  Dim var_2B4 As Variant
  loc_1398E18: On Error Goto loc_1399650
  loc_1398E1F: var_86 = CByte(0) 'Byte
  loc_1398E2E: Set var_90 = Me.Txt
  loc_1398E34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1398E5D: If (Proc_6_27_EA565C(var_94, "Location Name") = 0) Then
  loc_1398E67:   Call Txt_GotFocus()
  loc_1398E6C:   Exit Sub
  loc_1398E6D: End If
  loc_1398E78: Set var_90 = Me.Txt
  loc_1398E7E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1398EA7: If (Proc_6_27_EA565C(var_94, "Facility Name") = 0) Then
  loc_1398EB1:   Call Txt_GotFocus()
  loc_1398EB6:   Exit Sub
  loc_1398EB7: End If
  loc_1398EBB: Set var_90 = Me.TopCtrl1
  loc_1398EC1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(1))
  loc_1398EDA: If (CStr(CInt(0)) = "Add") Then
  loc_1398EE0:   Call Proc_327_48_FC4134(var_9E)
  loc_1398EEB:   If (var_9E = &HFF) Then
  loc_1398EEE:     Exit Sub
  loc_1398EEF:   End If
  loc_1398EF7:   If (MemVar_1F923AC = "A") Then
  loc_1398F00:     var_D4 = 0
  loc_1398F1D:     var_9C = "Select iif(IsNull(Max(val(MID(Code,3)))),1,Max(val(MID(Code,3)))+1)AS MyCode From FMReading WHERE SITE_CODE='" & MemVar_1F92070
  loc_1398F2D:     unk_49A5FB.Execute CStr(CInt(0)) & "'", var_B0, -1
  loc_1398F35:     var_90 = var_90.Fields
  loc_1398F3D:     var_D4 = var_94.Item(var_94)
  loc_1398F45:     var_98 = var_98.Value
  loc_1398F54:     global_64 = CStr(var_E4)
  loc_1398F74:   Else
  loc_1398F7C:     If (MemVar_1F923AC = "S") Then
  loc_1398F85:       var_D4 = 0
  loc_1398FA2:       var_9C = "Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode From FMReading WHERE SITE_CODE='" & MemVar_1F92070
  loc_1398FB2:       unk_49A5FB.Execute CStr(CInt(0)) & "'", var_B0, -1
  loc_1398FBA:       var_90 = var_90.Fields
  loc_1398FC2:       var_D4 = var_94.Item(var_94)
  loc_1398FCA:       var_98 = var_98.Value
  loc_1398FD3:       var_E8 = CStr(var_E4)
  loc_1398FD9:       global_64 = var_E8
  loc_1398FF6:     End If
  loc_1398FF6:   End If
  loc_1399003:   var_F8 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2, var_E4)) 'String
  loc_1399031:   var_108 = (1 + Format(global_64, "0000"))
  loc_139903C:   global_64 = CStr(var_108)
  loc_1399051: Else
  loc_1399085:   global_64 = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1399096: End If
  loc_13990BB: For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_10C 'Integer
  loc_13990EA:   Set var_94 = Me.FGrid
  loc_139910E:   If (((var_88 > 0) And (CLng(var_88) < (CLng(Me.FGrid.Rows) - 1))) Or (CLng(var_94.Rows) = 2)) Then
  loc_1399115:     var_C4 = CVar(CLng(var_88)) 'Long
  loc_139911D:     var_11C = CVar(CLng(1)) 'Long
  loc_1399137:     var_E4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_139913D:     var_F8 = Trim(var_E4)
  loc_1399159:     If (var_F8 = vbNullString) Then
  loc_139916F:       var_B0 = "Define For Date "
  loc_1399175:       MsgBox(var_B0, &H40, var_E4, var_F8, var_108)
  loc_1399185:       Exit Sub
  loc_1399186:     End If
  loc_1399186:   End If
  loc_1399189: Next var_10C 'Integer
  loc_1399197: unk_49A5AC.BeginTrans var_140
  loc_13991A0: var_86 = CByte(1) 'Byte
  loc_13991CB: unk_49A5AC.Execute "Delete From FMReading Where Code='" & global_64 & "'", var_B0, -1
  loc_1399204: unk_49A5AC.Execute "Delete From FMReading1 Where Code='" & global_64 & "'", var_B0, -1
  loc_1399224: Set var_90 = Me.Txt
  loc_139922A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_E8)
  loc_1399245: Set var_98 = Me.Txt
  loc_139924B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_14C)
  loc_139925C: Set var_15C = Me.TopCtrl1
  loc_1399262: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94.Tag)
  loc_1399270: var_F8 = "E"
  loc_139929C: var_1D0 = Date
  loc_13992A7: Proc_6_7_F25D88(var_1E0)
  loc_13992CA: var_B4 = "Insert Into FMReading (Code,LocationCode,FacilityCode,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('" & global_64
  loc_1399306: var_1A0 = CVar(var_B4 & "','" & var_E8 & "','" & var_14C.Tag & "','") & IIf((CStr(var_B0) = "Add"), "A", var_F8) & "','" & CVar(MemVar_1F920C8) 
  loc_139931F: var_210 = var_1A0 & "'," & var_1E0 & ",'" 
  loc_1399353: unk_49A5AC.Execute CStr(var_210 & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_2B4, -1
  loc_13993CC: For var_2BC = 1 To CInt((CLng(Me.FGrid.Rows) - 2)): var_88 = var_2BC 'Integer
  loc_13993D6:   var_C4 = CVar(CLng(var_88)) 'Long
  loc_13993DE:   var_11C = CVar(CLng(1)) 'Long
  loc_13993ED:   var_B0 = Me.FGrid.TextMatrix)
  loc_1399414:   var_E4 = Me.FGrid.TextMatrix)
  loc_1399427:   var_368 = Val(CStr(var_E4))
  loc_139942E:   Set var_98 = Me.TopCtrl1
  loc_1399434:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_368)
  loc_139944D:   var_108 = "A"
  loc_1399479:   Proc_6_7_F25D88(var_210, Date, CVar(CLng(2)), CVar(CLng(var_88)), var_B0)
  loc_139949C:   var_B4 = "Insert Into FMReading1 (Code,ForDate,Reading,U_AE,U_Name,U_EntDt,Site_Code,LogSite_Code) " & " Values ('" & global_64
  loc_13994E1:   var_1D0 = CVar(var_B4 & "','" & CStr(var_B0) & "'," & CStr(var_368) & ",'") & IIf((CStr(var_F8) = "Add"), var_108, "E") & "','" & CVar(MemVar_1F920C8) 
  loc_139952E:   unk_49A5AC.Execute CStr(var_1D0 & "'," & var_210 & ",'" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) & "')"), var_360, -1
  loc_1399587: Next var_2BC 'Integer
  loc_1399592: unk_49A5AC.CommitTrans
  loc_139959B: var_86 = CByte(0) 'Byte
  loc_13995B7: Me.Requery -1
  loc_13995E4: Me.Find "SearchCode ='" & global_64 & "'", 0, 1
  loc_13995F4: Set var_90 = Me.TopCtrl1
  loc_13995FA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C4)
  loc_1399613: If (CStr() = "Add") Then
  loc_1399616:   Call TopCtrl1_UnknownEvent_A()
  loc_139961B:   Exit Sub
  loc_139961C: End If
  loc_1399631: var_9C = "INI"
  loc_139963F: Call Proc_327_53_E7ADF4(Proc_5_1_100CB50(var_9C, Me))
  loc_139964A: Call Proc_327_52_12D6E88(global_72)
  loc_139964F: Exit Sub
  loc_1399650: ' Referenced from: 1398E18
  loc_1399659: If (CInt(var_86) = 1) Then
  loc_1399662:   unk_49A5AC.RollbackTrans
  loc_1399667: End If
  loc_139966F: Set var_90 = Err()
  loc_1399675: Call 0.Method_arg_2C (var_9C)
  loc_139968E: MsgBox(CVar(var_9C), &H10, var_E4, var_F8, var_108)
  loc_13996A1: Exit Sub
End Sub

Private Sub DGFacility_UnknownEvent_9 'F36604
  'Data Table: 49A594
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F364FB: Me.DGFacility.Visible = False
  loc_F3651A: If (Me.RecordCount > 0) Then
  loc_F36559:   Set var_B4 = Me.Txt
  loc_F3655F:   Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0), var_B8)
  loc_F36567:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3659A:   var_B0 = Me.Fields.Item("Code")
  loc_F365B9:   Set var_B4 = Me.Txt
  loc_F365BF:   Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0), var_B8)
  loc_F365C7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F365DD: End If
  loc_F365E8: Set var_A8 = Me.Txt
  loc_F365EE: Call 0.Method_DGFacility_UnknownEvent_90 (CInt(0))
  loc_F365F6: var_B0.SetFocus
  loc_F36602: Exit Sub
End Sub

Private Sub Form_Load() '10F9FBC
  'Data Table: 49A594
  Dim var_C0 As Variant
  Dim var_88 As Variant
  Dim var_B0 As String
  Dim Me As Recordset15
  Dim var_C4 As TextBox
  Dim var_C8 As String
  Dim var_138 As Variant
  loc_10F9C98: On Error Goto loc_10F9FB6
  loc_10F9CB1: Proc_6_23_DFBA28(Me, 0)
  loc_10F9CC3: Set var_88 = Me.TopCtrl1
  loc_10F9CC9: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_10F9CD7: Call 0.Method_arg_50 (var_B0)
  loc_10F9CE7: Set var_88 = Me.TopCtrl1
  loc_10F9CED: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B0))
  loc_10F9CFF: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10F9D17: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10F9D2E: Me.LblUser.Left = CDbl(13500)
  loc_10F9D45: Me.LblUser.Top = CDbl(7800)
  loc_10F9D5C: Me.LblLDt.Top = CDbl(8160)
  loc_10F9D73: Me.LblLDt.Left = CDbl(13500)
  loc_10F9D85: Set global_76 = New 
  loc_10F9D97: Me.Recordset15.CursorLocation = 3
  loc_10F9DBA: var_B0 = "Select Code,Name From LocationMast Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_10F9DC1: var_C0 = CVar(var_B0 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_10F9DCB: Me.Open var_C0, CVar(MemVar_1F92044), 3
  loc_10F9DDF: CVarUnk
  loc_10F9DE4: VerifyVarObj
  loc_10F9DEA: Set var_88 = Me.DGLocation
  loc_10F9DF0: LateIdStAd
  loc_10F9E1A: Me.DGLocation.CursorLocation = 3
  loc_10F9E33: Call 0.Method_Form_Load0 (CInt(0), var_C4, var_B0, Me.Txt)
  loc_10F9E3B: global_76 = var_C4.Tag
  loc_10F9E4B: Proc_6_7_F25D88(var_C0, MemVar_1F920EC, 1)
  loc_10F9E6E: var_C8 = "Select Distinct LF.FcCode As Code,FM.Name from locationfacility  LF Left Join FacilityMast FM On LF.FcCode=FM.Code Where FM.MeterReading='Y' And FM.ChargeType='Calculated' And appdate in (select top 1 Appdate from LocationFacility where lccode='" & var_B0
  loc_10F9E97: var_138 = CVar(var_C8 & "' and appdate<=") & var_C0 & " order by appdate desc) And (LF.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or LF.LOGSITE_CODE='HO') Order By Name" 
  loc_10F9ECD: CVarUnk
  loc_10F9ED2: VerifyVarObj
  loc_10F9ED8: Set var_88 = Me.DGFacility
  loc_10F9EDE: LateIdStAd
  loc_10F9F08: Me.DGFacility.CursorLocation = 3
  loc_10F9F32: var_C0 = CVar("Select Code AS SearchCode,site_code,logsite_code From FMReading FM Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') Order By Code") 'String
  loc_10F9F3C: r_138, CVar(MemVar_1F92044), 3 var_C0, CVar(MemVar_1F92044), 3
  loc_10F9F6A: Call Proc_327_53_E7ADF4(Proc_5_1_100CB50("INI", Me, New, 1, -1, Me), New, 1)
  loc_10F9F75: Call Proc_327_47_10A84DC(-1, -1)
  loc_10F9F7A: Call Proc_327_52_12D6E88(0)
  loc_10F9F92: Me.FGrid.Left = CVar(CDbl(1800))
  loc_10F9FAD: Me.FGrid.Top = CVar(CDbl(1340))
  loc_10F9FB5: Exit Sub
  loc_10F9FB6: ' Referenced from: 10F9C98
  loc_10F9FB6: Proc_6_60_E62BC4()
  loc_10F9FBB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E567F4
  'Data Table: 49A594
  loc_E567BF: Set global_76 = Nothing
  loc_E567D1: Set global_72 = Nothing
  loc_E567E3: Set global_80 = Nothing
  loc_E567EF: MasterFormExit = 0
  loc_E567F2: Exit Sub
End Sub

Private Sub Form_Activate() 'E4BC40
  'Data Table: 49A594
  loc_E4BC10: On Error Goto loc_E4BC3A
  loc_E4BC17: Set var_88 = Me.TopCtrl1
  loc_E4BC1D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4BC32: If (CLng(CInt()) = &H2D) Then
  loc_E4BC35:   Call TopCtrl1_UnknownEvent_15()
  loc_E4BC3A:   ' Referenced from: E4BC10
  loc_E4BC3A: End If
  loc_E4BC3A: Proc_6_60_E62BC4()
  loc_E4BC3F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E23FF4
  'Data Table: 49A594
  loc_E23FD9: If (MasterFormExit = &HFF) Then
  loc_E23FE9:   Me.Global.Unload Me
  loc_E23FF1: End If
  loc_E23FF1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2721C
  'Data Table: 49A594
  loc_E271F4: On Error Goto loc_E27214
  loc_E2720B: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E27213: Exit Sub
  loc_E27214: ' Referenced from: E271F4
  loc_E27214: Proc_6_60_E62BC4(Shift)
  loc_E27219: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'E53328
  'Data Table: 49A594
  loc_E53302: Set var_88 = Me.Txt
  loc_E53308: Call 0.Method_Txt_GotFocus0 (Index)
  loc_E53316: Proc_6_74_E226B0(var_8C)
  loc_E53322: Call Proc_327_54_EB8B7C(var_8C)
  loc_E53327: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FB7110
  'Data Table: 49A594
  Dim var_86 As Integer
  Dim var_98 As Frame
  loc_FB6F7E: If (CLng(Shift) = &H1B) Then
  loc_FB6F81:   Call Proc_327_54_EB8B7C()
  loc_FB6F86:   Exit Sub
  loc_FB6F87: End If
  loc_FB6F8A: var_86 = KeyCode
  loc_FB6F95: If (var_86 = CInt(0)) Then
  loc_FB6FB0:   Set var_9C = Nothing
  loc_FB6FBB:   Set var_98 = Nothing
  loc_FB6FE9:   Proc_6_69_134A198(Me.DGLocation, Me.Txt, KeyCode, global_76, Shift, 0)
  loc_FB7000: Else
  loc_FB7008:   If (var_86 = CInt(1)) Then
  loc_FB7023:     Set var_9C = Nothing
  loc_FB705C:     Proc_6_69_134A198(Me.DGFacility, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_FB7070:   End If
  loc_FB7070: End If
  loc_FB70A4: Set var_98 = Me.FrmList
  loc_FB70C6: If (((CBool(Me.DGLocation.Visible) = 0) And (CBool(Me.DGFacility.Visible) = 0)) And (var_98.Visible = 0)) Then
  loc_FB70DE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FB70E7:     Proc_6_75_E527CC(Shift, arg_14, var_9C, 0, 1)
  loc_FB70EC:   End If
  loc_FB7101:   If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FB710A:     Proc_6_76_E52838(Shift, arg_14, var_98)
  loc_FB710F:   End If
  loc_FB710F: End If
  loc_FB710F: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E07B80
  'Data Table: 49A594
  Dim var_86 As Integer
  loc_E07B73: Proc_6_58_E054C0(arg_10)
  loc_E07B7B: var_86 = KeyAscii
  loc_E07B7E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F19900
  'Data Table: 49A594
  Dim var_86 As Integer
  loc_F19813: var_86 = KeyCode
  loc_F1981E: If (var_86 = CInt(0)) Then
  loc_F1983D:   If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_F19851:     var_A4 = "Name"
  loc_F19875:     Proc_6_68_129FB34(Me.DGLocation, Me.Txt, KeyCode, global_76)
  loc_F19888:   End If
  loc_F1988B: Else
  loc_F19893:   If (var_86 = CInt(1)) Then
  loc_F198B2:     If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_F198C6:       var_A4 = "Name"
  loc_F198EA:       Proc_6_68_129FB34(Me.DGFacility, Me.Txt, KeyCode, global_80, Shift)
  loc_F198FD:     End If
  loc_F198FD:   End If
  loc_F198FD: End If
  loc_F198FD: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D70C
  'Data Table: 49A594
  loc_E4D6EA: Set var_88 = Me.Txt
  loc_E4D6F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D6FE: Proc_6_73_E22704(var_8C)
  loc_E4D70A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '121EE6C
  'Data Table: 49A594
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As String
  Dim var_B4 As TextBox
  Dim var_C8 As String
  Dim var_148 As Variant
  Dim unk_49A5AC As Connection15
  loc_121E993: var_86 = Cancel
  loc_121E99E: If (var_86 = CInt(0)) Then
  loc_121E9AC:   Set var_8C = Me.Txt
  loc_121E9B2:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_121E9BA:   var_98 = "Location Name"
  loc_121E9DB:   If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_121E9E9:     Set var_8C = Me.Txt
  loc_121E9EF:     Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_121E9F7:     var_90.SetFocus
  loc_121EA05:     arg_10 = &HFF
  loc_121EA08:     Exit Sub
  loc_121EA09:   End If
  loc_121EA57:   Set var_8C = Me.Txt
  loc_121EA5D:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_121EA65:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_121EA7D:   If (arg_10 Or (var_98 = vbNullString)) Then
  loc_121EA8D:     Set var_8C = Me.Txt
  loc_121EA93:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121EA9B:     var_90.Text = vbNullString
  loc_121EAB4:     Set var_8C = Me.Txt
  loc_121EABA:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121EAC2:     var_90.Tag = vbNullString
  loc_121EAD1:   Else
  loc_121EB0C:     Set var_94 = Me.Txt
  loc_121EB12:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121EB1A:     var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_121EB4D:     var_90 = Me.Fields.Item("Code")
  loc_121EB55:     var_C4 = var_90.Value
  loc_121EB5E:     var_98 = CStr(var_C4)
  loc_121EB6B:     Set var_94 = Me.Txt
  loc_121EB71:     Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121EB79:     var_B4.Tag = var_98
  loc_121EB8F:   End If
  loc_121EBAC:   Set var_8C = Me.Txt
  loc_121EBB2:   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, "Select Distinct LF.FcCode As Code,FM.Name from locationfacility  LF Left Join FacilityMast FM On LF.FcCode=FM.Code Where FM.MeterReading='Y' And FM.ChargeType='Calculated' And appdate in (select top 1 Appdate from LocationFacility where lccode='")
  loc_121EBBA:   var_16C = var_90.Tag
  loc_121EBC3:   var_C8 = -1 & var_98
  loc_121EBD8:   Proc_6_7_F25D88(var_C4, MemVar_1F920EC, CVar(var_C8 & "' and appdate<="))
  loc_121EBFC:   var_148 = var_94 & var_C4 & " order by appdate desc) And (LF.LOGSITE_CODE='" & CVar(MemVar_1F92078) & "' or LF.LOGSITE_CODE='HO') Order By Name" 
  loc_121EC0A:   unk_49A5AC.Execute CStr(var_148), var_86, 
  loc_121EC1B:   Set global_80 = var_94
  loc_121EC4D:   CVarUnk
  loc_121EC52:   VerifyVarObj
  loc_121EC58:   Set var_8C = Me.DGFacility
  loc_121EC5E:   LateIdStAd
  loc_121EC6F: Else
  loc_121EC77:   If (var_86 = CInt(1)) Then
  loc_121EC85:     Set var_8C = Me.Txt
  loc_121EC8B:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_121EC93:     var_98 = "Facility Name"
  loc_121ECB4:     If (Proc_6_27_EA565C(var_90, var_98) = 0) Then
  loc_121ECC2:       Set var_8C = Me.Txt
  loc_121ECC8:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_121ECD0:       var_90.SetFocus
  loc_121ECDE:       arg_10 = &HFF
  loc_121ECE1:       Exit Sub
  loc_121ECE2:     End If
  loc_121ED36:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_121ED3E:     arg_10 = var_90.Text
  loc_121ED56:     If (Me.Txt Or (var_98 = vbNullString)) Then
  loc_121ED66:       Set var_8C = Me.Txt
  loc_121ED6C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121ED74:       var_90.Text = vbNullString
  loc_121ED8D:       Set var_8C = Me.Txt
  loc_121ED93:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_121ED9B:       var_90.Tag = vbNullString
  loc_121EDAA:     Else
  loc_121EDE5:       Set var_94 = Me.Txt
  loc_121EDEB:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121EDF3:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_121EE44:       Set var_94 = Me.Txt
  loc_121EE4A:       Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_121EE52:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_121EE68:     End If
  loc_121EE68:   End If
  loc_121EE68: End If
  loc_121EE68: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E85B70
  'Data Table: 49A594
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E85B13: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E85B26: Set var_A8 = Me.TxtGrid
  loc_E85B2C: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85B34: var_AC.Visible = False
  loc_E85B4E: Set var_A8 = Me.TxtGrid
  loc_E85B54: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E85B5C: var_AC.MaxLength = 0
  loc_E85B68: Call Proc_327_54_EB8B7C()
  loc_E85B6D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E684C8
  'Data Table: 49A594
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E68484: Set var_88 = Me.TxtGrid
  loc_E6848A: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E684A4: If (var_8C.Visible = 0) Then
  loc_E684BD:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E684C5: End If
  loc_E684C5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F6D0
  'Data Table: 49A594
  loc_E1F6C7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F6CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'DFF28C
  'Data Table: 49A594
  Dim arg_1CFF As Double
  loc_DFF284: Call Proc_327_49_E44BA4()
  loc_DFF289: Exit Sub
  loc_DFF28A: arg_1CFF = 
End Sub

Private Sub FGrid_UnknownEvent_A '10CDD6C
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim Cancel As Integer
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  loc_10CDA78: Set var_88 = Me.TopCtrl1
  loc_10CDA7E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10CDAC3: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_10CDACC:   Call Form_KeyDown(Cancel, arg_10)
  loc_10CDAD1: End If
  loc_10CDAD5: Set var_88 = Me.TopCtrl1
  loc_10CDADB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10CDAF4: If (CStr() = "Browse") Then
  loc_10CDAF7:   Exit Sub
  loc_10CDAF8: End If
  loc_10CDB15: var_C4 = Me.FGrid.Rows
  loc_10CDB6C: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_10CDB82:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10CDB92:   var_9C = "+{Tab}"
  loc_10CDB98:   Proc_303_0_FB9B68(CStr(Me.FGrid.Tag), 0)
  loc_10CDBA2:   Cancel = 0
  loc_10CDBA8: Else
  loc_10CDBB2:   var_B0 = Me.FGrid.Rows
  loc_10CDBFF:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10CDC15:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10CDC2B:     Proc_303_0_FB9B68("{Tab}", 0, var_B0)
  loc_10CDC35:     Cancel = 0
  loc_10CDC6F:     If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_10CDC72:       Call TopCtrl1_UnknownEvent_16()
  loc_10CDC77:     End If
  loc_10CDC77:   End If
  loc_10CDC77: End If
  loc_10CDC7D: global_68 = Cancel
  loc_10CDCA3: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10CDCC7: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10CDCDD:   var_11C = CLng(Me.FGrid.Col)
  loc_10CDCED:   If Not (var_11C = CLng(1)) Then
  loc_10CDCF7:     If (var_11C = CLng(2)) Then
  loc_10CDCFA:     End If
  loc_10CDD0D:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CDD25:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10CDD2A:     var_12C = vbNullString
  loc_10CDD34:     Set var_B4 = Me.FGrid
  loc_10CDD3A:     LateIdCallSt
  loc_10CDD52:   End If
  loc_10CDD52: End If
  loc_10CDD58: If (Cancel = &HD) Then
  loc_10CDD60:   global_70 = 0
  loc_10CDD63: End If
  loc_10CDD65: Cancel = 0
  loc_10CDD68: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0CCE0
  'Data Table: 49A594
  loc_E0CCD1: Call FGrid_UnknownEvent_C()
  loc_E0CCDB: global_70 = 0
  loc_E0CCDE: Exit Sub
  loc_E0CCDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C '1106828
  'Data Table: 49A594
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_11064F0: Set var_88 = Me.TopCtrl1
  loc_11064F6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_110650F: If (CStr() = "Browse") Then
  loc_1106512:   Exit Sub
  loc_1106513: End If
  loc_1106517: Set var_88 = Me.TopCtrl1
  loc_110651D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1106536: If (CStr() = "Browse") Then
  loc_1106539:   Exit Sub
  loc_110653A: End If
  loc_110654D: var_A0 = CLng(Me.FGrid.Col)
  loc_110655D: If (var_A0 = CLng(1)) Then
  loc_1106564:   Set var_C4 = Me.FGrid
  loc_1106588:   var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_11065B5:   Set var_B4 = var_C4
  loc_11065C7:   Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_11065EF:   Set var_88 = Me.TxtGrid
  loc_11065F5:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_11065FD:   0 = var_B4.Text
  loc_1106616:   If (Len(var_9C) <= 1) Then
  loc_1106625:     Set var_88 = Me.TxtGrid
  loc_110662B:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1106633:     var_CA = var_B4.Text
  loc_1106644:     Set var_B8 = Me.TxtGrid
  loc_110664A:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_1106652:     var_C4.Text = var_9C
  loc_1106665:   End If
  loc_1106671:   Set var_88 = Me.TxtGrid
  loc_1106677:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_1106691:   Set var_B8 = Me.TxtGrid
  loc_1106697:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_110669F:   var_C4.SelStart = Len(var_B4.Text)
  loc_11066B5: Else
  loc_11066BC:   If (var_A0 = CLng(2)) Then
  loc_11066C3:     Set var_C4 = Me.FGrid
  loc_11066E7:     var_9C = CStr(Ucase(Chr(CLng(Cancel))))
  loc_1106714:     Set var_B4 = var_C4
  loc_1106726:     Proc_6_63_110ABA4(Me, var_B4, Me.TxtGrid, 0, &HFF)
  loc_110674E:     Set var_88 = Me.TxtGrid
  loc_1106754:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C, Asc(var_9C))
  loc_110675C:     0 = var_B4.Text
  loc_1106775:     If (Len(var_9C) <= 1) Then
  loc_1106784:       Set var_88 = Me.TxtGrid
  loc_110678A:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_9C)
  loc_1106792:       var_CA = var_B4.Text
  loc_11067A3:       Set var_B8 = Me.TxtGrid
  loc_11067A9:       Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11067B1:       var_C4.Text = var_9C
  loc_11067C4:     End If
  loc_11067D0:     Set var_88 = Me.TxtGrid
  loc_11067D6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_11067F0:     Set var_B8 = Me.TxtGrid
  loc_11067F6:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_11067FE:     var_C4.SelStart = Len(var_B4.Text)
  loc_1106811:   End If
  loc_1106811: End If
  loc_110681B: If (CLng(Cancel) <> &HD) Then
  loc_1106823:   global_70 = &HFF
  loc_1106826: End If
  loc_1106826: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1F720
  'Data Table: 49A594
  loc_E1F717: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1F71F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1F680
  'Data Table: 49A594
  loc_E1F677: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F67F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E449B4
  'Data Table: 49A594
  Dim var_8C As TextBox
  loc_E44988: Call Proc_327_54_EB8B7C()
  loc_E44998: Set var_88 = Me.TxtGrid
  loc_E4499E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E449A6: var_8C.Visible = False
  loc_E449B2: Exit Sub
End Sub

Public Function MasterFormExitGet() '49B1F0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '49B1FF
  MasterFormExit = Value
End Sub

Public Function SearchCodeGet() '49B20E
  SearchCodeGet = SearchCode
End Function

Public Sub SearchCodePut(Value) '49B21D
  SearchCode = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93868
  'Data Table: 49A594
  Dim Me As Recordset15
  loc_E937F6: On Error Goto loc_E9385F
  loc_E937FF: Me.MoveFirst
  loc_E93829: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93851: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_E93859: Call Proc_327_52_12D6E88(0)
  loc_E9385E: Exit Sub
  loc_E9385F: ' Referenced from: E937F6
  loc_E9385F: Proc_6_60_E62BC4(var_A0)
  loc_E93864: Exit Sub
End Sub

Public Sub Proc_327_47_10A84DC
  'Data Table: 49A594
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_104 As TextBox
  Dim var_10C As DataGrid
  Dim var_110 As TextBox
  loc_10A8214: On Error Goto loc_10A84D5
  loc_10A821B: Set var_88 = Me.FGrid
  loc_10A822A: var_88.Height = CVar(CDbl(6000))
  loc_10A823B: var_88.Width = CVar(CDbl(4500))
  loc_10A824C: var_88.Cols = 3
  loc_10A825D: var_88.Rows = 2
  loc_10A8276: global_60 = CStr(CLng(var_88.BackColor))
  loc_10A8280: var_98 = 0
  loc_10A8289: var_CC = &H64
  loc_10A8295: LateIdCallSt
  loc_10A82A0: var_98 = CVar(CLng(1)) 'Long
  loc_10A82A5: var_CC = &H898
  loc_10A82B1: LateIdCallSt
  loc_10A82B9: var_98 = 0
  loc_10A82C5: var_CC = CVar(CLng(1)) 'Long
  loc_10A82CA: var_EC = "For Date"
  loc_10A82D3: LateIdCallSt
  loc_10A82DE: var_98 = CVar(CLng(1)) 'Long
  loc_10A82E9: var_CC = CVar(CInt(1)) 'Integer
  loc_10A82F0: LateIdCallSt
  loc_10A82FB: var_98 = CVar(CLng(2)) 'Long
  loc_10A8300: var_CC = &H708
  loc_10A830C: LateIdCallSt
  loc_10A8314: var_98 = 0
  loc_10A8320: var_CC = CVar(CLng(2)) 'Long
  loc_10A8325: var_EC = "Reading"
  loc_10A832E: LateIdCallSt
  loc_10A8339: var_98 = CVar(CLng(2)) 'Long
  loc_10A8344: var_CC = CVar(CInt(7)) 'Integer
  loc_10A834B: LateIdCallSt
  loc_10A8368: LateIdCallSt
  loc_10A8372: Set var_88 = Nothing 
  loc_10A8384: Set var_100 = Me.Txt
  loc_10A838A: Call 0.Method_Proc_327_47_10A84DC0 (CInt(0), var_104, var_108, var_88, CVar(CInt(7)), CVar(CLng(2)), var_88)
  loc_10A8392: var_CC = var_104.Left
  loc_10A839A: var_98 = CVar(var_108) 'Single
  loc_10A83A9: Me.DGLocation.Left = var_98
  loc_10A83C5: Set var_10C = Me.Txt
  loc_10A83CB: Call 0.Method_Proc_327_47_10A84DC0 (CInt(0), var_110, var_114, var_98, var_88)
  loc_10A83D3: var_EC = var_110.Height
  loc_10A83E6: Set var_100 = Me.Txt
  loc_10A83EC: Call 0.Method_Proc_327_47_10A84DC0 (CInt(0), var_104, var_108)
  loc_10A83F4: var_CC = var_104.Top
  loc_10A8404: var_98 = CVar(((var_108 + var_114) + CDbl(&H19))) 'Single
  loc_10A8413: Me.DGLocation.Top = var_98
  loc_10A8433: Set var_100 = Me.Txt
  loc_10A8439: Call 0.Method_Proc_327_47_10A84DC0 (CInt(1), var_104, var_108)
  loc_10A8441: var_98 = var_104.Left
  loc_10A8458: Me.DGFacility.Left = CVar(var_108)
  loc_10A8474: Set var_10C = Me.Txt
  loc_10A847A: Call 0.Method_Proc_327_47_10A84DC0 (CInt(1), var_110)
  loc_10A8495: Set var_100 = Me.Txt
  loc_10A849B: Call 0.Method_Proc_327_47_10A84DC0 (CInt(1), var_104)
  loc_10A84B3: var_98 = CVar(((var_104.Top + var_110.Height) + CDbl(&H19))) 'Single
  loc_10A84C2: Me.DGFacility.Top = CVar(var_104.Top)
  loc_10A84D4: Exit Sub
  loc_10A84D5: ' Referenced from: 10A8214
  loc_10A84D5: Proc_6_60_E62BC4(var_88)
  loc_10A84DA: Exit Sub
End Sub

Public Sub Proc_327_48_FC4134
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_F4 As Integer
  Dim var_98 As TextBox
  Dim var_AC As TextBox
  Dim unk_49A5AC As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_DC As Variant
  loc_FC3FD3: If (Me.RecordCount = 0) Then
  loc_FC3FD6:   Proc_327_48_FC4134 = 
  loc_FC3FDC: End If
  loc_FC3FE2: var_F4 = 0
  loc_FC4017: Set var_94 = Me.Txt
  loc_FC401D: Call 0.Method_Proc_327_48_FC41340 (CInt(0), var_98, var_9C, "Select Count(*) From FMReading Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') and (LocationCode='", var_DC, -1)
  loc_FC4046: Set var_A8 = Me.Txt
  loc_FC404C: Call 0.Method_Proc_327_48_FC41340 (CInt(1), var_AC, var_B0, var_E4 & var_9C & "' And FacilityCode='")
  loc_FC4054: var_F4 = var_AC.Tag
  loc_FC406D: unk_49A5AC.Execute var_F8 & var_B0 & "')", var_108, 
  loc_FC4075:  = var_98.Tag.Fields
  loc_FC407D:  = var_E4.Item()
  loc_FC4085:  = var_F8.Value
  loc_FC40C0: If (var_108 > 0) Then
  loc_FC40EA:   MsgBox(CVar("Facility Meter Reading Entry Point Already Exists" & vbCrLf & "Please Find & Edit for More Entries"), &H40, "Information", var_128, var_138)
  loc_FC4108:   Set var_94 = Me.Txt
  loc_FC410E:   Call 0.Method_Proc_327_48_FC41340 (CInt(0))
  loc_FC4116:   var_98.SetFocus
  loc_FC4127:   Proc_327_48_FC4134 = &HFF
  loc_FC412D: End If
  loc_FC412D: Proc_327_48_FC4134 = var_98
End Sub

Public Sub Proc_327_49_E44BA4
  'Data Table: 49A594
  loc_E44B80: Set var_88 = Me.TopCtrl1
  loc_E44B86: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E44B9F: If (CStr() = "Browse") Then
  loc_E44BA2:   Exit Sub
  loc_E44BA3: End If
  loc_E44BA3: Exit Sub
End Sub

Public Sub Proc_327_50_1052BB0
  'Data Table: 49A594
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B4 As String
  Dim var_B0 As TextBox
  Dim var_D4 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_F4 As Variant
  Dim var_A4 As Variant
  Dim var_124 As Variant
  Dim var_168 As Variant
  loc_105296F: var_A0 = CLng(Me.FGrid.Col)
  loc_105297F: If (var_A0 = CLng(1)) Then
  loc_105298B:   Set var_8C = Me.TxtGrid
  loc_1052991:   Call 0.Method_Proc_327_50_1052BB00 (0, var_A4)
  loc_10529A4:   var_B4 = Proc_6_33_1512840(var_A4)
  loc_10529B0:   Set var_AC = Me.TxtGrid
  loc_10529B6:   Call 0.Method_Proc_327_50_1052BB00 (0, var_B0)
  loc_10529BE:   var_B0.Text = var_B4
  loc_10529E4:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10529FC:   var_F4 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1052A0D:   Set var_8C = Me.TxtGrid
  loc_1052A13:   Call 0.Method_Proc_327_50_1052BB00 (0, var_A4, var_B4)
  loc_1052A1B:   var_F4 = var_A4.Text
  loc_1052A31:   LateIdCallSt
  loc_1052A52:   Call Proc_327_55_FCBFE8(var_126, Me.FGrid, CVar(var_B4))
  loc_1052A5D:   If (var_126 = 0) Then
  loc_1052A65:     Proc_327_50_1052BB0 = 0
  loc_1052A6B:   End If
  loc_1052A84:   var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1052A89:   var_F4 = 1
  loc_1052A96:   Set var_A4 = Me.FGrid
  loc_1052AA7:   var_B4 = CStr(var_A4.TextMatrix))
  loc_1052AC0:   If (var_B4 <> vbNullString) Then
  loc_1052AC3:     var_D4 = vbNullString
  loc_1052ACD:     Set var_8C = Me.FGrid
  loc_1052ADE:   End If
  loc_1052AE1: Else
  loc_1052AE8:   If (var_A0 = CLng(2)) Then
  loc_1052AF7:     Set var_8C = Me.TxtGrid
  loc_1052AFD:     Call 0.Method_Proc_327_50_1052BB00 (0, var_A4, var_B4, FGrid.DispID_10000, var_D4)
  loc_1052B05:     var_F4 = var_A4.Text
  loc_1052B28:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1052B40:     var_124 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1052B6D:     var_168 = CVar(CStr(Format(CVar(Val(var_B4)), "0.000"))) 'String
  loc_1052B75:     Set var_B0 = Me.FGrid
  loc_1052B7B:     LateIdCallSt
  loc_1052BA2:   End If
  loc_1052BA2: End If
  loc_1052BA7: Proc_327_50_1052BB0 = &HFF
  loc_1052BAE: End Sub
End Sub

Public Sub Proc_327_51_F16848
  'Data Table: 49A594
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F1675E: Set var_8C = Me.Txt
  loc_F16764: Call 0.Method_Proc_327_51_F16848C (var_8E, var_86)
  loc_F16774: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F1678A:   Set var_8C = Me.Txt
  loc_F16790:   Call 0.Method_Proc_327_51_F168480 (CInt(var_86), var_98)
  loc_F16798:   var_98.Text = vbNullString
  loc_F167B4:   Set var_8C = Me.Txt
  loc_F167BA:   Call 0.Method_Proc_327_51_F168480 (CInt(var_86), var_98)
  loc_F167C2:   var_98.Tag = vbNullString
  loc_F167D1: Next var_92 'Byte
  loc_F167EA: Me.FGrid.Rows = 1
  loc_F16807: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1680F: Set var_98 = Me.FGrid
  loc_F1683E: Me.FGrid.FixedRows = 1
  loc_F16846: Exit Sub
End Sub

Public Sub Proc_327_52_12D6E88
  'Data Table: 49A594
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_B0 As Variant
  Dim var_A0 As Variant
  Dim var_104 As Variant
  Dim unk_49A5AC As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As TextBox
  Dim var_12C As Fields15
  Dim var_150 As Variant
  Dim var_118 As Variant
  Dim var_8A As Integer
  Dim var_128 As Variant
  loc_12D681C: On Error Goto loc_12D6E7F
  loc_12D6836: If (Me.RecordCount > 0) Then
  loc_12D6839:   Call Proc_327_51_F16848()
  loc_12D6852:   var_94 = "Select FM.*,FM1.ForDate,FM1.Reading,LM.Name As LocationName,F.Name As FacilityName From (((FMReading1 FM1 Left Join FMReading FM On FM1.Code=Fm.Code)Left Join LocationMast LM On FM.LocationCode=LM.Code) Left Join FacilityMast F On FM.FacilityCode=F.Code) Where FM.LogSite_Code='" & MemVar_1F92078
  loc_12D68A0:   var_104 = CVar(var_94 & "' and FM.Site_Code='" & MemVar_1F92070 & "' and FM.Code='") & Me.Fields.Item("SearchCode").Value & "' Order By FM1.ForDate" 
  loc_12D68AE:   unk_49A5AC.Execute CStr(var_104), var_128, -1
  loc_12D68B9:   Set var_88 = var_12C
  loc_12D68F1:   If (var_88.RecordCount > 0) Then
  loc_12D692A:     Set var_12C = Me.Txt
  loc_12D6930:     Call 0.Method_Proc_327_52_12D6E880 (CInt(0), var_130)
  loc_12D6938:     var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LocationCode")))
  loc_12D6982:     Set var_12C = Me.Txt
  loc_12D6988:     Call 0.Method_Proc_327_52_12D6E880 (CInt(0), var_130)
  loc_12D6990:     var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("LocationName")))
  loc_12D69DA:     Set var_12C = Me.Txt
  loc_12D69E0:     Call 0.Method_Proc_327_52_12D6E880 (CInt(1), var_130)
  loc_12D69E8:     var_130.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FacilityCode")))
  loc_12D6A32:     Set var_12C = Me.Txt
  loc_12D6A38:     Call 0.Method_Proc_327_52_12D6E880 (CInt(1), var_130)
  loc_12D6A40:     var_130.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("FacilityName")))
  loc_12D6A8E:     var_12C = var_88.Fields
  loc_12D6AF7:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_12C.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12D6B3C:     Me.LblUser.Caption = CStr(var_12C & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_190)))
  loc_12D6C17:     var_190 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_12D6C5C:     Me.LblLDt.Caption = CStr(var_190 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12D6C96:     var_8A = 1
  loc_12D6CAC:     Me.FGrid.Rows = 1
  loc_12D6CB4:     ' Referenced from: 12D6DF6
  loc_12D6CC3:     If Not(var_88.EOF) Then
  loc_12D6CC6:       var_B0 = vbNullString
  loc_12D6CD0:       Set var_A0 = Me.FGrid
  loc_12D6CE5:       Set var_1E8 = Me.FGrid
  loc_12D6D17:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_12D6D1F:       var_150 = CVar(CLng(1)) 'Long
  loc_12D6D4B:       var_128 = CVar(CStr(Format(CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("ForDate")), FGrid.DispID_10000)), "dd/MMM/yyyy"))) 'String
  loc_12D6D52:       LateIdCallSt
  loc_12D6D8D:       var_118 = CVar(CLng(var_8A)) 'Long
  loc_12D6D95:       var_150 = CVar(CLng(2)) 'Long
  loc_12D6DC2:       var_104 = CVar(CStr(Format(CVar(var_88.Fields.Item("Reading")), "0.000"))) 'String
  loc_12D6DC9:       LateIdCallSt
  loc_12D6DE1:       Set var_1E8 = Nothing 
  loc_12D6DEB:       var_8A = (var_8A + 1)
  loc_12D6DF1:       var_88.MoveNext
  loc_12D6DF6:       GoTo loc_12D6CB4
  loc_12D6DF9:     End If
  loc_12D6DF9:   End If
  loc_12D6DF9:   var_B0 = 0
  loc_12D6E03:   Set var_A0 = Me.FGrid
  loc_12D6E30:   If (CLng(Me.FGrid.Rows) = 1) Then
  loc_12D6E33:     var_B0 = "1"
  loc_12D6E3D:     Set var_A0 = Me.FGrid
  loc_12D6E4E:   End If
  loc_12D6E4E:   var_B0 = 1
  loc_12D6E61:   Me.FGrid.FixedRows = var_B0
  loc_12D6E6C: Else
  loc_12D6E6C:   Call Proc_327_51_F16848(FGrid.DispID_10000, var_B0, FGrid.DispID_2E, var_B0, var_8A, var_1E8, var_104)
  loc_12D6E71: End If
  loc_12D6E71: Call Proc_327_54_EB8B7C(1, 1, var_150)
  loc_12D6E7B: Set var_88 = Nothing
  loc_12D6E7E: Exit Sub
  loc_12D6E7F: ' Referenced from: 12D681C
  loc_12D6E7F: Proc_6_60_E62BC4(var_118, var_1E8)
  loc_12D6E84: Exit Sub
End Sub

Public Sub Proc_327_53_E7ADF4(arg_C) 'E7ADF4
  'Data Table: 49A594
  Dim var_98 As TextBox
  loc_E7ADA2: Set var_8C = Me.Txt
  loc_E7ADA8: Call 0.Method_Proc_327_53_E7ADF4C (var_8E, var_86)
  loc_E7ADB8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7ADCE:   Set var_8C = Me.Txt
  loc_E7ADD4:   Call 0.Method_Proc_327_53_E7ADF40 (CInt(var_86), var_98)
  loc_E7ADDC:   var_98.Enabled = arg_C
  loc_E7ADEB: Next var_92 'Byte
  loc_E7ADF1: Exit Sub
End Sub

Public Sub Proc_327_54_EB8B7C
  'Data Table: 49A594
  loc_EB8AF8: If (CBool(Me.DGLocation.Visible) = &HFF) Then
  loc_EB8B0A:   Me.DGLocation.Visible = False
  loc_EB8B12: End If
  loc_EB8B2E: If (CBool(Me.DGFacility.Visible) = &HFF) Then
  loc_EB8B40:   Me.DGFacility.Visible = False
  loc_EB8B48: End If
  loc_EB8B63: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8B72:   Me.FrmList.Visible = False
  loc_EB8B7A: End If
  loc_EB8B7A: Exit Sub
End Sub

Public Sub Proc_327_55_FCBFE8
  'Data Table: 49A594
  Dim var_A0 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_B8 As TextBox
  loc_FCBE53: If (CLng(Me.FGrid.Col) = CLng(1)) Then
  loc_FCBE58:   var_9A = 1 'Byte
  loc_FCBE5C: End If
  loc_FCBE65: Set var_A0 = Me.TxtGrid
  loc_FCBE6B: Call 0.Method_Proc_327_55_FCBFE80 (0, var_B8)
  loc_FCBE94: If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_FCBE97:   GoTo loc_FCBFDA
  loc_FCBE9A: End If
  loc_FCBEA3: Set var_A0 = Me.TxtGrid
  loc_FCBEA9: Call 0.Method_Proc_327_55_FCBFE80 (0, var_B8)
  loc_FCBEC2: var_90 = CDate(Trim(CVar(var_B8)))
  loc_FCBEF6: For var_EC = 1 To CInt((CLng(Me.FGrid.Rows) - 2)): var_88 = var_EC 'Integer
  loc_FCBF1A:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FCBF1D:     GoTo loc_FCBFD2
  loc_FCBF20:   End If
  loc_FCBF24:   var_D8 = CVar(CLng(var_88)) 'Long
  loc_FCBF4E:   var_E8 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FCBF58:   var_98 = CDate(var_E8)
  loc_FCBF70:   If (var_90 = var_98) Then
  loc_FCBF94:     MsgBox("Duplicate For Date Not Allowed", &H40, "Validation", var_E8, var_12C)
  loc_FCBFAD:     Set var_A0 = Me.TxtGrid
  loc_FCBFB3:     Call 0.Method_Proc_327_55_FCBFE80 (0, var_B8, var_98, CVar(CLng(var_9A)))
  loc_FCBFBB:     var_B8.SetFocus
  loc_FCBFCC:     Proc_327_55_FCBFE8 = 0
  loc_FCBFD2:     ' Referenced from: FCBF1D
  loc_FCBFD2:   End If
  loc_FCBFD5: Next var_EC 'Integer
  loc_FCBFDA: ' Referenced from: FCBE97
  loc_FCBFDF: Proc_327_55_FCBFE8 = &HFF
End Sub
