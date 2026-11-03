VERSION 5.00
Begin VB.Form FrmDataRecieving
  Caption = "Data Recieving Window . . ."
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "FrmDataRecieving"
  MDIChild = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 8115
  ClientHeight = 5775
  Begin TextBox Text1
    Left = 705
    Top = 4680
    Width = 5355
    Height = 360
    TabIndex = 14
    MultiLine = -1  'True
    Appearance = 0 'Flat
  End
  Begin ProgressBar PBar1
    Left = 510
    Top = 5325
    Width = 5370
    Height = 360
    TabIndex = 11
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 705
    Top = 705
    Width = 5370
    Height = 3990
    TabIndex = 6
    Begin TextBox Txt
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 0
      Top = 30
      Width = 5340
      Height = 315
      TabIndex = 13
      MaxLength = 250
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
    Begin MSHFlexGrid TGrid
      Index = 0
      Left = 15
      Top = 345
      Width = 2655
      Height = 3240
      TabIndex = 7
    End
    Begin MSHFlexGrid TGrid
      Index = 1
      Left = 2685
      Top = 345
      Width = 2655
      Height = 3240
      TabIndex = 8
    End
    Begin Label lblSource
      Caption = " "
      Left = 135
      Top = 3645
      Width = 2535
      Height = 285
      TabIndex = 10
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
    Begin Label lblDestination
      Left = 2835
      Top = 3630
      Width = 2490
      Height = 300
      TabIndex = 9
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
  End
  Begin CommandButton cmdBackup
    Caption = "BackUp DataBase ..."
    Left = 6135
    Top = 1440
    Width = 1785
    Height = 345
    TabIndex = 5
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = -105
    Top = 375
    Width = 2070
    Height = 255
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 250
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton cmdDestination
    Caption = "Open Destin ..."
    Left = 2085
    Top = 375
    Width = 1785
    Height = 285
    TabIndex = 3
  End
  Begin CommandButton cmdSourcePath
    Caption = "Open Source ..."
    Left = 6135
    Top = 1050
    Width = 1785
    Height = 360
    TabIndex = 2
  End
  Begin CommandButton cmdVerifyDatabase
    Caption = "Transfer Database ..."
    Left = 6135
    Top = 1815
    Width = 1785
    Height = 360
    TabIndex = 1
  End
  Begin CommandButton CmdTables
    Caption = "Show Tables ..."
    Left = 585
    Top = 5370
    Width = 1785
    Height = 300
    TabIndex = 0
  End
  Begin CommonDialog CDLG
  End
  Begin TopCtrl TopCtrl1
    Left = 0
    Top = 5400
    Width = 8115
    Height = 375
    TabIndex = 12
  End
  Begin Line LnL
    X1 = 6990
    Y1 = 2880
    X2 = 6990
    Y2 = 3645
    BorderWidth = 2
  End
  Begin Line LnR
    X1 = 7125
    Y1 = 2850
    X2 = 7125
    Y2 = 3615
    BorderWidth = 2
  End
  Begin Image Image1
    Picture = "FrmDataRecieving.frx":0
    Left = 6660
    Top = 2415
    Width = 720
    Height = 540
    Stretch = -1  'True
  End
  Begin Image Image2
    Picture = "FrmDataRecieving.frx":442
    Left = 6660
    Top = 3525
    Width = 765
    Height = 540
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Line LnM
    BorderColor = &HFF&
    X1 = 7050
    Y1 = 2910
    X2 = 7050
    Y2 = 2980
    BorderWidth = 7
  End
End

Attribute VB_Name = "FrmDataRecieving"


