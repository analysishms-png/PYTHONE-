VERSION 5.00
Begin VB.Form RsTbChange
  Caption = "Table Transfer"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsTbChange.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4905
  ClientHeight = 3195
  Begin Frame FrameOnline
    Left = 9705
    Top = 1020
    Width = 4935
    Height = 4845
    TabIndex = 0
    BorderStyle = 0 'None
    Begin Frame FrameOption
      Left = 30
      Top = 3375
      Width = 2400
      Height = 990
      TabIndex = 3
      BorderStyle = 0 'None
      Begin BtnEnh CmdTExit
        Left = 0
        Top = 495
        Width = 2400
        Height = 495
        TabIndex = 11
      End
      Begin BtnEnh CmdTChange
        Left = 0
        Top = 0
        Width = 2400
        Height = 495
        TabIndex = 12
      End
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 1185
      Width = 2910
      Height = 930
      TabIndex = 2
    End
    Begin Label LBLRoomName
      BackColor = &HC0FFFF&
      ForeColor = &HC0&
      Left = 60
      Top = 795
      Width = 9540
      Height = 360
      TabIndex = 1
      BorderStyle = 1 'Fixed Single
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
  End
  Begin BtnEnh CmdExit
    Left = 6615
    Top = 4665
    Width = 1275
    Height = 1050
    TabIndex = 4
  End
  Begin BtnEnh CmdChange
    Left = 4170
    Top = 4665
    Width = 1275
    Height = 1050
    TabIndex = 6
  End
  Begin DataCombo TXT_FRTABLE
    Left = 3300
    Top = 2835
    Width = 3165
    Height = 360
    TabIndex = 7
  End
  Begin DataCombo TXT_TOTABLE
    Left = 7815
    Top = 2835
    Width = 3165
    Height = 360
    TabIndex = 8
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 10
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
  Begin Line Line1
    BorderColor = &HC00000&
    X1 = 6675
    Y1 = 1935
    X2 = 6675
    Y2 = 4335
    BorderWidth = 3
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 1860
    Top = 1920
    Width = 9285
    Height = 2445
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblToTable
    Caption = "To Table #"
    ForeColor = &HC00000&
    Left = 6765
    Top = 2895
    Width = 1005
    Height = 240
    TabIndex = 5
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
  Begin Label LblFrTable
    Caption = "From Table #"
    ForeColor = &HC00000&
    Left = 1935
    Top = 2880
    Width = 1260
    Height = 240
    TabIndex = 9
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
End

Attribute VB_Name = "RsTbChange"

Private mREFRESH As Integer
Private global_76 As Long

Private Sub CmdExit_UnknownEvent_9 'E174C8
  'Data Table: 45D1C4
  loc_E174BD: Me.Global.Unload Me
  loc_E174C5: Exit Sub
End Sub

Private Sub Form_Load() '119648C
  'Data Table: 45D1C4
  Dim var_98 As String
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_D0 As String
  loc_1196098: On Error Goto loc_1196485
  loc_11960A4: Call 0.Method_arg_160 (var_90)
  loc_11960B2: Call 0.Method_arg_164 (var_90)
  loc_11960BF: var_98 = 0
  loc_11960F3: Set var_90 = Me.PictTitleBar
  loc_11960F9: MDIForm1.PictTitleBar.Caption = var_8C & " Table Transfer"
  loc_119610B: Call 0.Method_arg_64 (CLng(MemVar_1F921B0), Proc_96_17_FDBD80(LocalRestCode, global_60, var_8C))
  loc_119611E: Me.FrameOnline.BackColor = CLng(MemVar_1F921B0)
  loc_1196134: Me.FrameOption.BackColor = CLng(MemVar_1F921B0)
  loc_119614F: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_1196168: If (OpenMode = 1) Then
  loc_1196179:   Me.FrameOnline.Top = CDbl(0)
  loc_119618F:   Me.FrameOnline.Left = CDbl(0)
  loc_1196197:   Call Proc_225_28_14E1368(global_64)
  loc_11961AE:   Me.FGrid1.Top = CVar(CDbl(0))
  loc_11961C8:   Me.FGrid1.Left = CVar(CDbl(0))
  loc_11961F6:   var_A8 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_1196205:   Me.FGrid1.Height = CVar(CDbl(0))
  loc_1196227:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_119625D:   If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_1196281:     var_A8 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_1196290:     Me.FGrid1.Width = CVar(CDbl(12010))
  loc_119629F:   End If
  loc_11962D8:   Me.LBLRoomName.Caption = "CHANGE TABLE :   " & PTableNo & "     TO     "
  loc_1196303:   Me.LBLRoomName.Top = (CDbl(Me.FGrid1.Height) + CDbl(150))
  loc_1196320:   Me.LBLRoomName.Left = CDbl(&H2D)
  loc_119634B:   Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_1196397:   Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_11963B4:   Me.FrameOption.Visible = False
  loc_11963BF: Else
  loc_11963C9:   var_DC = "CODE"
  loc_11963EB:   var_98 = "SELECT DISTINCT RoomNo AS CODE,RoomNo as Name  FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_11963F6:   Proc_6_92_EF7064(var_98 & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y'", Me.TXT_FRTABLE, "Name")
  loc_1196417:   var_E4 = "CODE"
  loc_1196440:   var_D0 = "SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' And Code Not in(SELECT DISTINCT RoomNo AS CODE FROM KOT WHERE restCode='"
  loc_1196455:   Proc_6_92_EF7064(var_D0 & LocalRestCode & "'and ROOMTYPE='TB' AND (PENDING ='Y' OR DELFLAG IS NULL) AND (DELFLAG<>'Y' OR DELFLAG IS NULL) and (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y') ORDER BY code", Me.TXT_TOTABLE, "Name")
  loc_119647C:   Me.FrameOnline.Visible = False
  loc_1196484: End If
  loc_1196484: Exit Sub
  loc_1196485: ' Referenced from: 1196098
  loc_1196485: Proc_6_60_E62BC4(var_E4, var_DC)
  loc_119648A: Exit Sub
