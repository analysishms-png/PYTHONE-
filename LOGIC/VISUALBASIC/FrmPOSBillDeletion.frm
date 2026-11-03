VERSION 5.00
Begin VB.Form FrmPOSBillDeletion
  Caption = "POS Bill Deletion Entry"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 795
  ClientWidth = 10980
  ClientHeight = 9645
  Begin CommandButton CmdSerialize
    Caption = "Serialize Bills"
    Left = 12135
    Top = 600
    Width = 1950
    Height = 525
    Visible = 0   'False
    TabIndex = 20
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 9270
    Width = 10980
    Height = 375
    Visible = 0   'False
    TabIndex = 19
  End
  Begin TextBox TxtSearch
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 8415
    Top = 2250
    Width = 2055
    Height = 240
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    HideSelection = 0   'False
    Appearance = 0 'Flat
  End
  Begin CheckBox Check1
    Caption = "All"
    BackColor = &HFF8080&
    ForeColor = &HFFFFFF&
    Left = 1800
    Top = 2505
    Width = 915
    Height = 195
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 2070
    Width = 3345
    Height = 285
    TabIndex = 3
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1755
    Width = 3345
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1440
    Width = 1635
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3420
    Top = 1125
    Width = 1635
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin MSHFlexGrid GridSel
    Left = 1710
    Top = 2430
    Width = 6495
    Height = 5985
    TabIndex = 4
  End
  Begin DataGrid DGRestType
    Left = 8310
    Top = 6585
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin MSFlexGrid FGPoint
    Left = 8460
    Top = 2505
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 11
  End
  Begin DataGrid DGPayType
    Left = 7995
    Top = 6225
    Width = 4995
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin BtnEnh CmdExit
    Left = 9375
    Top = 1185
    Width = 1200
    Height = 870
    TabIndex = 16
  End
  Begin BtnEnh CmdFill
    Left = 6915
    Top = 1185
    Width = 1275
    Height = 870
    TabIndex = 17
  End
  Begin BtnEnh CmdDelete
    Left = 8175
    Top = 1185
    Width = 1200
    Height = 870
    TabIndex = 18
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = -15
    Top = 15
    Width = 180
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
  Begin Label Label1
    BackColor = &H80FFFF&
    ForeColor = &H80&
    Left = 1740
    Top = 8535
    Width = 6360
    Height = 345
    TabIndex = 14
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
  Begin Label LblName
    Caption = "Payment mode"
    Index = 3
    ForeColor = &HC00000&
    Left = 1935
    Top = 2085
    Width = 1440
    Height = 240
    TabIndex = 8
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
  Begin Label LblName
    Caption = "Outlet Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 1935
    Top = 1755
    Width = 1185
    Height = 240
    TabIndex = 7
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
  Begin Label LblName
    Caption = "From Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1935
    Top = 1125
    Width = 990
    Height = 240
    TabIndex = 6
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
  Begin Label LblName
    Caption = "To Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 1935
    Top = 1425
    Width = 735
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
End

Attribute VB_Name = "FrmPOSBillDeletion"

Private global_80 As Long
Private global_52 As Integer
Private global_84 As Long

Private Sub CmdSerialize_Click() '12C0488
  'Data Table: 499474
  Dim var_9C As String
  Dim var_8C As Long
  Dim var_90 As Variant
  Dim var_94 As TextBox
  Dim unk_499487 As Connection15
  Dim var_98 As Recordset15
  Dim var_190 As Fields15
  Dim var_194 As Field20
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_13C As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_22C As Variant
  Dim var_86 As Integer
  loc_12BFE78: On Error Goto loc_12C046E
  loc_12BFE86: Set var_90 = Me.Txt
  loc_12BFE8C: Call 0.Method_CmdSerialize_Click0 (CInt(2))
  loc_12BFE9D: Set var_98 = var_94
  loc_12BFEB5: If (Proc_6_27_EA565C(var_98, "Outlet") = 0) Then
  loc_12BFEB8:   Exit Sub
  loc_12BFEB9: End If
  loc_12BFECD: var_DC = "Start Bill No."
  loc_12BFEE3: var_9C = InputBox("Please Give Start Bill No.", var_DC, var_FC, var_11C, var_13C, var_15C, var_17C)
  loc_12BFEEC: var_8C = CLng(Val(var_9C))
  loc_12BFF0C: If (var_8C < 1) Then
  loc_12BFF22:   var_BC = "Please Input Valid Bill No."
  loc_12BFF28:   MsgBox(var_BC, &H10, var_DC, var_FC, var_11C)
  loc_12BFF38:   Exit Sub
  loc_12BFF39: End If
  loc_12BFF45: Me.CmdSerialize.Enabled = False
  loc_12BFF56: Set var_90 = Me.CmdFill
  loc_12BFF5C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_12BFF71: Me.Label1.Caption = "Serialization..."
  loc_12BFF83: Me.Label1.Refresh
  loc_12BFFBB: Set var_90 = Me.Txt
  loc_12BFFC1: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_BC, -1, var_98)
  loc_12BFFC9: var_190 = var_94.Tag
  loc_12BFFF0: unk_499487.Execute 0 & var_9C & "'And Logsite_Code='" & MemVar_1F92078 & "'", var_194, var_DC
  loc_12BFFF8: "B" = var_98.Fields
  loc_12C0000: var_94 = var_190.Item(var_8C)
  loc_12C0008:  = var_194.Value
  loc_12C001F: global_88 = Proc_6_38_E68A98(var_DC)
  loc_12C0074: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, "Select max(Vno) From Sale1 Where VDate Between ", var_24C, -1)
  loc_12C0094: Proc_6_7_F25D88(var_11C, MemVar_1F920FC, var_98 & var_BC & " And ", var_190)
  loc_12C00A5: var_15C = 0 & var_11C & " And RestCode='" 
  loc_12C00B7: Set var_90 = Me.Txt
  loc_12C00BD: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C00C5: var_15C = var_94.Tag
  loc_12C0110: unk_499487.Execute CStr(var_194 & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "'"), var_26C, 
  loc_12C0118:  = var_98.Fields
  loc_12C0120:  = var_190.Item()
  loc_12C0128:  = var_194.Value
  loc_12C0133: Proc_6_39_E7C810(var_27C)
  loc_12C0184: unk_499487.BeginTrans var_280
  loc_12C019F: unk_499487.Execute "Drop Table TempPosDel", var_BC, -1
  loc_12C01C0: unk_499487.Execute "CREATE TABLE [dbo].[TempPosDel]([AutoId] [int] IDENTITY(1,1) NOT NULL,[OldDocId] [varchar](21) NOT NULL CONSTRAINT [DF_TempPosDel_OldDocId_1__75]  DEFAULT (''),[OldVno] [int] NULL CONSTRAINT [DF_TempPosDel_OldVno_1__75]  DEFAULT (''),[OldVdate] [datetime] NULL,[NewDocId] [varchar](21) NULL CONSTRAINT [DF_TempPosDel_NewDocId_1__75]  DEFAULT (''),[NewVno] [int] NULL CONSTRAINT [DF_TempPosDel_NewVno_1__75]  DEFAULT (''), CONSTRAINT [PK_TempPosDel] PRIMARY KEY CLUSTERED ([OldDocId] ASC) ON [PRIMARY]) ON [PRIMARY]", var_BC, -1
  loc_12C01E8: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1, var_98)
  loc_12C0208: Proc_6_7_F25D88(var_11C, MemVar_1F920FC, var_90 & var_BC & " And ", var_90)
  loc_12C0219: var_15C = &HFF & var_11C & " And RestCode='" 
  loc_12C0231: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C0239: var_15C = var_94.Tag
  loc_12C0276: var_22C = CLng(var_27C) & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by VDate,Vno" 
  loc_12C0284: unk_499487.Execute CStr(var_22C), var_26C, 
  loc_12C02B4: Call Proc_179_30_112C8CC()
  loc_12C02C5: global_80 = (var_8C - 1)
  loc_12C02DE: unk_499487.Execute "Drop Table TempPosDel", var_BC, -1
  loc_12C02FF: unk_499487.Execute "CREATE TABLE [dbo].[TempPosDel]([AutoId] [int] IDENTITY(1,1) NOT NULL,[OldDocId] [varchar](21) NOT NULL CONSTRAINT [DF_TempPosDel_OldDocId_1__75]  DEFAULT (''),[OldVno] [int] NULL CONSTRAINT [DF_TempPosDel_OldVno_1__75]  DEFAULT (''),[OldVdate] [datetime] NULL,[NewDocId] [varchar](21) NULL CONSTRAINT [DF_TempPosDel_NewDocId_1__75]  DEFAULT (''),[NewVno] [int] NULL CONSTRAINT [DF_TempPosDel_NewVno_1__75]  DEFAULT (''), CONSTRAINT [PK_TempPosDel] PRIMARY KEY CLUSTERED ([OldDocId] ASC) ON [PRIMARY]) ON [PRIMARY]", var_BC, -1
  loc_12C0327: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, "Insert into TempPosDel(OldDocId,OldVno,OldVdate) Select DocId,Vno,Vdate from Sale1 Where VDate Between ", var_24C, -1)
  loc_12C0347: Proc_6_7_F25D88(var_11C, MemVar_1F920FC, var_98 & var_BC & " And ")
  loc_12C0358: var_15C = Me.Txt & var_11C & " And RestCode='" 
  loc_12C0370: Call 0.Method_CmdSerialize_Click0 (CInt(2), var_94, var_9C)
  loc_12C0378: var_15C = var_94.Tag
  loc_12C03B5: var_22C = Me.Txt & CVar(var_9C) & "' And VType='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by VDate,Vno" 
  loc_12C03C3: unk_499487.Execute CStr(var_22C), CLng(var_27C), 
  loc_12C03F3: Call Proc_179_30_112C8CC()
  loc_12C03FE: unk_499487.CommitTrans
  loc_12C0405: var_86 = 0
  loc_12C0415: Me.Label1.Caption = "Serialization Completed."
  loc_12C0427: Me.Label1.Refresh
  loc_12C043B: Me.CmdSerialize.Enabled = True
  loc_12C044F: Me.CmdSerialize.Visible = False
  loc_12C045F: Set var_90 = Me.CmdFill
  loc_12C0465: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_12C046D: Exit Sub
  loc_12C046E: ' Referenced from: 12BFE78
  loc_12C0474: If (var_86 = &HFF) Then
  loc_12C047D:   unk_499487.RollbackTrans
  loc_12C0482: End If
  loc_12C0482: Proc_6_60_E62BC4(var_86)
  loc_12C0487: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E15894
  'Data Table: 499474
  loc_E15889: Me.Global.Unload Me
  loc_E15891: Exit Sub
  loc_E15892: ArrayRebase1Var
