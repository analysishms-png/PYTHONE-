VERSION 5.00
Begin VB.Form RsKOTTransfer
  Caption = "KOT Transfer"
  BackColor = &H80000005&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "RsKOTTransfer.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 4905
  ClientHeight = 3195
  Appearance = 0 'Flat
  Begin Frame FrameOffline
    Left = 0
    Top = 0
    Width = 8820
    Height = 6645
    TabIndex = 0
    BorderStyle = 0 'None
    Begin DataCombo TXT_PKOT
      Left = 1905
      Top = 1485
      Width = 1905
      Height = 360
      TabIndex = 1
    End
    Begin DataCombo TXT_TOTABLE
      Left = 5850
      Top = 1485
      Width = 1905
      Height = 360
      TabIndex = 2
    End
    Begin BtnEnh CmdExit
      Left = 4215
      Top = 3525
      Width = 1575
      Height = 750
      TabIndex = 13
    End
    Begin BtnEnh CmdChange
      Left = 2640
      Top = 3525
      Width = 1575
      Height = 750
      TabIndex = 14
    End
    Begin Label LblFormCaption
      BackColor = &HC0FFFF&
      Left = 0
      Top = 0
      Width = 8835
      Height = 540
      TabIndex = 15
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
      X1 = 4260
      Y1 = 1140
      X2 = 4260
      Y2 = 2835
      BorderWidth = 2
    End
    Begin Label Label1
      Caption = "On Table:"
      ForeColor = &H800000&
      Left = 1860
      Top = 1920
      Width = 930
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
    End
    Begin Label LblKOTTable
      Caption = "KOTTB"
      ForeColor = &HFF&
      Left = 2835
      Top = 1920
      Width = 825
      Height = 255
      TabIndex = 11
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
      Caption = "KOT NO. #"
      ForeColor = &HC00000&
      Left = 675
      Top = 1530
      Width = 975
      Height = 240
      TabIndex = 4
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
    Begin Label LblToTable
      Caption = "TABLE NO. #"
      ForeColor = &HC00000&
      Left = 4620
      Top = 1530
      Width = 1200
      Height = 240
      TabIndex = 3
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
    Begin Shape Shape2
      BorderColor = &HC00000&
      Left = 480
      Top = 1125
      Width = 7635
      Height = 1725
      Shape = 4
      BorderWidth = 2
      FillColor = &HC000C0&
    End
  End
  Begin Frame FrameOnline
    Left = 9090
    Top = 420
    Width = 4605
    Height = 4845
    TabIndex = 5
    BorderStyle = 0 'None
    Begin Frame FrameOption
      Caption = "Frame1"
      Left = 195
      Top = 3570
      Width = 2730
      Height = 1200
      TabIndex = 8
      BorderStyle = 0 'None
      Begin CommandButton CmdTChange
        Caption = "CHANGE && EXIT"
        BackColor = &HE0E0E0&
        Left = 15
        Top = 0
        Width = 2715
        Height = 600
        TabIndex = 10
        BeginProperty Font
          Name = "Tahoma"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        MaskColor = &HFFFFFF&
        Style = 1
      End
      Begin CommandButton CmdTExit
        Caption = "EXIT"
        BackColor = &HE0E0E0&
        Left = 15
        Top = 600
        Width = 2715
        Height = 600
        TabIndex = 9
        BeginProperty Font
          Name = "Tahoma"
          Size = 9
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
        MaskColor = &HFFFFFF&
        Style = 1
      End
    End
    Begin MSHFlexGrid FGrid1
      Left = 90
      Top = 1185
      Width = 2025
      Height = 630
      TabIndex = 7
    End
    Begin Label LBLRoomName
      BackColor = &HC0FFFF&
      ForeColor = &HC0&
      Left = 60
      Top = 795
      Width = 11965
      Height = 360
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
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
End

Attribute VB_Name = "RsKOTTransfer"

Private MasterFormExit As Integer
Private mREFRESH As Integer
Private global_80 As Long

Private Sub CmdTChange_Click() 'E1D380
  'Data Table: 47ECC8
  loc_E1D370: Me.FrameOption.Visible = False
  loc_E1D378: Call Fgrid1_UnknownEvent_B()
  loc_E1D37D: Exit Sub
End Sub

