VERSION 5.00
Begin VB.Form FrmChangeRest
  Caption = "Restaurant Change Master"
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

Attribute VB_Name = "FrmChangeRest"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F80514
  'Data Table: 42450C
  Dim var_86 As Integer
  Dim unk_424517 As Connection15
  Dim MemVar_1F921A4 As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_E0 As Boolean
  loc_F803D0: On Error Goto loc_F804F8
  loc_F803DD: var_94 = "Name"
  loc_F803FE: If (Proc_6_27_EA565C(Me.TXT_REST) = 0) Then
  loc_F80401:   Exit Sub
  loc_F80402: End If
  loc_F80404: var_86 = &HFF
  loc_F80410: unk_424517.BeginTrans var_9C
  loc_F80428: If (PSalePoint = "PointOfSale") Then
  loc_F8044C:   MemVar_1F921A4 = CStr(Trim(CVar(CStr(Me.TXT_REST.BoundText))))
  loc_F8045F: Else
  loc_F80472:   If (PSalePoint = "DirectSale") Then
  loc_F80475:   End If
  loc_F80475: End If
  loc_F8047B: unk_424517.CommitTrans
  loc_F8049D: var_86 = 0
  loc_F804AB: Me.Requery -1
  loc_F804D5: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F804E1: var_E0 = True
  loc_F804EF: Me.TXT_REST.Enabled = var_E0
  loc_F804F7: Exit Sub
  loc_F804F8: ' Referenced from: F803D0
  loc_F804FE: If (var_86 = &HFF) Then
  loc_F80507:   unk_424517.RollbackTrans
  loc_F8050C: End If
  loc_F8050C: Proc_6_60_E62BC4(var_E0, var_86, MemVar_1F921A4)
  loc_F80511: Exit Sub
  loc_F80512: Exit Sub
End Sub

Private Sub CmdOK_Click() '1055470
  'Data Table: 42450C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_424517 As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F921A8 As String
  Dim MemVar_1F921AC As String
  loc_105522B: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_1055241:   If (PSalePoint = "PointOfSale") Then
  loc_1055248:     Set var_8C = Me.TXT_REST
  loc_105524E:     var_9C = var_8C.BoundText
  loc_1055299:     unk_424517.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(Trim(CVar(CStr(var_9C)))) & "'", var_9C, -1
  loc_10552A4:     Set var_88 = var_8C
  loc_10552C8:     If (var_88.RecordCount > 0) Then
  loc_10552F6:       MemVar_1F921A8 = CStr(var_88.Fields.Item(0).Value)
  loc_105532F:       MemVar_1F921AC = CStr(var_88.Fields.Item(1).Value)
  loc_105533D:     End If
  loc_1055340:   Else
  loc_1055353:     If (PSalePoint = "DirectSale") Then
  loc_105535A:       Set var_8C = Me.TXT_REST
  loc_1055360:       var_9C = var_8C.BoundText
  loc_10553AB:       unk_424517.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(Trim(CVar(CStr(var_9C)))) & "'", var_9C, -1
  loc_10553B6:       Set var_88 = var_8C
  loc_10553DA:       If (var_88.RecordCount > 0) Then
  loc_1055408:         MemVar_1F921A8 = CStr(var_88.Fields.Item(0).Value)
  loc_1055441:         MemVar_1F921AC = CStr(var_88.Fields.Item(1).Value)
  loc_105544F:       End If
  loc_105544F:     End If
  loc_105544F:   End If
  loc_105545C:   Me.Global.Unload Me
  loc_1055464: End If
  loc_1055469: Set var_88 = Nothing
  loc_105546C: Exit Sub
End Sub

