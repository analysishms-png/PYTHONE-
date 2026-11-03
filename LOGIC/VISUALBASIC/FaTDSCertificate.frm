VERSION 5.00
Begin VB.Form FaTDSCertificate
  Caption = "T.D.S.Certificate Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FaTDSCertificate.frx":0
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 165
  ClientTop = 450
  ClientWidth = 9135
  ClientHeight = 6525
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 9135
    Height = 450
    TabIndex = 22
  End
  Begin DataGrid DGParty
    Left = 9990
    Top = 4710
    Width = 5100
    Height = 2670
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 12
  End
  Begin Frame Frame_DETAIL1
    ForeColor = &H0&
    Left = 1680
    Top = 4665
    Width = 9840
    Height = 690
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
    BorderStyle = 0 'None
    Begin TextBox TXT
      Index = 4
      ForeColor = &HC00000&
      Left = 6165
      Top = 390
      Width = 3525
      Height = 285
      TabIndex = 8
      BorderStyle = 0 'None
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
    Begin TextBox TXT
      Index = 5
      ForeColor = &HC00000&
      Left = 6165
      Top = 75
      Width = 3525
      Height = 285
      TabIndex = 7
      BorderStyle = 0 'None
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
    Begin TextBox TXT
      Index = 3
      ForeColor = &HC00000&
      Left = 1800
      Top = 75
      Width = 1545
      Height = 285
      TabIndex = 6
      BorderStyle = 0 'None
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
    Begin Label Label1
      Caption = "Total TDS Amount"
      Index = 6
      ForeColor = &HC00000&
      Left = 0
      Top = 75
      Width = 1725
      Height = 240
      TabIndex = 18
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
    Begin Label Label1
      Caption = "Full Name of Sign.Auth."
      Index = 3
      ForeColor = &HC00000&
      Left = 3735
      Top = 60
      Width = 2265
      Height = 345
      TabIndex = 17
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      WordWrap = -1  'True
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
      Caption = "Designation"
      Index = 4
      ForeColor = &HC00000&
      Left = 4860
      Top = 435
      Width = 1125
      Height = 240
      TabIndex = 16
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
      WordWrap = -1  'True
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
  Begin TextBox TXT
    Index = 6
    ForeColor = &HC00000&
    Left = 5640
    Top = 945
    Width = 1215
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
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
  Begin TextBox TXT
    Index = 7
    ForeColor = &HC00000&
    Left = 5640
    Top = 1260
    Width = 1215
    Height = 285
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin TextBox TXT
    Index = 1
    ForeColor = &HC00000&
    Left = 3315
    Top = 1260
    Width = 1230
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 13
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
  Begin TextBox TXT
    Index = 2
    ForeColor = &HC00000&
    Left = 3315
    Top = 1575
    Width = 3540
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin TextBox TXT
    Index = 0
    ForeColor = &HC00000&
    Left = 3315
    Top = 945
    Width = 1215
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid FGrid
    Left = 840
    Top = 1905
    Width = 11775
    Height = 2535
    TabIndex = 5
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5520
    Top = 6570
    Width = 2790
    Height = 285
    TabIndex = 21
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
    Left = 2145
    Top = 6570
    Width = 2880
    Height = 255
    TabIndex = 20
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
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 19
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
    Caption = "From Date"
    Index = 1
    ForeColor = &HC00000&
    Left = 4590
    Top = 945
    Width = 990
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
  End
  Begin Label Label1
    Caption = "To Date"
    Index = 7
    ForeColor = &HC00000&
    Left = 4815
    Top = 1305
    Width = 735
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
  End
  Begin Label Label1
    Caption = "Certificate Date"
    Index = 0
    ForeColor = &HC00000&
    Left = 1785
    Top = 1275
    Width = 1470
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
  End
  Begin Label Label1
    Caption = "Account Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 1815
    Top = 1590
    Width = 1380
    Height = 240
    TabIndex = 10
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
    Caption = "Certificate No."
    Index = 2
    ForeColor = &HC00000&
    Left = 1815
    Top = 960
    Width = 1350
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

Attribute VB_Name = "FaTDSCertificate"


Private Sub TopCtrl1_UnknownEvent_A 'FB881C
  'Data Table: 45DF50
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  Dim var_EC As Variant
  Dim var_8C As String
  Dim var_F4 As TextBox
  Dim var_BC As TextBox
  loc_FB8688: On Error Goto loc_FB87F4
  loc_FB8697: Set var_90 = Me
  loc_FB86AE: Call Proc_206_28_E9B2D8(Proc_5_1_100CB50("ADD", var_90))
  loc_FB86B9: Call Proc_206_27_F1A058(global_72)
  loc_FB86D4: unk_45DF5A.Execute "SELECT Max(CertiNo) as ID FROM TDSCerti", var_B4, -1
  loc_FB86DF: Set var_88 = var_90
  loc_FB86FC: If (var_88.RecordCount > 0) Then
  loc_FB8716:   var_BC = var_88.Fields.Item("ID")
  loc_FB8725:   Proc_183_3_E7D1C8(var_CC, CVar(var_BC))
  loc_FB8732:   var_EC = (var_CC + 1)
  loc_FB8745:   Set var_F0 = Me.TXT
  loc_FB874B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_F4)
  loc_FB8753:   var_F4.Text = CStr(var_EC)
  loc_FB8770: Else
  loc_FB8774:   var_8C = CStr(1)
  loc_FB8782:   Set var_90 = Me.TXT
  loc_FB8788:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_FB8790:   var_BC.Text = var_8C
  loc_FB879F: End If
  loc_FB87AC: Set var_90 = Me.TXT
  loc_FB87B2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_BC)
  loc_FB87BA: var_BC.Enabled = True
  loc_FB87D1: Set var_90 = Me.TXT
  loc_FB87D7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_FB87DF: var_BC.SetFocus
  loc_FB87F0: Set var_88 = Nothing
  loc_FB87F3: Exit Sub
  loc_FB87F4: ' Referenced from: FB8688
  loc_FB87FA: Call 0.Method_arg_50 (var_8C)
  loc_FB880F: Proc_183_57_104AA84(var_8C, "TopCtrl1_eAdd")
  loc_FB881B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'ECE6B0
  'Data Table: 45DF50
  loc_ECE614: On Error Goto loc_ECE685
  loc_ECE64E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_ECE666:   var_108 = "INI"
  loc_ECE674:   Call Proc_206_28_E9B2D8(Proc_5_1_100CB50(var_108, Me))
  loc_ECE67F:   Call Proc_206_30_148EA00(global_72)
  loc_ECE684: End If
  loc_ECE684: Exit Sub
  loc_ECE685: ' Referenced from: ECE614
  loc_ECE68B: Call 0.Method_arg_50 (var_108)
  loc_ECE693: var_118 = "TopCtrl1_eCancel"
  loc_ECE6A0: Proc_183_57_104AA84(var_108)
  loc_ECE6AC: Exit Sub
  loc_ECE6AD: StAryRecCopy
End Sub

