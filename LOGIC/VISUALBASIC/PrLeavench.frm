VERSION 5.00
Begin VB.Form PrLeavench
  Caption = "Leave Encashment"
  BackColor = &HD0C7BB&
  ForeColor = &H0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillStyle = 0
  Icon = "PrLeavench.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 105
  ClientTop = 600
  ClientWidth = 10410
  ClientHeight = 5070
  WhatsThisHelp = -1  'True
  PaletteMode = 1
  Begin DataGrid DGEmployee
    Left = 7560
    Top = 4335
    Width = 11250
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 31
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 10410
    Height = 495
    TabIndex = 27
  End
  Begin PictureBox Picture1
    Picture = "PrLeavench.frx":1082
    Left = 14835
    Top = 7635
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 26
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture3
    Picture = "PrLeavench.frx":13D0
    Left = 14910
    Top = 7410
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 25
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox TExt1
    Index = 10
    BackColor = &H80000004&
    Left = 6360
    Top = 30
    Width = 2235
    Height = 255
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 50
    Locked = -1  'True
    Appearance = 0 'Flat
  End
  Begin TextBox TExt1
    Index = 8
    Left = 7545
    Top = 2145
    Width = 1065
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 10
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
  Begin TextBox TExt1
    Index = 5
    Left = 7545
    Top = 1830
    Width = 1065
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 9
    Left = 2145
    Top = 2460
    Width = 6465
    Height = 285
    TabIndex = 9
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
  Begin DataGrid DBGrid1
    Left = 255
    Top = 2955
    Width = 11040
    Height = 4410
    TabIndex = 10
  End
  Begin DataGrid DGAcName
    Left = 14655
    Top = 1140
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 19
  End
  Begin TextBox TExt1
    Index = 2
    Left = 2145
    Top = 1515
    Width = 6465
    Height = 285
    TabIndex = 2
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
  Begin TextBox TExt1
    Index = 1
    Left = 7155
    Top = 1200
    Width = 1455
    Height = 285
    TabIndex = 0
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
  Begin TextBox TExt1
    Index = 4
    Left = 4545
    Top = 1830
    Width = 1515
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 7
    Left = 4545
    Top = 2145
    Width = 1515
    Height = 285
    TabIndex = 7
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 6
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
  Begin TextBox TExt1
    Index = 6
    Left = 2145
    Top = 2145
    Width = 735
    Height = 285
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 3
    Left = 2145
    Top = 1830
    Width = 735
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 4
    Locked = -1  'True
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
  Begin TextBox TExt1
    Index = 0
    Left = 2145
    Top = 1200
    Width = 735
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
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
    Left = 16545
    Top = 6840
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 24
  End
  Begin Label LblEmpRef
    Caption = "."
    BackColor = &H80000005&
    ForeColor = &HFF0000&
    Left = 8685
    Top = 1530
    Width = 105
    Height = 270
    TabIndex = 32
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4755
    Top = 7515
    Width = 2790
    Height = 450
    TabIndex = 30
    Alignment = 2 'Center
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
    Left = 1380
    Top = 7515
    Width = 2880
    Height = 420
    TabIndex = 29
    Alignment = 2 'Center
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 450
    Width = 180
    Height = 540
    TabIndex = 28
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &HFF&
    Left = 13515
    Top = 2640
    Width = 675
    Height = 240
    TabIndex = 22
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Amount"
    Index = 6
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6390
    Top = 2145
    Width = 735
    Height = 240
    TabIndex = 21
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Balance"
    Index = 10
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6105
    Top = 1830
    Width = 1425
    Height = 240
    TabIndex = 20
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Already Paid"
    Index = 2
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 180
    Top = 2145
    Width = 1875
    Height = 240
    TabIndex = 18
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Employee Name"
    Index = 9
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 480
    Top = 1515
    Width = 1560
    Height = 240
    TabIndex = 17
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Post in Account"
    Index = 8
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 570
    Top = 2460
    Width = 1470
    Height = 240
    TabIndex = 16
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Encashed"
    Index = 5
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 2925
    Top = 2145
    Width = 1560
    Height = 240
    TabIndex = 15
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Leave Taken"
    Index = 4
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 3255
    Top = 1830
    Width = 1230
    Height = 240
    TabIndex = 14
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Total Leave Allowed"
    Index = 3
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 105
    Top = 1830
    Width = 1965
    Height = 240
    TabIndex = 13
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Serial No."
    Index = 0
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 1095
    Top = 1200
    Width = 945
    Height = 240
    TabIndex = 12
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
    Appearance = 0 'Flat
  End
  Begin Label Label1
    Caption = "Date"
    Index = 1
    BackColor = &H80000005&
    ForeColor = &HC00000&
    Left = 6645
    Top = 1200
    Width = 435
    Height = 240
    TabIndex = 11
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
    Appearance = 0 'Flat
  End
End

Attribute VB_Name = "PrLeavench"

Private global_56 As Recordset15
Private global_68 As Integer
Private global_54 As Integer

Private Sub DGAcName_UnknownEvent_9 'F38864
  'Data Table: 49B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3875B: Me.DGAcName.Visible = False
  loc_F3877A: If (Me.RecordCount > 0) Then
  loc_F387B9:   Set var_B4 = Me.TExt1
  loc_F387BF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9), var_B8)
  loc_F387C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F387FA:   var_B0 = Me.Fields.Item("Name")
  loc_F38819:   Set var_B4 = Me.TExt1
  loc_F3881F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9), var_B8)
  loc_F38827:   var_B8.Text = CStr(var_B0.Value)
  loc_F3883D: End If
  loc_F38848: Set var_A8 = Me.TExt1
  loc_F3884E: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(9))
  loc_F38856: var_B0.SetFocus
  loc_F38862: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E71CC8
  'Data Table: 49B6B4
  loc_E71C86: Proc_6_153_E91194(Me.DGAcName, arg_14)
  loc_E71C9D: Set var_8C = Me.FGPoint
  loc_E71CB9: Proc_6_138_106D6F8(Me.DGAcName, global_60, CInt(9))
  loc_E71CC7: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_9 'F3D984
  'Data Table: 49B6B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3D87B: Me.DGEmployee.Visible = False
  loc_F3D89A: If (Me.RecordCount > 0) Then
  loc_F3D8D9:   Set var_B4 = Me.TExt1
  loc_F3D8DF:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D8E7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3D91A:   var_B0 = Me.Fields.Item("Name")
  loc_F3D939:   Set var_B4 = Me.TExt1
  loc_F3D93F:   Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2), var_B8)
  loc_F3D947:   var_B8.Text = CStr(var_B0.Value)
  loc_F3D95D: End If
  loc_F3D968: Set var_A8 = Me.TExt1
  loc_F3D96E: Call 0.Method_DGEmployee_UnknownEvent_90 (CInt(2))
  loc_F3D976: var_B0.SetFocus
  loc_F3D982: Exit Sub
End Sub

Private Sub DGEmployee_UnknownEvent_1F 'E73760
  'Data Table: 49B6B4
  loc_E7371E: Proc_6_153_E91194(Me.DGEmployee, arg_14)
  loc_E73735: Set var_8C = Me.FGPoint
  loc_E73751: Proc_6_138_106D6F8(Me.DGEmployee, global_64, CInt(2))
  loc_E7375F: Exit Sub
End Sub

