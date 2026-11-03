VERSION 5.00
Begin VB.Form FrmChangeDepart
  Caption = "Department Change Master"
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
    Left = 1860
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
  Begin Shape Shape2
    Left = 15
    Top = 0
    Width = 4395
    Height = 2355
  End
  Begin Shape Shape1
    BorderColor = &H0&
    Left = 1230
    Top = 1350
    Width = 2160
    Height = 705
    Shape = 4
    FillColor = &HAFC0DA&
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

Attribute VB_Name = "FrmChangeDepart"

Private global_52 As Integer
Private global_54 As Integer

Private Sub TopCtrl1_UnknownEvent_19 'F25C48
  'Data Table: 42392C
  Dim var_86 As Integer
  Dim unk_423934 As Connection15
  Dim MemVar_1F921B8 As String
  Dim Me As Recordset15
  Dim var_94 As String
  Dim var_C0 As Boolean
  loc_F25B48: On Error Goto loc_F25C2C
  loc_F25B55: var_94 = "Name"
  loc_F25B76: If (Proc_6_27_EA565C(Me.TXT_REST) = 0) Then
  loc_F25B79:   Exit Sub
  loc_F25B7A: End If
  loc_F25B7C: var_86 = &HFF
  loc_F25B88: unk_423934.BeginTrans var_9C
  loc_F25B9F: MemVar_1F921B8 = CStr(Me.TXT_REST.BoundText)
  loc_F25BAF: unk_423934.CommitTrans
  loc_F25BD1: var_86 = 0
  loc_F25BDF: Me.Requery -1
  loc_F25C09: Me.Find "SearchCode ='" & CStr(Me.TXT_REST.BoundText) & "'", 0, 1
  loc_F25C15: var_C0 = True
  loc_F25C23: Me.TXT_REST.Enabled = var_C0
  loc_F25C2B: Exit Sub
  loc_F25C2C: ' Referenced from: F25B48
  loc_F25C32: If (var_86 = &HFF) Then
  loc_F25C3B:   unk_423934.RollbackTrans
  loc_F25C40: End If
  loc_F25C40: Proc_6_60_E62BC4(var_C0, var_86, MemVar_1F921B8)
  loc_F25C45: Exit Sub
  loc_F25C46: Exit Sub
End Sub

Private Sub CmdOK_Click() 'F60DB0
  'Data Table: 42392C
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_423934 As Connection15
  Dim var_88 As Recordset15
  Dim MemVar_1F921BC As String
  Dim MemVar_1F921C0 As String
  loc_F60CAB: If (CStr(Me.TXT_REST.defText) <> vbNullString) Then
  loc_F60CB2:   Set var_8C = Me.TXT_REST
  loc_F60CB8:   var_9C = var_8C.BoundText
  loc_F60CEE:   unk_423934.Execute "Select RestType,BackColor From Depart Where Code='" & CStr(var_9C) & "'", var_9C, -1
  loc_F60CF9:   Set var_88 = var_8C
  loc_F60D1D:   If (var_88.RecordCount > 0) Then
  loc_F60D4B:     MemVar_1F921BC = CStr(var_88.Fields.Item(0).Value)
  loc_F60D84:     MemVar_1F921C0 = CStr(var_88.Fields.Item(1).Value)
  loc_F60D92:   End If
  loc_F60D9F:   Me.Global.Unload Me
  loc_F60DA7: End If
  loc_F60DAC: Set var_88 = Nothing
  loc_F60DAF: Exit Sub
End Sub

