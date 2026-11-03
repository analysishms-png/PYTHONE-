VERSION 5.00
Begin VB.Form FrmSMSMultiType
  Caption = "Common SMS"
  BackColor = &HC0C0FF&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 15240
  ClientHeight = 9690
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 9315
    Width = 15240
    Height = 375
    Visible = 0   'False
    TabIndex = 37
  End
  Begin CheckBox ChkMobile
    Caption = "Mobile No. *"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 13575
    Top = 345
    Width = 1515
    Height = 255
    TabIndex = 36
    Value = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrOutStanding
    Caption = "Customer's Outstanding"
    BackColor = &HC0C0FF&
    Left = 30
    Top = 315
    Width = 7305
    Height = 300
    TabIndex = 6
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 2
      Left = 5565
      Top = 30
      Width = 1710
      Height = 255
      Text = "0"
      TabIndex = 16
      BorderStyle = 0 'None
      ScrollBars = 2
      Alignment = 1 'Right Justify
      MaxLength = 160
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 1
      Left = 2595
      Top = 30
      Width = 1710
      Height = 255
      Text = "Up To Date"
      TabIndex = 15
      BorderStyle = 0 'None
      ScrollBars = 2
      Alignment = 1 'Right Justify
      MaxLength = 160
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label1
      Caption = "Outstanding :-"
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 15
      Top = 15
      Width = 1440
      Height = 255
      TabIndex = 35
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label7
      Caption = " Balance >="
      BackColor = &HC0C0FF&
      ForeColor = &H80000006&
      Left = 4425
      Top = 30
      Width = 1110
      Height = 255
      TabIndex = 18
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label6
      Caption = " Up To Date "
      BackColor = &HC0C0FF&
      ForeColor = &H80000006&
      Left = 1470
      Top = 30
      Width = 1365
      Height = 255
      TabIndex = 17
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrHoliday
    BackColor = &HC0C0FF&
    Left = 7365
    Top = 330
    Width = 4740
    Height = 300
    TabIndex = 32
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 3
      Left = 1065
      Top = 15
      Width = 3675
      Height = 255
      TabIndex = 33
      BorderStyle = 0 'None
      ScrollBars = 2
      MaxLength = 160
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin Label Label2
      Caption = "Holiday :-"
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 30
      Top = 0
      Width = 1365
      Height = 285
      TabIndex = 34
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin Frame FrOnDate
    BackColor = &HC0C0FF&
    Left = 8535
    Top = 330
    Width = 5070
    Height = 300
    TabIndex = 29
    BorderStyle = 0 'None
    Begin DTPicker DTP
      Left = 3450
      Top = -15
      Width = 1605
      Height = 315
      TabIndex = 30
    End
    Begin Label LblOnDate
      Caption = "On Date : "
      BackColor = &HC0C0FF&
      ForeColor = &H80000008&
      Left = 90
      Top = 30
      Width = 3315
      Height = 255
      TabIndex = 31
      Alignment = 1 'Right Justify
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin DataGrid DGHoliday
    Left = 6555
    Top = 9615
    Width = 4410
    Height = 5550
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin DataGrid DGCity
    Left = 2085
    Top = 9630
    Width = 4410
    Height = 5550
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 7
  End
  Begin CommandButton CmdReload
    Caption = "&Reload"
    BackColor = &HFFFFFF&
    Left = 13560
    Top = 0
    Width = 1545
    Height = 300
    TabIndex = 24
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin Frame FrMsgType
    Caption = "Frame3"
    BackColor = &H8080FF&
    Left = 0
    Top = 0
    Width = 15105
    Height = 300
    TabIndex = 19
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
    Begin OptionButton OptMsgType
      Caption = "Marriage Anniversary"
      Index = 4
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 10320
      Top = 30
      Width = 2250
      Height = 255
      TabIndex = 27
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptMsgType
      Caption = "Birthday"
      Index = 3
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 8346
      Top = 30
      Width = 1095
      Height = 255
      TabIndex = 26
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptMsgType
      Caption = "Holiday"
      Index = 2
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 6479
      Top = 30
      Width = 990
      Height = 255
      TabIndex = 23
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptMsgType
      Caption = "Outstanding"
      Index = 1
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 4132
      Top = 30
      Width = 1470
      Height = 255
      TabIndex = 22
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin OptionButton OptMsgType
      Caption = "Common"
      Index = 0
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 2130
      Top = 30
      Width = 1125
      Height = 210
      TabIndex = 21
      BeginProperty Font
        Name = "Tahoma"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label Label3
      Caption = "Message Type -->"
      BackColor = &H8080FF&
      ForeColor = &H8000000E&
      Left = 75
      Top = 15
      Width = 1875
      Height = 255
      TabIndex = 20
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin TextBox TxtSearch
    BackColor = &HFFFF80&
    Left = 3585
    Top = 2565
    Width = 2925
    Height = 240
    Visible = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    HideSelection = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin ProgressBar ProgressBar1
    Left = 3255
    Top = 8760
    Width = 9930
    Height = 195
    TabIndex = 11
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    ForeColor = &H80000012&
    Left = 3585
    Top = 1380
    Width = 1695
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdSendSms
    Caption = "[ Send SMS ]"
    Left = 13155
    Top = 8430
    Width = 1560
    Height = 405
    TabIndex = 9
    TabStop = 0   'False
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
  Begin CheckBox ChkParty
    Caption = "All Party"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 3270
    Top = 945
    Width = 1275
    Height = 255
    TabIndex = 4
    Value = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 0
    Left = 3285
    Top = 645
    Width = 11850
    Height = 255
    TabIndex = 8
    BorderStyle = 0 'None
    MaxLength = 160
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSHFlexGrid GridSel
    Index = 1
    Left = 45
    Top = 1215
    Width = 3180
    Height = 7170
    TabIndex = 2
  End
  Begin MSHFlexGrid FGrid1
    Left = 3270
    Top = 1215
    Width = 11865
    Height = 7215
    TabIndex = 3
  End
  Begin BtnEnh Head
    Left = 14715
    Top = 8400
    Width = 1320
    Height = 480
    TabIndex = 38
  End
  Begin Label Label4
    Caption = "[Max Length = 160 Character]"
    BackColor = &HC0C0FF&
    ForeColor = &H80000008&
    Left = 30
    Top = 900
    Width = 3090
    Height = 255
    TabIndex = 28
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LBLSr
    BackColor = &HFF8080&
    ForeColor = &H8000000E&
    Left = 1980
    Top = 9330
    Width = 1080
    Height = 285
    TabIndex = 25
    Alignment = 1 'Right Justify
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
  Begin Label LBLInsertInfo
    Caption = "Insert Information"
    BackColor = &HFF8080&
    ForeColor = &H8000000E&
    Left = 3270
    Top = 8460
    Width = 9885
    Height = 285
    TabIndex = 14
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LBLSendINFORMATION
    BackColor = &HFFC0C0&
    ForeColor = &H8000000E&
    Left = 60
    Top = 8430
    Width = 3090
    Height = 1185
    TabIndex = 5
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label5
    Caption = "Note : [1] : Select Only One Group At a Time to Send Message"
    BackColor = &H8080FF&
    ForeColor = &H8000000E&
    Left = 4605
    Top = 945
    Width = 10530
    Height = 255
    TabIndex = 1
    Alignment = 2 'Center
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblMessage
    Caption = "[Common  Message Write ]"
    BackColor = &HC0C0FF&
    ForeColor = &H80000008&
    Left = 30
    Top = 645
    Width = 3090
    Height = 255
    TabIndex = 0
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "FrmSMSMultiType"

Private global_100 As Integer
Private global_102 As Integer
Private global_136 As Integer
Private global_52 As Integer
Private global_138 As Integer

Private Sub CmdReload_Click() 'E1F220
  'Data Table: 50D6D4
  loc_E1F204: Call Proc_235_38_16C7014()
  loc_E1F211: var_88 = "+{Tab}"
  loc_E1F217: Proc_303_0_FB9B68(var_88)
  loc_E1F21F: Exit Sub
End Sub

Private Sub Form_Load() '132D88C
  'Data Table: 50D6D4
  Dim unk_50D717 As Connection15
  Dim var_AC As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_98 As Variant
  Dim Me As Variant
  Dim var_C4 As String
  Dim var_CC As String
  Dim var_D4 As Field20
  Dim var_F4 As Variant
  Dim var_A8 As Variant
  Dim var_130 As String
  Dim var_E4 As Variant
  Dim var_110 As MSHFlexGrid
  loc_132D0FB: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_132D116: unk_50D717.Execute "Select * from SMSEnviro", var_A8, -1
  loc_132D127: Set global_60 = var_AC
  loc_132D135: Call Proc_235_39_1345F14(var_AC)
  loc_132D147: Me.LBLSendINFORMATION.Caption = "Message Status ................"
  loc_132D15C: Me.LBLInsertInfo.Caption = vbNullString
  loc_132D173: Set var_AC = Me.OptMsgType
  loc_132D179: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_132D181: var_B0.Value = True
  loc_132D197: Set global_96 = New 
  loc_132D1A9: Me.Recordset15.CursorLocation = 3
  loc_132D1DF: CVarUnk
  loc_132D1E4: VerifyVarObj
  loc_132D1EA: Set var_AC = Me.DGCity
  loc_132D1F0: LateIdStAd
  loc_132D21A: Me.DGCity.CursorLocation = 3
  loc_132D242: elect CityCode As CityCode,CityName as CityName From City order by CityName", CVar(MemVar_1F92044), 3 "Select Substring(Remarks,1,5) As HCode,Remarks as HName,Substring(Remarks,1,5) as SName From Holiday order by HName", CVar(MemVar_1F92044), 3
  loc_132D250: CVarUnk
  loc_132D255: VerifyVarObj
  loc_132D25B: Set var_AC = Me.DGHoliday
  loc_132D261: LateIdStAd
  loc_132D287: Call 0.Method_Form_Load0 (1, var_B0, 1, Me.GridSel, New, 1)
  loc_132D28F: var_B0.Rows = -1
  loc_132D2A0: global_138 = 1
  loc_132D2A9: var_C0 = 0
  loc_132D2D4: var_CC = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_132D2E4: unk_50D717.Execute var_CC & "' AND [Option]='Front Office' AND Flag='N'", var_A8, -1
  loc_132D2EC: var_AC = var_AC.Fields
  loc_132D2F4: var_C0 = var_B0.Item(var_B0)
  loc_132D2FC: var_D4 = var_D4.Value
  loc_132D327: If (var_E4 > 0) Then
  loc_132D32D:   var_88 = " Union All Select 'GUEST' GroupCode,'GUEST' GroupName,'Guest' Nature,'Guest' CompanyType "
  loc_132D330: End If
  loc_132D336: var_C0 = 0
  loc_132D361: var_CC = "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & "' AND CompCode='" & MemVar_1F92128
  loc_132D371: unk_50D717.Execute var_CC & "' AND [Option]='PayRoll' AND Flag='N'", var_A8, -1
  loc_132D379: var_AC = var_AC.Fields
  loc_132D381: var_C0 = var_B0.Item(var_B0)
  loc_132D389: var_D4 = var_D4.Value
  loc_132D3B4: If (var_E4 > 0) Then
  loc_132D3BE:   var_88 = var_88 & " Union All Select 'EMPLOYEE' GroupCode,'EMPLOYEE' GroupName,'Employee' Nature,'Employee' CompanyType "
  loc_132D3C1: End If
  loc_132D3D5: var_C4 = "Select Distinct AcGroup.GroupCode,Case When SubGroup.CompanyType='Corporate' Then 'COMPANY' When SubGroup.CompanyType='Travel Agency' Then 'TRAVEL AGENT' When IsNull(MemCatMast.Name,'')<>'' Then 'MEM-'+IsNull(MemCatMast.Name,'') Else AcGroup.GroupName End GroupName,SubGroup.Nature,SubGroup.CompanyType from ACGROUP left Join SubGroup on ACGroup.GroupCode=SubGroup.GroupCode Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code where SubGroup.Nature In ('Customer','Supplier') And SubGroup.ActiveYN=1 " & var_88
  loc_132D3E5: unk_50D717.Execute "SELECT Count(*) FROM MenuHelp WHERE Opt2=0 AND Opt3=0 AND Opt4=0 AND UserName='" & MemVar_1F920C8 & " Order By GroupName", var_A8, -1
  loc_132D3F6: Set global_88 = var_AC
  loc_132D437: If ((Me.RecordCount > 0) And (Me.EOF = 0)) Then
  loc_132D451:   If (Me.RecordCount > 0) Then
  loc_132D454:     ' Referenced from: 132D715
  loc_132D466:     If Not(Me.EOF) Then
  loc_132D47E:       Call 0.Method_Form_Load0 (1, var_B0, vbNullString, Me.GridSel, var_E4, var_E4)
  loc_132D49E:       Set var_AC = Me.GridSel
  loc_132D4A4:       Call 0.Method_Form_Load0 (1, var_B0, GridSel.DispID_10000, global_138)
  loc_132D4AC:       Set var_110 = var_B0
  loc_132D4B9:       var_98 = CVar(CLng(global_138)) 'Long
  loc_132D4C1:       var_F4 = CVar(CLng(0)) 'Long
  loc_132D4CE:       var_A8 = CVar(CStr(global_138)) 'String
  loc_132D4D5:       LateIdCallSt
  loc_132D4E7:       var_98 = CVar(CLng(global_138)) 'Long
  loc_132D4FD:       LateIdCallSt
  loc_132D51C:       var_98 = "GroupCode"
  loc_132D544:       var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item(var_98)), CVar(CLng(2)), CVar(CLng(global_138)), var_110, vbNullString, CVar(CLng(1)), var_98)) 'String
  loc_132D54B:       LateIdCallSt
  loc_132D59C:       var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("GroupName")), CVar(CLng(3)), CVar(CLng(global_138)), var_110, var_E4, var_110)) 'String
  loc_132D5A3:       LateIdCallSt
  loc_132D5F4:       var_E4 = CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("Nature")), CVar(CLng(4)), CVar(CLng(global_138)), var_110, var_E4)) 'String
  loc_132D5FB:       LateIdCallSt
  loc_132D63B:       var_B0 = Me.Fields.Item("CompanyType")
  loc_132D643:       var_A8 = CVar(var_B0) 'Address
  loc_132D653:       LateIdCallSt
  loc_132D674:       var_110.Row = CVar(CLng(global_138))
  loc_132D684:       var_110.Col = CVar(CLng(1))
  loc_132D692:       var_110.CellFontName = "wingdings"
  loc_132D6A2:       var_110.CellFontSize = CVar(CDbl(&HC))
  loc_132D6B0:       Set var_AC = Me.GridSel
  loc_132D6B6:       Call 0.Method_Form_Load0 (1, var_B0, var_110, CVar(Proc_6_38_E68A98(var_A8, CVar(CLng(5)), CVar(CLng(global_138)), var_110, var_E4)), var_A8)
  loc_132D6CD:       var_98 = CVar((CLng(var_B0.Rows) - 1)) 'Long
  loc_132D6D5:       var_F4 = CVar(CLng(1)) 'Long
  loc_132D6DA:       var_130 = "¨"
  loc_132D6E3:       LateIdCallSt
  loc_132D6F7:       Set var_110 = Nothing 
  loc_132D707:       global_138 = (global_138 + 1)
  loc_132D710:       Me.MoveNext
  loc_132D715:       GoTo loc_132D454
  loc_132D718:     End If
  loc_132D72A:     Set var_AC = Me.GridSel
  loc_132D730:     Call 0.Method_Form_Load0 (1, var_B0, 1, global_138, var_110, var_130)
  loc_132D738:     var_B0.FixedRows = var_F4
  loc_132D744:   End If
  loc_132D744: End If
  loc_132D744: var_98 = "Add"
  loc_132D754: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E(var_98)
  loc_132D75D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_F4)
  loc_132D770: Call 0.Method_Me4 (CDbl(15250), var_98)
  loc_132D77D: Call 0.Method_MeC (CDbl(10200), Me.TopCtrl1)
  loc_132D789: Call 0.Method_arg_7C (CDbl(0))
  loc_132D795: Call 0.Method_arg_74 (CDbl(0))
  loc_132D7AB: Me.DTP.MinDate = MemVar_1F920F4
  loc_132D7DE: Me.DTP.MaxDate = CDate(CDate(DateAdd("d", CDbl(7), MemVar_1F920FC)))
  loc_132D7FB: Me.DTP.Value = CDate(MemVar_1F920EC)
  loc_132D811: Set var_AC = Me.Txt
  loc_132D817: Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_132D81F: var_B0.Text = vbNullString
  loc_132D83E: Set var_AC = Me.Txt
  loc_132D844: Call 0.Method_Form_Load0 (CInt(1), var_B0)
  loc_132D84C: var_B0.Text = CStr(MemVar_1F920EC)
  loc_132D86D: Set var_AC = Me.Txt
  loc_132D873: Call 0.Method_Form_Load0 (CInt(2), var_B0)
  loc_132D87B: var_B0.Text = CStr(0)
  loc_132D88A: Exit Sub
