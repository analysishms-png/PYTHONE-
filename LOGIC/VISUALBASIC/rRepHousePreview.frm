VERSION 5.00
Begin VB.Form rRepHousePreview
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
  Begin Frame Frame2
    Caption = "Frame1"
    BackColor = &H0&
    Left = 0
    Top = 0
    Width = 5865
    Height = 375
    TabIndex = 4
    BorderStyle = 0 'None
    Begin CommandButton BtnPrint
      Caption = "&WinPrint"
      Index = 2
      Left = 2355
      Top = 30
      Width = 1155
      Height = 330
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
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "P&review"
      Index = 0
      Left = 1185
      Top = 30
      Width = 1155
      Height = 330
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
      Style = 1
    End
    Begin CommandButton BTNEXIT
      Caption = "E&xit"
      Index = 0
      Left = 4695
      Top = 30
      Width = 1155
      Height = 330
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
      ToolTipText = "Exit"
      Style = 1
    End
    Begin CommandButton BTNRefresh
      Caption = "Para&meters"
      Left = 15
      Top = 30
      Width = 1155
      Height = 330
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
      ToolTipText = "Parameters"
      Style = 1
    End
    Begin CommandButton BtnPrint
      Caption = "&DosPrint"
      Index = 1
      Left = 3525
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
  End
  Begin TextBox Text2
    BackColor = &H8000000F&
    ForeColor = &H0&
    Left = 0
    Top = 660
    Width = 10935
    Height = 270
    TabIndex = 3
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
    Top = 390
    Width = 10935
    Height = 270
    TabIndex = 2
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
    Top = 930
    Width = 10935
    Height = 270
    TabIndex = 1
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
    Top = 1200
    Width = 10935
    Height = 270
    TabIndex = 0
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
  Begin MSHFlexGrid FGrid1
    Left = 15
    Top = 1470
    Width = 14970
    Height = 9255
    TabIndex = 10
  End
End

Attribute VB_Name = "rRepHousePreview"

Private global_60 As Integer
Private global_64 As Integer

Private Sub BTNRefresh_Click() 'F18A6C
  'Data Table: 44CC18
  Dim var_90 As TextBox
  Dim var_88 As Label
  loc_F18976: MemVar_1F92124 = Me
  loc_F18984: Set global_68 = New rRepHouse
  loc_F18997: Call rRepHouse.global_52Put(global_52)
  loc_F189A5: Call rRepHouse.global_88Put(MemVar_1F92078)
  loc_F189B3: Call rRepHouse.global_92Put(MemVar_1F923D4)
  loc_F189BE: Call 0.Method_arg_50 (var_8C)
  loc_F189CC: Call 0.Method_arg_54 (var_8C)
  loc_F189E5: Set var_88 = Me.txtSite
  loc_F189EB: Call 0.Method_BTNRefresh_Click0 (0, var_90)
  loc_F189F3: rRepHouse.txtSite.Tag = MemVar_1F92078
  loc_F18A10: Set var_88 = Me.Text3
  loc_F18A16: Call 0.Method_BTNRefresh_Click0 (0, var_90)
  loc_F18A1E: var_90.Text = MemVar_1F923D4
  loc_F18A30: Call 0.Method_arg_50 (var_8C)
  loc_F18A47: (var_8C).Caption = 
  loc_F18A65: Call 0.Method_arg_2B0 (1)
  loc_F18A6A: Exit Sub
End Sub

Private Sub btnExit_Click() 'E18C3C
  'Data Table: 44CC18
  loc_E18C31: Me.Global.Unload Me
  loc_E18C39: Exit Sub
  loc_E18C3A: Exit Sub
End Sub

Private Sub Form_Load() '11AB798
  'Data Table: 44CC18
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_8C As Variant
  loc_11AB360: On Error Goto loc_11AB790
  loc_11AB36A: Call 0.Method_arg_7C (CDbl(0))
  loc_11AB376: Call 0.Method_arg_74 (CDbl(0))
  loc_11AB383: Call 0.Method_MeC (CDbl(7550))
  loc_11AB390: Call 0.Method_Me4 (CDbl(11850))
  loc_11AB39E: Call 0.Method_arg_160 (var_88)
  loc_11AB3AC: Call 0.Method_arg_164 (var_88)
  loc_11AB3BC: Set var_88 = Me.ImgLogo
  loc_11AB3C2: MDIForm1.ImgLogo.Left = CDbl(0)
  loc_11AB3D8: Me.Text2.Left = CDbl(0)
  loc_11AB3EE: Me.Text3.Left = CDbl(0)
  loc_11AB404: Me.Text4.Left = CDbl(0)
  loc_11AB41E: Me.FGrid1.Left = CVar(CDbl(0))
  loc_11AB45C: Me.Text1.Top = (Me.Frame2.Top + Me.Frame2.Height)
  loc_11AB4A0: Me.Text2.Top = (Me.Text1.Top + Me.Text1.Height)
  loc_11AB4E4: Me.Text3.Top = (Me.Text2.Top + Me.Text2.Height)
  loc_11AB528: Me.Text4.Top = (Me.Text3.Top + Me.Text3.Height)
  loc_11AB53D: Set var_8C = Me.Text4
  loc_11AB555: var_B0 = Me.Text4.Top
  loc_11AB561: var_9C = CVar((var_B0 + var_8C.Height)) 'Single
  loc_11AB570: Me.FGrid1.Top = CVar(CDbl(0))
  loc_11AB584: Call 0.Method_Me0 (var_B0)
  loc_11AB59B: Me.Text1.Width = (var_B0 - CDbl(&H32))
  loc_11AB5A9: Call 0.Method_Me0 (var_B0)
  loc_11AB5C0: Me.Text2.Width = (var_B0 - CDbl(&H32))
  loc_11AB5CE: Call 0.Method_Me0 (var_B0)
  loc_11AB5E5: Me.Text3.Width = (var_B0 - CDbl(&H32))
  loc_11AB5F3: Call 0.Method_Me0 (var_B0)
  loc_11AB60A: Me.Text4.Width = (var_B0 - CDbl(&H32))
  loc_11AB618: MemVar_1F92124 = Me
  loc_11AB626: Set global_68 = New rRepHouse
  loc_11AB639: Call rRepHouse.global_52Put(global_52)
  loc_11AB644: var_BC = global_52
  loc_11AB64F: If (var_BC = "RoomStatus") Then
  loc_11AB658:   Call 0.Method_arg_54 ("Room Status")
  loc_11AB660: Else
  loc_11AB668:   If (var_BC = "ComplaintList") Then
  loc_11AB671:     Call 0.Method_arg_54 ("Complaint Detail")
  loc_11AB679:   Else
  loc_11AB681:     If (var_BC = "IssueRegister") Then
  loc_11AB68A:       Call 0.Method_arg_54 ("Issue Register")
  loc_11AB692:     Else
  loc_11AB69A:       If (var_BC = "StockRegister") Then
  loc_11AB6A3:         Call 0.Method_arg_54 ("Stock Register")
  loc_11AB6AB:       Else
  loc_11AB6B3:         If (var_BC = "StockSumm") Then
  loc_11AB6BC:           Call 0.Method_arg_54 ("Stock Summary")
  loc_11AB6C1:         End If
  loc_11AB6C1:       End If
  loc_11AB6C1:     End If
  loc_11AB6C1:   End If
  loc_11AB6C1: End If
  loc_11AB6CA: Call rRepHouse.global_88Put(MemVar_1F92078)
  loc_11AB6D8: Call rRepHouse.global_92Put(MemVar_1F923D4)
  loc_11AB6E3: Call 0.Method_arg_50 (var_C0)
  loc_11AB6F1: Call 0.Method_arg_54 (var_C0)
  loc_11AB70A: Set var_88 = Me.Text3
  loc_11AB710: Call 0.Method_Form_Load0 (0, var_8C)
  loc_11AB718: var_8C.Tag = MemVar_1F92078
  loc_11AB735: Set var_88 = Me.Text3
  loc_11AB73B: Call 0.Method_Form_Load0 (0, var_8C)
  loc_11AB743: var_8C.Text = MemVar_1F923D4
  loc_11AB755: Call 0.Method_arg_50 (var_C0)
  loc_11AB76C: (var_C0).Caption = 
  loc_11AB78A: Call 0.Method_arg_2B0 (1)
  loc_11AB78F: Exit Sub
  loc_11AB790: ' Referenced from: 11AB360
  loc_11AB790: Proc_6_60_E62BC4(var_AC)
  loc_11AB795: Exit Sub
End Sub

Private Sub Form_Resize() 'EB0360
  'Data Table: 44CC18
  Dim var_98 As Variant
  loc_EB02D0: On Error Resume Next
  loc_EB02DB: Call 0.Method_arg_100 (var_88)
  loc_EB02E8: var_98 = CVar((var_88 - CDbl(150))) 'Single
  loc_EB02F7: Me.FGrid1.Width = var_98
  loc_EB032B: Call 0.Method_arg_108 (var_88)
  loc_EB0340: var_98 = CVar(((var_88 - (Me.Text4.Top + Me.Text4.Height)) - CDbl(250))) 'Single
  loc_EB034F: Me.FGrid1.Height = var_98
  loc_EB035F: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E00DAC
  'Data Table: 44CC18
  loc_E00DA5: MemVar_1F921E4 = Nothing
  loc_E00DA9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'E1D420
  'Data Table: 44CC18
  loc_E1D417: Me.FGrid1.CellBackColor = &HF7F1F0
  loc_E1D41F: Exit Sub
End Sub

