VERSION 5.00
Begin VB.Form PrAttend1
  Caption = "Attendence"
  BackColor = &HD0C7BB&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "PrAttend1.frx":0
  LinkTopic = "Form1"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10860
  ClientHeight = 5985
  BeginProperty Font
    Name = "Times New Roman"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text3
    Left = 1065
    Top = 1605
    Width = 975
    Height = 285
    Visible = 0   'False
    TabIndex = 2
    Alignment = 2 'Center
    MaxLength = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid FGrid1
    Left = 60
    Top = 1365
    Width = 11730
    Height = 5070
    TabIndex = 3
  End
  Begin TextBox Txt
    Index = 0
    Left = 4620
    Top = 300
    Width = 1230
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton Command1
    Caption = "&Refresh"
    Index = 0
    BackColor = &HC0C0C0&
    Left = 8775
    Top = 240
    Width = 1080
    Height = 435
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "Shows the List of current Attendence Status"
    Style = 1
  End
  Begin CommandButton Command1
    Caption = "&Exit"
    Index = 1
    BackColor = &HC0C0C0&
    Left = 8760
    Top = 675
    Width = 1080
    Height = 435
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Text1
    Left = 4605
    Top = 5670
    Width = 1935
    Height = 315
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text2
    Left = 7440
    Top = 5490
    Width = 3150
    Height = 645
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin SSPanel SSPanel4
    Left = 0
    Top = 5445
    Width = 10860
    Height = 540
    TabIndex = 13
    Begin CommandButton btncancel
      Caption = "&Cancel"
      Left = 4245
      Top = 45
      Width = 1035
      Height = 465
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "PrAttend1.frx":30A
      DisabledPicture = "PrAttend1.frx":44C
      ToolTipText = "Cancel Changes"
      Style = 1
    End
    Begin CommandButton btnsave
      Caption = "Save"
      Left = 3210
      Top = 45
      Width = 1035
      Height = 465
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "PrAttend1.frx":58E
      DisabledPicture = "PrAttend1.frx":690
      ToolTipText = "Save Records"
      Style = 1
    End
    Begin CommandButton btnexit
      Caption = "Exit"
      Left = 5280
      Top = 45
      Width = 1035
      Height = 465
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "PrAttend1.frx":7D2
      DisabledPicture = "PrAttend1.frx":914
      ToolTipText = "Exit"
      Style = 1
    End
  End
  Begin Label LblVPrefix
    BackColor = &HD0C7BB&
    Left = 5940
    Top = 300
    Width = 1080
    Height = 255
    TabIndex = 15
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
  Begin Label Label1
    Caption = "P -> Present , A -> Absent , E->Earn Leave, C->Causal Leave,S->Sunday"
    Index = 1
    ForeColor = &H0&
    Left = 1695
    Top = 6510
    Width = 6825
    Height = 240
    TabIndex = 14
    Alignment = 2 'Center
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
  Begin Label Label1
    Caption = "Month/Year"
    Index = 0
    Left = 3315
    Top = 285
    Width = 1200
    Height = 240
    TabIndex = 12
    Alignment = 1 'Right Justify
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    Left = 1485
    Top = 135
    Width = 9285
    Height = 1110
    Shape = 4
  End
  Begin Label Label1
    Caption = "Absent(B)"
    Index = 4
    Left = 3555
    Top = 5715
    Width = 885
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Remark"
    Index = 5
    Left = 6660
    Top = 5370
    Width = 720
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "PrAttend1"

Private global_56 As Integer
Private global_60 As Long
Private global_64 As Integer
Private global_72 As Integer
Private global_74 As Integer

