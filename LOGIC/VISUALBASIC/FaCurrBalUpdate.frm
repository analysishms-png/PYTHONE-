VERSION 5.00
Begin VB.Form FaCurrBalUpdate
  Caption = "Current Balance Updation"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 405
  ClientWidth = 7335
  ClientHeight = 3960
  LockControls = -1  'True
  Moveable = 0   'False
  Begin Frame FrOPTransfer
    Caption = "Transfer/Update Opennig From Given Databse:"
    BackColor = &HC0FFFF&
    Left = 1740
    Top = 1170
    Width = 12090
    Height = 5475
    Visible = 0   'False
    TabIndex = 0
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdBanquetTrans
      Caption = "Banquet Transfer/Update"
      Left = 1410
      Top = 3615
      Width = 3180
      Height = 600
      TabIndex = 23
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdReserveTrans
      Caption = "Reservation Transfer/Update"
      Left = 1410
      Top = 2955
      Width = 3180
      Height = 600
      TabIndex = 11
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Frame FrStockTransfer
      Caption = "Openning Transfer"
      BackColor = &HFFC0C0&
      Left = 6510
      Top = 615
      Width = 3990
      Height = 3585
      TabIndex = 3
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
      Begin CheckBox ChkGodown
        Caption = "Kitchen"
        Index = 0
        Left = 885
        Top = 405
        Width = 2145
        Height = 285
        TabIndex = 10
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Main Store"
        Index = 1
        Left = 885
        Top = 720
        Width = 1260
        Height = 285
        TabIndex = 9
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Sub Store"
        Index = 2
        Left = 885
        Top = 1035
        Width = 2145
        Height = 285
        TabIndex = 8
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "Consumable Store"
        Index = 3
        Left = 885
        Top = 1350
        Width = 2145
        Height = 285
        TabIndex = 7
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkGodown
        Caption = "House Keeping"
        Index = 4
        Left = 885
        Top = 1665
        Width = 2145
        Height = 285
        TabIndex = 6
        BeginProperty Font
          Name = "Tahoma"
          Size = 8.25
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CommandButton CmdSTOPTransfer
        Caption = "Stock Transfer/Update"
        Left = 375
        Top = 2430
        Width = 3180
        Height = 600
        TabIndex = 5
        BeginProperty Font
          Name = "Monotype Corsiva"
          Size = 12
          Charset = 0
          Weight = 700
          Underline = 0 'False
          Italic = -1 'True
          Strikethrough = 0 'False
        EndProperty
      End
      Begin CheckBox ChkFifo
        Caption = "FIFO"
        ForeColor = &HFF&
        Left = 2190
        Top = 720
        Width = 840
        Height = 285
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
      End
    End
    Begin CommandButton CmdOPTransfer
      Caption = "Ledger Transfer/Update"
      Left = 1410
      Top = 2295
      Width = 3180
      Height = 600
      TabIndex = 2
      BeginProperty Font
        Name = "Monotype Corsiva"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = -1 'True
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox TxtDatabase
      Left = 1425
      Top = 990
      Width = 3180
      Height = 300
      TabIndex = 1
    End
  End
  Begin CheckBox Check1
    Caption = "Accounts"
    Index = 1
    BackColor = &HFFFFC0&
    ForeColor = &HC00000&
    Left = 2520
    Top = 1680
    Width = 1440
    Height = 345
    TabIndex = 17
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
  Begin Frame Frame1
    Caption = "Statistics"
    BackColor = &HFFC0C0&
    ForeColor = &H40C0&
    Left = 2520
    Top = 2550
    Width = 10785
    Height = 720
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin Label Label6
      Caption = "1233"
      ForeColor = &HFF&
      Left = 4650
      Top = 240
      Width = 780
      Height = 285
      Visible = 0   'False
      TabIndex = 16
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label5
      Caption = "1222"
      ForeColor = &HFF&
      Left = 1650
      Top = 240
      Width = 780
      Height = 285
      Visible = 0   'False
      TabIndex = 15
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "Processing"
      Index = 1
      ForeColor = &HFFFFFF&
      Left = 2880
      Top = 240
      Width = 1455
      Height = 285
      Visible = 0   'False
      TabIndex = 14
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label4
      Caption = "Total Item"
      Index = 0
      ForeColor = &HFFFFFF&
      Left = -15
      Top = 240
      Width = 1425
      Height = 285
      Visible = 0   'False
      TabIndex = 13
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Arial"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataCombo TXT_ACCOUNT
    Left = 4035
    Top = 1680
    Width = 4575
    Height = 360
    Visible = 0   'False
    TabIndex = 18
  End
  Begin BtnEnh CmdExit
    Left = 6885
    Top = 4815
    Width = 2295
    Height = 930
    TabIndex = 19
  End
  Begin BtnEnh Command1
    Left = 4560
    Top = 4770
    Width = 2295
    Height = 930
    TabIndex = 20
  End
  Begin Label Label1
    Caption = "Label1"
    ForeColor = &HFF00FF&
    Left = 2520
    Top = 3870
    Width = 10815
    Height = 390
    Visible = 0   'False
    TabIndex = 22
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 21
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
End

Attribute VB_Name = "FaCurrBalUpdate"

Private global_52 As Long