End Sub

Private Sub Form_Terminate() 'E12724
  'Data Table: 50D6D4
  loc_E1271B: Set global_60 = Nothing
  loc_E12722: Exit Sub
End Sub

Private Sub ChkMobile_Click() 'DFFB4C
  'Data Table: 50D6D4
  loc_DFFB44: Call Proc_235_40_EA93E0()
  loc_DFFB49: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_0(Index As Integer) 'E4EA90
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  loc_E4EA73: Set var_88 = Me.GridSel
  loc_E4EA79: Call 0.Method_GridSel_UnknownEvent_00 (Index, var_8C)
  loc_E4EA81: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E4EA8D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_8(Index As Integer) 'E4E7B8
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  loc_E4E79B: Set var_88 = Me.GridSel
  loc_E4E7A1: Call 0.Method_GridSel_UnknownEvent_80 (Index, var_8C)
  loc_E4E7A9: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4E7B5: Exit Sub
  loc_E4E7B6:  = 
End Sub

Public Sub GridSel_UnknownEvent_9(Index As Integer) '122D3EC
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  Dim var_A4 As MSHFlexGrid
  Dim var_C4 As Variant
  loc_122CEDA: Set var_88 = Me.GridSel
  loc_122CEE0: Call 0.Method_GridSel_UnknownEvent_90 (Index)
  loc_122CF01: Set var_A0 = Me.GridSel
  loc_122CF07: Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4)
  loc_122CF2F: If ((CLng(var_8C.Row) > 0) And (CLng(var_A4.Col) = CLng(1))) Then
  loc_122CF3C:   Set var_88 = Me.GridSel
  loc_122CF42:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122CF62:   Set var_A0 = Me.GridSel
  loc_122CF68:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4)
  loc_122CF70:   var_A4.Row = CVar(CLng(var_8C.Row))
  loc_122CF95:   Set var_88 = Me.GridSel
  loc_122CF9B:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122CFA3:   var_8C.Col = CVar(CLng(1))
  loc_122CFBF:   Set var_88 = Me.GridSel
  loc_122CFC5:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122CFCD:   var_8C.CellFontName = "wingdings"
  loc_122CFEB:   Set var_88 = Me.GridSel
  loc_122CFF1:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122CFF9:   var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_122D00B:   global_64 = vbNullString
  loc_122D015:   global_68 = vbNullString
  loc_122D01F:   global_72 = vbNullString
  loc_122D02D:   Set var_88 = Me.GridSel
  loc_122D033:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D044:   var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D05B:   Set var_A0 = Me.GridSel
  loc_122D061:   Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(1)))
  loc_122D091:   If (CStr(var_A4.TextMatrix)) = "¨") Then
  loc_122D09E:     Set var_88 = Me.GridSel
  loc_122D0A4:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D0B5:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D0D2:     Set var_A0 = Me.GridSel
  loc_122D0D8:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, "þ", CVar(CLng(1)))
  loc_122D0E0:     LateIdCallSt
  loc_122D108:     Set var_88 = Me.GridSel
  loc_122D10E:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, global_138, 1)
  loc_122D130:     For var_11C = var_C4 To CInt((CLng(var_8C.Rows) - 1)): var_A4 = var_11C 'Integer
  loc_122D147:       Set var_88 = Me.GridSel
  loc_122D14D:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, CLng(global_138))
  loc_122D169:       If (var_C4 <> CLng(var_8C.Row)) Then
  loc_122D173:         var_C4 = CVar(CLng(global_138)) 'Long
  loc_122D190:         Set var_88 = Me.GridSel
  loc_122D196:         Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, "¨", CVar(CLng(1)))
  loc_122D19E:         LateIdCallSt
  loc_122D1AD:       End If
  loc_122D1B3:     Next var_11C 'Integer
  loc_122D1C2:     Set var_88 = Me.GridSel
  loc_122D1C8:     Call 0.Method_GridSel_UnknownEvent_90 (Index)
  loc_122D1D9:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D1F0:     Set var_A0 = Me.GridSel
  loc_122D1F6:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(2)))
  loc_122D20F:     global_64 = CStr(var_A4.TextMatrix))
  loc_122D232:     Set var_88 = Me.GridSel
  loc_122D238:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D260:     Set var_A0 = Me.GridSel
  loc_122D266:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(4)))
  loc_122D27F:     global_68 = CStr(var_A4.TextMatrix))
  loc_122D2A2:     Set var_88 = Me.GridSel
  loc_122D2A8:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C, CVar(CLng(var_8C.Row)))
  loc_122D2D0:     Set var_A0 = Me.GridSel
  loc_122D2D6:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(5)))
  loc_122D2EF:     global_72 = CStr(var_A4.TextMatrix))
  loc_122D308:     Call Proc_235_38_16C7014(CVar(CLng(var_8C.Row)), CVar(CLng(var_8C.Row)))
  loc_122D310:   Else
  loc_122D31A:     Set var_88 = Me.GridSel
  loc_122D320:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D331:     var_C4 = CVar(CLng(var_8C.Row)) 'Long
  loc_122D348:     Set var_A0 = Me.GridSel
  loc_122D34E:     Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, CVar(CLng(1)))
  loc_122D37E:     If (CStr(var_A4.TextMatrix)) = "þ") Then
  loc_122D38B:       Set var_88 = Me.GridSel
  loc_122D391:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_8C)
  loc_122D3BF:       Set var_A0 = Me.GridSel
  loc_122D3C5:       Call 0.Method_GridSel_UnknownEvent_90 (Index, var_A4, "¨", CVar(CLng(1)))
  loc_122D3CD:       LateIdCallSt
  loc_122D3E3:       Call Proc_235_38_16C7014(var_A4, CVar(CLng(var_8C.Row)))
  loc_122D3E8:     End If
  loc_122D3E8:   End If
  loc_122D3E8: End If
  loc_122D3E8: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(arg_C, arg_10) '106BA94
  'Data Table: 50D6D4
  Dim var_98 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_168 As MSHFlexGrid
  Dim var_190 As Variant
  Dim var_1E2 As Integer
  Dim var_86 As Integer
  loc_106B83A: If (arg_10 = &HD) Then
  loc_106B84B:   Proc_303_0_FB9B68("	")
  loc_106B853: End If
  loc_106B85D: Set var_94 = Me.GridSel
  loc_106B863: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B884: If (CLng(var_98.Rows) < 1) Then
  loc_106B887:   Exit Sub
  loc_106B888: End If
  loc_106B89C: Set var_94 = Me.GridSel
  loc_106B8A2: Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B8C4: If ((CLng(arg_10) = &H20) And (CLng(var_98.Col) = 0)) Then
  loc_106B8D7:   Set var_94 = Me.GridSel
  loc_106B8DD:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B8E5:   var_98.CellFontName = "WINGDINGS"
  loc_106B903:   Set var_94 = Me.GridSel
  loc_106B909:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B911:   var_98.CellFontSize = CVar(CDbl(&HE))
  loc_106B927:   Set var_94 = Me.GridSel
  loc_106B92D:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98)
  loc_106B93E:   var_B8 = CVar(CLng(var_98.Row)) 'Long
  loc_106B956:   Set var_CC = Me.GridSel
  loc_106B95C:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_D0, 0)
  loc_106B964:   var_100 = var_D0.TextMatrix)
  loc_106B97A:   Set var_164 = Me.GridSel
  loc_106B980:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_168, var_100)
  loc_106B991:   var_190 = CVar(CLng(var_168.Row)) 'Long
  loc_106B9DF:   Set var_17C = Me.GridSel
  loc_106B9E5:   Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_180, CVar(CStr(IIf((CStr(var_100) = "ü"), " ", "ü"))), 0)
  loc_106B9ED:   LateIdCallSt
  loc_106BA21:   var_1E2 = arg_C
  loc_106BA2A:   If (var_1E2 = 1) Then
  loc_106BA3E:     var_86 = CInt((UBound(global_108, 1) + 1))
  loc_106BA50:     ReDim Preserve global_108(0 To CLng(var_86))
  loc_106BA64:     Set var_94 = Me.GridSel
  loc_106BA6A:     Call 0.Method_GridSel_UnknownEvent_A0 (arg_C, var_98, var_86, var_1E2)
  loc_106BA86:     global_108(CLng(var_86)) = CInt(CLng(var_98.Row))
  loc_106BA91:   End If
  loc_106BA91: End If
  loc_106BA91: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_E(Index As Integer) 'E819C8
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  loc_E8196A: Set var_88 = Me.GridSel
  loc_E81970: Call 0.Method_GridSel_UnknownEvent_E0 (Index)
  loc_E81991: If (CLng(var_8C.Col) <> 0) Then
  loc_E81994:   Exit Sub
  loc_E81995: End If
  loc_E8199F: Set var_88 = Me.GridSel
  loc_E819A5: Call 0.Method_GridSel_UnknownEvent_E0 (Index, var_8C)
  loc_E819BA: global_100 = CInt(CLng(var_8C.Row))
  loc_E819C7: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_10(Index As Integer) '106B7DC
  'Data Table: 50D6D4
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_160 As Variant
  Dim var_1B2 As Integer
  Dim var_86 As Integer
  loc_106B56E: Set var_8C = Me.GridSel
  loc_106B574: Call 0.Method_GridSel_UnknownEvent_100 (Index)
  loc_106B59F: If ((CLng(var_90.Col) <> 0) Or (global_100 = 0)) Then
  loc_106B5A2:   Exit Sub
  loc_106B5A3: End If
  loc_106B5AD: Set var_8C = Me.GridSel
  loc_106B5B3: Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_106B5C8: global_102 = CInt(CLng(var_90.RowSel))
  loc_106B5E4: For var_A4 = global_100 To global_102: var_88 = var_A4 'Integer
  loc_106B5FD:   Set var_8C = Me.GridSel
  loc_106B603:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, CVar(CLng(var_88)))
  loc_106B62A:   Set var_8C = Me.GridSel
  loc_106B630:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_106B638:   var_90.Col = global_102
  loc_106B654:   Set var_8C = Me.GridSel
  loc_106B65A:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_106B662:   var_90.CellFontName = "WINGDINGS"
  loc_106B680:   Set var_8C = Me.GridSel
  loc_106B686:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90)
  loc_106B68E:   var_90.CellFontSize = CVar(CDbl(&HE))
  loc_106B69E:   var_B4 = CVar(CLng(var_88)) 'Long
  loc_106B6B6:   Set var_8C = Me.GridSel
  loc_106B6BC:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, 0)
  loc_106B6D4:   var_160 = CVar(CLng(var_88)) 'Long
  loc_106B722:   Set var_14C = Me.GridSel
  loc_106B728:   Call 0.Method_GridSel_UnknownEvent_100 (Index, var_150, CVar(CStr(IIf((CStr(var_90.TextMatrix)) = "ü"), " ", "ü"))), 0)
  loc_106B730:   LateIdCallSt
  loc_106B758:   var_1B2 = Index
  loc_106B761:   If (var_1B2 = 1) Then
  loc_106B775:     var_86 = CInt((UBound(global_108, 1) + 1))
  loc_106B787:     ReDim Preserve global_108(0 To CLng(var_86))
  loc_106B79B:     Set var_8C = Me.GridSel
  loc_106B7A1:     Call 0.Method_GridSel_UnknownEvent_100 (Index, var_90, var_86, var_1B2, var_150)
  loc_106B7BD:     global_108(CLng(var_86)) = CInt(CLng(global_100))
  loc_106B7C8:   End If
  loc_106B7CB: Next var_A4 'Integer
  loc_106B7D5: global_100 = 0
  loc_106B7D8: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_13(Index As Integer) 'E50358
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  loc_E5033B: Set var_88 = Me.GridSel
  loc_E50341: Call 0.Method_GridSel_UnknownEvent_130 (Index, var_8C)
  loc_E50349: var_8C.CellBackColor = CVar(CLng("16777152"))
  loc_E50355: Exit Sub
  loc_E50356: Set arg_5C00 = 
End Sub

Public Sub GridSel_UnknownEvent_14(Index As Integer) 'E4EBC8
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  loc_E4EBAB: Set var_88 = Me.GridSel
  loc_E4EBB1: Call 0.Method_GridSel_UnknownEvent_140 (Index, var_8C)
  loc_E4EBB9: var_8C.CellBackColor = CVar(CLng("15595518"))
  loc_E4EBC5: Exit Sub
End Sub

