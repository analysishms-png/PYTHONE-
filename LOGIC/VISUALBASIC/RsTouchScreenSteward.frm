VERSION 5.00
Begin VB.Form RsTouchScreenSteward
  Caption = "Steward"
  BackColor = &H80000007&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 0 'None
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClientLeft = 0
  ClientTop = 0
  ClientWidth = 7425
  ClientHeight = 6450
  LockControls = -1  'True
  ShowInTaskbar = 0   'False
  StartUpPosition = 2 'CenterScreen
  Begin Frame FrameSteward
    BackColor = &H808080&
    Left = -45
    Top = -30
    Width = 7480
    Height = 6510
    TabIndex = 0
    BorderStyle = 0 'None
    Begin BtnEnh CmSteward
      Index = 0
      Left = 3780
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 5
    End
    Begin MSHFlexGrid FGPerson
      Left = 60
      Top = 465
      Width = 3690
      Height = 5985
      TabIndex = 4
    End
    Begin TextBox TxtPerson
      Index = 1
      ForeColor = &HFF0000&
      Left = 75
      Top = 45
      Width = 3690
      Height = 420
      TabIndex = 3
      BorderStyle = 0 'None
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtPerson
      Index = 0
      Left = 75
      Top = 1965
      Width = 3645
      Height = 255
      Visible = 0   'False
      TabIndex = 1
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGPointSt
      Left = 570
      Top = 2715
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 2
    End
    Begin BtnEnh CmSteward
      Index = 1
      Left = 4695
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 6
    End
    Begin BtnEnh CmSteward
      Index = 2
      Left = 5610
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 7
    End
    Begin BtnEnh CmSteward
      Index = 3
      Left = 6525
      Top = 60
      Width = 900
      Height = 900
      TabIndex = 8
    End
    Begin BtnEnh CmSteward
      Index = 4
      Left = 3780
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 9
    End
    Begin BtnEnh CmSteward
      Index = 5
      Left = 4695
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 10
    End
    Begin BtnEnh CmSteward
      Index = 6
      Left = 5610
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 11
    End
    Begin BtnEnh CmSteward
      Index = 7
      Left = 6525
      Top = 975
      Width = 900
      Height = 900
      TabIndex = 12
    End
    Begin BtnEnh CmSteward
      Index = 8
      Left = 3780
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 13
    End
    Begin BtnEnh CmSteward
      Index = 9
      Left = 4695
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 14
    End
    Begin BtnEnh CmSteward
      Index = 10
      Left = 5610
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 15
    End
    Begin BtnEnh CmSteward
      Index = 11
      Left = 6525
      Top = 1890
      Width = 900
      Height = 900
      TabIndex = 16
    End
    Begin BtnEnh CmSteward
      Index = 12
      Left = 3780
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 17
    End
    Begin BtnEnh CmSteward
      Index = 13
      Left = 4695
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 18
    End
    Begin BtnEnh CmSteward
      Index = 14
      Left = 5610
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 19
    End
    Begin BtnEnh CmSteward
      Index = 15
      Left = 6525
      Top = 2805
      Width = 900
      Height = 900
      TabIndex = 20
    End
    Begin BtnEnh CmSteward
      Index = 16
      Left = 3780
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 21
    End
    Begin BtnEnh CmSteward
      Index = 17
      Left = 4695
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 22
    End
    Begin BtnEnh CmSteward
      Index = 18
      Left = 5610
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 23
    End
    Begin BtnEnh CmSteward
      Index = 19
      Left = 6525
      Top = 3720
      Width = 900
      Height = 900
      TabIndex = 24
    End
    Begin BtnEnh CmSteward
      Index = 20
      Left = 3780
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 25
    End
    Begin BtnEnh CmSteward
      Index = 21
      Left = 4695
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 26
    End
    Begin BtnEnh CmSteward
      Index = 22
      Left = 5610
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 27
    End
    Begin BtnEnh CmSteward
      Index = 23
      Left = 6525
      Top = 4635
      Width = 900
      Height = 900
      TabIndex = 28
    End
    Begin BtnEnh CmSteward
      Index = 24
      Left = 3780
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 29
    End
    Begin BtnEnh CmSteward
      Index = 25
      Left = 4695
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 30
    End
    Begin BtnEnh CmSteward
      Index = 26
      Left = 5610
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 31
    End
    Begin BtnEnh CmSteward
      Index = 27
      Left = 6525
      Top = 5550
      Width = 900
      Height = 900
      TabIndex = 32
    End
  End