Private Sub DBGrid1_UnknownEvent_1D 'E0C398
  'Data Table: 49B6B4
  Dim arg_3CFF As Double
  loc_E0C38D: If ((Cancel = &H26) Or (Cancel = &H28)) Then
  loc_E0C390:   Call Proc_307_32_144DF3C()
  loc_E0C395: End If
  loc_E0C395: Exit Sub
  loc_E0C396: arg_3CFF = 
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'E80920
  'Data Table: 49B6B4
  Dim var_94 As TextBox
  loc_E808B8: On Error Goto loc_E80918
  loc_E808E2: Call Proc_307_33_E6C8B4(Proc_5_1_100CB50("ADD", Me))
  loc_E808ED: Call Proc_307_31_FCB5F4(global_56)
  loc_E808FD: Set var_8C = Me.TExt1
  loc_E80903: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1))
  loc_E8090B: var_94.SetFocus
  loc_E80917: Exit Sub
  loc_E80918: ' Referenced from: E808B8
  loc_E80918: Proc_6_60_E62BC4(var_94)
  loc_E8091D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA9950
  'Data Table: 49B6B4
  loc_EA98D0: On Error Goto loc_EA994A
  loc_EA990A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EA990D:   Call Proc_307_35_EBCA34()
  loc_EA9939:   Call Proc_307_33_E6C8B4(Proc_5_1_100CB50("INI", Me))
  loc_EA9944:   Call Proc_307_32_144DF3C(global_56)
  loc_EA9949: End If
  loc_EA9949: Exit Sub
  loc_EA994A: ' Referenced from: EA98D0
  loc_EA994A: Proc_6_60_E62BC4()
  loc_EA994F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '103E1E4
  'Data Table: 49B6B4
  Dim unk_49B6C1 As Connection15
  Dim var_128 As TextBox
  Dim var_130 As String
  Dim var_12C As String
  Dim var_13C As String
  Dim var_BC As Variant
  loc_103DFAC: On Error Goto loc_103E196
  loc_103DFC1: If (Proc_183_56_FE8818(global_56) = &HFF) Then
  loc_103DFC4:   Exit Sub
  loc_103DFC5: End If
  loc_103DFFC: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_103E008:   unk_49B6C1.BeginTrans var_120
  loc_103E021:   var_94 = Me.Recordset15.Bookmark 'Variant
  loc_103E043:   Set var_124 = Me.TExt1
  loc_103E049:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&HA), var_128, var_12C, "DELETE FROM LEDGER WHERE DOCID='")
  loc_103E051:   var_BC = var_128.Text
  loc_103E05A:   var_130 = -1 & var_12C
  loc_103E06A:   unk_49B6C1.Execute var_130 & "'", var_138, 
  loc_103E098:   var_12C = "DELETE FROM LEAVE_ENCH WHERE site_code='" & MemVar_1F92070
  loc_103E0B0:   Set var_124 = Me.TExt1
  loc_103E0B6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_130, var_12C & "' and Sr_No=")
  loc_103E0BE:   var_BC = var_128.Text
  loc_103E0C7:   var_13C = -1 & var_130
  loc_103E0D0:   unk_49B6C1.Execute var_13C, var_138, 
  loc_103E0F2:   unk_49B6C1.CommitTrans
  loc_103E105:   Me.Recordset15.Requery -1
  loc_103E128:   If (CVar(Me.Recordset15.RecordCount) >= var_94) Then
  loc_103E138:     Me.Recordset15.Bookmark = var_94
  loc_103E140:   Else
  loc_103E157:     If (global_56.EOF = 0) Then
  loc_103E163:       Me.Recordset15.MoveLast
  loc_103E168:     End If
  loc_103E168:   End If
  loc_103E168:   Call Proc_307_32_144DF3C()
  loc_103E18D:   Proc_5_0_110649C(&HFF, Me)
  loc_103E195: End If
  loc_103E195: Exit Sub
  loc_103E196: ' Referenced from: 103DFAC
  loc_103E19C: unk_49B6C1.RollbackTrans
  loc_103E1A9: Set var_124 = Err()
  loc_103E1AF: Call 0.Method_arg_2C (var_12C, global_56)
  loc_103E1D0: MsgBox(CVar(var_12C), &H10, " Deletion Message", var_FC, var_11C)
  loc_103E1E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F2C100
  'Data Table: 49B6B4
  Dim var_8C As DataGrid
  Dim var_B4 As TextBox
  loc_F2BFEC: On Error Goto loc_F2C0F8
  loc_F2C001: If (Proc_183_55_FE7900(global_56) = &HFF) Then
  loc_F2C004:   Exit Sub
  loc_F2C005: End If
  loc_F2C02C: Call Proc_307_33_E6C8B4(Proc_5_1_100CB50("EDIT", Me))
  loc_F2C046: Me.DBGrid1.Enabled = False
  loc_F2C05B: Set var_8C = Me.TExt1
  loc_F2C061: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B4)
  loc_F2C069: var_B4.Enabled = False
  loc_F2C082: Set var_8C = Me.TExt1
  loc_F2C088: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B4)
  loc_F2C090: var_B4.Enabled = False
  loc_F2C0A7: Set var_8C = Me.TExt1
  loc_F2C0AD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B4)
  loc_F2C0B5: var_B4.SetFocus
  loc_F2C0CF: Set var_8C = Me.TExt1
  loc_F2C0D5: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_B4)
  loc_F2C0EA: global_68 = CInt(var_B4.Text)
  loc_F2C0F7: Exit Sub
  loc_F2C0F8: ' Referenced from: F2BFEC
  loc_F2C0F8: Proc_6_60_E62BC4(global_68)
  loc_F2C0FD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1C030
  'Data Table: 49B6B4
  loc_E1C025: Me.Global.Unload Me
  loc_E1C02D: Exit Sub
  loc_E1C02E: arg_3C08 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EDD77C
  'Data Table: 49B6B4
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EDD6C8: On Error Goto loc_EDD775
  loc_EDD6E5: If (Me.Recordset15.RecordCount <= 0) Then
  loc_EDD6EE:   var_B8 = "Information"
  loc_EDD709:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EDD719:   Exit Sub
  loc_EDD71A: End If
  loc_EDD722: If (MemVar_1F923AC = "A") Then
  loc_EDD72C:   var_10C = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Leave_Ench.L_DATE,LEAVE_ENCH,AMT_ENCH,EMPLOYEE.NAME AS EmpName, SG.Name as AcName FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup  SG on SG.SubCode=Leave_Ench.AC_Code where leave_Ench.site_code='" & MemVar_1F92070
  loc_EDD733:   MemVar_1F920E4 = var_10C & "' and ORDER BY SR_NO"
  loc_EDD73D: Else
  loc_EDD744:   var_10C = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Convert(Varchar(11),Leave_Ench.L_DATE,103) AS DATE,LEAVE_ENCH,AMT_ENCH,EMPLOYEE.NAME AS EmpName, SG.Name as AcName FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup  SG on SG.SubCode=Leave_Ench.AC_Code where Leave_Ench.site_code='" & MemVar_1F92070
  loc_EDD74B:   MemVar_1F920E4 = var_10C & "' and  ORDER BY SR_NO"
  loc_EDD752: End If
  loc_EDD758: MemVar_1F92120 = Me
  loc_EDD76F: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EDD774: Exit Sub
  loc_EDD775: ' Referenced from: EDD6C8
  loc_EDD775: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EDD77A: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E42DFC
  'Data Table: 49B6B4
  loc_E42DEC: Proc_5_0_110649C(&HFF, Me)
  loc_E42DF4: Call Proc_307_32_144DF3C(global_56)
  loc_E42DF9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E42D98
  'Data Table: 49B6B4
  loc_E42D88: Proc_5_0_110649C(&HFF, Me)
  loc_E42D90: Call Proc_307_32_144DF3C(global_56)
  loc_E42D95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E42B40
  'Data Table: 49B6B4
  loc_E42B30: Proc_5_0_110649C(&HFF, Me)
  loc_E42B38: Call Proc_307_32_144DF3C(global_56)
  loc_E42B3D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E42ADC
  'Data Table: 49B6B4
  loc_E42ACC: Proc_5_0_110649C(&HFF, Me)
  loc_E42AD4: Call Proc_307_32_144DF3C(global_56)
  loc_E42AD9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '15C6368
  'Data Table: 49B6B4
  Dim var_AC As TextBox
  Dim var_B4 As String
  Dim var_B8 As String
  Dim unk_49B6C1 As Connection15
  Dim var_B0 As String
  Dim var_D8 As Variant
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_108 As Variant
  Dim var_110 As TextBox
  Dim var_130 As Variant
  Dim var_E0 As Variant
  Dim var_168 As Double
  Dim var_170 As Double
  Dim var_8C As Integer
  Dim var_178 As String
  Dim var_DC As Variant
  Dim var_F4 As Variant
  Dim var_F0 As Variant
  Dim var_88 As Recordset15
  Dim var_A8 As Fields15
  Dim var_150 As Variant
  Dim var_2CC As TextBox
  Dim var_314 As TextBox
  Dim var_3B4 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_1B8 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_2A8 As Variant
  Dim var_344 As Variant
  Dim var_364 As Variant
  Dim var_3A4 As Variant
  Dim var_3D4 As Variant
  Dim var_298 As Variant
  Dim var_41C As TextBox
  Dim var_334 As Variant
  Dim var_184 As String
  loc_15C5114: On Error Goto loc_15C634E
  loc_15C513A: Set var_A8 = Me.TExt1
  loc_15C5140: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B0, "SELECT Employee.AC_Code FROM Employee WHERE Code='")
  loc_15C5148: var_D8 = var_AC.Tag
  loc_15C5151: var_B4 = -1 & var_B0
  loc_15C5161: unk_49B6C1.Execute var_B4 & "'", var_DC, 0
  loc_15C516C: Set var_88 = var_DC
  loc_15C5188: Set var_A8 = Me.TopCtrl1
  loc_15C518E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_15C51A7: If (CStr() = "Add") Then
  loc_15C51B8:   Set var_A8 = Me.TExt1
  loc_15C51BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C51C6:   var_B0 = var_AC.Text
  loc_15C51E3:   Set var_DC = Me.TExt1
  loc_15C51E9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_E0)
  loc_15C51F8:   Proc_6_39_E7C810(var_F0, CVar(var_E0))
  loc_15C520E:   Set var_F4 = Me.TExt1
  loc_15C5214:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_F8, var_B4)
  loc_15C521C:   var_F0 = var_F8.Text
  loc_15C522D:   var_108 = (CVar(Val(var_B0)) + CVar(Val(var_B4)))
  loc_15C523F:   Set var_10C = Me.TExt1
  loc_15C5245:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_110)
  loc_15C524D:   var_B8 = var_110.Text
  loc_15C525E:   var_130 = (var_108 - CVar(Val(var_B8)))
  loc_15C5287:   If ( > var_130) Then
  loc_15C52AB:     MsgBox("Invalid Leave", &H40, "Information", var_108, var_130)
  loc_15C52C9:     Set var_A8 = Me.TExt1
  loc_15C52CF:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C52D7:     var_AC.Text = vbNullString
  loc_15C52EC:     Set var_A8 = Me.TExt1
  loc_15C52F2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (3)
  loc_15C52FA:     var_AC.SetFocus
  loc_15C5306:     Exit Sub
  loc_15C5307:   End If
  loc_15C530A: Else
  loc_15C5318:   Set var_DC = Me.TExt1
  loc_15C531E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_E0)
  loc_15C5326:   var_B4 = var_E0.Text
  loc_15C5333:   var_168 = Val(var_B4)
  loc_15C5344:   Set var_F4 = Me.TExt1
  loc_15C534A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_F8, var_B8)
  loc_15C535F:   var_170 = Val(var_B8)
  loc_15C5370:   Set var_A8 = Me.TExt1
  loc_15C5376:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B0)
  loc_15C53B5:   If (CDbl(Val(var_B0)) > CDbl((var_F8.Text - (var_AC.Text - CDbl(global_68))))) Then
  loc_15C53D3:     var_D8 = "Invalid Leave"
  loc_15C53D9:     MsgBox(var_D8, &H40, "Information", var_108, var_130)
  loc_15C53F7:     Set var_A8 = Me.TExt1
  loc_15C53FD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C5405:     var_AC.Text = vbNullString
  loc_15C541A:     Set var_A8 = Me.TExt1
  loc_15C5420:     Call 0.Method_TopCtrl1_UnknownEvent_160 (3, var_AC)
  loc_15C5428:     var_AC.SetFocus
  loc_15C5434:     Exit Sub
  loc_15C5435:   End If
  loc_15C5435: End If
  loc_15C5443: Set var_A8 = Me.TExt1
  loc_15C5449: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C546D: If (CDbl(Val(var_AC.Text)) = CDbl(0)) Then
  loc_15C547E:   Set var_A8 = Me.TExt1
  loc_15C5484:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C548C:   var_AC.Text = vbNullString
  loc_15C5498: End If
  loc_15C54A6: Set var_A8 = Me.TExt1
  loc_15C54AC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C54D0: If (CDbl(Val(var_AC.Text)) = CDbl(0)) Then
  loc_15C54E1:   Set var_A8 = Me.TExt1
  loc_15C54E7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C54EF:   var_AC.Text = vbNullString
  loc_15C54FB: End If
  loc_15C5506: Set var_A8 = Me.TExt1
  loc_15C550C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C551D: Set var_DC = Me.Label1
  loc_15C5523: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_E0)
  loc_15C5556: If (Proc_6_27_EA565C(var_AC, var_E0.Caption) = 0) Then
  loc_15C5559:   Exit Sub
  loc_15C555A: End If
  loc_15C5565: Set var_A8 = Me.TExt1
  loc_15C556B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_15C557C: Set var_DC = Me.Label1
  loc_15C5582: Call 0.Method_TopCtrl1_UnknownEvent_160 (9, var_E0)
  loc_15C55B5: If (Proc_6_27_EA565C(var_AC, var_E0.Caption) = 0) Then
  loc_15C55B8:   Exit Sub
  loc_15C55B9: End If
  loc_15C55C4: Set var_A8 = Me.TExt1
  loc_15C55CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC)
  loc_15C55DB: Set var_DC = Me.Label1
  loc_15C55E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (5, var_E0)
  loc_15C5614: If (Proc_6_27_EA565C(var_AC, var_E0.Caption) = 0) Then
  loc_15C5617:   Exit Sub
  loc_15C5618: End If
  loc_15C5623: Set var_A8 = Me.TExt1
  loc_15C5629: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_AC)
  loc_15C563A: Set var_DC = Me.Label1
  loc_15C5640: Call 0.Method_TopCtrl1_UnknownEvent_160 (6, var_E0)
  loc_15C5673: If (Proc_6_27_EA565C(var_AC, var_E0.Caption) = 0) Then
  loc_15C5676:   Exit Sub
  loc_15C5677: End If
  loc_15C5682: Set var_A8 = Me.TExt1
  loc_15C5688: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC)
  loc_15C5699: Set var_DC = Me.Label1
  loc_15C569F: Call 0.Method_TopCtrl1_UnknownEvent_160 (8, var_E0)
  loc_15C56B6: Set var_F4 = var_AC
  loc_15C56D2: If (Proc_6_27_EA565C(var_F4, var_E0.Caption) = 0) Then
  loc_15C56D5:   Exit Sub
  loc_15C56D6: End If
  loc_15C56E4: unk_49B6C1.BeginTrans var_174
  loc_15C56ED: Set var_A8 = Me.TopCtrl1
  loc_15C56F3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HFF)
  loc_15C570C: If (CStr(var_AC) = "Add") Then
  loc_15C5732:   var_B0 = "SELECT COUNT(*) FROM Leave_ench WHERE site_code='" & MemVar_1F92070
  loc_15C574A:   Set var_A8 = Me.TExt1
  loc_15C5750:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, var_B0 & "' and SR_NO = ", var_D8, -1)
  loc_15C5758:   var_DC = var_AC.Text
  loc_15C576A:   unk_49B6C1.Execute var_E0 & var_B4, 0, var_F4
  loc_15C577A:    = var_E0.Item()
  loc_15C5782:    = var_F4.Value
  loc_15C57B1:   If (var_DC.Fields > 0) Then
  loc_15C57BA:     Call 0.Method_arg_50 (var_B0)
  loc_15C57DB:     MsgBox("* Sr.No. Already Exist *", &H40, CVar(var_B0), var_108, var_130)
  loc_15C57F6:     Set var_A8 = Me.TExt1
  loc_15C57FC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_15C5804:     var_AC.SetFocus
  loc_15C5810:     Exit Sub
  loc_15C5811:   End If
  loc_15C5814: Else
  loc_15C5840:   Set var_A8 = Me.TExt1
  loc_15C5846:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, "DELETE FROM LEDGER WHERE site_code='" & MemVar_1F92070 & "' and V_TYPE= 'LV' AND V_NO=")
  loc_15C584E:   var_D8 = var_AC.Text
  loc_15C5857:   var_178 = -1 & var_B4
  loc_15C5860:   unk_49B6C1.Execute var_E0 & var_B4, var_DC, var_AC
  loc_15C58A8:   Set var_A8 = Me.TExt1
  loc_15C58AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4, "DELETE FROM LEAVE_ENCH WHERE site_code='" & MemVar_1F92070 & "' and Sr_No=")
  loc_15C58B6:   var_D8 = var_AC.Text
  loc_15C58BF:   var_178 = -1 & var_B4
  loc_15C58C8:   unk_49B6C1.Execute var_E0 & var_B4, var_DC, 
  loc_15C58E4: End If
  loc_15C58F8: If (var_88.RecordCount > 0) Then
  loc_15C5912:   var_AC = var_88.Fields.Item("Ac_Code")
  loc_15C5923:   var_9C = Proc_6_38_E68A98(CVar(var_AC))
  loc_15C592C: End If
  loc_15C593A: Set var_A8 = Me.TExt1
  loc_15C5940: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C597B: var_F0 = CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & Proc_183_15_EAC900("LV", 5)) 'String
  loc_15C598E: var_108 = (var_F0 + Space(5))
  loc_15C59A6: var_150 = (var_108 + CVar(Proc_183_16_EAECDC(var_AC.Text, 8)))
  loc_15C59AB: var_A4 = CStr(var_150)
  loc_15C59DD: Set var_A8 = Me.TExt1
  loc_15C59E3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC)
  loc_15C59EB: var_B0 = var_AC.Text
  loc_15C59FE: Proc_6_17_EAA2B0(var_F0)
  loc_15C5A11: Set var_DC = Me.TExt1
  loc_15C5A17: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15C5A41: Set var_F8 = Me.TExt1
  loc_15C5A47: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_10C)
  loc_15C5A56: Proc_6_7_F25D88(var_248, CVar(var_10C))
  loc_15C5A66: Proc_6_17_EAA2B0(var_298, var_9C)
  loc_15C5A79: Set var_110 = Me.TExt1
  loc_15C5A7F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2CC)
  loc_15C5A94: var_168 = Val(var_2CC.Text)
  loc_15C5AA5: Set var_310 = Me.TExt1
  loc_15C5AAB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_314, var_184)
  loc_15C5AC1: Proc_6_17_EAA2B0(var_334, CVar(var_184))
  loc_15C5ACB: var_3B4 = CVar(Proc_6_14_EF349C("LV")) 'String
  loc_15C5AD1: Proc_183_8_EB0AA4(var_3C4)
  loc_15C5AEA: var_B4 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE) VALUES ('" & var_B0
  loc_15C5B30: var_208 = CVar(var_B4 & "',1,") & var_F0 & "," & CVar(var_E0.Text) & ",'" & CVar(Me.LblVPrefix.Caption) & "','" & CVar(MemVar_1F92070) 
  loc_15C5B50: var_2A8 = var_208 & "'," & var_248 & "," & var_298 
  loc_15C5B97: var_3D4 = var_2A8 & "," & CVar(var_314.Tag) & ",0," & var_334 & ",'Being leave encashment allowed','" & CVar(MemVar_1F920C8) & "'," & var_3C4 
  loc_15C5BAE: unk_49B6C1.Execute CStr(var_3D4 & ",'A')"), var_418, -1
  loc_15C5C2A: Set var_A8 = Me.TExt1
  loc_15C5C30: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_AC, var_B0)
  loc_15C5C38: var_41C = var_AC.Text
  loc_15C5C4B: Proc_6_17_EAA2B0(var_F0, "LV")
  loc_15C5C5E: Set var_DC = Me.TExt1
  loc_15C5C64: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_E0)
  loc_15C5C6C: var_B8 = var_E0.Text
  loc_15C5C8E: Set var_F8 = Me.TExt1
  loc_15C5C94: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_10C)
  loc_15C5CA3: Proc_6_7_F25D88(var_248, CVar(var_10C))
  loc_15C5CB6: Set var_110 = Me.TExt1
  loc_15C5CBC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_2CC)
  loc_15C5CD2: Proc_6_17_EAA2B0(var_2A8, CVar(var_2CC.Tag))
  loc_15C5CE5: Set var_310 = Me.TExt1
  loc_15C5CEB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_314)
  loc_15C5D00: var_168 = Val(var_314.Text)
  loc_15C5D0E: Proc_6_17_EAA2B0(var_334, var_9C)
  loc_15C5D18: var_3B4 = CVar(Proc_6_14_EF349C(var_168)) 'String
  loc_15C5D1E: Proc_183_8_EB0AA4(var_3C4, var_3B4)
  loc_15C5D37: var_B4 = "INSERT INTO LEDGER (DocId,V_SNo,V_Type,V_No,v_Prefix,Site_Code,V_Date,SubCode,AmtCr,AmtDr,ContraSub,Narration,U_Name,U_EntDt,U_AE) VALUES ('" & var_B0
  loc_15C5D57: var_1A8 = CVar(var_B4 & "',2,") & var_F0 & "," & CVar(var_B8) 
  loc_15C5D73: var_1E8 = var_1A8 & ",'" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_15C5DC1: var_344 = var_1E8 & CVar(MemVar_1F92070) & "'," & var_248 & "," & var_2A8 & ",0," & CVar(var_168) & "," & var_334 
  loc_15C5DDD: var_3A4 = var_344 & ",'Being leave encashment allowed','" & CVar(MemVar_1F920C8) & "'," 
  loc_15C5DFB: unk_49B6C1.Execute CStr(var_3A4 & var_3C4 & ",'A')"), var_418, -1
  loc_15C5E87: Set var_A8 = Me.TExt1
  loc_15C5E8D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B0, "INSERT INTO LEAVE_ENCH (Sr_No,L_Date,Emp_Code,Leave_Ench,Amt_Ench,AC_Code,Site_Code,U_EntDt,U_AE) VALUES (", var_3A4)
  loc_15C5E95: -1 = var_AC.Text
  loc_15C5EB3: Set var_DC = Me.TExt1
  loc_15C5EB9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_E0, CVar(var_420 & var_B0 & ","))
  loc_15C5EC8: Proc_6_7_F25D88(var_F0, CVar(var_E0))
  loc_15C5ED9: var_150 = var_41C & var_F0 & "," 
  loc_15C5EEB: Set var_F4 = Me.TExt1
  loc_15C5EF1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F8, var_B8)
  loc_15C5EF9: var_150 = var_F8.Tag
  loc_15C5F07: Proc_6_17_EAA2B0(var_1A8, CVar(var_B8))
  loc_15C5F0F: var_1B8 = var_3B4 & var_1A8 
  loc_15C5F27: Set var_10C = Me.TExt1
  loc_15C5F2D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_110)
  loc_15C5F3C: Proc_6_39_E7C810(var_1E8, CVar(var_110))
  loc_15C5F5C: Set var_2CC = Me.TExt1
  loc_15C5F62: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_310)
  loc_15C5F71: Proc_6_39_E7C810(var_248, CVar(var_310))
  loc_15C5F94: Set var_314 = Me.TExt1
  loc_15C5F9A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_41C)
  loc_15C5FA2: var_178 = var_41C.Tag
  loc_15C5FB0: Proc_6_17_EAA2B0(var_2A8, CVar(var_178))
  loc_15C5FE3: Proc_6_8_EB0DE4(var_344)
  loc_15C5FEB: var_364 = CVar(Proc_6_14_EF349C(var_1B8 & "," & var_1E8 & "," & var_248 & "," & var_2A8 & ",'" & CVar(MemVar_1F92070) & "',")) & var_344 
  loc_15C6002: unk_49B6C1.Execute CStr(var_364 & ",'A')"), , 
  loc_15C6066: Set var_A8 = Me.TopCtrl1
  loc_15C606C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000C()
  loc_15C6085: If (CStr() = "Add") Then
  loc_15C609C:   var_B0 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_15C60C2:   Set var_A8 = Me.TExt1
  loc_15C60C8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_178, CVar(var_B0 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and VP.V_Type='LV' And VP.Date_From<="))
  loc_15C60D0:   var_198 = var_AC.Text
  loc_15C60DE:   Proc_6_7_F25D88(var_F0, CVar(var_178))
  loc_15C60E6:   var_130 = -1 & var_F0 
  loc_15C60FD:   unk_49B6C1.Execute CStr(var_41C & var_F0 & " Order By VP.Date_From DESC"), var_DC, 
  loc_15C6108:   Set var_94 = var_DC
  loc_15C6145:   If (Me.Recordset15.RecordCount > 0) Then
  loc_15C6156:     Set var_A8 = Me.TExt1
  loc_15C615C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_15C6164:     var_B0 = var_AC.Text
  loc_15C618C:     var_C8 = "V_Type"
  loc_15C61D9:     Proc_6_7_F25D88(var_198, CVar(Me.Recordset15.Fields.Item("Date_From")))
  loc_15C620C:     var_184 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(Val(var_B0)) & " Where (SITE_CODE='" & MemVar_1F92070 & "' AND LOGSITE_CODE='"
  loc_15C622E:     var_108 = CVar(var_184 & MemVar_1F92078 & "') and PREFIX='" & Me.LblVPrefix.Caption & "' AND V_Type='") & Me.Recordset15.Fields.Item(var_C8).Value 
  loc_15C624C:     unk_49B6C1.Execute CStr(var_108 & "' and Date_From=" & var_198), var_1B8, -1
  loc_15C628E:   End If
  loc_15C628E: End If
  loc_15C6294: unk_49B6C1.CommitTrans
  loc_15C629B: var_8C = 0
  loc_15C62AC: Me.Recordset15.Requery -1
  loc_15C62BF: Set var_A8 = Me.TExt1
  loc_15C62C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B0)
  loc_15C62CD: var_8C = var_AC.Text
  loc_15C6307: Me.Recordset15.Find "SearchCode ='" & "SearchCode ='" & var_B0 & "'", 0, 1
  loc_15C633A: Call Proc_307_33_E6C8B4(Proc_5_1_100CB50("INI", Me, global_56), var_C8)
  loc_15C634A: Set var_88 = Nothing
  loc_15C634D: Exit Sub
  loc_15C634E: ' Referenced from: 15C5114
  loc_15C6354: If (var_8C = &HFF) Then
  loc_15C635D:   unk_49B6C1.RollbackTrans
  loc_15C6362: End If
  loc_15C6362: Proc_6_60_E62BC4(var_110)
  loc_15C6367: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E63A38
  'Data Table: 49B6B4
  loc_E63A08: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_E63A0B:   Call DGEmployee_UnknownEvent_9()
  loc_E63A10: End If
  loc_E63A2C: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E63A2F:   Call DGAcName_UnknownEvent_9()
  loc_E63A34: End If
  loc_E63A34: Exit Sub
