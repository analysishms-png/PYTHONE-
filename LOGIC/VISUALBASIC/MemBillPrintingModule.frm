VERSION 5.00
Begin VB.Form MemBillPrintingModule
  Caption = "Member Bill Printing"
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
  Begin Frame FrMultiBill
    ForeColor = &HFF0000&
    Left = 1155
    Top = 2400
    Width = 10635
    Height = 3885
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin DataCombo TXT_FROMBILLNO
      Left = 1245
      Top = 405
      Width = 2985
      Height = 345
      TabIndex = 1
    End
    Begin DataCombo TXT_TOBILLNO
      Left = 5445
      Top = 435
      Width = 2985
      Height = 360
      TabIndex = 2
    End
    Begin BtnEnh CmdmultiPrint
      Left = 3420
      Top = 2640
      Width = 1080
      Height = 570
      TabIndex = 5
    End
    Begin BtnEnh CmdExit
      Left = 5340
      Top = 2640
      Width = 1080
      Height = 570
      TabIndex = 6
    End
    Begin Label LblFrom
      Caption = "Bill No.From"
      ForeColor = &H80&
      Left = 180
      Top = 450
      Width = 1065
      Height = 210
      TabIndex = 4
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
    Begin Label LblTo
      Caption = "Bill No.To"
      ForeColor = &H80&
      Left = 4575
      Top = 480
      Width = 840
      Height = 210
      TabIndex = 3
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
  End
End

Attribute VB_Name = "MemBillPrintingModule"

Private mREFRESH As Integer

Private Sub Form_Load() 'FF9278
  'Data Table: 4282D4
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim unk_428307 As Connection15
  loc_FF909C: On Error Goto loc_FF9270
  loc_FF90A2: var_98 = MemVar_1F920F4
  loc_FF90AA: Proc_6_7_F25D88(var_A8)
  loc_FF90BA: Proc_6_7_F25D88(var_108, MemVar_1F920FC)
  loc_FF90C9: var_148 = "CODE"
  loc_FF90EF: var_B8 = CVar("SELECT  convert(Char,VNo) AS CODE, convert(Char,VNo) as Name  FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between ") 'String
  loc_FF9117: Proc_6_92_EF7064(CStr(var_B8 & var_A8 & " and " & var_108 & " order by (VNo)"), Me.TXT_FROMBILLNO, "Name")
  loc_FF9142: var_98 = MemVar_1F920F4
  loc_FF914A: Proc_6_7_F25D88(var_A8, var_98)
  loc_FF915A: Proc_6_7_F25D88(var_108, MemVar_1F920FC)
  loc_FF9169: var_148 = "CODE"
  loc_FF917B: Set var_140 = Me.TXT_TOBILLNO
  loc_FF918F: var_B8 = CVar("SELECT  convert(Char,VNo) AS CODE, convert(Char,VNo) as Name  FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between ") 'String
  loc_FF91B7: Proc_6_92_EF7064(CStr(var_B8 & var_A8 & " and " & var_108 & " order by (VNo)"), var_140, "Name")
  loc_FF9203: unk_428307.Execute "Select * from MemEnviro where LogSite_Code='" & MemVar_1F92078 & "'", var_A8, -1
  loc_FF9214: Set global_60 = var_140
  loc_FF9229: Call Proc_280_11_E762B8(var_140, var_148)
  loc_FF9237: Call 0.Method_arg_160 (var_140, var_148)
  loc_FF9245: Call 0.Method_arg_164 (var_140)
  loc_FF9254: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_FF9261: Set var_140 = Me.PictShortCuts
  loc_FF9267: MDIForm1.PictShortCuts.BackColor = CLng(MemVar_1F921B0)
  loc_FF926F: Exit Sub
  loc_FF9270: ' Referenced from: FF909C
  loc_FF9270: Proc_6_60_E62BC4(var_98)
  loc_FF9275: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E41628
  'Data Table: 4282D4
  loc_E4160B: Set global_56 = Nothing
  loc_E4161D: Set global_60 = Nothing
  loc_E41624: Exit Sub
  loc_E41625: var_148 = 0
End Sub

Private Sub Form_Activate() 'E53950
  'Data Table: 4282D4
  loc_E5391D: If (mREFRESH = &HFF) Then
  loc_E5392A:   Proc_6_93_EAC124(Me.TXT_FROMBILLNO)
  loc_E5393C:   Proc_6_93_EAC124(Me.TXT_TOBILLNO)
  loc_E53949:   mREFRESH = 0
  loc_E5394C: End If
  loc_E5394C: Exit Sub
  loc_E5394D: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2F7D8
  'Data Table: 4282D4
  loc_E2F7B5: If (MasterFormExit = &HFF) Then
  loc_E2F7C5:   Me.Global.Unload Me
  loc_E2F7CD: End If
  loc_E2F7D2: mREFRESH = &HFF
  loc_E2F7D5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E00C08
  'Data Table: 4282D4
  loc_E00BFC: On Error Goto loc_E00C00
  loc_E00BFF: Exit Sub
  loc_E00C00: ' Referenced from: E00BFC
  loc_E00C00: Proc_6_60_E62BC4()
  loc_E00C05: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E17EE0
  'Data Table: 4282D4
  loc_E17ED5: Me.Global.Unload Me
  loc_E17EDD: Exit Sub
End Sub

