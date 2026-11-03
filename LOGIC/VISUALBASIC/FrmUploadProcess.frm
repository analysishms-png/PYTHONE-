VERSION 5.00
Begin VB.Form FrmUploadProcess
  Caption = "Upload Process"
  BackColor = &HDECCBE&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 6300
  ClientHeight = 3090
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 2865
    Width = 6300
    Height = 225
    Visible = 0   'False
    TabIndex = 9
  End
  Begin ProgressBar PBar1
    Left = 2580
    Top = 4410
    Width = 8085
    Height = 255
    Visible = 0   'False
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 7035
    Top = 1950
    Width = 1485
    Height = 285
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 4620
    Top = 1935
    Width = 1425
    Height = 285
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 11
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
  Begin BtnEnh CmdExit
    Left = 8625
    Top = 3600
    Width = 2070
    Height = 690
    TabIndex = 7
  End
  Begin BtnEnh Cmd
    Index = 0
    Left = 4455
    Top = 3600
    Width = 4155
    Height = 690
    TabIndex = 8
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 6
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
  Begin Label LblName
    Caption = "To Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 6225
    Top = 1965
    Width = 795
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
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
  Begin Label lblDisplay
    Caption = "."
    Left = 3165
    Top = 2700
    Width = 5835
    Height = 510
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "From Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 3540
    Top = 1920
    Width = 990
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 2
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

Attribute VB_Name = "FrmUploadProcess"

Private MasterFormExit As Integer

Private Sub Txt_GotFocus(Index As Integer) 'ECA6BC
  'Data Table: 42EEB8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  loc_ECA622: Set var_88 = Me.Txt
  loc_ECA628: Call 0.Method_Txt_GotFocus0 (Index)
  loc_ECA636: Proc_6_74_E226B0(var_8C)
  loc_ECA651: Set var_88 = Me.Txt
  loc_ECA657: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA65F: var_8C.SelStart = 0
  loc_ECA678: Set var_88 = Me.Txt
  loc_ECA67E: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_ECA699: Set var_90 = Me.Txt
  loc_ECA69F: Call 0.Method_Txt_GotFocus0 (Index, var_98)
  loc_ECA6A7: var_98.SelLength = Len(var_8C.Text)
  loc_ECA6BA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'E41308
  'Data Table: 42EEB8
  loc_E412DE: If (Shift = &HD) Then
  loc_E412E9:   Call Txt_Validate(KeyCode)
  loc_E412FC:   Proc_303_0_FB9B68("	", 0)
  loc_E41304: End If
  loc_E41304: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5007C
  'Data Table: 42EEB8
  loc_E5005A: Set var_88 = Me.Txt
  loc_E50060: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5006E: Proc_6_73_E22704(var_8C)
  loc_E5007A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'EAF998
  'Data Table: 42EEB8
  Dim var_8A As Integer
  Dim var_94 As TextBox
  Dim var_A4 As TextBox
  loc_EAF91F: var_8A = Cancel
  loc_EAF92A: If Not (var_8A = CInt(0)) Then
  loc_EAF935:   If (var_8A = CInt(1)) Then
  loc_EAF938:   End If
  loc_EAF945:   Set var_90 = Me.Txt
  loc_EAF94B:   Call 0.Method_Txt_Validate0 (Cancel, var_94)
  loc_EAF971:   Set var_A0 = Me.Txt
  loc_EAF977:   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_EAF97F:   var_A4.Text = Proc_6_34_14ECF20(var_94.Text)
  loc_EAF996: End If
  loc_EAF996: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1A1E8
  'Data Table: 42EEB8
  loc_E1A1DD: Me.Global.Unload Me
  loc_E1A1E5: Exit Sub
End Sub

Private Sub Cmd_UnknownEvent_9 'E13E80
  'Data Table: 42EEB8
  Dim var_86 As Integer
  loc_E13E6B: var_86 = Cancel
  loc_E13E74: If (var_86 = 0) Then
  loc_E13E77:   Call Proc_334_16_13EDD38(var_86)
  loc_E13E7C: End If
  loc_E13E7C: Exit Sub
End Sub