End Sub

Private Sub Form_Resize() 'E52EF8
  'Data Table: 45D1C4
  loc_E52ECE: Me.LblFormCaption.Left = CDbl(0)
  loc_E52EDC: Call 0.Method_arg_100 (var_8C)
  loc_E52EEE: Me.LblFormCaption.Width = var_8C
  loc_E52EF6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E01298
  'Data Table: 45D1C4
  Dim Form_UnloadFF As Integer
  loc_E01294: Exit Sub
  loc_E01295: Form_UnloadFF = 0
End Sub

Private Sub Form_Activate() 'E92D04
  'Data Table: 45D1C4
  loc_E92C8D: If (mREFRESH = &HFF) Then
  loc_E92C9A:   Proc_6_93_EAC124(Me.TXT_FRTABLE)
  loc_E92CAC:   Proc_6_93_EAC124(Me.TXT_TOTABLE)
  loc_E92CB9:   mREFRESH = 0
  loc_E92CBC: End If
  loc_E92CBC: Call Proc_225_28_14E1368(mREFRESH)
  loc_E92CC7: Call 0.Method_arg_108 (var_8C)
  loc_E92CD9: Me.FrameOnline.Height = var_8C
  loc_E92CE7: Call 0.Method_arg_100 (var_8C)
  loc_E92CF9: Me.FrameOnline.Width = var_8C
  loc_E92D01: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E331F8
  'Data Table: 45D1C4
  loc_E331D5: If (MasterFormExit = &HFF) Then
  loc_E331E5:   Me.Global.Unload Me
  loc_E331ED: End If
  loc_E331F2: mREFRESH = &HFF
  loc_E331F5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E33258
  'Data Table: 45D1C4
  loc_E3322C: On Error Goto loc_E33250
  loc_E33247: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E3324F: Exit Sub
  loc_E33250: ' Referenced from: E3322C
  loc_E33250: Proc_6_60_E62BC4(Shift)
  loc_E33255: Exit Sub
  loc_E33256: Set Form_KeyDownC00 = MasterFormExit
End Sub

Private Sub CmdTExit_UnknownEvent_9 'E172B4
  'Data Table: 45D1C4
  loc_E172A9: Me.Global.Unload Me
  loc_E172B1: Exit Sub
End Sub