End Sub

Private Sub FGPoint_UnknownEvent_9 'E649B0
  'Data Table: 499474
  loc_E64980: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_E64983:   Call DGRestType_UnknownEvent_9()
  loc_E64988: End If
  loc_E649A4: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_E649A7:   Call DGPayType_UnknownEvent_9()
  loc_E649AC: End If
  loc_E649AC: Exit Sub
End Sub

Private Sub Check1_Click() 'F68A7C
  'Data Table: 499474
  Dim var_9C As Variant
  loc_F6895F: If (CLng(Me.Check1.Value) = 0) Then
  loc_F68970:   Me.GridSel.Enabled = True
  loc_F68997:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F689AD:     Me.GridSel.Row = 1
  loc_F689C8:     Me.GridSel.Col = 0
  loc_F689D0:   End If
  loc_F689D3: Else
  loc_F689E2:   Me.GridSel.Enabled = False
  loc_F68A09:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F68A1F:     Me.GridSel.Row = 0
  loc_F68A3A:     Me.GridSel.Col = 0
  loc_F68A5B:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F68A6A:     Me.GridSel.RowSel = 0
  loc_F68A79:   End If
  loc_F68A79: End If
  loc_F68A79: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E22C40
  'Data Table: 499474
  loc_E22C26: If (KeyCode = &HD) Then
  loc_E22C37:   Proc_303_0_FB9B68("	")
  loc_E22C3F: End If
  loc_E22C3F: Exit Sub
End Sub

Private Sub Form_Load() 'F92710
  'Data Table: 499474
  Dim var_88 As Variant
  Dim var_B4 As String
  Dim unk_499487 As Connection15
  loc_F925A8: On Error Goto loc_F92707
  loc_F925C1: Proc_6_23_DFBA28(Me, 0)
  loc_F925D0: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_F925E8: Me.GridSel.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_F925F8: Set var_88 = Me.Label1
  loc_F925FE: var_88.BackColor = CLng(MemVar_1F921B0)
  loc_F92621: var_B4 = "SELECT Code,Name,RestType,DiscApp FROM Depart Where  (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_F9262A: unk_499487.Execute var_B4, var_C4, -1
  loc_F9263B: Set global_68 = var_88
  loc_F92659: CVarUnk
  loc_F9265E: VerifyVarObj
  loc_F9266A: LateIdStAd
  loc_F92693: var_B4 = "SELECT Code,Name,PayType FROM RevMast Where PayType In('Cash','Member','Complementary') And (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND FieldType='P' ORDER BY Name"
  loc_F9269C: unk_499487.Execute var_B4, var_C4, -1
  loc_F926CB: CVarUnk
  loc_F926D0: VerifyVarObj
  loc_F926D6: Set var_88 = Me.DGPayType
  loc_F926DC: LateIdStAd
  loc_F926F3: Set var_88 = Me.CmdDelete
  loc_F926F9: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_F92701: Call Proc_179_23_11BC878(var_88, Me.DGRestType, var_88, var_88)
  loc_F92706: Exit Sub
  loc_F92707: ' Referenced from: F925A8
  loc_F92707: Proc_6_60_E62BC4(global_68, var_88)
  loc_F9270C: Exit Sub
End Sub

Private Sub Form_Resize() 'E703F0
  'Data Table: 499474
  loc_E7039A: Call 0.Method_arg_50 (var_88)
  loc_E703AC: Me.LblFormCaption.Caption = var_88
  loc_E703C5: Me.LblFormCaption.Left = CDbl(0)
  loc_E703D3: Call 0.Method_arg_100 (var_90)
  loc_E703E5: Me.LblFormCaption.Width = var_90
  loc_E703ED: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E5F7B8
  'Data Table: 499474
  loc_E5F777: Set global_64 = Nothing
  loc_E5F789: Set global_76 = Nothing
  loc_E5F79B: Set global_68 = Nothing
  loc_E5F7AD: Set global_72 = Nothing
  loc_E5F7B4: Exit Sub
  loc_E5F7B5: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'FFE3E4
  'Data Table: 499474
  Dim var_D4 As Variant
  Dim var_94 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_13C As MSHFlexGrid
  Dim var_150 As String
  loc_FFE1F4: On Error Goto loc_FFE3DB
  loc_FFE208: var_94 = MemVar_1F920C8
  loc_FFE218: var_B4 = "HTW_SYSTEM"
  loc_FFE222: var_E4 = (CLng(KeyCode) = &H70) And (Ucase(var_94) = var_B4)
  loc_FFE239: var_108 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FFE24A: Set var_13C = Me.GridSel
  loc_FFE25B: var_150 = CStr(var_13C.TextMatrix))
  loc_FFE284: If CBool(CVar(CLng(2)) And (var_150 <> vbNullString)) Then
  loc_FFE291:   Set var_174 = New RSSaleBill
  loc_FFE2A5:   Set var_E8 = Me.Label2
  loc_FFE2AB:   Call 0.Method_Form_KeyDown0 (CInt(2), var_13C, var_150)
  loc_FFE2B3:   var_108 = RSSaleBill.Label2.Tag
  loc_FFE2C2:   var_174.LocalRestCode = CVar(var_150)
  loc_FFE2DE:   Set var_E8 = var_13C(CInt(2))
  loc_FFE2E4:   Call 0.Method_Form_KeyDown0 (var_150)
  loc_FFE2EC:   var_E4 = var_174.TextBox.Text
  loc_FFE2F7:   Form.Caption = var_150
  loc_FFE311:   Form.Show var_94, var_B4
  loc_FFE329:   var_94 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FFE331:   var_D4 = CVar(CLng(2)) 'Long
  loc_FFE34B:   var_E4 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_FFE352:   Call var_174.SEARCHBACK
  loc_FFE36B: Else
  loc_FFE3A8:   If CBool((Shift = 2) And (Ucase(Chr(CLng(KeyCode))) = "H")) Then
  loc_FFE3B7:     Me.CmdSerialize.Visible = True
  loc_FFE3BF:   End If
  loc_FFE3BF: End If
  loc_FFE3D3: Proc_6_88_FE81B4(Me, KeyCode, Shift, 0)
  loc_FFE3DB: ' Referenced from: FFE1F4
  loc_FFE3DB: Proc_6_60_E62BC4(var_E4, var_D4)
  loc_FFE3E0: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A '1014B90
  'Data Table: 499474
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  Dim var_301 As Variant
  loc_1014992: If (KeyCode = &HD) Then
  loc_10149A3:   Proc_303_0_FB9B68("	")
  loc_10149AB: End If
  loc_10149CA: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_10149CD:   Exit Sub
  loc_10149CE: End If
  loc_10149E2: var_A4 = Me.GridSel.Col
  loc_1014A05: var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1014A45: If (CVar(CLng(5)) And (CStr(Me.GridSel.TextMatrix)) = "Cash")) Then
  loc_1014A58:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1014A72:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1014A8D:   var_C8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1014A92:   var_E8 = 0
  loc_1014AC4:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1014AC9:   var_19C = 0
  loc_1014B04:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1014B0C:   Set var_1D0 = Me.GridSel
  loc_1014B12:   LateIdCallSt
  loc_1014B4C:   var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1014B5E:   ReDim Preserve global_60(0 To CLng(var_86))
  loc_1014B86:   global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1014B8D: End If
  loc_1014B8D: Exit Sub
  loc_1014B8E: var_301 = CVar(var_86) 'Integer
