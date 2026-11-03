VERSION 5.00
Begin VB.Form FrmChangeKitch
  Caption = "Kitchen Change Master"
  BackColor = &HEF9F5F&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  Visible = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 0
  ClientTop = 285
  ClientWidth = 4560
  ClientHeight = 2370
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin CommandButton CmdOK
    Caption = "&OK"
    Left = 1800
    Top = 1515
    Width = 900
    Height = 360
    TabIndex = 2
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 4560
    Height = 375
    Visible = 0   'False
    TabIndex = 1
  End
  Begin DataCombo TXT_REST
    Left = 930
    Top = 660
    Width = 2985
    Height = 360
    TabIndex = 3
  End
  Begin Shape Shape1
    BorderColor = &H0&
    Left = 1230
    Top = 1350
    Width = 2160
    Height = 705
    Shape = 4
    FillColor = &HF8D1B1&
    FillStyle = 0
  End
  Begin Label Label1
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 195
    Top = 705
    Width = 510
    Height = 225
    TabIndex = 0
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmChangeKitch"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F511BC
  'Data Table: 422DA4
  Dim var_86 As Integer
  Dim unk_422DAD As Connection15
  Dim MemVar_1F921A4 As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_E0 As Boolean
  loc_F510A8: On Error Goto loc_F511A1
  loc_F510B5: var_94 = "Name"
  loc_F510D6: If (Proc_6_27_EA565C(Me.TXT_REST) = 0) Then
  loc_F510D9:   Exit Sub
  loc_F510DA: End If
  loc_F510DC: var_86 = &HFF
  loc_F510E8: unk_422DAD.BeginTrans var_9C
  loc_F5110E: MemVar_1F921A4 = CStr(Trim(CVar(CStr(Me.TXT_REST.BoundText))))
  loc_F51124: unk_422DAD.CommitTrans
  loc_F51146: var_86 = 0
  loc_F51154: Me.Requery -1
  loc_F5117E: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F5118A: var_E0 = True
  loc_F51198: Me.TXT_REST.Enabled = var_E0
  loc_F511A0: Exit Sub
  loc_F511A1: ' Referenced from: F510A8
  loc_F511A7: If (var_86 = &HFF) Then
  loc_F511B0:   unk_422DAD.RollbackTrans
  loc_F511B5: End If
  loc_F511B5: Proc_6_60_E62BC4(var_E0, var_86, MemVar_1F921A4)
  loc_F511BA: Exit Sub
  loc_F511BB: Exit Sub
End Sub

Private Sub CmdOK_Click() 'F62A70
  'Data Table: 422DA4
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim MemVar_1F921C4 As String
  Dim unk_422DAD As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F921C8 As String
  Dim MemVar_1F921CC As String
  loc_F6296B: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_F62972:   Set var_8C = Me.TXT_REST
  loc_F62978:   var_9C = var_8C.BoundText
  loc_F62980:   MemVar_1F921C4 = CStr(var_9C)
  loc_F629AE:   unk_422DAD.Execute "Select RestType,BackColor From Depart Where Code='" & MemVar_1F921A4 & "'", var_9C, -1
  loc_F629B9:   Set var_88 = var_8C
  loc_F629DD:   If (var_88.RecordCount > 0) Then
  loc_F62A0B:     MemVar_1F921C8 = CStr(var_88.Fields.Item(0).Value)
  loc_F62A44:     MemVar_1F921CC = CStr(var_88.Fields.Item(1).Value)
  loc_F62A52:   End If
  loc_F62A5F:   Me.Global.Unload Me
  loc_F62A67: End If
  loc_F62A6C: Set var_88 = Nothing
  loc_F62A6F: Exit Sub
End Sub