Private Sub Form_Load() '121BF44
  'Data Table: 47ECC8
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_A8 As Variant
  loc_121BA64: On Error Goto loc_121BF3C
  loc_121BA70: Call 0.Method_arg_160 (var_8C)
  loc_121BA7E: Call 0.Method_arg_164 (var_8C)
  loc_121BA8D: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_121BA9A: Set var_8C = Me.PictShortCuts
  loc_121BAA0: MDIForm1.PictShortCuts.BackColor = CLng(MemVar_1F921B0)
  loc_121BAB6: Me.FrameOnline.BackColor = CLng(MemVar_1F921B0)
  loc_121BACC: Me.FrameOption.BackColor = CLng(MemVar_1F921B0)
  loc_121BAD9: var_94 = 0
  loc_121BB19: Me.LblFormCaption.Caption = RestName & " Kot Transfer"
  loc_121BB35: If (OpenMode = 1) Then
  loc_121BB44:   Me.FrameOffline.Visible = False
  loc_121BB5A:   Me.FrameOnline.Top = CDbl(0)
  loc_121BB70:   Me.FrameOnline.Left = CDbl(0)
  loc_121BB78:   Call Proc_226_33_14E21B0(Proc_96_17_FDBD80(LocalRestCode, LocalRestType, RestName), global_72)
  loc_121BB8F:   Me.FGrid1.Top = CVar(CDbl(0))
  loc_121BBA9:   Me.FGrid1.Left = CVar(CDbl(0))
  loc_121BBD7:   var_A8 = CVar(CDbl((((CLng(Me.FGrid1.Rows) - 1) * &H320) + &HC8))) 'Single
  loc_121BBE6:   Me.FGrid1.Height = CVar(CDbl(0))
  loc_121BC08:   Me.FGrid1.Width = CVar(CDbl(12010))
  loc_121BC3E:   If (CDbl((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(200))) < CDbl(12010)) Then
  loc_121BC62:     var_A8 = CVar((((CDbl(CLng(Me.FGrid1.Cols)) / CDbl(6)) * CDbl(1200)) + CDbl(&HA))) 'Single
  loc_121BC71:     Me.FGrid1.Width = CVar(CDbl(12010))
  loc_121BC80:   End If
  loc_121BCB9:   Me.LBLRoomName.Caption = "CHANGE TABLE :   " & PTableNo & "     TO     "
  loc_121BCE4:   Me.LBLRoomName.Top = (CDbl(Me.FGrid1.Height) + CDbl(150))
  loc_121BD01:   Me.LBLRoomName.Left = CDbl(&H2D)
  loc_121BD2C:   Me.FrameOption.Left = (CDbl(Me.FGrid1.Width) + CDbl(250))
  loc_121BD78:   Me.FrameOption.Top = (((CDbl(Me.FGrid1.Height) - Me.FrameOption.Height) - CDbl(200)) / CDbl(2))
  loc_121BD95:   Me.FrameOption.Visible = False
  loc_121BDA0: Else
  loc_121BDAB:   If (LocalRestType = "Room Service") Then
  loc_121BDB8:     var_D8 = "CODE"
  loc_121BDDA:     var_94 = "SELECT DISTINCT DOCID AS CODE,VNO as Name FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_121BDE5:     Proc_6_92_EF7064(var_94 & "' and ROOMTYPE='RO' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' ORDER BY VNO", Me.TXT_PKOT, "Name")
  loc_121BE06:     var_E0 = "CODE"
  loc_121BE25:     var_94 = "SELECT RC.DOCID AS CODE, LTrim(RTrim(RC.RoomNo)) AS Name FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_121BE41:     Proc_6_92_EF7064(var_94 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And D.Code='" & LocalRestCode & "' Order by LTrim(RTrim(RC.RoomNo))", Me.TXT_TOTABLE, "Name")
  loc_121BE5F:   Else
  loc_121BE8B:     var_94 = "SELECT DISTINCT VNO AS CODE,VNO as Name FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode
  loc_121BE96:     Proc_6_92_EF7064(var_94 & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y'", Me.TXT_PKOT, "Name", "CODE")
  loc_121BEB7:     var_D8 = "CODE"
  loc_121BEE4:     Proc_6_92_EF7064("SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' ORDER BY code", Me.TXT_TOTABLE, "Name", var_D8)
  loc_121BEFB:   End If
  loc_121BF07:   Me.FrameOnline.Visible = False
  loc_121BF1D:   Me.FrameOffline.Left = CDbl(0)
  loc_121BF33:   Me.FrameOffline.Top = CDbl(0)
  loc_121BF3B: End If
  loc_121BF3B: Exit Sub
  loc_121BF3C: ' Referenced from: 121BA64
  loc_121BF3C: Proc_6_60_E62BC4(var_E0, var_D8)
  loc_121BF41: Exit Sub
End Sub

Private Sub Form_Resize() 'E5C56C
  'Data Table: 47ECC8
  loc_E5C536: Me.LblFormCaption.Left = CDbl(0)
  loc_E5C55D: Me.LblFormCaption.Width = Me.FrameOffline.Width
  loc_E5C569: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E0242C
  'Data Table: 47ECC8
  loc_E02425: MasterFormExit = 0
  loc_E02428: Exit Sub
  loc_E02429: CExtInstUnk
End Sub

Private Sub Form_Activate() 'E900B8
  'Data Table: 47ECC8
  loc_E90041: If (mREFRESH = &HFF) Then
  loc_E9004E:   Proc_6_93_EAC124(Me.TXT_PKOT)
  loc_E90060:   Proc_6_93_EAC124(Me.TXT_TOTABLE)
  loc_E9006D:   mREFRESH = 0
  loc_E90070: End If
  loc_E90070: Call Proc_226_33_14E21B0(mREFRESH)
  loc_E9007B: Call 0.Method_arg_108 (var_8C)
  loc_E9008D: Me.FrameOnline.Height = var_8C
  loc_E9009B: Call 0.Method_arg_100 (var_8C)
  loc_E900AD: Me.FrameOnline.Width = var_8C
  loc_E900B5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E39BB8
  'Data Table: 47ECC8
  loc_E39B95: If (MasterFormExit = &HFF) Then
  loc_E39BA5:   Me.Global.Unload Me
  loc_E39BAD: End If
  loc_E39BB5: Exit Sub
  loc_E39BB6: Set arg_5000 = &HFF
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E39B58
  'Data Table: 47ECC8
  loc_E39B2C: On Error Goto loc_E39B50
  loc_E39B47: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E39B4F: Exit Sub
  loc_E39B50: ' Referenced from: E39B2C
  loc_E39B50: Proc_6_60_E62BC4(Shift)
  loc_E39B55: Exit Sub
End Sub

Private Sub TXT_PKOT_UnknownEvent_11 '1065DE4
  'Data Table: 47ECC8
  Dim var_E4 As Integer
  Dim var_88 As String
  Dim var_A0 As String
  Dim var_A4 As String
  Dim var_A8 As String
  Dim var_AC As String
  Dim unk_47ECCB As Connection15
  Dim var_D0 As Variant
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  Dim var_10C As Double
  loc_1065B8F: If (LocalRestType = "Room Service") Then
  loc_1065B98:   var_E4 = 0
  loc_1065BBF:   var_A0 = "SELECT Max(RoomNo) FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode & "' and ROOMTYPE='RO' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And DOCID='"
  loc_1065BE8:   unk_47ECCB.Execute var_A0 & CStr(Me.TXT_PKOT.BoundText) & "'", var_CC, -1
  loc_1065BF0:   var_D0 = var_D0.Fields
  loc_1065BF8:   var_E4 = var_D4.Item(var_D4)
  loc_1065C00:   var_E8 = var_E8.Value
  loc_1065C1A:   Me.LblKOTTable.Caption = Proc_6_38_E68A98(var_F8)
  loc_1065C4B:   var_88 = "SELECT RC.DOCID AS CODE, LTrim(RTrim(RC.RoomNo)) AS Name FROM Depart D, (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F92078
  loc_1065C63:   var_AC = var_88 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL And D.Code='" & LocalRestCode & "' And LTrim(RTrim(RC.RoomNo))<>'"
  loc_1065C91:   Me.TXT_TOTABLE.Tag = CVar(var_AC & Me.LblKOTTable.Caption & "' Order by RC.ROOMNO")
  loc_1065CB2: Else
  loc_1065CCC:   var_10C = Val(CStr(Me.TXT_PKOT.defText))
  loc_1065CD5:   var_E4 = 0
  loc_1065CFC:   var_A4 = "SELECT Max(RoomNo) FROM KOT WHERE (DELFLAG<>'Y' OR DELFLAG IS NULL) AND restCode='" & LocalRestCode & "' and ROOMTYPE='TB' AND (PENDING ='Y' OR PENDING IS NULL) AND (NCKOT<>'Y' OR NCKOT IS NULL) AND VOIDYN<>'Y' And VNO="
  loc_1065D18:   unk_47ECCB.Execute var_A4 & CStr(var_10C) & vbNullString, var_CC, -1
  loc_1065D20:   var_D0 = var_D0.Fields
  loc_1065D28:   var_E4 = var_D4.Item(var_D4)
  loc_1065D30:   var_E8 = var_E8.Value
  loc_1065D4A:   Me.LblKOTTable.Caption = Proc_6_38_E68A98(var_F8, var_F8)
  loc_1065DA0:   var_A8 = "SELECT DISTINCT CODE,code as Name From RoomMast Where type='TB' AND RESTCODE='" & LocalRestCode & "' And Code<>'" & Me.LblKOTTable.Caption
  loc_1065DB5:   Me.TXT_TOTABLE.Tag = CVar(var_A8 & "' ORDER BY code")
  loc_1065DCF: End If
  loc_1065DD9: Proc_6_93_EAC124(Me.TXT_TOTABLE, var_10C)
  loc_1065DE1: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'EB924C
  'Data Table: 47ECC8
  Dim var_98 As Variant
  Dim var_A8 As Long
  loc_EB91D3: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_EB91D6:   Exit Sub
  loc_EB91D7: End If
  loc_EB91E1: var_98 = Me.FGrid1.Rows
  loc_EB91F0: var_A8 = 1
  loc_EB9231: If (1 And (CStr(Me.FGrid1.TextMatrix)) = vbNullString)) Then
  loc_EB9234:   Exit Sub
  loc_EB9235: End If
  loc_EB9241: Me.FrameOption.Visible = True
  loc_EB9249: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A 'E90164
  'Data Table: 47ECC8
  loc_E900F2: If (KeyCode = &HD) Then
  loc_E90120:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E90123:     Call Fgrid1_UnknownEvent_9()
  loc_E90128:   End If
  loc_E9015B:   If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_E9015E:     Call Fgrid1_UnknownEvent_B()
  loc_E90163:   End If
  loc_E90163: End If
  loc_E90163: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B '115E4CC
  'Data Table: 47ECC8
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
  Dim unk_47ECCB As Connection15
  Dim var_13C As Variant
  loc_115E148: On Error Goto loc_115E47B
  loc_115E17E: If ((CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6) = 1) Then
  loc_115E195:   var_86 = CInt(CLng(Me.FGrid1.Col))
  loc_115E1A1: Else
  loc_115E1E0:   var_86 = CInt(((CLng(Me.FGrid1.Col) - (CLng(Val(CStr(CLng(Me.FGrid1.Col)))) Mod 6)) + 1))
  loc_115E1F4: End If
  loc_115E207: var_CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_115E210: var_EC = CVar(CLng(var_86)) 'Long
  loc_115E24B: var_13C = Right(Ucase(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), 6)
  loc_115E253: var_14C = "VACANT"
  loc_115E27C: var_1A0 = CVar(CLng((var_86 + 3))) 'Long
  loc_115E2A2: var_1E4 = var_1A0 And (CStr(Me.FGrid1.TextMatrix)) = "Y")
  loc_115E2CB: If CBool(var_1E4) Then
  loc_115E2D9:   var_8C = PTableNo
  loc_115E2E6:   var_BC = Me.FGrid1.Col
  loc_115E2F3:   Set var_94 = Me.FGrid1
  loc_115E31E:   var_EC = CVar(CLng((CDbl(6) * Fix((CDbl((CLng(var_BC) + 1)) / CDbl(6)))))) 'Long
  loc_115E347:   var_90 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_115E371:   If ((var_8C <> vbNullString) And (var_90 <> vbNullString)) Then
  loc_115E37D:     unk_47ECCB.BeginTrans var_1E8
  loc_115E396:     var_A8 = "Update Kot Set ROOMNO='" & var_90
  loc_115E3AB:     var_10C = CVar(var_A8 & "',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") 'String
  loc_115E3BC:     Proc_6_7_F25D88(var_BC, Date, var_10C, var_1E4, -1, var_94, var_EC, CVar(CLng(var_94.Row)))
  loc_115E3C4:     var_11C = var_BC & var_BC 
  loc_115E3DA:     var_13C = var_11C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) 
  loc_115E3DE:     var_EC = "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and ROOMNO='"
  loc_115E3F1:     var_14C = "'"
  loc_115E404:     unk_47ECCB.Execute CStr(var_13C & var_EC & CVar(var_8C) & var_14C), CVar(CLng(Me.FGrid1.Row)), (var_13C = var_14C)
  loc_115E434:     unk_47ECCB.CommitTrans
  loc_115E439:   End If
  loc_115E446:   Me.Global.Unload Me
  loc_115E451: Else
  loc_115E45F:   var_CC = "Select A Vacant Table"
  loc_115E46A:   MsgBox(var_CC, &H40, var_BC, var_10C, var_11C)
  loc_115E47A: End If
  loc_115E47A: Exit Sub
  loc_115E47B: ' Referenced from: 115E148
  loc_115E481: unk_47ECCB.RollbackTrans
  loc_115E48E: Set var_94 = Err()
  loc_115E494: Call 0.Method_arg_2C (var_A8, var_EC, var_CC)
  loc_115E4B5: MsgBox(CVar(var_A8), &H10, " Table Change Message", var_10C, var_11C)
  loc_115E4C8: Exit Sub
  loc_115E4C9: StAryRecCopy