End Sub

Private Sub Text1_GotFocus(Index As Integer) '11395A8
  'Data Table: 49B6B4
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  loc_113923A: Set var_88 = Me.TExt1
  loc_1139240: Call 0.Method_Text1_GotFocus0 (Index)
  loc_113924E: Proc_6_74_E226B0(var_8C)
  loc_113925A: Call Proc_307_35_EBCA34(var_8C)
  loc_1139262: var_92 = Index
  loc_113926D: If (var_92 = CInt(9)) Then
  loc_1139287:   If (Me.RecordCount > 0) Then
  loc_1139295:     Set var_8C = Me.FGPoint
  loc_11392AD:     Proc_6_137_1193554(Me.DGAcName, global_60, Index)
  loc_11392BB:   End If
  loc_1139309:   Set var_88 = Me.TExt1
  loc_113930F:   Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_1139317:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_113932F:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1139332:     Exit Sub
  loc_1139333:   End If
  loc_1139340:   Set var_88 = Me.TExt1
  loc_1139346:   Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_113934E:   var_A0 = var_8C.Text
  loc_1139360:   var_B0 = "Name"
  loc_113939B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11393A4:     Me.MoveFirst
  loc_11393C7:     Set var_88 = Me.TExt1
  loc_11393CD:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11393D5:     0 = var_8C.Text
  loc_11393EE:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1139403:   End If
  loc_1139406: Else
  loc_113940E:   If (var_92 = CInt(2)) Then
  loc_1139428:     If (Me.RecordCount > 0) Then
  loc_1139436:       Set var_8C = Me.FGPoint
  loc_113944E:       Proc_6_137_1193554(Me.DGEmployee, global_64)
  loc_113945C:     End If
  loc_11394AA:     Set var_88 = Me.TExt1
  loc_11394B0:     Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0)
  loc_11394B8:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11394D0:     If (Index Or (var_A0 = vbNullString)) Then
  loc_11394D3:       Exit Sub
  loc_11394D4:     End If
  loc_11394E1:     Set var_88 = Me.TExt1
  loc_11394E7:     Call 0.Method_Text1_GotFocus0 (Index, var_8C)
  loc_11394EF:     var_A0 = var_8C.Text
  loc_1139501:     var_B0 = "Name"
  loc_113953C:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1139545:       Me.MoveFirst
  loc_1139568:       Set var_88 = Me.TExt1
  loc_113956E:       Call 0.Method_Text1_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1139576:       0 = var_8C.Text
  loc_113958F:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_11395A4:     End If
  loc_11395A4:   End If
  loc_11395A4: End If
  loc_11395A4: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) '116A27C
  'Data Table: 49B6B4
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  Dim var_90 As DataGrid
  Dim var_94 As DataGrid
  loc_1169EBF: var_88 = Shift
  loc_1169ECC: If (CLng(Shift) = &H1B) Then
  loc_1169ECF:   Call Proc_307_35_EBCA34(var_88)
  loc_1169ED4:   Exit Sub
  loc_1169ED5: End If
  loc_1169ED8: var_8A = KeyCode
  loc_1169EE1: If (var_8A = 3) Then
  loc_1169EEE:   Set var_90 = Me.TExt1
  loc_1169EF4:   Call 0.Method_Text1_KeyDown0 (KeyCode, var_94)
  loc_1169F0F:   Proc_6_41_FA0BA4(var_94, Shift, 3)
  loc_1169F1E: Else
  loc_1169F24:   If (var_8A = 4) Then
  loc_1169F31:     Set var_90 = Me.TExt1
  loc_1169F37:     Call 0.Method_Text1_KeyDown0 (KeyCode, var_94)
  loc_1169F52:     Proc_6_41_FA0BA4(var_94, Shift, 7)
  loc_1169F61:   Else
  loc_1169F67:     If (var_8A = 6) Then
  loc_1169F74:       Set var_90 = Me.TExt1
  loc_1169F7A:       Call 0.Method_Text1_KeyDown0 (KeyCode, var_94, 2)
  loc_1169F95:       Proc_6_41_FA0BA4(var_94, Shift, 8)
  loc_1169FA4:     Else
  loc_1169FAC:       If (var_8A = CInt(9)) Then
  loc_1169FCC:         Set var_A4 = Me.FGPoint
  loc_1169FD7:         Set var_98 = Nothing
  loc_116A009:         Proc_6_69_134A198(Me.DGAcName, Me.TExt1, CInt(9), global_60, Shift, 0, 1)
  loc_116A078:         If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_116A07F:           Set var_98 = Me.DGAcName
  loc_116A09E:           Proc_6_138_106D6F8(var_98, global_60, KeyCode, Me.FGPoint, var_98)
  loc_116A0AC:         End If
  loc_116A0AF:       Else
  loc_116A0B7:         If (var_8A = CInt(2)) Then
  loc_116A0D7:           Set var_A4 = Me.FGPoint
  loc_116A114:           Proc_6_69_134A198(Me.DGEmployee, Me.TExt1, CInt(2), global_64, Shift, 0, 1, Nothing)
  loc_116A183:           If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_116A1A9:             Proc_6_138_106D6F8(Me.DGEmployee, global_64, KeyCode, Me.FGPoint, var_A4, 0)
  loc_116A1B7:           End If
  loc_116A1B7:         End If
  loc_116A1B7:       End If
  loc_116A1B7:     End If
  loc_116A1B7:   End If
  loc_116A1B7: End If
  loc_116A1F2: If ((CBool(Me.DGEmployee.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) Then
  loc_116A213:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_116A21C:     Call Text1_Validate(KeyCode)
  loc_116A227:     If (var_86 = &HFF) Then
  loc_116A22A:       Exit Sub
  loc_116A22B:     End If
  loc_116A22E:     Call Proc_307_34_E7FE74(KeyCode, var_86, var_A4, 0)
  loc_116A233:     Exit Sub
  loc_116A234:   End If
  loc_116A249:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_116A252:     Proc_6_75_E527CC(Shift, arg_14, 0)
  loc_116A257:   End If
  loc_116A25F:   If (KeyCode <> CInt(0)) Then
  loc_116A26C:     If (CLng(Shift) = &H26) Then
  loc_116A275:       Proc_6_76_E52838(Shift, arg_14)
  loc_116A27A:     End If
  loc_116A27A:   End If
  loc_116A27A: End If
  loc_116A27A: Exit Sub
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) '100AF38
  'Data Table: 49B6B4
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim arg_13FF As Integer
  loc_100AD2A: If (arg_10 = &HD) Then
  loc_100AD2F:   arg_10 = 0
  loc_100AD32: End If
  loc_100AD35: Proc_6_58_E054C0(arg_10)
  loc_100AD3D: var_86 = KeyAscii
  loc_100AD46: If (var_86 = 3) Then
  loc_100AD53:   Set var_8C = Me.TExt1
  loc_100AD59:   Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90)
  loc_100AD74:   Proc_6_42_129A86C(var_90, arg_10, 3)
  loc_100AD83: Else
  loc_100AD89:   If (var_86 = 4) Then
  loc_100AD96:     Set var_8C = Me.TExt1
  loc_100AD9C:     Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90, 0)
  loc_100ADB7:     Proc_6_42_129A86C(var_90, arg_10, 7)
  loc_100ADC6:   Else
  loc_100ADCC:     If (var_86 = 6) Then
  loc_100ADD9:       Set var_8C = Me.TExt1
  loc_100ADDF:       Call 0.Method_Text1_KeyPress0 (KeyAscii, var_90, 2)
  loc_100ADFA:       Proc_6_42_129A86C(var_90, arg_10, 8)
  loc_100AE09:     Else
  loc_100AE11:       If (var_86 = CInt(2)) Then
  loc_100AE30:         If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_100AE5D:           Proc_6_89_146F1AC(Me.TExt1, KeyAscii, global_64, arg_10, "Name")
  loc_100AE8F:           Proc_6_138_106D6F8(Me.DGEmployee, global_64, KeyAscii, Me.FGPoint)
  loc_100AE9D:         End If
  loc_100AEA0:       Else
  loc_100AEA8:         If (var_86 = CInt(9)) Then
  loc_100AEC7:           If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_100AEF4:             Proc_6_89_146F1AC(Me.TExt1, KeyAscii, global_60, arg_10, "Name")
  loc_100AF26:             Proc_6_138_106D6F8(Me.DGAcName, global_60, KeyAscii, Me.FGPoint, 0)
  loc_100AF34:           End If
  loc_100AF34:         End If
  loc_100AF34:       End If
  loc_100AF34:     End If
  loc_100AF34:   End If
  loc_100AF34: End If
  loc_100AF34: Exit Sub
  loc_100AF35: arg_13FF = 0
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'F15730
  'Data Table: 49B6B4
  Dim var_86 As Integer
  loc_F15643: var_86 = KeyCode
  loc_F1564E: If (var_86 = CInt(9)) Then
  loc_F1566D:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F15681:     var_A4 = "Name"
  loc_F156A5:     Proc_6_68_129FB34(Me.DGAcName, Me.TExt1, KeyCode, global_60)
  loc_F156B8:   End If
  loc_F156BB: Else
  loc_F156C3:   If (var_86 = CInt(2)) Then
  loc_F156E2:     If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_F156F6:       var_A4 = "Name"
  loc_F1571A:       Proc_6_68_129FB34(Me.DGEmployee, Me.TExt1, KeyCode, global_64, Shift)
  loc_F1572D:     End If
  loc_F1572D:   End If
  loc_F1572D: End If
  loc_F1572D: Exit Sub