Private Sub Command1_Click(Index As Integer) '16190DC
  'Data Table: 44F1D4
  Dim var_B4 As Variant
  Dim var_126 As Integer
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim Command1_Click4 As Variant
  Dim var_F4 As Variant
  Dim var_140 As Variant
  Dim var_94 As Long
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_158 As String
  Dim unk_44F1DD As Connection15
  Dim var_88 As Recordset15
  Dim var_130 As Field20
  Dim var_114 As Variant
  Dim var_E4 As Variant
  Dim var_198 As Variant
  Dim var_1A8 As Variant
  Dim var_8C As Recordset15
  Dim var_1BC As Variant
  Dim var_168 As Variant
  Dim var_188 As Variant
  Dim var_1D4 As Variant
  Dim var_174 As Variant
  Dim var_178 As Variant
  Dim var_1DC As String
  Dim var_230 As Variant
  Dim var_2D8 As Variant
  Dim var_2DC As String
  Dim var_38C As Date
  Dim var_1C4 As Field20
  Dim var_200 As Variant
  Dim var_260 As Variant
  Dim var_1B8 As Variant
  Dim var_1E0 As Fields15
  Dim var_2A8 As Variant
  loc_1617C9C: On Error Goto loc_161909D
  loc_1617CAD: var_B4 = "Entry Blocked by Sanjeev 23-04-2006"
  loc_1617CB8: MsgBox(var_B4, 0, var_E4, var_104, var_124)
  loc_1617CC8: Exit Sub
  loc_1617CCC: var_126 = Index
  loc_1617CD5: If (var_126 = 0) Then
  loc_1617CE3:   Set var_12C = Me.Txt
  loc_1617CE9:   Call 0.Method_Command1_Click0 (CInt(0), var_130)
  loc_1617D28:   global_56 = CInt(Day(DateAdd("d", CDbl(&HFF), DateAdd("m", CDbl(1), CVar(var_130)))))
  loc_1617D43:   Command1_Click4 = Me.FGrid1.Text
  loc_1617D61:   Me.FGrid1.Rows = 1
  loc_1617D7C:   Me.FGrid1.FixedCols = 3
  loc_1617D8E:   var_B4 = CVar(CLng((global_56 + 7))) 'Long
  loc_1617D9D:   Me.FGrid1.Cols = 3
  loc_1617DA5:   var_B4 = 0
  loc_1617DAE:   var_F4 = &H12C
  loc_1617DBB:   Set var_12C = Me.FGrid1
  loc_1617DC1:   LateIdCallSt
  loc_1617DCC:   var_B4 = 1
  loc_1617DD5:   var_F4 = &H2BC
  loc_1617DE2:   Set var_12C = Me.FGrid1
  loc_1617DE8:   LateIdCallSt
  loc_1617DF3:   var_B4 = 2
  loc_1617DFC:   var_F4 = &H7D0
  loc_1617E09:   Set var_12C = Me.FGrid1
  loc_1617E0F:   LateIdCallSt
  loc_1617E1A:   var_B4 = 0
  loc_1617E29:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1617E31:   Set var_12C = Me.FGrid1
  loc_1617E37:   LateIdCallSt
  loc_1617E42:   var_B4 = 1
  loc_1617E51:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1617E59:   Set var_12C = Me.FGrid1
  loc_1617E5F:   LateIdCallSt
  loc_1617E6A:   var_B4 = 0
  loc_1617E73:   var_F4 = 0
  loc_1617E7C:   var_140 = "Sr."
  loc_1617E86:   Set var_12C = Me.FGrid1
  loc_1617E8C:   LateIdCallSt
  loc_1617E97:   var_B4 = 0
  loc_1617EA0:   var_F4 = 1
  loc_1617EA9:   var_140 = "Emp.Code"
  loc_1617EB3:   Set var_12C = Me.FGrid1
  loc_1617EB9:   LateIdCallSt
  loc_1617EC4:   var_B4 = 1
  loc_1617ECD:   var_F4 = 0
  loc_1617EDA:   Set var_12C = Me.FGrid1
  loc_1617EE0:   LateIdCallSt
  loc_1617EEB:   var_B4 = 2
  loc_1617EFA:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1617F02:   Set var_12C = Me.FGrid1
  loc_1617F08:   LateIdCallSt
  loc_1617F13:   var_B4 = 0
  loc_1617F1C:   var_F4 = 2
  loc_1617F25:   var_140 = "Employee Name"
  loc_1617F2F:   Set var_12C = Me.FGrid1
  loc_1617F35:   LateIdCallSt
  loc_1617F40:   var_B4 = 3
  loc_1617F49:   var_F4 = 0
  loc_1617F56:   Set var_12C = Me.FGrid1
  loc_1617F5C:   LateIdCallSt
  loc_1617F67:   var_B4 = 3
  loc_1617F76:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1617F7E:   Set var_12C = Me.FGrid1
  loc_1617F84:   LateIdCallSt
  loc_1617F8F:   var_B4 = 0
  loc_1617F98:   var_F4 = 3
  loc_1617FA1:   var_140 = "Father Name"
  loc_1617FAB:   Set var_12C = Me.FGrid1
  loc_1617FB1:   LateIdCallSt
  loc_1617FBC:   var_B4 = 4
  loc_1617FC5:   var_F4 = 0
  loc_1617FD2:   Set var_12C = Me.FGrid1
  loc_1617FD8:   LateIdCallSt
  loc_1617FE3:   var_B4 = 4
  loc_1617FF2:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1617FFA:   Set var_12C = Me.FGrid1
  loc_1618000:   LateIdCallSt
  loc_161800B:   var_B4 = 0
  loc_1618014:   var_F4 = 4
  loc_161801D:   var_140 = "Post"
  loc_1618027:   Set var_12C = Me.FGrid1
  loc_161802D:   LateIdCallSt
  loc_1618043:   For var_154 = 1 To global_56: var_128 = var_154 'Integer
  loc_1618050:     var_B4 = CVar(CLng((var_128 + 4))) 'Long
  loc_1618055:     var_F4 = &H12C
  loc_1618062:     Set var_12C = Me.FGrid1
  loc_1618068:     LateIdCallSt
  loc_161807A:     var_B4 = CVar(CLng((var_128 + 4))) 'Long
  loc_1618085:     var_F4 = CVar(CInt(4)) 'Integer
  loc_161808D:     Set var_12C = Me.FGrid1
  loc_1618093:     LateIdCallSt
  loc_161809E:     var_B4 = 0
  loc_16180AE:     var_F4 = CVar(CLng((var_128 + 4))) 'Long
  loc_16180B8:     var_C4 = CVar(CStr(var_128)) 'String
  loc_16180C0:     Set var_12C = Me.FGrid1
  loc_16180C6:     LateIdCallSt
  loc_16180D7:   Next var_154 'Integer
  loc_16180E6:   var_B4 = CVar(CLng((global_56 + 5))) 'Long
  loc_16180EB:   var_F4 = 0
  loc_16180F8:   Set var_12C = Me.FGrid1
  loc_16180FE:   LateIdCallSt
  loc_1618113:   var_B4 = CVar(CLng((global_56 + 5))) 'Long
  loc_161811E:   var_F4 = CVar(CInt(1)) 'Integer
  loc_1618126:   Set var_12C = Me.FGrid1
  loc_161812C:   LateIdCallSt
  loc_1618137:   var_B4 = 0
  loc_161814A:   var_F4 = CVar(CLng((global_56 + 5))) 'Long
  loc_161814F:   var_140 = "Absent(B)"
  loc_1618159:   Set var_12C = Me.FGrid1
  loc_161815F:   LateIdCallSt
  loc_1618174:   var_B4 = CVar(CLng((global_56 + 6))) 'Long
  loc_1618179:   var_F4 = 0
  loc_1618186:   Set var_12C = Me.FGrid1
  loc_161818C:   LateIdCallSt
  loc_16181A1:   var_B4 = CVar(CLng((global_56 + 6))) 'Long
  loc_16181AC:   var_F4 = CVar(CInt(1)) 'Integer
  loc_16181B4:   Set var_12C = Me.FGrid1
  loc_16181BA:   LateIdCallSt
  loc_16181D8:   var_F4 = CVar(CLng((global_56 + 6))) 'Long
  loc_16181ED:   LateIdCallSt
  loc_16181F8:   Call Proc_312_24_EC347C(Me.FGrid1, "Remarks", var_F4, 0, Me.FGrid1, var_F4, 0, Me.FGrid1)
  loc_1618202:   var_94 = 0
  loc_161820E:   Set var_12C = Me.FGrid1
  loc_1618214:   var_12C.Redraw = False
  loc_161821F:   var_A4 = vbNullString
  loc_161824F:   var_D4 = "SELECT EMPLOYEE.*,DESIG.Name as Desg_Desc FROM EMPLOYEE LEFT JOIN DESIG ON DESIG.Code=EMPLOYEE.Designation where EMployee.site_code='"
  loc_161825B:   var_F4 = "' ORDER BY DESIG.Name,Employee.NAME"
  loc_161826E:   unk_44F1DD.Execute CStr(var_D4 & Left(Trim(MemVar_1F92078), 1) & var_F4), var_168, -1
  loc_1618279:   Set var_88 = var_12C
  loc_16182A3:   If (var_88.RecordCount > 0) Then
  loc_16182A6:     ' Referenced from: 161905A
  loc_16182B5:     If Not(var_88.EOF) Then
  loc_16182BE:       var_B4 = "Code"
  loc_16182CA:       var_12C = var_88.Fields
  loc_16182EA:       Set var_174 = Me.Txt
  loc_16182F0:       Call 0.Method_Command1_Click0 (CInt(0), var_178, var_12C, var_94, var_F4, var_B4)
  loc_161833E:       var_198 = "SELECT * FROM ATTENDENCE WHERE EMP_CODE='" & var_12C.Item(var_B4).Value & "' AND MTH_YEAR='" & Format(CVar(var_178), "MMMyyyy") 
  loc_1618355:       unk_44F1DD.Execute CStr(var_198 & "'"), var_1B8, -1
  loc_1618360:       Set var_8C = var_1BC
  loc_16183DB:       If (var_8C.RecordCount > 0) Then
  loc_16183EE:         For var_1C0 = 1 To (global_56 * 2) Step 2: var_128 = var_1C0 'Integer
  loc_16183FF:           Set var_174 = Me.Txt
  loc_1618405:           Call 0.Method_Command1_Click0 (CInt(0), var_178, 1, CInt(Val(Format$(Date, "d"))), 1, 1, var_1BC)
  loc_161843D:           var_130 = var_88.Fields.Item("Resign_Date")
  loc_161844F:           var_140 = Not(IsNull(CVar(var_130)))
  loc_1618463:           var_158 = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_161848A:           var_114 = CDate(CDate(CVar(Format$(Date, "d") & "/") & Right(CVar(var_178), 8)))
  loc_1618499:           var_F4 = "Short Date"
  loc_16184A7:           var_188 = CVar(var_88.Fields.Item("Resign_Date")) 'Address
  loc_16184AE:           var_1A8 = Format(var_188, var_F4)
  loc_16184E3:           If CBool(1 And (1 >= var_1A8)) Then
  loc_161850A:             var_A0 = CStr(CVar(vbNullString) & Chr(9) & "  ")
  loc_1618519:           Else
  loc_161852A:             Call 0.Method_Command1_Click0 (CInt(0), var_130, var_114, var_140, 1, 1)
  loc_161853F:             var_158 = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_161856D:             Proc_6_7_F25D88(var_188, CDate(CDate(CVar(Format$(Date, "d") & "/") & Right(CVar(var_130), 8))), Me.Txt, var_140)
  loc_161857D:             Set var_1C4 = Me.Txt
  loc_1618583:             Call 0.Method_Command1_Click0 (CInt(0), var_1E0, var_F4)
  loc_16185D3:             Set var_2E0 = Me.Txt
  loc_16185D9:             Call 0.Method_Command1_Click0 (CInt(0), var_2E4, 1)
  loc_1618600:             var_114 = 0
  loc_161862C:             unk_44F1DD.Execute CStr("select count(*) from holiday where VDate=" & var_188), var_1A8, -1
  loc_1618634:             var_174 = var_174.Fields
  loc_161863C:             var_114 = var_178.Item(var_178)
  loc_1618644:             var_1BC = var_1BC.Value
  loc_1618652:             var_1D4 = (var_1B8 > 0)
  loc_161867B:             var_1DC = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_16186C8:             var_2D8 = 1 And (Ucase(Format(CVar(var_1DC & "/") & Format(CVar(var_1E0), "MMM/yyyy"), "DDD")) <> Ucase(Left(CVar(var_88.Fields.Item("OffDay")), 3)))
  loc_16186DC:             var_2DC = CStr((Int((CDbl(var_128) / CDbl(2))) + CDbl(1)))
  loc_1618703:             var_38C = CDate(CDate(CVar(var_2DC & "/") & Right(CVar(var_2E4), 8)))
  loc_1618794:             If CBool(1 And (1 >= Format(CVar(var_88.Fields.Item("Joining_Date")), "Short Date"))) Then
  loc_16187BB:               var_A0 = CStr(CVar(var_A0) & Chr(9) & "HH")
  loc_16187CA:             Else
  loc_1618820:               var_A0 = CStr(CVar(var_A0) & Chr(9) & Mid(CVar(var_8C.Fields.Item("ATTN_STR")), CLng(var_128), 2))
  loc_1618835:             End If
  loc_1618835:           End If
  loc_1618838:         Next var_1C0 'Integer
  loc_1618846:         var_94 = (var_94 + 1)
  loc_16188C0:         var_178 = var_88.Fields.Item("Name")
  loc_1618912:         var_200 = CVar(var_94) & Chr(9) & var_88.Fields.Item("Code").Value & Chr(9) & var_178.Value & Chr(9) & var_88.Fields.Item("F_Name").Value 
  loc_161893F:         var_260 = CVar(CStr(var_200 & Chr(9) & CVar(var_90) & CVar(var_A0))) 'String
  loc_1618947:         Set var_1E0 = Me.FGrid1
  loc_161899E:         Me.FGrid1.FixedRows = 1
  loc_16189A9:       Else
  loc_16189B4:         For var_3B0 = 1 To global_56:   var_128 = var_3B0 'Integer
  loc_16189C5:           Set var_174 = Me.Txt
  loc_16189CB:           Call 0.Method_Command1_Click0 (CInt(0), var_178, 1)
  loc_1618A15:           var_140 = Not(IsNull(CVar(var_88.Fields.Item("Resign_Date"))))
  loc_1618A45:           var_114 = CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_178), 8)))
  loc_1618A9E:           If CBool(1 And (1 >= Format(CVar(var_88.Fields.Item("Resign_Date")), "Short Date"))) Then
  loc_1618AC5:             var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_1618AD4:           Else
  loc_1618ADF:             Set var_174 = Me.Txt
  loc_1618AE5:             Call 0.Method_Command1_Click0 (CInt(0), var_178, var_114, var_140)
  loc_1618B04:             var_130 = var_88.Fields.Item("Joining_Date")
  loc_1618B62:             If (var_130.Value > CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_178), 8)))) Then
  loc_1618B89:               var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_1618B98:             Else
  loc_1618BA3:               Set var_12C = Me.Txt
  loc_1618BA9:               Call 0.Method_Command1_Click0 (CInt(0), var_130, FGrid1.DispID_10000)
  loc_1618BD9:               var_178 = var_88.Fields.Item("OffDay")
  loc_1618C1D:               var_1A8 = Ucase(Format(CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))), "DDD"))
  loc_1618C2D:               var_1B8 = CVar(var_178) 'Address
  loc_1618C6E:               If (var_1A8 = Ucase(Left(var_1B8, 3))) Then
  loc_1618C95:                 var_A0 = CStr(CVar(var_A0) & Chr(9) & "SS")
  loc_1618CA4:               Else
  loc_1618CAF:                 Set var_12C = Me.Txt
  loc_1618CB5:                 Call 0.Method_Command1_Click0 (CInt(0), var_130, 1)
  loc_1618D02:                 var_188 = "Short Date"
  loc_1618D31:                 If (1 <= Format(Date, var_188)) Then
  loc_1618D3F:                   Set var_12C = Me.Txt
  loc_1618D45:                   Call 0.Method_Command1_Click0 (CInt(0), var_130, 1, CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))))
  loc_1618D7D:                   Proc_6_7_F25D88(var_188, CDate(CDate(CVar(CStr(var_128) & "/") & Right(CVar(var_130), 8))), 1)
  loc_1618D88:                   var_114 = 0
  loc_1618DB4:                   unk_44F1DD.Execute CStr("select count(*) from holiday where VDate=" & var_188), var_1A8, -1
  loc_1618DBC:                   var_174 = var_174.Fields
  loc_1618DC4:                   var_114 = var_178.Item(var_178)
  loc_1618DCC:                   var_1BC = var_1BC.Value
  loc_1618E05:                   If (var_1B8 > 0) Then
  loc_1618E2C:                     var_A0 = CStr(CVar(var_A0) & Chr(9) & "HH")
  loc_1618E3B:                   Else
  loc_1618E5F:                     var_A0 = CStr(CVar(var_A0) & Chr(9) & "PP")
  loc_1618E6B:                   End If
  loc_1618E6E:                 Else
  loc_1618E92:                   var_A0 = CStr(CVar(var_A0) & Chr(9) & "  ")
  loc_1618E9E:                 End If
  loc_1618E9E:               End If
  loc_1618E9E:             End If
  loc_1618E9E:           End If
  loc_1618EA1:         Next var_3B0 'Integer
  loc_1618EAF:         var_94 = (var_94 + 1)
  loc_1618EB7:         var_158 = CStr(var_94)
  loc_1618EBE:         var_E4 = CVar(var_158 & ".  ") 'String
  loc_1618EEB:         var_104 = var_E4 & var_88.Fields.Item("Desg_Desc").Value 
  loc_1618EF7:         var_124 = Chr(9)
  loc_1618FB1:         var_230 = var_104 & var_124 & var_88.Fields.Item("Code").Value & Chr(9) & var_88.Fields.Item("Name").Value & Chr(9) & var_88.Fields.Item("F_Name").Value 
  loc_1618FDE:         var_2A8 = CVar(CStr(var_230 & Chr(9) & CVar(var_90) & CVar(var_A0))) 'String
  loc_1618FE6:         Set var_288 = Me.FGrid1
  loc_161904A:         Me.FGrid1.FixedRows = 1
  loc_1619052:       End If
  loc_1619055:       var_88.MoveNext
  loc_161905A:       GoTo loc_16182A6
  loc_161905D:     End If
  loc_161905D:   End If
  loc_161906B:   Me.FGrid1.Redraw = True
  loc_1619078:   Set var_88 = Nothing
  loc_161907E: Else
  loc_1619084:   If (var_126 = 1) Then
  loc_1619094:     Me.Global.Unload Me
  loc_161909C:   End If
  loc_161909C: End If
  loc_161909C: Exit Sub
  loc_161909D: ' Referenced from: 1617C9C
  loc_16190A5: Set var_12C = Err()
  loc_16190AB: Call 0.Method_arg_2C (var_158, FGrid1.DispID_10000)
  loc_16190C4: MsgBox(CVar(var_158), &H10, var_E4, var_104, var_124)
  loc_16190D7: Exit Sub
  loc_16190D8: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '13327A4
  'Data Table: 44F1D4
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As String
  Dim var_174 As Variant
  Dim var_210 As Variant
  Dim var_254 As Variant
  Dim var_340 As Variant
  Dim var_384 As Variant
  Dim var_110 As TextBox
  Dim var_134 As String
  Dim var_140 As TextBox
  Dim var_1B8 As Integer
  Dim unk_44F1DD As Connection15
  Dim var_1A4 As Recordset15
  Dim var_1A8 As Fields15
  Dim var_1BC As Field20
  Dim var_298 As Integer
  Dim var_284 As Recordset15
  Dim var_288 As Fields15
  Dim var_2EC As Variant
  Dim var_304 As String
  Dim var_310 As TextBox
  Dim var_3C8 As Integer
  Dim var_3B4 As Recordset15
  Dim var_3B8 As Fields15
  Dim var_3CC As Field20
  Dim var_10C As TextBox
  loc_133210B: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_133210E:   Exit Sub
  loc_133210F: End If
  loc_1332119: var_98 = Me.FGrid1.Rows
  loc_1332128: var_A8 = 1
  loc_1332169: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_133216C:   Exit Sub
  loc_133216D: End If
  loc_133218C: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_13321A2:   var_A8 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_13321A7:   var_C8 = 1
  loc_13321BA:   var_174 = Me.FGrid1.TextMatrix)
  loc_13321D9:   var_210 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13321F1:   var_254 = Me.FGrid1.TextMatrix)
  loc_1332210:   var_340 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1332228:   var_384 = Me.FGrid1.TextMatrix)
  loc_1332287:   var_F0 = CStr((CLng(Me.FGrid1.ColSel) - 4))
  loc_13322A9:   Set var_10C = Me.Txt
  loc_13322AF:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_110, var_114, CStr(Val(CStr(Me.FGrid1.TextMatrix)))) & "/", ((CLng(Me.FGrid1.ColSel) > 4) And (CLng(Me.FGrid1.ColSel) < CLng((global_56 + 5)))), var_384, 1)
  loc_13322B7:   var_340 = var_110.Text
  loc_13322E9:   var_134 = CStr((CLng(Me.FGrid1.ColSel) - 4))
  loc_133230B:   Set var_13C = Me.Txt
  loc_1332311:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_140, var_144, CStr(Val(var_134)) & "/", (1 And (CDate(var_254 & var_114) <= MemVar_1F920EC)))
  loc_1332319:   var_210 = var_140.Text
  loc_1332332:   var_1B8 = 0
  loc_1332363:   unk_44F1DD.Execute "SELECT Resign_Date from employee where Code='" & CStr(var_174) & "'", var_1A0, -1
  loc_133236B:   var_1A4 = var_1A4.Fields
  loc_1332373:   var_1B8 = var_1A8.Item(var_1A8)
  loc_133237B:   var_1BC = var_1BC.Value
  loc_133238A:   var_298 = 0
  loc_13323BB:   unk_44F1DD.Execute "SELECT Resign_Date from employee where Code='" & CStr(var_254) & "'", var_280, -1
  loc_13323C3:   var_284 = var_284.Fields
  loc_13323CB:   var_298 = var_288.Item(var_288)
  loc_13323E4:   var_2EC = (var_1CC <= var_1CC) And var_29C Or IsNull(CVar(var_29C))
  loc_1332403:   var_304 = CStr((CLng(Me.FGrid1.Col) - 4))
  loc_1332425:   Set var_30C = Me.Txt
  loc_133242B:   Call 0.Method_Fgrid1_UnknownEvent_90 (CInt(0), var_310, var_314, CStr(Val(var_304)) & "/")
  loc_1332433:   var_2EC = var_310.Text
  loc_133244C:   var_3C8 = 0
  loc_133247D:   unk_44F1DD.Execute "SELECT Joining_Date from employee where Code='" & CStr(var_384) & "'", var_3B0, -1
  loc_1332485:   var_3B4 = var_3B4.Fields
  loc_133248D:   var_3C8 = var_3B8.Item(var_3B8)
  loc_1332495:   var_3CC = var_3CC.Value
  loc_1332538:   If CBool(CDate(CDate(CDate(CDate(var_174 & var_144)) & var_314)) And (var_3DC >= var_3DC)) Then
  loc_1332551:     global_60 = CLng(Me.FGrid1.RowSel)
  loc_1332571:     global_64 = CInt(CLng(Me.FGrid1.ColSel))
  loc_13325B2:     Me.Text3.Left = (CDbl(Me.FGrid1.Left) + CDbl(CLng(Me.FGrid1.CellLeft)))
  loc_13325FF:     Me.Text3.Top = (CDbl(Me.FGrid1.Top) + CDbl(CLng(Me.FGrid1.CellTop)))
  loc_1332627:     var_A8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_133264E:     Me.Text3.Width = CDbl(CLng(Me.FGrid1.ColWidth)))
  loc_1332682:     Me.Text3.Height = CDbl(CLng(Me.FGrid1.CellHeight))
  loc_133269D:     Me.Text3.Visible = True
  loc_13326B8:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13326D0:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_13326F7:     Me.Text3.Text = CStr(Me.FGrid1.TextMatrix))
  loc_1332726:     var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_133273E:     var_C8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_133275E:     global_68 = CStr(Me.FGrid1.TextMatrix))
  loc_1332781:     Me.Text3.SetFocus
  loc_1332799:     Me.Text3.ZOrder 0
  loc_13327A1:   End If
  loc_13327A1: End If
  loc_13327A1: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_A(Index As Integer) 'E444A4
  'Data Table: 44F1D4
  loc_E4447A: If (Index = &HD) Then
  loc_E4447D:   DoEvents()
  loc_E44495:   Me.FGrid1.SelectionMode = 0
  loc_E4449D:   Call Fgrid1_UnknownEvent_9()
  loc_E444A2: End If
  loc_E444A2: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'F74444
  'Data Table: 44F1D4
  Dim var_C4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_F74339: If (CLng(Me.FGrid1.MouseRow) >= CLng(Me.FGrid1.FixedRows)) Then
  loc_F7433C:   Exit Sub
  loc_F7433D: End If
  loc_F7435C: If (CLng(Me.FGrid1.Col) > 4) Then
  loc_F7435F:   Exit Sub
  loc_F74360: End If
  loc_F74380: global_72 = CInt(CLng(Me.FGrid1.Col))
  loc_F74393: If (global_72 <> global_72) Then
  loc_F7439B:   global_74 = 1
  loc_F743A1: Else
  loc_F743AD:   global_74 = (global_74 + 1)
  loc_F743B9:   If (global_74 = 3) Then
  loc_F743C1:     global_74 = 1
  loc_F743C4:   End If
  loc_F743C4: End If
  loc_F743C8: Set var_B4 = Me.FGrid1
  loc_F743D3: var_B4.Redraw = False
  loc_F743E4: var_B4.Row = 1
  loc_F743FB: var_C4 = CVar((CLng(var_B4.Rows) - 1)) 'Long
  loc_F74403: var_B4.RowSel = 1
  loc_F7441A: var_B4.Col = CVar(CLng(global_72))
  loc_F74438: var_B4.Redraw = True
  loc_F7443F: Set var_B4 = Nothing 
  loc_F74443: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_13 'DFC75C
  'Data Table: 44F1D4
  loc_DFC758: Exit Sub
