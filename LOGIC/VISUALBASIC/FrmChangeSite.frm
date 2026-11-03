VERSION 5.00
Begin VB.Form FrmChangeSite
  Caption = "                                               Login Site "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "form4"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  Visible = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 615
  ClientWidth = 5310
  ClientHeight = 2460
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
  StartUpPosition = 2 'CenterScreen
  Begin CommandButton Command1
    Caption = "&Exit"
    Left = 3375
    Top = 1275
    Width = 1050
    Height = 375
    TabIndex = 4
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton CmdOK
    Caption = "&OK"
    Left = 885
    Top = 1275
    Width = 1050
    Height = 375
    TabIndex = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TopCtrl TopCtrl1
    Left = 5130
    Top = 2580
    Width = 300
    Height = 375
    Visible = 0   'False
    TabIndex = 3
  End
  Begin DataCombo TXT_SITE
    Left = 885
    Top = 720
    Width = 3600
    Height = 360
    TabIndex = 0
  End
  Begin Line Line1
    Index = 1
    BorderColor = &H808080&
    X1 = 885
    Y1 = 1830
    X2 = 4470
    Y2 = 1830
    BorderWidth = 2
  End
  Begin Line Line1
    Index = 0
    BorderColor = &H808080&
    X1 = 885
    Y1 = 1785
    X2 = 4470
    Y2 = 1785
    BorderWidth = 2
  End
  Begin Label Label1
    Caption = "Site Name"
    Index = 0
    ForeColor = &H0&
    Left = 885
    Top = 360
    Width = 960
    Height = 240
    TabIndex = 2
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    BorderColor = &H808080&
    Left = 420
    Top = 150
    Width = 4485
    Height = 2010
    Shape = 4
    BorderWidth = 5
    FillColor = &H8000000F&
    FillStyle = 0
  End
End

Attribute VB_Name = "FrmChangeSite"

Private global_52 As Integer
Private global_54 As Integer

Private Sub Command1_Click() 'E4ADA4
  'Data Table: 424B3C
  loc_E4AD79: Call 0.Method_arg_1B8 (var_86)
  loc_E4AD84: If (var_86 = &HFF) Then
  loc_E4AD94:   Me.Global.Unload Me
  loc_E4AD9F: Else
  loc_E4AD9F:   End
  loc_E4ADA1: End If
  loc_E4ADA1: Exit Sub
  loc_E4ADA2: Set var_3B8C = 
End Sub

Private Sub CmdOK_Click() 'F9A2E8
  'Data Table: 424B3C
  Dim var_8C As Variant
  Dim MemVar_1F92078 As String
  Dim var_B0 As Variant
  Dim MemVar_1F923D4 As String
  Dim var_E0 As String
  Dim var_C0 As Integer
  Dim var_D8 As Variant
  Dim var_DC As Panel
  Dim var_C4 As Panels
  loc_F9A1A7: If (CStr(Me.TXT_SITE.defText) <> vbNullString) Then
  loc_F9A1BC:   MemVar_1F92078 = CStr(Me.TXT_SITE.BoundText)
  loc_F9A1E7:   MemVar_1F923D4 = CStr(Trim(CVar(CStr(Me.TXT_SITE.Text))))
  loc_F9A210:   var_E0 = "For Site :" & CStr(Me.TXT_SITE.Text)
  loc_F9A216:   var_C0 = 5
  loc_F9A224:   Set var_C4 = MemVar_1F92244.sbar
  loc_F9A235:   Set var_D8 = MDIForm1.sbar.Panels
  loc_F9A23B:   var_C0 = var_D8.ControlDefault
  loc_F9A243:   var_DC.Text = var_DC
  loc_F9A270:   var_B0 = 4
  loc_F9A27E:   Set var_8C = MemVar_1F92244.sbar
  loc_F9A295:   var_B0 = MDIForm1.sbar.Panels.ControlDefault
  loc_F9A29D:   var_D8.Text = var_D8
  loc_F9A2C2:   Me.Global.Unload Me
  loc_F9A2D8:   Call 0.Method_arg_2B0 (var_D4, var_F0, "From Site :" & MemVar_1F92174)
  loc_F9A2DD: End If
  loc_F9A2E2: Set var_88 = Nothing
  loc_F9A2E5: Exit Sub
  loc_F9A2E6: CExtInstUnk
End Sub