Private Sub TopCtrl1_UnknownEvent_C '102E0FC
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim unk_45DF5A As Connection15
  Dim var_128 As TextBox
  Dim var_100 As Variant
  loc_102DED4: On Error Goto loc_102E0C9
  loc_102DEE0: var_A0 = Me.RecordCount
  loc_102DEEE: If (var_A0 > 0) Then
  loc_102DEFC:   var_E0 = "Delete Entry !"
  loc_102DF28:   If (MsgBox("Are You Sure To Delete This ? ", &H114, var_E0, var_100, var_120) = 6) Then
  loc_102DF34:     unk_45DF5A.BeginTrans var_A0
  loc_102DF4A:     var_94 = Me.Bookmark 'Variant
  loc_102DF6E:     Set var_124 = Me.TXT
  loc_102DF74:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_12C, "Update TDSCHAL1 Set CertiNo='',CertiDate=NULL WHERE CertiNo=")
  loc_102DF7C:     var_120 = var_128.Text
  loc_102DF8A:     Proc_183_9_EAA760(var_E0, CVar(var_12C))
  loc_102DF92:     var_100 = -1 & var_E0 
  loc_102DFA0:     unk_45DF5A.Execute CStr(var_100), var_134, 
  loc_102DFDC:     Set var_124 = Me.TXT
  loc_102DFE2:     Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_12C, "Delete From TDSCerti Where CertiNo =")
  loc_102DFEA:     var_120 = var_128.Text
  loc_102DFF8:     Proc_183_9_EAA760(var_E0, CVar(var_12C))
  loc_102E000:     var_100 = -1 & var_E0 
  loc_102E00E:     unk_45DF5A.Execute CStr(var_100), var_134, 
  loc_102E030:     unk_45DF5A.CommitTrans
  loc_102E040:     Me.Requery -1
  loc_102E060:     If (CVar(Me.RecordCount) >= var_94) Then
  loc_102E06D:       Me.Bookmark = var_94
  loc_102E075:     Else
  loc_102E089:       If (Me.EOF = 0) Then
  loc_102E092:         Me.MoveLast
  loc_102E097:       End If
  loc_102E097:     End If
  loc_102E097:     Call Proc_206_30_148EA00()
  loc_102E0B8:     Proc_5_0_110649C(&HFF, Me)
  loc_102E0C0:   End If
  loc_102E0C0: End If
  loc_102E0C5: Set var_98 = Nothing
  loc_102E0C8: Exit Sub
  loc_102E0C9: ' Referenced from: 102DED4
  loc_102E0CF: unk_45DF5A.RollbackTrans
  loc_102E0DA: Call 0.Method_arg_50 (var_12C, global_72)
  loc_102E0EF: Proc_183_57_104AA84(var_12C, "TopCtrl1_eDel")
  loc_102E0FB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'EF84E4
  'Data Table: 45DF50
  Dim var_94 As TextBox
  loc_EF8414: On Error Goto loc_EF84B9
  loc_EF842C: var_88 = "EDIT"
  loc_EF843A: Call Proc_206_28_E9B2D8(Proc_5_1_100CB50(var_88, Me))
  loc_EF8452: Set var_8C = Me.TXT
  loc_EF8458: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_EF8460: var_94.Enabled = False
  loc_EF8479: Set var_8C = Me.TXT
  loc_EF847F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_EF8487: var_94.Enabled = False
  loc_EF849E: Set var_8C = Me.TXT
  loc_EF84A4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_EF84AC: var_94.SetFocus
  loc_EF84B8: Exit Sub
  loc_EF84B9: ' Referenced from: EF8414
  loc_EF84BF: Call 0.Method_arg_50 (var_88)
  loc_EF84D4: Proc_183_57_104AA84(var_88, "TopCtrl1_eEdit")
  loc_EF84E0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18860
  'Data Table: 45DF50
  loc_E18855: Me.Global.Unload Me
  loc_E1885D: Exit Sub
  loc_E1885E: var_2800 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EE25B8
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EE2508: On Error Goto loc_EE258F
  loc_EE2522: If (Me.RecordCount <= 0) Then
  loc_EE252B:   var_B8 = "Information"
  loc_EE2546:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EE2556:   Exit Sub
  loc_EE2557: End If
  loc_EE255E: var_10C = "SELECT CertiNo as SearchCode,CertiNo,CertiDate,Name,TDSAmt FROM TDSCerti Left Join SubGroup ON TDSCerti.Code=SubGroup.SubCode WHERE TDSCERTI.LOGSITE_CODE='" & MemVar_1F92078
  loc_EE2565: MemVar_1F920E4 = var_10C & "' ORDER BY CertiNo"
  loc_EE2572: MemVar_1F92120 = Me
  loc_EE2589: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EE258E: Exit Sub
  loc_EE258F: ' Referenced from: EE2508
  loc_EE2595: Call 0.Method_arg_50 (var_10C)
  loc_EE25AA: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EE25B6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E37BD8
  'Data Table: 45DF50
  Dim var_2701 As Double
  loc_E37BC8: Proc_5_0_110649C(&HFF, Me)
  loc_E37BD0: Call Proc_206_30_148EA00(global_72)
  loc_E37BD5: Exit Sub
  loc_E37BD6: var_2701 = 1
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E37B18
  'Data Table: 45DF50
  Dim var_2701 As Double
  loc_E37B08: Proc_5_0_110649C(&HFF, Me)
  loc_E37B10: Call Proc_206_30_148EA00(global_72)
  loc_E37B15: Exit Sub
  loc_E37B16: var_2701 = 4
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E37A58
  'Data Table: 45DF50
  Dim var_2701 As Double
  loc_E37A48: Proc_5_0_110649C(&HFF, Me)
  loc_E37A50: Call Proc_206_30_148EA00(global_72)
  loc_E37A55: Exit Sub
  loc_E37A56: var_2701 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E379F8
  'Data Table: 45DF50
  Dim var_2701 As Double
  loc_E379E8: Proc_5_0_110649C(&HFF, Me)
  loc_E379F0: Call Proc_206_30_148EA00(global_72)
  loc_E379F5: Exit Sub
  loc_E379F6: var_2701 = 2
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '124D568
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_DC As Variant
  Dim var_A8 As Fields15
  Dim var_BC As Field20
  Dim var_FC As String
  Dim unk_45DF5A As Connection15
  Dim var_CC As Variant
  Dim var_114 As String
  Dim var_130 As String
  loc_124D040: On Error Goto loc_124D540
  loc_124D04C: var_A4 = Me.RecordCount
  loc_124D05A: If (var_A4 <= 0) Then
  loc_124D05D:   Exit Sub
  loc_124D05E: End If
  loc_124D05E: var_DC = "SELECT PARTY_LIST.ADD1,PARTY_LIST.ADD2,PARTY_LIST.CITY_NAME,PARTY_LIST.name AS Party,0 AS Interest,TDSCHAL1.Amt AS ONAmt,TDSCHAL1.TDS AS TDSPer,TDSCHAL1.TDSAmt,TDSCHAL1.ChalNo,TDSCHAL1.ChalDate,TDSCHAL1.CertiNo,TDSCHAL1.CertiDate,FullName,Desig,TDSCHAL.BANKNAME AS TDS_BankName From ((TDSCERTI LEFT JOIN TDSCHAL1 ON TDSCERTI.CERTINO=TDSCHAL1.CERTINO) LEFT JOIN PARTY_LIST ON PARTY_LIST.SUBCODE=TDSCERTI.CODE) LEFT JOIN TDSCHAL ON TDSCHAL.DOCID=TDSCHAL1.DOCID WHERE TDSCERTI.CERTINO='"
  loc_124D078: var_A8 = Me.Fields
  loc_124D080: var_BC = var_A8.Item("CertiNo")
  loc_124D088: var_CC = var_BC.Value
  loc_124D094: var_FC = "'"
  loc_124D09E: var_88 = CStr(var_DC & var_CC & var_FC)
  loc_124D0B9: If (var_88 = vbNullString) Then
  loc_124D0BC:   Exit Sub
  loc_124D0BD: End If
  loc_124D0D3: unk_45DF5A.Execute var_88, var_CC, -1
  loc_124D0DE: Set var_9C = var_A8
  loc_124D0F3: Call 0.Method_arg_108 (var_A8)
  loc_124D0FE: MemVar_1F921E4 = var_A8
  loc_124D116: Call 0.Method_arg_90 (var_A8, var_A4, var_9E)
  loc_124D11E: Call 0.Method_arg_24 (1)
  loc_124D12A: For var_110 =  To CInt(var_A4): var_A8 = var_110 'Integer
  loc_124D143:   Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D14B:   Call 0.Method_arg_20 (var_BC)
  loc_124D153:   Call 0.Method_arg_30 (var_114)
  loc_124D169:   var_124 = Ucase(CVar(var_114)) 'Variant
  loc_124D199:   If (var_124 = Ucase("comp_name")) Then
  loc_124D1BD:     Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D1C5:     Call 0.Method_arg_20 (var_BC)
  loc_124D1CD:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_124D1E3:   Else
  loc_124D205:     If (var_124 = Ucase("comp_add1")) Then
  loc_124D229:       Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D231:       Call 0.Method_arg_20 (var_BC)
  loc_124D239:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_124D24F:     Else
  loc_124D271:       If (var_124 = Ucase("comp_add2")) Then
  loc_124D295:         Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D29D:         Call 0.Method_arg_20 (var_BC)
  loc_124D2A5:         Call 0.Method_arg_38 ("'" & MemVar_1F92138 & "'")
  loc_124D2BB:       Else
  loc_124D2DD:         If (var_124 = Ucase("comp_city")) Then
  loc_124D301:           Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D309:           Call 0.Method_arg_20 (var_BC)
  loc_124D311:           Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_124D327:         Else
  loc_124D349:           If (var_124 = Ucase("Title")) Then
  loc_124D35F:             Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D367:             Call 0.Method_arg_20 (var_BC)
  loc_124D36F:             Call 0.Method_arg_38 ("'TDS Certificate'")
  loc_124D37E:           Else
  loc_124D3A0:             If (var_124 = Ucase("FinYear")) Then
  loc_124D3BB:               var_114 = CStr(Year(MemVar_1F920F4))
  loc_124D3C6:               var_130 = "'FOR THE PERIOD F/Y. " & var_114 & "-"
  loc_124D3CC:               var_DC = MemVar_1F920FC
  loc_124D3FC:               Call 0.Method_arg_90 (var_A8, CLng(var_9E))
  loc_124D404:               Call 0.Method_arg_20 (var_BC)
  loc_124D40C:               Call 0.Method_arg_38 (var_130 & CStr(Year(var_DC)) & "'")
  loc_124D435:             Else
  loc_124D457:               If (var_124 = Ucase("CerMth")) Then
  loc_124D46B:                 Set var_A8 = Me.TXT
  loc_124D471:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_BC)
  loc_124D488:                 Call 0.Method_arg_194 (var_BC, var_114)
  loc_124D4AB:                 Call 0.Method_arg_90 (var_144, CLng(var_9E))
  loc_124D4B3:                 Call 0.Method_arg_20 (var_148)
  loc_124D4BB:                 Call 0.Method_arg_38 ("'Month Of " & var_114 & "'")
  loc_124D4D4:               End If
  loc_124D4D4:             End If
  loc_124D4D4:           End If
  loc_124D4D4:         End If
  loc_124D4D4:       End If
  loc_124D4D4:     End If
  loc_124D4D4:   End If
  loc_124D4D7: Next var_110 'Integer
  loc_124D4F5: Call 0.Method_arg_64 (var_A8, CVar(var_9C))
  loc_124D4FD: Call 0.Method_arg_2C (var_DC)
  loc_124D50B: Call 0.Method_arg_150 (var_FC)
  loc_124D516: Call 0.Method_arg_50 (var_114)
  loc_124D52F: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_124D53C: Set var_9C = Nothing
  loc_124D53F: Exit Sub
  loc_124D540: ' Referenced from: 124D040
  loc_124D546: Call 0.Method_arg_50 (var_114, var_114)
  loc_124D55B: Proc_183_57_104AA84(var_114, "TopCtrl1_ePrn")
  loc_124D567: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0B53C
  'Data Table: 45DF50
  Dim Me As Recordset15
  loc_E0B533: Me.Requery -1
  loc_E0B538: Exit Sub
  loc_E0B539: Set var_8C = 
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13ED34C
  'Data Table: 45DF50
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_98 As MSHFlexGrid
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_A4 As String
  Dim var_9C As TextBox
  Dim var_13C As String
  Dim unk_45DF5A As Connection15
  Dim var_A0 As Recordset15
  Dim var_144 As Fields15
  Dim var_148 As Variant
  Dim var_8A As Integer
  Dim var_160 As Variant
  Dim var_210 As Variant
  Dim var_258 As TextBox
  Dim var_4DC As Double
  Dim var_2A4 As TextBox
  Dim var_2F0 As TextBox
  Dim var_384 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_180 As Variant
  Dim var_240 As Variant
  Dim var_250 As Variant
  Dim var_28C As Variant
  Dim var_344 As Variant
  Dim var_3A4 As Variant
  Dim var_1D8 As Variant
  Dim Me As Recordset15
  loc_13ECA20: On Error Goto loc_13ED30F
  loc_13ECA2E: Set var_98 = Me.TXT
  loc_13ECA34: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13ECA5D: If (Proc_183_19_E8DAFC(var_9C, "Certificate No.") = 0) Then
  loc_13ECA60:   Exit Sub
  loc_13ECA61: End If
  loc_13ECA6C: Set var_98 = Me.TXT
  loc_13ECA72: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_9C)
  loc_13ECA9B: If (Proc_183_19_E8DAFC(var_9C, "A/C Name") = 0) Then
  loc_13ECA9E:   Exit Sub
  loc_13ECA9F: End If
  loc_13ECAAA: Set var_98 = Me.TXT
  loc_13ECAB0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C)
  loc_13ECAD9: If (Proc_183_19_E8DAFC(var_9C, "From Date") = 0) Then
  loc_13ECADC:   Exit Sub
  loc_13ECADD: End If
  loc_13ECAE8: Set var_98 = Me.TXT
  loc_13ECAEE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_9C)
  loc_13ECAFF: Set var_A0 = var_9C
  loc_13ECB17: If (Proc_183_19_E8DAFC(var_A0, "To Date") = 0) Then
  loc_13ECB1A:   Exit Sub
  loc_13ECB1B: End If
  loc_13ECB1E: Call Proc_206_32_F64E60(var_A6)
  loc_13ECB29: If (var_A6 = &HFF) Then
  loc_13ECB2C:   Exit Sub
  loc_13ECB2D: End If
  loc_13ECB2D: var_B8 = 1
  loc_13ECB36: var_D8 = 1
  loc_13ECB54: var_108 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13ECB5A: var_118 = Trim(var_108)
  loc_13ECB76: If (var_118 = vbNullString) Then
  loc_13ECB8C:   var_F8 = "Item Detail Required "
  loc_13ECB92:   MsgBox(var_F8, 0, var_108, var_118, var_138)
  loc_13ECBB5:   Me.FGrid.Row = 1
  loc_13ECBC1:   Set var_98 = Me.FGrid
  loc_13ECBE5:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_13ECBED:   Exit Sub
  loc_13ECBEE: End If
  loc_13ECBF2: Set var_98 = Me.TopCtrl1
  loc_13ECBF8: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(FGrid.DispID_8001)
  loc_13ECC00: var_A4 = CStr(var_D8)
  loc_13ECC11: If (var_A4 = "Add") Then
  loc_13ECC41:   Set var_98 = Me.TXT
  loc_13ECC47:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Select Count(*) From TDSCerti Where CertiNo='", var_F8, -1, var_A0)
  loc_13ECC4F:   var_144 = var_9C.Text
  loc_13ECC68:   unk_45DF5A.Execute 0 & var_A4 & "'", var_148, var_108
  loc_13ECC70:   var_B8 = var_A0.Fields
  loc_13ECC78:    = var_144.Item(var_9C)
  loc_13ECC80:    = var_148.Value
  loc_13ECCAD:   If (var_108 > 0) Then
  loc_13ECCC9:     MsgBox("Duplicate Certificate No.", 0, var_108, var_118, var_138)
  loc_13ECCD9:     Exit Sub
  loc_13ECCDA:   End If
  loc_13ECCDA: End If
  loc_13ECCE8: unk_45DF5A.BeginTrans var_14C
  loc_13ECD0B: Set var_98 = Me.TXT
  loc_13ECD11: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "Update TDSChal1 Set CertiNo='',CertiDate=NULL WHERE CertiNo='")
  loc_13ECD19: var_F8 = var_9C.Text
  loc_13ECD22: var_13C = -1 & var_A4
  loc_13ECD32: unk_45DF5A.Execute 0 & var_A4 & "'", var_A0, &HFF
  loc_13ECD6A: Set var_98 = Me.TXT
  loc_13ECD70: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "DELETE FROM TDSCerti WHERE CertiNo='")
  loc_13ECD78: var_F8 = var_9C.Text
  loc_13ECD81: var_13C = -1 & var_A4
  loc_13ECD91: unk_45DF5A.Execute 0 & var_A4 & "'", var_A0, 
  loc_13ECDB9: Set var_98 = Me.TXT
  loc_13ECDBF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C)
  loc_13ECDC7: var_A4 = var_9C.Text
  loc_13ECDD7: Set var_A0 = Me.TXT
  loc_13ECDDD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13ECDEC: Proc_183_7_EB0C44(var_108, CVar(var_144))
  loc_13ECDFF: Set var_148 = Me.TXT
  loc_13ECE05: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_160)
  loc_13ECE1D: Set var_1B4 = Me.TXT
  loc_13ECE23: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B8)
  loc_13ECE32: Proc_183_7_EB0C44(var_1D8, CVar(var_1B8))
  loc_13ECE42: Set var_1FC = Me.TXT
  loc_13ECE48: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_200)
  loc_13ECE57: Proc_183_7_EB0C44(var_220, CVar(var_200))
  loc_13ECE6A: Set var_254 = Me.TXT
  loc_13ECE70: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_258)
  loc_13ECE85: var_4DC = Val(var_258.Text)
  loc_13ECE96: Set var_2A0 = Me.TXT
  loc_13ECE9C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_2A4, var_2A8)
  loc_13ECEB7: Set var_2EC = Me.TXT
  loc_13ECEBD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_2F0)
  loc_13ECED5: Proc_183_7_EB0C44(var_394, MemVar_1F920EC)
  loc_13ECEDE: Set var_3C8 = Me.TopCtrl1
  loc_13ECEE4: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_144)
  loc_13ECF2F: var_13C = "Insert Into TDSCerti (CertiNo,CertiDate,Code,Site_Code,FromDate,ToDate,TDSAmt,FullName,Desig,U_Name,U_EntDt,U_AE,LOGSITE_CODE)  Values ('" & var_A4
  loc_13ECF8B: var_250 = CVar(var_13C & "',") & var_108 & ",'" & CVar(var_160.Tag) & "','" & CVar(MemVar_1F92070) & "'," & var_1D8 & "," & var_220 & "," 
  loc_13ECFDF: var_3A4 = var_250 & CVar(var_2A4.Text) & ",'" & CVar(var_2A8) & "','" & CVar(var_2F0.Text) & "','" & CVar(MemVar_1F920C8) & "'," & var_394 
  loc_13ED019: unk_45DF5A.Execute CStr(var_3A4 & ",'" & IIf((CStr(var_3D8) = "Add"), "A", "E") & "','" & CVar(MemVar_1F92078) & "')"), var_4D0, -1
  loc_13ED0C6: For var_4E0 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_4E0 'Integer
  loc_13ED0DA:   Set var_98 = Me.TXT
  loc_13ED0E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4)
  loc_13ED0E8:   1 = var_9C.Text
  loc_13ED0F8:   Set var_A0 = Me.TXT
  loc_13ED0FE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_144)
  loc_13ED10D:   Proc_183_7_EB0C44(var_108, CVar(var_144))
  loc_13ED116:   var_240 = CVar(CLng(var_92)) 'Long
  loc_13ED11E:   var_28C = CVar(CLng(9)) 'Long
  loc_13ED13D:   var_344 = CVar(CLng(var_92)) 'Long
  loc_13ED145:   var_384 = CVar(CLng(&HA)) 'Long
  loc_13ED18F:   var_B8 = ",SITE_cODE='"
  loc_13ED1A7:   var_180 = CVar("Update TDSCHAL1 Set CertiNo='" & var_A4 & "',CertiDate=") & var_108 & var_B8 & CVar(MemVar_1F92070) & "',LOGSITE_CODE='" 
  loc_13ED1D9:   var_210 = var_180 & CVar(MemVar_1F92078) & "' WHERE DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) & "' AND VSNO=" & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_13ED1E7:   unk_45DF5A.Execute CStr(var_210), var_220, -1
  loc_13ED22C: Next var_4E0 'Integer
  loc_13ED237: unk_45DF5A.CommitTrans
  loc_13ED23E: var_8A = 0
  loc_13ED24C: Me.Requery -1
  loc_13ED270: Set var_98 = Me.TXT
  loc_13ED276: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_A4, "CERTINO ='")
  loc_13ED27E: 0 = var_9C.Text
  loc_13ED297: Me.Find 1 & var_A4 & "'", var_B8, var_8A
  loc_13ED2B0: Set var_98 = Me.TopCtrl1
  loc_13ED2B6: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_13ED2CF: If (CStr() = "Add") Then
  loc_13ED2D2:   Call TopCtrl1_UnknownEvent_A()
  loc_13ED2D7:   Exit Sub
  loc_13ED2D8: End If
  loc_13ED2ED: var_A4 = "INI"
  loc_13ED2FB: Call Proc_206_28_E9B2D8(Proc_5_1_100CB50(var_A4, Me))
  loc_13ED30B: Set var_88 = Nothing
  loc_13ED30E: Exit Sub
  loc_13ED30F: ' Referenced from: 13ECA20
  loc_13ED315: If (var_8A = &HFF) Then
  loc_13ED31E:   unk_45DF5A.RollbackTrans
  loc_13ED323: End If
  loc_13ED329: Call 0.Method_arg_50 (var_A4)
  loc_13ED33E: Proc_183_57_104AA84(var_A4, "TopCtrl1_eSave")
  loc_13ED34A: Exit Sub
  loc_13ED34B: Exit Sub
