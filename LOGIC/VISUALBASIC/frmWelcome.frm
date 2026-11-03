VERSION 5.00
Begin VB.Form frmWelcome
  BackColor = &HC8E3E0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 4485
  ClientHeight = 3180
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin TextBox Txt
    Index = 7
    Left = 1215
    Top = 2100
    Width = 1440
    Height = 270
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 6
    Left = 1215
    Top = 2385
    Width = 1440
    Height = 270
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdPev
    Caption = "<"
    Left = 1620
    Top = 2745
    Width = 570
    Height = 225
    TabIndex = 14
  End
  Begin CommandButton CmdNext
    Caption = ">"
    Left = 2190
    Top = 2745
    Width = 570
    Height = 225
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 5
    Left = 1215
    Top = 1815
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 4
    Left = 1215
    Top = 1530
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    Left = 1215
    Top = 1245
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 2
    Left = 1215
    Top = 960
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    Left = 1215
    Top = 675
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 0
    Left = 1215
    Top = 390
    Width = 3015
    Height = 270
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin CommandButton Command1
    Caption = "X"
    Left = 4260
    Top = 15
    Width = 195
    Height = 225
    TabIndex = 0
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 8880
    Height = 375
    Visible = 0   'False
    TabIndex = 20
  End
  Begin Label Label9
    Caption = "Birth Date"
    Left = 150
    Top = 2130
    Width = 855
    Height = 195
    TabIndex = 19
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label8
    Caption = "Anniversary"
    Left = 150
    Top = 2400
    Width = 1035
    Height = 195
    TabIndex = 18
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label7
    Caption = "Special Occasions"
    Left = 1470
    Top = 15
    Width = 1515
    Height = 195
    TabIndex = 15
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Shape Shape1
    Left = 105
    Top = 270
    Width = 4290
    Height = 2805
    Shape = 4
    BorderWidth = 2
  End
  Begin Label Label6
    Caption = "E-mail Id"
    Left = 165
    Top = 1845
    Width = 750
    Height = 195
    TabIndex = 6
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label5
    Caption = "Country"
    Left = 165
    Top = 1575
    Width = 675
    Height = 195
    TabIndex = 5
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label4
    Caption = "City"
    Left = 165
    Top = 1305
    Width = 330
    Height = 195
    TabIndex = 4
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label3
    Caption = "Address 2"
    Left = 165
    Top = 1020
    Width = 840
    Height = 195
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label2
    Caption = "Address 1"
    Left = 165
    Top = 720
    Width = 840
    Height = 195
    TabIndex = 2
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label Label1
    Caption = "Guest Name"
    Left = 180
    Top = 450
    Width = 1020
    Height = 195
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "frmWelcome"

Private global_52 As Integer

Private Sub CmdNext_Click() 'EC2220
  'Data Table: 43796C
  Dim Me As Recordset15
  loc_EC217A: Me.MoveNext
  loc_EC218B: Me.CmdPev.Enabled = True
  loc_EC21A7: If (Me.EOF = 0) Then
  loc_EC21AA:   Call Proc_84_9_115FD08()
  loc_EC21BB:   Me.CmdPev.Enabled = True
  loc_EC21C3: End If
  loc_EC21D7: If (Me.EOF = &HFF) Then
  loc_EC21E6:   Me.CmdNext.Enabled = False
  loc_EC21EE: End If
  loc_EC2205: If (Me.AbsolutePosition = -3) Then
  loc_EC2214:   Me.CmdNext.Enabled = False
  loc_EC221C: End If
  loc_EC221C: Exit Sub
End Sub

Private Sub CmdPev_Click() 'EC2140
  'Data Table: 43796C
  Dim Me As Recordset15
  loc_EC209A: Me.MovePrevious
  loc_EC20AB: Me.CmdNext.Enabled = True
  loc_EC20C7: If (Me.BOF = 0) Then
  loc_EC20CA:   Call Proc_84_9_115FD08()
  loc_EC20DB:   Me.CmdNext.Enabled = True
  loc_EC20E3: End If
  loc_EC20F7: If (Me.BOF = &HFF) Then
  loc_EC2106:   Me.CmdPev.Enabled = False
  loc_EC210E: End If
  loc_EC2125: If (Me.AbsolutePosition = -2) Then
  loc_EC2134:   Me.CmdPev.Enabled = False
  loc_EC213C: End If
  loc_EC213C: Exit Sub
