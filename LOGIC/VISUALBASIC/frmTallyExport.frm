VERSION 5.00
Begin VB.Form frmTallyExport
  Caption = "Tally Export"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10110
  ClientHeight = 5070
  Begin ProgressBar ProgressBar1
    Left = 0
    Top = 2295
    Width = 10110
    Height = 405
    TabIndex = 14
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 7890
    Top = 3675
    Width = 1020
    Height = 435
    Visible = 0   'False
    TabIndex = 13
  End
  Begin Frame frmStart
    BackColor = &HFFC0C0&
    Left = 3255
    Top = 2970
    Width = 3480
    Height = 900
    TabIndex = 5
    Begin CommandButton btnExit
      Caption = "&Exit"
      Left = 1815
      Top = 270
      Width = 1380
      Height = 420
      TabIndex = 7
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton btnStart
      Caption = "&Start"
      Left = 240
      Top = 270
      Width = 1440
      Height = 420
      TabIndex = 6
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 5910
    Top = 795
    Width = 1380
    Height = 240
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
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
    ForeColor = &HC00000&
    Left = 2970
    Top = 795
    Width = 1380
    Height = 240
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Label lblLastExpDate
    Caption = "Label5"
    BackColor = &HFFC0C0&
    ForeColor = &HFF&
    Left = 75
    Top = 60
    Width = 4965
    Height = 435
    TabIndex = 12
    BeginProperty Font
      Name = "Arial"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label4
    Caption = "2."
    Index = 1
    BackColor = &HFFC0C0&
    Left = 465
    Top = 4665
    Width = 150
    Height = 255
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label4
    Caption = "1."
    Index = 0
    BackColor = &HFFC0C0&
    Left = 465
    Top = 4410
    Width = 150
    Height = 255
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label3
    Caption = "It Will Create 2 xml Files   LedgerMaster.xml            Ledger.xml"
    BackColor = &HFFC0C0&
    Left = 705
    Top = 4155
    Width = 1875
    Height = 735
    TabIndex = 9
    BeginProperty Font
      Name = "Arial Narrow"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "Note :"
    BackColor = &HFFC0C0&
    Left = 75
    Top = 4170
    Width = 585
    Height = 300
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label lblStatus
    Caption = "Label2"
    BackColor = &HFFC0C0&
    Left = 150
    Top = 1755
    Width = 9885
    Height = 480
    TabIndex = 4
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
  Begin Label Label1
    Caption = "To Date"
    Index = 0
    ForeColor = &H40&
    Left = 4905
    Top = 795
    Width = 645
    Height = 225
    TabIndex = 3
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "From Date"
    Index = 1
    ForeColor = &H40&
    Left = 1935
    Top = 795
    Width = 870
    Height = 225
    TabIndex = 1
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmTallyExport"


Private Sub Command1_Click() 'DFFE24
  'Data Table: 46A2A8
  loc_DFFE1C: Call Proc_331_9_18145B8()
  loc_DFFE21: Exit Sub
End Sub

Private Sub btnExit_Click() 'E15F68
  'Data Table: 46A2A8
  loc_E15F5D: Me.Global.Unload Me
  loc_E15F65: Exit Sub
End Sub

Private Sub Form_Load() '100FF64
  'Data Table: 46A2A8
  Dim var_AC As Variant
  Dim var_B0 As TextBox
  Dim unk_46A2B2 As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As Variant
  loc_100FD5F: Call 0.Method_arg_7C (CDbl(0))
  loc_100FD6B: Call 0.Method_arg_74 (CDbl(0))
  loc_100FD78: Call 0.Method_MeC (CDbl(5475))
  loc_100FD85: Call 0.Method_Me4 (CDbl(10230))
  loc_100FD9C: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_100FDB0: Me.lblStatus.Visible = False
  loc_100FDC7: Me.ProgressBar1.Visible = False
  loc_100FDE0: Set var_AC = Me.Txt
  loc_100FDE6: Call 0.Method_Form_Load0 (0, var_B0)
  loc_100FDEE: var_B0.Text = CStr(MemVar_1F920F4)
  loc_100FE14: Call 0.Method_Form_Load0 (1, var_B0)
  loc_100FE1C: var_B0.Text = CStr(MemVar_1F920EC)
  loc_100FE4F: unk_46A2B2.Execute "Select max(TImp_Dt) as TImp_Dt from Ledger where Logsite_code='" & MemVar_1F92078 & "'", var_C8, -1
  loc_100FE5A: Set var_88 = Me.Txt
  loc_100FE79: var_AC = var_88.Fields
  loc_100FEE0: If (var_AC Or (Proc_6_38_E68A98(CVar(var_88.Fields.Item("TImp_Dt")), (Proc_6_38_E68A98(CVar(var_AC.Item("TImp_Dt"))) = "01/Jan/1900")) = vbNullString)) Then
  loc_100FEEF:   Me.lblLastExpDate.Visible = False
  loc_100FEFA: Else
  loc_100FF06:   Me.lblLastExpDate.Visible = True
  loc_100FF4A:   Me.lblLastExpDate.Caption = "Last Exported Upto " & Proc_6_38_E68A98(CVar(var_88.Fields.Item("TImp_Dt")))
  loc_100FF60: End If
  loc_100FF60: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'ED7DF8
  'Data Table: 46A2A8
  Dim var_98 As TextBox
  Dim var_8C As TextBox
  Dim var_88 As CommandButton
  loc_ED7D56: If (Shift = &HD) Then
  loc_ED7D63:   Set var_88 = Me.Txt
  loc_ED7D69:   Call 0.Method_Txt_KeyDown0 (KeyCode)
  loc_ED7D89:   Set var_94 = Me.Txt
  loc_ED7D8F:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_98)
  loc_ED7D97:   var_98.Text = Proc_6_33_1512840(var_8C)
  loc_ED7DB0:   If (KeyCode = 0) Then
  loc_ED7DBC:     Set var_88 = Me.Txt
  loc_ED7DC2:     Call 0.Method_Txt_KeyDown0 (1, var_8C)
  loc_ED7DCA:     var_8C.SetFocus
  loc_ED7DD9:   Else
  loc_ED7DDF:     If (KeyCode = 1) Then
  loc_ED7DEC:       Me.btnStart.SetFocus
  loc_ED7DF4:     End If
  loc_ED7DF4:   End If
  loc_ED7DF4: End If
  loc_ED7DF4: Exit Sub
  loc_ED7DF5: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) 'E7DE94
  'Data Table: 46A2A8
  Dim var_98 As TextBox
  loc_E7DE4A: Set var_88 = Me.Txt
  loc_E7DE50: Call 0.Method_Txt_Validate0 (Cancel)
  loc_E7DE70: Set var_94 = Me.Txt
  loc_E7DE76: Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_E7DE7E: var_98.Text = Proc_6_33_1512840(var_8C)
  loc_E7DE91: Exit Sub
  loc_E7DE92: Set arg_3054 = var_8C
End Sub