Private Sub CmdTChange_UnknownEvent_9 'E1E140
  'Data Table: 45D1C4
  loc_E1E130: Me.FrameOption.Visible = False
  loc_E1E138: Call Fgrid1_UnknownEvent_B()
  loc_E1E13D: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'ED33EC
  'Data Table: 45D1C4
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_A8 As Long
  loc_ED335F: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_ED3362:   Exit Sub
  loc_ED3363: End If
  loc_ED336D: var_98 = Me.FGrid1.Rows
  loc_ED337C: var_A8 = 1
  loc_ED33BD: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_ED33C0:   Exit Sub
  loc_ED33C1: End If
  loc_ED33CD: Me.FrameOption.Visible = True
  loc_ED33D9: Set var_88 = Me.CmdTChange
  loc_ED33DF: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001(var_A8)
  loc_ED33EA: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E91898
  'Data Table: 45D1C4
  loc_E91826: If (KeyCode = &HD) Then
  loc_E91854:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E91857:     Call Fgrid1_UnknownEvent_9()
  loc_E9185C:   End If
  loc_E9188F:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E91892:     Call Fgrid1_UnknownEvent_B()
  loc_E91897:   End If
  loc_E91897: End If
  loc_E91897: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '11610F8
  'Data Table: 45D1C4
  Dim var_94 As Variant
  Dim var_A8 As String
  Dim var_86 As Integer
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_14C As String
  Dim var_1A0 As Variant
  Dim var_1E4 As Variant
  Dim var_11C As Variant
  Dim unk_45D1C7 As Connection15
  Dim var_13C As Variant
  loc_1160D74: On Error Goto loc_11610A7
  loc_1160DAA: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_1160DC1:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_1160DCD: Else
  loc_1160E0C:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_1160E20: End If
  loc_1160E33: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1160E3C: var_EC = CVar(CLng(var_86)) 'Long
  loc_1160E77: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_1160E7F: var_14C = "VACANT"
  loc_1160EA8: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_1160ECE: var_1E4 = var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")
  loc_1160EF7: If CBool(var_1E4) Then
  loc_1160F05:   var_8C = PTableNo
  loc_1160F12:   var_BC = Me.FGrid1.Col
  loc_1160F1F:   Set var_94 = Me.FGrid1
  loc_1160F4A:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_1160F73:   var_90 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1160F9D:   If ((var_8C <> vbNullString) And (var_90 <> vbNullString)) Then
  loc_1160FA9:     unk_45D1C7.BeginTrans var_1E8
  loc_1160FC2:     var_A8 = "Update Kot Set ROOMNO='" & var_90
  loc_1160FD7:     var_10C = CVar(var_A8 & "',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") 'String
  loc_1160FE8:     Proc_6_7_F25D88(var_BC, Date, var_10C, var_1E4, -1, var_94, var_EC, CVar(CLng(var_94.Row)))
  loc_1160FF0:     var_11C = var_BC & var_BC 
  loc_1161006:     var_13C = var_11C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) 
  loc_116100A:     var_EC = "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='"
  loc_116101D:     var_14C = "'"
  loc_1161030:     unk_45D1C7.Execute CStr(var_13C & var_EC & CVar(var_8C) & var_14C), CVar(CLng(Me.FGrid1.Row)), (var_13C = var_14C)
  loc_1161060:     unk_45D1C7.CommitTrans
  loc_1161065:   End If
  loc_1161072:   Me.Global.Unload Me
  loc_116107D: Else
  loc_116108B:   var_CC = "Select A Vacant Table"
  loc_1161096:   MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_11610A6: End If
  loc_11610A6: Exit Sub
  loc_11610A7: ' Referenced from: 1160D74
  loc_11610AD: unk_45D1C7.RollbackTrans
  loc_11610BA: Set var_94 = Err()
  loc_11610C0: Call 0.Method_arg_2C (var_A8, var_EC, var_CC)
  loc_11610E1: MsgBox(CVar(var_A8), &H10, " Table Change Message", var_10C, var_11C)
  loc_11610F4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E59048
  'Data Table: 45D1C4
  loc_E5900E: If (KeyCode = &HD) Then
  loc_E5903C:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5903F:     Call Fgrid1_UnknownEvent_9()
  loc_E59044:   End If
  loc_E59044: End If
  loc_E59044: Exit Sub
  loc_E59045: Set var_94 = 
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB5250
  'Data Table: 45D1C4
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  loc_FB50D0: Set var_88 = Me.FGrid1
  loc_FB50E4: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB50F5: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB5108: var_FC = CStr(var_88.TextMatrix))
  loc_FB517A: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB5189:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB519A:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB51BA:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB51CB:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB5208:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB5218:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB523A: Else
  loc_FB5243:   var_88.ToolTipText = vbNullString
  loc_FB5248: End If
  loc_FB524A: Set var_88 = Nothing 
  loc_FB524E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1400F04
  'Data Table: 45D1C4
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_45D1C7 As Connection15
  Dim var_18C As Fields15
  Dim var_154 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_260 As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_32C As Variant
  Dim var_364 As Variant
  Dim var_384 As Variant
  loc_140058B: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_14005A2: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14005C9: var_114 = Me.FGrid1.TextMatrix)
  loc_140060E: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1400624:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400642:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_1400651:   var_C0 = Me.FGrid1.TextMatrix)
  loc_1400666:   var_164 = 0
  loc_14006A5:   unk_45D1C7.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_14006AD:   var_104 = var_104.Fields
  loc_14006B5:   var_164 = var_18C.Item(var_18C)
  loc_14006DD:   var_174 = CVar(CVar(CLng(Me.FGrid1.Col)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0)) & Space(5) 
  loc_14006F4:   var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400712:   var_1EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_140074E:   var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1400765:   var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400783:   var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_14007BF:   var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14007D6:   var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_14007F4:   var_384 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_140082E:   Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_14008AE:   Me.LBLRoomName.Refresh
  loc_14008B9: Else
  loc_14008DE:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_14008F5:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140091C:   var_114 = Me.FGrid1.TextMatrix)
  loc_1400961:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1400995:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_14009A4:     var_C0 = Me.FGrid1.TextMatrix)
  loc_14009B9:     var_164 = 0
  loc_14009F8:     unk_45D1C7.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_1400A00:     var_104 = var_104.Fields
  loc_1400A08:     var_164 = var_18C.Item(var_18C)
  loc_1400A1D:     var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_1400A30:     var_174 = var_154 & Space(5) 
  loc_1400A47:     var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400A65:     var_1EC = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1400AA1:     var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1400AB8:     var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400AD6:     var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1400B10:     Me.LBLRoomName.Caption = CStr(var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1400B7A:     Me.LBLRoomName.Refresh
  loc_1400B85:   Else
  loc_1400BAA:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1400BC1:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400BE8:     var_114 = Me.FGrid1.TextMatrix)
  loc_1400C2D:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_1400C61:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_1400C70:       var_C0 = Me.FGrid1.TextMatrix)
  loc_1400C85:       var_164 = 0
  loc_1400CBB:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_1400CC4:       unk_45D1C7.Execute var_188, var_114, -1
  loc_1400CCC:       var_104 = var_104.Fields
  loc_1400CD4:       var_164 = var_18C.Item(var_18C)
  loc_1400CE9:       var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_1400CFC:       var_174 = var_154 & Space(5) 
  loc_1400D13:       var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400D31:       var_1EC = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_1400D6D:       var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1400D84:       var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400DA2:       var_2B8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1400DDE:       var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1400DF5:       var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400E13:       var_384 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_1400E4D:       Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1400ECD:       Me.LBLRoomName.Refresh
  loc_1400ED8:     Else
  loc_1400EE8:       Me.LBLRoomName.Caption = global_68
  loc_1400EFA:       Me.LBLRoomName.Refresh
  loc_1400F02:     End If
  loc_1400F02:   End If
  loc_1400F02: End If
  loc_1400F02: Exit Sub