End Sub

Private Sub Command1_Click() 'E1520C
  'Data Table: 43796C
  loc_E15201: Me.Global.Unload Me
  loc_E15209: Exit Sub
End Sub

Private Sub Form_Load() 'FA365C
  'Data Table: 43796C
  Dim var_8C As String
  Dim unk_43797C As Connection15
  loc_FA34E4: On Error Resume Next
  loc_FA34F4: If (global_60 = vbNullString) Then
  loc_FA351D:   unk_43797C.Execute "Select * from GuestProf WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO')", var_AC, -1
  loc_FA352E:   Set global_56 = var_B0
  loc_FA3546: Else
  loc_FA3565:   var_8C = "Select * from GuestProf where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND BirthDate is not NULL  and Code='"
  loc_FA357F:   unk_43797C.Execute var_8C & global_60 & "'", var_AC, -1
  loc_FA3590:   Set global_56 = var_B0
  loc_FA35A9: End If
  loc_FA35B3: Call 0.Method_Me0 (var_C4, var_B0)
  loc_FA35C4: var_B0 = Me.Global.Screen
  loc_FA35E0: Call 0.Method_arg_74 ((Screen.Width - (var_C4 + CDbl(&H32))))
  loc_FA35FE: var_C0 = Screen.Height
  loc_FA360F: Call 0.Method_arg_7C ((var_C0 - CDbl(800)))
  loc_FA361F: Call 0.Method_arg_58 (var_C0)
  loc_FA3645: SetWindowPos(var_C0, -1, 0, 0, 0, 0, &H53)
  loc_FA364D: DoEvents()
  loc_FA3654: Call Proc_84_9_115FD08(Me.Global.Screen)
  loc_FA365B: Exit Sub
End Sub

Private Sub Form_Activate() 'E6BF28
  'Data Table: 43796C
  loc_E6BED0: On Error Resume Next
  loc_E6BEDB: Call 0.Method_arg_78 (var_90)
  loc_E6BEEC: var_88 = Me.Global.Screen
  loc_E6BF09: If (CSng((Screen.Height - CDbl(800))) <> var_90) Then
  loc_E6BF0C: End If
  loc_E6BF10: Call Proc_84_7_EF3F5C()
  loc_E6BF1C: Sleep(&H3E8)
  loc_E6BF24: Exit Sub
End Sub

Public Property Get GuestCode() 'E1D00C
  'Data Table: 43796C
  loc_E1CFFF: var_98 = CVar(global_60) 'Variant
  loc_E1D003: GuestCode = 
loc_E1D009: End Sub
End Sub

Public Property Let GuestCode(vNewValue) 'E0ED34
  'Data Table: 43796C
  loc_E0ED2C: global_60 = vNewValue
  loc_E0ED30: Exit Sub
End Sub

Public Sub Proc_84_7_EF3F5C
  'Data Table: 43796C
  loc_EF3E84: On Error Resume Next
  loc_EF3E90: var_94.Visible = True
  loc_EF3E9C: Call 0.Method_Me8 (var_B8)
  loc_EF3EA8: global_52 = CInt(var_B8)
  loc_EF3EB4: Call 0.Method_MeC (CDbl(0))
  loc_EF3EB9: ' Referenced from: EF3EFA
  loc_EF3EC1: Call 0.Method_Me8 (var_B8)
  loc_EF3ED1: If (var_B8 < CDbl(global_52)) Then
  loc_EF3EDC:   Call 0.Method_Me8 (var_B8)
  loc_EF3EEC:   Call 0.Method_MeC ((var_B8 + CDbl(1)))
  loc_EF3EF3:   DoEvents()
  loc_EF3EFA:   GoTo loc_EF3EB9
  loc_EF3EFD: End If
  loc_EF3F05: Call 0.Method_Me0 (var_B8)
  loc_EF3F11: global_52 = CInt(var_B8)
  loc_EF3F14: ' Referenced from: EF3F55
  loc_EF3F1C: Call 0.Method_Me0 (var_B8, global_52)
  loc_EF3F2C: If (var_B8 < CDbl(global_52)) Then
  loc_EF3F37:   Call 0.Method_Me0 (var_B8)
  loc_EF3F47:   Call 0.Method_Me4 ((var_B8 + CDbl(1)))
  loc_EF3F4E:   DoEvents()
  loc_EF3F55:   GoTo loc_EF3F14
  loc_EF3F58: End If
  loc_EF3F5A: Exit Sub
