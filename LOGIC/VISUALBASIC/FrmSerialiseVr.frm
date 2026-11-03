VERSION 5.00
Begin VB.Form FrmSerialiseVr
  Caption = "Voucher Serialisation"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmSerialiseVr.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8700
  ClientHeight = 4935
  LockControls = -1  'True
  Begin TextBox LblSiteCode
    ForeColor = &HC00000&
    Left = 8175
    Top = 2055
    Width = 420
    Height = 285
    TabIndex = 9
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin DataCombo TxtVrType
    Left = 4305
    Top = 2490
    Width = 4290
    Height = 360
    TabIndex = 6
  End
  Begin TextBox lblVNo
    ForeColor = &HC00000&
    Left = 4305
    Top = 2055
    Width = 1215
    Height = 285
    TabIndex = 1
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox LblVPrefix
    ForeColor = &HC00000&
    Left = 6435
    Top = 2055
    Width = 660
    Height = 285
    TabIndex = 0
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin BtnEnh CmdExit
    Left = 6330
    Top = 5115
    Width = 1500
    Height = 765
    TabIndex = 11
  End
  Begin BtnEnh Command1
    Index = 1
    Left = 4770
    Top = 5115
    Width = 1500
    Height = 765
    TabIndex = 12
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
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
  Begin Label LblSrNo
    Caption = "Sr.No."
    ForeColor = &H800000&
    Left = 3645
    Top = 2085
    Width = 585
    Height = 240
    TabIndex = 8
    Alignment = 1 'Right Justify
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
  Begin Label LblSite
    Caption = "SiteCode"
    ForeColor = &H800000&
    Left = 7215
    Top = 2085
    Width = 870
    Height = 240
    TabIndex = 7
    Alignment = 1 'Right Justify
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
  Begin Label LBLStatus
    ForeColor = &HFFFF&
    Left = 3435
    Top = 2970
    Width = 5100
    Height = 240
    TabIndex = 5
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
  Begin Label Label1
    Caption = "Please make sure that you have A Backup of 'Database'"
    BackColor = &HFFC0C0&
    ForeColor = &HC0&
    Left = 3840
    Top = 3465
    Width = 5040
    Height = 840
    TabIndex = 4
    Alignment = 2 'Center
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblPrefix
    Caption = "VPrefix"
    ForeColor = &H800000&
    Left = 5625
    Top = 2085
    Width = 705
    Height = 240
    TabIndex = 3
    Alignment = 1 'Right Justify
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
  Begin Label Label2
    Caption = "Vr.Type"
    ForeColor = &H800000&
    Left = 3405
    Top = 2535
    Width = 735
    Height = 240
    TabIndex = 2
    Alignment = 1 'Right Justify
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

Attribute VB_Name = "FrmSerialiseVr"

Private global_52 As Integer

Private Sub Form_Load() 'EEB108
  'Data Table: 43840C
  Dim var_6B02 As Integer
  loc_EEB055: Me.LblVPrefix.Text = MemVar_1F9212C
  loc_EEB06A: Me.LblSiteCode.Text = MemVar_1F92070
  loc_EEB07E: Me.lblVNo.Enabled = False
  loc_EEB092: Me.LblVPrefix.Enabled = False
  loc_EEB0A6: Me.LblSiteCode.Enabled = False
  loc_EEB0B5: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_EEB0C4: var_98 = "V_TYPE"
  loc_EEB0EE: Proc_6_92_EF7064("select V_Type,Description from Voucher_Type where Category='FA' And Site_Code='" & MemVar_1F92070 & "'", Me.TxtVrType)
  loc_EEB105: Exit Sub
  loc_EEB106: var_6B02 = "Description"
End Sub