Private Sub BTNPRINT_Click(Index As Integer) '166A6B0
  'Data Table: 44CC18
  Dim unk_44CC3F As Connection15
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
  loc_1668F80: On Error Goto loc_166A6A8
  loc_1668F88: global_60 = &HFF
  loc_1668FA1: unk_44CC3F.Execute "Select * From FAEnviro", var_B4, -1
  loc_1668FAC: Set var_94 = var_B8
  loc_1668FC4: var_B8 = var_94.Fields
  loc_1669028: var_138 = IIf((Proc_6_38_E68A98(CVar(var_B8.Item("daterfill")), var_B8) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("daterfill")))))
  loc_1669031: MemVar_1F923C0 = CStr(var_138)
  loc_16690C5: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")), MemVar_1F923C0) = vbNullString), "Y", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("pagenofill")))))
  loc_16690CE: MemVar_1F923C4 = CStr(var_138)
  loc_1669162: var_138 = IIf((Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")), MemVar_1F923C4) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item("titlerfill")))))
  loc_166918F: var_A4 = "linefiller"
  loc_16691A3: var_BC = var_94.Fields.Item(var_A4)
  loc_16691BA: var_D4 = "linefiller"
  loc_16691E2: var_108 = "-"
  loc_16691FF: var_138 = IIf((Proc_6_38_E68A98(CVar(var_BC), CStr(var_138)) = vbNullString), "M", CVar(Proc_6_38_E68A98(CVar(var_94.Fields.Item(var_D4)))))
  loc_1669208: MemVar_1F923CC = CStr(var_138)
  loc_166923B: var_140 = CStr(Me.FGrid1.Tag)
  loc_166924C: If (var_140 = "IssueRegister") Then
  loc_1669252:   var_88 = "IssueRegister"
  loc_166925B:   global_56 = "Issue/Receive Register"
  loc_1669262: Else
  loc_166926A:   If (var_140 = "StockRegister") Then
  loc_1669270:     var_88 = "StockRegister"
  loc_1669279:     global_56 = "Stock Register"
  loc_1669280:   Else
  loc_1669288:     If (var_140 = "StockSummary") Then
  loc_166928E:       var_88 = "StockSumm"
  loc_1669297:       global_56 = "Stock Summary"
  loc_166929E:     Else
  loc_16692A6:       If (var_140 = "RoomStatus") Then
  loc_16692AC:         var_88 = "RoomStatus"
  loc_16692B5:         global_56 = "Room Summary"
  loc_16692BC:       Else
  loc_16692C4:         If (var_140 = "ComplaintList") Then
  loc_16692CA:           var_88 = "ComplaintDetail"
  loc_16692D3:           global_56 = "Complaint Detail"
  loc_16692D7:         End If
  loc_16692D7:       End If
  loc_16692D7:     End If
  loc_16692D7:   End If
  loc_16692D7: End If
  loc_16692E0: If (global_60 = 0) Then
  loc_16692E3:   Exit Sub
  loc_16692E4: End If
  loc_16692E8: Set var_B8 = Me.FGrid1
  loc_1669325: Set var_C4 = var_B8.DataSource
  loc_166932B: CreateFieldDefFile(var_C4, MemVar_1F920B4 & "\" & var_88 & ".ttx", &HFF)
  loc_1669359: var_C0 = "\" & var_88
  loc_166936D: Call 0.Method_arg_1C (MemVar_1F920B4 & var_C0 & ".RPT", var_A4, var_B8)
  loc_1669378: MemVar_1F921E4 = var_B8
  loc_1669394: Set var_B8 = Me.FGrid1
  loc_166939A: var_B4 = var_B8.DataSource
  loc_16693A5: CVarUnk
  loc_16693B3: Call 0.Method_arg_64 (var_BC, var_B4, var_A4, var_D4)
  loc_16693BB: Call 0.Method_arg_2C (var_B4, MemVar_1F923CC)
  loc_16693D4: Call 0.Method_arg_150 (global_60)
  loc_16693EA: Call 0.Method_arg_90 (var_B8, var_14C)
  loc_16693F2: Call 0.Method_arg_24 (var_8A)
  loc_16693FE: For var_150 =  To CInt(var_14C): 1 = var_150 'Integer
  loc_1669417:   Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166941F:   Call 0.Method_arg_20 (var_BC)
  loc_1669427:   Call 0.Method_arg_30 (var_C0)
  loc_166943D:   var_160 = Ucase(CVar(var_C0)) 'Variant
  loc_166946D:   If (var_160 = Ucase("Title")) Then
  loc_1669479:     Call 0.Method_arg_50 (var_C0)
  loc_166949C:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_16694A4:     Call 0.Method_arg_20 (var_BC)
  loc_16694AC:     Call 0.Method_arg_38 ("'" & var_C0 & "'")
  loc_16694C4:   Else
  loc_16694E6:     If (var_160 = Ucase("BetweenDate")) Then
  loc_16694F3:       Set var_B8 = Me.Text1
  loc_166951C:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669524:       Call 0.Method_arg_20 (var_C4)
  loc_166952C:       Call 0.Method_arg_38 ("'" & var_B8.Text & "'")
  loc_1669546:     Else
  loc_1669568:       If (var_160 = Ucase("Dater")) Then
  loc_166958C:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1669594:         Call 0.Method_arg_20 (var_BC)
  loc_166959C:         Call 0.Method_arg_38 ("'" & MemVar_1F923C0 & "'")
  loc_16695B2:       Else
  loc_16695D4:         If (var_160 = Ucase("Pager")) Then
  loc_16695DE:           var_C0 = "'" & MemVar_1F923C4
  loc_16695F8:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1669600:           Call 0.Method_arg_20 (var_BC)
  loc_1669608:           Call 0.Method_arg_38 (var_C0 & "'")
  loc_166961B:         End If
  loc_166961B:       End If
  loc_166961B:     End If
  loc_166961B:   End If
  loc_166961E: Next var_150 'Integer
  loc_1669627: Set var_B8 = Me.FGrid1
  loc_1669635: var_168 = CStr(var_B8.Tag)
  loc_1669646: If (var_168 = "RoomStatus") Then
  loc_166965A:   Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1669662:   Call 0.Method_arg_24 (var_8A)
  loc_166966E:   For var_16C =  To CInt(var_14C): 1 = var_16C 'Integer
  loc_1669687:     Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166968F:     Call 0.Method_arg_20 (var_BC)
  loc_1669697:     Call 0.Method_arg_30 (var_C0)
  loc_16696DD:     If (Ucase(CVar(var_C0)) = Ucase("ForDate")) Then
  loc_166972E:       Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669736:       Call 0.Method_arg_20 (var_C4)
  loc_166973E:       Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text1.Text), &H96) & "'"))
  loc_166975A:     End If
  loc_166975D:   Next var_16C 'Integer
  loc_1669768:   If (Index = 1) Then
  loc_1669778:     ReDim Preserve var_90(0 To 2)
  loc_16697AD:     var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_16697E5:     var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_16697FC:     Set var_B8 = Me.Text3
  loc_1669802:     var_C0 = var_B8.Text
  loc_166981D:     var_90(2) = vbNullString & var_C0 & vbNullString
  loc_166982A:   End If
  loc_166982D: Else
  loc_1669835:   If (var_168 = "ComplaintList") Then
  loc_1669849:     Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1669851:     Call 0.Method_arg_24 (var_8A)
  loc_166985D:     For var_180 =  To CInt(var_14C):   1 = var_180 'Integer
  loc_1669876:       Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166987E:       Call 0.Method_arg_20 (var_BC)
  loc_1669886:       Call 0.Method_arg_30 (var_C0)
  loc_166989C:       var_190 = Ucase(CVar(var_C0)) 'Variant
  loc_16698CC:       If (var_190 = Ucase("ForDate")) Then
  loc_166991D:         Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669925:         Call 0.Method_arg_20 (var_C4)
  loc_166992D:         Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text1.Text), &H96) & "'"))
  loc_166994C:       Else
  loc_166996E:         If (var_190 = Ucase("ForStatus")) Then
  loc_16699BF:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_16699C7:           Call 0.Method_arg_20 (var_C4)
  loc_16699CF:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_16699EB:         End If
  loc_16699EB:       End If
  loc_16699EE:     Next var_180 'Integer
  loc_16699F9:     If (Index = 1) Then
  loc_1669A09:       ReDim Preserve var_90(0 To 2)
  loc_1669A3E:       var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1669A76:       var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1669A8D:       Set var_B8 = Me.Text3
  loc_1669A93:       var_C0 = var_B8.Text
  loc_1669AAE:       var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1669ABB:     End If
  loc_1669ABE:   Else
  loc_1669AC6:     If (var_168 = "IssueRegister") Then
  loc_1669ADA:       Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1669AE2:       Call 0.Method_arg_24 (var_8A)
  loc_1669AEE:       For var_194 =  To CInt(var_14C):     1 = var_194 'Integer
  loc_1669B07:         Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1669B0F:         Call 0.Method_arg_20 (var_BC)
  loc_1669B17:         Call 0.Method_arg_30 (var_C0)
  loc_1669B2D:         var_1A4 = Ucase(CVar(var_C0)) 'Variant
  loc_1669B5D:         If (var_1A4 = Ucase("RoomNo")) Then
  loc_1669BAE:           Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669BB6:           Call 0.Method_arg_20 (var_C4)
  loc_1669BBE:           Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1669BDD:         Else
  loc_1669BFF:           If (var_1A4 = Ucase("Type")) Then
  loc_1669C50:             Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669C58:             Call 0.Method_arg_20 (var_C4)
  loc_1669C60:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1669C7C:           End If
  loc_1669C7C:         End If
  loc_1669C7F:       Next var_194 'Integer
  loc_1669C8A:       If (Index = 1) Then
  loc_1669C9A:         ReDim Preserve var_90(0 To 2)
  loc_1669CCF:         var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_1669D07:         var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_1669D1E:         Set var_B8 = Me.Text3
  loc_1669D24:         var_C0 = var_B8.Text
  loc_1669D3F:         var_90(2) = vbNullString & var_C0 & vbNullString
  loc_1669D4C:       End If
  loc_1669D4F:     Else
  loc_1669D57:       If (var_168 = "StockRegister") Then
  loc_1669D6B:         Call 0.Method_arg_90 (var_B8, var_14C)
  loc_1669D73:         Call 0.Method_arg_24 (var_8A)
  loc_1669D7F:         For var_1A8 =  To CInt(var_14C):       1 = var_1A8 'Integer
  loc_1669D98:           Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_1669DA0:           Call 0.Method_arg_20 (var_BC)
  loc_1669DA8:           Call 0.Method_arg_30 (var_C0)
  loc_1669DBE:           var_1B8 = Ucase(CVar(var_C0)) 'Variant
  loc_1669DEE:           If (var_1B8 = Ucase("ItemName")) Then
  loc_1669E3F:             Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669E47:             Call 0.Method_arg_20 (var_C4)
  loc_1669E4F:             Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_1669E6E:           Else
  loc_1669E90:             If (var_1B8 = Ucase("ForType")) Then
  loc_1669EE1:               Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669EE9:               Call 0.Method_arg_20 (var_C4)
  loc_1669EF1:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_1669F10:             Else
  loc_1669F32:               If (var_1B8 = Ucase("RoomNo")) Then
  loc_1669F83:                 Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_1669F8B:                 Call 0.Method_arg_20 (var_C4)
  loc_1669F93:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_1669FB2:               Else
  loc_1669FD4:                 If (var_1B8 = Ucase("Department")) Then
  loc_166A025:                   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A02D:                   Call 0.Method_arg_20 (var_C4)
  loc_166A035:                   Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_166A051:                 End If
  loc_166A051:               End If
  loc_166A051:             End If
  loc_166A051:           End If
  loc_166A054:         Next var_1A8 'Integer
  loc_166A05F:         If (Index = 1) Then
  loc_166A06F:           ReDim Preserve var_90(0 To 3)
  loc_166A0A4:           var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166A0DC:           var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166A114:           var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_166A12B:           Set var_B8 = Me.Text4
  loc_166A131:           var_C0 = var_B8.Text
  loc_166A14C:           var_90(3) = vbNullString & var_C0 & vbNullString
  loc_166A159:         End If
  loc_166A15C:       Else
  loc_166A164:         If (var_168 = "StockSummary") Then
  loc_166A178:           Call 0.Method_arg_90 (var_B8, var_14C)
  loc_166A180:           Call 0.Method_arg_24 (var_8A)
  loc_166A18C:           For var_1BC =  To CInt(var_14C):         1 = var_1BC 'Integer
  loc_166A1A5:             Call 0.Method_arg_90 (var_B8, CLng(var_8A))
  loc_166A1AD:             Call 0.Method_arg_20 (var_BC)
  loc_166A1B5:             Call 0.Method_arg_30 (var_C0)
  loc_166A1CB:             var_1CC = Ucase(CVar(var_C0)) 'Variant
  loc_166A1FB:             If (var_1CC = Ucase("ItemName")) Then
  loc_166A24C:               Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A254:               Call 0.Method_arg_20 (var_C4)
  loc_166A25C:               Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text2.Text), &H96) & "'"))
  loc_166A27B:             Else
  loc_166A29D:               If (var_1CC = Ucase("ForType")) Then
  loc_166A2EE:                 Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A2F6:                 Call 0.Method_arg_20 (var_C4)
  loc_166A2FE:                 Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text3.Text), &H96) & "'"))
  loc_166A31D:               Else
  loc_166A33F:                 If (var_1CC = Ucase("RoomNo")) Then
  loc_166A390:                   Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A398:                   Call 0.Method_arg_20 (var_C4)
  loc_166A3A0:                   Call 0.Method_arg_38 (CStr("'" & Left(CVar(Me.Text4.Text), &H96) & "'"))
  loc_166A3BF:                 Else
  loc_166A3E1:                   If (var_1CC = Ucase("Department")) Then
  loc_166A411:                     var_118 = "'" & Left(CVar(Me.Text4.Text), &H96) 
  loc_166A41A:                     var_128 = var_118 & "'" 
  loc_166A432:                     Call 0.Method_arg_90 (var_BC, CLng(var_8A))
  loc_166A43A:                     Call 0.Method_arg_20 (var_C4)
  loc_166A442:                     Call 0.Method_arg_38 (CStr(var_128))
  loc_166A45E:                   End If
  loc_166A45E:                 End If
  loc_166A45E:               End If
  loc_166A45E:             End If
  loc_166A461:           Next var_1BC 'Integer
  loc_166A46C:           If (Index = 1) Then
  loc_166A47C:             ReDim Preserve var_90(0 To 3)
  loc_166A4B1:             var_90(0) = vbNullString & Me.Text1.Text & vbNullString
  loc_166A4E9:             var_90(1) = vbNullString & Me.Text2.Text & vbNullString
  loc_166A521:             var_90(2) = vbNullString & Me.Text3.Text & vbNullString
  loc_166A559:             var_90(3) = vbNullString & Me.Text4.Text & vbNullString
  loc_166A566:           End If
  loc_166A566:         End If
  loc_166A566:       End If
  loc_166A566:     End If
  loc_166A566:   End If
  loc_166A566: End If
  loc_166A56C: If (Index = 1) Then
  loc_166A590:   MsgBox("Please set 80 col. in your Printer & put it on.", &H40, "Paper Setting", var_118, var_128)
  loc_166A5AA:   var_B4 = Me.FGrid1.Tag
  loc_166A5C3:   If (CStr(var_B4) = "IssueRegister") Then
  loc_166A5D2:     var_13C = 0
  loc_166A5DB:     var_C0 = "C"
  loc_166A5F6:     Proc_34_0_14D85A0(var_B4, Me.FGrid1, global_56)
  loc_166A60F:   Else
  loc_166A61B:     var_13C = 0
  loc_166A63F:     Proc_34_0_14D85A0(var_B4, Me.FGrid1, global_56, var_90, "N")
  loc_166A655:   End If
  loc_166A658: Else
  loc_166A674:   Set var_B8 = MemVar_1F921E4 
  loc_166A680:   Proc_6_99_1483714(var_B8, Index, global_56, &HFF, Nothing)
  loc_166A68B:   MemVar_1F921E4 = var_B8
  loc_166A696: End If
  loc_166A69B: global_64 = 0
  loc_166A6A3: MemVar_1F921E4 = Nothing
  loc_166A6A7: Exit Sub
  loc_166A6A8: ' Referenced from: 1668F80
  loc_166A6A8: Proc_6_60_E62BC4(global_64, var_13C, var_90)
  loc_166A6AD: Exit Sub
End Sub

Public Function global_52Get() '44D6A4
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '44D6B3
  global_52 = Value
End Sub

Public Sub RetBack(mParamForm) 'F301AC
  'Data Table: 44CC18
  loc_F3009B: On Error Goto loc_F301A4
  loc_F300A4: var_8C = global_52
  loc_F300AF: If (var_8C = "RoomStatus") Then
  loc_F300BF:   Set var_90 = mParamForm 
  loc_F300C6:   Call RoomStatus(var_90, 0, 0)
  loc_F300D1:   Set var_88 = var_90
  loc_F300DA: Else
  loc_F300E2:   If (var_8C = "ComplaintList") Then
  loc_F300F2:     Set var_90 = var_88 
  loc_F300F9:     Call ComplaintList(var_90, 0, 0)
  loc_F30104:     Set var_88 = var_90
  loc_F3010D:   Else
  loc_F30115:     If (var_8C = "IssueRegister") Then
  loc_F30125:       Set var_90 = var_88 
  loc_F3012C:       Call IssueRegister(var_90, 0, 0)
  loc_F30137:       Set var_88 = var_90
  loc_F30140:     Else
  loc_F30148:       If (var_8C = "StockRegister") Then
  loc_F30158:         Set var_90 = var_88 
  loc_F3015F:         Call StockRegister(var_90, 0, 0)
  loc_F3016A:         Set var_88 = var_90
  loc_F30173:       Else
  loc_F3017B:         If (var_8C = "StockSumm") Then
  loc_F3018B:           Set var_90 = var_88 
  loc_F30192:           Call StockSumm(var_90, 0, 0)
  loc_F3019D:           Set var_88 = var_90
  loc_F301A3:         End If
  loc_F301A3:       End If
  loc_F301A3:     End If
  loc_F301A3:   End If
  loc_F301A3: End If
  loc_F301A3: Exit Sub
  loc_F301A4: ' Referenced from: F3009B
  loc_F301A4: Proc_6_60_E62BC4()
  loc_F301A9: Exit Sub
End Sub