Private Sub OptMsgType_Click(Index As Integer) '11D4030
  'Data Table: 50D6D4
  Dim var_88 As Variant
  Dim var_8C As Variant
  Dim var_94 As String
  Dim var_98 As Variant
  Dim var_9A As Integer
  Dim Me As Recordset15
  Dim var_114 As Variant
  loc_11D3BD0: Call Proc_235_41_E84088()
  loc_11D3BE2: Me.LblOnDate.Caption = "On Date : "
  loc_11D3BF6: Me.FrOnDate.Visible = False
  loc_11D3C0A: Me.FrOutStanding.Visible = False
  loc_11D3C1E: Me.FrHoliday.Visible = False
  loc_11D3C33: Set var_88 = Me.OptMsgType
  loc_11D3C39: Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3C4D: var_94 = var_8C.Caption & " Message :-"
  loc_11D3C5A: Me.LblMessage.Caption = var_94
  loc_11D3C7D: Set var_88 = Me.Txt
  loc_11D3C83: Call 0.Method_OptMsgType_Click0 (CInt(0), var_8C)
  loc_11D3C8B: var_8C.Text = vbNullString
  loc_11D3C97: Call Proc_235_40_EA93E0()
  loc_11D3C9F: var_9A = Index
  loc_11D3CAC: If (var_9A = CInt(0)) Then
  loc_11D3CB5:   global_76 = "Common"
  loc_11D3CBF:   global_80 = "COMMO"
  loc_11D3CD1:   Set var_88 = Me.Txt
  loc_11D3CD7:   Call 0.Method_OptMsgType_Click0 (CInt(3), var_8C)
  loc_11D3CDF:   var_8C.Text = vbNullString
  loc_11D3CF9:   Set var_88 = Me.Txt
  loc_11D3CFF:   Call 0.Method_OptMsgType_Click0 (CInt(3), var_8C)
  loc_11D3D07:   var_8C.Tag = vbNullString
  loc_11D3D16: Else
  loc_11D3D20:   If (var_9A = CInt(1)) Then
  loc_11D3D4B:     var_8C = Me.Fields.Item("OutStandingMsg")
  loc_11D3D97:     Set var_98 = Me.Txt
  loc_11D3D9D:     Call 0.Method_OptMsgType_Click0 (CInt(0), var_114)
  loc_11D3DA5:     var_114.Text = CStr(IIf((Me.RecordCount > 0), CVar(Proc_6_38_E68A98(CVar(var_8C))), vbNullString))
  loc_11D3DD4:     Set var_88 = Me.OptMsgType
  loc_11D3DDA:     Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3DF4:     Me.FrOutStanding.Left = var_8C.Left
  loc_11D3E08:     global_76 = "Outstanding"
  loc_11D3E12:     global_80 = "OUTST"
  loc_11D3E22:     Me.FrOutStanding.Visible = True
  loc_11D3E2D:   Else
  loc_11D3E37:     If (var_9A = CInt(2)) Then
  loc_11D3E47:       Set var_88 = Me.OptMsgType
  loc_11D3E4D:       Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3E67:       Me.FrHoliday.Left = var_8C.Left
  loc_11D3E7B:       global_76 = "Holiday"
  loc_11D3E85:       global_80 = "HOLID"
  loc_11D3E95:       Me.FrHoliday.Visible = True
  loc_11D3EA0:     Else
  loc_11D3EAA:       If (var_9A = CInt(3)) Then
  loc_11D3EBA:         Set var_98 = Me.OptMsgType
  loc_11D3EC0:         Call 0.Method_OptMsgType_Click0 (Index, var_114)
  loc_11D3EEC:         Set var_88 = Me.OptMsgType
  loc_11D3EF2:         Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3F15:         Me.FrOnDate.Left = ((var_8C.Left + var_114.Width) - Me.FrOnDate.Width)
  loc_11D3F36:         Me.LblOnDate.Caption = "Birth Day On Date :       "
  loc_11D3F44:         global_76 = "Birth Day"
  loc_11D3F4E:         global_80 = "BIRTH"
  loc_11D3F5E:         Me.FrOnDate.Visible = True
  loc_11D3F69:       Else
  loc_11D3F73:         If (var_9A = CInt(4)) Then
  loc_11D3F83:           Set var_98 = Me.OptMsgType
  loc_11D3F89:           Call 0.Method_OptMsgType_Click0 (Index, var_114)
  loc_11D3FB5:           Set var_88 = Me.OptMsgType
  loc_11D3FBB:           Call 0.Method_OptMsgType_Click0 (Index, var_8C)
  loc_11D3FDE:           Me.FrOnDate.Left = ((var_8C.Left + var_114.Width) - Me.FrOnDate.Width)
  loc_11D3FFF:           Me.LblOnDate.Caption = "Marriage Anniversary On Date :         "
  loc_11D400D:           global_76 = "Marriage Anniversary"
  loc_11D4017:           global_80 = "MARRI"
  loc_11D4027:           Me.FrOnDate.Visible = True
  loc_11D402F:         End If
  loc_11D402F:       End If
  loc_11D402F:     End If
  loc_11D402F:   End If
  loc_11D402F: End If
  loc_11D402F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5EC34
  'Data Table: 50D6D4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5EBFF: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5EC12: Set var_A8 = Me.TxtGrid
  loc_E5EC18: Call 0.Method_Fgrid1_UnknownEvent_00 (0, var_AC)
  loc_E5EC20: var_AC.Visible = False
  loc_E5EC2C: Call Proc_235_41_E84088()
  loc_E5EC31: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_8 'E1F360
  'Data Table: 50D6D4
  loc_E1F357: Me.FGrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1F35F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 '1007044
  'Data Table: 50D6D4
  Dim var_8C As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_100 As String
  loc_1006E3F: Set var_88 = Me.TxtGrid
  loc_1006E45: Call 0.Method_Fgrid1_UnknownEvent_90 (0, var_8C)
  loc_1006E4D: var_8C.Visible = False
  loc_1006E98: If ((CLng(Me.FGrid1.Row) > 0) And (CLng(Me.FGrid1.Col) = CLng(1))) Then
  loc_1006EBD:   Me.FGrid1.Row = CVar(CLng(Me.FGrid1.Row))
  loc_1006EDE:   Me.FGrid1.Col = CVar(CLng(1))
  loc_1006EF6:   Me.FGrid1.CellFontName = "wingdings"
  loc_1006F10:   Me.FGrid1.CellFontSize = CVar(CDbl(&HD))
  loc_1006F2B:   var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1006F33:   var_DC = CVar(CLng(1)) 'Long
  loc_1006F66:   If (CStr(Me.FGrid1.TextMatrix)) = "¨") Then
  loc_1006F7C:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1006F84:     var_DC = CVar(CLng(1)) 'Long
  loc_1006F89:     var_100 = "þ"
  loc_1006F93:     Set var_8C = Me.FGrid1
  loc_1006F99:     LateIdCallSt
  loc_1006FAE:   Else
  loc_1006FC1:     var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_1006FC9:     var_DC = CVar(CLng(1)) 'Long
  loc_1006FFC:     If (CStr(Me.FGrid1.TextMatrix)) = "þ") Then
  loc_1007012:       var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_100701A:       var_DC = CVar(CLng(1)) 'Long
  loc_100701F:       var_100 = "¨"
  loc_1007029:       Set var_8C = Me.FGrid1
  loc_100702F:       LateIdCallSt
  loc_1007041:     End If
  loc_1007041:   End If
  loc_1007041: End If
  loc_1007041: Exit Sub
  loc_1007042: var_8C(var_100) = var_DC
End Sub

Public Sub Fgrid1_UnknownEvent_A(arg_C, arg_10) '121AF8C
  'Data Table: 50D6D4
  Dim var_98 As Variant
  Dim var_C4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_BC As String
  Dim arg_C As Integer
  Dim var_16C As Boolean
  Dim var_F8 As Variant
  Dim var_14C As String
  Dim var_180 As Long
  Dim var_184 As Long
  Dim MemVar_0 As Integer
  loc_121AAC0: On Error Goto loc_121AF83
  loc_121AAC7: Set var_88 = Me.TopCtrl1
  loc_121AACD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_6803000E()
  loc_121AAE2: If ( = "Browse") Then
  loc_121AAE5:   Exit Sub
  loc_121AAE6: End If
  loc_121AB5A: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_121AB65:   var_BC = "+{Tab}"
  loc_121AB6B:   Proc_303_0_FB9B68(CStr(Me.FGrid1.Tag), 0)
  loc_121AB75:   arg_C = 0
  loc_121AB7B: Else
  loc_121ABD2:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_121ABD5:   End If
  loc_121ABD5: End If
  loc_121ABDF: If (CLng(arg_C) = &H20) Then
  loc_121ABFF:   If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_121AC33:     var_16C = ((CLng(Me.FGrid1.Col) = CLng(1)) And (CLng(Me.FGrid1.Row) > 0))
  loc_121AC4A:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121ACA6:     If CBool(CVar(CLng(3)) And (Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString)) Then
  loc_121ACB9:       Me.FGrid1.CellFontName = "wingdings"
  loc_121ACD3:       Me.FGrid1.CellFontSize = CVar(CDbl(&HC))
  loc_121ACEE:       var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121AD06:       var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121AD3D:       If (CStr(Me.FGrid1.TextMatrix)) = "þ") Then
  loc_121AD53:         var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121AD6B:         var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121AD70:         var_14C = "¨"
  loc_121AD7A:         Set var_C4 = Me.FGrid1
  loc_121AD80:         LateIdCallSt
  loc_121AD9B:       Else
  loc_121ADAE:         var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121ADC6:         var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121ADCB:         var_14C = "þ"
  loc_121ADD5:         Set var_C4 = Me.FGrid1
  loc_121ADDB:         LateIdCallSt
  loc_121ADF3:       End If
  loc_121ADF3:     End If
  loc_121ADF3:   End If
  loc_121ADF3: End If
  loc_121ADF9: global_136 = arg_C
  loc_121AE1F: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_121AE43: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_121AE59:   var_180 = CLng(Me.FGrid1.Col)
  loc_121AE69:   If Not (var_180 = CLng(5)) Then
  loc_121AE73:     If Not (var_180 = CLng(6)) Then
  loc_121AE7D:       If (var_180 = CLng(3)) Then
  loc_121AE80:       End If
  loc_121AE80:     End If
  loc_121AE93:     var_98 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_121AEAB:     var_F8 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_121AEB0:     var_14C = vbNullString
  loc_121AEBA:     Set var_C4 = Me.FGrid1
  loc_121AEC0:     LateIdCallSt
  loc_121AED8:   End If
  loc_121AED8: End If
  loc_121AEE2: If (CLng(arg_C) = &HD) Then
  loc_121AEF8:   var_184 = CLng(Me.FGrid1.Col)
  loc_121AF08:   If Not (var_184 = CLng(5)) Then
  loc_121AF12:     If Not (var_184 = CLng(6)) Then
  loc_121AF1C:       If (var_184 = CLng(3)) Then
  loc_121AF1F:       End If
  loc_121AF1F:     End If
  loc_121AF60:     Proc_6_61_1077428(Me, Me.FGrid1, Me.TxtGrid, 0, 0, 0, var_184, Me.TxtGrid)
  loc_121AF75:   End If
  loc_121AF7A:   global_52 = 0
  loc_121AF7D: End If
  loc_121AF7F: arg_C = 0
  loc_121AF82: Exit Sub
  loc_121AF83: ' Referenced from: 121AAC0
  loc_121AF83: Proc_6_60_E62BC4(arg_C, global_52, var_14C, var_F8, var_98)
  loc_121AF88: Exit Sub
  loc_121AF89: MemVar_0 = var_180
End Sub

Private Sub Fgrid1_UnknownEvent_B 'EC8814
  'Data Table: 50D6D4
  Dim var_9C As Long
  loc_EC877C: On Error Goto loc_EC880E
  loc_EC8792: var_9C = CLng(Me.FGrid1.Col)
  loc_EC87A2: If Not (var_9C = CLng(5)) Then
  loc_EC87AC:   If (var_9C = CLng(6)) Then
  loc_EC87AF:   End If
  loc_EC87C7:   var_AC = 0
  loc_EC87F0:   Proc_6_61_1077428(Me, Me.FGrid1, Me.TxtGrid, 0)
  loc_EC8805: End If
  loc_EC880A: global_52 = 0
  loc_EC880D: Exit Sub
  loc_EC880E: ' Referenced from: EC877C
  loc_EC880E: Proc_6_60_E62BC4(global_52, var_AC)
  loc_EC8813: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_C(Index As Integer) 'F74A5C
  'Data Table: 50D6D4
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F74920: On Error Goto loc_F74A55
  loc_F74936: var_9C = CLng(Me.FGrid1.Col)
  loc_F74946: If Not (var_9C = CLng(5)) Then
  loc_F74950:   If (var_9C = CLng(6)) Then
  loc_F74953:   End If
  loc_F74991:   Proc_6_63_110ABA4(Me, Me.FGrid1, Me.TxtGrid, 0)
  loc_F749A6: Else
  loc_F749AD:   If (var_9C = CLng(3)) Then
  loc_F749F0:     Proc_6_112_1128580(Me.TxtSearch, Me.FGrid1, global_84, Index, "PartyName", CLng("16777152"))
  loc_F74A0D:     If (CLng(Index) = &HD) Then
  loc_F74A22:       Me.FGrid1.Col = CVar(CLng(1))
  loc_F74A2E:       Set var_88 = Me.FGrid1
  loc_F74A3F:     End If
  loc_F74A3F:   End If
  loc_F74A3F: End If
  loc_F74A49: If (CLng(Index) <> &HD) Then
  loc_F74A51:   global_52 = &HFF
  loc_F74A54: End If
  loc_F74A54: Exit Sub
  loc_F74A55: ' Referenced from: F74920
  loc_F74A55: Proc_6_60_E62BC4(global_52, FGrid1.DispID_8001, CLng("15595518"), 0)
  loc_F74A5A: Exit Sub
End Sub

Public Sub Fgrid1_UnknownEvent_D(arg_C, arg_10) '100C6AC
  'Data Table: 50D6D4
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_DC As Long
  loc_100C498: On Error Goto loc_100C6A4
  loc_100C4B8: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_100C4BB:   Exit Sub
  loc_100C4BC: End If
  loc_100C4CD: If ((CLng(arg_C) = &H44) And (arg_10 = 2)) Then
  loc_100C4EF:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_100C529:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_100C54B:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_100C561:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_100C56A:         Set var_110 = Me.FGrid1
  loc_100C585:       Else
  loc_100C598:         Me.FGrid1.Rows = 1
  loc_100C5B5:         var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_100C5BD:         Set var_110 = Me.FGrid1
  loc_100C5EC:         Me.FGrid1.FixedRows = 1
  loc_100C5F4:       End If
  loc_100C619:       For var_114 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_114 'Integer
  loc_100C623:         var_AC = CVar(CLng(var_86)) 'Long
  loc_100C628:         var_DC = 0
  loc_100C636:         var_9C = CVar(CStr(var_86)) 'String
  loc_100C63E:         Set var_8C = Me.FGrid1
  loc_100C644:         LateIdCallSt
  loc_100C655:       Next var_114 'Integer
  loc_100C65A:     End If
  loc_100C65D:   Else
  loc_100C67E:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_100C68E:   End If
  loc_100C692:   Set var_8C = Me.FGrid1
  loc_100C6A3: End If
  loc_100C6A3: Exit Sub
  loc_100C6A4: ' Referenced from: 100C498
  loc_100C6A4: Proc_6_60_E62BC4(FGrid1.DispID_8001)
  loc_100C6A9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_14 'DFD5C8
  'Data Table: 50D6D4
  Dim .global_8448 As Double
  loc_DFD5C4: Exit Sub
  loc_DFD5C5: .global_8448 = 
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E421DC
  'Data Table: 50D6D4
  Dim var_8C As TextBox
  loc_E421BB: Set var_88 = Me.TxtGrid
  loc_E421C1: Call 0.Method_Fgrid1_UnknownEvent_150 (0, var_8C)
  loc_E421C9: var_8C.Visible = False
  loc_E421D5: Call Proc_235_41_E84088()
  loc_E421DA: Exit Sub
End Sub