End Sub

Private Sub Text1_LostFocus(Index As Integer) 'E480EC
  'Data Table: 49B6B4
  loc_E480CA: Set var_88 = Me.TExt1
  loc_E480D0: Call 0.Method_Text1_LostFocus0 (Index)
  loc_E480DE: Proc_6_73_E22704(var_8C)
  loc_E480EA: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) '147169C
  'Data Table: 49B6B4
  Dim var_98 As Variant
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_49B6C1 As Connection15
  Dim var_CA As Integer
  Dim var_C4 As Variant
  Dim var_9C As String
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_94 As Fields15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_C8 As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_140 As TextBox
  Dim var_134 As TextBox
  Dim var_118 As Variant
  Dim var_174 As Integer
  Dim var_160 As Recordset15
  Dim var_164 As Fields15
  Dim var_178 As Field20
  Dim var_180 As TextBox
  Dim arg_10 As Integer
  Dim var_88 As Recordset15
  Dim var_194 As Variant
  Dim var_130 As TextBox
  Dim var_138 As String
  Dim var_8C As Recordset15
  loc_1470AE0: On Error Goto loc_1471658
  loc_1470B01: Set var_94 = Me.TExt1
  loc_1470B07: Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_9C, "SELECT * FROM EMPLOYEE WHERE CODE='")
  loc_1470B0F: var_C4 = var_98.Tag
  loc_1470B18: var_A0 = -1 & var_9C
  loc_1470B28: unk_49B6C1.Execute var_A0 & "'", var_C8, 
  loc_1470B33: Set var_88 = var_C8
  loc_1470B4E: var_CA = Cancel
  loc_1470B57: If Not (var_CA = 3) Then
  loc_1470B60:   If Not (var_CA = 4) Then
  loc_1470B69:     If (var_CA = 6) Then
  loc_1470B6C:     End If
  loc_1470B6C:   End If
  loc_1470B76:   Set var_94 = Me.TExt1
  loc_1470B7C:   Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1470B88:   Proc_6_40_EA50F0(CVar(var_98))
  loc_1470B8F:   var_9C = CStr(var_CA)
  loc_1470B9C:   Set var_C8 = Me.TExt1
  loc_1470BA2:   Call 0.Method_Text1_Validate0 (Cancel, var_D0)
  loc_1470BAA:   var_D0.Text = var_9C
  loc_1470BC1: Else
  loc_1470BC7:   If (var_CA = 0) Then
  loc_1470BD0:     Call Proc_307_37_10F0E0C(MemVar_1F92044)
  loc_1470BDB:   Else
  loc_1470BE3:     If (var_CA = CInt(9)) Then
  loc_1470C35:       Set var_94 = Me.TExt1
  loc_1470C3B:       Call 0.Method_Text1_Validate0 (CInt(9), var_98, var_9C)
  loc_1470C43:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_1470C5B:       If (var_9C Or (var_9C = vbNullString)) Then
  loc_1470C5E:         Exit Sub
  loc_1470C5F:       End If
  loc_1470C9B:       Set var_C8 = Me.TExt1
  loc_1470CA1:       Call 0.Method_Text1_Validate0 (CInt(9), var_D0)
  loc_1470CA9:       var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1470CDC:       var_98 = Me.Fields.Item("Code")
  loc_1470CFB:       Set var_C8 = Me.TExt1
  loc_1470D01:       Call 0.Method_Text1_Validate0 (CInt(9), var_D0)
  loc_1470D09:       var_D0.Tag = CStr(var_98.Value)
  loc_1470D22:     Else
  loc_1470D2A:       If (var_CA = CInt(2)) Then
  loc_1470D7C:         Set var_94 = Me.TExt1
  loc_1470D82:         Call 0.Method_Text1_Validate0 (CInt(2), var_98)
  loc_1470DA2:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_98.Text = vbNullString)) Then
  loc_1470DA5:           Exit Sub
  loc_1470DA6:         End If
  loc_1470DE2:         Set var_C8 = Me.TExt1
  loc_1470DE8:         Call 0.Method_Text1_Validate0 (CInt(2), var_D0)
  loc_1470DF0:         var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1470E42:         Set var_C8 = Me.TExt1
  loc_1470E48:         Call 0.Method_Text1_Validate0 (CInt(2), var_D0)
  loc_1470E50:         var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1470E83:         var_98 = Me.Fields.Item("Department")
  loc_1470E8B:         var_C4 = var_98.Value
  loc_1470E93:         var_E8 = " - "
  loc_1470E98:         var_F8 = (var_C4 + var_E8)
  loc_1470EB9:         var_D0 = Me.Fields.Item("Designation")
  loc_1470EC9:         var_128 = (var_F8 + var_D0.Value)
  loc_1470EDB:         Me.LblEmpRef.Caption = CStr(var_128)
  loc_1470F09:         Set var_94 = Me.TExt1
  loc_1470F0F:         Call 0.Method_Text1_Validate0 (CInt(2), var_98)
  loc_1470F2A:         Set var_13C = Me.TExt1
  loc_1470F30:         Call 0.Method_Text1_Validate0 (CInt(2), var_140)
  loc_1470F43:         var_E8 = 0
  loc_1470F70:         unk_49B6C1.Execute "Select Joining_date from employee where code='" & var_98.Tag & "'", var_C4, -1
  loc_1470F78:         var_C8 = var_C8.Fields
  loc_1470F80:         var_E8 = var_D0.Item(var_D0)
  loc_1470F88:         var_12C = var_12C.Value
  loc_1470F9E:         Set var_130 = Me.TExt1
  loc_1470FA4:         Call 0.Method_Text1_Validate0 (CInt(1), var_134, var_138)
  loc_1470FAC:         var_F8 = var_134.Text
  loc_1470FBB:         var_118 = (var_F8 > CDate(CDate(var_138)))
  loc_1470FC5:         var_174 = 0
  loc_1470FF2:         unk_49B6C1.Execute "Select Resign_date from employee where code='" & var_140.Tag & "'", var_128, -1
  loc_1470FFA:         var_160 = var_160.Fields
  loc_1471002:         var_174 = var_164.Item(var_164)
  loc_147100A:         var_178 = var_178.Value
  loc_1471020:         Set var_17C = Me.TExt1
  loc_1471026:         Call 0.Method_Text1_Validate0 (CInt(1), var_180, var_184)
  loc_1471084:         If CBool(var_118 Or (var_180.Text < CDate(CDate(var_184)))) Then
  loc_14710A0:           MsgBox("Invalid Date For This Employee", &H40, var_F8, var_118, var_128)
  loc_14710B2:           arg_10 = &HFF
  loc_14710B5:         End If
  loc_14710C9:         If (var_88.RecordCount > 0) Then
  loc_14710F2:           Proc_6_39_E7C810(var_F8, CVar(var_88.Fields.Item("Tot_EL_Allow")))
  loc_1471111:           var_D0 = var_88.Fields.Item("OP_Earned")
  loc_1471120:           Proc_6_39_E7C810(var_128, CVar(var_D0))
  loc_1471128:           var_194 = (var_F8 + var_128)
  loc_147113B:           Set var_12C = Me.TExt1
  loc_1471141:           Call 0.Method_Text1_Validate0 (CInt(3), var_130)
  loc_1471149:           var_130.Text = CStr(var_180.Text)
  loc_1471180:           var_98 = var_88.Fields.Item("Curr_Earned")
  loc_147118F:           Proc_6_39_E7C810(var_F8, CVar(var_98))
  loc_14711A6:           Set var_C8 = Me.TExt1
  loc_14711AC:           Call 0.Method_Text1_Validate0 (CInt(4), var_D0)
  loc_14711B4:           var_D0.Text = CStr(var_F8)
  loc_14711DA:           Set var_94 = Me.TExt1
  loc_14711E0:           Call 0.Method_Text1_Validate0 (CInt(3), var_98)
  loc_1471208:           var_C8 = var_88.Fields
  loc_1471210:           var_D0 = var_C8.Item("Curr_Earned")
  loc_147121F:           Proc_6_39_E7C810(var_F8, CVar(var_D0))
  loc_1471227:           var_118 = (CVar(Val(var_98.Text)) - var_F8)
  loc_147122B:           var_A0 = CStr(CVar(var_D0))
  loc_147123A:           Set var_12C = Me.TExt1
  loc_1471240:           Call 0.Method_Text1_Validate0 (CInt(5), var_130)
  loc_1471248:           var_130.Text = var_A0
  loc_1471270:           If (MemVar_1F923AC = "A") Then
  loc_147128E:             var_A4 = "SELECT IIF(ISNULL(sum(Leave_Ench)),0,sum(Leave_Ench)) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F92070 & "' and EMP_CODE='"
  loc_147129F:             Set var_94 = Me.TExt1
  loc_14712A5:             Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_A0, var_A4)
  loc_14712AD:             var_C4 = var_98.Tag
  loc_14712B6:             var_138 = -1 & var_A0
  loc_14712C6:             unk_49B6C1.Execute var_138 & "'", var_C8, arg_10
  loc_14712D1:             Set var_8C = var_C8
  loc_14712F0:           Else
  loc_14712F8:             If (MemVar_1F923AC = "S") Then
  loc_1471316:               var_A4 = "SELECT ISNULL(sum(Leave_Ench),0) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F92070 & "' and EMP_CODE='"
  loc_1471327:               Set var_94 = Me.TExt1
  loc_147132D:               Call 0.Method_Text1_Validate0 (CInt(2), var_98, var_A0, var_A4)
  loc_1471335:               var_C4 = var_98.Tag
  loc_147133E:               var_138 = -1 & var_A0
  loc_147134E:               unk_49B6C1.Execute var_138 & "'", var_C8, 
  loc_1471359:               Set var_8C = var_C8
  loc_1471375:             End If
  loc_1471375:           End If
  loc_1471389:           If (var_8C.RecordCount > 0) Then
  loc_14713C8:             If (var_8C.Fields.Item("el").Value > 0) Then
  loc_14713E5:               var_98 = var_8C.Fields.Item("el")
  loc_1471404:               Set var_C8 = Me.TExt1
  loc_147140A:               Call 0.Method_Text1_Validate0 (CInt(6), var_D0)
  loc_1471412:               var_D0.Text = CStr(var_98.Value)
  loc_147142B:             Else
  loc_147145F:               Set var_94 = Me.TExt1
  loc_1471465:               Call 0.Method_Text1_Validate0 (CInt(6), var_98, CStr(Format(0, "0")))
  loc_147146D:               var_98.Text = 1
  loc_1471485:             End If
  loc_1471485:           End If
  loc_1471493:           Set var_C8 = Me.TExt1
  loc_1471499:           Call 0.Method_Text1_Validate0 (CInt(6), var_D0)
  loc_14714B4:           Set var_94 = Me.TExt1
  loc_14714BA:           Call 0.Method_Text1_Validate0 (CInt(5), var_98)
  loc_14714D7:           var_A4 = CStr((Val(var_98.Text) - CDbl(var_D0.Text)))
  loc_14714E5:           Set var_12C = Me.TExt1
  loc_14714EB:           Call 0.Method_Text1_Validate0 (CInt(7), var_130)
  loc_14714F3:           var_130.Text = var_A4
  loc_1471510:         End If
  loc_1471513:       Else
  loc_147151B:         If (var_CA = CInt(1)) Then
  loc_147152B:           Set var_94 = Me.TExt1
  loc_1471531:           Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1471550:           If (var_98.Text = vbNullString) Then
  loc_1471566:             Set var_94 = Me.TExt1
  loc_147156C:             Call 0.Method_Text1_Validate0 (CInt(1), var_98)
  loc_1471574:             var_98.Text = CStr(MemVar_1F920EC)
  loc_1471586:           Else
  loc_1471590:             Set var_94 = Me.TExt1
  loc_1471596:             Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_14715B6:             Set var_D0 = Me.TExt1
  loc_14715BC:             Call 0.Method_Text1_Validate0 (Cancel, var_12C)
  loc_14715C4:             var_12C.Text = Proc_6_33_1512840(var_98)
  loc_14715D7:           End If
  loc_14715DA:         Else
  loc_14715E2:           If (var_CA = CInt(8)) Then
  loc_14715EF:             Set var_94 = Me.TExt1
  loc_14715F5:             Call 0.Method_Text1_Validate0 (Cancel, var_98)
  loc_1471619:             var_118 = Format(CVar(var_98), "0.00")
  loc_1471621:             var_9C = CStr(var_118)
  loc_147162F:             Set var_C8 = Me.TExt1
  loc_1471635:             Call 0.Method_Text1_Validate0 (Cancel, var_D0, var_9C)
  loc_147163D:             var_D0.Text = 1
  loc_1471657:           End If
  loc_1471657:         End If
  loc_1471657:       End If
  loc_1471657:     End If
  loc_1471657:   End If
  loc_1471657: End If
  loc_1471657: Exit Sub
  loc_1471658: ' Referenced from: 1470AE0
  loc_1471660: Set var_94 = Err()
  loc_1471666: Call 0.Method_arg_2C (var_9C, 1)
  loc_1471687: MsgBox(CVar(var_9C), &H10, "Information", var_118, var_128)
  loc_147169A: Exit Sub
  loc_147169B: Exit Sub