End Sub

Private Sub btncancel_Click() 'EAAE68
  'Data Table: 44F1D4
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim arg_5C01 As Variant
  loc_EAADE8: On Error Goto loc_EAAE22
  loc_EAADFE: Me.FGrid1.Rows = 1
  loc_EAAE06: var_94 = vbNullString
  loc_EAAE10: Set var_A8 = Me.FGrid1
  loc_EAAE21: Exit Sub
  loc_EAAE22: ' Referenced from: EAADE8
  loc_EAAE2A: Set var_A8 = Err()
  loc_EAAE30: Call 0.Method_arg_2C (var_AC, FGrid1.DispID_10000)
  loc_EAAE3B: var_94 = "Information"
  loc_EAAE51: MsgBox(CVar(var_AC), &H10, var_94, var_DC, var_FC)
  loc_EAAE64: Exit Sub
  loc_EAAE65: Exit Sub
  loc_EAAE66: arg_5C01 = CVar(var_94) 'Currency
End Sub

Private Sub btnExit_Click() 'E1BFE4
  'Data Table: 44F1D4
  loc_E1BFD9: Me.Global.Unload Me
  loc_E1BFE1: Exit Sub
End Sub

Private Sub Form_Load() 'EF26D4
  'Data Table: 44F1D4
  Dim var_D0 As String
  Dim var_CC As TextBox
  loc_EF2610: On Error Goto loc_EF268F
  loc_EF263B: var_D0 = CStr(Format(MemVar_1F920EC, "MMM/yyyy"))
  loc_EF264A: Set var_C8 = Me.Txt
  loc_EF2650: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_EF2658: var_CC.Text = 1
  loc_EF2686: Proc_6_23_DFBA28(Me, 7500)
  loc_EF268E: Exit Sub
  loc_EF268F: ' Referenced from: EF2610
  loc_EF2697: Set var_C8 = Err()
  loc_EF269D: Call 0.Method_arg_2C (var_D0, 11750)
  loc_EF26BE: MsgBox(CVar(var_D0), &H10, "Information", var_E4, var_104)
  loc_EF26D1: Exit Sub
  loc_EF26D2: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E20D14
  'Data Table: 44F1D4
  loc_E20CFA: If (KeyCode = &HD) Then
  loc_E20D0B:   Proc_303_0_FB9B68("	")
  loc_E20D13: End If
  loc_E20D13: Exit Sub