End Sub

Private Sub Fgrid1_UnknownEvent_C 'E5A5D8
  'Data Table: 47ECC8
  loc_E5A59E: If (KeyCode = &HD) Then
  loc_E5A5CC:   If (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0) Then
  loc_E5A5CF:     Call Fgrid1_UnknownEvent_9()
  loc_E5A5D4:   End If
  loc_E5A5D4: End If
  loc_E5A5D4: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_10 'FB48C8
  'Data Table: 47ECC8
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_FC As String
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_16C As Variant
  loc_FB4748: Set var_88 = Me.FGrid1
  loc_FB475C: var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB476D: var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4780: var_FC = CStr(var_88.TextMatrix))
  loc_FB47F2: If (CVar(CLng(var_88.Row)) And (InStr(CVar(CLng(var_88.Col)), CStr(var_88.TextMatrix)), "Vacant", 0) = 0)) Then
  loc_FB4801:   var_B8 = CVar(CLng(var_88.Row)) 'Long
  loc_FB4812:   var_D8 = CVar(CLng(var_88.Col)) 'Long
  loc_FB4832:   var_12C = CVar(CLng(var_88.Row)) 'Long
  loc_FB4843:   var_14C = CVar(CLng(var_88.Col)) 'Long
  loc_FB4880:   var_1B0 = Mid(CVar(CStr(var_88.TextMatrix))), (InStr(1, CStr(var_88.TextMatrix)), vbCrLf, 0) + 2), var_1A0)
  loc_FB4890:   var_88.ToolTipText = CVar(CStr(var_1B0))
  loc_FB48B2: Else
  loc_FB48BB:   var_88.ToolTipText = vbNullString
  loc_FB48C0: End If
  loc_FB48C2: Set var_88 = Nothing 
  loc_FB48C6: Exit Sub
  loc_FB48C7: var_16C = var_14C