End Sub

Private Sub Form_Load() '1039E44
  'Data Table: 49B6B4
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_B0 As String
  Dim var_C0 As Variant
  Dim unk_49B6C1 As Connection15
  loc_1039BF0: On Error Goto loc_1039E3D
  loc_1039C02: Me.LblUser.Left = CDbl(13500)
  loc_1039C19: Me.LblUser.Top = CDbl(7800)
  loc_1039C30: Me.LblLDt.Top = CDbl(8160)
  loc_1039C47: Me.LblLDt.Left = CDbl(13500)
  loc_1039C53: var_9C = CVar(CLng(MemVar_1F921B0)) 'Long
  loc_1039C5C: Set var_8C = Me.DBGrid1
  loc_1039C71: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), DBGrid1.DispID_FFFFFE0B)
  loc_1039C80: Set global_56 = New 
  loc_1039C95: Me.DBGrid1.CursorLocation = 3
  loc_1039CB8: var_B0 = "SELECT LEAVE_ENCH.SR_NO AS SEARCHCODE,Leave_Ench.*,EMPLOYEE.NAME AS EmpName, SG.Name as AcName,IsNull(Depart.Name,'') As Department,Desig.Name As Designation FROM (Leave_Ench LEFT JOIN EMPLOYEE ON EMPLOYEE.CODE=Leave_Ench.EMP_CODE) Left Join SubGroup SG on SG.SubCode=Leave_Ench.AC_Code Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation where (Leave_Ench.LOGSITE_CODE='" & MemVar_1F92078
  loc_1039CBF: var_C0 = CVar(var_B0 & "' or Leave_Ench.LOGSITE_CODE='HO') ORDER BY SR_NO") 'String
  loc_1039CCC: Me.Recordset15.Open var_C0, CVar(MemVar_1F92044), 2
  loc_1039CE3: CVarUnk
  loc_1039CE8: VerifyVarObj
  loc_1039CF4: LateIdStAd
  loc_1039D26: unk_49B6C1.Execute "SELECT SUBCODE as Code,NAME FROM SUBGROUP where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') ORDER BY NAME", var_C0, -1
  loc_1039D55: CVarUnk
  loc_1039D5A: VerifyVarObj
  loc_1039D66: LateIdStAd
  loc_1039D88: var_B0 = "Select Employee.Code,Employee.Name,IsNull(Depart.Name,'') As Department,Desig.Name As Designation From Employee Left Join Depart On Depart.Code=Employee.Department Left Join Desig on Desig.Code=Employee.Designation Where (Employee.LOGSITE_CODE='" & MemVar_1F92078
  loc_1039D98: unk_49B6C1.Execute var_B0 & "' or Employee.LOGSITE_CODE='HO') Order by Employee.Name", var_C0, -1
  loc_1039DC7: CVarUnk
  loc_1039DCC: VerifyVarObj
  loc_1039DD2: Set var_8C = Me.DGEmployee
  loc_1039DD8: LateIdStAd
  loc_1039DE9: var_9C = CVar(CDbl(0)) 'Single
  loc_1039DF8: Me.DBGrid1.Left = var_9C
  loc_1039E27: Call Proc_307_33_E6C8B4(Proc_5_1_100CB50("INI", Me, global_56, Me, Me.DGAcName, Me, Me), Me.DBGrid1, Me, Me)
  loc_1039E32: Call Proc_307_36_F8BD0C(global_56, 3)
  loc_1039E37: Call Proc_307_32_144DF3C(-1)
  loc_1039E3C: Exit Sub
  loc_1039E3D: ' Referenced from: 1039BF0
  loc_1039E3D: Proc_6_60_E62BC4(var_9C)
  loc_1039E42: Exit Sub