End Sub

Private Sub Form_Load() '10FB4B4
  'Data Table: 45DF50
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A8 As Variant
  loc_10FB180: On Error Goto loc_10FB48A
  loc_10FB18D: Set var_A8 = Me.TopCtrl1
  loc_10FB193: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_8001000B("AEDP")
  loc_10FB1A1: Call 0.Method_arg_50 (var_AC)
  loc_10FB1B1: Set var_A8 = Me.TopCtrl1
  loc_10FB1B7: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030007(CVar(var_AC))
  loc_10FB1CE: Call 0.Method_arg_38 (MemVar_1F923AC)
  loc_10FB1DF: Call 0.Method_arg_3C (MemVar_1F920EC)
  loc_10FB1F0: Call 0.Method_arg_54 (MemVar_1F9206C)
  loc_10FB201: Call 0.Method_arg_1C (MemVar_1F92070)
  loc_10FB212: Call 0.Method_arg_20 (MemVar_1F92078)
  loc_10FB223: Call 0.Method_arg_28 (MemVar_1F923D0)
  loc_10FB234: Call 0.Method_arg_24 (MemVar_1F923D4)
  loc_10FB245: Call 0.Method_Form_Load0 (MemVar_1F920C8)
  loc_10FB256: Call 0.Method_arg_30 (MemVar_1F923B4)
  loc_10FB267: Call 0.Method_arg_34 (MemVar_1F923B8)
  loc_10FB281: Call 0.Method_Form_Load4 (MemVar_1F921DC)
  loc_10FB28F: Set var_A8 = MemVar_1F92044
  loc_10FB29E: Call 0.Method_Form_Load8 (var_A8)
  loc_10FB2B4: Me.TopCtrl1.Clone
  loc_10FB2CE: Call 0.Method_arg_50 (var_A8, -1)
  loc_10FB2F6: Me.Recordset15.CursorLocation = 3
  loc_10FB319: var_AC = "Select SubCode As Code,Name From SubGroup Left Join City C on SubGroup.CityCode=C.CityCode Where Nature Not in ('Bank','Cash','Sale','Purchase','Customer') AND (SUBGROUP.LOGSITE_CODE='" & MemVar_1F92078
  loc_10FB33E: CVarUnk
  loc_10FB343: VerifyVarObj
  loc_10FB349: Set var_A8 = Me.DGParty
  loc_10FB34F: LateIdStAd
  loc_10FB379: Me.DGParty.CursorLocation = 3
  loc_10FB39C: var_AC = "SELECT CertiNo AS Search_Code,T.*,SG.Name AS PartyName From TDSCerti T Left Join SubGroup SG On SG.SubCode=T.Code WHERE T.LOGSITE_CODE='" & MemVar_1F92078
  loc_10FB3AD: ar(var_AC & "' OR SUBGROUP.LOGSITE_CODE='HO') Order by Name"), CVar(MemVar_1F921DC), 2 CVar(var_AC & "' Order By T.CertiNo"), CVar(MemVar_1F921DC), 2
  loc_10FB3C4: Set var_A8 = Me
  loc_10FB3CD: var_AC = "INI"
  loc_10FB3DB: Call Proc_206_28_E9B2D8(Proc_5_1_100CB50(var_AC, var_A8, New, 3, -1), var_A8, New)
  loc_10FB3E6: Call Proc_206_26_128A294(3, -1)
  loc_10FB3EB: Call Proc_206_30_148EA00(var_A8)
  loc_10FB3F7: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10FB40F: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F921B4))
  loc_10FB425: Me.Frame_DETAIL1.BackColor = CLng(MemVar_1F921B0)
  loc_10FB43C: Me.LblUser.Left = CDbl(13500)
  loc_10FB453: Me.LblUser.Top = CDbl(7800)
  loc_10FB46A: Me.LblLDt.Top = CDbl(8160)
  loc_10FB481: Me.LblLDt.Left = CDbl(13500)
  loc_10FB489: Exit Sub
  loc_10FB48A: ' Referenced from: 10FB180
  loc_10FB490: Call 0.Method_arg_50 (var_AC)
  loc_10FB498: var_CC = "Form_Load"
  loc_10FB4A5: Proc_183_57_104AA84(var_AC)
  loc_10FB4B1: Exit Sub
  loc_10FB4B2: ThisVCall