Public Sub RoomStatus(formName, FRow, Fcol) '1739E88
  'Data Table: 44CC18
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As Variant
  Dim var_104 As String
  Dim var_8C As Recordset15
  Dim var_10C As Variant
  Dim var_112 As Integer
  Dim var_154 As Variant
  Dim var_C0 As Variant
  Dim var_120 As Variant
  Dim var_134 As Variant
  Dim var_9A As Integer
  Dim var_118 As Recordset15
  Dim var_11C As Variant
  Dim var_124 As Variant
  Dim var_168 As Variant
  Dim var_16C As Field20
  Dim var_144 As Variant
  Dim var_1AC As Variant
  Dim var_1CC As Variant
  Dim var_21C As Variant
  Dim var_26C As Variant
  Dim var_2BC As Variant
  Dim var_30C As Variant
  Dim var_35C As Variant
  Dim var_3AC As Variant
  Dim var_3DC As Variant
  Dim unk_44CC3F As Connection15
  Dim var_470 As Variant
  Dim var_474 As Variant
  Dim var_488 As Field20
  Dim var_A0 As Recordset15
  Dim var_4BC As Recordset15
  Dim var_4C0 As Recordset15
  Dim var_19C As Variant
  Dim var_23C As Variant
  Dim var_2DC As Variant
  Dim var_4C4 As Recordset15
  Dim var_32C As Variant
  Dim var_88 As Recordset15
  Dim var_4D0 As MSHFlexGrid
  loc_1738256: Call 0.Method_arg_54 ("Room Status")
  loc_173826E: var_F0 = Me.FGrid
  loc_1738288: Set var_10C = 0(1 & CStr(var_F0.TextMatrix))
  loc_173828E: var_F0.TextBox.Text = "For Date : "
  loc_17382B7: var_F0 = Me.FGrid
  loc_17382D1: Set var_10C = 3(1 & CStr(var_F0.TextMatrix))
  loc_17382D7: var_F0.TextBox.Text = "Occupancy Status :"
  loc_17382FA: Call Proc_46_15_FC1E4C(New)
  loc_1738302: Set var_88 = var_10C
  loc_173831B: Me.Connection15.Execute "SELECT RoomMast.Code AS RoomNo,RoomMast.RoomStat AS Status, Depart.Name AS MaidStation FROM RoomMast LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code WHERE RoomMast.Type='RO' ORDER By Depart.Name,RoomMast.Code", var_F0, -1
  loc_1738326: Set var_8C = var_10C
  loc_1738343: If (var_8C.RecordCount > 0) Then
  loc_1738349:   var_8C.MoveFirst
  loc_173834E:   ' Referenced from: 17393EE
  loc_173835D:   If Not(var_8C.EOF) Then
  loc_1738363:     Set var_118 = var_88 
  loc_173836A:     var_B0 = "MaidStation"
  loc_173839C:     var_C0 = "MaidStation"
  loc_17383EF:     If CBool(CVar(var_98) <> IIf(IsNull(CVar(var_8C.Fields.Item(var_B0))), "None", CVar(var_8C.Fields.Item(var_C0)))) Then
  loc_17383F4:       var_9A = 0
  loc_1738402:       var_118.AddNew var_B0, var_C0
  loc_173842C:       var_118.Fields.Item("MLine").Value = "GF"
  loc_173845D:       var_118.Fields.Item("SNo").Value = vbNullString
  loc_173848E:       var_118.Fields.Item("Status").Value = "Maid Station:"
  loc_17384DD:       var_118.Fields.Item("OccStatus").Value = CVar(var_8C.Fields.Item("MaidStation"))
  loc_1738579:       var_118.Fields.Item("MaidStation").Value = IIf(IsNull(CVar(var_8C.Fields.Item("MaidStation"))), "None", CVar(var_8C.Fields.Item("MaidStation")))
  loc_1738596:       var_C0 = "*"
  loc_173859F:       var_B0 = "Mark"
  loc_17385BB:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_17385D2:       var_118.Update var_B0, var_C0
  loc_17385E2:       var_118.AddNew var_B0, var_C0
  loc_173860C:       var_118.Fields.Item("MLine").Value = vbNullString
  loc_1738647:       var_118.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_173869C:       var_118.Fields.Item("RoomNo").Value = CVar(var_8C.Fields.Item("RoomNo"))
  loc_17386D5:       var_112 = IsNull(CVar(var_8C.Fields.Item("MaidStation")))
  loc_17386F7:       var_134 = CVar(var_8C.Fields.Item("MaidStation")) 'Address
  loc_1738738:       var_118.Fields.Item("MaidStation").Value = IIf(var_112, "None", var_134)
  loc_1738795:       If (Trim(CVar(var_8C.Fields.Item("Status"))) = "D") Then
  loc_17387BD:         var_118.Fields.Item("Status").Value = "Dirty"
  loc_17387CC:       Else
  loc_17387F1:         var_118.Fields.Item("Status").Value = "Clean"
  loc_17387FD:       End If
  loc_1738833:       VarLateMemCallLdRfVar
  loc_173883E:       Proc_6_7_F25D88(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_46C, -1, var_470)
  loc_1738875:       var_19C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_173889A:       var_21C = Me.FGrid
  loc_173889F:       VarLateMemCallLdRfVar
  loc_17388AA:       Proc_6_7_F25D88(var_23C, var_21C, 1, 0, var_474 & var_134 & " and  ChkOutDate IS NULL) AND RoomNo='" & var_19C & "' OR (CHKINDATE<=", 0)
  loc_17388D4:       VarLateMemCallLdRfVar
  loc_17388DF:       Proc_6_7_F25D88(var_2DC, Me.FGrid, 1, 0, var_488 & var_23C & " and  ChkOutDate >")
  loc_1738906:       var_120 = Me.Recordset15.Fields
  loc_1738940:       VarLateMemCallLdRfVar
  loc_173894B:       Proc_6_7_F25D88(var_3CC, Me.FGrid, 1, 0, var_498 & var_2DC & ") AND RoomNo='" & var_120.Item("RoomNo").Value & "' OR (CHKINDATE=")
  loc_17389A1:       unk_44CC3F.Execute CStr(var_112 & var_3CC & " and  ChkOutDate is null) AND RoomNo='" & Me.Recordset15.Fields.Item("RoomNo").Value & "'"), var_112, var_9A
  loc_17389A9:       var_112 = var_470.Fields
  loc_17389B1:        = var_474.Item()
  loc_17389B9:        = var_488.Value
  loc_1738A22:       If (var_498 > 0) Then
  loc_1738A4A:         var_118.Fields.Item("OccStatus").Value = "Occupied"
  loc_1738A59:       Else
  loc_1738A7E:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_1738A8A:       End If
  loc_1738AE8:       VarLateMemCallLdRfVar
  loc_1738AF3:       Proc_6_7_F25D88(var_19C, Me.FGrid, 1, 0)
  loc_1738AFB:       var_1AC = "SELECT RoomCode,Reasons FROM RoomBlockOut WHERE  RoomCode='" & var_8C.Fields.Item("RoomNo").Value & "' AND " & var_19C 
  loc_1738B12:       Me.Connection15.Execute CStr(var_1AC & " BETWEEN FromDate AND ToDate"), var_21C, -1
  loc_1738B1D:       Set var_A0 = var_120
  loc_1738B55:       If (var_A0.RecordCount > 0) Then
  loc_1738B7D:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_1738BAE:         var_118.Fields.Item("Status").Value = "Out of Order"
  loc_1738C12:         var_118.Fields.Item("Remark").Value = StrConv(CVar(var_A0.Fields.Item("Reasons")), 3, 0)
  loc_1738C2A:       Else
  loc_1738C4F:         var_118.Fields.Item("Remark").Value = vbNullString
  loc_1738C5B:       End If
  loc_1738C5B:       var_C0 = "*"
  loc_1738C64:       var_B0 = "Mark"
  loc_1738C80:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_1738C8F:     Else
  loc_1738C95:       var_9A = (var_9A + 1)
  loc_1738CA3:       var_118.AddNew var_B0, var_C0
  loc_1738CCD:       var_118.Fields.Item("MLine").Value = vbNullString
  loc_1738D08:       var_118.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_1738D5D:       var_118.Fields.Item("RoomNo").Value = CVar(var_8C.Fields.Item("RoomNo"))
  loc_1738D96:       var_112 = IsNull(CVar(var_8C.Fields.Item("MaidStation")))
  loc_1738DB8:       var_134 = CVar(var_8C.Fields.Item("MaidStation")) 'Address
  loc_1738DF9:       var_118.Fields.Item("MaidStation").Value = IIf(var_112, "None", var_134)
  loc_1738E56:       If (Trim(CVar(var_8C.Fields.Item("Status"))) = "D") Then
  loc_1738E7E:         var_118.Fields.Item("Status").Value = "Dirty"
  loc_1738E8D:       Else
  loc_1738EB2:         var_118.Fields.Item("Status").Value = "Clean"
  loc_1738EBE:       End If
  loc_1738EF4:       VarLateMemCallLdRfVar
  loc_1738EFF:       Proc_6_7_F25D88(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_46C, -1, var_470)
  loc_1738F36:       var_19C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1738F5B:       var_21C = Me.FGrid
  loc_1738F60:       VarLateMemCallLdRfVar
  loc_1738F6B:       Proc_6_7_F25D88(var_23C, var_21C, 1, 0, var_474 & var_134 & " and  ChkOutDate IS NULL) AND RoomNo='" & var_19C & "' OR (CHKINDATE<=", 0)
  loc_1738F7C:       var_26C = var_488 & var_23C & " and  ChkOutDate >" 
  loc_1738F90:       var_2BC = Me.FGrid
  loc_1738F95:       VarLateMemCallLdRfVar
  loc_1738FA0:       Proc_6_7_F25D88(var_2DC, var_2BC, 1, 0, var_26C)
  loc_1738FB1:       var_30C = var_498 & var_2DC & ") AND RoomNo='" 
  loc_1738FD7:       var_32C = Me.Recordset15.Fields.Item("RoomNo").Value
  loc_1738FFC:       var_3AC = Me.FGrid
  loc_1739001:       VarLateMemCallLdRfVar
  loc_173900C:       Proc_6_7_F25D88(var_3CC, var_3AC, 1, 0)
  loc_1739033:       var_168 = Me.Recordset15.Fields
  loc_173903B:       var_16C = var_168.Item("RoomNo")
  loc_1739058:       var_104 = CStr(var_30C & var_32C & "' OR (CHKINDATE=" & var_3CC & " and  ChkOutDate is null) AND RoomNo='" & var_16C.Value & "'")
  loc_1739062:       unk_44CC3F.Execute var_104, var_112, var_9A
  loc_173906A:       var_120 = var_470.Fields
  loc_1739072:        = var_474.Item()
  loc_173907A:        = var_488.Value
  loc_17390E3:       If (var_498 > 0) Then
  loc_173910B:         var_118.Fields.Item("OccStatus").Value = "Occupied"
  loc_173911A:       Else
  loc_173913F:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_173914B:       End If
  loc_17391A9:       VarLateMemCallLdRfVar
  loc_17391B4:       Proc_6_7_F25D88(var_19C, Me.FGrid, 1, 0)
  loc_17391BC:       var_1AC = "SELECT RoomCode,Reasons FROM RoomBlockOut WHERE  RoomCode='" & var_8C.Fields.Item("RoomNo").Value & "' AND " & var_19C 
  loc_17391C5:       var_1CC = var_1AC & " BETWEEN FromDate AND ToDate" 
  loc_17391D3:       Me.Connection15.Execute CStr(var_1CC), var_21C, -1
  loc_17391DE:       Set var_A0 = var_120
  loc_1739216:       If (var_A0.RecordCount > 0) Then
  loc_173923E:         var_118.Fields.Item("OccStatus").Value = "Vacant"
  loc_173926F:         var_118.Fields.Item("Status").Value = "Out of Order"
  loc_17392D3:         var_118.Fields.Item("Remark").Value = StrConv(CVar(var_A0.Fields.Item("Reasons")), 3, 0)
  loc_17392EB:       Else
  loc_1739310:         var_118.Fields.Item("Remark").Value = vbNullString
  loc_173931C:       End If
  loc_173931C:       var_C0 = "*"
  loc_1739325:       var_B0 = "Mark"
  loc_1739341:       var_118.Fields.Item(var_B0).Value = var_C0
  loc_173934D:     End If
  loc_1739358:     var_118.Update var_B0, var_C0
  loc_173935F:     Set var_118 = Nothing 
  loc_1739391:     var_C0 = "MaidStation"
  loc_17393A5:     var_124 = var_8C.Fields.Item(var_C0)
  loc_17393CF:     var_98 = CStr(IIf(IsNull(CVar(var_8C.Fields.Item("MaidStation"))), "None", CVar(var_124)))
  loc_17393E9:     var_8C.MoveNext
  loc_17393EE:     GoTo loc_173834E
  loc_17393F1:   End If
  loc_17393F1: End If
  loc_17393F1: var_B0 = 3
  loc_17393F8: var_D0 = 1
  loc_173941D: If CBool(Me.FGrid.TextMatrix <> "ALL") Then
  loc_1739420:   var_154 = "OccStatus= '"
  loc_1739425:   var_B0 = 3
  loc_1739435:   var_F0 = Me.FGrid
  loc_1739442:   var_134 = 1 & var_F0.TextMatrix 
  loc_173944B:   var_144 = var_134 & "' or MLine = 'GF' " 
  loc_1739453:   var_F0.Recordset15.Filter = var_144
  loc_1739463: End If
  loc_1739466: Set var_4BC = var_88 
  loc_1739475: var_4BC.AddNew var_B0, var_C0
  loc_1739485: var_4BC.Update var_B0, var_C0
  loc_173948C: Set var_4BC = Nothing 
  loc_1739493: Set var_4C0 = var_88 
  loc_17394A2: var_4C0.AddNew var_B0, var_C0
  loc_17394CC: var_4C0.Fields.Item("mLine").Value = "GF"
  loc_17394E1: var_B0 = "RoomNo"
  loc_17394F5: var_11C = var_4C0.Fields.Item(var_B0)
  loc_17394FD: var_11C.Value = "Vacant"
  loc_173950F: var_C0 = 0
  loc_173952E: unk_44CC3F.Execute "Select Count(*) from roommast where Type='RO' and InclCount='Y'", var_F0, -1
  loc_1739536: var_10C = var_10C.Fields
  loc_173953E: var_C0 = var_11C.Item(var_11C)
  loc_1739546: var_120 = var_120.Value
  loc_1739584: VarLateMemCallLdRfVar
  loc_173958F: Proc_6_7_F25D88(var_144, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_3AC, -1, var_124)
  loc_17395B9: VarLateMemCallLdRfVar
  loc_17395C4: Proc_6_7_F25D88(var_21C, Me.FGrid, 1, 0, var_168 & var_144 & " and  ChkOutDate IS NULL) OR (CHKINDATE<=", 0)
  loc_17395EE: VarLateMemCallLdRfVar
  loc_17395F9: Proc_6_7_F25D88(var_2BC, Me.FGrid, 1, 0, var_16C & var_21C & " and  ChkOutDate >")
  loc_1739623: VarLateMemCallLdRfVar
  loc_173962E: Proc_6_7_F25D88(var_32C, Me.FGrid, 1, 0, var_3BC & var_2BC & ") OR (CHKINDATE=")
  loc_173963F: var_35C = var_3CC & var_32C & " and  ChkOutDate is null) " 
  loc_173964D: Me.Connection15.Execute CStr(var_35C), var_3CC, var_B0
  loc_1739655: var_154 = var_124.Fields
  loc_173965D:  = var_168.Item()
  loc_1739665:  = var_16C.Value
  loc_173966D: var_3DC = ( - var_3BC)
  loc_1739691: var_4C0.Fields.Item("Status").Value = var_30C & var_32C & "' OR (CHKINDATE=" & var_3CC
  loc_17396DF: var_C0 = "*"
  loc_17396E8: var_B0 = "Mark"
  loc_1739704: var_4C0.Fields.Item(var_B0).Value = var_C0
  loc_173971B: var_4C0.Update var_B0, var_C0
  loc_1739722: Set var_4C0 = Nothing 
  loc_1739729: Set var_4C4 = var_88 
  loc_1739738: var_4C4.AddNew var_B0, var_C0
  loc_1739762: var_4C4.Fields.Item("mLine").Value = "GF"
  loc_1739783: var_10C = var_4C4.Fields
  loc_173978B: var_11C = var_10C.Item("RoomNo")
  loc_1739793: var_11C.Value = "Occupied"
  loc_17397D2: VarLateMemCallLdRfVar
  loc_17397DD: Proc_6_7_F25D88(var_134, Me.FGrid, 1, 0, "SELECT Count(*) FROM RoomOcc WHERE Type Not IN ('O','C')  AND (CHKINDATE<", var_35C)
  loc_17397E5: var_144 = -1 & var_134 
  loc_1739807: VarLateMemCallLdRfVar
  loc_1739812: Proc_6_7_F25D88(var_1CC, Me.FGrid, 1, 0, var_144 & " and  ChkOutDate IS NULL)  OR (CHKINDATE<=")
  loc_173983C: VarLateMemCallLdRfVar
  loc_1739847: Proc_6_7_F25D88(var_26C, Me.FGrid, 1, 0)
  loc_1739871: VarLateMemCallLdRfVar
  loc_173987C: Proc_6_7_F25D88(var_30C, Me.FGrid, 1, 0)
  loc_173989B: Me.Connection15.Execute CStr(var_10C & var_1CC & " and  ChkOutDate >" & var_26C & ") OR (CHKINDATE=" & var_30C & " and  ChkOutDate is null) "), var_11C, 0
  loc_17398AB:  = var_11C.Item()
  loc_17398D7: var_4C4.Fields.Item("Status").Value = CVar(var_10C.Fields)
  loc_1739919: var_C0 = "*"
  loc_1739922: var_B0 = "Mark"
  loc_173993E: var_4C4.Fields.Item(var_B0).Value = var_C0
  loc_1739955: var_4C4.Update var_B0, var_C0
  loc_173995C: Set var_4C4 = Nothing 
  loc_1739974: If (var_88.RecordCount > 0) Then
  loc_173997D:   CVarUnk
  loc_1739982:   VerifyVarObj
  loc_1739988:   Set var_10C = Me.FGrid1
  loc_173998E:   LateIdStAd
  loc_17399BE:   Proc_96_13_FACD34(Me.FGrid1, 0, 0)
  loc_17399C9: End If
  loc_17399CD: Set var_4D0 = Me.FGrid1
  loc_17399D9: var_4D0.Tag = "RoomStatus"
  loc_17399EA: var_4D0.Cols = 8
  loc_17399EF: var_B0 = 0
  loc_17399F8: var_D0 = 0
  loc_1739A01: var_154 = "mLine"
  loc_1739A0A: LateIdCallSt
  loc_1739A12: var_B0 = 0
  loc_1739A1B: var_D0 = 0
  loc_1739A27: LateIdCallSt
  loc_1739A2F: var_B0 = 0
  loc_1739A38: var_D0 = 1
  loc_1739A41: var_154 = "SNo."
  loc_1739A4A: LateIdCallSt
  loc_1739A52: var_B0 = 1
  loc_1739A5B: var_D0 = 0
  loc_1739A67: LateIdCallSt
  loc_1739A6F: var_B0 = 0
  loc_1739A78: var_D0 = 2
  loc_1739A81: var_154 = "Room No"
  loc_1739A8A: LateIdCallSt
  loc_1739A92: var_B0 = 2
  loc_1739AA1: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739AA8: LateIdCallSt
  loc_1739AB0: var_B0 = 2
  loc_1739ABF: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739AC6: LateIdCallSt
  loc_1739ACE: var_B0 = 2
  loc_1739AD7: var_D0 = &H578
  loc_1739AE3: LateIdCallSt
  loc_1739AEB: var_B0 = 0
  loc_1739AF4: var_D0 = 3
  loc_1739AFD: var_154 = "Status"
  loc_1739B06: LateIdCallSt
  loc_1739B0E: var_B0 = 3
  loc_1739B1D: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739B24: LateIdCallSt
  loc_1739B2C: var_B0 = 3
  loc_1739B3B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739B42: LateIdCallSt
  loc_1739B4A: var_B0 = 3
  loc_1739B53: var_D0 = &H708
  loc_1739B5F: LateIdCallSt
  loc_1739B67: var_B0 = 0
  loc_1739B70: var_D0 = 4
  loc_1739B79: var_154 = "Occupancy Status"
  loc_1739B82: LateIdCallSt
  loc_1739B8A: var_B0 = 4
  loc_1739B99: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739BA0: LateIdCallSt
  loc_1739BA8: var_B0 = 4
  loc_1739BB7: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739BBE: LateIdCallSt
  loc_1739BC6: var_B0 = 4
  loc_1739BCF: var_D0 = &H9C4
  loc_1739BDB: LateIdCallSt
  loc_1739BE3: var_B0 = 0
  loc_1739BEC: var_D0 = 5
  loc_1739BF5: var_154 = "Remark"
  loc_1739BFE: LateIdCallSt
  loc_1739C06: var_B0 = 5
  loc_1739C15: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739C1C: LateIdCallSt
  loc_1739C24: var_B0 = 5
  loc_1739C33: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739C3A: LateIdCallSt
  loc_1739C42: var_B0 = 5
  loc_1739C4B: var_D0 = &HC80
  loc_1739C57: LateIdCallSt
  loc_1739C5F: var_B0 = 0
  loc_1739C68: var_D0 = 6
  loc_1739C71: var_154 = "MaidStation"
  loc_1739C7A: LateIdCallSt
  loc_1739C82: var_B0 = 6
  loc_1739C91: var_D0 = CVar(CInt(1)) 'Integer
  loc_1739C98: LateIdCallSt
  loc_1739CA6: var_B0 = CVar(CInt(1)) 'Integer
  loc_1739CAD: LateIdCallSt
  loc_1739CB5: var_B0 = 6
  loc_1739CBE: var_D0 = 0
  loc_1739CCA: LateIdCallSt
  loc_1739CD2: var_B0 = 0
  loc_1739CDB: var_D0 = 7
  loc_1739CE4: var_154 = "MARK"
  loc_1739CED: LateIdCallSt
  loc_1739CF5: var_B0 = 7
  loc_1739CFE: var_D0 = 0
  loc_1739D0A: LateIdCallSt
  loc_1739D14: Set var_4D0 = Nothing 
  loc_1739D2C: If (var_8C.RecordCount <= 0) Then
  loc_1739D34:   global_60 = 0
  loc_1739D37: End If
  loc_1739D3B: Set var_10C = Me.FGrid1
  loc_1739D6B: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1739D6E:   var_B0 = vbNullString
  loc_1739D78:   Set var_10C = Me.FGrid1
  loc_1739D89: End If
  loc_1739DC0: var_B0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1739DE0: Me.FGrid1.Row = CVar(CLng(IIf(var_B0, FRow, 1)))
  loc_1739E2E: var_B0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_1739E4E: Me.FGrid1.Col = CVar(CLng(IIf(var_B0, Fcol, 1)))
  loc_1739E6A: Set var_88 = Nothing
  loc_1739E72: Set var_8C = Nothing
  loc_1739E7A: Set var_94 = Nothing
  loc_1739E82: Set var_A0 = Nothing
  loc_1739E85: Exit Sub