Private Sub CmdOPTransfer_Click() '155B19C
  'Data Table: 4A9AE0
  Dim var_AC As Variant
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_98 As Recordset15
  Dim var_B0 As String
  Dim var_94 As Double
  Dim var_E8 As String
  Dim var_F0 As String
  Dim unk_4A9AE7 As Connection15
  Dim var_A2 As Integer
  Dim var_E4 As Variant
  Dim var_128 As Variant
  Dim var_108 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B0 As Recordset15
  Dim var_118 As Variant
  Dim var_1B8 As String
  Dim var_1AC As Fields15
  Dim var_1C0 As Fields15
  Dim var_1A8 As Variant
  Dim var_2C4 As Variant
  Dim var_A0 As Recordset15
  Dim var_384 As String
  Dim var_398 As String
  loc_155A248: On Error Goto loc_155B149
  loc_155A255: var_B0 = "Prev. Year Database Name"
  loc_155A276: If (Proc_6_27_EA565C(Me.TxtDatabase) = 0) Then
  loc_155A279:   Exit Sub
  loc_155A27A: End If
  loc_155A28F: var_9C = Me.TxtDatabase.Text
  loc_155A29B: Set var_AC = Me.CmdOPTransfer
  loc_155A2A1: var_AC.Enabled = False
  loc_155A2AD: Set var_98 = New 
  loc_155A2B8: Me.Recordset15.CursorLocation = 3
  loc_155A2DD: var_98.Open "SELECT * FROM Ledger", CVar(MemVar_1F921DC), 2
  loc_155A2ED: var_E4 = Trim(MemVar_1F9212C)
  loc_155A2F6: var_8C = CStr(var_E4)
  loc_155A308: var_94 = CDate("31/Mar/" & var_8C)
  loc_155A322: var_B0 = "Select S.SubCode,S.Name,S.GroupCode,S.GroupNature,Q.Curr_Bal,S.Site_Code,S.LogSite_Code From SubGroup S Inner Join (Select SG.SubCode,Max(SG.Name) Name,SG.GroupCode,IsNull(Sum(SCB.Curr_Bal),0) As Curr_Bal from " & var_9C
  loc_155A337: var_F0 = var_B0 & ".dbo.SubGroupCurrBal SCB Inner Join " & var_9C & ".dbo.Subgroup SG On SCB.SubCode=SG.SubCode Where SG.GroupNature Not In ('E','R') Group By SG.SubCode,SG.GroupCode)Q On S.SubCode=Q.SubCode Where Not (S.GroupCode<>Q.GroupCode Or S.Name<>Q.Name)"
  loc_155A340: unk_4A9AE7.Execute var_F0, var_E4, -1
  loc_155A34B: Set var_88 = var_AC
  loc_155A368: unk_4A9AE7.BeginTrans var_F4
  loc_155A36F: var_A2 = &HFF
  loc_155A372: ' Referenced from: 155ABCA
  loc_155A37B: var_F6 = Me.Recordset15.EOF
  loc_155A384: If Not(var_F6) Then
  loc_155A3A9:   var_AC = Me.Recordset15.Fields
  loc_155A3C2:   var_B0 = Proc_6_38_E68A98(CVar(var_AC.Item("subcode")), "Select * From Ledger Where Subcode='", var_1A8, -1, var_1AC, var_A2)
  loc_155A3D7:   var_108 = CVar("31/Mar/" & var_8C) 'String
  loc_155A3DD:   Proc_6_7_F25D88(var_118, var_108, CVar(var_AC & var_B0 & "' And V_Type='F_AO' And V_Date="), var_94)
  loc_155A3E5:   var_138 = 3 & var_118 
  loc_155A3EE:   var_148 = var_138 & " AND LOGSITE_CODE='" 
  loc_155A40F:   unk_4A9AE7.Execute CStr(var_148 & CVar(MemVar_1F92078) & "'"), -1, var_B0
  loc_155A41A:   Set var_A8 = var_1AC
  loc_155A456:   If (var_A8.RecordCount = 0) Then
  loc_155A45C:     var_C4 = "Curr_Bal"
  loc_155A47B:     var_E4 = CVar(Me.Recordset15.Fields.Item(var_C4)) 'Address
  loc_155A482:     Proc_6_39_E7C810(var_108)
  loc_155A48A:     var_D4 = 0
  loc_155A49C:     If CBool(var_108 <> var_D4) Then
  loc_155A4A5:       Call Proc_198_11_10BC15C(var_94, var_B0)
  loc_155A4BA:       Set var_1B0 = var_98 
  loc_155A4C9:       var_1B0.AddNew var_C4, var_D4
  loc_155A4D4:       var_D4 = CVar(var_B0) 'String
  loc_155A4E1:       var_1B0.Collect = "DocID"
  loc_155A4E6:       var_D4 = 1
  loc_155A4F5:       var_1B0.Collect = "V_SNo"
  loc_155A500:       var_D4 = CVar(global_60) 'String
  loc_155A50D:       var_1B0.Collect = "V_Type"
  loc_155A518:       var_D4 = CVar(global_52) 'Long
  loc_155A526:       var_1B0.Collect = "V_NO"
  loc_155A52E:       var_D4 = CVar(var_8C) 'String
  loc_155A53B:       var_1B0.Collect = "v_Prefix"
  loc_155A562:       var_E4 = CVar(Me.Recordset15.Fields.Item("Site_Code")) 'Address
  loc_155A570:       var_1B0.Collect = "Site_Code"
  loc_155A57E:       var_D4 = CDate(var_94)
  loc_155A58C:       var_1B0.Collect = "V_DATE"
  loc_155A5B3:       var_E4 = CVar(Me.Recordset15.Fields.Item("subcode")) 'Address
  loc_155A5B8:       var_D4 = "subcode"
  loc_155A5C1:       var_1B0.Collect = var_D4
  loc_155A5F5:       Proc_6_39_E7C810(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4)
  loc_155A5FD:       var_D4 = 0
  loc_155A60F:       If (var_108 > var_D4) Then
  loc_155A63B:         Proc_6_39_E7C810(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_D4)
  loc_155A64D:         var_1B0.Collect = "AmtCr"
  loc_155A65F:       Else
  loc_155A688:         Proc_6_39_E7C810(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_108)
  loc_155A690:         var_118 = Abs(var_108)
  loc_155A69E:         var_1B0.Collect = "AmtDr"
  loc_155A6AD:       End If
  loc_155A6AD:       var_D4 = "OPENING BALANCE"
  loc_155A6BC:       var_1B0.Collect = "Narration"
  loc_155A6C1:       var_D4 = "SA"
  loc_155A6D0:       var_1B0.Collect = "U_Name"
  loc_155A6E1:       var_D4 = CDate(CDate("01/Apr/" & var_8C))
  loc_155A6EF:       var_1B0.Collect = "U_EntDt"
  loc_155A6F7:       var_D4 = "A"
  loc_155A706:       var_1B0.Collect = "U_AE"
  loc_155A72D:       var_E4 = CVar(Me.Recordset15.Fields.Item("GroupCode")) 'Address
  loc_155A73B:       var_1B0.Collect = "GroupCode"
  loc_155A768:       var_E4 = CVar(Me.Recordset15.Fields.Item("GroupNature")) 'Address
  loc_155A776:       var_1B0.Collect = "GroupNature"
  loc_155A784:       var_C4 = "LogSite_Code"
  loc_155A793:       var_AC = Me.Recordset15.Fields
  loc_155A7A3:       var_E4 = CVar(var_AC.Item(var_C4)) 'Address
  loc_155A7A8:       var_D4 = "LogSite_Code"
  loc_155A7B1:       var_1B0.Collect = var_D4
  loc_155A7C7:       var_1B0.Update var_C4, var_D4
  loc_155A7CE:       Set var_1B0 = Nothing 
  loc_155A7E6:       var_B0 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_155A80C:       var_108 = CVar("01/Apr/" & var_8C & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_155A81A:       Proc_183_7_EB0C44(var_E4, var_94, var_108, var_138, -1, var_AC, var_E4, var_E4)
  loc_155A826:       var_D4 = " BETWEEN DATE_FROM AND DATE_TO"
  loc_155A839:       unk_4A9AE7.Execute CStr(var_E4 & var_E4 & var_D4), var_D4, var_D4
  loc_155A85D:     End If
  loc_155A860:   Else
  loc_155A874:     If (var_A8.RecordCount = 1) Then
  loc_155A8A0:       Proc_6_39_E7C810(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_D4)
  loc_155A8BA:       If CBool(var_108 <> 0) Then
  loc_155A8CA:         var_D4 = "Update Ledger Set AmtCr=Case When "
  loc_155A8F8:         Proc_6_39_E7C810(var_108, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_D4, var_35C, -1)
  loc_155A900:         var_118 = var_360 & var_108 
  loc_155A936:         Proc_6_39_E7C810(var_148, CVar(Me.Recordset15.Fields.Item("Curr_Bal")), var_118 & " > 0 Then ")
  loc_155A93E:         var_168 = var_118 & var_148 
  loc_155A95D:         var_1C0 = Me.Recordset15.Fields
  loc_155A974:         Proc_6_39_E7C810(var_1E4, CVar(var_1C0.Item("Curr_Bal")), var_168 & " Else 0 End,AmtDr=Case When ")
  loc_155A9B2:         Proc_6_39_E7C810(var_24C, CVar(Me.Recordset15.Fields.Item("Curr_Bal")))
  loc_155A9F3:         var_2C4 = CVar(Proc_6_38_E68A98(CVar(var_A8.Fields.Item("DocID")), var_D4 & var_1E4 & " < 0 Then " & Abs(var_24C) & " Else 0 End Where DocId='")) 'String
  loc_155AA29:         Proc_6_39_E7C810(var_32C, CVar(var_A8.Fields.Item("V_SNo")))
  loc_155AA3F:         unk_4A9AE7.Execute CStr(var_D4 & var_2C4 & "' And V_SNo=" & var_32C), , 
  loc_155AA8E:       Else
  loc_155AACA:         var_E8 = -1 & Proc_6_38_E68A98(CVar(var_A8.Fields.Item("DocID")), "Delete From Ledger Where DocId='", var_148)
  loc_155AAFA:         Proc_6_39_E7C810(var_118, CVar(var_A8.Fields.Item("V_SNo")))
  loc_155AB02:         var_138 = CVar("01/Apr/" & var_8C & "' AND LOGSITE_CODE='" & "' And V_SNo=") & var_118 
  loc_155AB10:         unk_4A9AE7.Execute CStr(var_138), var_1C0, 
  loc_155AB36:       End If
  loc_155AB39:     Else
  loc_155AB72:       var_128 = "Opening Transfer"
  loc_155AB98:       var_118 = CVar("Multiple Opening In Ledger " & Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Name"))) & " At ") & CDate(var_94) 
  loc_155AB9C:       MsgBox(var_118, &H10, var_128, var_138, var_148)
  loc_155ABBF:     Else
  loc_155ABBF:     End If
  loc_155ABC5:     Me.Recordset15.MoveNext
  loc_155ABCA:     GoTo loc_155A372
  loc_155ABCD:   End If
  loc_155ABD3:   unk_4A9AE7.CommitTrans
  loc_155ABDA:   var_A2 = 0
  loc_155ABF8:   var_E4 = "Opening Transfer In Ledger Completed."
  loc_155ABFE:   MsgBox(var_E4, &H40, "Information", var_118, var_128)
  loc_155AC13:   Set var_88 = Nothing
  loc_155AC1B:   Set var_98 = Nothing
  loc_155AC23:   Set var_A8 = Nothing
  loc_155AC2C:   Set var_AC = Me.CmdOPTransfer
  loc_155AC32:   var_AC.Enabled = True
  loc_155AC4E:   var_B0 = "select S.SubCode,S.Name,S.GroupCode,Q.Name Name1,Q.GroupCode GroupCode1,Q.Curr_Bal From SubGroup S Right Join (Select SG.SubCode,Max(SG.Name) Name,SG.GroupCode,IsNull(Sum(SCB.Curr_Bal),0) As Curr_Bal from " & var_9C
  loc_155AC63:   var_F0 = var_B0 & ".dbo.SubGroupCurrBal SCB Inner Join " & var_9C & ".dbo.Subgroup SG On SCB.SubCode=SG.SubCode Where SG.GroupNature Not In ('E','R') Group By SG.SubCode,SG.GroupCode)Q On S.SubCode=Q.Subcode Where (S.GroupCode<>Q.GroupCode Or S.Name<>Q.Name)"
  loc_155AC6C:   unk_4A9AE7.Execute var_F0, var_E4, -1
  loc_155AC77:   Set var_A0 = var_AC
  loc_155AC9F:   If (var_A0.RecordCount > 0) Then
  loc_155ACAE:     Call 0.Method_CmdOPTransfer_Click8 ("C:\REPTMP", var_F6)
  loc_155ACB9:     If (var_F6 = 0) Then
  loc_155ACC8:       Call 0.Method_arg_74 ("C:\REPTMP", var_AC)
  loc_155ACD0:     End If
  loc_155ACD3:     var_368 = "C:\REPTMP\Openning Transfer"
  loc_155ACF1:     var_108 = (Trim(var_368) + ".TXT")
  loc_155ACFF:     Call 0.Method_CmdOPTransfer_Click4 (CStr("Information"), var_F6)
  loc_155AD11:     If var_F6 Then
  loc_155AD14:       GoTo loc_155AD56
  loc_155AD17:     End If
  loc_155AD36:     var_108 = (Trim(var_368) + ".TXT")
  loc_155AD44:     Call 0.Method_arg_78 (CStr("Information"), &HFF, 0)
  loc_155AD56:     ' Referenced from:   155AD14
  loc_155AD58:     Close 1
  loc_155AD68:     Open var_368 & ".TXT" For Output As 1 Len = &HFF
  loc_155AD72:     Me.Recordset15.MoveFirst
  loc_155ADCC:     var_384 = var_AC & Proc_6_45_EAD428("A/C (CURR. YEAR)", &H32, Proc_6_45_EAD428("SUBCODE", 8, var_AC) & " ") & " " & Proc_6_45_EAD428("GROUP", 6)
  loc_155AE2F:     var_36C = var_384 & " " & Proc_6_45_EAD428("A/C (PREV. YEAR)", &H32) & " " & Proc_6_45_EAD428("GROUP", 6) & " " & Proc_6_52_EAD4F4("CLOSING_BAL", &HE)
  loc_155AE64:     Print 1, var_36C
  loc_155AE6A:     ' Referenced from:   155B0AD
  loc_155AE79:     If Not(var_A0.EOF) Then
  loc_155AEF1:       var_118 = CVar(var_A0.Fields.Item("GroupCode")) 'Address
  loc_155AF1C:       var_128 = CVar(var_A0.Fields.Item("Name1")) 'Address
  loc_155AF72:       var_148 = CVar(var_A0.Fields.Item("Curr_Bal")) 'Address
  loc_155AF79:       Proc_6_39_E7C810(var_168, var_148)
  loc_155AFBE:       var_1B8 = Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("subcode"))), 8) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("Name"))), &H32)
  loc_155AFFC:       var_398 = var_1B8 & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(var_118), 6) & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(var_128), &H32)
  loc_155B03C:       var_36C = var_398 & " " & Proc_6_45_EAD428(Proc_6_38_E68A98(CVar(var_A0.Fields.Item("GroupCode1"))), 6) & " " & Proc_6_52_EAD4F4(CStr(Round(var_168, 2)), &HE)
  loc_155B09F:       Print 1, var_36C
  loc_155B0A8:       var_A0.MoveNext
  loc_155B0AD:       GoTo loc_155AE6A
  loc_155B0B0:     End If
  loc_155B0B2:     Close 1
  loc_155B0D1:     var_B0 = "Some A/c Group Or A/c Name not matched." & vbCrLf
  loc_155B0DB:     MsgBox(CVar(var_B0 & "Plz. Fill Openning of these A/c Manually."), &H10, "Validation Error", var_118, var_128)
  loc_155B11C:     var_108 = (Trim(var_368) + ".TXT")
  loc_155B125:     var_118 = ("Validation Error" + vbCrLf)
  loc_155B12E:     var_128 = (var_118 + "Plz. See it")
  loc_155B132:     MsgBox(var_128, &H40, "Validation", var_148, var_168)
  loc_155B148:   End If
  loc_155B148:   Exit Sub
  loc_155B149: End If
  loc_155B149: ' Referenced from: 155A248
  loc_155B14F: If (var_A2 = &HFF) Then
  loc_155B158:   unk_4A9AE7.RollbackTrans
  loc_155B15D: End If
  loc_155B169: Me.CmdOPTransfer.Enabled = True
  loc_155B177: Call 0.Method_arg_50 (var_B0)
  loc_155B18C: Proc_183_57_104AA84(var_B0, "Opening Transfer")
  loc_155B198: Exit Sub
End Sub

Private Sub Check1_Click() 'EC8024
  'Data Table: 4A9AE0
  Dim var_8C As CheckBox
  Dim var_88 As DataCombo
  loc_EC7F84: Set var_88 = Me.Check1
  loc_EC7F8A: Call 0.Method_Check1_Click0 (1, var_8C)
  loc_EC7FA8: If (CLng(var_8C.Value) = 1) Then
  loc_EC7FB9:   Me.TXT_ACCOUNT.Visible = True
  loc_EC7FC5:   Set var_88 = Me.TXT_ACCOUNT
  loc_EC7FD9: Else
  loc_EC7FE5:   Set var_88 = Me.Check1
  loc_EC7FEB:   Call 0.Method_Check1_Click0 (1, var_8C)
  loc_EC8009:   If (CLng(var_8C.Value) = 0) Then
  loc_EC801B:     Me.TXT_ACCOUNT.Visible = False
  loc_EC8023:   End If
  loc_EC8023: End If
  loc_EC8023: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E19F88
  'Data Table: 4A9AE0
  loc_E19F7D: Me.Global.Unload Me
  loc_E19F85: Exit Sub
  loc_E19F86: Set arg_6870 = 
End Sub

Private Sub CmdBanquetTrans_Click() '10C245C
  'Data Table: 4A9AE0
  Dim var_90 As Variant
  Dim unk_4A9AE7 As Connection15
  Dim var_8A As Integer
  Dim var_94 As String
  Dim var_CC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_150 As String
  loc_10C2194: On Error Goto loc_10C240A
  loc_10C21A1: var_94 = "Prev. Year Database Name"
  loc_10C21C2: If (Proc_6_27_EA565C(Me.TxtDatabase) = 0) Then
  loc_10C21C5:   Exit Sub
  loc_10C21C6: End If
  loc_10C21DB: var_88 = Me.TxtDatabase.Text
  loc_10C21E7: Set var_90 = Me.CmdBanquetTrans
  loc_10C21ED: var_90.Enabled = False
  loc_10C21FE: unk_4A9AE7.BeginTrans var_9C
  loc_10C221C: var_94 = "Insert Into VenueOcc Select * FROM " & var_88
  loc_10C2231: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, CVar(var_94 & ".dbo.VenueOcc Where FromDate>="), var_170)
  loc_10C2239: var_DC = -1 & var_BC 
  loc_10C2251: Proc_6_7_F25D88(var_11C, MemVar_1F920F4, var_DC & " And FPDocid Not In (Select FPDocid From VenueOCC Where FromDate>=")
  loc_10C2270: unk_4A9AE7.Execute CStr(var_90 & var_11C & ")"), &HFF, var_94
  loc_10C22BB: var_CC = CVar("Insert Into HallBook Select * FROM " & var_88 & ".dbo.HallBook Where DocId In (Select Distinct FPDocID from " & var_88 & ".dbo.VenueOcc where FromDate >=") 'String
  loc_10C22C9: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, var_CC)
  loc_10C22E8: unk_4A9AE7.Execute CStr(var_11C & var_BC & ") And Docid Not In (Select Docid From HallBook)"), -1, var_90
  loc_10C2331: var_CC = CVar("Insert Into HallBook1 Select * FROM " & var_88 & ".dbo.HallBook1 Where DocId In (Select Distinct FPDocID from " & var_88 & ".dbo.VenueOcc where FromDate >=") 'String
  loc_10C233F: Proc_6_7_F25D88(var_BC, MemVar_1F920F4, var_CC)
  loc_10C2347: var_DC = var_11C & var_BC 
  loc_10C2350: var_FC = var_DC & ") And Docid Not In (Select Docid From HallBook1)" 
  loc_10C235E: unk_4A9AE7.Execute CStr(var_FC), -1, var_90
  loc_10C2392: var_94 = "Insert Into PaychargeH Select * FROM " & var_88
  loc_10C2399: var_150 = var_94 & ".dbo.PaychargeH Where DocId+CAST(SNo As Varchar) Not In (Select DocId+CAST(SNo As Varchar) From PaychargeH Where Docid In (Select Distinct DocId from PaychargeH Where ContraDocId In (Select Distinct DocID from HallBook))) And DocId+CAST(SNo As Varchar) Not In (Select DocId+CAST(SNo As Varchar) From PayChargeH)"
  loc_10C23A2: unk_4A9AE7.Execute "Insert Into HallBook1 Select * FROM " & var_88 & ".dbo.HallBook1 Where DocId In (Select Distinct FPDocID from ", var_BC, -1
  loc_10C23BA: unk_4A9AE7.CommitTrans
  loc_10C23C1: var_8A = 0
  loc_10C23E5: MsgBox("Banquet Transfer Completed.", &H40, "Information", var_DC, var_FC)
  loc_10C2401: Me.CmdBanquetTrans.Enabled = True
  loc_10C2409: Exit Sub
  loc_10C240A: ' Referenced from: 10C2194
  loc_10C2410: If (var_8A = &HFF) Then
  loc_10C2419:   unk_4A9AE7.RollbackTrans
  loc_10C241E: End If
  loc_10C242A: Me.CmdBanquetTrans.Enabled = True
  loc_10C2438: Call 0.Method_arg_50 (var_94, var_8A)
  loc_10C244D: Proc_183_57_104AA84(var_94, "Banquet Transfer")
  loc_10C2459: Exit Sub