End Sub

Private Sub GridSel_UnknownEvent_E 'E5CDA8
  'Data Table: 499474
  loc_E5CD83: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5CD86:   Exit Sub
  loc_E5CD87: End If
  loc_E5CD9E: global_52 = CInt(CLng(Me.GridSel.Row))
  loc_E5CDA7: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1069BC0
  'Data Table: 499474
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_106996D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_52 = 0)) Then
  loc_1069970:   Exit Sub
  loc_1069971: End If
  loc_10699CD: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_10699D0:   Exit Sub
  loc_10699D1: End If
  loc_1069A00: For var_BA = global_52 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1069A19:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1069A34:   Me.GridSel.Col = 0
  loc_1069A4F:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1069A57:   var_EC = CVar(CLng(5)) 'Long
  loc_1069A8A:   If (CStr(Me.GridSel.TextMatrix)) = "Cash") Then
  loc_1069A9D:     Me.GridSel.CellFontName = "WINGDINGS"
  loc_1069AB7:     Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1069AC3:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1069AC8:     var_EC = 0
  loc_1069AEB:     var_160 = CVar(CLng(var_88)) 'Long
  loc_1069AF0:     var_180 = 0
  loc_1069B2B:     var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1069B33:     Set var_A0 = Me.GridSel
  loc_1069B39:     LateIdCallSt
  loc_1069B6B:     var_86 = CInt((UBound(global_60, 1) + 1))
  loc_1069B7D:     ReDim Preserve global_60(0 To CLng(var_86))
  loc_1069BA5:     global_60(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1069BAC:   End If
  loc_1069BAF: Next var_BA 'Integer
  loc_1069BB9: global_52 = 0
  loc_1069BBC: Exit Sub
  loc_1069BBD: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12E2D14
  'Data Table: 499474
  Dim var_92 As Integer
  Dim var_8C As TextBox
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_88 As DataGrid
  loc_12E2660: On Error Goto loc_12E2CCF
  loc_12E266D: Set var_88 = Me.Txt
  loc_12E2673: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12E2681: Proc_6_74_E226B0(var_8C)
  loc_12E268D: Call Proc_179_29_EBD3A8(var_8C)
  loc_12E2695: var_92 = Index
  loc_12E26A0: If (var_92 = CInt(0)) Then
  loc_12E26B0:   Set var_88 = Me.Txt
  loc_12E26B6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E26D1:   Set var_90 = Me.Txt
  loc_12E26D7:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E26DF:   var_9C.SelLength = Len(var_8C.Text)
  loc_12E26FF:   Set var_88 = Me.Txt
  loc_12E2705:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E271F:   Set var_90 = Me.Txt
  loc_12E2725:   Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E272D:   var_9C.Tag = var_8C.Text
  loc_12E2743: Else
  loc_12E274B:   If (var_92 = CInt(1)) Then
  loc_12E275B:     Set var_88 = Me.Txt
  loc_12E2761:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E277C:     Set var_90 = Me.Txt
  loc_12E2782:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E278A:     var_9C.SelLength = Len(var_8C.Text)
  loc_12E27AA:     Set var_88 = Me.Txt
  loc_12E27B0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E27B8:     var_98 = var_8C.Text
  loc_12E27CA:     Set var_90 = Me.Txt
  loc_12E27D0:     Call 0.Method_Txt_GotFocus0 (Index, var_9C)
  loc_12E27D8:     var_9C.Tag = var_98
  loc_12E27EE:   Else
  loc_12E27F6:     If (var_92 = CInt(2)) Then
  loc_12E2807:       Set var_88 = Me.Txt
  loc_12E280D:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E282C:       Me.DGRestType.Left = CVar(var_8C.Left)
  loc_12E2848:       Set var_90 = Me.Txt
  loc_12E284E:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_9C)
  loc_12E2869:       Set var_88 = Me.Txt
  loc_12E286F:       Call 0.Method_Txt_GotFocus0 (CInt(2), var_8C)
  loc_12E2887:       var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E2896:       Me.DGRestType.Top = CVar(var_8C.Left)
  loc_12E28B7:       Me.Filter = 0
  loc_12E28C8:       Me.Filter = "RestType<>'Kitchen'"
  loc_12E28E4:       If (Me.RecordCount > 0) Then
  loc_12E28F2:         Set var_8C = Me.FGPoint
  loc_12E290A:         Proc_6_137_1193554(Me.DGRestType, global_68, Index)
  loc_12E2918:       End If
  loc_12E2966:       Set var_88 = Me.Txt
  loc_12E296C:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E2974:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E298C:       If (var_8C Or (var_98 = vbNullString)) Then
  loc_12E298F:         Exit Sub
  loc_12E2990:       End If
  loc_12E299D:       Set var_88 = Me.Txt
  loc_12E29A3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E29AB:       var_98 = var_8C.Text
  loc_12E29BD:       var_B0 = "Name"
  loc_12E29D4:       var_9C = Me.Fields.Item(var_B0)
  loc_12E29F8:       If CBool(CVar(var_98) <> var_9C.Value) Then
  loc_12E2A01:         Me.MoveFirst
  loc_12E2A24:         Set var_88 = Me.Txt
  loc_12E2A2A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E2A32:         0 = var_8C.Text
  loc_12E2A4B:         Me.Find 1 & var_98 & "'", var_B0, var_92
  loc_12E2A60:       End If
  loc_12E2A73:       Me.DGRestType.Tag = CVar(CStr(Index))
  loc_12E2A81:     Else
  loc_12E2A89:       If (var_92 = CInt(3)) Then
  loc_12E2A9A:         Set var_88 = Me.Txt
  loc_12E2AA0:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E2ABF:         Me.DGPayType.Left = CVar(var_8C.Left)
  loc_12E2ADB:         Set var_90 = Me.Txt
  loc_12E2AE1:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_9C)
  loc_12E2AFC:         Set var_88 = Me.Txt
  loc_12E2B02:         Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_12E2B1A:         var_B0 = CVar(((var_8C.Top + var_9C.Height) + CDbl(&H1E))) 'Single
  loc_12E2B29:         Me.DGPayType.Top = CVar(var_8C.Left)
  loc_12E2B52:         If (Me.RecordCount > 0) Then
  loc_12E2B60:           Set var_8C = Me.FGPoint
  loc_12E2B78:           Proc_6_137_1193554(Me.DGPayType, global_72)
  loc_12E2B86:         End If
  loc_12E2BD4:         Set var_88 = Me.Txt
  loc_12E2BDA:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_12E2BE2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12E2BFA:         If (Index Or (var_98 = vbNullString)) Then
  loc_12E2BFD:           Exit Sub
  loc_12E2BFE:         End If
  loc_12E2C0B:         Set var_88 = Me.Txt
  loc_12E2C11:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12E2C19:         var_98 = var_8C.Text
  loc_12E2C2B:         var_B0 = "Name"
  loc_12E2C66:         If CBool(CVar(var_98) <> Me.Fields.Item(var_B0).Value) Then
  loc_12E2C6F:           Me.MoveFirst
  loc_12E2C92:           Set var_88 = Me.Txt
  loc_12E2C98:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, "Name ='")
  loc_12E2CA0:           0 = var_8C.Text
  loc_12E2CB9:           Me.Find 1 & var_98 & "'", var_B0, var_8C
  loc_12E2CCE:         End If
  loc_12E2CCE:       End If
  loc_12E2CCE:     End If
  loc_12E2CCE:   End If
  loc_12E2CCE: End If
  loc_12E2CCE: Exit Sub
  loc_12E2CCF: ' Referenced from: 12E2660
  loc_12E2CD7: Set var_88 = Err()
  loc_12E2CDD: Call 0.Method_arg_2C (var_98)
  loc_12E2CFE: MsgBox(CVar(var_98), &H40, "Information", var_FC, var_124)
  loc_12E2D11: Exit Sub
  loc_12E2D12: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10CE3F8
  'Data Table: 499474
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_10CE10E: If (CLng(Shift) = &H1B) Then
  loc_10CE111:   Call Proc_179_29_EBD3A8()
  loc_10CE116:   Exit Sub
  loc_10CE117: End If
  loc_10CE11A: var_88 = KeyCode
  loc_10CE125: If (var_88 = CInt(2)) Then
  loc_10CE145:   Set var_9C = Me.FGPoint
  loc_10CE150:   Set var_98 = Nothing
  loc_10CE17E:   Proc_6_69_134A198(Me.DGRestType, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_10CE1ED:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CE213:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyCode, Me.FGPoint, 1)
  loc_10CE221:   End If
  loc_10CE224: Else
  loc_10CE22C:   If (var_88 = CInt(3)) Then
  loc_10CE24C:     Set var_9C = Me.FGPoint
  loc_10CE257:     Set var_98 = Nothing
  loc_10CE289:     Proc_6_69_134A198(Me.DGPayType, Me.Txt, CInt(3), global_72, Shift, 0, 1)
  loc_10CE2F8:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_10CE2FF:       Set var_98 = Me.DGPayType
  loc_10CE31E:       Proc_6_138_106D6F8(var_98, global_72, KeyCode, Me.FGPoint, var_98, var_9C)
  loc_10CE32C:     End If
  loc_10CE32C:   End If
  loc_10CE32C: End If
  loc_10CE367: If ((CBool(Me.DGRestType.Visible) = 0) And (CBool(Me.DGPayType.Visible) = 0)) Then
  loc_10CE391:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And ((KeyCode = CInt(0)) Or (KeyCode = CInt(1)))) Then
  loc_10CE39A:     Call Txt_Validate(KeyCode)
  loc_10CE3A5:     If (var_86 = &HFF) Then
  loc_10CE3A8:       Exit Sub
  loc_10CE3A9:     End If
  loc_10CE3AF:     Proc_6_75_E527CC(Shift, arg_14, var_86, 0)
  loc_10CE3B7:   Else
  loc_10CE3CC:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10CE3D5:       Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_10CE3DD:     Else
  loc_10CE3E7:       If (CLng(Shift) = &H26) Then
  loc_10CE3F0:         Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_10CE3F5:       End If
  loc_10CE3F5:     End If
  loc_10CE3F5:   End If
  loc_10CE3F5: End If
  loc_10CE3F5: Exit Sub
  loc_10CE3F6: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F8E63C
  'Data Table: 499474
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_94 As Variant
  loc_F8E4DF: Proc_6_58_E054C0(arg_10)
  loc_F8E4EA: Proc_6_133_E7EF78(var_94)
  loc_F8E4F3: arg_10 = CInt(var_94)
  loc_F8E4FC: var_96 = KeyAscii
  loc_F8E507: If (var_96 = CInt(2)) Then
  loc_F8E526:   If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_F8E553:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_F8E585:     Proc_6_138_106D6F8(Me.DGRestType, global_68, KeyAscii, Me.FGPoint)
  loc_F8E593:   End If
  loc_F8E596: Else
  loc_F8E59E:   If (var_96 = CInt(3)) Then
  loc_F8E5BD:     If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_F8E5F5:       Proc_6_68_129FB34(Me.DGPayType, Me.Txt, KeyAscii, global_72, arg_10)
  loc_F8E62B:       Proc_6_138_106D6F8(Me.DGPayType, global_72, KeyAscii, Me.FGPoint, "Name")
  loc_F8E639:     End If
  loc_F8E639:   End If
  loc_F8E639: End If
  loc_F8E639: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4EF04
  'Data Table: 499474
  loc_E4EEE2: Set var_88 = Me.Txt
  loc_E4EEE8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4EEF6: Proc_6_73_E22704(var_8C)
  loc_E4EF02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1165580
  'Data Table: 499474
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_98 As TextBox
  loc_11651D0: On Error Goto loc_1165539
  loc_11651D6: var_86 = Cancel
  loc_11651E1: If (var_86 = CInt(0)) Then
  loc_11651EE:   Set var_8C = Me.Txt
  loc_11651F4:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165214:   Set var_98 = Me.Txt
  loc_116521A:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1165222:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1165238: Else
  loc_1165240:   If (var_86 = CInt(1)) Then
  loc_116524D:     Set var_8C = Me.Txt
  loc_1165253:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165273:     Set var_98 = Me.Txt
  loc_1165279:     Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_1165281:     var_9C.Text = Proc_6_33_1512840(var_90)
  loc_1165297:   Else
  loc_116529F:     If (var_86 = CInt(2)) Then
  loc_11652AF:       Set var_8C = Me.Txt
  loc_11652B5:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11652D4:       If (var_90.Text <> vbNullString) Then
  loc_1165312:         Set var_94 = Me.Txt
  loc_1165318:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165320:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1165353:         var_90 = Me.Fields.Item("Code")
  loc_1165371:         Set var_94 = Me.Txt
  loc_1165377:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_116537F:         var_98.Tag = CStr(var_90.Value)
  loc_1165398:       Else
  loc_11653A5:         Set var_8C = Me.Txt
  loc_11653AB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11653B3:         var_90.Text = vbNullString
  loc_11653CC:         Set var_8C = Me.Txt
  loc_11653D2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_11653DA:         var_90.Tag = vbNullString
  loc_11653E6:       End If
  loc_11653E9:     Else
  loc_11653F1:       If (var_86 = CInt(3)) Then
  loc_1165401:         Set var_8C = Me.Txt
  loc_1165407:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165426:         If (var_90.Text <> vbNullString) Then
  loc_1165464:           Set var_94 = Me.Txt
  loc_116546A:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1165472:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_11654A5:           var_90 = Me.Fields.Item("Code")
  loc_11654B6:           var_A0 = CStr(var_90.Value)
  loc_11654C3:           Set var_94 = Me.Txt
  loc_11654C9:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_11654D1:           var_98.Tag = var_A0
  loc_11654EA:         Else
  loc_11654F7:           Set var_8C = Me.Txt
  loc_11654FD:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1165505:           var_90.Text = vbNullString
  loc_116551E:           Set var_8C = Me.Txt
  loc_1165524:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116552C:           var_90.Tag = vbNullString
  loc_1165538:         End If
  loc_1165538:       End If
  loc_1165538:     End If
  loc_1165538:   End If
  loc_1165538: End If
  loc_1165538: Exit Sub
  loc_1165539: ' Referenced from: 11651D0
  loc_1165541: Set var_8C = Err()
  loc_1165547: Call 0.Method_arg_2C (var_A0)
  loc_1165568: MsgBox(CVar(var_A0), &H40, "Information", var_F0, var_110)
  loc_116557B: Exit Sub
  loc_116557C: Exit Sub
  loc_116557D: var_86 = 