Private Sub cmdDestination_Click() 'F12E1C
  'Data Table: 43BA88
  Dim var_A8 As CommonDialog
  Dim var_F4 As TextBox
  Dim var_F0 As TextBox
  loc_F12D4C: Me.CDLG.Filter = "*.mdb"
  loc_F12D73: Me.CDLG.FileName = Me.CDLG._Action
  loc_F12D9D: If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_F12DAD:   Me.CDLG.FileName = " "
  loc_F12DC7:   Set var_F0 = Me.Txt
  loc_F12DCD:   Call 0.Method_cmdDestination_Click0 (CInt(1), var_F4)
  loc_F12DD5:   var_F4.Text = CStr()
  loc_F12DF0: Else
  loc_F12DFE:   Set var_A8 = Me.Txt
  loc_F12E04:   Call 0.Method_cmdDestination_Click0 (CInt(1), var_F0)
  loc_F12E0C:   var_F0.Text = vbNullString
  loc_F12E18: End If
  loc_F12E18: Exit Sub
  loc_F12E19: DOC
End Sub

Private Sub CmdTables_Click() '124DB10
  'Data Table: 43BA88
  Dim var_9C As Variant
  Dim var_C4 As Variant
  Dim var_F8 As Variant
  Dim var_E8 As String
  Dim var_D4 As Variant
  Dim MemVar_1F937DC As String
  Dim MemVar_1F937F4 As Integer
  Dim var_170 As Single
  Dim var_174 As MSHFlexGrid
  Dim var_88 As Label
  Dim var_1A4 As MSHFlexGrid
  loc_124D5E0: Call Ini_Grid()
  loc_124D5F0: Set var_88 = Me.Txt
  loc_124D5F6: Call 0.Method_CmdTables_Click0 (CInt(0))
  loc_124D618: Set var_B0 = Me.Txt
  loc_124D61E: Call 0.Method_CmdTables_Click0 (CInt(1), var_B4)
  loc_124D626: var_C4 = CVar(var_B4) 'Address
  loc_124D62D: var_D4 = Ucase(var_C4)
  loc_124D649: If (Ucase(CVar(var_8C)) = var_D4) Then
  loc_124D669:   var_E8 = "Please check Source & destination path!" & vbCrLf
  loc_124D673:   MsgBox(CVar(var_E8 & "Can not be same path."), &H40, "Validation...", var_C4, var_D4)
  loc_124D686:   Exit Sub
  loc_124D687: End If
  loc_124D697: Set var_88 = Me.Txt
  loc_124D69D: Call 0.Method_CmdTables_Click0 (CInt(0), var_8C)
  loc_124D6BE: var_C4 = InStr(1, Ucase(CVar(var_8C)), ".MDB", 0)
  loc_124D6C8: var_D4 = (var_C4 <= 0)
  loc_124D6DC: Set var_B0 = Me.Txt
  loc_124D6E2: Call 0.Method_CmdTables_Click0 (CInt(1), var_B4, 1)
  loc_124D72D: If CBool(var_8C And (InStr(var_D4, Ucase(CVar(var_B4)), ".MDB", 0) <= 0)) Then
  loc_124D751:   MsgBox("Please check database path!", &H40, "Validation...", var_C4, var_D4)
  loc_124D761:   Exit Sub
  loc_124D762: End If
  loc_124D76D: Set var_88 = Me.Txt
  loc_124D773: Call 0.Method_CmdTables_Click0 (CInt(0))
  loc_124D78B: MemVar_1F937DC = CStr(Trim(CVar(var_8C)))
  loc_124D7AA: Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F937DC), MemVar_1F937DC)
  loc_124D7C3: Call 0.Method_arg_24 (CVar("Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False;Data Source=" & MemVar_1F937E0))
  loc_124D7CD: MemVar_1F937F4 = &HFF
  loc_124D7DB: Set var_88 = Me.TGrid
  loc_124D7E1: Call 0.Method_CmdTables_Click0 (CInt(0), var_8C)
  loc_124D7E9: Set var_174 = var_8C
  loc_124D800: Call 0.Method_arg_1C (var_88, var_178, var_16A)
  loc_124D808: 1 = Me.TGrid.Count
  loc_124D814: For var_17C = var_8C To CInt(var_178): MemVar_1F937F4 = var_17C 'Integer
  loc_124D826:   var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124D833:   Call 0.Method_arg_1C (var_88, "Please check database path!", var_8C)
  loc_124D83B:   Call 0.Method_arg_28 (var_E8)
  loc_124D843:   Call 0.Method_arg_28 (var_8C)
  loc_124D85A:   If (var_E8 = "TABLE") Then
  loc_124D864:     var_170 = (var_170 + CDbl(1))
  loc_124D86F:     var_F8 = CVar(CLng((var_170 + CDbl(1)))) 'Long
  loc_124D877:     Me.TGrid.Rows = "Please check database path!"
  loc_124D888:     var_174.Row = CVar(CLng(var_170))
  loc_124D898:     var_174.Col = CVar(CLng(0))
  loc_124D8A4:     var_174.CellFontBold = True
  loc_124D8AD:     var_F8 = CVar(CLng(var_170)) 'Long
  loc_124D8BF:     var_E8 = CStr(var_170)
  loc_124D8CD:     LateIdCallSt
  loc_124D8F8:     var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124D905:     Call 0.Method_arg_1C (var_88, var_F8, var_8C, var_E8, CVar(CLng(1)), CVar(CLng(var_170)))
  loc_124D90D:     Call 0.Method_arg_28 (var_174, CVar(var_E8 & ". "), CVar(CLng(0)))
  loc_124D915:     Call 0.Method_arg_20 (var_F8)
  loc_124D91D:     var_9C = CVar(var_E8) 'String
  loc_124D924:     LateIdCallSt
  loc_124D936:   End If
  loc_124D939: Next var_17C 'Integer
  loc_124D940: Set var_174 = Nothing 
  loc_124D94C: var_E8 = CStr(var_170)
  loc_124D95D: Me.lblSource.Caption = "No. of Tables: " & var_E8
  loc_124D96F: var_170 = CDbl(0)
  loc_124D97D: Set var_88 = Me.TGrid
  loc_124D983: Call 0.Method_CmdTables_Click0 (CInt(1), var_8C)
  loc_124D98B: Set var_1A4 = var_8C
  loc_124D9A2: Call 0.Method_arg_1C (var_88, var_178, var_16A)
  loc_124D9AA: 1 = Me.TGrid.Count
  loc_124D9B6: For var_1A8 =  To CInt(var_178): var_170 = var_1A8 'Integer
  loc_124D9C8:   var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124D9D5:   Call 0.Method_arg_1C (var_88, var_F8)
  loc_124D9DD:   Call 0.Method_arg_28 (var_8C)
  loc_124D9E5:   Call 0.Method_arg_28 (var_E8)
  loc_124D9FC:   If (var_E8 = "TABLE") Then
  loc_124DA06:     var_170 = (var_170 + CDbl(1))
  loc_124DA11:     var_F8 = CVar(CLng((var_170 + CDbl(1)))) 'Long
  loc_124DA19:     Me.TGrid.Rows = var_F8
  loc_124DA2A:     var_1A4.Row = CVar(CLng(var_170))
  loc_124DA3A:     var_1A4.Col = CVar(CLng(0))
  loc_124DA46:     var_1A4.CellFontBold = True
  loc_124DA4F:     var_F8 = CVar(CLng(var_170)) 'Long
  loc_124DA61:     var_E8 = CStr(var_170)
  loc_124DA6F:     LateIdCallSt
  loc_124DA9A:     var_F8 = CVar((var_16A - 1)) 'Integer
  loc_124DAA7:     Call 0.Method_arg_1C (var_88, var_F8, var_8C, var_E8, CVar(CLng(1)), CVar(CLng(var_170)))
  loc_124DAAF:     Call 0.Method_arg_28 (var_1A4, CVar(var_E8 & ". "), CVar(CLng(0)))
  loc_124DAB7:     Call 0.Method_arg_20 (var_F8)
  loc_124DABF:     var_9C = CVar(var_E8) 'String
  loc_124DAC6:     LateIdCallSt
  loc_124DAD8:   End If
  loc_124DADB: Next var_1A8 'Integer
  loc_124DAE2: Set var_1A4 = Nothing 
  loc_124DAFF: Me.lblDestination.Caption = "No. of Tables: " & CStr(var_170)
  loc_124DB0E: Exit Sub