Private Sub Form_Load() 'ECA4F4
  'Data Table: 42EEB8
  Dim var_A8 As ProgressBar
  Dim var_B0 As TextBox
  loc_ECA457: Me.PBar1.Visible = False
  loc_ECA45F: On Error Goto loc_ECA4ED
  loc_ECA478: Proc_6_23_DFBA28(Me, 0)
  loc_ECA487: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_ECA49F: Set var_A8 = Me.Txt
  loc_ECA4A5: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_ECA4AD: var_B0.Text = CStr(MemVar_1F920EC)
  loc_ECA4CF: Set var_A8 = Me.Txt
  loc_ECA4D5: Call 0.Method_Form_Load0 (CInt(1), var_B0)
  loc_ECA4DD: var_B0.Text = CStr(MemVar_1F920EC)
  loc_ECA4EC: Exit Sub
  loc_ECA4ED: ' Referenced from: ECA45F
  loc_ECA4ED: Proc_6_60_E62BC4(0)
  loc_ECA4F2: Exit Sub
End Sub

Private Sub Form_Resize() 'E6E79C
  'Data Table: 42EEB8
  loc_E6E746: Call 0.Method_arg_50 (var_88)
  loc_E6E758: Me.LblFormCaption.Caption = var_88
  loc_E6E771: Me.LblFormCaption.Left = CDbl(0)
  loc_E6E77F: Call 0.Method_arg_100 (var_90)
  loc_E6E791: Me.LblFormCaption.Width = var_90
  loc_E6E799: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E02288
  'Data Table: 42EEB8
  loc_E02281: MasterFormExit = 0
  loc_E02284: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B114
  'Data Table: 42EEB8
  loc_E5B0DC: Set var_88 = Me.TopCtrl1
  loc_E5B0E2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B105: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B10D:   Call Form_Unload(&HFF)
  loc_E5B112: End If
  loc_E5B112: Exit Sub
End Sub

Private Sub Form_Activate() 'E4E74C
  'Data Table: 42EEB8
  loc_E4E720: On Error Goto loc_E4E746
  loc_E4E727: Set var_8C = Me.TopCtrl1
  loc_E4E72D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E4E742: If (CLng(CInt()) = &H2D) Then
  loc_E4E745: End If
  loc_E4E745: Exit Sub
  loc_E4E746: ' Referenced from: E4E720
  loc_E4E746: Proc_6_60_E62BC4()
  loc_E4E74B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E249EC
  'Data Table: 42EEB8
  loc_E249D1: If (MasterFormExit = &HFF) Then
  loc_E249E1:   Me.Global.Unload Me
  loc_E249E9: End If
  loc_E249E9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E61AB8
  'Data Table: 42EEB8
  loc_E61A6C: On Error Goto loc_E61AAF
  loc_E61A79: If (CLng(KeyCode) = &H1B) Then
  loc_E61A89:   Me.Global.Unload Me
  loc_E61A91:   Exit Sub
  loc_E61A92: End If
  loc_E61AA6: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E61AAE: Exit Sub
  loc_E61AAF: ' Referenced from: E61A6C
  loc_E61AAF: Proc_6_60_E62BC4(Shift)
  loc_E61AB4: Exit Sub
End Sub

Public Function MasterFormExitGet() '42F61C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '42F62B
  MasterFormExit = Value
End Sub

Public Sub Proc_334_15_10B75F4(arg_C) '10B75F4
  'Data Table: 42EEB8
  Dim var_8C As Recordset15
  loc_10B730D: Set var_8C = arg_C 
  loc_10B7335: var_8C.Fields.Append "SupplierGSTIN", &HC8, &H14
  loc_10B7361: var_8C.Fields.Append "SupplierName", &HC8, &H64
  loc_10B738D: var_8C.Fields.Append "InvoiceNo", &HC8, &H28
  loc_10B73B9: var_8C.Fields.Append "InvoiceType", &HC8, &H23
  loc_10B73E5: var_8C.Fields.Append "InvoiceDate", &HC8, &HB
  loc_10B7411: var_8C.Fields.Append "InvoiceValue", 5, 0
  loc_10B743D: var_8C.Fields.Append "PlaceOfSupply", &HC8, &H23
  loc_10B7469: var_8C.Fields.Append "ReverseCharge", &HC8, 1
  loc_10B7495: var_8C.Fields.Append "TaxRate", 5, 0
  loc_10B74C1: var_8C.Fields.Append "TaxableValue", 5, 0
  loc_10B74ED: var_8C.Fields.Append "IGST", 5, 0
  loc_10B7519: var_8C.Fields.Append "CGST", 5, 0
  loc_10B7545: var_8C.Fields.Append "SGST", 5, 0
  loc_10B7571: var_8C.Fields.Append "Cess", 5, 0
  loc_10B759D: var_8C.Fields.Append "ReturnStatus", &HC8, &H14
  loc_10B75AD: var_8C.CursorType = 3
  loc_10B75BA: var_8C.LockType = 3
  loc_10B75D9: var_8C.Open var_A0, var_B0, -1
  loc_10B75E0: Set var_8C = Nothing 
  loc_10B75E7: Set var_88 = arg_C 
  loc_10B75EB: Proc_334_15_10B75F4 = -1