End Sub

Private Sub Form_Resize() 'E71B10
  'Data Table: 45DF50
  loc_E71ABA: Call 0.Method_arg_50 (var_88)
  loc_E71ACC: Me.LblFormCaption.Caption = var_88
  loc_E71AE5: Me.LblFormCaption.Left = CDbl(0)
  loc_E71AF3: Call 0.Method_arg_100 (var_90)
  loc_E71B05: Me.LblFormCaption.Width = var_90
  loc_E71B0D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E520A0
  'Data Table: 45DF50
  loc_E52073: Set global_72 = Nothing
  loc_E52085: Set global_68 = Nothing
  loc_E52097: Set global_76 = Nothing
  loc_E5209E: Exit Sub
End Sub

Private Sub Form_Activate() 'E380B4
  'Data Table: 45DF50
  loc_E38090: Set var_88 = Me.TopCtrl1
  loc_E38096: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030000()
  loc_E380AB: If (CLng(CInt()) = &H2D) Then
  loc_E380AE:   Call TopCtrl1_UnknownEvent_15()
  loc_E380B3: End If
  loc_E380B3: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E6A390
  'Data Table: 45DF50
  loc_E6A348: On Error Goto loc_E6A366
  loc_E6A35D: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E6A365: Exit Sub
  loc_E6A366: ' Referenced from: E6A348
  loc_E6A36C: Call 0.Method_arg_50 (var_8C)
  loc_E6A381: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E6A38D: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1023C40
  'Data Table: 45DF50
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_1023A20: On Error Goto loc_1023C17
  loc_1023A2D: Set var_88 = Me.TXT
  loc_1023A33: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1023A41: Proc_183_28_E20B20(var_8C)
  loc_1023A4D: Call Proc_206_29_E53FDC(var_8C)
  loc_1023A55: var_92 = Index
  loc_1023A60: If (var_92 = CInt(2)) Then
  loc_1023AB1:   Set var_88 = Me.TXT
  loc_1023AB7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1023ABF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1023AD7:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_1023ADA:     Exit Sub
  loc_1023ADB:   End If
  loc_1023AE8:   Set var_88 = Me.TXT
  loc_1023AEE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1023AF6:   var_A0 = var_8C.Text
  loc_1023AFE:   var_D4 = CVar(var_A0) 'String
  loc_1023B43:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_1023B4C:     Me.MoveFirst
  loc_1023B71:     Set var_88 = Me.TXT
  loc_1023B77:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_1023B7F:     0 = var_8C.Text
  loc_1023B8D:     Proc_183_9_EAA760(var_D4, CVar(var_A0))
  loc_1023BA3:     Me.Find CStr(1 & var_D4), var_F8, 
  loc_1023BBB:   End If
  loc_1023BBE: Else
  loc_1023BC6:   If Not (var_92 = CInt(0)) Then
  loc_1023BD1:     If Not (var_92 = CInt(1)) Then
  loc_1023BDC:       If Not (var_92 = CInt(6)) Then
  loc_1023BE7:         If Not (var_92 = CInt(7)) Then
  loc_1023BF2:           If Not (var_92 = CInt(5)) Then
  loc_1023BFD:             If (var_92 = CInt(4)) Then
  loc_1023C00:             End If
  loc_1023C00:           End If
  loc_1023C00:         End If
  loc_1023C00:       End If
  loc_1023C00:     End If
  loc_1023C08:     var_A0 = "{Home}+{End}"
  loc_1023C0E:     Proc_303_0_FB9B68(var_A0)
  loc_1023C16:   End If
  loc_1023C16: End If
  loc_1023C16: Exit Sub
  loc_1023C17: ' Referenced from: 1023A20
  loc_1023C1D: Call 0.Method_arg_50 (var_A0)
  loc_1023C32: Proc_183_57_104AA84(var_A0, "Txt_GotFocus")
  loc_1023C3E: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FAD830
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_B0 As String
  loc_FAD6A8: On Error Goto loc_FAD805
  loc_FAD6B5: If (CLng(Shift) = &H1B) Then
  loc_FAD6B8:   Call Proc_206_29_E53FDC()
  loc_FAD6BD:   Exit Sub
  loc_FAD6BE: End If
  loc_FAD6C1: var_86 = KeyCode
  loc_FAD6CC: If (var_86 = CInt(2)) Then
  loc_FAD705:   Proc_183_34_1305540(Me.DGParty, Me.TXT, KeyCode, global_68)
  loc_FAD715: End If
  loc_FAD731: If (CBool(Me.DGParty.Visible) = 0) Then
  loc_FAD749:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAD752:     Proc_183_29_E52C04(Shift, arg_14, Shift)
  loc_FAD757:   End If
  loc_FAD75B:   Set var_8C = Me.TopCtrl1
  loc_FAD761:   Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(0)
  loc_FAD77A:   If (CStr(1) = "Add") Then
  loc_FAD792:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAD79B:       Proc_183_30_E53180(Shift, arg_14)
  loc_FAD7A0:     End If
  loc_FAD7A3:   Else
  loc_FAD7A7:     Set var_8C = Me.TopCtrl1
  loc_FAD7AD:     Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005(var_86)
  loc_FAD7B5:     var_B0 = CStr()
  loc_FAD7C6:     If (var_B0 = "Edit") Then
  loc_FAD7DE:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_FAD7E7:         Proc_183_30_E53180(Shift)
  loc_FAD7EC:       End If
  loc_FAD7EC:     End If
  loc_FAD7EC:   End If
  loc_FAD801:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FAD804:   End If
  loc_FAD804: End If
  loc_FAD804: Exit Sub
  loc_FAD805: ' Referenced from: FAD6A8
  loc_FAD80B: Call 0.Method_arg_50 (var_B0)
  loc_FAD820: Proc_183_57_104AA84(var_B0, "Txt_KeyDown")
  loc_FAD82C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F0FAA0
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  loc_F0F9BC: On Error Goto loc_F0FA76
  loc_F0F9C2: Proc_183_46_E070C0(arg_10)
  loc_F0F9CA: var_86 = KeyAscii
  loc_F0F9D5: If (var_86 = CInt(0)) Then
  loc_F0F9E2:   Set var_8C = Me.TXT
  loc_F0F9E8:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_90)
  loc_F0FA03:   Proc_183_22_129AEBC(var_90, arg_10, 8)
  loc_F0FA12: Else
  loc_F0FA1A:   If (var_86 = CInt(2)) Then
  loc_F0FA39:     If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_F0FA4B:       var_AC = "Name"
  loc_F0FA66:       Proc_183_41_1459C78(Me.TXT, KeyAscii, global_68, arg_10)
  loc_F0FA75:     End If
  loc_F0FA75:   End If
  loc_F0FA75: End If
  loc_F0FA75: Exit Sub
  loc_F0FA76: ' Referenced from: F0F9BC
  loc_F0FA7C: Call 0.Method_arg_50 (var_AC, var_AC, 0)
  loc_F0FA91: Proc_183_57_104AA84(var_AC, "TXT_KeyPress")
  loc_F0FA9D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E5062C
  'Data Table: 45DF50
  loc_E5060A: Set var_88 = Me.TXT
  loc_E50610: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E5061E: Proc_183_27_E22608(var_8C)
  loc_E5062A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '116E3E0
  'Data Table: 45DF50
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim var_98 As String
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  loc_116E028: On Error Goto loc_116E3B5
  loc_116E02E: var_86 = Cancel
  loc_116E039: If (var_86 = CInt(0)) Then
  loc_116E047:   Set var_8C = Me.TXT
  loc_116E04D:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_116E076:   If (Proc_183_19_E8DAFC(var_90, "Certificate No") = 0) Then
  loc_116E084:     Set var_8C = Me.TXT
  loc_116E08A:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_116E092:     var_90.SetFocus
  loc_116E0A0:     arg_10 = &HFF
  loc_116E0A3:     Exit Sub
  loc_116E0A4:   End If
  loc_116E0AF:   Set var_8C = Me.TXT
  loc_116E0B5:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_116E0C1:   Proc_183_6_EA3004(CVar(var_90), arg_10)
  loc_116E0D6:   Set var_94 = Me.TXT
  loc_116E0DC:   Call 0.Method_Txt_Validate0 (CInt(0), var_AC)
  loc_116E0E4:   var_AC.Text = CStr(var_86)
  loc_116E0FB:   Call Proc_206_32_F64E60(var_AE)
  loc_116E106:   If (var_AE = &HFF) Then
  loc_116E10B:     arg_10 = &HFF
  loc_116E10E:     Exit Sub
  loc_116E10F:   End If
  loc_116E112: Else
  loc_116E11A:   If Not (var_86 = CInt(6)) Then
  loc_116E125:     If Not (var_86 = CInt(7)) Then
  loc_116E130:       If (var_86 = CInt(1)) Then
  loc_116E133:       End If
  loc_116E133:     End If
  loc_116E140:     Set var_8C = Me.TXT
  loc_116E146:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E17E:     If (Len(Trim(CVar(var_90.Text))) = 0) Then
  loc_116E186:       var_98 = CStr(MemVar_1F920EC)
  loc_116E193:       Set var_8C = Me.TXT
  loc_116E199:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E1A1:       var_90.Text = var_98
  loc_116E1B3:     Else
  loc_116E1C0:       Set var_8C = Me.TXT
  loc_116E1C6:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E1DD:       Call 0.Method_arg_184 (var_90, var_98)
  loc_116E1EF:       Set var_AC = Me.TXT
  loc_116E1F5:       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_116E1FD:       Me.TXT.Text = var_98
  loc_116E210:     End If
  loc_116E218:     If (Cancel = CInt(7)) Then
  loc_116E21B:       Call Proc_206_31_13A94E8(arg_10)
  loc_116E220:     End If
  loc_116E223:   Else
  loc_116E22B:     If (var_86 = CInt(2)) Then
  loc_116E27C:       Set var_8C = Me.TXT
  loc_116E282:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E2A2:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_116E2B2:         Set var_8C = Me.TXT
  loc_116E2B8:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E2C0:         var_90.Text = vbNullString
  loc_116E2D9:         Set var_8C = Me.TXT
  loc_116E2DF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_116E2E7:         var_90.Tag = vbNullString
  loc_116E2F6:       Else
  loc_116E331:         Set var_94 = Me.TXT
  loc_116E337:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_116E33F:         var_AC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_116E383:         var_98 = CStr(Me.Fields.Item("Code").Value)
  loc_116E390:         Set var_94 = Me.TXT
  loc_116E396:         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_116E39E:         var_AC.Tag = var_98
  loc_116E3B4:       End If
  loc_116E3B4:     End If
  loc_116E3B4:   End If
  loc_116E3B4: End If
  loc_116E3B4: Exit Sub
  loc_116E3B5: ' Referenced from: 116E028
  loc_116E3BB: Call 0.Method_arg_50 (var_98)
  loc_116E3C3: var_104 = "Txt_Validate"
  loc_116E3D0: Proc_183_57_104AA84(var_98)
  loc_116E3DC: Exit Sub