End Sub

Private Sub Form_Load() 'EB40F8
  'Data Table: 43BA88
  Dim var_AC As TextBox
  Dim var_A8 As CommandButton
  loc_EB4065: Set var_A8 = Me.TopCtrl1
  loc_EB406B: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_EB407E: Set var_A8 = Me.Txt
  loc_EB4084: Call 0.Method_Form_Load0 (1, var_AC)
  loc_EB408C: var_AC.Visible = False
  loc_EB409D: Call Display_Lines(0)
  loc_EB40AE: Me.cmdDestination.Visible = False
  loc_EB40CE: Proc_6_23_DFBA28(Me, 6100)
  loc_EB40E2: Me.CmdTables.Visible = False
  loc_EB40EA: Call Ini_Grid()
  loc_EB40F2: MemVar_1F937E0 = MemVar_1F92108
  loc_EB40F6: Exit Sub
End Sub

Private Sub Form_Resize() 'DFB958
  'Data Table: 43BA88
  loc_DFB954: Exit Sub
End Sub

Private Sub cmdBackup_Click() '1295D18
  'Data Table: 43BA88
  Dim var_A4 As Variant
  Dim var_CC As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim MemVar_1F937DC As String
  Dim var_174 As Long
  Dim var_B4 As Variant
  Dim MemVar_1F9B698 As Global
  loc_129574C: On Error Goto loc_1295CD2
  loc_129575A: Set var_90 = Me.Txt
  loc_1295760: Call 0.Method_cmdBackup_Click0 (CInt(0))
  loc_1295782: Set var_B8 = Me.Txt
  loc_1295788: Call 0.Method_cmdBackup_Click0 (CInt(1), var_BC)
  loc_1295790: var_CC = CVar(var_BC) 'Address
  loc_1295797: var_DC = Ucase(var_CC)
  loc_12957B3: If (Ucase(CVar(var_94)) = var_DC) Then
  loc_12957DD:   MsgBox(CVar("Please check Source & destination path!" & vbCrLf & "Can not be same path."), &H40, "Validation...", var_CC, var_DC)
  loc_12957F0:   Exit Sub
  loc_12957F1: End If
  loc_1295801: Set var_90 = Me.Txt
  loc_1295807: Call 0.Method_cmdBackup_Click0 (CInt(0), var_94)
  loc_1295828: var_CC = InStr(1, Ucase(CVar(var_94)), ".MDB", 0)
  loc_1295832: var_DC = (var_CC <= 0)
  loc_1295846: Set var_B8 = Me.Txt
  loc_129584C: Call 0.Method_cmdBackup_Click0 (CInt(1), var_BC, 1)
  loc_1295897: If CBool(var_94 And (InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) <= 0)) Then
  loc_12958BB:   MsgBox("Please check database path!", &H40, "Validation...", var_CC, var_DC)
  loc_12958CB:   Exit Sub
  loc_12958CC: End If
  loc_12958D7: Set var_90 = Me.Txt
  loc_12958DD: Call 0.Method_cmdBackup_Click0 (CInt(0))
  loc_12958E5: var_A4 = CVar(var_94) 'Address
  loc_12958F5: MemVar_1F937DC = CStr(Trim(var_A4))
  loc_1295918: var_174 = InStrRev(MemVar_1F937DC, "\", -1, 0)
  loc_1295935: var_88 = CStr(Mid(MemVar_1F937DC, var_174, var_A4))
  loc_129595C: var_A4 = Left(var_88, (Len(var_88) - 4))
  loc_1295969: var_B4 = (var_A4 + " ")
  loc_1295995: var_140 = (1 + CVar(CStr(Format(Date, "dd_MM_yyyy"))))
  loc_129599E: var_160 = (InStr("dd_MM_yyyy", Ucase(CVar(var_BC)), ".MDB", 0) + ".Mdb")
  loc_12959A3: var_88 = CStr((InStr("dd_MM_yyyy", Ucase(CVar(var_BC)), ".MDB", 0) <= 0))
  loc_12959D0: var_174 = InStrRev(MemVar_1F937E0, "\", -1, 0)
  loc_12959ED: var_8C = CStr(Mid(MemVar_1F937E0, var_174, var_A4))
  loc_12959FA: var_CC = Date
  loc_1295A14: var_A4 = Left(var_8C, (Len(var_8C) - 4))
  loc_1295A21: var_B4 = (var_A4 + " ")
  loc_1295A34: var_DC = "dd_MM_yyyy"
  loc_1295A4D: var_140 = (1 + CVar(CStr(Format(var_CC, var_DC))))
  loc_1295A56: var_160 = (InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) + ".Mdb")
  loc_1295A5B: var_8C = CStr((InStr(var_DC, Ucase(CVar(var_BC)), ".MDB", 0) <= 0))
  loc_1295A82: var_90 = Me.Global.App
  loc_1295AA2: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp", var_17A, 1, Mid(MemVar_1F937E0, var_174, var_A4), var_174)
  loc_1295AB7: If (var_17A = 0) Then
  loc_1295AC9:   var_90 = Me.Global.App
  loc_1295AE9:   Call 0.Method_arg_74 (App.Path & "\Database BackUp", var_94, 1, Mid(MemVar_1F937E0, var_174, var_A4))
  loc_1295AFC: End If
  loc_1295B0B: var_90 = MemVar_1F9B698.App
  loc_1295B2B: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp\Sourec Database", var_17A, var_174)
  loc_1295B40: If (var_17A = 0) Then
  loc_1295B52:   var_90 = Me.Global.App
  loc_1295B72:   Call 0.Method_arg_74 (App.Path & "\Database BackUp\Sourec Database", var_94)
  loc_1295B85: End If
  loc_1295B91: var_90 = MemVar_1F9B698.App
  loc_1295BBD: Call 0.Method_arg_6C (MemVar_1F937DC, App.Path & "\Database BackUp\Sourec Database" & var_88, &HFF)
  loc_1295BDD: var_90 = Me.Global.App
  loc_1295BFD: Call 0.Method_cmdBackup_Click8 (App.Path & "\Database BackUp\Destination Database", var_17A)
  loc_1295C12: If (var_17A = 0) Then
  loc_1295C24:   var_90 = Me.Global.App
  loc_1295C44:   Call 0.Method_arg_74 (App.Path & "\Database BackUp\Destination Database", var_94)
  loc_1295C57: End If
  loc_1295C63: var_90 = MemVar_1F9B698.App
  loc_1295C6B: var_F0 = App.Path
  loc_1295C8F: Call 0.Method_arg_6C (MemVar_1F937DC, var_F0 & "\Database BackUp\Destination Database" & var_8C, &HFF)
  loc_1295CC1: MsgBox("BackUp process successfully completed.", &H40, "Backup...", var_CC, var_DC)
  loc_1295CD1: Exit Sub
  loc_1295CD2: ' Referenced from: 129574C
  loc_1295CDA: Set var_90 = Err()
  loc_1295CE0: Call 0.Method_arg_2C (var_F0, MemVar_1F937DC)
  loc_1295D01: MsgBox(CVar(var_F0), &H40, "Validation...", var_CC, var_DC)
  loc_1295D14: Exit Sub
End Sub

Private Sub cmdSourcePath_Click() 'F12818
  'Data Table: 43BA88
  Dim var_A8 As CommonDialog
  Dim var_F4 As TextBox
  Dim var_F0 As TextBox
  loc_F12748: Me.CDLG.Filter = "*.mdb"
  loc_F1276F: Me.CDLG.FileName = Me.CDLG._Action
  loc_F12799: If CBool(Trim(CVar(CStr())) <> vbNullString) Then
  loc_F127A9:   Me.CDLG.FileName = " "
  loc_F127C3:   Set var_F0 = Me.Txt
  loc_F127C9:   Call 0.Method_cmdSourcePath_Click0 (CInt(0), var_F4)
  loc_F127D1:   var_F4.Text = CStr()
  loc_F127EC: Else
  loc_F127FA:   Set var_A8 = Me.Txt
  loc_F12800:   Call 0.Method_cmdSourcePath_Click0 (CInt(0), var_F0)
  loc_F12808:   var_F0.Text = vbNullString
  loc_F12814: End If
  loc_F12814: Exit Sub
  loc_F12815: DOC
End Sub

Public Sub Ini_Grid() '10430F0
  'Data Table: 43BA88
  Dim var_88 As Variant
  Dim var_90 As Line
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_E4 As String
  Dim var_F8 As MSHFlexGrid
  loc_1042EAB: Me.LnM.Y1 = Me.LnR.Y1
  loc_1042ED0: Set var_90 = Me.LnM
  loc_1042ED6: var_90.Y2 = Me.LnR.Y1
  loc_1042EF1: Me.PBar1.Visible = False
  loc_1042F04: Set var_88 = Me.TGrid
  loc_1042F0A: Call 0.Method_Ini_Grid0 (CInt(0))
  loc_1042F12: Set var_B4 = var_90
  loc_1042F24: var_B4.Cols = 2
  loc_1042F35: var_B4.Row = 0
  loc_1042F45: var_B4.Col = CVar(CLng(0))
  loc_1042F51: var_B4.CellFontBold = True
  loc_1042F56: var_A0 = 0
  loc_1042F62: var_C4 = CVar(CLng(0)) 'Long
  loc_1042F67: var_E4 = "SNo"
  loc_1042F70: LateIdCallSt
  loc_1042F7B: var_A0 = CVar(CLng(0)) 'Long
  loc_1042F80: var_C4 = &H1F4
  loc_1042F8C: LateIdCallSt
  loc_1042F9F: var_B4.Col = CVar(CLng(1))
  loc_1042FAB: var_B4.CellFontBold = True
  loc_1042FB0: var_A0 = 0
  loc_1042FBC: var_C4 = CVar(CLng(1)) 'Long
  loc_1042FCA: LateIdCallSt
  loc_1042FE6: LateIdCallSt
  loc_1042FFF: Set var_88 = Me.TGrid
  loc_1043005: Call 0.Method_Ini_Grid0 (CInt(1), var_90, Nothing, &H708, CVar(CLng(1)), Nothing, "Source Data")
  loc_104300D: Set var_F8 = var_90
  loc_104301F: var_F8.Cols = 2
  loc_1043030: var_F8.Row = 0
  loc_1043040: var_F8.Col = CVar(CLng(0))
  loc_104304C: var_F8.CellFontBold = True
  loc_1043051: var_A0 = 0
  loc_104305D: var_C4 = CVar(CLng(0)) 'Long
  loc_1043062: var_E4 = "SNo"
  loc_104306B: LateIdCallSt
  loc_1043076: var_A0 = CVar(CLng(0)) 'Long
  loc_104307B: var_C4 = &H1F4
  loc_1043087: LateIdCallSt
  loc_104309A: var_F8.Col = CVar(CLng(1))
  loc_10430A6: var_F8.CellFontBold = True
  loc_10430AB: var_A0 = 0
  loc_10430B7: var_C4 = CVar(CLng(1)) 'Long
  loc_10430BC: var_E4 = "Destination Data"
  loc_10430C5: LateIdCallSt
  loc_10430D0: var_A0 = CVar(CLng(1)) 'Long
  loc_10430D5: var_C4 = &H708
  loc_10430E1: LateIdCallSt
  loc_10430EB: Set var_F8 = Nothing 
  loc_10430EF: Exit Sub
End Sub

Public Sub Display_Lines(Flag) 'E802E4
  'Data Table: 43BA88
  loc_E80285: Me.LnR.Visible = Flag
  loc_E8029A: Me.LnM.Visible = Flag
  loc_E802AF: Me.LnL.Visible = Flag
  loc_E802C4: Me.Image1.Visible = Flag
  loc_E802D9: Me.Image2.Visible = Flag
  loc_E802E1: Exit Sub
End Sub
