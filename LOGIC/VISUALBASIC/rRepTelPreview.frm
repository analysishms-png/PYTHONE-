VERSION 5.00
Begin VB.Form rRepTelPreview
  Caption = "ReprtForm"
  ForeColor = &HE0E0E0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form3"
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 345
  ClientWidth = 11580
  ClientHeight = 7710
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Text2
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 630
    Width = 10935
    Height = 270
    TabIndex = 9
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text1
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 360
    Width = 10935
    Height = 270
    TabIndex = 8
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text3
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 900
    Width = 10935
    Height = 270
    TabIndex = 7
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Text4
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 1170
    Width = 10935
    Height = 270
    TabIndex = 6
    BorderStyle = 0 'None
    TabStop = 0   'False
    Locked = -1  'True
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = -15
    Width = 5805
    Height = 375
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      Left = 3480
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 5
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BTNRefresh
      Caption = "Para&meters"
      Left = 15
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 4
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Parameters"
      Style = 1
    End
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Index = 0
      Left = 4635
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 3
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      ToolTipText = "Exit"
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "P&review"
      Index = 0
      Left = 1170
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 2
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      Left = 2325
      Top = 30
      Width = 1155
      Height = 330
      TabIndex = 1
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Style = 1
    End
  End
  Begin MSHFlexGrid FGrid1
    Left = 15
    Top = 1440
    Width = 14415
    Height = 7830
    TabIndex = 10
  End
End

Attribute VB_Name = "rRepTelPreview"

Private global_60 As Integer
Private global_64 As Integer

Private Sub BTNRefresh_Click() 'E7DB98
  'Data Table: 433C3C
  loc_E7DB3A: MemVar_1F92124 = Me
  loc_E7DB48: Set global_72 = New rRepTel
  loc_E7DB5B: Call rRepTel.global_52Put(global_52)
  loc_E7DB66: Call 0.Method_arg_50 (var_90)
  loc_E7DB74: Call 0.Method_arg_54 (var_90)
  loc_E7DB8F: Call 0.Method_arg_2B0 (1)
  loc_E7DB94: Exit Sub
End Sub

Private Sub btnExit_Click() 'E15978
  'Data Table: 433C3C
  loc_E1596D: Me.Global.Unload Me
  loc_E15975: Exit Sub
End Sub

Private Sub Form_Load() '114694C
  'Data Table: 433C3C
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_11465B0: On Error Goto loc_1146945
  loc_11465BB: Call 0.Method_MeC (CDbl(7550))
  loc_11465C8: Call 0.Method_Me4 (CDbl(11850))
  loc_11465DB: Me.Text1.Left = CDbl(0)
  loc_11465F1: Me.Text2.Left = CDbl(0)
  loc_1146607: Me.Text3.Left = CDbl(0)
  loc_114661D: Me.Text4.Left = CDbl(0)
  loc_1146637: Me.FGrid1.Left = CVar(CDbl(0))
  loc_1146675: Me.Text1.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_11466B9: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_11466FD: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_1146741: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_1146756: Set var_B0 = Me.Text4
  loc_114676E: var_AC = Me.Text4.Top
  loc_114677A: var_98 = CVar((var_AC + var_B0.Height)) 'Single
  loc_1146789: Me.FGrid1.Top = CVar(CDbl(0))
  loc_114679D: Call 0.Method_Me0 (var_AC)
  loc_11467B4: Me.Text1.Width = (var_AC - CDbl(&H32))
  loc_11467C2: Call 0.Method_Me0 (var_AC)
  loc_11467D9: Me.Text2.Width = (var_AC - CDbl(&H32))
  loc_11467E7: Call 0.Method_Me0 (var_AC)
  loc_11467FE: Me.Text3.Width = (var_AC - CDbl(&H32))
  loc_114680C: Call 0.Method_Me0 (var_AC)
  loc_1146823: Me.Text4.Width = (var_AC - CDbl(&H32))
  loc_1146831: MemVar_1F92124 = Me
  loc_114683F: Set global_72 = New rRepTel
  loc_1146852: Call rRepTel.global_52Put(global_52)
  loc_1146868: If (global_52 = "EpabxCallRep") Then
  loc_1146871:   Call 0.Method_arg_54 ("Epabx Calls Report")
  loc_1146876: End If
  loc_114687F: Call rRepTel.global_92Put(MemVar_1F92078)
  loc_114688D: Call rRepTel.global_96Put(MemVar_1F923D4)
  loc_1146898: Call 0.Method_arg_50 (var_C0)
  loc_11468A6: Call 0.Method_arg_54 (var_C0)
  loc_11468BF: Set var_88 = Me.Text3
  loc_11468C5: Call 0.Method_Form_Load0 (0, var_B0)
  loc_11468CD: var_B0.Tag = MemVar_1F92078
  loc_11468EA: Set var_88 = Me.Text3
  loc_11468F0: Call 0.Method_Form_Load0 (0, var_B0)
  loc_11468F8: var_B0.Text = MemVar_1F923D4
  loc_114690A: Call 0.Method_arg_50 (var_C0)
  loc_1146921: (var_C0).Caption = 
  loc_114693F: Call 0.Method_arg_2B0 (1)
  loc_1146944: Exit Sub
  loc_1146945: ' Referenced from: 11465B0
  loc_1146945: Proc_6_60_E62BC4(var_A8)
  loc_114694A: Exit Sub
  loc_114694B: () = 