Private Sub Form_Load() 'F2A460
  'Data Table: 422DA4
  Dim Me As Recordset15
  loc_F2A358: On Error Goto loc_F2A457
  loc_F2A377: Set var_8C = Me.TXT_REST
  loc_F2A386: Proc_6_92_EF7064("SELECT CODE ,NAME FROM Depart Where RestType in ('Kitchen','Store') ORDER BY NAME", var_8C)
  loc_F2A3B7: Me.TXT_REST.CursorLocation = 3
  loc_F2A3DF: Me.Open "Select R.Code as SearchCode,R.Name  From Depart R Where RestType in ('Kitchen','Store') Order by R.Name", CVar(MemVar_1F92044), 3
  loc_F2A3ED: Call 0.Method_arg_160 (var_8C, 1, -1)
  loc_F2A3FB: Call 0.Method_arg_164 (var_8C, "NAME")
  loc_F2A426: Call Proc_85_14_E1C890(Proc_5_1_100CB50("ADD", Me), New)
  loc_F2A431: Call Proc_85_13_EA29F0("CODE")
  loc_F2A44E: Proc_6_23_DFBA28(Me, 2370)
  loc_F2A456: Exit Sub
  loc_F2A457: ' Referenced from: F2A358
  loc_F2A457: Proc_6_60_E62BC4(4410)
  loc_F2A45C: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1DE70
  'Data Table: 422DA4
  loc_E1DE5F: Set global_56 = Nothing
  loc_E1DE6B: global_52 = 0
  loc_E1DE6E: Exit Sub
End Sub

Private Sub Form_Activate() 'E29EAC
  'Data Table: 422DA4
  loc_E29E8D: If (global_54 = &HFF) Then
  loc_E29E9A:   Proc_6_93_EAC124(Me.TXT_REST)
  loc_E29EA7:   global_54 = 0
  loc_E29EAA: End If
  loc_E29EAA: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2D3D8
  'Data Table: 422DA4
  loc_E2D3B5: If (global_52 = &HFF) Then
  loc_E2D3C5:   Me.Global.Unload Me
  loc_E2D3CD: End If
  loc_E2D3D5: Exit Sub
  loc_E2D3D6: Set arg_2C74 = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2BA58
  'Data Table: 422DA4
  loc_E2BA2C: On Error Goto loc_E2BA50
  loc_E2BA47: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2BA4F: Exit Sub
  loc_E2BA50: ' Referenced from: E2BA2C
  loc_E2BA50: Proc_6_60_E62BC4(Shift)
  loc_E2BA55: Exit Sub
  loc_E2BA56: Set arg_2C00 = global_52
End Sub

Public Function global_52Get() '4231D0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4231DF
  global_52 = Value
End Sub

Public Function global_54Get() '4231EE
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '4231FD
  global_54 = Value
End Sub

Public Sub Proc_85_11_E1533C
  'Data Table: 422DA4
  loc_E15331: Me.Global.Unload Me
  loc_E15339: Exit Sub
  loc_E1533A:  = 
End Sub

Public Sub Proc_85_12_E1ECD0
  'Data Table: 422DA4
  loc_E1ECC4: Me.TXT_REST.BoundText = vbNullString
  loc_E1ECCC: Exit Sub
End Sub

Public Sub Proc_85_13_EA29F0
  'Data Table: 422DA4
  Dim Me As Recordset15
  loc_EA2970: On Error Goto loc_EA29E7
  loc_EA298A: If (Me.RecordCount > 0) Then
  loc_EA29C9:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA29E1: Else
  loc_EA29E1:   Call Proc_85_12_E1ECD0()
  loc_EA29E6: End If
  loc_EA29E6: Exit Sub
  loc_EA29E7: ' Referenced from: EA2970
  loc_EA29E7: Proc_6_60_E62BC4()
  loc_EA29EC: Exit Sub
  loc_EA29ED: StUdtVar
End Sub

Public Sub Proc_85_14_E1C890(arg_C) 'E1C890
  'Data Table: 422DA4
  loc_E1C885: Me.TXT_REST.Enabled = arg_C
  loc_E1C88D: Exit Sub
  loc_E1C88E: If  Then Exit Sub
  loc_E1C88E: End If
End Sub