End Sub

Public Sub Proc_334_16_13EDD38
  'Data Table: 42EEB8
  Dim var_E4 As Variant
  Dim MemVar_1F9B698 As Global
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_B0 As Long
  Dim var_CC As String
  Dim var_144 As Variant
  Dim var_F4 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_B4 As Recordset15
  Dim var_C8 As Fields15
  Dim var_248 As Variant
  Dim unk_42EEFE As Connection15
  Dim var_268 As Variant
  Dim var_26C As Fields15
  Dim var_318 As Variant
  Dim var_498 As Variant
  Dim var_5A0 As Variant
  loc_13ED48C: On Error Goto loc_13EDCFB
  loc_13ED4A4: Set var_94 = CreateObject("Excel.Application", 0) 
  loc_13ED4B8: Call Proc_334_15_10B75F4(New)
  loc_13ED4C0: Set var_B4 = var_C8
  loc_13ED4D2: var_C8 = Me.Global.App
  loc_13ED4EF: Call 0.Method_Proc_334_16_13EDD384 (App.Path & "\EGST\R2A\R2A.ini", var_D2)
  loc_13ED504: If (var_D2 = 0) Then
  loc_13ED520:   MsgBox("R2A ini File Missing.Contact to Software windor", &H10, var_104, var_124, var_144)
  loc_13ED530:   End
  loc_13ED532: End If
  loc_13ED54D: var_C8 = MemVar_1F9B698.App
  loc_13ED555: var_CC = App.Path
  loc_13ED56A: Call 0.Method_arg_7C (var_CC & "\EGST\R2A\R2A.ini", 1, 0)
  loc_13ED575: Set var_90 = var_148
  loc_13ED58C: Call 0.Method_arg_24 (var_D2, 0)
  loc_13ED595: If Not(var_D2) Then
  loc_13ED59E:   Call 0.Method_arg_30 (var_CC, var_148)
  loc_13ED5A6:   var_A8 = var_CC
  loc_13ED5A9:   ' Referenced from: 13ED70A
  loc_13ED5A9: End If
  loc_13ED5B1: If (var_A8 <> var_AC) Then
  loc_13ED5BC:   If (var_AC <> vbNullString) Then
  loc_13ED5C2:     var_A8 = var_AC
  loc_13ED5C5:   End If
  loc_13ED5D1:   var_C8 = MemVar_1F9B698.App
  loc_13ED5EC:   var_C4 = CVar(App.Path & "\EGST\R2A\" & var_A8) 'String
  loc_13ED602:   Set var_98 = var_94.Workbooks.Open 
  loc_13ED62C:   Set var_9C = var_98.Worksheets 
  loc_13ED638:   var_B0 = 7
  loc_13ED643:   var_CC = CStr(var_B0)
  loc_13ED664:   var_C4 = CVar("A" & CStr(var_B0)) 'String
  loc_13ED66B:   var_104 = var_9C.Range
  loc_13ED673:   VarLateMemCallLdRfVar
  loc_13ED681:   var_16C = var_C4 & var_104.Address 
  loc_13ED6C5:   Call Proc_334_17_12B1DC8(var_B4, var_9C.Range.Value, var_16C, &HB, CVar("A" & var_CC & ":"))
  loc_13ED6CC:   Set var_9C = Nothing 
  loc_13ED6D3:   Call var_98.Close
  loc_13ED6DF:   Call 0.Method_arg_24 (var_D2, var_B0, 2)
  loc_13ED6E8:   If Not(var_D2) Then
  loc_13ED6F1:     Call 0.Method_arg_30 (var_CC, var_C4)
  loc_13ED6F9:     var_AC = var_CC
  loc_13ED6FC:   End If
  loc_13ED704:   If (var_AC = vbNullString) Then
  loc_13ED707:     GoTo loc_13ED70D
  loc_13ED70A:   End If
  loc_13ED70A:   GoTo loc_13ED5A9
  loc_13ED70D:   ' Referenced from: 13ED707
  loc_13ED70D: End If
  loc_13ED712: Set var_8C = Nothing
  loc_13ED721: var_B4.Filter = 0
  loc_13ED726: var_E4 = "TaxRate<>-1"
  loc_13ED72F: var_B4.Filter = 0
  loc_13ED748: If (var_B4.RecordCount > 0) Then
  loc_13ED74E:   var_B4.MoveFirst
  loc_13ED753:   ' Referenced from: 13EDCBD
  loc_13ED762:   If Not(var_B4.EOF) Then
  loc_13ED786:     var_C8 = var_B4.Fields
  loc_13ED79D:     Proc_6_17_EAA2B0(var_104, CVar(var_C8.Item("SupplierGSTIN")), "Delete From Table_GSTR2A Where SupplierGSTIN=", var_268)
  loc_13ED7A5:     var_124 = -1 & var_104 
  loc_13ED7D8:     Proc_6_17_EAA2B0(var_16C, CVar(var_B4.Fields.Item("InvoiceNo")), var_94.Workbooks.Open & " And InvoiceNo=")
  loc_13ED813:     Proc_6_7_F25D88(var_1E0, CVar(var_B4.Fields.Item("InvoiceDate")))
  loc_13ED852:     var_248 = var_26C & var_16C & " And InvoiceDate=" & var_1E0 & " And TaxRate=" & var_B4.Fields.Item("TaxRate").Value 
  loc_13ED860:     unk_42EEFE.Execute CStr(var_248), var_C8, 
  loc_13ED8A5:     var_F4 = "Insert into Table_GSTR2A (SupplierGSTIN,SupplierName,InvoiceNo,InvoiceType,InvoiceDate,InvoiceValue,PlaceOfSupply,ReverseCharge,TaxRate,TaxableValue,IGST,CGST,SGST,Cess,ReturnStatus) Values ("
  loc_13ED8D0:     Proc_6_17_EAA2B0(var_104, CVar(var_B4.Fields.Item("SupplierGSTIN")), var_F4)
  loc_13ED8D8:     var_124 = var_6A0 & var_104 
  loc_13ED8E1:     var_144 = var_124 & "," 
  loc_13ED90B:     Proc_6_17_EAA2B0(var_16C, CVar(var_B4.Fields.Item("SupplierName")), var_144)
  loc_13ED913:     var_17C = -1 & var_16C 
  loc_13ED946:     Proc_6_17_EAA2B0(var_1E0, CVar(var_B4.Fields.Item("InvoiceNo")))
  loc_13ED981:     Proc_6_17_EAA2B0(var_248, CVar(var_B4.Fields.Item("InvoiceType")))
  loc_13ED9BC:     Proc_6_7_F25D88(var_2B0, CVar(var_B4.Fields.Item("InvoiceDate")))
  loc_13ED9FB:     var_318 = var_B4.Fields & var_16C & "," & var_1E0 & "," & var_248 & "," & var_2B0 & "," & var_B4.Fields.Item("InvoiceValue").Value 
  loc_13EDA2E:     Proc_6_17_EAA2B0(var_370, CVar(var_B4.Fields.Item("PlaceOfSupply")))
  loc_13EDA69:     Proc_6_17_EAA2B0(var_3D8, CVar(var_B4.Fields.Item("ReverseCharge")))
  loc_13EDADF:     var_498 = var_318 & "," & var_370 & "," & var_3D8 & "," & var_B4.Fields.Item("TaxRate").Value & "," & var_B4.Fields.Item("TaxableValue").Value 
  loc_13EDB84:     var_5A0 = var_498 & "," & var_B4.Fields.Item("IGST").Value & "," & var_B4.Fields.Item("CGST").Value & "," & var_B4.Fields.Item("SGST").Value 
  loc_13EDBEE:     Proc_6_17_EAA2B0(var_650, CVar(var_B4.Fields.Item("ReturnStatus")))
  loc_13EDC03:     var_CC = CStr(var_5A0 & "," & var_B4.Fields.Item("Cess").Value & "," & var_650 & ")")
  loc_13EDC0D:     unk_42EEFE.Execute var_CC, var_6A4, 
  loc_13EDCB8:     var_B4.MoveNext
  loc_13EDCBD:     GoTo loc_13ED753
  loc_13EDCC0:   End If
  loc_13EDCC0: End If
  loc_13EDCC5: Set var_B4 = Nothing
  loc_13EDCCB: Call var_94.Quit
  loc_13EDCEA: MsgBox("Upload Process Completed SuccessFully.", &H40, var_104, var_124, var_144)
  loc_13EDCFA: Exit Sub
  loc_13EDCFB: ' Referenced from: 13ED48C
  loc_13EDD11: Set var_C8 = Err()
  loc_13EDD17: Call 0.Method_arg_2C (var_CC, 0, var_104)
  loc_13EDD22: MsgBox(CVar(var_CC), var_124, var_144, , )
  loc_13EDD35: Exit Sub
End Sub

Public Sub Proc_334_17_12B1DC8
  'Data Table: 42EEB8
  Dim var_A0 As String
  Dim var_108 As Double
  Dim var_B0 As String
  Dim var_128 As Integer
  loc_12B17B4: For var_90 = LBound(arg_10, 1) To UBound(arg_10, 1): var_88 = var_90 'Long
  loc_12B17C5:   Me.Recordset15.AddNew var_A0, var_B0
  loc_12B17FE:   Me.Recordset15.Fields.Item("SupplierGSTIN").Value = arg_10(var_88, 1).global_0
  loc_12B1841:   Me.Recordset15.Fields.Item("SupplierName").Value = arg_10(var_88, 2).global_0
  loc_12B1884:   Me.Recordset15.Fields.Item("InvoiceNo").Value = arg_10(var_88, 3).global_0
  loc_12B18C7:   Me.Recordset15.Fields.Item("InvoiceType").Value = arg_10(var_88, 4).global_0
  loc_12B1915:   Me.Recordset15.Fields.Item("InvoiceDate").Value = CVar(Proc_6_34_14ECF20(CStr(arg_10(var_88, 5).global_0)))
  loc_12B198B:   Me.Recordset15.Fields.Item("InvoiceValue").Value = Format(CVar(Val(CStr(arg_10(var_88, 6).global_0))), "0.00")
  loc_12B19D7:   Me.Recordset15.Fields.Item("PlaceOfSupply").Value = arg_10(var_88, 7).global_0
  loc_12B1A1A:   Me.Recordset15.Fields.Item("ReverseCharge").Value = arg_10(var_88, 8).global_0
  loc_12B1A3A:   var_128 = -1
  loc_12B1A6B:   var_B0 = "-"
  loc_12B1A97:   var_108 = Val(CStr(IIf((arg_10(var_88, 9).global_0 = vbNullString) Or (arg_10(var_88, 9).global_0 = "0.00"), var_128, arg_10(var_88, 9))))
  loc_12B1AE1:   Me.Recordset15.Fields.Item("TaxRate").Value = Format(CVar(var_108), "0.00")
  loc_12B1B63:   Me.Recordset15.Fields.Item("TaxableValue").Value = Format(CVar(Val(CStr(arg_10(var_88, &HA).global_0))), "0.00")
  loc_12B1BDF:   Me.Recordset15.Fields.Item("IGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HB).global_0))), "0.00")
  loc_12B1C5B:   Me.Recordset15.Fields.Item("CGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HC).global_0))), "0.00")
  loc_12B1CD7:   Me.Recordset15.Fields.Item("SGST").Value = Format(CVar(Val(CStr(arg_10(var_88, &HD).global_0))), "0.00")
  loc_12B1D16:   var_B0 = "0.00"
  loc_12B1D53:   Me.Recordset15.Fields.Item("Cess").Value = Format(CVar(Val(CStr(arg_10(var_88, &HE).global_0))), var_B0)
  loc_12B1D83:   var_A0 = "ReturnStatus"
  loc_12B1D9F:   Me.Recordset15.Fields.Item(var_A0).Value = arg_10(var_88, &HF).global_0
  loc_12B1DB9:   Me.Recordset15.Update var_A0, var_B0
  loc_12B1DC1: Next var_90 'Long
  loc_12B1DC6: Exit Sub
End Sub