End Sub

Private Sub Form_Resize() 'EB1A20
  'Data Table: 433C3C
  Dim var_98 As Variant
  loc_EB1990: On Error Resume Next
  loc_EB199B: Call 0.Method_arg_100 (var_88)
  loc_EB19A8: var_98 = CVar((var_88 - CDbl(250))) 'Single
  loc_EB19B7: Me.FGrid1.Width = var_98
  loc_EB19EB: Call 0.Method_arg_108 (var_88)
  loc_EB1A00: var_98 = CVar(((var_88 - (Me.Text4.Top + Me.Text4.Height)) - CDbl(250))) 'Single
  loc_EB1A0F: Me.FGrid1.Height = var_98
  loc_EB1A1F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E019DC
  'Data Table: 433C3C
  loc_E019D5: MemVar_1F921E4 = Nothing
  loc_E019D9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E02594
  'Data Table: 433C3C
  loc_E02588: On Error Goto loc_E0258C
  loc_E0258B: Exit Sub
  loc_E0258C: ' Referenced from: E02588
  loc_E0258C: Proc_6_60_E62BC4()
  loc_E02591: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 'E15AF4
  'Data Table: 433C3C
  loc_E15AE0: Set var_88 = Me.FGrid1
  loc_E15AF1: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '1458470
  'Data Table: 433C3C
  Dim unk_433C75 As Connection15
  Dim var_A4 As Variant
  Dim var_94 As Recordset15
  Dim var_B8 As Variant
  Dim var_B4 As Variant
  Dim var_D4 As String
  Dim var_C4 As Fields15
  Dim var_128 As Variant
  Dim var_108 As String
  Dim var_C0 As String
  Dim MemVar_1F923C0 As String
  Dim MemVar_1F923C4 As String
  Dim MemVar_1F923CC As String
  Dim var_13C As String
  Dim var_118 As Variant
  loc_1457918: On Error Goto loc_1458469
  loc_1457920: global_60 = &HFF
  loc_1457939: unk_433C75.Execute "Select * From FAEnviro", var_B4, -1
  loc_1457944: Set var_94 = var_B8
  loc_145795C: var_B8 = var_94.Fields
  loc_14579C0: var_138 = IIf((Proc_6_38_E68A98(CVar(var_B8.Item("daterfill")), var_B8) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_14579C9: MemVar_1F923C0 = CStr(var_138)
  loc_1457A5D: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_1457A66: MemVar_1F923C4 = CStr(var_138)
  loc_1457AFA: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_1457B27: var_A4 = "linefiller"
  loc_1457B3B: var_BC = var_94.Fields.Item(var_A4)
  loc_1457B52: var_D4 = "linefiller"
  loc_1457B7A: var_108 = "-"
  loc_1457B88: var_C0 = Proc_6_38_E68A98(CVar(var_BC), CStr(var_138))
  loc_1457BA0: MemVar_1F923CC = CStr(IIf((var_C0 = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_D4))))))
  loc_1457BE4: If (CStr(Me.FGrid1.Tag) = "EpabxCallRep") Then
  loc_1457BEA:   var_88 = "EpabxCallRep"
  loc_1457BED: End If
  loc_1457BF3: Call 0.Method_arg_50 (var_C0, MemVar_1F923CC)
  loc_1457C10: global_56 = CStr(Ucase(CVar(var_C0)))
  loc_1457C30: If ((global_60 = 0) Or (var_88 = vbNullString)) Then
  loc_1457C33:   Exit Sub
  loc_1457C34: End If
  loc_1457C38: Set var_B8 = Me.FGrid1
  loc_1457C75: Set var_C4 = var_B8.DataSource
  loc_1457C7B: CreateFieldDefFile(var_C4, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_1457CA9: var_C0 = "\" & var_88
  loc_1457CBD: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C0 & ".RPT", var_A4, var_B8)
  loc_1457CC8: MemVar_1F921E4 = var_B8
  loc_1457CE4: Set var_B8 = Me.FGrid1
  loc_1457CEA: var_B4 = var_B8.DataSource
  loc_1457CF5: CVarUnk
  loc_1457D03: Call 0.Method_arg_64 (var_BC, var_B4, var_A4)
  loc_1457D0B: Call 0.Method_arg_2C (var_D4, var_B4)
  loc_1457D24: Call 0.Method_arg_150 (global_60)
  loc_1457D3A: Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1457D42: Call 0.Method_arg_24 (var_8A)
  loc_1457D4E: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_1457D67:   Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457D6F:   Call 0.Method_arg_20 (var_BC)
  loc_1457D77:   Call 0.Method_arg_30 (var_C0)
  loc_1457D8D:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_1457DBD:   If (var_160 = Ucase("Title")) Then
  loc_1457DC9:     Call 0.Method_arg_50 (var_C0)
  loc_1457DEC:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457DF4:     Call 0.Method_arg_20 (var_BC)
  loc_1457DFC:     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_1457E14:   Else
  loc_1457E36:     If (var_160 = Ucase("BetweenDate")) Then
  loc_1457E43:       Set var_B8 = Me.Text1
  loc_1457E6C:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1457E74:       Call 0.Method_arg_20 (var_C4)
  loc_1457E7C:       Call 0.Method_arg_38 ("'" & var_B8.Text & "'")
  loc_1457E96:     Else
  loc_1457EB8:       If (var_160 = Ucase("Dater")) Then
  loc_1457EDC:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457EE4:         Call 0.Method_arg_20 (var_BC)
  loc_1457EEC:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_1457F02:       Else
  loc_1457F24:         If (var_160 = Ucase("Pager")) Then
  loc_1457F2E:           var_C0 = "'" & MemVar_1F923C4
  loc_1457F48:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457F50:           Call 0.Method_arg_20 (var_BC)
  loc_1457F58:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_1457F6B:         End If
  loc_1457F6B:       End If
  loc_1457F6B:     End If
  loc_1457F6B:   End If
  loc_1457F6E: Next var_150 'Integer
  loc_1457F77: Set var_B8 = Me.FGrid1
  loc_1457F96: If (CStr(var_B8.Tag) = "EpabxCallRep") Then
  loc_1457FAA:   Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1457FB2:   Call 0.Method_arg_24 (var_8A)
  loc_1457FBE:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_1457FD7:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1457FDF:     Call 0.Method_arg_20 (var_BC)
  loc_1457FE7:     Call 0.Method_arg_30 (var_C0)
  loc_1457FFD:     var_17C = Ucase(CVar(var_C0)) 'Variant
  loc_145802D:     If (var_17C = Ucase("ForType")) Then
  loc_145807E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1458086:       Call 0.Method_arg_20 (var_C4)
  loc_145808E:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_14580AD:     Else
  loc_14580CF:       If (var_17C = Ucase("ForExtension")) Then
  loc_1458120:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1458128:         Call 0.Method_arg_20 (var_C4)
  loc_1458130:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_145814F:       Else
  loc_1458171:         If (var_17C = Ucase("ForRoomNo")) Then
  loc_14581A1:           var_118 = "'" & Left(CVar(Me.Text4.Text), &H96) 
  loc_14581AA:           var_128 = var_118 & "'" 
  loc_14581C2:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_14581CA:           Call 0.Method_arg_20 (var_C4)
  loc_14581D2:           Call 0.Method_arg_38 (CStr(var_128))
  loc_14581EE:         End If
  loc_14581EE:       End If
  loc_14581EE:     End If
  loc_14581F1:   Next var_16C 'Integer
  loc_14581FC:   If (Index = 1) Then
  loc_145820C:     ReDim Preserve var_90(0 To 3)
  loc_1458241:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1458279:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_14582B1:     var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_14582E9:     var_90(3) = vbNullString & Me.Text4.Text & vbNullString
  loc_14582F6:   End If
  loc_14582F6: End If
  loc_14582FC: If (Index = 1) Then
  loc_1458322:   If (CStr(Me.FGrid1.Tag) = "PurchaseReg") Then
  loc_1458340:     var_B4 = "Please set 132 col. in your Printer & put it on."
  loc_1458346:     MsgBox(var_B4, &H40, "Paper Setting", var_118, var_128)
  loc_1458362:     var_13C = 0
  loc_145836B:     var_C0 = "C"
  loc_1458386:     Proc_34_0_14D85A0(var_B4, Me.FGrid1, global_56)
  loc_145839F:   Else
  loc_14583BA:     var_B4 = "Please set 80 col. in your Printer & put it on."
  loc_14583C0:     MsgBox(var_B4, &H40, "Paper Setting", var_118, var_128)
  loc_14583DC:     var_13C = 0
  loc_1458400:     Proc_34_0_14D85A0(var_B4, Me.FGrid1, global_56, var_90, "N")
  loc_1458416:   End If
  loc_1458419: Else
  loc_1458435:   Set var_B8 = MemVar_1F921E4 
  loc_1458441:   Proc_6_99_1483714(var_B8, Index, global_56, &HFF, Nothing)
  loc_145844C:   MemVar_1F921E4 = var_B8
  loc_1458457: End If
  loc_145845C: global_64 = 0
  loc_1458464: MemVar_1F921E4 = Nothing
  loc_1458468: Exit Sub
  loc_1458469: ' Referenced from: 1457918
  loc_1458469: Proc_6_60_E62BC4(global_64, var_13C, var_90)
  loc_145846E: Exit Sub