End Sub

Private Sub btnsave_Click() '1480434
  'Data Table: 44F1D4
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_128 As Variant
  Dim var_C0 As Variant
  Dim var_134 As String
  Dim var_154 As Double
  Dim var_12C As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_100 As Variant
  Dim var_94 As Double
  Dim var_130 As String
  Dim var_15C As Variant
  Dim var_F0 As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_17C As Variant
  Dim unk_44F1DD As Connection15
  Dim var_E0 As Variant
  Dim var_124 As Variant
  Dim var_1D0 As String
  Dim var_1FC As Variant
  Dim var_158 As Variant
  Dim var_1E0 As Variant
  Dim var_2CC As Variant
  Dim var_31C As Variant
  Dim var_32C As Variant
  Dim var_28C As Variant
  Dim var_3F0 As Variant
  Dim var_430 As Variant
  loc_147F88C: On Error Goto loc_14803A3
  loc_147F89D: var_B0 = "Entry Blocked by Sanjeev 23-04-2006"
  loc_147F8A8: MsgBox(var_B0, 0, var_E0, var_100, var_120)
  loc_147F8B8: Exit Sub
  loc_147F8BB: var_9A = 0
  loc_147F8CC: Set var_124 = Me.Txt
  loc_147F8D2: Call 0.Method_btnsave_Click0 (CInt(0), var_128)
  loc_147F90C: If (Month(CDate(CDate(var_128.Text))) = 12) Then
  loc_147F91D:   Set var_124 = Me.Txt
  loc_147F923:   Call 0.Method_btnsave_Click0 (CInt(0), var_128)
  loc_147F96C:   var_12C = "01/" & "1"
  loc_147F97F:   var_13C = CStr((Val(CStr(Year(CDate(CDate(var_128.Text))))) + CDbl(1)))
  loc_147F993:   var_94 = CDate(Format(CVar(var_12C & "/" & var_13C), "dd/mm/yyyy"))
  loc_147F9BA: Else
  loc_147F9C8:   Set var_124 = Me.Txt
  loc_147F9CE:   Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_12C, var_94)
  loc_147F9D6:   1 = var_128.Text
  loc_147F9EF:   var_130 = CStr(Month(CDate(CDate(var_12C))))
  loc_147F9F8:   var_154 = Val(var_130)
  loc_147FA09:   Set var_158 = Me.Txt
  loc_147FA0F:   Call 0.Method_btnsave_Click0 (CInt(0), var_15C, var_13C, var_154)
  loc_147FA17:   1 = var_15C.Text
  loc_147FA4E:   var_134 = CStr((var_154 + CDbl(1)))
  loc_147FA70:   var_94 = CDate(Format(CVar("1/" & CStr(Year(CDate(CDate(var_128.Text)))) & "/") & Year(CDate(CDate(var_13C))), "dd/mm/yyyy"))
  loc_147FA9E: End If
  loc_147FAAC: Set var_124 = Me.Txt
  loc_147FAB2: Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_12C, var_94)
  loc_147FABA: 1 = var_128.Text
  loc_147FACD: Set var_158 = Me.Txt
  loc_147FAD3: Call 0.Method_btnsave_Click0 (CInt(0), var_15C, var_130)
  loc_147FADB: 1 = var_15C.Text
  loc_147FAFA: var_C0 = CDate(CDate(var_12C))
  loc_147FB01: var_100 = Format(var_C0, "MMM")
  loc_147FB23: var_120 = CDate(CDate(var_130))
  loc_147FB32: var_17C = (1 + Format(var_120, "YYYY"))
  loc_147FB37: var_98 = CStr("dd/mm/yyyy")
  loc_147FB78: var_130 = "Select * From Salary Where site_code='" & MemVar_1F92070 & "' and Mth_Year='"
  loc_147FB86: var_138 = var_130 & var_98 & "'"
  loc_147FB8F: unk_44F1DD.Execute var_138, var_C0, -1
  loc_147FB9A: Set var_A0 = var_124
  loc_147FBB7: var_190 = Me.Recordset15.RecordCount
  loc_147FBC5: If (var_190 > 0) Then
  loc_147FBCE:   Call 0.Method_arg_50 (var_130, var_124, 1, var_100)
  loc_147FBF5:   MsgBox(CVar("Salary Already Created, " & vbCrLf & " You Can Not Edit Record ..."), &H40, CVar(var_130), var_100, var_120)
  loc_147FC08:   Exit Sub
  loc_147FC09: End If
  loc_147FC09: var_B0 = 1
  loc_147FC12: var_F0 = 1
  loc_147FC41: If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_147FC44:   Exit Sub
  loc_147FC45: End If
  loc_147FC4E: unk_44F1DD.BeginTrans var_190
  loc_147FC63: Set var_124 = Me.Txt
  loc_147FC69: Call 0.Method_btnsave_Click0 (CInt(0), var_128, 1, var_F0, var_B0)
  loc_147FCBC: var_16C = CVar("DELETE FROM attendence WHERE site_code='" & MemVar_1F92070 & "' and MTH_YEAR='") & Format(CVar(var_128), "MMMyyyy") & "'" 
  loc_147FCCA: unk_44F1DD.Execute CStr(var_16C), "dd/mm/yyyy", -1
  loc_147FCF6: If (MemVar_1F923AC = "A") Then
  loc_147FD04:   Set var_124 = Me.Txt
  loc_147FD0A:   Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_158, 1, 1)
  loc_147FD51:   var_130 = CStr(CVar("DELETE FROM attend WHERE site_code='" & MemVar_1F92070 & "' and RIGHT(V_DATE,8)='") & Right(CVar(var_128), 8) & "'")
  loc_147FD5B:   unk_44F1DD.Execute var_130, var_16C, -1
  loc_147FD80: Else
  loc_147FD88:   If (MemVar_1F923AC = "S") Then
  loc_147FD96:     Set var_124 = Me.Txt
  loc_147FD9C:     Call 0.Method_btnsave_Click0 (CInt(0), var_128, var_158, 1)
  loc_147FDD0:     Set var_158 = Me.Txt
  loc_147FDD6:     Call 0.Method_btnsave_Click0 (CInt(0), var_15C, 1, 1)
  loc_147FE29:     var_16C = CVar("DELETE FROM attend WHERE site_code='" & MemVar_1F92070 & "' and MONTH(V_DATE)='") & Format(CVar(var_128), "mm") & "' and Year(V_DATE)='" 
  loc_147FE47:     unk_44F1DD.Execute CStr(var_16C & Format(CVar(var_15C), "yyyy") & "'"), var_1E0, -1
  loc_147FE77:   End If
  loc_147FE77: End If
  loc_147FE9C: For var_1E8 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_1E8 'Integer
  loc_147FEA6:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_147FEAB:   var_F0 = 1
  loc_147FEDA:   If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_147FEE0:     var_8C = vbNullString
  loc_147FEF1:     For var_1EC = 5 To (global_56 + 4): var_88 = var_1EC 'Integer
  loc_147FEFE:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_147FF25:       var_8C = CVar(CLng(var_88)) & CStr(Me.FGrid1.TextMatrix))
  loc_147FF35:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_147FF3E:       var_F0 = CVar(CLng(var_88)) 'Long
  loc_147FF5E:       var_100 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_147FF66:       var_1D0 = vbNullString
  loc_147FF8C:       var_14C = Me.FGrid1.TextMatrix)
  loc_147FFD4:       Set var_158 = Me.FGrid1
  loc_1480008:       var_2CC = CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(var_158.TextMatrix))))) <> "SS")
  loc_1480088:       If CBool(CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) <> "HH")) Then
  loc_14800AC:         var_E0 = "00"
  loc_14800B8:         var_C0 = CVar((var_88 - 4)) 'Integer
  loc_14800BE:         var_100 = Format(Me.FGrid1.TextMatrix), var_E0)
  loc_14800E0:         Set var_128 = Me.Txt
  loc_14800E6:         Call 0.Method_btnsave_Click0 (CInt(0), var_158, var_138, CStr(var_100) & "/", 1, 1, CVar(CLng(var_86)))
  loc_14800EE:         var_2CC = var_158.Text
  loc_14800F7:         var_120 = CVar(CVar(CLng(var_86)) & var_138) 'String
  loc_14800FD:         Proc_6_7_F25D88(var_14C, var_120, CVar(CLng(var_88)) And (Ucase(Trim(CVar(CStr(var_14C)))) <> "PP"), CVar(CLng(var_86)))
  loc_1480106:         var_110 = CVar(CLng(var_86)) 'Long
  loc_148010B:         var_1FC = 1
  loc_1480146:         var_28C = Me.FGrid1.TextMatrix)
  loc_1480182:         var_32C = Me.FGrid1.TextMatrix)
  loc_14801C2:         var_3F0 = CVar(Proc_6_15_EF2C1C(var_32C, CVar(CLng(var_88)), CVar(CLng(var_86)), var_28C, CVar(CLng(var_88)), CVar(CLng(var_86)))) 'String
  loc_14801E1:         var_130 = "Insert Into Attend(V_Prefix,V_Date,Emp_Code,FirstShift,SecondShift,SIte_Code,U_Name,U_EntDt,U_AE) Values ('" & Me.LblVPrefix.Caption
  loc_148021B:         var_31C = CVar(var_130 & "',") & var_14C & ",'" & CVar(CStr(Me.FGrid1.TextMatrix))) & "','" & Left(CVar(CStr(var_28C)), 1) & "','" 
  loc_1480258:         var_430 = var_31C & Right(CVar(CStr(var_32C)), 1) & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "'," & Format(var_3F0, "dd/MMM/yyyy") 
  loc_148026F:         unk_44F1DD.Execute CStr(var_430 & ",'A')"), var_474, -1
  loc_14802DB:       End If
  loc_14802DE:     Next var_1EC 'Integer
  loc_14802E7:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_14802EC:     var_F0 = 1
  loc_1480326:     var_130 = "insert into attendence(MTH_YEAR,emp_code,Attn_Str,Site_Code) values ('" & var_98 & "','"
  loc_1480331:     var_138 = var_130 & CStr(Me.FGrid1.TextMatrix))
  loc_148035D:     unk_44F1DD.Execute var_138 & "','" & var_8C & "','" & MemVar_1F92070 & "')", var_E0, -1
  loc_1480385:   End If
  loc_1480388: Next var_1E8 'Integer
  loc_1480393: unk_44F1DD.CommitTrans
  loc_148039A: var_9A = 0
  loc_148039D: Call btncancel_Click()
  loc_14803A2: Exit Sub
  loc_14803A3: ' Referenced from: 147F88C
  loc_14803A9: If (var_9A = 1) Then
  loc_14803B2:   unk_44F1DD.RollbackTrans
  loc_14803B7: End If
  loc_14803BF: Set var_124 = Err()
  loc_14803C5: Call 0.Method_arg_1C (var_190)
  loc_14803D2: Set var_128 = Err()
  loc_14803D8: Call 0.Method_arg_2C (var_130)
  loc_14803E3: Call 0.Method_arg_50 (var_138)
  loc_148040F: MsgBox(CVar(CStr(var_190) & " : " & var_130), &H10, CVar(var_138), var_100, var_120)
  loc_148042F: Exit Sub
  loc_1480430: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'F10084
  'Data Table: 44F1D4
  Dim var_9C As TextBox
  Dim var_90 As TextBox
  loc_F0FFBA: If (Cancel = CInt(0)) Then
  loc_F0FFC7:   Set var_8C = Me.Txt
  loc_F0FFCD:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F0FFED:   Set var_98 = Me.Txt
  loc_F0FFF3:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_F0FFFB:   var_9C.Text = Proc_6_120_133A1D8(var_90)
  loc_F1001B:   Set var_8C = Me.Txt
  loc_F10021:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_F10065:   Me.LblVPrefix.Caption = CStr(Format(CDate(CDate(var_90.Text)), "yyyy"))
  loc_F10083: End If
  loc_F10083: Exit Sub