End Sub

Private Sub DGParty_UnknownEvent_9 'F4C764
  'Data Table: 45DF50
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4C65B: Me.DGParty.Visible = False
  loc_F4C67A: If (Me.RecordCount > 0) Then
  loc_F4C6B9:   Set var_B4 = Me.TXT
  loc_F4C6BF:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4C6C7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4C6FA:   var_B0 = Me.Fields.Item("Name")
  loc_F4C719:   Set var_B4 = Me.TXT
  loc_F4C71F:   Call 0.Method_DGParty_UnknownEvent_90 (CInt(2), var_B8)
  loc_F4C727:   var_B8.Text = CStr(var_B0.Value)
  loc_F4C73D: End If
  loc_F4C748: Set var_A8 = Me.TXT
  loc_F4C74E: Call 0.Method_DGParty_UnknownEvent_90 (CInt(2))
  loc_F4C756: var_B0.SetFocus
  loc_F4C762: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '10D0198
  'Data Table: 45DF50
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As TextBox
  Dim var_134 As Double
  Dim var_12C As String
  Dim var_128 As TextBox
  loc_10CFEAC: On Error Goto loc_10D016E
  loc_10CFEB3: Set var_8C = Me.TopCtrl1
  loc_10CFEB9: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_10CFEC1: var_A0 = CStr()
  loc_10CFED2: If (var_A0 = "Browse") Then
  loc_10CFED5:   Exit Sub
  loc_10CFED6: End If
  loc_10CFEF3: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_10CFEF6:   Exit Sub
  loc_10CFEF7: End If
  loc_10CFF08: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10CFF2A:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10CFF64:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10CFF86:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_10CFF9C:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10CFFA5:         Set var_114 = Me.FGrid
  loc_10CFFC0:       Else
  loc_10CFFD3:         Me.FGrid.Rows = 1
  loc_10CFFF0:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10CFFF8:         Set var_114 = Me.FGrid
  loc_10D0027:         Me.FGrid.FixedRows = 1
  loc_10D002F:       End If
  loc_10D003D:       Set var_8C = Me.TXT
  loc_10D0043:       Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_114, vbNullString, FGrid.DispID_10000)
  loc_10D007C:       For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_10D0086:         var_B0 = CVar(CLng(var_86)) 'Long
  loc_10D00B0:         var_134 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_10D00C1:         Set var_8C = Me.TXT
  loc_10D00C7:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_114, var_A0, var_134, CVar(CLng(6)))
  loc_10D00CF:         var_B0 = var_D0
  loc_10D00E2:         var_12C = CStr((Val(var_A0) + var_134))
  loc_10D00F0:         Set var_124 = Me.TXT
  loc_10D00F6:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(3), var_128, var_12C)
  loc_10D00FE:         var_128.Text = 1
  loc_10D011F:       Next var_118 'Integer
  loc_10D0124:     End If
  loc_10D0127:   Else
  loc_10D0148:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_10D0158:   End If
  loc_10D015C:   Set var_8C = Me.FGrid
  loc_10D016D: End If
  loc_10D016D: Exit Sub
  loc_10D016E: ' Referenced from: 10CFEAC
  loc_10D0174: Call 0.Method_arg_50 (var_A0)
  loc_10D0189: Proc_183_57_104AA84(var_A0, "FGrid_KeyUp")
  loc_10D0195: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EBADCC
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EBAD3A: On Error Goto loc_EBADA3
  loc_EBAD43: Me.MoveFirst
  loc_EBAD5D: var_8C = "SearchCode='" & MyValue
  loc_EBAD6D: Me.Find var_8C & "'", 0, 1
  loc_EBAD95: Proc_5_0_110649C(&HFF, Me, global_72)
  loc_EBAD9D: Call Proc_206_30_148EA00(0)
  loc_EBADA2: Exit Sub
  loc_EBADA3: ' Referenced from: EBAD3A
  loc_EBADA9: Call 0.Method_arg_50 (var_8C)
  loc_EBADBE: Proc_183_57_104AA84(var_8C, "SEARCHBACK")
  loc_EBADCA: Exit Sub
End Sub