End Sub

Private Sub CmdReserveTrans_Click() '1779674
  'Data Table: 4A9AE0
  Dim var_9C As Variant
  Dim var_A0 As Variant
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As Variant
  Dim unk_4A9AE7 As Connection15
  Dim var_8E As Variant
  Dim var_C4 As Variant
  Dim var_188 As String
  Dim var_124 As Variant
  Dim var_18C As Variant
  Dim unk_4A9B2E As Connection15
  Dim var_A4 As Variant
  Dim var_184 As Variant
  Dim var_98 As Variant
  Dim var_194 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_178 As Variant
  Dim var_168 As Variant
  Dim var_460 As Variant
  Dim var_778 As Variant
  Dim var_AC0 As Variant
  Dim var_E08 As Variant
  Dim var_1150 As Variant
  Dim var_1498 As Variant
  Dim var_17D0 As Variant
  loc_1777DEC: On Error Goto loc_1779624
  loc_1777DF9: var_A0 = "Prev. Year Database Name"
  loc_1777E1A: If (Proc_6_27_EA565C(Me.TxtDatabase) = 0) Then
  loc_1777E1D:   Exit Sub
  loc_1777E1E: End If
  loc_1777E33: var_8C = Me.TxtDatabase.Text
  loc_1777E3F: Set var_9C = Me.CmdReserveTrans
  loc_1777E45: var_9C.Enabled = False
  loc_1777E61: var_A0 = "Select DocId,GuestProf FROM " & var_8C
  loc_1777E68: var_D4 = CVar(var_A0 & ".dbo.Booking WHERE ArrDate >=") 'String
  loc_1777E76: Proc_6_7_F25D88(var_C4, MemVar_1F920F4, var_D4, var_178)
  loc_1777E7E: var_E4 = -1 & var_C4 
  loc_1777E96: Proc_6_7_F25D88(var_124, MemVar_1F920F4, var_E4 & " AND DocId NOT IN (SELECT DocId FROM Booking WHERE ArrDate >=")
  loc_1777E9E: var_134 = var_9C & var_124 
  loc_1777EB5: unk_4A9AE7.Execute CStr(var_134 & ")"), var_A0, 
  loc_1777EC0: Set var_88 = var_9C
  loc_1777EE0: ' Referenced from: 17795CB
  loc_1777EE9: var_17A = Me.Recordset15.EOF
  loc_1777EF2: If Not(var_17A) Then
  loc_1777EFE:   unk_4A9AE7.BeginTrans var_180
  loc_1777F05:   var_8E = &HFF
  loc_1777F4F:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO Booking Select * FROM " & var_8C & ".dbo.Booking Where DocId="), var_124)
  loc_1777F57:   var_104 = -1 & var_D4 
  loc_1777F5B:   var_158 = CStr(CVar("INSERT INTO Booking Select * FROM " & var_8C & ".dbo.Booking Where DocId=") & " AND DocId NOT IN (SELECT DocId FROM Booking WHERE ArrDate >=")
  loc_1777F65:   unk_4A9AE7.Execute var_158, var_184, var_8E
  loc_1777FCC:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingMore Select * FROM " & var_8C & ".dbo.BookingMore WHERE DocId="))
  loc_1777FE2:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_1778049:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO GrpBookingDetails Select * FROM " & var_8C & ".dbo.GrpBookingDetails WHERE BookingDocId="))
  loc_177805F:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_17780C6:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingPlanDetails Select * FROM " & var_8C & ".dbo.BookingPlanDetails WHERE BookingDocId="))
  loc_17780DC:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_1778143:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), CVar("INSERT INTO BookingCancelDetails Select * FROM " & var_8C & ".dbo.BookingCancelDetails WHERE BookingDocId="))
  loc_1778159:   unk_4A9AE7.Execute CStr(var_124 & var_D4), -1, var_184
  loc_177819B:   var_188 = "INSERT INTO PayCharge Select * FROM " & var_8C & ".dbo.PayCharge WHERE Docid IN (Select Docid From " & var_8C
  loc_17781BF:   var_A4 = Me.Recordset15.Fields.Item("DocID")
  loc_17781C7:   var_C4 = CVar(var_A4) 'Address
  loc_17781CE:   Proc_6_17_EAA2B0(var_D4, var_C4, CVar(var_188 & ".dbo.PayCharge Where VTYPE IN ('ARRES','ADRES') And RefDocId="))
  loc_17781DF:   var_124 = var_134 & var_D4 & ")" 
  loc_17781E3:   var_18C = CStr(var_124)
  loc_17781ED:   unk_4A9AE7.Execute var_18C, -1, var_184
  loc_1778219:   var_F4 = 0
  loc_1778236:   var_A0 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,6) AS INT)),1)+1 AS MyCode From GUESTPROF WHERE SITE_CODE='" & MemVar_1F92070
  loc_1778246:   unk_4A9B2E.Execute "INSERT INTO PayCharge Select * FROM " & var_8C & "'", var_C4, -1
  loc_177824E:   var_9C = var_9C.Fields
  loc_1778256:   var_F4 = var_A4.Item(var_A4)
  loc_177825E:   var_184 = var_184.Value
  loc_177828E:   var_E4 = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) 'String
  loc_17782B1:   var_D4 = Format(CStr(var_D4), "000000")
  loc_17782B9:   var_104 = (1 + var_D4)
  loc_17782BE:   var_94 = CStr(var_134 & var_D4)
  loc_17782E7:   var_E4 = CVar("Select * FROM " & var_8C & ".dbo.GuestProf Where Code=") 'String
  loc_1778313:   Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("GuestProf")), var_E4, var_124, -1)
  loc_1778329:   unk_4A9AE7.Execute CStr(var_184 & var_D4), 1, var_E4
  loc_1778334:   Set var_98 = var_184
  loc_1778358:   var_180 = var_98.RecordCount
  loc_1778366:   If (var_180 > 0) Then
  loc_17783B0:     Proc_6_17_EAA2B0(var_D4, CVar(var_98.Fields.Item("Code")), "Select Count(*) FROM GuestProf Where Code=", var_178, -1, var_194)
  loc_17783B8:     var_E4 = var_198 & var_D4 
  loc_17783EB:     Proc_6_17_EAA2B0(var_134, CVar(var_98.Fields.Item("Name")), var_E4 & " And Name=", 0)
  loc_1778401:     unk_4A9AE7.Execute CStr(var_1AC & var_134), var_1BC, var_D4
  loc_1778409:      = var_194.Fields
  loc_1778411:      = var_198.Item()
  loc_1778419:      = var_1AC.Value
  loc_177844E:     If (var_1BC = 0) Then
  loc_1778465:       var_A0 = "INSERT INTO GuestProf (Code,Name,Add1,Add2,City,Type,PhoneNo,FaxNo,MobileNo,EmailId,Nationality,Age,BirthDate,Anniversary,GuestStatus,SplInstr,Comments1,Comments2,Comments3,ConName,T1Field1,T1Field2,T1Field3,T1Field4,T1Field5,T1Field6,T1Field7,T1Field8,T2Field1,T2Field2,T2Field3,T2Field4,T2Field5,T2Field6,T2Field7,T2Field8,CityName,StateName,CountryName,MaritalStatus,Gender,ZipCode,Site_Code,U_Name,U_EntDt,U_AE,PanNO,DiplomatYN," & "IdNo,ConPrefix,LogSite_Code,PicPath,IdProof,IdProofNo,mProf,FatherName) Values ('"
  loc_177846C:       var_158 = var_A0 & var_94
  loc_1778473:       var_104 = CVar(var_158 & "',") 'String
  loc_1778479:       var_B4 = "Name"
  loc_1778485:       var_9C = var_98.Fields
  loc_177848D:       var_A4 = var_9C.Item(var_B4)
  loc_1778495:       var_C4 = CVar(var_A4) 'Address
  loc_177849E:       var_D4 = CVar(Proc_6_38_E68A98(var_C4, var_104, var_1A30)) 'String
  loc_17784A4:       Proc_6_17_EAA2B0(var_E4, var_D4)
  loc_17784AC:       var_124 = -1 & var_E4 
  loc_17784B0:       var_F4 = ","
  loc_17784B5:       var_134 = CVar(var_98.Fields.Item("Name")) & var_F4 
  loc_17784BC:       var_114 = "Add1"
  loc_17784C8:       var_184 = var_98.Fields
  loc_17784D0:       var_190 = var_184.Item(var_114)
  loc_17784D8:       var_154 = CVar(var_190) 'Address
  loc_17784E1:       var_178 = CVar(Proc_6_38_E68A98(var_154, var_134)) 'String
  loc_17784E7:       Proc_6_17_EAA2B0(var_1BC, var_178)
  loc_17784F3:       var_144 = ","
  loc_17784FF:       var_168 = "Add2"
  loc_177850B:       var_194 = var_98.Fields
  loc_1778513:       var_198 = var_194.Item(var_168)
  loc_177852A:       Proc_6_17_EAA2B0(var_21C, CVar(Proc_6_38_E68A98(CVar(var_198))))
  loc_177856D:       Proc_6_17_EAA2B0(var_270, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("City")))))
  loc_17785B0:       Proc_6_17_EAA2B0(var_2E8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Type")))))
  loc_17785F3:       Proc_6_17_EAA2B0(var_360, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("PhoneNo")))))
  loc_1778636:       Proc_6_17_EAA2B0(var_3D8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FaxNo")))))
  loc_1778679:       Proc_6_17_EAA2B0(var_450, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("MobileNo")))))
  loc_1778681:       var_460 = var_1A34 & var_1BC & var_144 & var_21C & "," & var_270 & "," & var_2E8 & "," & var_360 & "," & var_3D8 & "," & var_450 
  loc_17786BC:       Proc_6_17_EAA2B0(var_4C8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("EmailId")))))
  loc_17786FF:       Proc_6_17_EAA2B0(var_540, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Nationality")))))
  loc_177873A:       Proc_6_39_E7C810(var_5A8, CVar(var_98.Fields.Item("Age")))
  loc_1778775:       Proc_6_7_F25D88(var_610, CVar(var_98.Fields.Item("BirthDate")))
  loc_17787B0:       Proc_6_7_F25D88(var_678, CVar(var_98.Fields.Item("Anniversary")))
  loc_17787F3:       Proc_6_17_EAA2B0(var_6F0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GuestStatus")))))
  loc_1778836:       Proc_6_17_EAA2B0(var_768, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("SplInstr")))))
  loc_177883E:       var_778 = var_460 & "," & var_4C8 & "," & var_540 & "," & var_5A8 & "," & var_610 & "," & var_678 & "," & var_6F0 & "," & var_768 
  loc_1778879:       Proc_6_17_EAA2B0(var_7E0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Comments1")))))
  loc_17788BC:       Proc_6_17_EAA2B0(var_858, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Comments2")))))
  loc_17788FF:       Proc_6_17_EAA2B0(var_8D0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Comments2")))))
  loc_1778942:       Proc_6_17_EAA2B0(var_948, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ConName")))))
  loc_1778985:       Proc_6_17_EAA2B0(var_9C0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field1")))))
  loc_17789C8:       Proc_6_17_EAA2B0(var_A38, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field2")))))
  loc_1778A0B:       Proc_6_17_EAA2B0(var_AB0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field3")))))
  loc_1778A13:       var_AC0 = var_778 & "," & var_7E0 & "," & var_858 & "," & var_8D0 & "," & var_948 & "," & var_9C0 & "," & var_A38 & "," & var_AB0 
  loc_1778A4E:       Proc_6_17_EAA2B0(var_B28, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field4")))))
  loc_1778A91:       Proc_6_17_EAA2B0(var_BA0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field5")))))
  loc_1778AD4:       Proc_6_17_EAA2B0(var_C18, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field6")))))
  loc_1778B17:       Proc_6_17_EAA2B0(var_C90, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field7")))))
  loc_1778B5A:       Proc_6_17_EAA2B0(var_D08, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T1Field8")))))
  loc_1778B9D:       Proc_6_17_EAA2B0(var_D80, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field1")))))
  loc_1778BE0:       Proc_6_17_EAA2B0(var_DF8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field2")))))
  loc_1778BE8:       var_E08 = var_AC0 & "," & var_B28 & "," & var_BA0 & "," & var_C18 & "," & var_C90 & "," & var_D08 & "," & var_D80 & "," & var_DF8 
  loc_1778C23:       Proc_6_17_EAA2B0(var_E70, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field3")))))
  loc_1778C66:       Proc_6_17_EAA2B0(var_EE8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field4")))))
  loc_1778CA9:       Proc_6_17_EAA2B0(var_F60, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field5")))))
  loc_1778CEC:       Proc_6_17_EAA2B0(var_FD8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field6")))))
  loc_1778D2F:       Proc_6_17_EAA2B0(var_1050, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field7")))))
  loc_1778D72:       Proc_6_17_EAA2B0(var_10C8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("T2Field8")))))
  loc_1778DB5:       Proc_6_17_EAA2B0(var_1140, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("CityName")))))
  loc_1778DBD:       var_1150 = var_E08 & "," & var_E70 & "," & var_EE8 & "," & var_F60 & "," & var_FD8 & "," & var_1050 & "," & var_10C8 & "," & var_1140 
  loc_1778DF8:       Proc_6_17_EAA2B0(var_11B8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("StateName")))))
  loc_1778E3B:       Proc_6_17_EAA2B0(var_1230, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("CountryName")))))
  loc_1778E7E:       Proc_6_17_EAA2B0(var_12A8, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("MaritalStatus")))))
  loc_1778EC1:       Proc_6_17_EAA2B0(var_1320, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Gender")))))
  loc_1778F04:       Proc_6_17_EAA2B0(var_1398, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Zipcode")))))
  loc_1778F47:       Proc_6_17_EAA2B0(var_1410, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("Site_Code")))))
  loc_1778F8A:       Proc_6_17_EAA2B0(var_1488, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("U_Name")))))
  loc_1778F92:       var_1498 = var_1150 & "," & var_11B8 & "," & var_1230 & "," & var_12A8 & "," & var_1320 & "," & var_1398 & "," & var_1410 & "," & var_1488 
  loc_1778FC5:       Proc_6_8_EB0DE4(var_14F0, CVar(var_98.Fields.Item("U_EntDt")))
  loc_1779008:       Proc_6_17_EAA2B0(var_1568, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("U_AE")))))
  loc_177904B:       Proc_6_17_EAA2B0(var_15E0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("PanNo")))))
  loc_177908E:       Proc_6_17_EAA2B0(var_1658, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("DiplomatYN")))))
  loc_17790D1:       Proc_6_17_EAA2B0(var_16D0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("IdNo")))))
  loc_1779114:       Proc_6_17_EAA2B0(var_1748, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("ConPrefix")))))
  loc_1779157:       Proc_6_17_EAA2B0(var_17C0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("LogSite_Code")))))
  loc_177915F:       var_17D0 = var_1498 & "," & var_14F0 & "," & var_1568 & "," & var_15E0 & "," & var_1658 & "," & var_16D0 & "," & var_1748 & "," & var_17C0 
  loc_177919A:       Proc_6_17_EAA2B0(var_1838, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("PicPath")))))
  loc_17791DD:       Proc_6_17_EAA2B0(var_18B0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("IdProof")))))
  loc_1779220:       Proc_6_17_EAA2B0(var_1928, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("IdProofNo")))))
  loc_1779276:       Proc_6_17_EAA2B0(var_19E0, CVar(Proc_6_38_E68A98(CVar(var_98.Fields.Item("FatherName")))))
  loc_1779295:       unk_4A9AE7.Execute CStr(var_17D0 & "," & var_1838 & "," & var_18B0 & "," & var_1928 & ",'" & CVar(var_94) & "'," & var_19E0 & ")"), , 
  loc_1779547:       var_A0 = "UPDATE Booking SET GuestProf='" & var_94
  loc_177954E:       var_E4 = CVar(var_A0 & "' Where DocId=") 'String
  loc_177957A:       Proc_6_17_EAA2B0(var_D4, CVar(Me.Recordset15.Fields.Item("DocID")), var_E4)
  loc_1779582:       var_104 = CVar(var_98.Fields.Item("Name")) & var_D4 
  loc_1779590:       unk_4A9AE7.Execute CStr(var_104), -1, var_184
  loc_17795B0:     End If
  loc_17795B0:   End If
  loc_17795B6:   unk_4A9AE7.CommitTrans
  loc_17795BD:   var_8E = 0
  loc_17795C6:   Me.Recordset15.MoveNext
  loc_17795CB:   GoTo loc_1777EE0
  loc_17795CE: End If
  loc_17795EF: MsgBox("Reservation Transfer Completed.", &H40, "Information", var_E4, var_104)
  loc_1779604: Set var_88 = Nothing
  loc_177960C: Set var_98 = Nothing
  loc_177961B: Me.CmdReserveTrans.Enabled = True
  loc_1779623: Exit Sub
  loc_1779624: ' Referenced from: 1777DEC
  loc_177962A: If (var_8E = &HFF) Then
  loc_1779633:   unk_4A9AE7.RollbackTrans
  loc_1779638: End If
  loc_1779644: Me.CmdReserveTrans.Enabled = True
  loc_1779652: Call 0.Method_arg_50 (var_A0)
  loc_1779667: Proc_183_57_104AA84(var_A0, "Reservation Transfer")
  loc_1779673: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '1262D6C
  'Data Table: 4A9AE0
  Dim var_94 As Variant
  Dim var_90 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_4A9AE7 As Connection15
  loc_1262814: On Error Goto loc_1262D39
  loc_1262822: Set var_90 = Me.Label4
  loc_1262828: Call 0.Method_Command1_UnknownEvent_90 (0, var_94)
  loc_1262830: var_94.Visible = True
  loc_1262847: Set var_90 = Me.Label4
  loc_126284D: Call 0.Method_Command1_UnknownEvent_90 (1, var_94)
  loc_1262855: var_94.Visible = True
  loc_126286D: Me.Label5.Visible = True
  loc_1262881: Me.Label6.Visible = True
  loc_1262895: Me.Label1.Visible = True
  loc_12628AA: Me.Label5.Caption = vbNullString
  loc_12628BF: Me.Label6.Caption = vbNullString
  loc_12628D3: Set var_90 = Me.Check1
  loc_12628D9: Call 0.Method_Command1_UnknownEvent_90 (1, var_94)
  loc_12628F7: If (CLng(var_94.Value) = 1) Then
  loc_126290E:   Set var_90 = Me.TXT_ACCOUNT
  loc_1262914:   var_A8 = var_90.BoundText
  loc_1262920:   var_B0 = "SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode where SubGroup.SubCode='" & CStr(var_A8)
  loc_1262930:   unk_4A9AE7.Execute var_B0 & "' GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name", var_D4, -1
  loc_126293B:   Set var_8C = var_94
  loc_1262958: Else
  loc_126296E:   unk_4A9AE7.Execute "SELECT LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name,Sum(Ledger.AmtCr) AS AMTCR,Sum(Ledger.AmtDr) AS AMTDR FROM SubGroup INNER JOIN Ledger ON SubGroup.SubCode=Ledger.SubCode GROUP BY LEDGER.LOGSITE_CODE,LEDGER.V_DATE,SUBGROUP.GROUPCODE,SubGroup.SubCode,SubGroup.Name", var_A8, -1
  loc_1262979:   Set var_8C = var_90
  loc_1262982: End If
  loc_126298F: Me.Label6.Caption = vbNullString
  loc_12629A4: Me.Label5.Caption = vbNullString
  loc_12629CC: Me.Label5.Caption = CStr(Me.Recordset15.RecordCount)
  loc_12629E1: Me.Label5.Refresh
  loc_12629F2: var_D8 = Me.Recordset15.RecordCount
  loc_1262A00: If (var_D8 > 0) Then
  loc_1262A0C:   unk_4A9AE7.BeginTrans var_D8
  loc_1262A27:   unk_4A9AE7.Execute "UPDATE ACGROUPCURRBAL SET CURR_BAL=0", var_A8, -1
  loc_1262A48:   unk_4A9AE7.Execute "UPDATE SUBGROUPCURRBAL SET CURR_BAL=0", var_A8, -1
  loc_1262A53:   ' Referenced from: 1262C3F
  loc_1262A65:   If Not(Me.Recordset15.EOF) Then
  loc_1262A88:     Me.Label6.Caption = CStr(Me.Recordset15.AbsolutePosition)
  loc_1262A9D:     Me.Label6.Refresh
  loc_1262AD3:     var_AC = CStr(Me.Recordset15.Fields.Item("Name").Value)
  loc_1262AE0:     Me.Label1.Caption = var_AC
  loc_1262AFE:     Me.Label1.Refresh
  loc_1262B23:     var_94 = Me.Recordset15.Fields.Item("subcode")
  loc_1262B7F:     var_150 = Me.Recordset15.Fields.Item("AmtCr").Value
  loc_1262BA9:     var_168 = Me.Recordset15.Fields.Item("GroupCode").Value
  loc_1262BD3:     var_178 = Me.Recordset15.Fields.Item("V_DATE").Value
  loc_1262C04:     Proc_183_0_1279094(MemVar_1F921DC, CStr(var_94.Value), CSng(Me.Recordset15.Fields.Item("AmtDr").Value), CSng(var_150), CStr(var_168))
  loc_1262C3A:     Me.Recordset15.MoveNext
  loc_1262C3F:     GoTo loc_1262A53
  loc_1262C42:   End If
  loc_1262C48:   unk_4A9AE7.CommitTrans
  loc_1262C58:   var_D4 = "Information"
  loc_1262C6E:   MsgBox("Opening Balance Updation Has been Completed", &H40, var_D4, var_150, var_168)
  loc_1262C81: Else
  loc_1262C9A:   MsgBox("Ledger Table is Empty", &H40, var_D4, var_150, var_168)
  loc_1262CAA: End If
  loc_1262CBB: Call 0.Method_Command1_UnknownEvent_90 (0, var_94, 0, CDate(var_178))
  loc_1262CC3: var_94.Visible = Me.Label4
  loc_1262CE0: Call 0.Method_Command1_UnknownEvent_90 (1, var_94, 0)
  loc_1262CE8: var_94.Visible = Me.Label4
  loc_1262D00: Me.Label1.Visible = False
  loc_1262D14: Me.Label5.Visible = False
  loc_1262D22: Set var_90 = Me.Label6
  loc_1262D28: var_90.Visible = False
  loc_1262D35: Set var_8C = Nothing
  loc_1262D38: Exit Sub
  loc_1262D39: ' Referenced from: 1262814
  loc_1262D3F: unk_4A9AE7.RollbackTrans
  loc_1262D4A: Call 0.Method_arg_50 (var_AC, var_90)
  loc_1262D5F: Proc_183_57_104AA84(var_AC, "Command1_Click")
  loc_1262D6B: Exit Sub