Private Sub ChkParty_Click() 'F9C3F8
  'Data Table: 50D6D4
  Dim var_B8 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  loc_F9C27C: Set var_8C = Me.FGrid1
  loc_F9C29E: If (CLng(Me.ChkParty.Value) = 1) Then
  loc_F9C2C6:   For var_A8 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_86 = var_A8 'Integer
  loc_F9C2D8:     var_8C.Row = CVar(CLng(var_86))
  loc_F9C2E8:     var_8C.Col = CVar(CLng(1))
  loc_F9C2F6:     var_8C.CellFontName = "wingdings"
  loc_F9C306:     var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_F9C30F:     var_B8 = CVar(CLng(var_86)) 'Long
  loc_F9C317:     var_D8 = CVar(CLng(1)) 'Long
  loc_F9C31C:     var_F8 = "þ"
  loc_F9C325:     LateIdCallSt
  loc_F9C330:   Next var_A8 'Integer
  loc_F9C338: Else
  loc_F9C357:   If (CLng(Me.ChkParty.Value) = 0) Then
  loc_F9C37F:     For var_10C = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)):   var_86 = var_10C 'Integer
  loc_F9C391:       var_8C.Row = CVar(CLng(var_86))
  loc_F9C3A1:       var_8C.Col = CVar(CLng(1))
  loc_F9C3AF:       var_8C.CellFontName = "wingdings"
  loc_F9C3BF:       var_8C.CellFontSize = CVar(CDbl(&HD))
  loc_F9C3C8:       var_B8 = CVar(CLng(var_86)) 'Long
  loc_F9C3D0:       var_D8 = CVar(CLng(1)) 'Long
  loc_F9C3D5:       var_F8 = "¨"
  loc_F9C3DE:       LateIdCallSt
  loc_F9C3E9:     Next var_10C 'Integer
  loc_F9C3EE:   End If
  loc_F9C3EE: End If
  loc_F9C3F0: Set var_8C = Nothing 
  loc_F9C3F4: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'E19524
  'Data Table: 50D6D4
  loc_E19519: Me.Global.Unload Me
  loc_E19521: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12DFB7C
  'Data Table: 50D6D4
  Dim var_92 As Integer
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_A8 As Variant
  Dim var_F8 As Variant
  Dim var_FC As String
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_120 As MSHFlexGrid
  Dim var_170 As Variant
  Dim var_90 As TextBox
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim Me As Recordset15
  loc_12DF4DE: Set var_88 = Me.Txt
  loc_12DF4E4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12DF4F2: Proc_6_74_E226B0(var_8C)
  loc_12DF501: var_92 = Index
  loc_12DF50C: If (var_92 = CInt(1)) Then
  loc_12DF518:   Set var_88 = Me.GridSel
  loc_12DF51E:   Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12DF545:   Set var_90 = Me.GridSel
  loc_12DF54B:   Call 0.Method_Txt_GotFocus0 (1, var_A8, CVar(CLng(2)))
  loc_12DF553:   var_F8 = var_A8.TextMatrix)
  loc_12DF576:   Set var_104 = Me.GridSel
  loc_12DF57C:   Call 0.Method_Txt_GotFocus0 (1, var_108, (CStr(var_F8) <> MemVar_1F92078 & "0020"))
  loc_12DF584:   var_118 = var_108.Row
  loc_12DF5A3:   Set var_11C = Me.GridSel
  loc_12DF5A9:   Call 0.Method_Txt_GotFocus0 (1, var_120, CVar(CLng(2)), CVar(CLng(var_118)))
  loc_12DF5B1:   var_170 = var_120.TextMatrix)
  loc_12DF5EC:   If (CVar(CLng(var_8C.Row)) And (CStr(var_170) <> "HO0020")) Then
  loc_12DF608:     MsgBox("Please Select Sundry Detors A/C .......", 0, var_F8, var_118, var_170)
  loc_12DF621:     Set var_88 = Me.GridSel
  loc_12DF627:     Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12DF64F:     Set var_88 = Me.GridSel
  loc_12DF655:     Call 0.Method_Txt_GotFocus0 (1, var_8C, CVar(CLng(1)))
  loc_12DF65D:     var_8C.Col = GridSel.DispID_8001
  loc_12DF669:     Exit Sub
  loc_12DF66A:   End If
  loc_12DF67A:   Set var_88 = Me.Txt
  loc_12DF680:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C, 0)
  loc_12DF688:   var_8C.SelStart = var_92
  loc_12DF6A2:   Set var_88 = Me.Txt
  loc_12DF6A8:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_8C)
  loc_12DF6C4:   Set var_90 = Me.Txt
  loc_12DF6CA:   Call 0.Method_Txt_GotFocus0 (CInt(1), var_A8)
  loc_12DF6D2:   var_A8.SelLength = Len(var_8C.Text)
  loc_12DF6E8: Else
  loc_12DF6F0:   If (var_92 = CInt(2)) Then
  loc_12DF6FC:     Set var_88 = Me.GridSel
  loc_12DF702:     Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12DF713:     var_B8 = CVar(CLng(var_8C.Row)) 'Long
  loc_12DF729:     Set var_90 = Me.GridSel
  loc_12DF72F:     Call 0.Method_Txt_GotFocus0 (1, var_A8, CVar(CLng(2)))
  loc_12DF737:     var_F8 = var_A8.TextMatrix)
  loc_12DF75A:     Set var_104 = Me.GridSel
  loc_12DF760:     Call 0.Method_Txt_GotFocus0 (1, var_108, (CStr(var_F8) <> MemVar_1F92078 & "0020"))
  loc_12DF768:     var_118 = var_108.Row
  loc_12DF787:     Set var_11C = Me.GridSel
  loc_12DF78D:     Call 0.Method_Txt_GotFocus0 (1, var_120, CVar(CLng(2)))
  loc_12DF795:     var_170 = var_120.TextMatrix)
  loc_12DF7D0:     If (CVar(CLng(var_118)) And (CStr(var_170) <> "HO0020")) Then
  loc_12DF7EC:       MsgBox("Please Select Sundry Detors A/C .......", 0, var_F8, var_118, var_170)
  loc_12DF805:       Set var_88 = Me.GridSel
  loc_12DF80B:       Call 0.Method_Txt_GotFocus0 (1, var_8C)
  loc_12DF825:       var_B8 = CVar(CLng(1)) 'Long
  loc_12DF833:       Set var_88 = Me.GridSel
  loc_12DF839:       Call 0.Method_Txt_GotFocus0 (1, var_8C, var_B8)
  loc_12DF841:       var_8C.Col = GridSel.DispID_8001
  loc_12DF84D:       Exit Sub
  loc_12DF84E:     End If
  loc_12DF85D:     Set var_88 = Me.Txt
  loc_12DF863:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, &HF)
  loc_12DF86B:     var_8C.MaxLength = var_B8
  loc_12DF87A:   Else
  loc_12DF882:     If (var_92 = CInt(3)) Then
  loc_12DF892:       Set var_8C = Me.Txt
  loc_12DF898:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_12DF8B2:       Set var_A8 = Me.Txt
  loc_12DF8B8:       Call 0.Method_Txt_GotFocus0 (Index, var_104)
  loc_12DF8E6:       var_B8 = CVar((((Me.FrHoliday.Top + var_90.Top) + var_104.Height) + CDbl(&H19))) 'Single
  loc_12DF8F5:       Me.DGHoliday.Top = var_B8
  loc_12DF916:       Set var_8C = Me.Txt
  loc_12DF91C:       Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_12DF942:       var_B8 = CVar((Me.FrHoliday.Left + var_90.Left)) 'Single
  loc_12DF94B:       Set var_A8 = Me.DGHoliday
  loc_12DF951:       var_A8.Left = var_B8
  loc_12DF974:       Me.DGHoliday.Height = CVar(CDbl(3500))
  loc_12DF98B:       Set var_88 = Me.Txt
  loc_12DF991:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12DF999:       var_8C.SelStart = 0
  loc_12DF9B2:       Set var_88 = Me.Txt
  loc_12DF9B8:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12DF9C0:       var_FC = var_8C.Text
  loc_12DF9D3:       Set var_90 = Me.Txt
  loc_12DF9D9:       Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_12DF9E1:       var_A8.SelLength = Len(var_FC)
  loc_12DFA42:       Set var_88 = Me.Txt
  loc_12DFA48:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_FC)
  loc_12DFA50:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12DFA68:       If (var_8C Or (var_FC = vbNullString)) Then
  loc_12DFA6B:         Exit Sub
  loc_12DFA6C:       End If
  loc_12DFA79:       Set var_88 = Me.Txt
  loc_12DFA7F:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12DFA87:       var_FC = var_8C.Text
  loc_12DFAA5:       Set var_90 = Me.Txt
  loc_12DFAAB:       Call 0.Method_Txt_GotFocus0 (Index, var_A8)
  loc_12DFAC5:       var_B8 = "HCode"
  loc_12DFB11:       If CBool((var_FC <> vbNullString) And (CVar(var_A8.Tag) <> Me.Fields.Item(var_B8).Value)) Then
  loc_12DFB1A:         Me.MoveFirst
  loc_12DFB3D:         Set var_88 = Me.Txt
  loc_12DFB43:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_FC, "HName ='")
  loc_12DFB4B:         0 = var_8C.Text
  loc_12DFB64:         Me.Find 1 & var_FC & "'", var_B8, 
  loc_12DFB79:       End If
  loc_12DFB79:     End If
  loc_12DFB79:   End If
  loc_12DFB79: End If
  loc_12DFB79: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FCFA70
  'Data Table: 50D6D4
  Dim Me As Recordset15
  loc_FCF8C2: If (CLng(Shift) = &H1B) Then
  loc_FCF8C5:   Call Proc_235_41_E84088()
  loc_FCF8CA:   Exit Sub
  loc_FCF8CB: End If
  loc_FCF8D9: If (KeyCode = CInt(3)) Then
  loc_FCF8F4:   Set var_A0 = Nothing
  loc_FCF8FF:   Set var_9C = Nothing
  loc_FCF92D:   Proc_6_69_134A198(Me.DGHoliday, Me.Txt, KeyCode, global_92, Shift, &HFF)
  loc_FCF99A:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_FCF9C7:     Proc_6_89_146F1AC(Me.Txt, KeyCode, global_92, Shift, "HName", 0)
  loc_FCF9D6:   End If
  loc_FCF9D6: End If
  loc_FCFA11: If ((CBool(Me.DGHoliday.Visible) = 0) And (CBool(Me.DGCity.Visible) = 0)) Then
  loc_FCFA32:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(0))) Then
  loc_FCFA3B:     Proc_6_75_E527CC(Shift, arg_14, 1, var_9C)
  loc_FCFA40:   End If
  loc_FCFA5E:   If (((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) And (KeyCode <> CInt(1))) Then
  loc_FCFA67:     Proc_6_76_E52838(Shift, arg_14, var_A0)
  loc_FCFA6C:   End If
  loc_FCFA6C: End If
  loc_FCFA6C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F22028
  'Data Table: 50D6D4
  Dim arg_10 As Integer
  Dim var_AA As Integer
  Dim var_B0 As DataGrid
  loc_F21F30: On Error Goto loc_F22021
  loc_F21F39: If (arg_10 = &HD) Then
  loc_F21F3E:   arg_10 = 0
  loc_F21F41: End If
  loc_F21F5C: var_88 = CStr(Ucase(Chr(CLng(arg_10))))
  loc_F21F69: Proc_6_58_E054C0(arg_10)
  loc_F21F71: var_AA = KeyAscii
  loc_F21F7C: If (var_AA = CInt(2)) Then
  loc_F21F89:   Set var_B0 = Me.Txt
  loc_F21F8F:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_B4)
  loc_F21FAA:   Proc_6_42_129A86C(var_B4, arg_10, &HA)
  loc_F21FB9: Else
  loc_F21FC1:   If (var_AA = CInt(3)) Then
  loc_F21FE0:     If (CBool(Me.DGHoliday.Visible) = &HFF) Then
  loc_F22011:       Proc_6_89_146F1AC(Me.Txt, CInt(3), global_92, arg_10, "HName")
  loc_F22020:     End If
  loc_F22020:   End If
  loc_F22020: End If
  loc_F22020: Exit Sub
  loc_F22021: ' Referenced from: F21F30
  loc_F22021: Proc_6_60_E62BC4(0, 0)
  loc_F22026: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E92B88
  'Data Table: 50D6D4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_98 As String
  loc_E92B1F: var_86 = KeyCode
  loc_E92B2A: If (var_86 = CInt(0)) Then
  loc_E92B42:   Set var_8C = Me.Txt
  loc_E92B48:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_90, var_94)
  loc_E92B50:   &HA0 = var_90.Text
  loc_E92B5C:   var_98 = CStr((" Left Character = " - Len(var_94)))
  loc_E92B6D:   Me.LBLSendINFORMATION.Caption = var_86 & var_98
  loc_E92B84: End If
  loc_E92B84: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1136044
  'Data Table: 50D6D4
  Dim var_96 As Integer
  Dim var_90 As TextBox
  Dim var_9C As String
  Dim var_F4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_F0 As TextBox
  loc_1135CDA: Set var_8C = Me.Txt
  loc_1135CE0: Call 0.Method_Txt_Validate0 (Cancel)
  loc_1135CEE: Proc_6_73_E22704(var_90)
  loc_1135D08: If (Cancel = CInt(1)) Then
  loc_1135D19:   Set var_8C = Me.Txt
  loc_1135D1F:   Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_9C)
  loc_1135D27:   var_96 = var_90.Text
  loc_1135D57:   If (Len(Trim(CVar(var_9C))) = 0) Then
  loc_1135D6D:     Set var_8C = Me.Txt
  loc_1135D73:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1135D7B:     var_90.Text = CStr(MemVar_1F920EC)
  loc_1135D8D:   Else
  loc_1135D98:     Set var_8C = Me.Txt
  loc_1135D9E:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_1135DB1:     var_9C = Proc_6_33_1512840(var_90)
  loc_1135DBF:     Set var_F0 = Me.Txt
  loc_1135DC5:     Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_1135DCD:     var_F4.Text = var_9C
  loc_1135DE0:   End If
  loc_1135DE3: Else
  loc_1135DEB:   If (var_96 = CInt(3)) Then
  loc_1135E3C:     Set var_8C = Me.Txt
  loc_1135E42:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_9C)
  loc_1135E4A:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_90.Text
  loc_1135E62:     If (var_90 Or (var_9C = vbNullString)) Then
  loc_1135E72:       Set var_8C = Me.Txt
  loc_1135E78:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1135E80:       var_90.Text = vbNullString
  loc_1135E99:       Set var_8C = Me.Txt
  loc_1135E9F:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1135EA7:       var_90.Tag = vbNullString
  loc_1135EC1:       Set var_8C = Me.Txt
  loc_1135EC7:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_1135ECF:       var_90.Text = vbNullString
  loc_1135EDE:     Else
  loc_1135F16:       Set var_94 = Me.Txt
  loc_1135F1C:       Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1135F24:       var_F0.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("HName")))
  loc_1135F52:       var_90 = Me.Fields.Item("HCode")
  loc_1135F70:       Set var_94 = Me.Txt
  loc_1135F76:       Call 0.Method_Txt_Validate0 (Cancel, var_F0)
  loc_1135F7E:       var_F0.Tag = Proc_6_38_E68A98(CVar(var_90))
  loc_1135F9D:       Set var_8C = Me.Txt
  loc_1135FA3:       Call 0.Method_Txt_Validate0 (CInt(3))
  loc_1135FAB:       var_90.SetFocus
  loc_1135FB7:     End If
  loc_1135FBA:   Else
  loc_1135FC2:     If (var_96 = CInt(2)) Then
  loc_1135FD2:       Set var_8C = Me.Txt
  loc_1135FD8:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1136019:       Set var_94 = Me.Txt
  loc_113601F:       Call 0.Method_Txt_Validate0 (Cancel, var_F0, CStr(Format(CVar(var_90.Text), "0.00")))
  loc_1136027:       var_F0.Text = 1
  loc_1136043:     End If
  loc_1136043:   End If
  loc_1136043: End If
  loc_1136043: Exit Sub
End Sub

Private Sub TxtSearch_KeyDown(KeyCode As Integer, Shift As Integer) 'EC8910
  'Data Table: 50D6D4
  Dim var_88 As TextBox
  loc_EC886B: If (Proc_6_113_E6CF7C(KeyCode) = &HFF) Then
  loc_EC8872:   Set var_88 = Me.FGrid1
  loc_EC888F:   Me.TxtSearch.Visible = False
  loc_EC8897: End If
  loc_EC88A1: If (CLng(KeyCode) = &H2E) Then
  loc_EC88B1:   Me.TxtSearch.Text = vbNullString
  loc_EC88B9: End If
  loc_EC88CE: If ((CLng(KeyCode) = &H1B) Or (CLng(KeyCode) = &HD)) Then
  loc_EC88D5:   Set var_88 = Me.FGrid1
  loc_EC88F3:   Me.TxtSearch.Text = vbNullString
  loc_EC8907:   Me.TxtSearch.Visible = False
  loc_EC890F: End If
  loc_EC890F: Exit Sub
End Sub

Private Sub TxtSearch_KeyPress(KeyAscii As Integer) 'E7E2F4
  'Data Table: 50D6D4
  Dim KeyAscii As Integer
  loc_E7E2B7: var_90 = "PartyName"
  loc_E7E2D8: Proc_6_112_1128580(Me.TxtSearch, Me.FGrid1, global_84, KeyAscii)
  loc_E7E2ED: KeyAscii = 0
  loc_E7E2F0: Exit Sub
End Sub