End Sub

Private Sub DGRestType_UnknownEvent_9 'F39D04
  'Data Table: 499474
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39BFB: Me.DGRestType.Visible = False
  loc_F39C1A: If (Me.RecordCount > 0) Then
  loc_F39C59:   Set var_B4 = Me.Txt
  loc_F39C5F:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F39C67:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F39C9A:   var_B0 = Me.Fields.Item("Code")
  loc_F39CB9:   Set var_B4 = Me.Txt
  loc_F39CBF:   Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2), var_B8)
  loc_F39CC7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F39CDD: End If
  loc_F39CE8: Set var_A8 = Me.Txt
  loc_F39CEE: Call 0.Method_DGRestType_UnknownEvent_90 (CInt(2))
  loc_F39CF6: var_B0.SetFocus
  loc_F39D02: Exit Sub
End Sub

Private Sub DGRestType_UnknownEvent_1F 'E6F734
  'Data Table: 499474
  loc_E6F6F2: Proc_6_153_E91194(Me.DGRestType, arg_14)
  loc_E6F709: Set var_8C = Me.FGPoint
  loc_E6F725: Proc_6_138_106D6F8(Me.DGRestType, global_68, CInt(2))
  loc_E6F733: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_9 'F39BA4
  'Data Table: 499474
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39A9B: Me.DGPayType.Visible = False
  loc_F39ABA: If (Me.RecordCount > 0) Then
  loc_F39AF9:   Set var_B4 = Me.Txt
  loc_F39AFF:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39B07:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F39B3A:   var_B0 = Me.Fields.Item("Code")
  loc_F39B59:   Set var_B4 = Me.Txt
  loc_F39B5F:   Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3), var_B8)
  loc_F39B67:   var_B8.Tag = CStr(var_B0.Value)
  loc_F39B7D: End If
  loc_F39B88: Set var_A8 = Me.Txt
  loc_F39B8E: Call 0.Method_DGPayType_UnknownEvent_90 (CInt(3))
  loc_F39B96: var_B0.SetFocus
  loc_F39BA2: Exit Sub