End Sub

Public Sub Proc_84_8_E8DA5C
  'Data Table: 43796C
  loc_E8D9E0: On Error Resume Next
  loc_E8D9EB: Call 0.Method_Me8 (var_88)
  loc_E8D9F7: global_52 = CInt(var_88)
  loc_E8D9FA: ' Referenced from: E8DA54
  loc_E8DA02: Call 0.Method_Me8 (var_88)
  loc_E8DA0E: If (var_88 > CDbl(0)) Then
  loc_E8DA19:   Call 0.Method_Me8 (var_88)
  loc_E8DA29:   Call 0.Method_MeC ((var_88 - CDbl(1)))
  loc_E8DA36:   Call 0.Method_arg_78 (var_88)
  loc_E8DA46:   Call 0.Method_arg_7C ((var_88 + CDbl(1)))
  loc_E8DA4D:   DoEvents()
  loc_E8DA54:   GoTo loc_E8D9FA
  loc_E8DA57: End If
  loc_E8DA59: Exit Sub
End Sub

Public Sub Proc_84_9_115FD08
  'Data Table: 43796C
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim var_126 As Integer
  Dim var_A4 As Fields15
  Dim var_124 As TextBox
  loc_115F960: On Error Goto loc_115FD01
  loc_115F97A: If (Me.RecordCount > 0) Then
  loc_115F9B9:   Set var_A4 = Me.Txt
  loc_115F9BF:   Call 0.Method_Proc_84_9_115FD080 (CInt(0), var_A8)
  loc_115F9C7:   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_115FA16:   Set var_A4 = Me.Txt
  loc_115FA1C:   Call 0.Method_Proc_84_9_115FD080 (CInt(1), var_A8)
  loc_115FA24:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add1")))
  loc_115FA71:   Set var_A4 = Me.Txt
  loc_115FA77:   Call 0.Method_Proc_84_9_115FD080 (CInt(2), var_A8)
  loc_115FA7F:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Add2")))
  loc_115FACC:   Set var_A4 = Me.Txt
  loc_115FAD2:   Call 0.Method_Proc_84_9_115FD080 (CInt(3), var_A8)
  loc_115FADA:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CityName")))
  loc_115FB27:   Set var_A4 = Me.Txt
  loc_115FB2D:   Call 0.Method_Proc_84_9_115FD080 (CInt(4), var_A8)
  loc_115FB35:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("CountryName")))
  loc_115FB82:   Set var_A4 = Me.Txt
  loc_115FB88:   Call 0.Method_Proc_84_9_115FD080 (CInt(5), var_A8)
  loc_115FB90:   var_A8.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("EmailId")))
  loc_115FC24:   Set var_120 = Me.Txt
  loc_115FC2A:   Call 0.Method_Proc_84_9_115FD080 (CInt(7), var_124)
  loc_115FC32:   var_124.Text = CStr(IIf(IsNull(CVar(Me.Fields.Item("BirthDate"))), vbNullString, CVar(Me.Fields.Item("BirthDate"))))
  loc_115FC7D:   var_126 = IsNull(CVar(Me.Fields.Item("Anniversary")))
  loc_115FCD2:   Set var_120 = Me.Txt
  loc_115FCD8:   Call 0.Method_Proc_84_9_115FD080 (CInt(6), var_124, CStr(IIf(var_126, vbNullString, CVar(Me.Fields.Item("Anniversary")))))
  loc_115FCE0:   var_124.Text = var_126
  loc_115FD00: End If
  loc_115FD00: Exit Sub
  loc_115FD01: ' Referenced from: 115F960
  loc_115FD01: Proc_6_60_E62BC4(var_126)
  loc_115FD06: Exit Sub
End Sub