End Sub

Private Sub Fgrid1_UnknownEvent_12 '1400468
  'Data Table: 47ECC8
  Dim var_164 As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim var_188 As String
  Dim unk_47ECCB As Connection15
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
  loc_13FFAEF: var_164 = ((CLng(Me.FGrid1.ColSel) Mod 6) = 0)
  loc_13FFB06: var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFB2D: var_114 = Me.FGrid1.TextMatrix)
  loc_13FFB72: If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13FFB88:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFBA6:   var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13FFBB5:   var_C0 = Me.FGrid1.TextMatrix)
  loc_13FFBCA:   var_164 = 0
  loc_13FFC09:   unk_47ECCB.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13FFC11:   var_104 = var_104.Fields
  loc_13FFC19:   var_164 = var_18C.Item(var_18C)
  loc_13FFC41:   var_174 = CVar(CVar(CLng(Me.FGrid1.Col)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0)) & Space(5) 
  loc_13FFC58:   var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFC76:   var_1EC = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_13FFCB2:   var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13FFCC9:   var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFCE7:   var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_13FFD23:   var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_13FFD3A:   var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFD58:   var_384 = CVar((CLng(Me.FGrid1.Col) + 5)) 'Long
  loc_13FFD92:   Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_13FFE12:   Me.LBLRoomName.Refresh
  loc_13FFE1D: Else
  loc_13FFE42:   var_164 = (((CLng(Me.FGrid1.ColSel) - 1) Mod 6) = 0)
  loc_13FFE59:   var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFE80:   var_114 = Me.FGrid1.TextMatrix)
  loc_13FFEC5:   If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_13FFEF9:     var_F0 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_13FFF08:     var_C0 = Me.FGrid1.TextMatrix)
  loc_13FFF1D:     var_164 = 0
  loc_13FFF5C:     unk_47ECCB.Execute "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'", var_114, -1
  loc_13FFF64:     var_104 = var_104.Fields
  loc_13FFF6C:     var_164 = var_18C.Item(var_18C)
  loc_13FFF81:     var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_13FFF94:     var_174 = var_154 & Space(5) 
  loc_13FFFAB:     var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_13FFFC9:     var_1EC = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1400005:     var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_140001C:     var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140003A:     var_2B8 = CVar((CLng(Me.FGrid1.Col) + 4)) 'Long
  loc_1400074:     Me.LBLRoomName.Caption = CStr(var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_14000DE:     Me.LBLRoomName.Refresh
  loc_14000E9:   Else
  loc_140010E:     var_164 = (((CLng(Me.FGrid1.ColSel) - 2) Mod 6) = 0)
  loc_1400125:     var_D0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_140014C:     var_114 = Me.FGrid1.TextMatrix)
  loc_1400191:     If CBool(CVar(CLng(Me.FGrid1.Col)) And (Trim(CVar(CStr(var_114))) <> vbNullString)) Then
  loc_14001C5:       var_F0 = CVar((CLng(Me.FGrid1.Col) - 2)) 'Long
  loc_14001D4:       var_C0 = Me.FGrid1.TextMatrix)
  loc_14001E9:       var_164 = 0
  loc_140021F:       var_188 = "Select Name from roommast where (LOGSITE_CODE='" & MemVar_1F92078 & "') and TYPE='TB' AND code='" & CStr(var_C0) & "'"
  loc_1400228:       unk_47ECCB.Execute var_188, var_114, -1
  loc_1400230:       var_104 = var_104.Fields
  loc_1400238:       var_164 = var_18C.Item(var_18C)
  loc_140024D:       var_154 = CVar(CVar(CLng(Me.FGrid1.Row)) & Proc_6_38_E68A98(CVar(var_190), var_190, global_68, var_C0, CVar(CLng(Me.FGrid1.Col)))) 'String
  loc_1400260:       var_174 = var_154 & Space(5) 
  loc_1400277:       var_1CC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400295:       var_1EC = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14002D1:       var_260 = var_1EC & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_14002E8:       var_298 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400306:       var_2B8 = CVar((CLng(Me.FGrid1.Col) + 2)) 'Long
  loc_1400342:       var_32C = var_2B8 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & Space(5) 
  loc_1400359:       var_364 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1400377:       var_384 = CVar((CLng(Me.FGrid1.Col) + 3)) 'Long
  loc_14003B1:       Me.LBLRoomName.Caption = CStr(var_384 & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1400431:       Me.LBLRoomName.Refresh
  loc_140043C:     Else
  loc_140044C:       Me.LBLRoomName.Caption = global_68
  loc_140045E:       Me.LBLRoomName.Refresh
  loc_1400466:     End If
  loc_1400466:   End If
  loc_1400466: End If
  loc_1400466: Exit Sub
End Sub

Private Sub CmdChange_UnknownEvent_9 '120949C
  'Data Table: 47ECC8
  Dim var_8C As DataCombo
  Dim var_A0 As String
  Dim var_114 As Variant
  Dim var_D0 As Variant
  Dim unk_47ECCB As Connection15
  Dim var_128 As String
  Dim var_F0 As Variant
  Dim var_88 As Recordset15
  Dim var_12C As Field20
  Dim var_110 As Variant
  Dim var_13C As Variant
  Dim var_1EC As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  loc_120902C: On Error Goto loc_120944C
  loc_1209052: If (CStr(Me.TXT_PKOT.defText) = vbNullString) Then
  loc_1209076:   MsgBox("Fill KOT NO. #", &H40, "Validation", var_F0, var_110)
  loc_120908A:   Set var_8C = Me.TXT_PKOT
  loc_120909B:   Exit Sub
  loc_120909C: End If
  loc_12090BF: If (CStr(Me.TXT_TOTABLE.defText) = vbNullString) Then
  loc_12090E3:   MsgBox("Fill TABLE NO. #", &H40, "Validation", var_F0, var_110)
  loc_12090F7:   Set var_8C = Me.TXT_TOTABLE
  loc_1209108:   Exit Sub
  loc_1209109: End If
  loc_1209127: Set var_114 = Me.TXT_TOTABLE
  loc_120912D: var_D0 = var_114.defText
  loc_1209153: If ((CStr(Me.TXT_PKOT.defText) <> vbNullString) And (CStr(var_D0) <> vbNullString)) Then
  loc_120915F:   unk_47ECCB.BeginTrans var_11C
  loc_120916F:   If (LocalRestType = "Room Service") Then
  loc_12091AD:     var_128 = "SELECT * FROM ROOMOCC RC WHERE DocId='" & CStr(Me.TXT_TOTABLE.BoundText) & "' And (RC.LOGSITE_CODE='" & MemVar_1F92078 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL"
  loc_12091B6:     unk_47ECCB.Execute var_128, var_D0, -1
  loc_120920C:     var_F0 = CVar("Update Kot Set ROOMNO='" & CStr(Me.TXT_TOTABLE.defText) & "',ROOMCAT='") 'String
  loc_1209221:     var_114 = var_114.Fields
  loc_1209229:     var_12C = var_114.Item("RoomCat")
  loc_1209267:     Proc_6_7_F25D88(var_17C, Date, var_F0 & var_12C.Value & "',U_Name1='" & CVar(MemVar_1F920C8) & "',U_EntDt1=", var_260, -1)
  loc_120928E:     var_1EC = var_264 & var_17C & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and DOCID='" 
  loc_12092BE:     unk_47ECCB.Execute CStr(var_1EC & CVar(CStr(Me.TXT_PKOT.BoundText)) & "'"), var_114, TXT_TOTABLE.DispID_8001
  loc_1209303:   Else
  loc_1209325:     var_A0 = CStr(Me.TXT_TOTABLE.defText)
  loc_120933E:     var_110 = CVar("Update Kot Set ROOMNO='" & var_A0 & "',U_Name1='" & MemVar_1F920C8 & "',U_EntDt1=") 'String
  loc_120934F:     Proc_6_7_F25D88(var_F0, Date, var_110, var_1EC)
  loc_1209357:     var_13C = -1 & var_F0 
  loc_1209376:     var_16C = var_F0 & var_12C.Value & "',U_Name1='" & ",U_AE1='E' Where RestCode='" & CVar(LocalRestCode) & "' and Pending ='Y' and (DELFLAG='N' OR DELFLAG IS NULL OR DELFLAG='') and VNO=" 
  loc_12093A6:     unk_47ECCB.Execute CStr(var_16C & CVar(CStr(Me.TXT_PKOT.defText)) & vbNullString), var_12C, TXT_PKOT.DispID_8001
  loc_12093DE:   End If
  loc_12093E4:   unk_47ECCB.CommitTrans
  loc_120940A:   MsgBox("KOT is changed", &H40, "KOT Change", var_F0, var_110)
  loc_120941A: End If
  loc_120941A: Call Proc_226_36_E5C858()
  loc_1209429: Proc_6_93_EAC124(Me.TXT_PKOT)
  loc_120943B: Proc_6_93_EAC124(Me.TXT_TOTABLE)
  loc_1209448: Set var_88 = Nothing
  loc_120944B: Exit Sub
  loc_120944C: ' Referenced from: 120902C
  loc_1209452: unk_47ECCB.RollbackTrans
  loc_120945F: Set var_8C = Err()
  loc_1209465: Call 0.Method_arg_2C (var_A0)
  loc_1209486: MsgBox(CVar(var_A0), &H10, " Table Change Message", var_F0, var_110)
  loc_1209499: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E18CD4
  'Data Table: 47ECC8
  loc_E18CC9: Me.Global.Unload Me
  loc_E18CD1: Exit Sub
End Sub

Private Sub CmdTExit_Click() 'E1B158
  'Data Table: 47ECC8
  loc_E1B14D: Me.Global.Unload Me
  loc_E1B155: Exit Sub
End Sub

Public Function MasterFormExitGet() '47F918
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '47F927
  MasterFormExit = Value
End Sub

Public Function mREFRESHGet() '47F936
  mREFRESHGet = mREFRESH
End Function

Public Sub mREFRESHPut(Value) '47F945
  mREFRESH = Value
End Sub

Public Function LocalRestCodeGet() '47F954
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '47F963
  LocalRestCode = Value
End Sub

Public Function RestNameGet() '47F972
  RestNameGet = RestName
End Function

Public Sub RestNamePut(Value) '47F981
  RestName = Value
End Sub

Public Function LocalRestTypeGet() '47F990
  LocalRestTypeGet = LocalRestType
End Function

Public Sub LocalRestTypePut(Value) '47F99F
  LocalRestType = Value
End Sub

Public Property Let PTableNo(vNewValue) 'E1036C
  'Data Table: 47ECC8
  loc_E10364: global_76 = vNewValue
  loc_E10368: Exit Sub
End Sub

Public Property Get PTableNo() 'E10444
  'Data Table: 47ECC8
  loc_E10438: var_88 = global_76
  loc_E1043B: PTableNo = 
End Sub

Public Property Get OpenMode() 'E04F40
  'Data Table: 47ECC8
  loc_E04F39: OpenMode = global_80
End Sub

Public Property Let OpenMode(vNewValue) 'E0251C
  'Data Table: 47ECC8
  loc_E02516: global_80 = vNewValue
  loc_E02519: Exit Sub
End Sub

Public Property Get TVacantColor() 'E10CFC
  'Data Table: 47ECC8
  loc_E10CF0: var_94 = global_84 'Variant
  loc_E10CF4: TVacantColor = 
End Sub

Public Property Let TVacantColor(vNewValue) 'E1105C
  'Data Table: 47ECC8
  loc_E11054: global_84 = vNewValue
  loc_E11058: Exit Sub
End Sub

Public Sub Proc_226_33_14E21B0
  'Data Table: 47ECC8
  Dim var_96 As Integer
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_47ECCB As Connection15
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
  loc_14E1412: var_96 = 0
  loc_14E143C: unk_47ECCB.Execute "Select Kotyn from Depart where Code='" & LocalRestCode & "'", var_C8, -1
  loc_14E1447: Set var_9C = var_CC
  loc_14E1469: var_CC = var_9C.Fields
  loc_14E1479: var_C8 = var_CC.Item("KotYN").Value
  loc_14E1493: If (var_C8 = "Y") Then
  loc_14E14AA:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E14C2:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E14CB:   unk_47ECCB.Execute var_F8, var_C8, -1
  loc_14E14D6:   Set var_88 = var_CC
  loc_14E1501:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E1508:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_14E1522:   unk_47ECCB.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E152D:   Set var_A0 = var_CC
  loc_14E1544: Else
  loc_14E1558:   var_A4 = "SELECT RoomMast.Code as code,RoomMast.Name,RestCode,D.Name as RestName,D.ShortName,RoomMast.SITE_CODE,RoomMast.LOGSITE_CODE,D.KOTYn From RoomMast Left Join Depart D ON RoomMast.RestCode=D.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F92078
  loc_14E1570:   var_F8 = var_A4 & "' or  RoomMast.LOGSITE_CODE='HO') and RoomMast.type='TB' and RoomMast.RestCode='" & LocalRestCode & "' ORDER BY  RoomMast.code"
  loc_14E1579:   unk_47ECCB.Execute var_F8, var_C8, -1
  loc_14E1584:   Set var_88 = var_CC
  loc_14E15AF:   var_A4 = "Select  T.Code as Code,T.Name,AA.WAITERNAME,T.RestCode From RoomMast T LEFT JOIN (SELECT DISTINCT ROOMNO,KOT.DOCID,WAITER,WAITER.NAME AS WAITERNAME FROM KOT LEFT JOIN WAITER ON (WAITER.CODE=KOT.WAITER) WHERE KOT.RestCode='" & LocalRestCode
  loc_14E15B6:   var_A8 = var_A4 & "' And  RoomCat='REST' and RoomType='TB' And Pending='Y' AND VOIDYN='N' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y')AS AA ON (AA.ROOMNO=T.CODE) WHERE RESTCODE='"
  loc_14E15D0:   unk_47ECCB.Execute var_A8 & LocalRestCode & "' order by T.Code", var_C8, -1
  loc_14E15DB:   Set var_A0 = var_CC
  loc_14E15EF: End If
  loc_14E15F1: var_8A = 9
  loc_14E160B: If (Me.Recordset15.RecordCount > 0) Then
  loc_14E163B:   If ((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))) > 0) Then
  loc_14E16A8:     var_C8 = CVar(((Val(CStr(Me.Recordset15.RecordCount)) - CDbl((CLng(Val(CStr(Me.Recordset15.RecordCount))) Mod CLng((var_8A - 1))))) / CDbl((var_8A - 1)))) 'Double
  loc_14E16C9:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E16E1:   Else
  loc_14E1710:     var_C8 = CVar((CDbl(var_88.RecordCount) / CDbl((var_8A - 1)))) 'Double
  loc_14E1731:     var_8C = CInt(((Val(CStr(Format(var_C8, "00"))) + CDbl(1)) * CDbl(6)))
  loc_14E1740:   End If
  loc_14E1743: Else
  loc_14E1746: Else
  loc_14E1748:   var_90 = 1
  loc_14E174D:   var_8E = 0
  loc_14E1763:   Me.FGrid1.Rows = CVar(CLng(var_8A))
  loc_14E177E:   Me.FGrid1.Cols = CVar(CLng(var_8C))
  loc_14E1798:   Call Proc_226_34_1120050((var_8A - 1), (var_8C - 1), var_8E, var_90, var_8C, 1, 1, var_8C)
  loc_14E17B0:   Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E17CB:   Me.FGrid1.Col = CVar(CLng(var_8E))
  loc_14E17E2:   Me.FGrid1.Redraw = False
  loc_14E180F:   For var_128 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_94 = var_128 'Integer
  loc_14E1819:     var_B8 = CVar(CLng(var_94)) 'Long
  loc_14E181E:     var_138 = &H320
  loc_14E182B:     Set var_CC = Me.FGrid1
  loc_14E1831:     LateIdCallSt
  loc_14E183F:   Next var_128 'Integer
  loc_14E1844:   ' Referenced from:   14E217B
  loc_14E1856:   If Not(Me.FGrid1.EOF) Then
  loc_14E185B:     var_90 = 1
  loc_14E185E:     ' Referenced from:   14E2178
  loc_14E1868:     If (var_90 <= (var_8A - 1)) Then
  loc_14E186D:       var_96 = &HFF
  loc_14E187F:       For var_14C = (var_8C - 6) To (var_8C - 1):   var_94 = var_14C 'Integer
  loc_14E188F:         If (var_94 = (var_8C - 6)) Then
  loc_14E18A5:           var_F0 = Me.FGrid1.Col
  loc_14E18DE:           var_110 = CVar(Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("Code")), CVar(CLng(var_F0)), CVar(CLng(var_90)))) 'String
  loc_14E18E6:           Set var_174 = Me.FGrid1
  loc_14E18EC:           LateIdCallSt
  loc_14E191F:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E192E:           Me.FGrid1.Col = "Code"
  loc_14E193D:         End If
  loc_14E1947:         If (var_94 = (var_8C - 5)) Then
  loc_14E1961:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E196A:             Me.Recordset15.MoveFirst
  loc_14E196F:           End If
  loc_14E19A1:           var_A8 = (var_8C - 6) & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code='", var_174, var_110)
  loc_14E19B2:           Me.Recordset15.Filter = CVar(CStr(Me.Recordset15.RecordCount) & "'")
  loc_14E19DF:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E1A16:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) = &HFF) Then
  loc_14E1A2C:               var_260 = Me.FGrid1.Col
  loc_14E1A71:               var_F0 = (Me.var_260.Fields.Item("ShortName").Value + "(")
  loc_14E1AA7:               var_194 = (CVar(CStr(Me.Recordset15.RecordCount) & "'") + CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)))
  loc_14E1AB0:               var_1A4 = (var_194 + ")")
  loc_14E1AB9:               var_1B4 = (var_1A4 + vbCrLf)
  loc_14E1AE8:               var_1DC = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("WaiterName")), var_1B4, "*", CVar(CLng(var_260)))) 'String
  loc_14E1AEB:               var_1EC = (CVar(CLng(var_90)) + var_1DC)
  loc_14E1AF4:               var_20C = (var_1EC + vbCrLf)
  loc_14E1AFD:               var_22C = (var_20C + "Vacant")
  loc_14E1B06:               var_2B0 = CVar(CStr(var_96 & var_22C)) 'String
  loc_14E1B0E:               Set var_2C4 = Me.FGrid1
  loc_14E1B14:               LateIdCallSt
  loc_14E1B5D:               Me.FGrid1.Filter = 0
  loc_14E1B62:             End If
  loc_14E1B62:           End If
  loc_14E1B7B:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1B8A:           Me.FGrid1.Col = 0
  loc_14E1B99:         End If
  loc_14E1BA3:         If (var_94 = (var_8C - 4)) Then
  loc_14E1BBA:           var_92 = CInt(CLng(Me.FGrid1.Col))
  loc_14E1BD6:           Me.FGrid1.Row = CVar(CLng(var_90))
  loc_14E1BF7:           Call Proc_226_35_FEE354(CByte(CLng(Me.FGrid1.Col)), var_92, var_2C4)
  loc_14E1C15:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E1C36:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1C45:           Me.FGrid1.Col = CVar(CLng(var_92))
  loc_14E1C54:         End If
  loc_14E1C5E:         If (var_94 = (var_8C - 3)) Then
  loc_14E1C78:           If (Me.Recordset15.RecordCount > 0) Then
  loc_14E1C81:             Me.Recordset15.MoveFirst
  loc_14E1C86:           End If
  loc_14E1CC9:           Me.Recordset15.Filter = CVar(var_2B0 & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), "Code ='") & "'")
  loc_14E1CF6:           If (Me.Recordset15.AbsolutePosition > 0) Then
  loc_14E1D2D:             If (IsNull(CVar(Me.Recordset15.Fields.Item("WaiterName"))) <> &HFF) Then
  loc_14E1D30:               ' Referenced from:   14E1FCB
  loc_14E1D88:               var_110 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Code")), Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_14E1DA0:               If (var_90 = var_110) Then
  loc_14E1DBA:                 If (Me.Recordset15.AbsolutePosition = 1) Then
  loc_14E1DC1:                   var_E0 = CVar(CLng(var_90)) 'Long
  loc_14E1DD0:                   var_F0 = Me.FGrid1.Col
  loc_14E1E09:                   var_110 = CVar(Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("WaiterName")), CVar(CLng(var_F0)))) 'String
  loc_14E1E11:                   Set var_174 = Me.FGrid1
  loc_14E1E17:                   LateIdCallSt
  loc_14E1E34:                 Else
  loc_14E1E64:                   var_F0 = Me.FGrid1.TextMatrix)
  loc_14E1E8C:                   var_174 = Me.var_F0.Fields.Item("WaiterName")
  loc_14E1EC6:                   If (InStr(var_174, 1, Proc_6_38_E68A98(CVar(var_174), CStr(var_F0), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90))), 0) = 0) Then
  loc_14E1ECD:                     var_170 = CVar(CLng(var_90)) 'Long
  loc_14E1F15:                     var_F0 = Me.FGrid1.TextMatrix)
  loc_14E1F55:                     var_F4 = Proc_6_38_E68A98(CVar(Me.var_F0.Fields.Item("WaiterName")), CStr(var_F0) & ",", CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)))
  loc_14E1F59:                     var_194 = CVar(CVar(CLng(Me.FGrid1.Col)) & var_F4) 'String
  loc_14E1F61:                     Set var_1BC = Me.FGrid1
  loc_14E1F67:                     LateIdCallSt
  loc_14E1F92:                   End If
  loc_14E1F92:                 End If
  loc_14E1F98:                 var_A0.MoveNext
  loc_14E1FB4:                 If (var_A0.AbsolutePosition < 0) Then
  loc_14E1FC6:                   Me.Recordset15.Filter = 0
  loc_14E1FCB:                 End If
  loc_14E1FCB:                 GoTo loc_14E1D30
  loc_14E1FCE:               End If
  loc_14E1FCE:             End If
  loc_14E1FCE:           End If
  loc_14E1FE7:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E1FF6:           Me.FGrid1.Col = 0
  loc_14E2005:         End If
  loc_14E200F:         If (var_94 = (var_8C - 2)) Then
  loc_14E205B:           var_110 = CVar(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("KotYN")), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(var_90)), var_1BC)) 'String
  loc_14E2063:           Set var_174 = Me.FGrid1
  loc_14E2069:           LateIdCallSt
  loc_14E209C:           var_B8 = CVar((CLng(Me.FGrid1.Col) + 1)) 'Long
  loc_14E20AB:           Me.FGrid1.Col = "KotYN"
  loc_14E20BA:         End If
  loc_14E20C4:         If (var_94 = (var_8C - 1)) Then
  loc_14E20E0:           var_B8 = CVar((CLng(Me.FGrid1.Col) - 5)) 'Long
  loc_14E20EF:           Me.FGrid1.Col = "KotYN"
  loc_14E20FE:         End If
  loc_14E2101:       Next var_14C 'Integer
  loc_14E210C:       var_90 = (var_90 + 1)
  loc_14E2119:       If (var_90 > (var_8A - 1)) Then
  loc_14E2135:         var_B8 = CVar((CLng(Me.FGrid1.Col) + 6)) 'Long
  loc_14E2144:         Me.FGrid1.Col = "KotYN"
  loc_14E2153:       End If
  loc_14E2159:       var_88.MoveNext
  loc_14E2172:       If (var_88.EOF = &HFF) Then
  loc_14E2175:         GoTo loc_14E217E
  loc_14E2178:       End If
  loc_14E2178:       GoTo loc_14E185E
  loc_14E217B:     End If
  loc_14E217B:     GoTo loc_14E1844
  loc_14E217E:     ' Referenced from:   14E2175
  loc_14E217E:   End If
  loc_14E217E: End If
  loc_14E218C: Me.FGrid1.Redraw = True
  loc_14E2199: Set var_88 = Nothing
  loc_14E21A1: Set var_A0 = Nothing
  loc_14E21A9: Set var_9C = Nothing
  loc_14E21AC: Exit Sub