End Sub

Private Sub Form_Load() 'F6802C
  'Data Table: 4A9AE0
  Dim var_8C As Label
  Dim var_88 As Label
  loc_F67EF8: On Error Goto loc_F68001
  loc_F67F01: global_60 = "F_AO"
  loc_F67F0E: Call 0.Method_arg_160 (var_88)
  loc_F67F1C: Call 0.Method_arg_164 (var_88)
  loc_F67F2F: Set var_88 = Me.Timer2
  loc_F67F35: Call 0.Method_Form_Load0 (0, var_8C)
  loc_F67F3D: MDIForm1.Timer2.Visible = False
  loc_F67F54: Set var_88 = Me.Label4
  loc_F67F5A: Call 0.Method_Form_Load0 (1, var_8C)
  loc_F67F62: var_8C.Visible = False
  loc_F67F7B: Me.Label5.Caption = vbNullString
  loc_F67F90: Me.Label6.Caption = vbNullString
  loc_F67FA4: Me.Label5.Visible = False
  loc_F67FB8: Me.Label6.Visible = False
  loc_F67FCA: var_98 = "SUBCODE"
  loc_F67FD3: var_94 = "NAME"
  loc_F67FE5: var_90 = "SELECT NAME,SUBCODE FROM SUBGROUP ORDER BY NAME"
  loc_F67FEB: Proc_183_43_EF7D54(var_90, Me.TXT_ACCOUNT)
  loc_F68000: Exit Sub
  loc_F68001: ' Referenced from: F67EF8
  loc_F68007: Call 0.Method_arg_50 (var_90, var_94)
  loc_F6801C: Proc_183_57_104AA84(var_90, "Form_Load")
  loc_F68028: Exit Sub
  loc_F68029: StUdtVar
End Sub

Private Sub Form_Resize() 'E6D800
  'Data Table: 4A9AE0
  loc_E6D7AA: Call 0.Method_arg_50 (var_88)
  loc_E6D7BC: Me.LblFormCaption.Caption = var_88
  loc_E6D7D5: Me.LblFormCaption.Left = CDbl(0)
  loc_E6D7E3: Call 0.Method_arg_100 (var_90)
  loc_E6D7F5: Me.LblFormCaption.Width = var_90
  loc_E6D7FD: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E95C64
  'Data Table: 4A9AE0
  loc_E95BEA: If (CLng(KeyCode) = &H79) Then
  loc_E95BFA:   Me.Global.Unload Me
  loc_E95C05: Else
  loc_E95C16:   If ((CLng(KeyCode) = &H54) And (Shift = 3)) Then
  loc_E95C34:     If (Me.FrOPTransfer.Visible = 0) Then
  loc_E95C43:       Me.FrOPTransfer.Visible = True
  loc_E95C4E:     Else
  loc_E95C5A:       Me.FrOPTransfer.Visible = False
  loc_E95C62:     End If
  loc_E95C62:   End If
  loc_E95C62: End If
  loc_E95C62: Exit Sub
End Sub