End Sub

Private Sub CmdChange_UnknownEvent_9 '10CF444
  'Data Table: 45D1C4
  Dim var_88 As DataCombo
  Dim var_9C As String
  Dim unk_45D1C7 As Connection15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim var_160 As Variant
  loc_10CF17C: On Error Goto loc_10CF3F5
  loc_10CF1A2: If (CStr(Me.TXT_FRTABLE.defText) = vbNullString) Then
  loc_10CF1C6:   MsgBox("Fill From Table #", &H40, "Validation", var_EC, var_10C)
  loc_10CF1DA:   Set var_88 = Me.TXT_FRTABLE
  loc_10CF1EB:   Exit Sub
  loc_10CF1EC: End If
  loc_10CF20F: If (CStr(Me.TXT_TOTABLE.defText) = vbNullString) Then
  loc_10CF233:   MsgBox("Fill To Table #", &H40, "Validation", var_EC, var_10C)
  loc_10CF247:   Set var_88 = Me.TXT_TOTABLE
  loc_10CF258:   Exit Sub
  loc_10CF259: End If
  loc_10CF2A3: If ((CStr(Me.TXT_FRTABLE.defText) <> vbNullString) And (CStr(Me.TXT_TOTABLE.defText) <> vbNullString)) Then
  loc_10CF2AF:   unk_45D1C7.BeginTrans var_118
  loc_10CF2D6:   var_9C = CStr(Me.TXT_TOTABLE.defText)
  loc_10CF2EF:   var_10C = CVar("Update Kot Set ROOMNO='" & var_9C & "',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") 'String
  loc_10CF300:   Proc_6_7_F25D88(var_EC, Date, var_10C, var_1C4)
  loc_10CF308:   var_130 = -1 & var_EC 
  loc_10CF327:   var_160 = var_130 & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='" 
  loc_10CF357:   unk_45D1C7.Execute CStr(var_160 & CVar(CStr(Me.TXT_FRTABLE.defText)) & "'"), var_1C8, TXT_TOTABLE.DispID_8001
  loc_10CF395:   unk_45D1C7.CommitTrans
  loc_10CF3BB:   MsgBox("Table is changed", &H40, "Table Change", var_EC, var_10C)
  loc_10CF3CB: End If
  loc_10CF3CB: Call Proc_225_31_E4D304(TXT_FRTABLE.DispID_8001)
  loc_10CF3DA: Proc_6_93_EAC124(Me.TXT_FRTABLE)
  loc_10CF3EC: Proc_6_93_EAC124(Me.TXT_TOTABLE)
  loc_10CF3F4: Exit Sub
  loc_10CF3F5: ' Referenced from: 10CF17C
  loc_10CF3FB: unk_45D1C7.RollbackTrans
  loc_10CF408: Set var_88 = Err()
  loc_10CF40E: Call 0.Method_arg_2C (var_9C)
  loc_10CF42F: MsgBox(CVar(var_9C), &H10, " Table Change Message", var_EC, var_10C)
  loc_10CF442: Exit Sub