End Sub

Private Sub Text2_GotFocus() 'E1BD84
  'Data Table: 44F1D4
  loc_E1BD74: var_88 = "{Home}+{End}"
  loc_E1BD7A: Proc_303_0_FB9B68(var_88)
  loc_E1BD82: Exit Sub
End Sub

Private Sub Text2_KeyUp(KeyCode As Integer, Shift As Integer) 'E8B628
  'Data Table: 44F1D4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_E8B5D7: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_E8B5E6: var_C8 = CVar(CLng((global_56 + 6))) 'Long
  loc_E8B600: var_F0 = CVar(Me.Text2.Text) 'String
  loc_E8B608: Set var_104 = Me.FGrid1
  loc_E8B60E: LateIdCallSt
  loc_E8B626: Exit Sub
End Sub

Private Sub Text3_GotFocus() 'E1BBBC
  'Data Table: 44F1D4
  loc_E1BBAC: var_88 = "{HOME}+{END}"
  loc_E1BBB2: Proc_303_0_FB9B68(var_88)
  loc_E1BBBA: Exit Sub
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer) '10DEA44
  'Data Table: 44F1D4
  Dim var_88 As Variant
  Dim var_C0 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As Variant
  loc_10DE746: If (CLng(KeyCode) = &H1B) Then
  loc_10DE755:   Me.Text3.Visible = False
  loc_10DE75D:   Exit Sub
  loc_10DE75E:   Exit Sub
  loc_10DE75F: End If
  loc_10DE765: If (KeyCode = &H28) Then
  loc_10DE7D9:   If ((CLng(Me.FGrid1.Rows) > (CLng(Me.FGrid1.Row) + 1)) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_10DE7F5:     var_E4 = CVar((CLng(Me.FGrid1.Row) + 1)) 'Long
  loc_10DE804:     Me.FGrid1.Row = var_E4
  loc_10DE813:     Call Fgrid1_UnknownEvent_9()
  loc_10DE818:   End If
  loc_10DE81B: Else
  loc_10DE821:   If (KeyCode = &H26) Then
  loc_10DE87D:     If ((CLng(Me.FGrid1.Row) > 1) And (CLng(Me.FGrid1.Col) <> (CLng(Me.FGrid1.Cols) - 1))) Then
  loc_10DE899:       var_E4 = CVar((CLng(Me.FGrid1.Row) - 1)) 'Long
  loc_10DE8A8:       Me.FGrid1.Row = var_E4
  loc_10DE8B7:       Call Fgrid1_UnknownEvent_9()
  loc_10DE8BC:     End If
  loc_10DE8BC:   End If
  loc_10DE8BC: End If
  loc_10DE8C2: If (KeyCode = &HD) Then
  loc_10DE8C5:   DoEvents()
  loc_10DE8DD:   var_E4 = CVar(CLng(Me.FGrid1.RowSel)) 'Long
  loc_10DE8F5:   var_104 = CVar(CLng(Me.FGrid1.ColSel)) 'Long
  loc_10DE90F:   var_C0 = CVar(Me.Text3.Text) 'String
  loc_10DE917:   Set var_C4 = Me.FGrid1
  loc_10DE91D:   LateIdCallSt
  loc_10DE945:   Me.Text3.Visible = False
  loc_10DE988:   If (CLng(Me.FGrid1.ColSel) = (CLng(Me.FGrid1.Cols) - 3)) Then
  loc_10DE9A4:     var_E4 = CVar((CLng(Me.FGrid1.RowSel) + 1)) 'Long
  loc_10DE9B3:     Me.FGrid1.Row = var_E4
  loc_10DE9D5:     Me.FGrid1.Col = 4
  loc_10DE9E1:     Set var_88 = Me.FGrid1
  loc_10DE9F5:   Else
  loc_10DEA0E:     var_E4 = CVar((CLng(Me.FGrid1.ColSel) + 1)) 'Long
  loc_10DEA1D:     Me.FGrid1.Col = 4
  loc_10DEA30:     Set var_88 = Me.FGrid1
  loc_10DEA41:   End If
  loc_10DEA41: End If
  loc_10DEA41: Exit Sub
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer) 'EADF54
  'Data Table: 44F1D4
  Dim KeyAscii As Integer
  loc_EADF15: If CBool(InStr(1, CVar("PAECS"), Ucase(Chr(CLng(KeyAscii))), 1) <> 0) Then
  loc_EADF3B:   KeyAscii = Asc(CStr(Ucase(Chr(CLng(KeyAscii)))))
  loc_EADF4B: Else
  loc_EADF4D:   KeyAscii = 0
  loc_EADF50: End If
  loc_EADF50: Exit Sub