End

Attribute VB_Name = "RsTouchScreenSteward"


Private Sub CmSteward_UnknownEvent_9 '11FC170
  'Data Table: 423360
  Dim var_92 As Integer
  Dim var_B0 As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_9C As Variant
  Dim var_DC As TextBox
  Dim var_D0 As Variant
  Dim var_98 As Variant
  Dim var_FC As Long
  Dim MemVar_1F9201C As String
  Dim MemVar_1F92230 As String
  Dim MemVar_1F92234 As String
  loc_11FBCD7: var_92 = Cancel
  loc_11FBCE0: If Not (var_92 = 0) Then
  loc_11FBCE9:   If Not (var_92 = 1) Then
  loc_11FBCF2:     If Not (var_92 = 2) Then
  loc_11FBCFB:       If Not (var_92 = 3) Then
  loc_11FBD04:         If Not (var_92 = 4) Then
  loc_11FBD0D:           If Not (var_92 = 5) Then
  loc_11FBD16:             If Not (var_92 = 6) Then
  loc_11FBD1F:               If Not (var_92 = 7) Then
  loc_11FBD28:                 If Not (var_92 = 8) Then
  loc_11FBD31:                   If Not (var_92 = 9) Then
  loc_11FBD3A:                     If Not (var_92 = &HA) Then
  loc_11FBD43:                       If Not (var_92 = &HB) Then
  loc_11FBD4C:                         If Not (var_92 = &HC) Then
  loc_11FBD55:                           If Not (var_92 = &HD) Then
  loc_11FBD5E:                             If Not (var_92 = &HE) Then
  loc_11FBD67:                               If Not (var_92 = &HF) Then
  loc_11FBD70:                                 If Not (var_92 = &H10) Then
  loc_11FBD79:                                   If Not (var_92 = &H11) Then
  loc_11FBD82:                                     If Not (var_92 = &H12) Then
  loc_11FBD8B:                                       If Not (var_92 = &H13) Then
  loc_11FBD94:                                         If Not (var_92 = &H14) Then
  loc_11FBD9D:                                           If Not (var_92 = &H15) Then
  loc_11FBDA6:                                             If Not (var_92 = &H16) Then
  loc_11FBDAF:                                               If Not (var_92 = &H17) Then
  loc_11FBDB8:                                                 If Not (var_92 = &H18) Then
  loc_11FBDC1:                                                   If (var_92 = &H19) Then
  loc_11FBDC4:                                                   End If
  loc_11FBDC4:                                                 End If
  loc_11FBDC4:                                               End If
  loc_11FBDC4:                                             End If
  loc_11FBDC4:                                           End If
  loc_11FBDC4:                                         End If
  loc_11FBDC4:                                       End If
  loc_11FBDC4:                                     End If
  loc_11FBDC4:                                   End If
  loc_11FBDC4:                                 End If
  loc_11FBDC4:                               End If
  loc_11FBDC4:                             End If
  loc_11FBDC4:                           End If
  loc_11FBDC4:                         End If
  loc_11FBDC4:                       End If
  loc_11FBDC4:                     End If
  loc_11FBDC4:                   End If
  loc_11FBDC4:                 End If
  loc_11FBDC4:               End If
  loc_11FBDC4:             End If
  loc_11FBDC4:           End If
  loc_11FBDC4:         End If
  loc_11FBDC4:       End If
  loc_11FBDC4:     End If
  loc_11FBDC4:   End If
  loc_11FBDCE:   Set var_98 = Me.CmSteward
  loc_11FBDD4:   Call 0.Method_CmSteward_UnknownEvent_90 (Cancel, var_9C)
  loc_11FBDDC:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_92)
  loc_11FBDE4:   var_B0 = CStr()
  loc_11FBDEC:   var_86 = Asc(var_B0)
  loc_11FBE0C:   var_90 = CStr(Chr(CLng(var_86)))
  loc_11FBE29:   If (Me.RecordCount > 0) Then
  loc_11FBE32:     Me.MoveFirst
  loc_11FBE56:     Set var_98 = Me.TxtPerson
  loc_11FBE5C:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C, var_B0, "Name Like '")
  loc_11FBE64:     0 = var_9C.Text
  loc_11FBE84:     Me.Find 1 & var_B0 & var_90 & "", var_D0, var_86
  loc_11FBE9B:   End If
  loc_11FBEC4:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_11FBED5:     Set var_98 = Me.TxtPerson
  loc_11FBEDB:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C)
  loc_11FBEFD:     Set var_D8 = Me.TxtPerson
  loc_11FBF03:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_DC)
  loc_11FBF0B:     var_DC.Text = var_9C.Text & var_90
  loc_11FBF44:     Me.FGPerson.Row = CVar(CLng(Me.Bookmark))
  loc_11FBF62:     Me.FGPerson.Col = 1
  loc_11FBF86:     Set var_9C = Me.FGPerson
  loc_11FBF8C:     var_9C.TopRow = CVar(CLng(Me.FGPerson.Row))
  loc_11FBF9B:   End If
  loc_11FBF9E: Else
  loc_11FBFA6:   If (var_92 = CInt(&H1A)) Then
  loc_11FBFB7:     Set var_98 = Me.TxtPerson
  loc_11FBFBD:     Call 0.Method_CmSteward_UnknownEvent_90 (CInt(1), var_9C)
  loc_11FBFC5:     var_9C.Text = vbNullString
  loc_11FBFD4:   Else
  loc_11FBFDC:     If (var_92 = CInt(&H1B)) Then
  loc_11FBFF2:       var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FC023:       Set var_D8 = Me.TxtPerson
  loc_11FC029:       Call 0.Method_CmSteward_UnknownEvent_90 (CInt(0), var_DC, CStr(Me.FGPerson.TextMatrix)))
  loc_11FC031:       var_DC.Text = 1
  loc_11FC056:       var_120 = pOpenAs
  loc_11FC061:       If (var_120 = "Steward") Then
  loc_11FC077:         var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FC07C:         var_FC = 0
  loc_11FC09A:         MemVar_1F9201C = CStr(Me.FGPerson.TextMatrix))
  loc_11FC0AF:       Else
  loc_11FC0B7:         If (var_120 = "Member") Then
  loc_11FC0CD:           var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FC0D2:           var_FC = 0
  loc_11FC0F0:           MemVar_1F92230 = CStr(Me.FGPerson.TextMatrix))
  loc_11FC105:         Else
  loc_11FC10D:           If (var_120 = "Description") Then
  loc_11FC123:             var_D0 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_11FC128:             var_FC = 0
  loc_11FC146:             MemVar_1F92234 = CStr(Me.FGPerson.TextMatrix))
  loc_11FC158:           End If
  loc_11FC158:         End If
  loc_11FC158:       End If
  loc_11FC165:       Me.Global.Unload Me
  loc_11FC16D:     End If
  loc_11FC16D:   End If
  loc_11FC16D: End If
  loc_11FC16D: Exit Sub