Private Sub Form_Load() 'FA7C8C
  'Data Table: 424B3C
  Dim Me As Recordset15
  loc_FA7B0C: On Error Goto loc_FA7C84
  loc_FA7B3B: Set var_EC = Me.TXT_SITE
  loc_FA7B5B: Proc_6_92_EF7064(CStr("SELECT Site_CODE , Site_Desc FROM SITE Where CompCode='" & Trim(MemVar_1F92128) & "' ORDER BY Site_Desc"), var_EC)
  loc_FA7B95: Me.TXT_SITE.CursorLocation = 3
  loc_FA7BDD: Me.Open "Select S.Site_Code as SearchCode,S.Site_Desc From SITE S Where CompCode='" & Trim(MemVar_1F92128) & "' Order by S.Site_Desc", CVar(MemVar_1F92044), 3
  loc_FA7BF4: Call 0.Method_arg_160 (var_EC, 1, -1)
  loc_FA7C02: Call 0.Method_arg_164 (var_EC, "Site_Desc")
  loc_FA7C2D: Call Proc_105_14_E1E640(Proc_5_1_100CB50("ADD", Me), New)
  loc_FA7C38: Call Proc_105_13_EA4890("Site_CODE")
  loc_FA7C53: Proc_6_23_DFBA28(Me, 0)
  loc_FA7C64: Call 0.Method_arg_9C (CInt(0))
  loc_FA7C71: Call 0.Method_MeC (CDbl(2835))
  loc_FA7C7E: Call 0.Method_Me4 (CDbl(5400))
  loc_FA7C83: Exit Sub
  loc_FA7C84: ' Referenced from: FA7B0C
  loc_FA7C84: Proc_6_60_E62BC4(0)
  loc_FA7C89: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E1E5A0
  'Data Table: 424B3C
  loc_E1E58F: Set global_56 = Nothing
  loc_E1E59B: global_52 = 0
  loc_E1E59E: Exit Sub
End Sub

Private Sub Form_Activate() 'E7DB00
  'Data Table: 424B3C
  loc_E7DAA1: If (global_54 = &HFF) Then
  loc_E7DAAE:   Proc_6_93_EAC124(Me.TXT_SITE)
  loc_E7DABB:   global_54 = 0
  loc_E7DABE: End If
  loc_E7DAC6: If (MemVar_1F92078 = vbNullString) Then
  loc_E7DADA:   Me.TXT_SITE.BoundText = MemVar_1F92070
  loc_E7DAE5: Else
  loc_E7DAF6:   Me.TXT_SITE.BoundText = MemVar_1F92078
  loc_E7DAFE: End If
  loc_E7DAFE: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E3A698
  'Data Table: 424B3C
  loc_E3A675: If (global_52 = &HFF) Then
  loc_E3A685:   Me.Global.Unload Me
  loc_E3A68D: End If
  loc_E3A692: global_54 = &HFF
  loc_E3A695: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E54DE0
  'Data Table: 424B3C
  loc_E54DA4: On Error Goto loc_E54DDA
  loc_E54DB1: If (CLng(KeyCode) = &HD) Then
  loc_E54DB4:   Call CmdOK_Click()
  loc_E54DB9: End If
  loc_E54DD1: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E54DD9: Exit Sub
  loc_E54DDA: ' Referenced from: E54DA4
  loc_E54DDA: Proc_6_60_E62BC4(Shift)
  loc_E54DDF: Exit Sub
End Sub

Public Function global_52Get() '424FF0
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '424FFF
  global_52 = Value
End Sub

Public Function global_54Get() '42500E
  global_54Get = global_54
End Function

Public Sub global_54Put(Value) '42501D
  global_54 = Value
End Sub

Public Sub Proc_105_11_E17008
  'Data Table: 424B3C
  loc_E16FFD: Me.Global.Unload Me
  loc_E17005: Exit Sub
End Sub

Public Sub Proc_105_12_E1E5F0
  'Data Table: 424B3C
  loc_E1E5E4: Me.TXT_SITE.BoundText = vbNullString
  loc_E1E5EC: Exit Sub
End Sub

Public Sub Proc_105_13_EA4890
  'Data Table: 424B3C
  Dim Me As Recordset15
  loc_EA4810: On Error Goto loc_EA4887
  loc_EA482A: If (Me.RecordCount > 0) Then
  loc_EA4869:   Me.TXT_SITE.BoundText = CVar(CStr(Me.Fields.Item("SearchCode").Value))
  loc_EA4881: Else
  loc_EA4881:   Call Proc_105_12_E1E5F0()
  loc_EA4886: End If
  loc_EA4886: Exit Sub
  loc_EA4887: ' Referenced from: EA4810
  loc_EA4887: Proc_6_60_E62BC4()
  loc_EA488C: Exit Sub
End Sub

Public Sub Proc_105_14_E1E640(arg_C) 'E1E640
  'Data Table: 424B3C
  loc_E1E635: Me.TXT_SITE.Enabled = arg_C
  loc_E1E63D: Exit Sub
End Sub