End Sub

Private Sub Text3_KeyUp(KeyCode As Integer, Shift As Integer) 'E6A758
  'Data Table: 44F1D4
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_E6A71D: var_AC = CVar(CLng(global_64)) 'Long
  loc_E6A737: var_CC = CVar(Me.Text3.Text) 'String
  loc_E6A73F: Set var_E0 = Me.FGrid1
  loc_E6A745: LateIdCallSt
  loc_E6A757: Exit Sub
End Sub

Private Sub Text3_LostFocus() 'E3D158
  'Data Table: 44F1D4
  Dim var_88 As TextBox
  loc_E3D138: Me.Text3.Visible = False
  loc_E3D144: Set var_88 = Me.FGrid1
  loc_E3D155: Exit Sub
End Sub

Private Sub Text3_Validate(Cancel As Boolean) 'F581D0
  'Data Table: 44F1D4
  Dim var_88 As TextBox
  Dim var_C4 As Variant
  loc_F580FD: If ((Len(Me.Text3.Text) = 1) And (Me.Text3.Text = "P")) Then
  loc_F58119:   MsgBox("One half Attendence is not Allowed", &H10, var_D4, var_F4, var_114)
  loc_F58144:   If (Me.Text3.Visible = &HFF) Then
  loc_F58151:     Me.Text3.SetFocus
  loc_F58159:   End If
  loc_F58159:   Exit Sub
  loc_F5815A: End If
  loc_F5815A: Exit Sub
  loc_F58174: MsgBox("Leave Cannot Changed from here", &H10, var_D4, var_F4, var_114)
  loc_F58195: var_C4 = CVar(CLng(global_64)) 'Long
  loc_F581A8: Set var_88 = Me.FGrid1
  loc_F581AE: LateIdCallSt
  loc_F581C5: Me.Text3.Visible = False
  loc_F581CD: Exit Sub