End Sub

Public Sub ComplaintList(formName, FRow, Fcol) '150CBB4
  'Data Table: 44CC18
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim var_BC As Variant
  Dim var_108 As Variant
  Dim var_138 As String
  Dim unk_44CC3F As Connection15
  Dim var_8C As Recordset15
  Dim var_9A As Integer
  Dim var_154 As Recordset15
  Dim var_164 As Recordset15
  Dim var_170 As MSHFlexGrid
  loc_150BCCE: Call 0.Method_arg_54 ("Complaint Detail")
  loc_150BCE6: var_EC = Me.FGrid
  loc_150BD00: Set var_108 = 0(1 & CStr(var_EC.TextMatrix))
  loc_150BD06: var_EC.TextBox.Text = "Up To Date : "
  loc_150BD2F: var_EC = Me.FGrid
  loc_150BD4F: var_EC.TextBox.Text = "For Status : "
  loc_150BD72: Call Proc_46_16_FC261C(New)
  loc_150BD7A: Set var_88 = 2(1 & CStr(var_EC.TextMatrix))
  loc_150BD7D: var_AC = 1
  loc_150BDA6: If (Me.Check1.Value = 0) Then
  loc_150BDCF:   var_BC = vbNullString
  loc_150BDE0:   Set var_108 = Me.Text3
  loc_150BDE6:   Me.Text3.Text = CStr("Category : " & Left(Me.FormulaString1, &H73) & var_BC)
  loc_150BE1C:   var_90 = CStr(CVar(var_90 & " Where CC.Code In (") & Me.GridString1 & ") ")
  loc_150BE2D: Else
  loc_150BE34:   Set var_108 = Me.Text3
  loc_150BE3A:   var_108.Text = "Category :   All"
  loc_150BE42: End If
  loc_150BE42: var_AC = 2
  loc_150BE49: var_CC = 1
  loc_150BE6E: If CBool(Me.FGrid.TextMatrix <> "ALL") Then
  loc_150BE78:   var_FC = CVar(var_90 & " And C.Status='") 'String
  loc_150BE7B:   var_AC = 2
  loc_150BE82:   var_CC = 1
  loc_150BE8B:   var_EC = Me.FGrid
  loc_150BEA6:   var_90 = CStr(var_CC & var_EC.TextMatrix & "'")
  loc_150BECA:   var_100 = "SELECT C.Code AS Scode,C.CDate AS CDate,C.CTime AS CTime,CC.Category AS Category,C.Description AS Description,Depart.Name AS Depart,C.UName AS UName,C.Status AS Status FROM (ComplaintDetail AS C Inner JOIN  Depart ON C.Depart=Depart.Code) Inner JOIN ComplaintCategory CC ON C.Category=CC.Code " & var_90
  loc_150BEDA:   var_EC.Connection15.Execute var_100 & " ORDER BY CC.Category,C.Description", var_EC, -1
  loc_150BEE5:   Set var_8C = var_108
  loc_150BEF8: Else
  loc_150BF0C:   var_100 = "SELECT C.Code AS Scode,C.CDate AS CDate,C.CTime AS CTime,CC.Category AS Category,C.Description AS Description,Depart.Name AS Depart,C.UName AS UName,C.Status AS Status FROM (ComplaintDetail AS C Inner JOIN  Depart ON C.Depart=Depart.Code) Inner JOIN ComplaintCategory CC ON C.Category=CC.Code " & var_90
  loc_150BF1C:   unk_44CC3F.Execute var_100 & " ORDER BY CC.Category,C.Description", var_EC, -1
  loc_150BF27:   Set var_8C = var_108
  loc_150BF37: End If
  loc_150BF4B: If (var_8C.RecordCount > 0) Then
  loc_150BF51:   var_8C.MoveFirst
  loc_150BF56:   ' Referenced from: 150C618
  loc_150BF65:   If Not(var_8C.EOF) Then
  loc_150BF6B:     Set var_154 = var_88 
  loc_150BF75:     var_AC = "Category"
  loc_150BF81:     var_108 = var_8C.Fields
  loc_150BFA8:     If (var_CC <> Proc_6_38_E68A98(CVar(var_108.Item(var_AC)), var_98, var_108, var_108, var_AC, var_FC)) Then
  loc_150BFAD:       var_9A = 0
  loc_150BFBB:       var_154.AddNew var_AC, var_BC
  loc_150BFE5:       var_154.Fields.Item("mLine").Value = "B"
  loc_150C016:       var_154.Fields.Item("SNo").Value = vbNullString
  loc_150C022:       var_BC = "Category: "
  loc_150C02D:       var_AC = "Category"
  loc_150C075:       var_154.Fields.Item("Description").Value = var_BC & var_8C.Fields.Item(var_AC).Value
  loc_150C097:       var_154.Update var_AC, var_BC
  loc_150C0A2:       var_9A = (var_9A + 1)
  loc_150C0B0:       var_154.AddNew var_AC, var_BC
  loc_150C0DA:       var_154.Fields.Item("MLine").Value = vbNullString
  loc_150C115:       var_154.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_150C18A:       var_154.Fields.Item("CDate").Value = Format(CVar(var_8C.Fields.Item("CDate")), "DD/MM/YY")
  loc_150C1EF:       var_154.Fields.Item("CTime").Value = Trim(CVar(var_8C.Fields.Item("CTime")))
  loc_150C247:       var_154.Fields.Item("Description").Value = CVar(var_8C.Fields.Item("Description"))
  loc_150C29B:       var_154.Fields.Item("Depart").Value = CVar(var_8C.Fields.Item("Depart"))
  loc_150C2EF:       var_154.Fields.Item("UName").Value = CVar(var_8C.Fields.Item("UName"))
  loc_150C300:       var_BC = "*"
  loc_150C309:       var_AC = "Mark"
  loc_150C325:       var_154.Fields.Item(var_AC).Value = var_BC
  loc_150C334:     Else
  loc_150C33A:       var_9A = (var_9A + 1)
  loc_150C348:       var_154.AddNew var_AC, var_BC
  loc_150C372:       var_154.Fields.Item("MLine").Value = vbNullString
  loc_150C3AD:       var_154.Fields.Item("SNo").Value = CVar(CStr(var_9A) & ".")
  loc_150C422:       var_154.Fields.Item("CDate").Value = Format(CVar(var_8C.Fields.Item("CDate")), "DD/MM/YY")
  loc_150C487:       var_154.Fields.Item("CTime").Value = Trim(CVar(var_8C.Fields.Item("CTime")))
  loc_150C4DF:       var_154.Fields.Item("Description").Value = CVar(var_8C.Fields.Item("Description"))
  loc_150C533:       var_154.Fields.Item("Depart").Value = CVar(var_8C.Fields.Item("Depart"))
  loc_150C587:       var_154.Fields.Item("UName").Value = CVar(var_8C.Fields.Item("UName"))
  loc_150C598:       var_BC = "*"
  loc_150C5A1:       var_AC = "Mark"
  loc_150C5BD:       var_154.Fields.Item(var_AC).Value = var_BC
  loc_150C5C9:     End If
  loc_150C5D4:     var_154.Update var_AC, var_BC
  loc_150C5DB:     Set var_154 = Nothing 
  loc_150C5E2:     var_AC = "Category"
  loc_150C607:     var_98 = Proc_6_38_E68A98(CVar(var_8C.Fields.Item(var_AC)), 1, 1, var_9A, 1, 1)
  loc_150C613:     var_8C.MoveNext
  loc_150C618:     GoTo loc_150BF56
  loc_150C61B:   End If
  loc_150C61E:   Set var_164 = var_88 
  loc_150C62D:   var_164.AddNew var_AC, var_BC
  loc_150C657:   var_164.Fields.Item("mLine").Value = vbNullString
  loc_150C663:   var_BC = vbNullString
  loc_150C66C:   var_AC = "Mark"
  loc_150C688:   var_164.Fields.Item(var_AC).Value = var_BC
  loc_150C69F:   var_164.Update var_AC, var_BC
  loc_150C6A6:   Set var_164 = Nothing 
  loc_150C6AA: End If
  loc_150C6B0: CVarUnk
  loc_150C6B5: VerifyVarObj
  loc_150C6BB: Set var_108 = Me.FGrid1
  loc_150C6C1: LateIdStAd
  loc_150C6F1: Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_88, var_9A)
  loc_150C700: Set var_170 = Me.FGrid1
  loc_150C70C: var_170.Tag = "ComplaintList"
  loc_150C71D: var_170.Cols = 8
  loc_150C722: var_AC = 0
  loc_150C72B: var_CC = 0
  loc_150C734: var_138 = "mLine"
  loc_150C73D: LateIdCallSt
  loc_150C745: var_AC = 0
  loc_150C74E: var_CC = 0
  loc_150C75A: LateIdCallSt
  loc_150C762: var_AC = 0
  loc_150C76B: var_CC = 1
  loc_150C774: var_138 = "SNo."
  loc_150C77D: LateIdCallSt
  loc_150C785: var_AC = 1
  loc_150C78E: var_CC = &H1F4
  loc_150C79A: LateIdCallSt
  loc_150C7A2: var_AC = 0
  loc_150C7AB: var_CC = 2
  loc_150C7B4: var_138 = "Date"
  loc_150C7BD: LateIdCallSt
  loc_150C7C5: var_AC = 2
  loc_150C7D4: var_CC = CVar(CInt(1)) 'Integer
  loc_150C7DB: LateIdCallSt
  loc_150C7E3: var_AC = 2
  loc_150C7F2: var_CC = CVar(CInt(1)) 'Integer
  loc_150C7F9: LateIdCallSt
  loc_150C801: var_AC = 2
  loc_150C80A: var_CC = &H3E8
  loc_150C816: LateIdCallSt
  loc_150C81E: var_AC = 0
  loc_150C827: var_CC = 3
  loc_150C830: var_138 = "Time"
  loc_150C839: LateIdCallSt
  loc_150C841: var_AC = 3
  loc_150C850: var_CC = CVar(CInt(1)) 'Integer
  loc_150C857: LateIdCallSt
  loc_150C85F: var_AC = 3
  loc_150C86E: var_CC = CVar(CInt(1)) 'Integer
  loc_150C875: LateIdCallSt
  loc_150C87D: var_AC = 3
  loc_150C886: var_CC = &H320
  loc_150C892: LateIdCallSt
  loc_150C89A: var_AC = 0
  loc_150C8A3: var_CC = 4
  loc_150C8AC: var_138 = "Complaint Description"
  loc_150C8B5: LateIdCallSt
  loc_150C8BD: var_AC = 4
  loc_150C8CC: var_CC = CVar(CInt(1)) 'Integer
  loc_150C8D3: LateIdCallSt
  loc_150C8DB: var_AC = 4
  loc_150C8EA: var_CC = CVar(CInt(1)) 'Integer
  loc_150C8F1: LateIdCallSt
  loc_150C8F9: var_AC = 4
  loc_150C902: var_CC = &HE10
  loc_150C90E: LateIdCallSt
  loc_150C916: var_AC = 0
  loc_150C91F: var_CC = 5
  loc_150C928: var_138 = "Department/Room"
  loc_150C931: LateIdCallSt
  loc_150C939: var_AC = 5
  loc_150C948: var_CC = CVar(CInt(7)) 'Integer
  loc_150C94F: LateIdCallSt
  loc_150C957: var_AC = 5
  loc_150C966: var_CC = CVar(CInt(7)) 'Integer
  loc_150C96D: LateIdCallSt
  loc_150C975: var_AC = 5
  loc_150C97E: var_CC = &H960
  loc_150C98A: LateIdCallSt
  loc_150C992: var_AC = 0
  loc_150C99B: var_CC = 6
  loc_150C9A4: var_138 = "Complaint By"
  loc_150C9AD: LateIdCallSt
  loc_150C9B5: var_AC = 6
  loc_150C9C4: var_CC = CVar(CInt(7)) 'Integer
  loc_150C9CB: LateIdCallSt
  loc_150C9D3: var_AC = 6
  loc_150C9E2: var_CC = CVar(CInt(7)) 'Integer
  loc_150C9E9: LateIdCallSt
  loc_150C9F1: var_AC = 6
  loc_150C9FA: var_CC = &H7D0
  loc_150CA06: LateIdCallSt
  loc_150CA0E: var_AC = 0
  loc_150CA17: var_CC = 7
  loc_150CA20: var_138 = "MARK"
  loc_150CA29: LateIdCallSt
  loc_150CA31: var_AC = 7
  loc_150CA3A: var_CC = 0
  loc_150CA46: LateIdCallSt
  loc_150CA50: Set var_170 = Nothing 
  loc_150CA68: If (var_8C.RecordCount <= 0) Then
  loc_150CA70:   global_60 = 0
  loc_150CA73: End If
  loc_150CA77: Set var_108 = Me.FGrid1
  loc_150CAA7: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_150CAAA:   var_AC = vbNullString
  loc_150CAB4:   Set var_108 = Me.FGrid1
  loc_150CAC5: End If
  loc_150CAFC: var_AC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_150CB1C: Me.FGrid1.Row = CVar(CLng(IIf(var_AC, FRow, 1)))
  loc_150CB6A: var_AC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_150CB8A: Me.FGrid1.Col = CVar(CLng(IIf(var_AC, Fcol, 1)))
  loc_150CBA6: Set var_88 = Nothing
  loc_150CBAE: Set var_8C = Nothing
  loc_150CBB1: Exit Sub