Private Sub btnStart_Click() '176E388
  'Data Table: 46A2A8
  Dim var_C4 As Variant
  Dim var_D4 As Variant
  Dim var_E8 As String
  Dim var_EC As String
  Dim unk_46A2B2 As Connection15
  Dim var_98 As Recordset15
  Dim var_9C As Recordset15
  Dim var_FC As Variant
  Dim var_E4 As Variant
  Dim var_118 As Variant
  Dim var_12C As Variant
  Dim var_114 As String
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_13C As Fields15
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1C4 As String
  Dim var_200 As Variant
  Dim var_130 As String
  Dim var_240 As Variant
  Dim var_254 As String
  Dim var_134 As String
  Dim var_294 As Variant
  Dim var_25C As String
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_A2 As Integer
  Dim var_190 As Variant
  Dim var_88 As Recordset15
  Dim var_B8 As Double
  Dim var_C0 As Double
  Dim var_AC As Double
  loc_176C600: Me.lblStatus.Visible = False
  loc_176C617: Me.ProgressBar1.Visible = False
  loc_176C624: Call 0.Method_arg_A4 (&HB)
  loc_176C630: Set var_C4 = Me.lblStatus
  loc_176C636: var_C4.Caption = vbNullString
  loc_176C652: var_E8 = "Select Distinct Grp.GroupName,Grp1.GroupName As UnderGroupName,Cast(Grp.MainGrCode As Numeric) As nMainGrCode From Acgroup Grp Left Join AcGroup Grp1 On Grp1.MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3) WHERE (Grp.LOGSITE_CODE='" & MemVar_1F92078
  loc_176C662: unk_46A2B2.Execute var_E8 & "' OR Grp.LOGSITE_CODE='HO') Order By Cast(Grp.MainGrCode As Numeric)", var_FC, -1
  loc_176C66D: Set var_98 = var_C4
  loc_176C691: var_E8 = "Select M.*, G.Groupname, S.Name as Statename, G.Sysgroup From Subgroup M Left Join AcGroup G On M.GroupCode=G.GroupCode Left Join City C On M.Citycode=C.Citycode Left Join State S On C.Statecode=S.code where (M.LOGSITE_CODE='" & MemVar_1F92078
  loc_176C6A1: unk_46A2B2.Execute var_E8 & "' OR M.LOGSITE_CODE='HO') ", var_FC, -1
  loc_176C6AC: Set var_9C = var_C4
  loc_176C6DA: var_D4 = CVar(CDbl((var_98.RecordCount + var_9C.RecordCount))) 'Single
  loc_176C6E9: Me.ProgressBar1.Max = False
  loc_176C6FD: var_C4 = Me.var_C4.App
  loc_176C718: Open App.Path & "\LedgerMaster.xml" For Output As 1 Len = &HFF
  loc_176C72B: Print 1, "<ENVELOPE>"
  loc_176C736: Print 1, "<HEADER>"
  loc_176C741: Print 1, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_176C74C: Print 1, "</HEADER>"
  loc_176C757: Print 1, "<BODY>"
  loc_176C762: Print 1, "<IMPORTDATA>"
  loc_176C76D: Print 1, "<REQUESTDESC>"
  loc_176C778: Print 1, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_176C783: Print 1, "<STATICVARIABLES>"
  loc_176C79C: Print 1, "<SVCURRENTCOMPANY>" & MemVar_1F92130 & "</SVCURRENTCOMPANY>"
  loc_176C7AE: Print 1, "</STATICVARIABLES>"
  loc_176C7B9: Print 1, "</REQUESTDESC>"
  loc_176C7C4: Print 1, "<REQUESTDATA>"
  loc_176C7CF: Print 1, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_176C7D5: ' Referenced from: 176CE14
  loc_176C7E4: If Not(var_98.EOF) Then
  loc_176C7F6:   var_C4 = var_98.Fields
  loc_176C820:   If (Proc_6_38_E68A98(CVar(var_C4.Item("UnderGroupName")), var_C4) = "DIRECT EXPENSE") Then
  loc_176C86E:     var_114 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176C87A:     Call Proc_331_6_F941E8(var_114, "DIRECT EXPENSES")
  loc_176C893:   Else
  loc_176C8CC:     If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_176C91A:       var_114 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176C926:       Call Proc_331_6_F941E8(var_114, "INDIRECT INCOMES")
  loc_176C93F:     Else
  loc_176C978:       If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_176C9C6:         var_114 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176C9D2:         Call Proc_331_6_F941E8(var_114, "SUSPENSE A/C")
  loc_176C9EB:       Else
  loc_176CA24:         If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "PROFIT & LOSS A/C") Then
  loc_176CA72:           var_114 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CA7E:           Call Proc_331_6_F941E8(var_114, "SUSPENSE A/C")
  loc_176CA97:         Else
  loc_176CAD0:           If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "DIRECT EXPENSE") Then
  loc_176CB1E:             var_EC = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CB24:             Call Proc_331_6_F941E8("DIRECT EXPENSES", var_114)
  loc_176CB3B:           Else
  loc_176CB74:             If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_176CBC2:               var_EC = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CBC8:               Call Proc_331_6_F941E8("INDIRECT INCOMES", var_114)
  loc_176CBDF:             Else
  loc_176CC18:               If (Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_176CC66:                 var_EC = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CC6C:                 Call Proc_331_6_F941E8("SUSPENSE A/C", var_114)
  loc_176CC83:               Else
  loc_176CCCE:                 var_134 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CD1C:                 var_114 = Replace(Proc_6_38_E68A98(CVar(var_98.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_176CD25:                 Call Proc_331_6_F941E8(var_134, var_114)
  loc_176CD49:               End If
  loc_176CD49:             End If
  loc_176CD49:           End If
  loc_176CD49:         End If
  loc_176CD49:       End If
  loc_176CD49:     End If
  loc_176CD49:   End If
  loc_176CD53:   Me.lblStatus.Refresh
  loc_176CD67:   Me.lblStatus.Visible = True
  loc_176CD7D:   Me.ProgressBar1.Visible = True
  loc_176CD97:   var_C4 = var_98.Fields
  loc_176CDC1:   Me.lblStatus.Caption = var_C4 & Proc_6_38_E68A98(CVar(var_C4.Item("GroupName")), "Transferring Group ")
  loc_176CDEE:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_176CDFD:   Me.ProgressBar1.Value = "GroupName"
  loc_176CE0F:   var_98.MoveNext
  loc_176CE14:   GoTo loc_176C7D5
  loc_176CE17:   ' Referenced from: 176D58B
  loc_176CE17: End If
  loc_176CE26: If Not(var_9C.EOF) Then
  loc_176CE62:   If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GroupName"))) = "DIRECT EXPENSE") Then
  loc_176CEB0:     var_25C = Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_176CF29:     var_1A0 = CVar(Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176CFC4:     var_240 = CVar(Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176D003:     Call Proc_331_7_11B70E4(var_25C, CStr(IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))) = vbNullString), "No", var_1A0)), CStr(IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))) = vbNullString), "No", var_240)))
  loc_176D054:   Else
  loc_176D08D:     If (Proc_6_38_E68A98(CVar(var_9C.Fields.Item("GroupName")), "Uttarakhand") = "INDIRECT INCOME") Then
  loc_176D0DB:       var_25C = Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_176D154:       var_1A0 = CVar(Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176D1EF:       var_240 = CVar(Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176D22E:       Call Proc_331_7_11B70E4(var_25C, CStr(IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))) = vbNullString), "No", var_1A0)), CStr(IIf((Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))) = vbNullString), "No", var_240)))
  loc_176D27F:     Else
  loc_176D2CA:       var_264 = Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Name")), "Uttarakhand"), "&", "&amp;", 1, -1, 0)
  loc_176D2E4:       var_11C = var_9C.Fields.Item("Add1")
  loc_176D2EC:       var_12C = CVar(var_11C) 'Address
  loc_176D307:       var_13C = var_9C.Fields
  loc_176D317:       var_160 = CVar(var_13C.Item("Add1")) 'Address
  loc_176D343:       var_1A0 = CVar(Replace(Proc_6_38_E68A98(var_160), "&", "&amp;", 1, -1, 0)) 'String
  loc_176D34B:       var_190 = "No"
  loc_176D3DE:       var_240 = CVar(Replace(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_176D3EF:       var_114 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add2")))
  loc_176D422:       var_294 = CVar(var_9C.Fields.Item("GroupName")) 'Address
  loc_176D44E:       var_25C = Replace(Proc_6_38_E68A98(var_294), "&", "&amp;", 1, -1, 0)
  loc_176D468:       Call Proc_331_7_11B70E4(Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Add1"))), CStr(IIf((Proc_6_38_E68A98(var_12C, "INDIRECT INCOMES") = vbNullString), var_190, var_1A0)), CStr(IIf((var_114 = vbNullString), "No", var_240)))
  loc_176D4C0:     End If
  loc_176D4C0:   End If
  loc_176D4CA:   Me.lblStatus.Refresh
  loc_176D4DE:   Me.lblStatus.Visible = True
  loc_176D4F4:   Me.ProgressBar1.Visible = True
  loc_176D527:   var_E8 = Proc_6_38_E68A98(CVar(var_9C.Fields.Item("Name")), "Transferring Master ", "Uttarakhand")
  loc_176D538:   Me.lblStatus.Caption = var_25C & var_E8
  loc_176D565:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_176D56E:   Set var_10C = Me.ProgressBar1
  loc_176D574:   var_10C.Value = "Name"
  loc_176D586:   var_9C.MoveNext
  loc_176D58B:   GoTo loc_176CE17
  loc_176D58E: End If
  loc_176D593: Print 1, "</TALLYMESSAGE>"
  loc_176D59E: Print 1, "</REQUESTDATA>"
  loc_176D5A9: Print 1, "</IMPORTDATA>"
  loc_176D5B4: Print 1, "</BODY>"
  loc_176D5BF: Print 1, "</ENVELOPE>"
  loc_176D5C7: Close 1
  loc_176D5DB: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_176D5EF: Me.lblStatus.Visible = False
  loc_176D606: Me.ProgressBar1.Visible = False
  loc_176D61B: Me.lblStatus.Caption = "LedgerMaster.xml Generated Successfully"
  loc_176D62D: Me.lblStatus.Refresh
  loc_176D649: var_EC = "Select Distinct L.Docid, cast(ltrim(L.V_No) as Integer) as V_No, LM.Narration, L.V_Date, Case when L.V_Type like 'MT then 'Payment' when L.V_Type like 'PV then 'Payment' when L.V_Type like 'CT then 'Receipt' when L.V_Type like 'RV then 'Receipt' when L.V_Type like 'NT then 'Contra' when L.V_Type like 'N then 'Credit Note' when L.V_Type like 'N then 'Debit Note' when L.V_Type like 'BPB then 'Purchase' when L.V_Type like 'RPB then 'Purchase' when L.V_Type like 'BPC then 'Purchase' when L.V_Type like 'RPC then 'Purchase' else 'Journal' end as VouchType,cast(year(L.V_Date) as Varchar) + case when len(month(L.V_Date)) <=1 then '0' + cast(month(L.V_Date) as Varchar) else cast(month(L.V_Date) as Varchar) end + case when len(day(L.V_Date)) <=1 then '0' + cast(day(L.V_Date) as Varchar) else cast(day(L.V_Date) as Varchar) end as mDate " & " ,(Select Top 1 M.name from Subgroup M Left Join Ledger L1 On L1.Subcode=M.Subcode where L1.Docid=L.Docid) as Party from Ledger L Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.groupcode where L.V_Date between '"
  loc_176D658: Set var_C4 = Me.Txt
  loc_176D65E: Call 0.Method_btnStart_Click0 (0, var_10C, var_E8, var_25C & var_E8)
  loc_176D666: var_FC = var_10C.Text
  loc_176D66F: var_110 = -1 & var_E8
  loc_176D676: var_130 = Proc_6_38_E68A98(var_160) & "' and '"
  loc_176D685: Set var_118 = Me.Txt
  loc_176D68B: Call 0.Method_btnStart_Click0 (1, var_11C, var_114)
  loc_176D693: var_130 = var_11C.Text
  loc_176D6AA: var_254 = var_13C & var_114 & "' and L.v_type Not like '_ao and L.Docid not in (Select Docid from ledger where logsite_code='" & MemVar_1F92078
  loc_176D6C8: unk_46A2B2.Execute var_254 & "' and isnull(subcode,'')='') and L.logsite_code='" & MemVar_1F92078 & "' Order By L.V_Date, V_No ", "DIRECT EXPENSES", 
  loc_176D6D3: Set var_90 = var_13C
  loc_176D713: If (var_90.RecordCount = 0) Then
  loc_176D72F:   MsgBox("No Records To Post", 0, var_12C, var_160, var_190)
  loc_176D73F:   Exit Sub
  loc_176D740: End If
  loc_176D75E: Me.ProgressBar1.Max = CVar(CDbl(var_90.RecordCount))
  loc_176D772: var_C4 = Me.var_C4.App
  loc_176D78D: Open App.Path & "\Ledger.xml" For Output As 2 Len = &HFF
  loc_176D7A0: Print 2, "<ENVELOPE>"
  loc_176D7AB: Print 2, "<HEADER>"
  loc_176D7B6: Print 2, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_176D7C1: Print 2, "</HEADER>"
  loc_176D7CC: Print 2, "<BODY>"
  loc_176D7D7: Print 2, "<IMPORTDATA>"
  loc_176D7E2: Print 2, "<REQUESTDESC>"
  loc_176D7ED: Print 2, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_176D7F8: Print 2, "<STATICVARIABLES>"
  loc_176D811: Print 2, "<SVCURRENTCOMPANY>" & MemVar_1F92130 & "</SVCURRENTCOMPANY>"
  loc_176D823: Print 2, "</STATICVARIABLES>"
  loc_176D82E: Print 2, "</REQUESTDESC>"
  loc_176D839: Print 2, "<REQUESTDATA>"
  loc_176D83F: ' Referenced from: 176E2A4
  loc_176D84E: If Not(var_90.EOF) Then
  loc_176D857:   var_A2 = (var_A2 + 1)
  loc_176D883:   var_A0 = CStr(Format(var_A2, "00000000"))
  loc_176D892:   Print 2, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_176D8E2:   var_130 = "<VOUCHER REMOTEID=""" & var_A0 & """ VCHKEY="""" VCHTYPE=""" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype")), 1) & """ ACTION=""Create"" OBJVIEW=""Accounting Voucher View"">"
  loc_176D8E7:   Print 2, var_130
  loc_176D940:   Print 2, "<DATE>" & var_90.Fields.Item("mDate").Value & "</DATE>"
  loc_176D969:   Print 2, "<GUID>" & var_A0 & "</GUID>"
  loc_176D9C1:   var_134 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Narration")), 1), "&", "&amp;", 1, -1, 0)
  loc_176D9DA:   Print 2, "<NARRATION>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</NARRATION>"
  loc_176DA36:   Print 2, "<VOUCHERTYPENAME>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype"))) & "</VOUCHERTYPENAME>"
  loc_176DA8E:   Print 2, "<VOUCHERNUMBER>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("V_NO"))) & "</VOUCHERNUMBER>"
  loc_176DAF0:   var_134 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Party"))), "&", "&amp;", 1, -1, 0)
  loc_176DB09:   Print 2, "<PARTYLEDGERNAME>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</PARTYLEDGERNAME>"
  loc_176DB29:   Print 2, "<FBTPAYMENTTYPE>Default</FBTPAYMENTTYPE>"
  loc_176DB34:   Print 2, "<PERSISTEDVIEW>Accounting Voucher View</PERSISTEDVIEW>"
  loc_176DB3F:   Print 2, "<AUDITED>No</AUDITED>"
  loc_176DB4A:   Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_176DB8E:   Print 2, "<EFFECTIVEDATE>" & var_90.Fields.Item("mDate").Value & "</EFFECTIVEDATE>"
  loc_176DBA9:   Print 2, "<ALTERID></ALTERID>"
  loc_176DBB4:   Print 2, "<ISCANCELLED>No</ISCANCELLED>"
  loc_176DBBF:   Print 2, "<HASCASHFLOW>No</HASCASHFLOW>"
  loc_176DBCA:   Print 2, "<ISPOSTDATED>No</ISPOSTDATED>"
  loc_176DBD5:   Print 2, "<ISINVOICE>No</ISINVOICE>"
  loc_176DBE0:   Print 2, "<ISCOSTCENTRE>No</ISCOSTCENTRE>"
  loc_176DBEB:   Print 2, "<ISDELETED>No</ISDELETED>"
  loc_176DBF6:   Print 2, "<ASORIGINAL>No</ASORIGINAL>"
  loc_176DC01:   Print 2, "<VCHISFROMSYNC>No</VCHISFROMSYNC>"
  loc_176DC0C:   Print 2, "<MASTERID></MASTERID>"
  loc_176DC17:   Print 2, "<VOUCHERKEY></VOUCHERKEY>"
  loc_176DC22:   Print 2, "<AUDITENTRIES.LIST></AUDITENTRIES.LIST>"
  loc_176DC2C:   Set var_88 = New 
  loc_176DC3C:   var_E4 = "Select L.*, m.Name, LM.Narration as NarrationNew, 0 as Amt, 1 As Lvl from Ledger L Left Join Subgroup M On L.Subcode=M.Subcode Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.Groupcode where L.Docid='"
  loc_176DC6B:   var_12C = var_E4 & Me.Recordset15.Fields.Item("DocID").Value 
  loc_176DC8B:   var_1C4 = " Union All Select L.*, m.Name, LM.Narration as NarrationNew, 0 as Amt, 2 As Lvl from Ledger L Left Join Subgroup M On L.Subcode=M.Subcode Left Join LedgerM LM on L.Docid=LM.Docid Left Join Acgroup Grp On L.groupcode=Grp.Groupcode where L.Docid='"
  loc_176DCBE:   var_200 = var_12C & "'  and L.LogSite_Code='" & CVar(MemVar_1F92078) & "' And L.AmtCr>0" & var_1C4 & var_90.Fields.Item("DocID").Value 
  loc_176DCE8:   unk_46A2B2.Execute CStr(var_200 & "'  and L.LogSite_Code='" & CVar(MemVar_1F92078) & "' And L.AmtDr>0 Order By Lvl,V_SNo"), var_294, -1
  loc_176DCF3:   Set var_88 = var_13C
  loc_176DD21:   ' Referenced from: 176E0FF
  loc_176DD30:   If Not(var_88.EOF) Then
  loc_176DD59:     Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("AmtCr")))
  loc_176DD95:     Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("AmtDr")), CSng(var_12C))
  loc_176DDD1:     Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("Amt")), CSng(var_12C))
  loc_176DDEB:     If (var_12C > 0) Then
  loc_176DE14:       Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("AmtCr")))
  loc_176DE2E:       If (var_12C > 0) Then
  loc_176DE57:         Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("Amt")))
  loc_176DE60:         var_B8 = CSng(var_12C)
  loc_176DE70:       Else
  loc_176DE96:         Proc_6_39_E7C810(var_12C, CVar(var_88.Fields.Item("AmtDr")), var_B8)
  loc_176DEB0:         If (var_12C > 0) Then
  loc_176DED2:           var_FC = CVar(var_88.Fields.Item("Amt")) 'Address
  loc_176DED9:           Proc_6_39_E7C810(var_12C, var_FC)
  loc_176DEE2:           var_C0 = CSng(var_12C)
  loc_176DEEF:         End If
  loc_176DEEF:       End If
  loc_176DEEF:     End If
  loc_176DEFA:     Proc_6_39_E7C810(var_FC, var_B8, var_C0)
  loc_176DF0D:     If (var_FC = 0) Then
  loc_176DF13:       var_B0 = "DR"
  loc_176DF21:       Proc_6_39_E7C810(var_FC, var_C0)
  loc_176DF2A:       var_AC = CSng(var_FC)
  loc_176DF33:     Else
  loc_176DF3E:       Proc_6_39_E7C810(var_FC, var_C0, var_AC)
  loc_176DF51:       If (var_FC = 0) Then
  loc_176DF57:         var_B0 = "CR"
  loc_176DF65:         Proc_6_39_E7C810(var_FC, var_B8)
  loc_176DF6E:         var_AC = CSng(var_FC)
  loc_176DF77:       Else
  loc_176DF82:         Proc_6_39_E7C810(var_FC, var_B8, var_AC)
  loc_176DF95:         Proc_6_39_E7C810(var_12C, var_C0, var_FC)
  loc_176DF9D:         var_160 = (var_13C - var_12C)
  loc_176DFA2:         var_AC = CSng(var_12C & "'  and L.LogSite_Code='")
  loc_176DFB7:         Proc_6_39_E7C810(var_FC, var_AC)
  loc_176DFCA:         If (var_FC < 0) Then
  loc_176DFD0:           var_B0 = "DR"
  loc_176DFD6:         Else
  loc_176DFE1:           Proc_6_39_E7C810(var_FC, var_AC)
  loc_176DFF4:           If (var_FC > 0) Then
  loc_176DFFA:             var_B0 = "CR"
  loc_176DFFD:           End If
  loc_176DFFD:         End If
  loc_176E011:         var_AC = CSng(Abs(var_AC))
  loc_176E017:       End If
  loc_176E017:     End If
  loc_176E062:     var_134 = Replace(Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")), var_AC), "&", "&amp;", 1, -1, 0)
  loc_176E070:     Proc_6_39_E7C810(var_12C, var_AC)
  loc_176E094:     var_160 = CVar(var_88.Fields.Item("Narration")) 'Address
  loc_176E0C0:     var_114 = Replace(Proc_6_38_E68A98(var_160, var_AC), "&", "&amp;", 1, -1, 0)
  loc_176E0D1:     Call Proc_331_8_104EAF4(Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype")), 1), CSng(var_12C), var_B0)
  loc_176E0FA:     var_88.MoveNext
  loc_176E0FF:     GoTo loc_176DD21
  loc_176E102:   End If
  loc_176E107:   Print 2, "<ATTDRECORDS.LIST></ATTDRECORDS.LIST>"
  loc_176E112:   Print 2, "<LEDGERENTRIESRECORDS.LIST></LEDGERENTRIESRECORDS.LIST>"
  loc_176E11D:   Print 2, "<LEDGERCSTENTRIESRECORDS.LIST></LEDGERCSTENTRIESRECORDS.LIST>"
  loc_176E128:   Print 2, "</VOUCHER>"
  loc_176E133:   Print 2, "</TALLYMESSAGE>"
  loc_176E143:   Me.lblStatus.Refresh
  loc_176E157:   Me.lblStatus.Visible = True
  loc_176E16D:   Me.ProgressBar1.Visible = True
  loc_176E1A4:   var_EC = "<PARTYLEDGERNAME>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("Vouchtype")), 1) & "</PARTYLEDGERNAME>" & Proc_6_38_E68A98(CVar(var_90.Fields.Item("DocID")), "Transferring Voucher ")
  loc_176E1B1:   Me.lblStatus.Caption = var_EC
  loc_176E1DE:   var_D4 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_176E1E7:   Set var_10C = Me.ProgressBar1
  loc_176E1ED:   var_10C.Value = "DocID"
  loc_176E215:   Set var_C4 = Me.Txt
  loc_176E21B:   Call 0.Method_btnStart_Click0 (1, var_10C, "Update Ledger set TImp_Dt='", var_160)
  loc_176E22C:   var_E8 = Proc_6_38_E68A98(CVar(var_10C), -1)
  loc_176E262:   var_114 = Proc_6_38_E68A98(CVar(var_90.Fields.Item("DocID")), var_13C & Proc_6_38_E68A98(CVar(var_90.Fields.Item("DocID")), "Transferring Voucher ") & "' where Docid='")
  loc_176E276:   unk_46A2B2.Execute var_A2 & var_114 & "'", , 
  loc_176E29F:   var_90.MoveNext
  loc_176E2A4:   GoTo loc_176D83F
  loc_176E2A7: End If
  loc_176E2AC: Print 2, "</REQUESTDATA>"
  loc_176E2B7: Print 2, "</IMPORTDATA>"
  loc_176E2C2: Print 2, "</BODY>"
  loc_176E2CD: Print 2, "</ENVELOPE>"
  loc_176E2D5: Close 2
  loc_176E2E3: Me.lblLastExpDate.Visible = True
  loc_176E2F7: Set var_C4 = Me.Txt
  loc_176E2FD: Call 0.Method_btnStart_Click0 (1, var_10C)
  loc_176E31F: Me.lblLastExpDate.Caption = "Last Exported Upto " & Proc_6_38_E68A98(CVar(var_10C))
  loc_176E344: Me.ProgressBar1.Visible = False
  loc_176E359: Me.lblStatus.Caption = "LedgerMaster.xml and Ledger.xml Generated Successfully"
  loc_176E373: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_176E380: Call 0.Method_arg_A4 (0)
  loc_176E385: Exit Sub
End Sub

Public Sub Proc_331_6_F941E8(arg_C, arg_10) 'F941E8
  'Data Table: 46A2A8
  loc_F94083: var_88 = arg_C
  loc_F940AD: Print 1, "<GROUP NAME=""" & var_88 & """ RESERVEDNAME=""" & var_88 & """>"
  loc_F940D1: Print 1, "<PARENT>" & arg_10 & "</PARENT>"
  loc_F940E3: Print 1, "<GRPDEBITPARENT></GRPDEBITPARENT>"
  loc_F940EE: Print 1, "<GRPCREDITPARENT></GRPCREDITPARENT>"
  loc_F940F9: Print 1, "<ISBILLWISEON>No</ISBILLWISEON>"
  loc_F94104: Print 1, "<ISCOSTCENTRESON>No</ISCOSTCENTRESON>"
  loc_F9410F: Print 1, "<ISADDABLE>No</ISADDABLE>"
  loc_F9411A: Print 1, "<ISSUBLEDGER>No</ISSUBLEDGER>"
  loc_F94125: Print 1, "<ISREVENUE>No</ISREVENUE>"
  loc_F94130: Print 1, "<AFFECTSGROSSPROFIT>No</AFFECTSGROSSPROFIT>"
  loc_F9413B: Print 1, "<ISDEEMEDPOSITIVE>No</ISDEEMEDPOSITIVE>"
  loc_F94146: Print 1, "<TRACKNEGATIVEBALANCES>No</TRACKNEGATIVEBALANCES>"
  loc_F94151: Print 1, "<ISCONDENSED>No</ISCONDENSED>"
  loc_F9415C: Print 1, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_F94167: Print 1, "<ISGROUPFORLOANRCPT>No</ISGROUPFORLOANRCPT>"
  loc_F94172: Print 1, "<ISGROUPFORLOANPYMNT>No</ISGROUPFORLOANPYMNT>"
  loc_F9417D: Print 1, "<SORTPOSITION>No</SORTPOSITION>"
  loc_F94188: Print 1, "<LANGUAGENAME.LIST>"
  loc_F94193: Print 1, "<NAME.LIST TYPE=""SString"">"
  loc_F941AC: Print 1, "<NAME>" & var_88 & "</NAME>"
  loc_F941BE: Print 1, "</NAME.LIST>"
  loc_F941C9: Print 1, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_F941D4: Print 1, "</LANGUAGENAME.LIST>"
  loc_F941DF: Print 1, "</GROUP>"
  loc_F941E5: Exit Sub
End Sub

Public Sub Proc_331_7_11B70E4(arg_C, arg_10, arg_14, arg_18, arg_1C) '11B70E4
  'Data Table: 46A2A8
  loc_11B6CA3: var_88 = arg_C
  loc_11B6CD1: Print 1, "<LEDGER NAME=""" & var_88 & """ RESERVEDNAME="""">"
  loc_11B6CE3: Print 1, "<ADDRESS.LIST TYPE=""String"">"
  loc_11B6CFC: Print 1, "<ADDRESS>" & arg_10 & "</ADDRESS>"
  loc_11B6D1C: Print 1, "<ADDRESS>" & arg_14 & "</ADDRESS>"
  loc_11B6D2E: Print 1, "</ADDRESS.LIST>"
  loc_11B6D39: Print 1, "<MAILINGNAME.LIST TYPE=""String"">"
  loc_11B6D52: Print 1, "<MAILINGNAME>" & var_88 & "</MAILINGNAME>"
  loc_11B6D64: Print 1, "</MAILINGNAME.LIST>"
  loc_11B6D7D: Print 1, "<STATENAME>" & arg_18 & "</STATENAME>"
  loc_11B6D8F: Print 1, "<SALESTAXNUMBER>05002007343</SALESTAXNUMBER>"
  loc_11B6D9A: Print 1, "<PRICELEVEL>PL</PRICELEVEL>"
  loc_11B6DB3: Print 1, "<PARENT>" & arg_1C & "</PARENT>"
  loc_11B6DC5: Print 1, "<TAXCLASSIFICATIONNAME></TAXCLASSIFICATIONNAME>"
  loc_11B6DD0: Print 1, "<TAXTYPE>Others</TAXTYPE>"
  loc_11B6DDB: Print 1, "<BILLCREDITPERIOD>5 Days</BILLCREDITPERIOD>"
  loc_11B6DE6: Print 1, "<GSTTYPE></GSTTYPE>"
  loc_11B6DF1: Print 1, "<APPROPRIATEFOR></APPROPRIATEFOR>"
  loc_11B6DFC: Print 1, "<SERVICECATEGORY></SERVICECATEGORY>"
  loc_11B6E07: Print 1, "<EXCISELEDGERCLASSIFICATION></EXCISELEDGERCLASSIFICATION>"
  loc_11B6E12: Print 1, "<EXCISEDUTYTYPE></EXCISEDUTYTYPE>"
  loc_11B6E1D: Print 1, "<EXCISENATUREOFPURCHASE></EXCISENATUREOFPURCHASE>"
  loc_11B6E28: Print 1, "<LEDGERFBTCATEGORY></LEDGERFBTCATEGORY>"
  loc_11B6E33: Print 1, "<ISBILLWISEON>Yes</ISBILLWISEON>"
  loc_11B6E3E: Print 1, "<ISCOSTCENTRESON>No</ISCOSTCENTRESON>"
  loc_11B6E49: Print 1, "<ISINTERESTON>No</ISINTERESTON>"
  loc_11B6E54: Print 1, "<ALLOWINMOBILE>No</ALLOWINMOBILE>"
  loc_11B6E5F: Print 1, "<ISCOSTTRACKINGON>No</ISCOSTTRACKINGON>"
  loc_11B6E6A: Print 1, "<ISCONDENSED>No</ISCONDENSED>"
  loc_11B6E75: Print 1, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_11B6E80: Print 1, "<FORPAYROLL>No</FORPAYROLL>"
  loc_11B6E8B: Print 1, "<INTERESTONBILLWISE>No</INTERESTONBILLWISE>"
  loc_11B6E96: Print 1, "<OVERRIDEINTEREST>No</OVERRIDEINTEREST>"
  loc_11B6EA1: Print 1, "<OVERRIDEADVINTEREST>No</OVERRIDEADVINTEREST>"
  loc_11B6EAC: Print 1, "<USEFORVAT>No</USEFORVAT>"
  loc_11B6EB7: Print 1, "<IGNORETDSEXEMPT>No</IGNORETDSEXEMPT>"
  loc_11B6EC2: Print 1, "<ISTCSAPPLICABLE>No</ISTCSAPPLICABLE>"
  loc_11B6ECD: Print 1, "<ISTDSAPPLICABLE>No</ISTDSAPPLICABLE>"
  loc_11B6ED8: Print 1, "<ISFBTAPPLICABLE>No</ISFBTAPPLICABLE>"
  loc_11B6EE3: Print 1, "<ISGSTAPPLICABLE>No</ISGSTAPPLICABLE>"
  loc_11B6EEE: Print 1, "<ISEXCISEAPPLICABLE>No</ISEXCISEAPPLICABLE>"
  loc_11B6EF9: Print 1, "<ISTDSEXPENSE>No</ISTDSEXPENSE>"
  loc_11B6F04: Print 1, "<ISEDLIAPPLICABLE>No</ISEDLIAPPLICABLE>"
  loc_11B6F0F: Print 1, "<ISRELATEDPARTY>No</ISRELATEDPARTY>"
  loc_11B6F1A: Print 1, "<USEFORESIELIGIBILITY>No</USEFORESIELIGIBILITY>"
  loc_11B6F25: Print 1, "<SHOWINPAYSLIP>No</SHOWINPAYSLIP>"
  loc_11B6F30: Print 1, "<USEFORGRATUITY>No</USEFORGRATUITY>"
  loc_11B6F3B: Print 1, "<ISTDSPROJECTED>No</ISTDSPROJECTED>"
  loc_11B6F46: Print 1, "<FORSERVICETAX>No</FORSERVICETAX>"
  loc_11B6F51: Print 1, "<ISINPUTCREDIT>No</ISINPUTCREDIT>"
  loc_11B6F5C: Print 1, "<ISEXEMPTED>No</ISEXEMPTED>"
  loc_11B6F67: Print 1, "<ISABATEMENTAPPLICABLE>No</ISABATEMENTAPPLICABLE>"
  loc_11B6F72: Print 1, "<ISSTXPARTY>No</ISSTXPARTY>"
  loc_11B6F7D: Print 1, "<ISSTXNONREALIZEDTYPE>No</ISSTXNONREALIZEDTYPE>"
  loc_11B6F88: Print 1, "<TDSDEDUCTEEISSPECIALRATE>No</TDSDEDUCTEEISSPECIALRATE>"
  loc_11B6F93: Print 1, "<AUDITED>No</AUDITED>"
  loc_11B6F9E: Print 1, "<SORTPOSITION>1000</SORTPOSITION>"
  loc_11B6FA9: Print 1, "<LANGUAGENAME.LIST>"
  loc_11B6FB4: Print 1, "<NAME.LIST TYPE=""String"">"
  loc_11B6FCD: Print 1, "<NAME>" & var_88 & "</NAME>"
  loc_11B6FDF: Print 1, "</NAME.LIST>"
  loc_11B6FEA: Print 1, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_11B6FF5: Print 1, "</LANGUAGENAME.LIST>"
  loc_11B7000: Print 1, "<SLABPERIOD.LIST>      </SLABPERIOD.LIST>"
  loc_11B700B: Print 1, "<GRATUITYPERIOD.LIST>      </GRATUITYPERIOD.LIST>"
  loc_11B7016: Print 1, "<ADDITIONALCOMPUTATIONS.LIST>      </ADDITIONALCOMPUTATIONS.LIST>"
  loc_11B7021: Print 1, "<BANKALLOCATIONS.LIST>      </BANKALLOCATIONS.LIST>"
  loc_11B702C: Print 1, "<PAYMENTDETAILS.LIST>      </PAYMENTDETAILS.LIST>"
  loc_11B7037: Print 1, "<BANKEXPORTFORMATS.LIST>      </BANKEXPORTFORMATS.LIST>"
  loc_11B7042: Print 1, "<BILLALLOCATIONS.LIST>      </BILLALLOCATIONS.LIST>"
  loc_11B704D: Print 1, "<INTERESTCOLLECTION.LIST>      </INTERESTCOLLECTION.LIST>"
  loc_11B7058: Print 1, "<LEDGERCLOSINGVALUES.LIST>      </LEDGERCLOSINGVALUES.LIST>"
  loc_11B7063: Print 1, "<LEDGERAUDITCLASS.LIST>      </LEDGERAUDITCLASS.LIST>"
  loc_11B706E: Print 1, "<AUDITENTRIES.LIST>      </AUDITENTRIES.LIST>"
  loc_11B7079: Print 1, "<TDSEXEMPTIONRULES.LIST>      </TDSEXEMPTIONRULES.LIST>"
  loc_11B7084: Print 1, "<DEDUCTINSAMEVCHRULES.LIST>      </DEDUCTINSAMEVCHRULES.LIST>"
  loc_11B708F: Print 1, "<LOWERDEDUCTION.LIST>      </LOWERDEDUCTION.LIST>"
  loc_11B709A: Print 1, "<STXABATEMENTDETAILS.LIST>      </STXABATEMENTDETAILS.LIST>"
  loc_11B70A5: Print 1, "<LEDMULTIADDRESSLIST.LIST>      </LEDMULTIADDRESSLIST.LIST>"
  loc_11B70B0: Print 1, "<STXTAXDETAILS.LIST>      </STXTAXDETAILS.LIST>"
  loc_11B70BB: Print 1, "<UDF:_UDF_788538166.LIST DESC="""" ISLIST=""YES"" TYPE=""String"">"
  loc_11B70C6: Print 1, "<UDF:_UDF_788538166 DESC="""">NKT18</UDF:_UDF_788538166>"
  loc_11B70D1: Print 1, "</UDF:_UDF_788538166.LIST>"
  loc_11B70DC: Print 1, "</LEDGER>"
  loc_11B70E2: Exit Sub
End Sub

Public Sub Proc_331_8_104EAF4(arg_C, arg_10) '104EAF4
  'Data Table: 46A2A8
  Dim var_F8 As Variant
  loc_104E8B5: var_8C = arg_18
  loc_104E8C3: Print 2, "<ALLLEDGERENTRIES.LIST>"
  loc_104E8DC: Print 2, "<NARRATION>" & arg_1C & "</NARRATION>"
  loc_104E8FC: Print 2, "<LEDGERNAME>" & arg_C & "</LEDGERNAME>"
  loc_104E90E: Print 2, "<GSTCLASS />"
  loc_104E955: Print 2, "<ISDEEMEDPOSITIVE>" & IIf((var_8C = "DR"), "Yes", "No") & "</ISDEEMEDPOSITIVE>"
  loc_104E96F: Print 2, "<REMOVEZEROENTRIES>No</REMOVEZEROENTRIES>"
  loc_104E97A: Print 2, "<ISPARTYLEDGER>Yes</ISPARTYLEDGER>"
  loc_104E9C1: Print 2, "<ISLASTDEEMEDPOSITIVE>" & IIf((var_8C = "DR"), "Yes", "No") & "</ISLASTDEEMEDPOSITIVE>"
  loc_104EA26: var_F8 = -Format(arg_10, "0.00")
  loc_104EA5C: Print 2, "<AMOUNT>" & IIf((var_8C = "DR"), IIf((var_8C = "DR"), "Yes", "No"), Format(arg_10, "0.00")) & "</AMOUNT>"
  loc_104EA7C: Print 2, "<BANKALLOCATIONS.LIST />"
  loc_104EA87: Print 2, "<BILLALLOCATIONS.LIST />"
  loc_104EA92: Print 2, "<INTERESTCOLLECTION.LIST />"
  loc_104EA9D: Print 2, "<AUDITENTRIES.LIST />"
  loc_104EAA8: Print 2, "<INVENTORYALLOCATIONS.LIST>"
  loc_104EAB3: Print 2, "</INVENTORYALLOCATIONS.LIST>"
  loc_104EABE: Print 2, "<TAXBILLALLOCATIONS.LIST />"
  loc_104EAC9: Print 2, "<TAXOBJECTALLOCATIONS.LIST />"
  loc_104EAD4: Print 2, "<TDSEXPENSEALLOCATIONS.LIST />"
  loc_104EADF: Print 2, "<VATSTATUTORYDETAILS.LIST />"
  loc_104EAEA: Print 2, "</ALLLEDGERENTRIES.LIST>"
  loc_104EAF0: Exit Sub
End Sub

Public Sub Proc_331_9_18145B8
  'Data Table: 46A2A8
  Dim var_9E As Integer
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_10C As String
  Dim var_110 As String
  Dim unk_46A2B2 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_120 As Variant
  Dim var_13C As Variant
  Dim var_150 As Variant
  Dim var_138 As String
  Dim var_130 As Variant
  Dim var_160 As Fields15
  Dim var_184 As Variant
  Dim var_1C4 As Variant
  Dim var_200 As Fields15
  Dim var_264 As Variant
  Dim var_158 As String
  Dim var_280 As String
  Dim var_27C As String
  Dim var_140 As TextBox
  Dim var_8C As Recordset15
  Dim var_288 As String
  Dim var_290 As String
  Dim var_2C4 As String
  Dim var_2DC As String
  Dim var_1B4 As Variant
  Dim var_2E8 As String
  Dim var_88 As Recordset15
  Dim var_A8 As Double
  loc_18122C6: var_9E = 0
  loc_18122CC: var_E4 = vbNullString
  loc_18122CF: On Error Goto loc_1814551
  loc_18122D5: var_B8 = "DAILY PAYMENT/CHARGES POSTING A/C"
  loc_18122E4: Me.lblStatus.Visible = False
  loc_18122FB: Me.ProgressBar1.Visible = False
  loc_1812308: Call 0.Method_arg_A4 (&HB)
  loc_1812314: Set var_E8 = Me.lblStatus
  loc_181231A: var_E8.Caption = vbNullString
  loc_1812336: var_10C = "Select Distinct Grp.groupname,(select GroupName from AcGroup where MainGrCode=substring(Grp.MainGrCode,1,len(Grp.MainGrCode)-3))  as UnderGroupName From Acgroup Grp WHERE (LOGSITE_CODE='" & MemVar_1F92078
  loc_1812346: unk_46A2B2.Execute var_10C & "' OR LOGSITE_CODE='HO') Order By Grp.groupname", var_120, -1
  loc_1812351: Set var_90 = var_E8
  loc_1812375: var_10C = "Select M.*, G.Groupname, S.Name as Statename, G.Sysgroup From Subgroup M Left Join AcGroup G On M.GroupCode=G.GroupCode Left Join City C On M.Citycode=C.Citycode Left Join State S On C.Statecode=S.code where (M.LOGSITE_CODE='" & MemVar_1F92078
  loc_1812385: unk_46A2B2.Execute var_10C & "' OR M.LOGSITE_CODE='HO') ", var_120, -1
  loc_1812390: Set var_94 = var_E8
  loc_18123BE: var_F8 = CVar(CDbl((var_90.RecordCount + var_94.RecordCount))) 'Single
  loc_18123CD: Me.ProgressBar1.Max = False
  loc_18123E1: var_E8 = Me.var_E8.App
  loc_18123FC: Open App.Path & "\LedgerMaster.xml" For Output As 1 Len = &HFF
  loc_181240F: Print 1, "<ENVELOPE>"
  loc_181241A: Print 1, "<HEADER>"
  loc_1812425: Print 1, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_1812430: Print 1, "</HEADER>"
  loc_181243B: Print 1, "<BODY>"
  loc_1812446: Print 1, "<IMPORTDATA>"
  loc_1812451: Print 1, "<REQUESTDESC>"
  loc_181245C: Print 1, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_1812467: Print 1, "<STATICVARIABLES>"
  loc_1812480: Print 1, "<SVCURRENTCOMPANY>" & MemVar_1F92130 & "</SVCURRENTCOMPANY>"
  loc_1812492: Print 1, "</STATICVARIABLES>"
  loc_181249D: Print 1, "</REQUESTDESC>"
  loc_18124A8: Print 1, "<REQUESTDATA>"
  loc_18124B3: Print 1, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_18124B9: ' Referenced from: 1812AF8
  loc_18124C8: If Not(var_90.EOF) Then
  loc_18124DA:   var_E8 = var_90.Fields
  loc_1812504:   If (Proc_6_38_E68A98(CVar(var_E8.Item("UnderGroupName")), var_E8) = "DIRECT EXPENSE") Then
  loc_1812516:     var_E8 = var_90.Fields
  loc_1812552:     var_138 = Replace(Proc_6_38_E68A98(CVar(var_E8.Item("GroupName")), var_E8), "&", "&amp;", 1, -1, 0)
  loc_181255E:     Call Proc_331_6_F941E8(var_138, "DIRECT EXPENSES")
  loc_1812577:   Else
  loc_18125B0:     If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_18125FE:       var_138 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_181260A:       Call Proc_331_6_F941E8(var_138, "INDIRECT INCOMES")
  loc_1812623:     Else
  loc_181265C:       If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_18126AA:         var_138 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_18126B6:         Call Proc_331_6_F941E8(var_138, "SUSPENSE A/C")
  loc_18126CF:       Else
  loc_1812708:         If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "PROFIT & LOSS A/C") Then
  loc_1812756:           var_138 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1812762:           Call Proc_331_6_F941E8(var_138, "SUSPENSE A/C")
  loc_181277B:         Else
  loc_18127B4:           If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "DIRECT EXPENSE") Then
  loc_1812802:             var_110 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1812808:             Call Proc_331_6_F941E8("DIRECT EXPENSES", var_138)
  loc_181281F:           Else
  loc_1812858:             If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "INDIRECT INCOME") Then
  loc_18128A6:               var_110 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_18128AC:               Call Proc_331_6_F941E8("INDIRECT INCOMES", var_138)
  loc_18128C3:             Else
  loc_18128FC:               If (Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))) = "SUSPENCE A/C") Then
  loc_181294A:                 var_110 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1812950:                 Call Proc_331_6_F941E8("SUSPENSE A/C", var_138)
  loc_1812967:               Else
  loc_18129B2:                 var_158 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1812A00:                 var_138 = Replace(Proc_6_38_E68A98(CVar(var_90.Fields.Item("UnderGroupName"))), "&", "&amp;", 1, -1, 0)
  loc_1812A09:                 Call Proc_331_6_F941E8(var_158, var_138)
  loc_1812A2D:               End If
  loc_1812A2D:             End If
  loc_1812A2D:           End If
  loc_1812A2D:         End If
  loc_1812A2D:       End If
  loc_1812A2D:     End If
  loc_1812A2D:   End If
  loc_1812A37:   Me.lblStatus.Refresh
  loc_1812A4B:   Me.lblStatus.Visible = True
  loc_1812A61:   Me.ProgressBar1.Visible = True
  loc_1812AA5:   Me.lblStatus.Caption = var_9E & Proc_6_38_E68A98(CVar(var_90.Fields.Item("GroupName")), "Transferring Group ")
  loc_1812AD2:   var_F8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_1812AE1:   Me.ProgressBar1.Value = "GroupName"
  loc_1812AF3:   var_90.MoveNext
  loc_1812AF8:   GoTo loc_18124B9
  loc_1812AFB:   ' Referenced from: 181326F
  loc_1812AFB: End If
  loc_1812B0A: If Not(var_94.EOF) Then
  loc_1812B46:   If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("GroupName"))) = "DIRECT EXPENSE") Then
  loc_1812B94:     var_280 = Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1812C0D:     var_1C4 = CVar(Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1812CA8:     var_264 = CVar(Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1812CE7:     Call Proc_331_7_11B70E4(var_280, CStr(IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1"))) = vbNullString), "No", var_1C4)), CStr(IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", "DIRECT EXPENSES")
  loc_1812D38:   Else
  loc_1812D71:     If (Proc_6_38_E68A98(CVar(var_94.Fields.Item("GroupName"))) = "INDIRECT INCOME") Then
  loc_1812DBF:       var_280 = Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1812E38:       var_1C4 = CVar(Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1812ED3:       var_264 = CVar(Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1812F12:       Call Proc_331_7_11B70E4(var_280, CStr(IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1"))) = vbNullString), "No", var_1C4)), CStr(IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", "INDIRECT INCOMES")
  loc_1812F63:     Else
  loc_1812FAE:       var_288 = Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name"))), "&", "&amp;", 1, -1, 0)
  loc_1812FC8:       var_140 = var_94.Fields.Item("Add1")
  loc_1812FD0:       var_150 = CVar(var_140) 'Address
  loc_1812FFB:       var_184 = CVar(var_94.Fields.Item("Add1")) 'Address
  loc_1813027:       var_1C4 = CVar(Replace(Proc_6_38_E68A98(var_184), "&", "&amp;", 1, -1, 0)) 'String
  loc_181302F:       var_1B4 = "No"
  loc_1813086:       var_200 = var_94.Fields
  loc_18130C2:       var_264 = CVar(Replace(Proc_6_38_E68A98(CVar(var_200.Item("Add2"))), "&", "&amp;", 1, -1, 0)) 'String
  loc_1813132:       var_280 = Replace(Proc_6_38_E68A98(CVar(var_94.Fields.Item("GroupName"))), "&", "&amp;", 1, -1, 0)
  loc_181314C:       Call Proc_331_7_11B70E4(Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add1"))), CStr(IIf((Proc_6_38_E68A98(var_150) = vbNullString), var_1B4, var_1C4)), CStr(IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("Add2"))) = vbNullString), "No", var_264)), "Uttarakhand", var_280)
  loc_18131A4:     End If
  loc_18131A4:   End If
  loc_18131AE:   Me.lblStatus.Refresh
  loc_18131C2:   Me.lblStatus.Visible = True
  loc_18131D8:   Me.ProgressBar1.Visible = True
  loc_181321C:   Me.lblStatus.Caption = "Transferring Master " & Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name")))
  loc_181323C:   var_120 = Me.ProgressBar1.Value
  loc_1813249:   var_F8 = CVar((CDbl(var_120) + CDbl(1))) 'Single
  loc_1813252:   Set var_130 = Me.ProgressBar1
  loc_1813258:   var_130.Value = "Name"
  loc_181326A:   var_94.MoveNext
  loc_181326F:   GoTo loc_1812AFB
  loc_1813272: End If
  loc_1813277: Print 1, "</TALLYMESSAGE>"
  loc_1813282: Print 1, "</REQUESTDATA>"
  loc_181328D: Print 1, "</IMPORTDATA>"
  loc_1813298: Print 1, "</BODY>"
  loc_18132A3: Print 1, "</ENVELOPE>"
  loc_18132AB: Close 1
  loc_18132BF: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_18132D3: Me.lblStatus.Visible = False
  loc_18132EA: Me.ProgressBar1.Visible = False
  loc_18132FF: Me.lblStatus.Caption = "LedgerMaster.xml Generated Successfully"
  loc_1813311: Me.lblStatus.Refresh
  loc_181332D: var_110 = "Select 1 as mType, P.FolioNoDocid as Docid, cast(ltrim(max(P.Bill_No)) as Integer) as VNo, 'Agnst. Guest Bill No. ' + ltrim(max(P.Bill_No)) as Narration, max(P.SettleDate) as VDate, 'Sales' as VouchType, cast(year(max(P.SettleDate)) as Varchar) + case when len(month(max(P.SettleDate))) <=1 then '0' + cast(month(max(P.SettleDate)) as Varchar) else cast(month(max(P.SettleDate)) as Varchar) end + case when len(day(max(P.SettleDate))) <=1 then '0' + cast(day(max(P.SettleDate)) as Varchar) else cast(day(max(P.SettleDate)) as Varchar) end as mDate, '" & Proc_6_38_E68A98(var_B8)
  loc_1813334: var_138 = "Transferring Master " & Proc_6_38_E68A98(CVar(var_94.Fields.Item("Name"))) & "' as Party from PayCharge P where P.SettleDate between '"
  loc_1813349: Call 0.Method_Proc_331_9_18145B80 (0, var_130)
  loc_1813370: Set var_13C = Me.Txt
  loc_1813376: Call 0.Method_Proc_331_9_18145B80 (1, var_140)
  loc_181338E: var_2C8 = var_138 & var_130.Text & "' and '" & var_140.Text & "' and (isnull(P.AmtDr,0)<>0 Or isnull(P.AmtCr,0)<>0) Group by P.FolioNoDocid Order By Cast(max(P.Bill_No) As Integer)"
  loc_18133C5: unk_46A2B2.Execute var_2C8, var_120, -1
  loc_18133D0: Set var_8C = Me.Txt
  loc_18133ED: If (var_8C.RecordCount = 0) Then
  loc_1813409:   MsgBox("No Records To Post", 0, var_150, var_184, var_1B4)
  loc_1813419:   Exit Sub
  loc_181341A: End If
  loc_1813438: Me.ProgressBar1.Max = CVar(CDbl(var_8C.RecordCount))
  loc_181344C: var_E8 = Me.var_E8.App
  loc_1813467: Open App.Path & "\Ledger.xml" For Output As 2 Len = &HFF
  loc_181347A: Print 2, "<ENVELOPE>"
  loc_1813485: Print 2, "<HEADER>"
  loc_1813490: Print 2, "<TALLYREQUEST>Import Data</TALLYREQUEST>"
  loc_181349B: Print 2, "</HEADER>"
  loc_18134A6: Print 2, "<BODY>"
  loc_18134B1: Print 2, "<IMPORTDATA>"
  loc_18134BC: Print 2, "<REQUESTDESC>"
  loc_18134C7: Print 2, "<REPORTNAME>Vouchers</REPORTNAME>"
  loc_18134D2: Print 2, "<STATICVARIABLES>"
  loc_18134EB: Print 2, "<SVCURRENTCOMPANY>" & MemVar_1F92130 & "</SVCURRENTCOMPANY>"
  loc_18134FD: Print 2, "</STATICVARIABLES>"
  loc_1813508: Print 2, "</REQUESTDESC>"
  loc_1813513: Print 2, "<REQUESTDATA>"
  loc_1813519: ' Referenced from: 18144A8
  loc_1813528: If Not(var_8C.EOF) Then
  loc_1813530:   Print 2, "<TALLYMESSAGE xmlns:UDF=""TallyUDF"">"
  loc_181356F:   If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mtype"))) = "1") Then
  loc_18135B0:     Print 2, "<VOUCHERTYPE NAME=""" & var_8C.Fields.Item("Vouchtype").Value & """>"
  loc_18135CB:     Print 2, "<RESERVEDNAME></RESERVEDNAME>"
  loc_18135D6:     Print 2, "<PARENT>Receipt</PARENT>"
  loc_18135E1:     Print 2, "<MAILINGNAME>"
  loc_18135EC:     Print 2, "<NUMBERINGMETHOD>Manual</NUMBERINGMETHOD>"
  loc_18135F7:     Print 2, "<EXCISEUNITNAME></EXCISEUNITNAME>"
  loc_1813602:     Print 2, "<CONTRACONTRA></CONTRACONTRA>"
  loc_181360D:     Print 2, "<PAYMENTCONTRA></PAYMENTCONTRA>"
  loc_1813618:     Print 2, "<RECEIPTCONTRA></RECEIPTCONTRA>"
  loc_1813623:     Print 2, "<JOURNALCONTRA></JOURNALCONTRA>"
  loc_181362E:     Print 2, "<CNOTECONTRA></CNOTECONTRA>"
  loc_1813639:     Print 2, "<DNOTECONTRA></DNOTECONTRA>"
  loc_1813644:     Print 2, "<SALESCONTRA></SALESCONTRA>"
  loc_181364F:     Print 2, "<PURCHASECONTRA></PURCHASECONTRA>"
  loc_181365A:     Print 2, "<CREDITCSTCTR></CREDITCSTCTR>"
  loc_1813665:     Print 2, "<DEBITCSTCTR></DEBITCSTCTR>"
  loc_1813670:     Print 2, "<PREVIOUSPURCHASE></PREVIOUSPURCHASE>"
  loc_181367B:     Print 2, "<PREVIOUSSALES></PREVIOUSSALES>"
  loc_1813686:     Print 2, "<PREVIOUSGODOWN></PREVIOUSGODOWN>"
  loc_1813691:     Print 2, "<PREVNARRATION></PREVNARRATION>"
  loc_181369C:     Print 2, "<ISDEEMEDPOSITIVE>Yes</ISDEEMEDPOSITIVE>"
  loc_18136A7:     Print 2, "<AFFECTSSTOCK>No</AFFECTSSTOCK>"
  loc_18136B2:     Print 2, "<PREVENTDUPLICATES>No</PREVENTDUPLICATES>"
  loc_18136BD:     Print 2, "<PREFILLZERO>No</PREFILLZERO>"
  loc_18136C8:     Print 2, "<PRINTAFTERSAVE>No</PRINTAFTERSAVE>"
  loc_18136D3:     Print 2, "<FORMALRECEIPT>No</FORMALRECEIPT>"
  loc_18136DE:     Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_18136E9:     Print 2, "<ASMFGJRNL>No</ASMFGJRNL>"
  loc_18136F4:     Print 2, "<EFFECTIVEDATE>No</EFFECTIVEDATE>"
  loc_18136FF:     Print 2, "<COMMONNARRATION>Yes</COMMONNARRATION>"
  loc_181370A:     Print 2, "<MULTINARRATION>Yes</MULTINARRATION>"
  loc_1813715:     Print 2, "<ISTAXINVOICE>No</ISTAXINVOICE>"
  loc_1813720:     Print 2, "<USEFORPOSINVOICE>No</USEFORPOSINVOICE>"
  loc_181372B:     Print 2, "<USEFOREXCISETRADERINVOICE>No</USEFOREXCISETRADERINVOICE>"
  loc_1813736:     Print 2, "<USEFOREXCISE>No</USEFOREXCISE>"
  loc_1813741:     Print 2, "<USEFORJOBWORK>No</USEFORJOBWORK>"
  loc_181374C:     Print 2, "<ISFORJOBWORKIN>No</ISFORJOBWORKIN>"
  loc_1813757:     Print 2, "<ALLOWCONSUMPTION>No</ALLOWCONSUMPTION>"
  loc_1813762:     Print 2, "<SORTPOSITION>No</SORTPOSITION>"
  loc_181376D:     Print 2, "<BEGINNINGNUMBER>No</BEGINNINGNUMBER>"
  loc_1813778:     Print 2, "<LANGUAGENAME.LIST>"
  loc_1813783:     Print 2, "<NAME.LIST>"
  loc_181378E:     Print 2, "<TYPE=""String"">"
  loc_18137D2:     Print 2, "<NAME>" & var_8C.Fields.Item("Vouchtype").Value & "</NAME>"
  loc_18137ED:     Print 2, "</NAME.LIST>"
  loc_18137F8:     Print 2, "<LANGUAGEID>1033</LANGUAGEID>"
  loc_1813803:     Print 2, "</LANGUAGENAME.LIST>"
  loc_181380E:     Print 2, "<PREFIXLIST.LIST></PREFIXLIST.LIST>"
  loc_1813819:     Print 2, "<SUFFIXLIST.LIST></SUFFIXLIST.LIST>"
  loc_1813824:     Print 2, "<RESTARTFROMLIST.LIST></RESTARTFROMLIST.LIST>"
  loc_181382F:     Print 2, "<VOUCHERCLASSLIST.LIST></VOUCHERCLASSLIST.LIST>"
  loc_181383A:     Print 2, "</VOUCHERTYPE>"
  loc_1813840:   End If
  loc_1813845:   Print 2, "<VOUCHER>"
  loc_1813889:   Print 2, "<DATE>" & var_8C.Fields.Item("mDate").Value & "</DATE>"
  loc_18138DD:   Print 2, "<NARRATION>" & var_8C.Fields.Item("Narration").Value & "</NARRATION>"
  loc_1813931:   Print 2, "<VOUCHERTYPENAME>" & var_8C.Fields.Item("Vouchtype").Value & "</VOUCHERTYPENAME>"
  loc_1813985:   Print 2, "<VOUCHERNUMBER>" & var_8C.Fields.Item("VNo").Value & "</VOUCHERNUMBER>"
  loc_18139AE:   Print 2, "<Reference>" & vbNullString & "</Reference>"
  loc_1813A06:   var_158 = Replace(Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Party"))), "&", "&amp;", 1, -1, 0)
  loc_1813A1F:   Print 2, "<PARTYLEDGERNAME>" & var_140.Text & "</PARTYLEDGERNAME>"
  loc_1813A3F:   Print 2, "<FBTPAYMENTTYPE>Default</FBTPAYMENTTYPE>"
  loc_1813A4A:   Print 2, "<PERSISTEDVIEW>Accounting Voucher View</PERSISTEDVIEW>"
  loc_1813A55:   Print 2, "<AUDITED>No</AUDITED>"
  loc_1813A60:   Print 2, "<ISOPTIONAL>No</ISOPTIONAL>"
  loc_1813AA4:   Print 2, "<EFFECTIVEDATE>" & var_8C.Fields.Item("mDate").Value & "</EFFECTIVEDATE>"
  loc_1813ABF:   Print 2, "<ALTERID></ALTERID>"
  loc_1813ACA:   Print 2, "<ISCANCELLED>No</ISCANCELLED>"
  loc_1813AD5:   Print 2, "<HASCASHFLOW>No</HASCASHFLOW>"
  loc_1813AE0:   Print 2, "<ISPOSTDATED>No</ISPOSTDATED>"
  loc_1813AEB:   Print 2, "<ISINVOICE>No</ISINVOICE>"
  loc_1813AF6:   Print 2, "<ISCOSTCENTRE>No</ISCOSTCENTRE>"
  loc_1813B01:   Print 2, "<ISDELETED>No</ISDELETED>"
  loc_1813B0C:   Print 2, "<ASORIGINAL>No</ASORIGINAL>"
  loc_1813B17:   Print 2, "<VCHISFROMSYNC>No</VCHISFROMSYNC>"
  loc_1813B22:   Print 2, "<MASTERID></MASTERID>"
  loc_1813B2D:   Print 2, "<VOUCHERKEY></VOUCHERKEY>"
  loc_1813B38:   Print 2, "<AUDITENTRIES.LIST />"
  loc_1813B43:   Print 2, "<INVOICEDELNOTES.LIST />"
  loc_1813B4E:   Print 2, "<INVOICEORDERLIST.LIST />"
  loc_1813B59:   Print 2, "<INVOICEINDENTLIST.LIST />"
  loc_1813B64:   Print 2, "<ATTENDANCEENTRIES.LIST />"
  loc_1813BA3:   If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mtype"))) = "1") Then
  loc_1813BC5:     var_E8 = var_8C.Fields
  loc_1813BDE:     var_10C = Proc_6_38_E68A98(CVar(var_E8.Item("DocID")), "Select L.Name as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON R.AcCode=L.SubCode where O.FolioNoDocid='", var_1C4)
  loc_1813BE2:     var_110 = -1 & var_10C
  loc_1813BF0:     var_138 = var_140.Text & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And Not (O.ModeSet='S' And O.PayCode<>'" & MemVar_1F92078
  loc_1813BFE:     var_158 = var_138 & "ROFF') " & "Union All Select L.Name as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON O.CompCode=L.SubCode where O.PayType IN ('Company','Member') And O.FolioNoDocid='"
  loc_1813C20:     var_150 = CVar(var_8C.Fields.Item("DocID")) 'Address
  loc_1813C34:     var_27C = var_200 & Proc_6_38_E68A98(var_150, var_158) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And Not (O.ModeSet='S' And O.PayCode<>'"
  loc_1813C57:     var_290 = var_27C & MemVar_1F92078 & "ROFF') " & "Union All Select '" & var_B8 & "' as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON O.CompCode=L.SubCode where O.PayType IN ('Company','Member') And O.FolioNoDocid='"
  loc_1813C69:     var_160 = var_8C.Fields
  loc_1813C8D:     var_2C4 = var_E8 & Proc_6_38_E68A98(CVar(var_160.Item("DocID")), var_290) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And (O.ModeSet='S' And O.PayCode<>'"
  loc_1813CB0:     var_2DC = var_2C4 & MemVar_1F92078 & "ROFF')" & "Union All Select '" & var_B8 & "' as Acledname,L.SubCode as Acledcode,O.Comments, O.AmtDr, O.AmtCr, 0 as Amt from PayCharge O Left Join RevMast R On O.PayCode=R.Code INNER JOIN SubGroup L ON R.AcCode=L.SubCode where O.FolioNoDocid='"
  loc_1813CD2:     var_1B4 = CVar(var_8C.Fields.Item("DocID")) 'Address
  loc_1813CE6:     var_2E8 = var_2DC & Proc_6_38_E68A98(var_1B4) & "' And (isnull(O.AmtDr,0)<>0 Or isnull(O.AmtCr,0)<>0) And (O.ModeSet='S' And O.PayCode<>'"
  loc_1813CFD:     unk_46A2B2.Execute var_2E8 & MemVar_1F92078 & "ROFF')", , 
  loc_1813D08:     Set var_88 = var_200
  loc_1813D5E:     ' Referenced from: 1814303
  loc_1813D5E:   End If
  loc_1813D6D:   If Not(var_88.EOF) Then
  loc_1813D8F:     var_120 = CVar(var_88.Fields.Item("AmtCr")) 'Address
  loc_1813D96:     Proc_6_39_E7C810(var_150)
  loc_1813DC4:     Proc_6_39_E7C810(var_1B4, CVar(var_88.Fields.Item("AmtDr")))
  loc_1813DCC:     var_1C4 = (var_150 + var_1B4)
  loc_1813DEC:     If CBool(var_1C4 <> 0) Then
  loc_1813E15:       Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1813E2F:       If (var_150 > 0) Then
  loc_1813E58:         Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtCr")))
  loc_1813E72:         If (var_150 > 0) Then
  loc_1813E9B:           Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1813EAD:           var_88.Collect = "AmtCr"
  loc_1813EBF:         Else
  loc_1813EE5:           Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtDr")))
  loc_1813EFF:           If (var_150 > 0) Then
  loc_1813F28:             Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("Amt")))
  loc_1813F3A:             var_88.Collect = "AmtDr"
  loc_1813F49:           End If
  loc_1813F49:         End If
  loc_1813F49:       End If
  loc_1813F6F:       Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtCr")), var_150)
  loc_1813F89:       If (var_150 = 0) Then
  loc_1813F8F:         var_AC = "DR"
  loc_1813FB8:         Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtDr")))
  loc_1813FC1:         var_A8 = CSng(var_150)
  loc_1813FD1:       Else
  loc_1813FF7:         Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtDr")), var_A8)
  loc_1814011:         If (var_150 = 0) Then
  loc_1814017:           var_AC = "CR"
  loc_1814040:           Proc_6_39_E7C810(var_150, CVar(var_88.Fields.Item("AmtCr")))
  loc_1814049:           var_A8 = CSng(var_150)
  loc_1814059:         Else
  loc_1814078:           var_120 = CVar(var_88.Fields.Item("AmtCr")) 'Address
  loc_181407F:           Proc_6_39_E7C810(var_150, var_120, var_A8)
  loc_18140AD:           Proc_6_39_E7C810(var_1B4, CVar(var_88.Fields.Item("AmtDr")), var_150)
  loc_18140B5:           var_1C4 = (var_150 - var_1B4)
  loc_18140BA:           var_A8 = CSng(var_1C4)
  loc_18140DA:           Proc_6_39_E7C810(var_120, var_A8)
  loc_18140ED:           If (var_120 < 0) Then
  loc_18140F3:             var_AC = "DR"
  loc_18140F9:           Else
  loc_1814104:             Proc_6_39_E7C810(var_120, var_A8)
  loc_1814117:             If (var_120 > 0) Then
  loc_181411D:               var_AC = "CR"
  loc_1814120:             End If
  loc_1814120:           End If
  loc_1814124:           var_A8 = Abs(var_A8)
  loc_1814127:         End If
  loc_1814127:       End If
  loc_1814160:       If (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("mType")), var_A8) = "2") Then
  loc_1814183:         If (InStr(1, CStr(var_A8), ".", 0) > 0) Then
  loc_18141BB:           var_184 = Mid(CVar(CStr(var_A8)), (InStr(1, CStr(var_A8), ".", 0) + 1), CVar(Len(CStr(var_A8))))
  loc_18141DF:           If (Len(CVar(var_88.Fields.Item("AmtDr"))) > 2) Then
  loc_18141F1:             var_120 = CVar((Len(CStr(var_A8)) - 1)) 'Long
  loc_1814205:             var_150 = Mid(var_A8, 1, CVar(CStr(var_A8)))
  loc_181420E:             var_A8 = CSng(var_150)
  loc_181421B:           End If
  loc_181421B:         End If
  loc_181421B:       End If
  loc_1814266:       var_158 = Replace(Proc_6_38_E68A98(CVar(var_88.Fields.Item("acledname")), var_A8), "&", "&amp;", 1, -1, 0)
  loc_1814274:       Proc_6_39_E7C810(var_150, var_A8)
  loc_1814298:       var_184 = CVar(var_88.Fields.Item("Comments")) 'Address
  loc_18142C4:       var_138 = Replace(Proc_6_38_E68A98(var_184, var_A8), "&", "&amp;", 1, -1, 0)
  loc_18142D5:       Call Proc_331_8_104EAF4(var_158, CSng(var_150))
  loc_18142FB:     End If
  loc_18142FE:     var_88.MoveNext
  loc_1814303:     GoTo loc_1813D5E
  loc_1814306:   End If
  loc_181430B:   Print 2, "<ATTDRECORDS.LIST />"
  loc_1814316:   Print 2, "<LEDGERENTRIESRECORDS.LIST />"
  loc_1814321:   Print 2, "<LEDGERCSTENTRIESRECORDS.LIST />"
  loc_181432C:   Print 2, "</VOUCHER>"
  loc_1814337:   Print 2, "</TALLYMESSAGE>"
  loc_1814347:   Me.lblStatus.Refresh
  loc_181435B:   Me.lblStatus.Visible = True
  loc_1814371:   Me.ProgressBar1.Visible = True
  loc_18143B5:   Me.lblStatus.Caption = var_138 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC)
  loc_18143E2:   var_F8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_18143EB:   Set var_130 = Me.ProgressBar1
  loc_18143F1:   var_130.Value = "DocID"
  loc_1814419:   Set var_E8 = Me.Txt
  loc_181441F:   Call 0.Method_Proc_331_9_18145B80 (1, var_130, "Update Ledger set TImp_Dt='", var_184)
  loc_1814427:   var_120 = CVar(var_130) 'Address
  loc_1814430:   var_10C = Proc_6_38_E68A98(var_120, -1)
  loc_1814466:   var_138 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), var_160 & Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC) & "' where Docid='")
  loc_181447A:   unk_46A2B2.Execute var_120 & var_138 & "'", , 
  loc_18144A3:   var_8C.MoveNext
  loc_18144A8:   GoTo loc_1813519
  loc_18144AB: End If
  loc_18144B0: Print 2, "</REQUESTDATA>"
  loc_18144BB: Print 2, "</IMPORTDATA>"
  loc_18144C6: Print 2, "</BODY>"
  loc_18144D1: Print 2, "</ENVELOPE>"
  loc_18144D9: Close 2
  loc_18144E5: Me.lblStatus.Refresh
  loc_18144F9: Me.lblStatus.Visible = True
  loc_181450F: Me.ProgressBar1.Visible = True
  loc_1814524: Me.lblStatus.Caption = "Ledger.xml Generated Successfully"
  loc_181453E: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_181454B: Call 0.Method_arg_A4 (0)
  loc_1814550: Exit Sub
  loc_1814551: ' Referenced from: 18122CF
  loc_181455B: Me.lblStatus.Refresh
  loc_181456B: Set var_E8 = Err()
  loc_1814571: Call 0.Method_arg_2C (Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC))
  loc_1814583: Me.lblStatus.Caption = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("DocID")), "Transferring Voucher ", var_AC)
  loc_18145A4: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_18145B1: Call 0.Method_arg_A4 (0)
  loc_18145B6: Exit Sub
End Sub