Public Sub Proc_206_26_128A294
  'Data Table: 45DF50
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_B4 As Variant
  Dim var_B8 As TextBox
  Dim var_E4 As MSHFlexGrid
  Dim var_E8 As String
  Dim var_F8 As Variant
  Dim var_118 As String
  loc_1289CC4: On Error Goto loc_128A26C
  loc_1289CDA: Me.FGrid.Left = CVar(CDbl(600))
  loc_1289CF5: Me.FGrid.Top = CVar(CDbl(1900))
  loc_1289D10: Me.FGrid.Width = CVar(CDbl(14000))
  loc_1289D26: Set var_A8 = Me.TXT
  loc_1289D2C: Call 0.Method_Proc_206_26_128A2940 (CInt(2), var_AC)
  loc_1289D4B: Me.DGParty.Left = CVar(var_AC.Left)
  loc_1289D67: Set var_B4 = Me.TXT
  loc_1289D6D: Call 0.Method_Proc_206_26_128A2940 (CInt(2), var_B8)
  loc_1289D88: Set var_A8 = Me.TXT
  loc_1289D8E: Call 0.Method_Proc_206_26_128A2940 (CInt(2), var_AC)
  loc_1289DA2: var_94 = CVar((var_AC.Top + var_B8.Height)) 'Single
  loc_1289DB1: Me.DGParty.Top = CVar(var_AC.Left)
  loc_1289DD6: Me.DGParty.Height = CVar(CDbl(5640))
  loc_1289E19: Me.Frame_DETAIL1.Top = ((CDbl(Me.FGrid.Top) + CDbl(Me.FGrid.Height)) + CDbl(&H32))
  loc_1289E4C: Me.Frame_DETAIL1.Width = CDbl(Me.FGrid.Width)
  loc_1289E5F: Set var_E4 = Me.FGrid
  loc_1289E70: var_E8 = CStr(CLng(var_E4.BackColor))
  loc_1289E76: global_52 = var_E8
  loc_1289E8C: var_E4.Cols = &HB
  loc_1289E94: var_94 = CVar(CLng(0)) 'Long
  loc_1289E99: var_F8 = &HFA
  loc_1289EA5: LateIdCallSt
  loc_1289EAD: var_94 = 0
  loc_1289EB9: var_F8 = CVar(CLng(1)) 'Long
  loc_1289EBE: var_118 = "Chal.Type"
  loc_1289EC7: LateIdCallSt
  loc_1289ED2: var_94 = CVar(CLng(1)) 'Long
  loc_1289EDD: var_F8 = CVar(CInt(1)) 'Integer
  loc_1289EE4: LateIdCallSt
  loc_1289EEF: var_94 = CVar(CLng(1)) 'Long
  loc_1289EFA: var_F8 = CVar(CInt(1)) 'Integer
  loc_1289F01: LateIdCallSt
  loc_1289F0C: var_94 = CVar(CLng(1)) 'Long
  loc_1289F11: var_F8 = &H578
  loc_1289F1D: LateIdCallSt
  loc_1289F25: var_94 = 0
  loc_1289F31: var_F8 = CVar(CLng(2)) 'Long
  loc_1289F36: var_118 = "Chal.No."
  loc_1289F3F: LateIdCallSt
  loc_1289F4A: var_94 = CVar(CLng(2)) 'Long
  loc_1289F55: var_F8 = CVar(CInt(7)) 'Integer
  loc_1289F5C: LateIdCallSt
  loc_1289F67: var_94 = CVar(CLng(2)) 'Long
  loc_1289F72: var_F8 = CVar(CInt(7)) 'Integer
  loc_1289F79: LateIdCallSt
  loc_1289F84: var_94 = CVar(CLng(2)) 'Long
  loc_1289F89: var_F8 = &H3B6
  loc_1289F95: LateIdCallSt
  loc_1289F9D: var_94 = 0
  loc_1289FA9: var_F8 = CVar(CLng(3)) 'Long
  loc_1289FAE: var_118 = "Date"
  loc_1289FB7: LateIdCallSt
  loc_1289FC2: var_94 = CVar(CLng(3)) 'Long
  loc_1289FCD: var_F8 = CVar(CInt(1)) 'Integer
  loc_1289FD4: LateIdCallSt
  loc_1289FDF: var_94 = CVar(CLng(3)) 'Long
  loc_1289FEA: var_F8 = CVar(CInt(1)) 'Integer
  loc_1289FF1: LateIdCallSt
  loc_1289FFC: var_94 = CVar(CLng(3)) 'Long
  loc_128A001: var_F8 = &H3B6
  loc_128A00D: LateIdCallSt
  loc_128A018: var_94 = CVar(CLng(4)) 'Long
  loc_128A01D: var_F8 = 0
  loc_128A029: LateIdCallSt
  loc_128A031: var_94 = 0
  loc_128A03D: var_F8 = CVar(CLng(4)) 'Long
  loc_128A042: var_118 = "On Amount"
  loc_128A04B: LateIdCallSt
  loc_128A056: var_94 = CVar(CLng(4)) 'Long
  loc_128A061: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A068: LateIdCallSt
  loc_128A073: var_94 = CVar(CLng(4)) 'Long
  loc_128A07E: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A085: LateIdCallSt
  loc_128A090: var_94 = CVar(CLng(4)) 'Long
  loc_128A095: var_F8 = &H5DC
  loc_128A0A1: LateIdCallSt
  loc_128A0A9: var_94 = 0
  loc_128A0B5: var_F8 = CVar(CLng(5)) 'Long
  loc_128A0BA: var_118 = "T.D.S.%"
  loc_128A0C3: LateIdCallSt
  loc_128A0CE: var_94 = CVar(CLng(5)) 'Long
  loc_128A0D9: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A0E0: LateIdCallSt
  loc_128A0EB: var_94 = CVar(CLng(5)) 'Long
  loc_128A0F6: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A0FD: LateIdCallSt
  loc_128A108: var_94 = CVar(CLng(5)) 'Long
  loc_128A10D: var_F8 = &H44C
  loc_128A119: LateIdCallSt
  loc_128A121: var_94 = 0
  loc_128A12D: var_F8 = CVar(CLng(6)) 'Long
  loc_128A132: var_118 = "T.D.S.Amt"
  loc_128A13B: LateIdCallSt
  loc_128A146: var_94 = CVar(CLng(6)) 'Long
  loc_128A151: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A158: LateIdCallSt
  loc_128A163: var_94 = CVar(CLng(6)) 'Long
  loc_128A16E: var_F8 = CVar(CInt(7)) 'Integer
  loc_128A175: LateIdCallSt
  loc_128A180: var_94 = CVar(CLng(6)) 'Long
  loc_128A185: var_F8 = &H4B0
  loc_128A191: LateIdCallSt
  loc_128A19C: var_94 = CVar(CLng(7)) 'Long
  loc_128A1A1: var_F8 = 0
  loc_128A1AD: LateIdCallSt
  loc_128A1B5: var_94 = 0
  loc_128A1C1: var_F8 = CVar(CLng(8)) 'Long
  loc_128A1C6: var_118 = "Cash/Bank A/C Name"
  loc_128A1CF: LateIdCallSt
  loc_128A1DA: var_94 = CVar(CLng(8)) 'Long
  loc_128A1E5: var_F8 = CVar(CInt(1)) 'Integer
  loc_128A1EC: LateIdCallSt
  loc_128A1F7: var_94 = CVar(CLng(8)) 'Long
  loc_128A202: var_F8 = CVar(CInt(1)) 'Integer
  loc_128A209: LateIdCallSt
  loc_128A214: var_94 = CVar(CLng(8)) 'Long
  loc_128A219: var_F8 = &HDAC
  loc_128A225: LateIdCallSt
  loc_128A230: var_94 = CVar(CLng(9)) 'Long
  loc_128A235: var_F8 = 0
  loc_128A241: LateIdCallSt
  loc_128A24C: var_94 = CVar(CLng(&HA)) 'Long
  loc_128A251: var_F8 = 0
  loc_128A25D: LateIdCallSt
  loc_128A267: Set var_E4 = Nothing 
  loc_128A26B: Exit Sub
  loc_128A26C: ' Referenced from: 1289CC4
  loc_128A272: Call 0.Method_arg_50 (var_E8, var_E4, var_F8, var_94, var_E4, var_F8, var_94, var_E4)
  loc_128A287: Proc_183_57_104AA84(var_E8, "Ini_Grid", var_F8, var_94, var_E4)
  loc_128A293: Exit Sub
End Sub

Public Sub Proc_206_27_F1A058
  'Data Table: 45DF50
  Dim var_98 As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  loc_F19F6E: Set var_8C = Me.TXT
  loc_F19F74: Call 0.Method_Proc_206_27_F1A058C (var_8E, var_86)
  loc_F19F84: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F19F9A:   Set var_8C = Me.TXT
  loc_F19FA0:   Call 0.Method_Proc_206_27_F1A0580 (CInt(var_86), var_98)
  loc_F19FA8:   var_98.Text = vbNullString
  loc_F19FC4:   Set var_8C = Me.TXT
  loc_F19FCA:   Call 0.Method_Proc_206_27_F1A0580 (CInt(var_86), var_98)
  loc_F19FD2:   var_98.Tag = vbNullString
  loc_F19FE1: Next var_92 'Byte
  loc_F19FFA: Me.FGrid.Rows = 1
  loc_F1A017: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_F1A01F: Set var_98 = Me.FGrid
  loc_F1A04E: Me.FGrid.FixedRows = 1
  loc_F1A056: Exit Sub
End Sub

Public Sub Proc_206_28_E9B2D8(arg_C) 'E9B2D8
  'Data Table: 45DF50
  Dim var_98 As TextBox
  loc_E9B25E: Set var_8C = Me.TXT
  loc_E9B264: Call 0.Method_Proc_206_28_E9B2D8C (var_8E, var_86)
  loc_E9B274: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9B28A:   Set var_8C = Me.TXT
  loc_E9B290:   Call 0.Method_Proc_206_28_E9B2D80 (CInt(var_86), var_98)
  loc_E9B298:   var_98.Enabled = arg_C
  loc_E9B2A7: Next var_92 'Byte
  loc_E9B2BA: Set var_8C = Me.TXT
  loc_E9B2C0: Call 0.Method_Proc_206_28_E9B2D80 (CInt(3), var_98)
  loc_E9B2C8: var_98.Enabled = False
  loc_E9B2D4: Exit Sub
End Sub

Public Sub Proc_206_29_E53FDC
  'Data Table: 45DF50
  loc_E53FC0: If (CBool(Me.DGParty.Visible) = &HFF) Then
  loc_E53FD2:   Me.DGParty.Visible = False
  loc_E53FDA: End If
  loc_E53FDA: Exit Sub
End Sub