End Sub

Private Sub Form_Resize() 'ED37A8
  'Data Table: 49B6B4
  Dim var_8C As Label
  loc_ED3706: Call 0.Method_arg_50 (var_88)
  loc_ED3718: Me.LblFormCaption.Caption = var_88
  loc_ED3731: Me.LblFormCaption.Left = CDbl(0)
  loc_ED373D: Set var_A0 = Me.TopCtrl1
  loc_ED3743: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED3750: Set var_8C = Me.TopCtrl1
  loc_ED3756: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED3770: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED378B: Call 0.Method_arg_100 (var_B8)
  loc_ED379D: Me.LblFormCaption.Width = var_B8
  loc_ED37A5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0C10C
  'Data Table: 49B6B4
  loc_E0C103: Set global_56 = Nothing
  loc_E0C10A: Exit Sub
End Sub

Private Sub Form_Activate() 'E0C0C8
  'Data Table: 49B6B4
  loc_E0C0B9: If (global_54 = &HFF) Then
  loc_E0C0C1:   global_54 = 0
  loc_E0C0C4: End If
  loc_E0C0C4: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E01838
  'Data Table: 49B6B4
  loc_E01834: Exit Sub
  loc_E01835: If &HFF Then Exit Sub
  loc_E01835: End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E293E4
  'Data Table: 49B6B4
  loc_E293BC: On Error Goto loc_E293DC
  loc_E293D3: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E293DB: Exit Sub
  loc_E293DC: ' Referenced from: E293BC
  loc_E293DC: Proc_6_60_E62BC4(Shift)
  loc_E293E1: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E9C110
  'Data Table: 49B6B4
  loc_E9C096: On Error Goto loc_E9C109
  loc_E9C0A2: Me.Recordset15.MoveFirst
  loc_E9C0CF: Me.Recordset15.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E9C0FB: Proc_5_0_110649C(&HFF, Me, global_56)
  loc_E9C103: Call Proc_307_32_144DF3C(0)
  loc_E9C108: Exit Sub
  loc_E9C109: ' Referenced from: E9C096
  loc_E9C109: Proc_6_60_E62BC4(var_A0)
  loc_E9C10E: Exit Sub