End Sub

Private Sub DGPayType_UnknownEvent_1F 'E6FCFC
  'Data Table: 499474
  loc_E6FCBA: Proc_6_153_E91194(Me.DGPayType, arg_14)
  loc_E6FCD1: Set var_8C = Me.FGPoint
  loc_E6FCED: Proc_6_138_106D6F8(Me.DGPayType, global_72, CInt(3))
  loc_E6FCFB: Exit Sub
End Sub

Private Sub CmdFill_UnknownEvent_9 '1191BAC
  'Data Table: 499474
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As Variant
  loc_11917CB: Set var_88 = Me.Txt
  loc_11917D1: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11917FA: If (Proc_6_27_EA565C(var_8C, "From Date") = 0) Then
  loc_11917FD:   Exit Sub
  loc_11917FE: End If
  loc_119180C: Set var_88 = Me.Txt
  loc_1191812: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191836: Set var_90 = Me.Txt
  loc_119183C: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_98, var_9C)
  loc_1191844: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_1191865: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_1191881:   MsgBox("FromDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_119189C:   Set var_88 = Me.Txt
  loc_11918A2:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11918AA:   var_8C.SetFocus
  loc_11918B6:   Exit Sub
  loc_11918B7: End If
  loc_11918C2: Set var_88 = Me.Txt
  loc_11918C8: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_11918F1: If (Proc_6_27_EA565C(var_8C, "To Date") = 0) Then
  loc_11918F4:   Exit Sub
  loc_11918F5: End If
  loc_1191903: Set var_88 = Me.Txt
  loc_1191909: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_8C)
  loc_119192D: Set var_90 = Me.Txt
  loc_1191933: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98, var_9C)
  loc_119193B: (CDate(var_8C.Text) > MemVar_1F920FC) = var_98.Text
  loc_119195C: If (var_8C Or (CDate(var_9C) < MemVar_1F920F4)) Then
  loc_1191978:   MsgBox("ToDate must be with in Financial Year", &H10, var_DC, var_FC, var_11C)
  loc_1191993:   Set var_88 = Me.Txt
  loc_1191999:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0))
  loc_11919A1:   var_8C.SetFocus
  loc_11919AD:   Exit Sub
  loc_11919AE: End If
  loc_11919BC: Set var_90 = Me.Txt
  loc_11919C2: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(1), var_98)
  loc_11919DD: Set var_88 = Me.Txt
  loc_11919E3: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191A0D: If (CDate(var_8C.Text) > CDate(var_98.Text)) Then
  loc_1191A29:   MsgBox("FromDate must be less than ToDate", &H10, var_DC, var_FC, var_11C)
  loc_1191A44:   Set var_88 = Me.Txt
  loc_1191A4A:   Call 0.Method_CmdFill_UnknownEvent_90 (CInt(0), var_8C)
  loc_1191A52:   var_8C.SetFocus
  loc_1191A5E:   Exit Sub
  loc_1191A5F: End If
  loc_1191A6A: Set var_88 = Me.Txt
  loc_1191A70: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(2), var_8C)
  loc_1191A99: If (Proc_6_27_EA565C(var_8C, "Outlet") = 0) Then
  loc_1191A9C:   Exit Sub
  loc_1191A9D: End If
  loc_1191AA8: Set var_88 = Me.Txt
  loc_1191AAE: Call 0.Method_CmdFill_UnknownEvent_90 (CInt(3), var_8C)
  loc_1191AD7: If (Proc_6_27_EA565C(var_8C, "Payment Mode") = 0) Then
  loc_1191ADA:   Exit Sub
  loc_1191ADB: End If
  loc_1191AE4: Set var_88 = Me.CmdFill
  loc_1191AEA: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(False)
  loc_1191AFF: Me.Label1.Caption = "Processing..."
  loc_1191B11: Me.Label1.Refresh
  loc_1191B19: Call Proc_179_23_11BC878(var_8C)
  loc_1191B1E: Call Proc_179_24_1319CD8()
  loc_1191B36: Me.GridSel.Row = 1
  loc_1191B51: Me.GridSel.Col = 0
  loc_1191B5D: Set var_88 = Me.GridSel
  loc_1191B7B: Me.Label1.Caption = vbNullString
  loc_1191B8D: Me.Label1.Refresh
  loc_1191B9D: Set var_88 = Me.CmdFill
  loc_1191BA3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000D(True)
  loc_1191BAB: Exit Sub
End Sub

Private Sub CmdDelete_UnknownEvent_9 '1167180
  'Data Table: 499474
  Dim var_AC As Variant
  Dim var_B0 As TextBox
  Dim unk_499487 As Connection15
  Dim var_DC As Variant
  Dim var_E0 As Field20
  Dim var_86 As Integer
  Dim var_D4 As Variant
  Dim var_120 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Variant
  Dim var_B4 As String
  Dim var_140 As Variant
  loc_1166E08: On Error Goto loc_1167164
  loc_1166E14: Set var_AC = Me.CmdDelete
  loc_1166E1A: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(False)
  loc_1166E2F: Me.Label1.Caption = "Deleting..."
  loc_1166E41: Me.Label1.Refresh
  loc_1166E79: Set var_AC = Me.Txt
  loc_1166E7F: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(2), var_B0, var_B4, "SELECT SHORTNAME FROM DEPART WHERE CODE='", var_D4, -1)
  loc_1166EAE: unk_499487.Execute var_DC & var_B4 & "'And Logsite_Code='" & MemVar_1F92078 & "'", 0, var_E0
  loc_1166EB6: var_F0 = var_B0.Tag.Fields
  loc_1166EBE:  = var_DC.Item("B")
  loc_1166EC6:  = var_E0.Value
  loc_1166F14: unk_499487.BeginTrans var_FC
  loc_1166F2F: unk_499487.Execute "Delete from TempPosDel", var_D4, -1
  loc_1166F63: Call Proc_179_28_11A81CC(global_60, CByte(Me.Check1.Value), var_D4)
  loc_1166F91: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(0), var_B0, "Insert into TempPosDel(OldDocId,OldVno) Select DocId,Vno from Sale1 Where VDate>= ", var_210)
  loc_1166FA0: Proc_6_7_F25D88(var_F0, CVar(var_B0), -1)
  loc_1166FC0: Proc_6_7_F25D88(var_140, MemVar_1F920FC, var_E0 & var_F0 & " And VDate<=")
  loc_1166FD1: var_170 = Me.Txt & var_140 & " And RestCode='" 
  loc_1166FE9: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(2), var_DC, var_B4)
  loc_1166FF1: var_170 = var_DC.Tag
  loc_1167005: var_1B0 = &HFF & CVar(var_B4) & "' And Logsite_Code='" 
  loc_1167026: unk_499487.Execute CStr(var_1B0 & CVar(MemVar_1F92078) & "' Order by Vno,VDate"), , 
  loc_1167056: Call Proc_179_27_107B368()
  loc_116705B: Call Proc_179_26_13CA384()
  loc_1167091: Set var_AC = Me.Txt
  loc_1167097: Call 0.Method_CmdDelete_UnknownEvent_90 (CInt(1), var_B0, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & CStr(global_84) & " WHERE "))
  loc_11670A6: Proc_6_7_F25D88(var_F0, CVar(var_B0), var_1B0)
  loc_11670AE: var_120 = -1 & var_F0 
  loc_11670CD: var_170 = var_E0 & var_F0 & " And VDate<=" & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(Proc_6_38_E68A98(var_F0)) & "' And Logsite_Code='" 
  loc_11670EE: unk_499487.Execute CStr(var_170 & CVar(MemVar_1F92078) & "'"), Me.Txt, 
  loc_1167120: unk_499487.CommitTrans
  loc_1167127: var_86 = 0
  loc_1167135: Set global_76 = Nothing
  loc_1167149: Me.Label1.Caption = "Deletion Completed."
  loc_116715B: Me.Label1.Refresh
  loc_1167163: Exit Sub
  loc_1167164: ' Referenced from: 1166E08
  loc_116716A: If (var_86 = &HFF) Then
  loc_1167173:   unk_499487.RollbackTrans
  loc_1167178: End If
  loc_1167178: Proc_6_60_E62BC4(var_86)
  loc_116717D: Exit Sub
End Sub