End Sub

Private Sub Text1_GotFocus() 'E1BC54
  'Data Table: 44F1D4
  loc_E1BC44: var_88 = "{Home}+{End}"
  loc_E1BC4A: Proc_303_0_FB9B68(var_88)
  loc_E1BC52: Exit Sub
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer) 'E41110
  'Data Table: 44F1D4
  loc_E41101: Proc_6_41_FA0BA4(Me.Text1, KeyCode)
  loc_E4110D: Exit Sub
  loc_E4110E: Set arg_5C00 = 2
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer) 'E44248
  'Data Table: 44F1D4
  loc_E44239: Proc_6_42_129A86C(Me.Text1, KeyAscii)
  loc_E44245: Exit Sub
  loc_E44246: Set arg_5C00 = 2
End Sub

Private Sub Text1_KeyUp(KeyCode As Integer, Shift As Integer) 'E8B780
  'Data Table: 44F1D4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_F0 As Variant
  loc_E8B72F: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_E8B73E: var_C8 = CVar(CLng((global_56 + 5))) 'Long
  loc_E8B758: var_F0 = CVar(Me.Text1.Text) 'String
  loc_E8B760: Set var_104 = Me.FGrid1
  loc_E8B766: LateIdCallSt
  loc_E8B77E: Exit Sub