Public Sub Proc_206_30_148EA00
  'Data Table: 45DF50
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim var_C4 As String
  Dim var_B0 As Variant
  Dim var_8A As Integer
  Dim var_D4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Fields15
  Dim var_138 As Variant
  Dim var_114 As Variant
  Dim var_18C As Fields15
  Dim var_124 As Variant
  Dim var_1F0 As Double
  Dim var_1A0 As TextBox
  loc_148DDB8: On Error Goto loc_148E9D5
  loc_148DDD2: If (Me.RecordCount > 0) Then
  loc_148DE11:   Set var_AC = Me.TXT
  loc_148DE17:   Call 0.Method_Proc_206_30_148EA000 (CInt(0), var_B0)
  loc_148DE1F:   var_B0.Text = CStr(Me.Fields.Item("CertiNo").Value)
  loc_148DE71:   Set var_AC = Me.TXT
  loc_148DE77:   Call 0.Method_Proc_206_30_148EA000 (CInt(1), var_B0)
  loc_148DE7F:   var_B0.Text = CStr(Me.Fields.Item("CertiDate").Value)
  loc_148DED1:   Set var_AC = Me.TXT
  loc_148DED7:   Call 0.Method_Proc_206_30_148EA000 (CInt(2), var_B0)
  loc_148DEDF:   var_B0.Text = CStr(Me.Fields.Item("PartyName").Value)
  loc_148DF31:   Set var_AC = Me.TXT
  loc_148DF37:   Call 0.Method_Proc_206_30_148EA000 (CInt(2), var_B0)
  loc_148DF3F:   var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_148DF91:   Set var_AC = Me.TXT
  loc_148DF97:   Call 0.Method_Proc_206_30_148EA000 (CInt(6), var_B0)
  loc_148DF9F:   var_B0.Text = CStr(Me.Fields.Item("FromDate").Value)
  loc_148DFF1:   Set var_AC = Me.TXT
  loc_148DFF7:   Call 0.Method_Proc_206_30_148EA000 (CInt(7), var_B0)
  loc_148DFFF:   var_B0.Text = CStr(Me.Fields.Item("ToDate").Value)
  loc_148E051:   Set var_AC = Me.TXT
  loc_148E057:   Call 0.Method_Proc_206_30_148EA000 (CInt(3), var_B0)
  loc_148E05F:   var_B0.Text = CStr(Me.Fields.Item("TDSAmt").Value)
  loc_148E0B1:   Set var_AC = Me.TXT
  loc_148E0B7:   Call 0.Method_Proc_206_30_148EA000 (CInt(5), var_B0)
  loc_148E0BF:   var_B0.Text = CStr(Me.Fields.Item("FullName").Value)
  loc_148E111:   Set var_AC = Me.TXT
  loc_148E117:   Call 0.Method_Proc_206_30_148EA000 (CInt(4), var_B0)
  loc_148E11F:   var_B0.Text = CStr(Me.Fields.Item("Desig").Value)
  loc_148E144:   Me.FGrid.Redraw = False
  loc_148E15F:   Me.FGrid.Rows = 1
  loc_148E169:   var_8A = 1
  loc_148E179:   var_D4 = "SELECT TDSChal1.*,SubGroup.Name AS BANBNAME,TDSCHAL.BANKCODE FROM (TDSChal LEFT JOIN TDSChal1 ON TDSChal.DocId=TDSChal1.DocId) LEFT JOIN SubGroup ON TDSChal.BankCode = SubGroup.SubCode WHERE TDSCHAL1.CERTINO='"
  loc_148E1C2:   unk_45DF5A.Execute CStr(var_D4 & Me.Fields.Item("CertiNo").Value & "' ORDER BY TDSChal1.CHALDATE,TDSChal1.CHALTYPE,TDSChal1.CHALNO"), var_124, -1
  loc_148E1CD:   Set var_88 = var_AC
  loc_148E28A:   var_188 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")), var_88.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_148E2CF:   Me.LblUser.Caption = CStr(var_8A & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_188)))
  loc_148E39B:   var_C4 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE")))
  loc_148E3AA:   var_188 = IIf((var_C4 = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "E"), "Last Update : ", "entdt : "))
  loc_148E3C9:   var_1A0 = var_88.Fields.Item("U_EntDt")
  loc_148E3EF:   Me.LblLDt.Caption = CStr(var_188 & CVar(Proc_6_38_E68A98(CVar(var_1A0))))
  loc_148E427:   ' Referenced from: 148E913
  loc_148E436:   If Not(var_88.EOF) Then
  loc_148E439:     var_A4 = vbNullString
  loc_148E443:     Set var_94 = Me.FGrid
  loc_148E458:     Set var_1E8 = Me.FGrid
  loc_148E45F:     var_A4 = CVar(CLng(var_8A)) 'Long
  loc_148E467:     var_F4 = CVar(CLng(&HA)) 'Long
  loc_148E475:     LateIdCallSt
  loc_148E4B6:     var_E4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("ChalType")), CVar(CLng(1)), CVar(CLng(var_8A)), var_1E8, vbNullString)) 'String
  loc_148E4BD:     LateIdCallSt
  loc_148E506:     Proc_183_3_E7D1C8(var_E4, CVar(var_88.Fields.Item("ChalNo")), CVar(CLng(2)), CVar(CLng(var_8A)), var_1E8)
  loc_148E50F:     var_104 = CVar(CStr(var_E4)) 'String
  loc_148E516:     LateIdCallSt
  loc_148E52E:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148E536:     var_114 = CVar(CLng(3)) 'Long
  loc_148E566:     var_E4 = CVar(CStr(var_88.Fields.Item("ChalDate").Value)) 'String
  loc_148E56D:     LateIdCallSt
  loc_148E5A3:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148E5AB:     var_138 = CVar(CLng(4)) 'Long
  loc_148E5D8:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_148E5DF:     LateIdCallSt
  loc_148E615:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148E61D:     var_138 = CVar(CLng(5)) 'Long
  loc_148E64A:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_148E651:     LateIdCallSt
  loc_148E687:     var_F4 = CVar(CLng(var_8A)) 'Long
  loc_148E68F:     var_138 = CVar(CLng(6)) 'Long
  loc_148E6BC:     var_124 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_148E6C3:     LateIdCallSt
  loc_148E6DD:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148E6E5:     var_114 = CVar(CLng(7)) 'Long
  loc_148E715:     var_E4 = CVar(CStr(var_88.Fields.Item("BankCode").Value)) 'String
  loc_148E71C:     LateIdCallSt
  loc_148E736:     var_D4 = CVar(CLng(var_8A)) 'Long
  loc_148E73E:     var_114 = CVar(CLng(8)) 'Long
  loc_148E76E:     var_E4 = CVar(CStr(var_88.Fields.Item("BANBNAME").Value)) 'String
  loc_148E775:     LateIdCallSt
  loc_148E7C4:     var_E4 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("DocID")), CVar(CLng(9)), CVar(CLng(var_8A)), var_1E8, var_E4, CVar(CLng(9)), CVar(CLng(var_8A)))) 'String
  loc_148E7CB:     LateIdCallSt
  loc_148E7E9:     var_114 = CVar(CLng(&HA)) 'Long
  loc_148E805:     var_A8 = var_88.Fields.Item("VSno")
  loc_148E814:     Proc_183_3_E7D1C8(var_E4, CVar(var_A8), var_114, CVar(CLng(var_8A)), var_1E8, var_E4)
  loc_148E824:     LateIdCallSt
  loc_148E83A:     Set var_1E8 = Nothing 
  loc_148E84C:     Set var_94 = Me.TXT
  loc_148E852:     Call 0.Method_Proc_206_30_148EA000 (CInt(3), var_A8, var_C4, var_1E8, CVar(CStr(var_E4)), var_1E8)
  loc_148E85A:     var_E4 = var_A8.Text
  loc_148E867:     var_1F0 = Val(var_C4)
  loc_148E8A9:     var_D4 = CVar(var_1F0) 'Double
  loc_148E8B0:     var_E4 = (var_D4 + var_88.Fields.Item("TDSAmt").Value)
  loc_148E8CE:     Set var_18C = Me.TXT
  loc_148E8D4:     Call 0.Method_Proc_206_30_148EA000 (CInt(3), var_1A0, CStr(Format(var_E4, "0.00")), 1, 1)
  loc_148E8DC:     var_1A0.Text = var_1F0
  loc_148E908:     var_8A = (var_8A + 1)
  loc_148E90E:     var_88.MoveNext
  loc_148E913:     GoTo loc_148E427
  loc_148E916:   End If
  loc_148E929:   Me.FGrid.FixedRows = 1
  loc_148E93F:   Me.FGrid.Redraw = True
  loc_148E94D:   If (var_8A = 1) Then
  loc_148E963:     Me.FGrid.Rows = 1
  loc_148E980:     var_E4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_148E988:     Set var_A8 = Me.FGrid
  loc_148E9B7:     Me.FGrid.FixedRows = 1
  loc_148E9BF:   End If
  loc_148E9C2: Else
  loc_148E9C2:   Call Proc_206_27_F1A058(FGrid.DispID_10000, var_E4, var_8A, var_114)
  loc_148E9C7: End If
  loc_148E9C7: Call Proc_206_29_E53FDC(var_D4, var_1E8)
  loc_148E9D1: Set var_88 = Nothing
  loc_148E9D4: Exit Sub
  loc_148E9D5: ' Referenced from: 148DDB8
  loc_148E9DB: Call 0.Method_arg_50 (var_C4)
  loc_148E9F0: Proc_183_57_104AA84(var_C4, "MoveRec")
  loc_148E9FC: Exit Sub
End Sub