Public Sub Proc_179_23_11BC878
  'Data Table: 499474
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As String
  loc_11BC432: Me.GridSel.Rows = 1
  loc_11BC446: Me.GridSel.Cols = 6
  loc_11BC44B: var_98 = 0
  loc_11BC457: var_BC = CVar(CLng(0)) 'Long
  loc_11BC45C: var_DC = "O"
  loc_11BC465: LateIdCallSt
  loc_11BC470: var_98 = CVar(CLng(0)) 'Long
  loc_11BC475: var_BC = &H258
  loc_11BC481: LateIdCallSt
  loc_11BC489: var_98 = 0
  loc_11BC495: var_BC = CVar(CLng(1)) 'Long
  loc_11BC49A: var_DC = "Bill No"
  loc_11BC4A3: LateIdCallSt
  loc_11BC4AE: var_98 = CVar(CLng(1)) 'Long
  loc_11BC4B9: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC4C0: LateIdCallSt
  loc_11BC4CB: var_98 = CVar(CLng(1)) 'Long
  loc_11BC4D6: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC4DD: LateIdCallSt
  loc_11BC4E8: var_98 = CVar(CLng(1)) 'Long
  loc_11BC4ED: var_BC = &H514
  loc_11BC4F9: LateIdCallSt
  loc_11BC501: var_98 = 0
  loc_11BC50D: var_BC = CVar(CLng(2)) 'Long
  loc_11BC512: var_DC = "DocId"
  loc_11BC51B: LateIdCallSt
  loc_11BC526: var_98 = CVar(CLng(2)) 'Long
  loc_11BC531: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC538: LateIdCallSt
  loc_11BC543: var_98 = CVar(CLng(2)) 'Long
  loc_11BC54E: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC555: LateIdCallSt
  loc_11BC560: var_98 = CVar(CLng(2)) 'Long
  loc_11BC565: var_BC = 0
  loc_11BC571: LateIdCallSt
  loc_11BC579: var_98 = 0
  loc_11BC585: var_BC = CVar(CLng(3)) 'Long
  loc_11BC58A: var_DC = "Bill Date"
  loc_11BC593: LateIdCallSt
  loc_11BC59E: var_98 = CVar(CLng(3)) 'Long
  loc_11BC5A9: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC5B0: LateIdCallSt
  loc_11BC5BB: var_98 = CVar(CLng(3)) 'Long
  loc_11BC5C6: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC5CD: LateIdCallSt
  loc_11BC5D8: var_98 = CVar(CLng(3)) 'Long
  loc_11BC5DD: var_BC = &H640
  loc_11BC5E9: LateIdCallSt
  loc_11BC5F1: var_98 = 0
  loc_11BC5FD: var_BC = CVar(CLng(4)) 'Long
  loc_11BC602: var_DC = "Bill Amount"
  loc_11BC60B: LateIdCallSt
  loc_11BC616: var_98 = CVar(CLng(4)) 'Long
  loc_11BC621: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC628: LateIdCallSt
  loc_11BC633: var_98 = CVar(CLng(4)) 'Long
  loc_11BC63E: var_BC = CVar(CInt(7)) 'Integer
  loc_11BC645: LateIdCallSt
  loc_11BC650: var_98 = CVar(CLng(4)) 'Long
  loc_11BC655: var_BC = &H640
  loc_11BC661: LateIdCallSt
  loc_11BC669: var_98 = 0
  loc_11BC675: var_BC = CVar(CLng(5)) 'Long
  loc_11BC67A: var_DC = "PayType"
  loc_11BC683: LateIdCallSt
  loc_11BC68E: var_98 = CVar(CLng(5)) 'Long
  loc_11BC699: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC6A0: LateIdCallSt
  loc_11BC6AB: var_98 = CVar(CLng(5)) 'Long
  loc_11BC6B6: var_BC = CVar(CInt(1)) 'Integer
  loc_11BC6BD: LateIdCallSt
  loc_11BC6C8: var_98 = CVar(CLng(5)) 'Long
  loc_11BC6CD: var_BC = &H44C
  loc_11BC6D9: LateIdCallSt
  loc_11BC6E1: var_98 = vbNullString
  loc_11BC6EB: Set var_AC = Me.GridSel
  loc_11BC70F: Me.GridSel.FixedRows = 1
  loc_11BC719: Set var_88 = Nothing 
  loc_11BC72D: ReDim Preserve global_60(0 To 0)
  loc_11BC744: global_60(0) = 0
  loc_11BC758: Me.GridSel.Height = CVar(CDbl(6000))
  loc_11BC773: Me.GridSel.Width = CVar(CDbl(6500))
  loc_11BC77B: var_98 = 0
  loc_11BC7AC: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_11BC7BB: var_98 = 0
  loc_11BC7EC: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_11BC81D: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_11BC84E: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_11BC86D: Me.Check1.Value = CInt(0)
  loc_11BC875: Exit Sub
End Sub

Public Sub Proc_179_24_1319CD8
  'Data Table: 499474
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_C8 As Variant
  Dim var_D8 As Variant
  Dim var_E8 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_140 As Variant
  Dim var_148 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1BC As Variant
  Dim unk_499487 As Connection15
  Dim var_1F4 As Recordset15
  Dim var_1F8 As Variant
  Dim var_20C As Field20
  Dim var_A8 As Variant
  Dim var_110 As Variant
  Dim var_1F0 As Variant
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim var_14C As String
  Dim var_88 As Recordset15
  Dim var_144 As Variant
  Dim var_1E0 As Variant
  Dim var_24C As Variant
  loc_13195D8: Proc_6_7_F25D88(var_A8, MemVar_1F920F4, "Select max(Vno) From Sale1 Where VDate>=", var_1F0, -1)
  loc_13195E0: var_C8 = var_1F4 & var_A8 
  loc_13195F8: Set var_EC = Me.Txt
  loc_13195FE: Call 0.Method_Proc_179_24_1319CD80 (CInt(0), var_F0, var_C8 & " And vdate<", var_1F8)
  loc_131960D: Proc_6_7_F25D88(var_110, CVar(var_F0), 0)
  loc_1319615: var_120 = var_20C & var_110 
  loc_131961E: var_140 = var_120 & " And RestCode='" 
  loc_1319630: Set var_144 = Me.Txt
  loc_1319636: Call 0.Method_Proc_179_24_1319CD80 (CInt(2), var_148, var_14C)
  loc_131963E: var_140 = var_148.Tag
  loc_1319673: unk_499487.Execute CStr(var_21C & CVar(var_14C) & "' And Logsite_Code='" & CVar(MemVar_1F92078) & "'"), , 
  loc_131967B:  = var_1F4.Fields
  loc_1319683:  = var_1F8.Item()
  loc_131968B:  = var_20C.Value
  loc_1319696: Proc_6_39_E7C810(var_22C)
  loc_13196E6: var_98 = "Select Distinct S.DocId,S.Vno From (Sale1 S Left Join PayCharge P on P.DocId=S.DocId) Where IsNull(P.PayType,'') Not In('PPOS','IPOS') And S.VDate Between "
  loc_13196F6: Set var_EC = Me.Txt
  loc_13196FC: Call 0.Method_Proc_179_24_1319CD80 (CInt(0), var_F0, var_98, var_21C)
  loc_131970B: Proc_6_7_F25D88(var_C8, CVar(var_F0), -1)
  loc_131971C: var_100 = var_20C & var_C8 & " And " 
  loc_131972B: Set var_144 = Me.Txt
  loc_1319731: Call 0.Method_Proc_179_24_1319CD80 (CInt(1), var_148, var_100)
  loc_1319740: Proc_6_7_F25D88(var_120, CVar(var_148))
  loc_1319751: var_15C = CLng(var_22C) & var_120 & " And S.RestCode='" 
  loc_1319763: Set var_1F4 = Me.Txt
  loc_1319769: Call 0.Method_Proc_179_24_1319CD80 (CInt(2), var_1F8, var_14C)
  loc_1319771: var_15C = var_1F8.Tag
  loc_1319779: var_16C = CVar(var_14C) 'String
  loc_13197A6: unk_499487.Execute CStr(var_21C & var_16C & "' And S.Logsite_Code='" & CVar(MemVar_1F92078) & "' Order by S.Vno"), , 
  loc_13197B7: Set global_76 = var_20C
  loc_1319803: If (Me.RecordCount = 0) Then
  loc_1319819:   Me.GridSel.Rows = 2
  loc_1319821:   Exit Sub
  loc_1319822: End If
  loc_1319835: Me.GridSel.Row = 1
  loc_1319845: Set var_EC = Me.CmdDelete
  loc_131984B: Call {CF2BC98A-6AC4-48A5-B0829C6EAB7A82F5}.DispID_8001000D(True)
  loc_1319853: ' Referenced from: 1319CB7
  loc_1319865: If Not(Me.EOF) Then
  loc_13198BE:   unk_499487.Execute CStr("Select Vno,Vdate,NetAmt as BillAmount,DocId From Sale1 Where DocId='" & Me.Fields.Item(0).Value & "'"), var_100, -1
  loc_13198C9:   Set var_88 = var_144
  loc_13198F7:   If (var_88.RecordCount = 1) Then
  loc_13198FE:     Set var_23C = Me.GridSel
  loc_1319901:     var_98 = vbNullString
  loc_1319925:     var_98 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_131992D:     var_D8 = CVar(CLng(0)) 'Long
  loc_131993B:     LateIdCallSt
  loc_131995C:     var_B8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1319964:     var_130 = CVar(CLng(1)) 'Long
  loc_1319994:     var_E8 = CVar(CStr(var_88.Fields.Item("VNo").Value)) 'String
  loc_131999B:     LateIdCallSt
  loc_13199FD:     var_E8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("DocID")), CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)), var_23C, var_E8, CVar(CLng(2)), CVar(CLng(Me.GridSel.Row)))) 'String
  loc_1319A04:     LateIdCallSt
  loc_1319A5A:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1319A62:     var_17C = CVar(CLng(3)) 'Long
  loc_1319A7F:     var_C8 = CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("VDate")), var_23C, "dd/mmm/yyyy", var_23C, vbNullString)) 'String
  loc_1319A95:     LateIdCallSt
  loc_1319ADC:     Proc_6_39_E7C810(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_23C, CVar(CStr(Format(var_C8, "dd/mmm/yyyy"))), 1, 1)
  loc_1319AF4:     var_D8 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1319B2C:     LateIdCallSt
  loc_1319B70:     Proc_6_39_E7C810(var_C8, CVar(var_88.Fields.Item("BillAmount")), var_23C, CVar(CStr(Format(var_C8, "0.00"))), 1, 1, CVar(CLng(4)))
  loc_1319BB2:     var_1E0 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_1319BBA:     var_24C = CVar(CLng(5)) 'Long
  loc_1319BC5:     var_1BC = 0
  loc_1319BE7:     var_D8 = " Then 'Cash' Else 'Non-Cash' End From Paycharge Where PayType='Cash' And DocId='"
  loc_1319C0A:     unk_499487.Execute CStr("Select Case When IsNull(Sum(AmtCr),0)=" & var_C8 & var_D8 & Me.Fields.Item(0).Value & "'"), var_15C, -1
  loc_1319C12:     var_1F4 = var_1F4.Fields
  loc_1319C1A:     var_1BC = var_1F8.Item(var_1F8)
  loc_1319C22:     var_20C = var_20C.Value
  loc_1319C2B:     var_1AC = CVar(CStr(var_16C)) 'String
  loc_1319C32:     LateIdCallSt
  loc_1319C69:     Set var_23C = Nothing 
  loc_1319C72:     Set var_88 = Nothing
  loc_1319C8E:     var_98 = CVar((CLng(Me.GridSel.Row) + 1)) 'Long
  loc_1319C9D:     Me.GridSel.Row = "BillAmount"
  loc_1319CAC:   End If
  loc_1319CB2:   Me.MoveNext
  loc_1319CB7:   GoTo loc_1319853
  loc_1319CBA: End If
  loc_1319CCD: Me.GridSel.FixedRows = 1
  loc_1319CD5: Exit Sub