End Sub

Private Sub Text1_Validate(Cancel As Boolean) 'EB7B64
  'Data Table: 44F1D4
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_F0 As Variant
  loc_EB7ADC: Proc_6_40_EA50F0(CVar(Me.Text1))
  loc_EB7AF0: Me.Text1.Text = CStr()
  loc_EB7B11: var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_EB7B20: var_CC = CVar(CLng((global_56 + 5))) 'Long
  loc_EB7B3A: var_F0 = CVar(Me.Text1.Text) 'String
  loc_EB7B42: Set var_104 = Me.FGrid1
  loc_EB7B48: LateIdCallSt
  loc_EB7B60: Exit Sub
End Sub

Public Sub Proc_312_24_EC347C
  'Data Table: 44F1D4
  Dim var_98 As Variant
  loc_EC33E7: Me.FGrid1.Row = 0
  loc_EC3414: For var_C0 = 0 To CInt((CLng(Me.FGrid1.Cols) - 1)): var_86 = var_C0 'Integer
  loc_EC342D:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_EC3454:   If (CLng(Me.FGrid1.CellBackColor) <> &HFF) Then
  loc_EC3457:     var_98 = -2147483633
  loc_EC346A:     Me.FGrid1.CellBackColor = CVar(CLng(var_86))
  loc_EC3472:   End If
  loc_EC3475: Next var_C0 'Integer
  loc_EC347A: Exit Sub
End Sub