Private Sub Form_Load() 'FEFFCC
  'Data Table: 42450C
  Dim var_AC As Variant
  Dim Me As Recordset15
  loc_FEFDE4: On Error Goto loc_FEFFC6
  loc_FEFDFA: If (PSalePoint = "PointOfSale") Then
  loc_FEFE07:   var_98 = "CODE"
  loc_FEFE19:   Set var_90 = Me.TXT_REST
  loc_FEFE31:   Proc_6_92_EF7064("SELECT CODE ,NAME FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "') AND RestType in ('Outlet','Room Service','Production') ORDER BY NAME", var_90)
  loc_FEFE52:   Set global_60 = New 
  loc_FEFE64:   Me.TXT_REST.CursorLocation = 3
  loc_FEFE8E:   var_AC = CVar("Select R.Code as SearchCode,R.Name  From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078 & "') AND RestType in ('Outlet','Room Service','Production') Order by R.Name") 'String
  loc_FEFE98:   Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_FEFEAC:   Call 0.Method_arg_160 (var_90, 1, -1)
  loc_FEFEBA:   Call 0.Method_arg_164 (var_90, "NAME")
  loc_FEFEC5: Else
  loc_FEFED8:   If (PSalePoint = "DirectSale") Then
  loc_FEFEE5:     var_98 = "CODE"
  loc_FEFEF7:     Set var_90 = Me.TXT_REST
  loc_FEFF0F:     Proc_6_92_EF7064("SELECT CODE ,NAME FROM Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "') AND RestType in ('Direct Sale') ORDER BY NAME", var_90, "NAME")
  loc_FEFF30:     Set global_60 = New 
  loc_FEFF42:     Me.TXT_REST.CursorLocation = 3
  loc_FEFF6C:     var_AC = CVar("Select R.Code as SearchCode,R.Name  From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078 & "') AND RestType in ('Direct Sale') Order by R.Name") 'String
  loc_FEFF76:     Me.Open var_AC, CVar(MemVar_1F92044), 3
  loc_FEFF8A:     Call 0.Method_arg_160 (var_90, 1, -1)
  loc_FEFF98:     Call 0.Method_arg_164 (var_90, var_98)
  loc_FEFFA0:   End If
  loc_FEFFA0: End If
  loc_FEFFA0: Call Proc_48_17_EA1CEC(var_98)
  loc_FEFFBD: Proc_6_23_DFBA28(Me, 2370)
  loc_FEFFC5: Exit Sub
  loc_FEFFC6: ' Referenced from: FEFDE4
  loc_FEFFC6: Proc_6_60_E62BC4(4410)
  loc_FEFFCB: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1EA00
  'Data Table: 42450C
  loc_E1E9EF: Set global_60 = Nothing
  loc_E1E9FB: global_52 = 0
  loc_E1E9FE: Exit Sub
End Sub

Private Sub Form_Activate() 'E29160
  'Data Table: 42450C
  loc_E29141: If (global_54 = &HFF) Then
  loc_E2914E:   Proc_6_93_EAC124(Me.TXT_REST)
  loc_E2915B:   global_54 = 0
  loc_E2915E: End If
  loc_E2915E: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2FF58
  'Data Table: 42450C
  loc_E2FF35: If (global_52 = &HFF) Then
  loc_E2FF45:   Me.Global.Unload Me
  loc_E2FF4D: End If
  loc_E2FF52: global_54 = &HFF
  loc_E2FF55: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2FFB8
  'Data Table: 42450C
  loc_E2FF8C: On Error Goto loc_E2FFB0
  loc_E2FFA7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2FFAF: Exit Sub
  loc_E2FFB0: ' Referenced from: E2FF8C
  loc_E2FFB0: Proc_6_60_E62BC4(Shift)
  loc_E2FFB5: Exit Sub
End Sub

Public Function global_52Get() '424964
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '424973
  global_52 = Value
End Sub

Public Function global_54Get() '424982
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '424991
  global_54 = Value
End Sub

Public Function global_56Get() '4249A0
  global_56Get = global_56
End Function

Public Sub global_56Put(Value) '4249AF
  global_56 = Value
End Sub

Public Property Let PSalePoint(vNewValue) 'E1195C
  'Data Table: 42450C
  loc_E11954: global_56 = vNewValue
  loc_E11958: Exit Sub
End Sub

Public Property Get PSalePoint() 'E11BE4
  'Data Table: 42450C
  loc_E11BD8: var_88 = global_56
  loc_E11BDB: PSalePoint = 
End Sub

Public Sub Proc_48_15_E164C0
  'Data Table: 42450C
  loc_E164B5: Me.Global.Unload Me
  loc_E164BD: Exit Sub
End Sub

Public Sub Proc_48_16_E1EAA0
  'Data Table: 42450C
  loc_E1EA94: Me.TXT_REST.BoundText = vbNullString
  loc_E1EA9C: Exit Sub
End Sub

Public Sub Proc_48_17_EA1CEC
  'Data Table: 42450C
  Dim Me As Recordset15
  loc_EA1C6C: On Error Goto loc_EA1CE3
  loc_EA1C86: If (Me.RecordCount > 0) Then
  loc_EA1CC5:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA1CDD: Else
  loc_EA1CDD:   Call Proc_48_16_E1EAA0()
  loc_EA1CE2: End If
  loc_EA1CE2: Exit Sub
  loc_EA1CE3: ' Referenced from: EA1C6C
  loc_EA1CE3: Proc_6_60_E62BC4()
  loc_EA1CE8: Exit Sub
End Sub

Public Sub Proc_48_18_E1EA50(arg_C) 'E1EA50
  'Data Table: 42450C
  loc_E1EA45: Me.TXT_REST.Enabled = arg_C
  loc_E1EA4D: Exit Sub
  loc_E1EA4E: Loop Until  'do at: E17EA5
End Sub