End Sub

Public Function global_52Get() '4344C4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4344D3
  global_52 = Value
End Sub

Public Sub RetBack(mParamForm) 'E69294
  'Data Table: 433C3C
  loc_E6924F: On Error Goto loc_E6928C
  loc_E69263: If (global_52 = "EpabxCallRep") Then
  loc_E69273:   Set var_90 = mParamForm 
  loc_E6927A:   Call EpabxCallRep(var_90, 0, 0)
  loc_E69285:   Set var_88 = var_90
  loc_E6928B: End If
  loc_E6928B: Exit Sub
  loc_E6928C: ' Referenced from: E6924F
  loc_E6928C: Proc_6_60_E62BC4()
  loc_E69291: Exit Sub
End Sub

Public Sub EpabxCallRep(formName, FRow, Fcol) '159E09C
  'Data Table: 433C3C
  Dim var_118 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_148 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_1CC As String
  Dim var_1B8 As Variant
  Dim var_B8 As Variant
  Dim var_1E0 As Variant
  Dim var_98 As Double
  Dim var_8C As Recordset15
  Dim var_1FC As Recordset15
  Dim var_20C As Recordset15
  Dim var_88 As Recordset15
  Dim var_218 As MSHFlexGrid
  loc_159CEE8: On Error Goto loc_159E08B
  loc_159CEEB: var_118 = "WHERE E.CALL_START_DATE Between "
  loc_159CF05: VarLateMemCallLdRfVar
  loc_159CF10: Proc_6_7_F25D88(var_108, Me.FGrid, 1)
  loc_159CF21: var_148 = 0 & var_108 & " And " 
  loc_159CF3A: VarLateMemCallLdRfVar
  loc_159CF45: Proc_6_7_F25D88(var_1B8, Me.FGrid, 1)
  loc_159CF52: var_90 = CStr(1 & var_1B8)
  loc_159CF6A: var_A8 = 2
  loc_159CF71: var_C8 = 1
  loc_159CF96: If (Me.FGrid.TextMatrix = "Room") Then
  loc_159CFA0:   var_90 = var_90 & " And T.Type='Room'"
  loc_159CFA6: Else
  loc_159CFA6:   var_A8 = 2
  loc_159CFAD:   var_C8 = 1
  loc_159CFD2:   If (Me.FGrid.TextMatrix = "Department") Then
  loc_159CFDC:     var_90 = var_90 & " And T.Type='Department'"
  loc_159CFDF:   End If
  loc_159CFDF: End If
  loc_159CFDF: var_A8 = 3
  loc_159CFE6: var_C8 = 1
  loc_159D00B: If CBool(Me.FGrid.TextMatrix <> vbNullString) Then
  loc_159D015:   var_F8 = CVar(var_90 & " And E.PNT_NO ='") 'String
  loc_159D018:   var_A8 = 3
  loc_159D043:   var_90 = CStr(1 & Me.FGrid.TextMatrix & "'")
  loc_159D053: End If
  loc_159D053: var_A8 = 1
  loc_159D07C: If (Me.Check1.Value = 0) Then
  loc_159D09F:   var_90 = CStr(CVar(var_90 & " And E.Extension in ( ") & Me.GridString1 & ") ")
  loc_159D0AD: End If
  loc_159D0AD: var_A8 = 2
  loc_159D0D6: If (Me.Check1.Value = 0) Then
  loc_159D0F9:   var_90 = CStr(CVar(var_90 & " And T.RoomNo in ( ") & Me.GridString2 & ") ")
  loc_159D107: End If
  loc_159D10A: var_A8 = 0
  loc_159D147: var_108 = Me.FGrid
  loc_159D161: Set var_1E0 = 1(1 & CStr(var_108.TextMatrix))
  loc_159D167: var_108.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_159D187: var_A8 = 3
  loc_159D18E: var_C8 = 1
  loc_159D1B3: If CBool(Me.FGrid.TextMatrix <> vbNullString) Then
  loc_159D1B6:   var_118 = "For Type :"
  loc_159D1BB:   var_A8 = 2
  loc_159D1F5:   var_148 = Me.FGrid
  loc_159D217:   Set var_1E0 = 3(CStr(1 & var_148.TextMatrix & vbNullString))
  loc_159D21D:   var_148.TextBox.Text = 1 & Me.FGrid.TextMatrix & "      For PNT No. :"
  loc_159D23E: Else
  loc_159D253:   var_E8 = Me.FGrid
  loc_159D275:   Set var_1E0 = 2(CStr(1 & var_E8.TextMatrix & "      For PNT No. :All"))
  loc_159D27B:   var_E8.TextBox.Text = "For Type :"
  loc_159D291: End If
  loc_159D291: var_A8 = 1
  loc_159D2BA: If (Me.Check1.Value = 0) Then
  loc_159D2F4:   Set var_1E0 = Me.Text3
  loc_159D2FA:   Me.Text3.Text = CStr("For Extension :" & Left(Me.FormulaString1, &H64) & vbNullString)
  loc_159D313: Else
  loc_159D320:   Me.Text3.Text = "For Extension :All"
  loc_159D328: End If
  loc_159D328: var_A8 = 2
  loc_159D32F: var_C8 = 1
  loc_159D345: var_118 = "Room"
  loc_159D354: If (Me.FGrid.TextMatrix = var_118) Then
  loc_159D357:   var_A8 = 2
  loc_159D36E:   var_C8 = 0
  loc_159D380:   If (Me.Check1.Value = var_C8) Then
  loc_159D386:     var_E8 = Me.FormulaString2
  loc_159D38D:     var_A8 = "For Room No. :"
  loc_159D3A9:     var_B8 = vbNullString
  loc_159D3BA:     Set var_1E0 = Me.Text4
  loc_159D3C0:     Me.Text4.Text = CStr(var_A8 & Left(var_E8, &H64) & var_B8)
  loc_159D3D9:   Else
  loc_159D3E6:     Me.Text4.Text = "For Room No. :All"
  loc_159D3EE:   End If
  loc_159D3F1: Else
  loc_159D3F8:   Set var_1E0 = Me.Text4
  loc_159D3FE:   var_1E0.Text = vbNullString
  loc_159D406: End If
  loc_159D40C: Call 0.Method_arg_54 ("EPBAX Call Report", var_E8, var_A8, var_C8, var_A8, var_E8, var_A8)
  loc_159D41E: Call Proc_103_12_102501C(New, var_1E0, var_A8, var_118)
  loc_159D426: Set var_88 = var_1E0
  loc_159D43D: var_1CC = "SELECT E.Id,E.CALL_START_DATE,E.PNT_NO,E.Extension,T.Description,T.RoomNo,E.DIALED_NO,E.CALL_DURATION,E.CALL_AMT,E.CALL_START_TIME FROM EPABX_DATA E LEFT JOIN TelExt T On E.Extension=T.Extension  " & var_90
  loc_159D44D: Me.Connection15.Execute var_1CC & " Order By E.CALL_START_DATE,E.PNT_NO", var_E8, -1
  loc_159D458: Set var_8C = var_1E0
  loc_159D46B: var_98 = CDbl(0)
  loc_159D482: If (var_8C.RecordCount > 0) Then
  loc_159D488:   var_8C.MoveFirst
  loc_159D48D:   ' Referenced from: 159D8FF
  loc_159D49C:   If Not(var_8C.EOF) Then
  loc_159D4A2:     Set var_1FC = var_88 
  loc_159D4B1:     var_1FC.AddNew var_A8, var_B8
  loc_159D4DB:     var_1FC.Fields.Item("MLine").Value = vbNullString
  loc_159D52A:     var_1FC.Fields.Item("Id").Value = CVar(var_8C.Fields.Item("ID"))
  loc_159D582:     var_C8 = "CallDate"
  loc_159D59E:     var_1FC.Fields.Item(var_C8).Value = Format(CVar(var_8C.Fields.Item("CALL_START_DATE")), "dd/MM/yy")
  loc_159D5F8:     var_1FC.Fields.Item("PNTNo").Value = CVar(var_8C.Fields.Item("PNT_NO"))
  loc_159D618:     var_1E0 = var_8C.Fields
  loc_159D631:     var_F8 = CVar(Proc_6_38_E68A98(CVar(var_1E0.Item("Description")), 1, 1, var_98, var_1E0)) 'String
  loc_159D654:     var_1FC.Fields.Item("Description").Value = var_F8
  loc_159D6AC:     var_1FC.Fields.Item("Extension").Value = CVar(var_8C.Fields.Item("Extension"))
  loc_159D700:     var_1FC.Fields.Item("PhoneNo").Value = CVar(var_8C.Fields.Item("DIALED_NO"))
  loc_159D754:     var_1FC.Fields.Item("CallDur").Value = CVar(var_8C.Fields.Item("CALL_DURATION"))
  loc_159D78B:     Proc_6_39_E7C810(var_F8, CVar(var_8C.Fields.Item("CALL_AMT")), var_C8)
  loc_159D7D3:     var_1FC.Fields.Item("CallAmt").Value = Format(var_F8, "0.00")
  loc_159D81F:     var_F8 = CVar(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CALL_START_TIME")), 1, 1)) 'String
  loc_159D84D:     var_1FC.Fields.Item("CALL_START_TIME").Value = Left(var_F8, 5)
  loc_159D867:     var_B8 = "*"
  loc_159D870:     var_A8 = "Mark"
  loc_159D88C:     var_1FC.Fields.Item(var_A8).Value = var_B8
  loc_159D8A3:     var_1FC.Update var_A8, var_B8
  loc_159D8AA:     Set var_1FC = Nothing 
  loc_159D8B1:     var_B8 = CVar(var_98) 'Double
  loc_159D8B8:     var_A8 = "CALL_AMT"
  loc_159D8DB:     Proc_6_39_E7C810(var_F8, CVar(var_8C.Fields.Item(var_A8)), var_B8)
  loc_159D8E3:     var_108 = (var_A8 + var_F8)
  loc_159D8E8:     var_98 = CSng(Left(var_F8, 5))
  loc_159D8FA:     var_8C.MoveNext
  loc_159D8FF:     GoTo loc_159D48D
  loc_159D902:   End If
  loc_159D905:   Set var_20C = var_88 
  loc_159D934:   r_A8, var_B8 var_A8, var_B8
  loc_159D95E:   var_20C.Fields.Item("mLine").Value = "GF"
  loc_159D96A:   var_B8 = "Total---->"
  loc_159D98F:   var_20C.Fields.Item("CallDate").Value = "GF"
  loc_159D9E3:   var_20C.Fields.Item("CallAmt").Value = Format(var_98, "0.00")
  loc_159D9F6:   var_B8 = vbNullString
  loc_159D9FF:   var_A8 = "Mark"
  loc_159DA1B:   var_20C.Fields.Item(var_A8).Value = var_B8
  loc_159DA32:   r_A8, var_B8 var_A8, var_B8
  loc_159DA39:   Set var_20C = Nothing 
  loc_159DA3D: End If
  loc_159DA65: Me.FGrid1.Rows = 2
  loc_159DA81: If (var_88.RecordCount > 0) Then
  loc_159DA8A:   CVarUnk
  loc_159DA8F:   VerifyVarObj
  loc_159DA95:   Set var_1E0 = Me.FGrid1
  loc_159DA9B:   LateIdStAd
  loc_159DACB:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_88, Me.FGrid1.Text)
  loc_159DAD6: End If
  loc_159DADA: Set var_218 = Me.FGrid1
  loc_159DAE6: var_218.Tag = "EpabxCallRep"
  loc_159DAF7: var_218.Cols = &HA
  loc_159DAFC: var_A8 = 0
  loc_159DB05: var_C8 = 0
  loc_159DB0E: var_118 = "mLine"
  loc_159DB17: LateIdCallSt
  loc_159DB1F: var_A8 = 0
  loc_159DB28: var_C8 = 0
  loc_159DB34: LateIdCallSt
  loc_159DB3C: var_A8 = 0
  loc_159DB45: var_C8 = 1
  loc_159DB4E: var_118 = "ID"
  loc_159DB57: LateIdCallSt
  loc_159DB5F: var_A8 = 1
  loc_159DB68: var_C8 = 0
  loc_159DB74: LateIdCallSt
  loc_159DB7C: var_A8 = 0
  loc_159DB85: var_C8 = 2
  loc_159DB8E: var_118 = "Call Date"
  loc_159DB97: LateIdCallSt
  loc_159DB9F: var_A8 = 2
  loc_159DBAE: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DBB5: LateIdCallSt
  loc_159DBBD: var_A8 = 2
  loc_159DBCC: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DBD3: LateIdCallSt
  loc_159DBDB: var_A8 = 2
  loc_159DBE4: var_C8 = &H578
  loc_159DBF0: LateIdCallSt
  loc_159DBF8: var_A8 = 0
  loc_159DC01: var_C8 = 3
  loc_159DC0A: var_118 = "PNT No."
  loc_159DC13: LateIdCallSt
  loc_159DC1B: var_A8 = 3
  loc_159DC2A: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DC31: LateIdCallSt
  loc_159DC39: var_A8 = 3
  loc_159DC48: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DC4F: LateIdCallSt
  loc_159DC57: var_A8 = 3
  loc_159DC60: var_C8 = &H3E8
  loc_159DC6C: LateIdCallSt
  loc_159DC74: var_A8 = 0
  loc_159DC7D: var_C8 = 4
  loc_159DC86: var_118 = "Extension"
  loc_159DC8F: LateIdCallSt
  loc_159DC97: var_A8 = 4
  loc_159DCA6: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DCAD: LateIdCallSt
  loc_159DCB5: var_A8 = 4
  loc_159DCC4: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DCCB: LateIdCallSt
  loc_159DCD3: var_A8 = 4
  loc_159DCDC: var_C8 = &H4B0
  loc_159DCE8: LateIdCallSt
  loc_159DCF0: var_A8 = 0
  loc_159DCF9: var_C8 = 5
  loc_159DD02: var_118 = "Department"
  loc_159DD0B: LateIdCallSt
  loc_159DD13: var_A8 = 5
  loc_159DD22: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DD29: LateIdCallSt
  loc_159DD31: var_A8 = 5
  loc_159DD40: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DD47: LateIdCallSt
  loc_159DD4F: var_A8 = 5
  loc_159DD58: var_C8 = &H9C4
  loc_159DD64: LateIdCallSt
  loc_159DD6C: var_A8 = 0
  loc_159DD75: var_C8 = 6
  loc_159DD7E: var_118 = "Tel. No"
  loc_159DD87: LateIdCallSt
  loc_159DD8F: var_A8 = 6
  loc_159DD9E: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DDA5: LateIdCallSt
  loc_159DDAD: var_A8 = 6
  loc_159DDBC: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DDC3: LateIdCallSt
  loc_159DDCB: var_A8 = 6
  loc_159DDD4: var_C8 = &H6A4
  loc_159DDE0: LateIdCallSt
  loc_159DDE8: var_A8 = 0
  loc_159DDF1: var_C8 = 7
  loc_159DDFA: var_118 = "Time Duration"
  loc_159DE03: LateIdCallSt
  loc_159DE0B: var_A8 = 7
  loc_159DE1A: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DE21: LateIdCallSt
  loc_159DE29: var_A8 = 7
  loc_159DE38: var_C8 = CVar(CInt(1)) 'Integer
  loc_159DE3F: LateIdCallSt
  loc_159DE47: var_A8 = 7
  loc_159DE50: var_C8 = &H5DC
  loc_159DE5C: LateIdCallSt
  loc_159DE64: var_A8 = 0
  loc_159DE6D: var_C8 = 8
  loc_159DE76: var_118 = "Call Amt."
  loc_159DE7F: LateIdCallSt
  loc_159DE87: var_A8 = 8
  loc_159DE96: var_C8 = CVar(CInt(7)) 'Integer
  loc_159DE9D: LateIdCallSt
  loc_159DEA5: var_A8 = 8
  loc_159DEB4: var_C8 = CVar(CInt(7)) 'Integer
  loc_159DEBB: LateIdCallSt
  loc_159DEC3: var_A8 = 8
  loc_159DECC: var_C8 = &H5DC
  loc_159DED8: LateIdCallSt
  loc_159DEE0: var_A8 = 0
  loc_159DEE9: var_C8 = 9
  loc_159DEF2: var_118 = "MARK"
  loc_159DEFB: LateIdCallSt
  loc_159DF03: var_A8 = 9
  loc_159DF0C: var_C8 = 0
  loc_159DF18: LateIdCallSt
  loc_159DF22: Set var_218 = Nothing 
  loc_159DF3A: If (var_8C.RecordCount <= 0) Then
  loc_159DF42:   global_60 = 0
  loc_159DF45:   Exit Sub
  loc_159DF46: End If
  loc_159DF4A: Set var_1E0 = Me.FGrid1
  loc_159DF7A: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_159DF7D:   var_A8 = vbNullString
  loc_159DF87:   Set var_1E0 = Me.FGrid1
  loc_159DF98: End If
  loc_159DFCF: var_A8 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_159DFEF: Me.FGrid1.Row = CVar(CLng(IIf(var_A8, FRow, 1)))
  loc_159E010: var_E8 = Me.FGrid1.Cols
  loc_159E03D: var_A8 = ((Fcol <> 0) And ((CLng(var_E8) - 1) >= CLng(Fcol)))
  loc_159E05D: Me.FGrid1.Col = CVar(CLng(IIf(var_A8, Fcol, 1)))
  loc_159E079: Set var_88 = Nothing
  loc_159E081: Set var_8C = Nothing
  loc_159E086: IStAd
  loc_159E08A: Exit Sub
  loc_159E08B: ' Referenced from: 159CEE8
  loc_159E093: Proc_6_60_E62BC4(0, Nothing, var_E8, var_E8, FGrid1.DispID_10000, var_A8, FGrid1.DispID_FFFF)
  loc_159E098: Exit Sub