End Sub

Public Sub Proc_307_30_E1BF98
  'Data Table: 49B6B4
  loc_E1BF8D: Me.Global.Unload Me
  loc_E1BF95: Exit Sub
End Sub

Public Sub Proc_307_31_FCB5F4
  'Data Table: 49B6B4
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_FCB443: Set var_88 = Me.TExt1
  loc_FCB449: Call 0.Method_Proc_307_31_FCB5F40 (CInt(1), var_8C)
  loc_FCB451: var_8C.Text = CStr(MemVar_1F920EC)
  loc_FCB46E: Set var_88 = Me.TExt1
  loc_FCB474: Call 0.Method_Proc_307_31_FCB5F40 (CInt(0), var_8C)
  loc_FCB47C: var_8C.Text = vbNullString
  loc_FCB496: Set var_88 = Me.TExt1
  loc_FCB49C: Call 0.Method_Proc_307_31_FCB5F40 (CInt(3), var_8C)
  loc_FCB4A4: var_8C.Text = vbNullString
  loc_FCB4BE: Set var_88 = Me.TExt1
  loc_FCB4C4: Call 0.Method_Proc_307_31_FCB5F40 (CInt(6), var_8C)
  loc_FCB4CC: var_8C.Text = vbNullString
  loc_FCB4E6: Set var_88 = Me.TExt1
  loc_FCB4EC: Call 0.Method_Proc_307_31_FCB5F40 (CInt(7), var_8C)
  loc_FCB4F4: var_8C.Text = vbNullString
  loc_FCB50E: Set var_88 = Me.TExt1
  loc_FCB514: Call 0.Method_Proc_307_31_FCB5F40 (CInt(8), var_8C)
  loc_FCB51C: var_8C.Text = vbNullString
  loc_FCB536: Set var_88 = Me.TExt1
  loc_FCB53C: Call 0.Method_Proc_307_31_FCB5F40 (CInt(4), var_8C)
  loc_FCB544: var_8C.Text = vbNullString
  loc_FCB55E: Set var_88 = Me.TExt1
  loc_FCB564: Call 0.Method_Proc_307_31_FCB5F40 (CInt(9), var_8C)
  loc_FCB56C: var_8C.Text = vbNullString
  loc_FCB586: Set var_88 = Me.TExt1
  loc_FCB58C: Call 0.Method_Proc_307_31_FCB5F40 (CInt(2), var_8C)
  loc_FCB594: var_8C.Text = vbNullString
  loc_FCB5AE: Set var_88 = Me.TExt1
  loc_FCB5B4: Call 0.Method_Proc_307_31_FCB5F40 (CInt(&HA), var_8C)
  loc_FCB5BC: var_8C.Text = vbNullString
  loc_FCB5D5: Me.LblVPrefix.Caption = vbNullString
  loc_FCB5EA: Me.LblEmpRef.Caption = vbNullString
  loc_FCB5F2: Exit Sub
End Sub

Public Sub Proc_307_32_144DF3C
  'Data Table: 49B6B4
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_BC As Fields15
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_150 As String
  Dim unk_49B6C1 As Connection15
  Dim var_164 As Variant
  Dim var_168 As Field20
  Dim var_17C As String
  Dim var_180 As Label
  Dim var_184 As TextBox
  Dim var_12C As String
  Dim var_8C As Recordset15
  loc_144D424: On Error Goto loc_144DF33
  loc_144D441: If (Me.Recordset15.RecordCount > 0) Then
  loc_144D450:   Set var_94 = Me.TExt1
  loc_144D456:   Call 0.Method_Proc_307_32_144DF3C0 (1, var_98)
  loc_144D45E:   var_98.Text = vbNullString
  loc_144D476:   Set var_94 = Me.TExt1
  loc_144D47C:   Call 0.Method_Proc_307_32_144DF3C0 (2, var_98)
  loc_144D484:   var_98.Text = vbNullString
  loc_144D49C:   Set var_94 = Me.TExt1
  loc_144D4A2:   Call 0.Method_Proc_307_32_144DF3C0 (5, var_98)
  loc_144D4AA:   var_98.Text = vbNullString
  loc_144D4EB:   If Not(IsNull(CVar(Me.Recordset15.Fields.Item("l_date")))) Then
  loc_144D52D:     Set var_BC = Me.TExt1
  loc_144D533:     Call 0.Method_Proc_307_32_144DF3C0 (CInt(1), var_C0)
  loc_144D53B:     var_C0.Text = CStr(Me.Recordset15.Fields.Item("l_date").Value)
  loc_144D551:   End If
  loc_144D58D:   Set var_BC = Me.TExt1
  loc_144D593:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(9), var_C0)
  loc_144D59B:   var_C0.Text = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("AcName")))
  loc_144D5EB:   Set var_BC = Me.TExt1
  loc_144D5F1:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(9), var_C0)
  loc_144D5F9:   var_C0.Tag = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Ac_Code")))
  loc_144D64C:   Set var_BC = Me.TExt1
  loc_144D652:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(2), var_C0)
  loc_144D65A:   var_C0.Text = CStr(Me.Recordset15.Fields.Item("EmpName").Value)
  loc_144D6AF:   Set var_BC = Me.TExt1
  loc_144D6B5:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(2), var_C0)
  loc_144D6BD:   var_C0.Tag = CStr(Me.Recordset15.Fields.Item("Emp_Code").Value)
  loc_144D703:   var_D4 = " - "
  loc_144D708:   var_E4 = (Me.Recordset15.Fields.Item("Department").Value + var_D4)
  loc_144D72C:   var_C0 = Me.Recordset15.Fields.Item("Designation")
  loc_144D73C:   var_114 = (var_E4 + var_C0.Value)
  loc_144D748:   Set var_118 = Me.LblEmpRef
  loc_144D74E:   var_118.Caption = CStr(var_114)
  loc_144D7AD:   Set var_BC = Me.TExt1
  loc_144D7B3:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(0), var_C0)
  loc_144D7BB:   var_C0.Text = CStr(Me.Recordset15.Fields.Item("SR_no").Value)
  loc_144D7F6:   var_B8 = CVar(Me.Recordset15.Fields.Item("LEAVE_ENCH")) 'Address
  loc_144D7FD:   Proc_6_39_E7C810(var_E4)
  loc_144D814:   Set var_BC = Me.TExt1
  loc_144D81A:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(7), var_C0)
  loc_144D822:   var_C0.Text = CStr(var_E4)
  loc_144D857:   var_98 = Me.Recordset15.Fields.Item("Amt_Ench")
  loc_144D866:   Proc_6_39_E7C810(var_E4, CVar(var_98))
  loc_144D89D:   Set var_BC = Me.TExt1
  loc_144D8A3:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(8), var_C0, CStr(Format(var_E4, "0.00")))
  loc_144D8AB:   var_C0.Text = 1
  loc_144D8FF:   Set var_94 = Me.TExt1
  loc_144D905:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(1), var_98, CVar("SELECT V_PREFIX FROM LEDGER WHERE site_code='" & MemVar_1F92070 & "' and V_DATE="), var_160, -1, var_118)
  loc_144D90D:   var_B8 = CVar(var_98) 'Address
  loc_144D914:   Proc_6_7_F25D88(var_E4, var_B8, var_164, 0)
  loc_144D937:   Set var_BC = Me.TExt1
  loc_144D93D:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(0), var_C0, var_12C, var_168 & var_E4 & " AND V_NO=")
  loc_144D945:   var_178 = var_C0.Text
  loc_144D95E:   unk_49B6C1.Execute CStr(1 & CVar(var_12C)), var_B8, 
  loc_144D966:    = var_118.Fields
  loc_144D96E:    = var_164.Item()
  loc_144D976:    = var_168.Value
  loc_144D98C:   Me.LblVPrefix.Caption = CStr(var_178)
  loc_144D9E3:   var_C4 = "SELECT DOCID FROM LEDGER WHERE site_code='" & MemVar_1F92070
  loc_144D9F8:   Set var_94 = Me.TExt1
  loc_144D9FE:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(1), var_98, CVar(var_C4 & "' and V_DATE="), var_160, -1)
  loc_144DA0D:   Proc_6_7_F25D88(var_E4, CVar(var_98), var_118, var_164)
  loc_144DA15:   var_114 = 0 & var_E4 
  loc_144DA1E:   var_128 = var_114 & " AND V_NO=" 
  loc_144DA30:   Set var_BC = Me.TExt1
  loc_144DA36:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(0), var_C0, var_12C)
  loc_144DA3E:   var_128 = var_C0.Text
  loc_144DA57:   unk_49B6C1.Execute CStr(var_168 & CVar(var_12C)), var_178, 
  loc_144DA5F:    = var_118.Fields
  loc_144DA67:    = var_164.Item()
  loc_144DA6F:    = var_168.Value
  loc_144DA86:   Set var_180 = Me.TExt1
  loc_144DA8C:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(&HA), var_184)
  loc_144DA94:   var_184.Text = CStr(var_178)
  loc_144DAE8:   Set var_94 = Me.TExt1
  loc_144DAEE:   Call 0.Method_Proc_307_32_144DF3C0 (CInt(2), var_98, var_C4, "SELECT * FROM EMPLOYEE WHERE CODE='")
  loc_144DAF6:   var_B8 = var_98.Tag
  loc_144DAFF:   var_12C = -1 & var_C4
  loc_144DB0F:   unk_49B6C1.Execute var_12C & "'", var_BC, 
  loc_144DB1A:   Set var_88 = var_BC
  loc_144DB49:   If (Me.Recordset15.RecordCount > 0) Then
  loc_144DB6E:     var_B8 = CVar(Me.Recordset15.Fields.Item("Tot_EL_Allow")) 'Address
  loc_144DB75:     Proc_6_39_E7C810(var_E4)
  loc_144DB97:     var_C0 = Me.Recordset15.Fields.Item("OP_Earned")
  loc_144DBA6:     Proc_6_39_E7C810(var_114, CVar(var_C0))
  loc_144DBAE:     var_128 = (var_E4 + var_114)
  loc_144DBC1:     Set var_118 = Me.TExt1
  loc_144DBC7:     Call 0.Method_Proc_307_32_144DF3C0 (CInt(3), var_164)
  loc_144DBCF:     var_164.Text = CStr(var_128)
  loc_144DC09:     var_98 = Me.Recordset15.Fields.Item("Curr_Earned")
  loc_144DC18:     Proc_6_39_E7C810(var_E4, CVar(var_98))
  loc_144DC2F:     Set var_BC = Me.TExt1
  loc_144DC35:     Call 0.Method_Proc_307_32_144DF3C0 (CInt(4), var_C0)
  loc_144DC3D:     var_C0.Text = CStr(var_E4)
  loc_144DC63:     Set var_94 = Me.TExt1
  loc_144DC69:     Call 0.Method_Proc_307_32_144DF3C0 (CInt(3), var_98)
  loc_144DC94:     var_BC = Me.Recordset15.Fields
  loc_144DC9C:     var_C0 = var_BC.Item("Curr_Earned")
  loc_144DCAB:     Proc_6_39_E7C810(var_E4, CVar(var_C0))
  loc_144DCB3:     var_104 = (CVar(Val(var_98.Text)) - var_E4)
  loc_144DCB7:     var_12C = CStr(CVar(var_C0))
  loc_144DCC6:     Set var_118 = Me.TExt1
  loc_144DCCC:     Call 0.Method_Proc_307_32_144DF3C0 (CInt(5), var_164)
  loc_144DCD4:     var_164.Text = var_12C
  loc_144DCFC:     If (MemVar_1F923AC = "A") Then
  loc_144DD1A:       var_150 = "SELECT IIF(ISNULL(sum(Leave_Ench)),0,sum(Leave_Ench)) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F92070 & "' and EMP_CODE='"
  loc_144DD2B:       Set var_94 = Me.TExt1
  loc_144DD31:       Call 0.Method_Proc_307_32_144DF3C0 (CInt(2), var_98, var_12C, var_150)
  loc_144DD42:       var_17C = -1 & var_12C
  loc_144DD52:       unk_49B6C1.Execute CStr(var_178) & "'", var_BC, var_98.Tag
  loc_144DD5D:       Set var_8C = var_BC
  loc_144DD7C:     Else
  loc_144DD84:       If (MemVar_1F923AC = "S") Then
  loc_144DDB3:         Set var_94 = Me.TExt1
  loc_144DDB9:         Call 0.Method_Proc_307_32_144DF3C0 (CInt(2), var_98, var_12C, "SELECT ISNULL(sum(Leave_Ench),0) as el FROM Leave_Ench WHERE site_code='" & MemVar_1F92070 & "' and EMP_CODE='")
  loc_144DDC1:         var_B8 = var_98.Tag
  loc_144DDCA:         var_17C = -1 & var_12C
  loc_144DDDA:         unk_49B6C1.Execute CStr(var_178) & "'", var_BC, 
  loc_144DDE5:         Set var_8C = var_BC
  loc_144DE01:       End If
  loc_144DE01:     End If
  loc_144DE18:     If (var_8C.RecordCount > 0) Then
  loc_144DE5A:       If (Me.Recordset15.Fields.Item("el").Value > 0) Then
  loc_144DE7A:         var_98 = Me.Recordset15.Fields.Item("el")
  loc_144DE99:         Set var_BC = Me.TExt1
  loc_144DE9F:         Call 0.Method_Proc_307_32_144DF3C0 (CInt(6), var_C0)
  loc_144DEA7:         var_C0.Text = CStr(var_98.Value)
  loc_144DEC0:       Else
  loc_144DEF4:         Set var_94 = Me.TExt1
  loc_144DEFA:         Call 0.Method_Proc_307_32_144DF3C0 (CInt(6), var_98, CStr(Format(0, "0")))
  loc_144DF02:         var_98.Text = 1
  loc_144DF1A:       End If
  loc_144DF1A:     End If
  loc_144DF1A:   End If
  loc_144DF1D: Else
  loc_144DF1D:   Call Proc_307_31_FCB5F4(1)
  loc_144DF22: End If
  loc_144DF27: Set var_88 = Nothing
  loc_144DF2F: Set var_8C = Nothing
  loc_144DF32: Exit Sub
  loc_144DF33: ' Referenced from: 144D424
  loc_144DF33: Proc_6_60_E62BC4()
  loc_144DF38: Exit Sub