End Sub

Public Sub IssueRegister(formName, FRow, Fcol) '145A84C
  'Data Table: 44CC18
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_140 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_1C4 As String
  Dim var_B0 As Variant
  Dim var_1D8 As Variant
  Dim unk_44CC3F As Connection15
  Dim var_8C As Recordset15
  Dim var_1E4 As Recordset15
  Dim var_1F4 As Recordset15
  Dim var_88 As Recordset15
  Dim var_200 As MSHFlexGrid
  loc_1459CDC: var_110 = "WHERE S.VDate Between "
  loc_1459CF6: VarLateMemCallLdRfVar
  loc_1459D01: Proc_6_7_F25D88(var_100, Me.FGrid, 1)
  loc_1459D12: var_140 = 0 & var_100 & " And " 
  loc_1459D2B: VarLateMemCallLdRfVar
  loc_1459D36: Proc_6_7_F25D88(var_1B0, Me.FGrid, 1)
  loc_1459D43: var_90 = CStr(1 & var_1B0)
  loc_1459D5B: var_A0 = 2
  loc_1459D62: var_C0 = 1
  loc_1459D87: If (Me.FGrid.TextMatrix = "Issue") Then
  loc_1459D91:   var_90 = var_90 & "and V.NCat in('HKISS') AND R.TYPE IN('RO')"
  loc_1459D97: Else
  loc_1459D9E:   var_90 = var_90 & "and V.NCat in('HKIR') AND R.TYPE IN('RO')"
  loc_1459DA1: End If
  loc_1459DA1: var_A0 = 1
  loc_1459DB8: var_C0 = 0
  loc_1459DCA: If (Me.Check1.Value = var_C0) Then
  loc_1459DE3:   var_A0 = ") "
  loc_1459DED:   var_90 = CStr(CVar(var_90 & " And S.RoomNo In (") & Me.GridString1 & var_A0)
  loc_1459DFB: End If
  loc_1459E01: Call 0.Method_arg_54 ("Issue/Receive Register", var_A0, var_C0)
  loc_1459E09: var_A0 = 0
  loc_1459E46: var_100 = Me.FGrid
  loc_1459E60: Set var_1D8 = 1(1 & CStr(var_100.TextMatrix))
  loc_1459E66: var_100.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_1459E86: var_A0 = 1
  loc_1459EAF: If (Me.Check1.Value = 0) Then
  loc_1459ED8:   var_B0 = vbNullString
  loc_1459EE9:   Set var_1D8 = Me.Text2
  loc_1459EEF:   Me.Text2.Text = CStr("RoomNo : " & Left(Me.FormulaString1, &H73) & var_B0)
  loc_1459F08: Else
  loc_1459F15:   Me.Text2.Text = "RoomNo :   All"
  loc_1459F1D: End If
  loc_1459F20: var_A0 = 2
  loc_1459F30: var_E0 = Me.FGrid
  loc_1459F4A: Set var_1D8 = var_A0(1 & CStr(var_E0.TextMatrix))
  loc_1459F50: var_E0.TextBox.Text = "Type :"
  loc_1459F73: Call Proc_46_17_FA249C(New, var_1D8, var_E0, var_A0, var_A0)
  loc_1459F7B: Set var_88 = var_1D8
  loc_1459F7E: var_A0 = 2
  loc_1459F85: var_C0 = 1
  loc_1459F8E: var_E0 = Me.FGrid
  loc_1459FAA: If (var_E0.TextMatrix = "Issue") Then
  loc_1459FC1:   var_1C4 = "SELECT S.DocId,S.Vdate,s.Sno,S.VNO,s.RoomNo,I.Name as Item,s.qtyISS as Qty FROM (((STOCK S  Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)left join Voucher_Type V On V.V_Type=S.Vtype)" & var_90
  loc_1459FD1:   var_E0.Connection15.Execute var_1C4 & " Order By s.vdate,s.DocId,S.SNo,I.Name", var_E0, -1
  loc_1459FDC:   Set var_8C = var_1D8
  loc_1459FEF: Else
  loc_145A003:   var_1C4 = "SELECT S.DocId,S.Vdate,s.Sno,S.VNo,s.RoomNo,I.Name as Item,s.qtyREC as Qty FROM (((STOCK S  Left Join ItemMast I On S.Item=I.Code And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)left join Voucher_Type V On V.V_Type=S.Vtype)" & var_90
  loc_145A013:   unk_44CC3F.Execute var_1C4 & " Order By s.vdate,s.DocId,S.SNo,I.Name", var_E0, -1
  loc_145A01E:   Set var_8C = var_1D8
  loc_145A02E: End If
  loc_145A042: If (var_8C.RecordCount > 0) Then
  loc_145A048:   var_8C.MoveFirst
  loc_145A04D:   ' Referenced from: 145A30E
  loc_145A05C:   If Not(var_8C.EOF) Then
  loc_145A062:     Set var_1E4 = var_88 
  loc_145A071:     var_1E4.AddNew var_A0, var_B0
  loc_145A09B:     var_1E4.Fields.Item("MLine").Value = vbNullString
  loc_145A0D2:     var_F0 = "DD/MM/YY"
  loc_145A10A:     var_1E4.Fields.Item("DATE").Value = Format(CVar(var_8C.Fields.Item("VDate")), var_F0)
  loc_145A16B:     var_1E4.Fields.Item("VrNo").Value = var_8C.Fields.Item("VNo").Value
  loc_145A1C8:     var_1E4.Fields.Item("ROOMNO").Value = var_8C.Fields.Item("RoomNo").Value
  loc_145A225:     var_1E4.Fields.Item("ITEMNAME").Value = var_8C.Fields.Item("Item").Value
  loc_145A247:     var_1D8 = var_8C.Fields
  loc_145A25E:     Proc_6_51_EF39F0(var_F0, CVar(var_1D8.Item("qty")), 1, 1, var_1D8, var_1D8)
  loc_145A2A6:     var_1E4.Fields.Item("QTY").Value = Format(var_F0, "0.000")
  loc_145A2BF:     var_B0 = "*"
  loc_145A2C8:     var_A0 = "Mark"
  loc_145A2E4:     var_1E4.Fields.Item(var_A0).Value = var_B0
  loc_145A2FB:     var_1E4.Update var_A0, var_B0
  loc_145A302:     Set var_1E4 = Nothing 
  loc_145A309:     var_8C.MoveNext
  loc_145A30E:     GoTo loc_145A04D
  loc_145A311:   End If
  loc_145A314:   Set var_1F4 = var_88 
  loc_145A323:   var_1F4.AddNew var_A0, var_B0
  loc_145A34D:   var_1F4.Fields.Item("mLine").Value = "RF"
  loc_145A359:   var_B0 = vbNullString
  loc_145A362:   var_A0 = "Mark"
  loc_145A37E:   var_1F4.Fields.Item(var_A0).Value = var_B0
  loc_145A395:   var_1F4.Update var_A0, var_B0
  loc_145A39C:   Set var_1F4 = Nothing 
  loc_145A3A0: End If
  loc_145A3B4: If (var_88.RecordCount > 0) Then
  loc_145A3BD:   CVarUnk
  loc_145A3C2:   VerifyVarObj
  loc_145A3C8:   Set var_1D8 = Me.FGrid1
  loc_145A3CE:   LateIdStAd
  loc_145A3FE:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1, var_88, 1, 1)
  loc_145A409: End If
  loc_145A40D: Set var_200 = Me.FGrid1
  loc_145A419: var_200.Tag = "IssueRegister"
  loc_145A42A: var_200.Cols = 7
  loc_145A42F: var_A0 = 0
  loc_145A438: var_C0 = 0
  loc_145A441: var_110 = "mLine"
  loc_145A44A: LateIdCallSt
  loc_145A452: var_A0 = 0
  loc_145A45B: var_C0 = 0
  loc_145A467: LateIdCallSt
  loc_145A46F: var_A0 = 0
  loc_145A478: var_C0 = 1
  loc_145A481: var_110 = "DATE"
  loc_145A48A: LateIdCallSt
  loc_145A492: var_A0 = 1
  loc_145A49B: var_C0 = &H3E8
  loc_145A4A7: LateIdCallSt
  loc_145A4AF: var_A0 = 0
  loc_145A4B8: var_C0 = 2
  loc_145A4C1: var_110 = "Vr. NO."
  loc_145A4CA: LateIdCallSt
  loc_145A4D2: var_A0 = 2
  loc_145A4E1: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A4E8: LateIdCallSt
  loc_145A4F0: var_A0 = 2
  loc_145A4FF: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A506: LateIdCallSt
  loc_145A50E: var_A0 = 2
  loc_145A517: var_C0 = &H3E8
  loc_145A523: LateIdCallSt
  loc_145A52B: var_A0 = 0
  loc_145A534: var_C0 = 3
  loc_145A53D: var_110 = "ROOM No"
  loc_145A546: LateIdCallSt
  loc_145A54E: var_A0 = 3
  loc_145A55D: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A564: LateIdCallSt
  loc_145A56C: var_A0 = 3
  loc_145A57B: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A582: LateIdCallSt
  loc_145A58A: var_A0 = 3
  loc_145A593: var_C0 = &H4B0
  loc_145A59F: LateIdCallSt
  loc_145A5A7: var_A0 = 0
  loc_145A5B0: var_C0 = 4
  loc_145A5B9: var_110 = "ITEM NAME"
  loc_145A5C2: LateIdCallSt
  loc_145A5CA: var_A0 = 4
  loc_145A5D9: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A5E0: LateIdCallSt
  loc_145A5E8: var_A0 = 4
  loc_145A5F7: var_C0 = CVar(CInt(1)) 'Integer
  loc_145A5FE: LateIdCallSt
  loc_145A606: var_A0 = 4
  loc_145A60F: var_C0 = &HBB8
  loc_145A61B: LateIdCallSt
  loc_145A623: var_A0 = 0
  loc_145A62C: var_C0 = 5
  loc_145A635: var_110 = "QUANTITY"
  loc_145A63E: LateIdCallSt
  loc_145A646: var_A0 = 5
  loc_145A655: var_C0 = CVar(CInt(7)) 'Integer
  loc_145A65C: LateIdCallSt
  loc_145A664: var_A0 = 5
  loc_145A673: var_C0 = CVar(CInt(7)) 'Integer
  loc_145A67A: LateIdCallSt
  loc_145A682: var_A0 = 5
  loc_145A68B: var_C0 = &H4B0
  loc_145A697: LateIdCallSt
  loc_145A69F: var_A0 = 0
  loc_145A6A8: var_C0 = 6
  loc_145A6B1: var_110 = "MARK"
  loc_145A6BA: LateIdCallSt
  loc_145A6C2: var_A0 = 6
  loc_145A6CB: var_C0 = 0
  loc_145A6D7: LateIdCallSt
  loc_145A6E1: Set var_200 = Nothing 
  loc_145A6F9: If (var_8C.RecordCount <= 0) Then
  loc_145A701:   global_60 = 0
  loc_145A704: End If
  loc_145A708: Set var_1D8 = Me.FGrid1
  loc_145A738: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_145A73B:   var_A0 = vbNullString
  loc_145A745:   Set var_1D8 = Me.FGrid1
  loc_145A756: End If
  loc_145A78D: var_A0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_145A7AD: Me.FGrid1.Row = CVar(CLng(IIf(var_A0, FRow, 1)))
  loc_145A7FB: var_A0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_145A81B: Me.FGrid1.Col = CVar(CLng(IIf(var_A0, Fcol, 1)))
  loc_145A837: Set var_88 = Nothing
  loc_145A83F: Set var_8C = Nothing
  loc_145A844: IStAd
  loc_145A848: Exit Sub