Private Sub CmdSTOPTransfer_Click() '1ADAA88
  'Data Table: 4A9AE0
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_F0 As Variant
  Dim var_94 As Recordset15
  Dim var_DC As String
  Dim var_90 As Double
  Dim unk_4A9AE7 As Connection15
  Dim var_9E As Integer
  Dim var_E0 As Variant
  Dim var_11C As String
  Dim var_124 As String
  Dim var_128 As String
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_158 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_198 As Variant
  Dim var_1B8 As Variant
  Dim var_1C8 As Variant
  Dim var_1D8 As Variant
  Dim var_1DC As String
  Dim unk_4A9B2E As Connection15
  Dim var_A4 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_D0 As Long
  Dim var_C4 As Double
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_110 As Variant
  Dim var_200 As Variant
  Dim var_1FC As Variant
  Dim var_BC As Recordset15
  Dim var_23C As Recordset15
  Dim var_224 As Variant
  Dim var_238 As Fields15
  Dim var_400 As Variant
  Dim var_734 As Double
  Dim var_73C As Double
  Dim var_65C As Fields15
  Dim var_680 As Variant
  Dim var_234 As Variant
  Dim var_2CC As Variant
  Dim var_32C As Variant
  Dim var_460 As Variant
  Dim var_4E8 As Variant
  Dim var_658 As Variant
  Dim var_6C0 As Variant
  Dim var_CC As Double
  Dim var_74C As Recordset15
  Dim var_570 As Variant
  Dim var_5C8 As Variant
  Dim var_750 As Recordset15
  loc_1AD6A2C: On Error Goto loc_1ADAA36
  loc_1AD6A33: Set var_E0 = Me.TxtDatabase
  loc_1AD6A39: var_DC = "Prev. Year Database Name"
  loc_1AD6A5A: If (Proc_6_27_EA565C(var_E0) = 0) Then
  loc_1AD6A5D:   Exit Sub
  loc_1AD6A5E: End If
  loc_1AD6A73: var_98 = Me.TxtDatabase.Text
  loc_1AD6A85: Me.FrStockTransfer.Enabled = False
  loc_1AD6A91: Set var_94 = New 
  loc_1AD6A9C: Me.Recordset15.CursorLocation = 3
  loc_1AD6AC1: var_94.Open "SELECT * FROM Stock Where DocId Is Null", CVar(MemVar_1F921DC), 2
  loc_1AD6ACC: global_60 = "STOP"
  loc_1AD6ADB: var_110 = Trim(MemVar_1F9212C)
  loc_1AD6AE4: var_88 = CStr(var_110)
  loc_1AD6AF6: var_90 = CDate("01/Apr/" & var_88)
  loc_1AD6B05: unk_4A9AE7.BeginTrans var_114
  loc_1AD6B1D: Set var_D8 = Me.ChkGodown
  loc_1AD6B23: Call 0.Method_CmdSTOPTransfer_Click0 (CInt(0), var_E0, var_116, &HFF)
  loc_1AD6B2B: var_90 = var_E0.Value
  loc_1AD6B41: If (CLng(var_116) = 1) Then
  loc_1AD6B6D:   var_124 = "SELECT S.GodownCode GCode,I.CONSUMPTIONITEM,Sum(S.RecdQty) AS QTY FROM ((" & var_98 & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join "
  loc_1AD6B89:   Proc_6_7_F25D88(var_110, var_90, CVar(var_124 & var_98 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1FC, -1)
  loc_1AD6BAD:   var_198 = var_D8 & var_110 & " And S.GodownCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD6BBB:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,I.CONSUMPTIONITEM HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,I.CONSUMPTIONITEM"
  loc_1AD6BCE:   unk_4A9B2E.Execute CStr(var_198 & CVar(MemVar_1F92078) & var_1C8), 3, -1
  loc_1AD6BD9:   Set var_AC = var_D8
  loc_1AD6C17:   var_DC = "SELECT S.GodownCode GCode,I.CONSUMPTIONITEM,Sum(S.IssQty) AS QTY FROM ((" & var_98
  loc_1AD6C33:   var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD6C48:   Proc_6_7_F25D88(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1FC)
  loc_1AD6C50:   var_148 = -1 & var_110 
  loc_1AD6C6C:   var_198 = var_D8 & var_110 & " And S.GodownCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD6C7A:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE') AND S.IssQty>0 Group By S.GodownCode,I.CONSUMPTIONITEM HAVING Sum(S.IssQty)>0 Order By S.GodownCode,I.CONSUMPTIONITEM"
  loc_1AD6C8D:   unk_4A9B2E.Execute CStr(var_198 & CVar(MemVar_1F92078) & var_1C8), var_D8, var_DC
  loc_1AD6C98:   Set var_B0 = var_D8
  loc_1AD6CDD:   var_11C = "SELECT S.DepartCode GCode,I.CONSUMPTIONITEM,Sum(S.ThCons)/MAX(ConvRatio) AS QTY FROM ((" & var_98 & ".dbo.RawConsumption S Left Join "
  loc_1AD6CF9:   var_138 = CVar(var_11C & var_98 & ".dbo.ItemMast I On S.RawItem=I.Code And I.ItemType='Store') Left Join " & var_98 & ".dbo.Voucher_type VT On S.V_Type=VT.V_Type) Where S.V_Date < ") 'String
  loc_1AD6D07:   Proc_6_7_F25D88(var_110, var_90, var_138)
  loc_1AD6D2B:   var_198 = var_1FC & var_110 & " And S.DepartCode IN (Select Code From " & CVar(var_98) & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" 
  loc_1AD6D39:   var_1C8 = "') And RestType in ('Kitchen','Staff Kitchen')) And VT.NCAT IN ('CONS') AND S.thcons>0 Group By S.DepartCode,I.CONSUMPTIONITEM HAVING Sum(S.thcons)>0 Order By S.DepartCode,I.CONSUMPTIONITEM"
  loc_1AD6D3E:   var_1D8 = var_198 & CVar(MemVar_1F92078) & var_1C8 
  loc_1AD6D4C:   unk_4A9B2E.Execute CStr(var_1D8), -1, var_D8
  loc_1AD6D57:   Set var_B4 = var_D8
  loc_1AD6DAA:   var_124 = "Select Code,Name From " & var_98 & ".dbo.Depart Where (Logsite_Code='HO' Or Logsite_Code='" & MemVar_1F92078 & "') And RestType in ('Kitchen','Staff Kitchen')"
  loc_1AD6DB3:   unk_4A9B2E.Execute var_124, var_110, -1
  loc_1AD6DBE:   Set var_A4 = var_D8
  loc_1AD6DD2:   ' Referenced from: 1AD7FDE
  loc_1AD6DE1:   If Not(var_A4.EOF) Then
  loc_1AD6E0B:     var_110 = var_A4.Fields.Item("Code").Value
  loc_1AD6E21:     var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1AD6E48:     var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.LPurRate AS LPRATE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1AD6E64:     var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD6E79:     Proc_6_7_F25D88(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1AD6E81:     var_148 = -1 & var_110 
  loc_1AD6EA0:     var_D8 = var_A4.Fields
  loc_1AD6EBC:     var_188 = "') And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE') And I.Code=I.ConsumptionItem Order By Name"
  loc_1AD6ECF:     unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1AD6EDA:     Set var_B8 = var_200
  loc_1AD6F1C:     If (var_B8.RecordCount > 0) Then
  loc_1AD6F25:       Call Proc_198_10_10BD790(var_90)
  loc_1AD6F30:       global_56 = var_DC
  loc_1AD6F37:     End If
  loc_1AD6F3C:     var_D0 = 0
  loc_1AD6F3F:     ' Referenced from: 1AD7F31
  loc_1AD6F4E:     If Not(var_B8.EOF) Then
  loc_1AD6F54:       var_C4 = CDbl(0)
  loc_1AD6F63:       var_AC.Filter = 0
  loc_1AD6F74:       var_B0.Filter = 0
  loc_1AD6F85:       var_B4.Filter = 0
  loc_1AD6FCF:       var_AC.Filter = CVar(var_A8 & "CONSUMPTIONITEM='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD702B:       var_B0.Filter = CVar(var_A8 & "CONSUMPTIONITEM='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD7049:       var_138 = CVar(var_A8 & "CONSUMPTIONITEM='") 'String
  loc_1AD7087:       var_B4.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD70B2:       If (var_AC.RecordCount > 0) Then
  loc_1AD70E2:         Proc_6_39_E7C810(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4))
  loc_1AD70EA:         var_148 = (var_C4 + var_138)
  loc_1AD70EF:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD70FE:       End If
  loc_1AD7112:       If (var_B0.RecordCount > 0) Then
  loc_1AD7142:         Proc_6_39_E7C810(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4))
  loc_1AD714A:         var_148 = (var_C4 - var_138)
  loc_1AD714F:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD715C:       End If
  loc_1AD7170:       If (var_B4.RecordCount > 0) Then
  loc_1AD71A0:         Proc_6_39_E7C810(var_138, CVar(var_B4.Fields.Item("qty")), CVar(var_C4))
  loc_1AD71A8:         var_148 = (var_C4 - var_138)
  loc_1AD71AD:         var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD71BA:       End If
  loc_1AD71F2:       var_DC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1)
  loc_1AD721C:       Proc_6_7_F25D88(var_138, var_90, CVar(var_238 & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1AD726E:       var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1AD7285:       unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1AD7290:       Set var_BC = var_238
  loc_1AD72D8:       If (var_BC.RecordCount = 0) Then
  loc_1AD72E5:         var_100 = "0.000"
  loc_1AD72F3:         var_F0 = var_C4
  loc_1AD731B:         If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1AD7327:           var_D0 = (var_D0 + 1)
  loc_1AD732D:           Set var_23C = var_94 
  loc_1AD733C:           var_23C.AddNew var_F0, var_100
  loc_1AD7347:           var_100 = CVar(global_56) 'String
  loc_1AD7354:           var_23C.Collect = "DocID"
  loc_1AD735C:           var_100 = CVar(var_D0) 'Long
  loc_1AD736A:           var_23C.Collect = "SNo"
  loc_1AD7375:           var_100 = CVar(global_60) 'String
  loc_1AD7382:           var_23C.Collect = "vType"
  loc_1AD738A:           var_100 = CDate(var_90)
  loc_1AD7398:           var_23C.Collect = "VDate"
  loc_1AD73A3:           var_100 = CVar(global_52) 'Long
  loc_1AD73B1:           var_23C.Collect = "VNo"
  loc_1AD73B9:           var_100 = CVar(var_88) 'String
  loc_1AD73C6:           var_23C.Collect = "vPrefix"
  loc_1AD73CE:           var_100 = CVar(MemVar_1F92070) 'String
  loc_1AD73DB:           var_23C.Collect = "Site_Code"
  loc_1AD73FF:           var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD740D:           var_23C.Collect = "Godowncode"
  loc_1AD7437:           var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1AD7445:           var_23C.Collect = "Item"
  loc_1AD746F:           var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD747D:           var_23C.Collect = "DepartCode"
  loc_1AD7488:           var_100 = "OPENNING STOCK"
  loc_1AD7497:           var_23C.Collect = "Specification"
  loc_1AD74CD:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD74DB:           var_23C.Collect = "ChalQty"
  loc_1AD751B:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD7529:           var_23C.Collect = "RecdQty"
  loc_1AD7538:           var_100 = 0
  loc_1AD7547:           var_23C.Collect = "RejQty"
  loc_1AD757D:           var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD758B:           var_23C.Collect = "AccQty"
  loc_1AD75B9:           var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1AD75C7:           var_23C.Collect = "Unit"
  loc_1AD761E:           var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1AD762C:           var_23C.Collect = "ConvRatio"
  loc_1AD76DF:           var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1AD76F7:           var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1AD7705:           var_23C.Collect = "QtyRec"
  loc_1AD7775:           var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000")))) 'Double
  loc_1AD7783:           var_23C.Collect = "Rate"
  loc_1AD77B6:           var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1AD77C4:           var_23C.Collect = "RecdUnit"
  loc_1AD786E:           var_198 = CVar((Val(CStr(Format(var_C4, "0.000"))) * Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000"))))) 'Double
  loc_1AD7886:           var_224 = CVar(Val(CStr(Format(var_198, "0.00")))) 'Double
  loc_1AD7894:           var_23C.Collect = "Amount"
  loc_1AD78B8:           var_100 = "SA"
  loc_1AD78C7:           var_23C.Collect = "U_Name"
  loc_1AD78CF:           var_100 = CDate(var_90)
  loc_1AD78DD:           var_23C.Collect = "U_EntDt"
  loc_1AD78E2:           var_100 = "A"
  loc_1AD78F1:           var_23C.Collect = "U_AE"
  loc_1AD78FD:           var_F0 = "LogSite_Code"
  loc_1AD7906:           var_23C.Collect = var_F0
  loc_1AD7916:           var_23C.Update var_F0, CVar(MemVar_1F92078)
  loc_1AD791D:           Set var_23C = Nothing 
  loc_1AD7921:         End If
  loc_1AD7924:       Else
  loc_1AD7938:         If (var_BC.RecordCount = 1) Then
  loc_1AD797B:           If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1AD79C3:             var_198 = Format(var_C4, "0.000")
  loc_1AD7A63:             var_238 = var_B8.Fields
  loc_1AD7AFA:             var_430 = Format(CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))), "0.000")
  loc_1AD7B97:             var_734 = Val(CStr(Format(var_C4, "0.000")))
  loc_1AD7BE6:             var_73C = Val(CStr(Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000")))
  loc_1AD7C20:             var_65C = var_BC.Fields
  loc_1AD7C62:             Proc_6_39_E7C810(var_6F8, CVar(var_BC.Fields.Item("SNo")), 1, 1)
  loc_1AD7C7C:             var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1AD7C8C:             var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1AD7C9C:             var_234 = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") 
  loc_1AD7CBC:             var_32C = var_234 & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") 
  loc_1AD7CE5:             var_4E8 = var_32C & ",QtyRec=" & var_430 & ",Rate=" & Format(CVar(var_B8.Fields.Item("LPRATE")), "0.00000") & ",RecdUnit='" 
  loc_1AD7D05:             var_658 = var_4E8 & var_B8.Fields.Item("PUnit").Value & "',Amount=" & Format(CVar((var_734 * var_73C)), "0.00") & " Where DocId='" 
  loc_1AD7D18:             var_6C0 = var_658 & CVar(Proc_6_38_E68A98(CVar(var_65C.Item("DocID")), 1, 1, var_73C, 1, 1, var_734)) & "' And SNo=" 
  loc_1AD7D2D:             unk_4A9AE7.Execute CStr(var_6C0 & var_6F8), var_728, -1
  loc_1AD7DD0:           Else
  loc_1AD7E08:             var_DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1AD7E3C:             Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_72C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1AD7E52:             unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1AD7E78:           End If
  loc_1AD7E7B:         Else
  loc_1AD7E8A:           var_D8 = var_B8.Fields
  loc_1AD7E92:           var_E0 = var_D8.Item("ItemName")
  loc_1AD7E9A:           var_110 = CVar(var_E0) 'Address
  loc_1AD7ED8:           var_178 = "Stock Opening Transfer"
  loc_1AD7EFE:           MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E68A98(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1AD7F29:         Else
  loc_1AD7F29:         End If
  loc_1AD7F2C:         var_B8.MoveNext
  loc_1AD7F31:         GoTo loc_1AD6F3F
  loc_1AD7F34:       End If
  loc_1AD7F48:       If (var_B8.RecordCount > 0) Then
  loc_1AD7F5F:         var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_1AD7F85:         var_138 = CVar(Proc_6_38_E68A98(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1AD7F93:         Proc_183_7_EB0C44(var_110, var_90, var_138)
  loc_1AD7FB2:         unk_4A9AE7.Execute CStr(var_178 & var_110 & " BETWEEN DATE_FROM AND DATE_TO"), -1, var_D8
  loc_1AD7FD6:       End If
  loc_1AD7FD9:       var_A4.MoveNext
  loc_1AD7FDE:       GoTo loc_1AD6DD2
  loc_1AD7FE1:     End If
  loc_1AD7FE1:   End If
  loc_1AD7FE4:   var_D4 = vbNullString
  loc_1AD7FF5:   Set var_D8 = Me.ChkGodown
  loc_1AD7FFB:   Call 0.Method_CmdSTOPTransfer_Click0 (CInt(1), var_E0)
  loc_1AD8019:   Set var_200 = Me.ChkFifo
  loc_1AD8038:   If ((CLng(var_E0.Value) = 1) And (CLng(var_200.Value) = 1)) Then
  loc_1AD8043:     If (var_D4 <> vbNullString) Then
  loc_1AD804D:       var_D4 = var_D4 & " OR "
  loc_1AD8050:     End If
  loc_1AD8065:     var_D4 = var_D4 & "(D.RestType='Store' And D.Code='" & MemVar_1F92078 & "PURC')"
  loc_1AD806F:   End If
  loc_1AD8077:   If (var_D4 <> vbNullString) Then
  loc_1AD8096:     var_D4 = " Where " & var_D4 & " And (D.Logsite_Code='HO' Or D.Logsite_Code='" & MemVar_1F92078 & "')"
  loc_1AD80BD:     var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.RecdQty) AS Qty,Sum(S.Amount) AS Amt FROM ((" & var_98 & ".dbo.mCurStk S Inner Join "
  loc_1AD80D9:     var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1AD80F5:     Proc_6_7_F25D88(var_110, var_90, CVar(var_1DC & MemVar_1F92078 & "' and S.VDate < "))
  loc_1AD8123:     var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1AD813A:     var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,S.Item"
  loc_1AD814D:     unk_4A9B2E.Execute CStr(var_1B8 & ".dbo.Depart D ON G.Code = D.Code " & CVar(var_D4) & var_224), -1, var_D8
  loc_1AD8158:     Set var_AC = var_D8
  loc_1AD81A5:     var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.IssQty) AS Qty,Sum(S.Amount) AS Amt FROM ((" & var_98 & ".dbo.mCurStk S Inner Join "
  loc_1AD81C1:     var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1AD81DD:     Proc_6_7_F25D88(var_110, var_90, CVar(var_1DC & MemVar_1F92078 & "' and S.VDate < "))
  loc_1AD820B:     var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1AD8214:     var_1D8 = var_1B8 & ".dbo.Depart D ON G.Code = D.Code " 
  loc_1AD8222:     var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE') AND S.IssQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.IssQty)>0 Order By S.GodownCode,S.Item"
  loc_1AD8235:     unk_4A9B2E.Execute CStr(var_1D8 & CVar(var_D4) & var_224), -1, var_D8
  loc_1AD8240:     Set var_B0 = var_D8
  loc_1AD82A2:     var_128 = "SELECT G.Code,G.Name FROM " & var_98 & ".dbo.GodownMast G INNER JOIN " & var_98 & ".dbo.Depart D ON G.Code=D.Code " & var_D4
  loc_1AD82B2:     unk_4A9B2E.Execute var_128 & " ORDER BY G.Name", var_110, -1
  loc_1AD82BD:     Set var_A4 = var_D8
  loc_1AD82D5:     ' Referenced from:   1AD9428
  loc_1AD82E4:     If Not(var_A4.EOF) Then
  loc_1AD830E:       var_110 = var_A4.Fields.Item("Code").Value
  loc_1AD8324:       var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1AD834B:       var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1AD8367:       var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD837C:       Proc_6_7_F25D88(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1AD8384:       var_148 = -1 & var_110 
  loc_1AD83A3:       var_D8 = var_A4.Fields
  loc_1AD83BF:       var_188 = "') And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE') Order By Name"
  loc_1AD83D2:       unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1AD83DD:       Set var_B8 = var_200
  loc_1AD841F:       If (var_B8.RecordCount > 0) Then
  loc_1AD8428:         Call Proc_198_10_10BD790(var_90)
  loc_1AD8433:         global_56 = var_DC
  loc_1AD843A:       End If
  loc_1AD843F:       var_D0 = 0
  loc_1AD8442:       ' Referenced from:   1AD937B
  loc_1AD8451:       If Not(var_B8.EOF) Then
  loc_1AD8457:         var_C4 = CDbl(0)
  loc_1AD845D:         var_CC = CDbl(0)
  loc_1AD846C:         var_AC.Filter = 0
  loc_1AD847D:         var_B0.Filter = 0
  loc_1AD84C7:         var_AC.Filter = CVar(var_A8 & "Item='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD84E5:         var_138 = CVar(var_A8 & "Item='") 'String
  loc_1AD8523:         var_B0.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD854E:         If (var_AC.RecordCount > 0) Then
  loc_1AD857E:           Proc_6_39_E7C810(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1AD8586:           var_148 = (var_C4 + var_138)
  loc_1AD858B:           var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD85CB:           var_138 = (CVar(var_CC) + var_AC.Fields.Item("Amt").Value)
  loc_1AD85D0:           var_CC = CSng(var_138)
  loc_1AD85E1:         End If
  loc_1AD85F5:         If (var_B0.RecordCount > 0) Then
  loc_1AD8625:           Proc_6_39_E7C810(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1AD862D:           var_148 = (var_C4 - var_138)
  loc_1AD8632:           var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD8670:           var_138 = (CVar(var_CC) - var_B0.Fields.Item("Amt").Value)
  loc_1AD8675:           var_CC = CSng(var_138)
  loc_1AD8682:         End If
  loc_1AD86BA:         var_DC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1, var_238)
  loc_1AD86E4:         Proc_6_7_F25D88(var_138, var_90, CVar(var_CC & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1AD8736:         var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1AD874D:         unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1AD8758:         Set var_BC = var_238
  loc_1AD87A0:         If (var_BC.RecordCount = 0) Then
  loc_1AD87AD:           var_100 = "0.000"
  loc_1AD87BB:           var_F0 = var_C4
  loc_1AD87E3:           If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1AD87EF:             var_D0 = (var_D0 + 1)
  loc_1AD87F5:             Set var_74C = var_94 
  loc_1AD8804:             var_74C.AddNew var_F0, var_100
  loc_1AD880F:             var_100 = CVar(global_56) 'String
  loc_1AD881C:             var_74C.Collect = "DocID"
  loc_1AD8824:             var_100 = CVar(var_D0) 'Long
  loc_1AD8832:             var_74C.Collect = "SNo"
  loc_1AD883D:             var_100 = CVar(global_60) 'String
  loc_1AD884A:             var_74C.Collect = "vType"
  loc_1AD8852:             var_100 = CDate(var_90)
  loc_1AD8860:             var_74C.Collect = "VDate"
  loc_1AD886B:             var_100 = CVar(global_52) 'Long
  loc_1AD8879:             var_74C.Collect = "VNo"
  loc_1AD8881:             var_100 = CVar(var_88) 'String
  loc_1AD888E:             var_74C.Collect = "vPrefix"
  loc_1AD8896:             var_100 = CVar(MemVar_1F92070) 'String
  loc_1AD88A3:             var_74C.Collect = "Site_Code"
  loc_1AD88C7:             var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD88D5:             var_74C.Collect = "Godowncode"
  loc_1AD88FF:             var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1AD890D:             var_74C.Collect = "Item"
  loc_1AD8937:             var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD8945:             var_74C.Collect = "DepartCode"
  loc_1AD8950:             var_100 = "OPENNING STOCK"
  loc_1AD895F:             var_74C.Collect = "Specification"
  loc_1AD8995:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD89A3:             var_74C.Collect = "ChalQty"
  loc_1AD89E3:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD89F1:             var_74C.Collect = "RecdQty"
  loc_1AD8A00:             var_100 = 0
  loc_1AD8A0F:             var_74C.Collect = "RejQty"
  loc_1AD8A45:             var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD8A53:             var_74C.Collect = "AccQty"
  loc_1AD8A81:             var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1AD8A8F:             var_74C.Collect = "Unit"
  loc_1AD8AE6:             var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1AD8AF4:             var_74C.Collect = "ConvRatio"
  loc_1AD8BA7:             var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1AD8BBF:             var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1AD8BCD:             var_74C.Collect = "QtyRec"
  loc_1AD8C8D:             var_224 = CVar(Val(CStr(Format(CVar((Val(CStr(Format(var_CC, "0.00"))) / Val(CStr(Format(var_C4, "0.000"))))), "0.00000")))) 'Double
  loc_1AD8C9B:             var_74C.Collect = "Rate"
  loc_1AD8CD9:             var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1AD8CE7:             var_74C.Collect = "RecdUnit"
  loc_1AD8D23:             var_188 = CVar(Val(CStr(Format(var_CC, "0.00")))) 'Double
  loc_1AD8D31:             var_74C.Collect = "Amount"
  loc_1AD8D40:             var_100 = "SA"
  loc_1AD8D4F:             var_74C.Collect = "U_Name"
  loc_1AD8D57:             var_100 = CDate(var_90)
  loc_1AD8D65:             var_74C.Collect = "U_EntDt"
  loc_1AD8D6A:             var_100 = "A"
  loc_1AD8D79:             var_74C.Collect = "U_AE"
  loc_1AD8D85:             var_F0 = "LogSite_Code"
  loc_1AD8D8E:             var_74C.Collect = var_F0
  loc_1AD8D9E:             var_74C.Update var_F0, CVar(MemVar_1F92078)
  loc_1AD8DA5:             Set var_74C = Nothing 
  loc_1AD8DA9:           End If
  loc_1AD8DAC:         Else
  loc_1AD8DC0:           If (var_BC.RecordCount = 1) Then
  loc_1AD8E03:             If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1AD8E4B:               var_198 = Format(var_C4, "0.000")
  loc_1AD8EEB:               var_238 = var_B8.Fields
  loc_1AD8F7B:               var_400 = CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1AD8FB8:               var_734 = Val(CStr(Format(var_CC, "0.00")))
  loc_1AD8FEC:               var_73C = Val(CStr(Format(var_C4, "0.000")))
  loc_1AD90B4:               Proc_6_39_E7C810(var_6C0, CVar(var_BC.Fields.Item("SNo")), 1, var_734)
  loc_1AD90CE:               var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1AD90DE:               var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1AD90EE:               var_234 = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") 
  loc_1AD910E:               var_32C = var_234 & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") 
  loc_1AD9137:               var_570 = var_32C & ",QtyRec=" & Format(var_400, "0.000") & ",Rate=" & Format(CVar((var_734 / var_73C)), "0.00000") & ",RecdUnit='" 
  loc_1AD9161:               var_680 = var_570 & var_B8.Fields.Item("PUnit").Value & "',Amount=" & Format(var_CC, "0.00") & " Where DocId='" & CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DocID")), 1, 1, 1, 1, var_73C, 1)) 
  loc_1AD917F:               unk_4A9AE7.Execute CStr(var_680 & "' And SNo=" & var_6C0), var_6F8, -1
  loc_1AD921A:             Else
  loc_1AD9252:               var_DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1AD9286:               Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_65C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1AD929C:               unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1AD92C2:             End If
  loc_1AD92C5:           Else
  loc_1AD92D4:             var_D8 = var_B8.Fields
  loc_1AD92DC:             var_E0 = var_D8.Item("ItemName")
  loc_1AD92E4:             var_110 = CVar(var_E0) 'Address
  loc_1AD9322:             var_178 = "Stock Opening Transfer"
  loc_1AD9348:             MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E68A98(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1AD9373:           Else
  loc_1AD9373:           End If
  loc_1AD9376:           var_B8.MoveNext
  loc_1AD937B:           GoTo loc_1AD8442
  loc_1AD937E:         End If
  loc_1AD9392:         If (var_B8.RecordCount > 0) Then
  loc_1AD93A9:           var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_1AD93CF:           var_138 = CVar(Proc_6_38_E68A98(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1AD93DD:           Proc_183_7_EB0C44(var_110, var_90, var_138)
  loc_1AD93FC:           unk_4A9AE7.Execute CStr(var_178 & var_110 & " BETWEEN DATE_FROM AND DATE_TO"), -1, var_D8
  loc_1AD9420:         End If
  loc_1AD9423:         var_A4.MoveNext
  loc_1AD9428:         GoTo loc_1AD82D5
  loc_1AD942B:       End If
  loc_1AD942B:     End If
  loc_1AD942E:     var_D4 = vbNullString
  loc_1AD943F:     Set var_D8 = Me.ChkGodown
  loc_1AD9445:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(1), var_E0)
  loc_1AD9463:     Set var_200 = Me.ChkFifo
  loc_1AD9482:     If ((CLng(var_E0.Value) = 1) And (CLng(var_200.Value) = 0)) Then
  loc_1AD948D:       If (var_D4 <> vbNullString) Then
  loc_1AD9497:         var_D4 = var_D4 & " OR "
  loc_1AD949A:       End If
  loc_1AD94AF:       var_D4 = var_D4 & "(D.RestType='Store' And D.Code='" & MemVar_1F92078 & "PURC')"
  loc_1AD94B9:     End If
  loc_1AD94C7:     Set var_D8 = Me.ChkGodown
  loc_1AD94CD:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(2), var_E0)
  loc_1AD94EB:     If (CLng(var_E0.Value) = 1) Then
  loc_1AD94F6:       If (var_D4 <> vbNullString) Then
  loc_1AD9500:         var_D4 = var_D4 & " OR "
  loc_1AD9503:       End If
  loc_1AD9518:       var_D4 = var_D4 & "(D.RestType='Store' And D.Code<>'" & MemVar_1F92078 & "PURC')"
  loc_1AD9522:     End If
  loc_1AD9530:     Set var_D8 = Me.ChkGodown
  loc_1AD9536:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(3), var_E0)
  loc_1AD9554:     If (CLng(var_E0.Value) = 1) Then
  loc_1AD955F:       If (var_D4 <> vbNullString) Then
  loc_1AD9569:         var_D4 = var_D4 & " OR "
  loc_1AD956C:       End If
  loc_1AD9581:       var_D4 = var_D4 & "(D.RestType='Consumable Store' And D.Code<>'" & MemVar_1F92078 & "PURC')"
  loc_1AD958B:     End If
  loc_1AD9599:     Set var_D8 = Me.ChkGodown
  loc_1AD959F:     Call 0.Method_CmdSTOPTransfer_Click0 (CInt(4), var_E0)
  loc_1AD95BD:     If (CLng(var_E0.Value) = 1) Then
  loc_1AD95C8:       If (var_D4 <> vbNullString) Then
  loc_1AD95D2:         var_D4 = var_D4 & " OR "
  loc_1AD95D5:       End If
  loc_1AD95EA:       var_D4 = var_D4 & "(D.RestType='House Keeping' And D.Code<>'" & MemVar_1F92078 & "PURC')"
  loc_1AD95F4:     End If
  loc_1AD95FC:     If (var_D4 <> vbNullString) Then
  loc_1AD961B:       var_D4 = " Where " & var_D4 & " And (D.Logsite_Code='HO' Or D.Logsite_Code='" & MemVar_1F92078 & "')"
  loc_1AD9642:       var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.RecdQty) AS Qty,Sum(S.RecdQty*I.LPurRate) AS Amt FROM ((" & var_98 & ".dbo.Stock S Inner Join "
  loc_1AD965E:       var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1AD967A:       Proc_6_7_F25D88(var_110, var_90, CVar(var_1DC & MemVar_1F92078 & "' and S.VDate < "))
  loc_1AD96A8:       var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1AD96BF:       var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','BKREC','KSREC','KMREC') AND S.RecdQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.RecdQty)>0 Order By S.GodownCode,S.Item"
  loc_1AD96D2:       unk_4A9B2E.Execute CStr(var_1B8 & ".dbo.Depart D ON G.Code = D.Code " & CVar(var_D4) & var_224), -1, var_D8
  loc_1AD96DD:       Set var_AC = var_D8
  loc_1AD972A:       var_11C = "SELECT S.GodownCode GCode,S.Item,Sum(S.IssQty) AS Qty,Sum(S.IssQty*I.LPurRate) AS Amt FROM ((" & var_98 & ".dbo.Stock S Inner Join "
  loc_1AD9746:       var_1DC = var_11C & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Inner Join " & var_98 & ".dbo.Voucher_type VT On (S.VType=VT.V_Type and S.LogSite_Code=Vt.LogSite_Code)) Where S.LogSite_Code='"
  loc_1AD9762:       Proc_6_7_F25D88(var_110, var_90, CVar(var_1DC & MemVar_1F92078 & "' and S.VDate < "))
  loc_1AD9790:       var_1B8 = var_234 & var_110 & " And S.GodownCode IN (SELECT G.Code FROM " & CVar(var_98) & ".dbo.GodownMast G INNER JOIN " & CVar(var_98) 
  loc_1AD9799:       var_1D8 = var_1B8 & ".dbo.Depart D ON G.Code = D.Code " 
  loc_1AD97A7:       var_224 = ") And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS','DAMGE','CONSE') AND S.IssQty>0 Group By S.GodownCode,S.Item HAVING Sum(S.IssQty)>0 Order By S.GodownCode,S.Item"
  loc_1AD97BA:       unk_4A9B2E.Execute CStr(var_1D8 & CVar(var_D4) & var_224), -1, var_D8
  loc_1AD97C5:       Set var_B0 = var_D8
  loc_1AD9827:       var_128 = "SELECT G.Code,G.Name FROM " & var_98 & ".dbo.GodownMast G INNER JOIN " & var_98 & ".dbo.Depart D ON G.Code=D.Code " & var_D4
  loc_1AD9837:       unk_4A9B2E.Execute var_128 & " ORDER BY G.Name", var_110, -1
  loc_1AD9842:       Set var_A4 = var_D8
  loc_1AD985A:       ' Referenced from:     1ADA9AD
  loc_1AD9869:       If Not(var_A4.EOF) Then
  loc_1AD9893:         var_110 = var_A4.Fields.Item("Code").Value
  loc_1AD98A9:         var_A8 = CStr("GCode='" & var_110 & "' And ")
  loc_1AD98D0:         var_DC = "Select Distinct Item,I.Name As ItemName,I.Type,I.CODE as CODE,I.IssueUnit AS WUnit,I.Unit As PUnit, I.ConvRatio From ((" & var_98
  loc_1AD98EC:         var_128 = var_DC & ".dbo.Stock S Left Join " & var_98 & ".dbo.ItemMast I On S.Item=I.Code And I.ItemType='Store') Left Join " & var_98
  loc_1AD9901:         Proc_6_7_F25D88(var_110, var_90, CVar(var_128 & ".dbo.Voucher_type VT On S.VType=VT.V_Type) Where S.VDate < "), var_1D8)
  loc_1AD9909:         var_148 = -1 & var_110 
  loc_1AD9928:         var_D8 = var_A4.Fields
  loc_1AD9944:         var_188 = "') And (I.Type IN ('Consumables', 'Raw Material', 'Store Item','Semi Finish') OR (I.Type IN ('Finish') AND I.DirectSale='Y')) And VT.NCAT IN ('PBC','PBR','PRR','PRC','STOP','MRE','RQI','RQR','BKREC','KSREC','KSISS','KMREC','KMISS','DAMGE','CONSE') Order By Name"
  loc_1AD9957:         unk_4A9B2E.Execute CStr("GCode='" & var_110 & "' And " & " And S.GodownCode IN ('" & var_D8.Item("Code").Value & var_188), var_200, var_D8
  loc_1AD9962:         Set var_B8 = var_200
  loc_1AD99A4:         If (var_B8.RecordCount > 0) Then
  loc_1AD99AD:           Call Proc_198_10_10BD790(var_90)
  loc_1AD99B8:           global_56 = var_DC
  loc_1AD99BF:         End If
  loc_1AD99C4:         var_D0 = 0
  loc_1AD99C7:         ' Referenced from:     1ADA900
  loc_1AD99D6:         If Not(var_B8.EOF) Then
  loc_1AD99DC:           var_C4 = CDbl(0)
  loc_1AD99E2:           var_CC = CDbl(0)
  loc_1AD99F1:           var_AC.Filter = 0
  loc_1AD9A02:           var_B0.Filter = 0
  loc_1AD9A4C:           var_AC.Filter = CVar(var_A8 & "Item='") & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD9A6A:           var_138 = CVar(var_A8 & "Item='") 'String
  loc_1AD9AA8:           var_B0.Filter = var_138 & var_B8.Fields.Item("Code").Value & "'"
  loc_1AD9AD3:           If (var_AC.RecordCount > 0) Then
  loc_1AD9B03:             Proc_6_39_E7C810(var_138, CVar(var_AC.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1AD9B0B:             var_148 = (var_C4 + var_138)
  loc_1AD9B10:             var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD9B50:             var_138 = (CVar(var_CC) + var_AC.Fields.Item("Amt").Value)
  loc_1AD9B55:             var_CC = CSng(var_138)
  loc_1AD9B66:           End If
  loc_1AD9B7A:           If (var_B0.RecordCount > 0) Then
  loc_1AD9BAA:             Proc_6_39_E7C810(var_138, CVar(var_B0.Fields.Item("qty")), CVar(var_C4), var_CC)
  loc_1AD9BB2:             var_148 = (var_C4 - var_138)
  loc_1AD9BB7:             var_C4 = CSng(var_138 & var_B8.Fields.Item("Code").Value)
  loc_1AD9BF5:             var_138 = (CVar(var_CC) - var_B0.Fields.Item("Amt").Value)
  loc_1AD9BFA:             var_CC = CSng(var_138)
  loc_1AD9C07:           End If
  loc_1AD9C3F:           var_DC = Proc_6_38_E68A98(CVar(var_B8.Fields.Item("Code")), "Select * From Stock Where Item='", var_234, -1, var_238)
  loc_1AD9C69:           Proc_6_7_F25D88(var_138, var_90, CVar(var_CC & var_DC & "' And VType='" & global_60 & "' And VDate>="))
  loc_1AD9CBB:           var_1FC = var_C4 & var_138 & " And GodownCode IN ('" & var_A4.Fields.Item("Code").Value & "') AND LOGSITE_CODE='" & CVar(MemVar_1F92078) 
  loc_1AD9CD2:           unk_4A9AE7.Execute CStr(var_1FC & "'"), var_D0, var_DC
  loc_1AD9CDD:           Set var_BC = var_238
  loc_1AD9D25:           If (var_BC.RecordCount = 0) Then
  loc_1AD9D32:             var_100 = "0.000"
  loc_1AD9D40:             var_F0 = var_C4
  loc_1AD9D68:             If (CDbl(Val(CStr(Format(var_F0, var_100)))) <> CDbl(0)) Then
  loc_1AD9D74:               var_D0 = (var_D0 + 1)
  loc_1AD9D7A:               Set var_750 = var_94 
  loc_1AD9D89:               var_750.AddNew var_F0, var_100
  loc_1AD9D94:               var_100 = CVar(global_56) 'String
  loc_1AD9DA1:               var_750.Collect = "DocID"
  loc_1AD9DA9:               var_100 = CVar(var_D0) 'Long
  loc_1AD9DB7:               var_750.Collect = "SNo"
  loc_1AD9DC2:               var_100 = CVar(global_60) 'String
  loc_1AD9DCF:               var_750.Collect = "vType"
  loc_1AD9DD7:               var_100 = CDate(var_90)
  loc_1AD9DE5:               var_750.Collect = "VDate"
  loc_1AD9DF0:               var_100 = CVar(global_52) 'Long
  loc_1AD9DFE:               var_750.Collect = "VNo"
  loc_1AD9E06:               var_100 = CVar(var_88) 'String
  loc_1AD9E13:               var_750.Collect = "vPrefix"
  loc_1AD9E1B:               var_100 = CVar(MemVar_1F92070) 'String
  loc_1AD9E28:               var_750.Collect = "Site_Code"
  loc_1AD9E4C:               var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD9E5A:               var_750.Collect = "Godowncode"
  loc_1AD9E84:               var_110 = CVar(var_B8.Fields.Item("Item")) 'Address
  loc_1AD9E92:               var_750.Collect = "Item"
  loc_1AD9EBC:               var_110 = CVar(var_A4.Fields.Item("Code")) 'Address
  loc_1AD9ECA:               var_750.Collect = "DepartCode"
  loc_1AD9ED5:               var_100 = "OPENNING STOCK"
  loc_1AD9EE4:               var_750.Collect = "Specification"
  loc_1AD9F1A:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9F28:               var_750.Collect = "ChalQty"
  loc_1AD9F68:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9F76:               var_750.Collect = "RecdQty"
  loc_1AD9F85:               var_100 = 0
  loc_1AD9F94:               var_750.Collect = "RejQty"
  loc_1AD9FCA:               var_188 = CVar(Val(CStr(Format(var_C4, "0.000")))) 'Double
  loc_1AD9FD8:               var_750.Collect = "AccQty"
  loc_1ADA006:               var_110 = CVar(var_B8.Fields.Item("WUnit")) 'Address
  loc_1ADA014:               var_750.Collect = "Unit"
  loc_1ADA06B:               var_188 = CVar(Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000")))) 'Double
  loc_1ADA079:               var_750.Collect = "ConvRatio"
  loc_1ADA12C:               var_198 = CVar((Val(CStr(Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADA144:               var_224 = CVar(Val(CStr(Format(var_198, "0.000")))) 'Double
  loc_1ADA152:               var_750.Collect = "QtyRec"
  loc_1ADA212:               var_224 = CVar(Val(CStr(Format(CVar((Val(CStr(Format(var_CC, "0.00"))) / Val(CStr(Format(var_C4, "0.000"))))), "0.00000")))) 'Double
  loc_1ADA220:               var_750.Collect = "Rate"
  loc_1ADA25E:               var_110 = CVar(var_B8.Fields.Item("PUnit")) 'Address
  loc_1ADA26C:               var_750.Collect = "RecdUnit"
  loc_1ADA2A8:               var_188 = CVar(Val(CStr(Format(var_CC, "0.00")))) 'Double
  loc_1ADA2B6:               var_750.Collect = "Amount"
  loc_1ADA2C5:               var_100 = "SA"
  loc_1ADA2D4:               var_750.Collect = "U_Name"
  loc_1ADA2DC:               var_100 = CDate(var_90)
  loc_1ADA2EA:               var_750.Collect = "U_EntDt"
  loc_1ADA2EF:               var_100 = "A"
  loc_1ADA2FE:               var_750.Collect = "U_AE"
  loc_1ADA30A:               var_F0 = "LogSite_Code"
  loc_1ADA313:               var_750.Collect = var_F0
  loc_1ADA323:               var_750.Update var_F0, CVar(MemVar_1F92078)
  loc_1ADA32A:               Set var_750 = Nothing 
  loc_1ADA32E:             End If
  loc_1ADA331:           Else
  loc_1ADA345:             If (var_BC.RecordCount = 1) Then
  loc_1ADA388:               If (CDbl(Val(CStr(Format(var_C4, "0.000")))) <> CDbl(0)) Then
  loc_1ADA3D0:                 var_198 = Format(var_C4, "0.000")
  loc_1ADA470:                 var_238 = var_B8.Fields
  loc_1ADA500:                 var_400 = CVar((Val(CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000"))) * Val(CStr(Format(var_C4, "0.000"))))) 'Double
  loc_1ADA53D:                 var_734 = Val(CStr(Format(var_CC, "0.00")))
  loc_1ADA571:                 var_73C = Val(CStr(Format(var_C4, "0.000")))
  loc_1ADA639:                 Proc_6_39_E7C810(var_6C0, CVar(var_BC.Fields.Item("SNo")), 1, var_734)
  loc_1ADA653:                 var_148 = "Update Stock Set ChalQty=" & Format(var_C4, "0.000") 
  loc_1ADA663:                 var_1B8 = var_148 & ",RecdQty=" & var_198 
  loc_1ADA68C:                 var_2CC = var_1B8 & ",RejQty=0,AccQty=" & Format(var_C4, "0.000") & ",Unit='" & var_B8.Fields.Item("WUnit").Value & "',ConvRatio=" 
  loc_1ADA6AC:                 var_460 = var_2CC & Format(CVar(var_B8.Fields.Item("ConvRatio")), "0.000") & ",QtyRec=" & Format(var_400, "0.000") & ",Rate=" 
  loc_1ADA6CC:                 var_5C8 = var_460 & Format(CVar((var_734 / var_73C)), "0.00000") & ",RecdUnit='" & var_B8.Fields.Item("PUnit").Value & "',Amount=" 
  loc_1ADA6E6:                 var_680 = var_5C8 & Format(var_CC, "0.00") & " Where DocId='" & CVar(Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DocID")), 1, 1, 1, 1, var_73C, 1)) 
  loc_1ADA704:                 unk_4A9AE7.Execute CStr(var_680 & "' And SNo=" & var_6C0), var_6F8, -1
  loc_1ADA79F:               Else
  loc_1ADA7D7:                 var_DC = Proc_6_38_E68A98(CVar(var_BC.Fields.Item("DocID")), "Delete From Stock Where DocId='", var_198, -1, var_238)
  loc_1ADA80B:                 Proc_6_39_E7C810(var_148, CVar(var_BC.Fields.Item("SNo")), CVar(var_65C & CStr(Format(CVar(var_238.Item("ConvRatio")), "0.000")) & "' And SNo="), 1)
  loc_1ADA821:                 unk_4A9AE7.Execute CStr(1 & var_148), 1, 1
  loc_1ADA847:               End If
  loc_1ADA84A:             Else
  loc_1ADA859:               var_D8 = var_B8.Fields
  loc_1ADA869:               var_110 = CVar(var_D8.Item("ItemName")) 'Address
  loc_1ADA8A7:               var_178 = "Stock Opening Transfer"
  loc_1ADA8CD:               MsgBox(CVar("Multiple Opening In Stock " & Proc_6_38_E68A98(var_110) & " In ") & var_A4.Fields.Item("Name").Value, &H10, var_178, var_198, var_1B8)
  loc_1ADA8F8:             Else
  loc_1ADA8F8:             End If
  loc_1ADA8FB:             var_B8.MoveNext
  loc_1ADA900:             GoTo loc_1AD99C7
  loc_1ADA903:           End If
  loc_1ADA917:           If (var_B8.RecordCount > 0) Then
  loc_1ADA92E:             var_DC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F92070
  loc_1ADA954:             var_138 = CVar(Proc_6_38_E68A98(var_110) & "' AND LOGSITE_CODE='" & MemVar_1F92078 & "' AND V_Type='" & global_60 & "' AND ") 'String
  loc_1ADA962:             Proc_183_7_EB0C44(var_110, var_90, var_138)
  loc_1ADA96A:             var_148 = var_178 & var_110 
  loc_1ADA973:             var_158 = var_148 & " BETWEEN DATE_FROM AND DATE_TO" 
  loc_1ADA981:             unk_4A9AE7.Execute CStr(var_158), -1, var_D8
  loc_1ADA9A5:           End If
  loc_1ADA9A8:           var_A4.MoveNext
  loc_1ADA9AD:           GoTo loc_1AD985A
  loc_1ADA9B0:         End If
  loc_1ADA9B0:       End If
  loc_1ADA9B6:       unk_4A9AE7.CommitTrans
  loc_1ADA9BD:       var_9E = 0
  loc_1ADA9E1:       MsgBox("Opening Transfer In Stock Completed.", &H40, "Information", var_148, var_158)
  loc_1ADA9F6:       Set var_B8 = Nothing
  loc_1ADA9FE:       Set var_94 = Nothing
  loc_1ADAA06:       Set var_BC = Nothing
  loc_1ADAA0E:       Set var_AC = Nothing
  loc_1ADAA16:       Set var_B0 = Nothing
  loc_1ADAA1E:       Set var_B4 = Nothing
  loc_1ADAA2D:       Me.FrStockTransfer.Enabled = True
  loc_1ADAA35:       Exit Sub
  loc_1ADAA36:     End If
  loc_1ADAA36:   End If
  loc_1ADAA36: End If
  loc_1ADAA36: ' Referenced from: 1AD6A2C
  loc_1ADAA3C: If (var_9E = &HFF) Then
  loc_1ADAA45:   unk_4A9AE7.RollbackTrans
  loc_1ADAA4A: End If
  loc_1ADAA56: Me.FrStockTransfer.Enabled = True
  loc_1ADAA64: Call 0.Method_arg_50 (Proc_6_38_E68A98("Opening Transfer In Stock Completed."))
  loc_1ADAA79: Proc_183_57_104AA84(Proc_6_38_E68A98("Opening Transfer In Stock Completed."), "Opening Transfer")
  loc_1ADAA85: Exit Sub
End Sub

Public Sub Proc_198_10_10BD790(arg_C) '10BD790
  'Data Table: 4A9AE0
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BD50A: On Error Goto loc_10BD763
  loc_10BD510: var_90 = "STOP"
  loc_10BD517: Set var_8C = New 
  loc_10BD522: Me.Recordset15.CursorLocation = 3
  loc_10BD52A: var_D0 = arg_C
  loc_10BD532: Proc_183_7_EB0C44(var_E0)
  loc_10BD555: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10BD586: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10BD5B1: var_120 = CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BD5B9: var_8C.Open var_120, CVar(MemVar_1F921DC), 2
  loc_10BD5F6: If (var_8C.RecordCount > 0) Then
  loc_10BD628:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BD631:   global_52 = CLng(CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BD66D:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BD68A:   var_98 = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_52)
  loc_10BD694:   var_D0 = var_90
  loc_10BD6A4:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BD6B5:   var_120 = Space((5 - Len(var_90)))
  loc_10BD6BD:   var_150 = (CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BD6CE:   var_160 = Space((5 - Len(var_94)))
  loc_10BD6D6:   var_170 = (var_150 + var_160)
  loc_10BD6E0:   var_180 = (var_170 + CVar(var_94))
  loc_10BD6F9:   var_190 = Space((8 - Len(CStr(global_52))))
  loc_10BD701:   var_1A0 = (var_180 + var_190)
  loc_10BD710:   var_1C0 = (var_1A0 + CVar(CStr(global_52)))
  loc_10BD749:   var_88 = CStr(var_1C0)
  loc_10BD74F: Else
  loc_10BD752:   var_88 = vbNullString
  loc_10BD755: End If
  loc_10BD75A: Set var_8C = Nothing
  loc_10BD75D: Proc_198_10_10BD790 = -1
  loc_10BD763: ' Referenced from: 10BD50A
  loc_10BD769: Call 0.Method_arg_50 (var_98)
  loc_10BD77E: Proc_183_57_104AA84(var_98, "VoucherNoSTOP")
  loc_10BD78A: Proc_198_10_10BD790 = var_D0
End Sub

Public Sub Proc_198_11_10BC15C(arg_C) '10BC15C
  'Data Table: 4A9AE0
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BBED6: On Error Goto loc_10BC12F
  loc_10BBEDC: var_90 = "F_AO"
  loc_10BBEE3: Set var_8C = New 
  loc_10BBEEE: Me.Recordset15.CursorLocation = 3
  loc_10BBEF6: var_D0 = arg_C
  loc_10BBEFE: Proc_183_7_EB0C44(var_E0)
  loc_10BBF21: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F92070
  loc_10BBF52: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F92078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F92070 & "' AND VP.LOGSITE_CODE='"
  loc_10BBF7D: var_120 = CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BBF85: var_8C.Open var_120, CVar(MemVar_1F921DC), 2
  loc_10BBFC2: If (var_8C.RecordCount > 0) Then
  loc_10BBFF4:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BBFFD:   global_52 = CLng(CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BC039:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BC056:   var_98 = Proc_183_15_EAC900(MemVar_1F92070, 2, MemVar_1F9206C, global_52)
  loc_10BC060:   var_D0 = var_90
  loc_10BC070:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BC081:   var_120 = Space((5 - Len(var_90)))
  loc_10BC089:   var_150 = (CVar(var_B4 & MemVar_1F92078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BC09A:   var_160 = Space((5 - Len(var_94)))
  loc_10BC0A2:   var_170 = (var_150 + var_160)
  loc_10BC0AC:   var_180 = (var_170 + CVar(var_94))
  loc_10BC0C5:   var_190 = Space((8 - Len(CStr(global_52))))
  loc_10BC0CD:   var_1A0 = (var_180 + var_190)
  loc_10BC0DC:   var_1C0 = (var_1A0 + CVar(CStr(global_52)))
  loc_10BC115:   var_88 = CStr(var_1C0)
  loc_10BC11B: Else
  loc_10BC11E:   var_88 = vbNullString
  loc_10BC121: End If
  loc_10BC126: Set var_8C = Nothing
  loc_10BC129: Proc_198_11_10BC15C = -1
  loc_10BC12F: ' Referenced from: 10BBED6
  loc_10BC135: Call 0.Method_arg_50 (var_98)
  loc_10BC14A: Proc_183_57_104AA84(var_98, "VoucherNo")
  loc_10BC156: Proc_198_11_10BC15C = var_D0
End Sub