End Sub

Public Sub Proc_307_33_E6C8B4(arg_C) 'E6C8B4
  'Data Table: 49B6B4
  Dim var_98 As TextBox
  loc_E6C868: Set var_8C = Me.TExt1
  loc_E6C86E: Call 0.Method_Proc_307_33_E6C8B4C (var_8E, var_86)
  loc_E6C87C: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_E6C88F:   Set var_8C = Me.TExt1
  loc_E6C895:   Call 0.Method_Proc_307_33_E6C8B40 (var_86, var_98)
  loc_E6C89D:   var_98.Enabled = arg_C
  loc_E6C8AC: Next var_92 'Integer
  loc_E6C8B1: Exit Sub
End Sub

Public Sub Proc_307_34_E7FE74
  'Data Table: 49B6B4
  loc_E7FE4F: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7FE52:   Call TopCtrl1_UnknownEvent_16()
  loc_E7FE5A: Else
  loc_E7FE60:   Call 0.Method_arg_1E8 (var_108)
  loc_E7FE68:   Call var_108.SetFocus
  loc_E7FE71: End If
  loc_E7FE71: Exit Sub
End Sub

Public Sub Proc_307_35_EBCA34
  'Data Table: 49B6B4
  loc_EBC9AC: If (CBool(Me.DGEmployee.Visible) = &HFF) Then
  loc_EBC9BE:   Me.DGEmployee.Visible = False
  loc_EBC9C6: End If
  loc_EBC9E2: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EBC9F4:   Me.DGAcName.Visible = False
  loc_EBC9FC: End If
  loc_EBCA18: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBCA2A:   Me.FGPoint.Visible = False
  loc_EBCA32: End If
  loc_EBCA32: Exit Sub
End Sub

Public Sub Proc_307_36_F8BD0C
  'Data Table: 49B6B4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_F8BBBA: Set var_88 = Me.TExt1
  loc_F8BBC0: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(2), var_8C)
  loc_F8BBDF: Me.DGEmployee.Left = CVar(var_8C.Left)
  loc_F8BBFB: Set var_B4 = Me.TExt1
  loc_F8BC01: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(2), var_B8)
  loc_F8BC1C: Set var_88 = Me.TExt1
  loc_F8BC22: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(2), var_8C)
  loc_F8BC3A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8BC49: Me.DGEmployee.Top = CVar(var_8C.Left)
  loc_F8BC69: Set var_88 = Me.TExt1
  loc_F8BC6F: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(9), var_8C)
  loc_F8BC8E: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_F8BCAA: Set var_B4 = Me.TExt1
  loc_F8BCB0: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(9), var_B8)
  loc_F8BCCB: Set var_88 = Me.TExt1
  loc_F8BCD1: Call 0.Method_Proc_307_36_F8BD0C0 (CInt(9), var_8C)
  loc_F8BCE9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_F8BCF8: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_F8BD0A: Exit Sub
End Sub

Public Sub Proc_307_37_10F0E0C
  'Data Table: 49B6B4
  Dim var_94 As String
  Dim var_A4 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_134 As Label
  Dim var_CC As Variant
  Dim var_13C As TextBox
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_178 As TextBox
  Dim var_198 As Variant
  Dim var_1A0 As TextBox
  loc_10F0B45: var_90 = "LV"
  loc_10F0B5C: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F92070
  loc_10F0B78: var_A4 = var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F92078 & "') and  VP.V_Type='" & var_90
  loc_10F0B8D: Set var_A8 = Me.TExt1
  loc_10F0B93: Call 0.Method_Proc_307_37_10F0E0C0 (CInt(1), var_AC, CVar(var_A4 & "' And VP.Date_From<="))
  loc_10F0BA2: Proc_6_7_F25D88(var_CC, CVar(var_AC), var_130)
  loc_10F0BAA: var_EC = -1 & var_CC 
  loc_10F0BBE: Me.TExt1.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10F0BC9: Set var_8C = var_134
  loc_10F0C05: If (var_8C.RecordCount > 0) Then
  loc_10F0C40:   Me.LblVPrefix.Caption = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10F0C83:   var_CC = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10F0C96:   Set var_134 = Me.TExt1
  loc_10F0C9C:   Call 0.Method_Proc_307_37_10F0E0C0 (CInt(0), var_13C)
  loc_10F0CA4:   var_13C.Text = CStr(var_CC)
  loc_10F0CBE: End If
  loc_10F0CE9: var_BC = Space((5 - Len(var_90)))
  loc_10F0CF1: var_DC = (CVar(MemVar_1F9206C & Proc_6_45_EAD428(MemVar_1F92070, 2) & var_90) + var_8C.Fields.Item("start_srl_no").Value)
  loc_10F0D14: var_EC = Space((5 - Len(Me.LblVPrefix.Caption)))
  loc_10F0D1C: var_10C = (CVar(var_A4 & "' And VP.Date_From<=") + var_EC)
  loc_10F0D38: var_150 = (var_EC & " Order By VP.Date_From DESC" + CVar(Me.LblVPrefix.Caption))
  loc_10F0D4F: Set var_134 = Me.TExt1
  loc_10F0D55: Call 0.Method_Proc_307_37_10F0E0C0 (CInt(0), var_13C, var_A4)
  loc_10F0D5D: 8 = var_13C.Text
  loc_10F0D6A: var_160 = Space((var_150 - Len(var_A4)))
  loc_10F0D72: var_170 = ( + var_160)
  loc_10F0D84: Set var_174 = Me.TExt1
  loc_10F0D8A: Call 0.Method_Proc_307_37_10F0E0C0 (CInt(0), var_178)
  loc_10F0D9D: var_198 = (var_170 + CVar(var_178.Text))
  loc_10F0DB0: Set var_19C = Me.TExt1
  loc_10F0DB6: Call 0.Method_Proc_307_37_10F0E0C0 (CInt(&HA), var_1A0)
  loc_10F0DBE: var_1A0.Text = CStr(var_198)
  loc_10F0E01: Set var_8C = Nothing
  loc_10F0E04: Proc_307_37_10F0E0C = 
End Sub