End Sub

Public Sub Proc_179_25_FC7868(arg_C) 'FC7868
  'Data Table: 499474
  Dim unk_499487 As Connection15
  loc_FC76D8: unk_499487.Execute "Update Kot Set ContraDocID='Deleted' Where ContraDocID='" & arg_C & "'", var_B0, -1
  loc_FC770E: unk_499487.Execute "Delete From Sale1 Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC7744: unk_499487.Execute "Delete From Sale2 Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC777A: unk_499487.Execute "Delete From SunTran Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC77B0: unk_499487.Execute "Delete From Stock Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC77E6: unk_499487.Execute "Delete From Paycharge Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC781C: unk_499487.Execute "Delete From GuestReward Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC7852: unk_499487.Execute "Delete From AssignDelivery Where DocID='" & arg_C & "'", var_B0, -1
  loc_FC7864: Exit Sub
End Sub

Public Sub Proc_179_26_13CA384
  'Data Table: 499474
  Dim unk_499487 As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_1F4 As String
  Dim var_130 As Variant
  loc_13C9A3E: unk_499487.Execute "Select * from TempPosDel Order By OldVno", var_A8, -1
  loc_13C9A49: Set var_88 = var_AC
  loc_13C9A66: If (var_88.RecordCount = 0) Then
  loc_13C9A69:   Exit Sub
  loc_13C9A6A: End If
  loc_13C9A7E: If (var_88.RecordCount > 0) Then
  loc_13C9A84:   var_88.MoveFirst
  loc_13C9A89:   ' Referenced from: 13CA380
  loc_13C9A98:   If Not(var_88.EOF) Then
  loc_13C9ABF:     var_AC = var_88.Fields
  loc_13C9B0A:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale1 Set DocId='" & var_AC.Item("NewDocId").Value & "',Vno=", var_214)
  loc_13C9B12:     var_140 = -1 & var_130 
  loc_13C9B84:     var_1F4 = CStr(var_140 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value)
  loc_13C9B8E:     unk_499487.Execute var_1F4, var_218, var_AC
  loc_13C9C35:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Sale2 Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13C9CAB:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13C9CB9:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13C9D60:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update SunTran Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13C9DD6:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13C9DE4:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13C9E8B:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update Stock Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13C9F01:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13C9F0F:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13C9FB6:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update PayCharge Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CA02C:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value 
  loc_13CA03A:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CA0E1:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update GuestReward Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',BillNo=")
  loc_13CA157:     var_1F0 = var_214 & var_130 & " Where DocId='" & var_88.Fields.Item("OldDocid").Value & "' And BillNo=" & var_88.Fields.Item("OldVno").Value 
  loc_13CA165:     unk_499487.Execute CStr(var_1F0), -1, var_218
  loc_13CA20C:     Proc_6_39_E7C810(var_130, CVar(var_88.Fields.Item("NEWVNO")), "Update AssignDelivery Set DocId='" & var_88.Fields.Item("NewDocId").Value & "',Vno=")
  loc_13CA21D:     var_160 = var_214 & var_130 & " Where DocId='" 
  loc_13CA290:     unk_499487.Execute CStr(var_160 & var_88.Fields.Item("OldDocid").Value & "' And Vno=" & var_88.Fields.Item("OldVno").Value), -1, var_218
  loc_13CA33B:     var_130 = "Update Kot Set ContraDocId='" & var_88.Fields.Item("NewDocId").Value & "' Where ContraDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_13CA352:     unk_499487.Execute CStr(var_130 & "'"), var_160, -1
  loc_13CA37B:     var_88.MoveNext
  loc_13CA380:     GoTo loc_13C9A89
  loc_13CA383:   End If
  loc_13CA383: End If
  loc_13CA383: Exit Sub
End Sub

Public Sub Proc_179_27_107B368
  'Data Table: 499474
  Dim unk_499487 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Long
  Dim var_B0 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_11C As Variant
  Dim var_14C As Variant
  Dim var_1BC As Variant
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_234 As Variant
  loc_107B146: unk_499487.Execute "Select * from TempPosDel Order By OldVno", var_AC, -1
  loc_107B151: Set var_88 = var_B0
  loc_107B16E: If (var_88.RecordCount = 0) Then
  loc_107B17A:   global_84 = global_80
  loc_107B17D:   Exit Sub
  loc_107B17E: End If
  loc_107B183: var_8C = 1
  loc_107B19A: If (var_88.RecordCount > 0) Then
  loc_107B1A0:   var_88.MoveFirst
  loc_107B1A5:   ' Referenced from: 107B34D
  loc_107B1B4:   If Not(var_88.EOF) Then
  loc_107B1F8:     var_DC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107B20A:     var_11C = (8 - Len(Trim(var_DC)))
  loc_107B224:     var_14C = CVar(CStr((global_80 + var_8C))) 'String
  loc_107B23B:     var_1BC = CVar(CStr((global_80 + var_8C))) 'String
  loc_107B2AC:     var_13C = (Left(CVar(var_88.Fields.Item("OldDocid")), &HD) + Space(CLng(var_11C)))
  loc_107B2B3:     var_16C = (var_13C + Trim(var_14C))
  loc_107B2D7:     var_234 = "Update TempPosDel Set NewDocId='" & var_16C & "',NewVno=" & Trim(var_1BC) & " Where OldDocId='" & var_88.Fields.Item("OldDocid").Value 
  loc_107B2F5:     unk_499487.Execute CStr(var_234 & "' And OldVno=" & var_88.Fields.Item("OldVno").Value), var_2B0, -1
  loc_107B342:     var_8C = (var_8C + 1)
  loc_107B348:     var_88.MoveNext
  loc_107B34D:     GoTo loc_107B1A5
  loc_107B350:   End If
  loc_107B363:   global_84 = ((global_80 + var_8C) - 1)
  loc_107B366: End If
  loc_107B366: Exit Sub