Private Sub TxtSearch_Click() 'E57178
  'Data Table: 50D6D4
  Dim var_88 As TextBox
  loc_E57145: Me.TxtSearch.Text = vbNullString
  loc_E57151: Set var_88 = Me.FGrid1
  loc_E5716E: Me.TxtSearch.Visible = False
  loc_E57176: Exit Sub
End Sub

Private Sub CmdSendSms_Click() '1310A18
  'Data Table: 50D6D4
  Dim var_B0 As Variant
  Dim var_A4 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_B4 As String
  Dim var_1BC As Boolean
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_1CC As Variant
  Dim var_1D0 As String
  Dim var_210 As Variant
  Dim var_EC As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1E0 As Variant
  Dim unk_50D6ED As Connection15
  Dim var_AC As Variant
  Dim var_8C As Long
  Dim var_200 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_26C As Variant
  Dim var_220 As Variant
  Dim var_29C As Variant
  Dim var_2BC As Variant
  Dim var_370 As Double
  Dim var_2EC As Variant
  Dim var_30C As Variant
  loc_131033B: Set var_A4 = Me.Txt
  loc_1310341: Call 0.Method_CmdSendSms_Click0 (CInt(0))
  loc_1310362: Set var_AC = var_A8
  loc_131037C: If (Proc_6_27_EA565C(var_AC, Me.LblMessage.Caption) = 0) Then
  loc_131037F:   Exit Sub
  loc_1310380: End If
  loc_131038C: Me.CmdSendSms.Enabled = False
  loc_13103B9: For var_CC = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_CC 'Integer
  loc_13103C9:   Me.LBLSendINFORMATION.Refresh
  loc_13103DE:   Me.LBLSendINFORMATION.Caption = "MESSAGE SENDING ....................."
  loc_13103EA:   var_DC = CVar(CLng(var_9E)) 'Long
  loc_13103F2:   var_FC = CVar(CLng(1)) 'Long
  loc_1310414:   var_1BC = (CStr(Me.FGrid1.TextMatrix)) = "þ")
  loc_131041C:   var_11C = CVar(CLng(var_9E)) 'Long
  loc_1310477:   If CBool(CVar(CLng(5)) And (Len(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))) >= 10)) Then
  loc_1310481:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_1310492:     Set var_A4 = Me.FGrid1
  loc_1310498:     var_C8 = var_A4.TextMatrix)
  loc_13104B8:     Set var_A8 = Me.LBLSr
  loc_13104BE:     var_A8.Caption = CVar(CLng(0)) & CStr(Val(CStr(var_C8)))
  loc_13104D9:     var_90 = MemVar_1F9212C
  loc_13104F8:     var_EC = "Select IsNull(Max(VNo),0)+1 AS MyCode From DBSendSMS Where VType="
  loc_1310503:     var_DC = global_80
  loc_131050B:     Proc_6_17_EAA2B0(var_C8, var_DC, var_EC, var_200, -1, var_A4, var_A8, 0)
  loc_131052A:     var_11C = "' And SITE_CODE='"
  loc_1310542:     var_1CC = var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C & CVar(MemVar_1F92070) & "' AND LOGSITE_CODE='" 
  loc_1310563:     unk_50D6ED.Execute CStr(var_1CC & CVar(MemVar_1F92078) & "'"), var_220, var_DC
  loc_131056B:     "Sr. : " = var_A4.Fields
  loc_1310573:     var_1BC = var_A8.Item(var_11C)
  loc_131057B:     var_FC = var_AC.Value
  loc_1310585:     var_8C = CLng(var_220)
  loc_13105BD:     var_B4 = Proc_6_45_EAD428(MemVar_1F92070, 2, MemVar_1F9206C)
  loc_13105DE:     var_C8 = Space((5 - Len(global_80)))
  loc_13105E6:     var_16C = (CVar(var_8C & var_B4 & global_80) + var_C8)
  loc_13105F7:     var_17C = Space((5 - Len(var_90)))
  loc_13105FF:     var_18C = (var_AC & var_C8 & " And SubString(Docid,10,4)='" + var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90))
  loc_1310606:     var_DC = CVar(var_90) 'String
  loc_1310609:     var_1AC = (var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C + var_DC)
  loc_131061F:     var_1CC = Space((8 - Len(CStr(var_8C))))
  loc_1310627:     var_1E0 = (var_AC & var_C8 & " And SubString(Docid,10,4)='" & CVar(var_90) & var_11C & CVar(MemVar_1F92070) + var_1CC)
  loc_1310633:     var_200 = (var_1CC & CVar(MemVar_1F92078) + CVar(CStr(var_8C)))
  loc_1310638:     var_88 = CStr(var_200)
  loc_1310661:     var_228 = global_76
  loc_131066C:     If (var_228 = "Common") Then
  loc_131066F:       GoTo loc_13107AB
  loc_1310672:     End If
  loc_131067A:     If (var_228 = "Holiday") Then
  loc_131068E:       Set var_A4 = Me.Txt
  loc_1310694:       Call 0.Method_CmdSendSms_Click0 (CInt(3), var_A8, var_B4)
  loc_131069C:       " " = var_A8.Text
  loc_13106A5:       var_9C = var_DC & var_B4
  loc_13106B5:     Else
  loc_13106BD:       If (var_228 = "Outstanding") Then
  loc_13106CE:         Set var_A4 = Me.Txt
  loc_13106D4:         Call 0.Method_CmdSendSms_Click0 (CInt(0), var_A8)
  loc_13106E5:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_13106ED:         var_FC = CVar(CLng(&HA)) 'Long
  loc_131074D:         var_1D0 = Replace(var_A8.Text, "<BalanceAmt>", CStr(Format(CVar(CStr(Me.FGrid1.TextMatrix))), "0.00")), 1, -1, 0)
  loc_131075B:         Set var_B0 = Me.Txt
  loc_1310761:         Call 0.Method_CmdSendSms_Click0 (CInt(0), var_22C, CStr(var_8C), 1)
  loc_1310769:         var_22C.Text = 1
  loc_1310792:       Else
  loc_131079A:         If (var_228 = "Birth Day") Then
  loc_131079D:           GoTo loc_13107AB
  loc_13107A0:         End If
  loc_13107A8:         If (var_228 = "Marriage Anniversary") Then
  loc_13107AB:           ' Referenced from:     131079D
  loc_13107AB:         End If
  loc_13107AB:       End If
  loc_13107AB:       ' Referenced from: 131066F
  loc_13107AB:     End If
  loc_13107BC:     Set var_A4 = Me.Txt
  loc_13107C2:     Call 0.Method_CmdSendSms_Click0 (CInt(0), var_A8, CVar(var_98))
  loc_13107CA:     var_C8 = CVar(var_A8) 'Address
  loc_13107D9:     var_16C = (var_C8 + Trim(var_C8))
  loc_13107E3:     var_17C = ("0.00" + CVar(var_9C))
  loc_13107FD:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_1310805:     var_FC = CVar(CLng(2)) 'Long
  loc_131081F:     var_15C = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1310825:     var_16C = Trim(var_15C)
  loc_131082E:     var_11C = CVar(CLng(var_9E)) 'Long
  loc_1310836:     var_13C = CVar(CLng(5)) 'Long
  loc_1310845:     var_17C = Me.FGrid1.TextMatrix)
  loc_131085F:     var_19C = CVar(CLng(var_9E)) 'Long
  loc_1310867:     var_210 = CVar(CLng(6)) 'Long
  loc_1310890:     var_24C = CVar(CLng(var_9E)) 'Long
  loc_1310898:     var_26C = CVar(CLng(3)) 'Long
  loc_13108B8:     var_28C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_13108C1:     var_29C = CVar(CLng(var_9E)) 'Long
  loc_13108C9:     var_2BC = CVar(CLng(&HA)) 'Long
  loc_13108EB:     var_370 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_13108F2:     var_2EC = CVar(CLng(var_9E)) 'Long
  loc_13108FA:     var_30C = CVar(CLng(&HB)) 'Long
  loc_131091A:     var_350 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1310931:     var_35C = vbNullString
  loc_131096E:     Proc_233_5_11B7494(var_88, global_80, var_8C, 0, CStr(var_16C), CStr(Trim(CVar(CStr(var_17C)))), CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix))))), CStr(Format(CVar(CStr(Me.FGrid1.TextMatrix))), "0.00")))
  loc_13109B6:   End If
  loc_13109B9: Next var_CC 'Integer
  loc_13109D7: MsgBox("All Messages Are Send Successfully.", 0, var_15C, var_16C, var_17C)
  loc_13109F4: Me.LBLSendINFORMATION.Caption = "Message Status ................"
  loc_13109FC: Call Proc_235_40_EA93E0()
  loc_1310A0D: Me.CmdSendSms.Enabled = True
  loc_1310A15: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F50960
  'Data Table: 50D6D4
  Dim var_88 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_9C As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F50850: On Error Goto loc_F50958
  loc_F50853: Call Proc_235_41_E84088()
  loc_F5086B: var_BC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_F50874: Set var_9C = Me.FGrid1
  loc_F508A9: Set var_104 = Me.TxtGrid
  loc_F508AF: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, CStr(Me.FGrid1.TextMatrix)))
  loc_F508B7: var_108.Tag = CVar(CLng(var_9C.Col))
  loc_F508E4: Set var_88 = Me.TxtGrid
  loc_F508EA: Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C)
  loc_F508F2: var_9C.MaxLength = 0
  loc_F50911: var_110 = CLng(Me.FGrid1.Col)
  loc_F50921: If Not (var_110 = CLng(5)) Then
  loc_F5092B:   If (var_110 = CLng(6)) Then
  loc_F5092E:   End If
  loc_F5093D:   Set var_88 = Me.TxtGrid
  loc_F50943:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_9C, &HE)
  loc_F5094B:   var_9C.MaxLength = var_110
  loc_F50957: End If
  loc_F50957: Exit Sub
  loc_F50958: ' Referenced from: F50850
  loc_F50958: Proc_6_60_E62BC4(var_BC)
  loc_F5095D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '104FDE4
  'Data Table: 50D6D4
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  loc_104FB7C: On Error Goto loc_104FDDB
  loc_104FB82: var_86 = Shift
  loc_104FB8F: If (CLng(Shift) = &H1B) Then
  loc_104FB9E:   Set var_8C = Me.TxtGrid
  loc_104FBA4:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90)
  loc_104FBBD:   Set var_98 = Me.TxtGrid
  loc_104FBC3:   Call 0.Method_TxtGrid_KeyDown0 (0, var_9C)
  loc_104FBCB:   var_9C.Text = var_90.Tag
  loc_104FBE7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_104FBF0:   Set var_8C = Me.FGrid1
  loc_104FC0C:   Set var_8C = Me.TxtGrid
  loc_104FC12:   Call 0.Method_TxtGrid_KeyDown0 (0, var_90, 0)
  loc_104FC1A:   var_90.Visible = FGrid1.DispID_8001
  loc_104FC26:   Exit Sub
  loc_104FC27: End If
  loc_104FC3A: var_B0 = CLng(Me.FGrid1.Col)
  loc_104FC4A: If (var_B0 = CLng(5)) Then
  loc_104FC8D:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_104FC9D:     Call Proc_235_42_FD6168(0, 0, var_B6)
  loc_104FCA8:     If (var_B6 = &HFF) Then
  loc_104FCF0:       Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, 0, Shift, global_52, 6)
  loc_104FD00:     End If
  loc_104FD00:   End If
  loc_104FD03: Else
  loc_104FD0A:   If (var_B0 = CLng(6)) Then
  loc_104FD4D:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_104FD5D:       Call Proc_235_42_FD6168(0, 0, var_B6, 0, 6)
  loc_104FD68:       If (var_B6 = &HFF) Then
  loc_104FDB0:         Proc_6_62_1253BC4(Me.FGrid1, Me.TxtGrid, 0, Shift, global_52, 6, 0)
  loc_104FDD2:         Me.FGrid1.Col = CVar(CLng(5))
  loc_104FDDA:       End If
  loc_104FDDA:     End If
  loc_104FDDA:   End If
  loc_104FDDA: End If
  loc_104FDDA: Exit Sub
  loc_104FDDB: ' Referenced from: 104FB7C
  loc_104FDDB: Proc_6_60_E62BC4(0, 0, 0)
  loc_104FDE0: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E5D8CC
  'Data Table: 50D6D4
  Dim var_9C As Long
  loc_E5D888: On Error Goto loc_E5D8C4
  loc_E5D88E: Proc_6_58_E054C0(arg_10)
  loc_E5D8A6: var_9C = CLng(Me.FGrid1.Col)
  loc_E5D8B6: If Not (var_9C = CLng(5)) Then
  loc_E5D8C0:   If (var_9C = CLng(6)) Then
  loc_E5D8C3:   End If
  loc_E5D8C3: End If
  loc_E5D8C3: Exit Sub
  loc_E5D8C4: ' Referenced from: E5D888
  loc_E5D8C4: Proc_6_60_E62BC4(var_9C)
  loc_E5D8C9: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'DFD080
  'Data Table: 50D6D4
  loc_DFD07C: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E206DC
  'Data Table: 50D6D4
  Dim arg_10 As Integer
  loc_E206B8: On Error Goto loc_E206D3
  loc_E206C6: Call Proc_235_42_FD6168(Cancel, &HFF)
  loc_E206CF: arg_10 = Not(var_88)
  loc_E206D2: Exit Sub
  loc_E206D3: ' Referenced from: E206B8
  loc_E206D3: Proc_6_60_E62BC4(arg_10)
  loc_E206D8: Exit Sub
End Sub