End Sub

Public Sub Proc_103_12_102501C(arg_C) '102501C
  'Data Table: 433C3C
  Dim var_8C As Recordset15
  loc_1024DE5: Set var_8C = arg_C 
  loc_1024E0D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_1024E39: var_8C.Fields.Append "Id", &HC8, &HC
  loc_1024E65: var_8C.Fields.Append "CallDate", &HC8, &HB
  loc_1024E91: var_8C.Fields.Append "PNTNo", &HC8, 5
  loc_1024EBD: var_8C.Fields.Append "Extension", &HC8, &HC
  loc_1024EE9: var_8C.Fields.Append "Description", &HC8, &H23
  loc_1024F15: var_8C.Fields.Append "PhoneNo", &HC8, &HF
  loc_1024F41: var_8C.Fields.Append "CallDur", &HC8, 8
  loc_1024F6D: var_8C.Fields.Append "CallAmt", &HC8, &HC
  loc_1024F99: var_8C.Fields.Append "CALL_START_TIME", &HC8, 5
  loc_1024FC5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_1024FD5: var_8C.CursorType = 3
  loc_1024FE2: var_8C.LockType = 3
  loc_1025001: var_8C.Open var_A0, var_B0, -1
  loc_1025008: Set var_8C = Nothing 
  loc_102500F: Set var_88 = arg_C 
  loc_1025013: Proc_103_12_102501C = -1
End Sub