End Sub

Public Function MasterFormExitGet() '45DC74
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '45DC83
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '45DC92
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '45DCA1
  mREFRESH = Value
End Sub

Public Function LocalRestCodeGet() '45DCB0
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '45DCBF
  LocalRestCode = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E0C8A4
  'Data Table: 45D1C4
  loc_E0C89C: global_72 = vNewValue
  loc_E0C8A0: Exit Sub
End Sub

Public Property Get PTableNo() 'E0C814
  'Data Table: 45D1C4
  loc_E0C808: var_88 = global_72
  loc_E0C80B: PTableNo = 
End Sub

Public Property Get OpenMode() 'E02D40
  'Data Table: 45D1C4
  loc_E02D39: OpenMode = global_76
End Sub

Public Property Let OpenMode(vNewValue) 'E02030
  'Data Table: 45D1C4
  loc_E0202A: global_76 = vNewValue
  loc_E0202D: Exit Sub
End Sub

Public Property Get TVacantColor() 'E0C58C
  'Data Table: 45D1C4
  loc_E0C580: var_94 = global_80 'Variant
  loc_E0C584: TVacantColor = 
End Sub

Public Property Let TVacantColor(vNewValue) 'E0DF24
  'Data Table: 45D1C4
  loc_E0DF1C: global_80 = vNewValue
  loc_E0DF20: Exit Sub
End Sub

