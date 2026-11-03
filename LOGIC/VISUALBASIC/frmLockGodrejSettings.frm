VERSION 5.00
Begin VB.Form frmLockGodrejSettings
  Caption = "Godrej Locks"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = -15
  ClientTop = 375
  ClientWidth = 10395
  ClientHeight = 7470
  LockControls = -1  'True
  StartUpPosition = 1 'CenterOwner
  Begin CommandButton comSave
    Caption = "Save && Exit"
    Left = 3810
    Top = 2040
    Width = 1575
    Height = 495
    TabIndex = 32
  End
  Begin TextBox txtRepeatTimes
    Left = 1680
    Top = 1440
    Width = 1695
    Height = 285
    Enabled = 0   'False
    Text = "1"
    TabIndex = 31
    MaxLength = 6
  End
  Begin CommandButton comExit
    Caption = "Exit"
    Left = 5520
    Top = 2040
    Width = 1575
    Height = 495
    TabIndex = 13
  End
  Begin CommandButton comWrite
    Caption = "Write"
    Left = 4560
    Top = 4440
    Width = 1215
    Height = 495
    Visible = 0   'False
    TabIndex = 12
  End
  Begin CommandButton comRead
    Caption = "Read"
    Left = 3120
    Top = 4440
    Width = 1335
    Height = 495
    Visible = 0   'False
    TabIndex = 11
  End
  Begin Frame Frame1
    Caption = "Card Information"
    Left = 120
    Top = 2655
    Width = 7095
    Height = 2295
    Visible = 0   'False
    TabIndex = 10
    Begin TextBox txtET
      Left = 4200
      Top = 1680
      Width = 1575
      Height = 375
      Text = "0708191500"
      TabIndex = 29
      MaxLength = 10
    End
    Begin TextBox txtGN
      Left = 4200
      Top = 1200
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 28
    End
    Begin TextBox txtMC
      Left = 4200
      Top = 720
      Width = 1575
      Height = 375
      Text = "00000000"
      TabIndex = 27
      MaxLength = 8
    End
    Begin TextBox txtLC
      Left = 4200
      Top = 240
      Width = 1575
      Height = 375
      Text = "000001"
      TabIndex = 26
      MaxLength = 6
    End
    Begin TextBox txtBT
      Left = 1680
      Top = 1680
      Width = 1575
      Height = 375
      Text = "0708181500"
      TabIndex = 25
      MaxLength = 10
    End
    Begin TextBox txtGI
      Left = 1680
      Top = 1200
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 24
    End
    Begin TextBox txtNC
      Left = 1680
      Top = 720
      Width = 1575
      Height = 375
      Text = "0000"
      TabIndex = 23
      MaxLength = 4
    End
    Begin TextBox txtCN
      Left = 1680
      Top = 240
      Width = 1575
      Height = 375
      Text = "1"
      TabIndex = 22
    End
    Begin Label lblET
      Caption = "ET:"
      Left = 3600
      Top = 1800
      Width = 855
      Height = 255
      TabIndex = 21
    End
    Begin Label lblGN
      Caption = "GN:"
      Left = 3600
      Top = 1320
      Width = 975
      Height = 255
      TabIndex = 20
    End
    Begin Label lblMC
      Caption = "MC:"
      Left = 3600
      Top = 840
      Width = 855
      Height = 255
      TabIndex = 19
    End
    Begin Label lblLC
      Caption = "LC:"
      Left = 3600
      Top = 360
      Width = 735
      Height = 255
      TabIndex = 18
    End
    Begin Label lblBT
      Caption = "BT:"
      Left = 960
      Top = 1800
      Width = 615
      Height = 255
      TabIndex = 17
    End
    Begin Label lblGI
      Caption = "GI:"
      Left = 960
      Top = 1320
      Width = 495
      Height = 255
      TabIndex = 16
    End
    Begin Label lblNC
      Caption = "NC:"
      Left = 960
      Top = 840
      Width = 495
      Height = 255
      TabIndex = 15
    End
    Begin Label lblCN
      Caption = "CN:"
      Left = 960
      Top = 360
      Width = 495
      Height = 255
      TabIndex = 14
    End
  End
  Begin Frame freSystemSetting
    Caption = "System Setting"
    Left = 3720
    Top = 120
    Width = 3495
    Height = 1815
    TabIndex = 5
    Begin TextBox txtSectorNo
      Left = 1680
      Top = 360
      Width = 1695
      Height = 285
      Enabled = 0   'False
      Text = "0"
      TabIndex = 9
      MaxLength = 6
    End
    Begin TextBox txtSystemPassword
      Left = 1680
      Top = 840
      Width = 1695
      Height = 285
      TabIndex = 8
      MaxLength = 6
    End
    Begin Label lblSectorNo
      Caption = "System Pwd No:"
      Left = 120
      Top = 840
      Width = 1455
      Height = 255
      TabIndex = 7
    End
    Begin Label lblsystemPwd
      Caption = "Sector No:"
      Left = 120
      Top = 360
      Width = 1455
      Height = 255
      TabIndex = 6
    End
  End
  Begin Frame freconnection
    Caption = "Connection Setting"
    Left = 120
    Top = 120
    Width = 3495
    Height = 1815
    TabIndex = 0
    Begin ComboBox cmbDP
      Left = 1560
      Top = 840
      Width = 1695
      Height = 300
      Text = "COM1"
      TabIndex = 4
      List = "frmLockGodrejSettings.frx":0
      ItemData = "frmLockGodrejSettings.frx":1C
    End
    Begin ComboBox cmbDM
      Left = 1560
      Top = 360
      Width = 1695
      Height = 315
      Text = "ZYMSR100"
      TabIndex = 3
      List = "frmLockGodrejSettings.frx":2C
      ItemData = "frmLockGodrejSettings.frx":59
    End
    Begin Label lblRepeatTimes
      Caption = "Repeat Times:"
      Left = 240
      Top = 1320
      Width = 1215
      Height = 255
      TabIndex = 30
    End
    Begin Label lblPortNo
      Caption = "Port No:"
      Left = 240
      Top = 840
      Width = 735
      Height = 255
      TabIndex = 2
    End
    Begin Label lblReaderModel
      Caption = "Reader Model:"
      Left = 240
      Top = 360
      Width = 1215
      Height = 255
      TabIndex = 1
    End
  End