End Sub

Public Sub Proc_179_28_11A81CC(arg_C, arg_10) '11A81CC
  'Data Table: 499474
  Dim var_96 As Integer
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_9A As Integer
  Dim var_C4 As Variant
  Dim var_E4 As Long
  Dim var_108 As Variant
  Dim var_128 As Long
  Dim var_14C As Variant
  loc_11A7DAE: On Error Goto loc_11A81C1
  loc_11A7DB3: var_96 = 0
  loc_11A7DBF: If (CInt(arg_10) = 1) Then
  loc_11A7DE7:   For var_B4 = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_98 = var_B4 'Integer
  loc_11A7DF0:     var_9A = var_98
  loc_11A7DF7:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A7DFC:     var_E4 = 2
  loc_11A7E2B:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A7E32:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A7E37:       var_E4 = 2
  loc_11A7E5A:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A7E5F:       var_128 = 1
  loc_11A7E72:       var_14C = Me.GridSel.TextMatrix)
  loc_11A7E89:       Call Proc_179_25_FC7868(CStr(Me.GridSel.TextMatrix)))
  loc_11A7EA5:       var_96 = &HFF
  loc_11A7ECD:       For var_154 = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_154 'Integer
  loc_11A7EE6:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A7F01:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A7F1C:         Me.GridSel.CellBackColor = &H80FF
  loc_11A7F27:       Next var_154 'Integer
  loc_11A7F2C:     End If
  loc_11A7F2F:   Next var_B4 'Integer
  loc_11A7F34:   Exit For
  loc_11A7F37: End If
  loc_11A7F3F: CRefVarAry
  loc_11A7F47: For var_158 = 0 To CInt(UBound(arg_C, 1)): var_98 = var_158 'Integer
  loc_11A7F68:   If (arg_C(var_98) = 0) Then
  loc_11A7F6B:     GoTo loc_11A80F9
  loc_11A7F6E:   End If
  loc_11A7F7F:   var_9A = CInt(arg_C(var_98))
  loc_11A7F89:   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A7F8E:   var_E4 = 0
  loc_11A7FBD:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_11A7FC4:     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A7FC9:     var_E4 = 2
  loc_11A7FF8:     If (CStr(Me.GridSel.TextMatrix)) <> vbNullString) Then
  loc_11A7FFF:       var_C4 = CVar(CLng(var_9A)) 'Long
  loc_11A8004:       var_E4 = 2
  loc_11A8027:       var_108 = CVar(CLng(var_9A)) 'Long
  loc_11A802C:       var_128 = 1
  loc_11A803F:       var_14C = Me.GridSel.TextMatrix)
  loc_11A8056:       Call Proc_179_25_FC7868(CStr(Me.GridSel.TextMatrix)))
  loc_11A8072:       var_96 = &HFF
  loc_11A809A:       For var_15C = 0 To CInt((CLng(Me.GridSel.Cols) - 1)): var_9C = var_15C 'Integer
  loc_11A80B3:         Me.GridSel.Row = CVar(CLng(var_9A))
  loc_11A80CE:         Me.GridSel.Col = CVar(CLng(var_9C))
  loc_11A80E9:         Me.GridSel.CellBackColor = &H80FF
  loc_11A80F4:       Next var_15C 'Integer
  loc_11A80F9:       ' Referenced from: 11A7F6B
  loc_11A80F9:     End If
  loc_11A80F9:   End If
  loc_11A80FC: Next var_158 'Integer
  loc_11A8101: ' Referenced from: 11A7F34
  loc_11A8111: If ((var_96 = 0) And (CInt(arg_10) = 0)) Then
  loc_11A8114:   var_C4 = 0
  loc_11A811D:   var_E4 = 1
  loc_11A8130:   var_B0 = Me.GridSel.TextMatrix)
  loc_11A8158:   MsgBox(CVar("Select " & CStr(var_B0)), &H40, var_16C, var_17C, var_18C)
  loc_11A8183:   Me.GridSel.Row = 1
  loc_11A818B:   var_C4 = 0
  loc_11A819E:   Me.GridSel.Col = var_C4
  loc_11A81AA:   Set var_A0 = Me.GridSel
  loc_11A81BB: End If
  loc_11A81BB: Proc_179_28_11A81CC = GridSel.DispID_8001
  loc_11A81C1: ' Referenced from: 11A7DAE
  loc_11A81C1: Proc_6_60_E62BC4(var_B0, var_E4)
  loc_11A81C6: Proc_179_28_11A81CC = var_C4
End Sub

Public Sub Proc_179_29_EBD3A8
  'Data Table: 499474
  loc_EBD320: If (CBool(Me.DGRestType.Visible) = &HFF) Then
  loc_EBD332:   Me.DGRestType.Visible = False
  loc_EBD33A: End If
  loc_EBD356: If (CBool(Me.DGPayType.Visible) = &HFF) Then
  loc_EBD368:   Me.DGPayType.Visible = False
  loc_EBD370: End If
  loc_EBD38C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD39E:   Me.FGPoint.Visible = False
  loc_EBD3A6: End If
  loc_EBD3A6: Exit Sub
End Sub

Public Sub Proc_179_30_112C8CC
  'Data Table: 499474
  Dim var_88 As String
  Dim var_8C As String
  Dim var_90 As String
  Dim var_9C As String
  Dim var_A8 As String
  Dim unk_499487 As Connection15
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_CC As Recordset15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  Dim var_114 As Variant
  Dim var_F4 As Variant
  Dim var_134 As Variant
  Dim var_174 As Variant
  loc_112C5A8: var_8C = "Update TempPosDel Set NewDocId=SubString(OldDocid,1,13)+Space(8 - Len(Cast(" & CStr(global_80)
  loc_112C5AF: var_90 = var_8C & " + AutoId As Varchar)))+Cast("
  loc_112C5C5: var_9C = var_90 & CStr(global_80) & " + AutoId As Varchar),NewVno="
  loc_112C5DB: var_A8 = var_9C & CStr(global_80) & " + AutoId from TempPosDel"
  loc_112C5E4: unk_499487.Execute var_A8, var_C8, -1
  loc_112C60A: var_104 = CVar(global_80) 'Long
  loc_112C614: var_E0 = 0
  loc_112C633: unk_499487.Execute "Select IsNull(Max(AutoId),0) from TempPosDel", var_C8, -1
  loc_112C63B: var_CC = var_CC.Fields
  loc_112C643: var_E0 = var_D0.Item(var_D0)
  loc_112C64B: var_E4 = var_E4.Value
  loc_112C653: var_114 = (var_F4 + var_F4)
  loc_112C696: var_F4 = "Update Sale1 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId and Vprefix=Year('" & Year(MemVar_1F920F4) 
  loc_112C6AD: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112C6E0: var_C8 = Year(MemVar_1F920F4)
  loc_112C6F1: var_114 = "Update Sale2 Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & var_C8 & "')" 
  loc_112C6FF: unk_499487.Execute CStr(var_114), var_134, -1
  loc_112C72B: unk_499487.Execute "Update SunTran Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId ", var_C8, -1
  loc_112C75B: var_F4 = "Update Stock Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F920F4) 
  loc_112C772: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112C7AD: var_F4 = "Update PayCharge Set DocId=T.NewDocId,Vno=T.NEWVNO From TempPosDel T Where DocId=T.OldDocId  and Vprefix=Year('" & Year(MemVar_1F920F4) 
  loc_112C7C4: unk_499487.Execute CStr(var_F4 & "')"), var_134, -1
  loc_112C7F7: var_C8 = Year(MemVar_1F920F4)
  loc_112C80C: var_88 = CStr("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')")
  loc_112C816: unk_499487.Execute var_88, var_134, -1
  loc_112C844: var_88 = CStr(CLng("Update Kot Set ContraDocId=T.NewDocId From TempPosDel T Where ContraDocId=T.OldDocId and Vprefix=Year('" & var_C8 & "')"))
  loc_112C85D: Proc_6_7_F25D88(var_C8, MemVar_1F920EC, CVar("UPDATE VOUCHER_PREFIX SET START_SRL_NO=" & var_88 & " WHERE "), var_1B4, -1, var_CC, var_CC, var_CC)
  loc_112C88E: var_174 = var_CC & var_C8 & " BETWEEN DATE_FROM AND DATE_TO AND V_TYPE='" & CVar(global_88) & "' And Logsite_Code='" & CVar(MemVar_1F92078) 
  loc_112C8A5: unk_499487.Execute CStr(var_174 & "'"), var_CC, var_CC
  loc_112C8CB: Exit Sub
End Sub