End Sub

Private Sub FGPerson_UnknownEvent_9 'FF3B74
  'Data Table: 423360
  Dim var_A8 As Variant
  Dim var_C8 As Long
  Dim var_F4 As TextBox
  Dim MemVar_1F9201C As String
  Dim MemVar_1F92230 As String
  Dim MemVar_1F92234 As String
  loc_FF399F: var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF39D0: Set var_F0 = Me.TxtPerson
  loc_FF39D6: Call 0.Method_FGPerson_UnknownEvent_90 (CInt(0), var_F4, CStr(Me.FGPerson.TextMatrix)))
  loc_FF39DE: var_F4.Text = 1
  loc_FF3A0B: var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3A3C: Set var_F0 = Me.TxtPerson
  loc_FF3A42: Call 0.Method_FGPerson_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGPerson.TextMatrix)))
  loc_FF3A4A: var_F4.Text = 1
  loc_FF3A6F: var_FC = pOpenAs
  loc_FF3A7A: If (var_FC = "Steward") Then
  loc_FF3A90:   var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3A95:   var_C8 = 0
  loc_FF3AB3:   MemVar_1F9201C = CStr(Me.FGPerson.TextMatrix))
  loc_FF3AC8: Else
  loc_FF3AD0:   If (var_FC = "Member") Then
  loc_FF3AE6:     var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3AEB:     var_C8 = 0
  loc_FF3B09:     MemVar_1F92230 = CStr(Me.FGPerson.TextMatrix))
  loc_FF3B1E:   Else
  loc_FF3B26:     If (var_FC = "Description") Then
  loc_FF3B3C:       var_A8 = CVar(CLng(Me.FGPerson.Row)) 'Long
  loc_FF3B41:       var_C8 = 0
  loc_FF3B5F:       MemVar_1F92234 = CStr(Me.FGPerson.TextMatrix))
  loc_FF3B71:     End If
  loc_FF3B71:   End If
  loc_FF3B71: End If
  loc_FF3B71: Exit Sub
  loc_FF3B72: MemVar_1F92234 = var_C8