Public Sub Proc_235_38_16C7014
  'Data Table: 50D6D4
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E4 As String
  Dim var_EC As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim unk_50D717 As Connection15
  Dim var_B8 As Variant
  Dim var_11C As Variant
  Dim var_128 As String
  Dim var_134 As String
  Dim var_168 As Variant
  Dim var_10C As Variant
  Dim var_188 As Variant
  Dim var_18C As Variant
  Dim var_19C As Variant
  Dim var_144 As Variant
  Dim var_1DC As Variant
  Dim var_1E0 As DTPicker
  Dim var_1F0 As Variant
  Dim var_210 As Variant
  Dim var_220 As String
  Dim var_250 As Variant
  Dim var_254 As Variant
  Dim var_284 As Variant
  Dim var_294 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_324 As Variant
  Dim var_348 As DTPicker
  Dim var_358 As Variant
  Dim var_398 As Variant
  Dim var_368 As Variant
  Dim var_200 As Variant
  Dim var_274 As Variant
  Dim var_3B8 As Variant
  Dim var_3FC As Variant
  Dim var_45C As Double
  Dim var_1AC As Variant
  Dim var_C0 As Recordset15
  Dim var_158 As Variant
  loc_16C5732: Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_16C574C: Me.ProgressBar1.Min = CVar(CDbl(0))
  loc_16C5763: Me.CmdReload.BackColor = &HFFFFFF
  loc_16C576E: var_8C = " max(SG.Mobile) AS Mobile,'' AS Mobile1 "
  loc_16C578C: If (Me.ChkMobile.Value = 1) Then
  loc_16C5792:   var_90 = " And IsNull(SG.Mobile,'')<>'' "
  loc_16C5795: End If
  loc_16C579B: var_D0 = global_68
  loc_16C57A6: If (var_D0 = "Guest") Then
  loc_16C57AC:   var_94 = " MobileNo As Mobile, '' As Mobile1 "
  loc_16C57CA:   If (Me.ChkMobile.Value = 1) Then
  loc_16C57D0:     var_98 = " And IsNull(MobileNo,'')<>'' "
  loc_16C57D3:   End If
  loc_16C57D6: Else
  loc_16C57DE:   If (var_D0 = "Employee") Then
  loc_16C57E4:     var_94 = " Phone As Mobile, '' As Mobile1 "
  loc_16C5802:     If (Me.ChkMobile.Value = 1) Then
  loc_16C5808:       var_98 = " And IsNull(Phone,'')<>'' "
  loc_16C580B:     End If
  loc_16C580E:   Else
  loc_16C5811:     var_94 = " Mobile As Mobile, '' As Mobile1 "
  loc_16C581B:     Set var_BC = Me.ChkMobile
  loc_16C582F:     If (var_BC.Value = 1) Then
  loc_16C5835:       var_98 = " And IsNull(Mobile,'')<>'' "
  loc_16C5838:     End If
  loc_16C5838:   End If
  loc_16C5838: End If
  loc_16C583E: var_D4 = global_76
  loc_16C5849: If Not (var_D4 = "Holiday") Then
  loc_16C5854:   If (var_D4 = "Common") Then
  loc_16C5857:   End If
  loc_16C585D:   var_D8 = global_68
  loc_16C5868:   If (var_D8 = "Guest") Then
  loc_16C588C:     var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C58C0:     var_FC = var_E0 & ",'" & global_76 & "' as MsgType From GuestProf Where LogSite_Code='" & MemVar_1F92078 & "' " & var_98 & " order By Name "
  loc_16C58C9:     unk_50D717.Execute var_FC, var_BC, 
  loc_16C58D4:     Set var_C0 = var_BC
  loc_16C58F5:   Else
  loc_16C58FD:     If (var_D8 = "Employee") Then
  loc_16C5921:       var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C5955:       var_FC = var_E0 & ",'" & global_76 & "' as MsgType From Employee Where LogSite_Code='" & MemVar_1F92078 & "' " & var_98 & " order By Name "
  loc_16C595E:       unk_50D717.Execute var_FC, var_BC, 
  loc_16C5969:       Set var_C0 = var_BC
  loc_16C598A:     Else
  loc_16C59AB:       var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_10C)
  loc_16C59C3:       var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code Where GroupCode='"
  loc_16C5A09:       var_128 = var_BC & Proc_6_38_E68A98(global_68, var_EC & global_64 & "' And Nature='") & "' And CompanyType='" & Proc_6_38_E68A98(global_72)
  loc_16C5A27:       unk_50D717.Execute var_128 & "' " & var_98 & " And SubGroup.ActiveYN=1 order By Subgroup.Name ", , 
  loc_16C5A32:       Set var_C0 = var_BC
  loc_16C5A5C:     End If
  loc_16C5A5C:   End If
  loc_16C5A5F: Else
  loc_16C5A67:   If (var_D4 = "Birth Day") Then
  loc_16C5A70:     var_148 = global_68
  loc_16C5A7B:     If (var_148 = "Guest") Then
  loc_16C5A9F:       var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_3B8)
  loc_16C5AB7:       var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Bday= case when dateadd(yy,datediff(yy,guestprof.Birthdate,") 'String
  loc_16C5ACE:       Proc_6_7_F25D88(var_158, Me.DTP.Value)
  loc_16C5AF7:       Proc_6_7_F25D88(var_1AC, Me.DTP.Value)
  loc_16C5B29:       Proc_6_7_F25D88(var_200, Me.DTP.Value)
  loc_16C5B31:       var_210 = var_168 & var_158 & "),guestprof.Birthdate)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,guestprof.Birthdate," & var_200 
  loc_16C5B35:       var_220 = ")+1,guestprof.Birthdate) Else "
  loc_16C5B5B:       Proc_6_7_F25D88(var_274, Me.DTP.Value)
  loc_16C5B6C:       var_2A4 = var_210 & var_220 & "dateadd(yy,datediff(yy,guestprof.Birthdate," & var_274 & "),guestprof.Birthdate) end,* From GuestProf) AA " 
  loc_16C5BA9:       var_358 = Me.DTP.Value
  loc_16C5BB3:       Proc_6_7_F25D88(var_368, var_358)
  loc_16C5BC4:       var_398 = var_2A4 & "Where LogSite_Code='" & CVar(MemVar_1F92078) & "' " & CVar(var_98) & " And BDay=" & var_368 & " order By Name " 
  loc_16C5BD2:       unk_50D717.Execute CStr(var_398), var_3BC, 
  loc_16C5BDD:       Set var_C0 = var_3BC
  loc_16C5C3C:     Else
  loc_16C5C44:       If (var_148 = "Employee") Then
  loc_16C5C68:         var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_398)
  loc_16C5C80:         var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Bday= case when dateadd(yy,datediff(yy,Employee.Birth_date,") 'String
  loc_16C5C97:         Proc_6_7_F25D88(var_158, Me.DTP.Value)
  loc_16C5CC0:         Proc_6_7_F25D88(var_1AC, Me.DTP.Value)
  loc_16C5CE8:         var_1F0 = Me.DTP.Value
  loc_16C5CF2:         Proc_6_7_F25D88(var_200, var_1F0)
  loc_16C5CFA:         var_210 = var_168 & var_158 & "),Employee.Birth_date)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,Employee.Birth_date," & var_200 
  loc_16C5CFE:         var_220 = ")+1,Employee.Birth_date) Else "
  loc_16C5D0C:         var_250 = var_210 & var_220 & "dateadd(yy,datediff(yy,Employee.Birth_date," 
  loc_16C5D24:         Proc_6_7_F25D88(var_274, Me.DTP.Value)
  loc_16C5D48:         var_2E4 = var_250 & var_274 & "),Employee.Birth_date) end, * From Employee) AA Where LogSite_Code='" & CVar(MemVar_1F92078) & "' " 
  loc_16C5D73:         Proc_6_7_F25D88(var_358, Me.DTP.Value)
  loc_16C5D92:         unk_50D717.Execute CStr(var_2E4 & CVar(var_98) & " And BDay=" & var_358 & " order By Name "), var_3BC, 
  loc_16C5D9D:         Set var_C0 = var_3BC
  loc_16C5DFA:       Else
  loc_16C5E1B:         var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_41C)
  loc_16C5E33:         var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code "
  loc_16C5E51:         Proc_6_7_F25D88(var_158, Me.DTP.Value)
  loc_16C5E62:         var_188 = CVar(var_EC & "Left Join (Select Bday= case when dateadd(yy,datediff(yy,MemberFamily.DOB,") & var_158 & "),MemberFamily.DOB)< " 
  loc_16C5E7A:         Proc_6_7_F25D88(var_1AC, Me.DTP.Value)
  loc_16C5EA3:         Proc_6_7_F25D88(var_1F0, Me.DTP.Value)
  loc_16C5EAB:         var_200 = var_188 & var_1AC & " then dateadd(yy,datediff(yy,MemberFamily.DOB," & var_1F0 
  loc_16C5EAF:         var_144 = ")+1,MemberFamily.DOB) Else dateadd(yy,datediff(yy,MemberFamily.DOB,"
  loc_16C5ECC:         Proc_6_7_F25D88(var_250, Me.DTP.Value)
  loc_16C5EDD:         var_274 = var_200 & "dateadd(yy,datediff(yy,Employee.Birth_date," & var_250 & "),MemberFamily.DOB) end,SubCode MemSubCode From MemberFamily) AA " 
  loc_16C5F10:         var_2E4 = CVar(Proc_6_38_E68A98(global_68, var_274 & "On SubCode=AA.MemSubCode Where GroupCode='" & CVar(global_64) & "' And Nature='")) 'String
  loc_16C5F33:         var_358 = var_3BC & var_2E4 & "' And CompanyType='" & CVar(Proc_6_38_E68A98(global_72)) 
  loc_16C5F4F:         var_398 = var_358 & "' " & CVar(var_98) & " And BDay=" 
  loc_16C5F67:         Proc_6_7_F25D88(var_3CC, Me.DTP.Value)
  loc_16C5F86:         unk_50D717.Execute CStr(var_398 & var_3CC & " And SubGroup.ActiveYN=1 order By Subgroup.Name "), , 
  loc_16C5F91:         Set var_C0 = var_3BC
  loc_16C5FF7:       End If
  loc_16C5FF7:     End If
  loc_16C5FFA:   Else
  loc_16C6002:     If (var_D4 = "Marriage Anniversary") Then
  loc_16C6016:       If (global_68 = "Guest") Then
  loc_16C603A:         var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_398)
  loc_16C6052:         var_168 = CVar(var_E0 & ",'" & global_76 & "' as MsgType From (Select Aday=case when dateadd(yy,datediff(yy,guestprof.Anniversary,") 'String
  loc_16C6069:         Proc_6_7_F25D88(var_158, Me.DTP.Value)
  loc_16C6092:         Proc_6_7_F25D88(var_1AC, Me.DTP.Value)
  loc_16C60AC:         var_1DC = var_168 & var_158 & "),guestprof.Anniversary)< " & var_1AC & " then " & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C60BA:         var_1F0 = Me.DTP.Value
  loc_16C60C4:         Proc_6_7_F25D88(var_200, var_1F0)
  loc_16C60D0:         var_220 = ")+1,guestprof.Anniversary) Else "
  loc_16C60DE:         var_250 = var_1DC & var_200 & "),MemberFamily.DOB) end,SubCode MemSubCode From MemberFamily) AA " & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C60F6:         Proc_6_7_F25D88(var_274, Me.DTP.Value)
  loc_16C611A:         var_2E4 = var_250 & var_274 & "),guestprof.Anniversary) end,* From GuestProf) AA Where LogSite_Code='" & CVar(MemVar_1F92078) & "' " 
  loc_16C6145:         Proc_6_7_F25D88(var_358, Me.DTP.Value)
  loc_16C6164:         unk_50D717.Execute CStr(var_2E4 & CVar(var_98) & " And Aday=" & var_358 & " order By Name "), var_3BC, 
  loc_16C616F:         Set var_C0 = var_3BC
  loc_16C61CC:       Else
  loc_16C61ED:         var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_41C)
  loc_16C6205:         var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code "
  loc_16C6223:         Proc_6_7_F25D88(var_158, Me.DTP.Value)
  loc_16C6234:         var_188 = CVar(var_EC & "Left Join (Select Aday= case when dateadd(yy,datediff(yy,MemberFamily.WedDate,") & var_158 & "),MemberFamily.WedDate)< " 
  loc_16C623C:         Set var_18C = Me.DTP
  loc_16C624C:         Proc_6_7_F25D88(var_1AC, var_18C.Value)
  loc_16C6275:         Proc_6_7_F25D88(var_1F0, Me.DTP.Value)
  loc_16C6281:         var_144 = ")+1,MemberFamily.WedDate) Else dateadd(yy,datediff(yy,MemberFamily.WedDate,"
  loc_16C6286:         var_210 = var_188 & var_1AC & " then dateadd(yy,datediff(yy,MemberFamily.WedDate," & var_1F0 & "dateadd(yy,datediff(yy,guestprof.Anniversary," 
  loc_16C628E:         Set var_254 = Me.DTP
  loc_16C629E:         Proc_6_7_F25D88(var_250, var_254.Value)
  loc_16C62B8:         var_284 = var_210 & var_250 & "),MemberFamily.WedDate) end,SubCode MemSubCode From MemberFamily) AA " & "On SubCode=AA.MemSubCode Where GroupCode='" 
  loc_16C62EE:         var_324 = var_3BC & CVar(Proc_6_38_E68A98(global_68, var_284 & CVar(global_64) & "' And Nature='")) & "' And CompanyType='" 
  loc_16C6329:         Set var_348 = Me.DTP
  loc_16C6339:         Proc_6_7_F25D88(var_3CC, var_348.Value)
  loc_16C634A:         var_3FC = var_324 & CVar(Proc_6_38_E68A98(global_72)) & "' " & CVar(var_98) & " And ADay=" & var_3CC & " And SubGroup.ActiveYN=1 order By Subgroup.Name " 
  loc_16C6358:         unk_50D717.Execute CStr(var_3FC), , 
  loc_16C6363:         Set var_C0 = var_3BC
  loc_16C63C9:       End If
  loc_16C63CC:     Else
  loc_16C63D4:       If (var_D4 = "Outstanding") Then
  loc_16C63E2:         If (global_68 <> "Customer") Then
  loc_16C63EB:           global_68 = vbNullString
  loc_16C63EF:         End If
  loc_16C6440:         Set var_BC = Me.Txt
  loc_16C6446:         Call 0.Method_Proc_235_38_16C70140 (CInt(1))
  loc_16C644E:         var_10C = CVar(var_18C) 'Address
  loc_16C6455:         Proc_6_7_F25D88(var_158, var_10C)
  loc_16C6468:         Set var_1E0 = Me.Txt
  loc_16C646E:         Call 0.Method_Proc_235_38_16C70140 (CInt(2), var_254)
  loc_16C648D:         var_45C = Val(CStr(Val(var_254.Text)))
  loc_16C64AE:         var_E4 = "SELECT max(L.SubCode) AS LedgerSubCode,max(SG.SubCode) AS PartyCode,max(SG.Name) AS PartyName, " & vbNullString & Proc_6_38_E68A98(var_8C)
  loc_16C64BC:         var_EC = var_E4 & ",max(SG.Add1) AS Address1, " & "isnull(Sum(AmtDr)-Sum(AmtCr),0) AS PartyBalance, "
  loc_16C64DB:         var_FC = var_EC & "max(SG.CityCode) AS CityCode,max(SG.AreaCode) AS AreaCode,'" & global_76 & "' as MsgType " & "FROM Ledger L RIGHT JOIN SubGroup SG ON L.SubCode=SG.SubCode "
  loc_16C6504:         var_134 = var_FC & "WHERE SG.GroupCode='" & global_64 & "' And Nature='" & Proc_6_38_E68A98(global_68) & "' And CompanyType='"
  loc_16C652D:         var_168 = CVar(var_134 & Proc_6_38_E68A98(global_72) & "' " & Proc_6_38_E68A98(var_90) & " And SG.ActiveYN=1 " & "and IsNull(L.V_Date,'')<=") 'String
  loc_16C6545:         var_19C = var_168 & var_158 & " " & "GROUP BY SG.SUBCODE " 
  loc_16C6549:         var_294 = "Having isnull(Sum(AmtDr)-Sum(AmtCr),0)>="
  loc_16C6579:         unk_50D717.Execute CStr(var_19C & CVar(global_64) & CVar(var_45C) & " " & "ORDER BY PartyName "), var_1F0, -1
  loc_16C6584:         Set var_C0 = var_348
  loc_16C65E9:       Else
  loc_16C65EF:         var_460 = global_68
  loc_16C65FA:         If (var_460 = "Guest") Then
  loc_16C661A:           var_DC = Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C, -1)
  loc_16C661E:           var_E0 = var_BC & "SELECT max(L.SubCode) AS LedgerSubCode,max(SG.SubCode) AS PartyCode,max(SG.Name) AS PartyName, " & vbNullString
  loc_16C664B:           var_F8 = var_E0 & ",'" & global_76 & "' as MsgType From GuestProf Where LogSite_Code='" & MemVar_1F92078 & "' " & var_98
  loc_16C665B:           unk_50D717.Execute var_F8 & " order By Name ", var_348, var_45C
  loc_16C6666:           Set var_C0 = var_BC
  loc_16C6687:         Else
  loc_16C668F:           If (var_460 = "Employee") Then
  loc_16C66B3:             var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select Code as PartyCode, Name as PartyName, Add1 as Address1, ", var_10C)
  loc_16C66E0:             var_F8 = var_E0 & ",'" & global_76 & "' as MsgType From Employee Where LogSite_Code='" & MemVar_1F92078 & "' " & var_98
  loc_16C66F0:             unk_50D717.Execute var_F8 & " order By Name ", var_BC, var_18C
  loc_16C66FB:             Set var_C0 = var_BC
  loc_16C671C:           Else
  loc_16C673D:             var_E0 = -1 & Proc_6_38_E68A98(var_94, "Select SubCode as PartyCode,Subgroup.Name as PartyName,Add1 as Address1, *, ", var_10C)
  loc_16C6755:             var_EC = var_E0 & ",'" & global_76 & "' as MsgType from SubGroup Left Join MemCatMast On SubGroup.CompanyType=MemCatMast.Code Where GroupCode='"
  loc_16C679B:             var_128 = var_BC & Proc_6_38_E68A98(global_68, var_EC & global_64 & "' And Nature='") & "' And CompanyType='" & Proc_6_38_E68A98(global_72)
  loc_16C67B9:             unk_50D717.Execute var_128 & "' " & var_98 & " And SubGroup.ActiveYN=1 order By Subgroup.Name ", , 
  loc_16C67C4:             Set var_C0 = var_BC
  loc_16C67EE:           End If
  loc_16C67EE:         End If
  loc_16C67EE:       End If
  loc_16C67EE:     End If
  loc_16C67EE:   End If
  loc_16C67EE: End If
  loc_16C6805: If (Me.Recordset15.State = 1) Then
  loc_16C6816:   Me.Recordset20.Clone
  loc_16C6827:   Set global_84 = var_BC
  loc_16C6832: End If
  loc_16C685E: If ((var_C0.RecordCount > 0) And (Me.Recordset15.EOF = 0)) Then
  loc_16C6882:   Me.ProgressBar1.Max = CVar(CDbl(Me.Recordset15.RecordCount))
  loc_16C6897:   Set var_BC = Me.FGrid1
  loc_16C689D:   var_BC.Rows = 1
  loc_16C68AA:   global_138 = 1
  loc_16C68AD:   ' Referenced from: 16C6F09
  loc_16C68BF:   If Not(Me.var_BC.EOF) Then
  loc_16C68CC:     Set var_BC = Me.FGrid1
  loc_16C68E1:     Set var_468 = Me.FGrid1
  loc_16C68EE:     Me.LBLInsertInfo.Refresh
  loc_16C6913:     Proc_6_39_E7C810(var_158, CVar(Me.Recordset15.RecordCount), "Out of Party : ", FGrid1.DispID_10000)
  loc_16C6940:     Proc_6_39_E7C810(var_19C, CVar(Me.Recordset15.AbsolutePosition), vbNullString & var_158 & "        Fill Party : ")
  loc_16C694C:     var_DC = CStr(global_138 & var_19C)
  loc_16C695A:     Me.LBLInsertInfo.Caption = var_DC
  loc_16C697D:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6985:     var_11C = CVar(CLng(0)) 'Long
  loc_16C6992:     var_10C = CVar(CStr(global_138)) 'String
  loc_16C6999:     LateIdCallSt
  loc_16C69D1:     If (CDbl(CDbl(Me.ProgressBar1.Value)) < CDbl(Me.Recordset15.RecordCount)) Then
  loc_16C69EB:       var_A8 = CVar((CDbl(Me.ProgressBar1.Value) + CDbl(1))) 'Single
  loc_16C69FA:       Me.ProgressBar1.Value = var_A8
  loc_16C6A09:     End If
  loc_16C6A10:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6A20:     var_A8 = CVar(CLng(1)) 'Long
  loc_16C6A2D:     var_A8 = "wingdings"
  loc_16C6A3E:     var_A8 = CVar(CDbl(&HC)) 'Single
  loc_16C6A52:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6A68:     LateIdCallSt
  loc_16C6A87:     var_A8 = "PartyCode"
  loc_16C6AAF:     var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_A8)), CVar(CLng(2)), CVar(CLng(global_138)), var_468, "þ", CVar(CLng(1)), var_A8)) 'String
  loc_16C6AB6:     LateIdCallSt
  loc_16C6B07:     var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("PartyName")), CVar(CLng(3)), CVar(CLng(global_138)), var_468, var_158, ProgressBar1.DispID_4E)) 'String
  loc_16C6B0E:     LateIdCallSt
  loc_16C6B27:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6B37:     var_A8 = CVar(CLng(4)) 'Long
  loc_16C6B44:     var_A8 = "wingdings"
  loc_16C6B55:     var_A8 = CVar(CDbl(&HC)) 'Single
  loc_16C6B69:     var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6B7F:     LateIdCallSt
  loc_16C6B9E:     var_A8 = "Mobile"
  loc_16C6BC6:     var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_A8)), CVar(CLng(5)), CVar(CLng(global_138)), var_468, "¨", CVar(CLng(4)), var_A8)) 'String
  loc_16C6BCD:     LateIdCallSt
  loc_16C6C1E:     var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Mobile1")), CVar(CLng(6)), CVar(CLng(global_138)), var_468, var_158, ProgressBar1.DispID_4E)) 'String
  loc_16C6C25:     LateIdCallSt
  loc_16C6C76:     var_158 = CVar(Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item("Address1")), CVar(CLng(7)), CVar(CLng(global_138)), var_468, var_158)) 'String
  loc_16C6C7D:     LateIdCallSt
  loc_16C6CBD:     var_18C = Me.Recordset15.Fields.Item("MsgType")
  loc_16C6CCE:     var_158 = CVar(Proc_6_38_E68A98(CVar(var_18C), CVar(CLng(&HB)), CVar(CLng(global_138)), var_468, var_158)) 'String
  loc_16C6CD5:     LateIdCallSt
  loc_16C6CFE:     If ((global_76 = "Outstanding") And (global_68 <> "Guest")) Then
  loc_16C6D0F:       Set var_BC = Me.Txt
  loc_16C6D15:       Call 0.Method_Proc_235_38_16C70140 (CInt(2), var_18C, var_DC, var_468, var_158)
  loc_16C6D1D:       var_A8 = var_18C.Text
  loc_16C6D39:       If (CDbl(Val(var_DC)) > CDbl(0)) Then
  loc_16C6D79:         Proc_6_39_E7C810(var_158, CVar(Me.Recordset15.Fields.Item("PartyBalance")), CVar(CLng(&HA)), CVar(CLng(global_138)))
  loc_16C6D82:         var_168 = CVar(CStr(var_158)) 'String
  loc_16C6D89:         LateIdCallSt
  loc_16C6DA0:       Else
  loc_16C6DB3:         var_A8 = "PartyCode"
  loc_16C6DDB:         var_DC = Proc_6_38_E68A98(CVar(Me.Recordset15.Fields.Item(var_A8)), "Select isnull(Sum(AmtDr)-Sum(AmtCr),0) as PartyBalance from Ledger Where SubCode='", var_158, -1, var_1E0, var_468)
  loc_16C6DEF:         unk_50D717.Execute var_168 & var_DC & "' ", ProgressBar1.DispID_4D, var_A8
  loc_16C6DFA:         Set var_C4 = var_1E0
  loc_16C6E2B:         If (Me.Recordset15.RecordCount > 0) Then
  loc_16C6E35:           var_B8 = CVar(CLng(global_138)) 'Long
  loc_16C6E6B:           Proc_6_39_E7C810(var_158, CVar(Me.Recordset15.Fields.Item("PartyBalance")), CVar(CLng(&HA)))
  loc_16C6E74:           var_168 = CVar(CStr(var_158)) 'String
  loc_16C6E7B:           LateIdCallSt
  loc_16C6E92:         Else
  loc_16C6E99:           var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6EA1:           var_11C = CVar(CLng(&HA)) 'Long
  loc_16C6EAA:           var_10C = CVar(CStr(0)) 'String
  loc_16C6EB1:           LateIdCallSt
  loc_16C6EBC:         End If
  loc_16C6EBC:       End If
  loc_16C6EBF:     Else
  loc_16C6EC6:       var_A8 = CVar(CLng(global_138)) 'Long
  loc_16C6ECE:       var_11C = CVar(CLng(&HA)) 'Long
  loc_16C6ED7:       var_10C = CVar(CStr(0)) 'String
  loc_16C6EDE:       LateIdCallSt
  loc_16C6EE9:     End If
  loc_16C6EEB:     Set var_468 = Nothing 
  loc_16C6EFB:     global_138 = (global_138 + 1)
  loc_16C6F04:     Me.Recordset15.MoveNext
  loc_16C6F09:     GoTo loc_16C68AD
  loc_16C6F0C:   End If
  loc_16C6F0C:   var_A8 = 1
  loc_16C6F1F:   Me.FGrid1.FixedRows = var_A8
  loc_16C6F31:   Me.LBLInsertInfo.Refresh
  loc_16C6F39:   var_B8 = "Total Party :-> "
  loc_16C6F56:   Proc_6_39_E7C810(var_158, CVar(Me.Recordset15.RecordCount), var_B8, global_138, var_468, CVar(Me.Recordset15.RecordCount), var_11C, var_A8)
  loc_16C6F70:   Me.LBLInsertInfo.Caption = CStr(var_468 & var_158)
  loc_16C6F96:   Me.ProgressBar1.Value = CVar(CDbl(0))
  loc_16C6FA1: Else
  loc_16C6FB4:   Me.FGrid1.Rows = 1
  loc_16C6FD1:   var_158 = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_16C6FD9:   Set var_18C = Me.FGrid1
  loc_16C7008:   Me.FGrid1.FixedRows = 1
  loc_16C7010: End If
  loc_16C7010: Exit Sub