Private Sub CmdmultiPrint_UnknownEvent_9 '118BE04
  'Data Table: 4282D4
  Dim var_9C As Variant
  Dim var_124 As Double
  Dim var_110 As Variant
  Dim var_88 As Long
  Dim var_8C As Long
  Dim Me As Recordset15
  Dim var_CC As Variant
  Dim var_10C As Variant
  Dim var_144 As Variant
  Dim unk_4282F0 As Connection15
  loc_118BA5A: If (Trim(CVar(Me.TXT_FROMBILLNO)) = vbNullString) Then
  loc_118BA7E:   MsgBox("Bill No # From", &H40, "Validation", var_CC, var_10C)
  loc_118BA92:   Set var_110 = Me.TXT_FROMBILLNO
  loc_118BAA3:   Exit Sub
  loc_118BAA4: End If
  loc_118BAC6: If (Trim(CVar(Me.TXT_TOBILLNO)) = vbNullString) Then
  loc_118BAEA:   MsgBox("Bill No # To", &H40, "Validation", var_CC, var_10C)
  loc_118BAFE:   Set var_110 = Me.TXT_TOBILLNO
  loc_118BB0F:   Exit Sub
  loc_118BB10: End If
  loc_118BB2A: var_124 = Val(CStr(Me.TXT_TOBILLNO.BoundText))
  loc_118BB62: If (CDbl(Val(CStr(Me.TXT_FROMBILLNO.BoundText))) > CDbl(var_124)) Then
  loc_118BB86:   MsgBox("Bill No # From Should be less then To", &H40, "Validation", var_CC, var_10C)
  loc_118BB9A:   Set var_110 = Me.TXT_FROMBILLNO
  loc_118BBAB:   Exit Sub
  loc_118BBAC: End If
  loc_118BBC7: var_88 = CLng(Val(CStr(Me.TXT_FROMBILLNO.BoundText)))
  loc_118BBEE: var_8C = CLng(Val(CStr(Me.TXT_TOBILLNO.BoundText)))
  loc_118BC0C: var_110 = Me.Fields
  loc_118BC1C: var_9C = CVar(var_110.Item("NilAmountMemberBillPrintingYN")) 'Address
  loc_118BC36: If (Proc_6_38_E68A98(var_9C, var_8C, var_88, TXT_FROMBILLNO.DispID_8001) = "No") Then
  loc_118BC62:   Proc_6_7_F25D88(var_9C, MemVar_1F920F4, CVar("SELECT DocId As SearchCode FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between "), var_1F4, -1)
  loc_118BC82:   Proc_6_7_F25D88(var_134, MemVar_1F920FC, var_110 & var_9C & " and ")
  loc_118BCC9:   unk_4282F0.Execute CStr(var_124 & var_134 & "AND VNO between " & CVar(var_88) & " and " & CVar(var_8C) & " And Amount<>0 order by (VNo)"), TXT_TOBILLNO.DispID_8001, TXT_FROMBILLNO.DispID_8001
  loc_118BCDA:   Set global_56 = var_110
  loc_118BD0A: Else
  loc_118BD33:   Proc_6_7_F25D88(var_9C, MemVar_1F920F4, CVar("SELECT DocId As SearchCode FROM MemBill WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "') AND VDate between "))
  loc_118BD53:   Proc_6_7_F25D88(var_134, MemVar_1F920FC, var_1F4 & var_9C & " and ")
  loc_118BD5B:   var_144 = -1 & var_134 
  loc_118BD9A:   unk_4282F0.Execute CStr(var_124 & var_134 & "AND VNO between " & CVar(var_88) & " and " & CVar(var_8C) & " order by (VNo)"), var_110, 
  loc_118BDAB:   Set global_56 = var_110
  loc_118BDD8:   ' Referenced from:   118BDFD
  loc_118BDD8: End If
  loc_118BDEA: If Not(Me.EOF) Then
  loc_118BDED:   Call Proc_280_12_F11FBC()
  loc_118BDF8:   Me.MoveNext
  loc_118BDFD:   GoTo loc_118BDD8
  loc_118BE00: End If
  loc_118BE00: Exit Sub
End Sub

Public Function MasterFormExitGet() '4288E0
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4288EF
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '4288FE
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '42890D
  mREFRESH = Value
End Sub

Public Sub Proc_280_11_E762B8
  'Data Table: 4282D4
  loc_E76264: On Error Goto loc_E762B5
  loc_E76273: Call 0.Method_Proc_280_11_E762B88 ("C:\REPTMP")
  loc_E7627E: If (var_8E = 0) Then
  loc_E7628D:   Call 0.Method_arg_74 ("C:\REPTMP", var_94)
  loc_E76295: End If
  loc_E762AD: Call 0.Method_arg_5C ("C:\REPTMP\MBILL*" & ".TXT", 0)
  loc_E762B5: ' Referenced from: E76264
  loc_E762B5: Exit Sub
End Sub

Public Sub Proc_280_12_F11FBC
  'Data Table: 4282D4
  Dim Me As Recordset15
  loc_F11ECC: On Error Goto loc_F11FB4
  loc_F11F0B: If (Proc_6_38_E68A98(CVar(Me.Fields.Item("Bill_PrintType"))) = "W") Then
  loc_F11F3B:   var_B4 = "R"
  loc_F11F49:   Proc_272_1_19C894C(CStr(Me.Fields.Item("SearchCode").Value))
  loc_F11F62: Else
  loc_F11F8F:   var_B4 = "R"
  loc_F11F9D:   Proc_272_2_170434C(CStr(Me.Fields.Item("SearchCode").Value), var_B4)
  loc_F11FB3: End If
  loc_F11FB3: Exit Sub
  loc_F11FB4: ' Referenced from: F11ECC
  loc_F11FB4: Proc_6_60_E62BC4(var_B4)
  loc_F11FB9: Exit Sub
End Sub