Private Sub Form_Resize() 'E73EE8
  'Data Table: 43840C
  loc_E73E92: Call 0.Method_arg_50 (var_88)
  loc_E73EA4: Me.LblFormCaption.Caption = var_88
  loc_E73EBD: Me.LblFormCaption.Left = CDbl(0)
  loc_E73ECB: Call 0.Method_arg_100 (var_90)
  loc_E73EDD: Me.LblFormCaption.Width = var_90
  loc_E73EE5: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19868
  'Data Table: 43840C
  loc_E1985D: Me.Global.Unload Me
  loc_E19865: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 'E4C4C8
  'Data Table: 43840C
  loc_E4C4A6: Set var_88 = Me.Command1
  loc_E4C4AC: Call 0.Method_Command1_UnknownEvent_90 (1, var_8C)
  loc_E4C4B4: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_E4C4C0: Call Proc_211_4_162D2BC()
  loc_E4C4C5: Exit Sub
End Sub

Public Sub Proc_211_4_162D2BC
  'Data Table: 43840C
  Dim var_BC As Variant
  Dim unk_43841F As Connection15
  Dim var_F4 As Variant
  Dim var_C0 As String
  Dim var_F8 As String
  Dim var_100 As String
  Dim var_104 As String
  Dim var_108 As String
  Dim var_B8 As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_13C As Variant
  Dim var_16C As String
  Dim var_1A8 As Recordset15
  Dim var_1A0 As Variant
  Dim var_1BC As String
  Dim var_4F8 As Double
  Dim var_19C As Variant
  Dim var_1E8 As Variant
  Dim var_218 As Variant
  Dim var_27C As Variant
  Dim var_33C As Variant
  Dim var_40C As Variant
  Dim var_474 As Variant
  Dim var_9E As Variant
  Dim var_4F0 As Fields15
  Dim var_444 As Variant
  Dim var_724 As Variant
  Dim var_9FC As Variant
  loc_162BFA4: On Error Goto loc_162D221
  loc_162BFAB: Set var_C4 = Me.TxtVrType
  loc_162BFB1: var_C0 = "Vr.Type"
  loc_162BFD2: If (Proc_6_27_EA565C(var_C4) = 0) Then
  loc_162BFE2:   Set var_BC = Me.Command1
  loc_162BFE8:   Call 0.Method_Proc_211_4_162D2BC0 (1, var_C4)
  loc_162BFF0:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_162BFFC:   Exit Sub
  loc_162BFFD: End If
  loc_162C00C: Me.TxtVrType.Enabled = False
  loc_162C02A: unk_43841F.Execute "delete from LedgerMerge", var_F4, -1
  loc_162C04B: unk_43841F.Execute "delete from LedgerMMerge", var_F4, -1
  loc_162C063: Me.LBLStatus.Caption = "Ledger Serialisation"
  loc_162C075: Me.LBLStatus.Refresh
  loc_162C087: var_F4 = Me.TxtVrType.BoundText
  loc_162C08F: var_9C = CStr(var_F4)
  loc_162C0A3: Set var_BC = Me.lblVNo
  loc_162C0A9: var_BC.Text = CStr(1)
  loc_162C0E4: var_104 = "Select DISTINCT v_Prefix from LEDGERM WHERE V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='" & MemVar_1F92070
  loc_162C0F4: unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162C0FF: Set var_B8 = var_BC
  loc_162C117: ' Referenced from: 162C1C9
  loc_162C126: If Not(var_B8.EOF) Then
  loc_162C159:   var_BC = var_B8.Fields
  loc_162C169:   var_F4 = var_BC.Item("v_Prefix").Value
  loc_162C17A:   var_13C = CVar("UPDATE Voucher_Prefix SET Start_Srl_No=0 WHERE V_Type='" & var_9C & "' AND PREFIX='") & var_F4 & "' And Site_Code='" 
  loc_162C19B:   unk_43841F.Execute CStr(var_13C & CVar(MemVar_1F92070) & "'"), var_19C, -1
  loc_162C1C4:   var_B8.MoveNext
  loc_162C1C9:   GoTo loc_162C117
  loc_162C1CC: End If
  loc_162C203: var_108 = "select * from LedgerM where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='" & MemVar_1F92070 & "' order by V_Date"
  loc_162C20C: unk_43841F.Execute var_108, var_F4, -1
  loc_162C217: Set var_90 = var_BC
  loc_162C258: var_100 = "select docId as searchcode,Ledger.* from Ledger where V_Type='" & var_9C & "' And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='"
  loc_162C26F: unk_43841F.Execute var_100 & MemVar_1F92070 & "' Order by V_Date,DocId,V_No", var_F4, -1
  loc_162C27A: Set var_8C = var_BC
  loc_162C29B: var_1A4 = Me.Recordset15.RecordCount
  loc_162C2A9: If (var_1A4 > 0) Then
  loc_162C2B2:   Me.Recordset15.MoveFirst
  loc_162C2B7:   ' Referenced from: 162D010
  loc_162C2C9:   If Not(Me.Recordset15.EOF) Then
  loc_162C2D2:     Set var_1A8 = var_90 
  loc_162C30F:     Me.LBLStatus.Caption = CStr(var_1A8.Fields.Item("V_DATE").Value)
  loc_162C32D:     Me.LBLStatus.Refresh
  loc_162C347:     var_BC = var_1A8.Fields
  loc_162C357:     var_F4 = var_BC.Item("V_Type").Value
  loc_162C3B3:     var_A8 = Proc_6_86_12EDF28(CStr(var_F4), CStr(var_1A8.Fields.Item("V_DATE").Value), Me.lblVNo, MemVar_1F92074, Me.LblVPrefix, var_BC)
  loc_162C429:     var_1BC = "UPDATE VOUCHER_Prefix SET Start_Srl_No=" & Me.lblVNo.Text & " WHERE V_Type='" & var_9C & "' and Prefix='" & Me.LblVPrefix.Text
  loc_162C447:     unk_43841F.Execute var_1BC & "' And Site_Code='" & MemVar_1F92070 & "'", var_F4, -1
  loc_162C481:     var_BC = var_1A8.Fields
  loc_162C4A8:     var_1A0 = var_1A8.Fields
  loc_162C4E9:     var_4F8 = Val(Me.lblVNo.Text)
  loc_162C512:     Proc_6_7_F25D88(var_26C, CVar(var_1A8.Fields.Item("V_DATE")), var_4F8, var_1A0, var_BC)
  loc_162C53D:     Proc_6_17_EAA2B0(var_2D4, CVar(var_1A8.Fields.Item("Narration")), var_1A0, var_BC)
  loc_162C5DD:     Proc_6_7_F25D88(var_444, CVar(var_1A8.Fields.Item("Trf_Date")), var_BC)
  loc_162C61D:     var_C0 = "Insert into LedgerMMerge (DocId,Site_Code,V_Type,v_prefix,V_No,V_Date,Narration,U_Name,U_EntDt,U_AE,Trf_Date,LogSite_Code) Values ('" & var_A8
  loc_162C63E:     var_16C = "','"
  loc_162C64D:     var_1E8 = CVar(var_C0 & "','") & var_BC.Item("Site_Code").Value & "','" & var_1A0.Item("V_Type").Value & var_16C & CVar(Me.LblVPrefix.Text) 
  loc_162C661:     var_218 = var_1E8 & "'," & CVar(var_4F8) 
  loc_162C691:     var_33C = var_218 & "," & var_26C & "," & var_2D4 & ",'" & var_1A8.Fields.Item("U_Name").Value 
  loc_162C6BA:     var_40C = var_33C & "','" & var_1A8.Fields.Item("U_EntDt").Value & "','" & var_1A8.Fields.Item("U_AE").Value & "'," 
  loc_162C6CA:     var_474 = var_40C & var_444 & ",'" 
  loc_162C6E8:     unk_43841F.Execute CStr(var_474 & var_1A8.Fields.Item("LogSite_Code").Value & "')"), var_4EC, -1
  loc_162C770:     Me.Recordset15.MoveFirst
  loc_162C7C9:     Me.Recordset15.Find CStr("SearchCode ='" & var_1A8.Fields.Item("DocID").Value & "'"), 0, 1
  loc_162C80F:     var_A4 = CStr(Me.Recordset15.Fields.Item("DocID").Value)
  loc_162C81E:     var_9E = 1
  loc_162C821:     ' Referenced from: 162CFBF
  loc_162C823:     If &HFF Then
  loc_162C866:       If (CVar(var_A4) = Me.Recordset15.Fields.Item("DocID").Value) Then
  loc_162C8A0:         var_F4 = Me.Recordset15.Fields.Item("V_Type").Value
  loc_162C8BF:         var_4F8 = Val(Me.lblVNo.Text)
  loc_162C915:         Proc_6_7_F25D88(var_218, CVar(Me.Recordset15.Fields.Item("V_DATE")), var_4F8, var_9E)
  loc_162C96D:         Proc_6_39_E7C810(var_2D4, CVar(Me.Recordset15.Fields.Item("AmtDr")), var_16C)
  loc_162C99B:         Proc_6_39_E7C810(var_33C, CVar(Me.Recordset15.Fields.Item("AmtCr")), var_4F0)
  loc_162C9F3:         Proc_6_17_EAA2B0(var_40C, CVar(Me.Recordset15.Fields.Item("Chq_No")))
  loc_162CA21:         Proc_6_7_F25D88(var_474, CVar(Me.Recordset15.Fields.Item("Chq_Date")))
  loc_162CA4F:         Proc_6_7_F25D88(var_4EC, CVar(Me.Recordset15.Fields.Item("clg_date")))
  loc_162CA7D:         Proc_6_17_EAA2B0(var_554, CVar(Me.Recordset15.Fields.Item("Narration")))
  loc_162CAAB:         Proc_6_17_EAA2B0(var_5BC, CVar(Me.Recordset15.Fields.Item("U_Name")))
  loc_162CAD9:         Proc_6_7_F25D88(var_624, CVar(Me.Recordset15.Fields.Item("U_EntDt")))
  loc_162CB07:         Proc_6_17_EAA2B0(var_68C, CVar(Me.Recordset15.Fields.Item("U_AE")))
  loc_162CB35:         Proc_6_39_E7C810(var_6F4, CVar(Me.Recordset15.Fields.Item("SQty")))
  loc_162CB63:         Proc_6_39_E7C810(var_75C, CVar(Me.Recordset15.Fields.Item("PQty")))
  loc_162CB91:         Proc_6_17_EAA2B0(var_7C4, CVar(Me.Recordset15.Fields.Item("AgRefNo")))
  loc_162CBBF:         Proc_6_7_F25D88(var_82C, CVar(Me.Recordset15.Fields.Item("VTIME")))
  loc_162CBED:         Proc_6_17_EAA2B0(var_894, CVar(Me.Recordset15.Fields.Item("Mth_Year")))
  loc_162CC1B:         Proc_6_17_EAA2B0(var_8FC, CVar(Me.Recordset15.Fields.Item("Emp_Code")))
  loc_162CC49:         Proc_6_17_EAA2B0(var_964, CVar(Me.Recordset15.Fields.Item("GroupCode")))
  loc_162CC77:         Proc_6_17_EAA2B0(var_9CC, CVar(Me.Recordset15.Fields.Item("GroupNature")))
  loc_162CCA5:         Proc_6_17_EAA2B0(var_A34, CVar(Me.Recordset15.Fields.Item("LogSite_Code")))
  loc_162CCBE:         var_F8 = "Insert Into LedgerMerge (V_PREFIX,DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode,AmtDr,AmtCr,ContraSub,Chq_No,Chq_Date,Clg_Date,Narration,U_Name,U_EntDt,U_AE,SQty,PQty,AgRefNo,VTime,Mth_Year,Emp_Code,GroupCode,GroupNature,LogSite_Code) Values ('" & Me.LblVPrefix.Text
  loc_162CCEC:         var_12C = CVar(var_F8 & "','" & var_A8 & "'," & CStr(var_9E) & ",'") & var_F4 
  loc_162CCF5:         var_13C = var_12C & "'," 
  loc_162CD30:         var_27C = var_13C & CVar(var_4F8) & ",'" & Me.Recordset15.Fields.Item("Site_Code").Value & "'," & var_218 & ",'" & Me.Recordset15.Fields.Item("subcode").Value 
  loc_162CD79:         var_444 = var_27C & "'," & var_2D4 & "," & var_33C & ",'" & Me.Recordset15.Fields.Item("contrasub").Value & "'," & var_40C & "," 
  loc_162CDE9:         var_724 = var_444 & var_474 & "," & var_4EC & "," & var_554 & "," & var_5BC & "," & var_624 & "," & var_68C & "," & var_6F4 & "," 
  loc_162CE59:         var_9FC = var_724 & var_75C & "," & var_7C4 & "," & var_82C & "," & var_894 & "," & var_8FC & "," & var_964 & "," & var_9CC & "," 
  loc_162CE77:         unk_43841F.Execute CStr(var_9FC & var_A34 & ")"), var_A84, -1
  loc_162CF8E:       Else
  loc_162CF91:       Else
  loc_162CF97:         Me.Recordset15.MoveNext
  loc_162CFA2:         var_9E = (var_9E + 1)
  loc_162CFB9:         If (Me.Recordset15.EOF = &HFF) Then
  loc_162CFBC:           GoTo loc_162CFC2
  loc_162CFBF:         End If
  loc_162CFBF:         GoTo loc_162C821
  loc_162CFC2:         ' Referenced from:   162CFBC
  loc_162CFC2:       End If
  loc_162CFC2:     End If
  loc_162CFC4:     Set var_1A8 = Nothing 
  loc_162CFE5:     var_F8 = CStr((CDbl(Me.lblVNo.Text) + CDbl(1)))
  loc_162CFEC:     Set var_C4 = Me.lblVNo
  loc_162CFF2:     var_C4.Text = var_F8
  loc_162D00B:     Me.Recordset15.MoveNext
  loc_162D010:     GoTo loc_162C2B7
  loc_162D013:   End If
  loc_162D01C:   unk_43841F.BeginTrans var_1A4
  loc_162D026:   global_52 = 1
  loc_162D059:   var_104 = "Delete from LedgerM where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='" & MemVar_1F92070
  loc_162D069:   unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162D0AC:   var_100 = "insert into LedgerM select * from LedgerMMerge where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='"
  loc_162D0C3:   unk_43841F.Execute var_100 & MemVar_1F92070 & "'", var_F4, -1
  loc_162D10D:   var_104 = "Delete from Ledger where V_Type in ('" & var_9C & "') And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='" & MemVar_1F92070
  loc_162D11D:   unk_43841F.Execute var_104 & "'", var_F4, -1
  loc_162D14B:   var_C0 = "insert into Ledger select * from LedgerMerge where V_Type in ('" & var_9C
  loc_162D177:   unk_43841F.Execute var_C0 & "') And V_Prefix='" & MemVar_1F9212C & "' And Site_Code='" & MemVar_1F92070 & "'", var_F4, -1
  loc_162D197:   unk_43841F.CommitTrans
  loc_162D1A1:   global_52 = 0
  loc_162D1A4: End If
  loc_162D1B1: Me.LBLStatus.Caption = "Serialization Completed"
  loc_162D1C3: Me.LBLStatus.Refresh
  loc_162D1D8: Set var_BC = Me.Command1
  loc_162D1DE: Call 0.Method_Proc_211_4_162D2BC0 (1, var_C4, True, global_52, var_BC, var_BC, var_BC)
  loc_162D1E6: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_BC)
  loc_162D200: Me.TxtVrType.Enabled = True
  loc_162D20D: Set var_8C = Nothing
  loc_162D215: Set var_98 = Nothing
  loc_162D21D: Set var_90 = Nothing
  loc_162D220: Exit Sub
  loc_162D221: ' Referenced from: 162BFA4
  loc_162D22E: Set var_BC = Me.Command1
  loc_162D234: Call 0.Method_Proc_211_4_162D2BC0 (1, var_C4, True, global_52)
  loc_162D23C: Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_9E)
  loc_162D256: Me.TxtVrType.Enabled = True
  loc_162D267: If (global_52 = 1) Then
  loc_162D270:   unk_43841F.RollbackTrans
  loc_162D275: End If
  loc_162D27D: Set var_BC = Err()
  loc_162D283: Call 0.Method_arg_2C (var_C0, var_A88)
  loc_162D2A4: MsgBox(CVar(var_C0), &H40, "Information", var_12C, var_13C)
  loc_162D2B7: Exit Sub
  loc_162D2B8: Exit Sub
End Sub