Public Sub Proc_225_28_14E1368
  'Data Table: 45D1C4
  Dim var_96 As Integer
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_45D1C7 As Connection15
  Dim var_B8 As Variant
  Dim var_9C As Recordset15
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_8A As Integer
  Dim var_C8 As Variant
  Dim var_8C As Integer
  Dim var_88 As Recordset15
  Dim var_90 As Integer
  Dim var_8E As Integer
  Dim var_138 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_260 As Variant
  Dim var_174 As Field20
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1B4 As Variant
  Dim var_170 As Variant
  Dim var_1DC As Variant
  Dim var_1EC As Variant
  Dim var_20C As Variant
  Dim var_22C As Variant
  Dim var_2B0 As Variant
  Dim var_92 As Integer
  Dim var_A0 As Recordset15
  loc_14E05CA: var_96 = 0
  loc_14E05F4: unk_45D1C7.Execute "Select Kotyn from Depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_14E05FF: Set var_9C = var_CC
  loc_14E0621: var_CC = var_9C.Fields
  loc_14E0631: var_C8 = var_CC.Item("KotYN").Value
  loc_14E064B: If (var_C8 = "Y") Then
  loc_14E0662:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E067A:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E0683:   unk_45D1C7.Execute var_F8, var_C8, -1
  loc_14E068E:   Set var_88 = var_CC
  loc_14E06B9:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E06C0:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_14E06DA:   unk_45D1C7.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E06E5:   Set var_A0 = var_CC
  loc_14E06FC: Else
  loc_14E0710:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E0728:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E0731:   unk_45D1C7.Execute var_F8, var_C8, -1
  loc_14E073C:   Set var_88 = var_CC
  loc_14E0767:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E076E:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE)WHERE RESTCODE='"
  loc_14E0788:   unk_45D1C7.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E0793:   Set var_A0 = var_CC
  loc_14E07A7: End If
  loc_14E07A9: var_8A = 9
  loc_14E07C3: If (Me.Recordset15.RecordCount > 0) Then
  loc_14E07F3:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_14E0860:     var_C8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_14E0881:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E0899:   Else
  loc_14E08C8:     var_C8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_14E08E9:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E08F8:   End If
  loc_14E08FB: Else
  loc_14E08FE: Else
  loc_14E0900:   var_90 = 1
  loc_14E0905:   var_8E = 0
  loc_14E091B:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_14E0936:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_14E0950:   Call Proc_225_29_1120B54((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1, var_8C)
  loc_14E0968:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E0983:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_14E099A:   Me.FGrid1.Redraw = False
  loc_14E09C7:   For var_128 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_128 'Integer
  loc_14E09D1:     var_B8 = CVar(CLng(var_94)) 'Long
  loc_14E09D6:     var_138 = &H320
  loc_14E09E3:     Set var_CC = Me.FGrid1
  loc_14E09E9:     LateIdCallSt
  loc_14E09F7:   Next var_128 'Integer
  loc_14E09FC:   ' Referenced from:   14E1333
  loc_14E0A0E:   If Not(Me.FGrid1.EOF) Then
  loc_14E0A13:     var_90 = 1
  loc_14E0A16:     ' Referenced from:   14E1330
  loc_14E0A20:     If (var_90 <= (var_8A - 1)) Then
  loc_14E0A25:       var_96 = &HFF
  loc_14E0A37:       For var_14C = (var_8C - 6) To (var_8C - 1):   var_94 = var_14C 'Integer
  loc_14E0A47:         If (var_94 = (var_8C - 6)) Then
  loc_14E0A5D:           var_F0 = Me.FGrid1.Col
  loc_14E0A96:           var_110 = CVar(Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("Code")), CVar(CLng(var_F0)), CVar(CLng(var_90)))) 'String
  loc_14E0A9E:           Set var_174 = Me.FGrid1
  loc_14E0AA4:           LateIdCallSt
  loc_14E0AD7:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E0AE6:           Me.FGrid1.Col = "Code"
  loc_14E0AF5:         End If
  loc_14E0AFF:         If (var_94 = (var_8C - 5)) Then
  loc_14E0B19:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E0B22:             Me.Recordset15.MoveFirst
  loc_14E0B27:           End If
  loc_14E0B59:           var_A8 = (var_8C - 6) & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_174, var_110)
  loc_14E0B6A:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_14E0B97:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E0BCE:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_14E0BE4:               var_260 = Me.FGrid1.Col
  loc_14E0C29:               var_F0 = (Me.var_260.Fields.Item("ShortName").Value + "(")
  loc_14E0C5F:               var_194 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_14E0C68:               var_1A4 = (var_194 + ")")
  loc_14E0C71:               var_1B4 = (var_1A4 + vbCrLf)
  loc_14E0CA0:               var_1DC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1B4, "*", CVar(CLng(var_260)))) 'String
  loc_14E0CA3:               var_1EC = (CVar(CLng(var_90)) + var_1DC)
  loc_14E0CAC:               var_20C = (var_1EC + vbCrLf)
  loc_14E0CB5:               var_22C = (var_20C + "Vacant")
  loc_14E0CBE:               var_2B0 = CVar(CStr(var_96 & var_22C)) 'String
  loc_14E0CC6:               Set var_2C4 = Me.FGrid1
  loc_14E0CCC:               LateIdCallSt
  loc_14E0D15:               Me.FGrid1.Filter = 0
  loc_14E0D1A:             End If
  loc_14E0D1A:           End If
  loc_14E0D33:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E0D42:           Me.FGrid1.Col = 0
  loc_14E0D51:         End If
  loc_14E0D5B:         If (var_94 = (var_8C - 4)) Then
  loc_14E0D72:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_14E0D8E:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E0DAF:           Call Proc_225_30_FEF934(CByte(CLng(Me.FGrid1.Col)), var_92, var_2C4)
  loc_14E0DCD:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E0DEE:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E0DFD:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E0E0C:         End If
  loc_14E0E16:         If (var_94 = (var_8C - 3)) Then
  loc_14E0E30:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E0E39:             Me.Recordset15.MoveFirst
  loc_14E0E3E:           End If
  loc_14E0E81:           Me.Recordset15.Filter = CVar(var_2B0 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='") & "'")
  loc_14E0EAE:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E0EE5:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_14E0EE8:               ' Referenced from:   14E1183
  loc_14E0F40:               var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_14E0F58:               If (var_90 = var_110) Then
  loc_14E0F72:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_14E0F79:                   var_E0 = CVar(CLng(var_90)) 'Long
  loc_14E0F88:                   var_F0 = Me.FGrid1.Col
  loc_14E0FC1:                   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("WaiterName")), CVar(CLng(var_F0)))) 'String
  loc_14E0FC9:                   Set var_174 = Me.FGrid1
  loc_14E0FCF:                   LateIdCallSt
  loc_14E0FEC:                 Else
  loc_14E101C:                   var_F0 = Me.FGrid1.TextMatrix)
  loc_14E1044:                   var_174 = Me.var_F0.Fields.Item("WaiterName")
  loc_14E107E:                   If (InStr(var_174, 1, Proc_6_38_E68A98(CVar(var_174), CStr(var_F0), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90))), 0) = 0) Then
  loc_14E1085:                     var_170 = CVar(CLng(var_90)) 'Long
  loc_14E10CD:                     var_F0 = Me.FGrid1.TextMatrix)
  loc_14E110D:                     var_F4 = Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("WaiterName")), CStr(var_F0) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_14E1111:                     var_194 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_F4) 'String
  loc_14E1119:                     Set var_1BC = Me.FGrid1
  loc_14E111F:                     LateIdCallSt
  loc_14E114A:                   End If
  loc_14E114A:                 End If
  loc_14E1150:                 var_A0.MoveNext
  loc_14E116C:                 If (var_A0.AbsolutePosition < 0) Then
  loc_14E117E:                   Me.Recordset15.Filter = 0
  loc_14E1183:                 End If
  loc_14E1183:                 GoTo loc_14E0EE8
  loc_14E1186:               End If
  loc_14E1186:             End If
  loc_14E1186:           End If
  loc_14E119F:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E11AE:           Me.FGrid1.Col = 0
  loc_14E11BD:         End If
  loc_14E11C7:         If (var_94 = (var_8C - 2)) Then
  loc_14E1213:           var_110 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1BC)) 'String
  loc_14E121B:           Set var_174 = Me.FGrid1
  loc_14E1221:           LateIdCallSt
  loc_14E1254:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1263:           Me.FGrid1.Col = "KotYN"
  loc_14E1272:         End If
  loc_14E127C:         If (var_94 = (var_8C - 1)) Then
  loc_14E1298:           var_B8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_14E12A7:           Me.FGrid1.Col = "KotYN"
  loc_14E12B6:         End If
  loc_14E12B9:       Next var_14C 'Integer
  loc_14E12C4:       var_90 = (var_90 + 1)
  loc_14E12D1:       If (var_90 > (var_8A - 1)) Then
  loc_14E12ED:         var_B8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_14E12FC:         Me.FGrid1.Col = "KotYN"
  loc_14E130B:       End If
  loc_14E1311:       var_88.MoveNext
  loc_14E132A:       If (var_88.EOF = &HFF) Then
  loc_14E132D:         GoTo loc_14E1336
  loc_14E1330:       End If
  loc_14E1330:       GoTo loc_14E0A16
  loc_14E1333:     End If
  loc_14E1333:     GoTo loc_14E09FC
  loc_14E1336:     ' Referenced from:   14E132D
  loc_14E1336:   End If
  loc_14E1336: End If
  loc_14E1344: Me.FGrid1.Redraw = True
  loc_14E1351: Set var_88 = Nothing
  loc_14E1359: Set var_A0 = Nothing
  loc_14E1361: Set var_9C = Nothing
  loc_14E1364: Exit Sub