End Sub

Public Sub Proc_235_39_1345F14
  'Data Table: 50D6D4
  Dim var_98 As Variant
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_F4 As MSHFlexGrid
  loc_134571B: Me.FGrid1.Cols = &HC
  loc_1345720: var_98 = 0
  loc_134572C: var_B8 = CVar(CLng(0)) 'Long
  loc_1345731: var_D8 = "Sr."
  loc_134573A: LateIdCallSt
  loc_1345745: var_98 = CVar(CLng(0)) 'Long
  loc_1345750: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345757: LateIdCallSt
  loc_1345762: var_98 = CVar(CLng(0)) 'Long
  loc_134576D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345774: LateIdCallSt
  loc_134577F: var_98 = CVar(CLng(0)) 'Long
  loc_1345784: var_B8 = &H1F4
  loc_1345790: LateIdCallSt
  loc_1345798: var_98 = 0
  loc_13457A4: var_B8 = CVar(CLng(1)) 'Long
  loc_13457A9: var_D8 = " "
  loc_13457B2: LateIdCallSt
  loc_13457BD: var_98 = CVar(CLng(1)) 'Long
  loc_13457C8: var_B8 = CVar(CInt(1)) 'Integer
  loc_13457CF: LateIdCallSt
  loc_13457DA: var_98 = CVar(CLng(1)) 'Long
  loc_13457E5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13457EC: LateIdCallSt
  loc_13457F7: var_98 = CVar(CLng(1)) 'Long
  loc_13457FC: var_B8 = &H12C
  loc_1345808: LateIdCallSt
  loc_1345810: var_98 = 0
  loc_134581C: var_B8 = CVar(CLng(2)) 'Long
  loc_1345821: var_D8 = "Code"
  loc_134582A: LateIdCallSt
  loc_1345835: var_98 = CVar(CLng(2)) 'Long
  loc_1345840: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345847: LateIdCallSt
  loc_1345852: var_98 = CVar(CLng(2)) 'Long
  loc_134585D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345864: LateIdCallSt
  loc_134586F: var_98 = CVar(CLng(2)) 'Long
  loc_1345874: var_B8 = 0
  loc_1345880: LateIdCallSt
  loc_1345888: var_98 = 0
  loc_1345894: var_B8 = CVar(CLng(3)) 'Long
  loc_1345899: var_D8 = "Party Name"
  loc_13458A2: LateIdCallSt
  loc_13458AD: var_98 = CVar(CLng(3)) 'Long
  loc_13458B8: var_B8 = CVar(CInt(1)) 'Integer
  loc_13458BF: LateIdCallSt
  loc_13458CA: var_98 = CVar(CLng(3)) 'Long
  loc_13458D5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13458DC: LateIdCallSt
  loc_13458E7: var_98 = CVar(CLng(3)) 'Long
  loc_13458EC: var_B8 = &HBB8
  loc_13458F8: LateIdCallSt
  loc_1345900: var_98 = 0
  loc_134590C: var_B8 = CVar(CLng(4)) 'Long
  loc_1345911: var_D8 = " "
  loc_134591A: LateIdCallSt
  loc_1345925: var_98 = CVar(CLng(4)) 'Long
  loc_1345930: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345937: LateIdCallSt
  loc_1345942: var_98 = CVar(CLng(4)) 'Long
  loc_134594D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345954: LateIdCallSt
  loc_134595F: var_98 = CVar(CLng(4)) 'Long
  loc_1345964: var_B8 = 0
  loc_1345970: LateIdCallSt
  loc_1345978: var_98 = 0
  loc_1345984: var_B8 = CVar(CLng(5)) 'Long
  loc_1345989: var_D8 = "Mobile"
  loc_1345992: LateIdCallSt
  loc_134599D: var_98 = CVar(CLng(5)) 'Long
  loc_13459A8: var_B8 = CVar(CInt(1)) 'Integer
  loc_13459AF: LateIdCallSt
  loc_13459BA: var_98 = CVar(CLng(5)) 'Long
  loc_13459C5: var_B8 = CVar(CInt(1)) 'Integer
  loc_13459CC: LateIdCallSt
  loc_13459D7: var_98 = CVar(CLng(5)) 'Long
  loc_13459DC: var_B8 = &H578
  loc_13459E8: LateIdCallSt
  loc_13459F0: var_98 = 0
  loc_13459FC: var_B8 = CVar(CLng(6)) 'Long
  loc_1345A01: var_D8 = "Mobile2"
  loc_1345A0A: LateIdCallSt
  loc_1345A15: var_98 = CVar(CLng(6)) 'Long
  loc_1345A20: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345A27: LateIdCallSt
  loc_1345A32: var_98 = CVar(CLng(6)) 'Long
  loc_1345A3D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345A44: LateIdCallSt
  loc_1345A4F: var_98 = CVar(CLng(6)) 'Long
  loc_1345A54: var_B8 = &H578
  loc_1345A60: LateIdCallSt
  loc_1345A68: var_98 = 0
  loc_1345A74: var_B8 = CVar(CLng(7)) 'Long
  loc_1345A79: var_D8 = "Address"
  loc_1345A82: LateIdCallSt
  loc_1345A8D: var_98 = CVar(CLng(7)) 'Long
  loc_1345A98: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345A9F: LateIdCallSt
  loc_1345AAA: var_98 = CVar(CLng(7)) 'Long
  loc_1345AB5: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345ABC: LateIdCallSt
  loc_1345AC7: var_98 = CVar(CLng(7)) 'Long
  loc_1345ACC: var_B8 = &HA28
  loc_1345AD8: LateIdCallSt
  loc_1345AE0: var_98 = 0
  loc_1345AEC: var_B8 = CVar(CLng(8)) 'Long
  loc_1345AF1: var_D8 = "City"
  loc_1345AFA: LateIdCallSt
  loc_1345B05: var_98 = CVar(CLng(8)) 'Long
  loc_1345B10: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345B17: LateIdCallSt
  loc_1345B22: var_98 = CVar(CLng(8)) 'Long
  loc_1345B2D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345B34: LateIdCallSt
  loc_1345B3F: var_98 = CVar(CLng(8)) 'Long
  loc_1345B44: var_B8 = 0
  loc_1345B50: LateIdCallSt
  loc_1345B58: var_98 = 0
  loc_1345B64: var_B8 = CVar(CLng(9)) 'Long
  loc_1345B69: var_D8 = "DBW"
  loc_1345B72: LateIdCallSt
  loc_1345B7D: var_98 = CVar(CLng(9)) 'Long
  loc_1345B88: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345B8F: LateIdCallSt
  loc_1345B9A: var_98 = CVar(CLng(9)) 'Long
  loc_1345BA5: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345BAC: LateIdCallSt
  loc_1345BB7: var_98 = CVar(CLng(9)) 'Long
  loc_1345BBC: var_B8 = 0
  loc_1345BC8: LateIdCallSt
  loc_1345BD0: var_98 = 0
  loc_1345BDC: var_B8 = CVar(CLng(&HA)) 'Long
  loc_1345BE1: var_D8 = "Balance"
  loc_1345BEA: LateIdCallSt
  loc_1345BF5: var_98 = CVar(CLng(&HA)) 'Long
  loc_1345C00: var_B8 = CVar(CInt(7)) 'Integer
  loc_1345C07: LateIdCallSt
  loc_1345C12: var_98 = CVar(CLng(&HA)) 'Long
  loc_1345C1D: var_B8 = CVar(CInt(7)) 'Integer
  loc_1345C24: LateIdCallSt
  loc_1345C2F: var_98 = CVar(CLng(&HA)) 'Long
  loc_1345C34: var_B8 = &H514
  loc_1345C40: LateIdCallSt
  loc_1345C48: var_98 = 0
  loc_1345C54: var_B8 = CVar(CLng(&HB)) 'Long
  loc_1345C59: var_D8 = "MSGType"
  loc_1345C62: LateIdCallSt
  loc_1345C6D: var_98 = CVar(CLng(&HB)) 'Long
  loc_1345C78: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345C7F: LateIdCallSt
  loc_1345C8A: var_98 = CVar(CLng(&HB)) 'Long
  loc_1345C95: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345C9C: LateIdCallSt
  loc_1345CB8: LateIdCallSt
  loc_1345CCF: Set var_EC = Me.GridSel
  loc_1345CD5: Call 0.Method_Proc_235_39_1345F140 (1, var_F0, Nothing, &H3E8, CVar(CLng(&HB)), Nothing, &H3E8)
  loc_1345CEF: var_F0.Cols = 6
  loc_1345CF4: var_98 = 0
  loc_1345D00: var_B8 = CVar(CLng(0)) 'Long
  loc_1345D05: var_D8 = "Sr."
  loc_1345D0E: LateIdCallSt
  loc_1345D19: var_98 = CVar(CLng(0)) 'Long
  loc_1345D24: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345D2B: LateIdCallSt
  loc_1345D36: var_98 = CVar(CLng(0)) 'Long
  loc_1345D41: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345D48: LateIdCallSt
  loc_1345D53: var_98 = CVar(CLng(0)) 'Long
  loc_1345D58: var_B8 = &H190
  loc_1345D64: LateIdCallSt
  loc_1345D6C: var_98 = 0
  loc_1345D78: var_B8 = CVar(CLng(1)) 'Long
  loc_1345D7D: var_D8 = " "
  loc_1345D86: LateIdCallSt
  loc_1345D91: var_98 = CVar(CLng(1)) 'Long
  loc_1345D9C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345DA3: LateIdCallSt
  loc_1345DAE: var_98 = CVar(CLng(1)) 'Long
  loc_1345DB9: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345DC0: LateIdCallSt
  loc_1345DCB: var_98 = CVar(CLng(1)) 'Long
  loc_1345DD0: var_B8 = &H12C
  loc_1345DDC: LateIdCallSt
  loc_1345DE4: var_98 = 0
  loc_1345DF0: var_B8 = CVar(CLng(2)) 'Long
  loc_1345DF5: var_D8 = "Code"
  loc_1345DFE: LateIdCallSt
  loc_1345E09: var_98 = CVar(CLng(2)) 'Long
  loc_1345E14: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345E1B: LateIdCallSt
  loc_1345E26: var_98 = CVar(CLng(2)) 'Long
  loc_1345E31: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345E38: LateIdCallSt
  loc_1345E43: var_98 = CVar(CLng(2)) 'Long
  loc_1345E48: var_B8 = 0
  loc_1345E54: LateIdCallSt
  loc_1345E5C: var_98 = 0
  loc_1345E68: var_B8 = CVar(CLng(3)) 'Long
  loc_1345E6D: var_D8 = "Group Name"
  loc_1345E76: LateIdCallSt
  loc_1345E81: var_98 = CVar(CLng(3)) 'Long
  loc_1345E8C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345E93: LateIdCallSt
  loc_1345E9E: var_98 = CVar(CLng(3)) 'Long
  loc_1345EA9: var_B8 = CVar(CInt(1)) 'Integer
  loc_1345EB0: LateIdCallSt
  loc_1345EBB: var_98 = CVar(CLng(3)) 'Long
  loc_1345EC0: var_B8 = &H960
  loc_1345ECC: LateIdCallSt
  loc_1345ED7: var_98 = CVar(CLng(4)) 'Long
  loc_1345EDC: var_B8 = 0
  loc_1345EE8: LateIdCallSt
  loc_1345EF3: var_98 = CVar(CLng(5)) 'Long
  loc_1345EF8: var_B8 = 0
  loc_1345F04: LateIdCallSt
  loc_1345F0E: Set var_F4 = Nothing 
  loc_1345F12: Exit Sub