End Sub

Public Sub Proc_226_34_1120050(arg_C, arg_10) '1120050
  'Data Table: 47ECC8
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_FC As String
  Dim arg_10 As Integer
  loc_111FCF7: Me.FGrid1.Row = 0
  loc_111FD12: var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111FD17: var_CC = 0
  loc_111FD24: Set var_E0 = Me.FGrid1
  loc_111FD2A: LateIdCallSt
  loc_111FD3C: ' Referenced from: 111FF93
  loc_111FD42: If (arg_10 < 5) Then
  loc_111FD45:   GoTo loc_111FF96
  loc_111FD48: End If
  loc_111FD4C: Set var_E4 = Me.FGrid1
  loc_111FD5D: For var_E8 = arg_10 To (arg_10 - 3) Step &HFF: var_86 = var_E8 'Integer
  loc_111FD67:   var_98 = CVar(CLng(var_86)) 'Long
  loc_111FD6C:   var_CC = 0
  loc_111FD79:   Set var_AC = Me.FGrid1
  loc_111FD7F:   LateIdCallSt
  loc_111FD8D: Next var_E8 'Integer
  loc_111FDA1: For var_EC = (arg_10 - 5) To (arg_10 - 4): var_86 = var_EC 'Integer
  loc_111FDB1:   If (var_86 = (arg_10 - 5)) Then
  loc_111FDB8:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FDBD:     var_CC = 0
  loc_111FDCA:     Set var_AC = Me.FGrid1
  loc_111FDD0:     LateIdCallSt
  loc_111FDDF:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FDE4:     var_CC = 1
  loc_111FDEE:     Set var_AC = Me.FGrid1
  loc_111FDF4:     LateIdCallSt
  loc_111FE12:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111FE1B:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111FE20:     var_FC = "Table No"
  loc_111FE2A:     Set var_E0 = Me.FGrid1
  loc_111FE30:     LateIdCallSt
  loc_111FE42:   End If
  loc_111FE4C:   If (var_86 = (arg_10 - 4)) Then
  loc_111FE53:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FE58:     var_CC = &H4B0
  loc_111FE65:     Set var_AC = Me.FGrid1
  loc_111FE6B:     LateIdCallSt
  loc_111FE7A:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FE7F:     var_CC = 1
  loc_111FE89:     Set var_AC = Me.FGrid1
  loc_111FE8F:     LateIdCallSt
  loc_111FEAD:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111FEB6:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111FEBB:     var_FC = "Status"
  loc_111FEC5:     Set var_E0 = Me.FGrid1
  loc_111FECB:     LateIdCallSt
  loc_111FEDD:   End If
  loc_111FEE7:   If (var_86 = (arg_10 - 3)) Then
  loc_111FEEE:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FEF3:     var_CC = &H12C
  loc_111FF00:     Set var_AC = Me.FGrid1
  loc_111FF06:     LateIdCallSt
  loc_111FF15:     var_98 = CVar(CLng(var_86)) 'Long
  loc_111FF20:     var_CC = CVar(CInt(4)) 'Integer
  loc_111FF28:     Set var_AC = Me.FGrid1
  loc_111FF2E:     LateIdCallSt
  loc_111FF4C:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_111FF55:     var_CC = CVar(CLng(var_86)) 'Long
  loc_111FF5A:     var_FC = vbNullString
  loc_111FF64:     Set var_E0 = Me.FGrid1
  loc_111FF6A:     LateIdCallSt
  loc_111FF7C:   End If
  loc_111FF7F: Next var_EC 'Integer
  loc_111FF86: Set var_E4 = Nothing 
  loc_111FF90: arg_10 = (arg_10 - 6)
  loc_111FF93: GoTo loc_111FD3C
  loc_111FF96: ' Referenced from: 111FD45
  loc_111FFBD: For var_110 = 2 To CInt((CLng(Me.FGrid1.Cols) - 2)) Step 6: var_86 = var_110 'Integer
  loc_111FFD6:   Me.FGrid1.Col = CVar(CLng(var_86))
  loc_111FFE6:   For var_114 = 1 To arg_C: var_88 = var_114 'Integer
  loc_111FFFF:     Me.FGrid1.Row = CVar(CLng(var_88))
  loc_112001A:     Me.FGrid1.CellBackColor = &HE69839
  loc_1120035:     Me.FGrid1.CellForeColor = &HFFFF
  loc_1120040:   Next var_114 'Integer
  loc_1120048: Next var_110 'Integer
  loc_112004D: Exit Sub