End Sub

Public Sub Proc_225_29_1120B54(arg_C, arg_10) '1120B54
  'Data Table: 45D1C4
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_11207FB: Me.FGrid1.Row = 0
  loc_1120816: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112081B: var_CC = 0
  loc_1120828: Set var_E0 = Me.FGrid1
  loc_112082E: LateIdCallSt
  loc_1120840: ' Referenced from: 1120A97
  loc_1120846: If (arg_10 < 5) Then
  loc_1120849:   GoTo loc_1120A9A
  loc_112084C: End If
  loc_1120850: Set var_E4 = Me.FGrid1
  loc_1120861: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_112086B:   var_98 = CVar(CLng(var_86)) 'Long
  loc_1120870:   var_CC = 0
  loc_112087D:   Set var_AC = Me.FGrid1
  loc_1120883:   LateIdCallSt
  loc_1120891: Next var_E8 'Integer
  loc_11208A5: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_11208B5:   If (var_86 = (arg_10 - 5)) Then
  loc_11208BC:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11208C1:     var_CC = 0
  loc_11208CE:     Set var_AC = Me.FGrid1
  loc_11208D4:     LateIdCallSt
  loc_11208E3:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11208E8:     var_CC = 1
  loc_11208F2:     Set var_AC = Me.FGrid1
  loc_11208F8:     LateIdCallSt
  loc_1120916:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_112091F:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1120924:     var_FC = "Table No"
  loc_112092E:     Set var_E0 = Me.FGrid1
  loc_1120934:     LateIdCallSt
  loc_1120946:   End If
  loc_1120950:   If (var_86 = (arg_10 - 4)) Then
  loc_1120957:     var_98 = CVar(CLng(var_86)) 'Long
  loc_112095C:     var_CC = &H4B0
  loc_1120969:     Set var_AC = Me.FGrid1
  loc_112096F:     LateIdCallSt
  loc_112097E:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1120983:     var_CC = 1
  loc_112098D:     Set var_AC = Me.FGrid1
  loc_1120993:     LateIdCallSt
  loc_11209B1:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_11209BA:     var_CC = CVar(CLng(var_86)) 'Long
  loc_11209BF:     var_FC = "Status"
  loc_11209C9:     Set var_E0 = Me.FGrid1
  loc_11209CF:     LateIdCallSt
  loc_11209E1:   End If
  loc_11209EB:   If (var_86 = (arg_10 - 3)) Then
  loc_11209F2:     var_98 = CVar(CLng(var_86)) 'Long
  loc_11209F7:     var_CC = &H12C
  loc_1120A04:     Set var_AC = Me.FGrid1
  loc_1120A0A:     LateIdCallSt
  loc_1120A19:     var_98 = CVar(CLng(var_86)) 'Long
  loc_1120A24:     var_CC = CVar(CInt(4)) 'Integer
  loc_1120A2C:     Set var_AC = Me.FGrid1
  loc_1120A32:     LateIdCallSt
  loc_1120A50:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1120A59:     var_CC = CVar(CLng(var_86)) 'Long
  loc_1120A5E:     var_FC = vbNullString
  loc_1120A68:     Set var_E0 = Me.FGrid1
  loc_1120A6E:     LateIdCallSt
  loc_1120A80:   End If
  loc_1120A83: Next var_EC 'Integer
  loc_1120A8A: Set var_E4 = Nothing 
  loc_1120A94: arg_10 = (arg_10 - 6)
  loc_1120A97: GoTo loc_1120840
  loc_1120A9A: ' Referenced from: 1120849
  loc_1120AC1: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_1120ADA:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_1120AEA:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_1120B03:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_1120B1E:     Me.FGrid1.CellBackColor = &HE69839
  loc_1120B39:     Me.FGrid1.CellForeColor = &HFFFF
  loc_1120B44:   Next var_114 'Integer
  loc_1120B4C: Next var_110 'Integer
  loc_1120B51: Exit Sub
End Sub

Public Sub Proc_225_30_FEF934(arg_C) 'FEF934
  'Data Table: 45D1C4
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_FEF767: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FEF776: var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_FEF7CA: If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_FEF7E6:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEF7F5:   Me.FGrid1.Col = var_A8
  loc_FEF820:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEF844:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEF853:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEF87E:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEF88C: Else
  loc_FEF8A5:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEF8B4:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEF8D6:   Me.FGrid1.CellBackColor = &H404040
  loc_FEF8F7:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEF906:   Me.FGrid1.Col = &H404040
  loc_FEF928:   Me.FGrid1.CellBackColor = &H404040
  loc_FEF930: End If
  loc_FEF930: Exit Sub
End Sub

Public Sub Proc_225_31_E4D304
  'Data Table: 45D1C4
  loc_E4D2E0: Me.TXT_FRTABLE.BoundText = vbNullString
  loc_E4D2F8: Me.TXT_TOTABLE.BoundText = vbNullString
  loc_E4D300: Exit Sub
End Sub