End

Attribute VB_Name = "frmLockGodrejSettings"


Private Sub comExit_Click() 'E17E48
  'Data Table: 4CBC8C
  loc_E17E3D: Me.Global.Unload Me
  loc_E17E45: Exit Sub
End Sub

Private Sub Form_Load() 'E881CC
  'Data Table: 4CBC8C
  loc_E8815C: On Error Goto loc_E881C6
  loc_E88169: Set global_52 = New 
  loc_E8817E: Me.Recordset15.CursorLocation = 3
  loc_E881B5: Me.Recordset15.Open CVar("Select * From DoorLockEnviro WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "')"), CVar(MemVar_1F92044), 2
  loc_E881C0: Call Proc_335_4_1053EAC(3)
  loc_E881C5: Exit Sub
  loc_E881C6: ' Referenced from: E8815C
  loc_E881C6: Proc_6_60_E62BC4(-1)
  loc_E881CB: Exit Sub
End Sub

Private Sub Form_Initialize() 'E326B8
  'Data Table: 4CBC8C
  loc_E32698: Me.cmbDM.ListIndex = 0
  loc_E326AC: Me.cmbDP.ListIndex = 0
  loc_E326B4: Exit Sub
End Sub

Private Sub comSave_Click() '117FC84
  'Data Table: 4CBC8C
  Dim unk_4CBC90 As Connection15
  Dim var_86 As Integer
  Dim var_9C As Variant
  Dim var_A8 As String
  Dim var_F0 As String
  Dim var_134 As Variant
  Dim var_104 As Variant
  loc_117F904: On Error Goto loc_117FC68
  loc_117F910: unk_4CBC90.BeginTrans var_94
  loc_117F917: var_86 = &HFF
  loc_117F926: var_94 = Me.Recordset15.RecordCount
  loc_117F934: If (var_94 = 0) Then
  loc_117F944:   var_9E = Me.cmbDM.ListIndex
  loc_117F956:   var_B6 = Me.cmbDP.ListIndex
  loc_117F969:   var_A8 = "Insert into DoorLockEnviro " & " (ReaderType,ReaderPort,CardSector,AlarmCount,HotelID,HotelPwd,LogSite_Code) " & " values ("
  loc_117F97C:   var_9E = Me.cmbDM.ItemData
  loc_117F9A4:   var_B6 = Me.cmbDP.ItemData
  loc_117FA0D:   var_134 = CVar(var_C0 & CStr(var_C0) & "," & CStr(Val(Me.txtSectorNo.Text)) & "," & CStr(Val(Me.txtRepeatTimes.Text)) & ",'',") 'String
  loc_117FA14:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_117FA26:   Proc_6_17_EAA2B0(var_124, Trim(var_104), var_134)
  loc_117FA46:   Proc_6_17_EAA2B0(var_184, MemVar_1F92078, var_94 & CStr(var_94) & "," & var_124 & ",")
  loc_117FABA:   unk_4CBC90.Execute CStr(var_A8 & var_184 & ")"), var_104, -1
  loc_117FAC8: Else
  loc_117FACF:   Set var_9C = Me.cmbDM
  loc_117FAD5:   var_9E = var_9C.ListIndex
  loc_117FAE7:   var_B6 = Me.cmbDP.ListIndex
  loc_117FB06:   var_9E = Me.cmbDM.ItemData
  loc_117FB2E:   var_B6 = Me.cmbDP.ItemData
  loc_117FB90:   var_F0 = var_C0 & CStr(var_C0) & ",CardSector=" & CStr(Val(Me.txtSectorNo.Text)) & ",AlarmCount=" & CStr(Val(Me.txtRepeatTimes.Text))
  loc_117FB9E:   var_104 = CVar(Me.txtSystemPassword) 'Address
  loc_117FBB0:   Proc_6_17_EAA2B0(var_124, Trim(var_104), CVar(var_F0 & ",HotelID='',HotelPwd="), var_94 & CStr(var_94) & ",ReaderPort=")
  loc_117FBD0:   Proc_6_17_EAA2B0(var_184, MemVar_1F92078, "Update DoorLockEnviro Set " & " ReaderType=" & var_124 & " Where LogSite_Code=")
  loc_117FC37:   unk_4CBC90.Execute CStr(var_9C & var_184), var_104, -1
  loc_117FC42: End If
  loc_117FC48: unk_4CBC90.CommitTrans
  loc_117FC4F: var_86 = 0
  loc_117FC55: var_9C = Me
  loc_117FC5F: Me.Global.Unload var_9C
  loc_117FC67: Exit Sub
  loc_117FC68: ' Referenced from: 117F904
  loc_117FC6E: If (var_86 = &HFF) Then
  loc_117FC77:   unk_4CBC90.RollbackTrans
  loc_117FC7C: End If
  loc_117FC7C: Proc_6_60_E62BC4(var_86, var_9C)
  loc_117FC81: Exit Sub
End Sub

Public Sub Proc_335_4_1053EAC
  'Data Table: 4CBC8C
  Dim var_BC As Variant
  Dim var_EC As Variant
  loc_1053C48: On Error Goto loc_1053EA6
  loc_1053C65: If (Me.Recordset15.RecordCount > 0) Then
  loc_1053C8D:   var_BC = CVar(Me.Recordset15.Fields.Item("ReaderType")) 'Address
  loc_1053C94:   Proc_6_39_E7C810(var_CC)
  loc_1053CA1:   var_EC = (var_CC - 1)
  loc_1053CB0:   Me.cmbDM.ListIndex = CInt(var_EC)
  loc_1053CEF:   Proc_6_39_E7C810(var_CC, CVar(Me.Recordset15.Fields.Item("Readerport")))
  loc_1053CFC:   var_EC = (var_CC - 1)
  loc_1053D0B:   Me.cmbDP.ListIndex = CInt(var_EC)
  loc_1053D52:   Me.cmbDM.Text = Me.cmbDM.List(Me.cmbDM.ListIndex)
  loc_1053D97:   Me.cmbDP.Text = Me.cmbDP.List(Me.cmbDP.ListIndex)
  loc_1053DD4:   Proc_6_39_E7C810(var_CC, CVar(Me.Recordset15.Fields.Item("CardSector")))
  loc_1053DEA:   Me.txtSectorNo.Text = CStr(var_CC)
  loc_1053E2C:   Proc_6_39_E7C810(var_CC, CVar(Me.Recordset15.Fields.Item("AlarmCount")))
  loc_1053E42:   Me.txtRepeatTimes.Text = CStr(var_CC)
  loc_1053E7D:   var_BC = CVar(Me.Recordset15.Fields.Item("HotelPwd")) 'Address
  loc_1053E93:   Me.txtSystemPassword.Text = Proc_6_38_E68A98(var_BC)
  loc_1053EA5: End If
  loc_1053EA5: Exit Sub
  loc_1053EA6: ' Referenced from: 1053C48
  loc_1053EA6: Proc_6_60_E62BC4(var_BC)
  loc_1053EAB: Exit Sub
End Sub