End Sub

Public Sub Proc_235_40_EA93E0
  'Data Table: 50D6D4
  Dim var_CC As Variant
  loc_EA936B: Me.FGrid1.Rows = 1
  loc_EA9388: var_CC = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_EA9390: Set var_D0 = Me.FGrid1
  loc_EA93BF: Me.FGrid1.FixedRows = 1
  loc_EA93D6: Me.CmdReload.BackColor = &H80FF80
  loc_EA93DE: Exit Sub
End Sub

Public Sub Proc_235_41_E84088
  'Data Table: 50D6D4
  loc_E84034: If (CBool(Me.DGHoliday.Visible) = &HFF) Then
  loc_E84046:   Me.DGHoliday.Visible = False
  loc_E8404E: End If
  loc_E8406A: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_E8407C:   Me.DGCity.Visible = False
  loc_E84084: End If
  loc_E84084: Exit Sub
End Sub

Public Sub Proc_235_42_FD6168(arg_C) 'FD6168
  'Data Table: 50D6D4
  Dim var_94 As MSHFlexGrid
  Dim var_A8 As Long
  Dim var_AC As TextBox
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim arg_5CFF As Integer
  loc_FD5FCB: var_A8 = CLng(Me.FGrid1.Col)
  loc_FD5FDB: If (var_A8 = CLng(5)) Then
  loc_FD5FEB:   Set var_94 = Me.TxtGrid
  loc_FD5FF1:   Call 0.Method_Proc_235_42_FD61680 (arg_C, var_AC)
  loc_FD5FF9:   var_B0 = var_AC.Text
  loc_FD601C:   var_128 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD6034:   var_148 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FD6061:   var_168 = CVar(CStr(Format(CVar(Val(var_B0)), "0"))) 'String
  loc_FD6069:   Set var_17C = Me.FGrid1
  loc_FD606F:   LateIdCallSt
  loc_FD6099: Else
  loc_FD60A0:   If (var_A8 = CLng(6)) Then
  loc_FD60B0:     Set var_94 = Me.TxtGrid
  loc_FD60B6:     Call 0.Method_Proc_235_42_FD61680 (arg_C, var_AC, var_B0, var_17C, var_168, 1)
  loc_FD60BE:     1 = var_AC.Text
  loc_FD60E1:     var_128 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FD60F9:     var_148 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_FD6126:     var_168 = CVar(CStr(Format(CVar(Val(var_B0)), "0"))) 'String
  loc_FD612E:     Set var_17C = Me.FGrid1
  loc_FD6134:     LateIdCallSt
  loc_FD615B:   End If
  loc_FD615B: End If
  loc_FD6160: Proc_235_42_FD6168 = &HFF
  loc_FD6166: arg_5CFF = var_17C
End Sub

Public Sub Proc_235_43_EE8A34(arg_C) 'EE8A34
  'Data Table: 50D6D4
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE89A2: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE89C1: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE89E4:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE8A00:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE8A08:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE8A0D:   var_8C = CStr(var_108)
  loc_EE8A21: Next var_B8 'Integer
  loc_EE8A29: var_88 = var_8C
  loc_EE8A2C: Proc_235_43_EE8A34 = 
End Sub

Public Sub Proc_235_44_EEF7A0(arg_C) 'EEF7A0
  'Data Table: 50D6D4
  Dim var_90 As Integer
  Dim var_B0 As Integer
  Dim var_10C As Variant
  loc_EEF6E5: Randomize(var_B0)
  loc_EEF706: var_90 = CInt(Int(((CDbl(&H63) * Rnd(var_B0)) + CDbl(1))))
  loc_EEF716: var_B0 = Chr(CLng((var_90 + &H1B)))
  loc_EEF72F: For var_B8 = 1 To CInt(Len(arg_C)): var_8E = var_B8 'Integer
  loc_EEF76B:   var_EC = Chr(CLng(((Asc(CStr(Mid(arg_C, CLng(var_8E), 1))) + &H1B) + var_90)))
  loc_EEF773:   var_10C = (CVar(CStr(1)) + var_EC)
  loc_EEF778:   var_8C = CStr(var_10C)
  loc_EEF78C: Next var_B8 'Integer
  loc_EEF794: var_88 = var_8C
  loc_EEF797: Proc_235_44_EEF7A0 = 
End Sub

Public Sub Proc_235_45_12A2170(arg_C, arg_10, arg_14) '12A2170
  'Data Table: 50D6D4
  Dim var_B8 As Integer
  Dim var_90 As Integer
  Dim var_A8 As Variant
  Dim var_F0 As Long
  Dim var_E0 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_11C As MSHFlexGrid
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_1AC As Variant
  Dim var_1EC As Variant
  Dim var_1FC As Variant
  Dim var_20C As Variant
  Dim var_24C As Variant
  Dim var_256 As Integer
  loc_12A1B92: On Error Goto loc_12A215A
  loc_12A1B98: var_8C = vbNullString
  loc_12A1BA3: CRefVarAry
  loc_12A1BAB: For var_98 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_98 'Integer
  loc_12A1BCC:   If (arg_C(var_8E) = 0) Then
  loc_12A1BCF:     GoTo loc_12A1FAB
  loc_12A1BD2:   End If
  loc_12A1BE3:   var_90 = CInt(arg_C(var_8E))
  loc_12A1BED:   var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A1C05:   Set var_DC = Me.GridSel
  loc_12A1C0B:   Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, 1)
  loc_12A1C33:   If (CStr(var_E0.TextMatrix)) = "þ") Then
  loc_12A1C3F:     If (CInt(arg_14) = 0) Then
  loc_12A1C46:       var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A1C5E:       Set var_DC = Me.GridSel
  loc_12A1C64:       Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, 2, var_A8)
  loc_12A1CA9:       Set var_118 = Me.GridSel
  loc_12A1CAF:       Call 0.Method_Proc_235_45_12A21700 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A1CD0:       var_1AC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A1CEE:       var_1EC = (var_A8 + IIf((var_8C = vbNullString), Trim(CVar(CStr(var_E0.TextMatrix)))), var_1AC))
  loc_12A1CF3:       var_8C = CStr(var_1EC)
  loc_12A1D1B:     Else
  loc_12A1D24:       If (CInt(arg_14) = 1) Then
  loc_12A1D43:         Set var_DC = Me.GridSel
  loc_12A1D49:         Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, 2)
  loc_12A1D93:         Set var_118 = Me.GridSel
  loc_12A1D99:         Call 0.Method_Proc_235_45_12A21700 (arg_10, var_11C, 2, CVar(CLng(var_90)), CVar("," & "'"))
  loc_12A1DBA:         var_1FC = (CVar(var_8C) + Trim(CVar(CStr(var_11C.TextMatrix)))))
  loc_12A1DC3:         var_20C = (var_1FC + "'")
  loc_12A1DCF:         var_16C = ("'" + Trim(CVar(CStr(var_E0.TextMatrix)))))
  loc_12A1DD8:         var_17C = (var_11C.TextMatrix) + "'")
  loc_12A1DF3:         var_24C = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(var_11C.TextMatrix))), var_20C))
  loc_12A1DF8:         var_8C = CStr(var_24C)
  loc_12A1E25:       End If
  loc_12A1E25:     End If
  loc_12A1E44:     Set var_DC = Me.GridSel
  loc_12A1E4A:     Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, 2, CVar(CLng(var_90)))
  loc_12A1E7C:     If (Len(var_94 & CStr(var_E0.TextMatrix))) < &HFF) Then
  loc_12A1E9B:       Set var_DC = Me.GridSel
  loc_12A1EA1:       Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, 2)
  loc_12A1EBA:       var_114 = Trim(CVar(CStr(var_E0.TextMatrix))))
  loc_12A1EE6:       Set var_118 = Me.GridSel
  loc_12A1EEC:       Call 0.Method_Proc_235_45_12A21700 (arg_10, var_11C, 2, CVar(CLng(var_90)), ",")
  loc_12A1EF4:       var_16C = var_11C.TextMatrix)
  loc_12A1EFF:       var_17C = CVar(CStr(var_16C)) 'String
  loc_12A1F0D:       var_1AC = (CVar(var_94) + Trim(var_17C))
  loc_12A1F2B:       var_1EC = (CVar(CLng(var_90)) + IIf((var_94 = vbNullString), var_114, CVar(CStr(var_11C.TextMatrix)))))
  loc_12A1F30:       var_94 = CStr(CVar("," & "'"))
  loc_12A1F55:     End If
  loc_12A1F59:     var_A8 = CVar(CLng(var_90)) 'Long
  loc_12A1F77:     Set var_DC = Me.GridSel
  loc_12A1F7D:     Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, "¨", 1)
  loc_12A1F85:     LateIdCallSt
  loc_12A1F97:   Else
  loc_12A1F9E:     var_B8 = 0
  loc_12A1FA7:     VarIndexSt
  loc_12A1FAB:   End If
  loc_12A1FAB:   ' Referenced from: 12A1BCF
  loc_12A1FAE: Next var_98 'Integer
  loc_12A1FBB: CRefVarAry
  loc_12A1FC3: For var_254 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_254 'Integer
  loc_12A1FFB:   If CBool(arg_C(var_8E) <> 0) Then
  loc_12A2002:     var_A8 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_12A2020:     Set var_DC = Me.GridSel
  loc_12A2026:     Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, "þ", 1)
  loc_12A202E:     LateIdCallSt
  loc_12A203D:   End If
  loc_12A2040: Next var_254 'Integer
  loc_12A204D: If (var_8C = vbNullString) Then
  loc_12A2050:   var_A8 = 0
  loc_12A2059:   var_F0 = 2
  loc_12A206C:   Set var_DC = Me.GridSel
  loc_12A2072:   Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0)
  loc_12A207A:   var_C8 = var_E0.TextMatrix)
  loc_12A20A2:   MsgBox(CVar("Select " & CStr(var_C8)), &H40, var_114, var_16C, var_17C)
  loc_12A20C8:   Set var_DC = Me.GridSel
  loc_12A20CE:   Call 0.Method_Proc_235_45_12A21700 (arg_10, var_E0, var_C8)
  loc_12A20ED:   Proc_235_45_12A2170 = 0
  loc_12A20F3: End If
  loc_12A20F6: var_88 = var_8C
  loc_12A20FC: var_256 = arg_10
  loc_12A2105: If (var_256 = 1) Then
  loc_12A210E:   global_112 = var_94
  loc_12A2115: Else
  loc_12A211B:   If (var_256 = 2) Then
  loc_12A2124:     global_116 = var_94
  loc_12A212B:   Else
  loc_12A2131:     If (var_256 = 3) Then
  loc_12A213A:       global_120 = var_94
  loc_12A2141:     Else
  loc_12A2147:       If (var_256 = 4) Then
  loc_12A2150:         global_124 = var_94
  loc_12A2154:       End If
  loc_12A2154:     End If
  loc_12A2154:   End If
  loc_12A2154: End If
  loc_12A2154: Proc_235_45_12A2170 = var_256
  loc_12A215A: ' Referenced from: 12A1B92
  loc_12A2162: Proc_6_60_E62BC4(0, GridSel.DispID_8001)
  loc_12A2167: Proc_235_45_12A2170 = var_F0
End Sub