Public Sub Proc_206_31_13A94E8
  'Data Table: 45DF50
  Dim var_B0 As Variant
  Dim var_94 As Variant
  Dim var_8A As Integer
  Dim var_A0 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_C0 As Variant
  Dim var_154 As Variant
  Dim var_15C As Variant
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim unk_45DF5A As Connection15
  Dim var_88 As Recordset15
  Dim var_8E As Integer
  Dim var_1B4 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_160 As String
  Dim var_114 As Variant
  Dim var_1E0 As Variant
  Dim var_98 As Variant
  Dim var_24C As Double
  loc_13A8BF4: On Error Goto loc_13A94BE
  loc_13A8C02: Set var_94 = Me.TXT
  loc_13A8C08: Call 0.Method_Proc_206_31_13A94E80 (CInt(2))
  loc_13A8C31: If (Proc_183_19_E8DAFC(var_98, "A/C Name") = 0) Then
  loc_13A8C34:   Exit Sub
  loc_13A8C35: End If
  loc_13A8C40: Set var_94 = Me.TXT
  loc_13A8C46: Call 0.Method_Proc_206_31_13A94E80 (CInt(6), var_98)
  loc_13A8C6F: If (Proc_183_19_E8DAFC(var_98, "From Date") = 0) Then
  loc_13A8C72:   Exit Sub
  loc_13A8C73: End If
  loc_13A8C7E: Set var_94 = Me.TXT
  loc_13A8C84: Call 0.Method_Proc_206_31_13A94E80 (CInt(7), var_98)
  loc_13A8CAD: If (Proc_183_19_E8DAFC(var_98, "To Date") = 0) Then
  loc_13A8CB0:   Exit Sub
  loc_13A8CB1: End If
  loc_13A8CC0: Me.FGrid.Redraw = False
  loc_13A8CDB: Me.FGrid.Rows = 1
  loc_13A8CE5: var_8A = 1
  loc_13A8CFC: var_A0 = "SELECT TDSChal1.*,SubGroup.Name AS BANBNAME,TDSCHAL.BANKCODE FROM (TDSChal LEFT JOIN TDSChal1 ON TDSChal.DocId=TDSChal1.DocId) LEFT JOIN SubGroup ON TDSChal.BankCode=SubGroup.SubCode WHERE TDSCHAL1.LOGSITE_CODE='" & MemVar_1F92078
  loc_13A8D11: Set var_94 = Me.TXT
  loc_13A8D17: Call 0.Method_Proc_206_31_13A94E80 (CInt(6), var_98, CVar(var_A0 & "' AND TDSCHAL1.CHALDATE BETWEEN "), var_1C4)
  loc_13A8D26: Proc_183_7_EB0C44(var_E0, CVar(var_98), -1)
  loc_13A8D2E: var_100 = var_1C8 & var_E0 
  loc_13A8D46: Set var_9C = Me.TXT
  loc_13A8D4C: Call 0.Method_Proc_206_31_13A94E80 (CInt(7), var_114, var_100 & " AND ")
  loc_13A8D5B: Proc_183_7_EB0C44(var_134, CVar(var_114))
  loc_13A8D6C: var_154 = var_8A & var_134 & " AND TDSCHAL1.ACCODE='" 
  loc_13A8D7E: Set var_158 = Me.TXT
  loc_13A8D84: Call 0.Method_Proc_206_31_13A94E80 (CInt(2), var_15C, var_160)
  loc_13A8D8C: var_154 = var_15C.Tag
  loc_13A8DA0: var_1A0 = var_98 & CVar(var_160) & "' AND (TDSCHAL1.CertiNo='' OR TDSCHAL1.CertiNo IS NULL) ORDER BY TDSCHAL1.CHALDATE,TDSCHAL1.CHALTYPE,TDSCHAL1.CHALNO" 
  loc_13A8DAE: unk_45DF5A.Execute CStr(var_1A0), , 
  loc_13A8DB9: Set var_88 = var_1C8
  loc_13A8DED: ' Referenced from: 13A9401
  loc_13A8DFC: If Not(var_88.EOF) Then
  loc_13A8E01:   var_8E = 0
  loc_13A8E29:   For var_1CE = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1CE 'Integer
  loc_13A8E57:     var_A0 = Proc_183_2_E5A304(CVar(var_88.Fields.Item("DocID")), 1)
  loc_13A8E5E:     var_C0 = CVar(CLng(var_8C)) 'Long
  loc_13A8EAF:     Proc_183_3_E7D1C8(var_100, CVar(var_88.Fields.Item("VSno")), (CVar(CLng(9)) = CStr(Me.FGrid.TextMatrix))))
  loc_13A8ECC:     Set var_15C = Me.FGrid
  loc_13A8F0E:     If CBool(CVar(CLng(var_8C)) And (CVar(CLng(&HA)) = CVar(CStr(var_15C.TextMatrix))))) Then
  loc_13A8F13:       var_8E = &HFF
  loc_13A8F16:     End If
  loc_13A8F19:   Next var_1CE 'Integer
  loc_13A8F24:   If (var_8E = 0) Then
  loc_13A8F27:     var_B0 = vbNullString
  loc_13A8F31:     Set var_94 = Me.FGrid
  loc_13A8F46:     Set var_244 = Me.FGrid
  loc_13A8F4D:     var_B0 = CVar(CLng(var_8A)) 'Long
  loc_13A8F55:     var_190 = CVar(CLng(&HA)) 'Long
  loc_13A8F63:     LateIdCallSt
  loc_13A8FA4:     var_E0 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("ChalType")), CVar(CLng(1)), CVar(CLng(var_8A)), var_244, vbNullString)) 'String
  loc_13A8FAB:     LateIdCallSt
  loc_13A8FF4:     Proc_183_3_E7D1C8(var_E0, CVar(var_88.Fields.Item("ChalNo")), CVar(CLng(2)), CVar(CLng(var_8A)), var_244)
  loc_13A8FFD:     var_F0 = CVar(CStr(var_E0)) 'String
  loc_13A9004:     LateIdCallSt
  loc_13A901C:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A9024:     var_1B4 = CVar(CLng(3)) 'Long
  loc_13A9054:     var_E0 = CVar(CStr(var_88.Fields.Item("ChalDate").Value)) 'String
  loc_13A905B:     LateIdCallSt
  loc_13A9091:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A9099:     var_1E0 = CVar(CLng(4)) 'Long
  loc_13A90C6:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("Amt")), "0.00"))) 'String
  loc_13A90CD:     LateIdCallSt
  loc_13A9103:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A910B:     var_1E0 = CVar(CLng(5)) 'Long
  loc_13A9138:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDS")), "0.0000"))) 'String
  loc_13A913F:     LateIdCallSt
  loc_13A9175:     var_190 = CVar(CLng(var_8A)) 'Long
  loc_13A917D:     var_1E0 = CVar(CLng(6)) 'Long
  loc_13A91AA:     var_100 = CVar(CStr(Format(CVar(var_88.Fields.Item("TDSAmt")), "0.00"))) 'String
  loc_13A91B1:     LateIdCallSt
  loc_13A91CB:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A91D3:     var_1B4 = CVar(CLng(7)) 'Long
  loc_13A9203:     var_E0 = CVar(CStr(var_88.Fields.Item("BankCode").Value)) 'String
  loc_13A920A:     LateIdCallSt
  loc_13A9224:     var_C0 = CVar(CLng(var_8A)) 'Long
  loc_13A922C:     var_1B4 = CVar(CLng(8)) 'Long
  loc_13A925C:     var_E0 = CVar(CStr(var_88.Fields.Item("BANBNAME").Value)) 'String
  loc_13A9263:     LateIdCallSt
  loc_13A92B2:     var_E0 = CVar(Proc_183_2_E5A304(CVar(var_88.Fields.Item("DocID")), CVar(CLng(9)), CVar(CLng(var_8A)), var_244, var_E0, CVar(CLng(9)), CVar(CLng(var_8A)))) 'String
  loc_13A92B9:     LateIdCallSt
  loc_13A92D7:     var_1B4 = CVar(CLng(&HA)) 'Long
  loc_13A92F3:     var_98 = var_88.Fields.Item("VSno")
  loc_13A9302:     Proc_183_3_E7D1C8(var_E0, CVar(var_98), var_1B4, CVar(CLng(var_8A)), var_244, var_E0)
  loc_13A9312:     LateIdCallSt
  loc_13A933A:     Set var_94 = Me.TXT
  loc_13A9340:     Call 0.Method_Proc_206_31_13A94E80 (CInt(3), var_98, var_A0, Nothing, CVar(CStr(var_E0)), Nothing)
  loc_13A9348:     var_E0 = var_98.Text
  loc_13A9355:     var_24C = Val(var_A0)
  loc_13A9397:     var_C0 = CVar(var_24C) 'Double
  loc_13A939E:     var_E0 = (var_C0 + var_88.Fields.Item("TDSAmt").Value)
  loc_13A93BC:     Set var_158 = Me.TXT
  loc_13A93C2:     Call 0.Method_Proc_206_31_13A94E80 (CInt(3), var_15C, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_13A93CA:     var_15C.Text = var_24C
  loc_13A93F6:     var_8A = (var_8A + 1)
  loc_13A93F9:   End If
  loc_13A93FC:   var_88.MoveNext
  loc_13A9401:   GoTo loc_13A8DED
  loc_13A9404: End If
  loc_13A940A: If (var_8A = 1) Then
  loc_13A9420:   Me.FGrid.Rows = 2
  loc_13A943D:   var_E0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_13A9445:   Set var_98 = Me.FGrid
  loc_13A9474:   Me.FGrid.FixedRows = 1
  loc_13A947F: Else
  loc_13A9492:   Me.FGrid.FixedRows = 1
  loc_13A949A: End If
  loc_13A94A8: Me.FGrid.Redraw = True
  loc_13A94B0: Call Proc_206_29_E53FDC(FGrid.DispID_10000, var_E0, var_8A, var_1B4)
  loc_13A94BA: Set var_88 = Nothing
  loc_13A94BD: Exit Sub
  loc_13A94BE: ' Referenced from: 13A8BF4
  loc_13A94C4: Call 0.Method_arg_50 (var_A0, var_C0)
  loc_13A94D9: Proc_183_57_104AA84(var_A0, "FillDetail")
  loc_13A94E5: Exit Sub
End Sub

Public Sub Proc_206_32_F64E60
  'Data Table: 45DF50
  Dim var_B0 As String
  Dim var_B4 As TextBox
  Dim unk_45DF5A As Connection15
  Dim var_D4 As Fields15
  Dim var_E8 As Field20
  loc_F64D58: Set var_9C = Me.TopCtrl1
  loc_F64D5E: Call {EAEC4767-0708-4CD6-98CF31EB9AA22BBB}.DispID_68030005()
  loc_F64D66: var_B0 = CStr()
  loc_F64D77: If (var_B0 = "Add") Then
  loc_F64DA7:   Set var_9C = Me.TXT
  loc_F64DAD:   Call 0.Method_Proc_206_32_F64E600 (CInt(0), var_B4, var_B0, "Select Count(*) From TDSCERTI Where CERTINO='", var_AC, -1)
  loc_F64DCE:   unk_45DF5A.Execute var_D4 & var_B0 & "'", 0, var_E8
  loc_F64DDE:    = var_D4.Item()
  loc_F64DE6:    = var_E8.Value
  loc_F64E13:   If (var_B4.Text.Fields > 0) Then
  loc_F64E1C:     Call 0.Method_arg_50 (var_B0)
  loc_F64E3D:     MsgBox("Duplicate Certificate No.", &H40, CVar(var_B0), var_118, var_128)
  loc_F64E52:     Proc_206_32_F64E60 = &HFF
  loc_F64E58:   End If
  loc_F64E58: End If
  loc_F64E58: Proc_206_32_F64E60 = 
End Sub