End Sub

Public Sub StockRegister(formName, FRow, Fcol) '16575D0
  'Data Table: 44CC18
  Dim var_130 As Variant
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim var_140 As Variant
  Dim var_150 As String
  Dim var_160 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_1F8 As Variant
  Dim var_248 As String
  Dim var_288 As String
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_2C8 As String
  Dim var_308 As String
  Dim var_AC As Recordset15
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_348 As Recordset15
  Dim var_354 As Recordset15
  Dim var_A8 As Recordset15
  Dim var_35C As Double
  Dim var_364 As Double
  Dim var_368 As Recordset15
  Dim var_36C As Recordset15
  Dim var_370 As MSHFlexGrid
  loc_1655F7C: var_130 = "WHERE S.VDate Between "
  loc_1655F96: VarLateMemCallLdRfVar
  loc_1655FA1: Proc_6_7_F25D88(var_120, Me.FGrid, 1)
  loc_1655FB2: var_160 = 0 & var_120 & " And " 
  loc_1655FCB: VarLateMemCallLdRfVar
  loc_1655FD6: Proc_6_7_F25D88(var_1D0, Me.FGrid, 1)
  loc_1655FFB: var_C0 = 1
  loc_1656024: If (Me.Check1.Value = 0) Then
  loc_1656047:   var_B0 = CStr(CVar(CStr(1 & var_1D0) & " And S.Item In (") & Me.GridString1 & ") ")
  loc_1656055: End If
  loc_1656055: var_C0 = 2
  loc_165605C: var_E0 = 1
  loc_1656081: If (Me.FGrid.TextMatrix = "Room") Then
  loc_1656084:   var_C0 = 2
  loc_16560AD:   If (Me.Check1.Value = 0) Then
  loc_16560D7:     var_B0 = CStr(CVar(var_B0 & " AND R.TYPE IN('RO')" & " And S.RoomNo In (") & Me.GridString2 & ") ")
  loc_16560E8:   End If
  loc_16560EB: Else
  loc_16560EB:   var_C0 = 2
  loc_1656102:   var_E0 = 0
  loc_1656114:   If (Me.Check1.Value = var_E0) Then
  loc_165612D:     var_C0 = ") "
  loc_1656137:     var_B0 = CStr(CVar(var_B0 & " And S.RestCode In (") & Me.GridString2 & var_C0)
  loc_1656145:   End If
  loc_1656145: End If
  loc_165614B: Call 0.Method_arg_54 ("Stock Register", var_C0, var_C0, var_E0)
  loc_1656153: var_C0 = 0
  loc_1656190: var_120 = Me.FGrid
  loc_16561AA: Set var_1F8 = 1(1 & CStr(var_120.TextMatrix))
  loc_16561B0: var_120.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_16561D0: var_C0 = 1
  loc_16561F9: If (Me.Check1.Value = 0) Then
  loc_1656233:   Set var_1F8 = Me.Text2
  loc_1656239:   Me.Text2.Text = CStr("ItemName : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_1656252: Else
  loc_165625F:   Me.Text2.Text = "ItemName :   All"
  loc_1656267: End If
  loc_165627A: var_100 = Me.FGrid
  loc_1656294: Set var_1F8 = 2(1 & CStr(var_100.TextMatrix))
  loc_165629A: var_100.TextBox.Text = "For Type :"
  loc_16562B0: var_C0 = 2
  loc_16562B7: var_E0 = 1
  loc_16562DC: If (Me.FGrid.TextMatrix = "Room") Then
  loc_16562DF:   var_C0 = 2
  loc_1656308:   If (Me.Check1.Value = 0) Then
  loc_1656342:     Set var_1F8 = Me.Text4
  loc_1656348:     Me.Text4.Text = CStr("RoomNo : " & Left(Me.FormulaString2, &H73) & vbNullString)
  loc_1656361:   Else
  loc_165636E:     Me.Text4.Text = "RoomNo :   All"
  loc_1656376:   End If
  loc_1656379: Else
  loc_1656379:   var_C0 = 2
  loc_1656390:   var_E0 = 0
  loc_16563A2:   If (Me.Check1.Value = var_E0) Then
  loc_16563A8:     var_100 = Me.FormulaString2
  loc_16563AF:     var_C0 = "Department :   "
  loc_16563C7:     var_120 = var_C0 & Left(var_100, &H73) 
  loc_16563DC:     Set var_1F8 = Me.Text4
  loc_16563E2:     Me.Text4.Text = CStr(var_120 & vbNullString)
  loc_16563FB:   Else
  loc_1656402:     Set var_1F8 = Me.Text4
  loc_1656408:     var_1F8.Text = "Department :     All"
  loc_1656410:   End If
  loc_1656410: End If
  loc_165641D: Call Proc_46_18_FDEE60(New, var_1F8, var_100, var_C0, var_100, var_C0, var_E0)
  loc_1656425: Set var_A8 = var_1F8
  loc_1656428: var_C0 = 2
  loc_165642F: var_E0 = 1
  loc_1656454: If (Me.FGrid.TextMatrix = "Room") Then
  loc_1656469:   var_C0 = 0
  loc_1656470:   var_E0 = 1
  loc_1656479:   var_100 = Me.FGrid
  loc_165647E:   VarLateMemCallLdRfVar
  loc_1656489:   Proc_6_7_F25D88(var_120, var_100, var_E0, var_C0, "SELECT DOCID,", var_2B8, -1, var_1F8)
  loc_1656495:   var_150 = " AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,MAX(I.NAME) AS ItemName,'OPENING BALANCE' AS Description,(SUM(S.QTYRec)-SUM(S.QTYIss)) AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code) LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in ('HKISS','HKIR','HKROP') and S.VDATE <"
  loc_16564B3:   VarLateMemCallLdRfVar
  loc_16564BE:   Proc_6_7_F25D88(var_1D0, Me.FGrid, 1, 0, var_E0 & var_120 & " And ", var_C0)
  loc_16564DC:   var_248 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(R.Name) as Description,RECDQTY=CASE MAX(NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=CASE MAX(NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END  FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN RoomMast R ON R.Code=S.RoomNo)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16564EF:   var_288 = " AND S.VTYPE IN (SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR','HKROP')) GROUP BY S.Item,S.VDate,S.dOCiD ,s.VNO Order By ITEMNAME,Date1,DOCID,VrNo"
  loc_1656502:   Me.Connection15.Execute CStr(var_C0 & var_1D0 & " GROUP BY S.Item,S.VDate,S.dOCiD,s.VNO " & "Union " & var_248 & CVar(var_B0) & var_288), var_100, var_C0
  loc_165650D:   Set var_AC = var_1F8
  loc_165653A: Else
  loc_165654C:   var_C0 = 0
  loc_1656561:   VarLateMemCallLdRfVar
  loc_165656C:   Proc_6_7_F25D88(var_120, Me.FGrid, 1, var_C0, "SELECT DOCID,", var_338)
  loc_1656574:   var_140 = -1 & var_120 
  loc_1656578:   var_150 = " AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,MAX(I.NAME) AS ItemName,'OPENING BALANCE' AS Description,(SUM(S.QTYRec)-SUM(S.QTYIss)) AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in ('HKISS','HKIR','HKOP','RQI') and S.VDATE <"
  loc_1656596:   VarLateMemCallLdRfVar
  loc_16565A1:   Proc_6_7_F25D88(var_1D0, Me.FGrid, 1, 0, 1 & var_120 & " And ")
  loc_16565BF:   var_248 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(D.Name) as Description,RECDQTY = CASE MAX(NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END,ISSQTY=CASE MAX(NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16565D7:   var_298 = var_1F8 & var_1D0 & " GROUP BY  S.Item,S.VDate,S.dOCiD,s.VNO " & "Union " & var_248 & CVar(var_B0) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item,S.VDate,S.dOCiD ,s.VNO " 
  loc_16565E4:   var_2C8 = "SELECT DOCID,(S.VDATE) AS DATE1,(S.VNo) as VrNo,MAX(S.RoomNo) AS Room,max(I.NAME) AS ItemName,max(D.Name) as Description,RECDQTY = CASE MAX(NCAT) WHEN 'RQI' THEN Sum(S.QTYIss) ELSE 0 END,0 AS ISSQTY FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode) LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_16565F7:   var_308 = " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN ('RQI')) GROUP BY S.Item,S.VDate,S.dOCiD,s.VNO Order By iTEMNAME,Date1,DOCID,VrNo"
  loc_165660A:   Me.Connection15.Execute CStr(var_298 & "Union " & var_2C8 & CVar(var_B0) & var_308), var_C0, "From :   "
  loc_1656615:   Set var_AC = var_1F8
  loc_1656647: End If
  loc_165664A: var_88 = vbNullString
  loc_1656650: var_A4 = vbNullString
  loc_1656667: If (var_AC.RecordCount > 0) Then
  loc_165666D:   var_AC.MoveFirst
  loc_1656672:   ' Referenced from: 1656F9A
  loc_1656681:   If Not(var_AC.EOF) Then
  loc_1656687:     var_D0 = CVar(var_A4) 'String
  loc_16566C1:     If CBool(var_D0 <> var_AC.Fields.Item("ItemName").Value) Then
  loc_16566C7:       var_C0 = "ItemName"
  loc_16566EC:       var_A4 = Proc_6_38_E68A98(CVar(var_AC.Fields.Item(var_C0)))
  loc_16566F8:       var_90 = CDbl(0)
  loc_16566FE:       var_98 = CDbl(0)
  loc_1656704:       var_A0 = CDbl(0)
  loc_165670A:       Set var_348 = var_A8 
  loc_1656719:       var_348.AddNew var_C0, var_D0
  loc_1656743:       var_348.Fields.Item("MLine").Value = vbNullString
  loc_1656792:       var_348.Fields.Item("Date").Value = CVar(var_AC.Fields.Item("ItemName"))
  loc_16567A3:       var_D0 = "*"
  loc_16567AC:       var_C0 = "Mark"
  loc_16567C8:       var_348.Fields.Item(var_C0).Value = var_D0
  loc_16567DF:       var_348.Update var_C0, var_D0
  loc_16567E6:       Set var_348 = Nothing 
  loc_16567EA:     End If
  loc_16567ED:     var_D0 = CVar(var_A4) 'String
  loc_16567F7:     var_C0 = "ItemName"
  loc_1656827:     If (var_D0 = var_AC.Fields.Item(var_C0).Value) Then
  loc_165682D:       Set var_354 = var_A8 
  loc_165683C:       var_354.AddNew var_C0, var_D0
  loc_1656866:       var_354.Fields.Item("MLine").Value = vbNullString
  loc_16568D5:       var_354.Fields.Item("DATE").Value = Format(CVar(var_AC.Fields.Item("Date1")), "DD/MM/YY")
  loc_1656936:       var_354.Fields.Item("VRNO").Value = var_AC.Fields.Item("VrNo").Value
  loc_1656993:       var_354.Fields.Item("ROOMNO").Value = var_AC.Fields.Item("Room").Value
  loc_16569F0:       var_354.Fields.Item("DESCRIP").Value = var_AC.Fields.Item("Description").Value
  loc_1656A67:       var_140 = (var_AC.Fields.Item("IssQty").Value < 0)
  loc_1656A83:       If CBool((var_AC.Fields.Item("RecdQty").Value < 0) Or var_140) Then
  loc_1656ABE:         Proc_6_51_EF39F0(var_140, Abs(var_AC.Fields.Item("IssQty").Value), 1, 1)
  loc_1656AE6:         var_354.Fields.Item("RECDQTY").Value = var_140
  loc_1656B29:         var_110 = Abs(var_AC.Fields.Item("RecdQty").Value)
  loc_1656B37:         Proc_6_51_EF39F0(var_140, var_110, var_A0)
  loc_1656B5F:         var_354.Fields.Item("ISSQTY").Value = var_140
  loc_1656B7B:       Else
  loc_1656BA1:         Proc_6_51_EF39F0(var_110, CVar(var_AC.Fields.Item("RecdQty")), var_98)
  loc_1656BC9:         var_354.Fields.Item("RECDQTY").Value = var_110
  loc_1656C04:         Proc_6_51_EF39F0(var_110, CVar(var_AC.Fields.Item("IssQty")))
  loc_1656C2C:         var_354.Fields.Item("ISSQTY").Value = var_110
  loc_1656C41:       End If
  loc_1656CAA:       var_364 = Val(CStr(var_A8.Fields.Item("ISSQTY").Value))
  loc_1656CB8:       var_90 = (var_90 + (Val(CStr(var_A8.Fields.Item("RECDQTY").Value)) - var_364))
  loc_1656D11:       var_98 = (var_98 + Val(CStr(var_A8.Fields.Item("RECDQTY").Value)))
  loc_1656D43:       var_100 = var_A8.Fields.Item("ISSQTY").Value
  loc_1656D54:       var_35C = Val(CStr(var_100))
  loc_1656D5E:       var_A0 = (var_A0 + var_35C)
  loc_1656D79:       Proc_6_51_EF39F0(var_100, var_90, var_A0, var_35C, var_98, var_35C)
  loc_1656DA1:       var_354.Fields.Item("BALANCE").Value = var_100
  loc_1656DB0:       var_D0 = "*"
  loc_1656DB9:       var_C0 = "Mark"
  loc_1656DD5:       var_354.Fields.Item(var_C0).Value = var_D0
  loc_1656DEC:       var_354.Update var_C0, var_D0
  loc_1656DF3:       Set var_354 = Nothing 
  loc_1656DF7:     End If
  loc_1656DFA:     var_AC.MoveNext
  loc_1656E10:     If (var_AC.EOF = &HFF) Then
  loc_1656E13:       GoTo loc_1656E56
  loc_1656E16:     End If
  loc_1656E19:     var_D0 = CVar(var_A4) 'String
  loc_1656E23:     var_C0 = "ItemName"
  loc_1656E3F:     var_100 = var_AC.Fields.Item(var_C0).Value
  loc_1656E53:     If CBool(var_D0 <> var_100) Then
  loc_1656E56:       ' Referenced from: 1656E13
  loc_1656E59:       Set var_368 = var_A8 
  loc_1656E68:       var_368.AddNew var_C0, var_D0
  loc_1656E92:       var_368.Fields.Item("DESCRIP").Value = "Total :"
  loc_1656EA9:       Proc_6_51_EF39F0(var_100, var_98, var_90, var_364)
  loc_1656ED1:       var_368.Fields.Item("RECDQTY").Value = var_100
  loc_1656EEB:       Proc_6_51_EF39F0(var_100, var_A0, var_35C)
  loc_1656F13:       var_368.Fields.Item("ISSQTY").Value = var_100
  loc_1656F47:       var_368.Fields.Item("mLine").Value = "GF"
  loc_1656F53:       var_D0 = "*"
  loc_1656F5C:       var_C0 = "Mark"
  loc_1656F78:       var_368.Fields.Item(var_C0).Value = var_D0
  loc_1656F8F:       var_368.Update var_C0, var_D0
  loc_1656F96:       Set var_368 = Nothing 
  loc_1656F9A:     End If
  loc_1656F9A:     GoTo loc_1656672
  loc_1656F9D:   End If
  loc_1656FA0:   Set var_36C = var_A8 
  loc_1656FAF:   var_36C.AddNew var_C0, var_D0
  loc_1656FD9:   var_36C.Fields.Item("mLine").Value = "RF"
  loc_1656FE5:   var_D0 = vbNullString
  loc_1656FEE:   var_C0 = "Mark"
  loc_165700A:   var_36C.Fields.Item(var_C0).Value = var_D0
  loc_1657021:   var_36C.Update var_C0, var_D0
  loc_1657028:   Set var_36C = Nothing 
  loc_165702C: End If
  loc_1657040: If (var_A8.RecordCount > 0) Then
  loc_1657049:   CVarUnk
  loc_165704E:   VerifyVarObj
  loc_1657054:   Set var_1F8 = Me.FGrid1
  loc_165705A:   LateIdStAd
  loc_165708A:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_1657095: End If
  loc_1657099: Set var_370 = Me.FGrid1
  loc_16570A5: var_370.Tag = "StockRegister"
  loc_16570B6: var_370.Cols = 9
  loc_16570BB: var_C0 = 0
  loc_16570C4: var_E0 = 0
  loc_16570CD: var_130 = "mLine"
  loc_16570D6: LateIdCallSt
  loc_16570DE: var_C0 = 0
  loc_16570E7: var_E0 = 0
  loc_16570F3: LateIdCallSt
  loc_16570FB: var_C0 = 0
  loc_1657104: var_E0 = 1
  loc_165710D: var_130 = "DATE"
  loc_1657116: LateIdCallSt
  loc_165711E: var_C0 = 1
  loc_1657127: var_E0 = &H7D0
  loc_1657133: LateIdCallSt
  loc_165713B: var_C0 = 0
  loc_1657144: var_E0 = 2
  loc_165714D: var_130 = "VR. NO."
  loc_1657156: LateIdCallSt
  loc_165715E: var_C0 = 2
  loc_165716D: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657174: LateIdCallSt
  loc_165717C: var_C0 = 2
  loc_165718B: var_E0 = CVar(CInt(1)) 'Integer
  loc_1657192: LateIdCallSt
  loc_165719A: var_C0 = 2
  loc_16571A3: var_E0 = &H3E8
  loc_16571AF: LateIdCallSt
  loc_16571B7: var_C0 = 0
  loc_16571C0: var_E0 = 3
  loc_16571C9: var_130 = "ROOM No"
  loc_16571D2: LateIdCallSt
  loc_16571DA: var_C0 = 3
  loc_16571E9: var_E0 = CVar(CInt(1)) 'Integer
  loc_16571F0: LateIdCallSt
  loc_16571F8: var_C0 = 3
  loc_1657207: var_E0 = CVar(CInt(1)) 'Integer
  loc_165720E: LateIdCallSt
  loc_1657216: var_C0 = 3
  loc_165721F: var_E0 = &H4B0
  loc_165722B: LateIdCallSt
  loc_1657233: var_C0 = 0
  loc_165723C: var_E0 = 4
  loc_1657245: var_130 = "DESCRIPTION"
  loc_165724E: LateIdCallSt
  loc_1657256: var_C0 = 4
  loc_1657265: var_E0 = CVar(CInt(1)) 'Integer
  loc_165726C: LateIdCallSt
  loc_1657274: var_C0 = 4
  loc_1657283: var_E0 = CVar(CInt(1)) 'Integer
  loc_165728A: LateIdCallSt
  loc_1657292: var_C0 = 4
  loc_165729B: var_E0 = &HAF0
  loc_16572A7: LateIdCallSt
  loc_16572AF: var_C0 = 0
  loc_16572B8: var_E0 = 5
  loc_16572C1: var_130 = "RECD.QTY"
  loc_16572CA: LateIdCallSt
  loc_16572D2: var_C0 = 5
  loc_16572E1: var_E0 = CVar(CInt(7)) 'Integer
  loc_16572E8: LateIdCallSt
  loc_16572F0: var_C0 = 5
  loc_16572FF: var_E0 = CVar(CInt(7)) 'Integer
  loc_1657306: LateIdCallSt
  loc_165730E: var_C0 = 5
  loc_1657317: var_E0 = &H5DC
  loc_1657323: LateIdCallSt
  loc_165732B: var_C0 = 0
  loc_1657334: var_E0 = 6
  loc_165733D: var_130 = "ISS.QTY"
  loc_1657346: LateIdCallSt
  loc_165734E: var_C0 = 6
  loc_165735D: var_E0 = CVar(CInt(7)) 'Integer
  loc_1657364: LateIdCallSt
  loc_165736C: var_C0 = 6
  loc_165737B: var_E0 = CVar(CInt(7)) 'Integer
  loc_1657382: LateIdCallSt
  loc_165738A: var_C0 = 6
  loc_1657393: var_E0 = &H5DC
  loc_165739F: LateIdCallSt
  loc_16573A7: var_C0 = 0
  loc_16573B0: var_E0 = 7
  loc_16573B9: var_130 = "BALANCE"
  loc_16573C2: LateIdCallSt
  loc_16573CA: var_C0 = 7
  loc_16573D9: var_E0 = CVar(CInt(7)) 'Integer
  loc_16573E0: LateIdCallSt
  loc_16573E8: var_C0 = 7
  loc_16573F7: var_E0 = CVar(CInt(7)) 'Integer
  loc_16573FE: LateIdCallSt
  loc_1657406: var_C0 = 7
  loc_165740F: var_E0 = &H5DC
  loc_165741B: LateIdCallSt
  loc_1657423: var_C0 = 0
  loc_165742C: var_E0 = 8
  loc_1657435: var_130 = "MARK"
  loc_165743E: LateIdCallSt
  loc_1657446: var_C0 = 8
  loc_165744F: var_E0 = 0
  loc_165745B: LateIdCallSt
  loc_1657465: Set var_370 = Nothing 
  loc_165747D: If (var_AC.RecordCount <= 0) Then
  loc_1657485:   global_60 = 0
  loc_1657488: End If
  loc_165748C: Set var_1F8 = Me.FGrid1
  loc_16574BC: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_16574BF:   var_C0 = vbNullString
  loc_16574C9:   Set var_1F8 = Me.FGrid1
  loc_16574DA: End If
  loc_1657511: var_C0 = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_1657531: Me.FGrid1.Row = CVar(CLng(IIf(var_C0, FRow, 1)))
  loc_165757F: var_C0 = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_165759F: Me.FGrid1.Col = CVar(CLng(IIf(var_C0, Fcol, 1)))
  loc_16575BB: Set var_A8 = Nothing
  loc_16575C3: Set var_AC = Nothing
  loc_16575C8: IStAd
  loc_16575CC: Exit Sub
End Sub

Public Sub StockSumm(formName, FRow, Fcol) '152B178
  'Data Table: 44CC18
  Dim var_12C As Variant
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_15C As Variant
  Dim var_1DC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_CC As Variant
  Dim var_1F4 As Variant
  Dim var_17C As String
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_224 As String
  Dim var_274 As Variant
  Dim var_A8 As Recordset15
  Dim var_8C As Double
  Dim var_9C As Double
  Dim var_94 As Double
  Dim var_2A4 As Recordset15
  Dim var_2A8 As Recordset15
  Dim var_A4 As Recordset15
  Dim var_2B4 As MSHFlexGrid
  loc_152A224: var_12C = "WHERE S.VDate Between "
  loc_152A23E: VarLateMemCallLdRfVar
  loc_152A249: Proc_6_7_F25D88(var_11C, Me.FGrid, 1)
  loc_152A25A: var_15C = 0 & var_11C & " And " 
  loc_152A273: VarLateMemCallLdRfVar
  loc_152A27E: Proc_6_7_F25D88(var_1CC, Me.FGrid, 1)
  loc_152A2A3: var_BC = 1
  loc_152A2CC: If (Me.Check1.Value = 0) Then
  loc_152A2EF:   var_AC = CStr(CVar(CStr(1 & var_1CC) & " And S.Item In (") & Me.GridString1 & ") ")
  loc_152A2FD: End If
  loc_152A2FD: var_BC = 2
  loc_152A304: var_DC = 1
  loc_152A329: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152A32C:   var_BC = 2
  loc_152A355:   If (Me.Check1.Value = 0) Then
  loc_152A37F:     var_AC = CStr(CVar(var_AC & " AND R.TYPE IN('RO')" & " And S.RoomNo In (") & Me.GridString2 & ") ")
  loc_152A390:   End If
  loc_152A393: Else
  loc_152A393:   var_BC = 2
  loc_152A3AA:   var_DC = 0
  loc_152A3BC:   If (Me.Check1.Value = var_DC) Then
  loc_152A3D5:     var_BC = ") "
  loc_152A3DF:     var_AC = CStr(CVar(var_AC & " And S.RestCode In (") & Me.GridString2 & var_BC)
  loc_152A3ED:   End If
  loc_152A3ED: End If
  loc_152A3F3: Call 0.Method_arg_54 ("Stock Summary", var_BC, var_BC, var_DC)
  loc_152A3FB: var_BC = 0
  loc_152A438: var_11C = Me.FGrid
  loc_152A452: Set var_1F4 = 1(1 & CStr(var_11C.TextMatrix))
  loc_152A458: var_11C.TextBox.Text = 1 & CStr(Me.FGrid.TextMatrix) & " To : "
  loc_152A478: var_BC = 1
  loc_152A4A1: If (Me.Check1.Value = 0) Then
  loc_152A4DB:   Set var_1F4 = Me.Text2
  loc_152A4E1:   Me.Text2.Text = CStr("ItemName : " & Left(Me.FormulaString1, &H73) & vbNullString)
  loc_152A4FA: Else
  loc_152A507:   Me.Text2.Text = "ItemName :   All"
  loc_152A50F: End If
  loc_152A522: var_FC = Me.FGrid
  loc_152A53C: Set var_1F4 = 2(1 & CStr(var_FC.TextMatrix))
  loc_152A542: var_FC.TextBox.Text = "For Type :"
  loc_152A558: var_BC = 2
  loc_152A55F: var_DC = 1
  loc_152A584: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152A587:   var_BC = 2
  loc_152A5B0:   If (Me.Check1.Value = 0) Then
  loc_152A5EA:     Set var_1F4 = Me.Text4
  loc_152A5F0:     Me.Text4.Text = CStr("RoomNo : " & Left(Me.FormulaString2, &H73) & vbNullString)
  loc_152A609:   Else
  loc_152A616:     Me.Text4.Text = "RoomNo :   All"
  loc_152A61E:   End If
  loc_152A621: Else
  loc_152A621:   var_BC = 2
  loc_152A638:   var_DC = 0
  loc_152A64A:   If (Me.Check1.Value = var_DC) Then
  loc_152A650:     var_FC = Me.FormulaString2
  loc_152A657:     var_BC = "Department :   "
  loc_152A66F:     var_11C = var_BC & Left(var_FC, &H73) 
  loc_152A684:     Set var_1F4 = Me.Text4
  loc_152A68A:     Me.Text4.Text = CStr(var_11C & vbNullString)
  loc_152A6A3:   Else
  loc_152A6AA:     Set var_1F4 = Me.Text4
  loc_152A6B0:     var_1F4.Text = "Department :     All"
  loc_152A6B8:   End If
  loc_152A6B8: End If
  loc_152A6C5: Call Proc_46_19_FA3D8C(New, var_1F4, var_FC, var_BC, var_FC, var_BC, var_DC)
  loc_152A6CD: Set var_A4 = var_1F4
  loc_152A6D0: var_BC = 2
  loc_152A6D7: var_DC = 1
  loc_152A6FC: If (Me.FGrid.TextMatrix = "Room") Then
  loc_152A70C:   var_12C = "SELECT MAX(I.NAME) AS ItemName,(SUM(S.QTYRec)-SUM(S.QTYIss)) as Opbal,0 AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')Left Join ROOMMAST R On S.RoomNo=R.Code)LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.nCAT in('HKISS','HKIR','HKROP') and S.VDATE <"
  loc_152A711:   var_BC = 0
  loc_152A718:   var_DC = 1
  loc_152A726:   VarLateMemCallLdRfVar
  loc_152A731:   Proc_6_7_F25D88(var_11C, Me.FGrid, var_DC, var_BC, "Room", var_214, -1, var_1F4)
  loc_152A74F:   var_17C = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY=CASE max(V.nCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=CASE max(V.NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN RoomMast R ON R.Code=S.RoomNo)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152A767:   var_1DC = var_DC & var_11C & " GROUP BY S.Item " & "Union " & var_17C & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item Order By ItemName" 
  loc_152A775:   Me.Connection15.Execute CStr(var_1DC), var_BC, var_BC
  loc_152A780:   Set var_A8 = var_1F4
  loc_152A7A3: Else
  loc_152A7B0:   var_12C = "SELECT max(I.NAME) AS ItemName,(SUM(S.QTYRec)-SUM(S.QTYIss)) as Opbal,0 AS RECDQTY,0 AS ISSQTY FROM ((STOCK S LEFT JOIN Itemmast I ON I.CODE=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON S.VTYPE=V.V_TYPE where V.NCAT in('HKISS','HKIR','HKOP','RQI') and S.VDATE <"
  loc_152A7B5:   var_BC = 0
  loc_152A7C5:   var_FC = Me.FGrid
  loc_152A7CA:   VarLateMemCallLdRfVar
  loc_152A7D5:   Proc_6_7_F25D88(var_11C, var_FC, 1, var_BC, "Room", var_294, -1)
  loc_152A7F3:   var_17C = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY = CASE max(V.NCAT) WHEN 'HKIR' THEN Sum(S.QTYRec) ELSE 0 END,ISSQTY=CASE MAX(V.NCAT) WHEN 'HKISS' THEN Sum(S.QTYIss) ELSE 0 END FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152A80B:   var_1DC = var_1F4 & var_11C & " GROUP BY S.Item " & "Union " & var_17C & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('HKISS','HKIR')) GROUP BY S.Item " 
  loc_152A818:   var_224 = "SELECT max(I.NAME) AS ItemName,0 as Opbal,RECDQTY = CASE MAX(V.NCAT) WHEN 'RQI' THEN Sum(S.QTYIss) ELSE 0 END,ISSQTY=0 FROM (((STOCK S LEFT JOIN ItemMast I on I.Code=S.Item And I.ItemType='Store')LEFT JOIN Depart D ON D.Code=S.RestCode)LEFT JOIN VOUCHER_TYPE V ON V.V_TYPE=S.VTYPE)"
  loc_152A830:   var_274 = var_1DC & "Union " & var_224 & CVar(var_AC) & " AND S.VTYPE IN(SELECT V_TYPE FROM VOUCHER_TYPE WHERE NCAT IN('RQI')) GROUP BY S.Item Order By ItemName" 
  loc_152A83E:   Me.Connection15.Execute CStr(var_274), var_FC, var_BC
  loc_152A849:   Set var_A8 = var_1F4
  loc_152A871: End If
  loc_152A874: var_A0 = vbNullString
  loc_152A88B: If (var_A8.RecordCount > 0) Then
  loc_152A891:   var_A8.MoveFirst
  loc_152A896:   ' Referenced from: 152AC3A
  loc_152A8A5:   If Not(var_A8.EOF) Then
  loc_152A8E5:     If CBool(CVar(var_A0) <> var_A8.Fields.Item("ItemName").Value) Then
  loc_152A913:       var_A0 = CStr(var_A8.Fields.Item("ItemName").Value)
  loc_152A923:       var_8C = CDbl(0)
  loc_152A929:       var_9C = CDbl(0)
  loc_152A92F:       var_94 = CDbl(0)
  loc_152A932:     End If
  loc_152A963:     var_10C = (CVar(var_8C) + var_A8.Fields.Item("OpBal").Value)
  loc_152A968:     var_8C = CSng(Me.FGrid.TextMatrix)
  loc_152A9AA:     var_10C = (CVar(var_94) + var_A8.Fields.Item("RecdQty").Value)
  loc_152A9AF:     var_94 = CSng(Me.FGrid.TextMatrix)
  loc_152A9F1:     var_10C = (CVar(var_9C) + var_A8.Fields.Item("IssQty").Value)
  loc_152A9F6:     var_9C = CSng(Me.FGrid.TextMatrix)
  loc_152AA0A:     var_A8.MoveNext
  loc_152AA20:     If (var_A8.EOF = &HFF) Then
  loc_152AA23:       GoTo loc_152AA66
  loc_152AA26:     End If
  loc_152AA29:     var_CC = CVar(var_A0) 'String
  loc_152AA33:     var_BC = "ItemName"
  loc_152AA4F:     var_FC = var_A8.Fields.Item(var_BC).Value
  loc_152AA63:     If CBool(var_CC <> var_FC) Then
  loc_152AA66:       ' Referenced from: 152AA23
  loc_152AA69:       Set var_2A4 = var_A4 
  loc_152AA78:       var_2A4.AddNew var_BC, var_CC
  loc_152AAA2:       var_2A4.Fields.Item("MLine").Value = vbNullString
  loc_152AAD4:       var_2A4.Fields.Item("ITEMNAME").Value = CVar(var_A0)
  loc_152AAEB:       Proc_6_51_EF39F0(var_FC, var_8C, var_9C, var_94, var_8C, var_94)
  loc_152AB13:       var_2A4.Fields.Item("OpBal").Value = var_FC
  loc_152AB2D:       Proc_6_51_EF39F0(var_FC, var_94, var_9C, var_8C)
  loc_152AB55:       var_2A4.Fields.Item("RECDQTY").Value = var_FC
  loc_152AB6F:       Proc_6_51_EF39F0(var_FC, var_9C, var_9C)
  loc_152AB97:       var_2A4.Fields.Item("ISSQTY").Value = var_FC
  loc_152ABB1:       var_FC = CVar(((var_8C + var_94) - var_9C)) 'Double
  loc_152ABB8:       Proc_6_51_EF39F0(Me.FGrid.TextMatrix, var_FC)
  loc_152ABE0:       var_2A4.Fields.Item("BALANCE").Value = Me.FGrid.TextMatrix
  loc_152ABF3:       var_CC = "*"
  loc_152ABFC:       var_BC = "Mark"
  loc_152AC18:       var_2A4.Fields.Item(var_BC).Value = var_CC
  loc_152AC2F:       var_2A4.Update var_BC, var_CC
  loc_152AC36:       Set var_2A4 = Nothing 
  loc_152AC3A:     End If
  loc_152AC3A:     GoTo loc_152A896
  loc_152AC3D:   End If
  loc_152AC40:   Set var_2A8 = var_A4 
  loc_152AC4F:   var_2A8.AddNew var_BC, var_CC
  loc_152AC79:   var_2A8.Fields.Item("mLine").Value = "RF"
  loc_152AC85:   var_CC = vbNullString
  loc_152AC8E:   var_BC = "Mark"
  loc_152ACAA:   var_2A8.Fields.Item(var_BC).Value = var_CC
  loc_152ACC1:   var_2A8.Update var_BC, var_CC
  loc_152ACC8:   Set var_2A8 = Nothing 
  loc_152ACCC: End If
  loc_152ACE0: If (var_A4.RecordCount > 0) Then
  loc_152ACE9:   CVarUnk
  loc_152ACEE:   VerifyVarObj
  loc_152ACF4:   Set var_1F4 = Me.FGrid1
  loc_152ACFA:   LateIdStAd
  loc_152AD2A:   Proc_96_13_FACD34(Me.FGrid1, 0, 0, Me.FGrid1)
  loc_152AD35: End If
  loc_152AD39: Set var_2B4 = Me.FGrid1
  loc_152AD45: var_2B4.Tag = "StockSummary"
  loc_152AD56: var_2B4.Cols = 7
  loc_152AD5B: var_BC = 0
  loc_152AD64: var_DC = 0
  loc_152AD6D: var_12C = "mLine"
  loc_152AD76: LateIdCallSt
  loc_152AD7E: var_BC = 0
  loc_152AD87: var_DC = 0
  loc_152AD93: LateIdCallSt
  loc_152AD9B: var_BC = 0
  loc_152ADA4: var_DC = 1
  loc_152ADAD: var_12C = "ITEM NAME"
  loc_152ADB6: LateIdCallSt
  loc_152ADBE: var_BC = 1
  loc_152ADC7: var_DC = &H7D0
  loc_152ADD3: LateIdCallSt
  loc_152ADDB: var_BC = 0
  loc_152ADE4: var_DC = 2
  loc_152ADED: var_12C = "OP. BALANCE"
  loc_152ADF6: LateIdCallSt
  loc_152ADFE: var_BC = 2
  loc_152AE0D: var_DC = CVar(CInt(7)) 'Integer
  loc_152AE14: LateIdCallSt
  loc_152AE1C: var_BC = 2
  loc_152AE2B: var_DC = CVar(CInt(7)) 'Integer
  loc_152AE32: LateIdCallSt
  loc_152AE3A: var_BC = 2
  loc_152AE43: var_DC = &H5DC
  loc_152AE4F: LateIdCallSt
  loc_152AE57: var_BC = 0
  loc_152AE60: var_DC = 3
  loc_152AE69: var_12C = "RECD.QTY"
  loc_152AE72: LateIdCallSt
  loc_152AE7A: var_BC = 3
  loc_152AE89: var_DC = CVar(CInt(7)) 'Integer
  loc_152AE90: LateIdCallSt
  loc_152AE98: var_BC = 3
  loc_152AEA7: var_DC = CVar(CInt(7)) 'Integer
  loc_152AEAE: LateIdCallSt
  loc_152AEB6: var_BC = 3
  loc_152AEBF: var_DC = &H5DC
  loc_152AECB: LateIdCallSt
  loc_152AED3: var_BC = 0
  loc_152AEDC: var_DC = 4
  loc_152AEE5: var_12C = "ISS.QTY"
  loc_152AEEE: LateIdCallSt
  loc_152AEF6: var_BC = 4
  loc_152AF05: var_DC = CVar(CInt(7)) 'Integer
  loc_152AF0C: LateIdCallSt
  loc_152AF14: var_BC = 4
  loc_152AF23: var_DC = CVar(CInt(7)) 'Integer
  loc_152AF2A: LateIdCallSt
  loc_152AF32: var_BC = 4
  loc_152AF3B: var_DC = &H5DC
  loc_152AF47: LateIdCallSt
  loc_152AF4F: var_BC = 0
  loc_152AF58: var_DC = 5
  loc_152AF61: var_12C = "BALANCE"
  loc_152AF6A: LateIdCallSt
  loc_152AF72: var_BC = 5
  loc_152AF81: var_DC = CVar(CInt(7)) 'Integer
  loc_152AF88: LateIdCallSt
  loc_152AF90: var_BC = 5
  loc_152AF9F: var_DC = CVar(CInt(7)) 'Integer
  loc_152AFA6: LateIdCallSt
  loc_152AFAE: var_BC = 5
  loc_152AFB7: var_DC = &H5DC
  loc_152AFC3: LateIdCallSt
  loc_152AFCB: var_BC = 0
  loc_152AFD4: var_DC = 6
  loc_152AFDD: var_12C = "MARK"
  loc_152AFE6: LateIdCallSt
  loc_152AFEE: var_BC = 6
  loc_152AFF7: var_DC = 0
  loc_152B003: LateIdCallSt
  loc_152B00D: Set var_2B4 = Nothing 
  loc_152B025: If (var_A8.RecordCount <= 0) Then
  loc_152B02D:   global_60 = 0
  loc_152B030: End If
  loc_152B034: Set var_1F4 = Me.FGrid1
  loc_152B064: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_152B067:   var_BC = vbNullString
  loc_152B071:   Set var_1F4 = Me.FGrid1
  loc_152B082: End If
  loc_152B0B9: var_BC = ((FRow <> 0) And ((CLng(Me.FGrid1.Rows) - 1) >= CLng(FRow)))
  loc_152B0D9: Me.FGrid1.Row = CVar(CLng(IIf(var_BC, FRow, 1)))
  loc_152B127: var_BC = ((Fcol <> 0) And ((CLng(Me.FGrid1.Cols) - 1) >= CLng(Fcol)))
  loc_152B147: Me.FGrid1.Col = CVar(CLng(IIf(var_BC, Fcol, 1)))
  loc_152B163: Set var_A4 = Nothing
  loc_152B16B: Set var_A8 = Nothing
  loc_152B170: IStAd
  loc_152B174: Exit Sub
End Sub

Public Sub Proc_46_15_FC1E4C(arg_C) 'FC1E4C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FC1C99: Set var_8C = arg_C 
  loc_FC1CC1: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FC1CED: var_8C.Fields.Append "SNo", &HC8, 8
  loc_FC1D19: var_8C.Fields.Append "RoomNo", &HC8, 8
  loc_FC1D45: var_8C.Fields.Append "Status", &HC8, &HD
  loc_FC1D71: var_8C.Fields.Append "OccStatus", &HC8, &H19
  loc_FC1D9D: var_8C.Fields.Append "Remark", &HC8, &H1E
  loc_FC1DC9: var_8C.Fields.Append "MaidStation", &HC8, &H1E
  loc_FC1DF5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FC1E05: var_8C.CursorType = 3
  loc_FC1E12: var_8C.LockType = 3
  loc_FC1E31: var_8C.Open var_A0, var_B0, -1
  loc_FC1E38: Set var_8C = Nothing 
  loc_FC1E3F: Set var_88 = arg_C 
  loc_FC1E43: Proc_46_15_FC1E4C = -1
End Sub

Public Sub Proc_46_16_FC261C(arg_C) 'FC261C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FC2469: Set var_8C = arg_C 
  loc_FC2491: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FC24BD: var_8C.Fields.Append "SNo", &HC8, 8
  loc_FC24E9: var_8C.Fields.Append "CDate", &HC8, &HB
  loc_FC2515: var_8C.Fields.Append "CTime", &HC8, 5
  loc_FC2541: var_8C.Fields.Append "Description", &HC8, &HFF
  loc_FC256D: var_8C.Fields.Append "Depart", &HC8, &H23
  loc_FC2599: var_8C.Fields.Append "UName", &HC8, &HF
  loc_FC25C5: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FC25D5: var_8C.CursorType = 3
  loc_FC25E2: var_8C.LockType = 3
  loc_FC2601: var_8C.Open var_A0, var_B0, -1
  loc_FC2608: Set var_8C = Nothing 
  loc_FC260F: Set var_88 = arg_C 
  loc_FC2613: Proc_46_16_FC261C = -1
End Sub

Public Sub Proc_46_17_FA249C(arg_C) 'FA249C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FA2315: Set var_8C = arg_C 
  loc_FA233D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA2369: var_8C.Fields.Append "Date", &HC8, 8
  loc_FA2395: var_8C.Fields.Append "VrNo", &HC8, 8
  loc_FA23C1: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_FA23ED: var_8C.Fields.Append "ItemName", &HC8, &H19
  loc_FA2419: var_8C.Fields.Append "Qty", &HC8, &HC
  loc_FA2445: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA2455: var_8C.CursorType = 3
  loc_FA2462: var_8C.LockType = 3
  loc_FA2481: var_8C.Open var_A0, var_B0, -1
  loc_FA2488: Set var_8C = Nothing 
  loc_FA248F: Set var_88 = arg_C 
  loc_FA2493: Proc_46_17_FA249C = -1
End Sub

Public Sub Proc_46_18_FDEE60(arg_C) 'FDEE60
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FDEC81: Set var_8C = arg_C 
  loc_FDECA9: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FDECD5: var_8C.Fields.Append "Date", &HC8, &H19
  loc_FDED01: var_8C.Fields.Append "VrNo", &HC8, 8
  loc_FDED2D: var_8C.Fields.Append "RoomNo", &HC8, &HA
  loc_FDED59: var_8C.Fields.Append "Descrip", &HC8, &H23
  loc_FDED85: var_8C.Fields.Append "RecdQty", &HC8, &HE
  loc_FDEDB1: var_8C.Fields.Append "IssQty", &HC8, &HE
  loc_FDEDDD: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_FDEE09: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FDEE19: var_8C.CursorType = 3
  loc_FDEE26: var_8C.LockType = 3
  loc_FDEE45: var_8C.Open var_A0, var_B0, -1
  loc_FDEE4C: Set var_8C = Nothing 
  loc_FDEE53: Set var_88 = arg_C 
  loc_FDEE57: Proc_46_18_FDEE60 = -1
  loc_FDEE5D: StAryRecMove
End Sub

Public Sub Proc_46_19_FA3D8C(arg_C) 'FA3D8C
  'Data Table: 44CC18
  Dim var_8C As Recordset15
  loc_FA3C05: Set var_8C = arg_C 
  loc_FA3C2D: var_8C.Fields.Append "mLine", &HC8, &HA
  loc_FA3C59: var_8C.Fields.Append "ItemName", &HC8, &H19
  loc_FA3C85: var_8C.Fields.Append "OpBal", &HC8, &HE
  loc_FA3CB1: var_8C.Fields.Append "RecdQty", &HC8, &HE
  loc_FA3CDD: var_8C.Fields.Append "IssQty", &HC8, &HE
  loc_FA3D09: var_8C.Fields.Append "Balance", &HC8, &HE
  loc_FA3D35: var_8C.Fields.Append "Mark", &HC8, 1
  loc_FA3D45: var_8C.CursorType = 3
  loc_FA3D52: var_8C.LockType = 3
  loc_FA3D71: var_8C.Open var_A0, var_B0, -1
  loc_FA3D78: Set var_8C = Nothing 
  loc_FA3D7F: Set var_88 = arg_C 
  loc_FA3D83: Proc_46_19_FA3D8C = -1
End Sub