End Sub

Public Sub Proc_226_35_FEE354(arg_C) 'FEE354
  'Data Table: 47ECC8
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_FEE187: var_A8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FEE196: var_C8 = CVar(CLng((CInt(arg_C) - 1))) 'Long
  loc_FEE1EA: If (Left(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))), 1) = "*") Then
  loc_FEE206:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE215:   Me.FGrid1.Col = var_A8
  loc_FEE240:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEE264:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE273:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEE29E:   Me.FGrid1.CellBackColor = CVar(CLng(TVacantColor))
  loc_FEE2AC: Else
  loc_FEE2C5:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE2D4:   Me.FGrid1.Col = CVar(CLng(TVacantColor))
  loc_FEE2F6:   Me.FGrid1.CellBackColor = &H404040
  loc_FEE317:   var_A8 = CVar((CLng(Me.FGrid1.Col) - 1)) 'Long
  loc_FEE326:   Me.FGrid1.Col = &H404040
  loc_FEE348:   Me.FGrid1.CellBackColor = &H404040
  loc_FEE350: End If
  loc_FEE350: Exit Sub
  loc_FEE351: CopyBytes -2817
End Sub

Public Sub Proc_226_36_E5C858
  'Data Table: 47ECC8
  loc_E5C81D: Me.LblKOTTable.Caption = vbNullString
  loc_E5C835: Me.TXT_PKOT.BoundText = vbNullString
  loc_E5C84D: Me.TXT_TOTABLE.BoundText = vbNullString
  loc_E5C855: Exit Sub
End Sub