End Sub

Private Sub FGPerson_UnknownEvent_B 'E04C80
  'Data Table: 423360
  loc_E04C77: Call CmSteward_UnknownEvent_9()
  loc_E04C7C: Exit Sub
End Sub

Private Sub Form_Load() '1066BFC
  'Data Table: 423360
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C4 As Variant
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_E4 As Variant
  Dim var_A8 As Long
  loc_1066988: Call 0.Method_arg_7C (CDbl(2900))
  loc_1066994: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10669AC: Me.FGPerson.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10669C2: Me.FrameSteward.BackColor = CLng(MemVar_1F921B0)
  loc_10669D4: Set global_52 = New 
  loc_10669E6: Me.Recordset15.CursorLocation = 3
  loc_10669F6: var_B4 = pOpenAs
  loc_1066A01: If (var_B4 = "Steward") Then
  loc_1066A29:   var_C4 = CVar("Select W.Code,W.Name As Steward,W.Name From Waiter W wHERE (W.LOGSITE_CODE='" & MemVar_1F92078 & "' or W.LOGSITE_CODE='HO')  And W.ActiveYN='Yes' Order by W.Name") 'String
  loc_1066A33:   Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_1066A41: Else
  loc_1066A49:   If (var_B4 = "Member") Then
  loc_1066A6A:     var_B0 = "Select SubCode as Code,Name As Member,Name,Discount,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078
  loc_1066A7F:     var_C4 = CVar(var_B0 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='" & MemVar_1F92078 & "') Order By Name") 'String
  loc_1066A89:     Me.Open var_C4, CVar(MemVar_1F92044), 3
  loc_1066A9D:   Else
  loc_1066AA5:     If (var_B4 = "Description") Then
  loc_1066AD5:       var_CC = "Select Distinct Description Code,Description,Description As Name From KOT where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') And RestCode='"
  loc_1066AED:       Me.Open CVar(var_CC & pRestCode & "' Order By Name"), CVar(MemVar_1F92044), 3
  loc_1066B00:     End If
  loc_1066B00:   End If
  loc_1066B00: End If
  loc_1066B09: CVarUnk
  loc_1066B0E: VerifyVarObj
  loc_1066B14: Set var_AC = Me.FGPerson
  loc_1066B1A: LateIdStAd
  loc_1066B2C: Set var_D4 = Me.FGPerson
  loc_1066B2F: var_98 = 0
  loc_1066B38: var_E4 = 0
  loc_1066B44: LateIdCallSt
  loc_1066B4C: var_98 = 1
  loc_1066B55: var_E4 = &HE74
  loc_1066B61: LateIdCallSt
  loc_1066B69: var_98 = 1
  loc_1066B78: var_E4 = CVar(CInt(1)) 'Integer
  loc_1066B7F: LateIdCallSt
  loc_1066B87: var_98 = 1
  loc_1066B96: var_E4 = CVar(CInt(1)) 'Integer
  loc_1066B9D: LateIdCallSt
  loc_1066BCC: For var_FC = 1 To (CLng(Me.FGPerson.Rows) - 1): var_88 = var_FC 'Long
  loc_1066BD9:   var_A8 = &H258
  loc_1066BE5:   LateIdCallSt
  loc_1066BF0: Next var_FC 'Long
  loc_1066BF7: Set var_D4 = Nothing 
  loc_1066BFB: Exit Sub
End Sub

Public Property Let pOpenAs(vNewValue) 'E0E164
  'Data Table: 423360
  loc_E0E15C: global_56 = vNewValue
  loc_E0E160: Exit Sub
End Sub

Public Property Get pOpenAs() 'E0DF6C
  'Data Table: 423360
  loc_E0DF60: var_88 = global_56
  loc_E0DF63: pOpenAs = 
End Sub

Public Property Let pRestCode(vNewValue) 'E11914
  'Data Table: 423360
  loc_E1190C: global_60 = vNewValue
  loc_E11910: Exit Sub
End Sub

Public Property Get pRestCode() 'E0DAA4
  'Data Table: 423360
  loc_E0DA98: var_88 = global_60
  loc_E0DA9B: pRestCode = 
End Sub