Private Sub Form_Load() 'F2AC28
  'Data Table: 42392C
  Dim Me As Recordset15
  loc_F2AB20: On Error Goto loc_F2AC1F
  loc_F2AB3F: Set var_8C = Me.TXT_REST
  loc_F2AB4E: Proc_6_92_EF7064("SELECT CODE ,NAME FROM Depart Where OutletYN<>'Y' and RestType='House Keeping' ORDER BY NAME", var_8C)
  loc_F2AB7F: Me.TXT_REST.CursorLocation = 3
  loc_F2ABA7: Me.Open "Select R.Code as SearchCode,R.Name  From Depart R Where OutletYN<>'Y' and RestType='House Keeping' Order by R.Name", CVar(MemVar_1F92044), 3
  loc_F2ABB5: Call 0.Method_arg_160 (var_8C, 1, -1)
  loc_F2ABC3: Call 0.Method_arg_164 (var_8C, "NAME")
  loc_F2ABEE: Call Proc_83_15_E1DB00(Proc_5_1_100CB50("ADD", Me), New)
  loc_F2ABF9: Call Proc_83_14_EA4708("CODE")
  loc_F2AC16: Proc_6_23_DFBA28(Me, 2370)
  loc_F2AC1E: Exit Sub
  loc_F2AC1F: ' Referenced from: F2AB20
  loc_F2AC1F: Proc_6_60_E62BC4(4410)
  loc_F2AC24: Exit Sub
End Sub

Private Sub Form_Resize() 'E5C758
  'Data Table: 42392C
  loc_E5C746: Proc_6_135_12A9B7C(var_A8, Me, "DU")
  loc_E5C754: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1DE20
  'Data Table: 42392C
  loc_E1DE0F: Set global_56 = Nothing
  loc_E1DE1B: global_52 = 0
  loc_E1DE1E: Exit Sub
End Sub

Private Sub Form_Activate() 'E2A358
  'Data Table: 42392C
  loc_E2A339: If (global_54 = &HFF) Then
  loc_E2A346:   Proc_6_93_EAC124(Me.TXT_REST)
  loc_E2A353:   global_54 = 0
  loc_E2A356: End If
  loc_E2A356: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E35DD8
  'Data Table: 42392C
  loc_E35DB5: If (global_52 = &HFF) Then
  loc_E35DC5:   Me.Global.Unload Me
  loc_E35DCD: End If
  loc_E35DD5: Exit Sub
  loc_E35DD6: Set var_4B8C = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E35E98
  'Data Table: 42392C
  loc_E35E6C: On Error Goto loc_E35E90
  loc_E35E87: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E35E8F: Exit Sub
  loc_E35E90: ' Referenced from: E35E6C
  loc_E35E90: Proc_6_60_E62BC4(Shift)
  loc_E35E95: Exit Sub
End Sub

Public Function global_52Get() '423D60
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '423D6F
  global_52 = Value
End Sub

Public Function global_54Get() '423D7E
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '423D8D
  global_54 = Value
End Sub

Public Sub Proc_83_12_E18140
  'Data Table: 42392C
  loc_E18135: Me.Global.Unload Me
  loc_E1813D: Exit Sub
End Sub

Public Sub Proc_83_13_E1DBF0
  'Data Table: 42392C
  loc_E1DBE4: Me.TXT_REST.BoundText = vbNullString
  loc_E1DBEC: Exit Sub
End Sub

Public Sub Proc_83_14_EA4708
  'Data Table: 42392C
  Dim Me As Recordset15
  loc_EA4688: On Error Goto loc_EA46FF
  loc_EA46A2: If (Me.RecordCount > 0) Then
  loc_EA46E1:   Me.TXT_REST.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA46F9: Else
  loc_EA46F9:   Call Proc_83_13_E1DBF0()
  loc_EA46FE: End If
  loc_EA46FE: Exit Sub
  loc_EA46FF: ' Referenced from: EA4688
  loc_EA46FF: Proc_6_60_E62BC4()
  loc_EA4704: Exit Sub
  loc_EA4706: var_4B8C = CStr()
End Sub

Public Sub Proc_83_15_E1DB00(arg_C) 'E1DB00
  'Data Table: 42392C
  loc_E1DAF5: Me.TXT_REST.Enabled = arg_C
  loc_E1DAFD: Exit Sub
  loc_E1DAFE: Exit Sub
End Sub
