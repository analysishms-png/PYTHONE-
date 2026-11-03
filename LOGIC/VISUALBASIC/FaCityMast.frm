VERSION 5.00
Begin VB.Form FaCityMast
  Caption = "City Master"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11610
  ClientHeight = 7125
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11610
    Height = 450
    TabIndex = 18
  End
  Begin CommandButton CmdRef
    Caption = "..."
    Left = 7605
    Top = 3060
    Width = 330
    Height = 300
    TabIndex = 4
    TabStop = 0   'False
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    ToolTipText = "To Print Settlement Details"
  End
  Begin DataGrid DGSName
    Left = 8475
    Top = 3180
    Width = 4320
    Height = 2835
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin DataGrid DGHelp
    Left = 9600
    Top = 3420
    Width = 4395
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 3060
    Width = 3960
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 3375
    Width = 4300
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    MaxLength = 30
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3645
    Top = 2745
    Width = 1500
    Height = 285
    TabIndex = 2
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
    Index = 2
    BackColor = &HC0FFFF&
    ForeColor = &HFFFF&
    Left = 9480
    Top = 3915
    Width = 1500
    Height = 255
    Visible = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    MaxLength = 10
    BeginProperty Font
      Name = "MS Sans Serif"
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
    Left = 3645
    Top = 2430
    Width = 1500
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 6
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
    Left = 3645
    Top = 2115
    Width = 4300
    Height = 285
    TabIndex = 0
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 6105
    Top = 5835
    Width = 2790
    Height = 285
    TabIndex = 17
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
    Left = 2730
    Top = 5835
    Width = 2880
    Height = 255
    TabIndex = 16
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
    Top = 360
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
    Caption = "State Name"
    ForeColor = &HC00000&
    Left = 2295
    Top = 3075
    Width = 1110
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
  Begin Label Label3
    Caption = "STD Code"
    ForeColor = &H0&
    Left = 8250
    Top = 3930
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 11
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    Caption = "Zip Code"
    ForeColor = &HC00000&
    Left = 2295
    Top = 2760
    Width = 840
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
  Begin Label LblName
    Caption = "Country Name"
    Index = 3
    ForeColor = &HC00000&
    Left = 2295
    Top = 3390
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
  Begin Label LblName
    Caption = "Short Name"
    Index = 2
    ForeColor = &HC00000&
    Left = 2295
    Top = 2445
    Width = 1125
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
    Caption = "City Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 2295
    Top = 2115
    Width = 975
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
End

Attribute VB_Name = "FaCityMast"

Private global_88 As Long

Private Sub DGHelp_UnknownEvent_9 'F143C8
  'Data Table: 482B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F142E4: On Error Goto loc_F1439E
  loc_F142F6: Me.DGHelp.Visible = False
  loc_F14315: If (Me.RecordCount > 0) Then
  loc_F14335:   var_B0 = Me.Fields.Item("CityName")
  loc_F14346:   var_CC = CStr(var_B0.Value)
  loc_F14354:   Set var_B4 = Me.Txt
  loc_F1435A:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F14362:   var_B8.Text = var_CC
  loc_F14378: End If
  loc_F14383: Set var_A8 = Me.Txt
  loc_F14389: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F14391: var_B0.SetFocus
  loc_F1439D: Exit Sub
  loc_F1439E: ' Referenced from: F142E4
  loc_F143A4: Call 0.Method_arg_50 (var_CC)
  loc_F143B9: Proc_183_57_104AA84(var_CC, "DGHelp_Click")
  loc_F143C5: Exit Sub
End Sub

Private Sub DGSName_UnknownEvent_9 'F7FB9C
  'Data Table: 482B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F7FA58: On Error Goto loc_F7FB72
  loc_F7FA6A: Me.DGSName.Visible = False
  loc_F7FA89: If (Me.RecordCount > 0) Then
  loc_F7FAC8:   Set var_B4 = Me.Txt
  loc_F7FACE:   Call 0.Method_DGSName_UnknownEvent_90 (CInt(4), var_B8)
  loc_F7FAD6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F7FB09:   var_B0 = Me.Fields.Item("Code")
  loc_F7FB1A:   var_CC = CStr(var_B0.Value)
  loc_F7FB28:   Set var_B4 = Me.Txt
  loc_F7FB2E:   Call 0.Method_DGSName_UnknownEvent_90 (CInt(4), var_B8)
  loc_F7FB36:   var_B8.Tag = var_CC
  loc_F7FB4C: End If
  loc_F7FB57: Set var_A8 = Me.Txt
  loc_F7FB5D: Call 0.Method_DGSName_UnknownEvent_90 (CInt(4))
  loc_F7FB65: var_B0.SetFocus
  loc_F7FB71: Exit Sub
  loc_F7FB72: ' Referenced from: F7FA58
  loc_F7FB78: Call 0.Method_arg_50 (var_CC)
  loc_F7FB8D: Proc_183_57_104AA84(var_CC, "DGSName_Click")
  loc_F7FB99: Exit Sub
End Sub

Private Sub Form_Load() '11675CC
  'Data Table: 482B4C
  Dim var_8C As Label
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_B8 As DataGrid
  Dim var_BC As TextBox
  Dim var_C8 As String
  Dim unk_482B5F As Connection15
  loc_1167214: On Error Goto loc_11675A4
  loc_116721E: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_1167232: Me.LblUser.Left = CDbl(13500)
  loc_1167249: Me.LblUser.Top = CDbl(7800)
  loc_1167260: Me.LblLDt.Top = CDbl(8160)
  loc_1167277: Me.LblLDt.Left = CDbl(13500)
  loc_1167287: Call 0.Method_arg_7C (CDbl(1450))
  loc_1167294: Call 0.Method_arg_74 (CDbl(1625))
  loc_11672A1: Call 0.Method_MeC (CDbl(9200))
  loc_11672AE: Call 0.Method_Me4 (CDbl(17000))
  loc_11672C1: Set var_8C = Me.Txt
  loc_11672C7: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_11672E6: Me.DGHelp.Left = CVar(var_90.Left)
  loc_1167302: Set var_B8 = Me.Txt
  loc_1167308: Call 0.Method_Form_Load0 (CInt(0), var_BC)
  loc_1167323: Set var_8C = Me.Txt
  loc_1167329: Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_1167341: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_1167350: Me.DGHelp.Top = CVar(var_90.Left)
  loc_1167370: Set var_8C = Me.Txt
  loc_1167376: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_1167395: Me.DGSName.Left = CVar(var_90.Left)
  loc_11673B1: Set var_B8 = Me.Txt
  loc_11673B7: Call 0.Method_Form_Load0 (CInt(4), var_BC)
  loc_11673D8: Call 0.Method_Form_Load0 (CInt(4), var_90)
  loc_11673F0: var_A4 = CVar(((var_90.Top + var_BC.Height) + CDbl(&H1E))) 'Single
  loc_11673FF: Me.DGSName.Top = CVar(var_90.Left)
  loc_1167435: unk_482B5F.Execute "SELECT CityCode,CityName FROM City WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') ORDER BY CityName", var_DC, -1
  loc_1167464: CVarUnk
  loc_1167469: VerifyVarObj
  loc_1167475: LateIdStAd
  loc_11674A7: unk_482B5F.Execute "Select Code,Name from State WHERE (LOGSITE_CODE='" & MemVar_1F92078 & "' OR LOGSITE_CODE='HO') order by Name", var_DC, -1
  loc_11674D6: CVarUnk
  loc_11674DB: VerifyVarObj
  loc_11674E7: LateIdStAd
  loc_1167509: var_C8 = "SELECT City.CityCode AS CCode,City.CityName AS CName,City.ShortName AS CShortName,City.STDCode AS CSTDCode,City.ZipCode AS CZipCode,City.State as CityState,City.Country as CityCntry,City.Site_Code AS CSite_Code,City.U_Name AS CU_Name,City.U_EntDt AS CU_EntDt,City.U_AE AS CU_AE,State.Name AS CState,Country.Name AS CCountry,City.Site_Code,City.LogSite_Code FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F92078
  loc_1167519: unk_482B5F.Execute var_C8 & "' OR CITY.LOGSITE_CODE='HO') ORDER BY City.CityName", var_DC, -1
  loc_116754B: Set var_8C = Me
  loc_1167554: var_C8 = "INI"
  loc_1167562: Call Proc_195_29_EE9464(Proc_5_1_100CB50(var_C8, var_8C, Me.DGSName, var_8C, var_8C), Me.DGHelp, var_8C)
  loc_116756D: Call Proc_195_31_12EB430(var_8C, Me.Txt)
  loc_1167583: If (OpenMode = 1) Then
  loc_1167590:   Set var_8C = Me.TopCtrl1
  loc_1167596:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AE*P")
  loc_116759E:   Call TopCtrl1_UnknownEvent_A()
  loc_11675A3: End If
  loc_11675A3: Exit Sub
  loc_11675A4: ' Referenced from: 1167214
  loc_11675AA: Call 0.Method_arg_50 (var_C8)
  loc_11675BF: Proc_183_57_104AA84(var_C8, "Form_Load")
  loc_11675CB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED6A48
  'Data Table: 482B4C
  Dim var_8C As Label
  loc_ED69A6: Call 0.Method_arg_50 (var_88)
  loc_ED69B8: Me.LblFormCaption.Caption = var_88
  loc_ED69D1: Me.LblFormCaption.Left = CDbl(0)
  loc_ED69DD: Set var_A0 = Me.TopCtrl1
  loc_ED69E3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED69F0: Set var_8C = Me.TopCtrl1
  loc_ED69F6: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED6A10: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED6A2B: Call 0.Method_arg_100 (var_B8)
  loc_ED6A3D: Me.LblFormCaption.Width = var_B8
  loc_ED6A45: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E51830
  'Data Table: 482B4C
  loc_E51803: Set global_52 = Nothing
  loc_E51815: Set global_56 = Nothing
  loc_E51827: Set global_60 = Nothing
  loc_E5182E: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E67118
  'Data Table: 482B4C
  loc_E670D0: On Error Goto loc_E670EE
  loc_E670E5: Proc_183_40_F30B0C(Me, KeyCode)
  loc_E670ED: Exit Sub
  loc_E670EE: ' Referenced from: E670D0
  loc_E670F4: Call 0.Method_arg_50 (var_8C)
  loc_E67109: Proc_183_57_104AA84(var_8C, "Form_KeyDown")
  loc_E67115: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FD0EE4
  'Data Table: 482B4C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_EC As String
  loc_FD0D30: On Error Goto loc_FD0EBC
  loc_FD0D3D: Set var_88 = Me.Txt
  loc_FD0D43: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FD0D51: Proc_183_28_E20B20(var_8C)
  loc_FD0D5D: Call Proc_195_36_E84C58(var_8C)
  loc_FD0D65: var_92 = Index
  loc_FD0D70: If (var_92 = CInt(4)) Then
  loc_FD0DC1:   Set var_88 = Me.Txt
  loc_FD0DC7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FD0DCF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FD0DE7:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_FD0DEA:     Exit Sub
  loc_FD0DEB:   End If
  loc_FD0DF8:   Set var_88 = Me.Txt
  loc_FD0DFE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FD0E06:   var_A0 = var_8C.Text
  loc_FD0E18:   var_B0 = "Name"
  loc_FD0E53:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_FD0E5C:     Me.MoveFirst
  loc_FD0E7F:     Set var_88 = Me.Txt
  loc_FD0E85:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_FD0E8D:     0 = var_8C.Text
  loc_FD0EA6:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_FD0EBB:   End If
  loc_FD0EBB: End If
  loc_FD0EBB: Exit Sub
  loc_FD0EBC: ' Referenced from: FD0D30
  loc_FD0EC2: Call 0.Method_arg_50 (var_A0)
  loc_FD0ECA: var_EC = "Txt_GotFocus"
  loc_FD0ED7: Proc_183_57_104AA84(var_A0)
  loc_FD0EE3: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1100530
  'Data Table: 482B4C
  Dim var_8C As Integer
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_94 As Variant
  Dim unk_482B5F As Connection15
  Dim var_88 As Recordset15
  Dim var_C8 As String
  Dim var_A4 As TextBox
  loc_1100204: On Error Goto loc_1100506
  loc_1100211: If (CLng(Shift) = &H1B) Then
  loc_1100214:   Call Proc_195_36_E84C58()
  loc_1100219:   Exit Sub
  loc_110021A: End If
  loc_110021D: var_8C = KeyCode
  loc_1100228: If (var_8C = CInt(0)) Then
  loc_1100265:   Proc_183_31_100809C(Me.DGHelp, Me.Txt, CInt(0), global_56)
  loc_1100278: Else
  loc_1100280:   If (var_8C = CInt(4)) Then
  loc_1100287:     Set var_A0 = Me.DGSName
  loc_110028E:     Set var_A4 = Me.Txt
  loc_11002B9:     Proc_183_34_1305540(var_A0, var_A4, KeyCode, global_60, Shift, 0)
  loc_11002C9:   End If
  loc_11002C9: End If
  loc_11002D3: var_B4 = Me.DGSName.Visible
  loc_11002E3: Set var_94 = Me.DGHelp
  loc_1100304: If ((CBool(var_B4) = 0) And (CBool(var_94.Visible) = 0)) Then
  loc_110031A:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(0))) Then
  loc_1100323:     Proc_183_30_E53180(Shift, arg_14, 1, Shift)
  loc_1100328:   End If
  loc_1100346:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(4))) Then
  loc_110034F:     Call Txt_Validate(KeyCode)
  loc_110035A:     If (var_8A = 0) Then
  loc_110036B:       Set var_90 = Me.Txt
  loc_1100371:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_C8, var_8A)
  loc_1100379:       0 = var_94.Text
  loc_1100390:       If (var_C8 <> vbNullString) Then
  loc_11003B1:         Set var_90 = Me.Txt
  loc_11003B7:         Call 0.Method_Txt_KeyDown0 (CInt(4), var_94, var_C8, "Select Code,Name from Country where Code in(select Country from State where Name='", var_B4)
  loc_11003BF:         -1 = var_94.Text
  loc_11003D8:         unk_482B5F.Execute var_A0 & var_C8 & "')", 1, var_8C
  loc_11003E3:         Set var_88 = var_A0
  loc_110040F:         If (var_88.RecordCount > 0) Then
  loc_110044B:           Set var_A0 = Me.Txt
  loc_1100451:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_A4)
  loc_1100459:           var_A4.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_110049A:           var_C8 = CStr(var_88.Fields.Item("Code").Value)
  loc_11004A8:           Set var_A0 = Me.Txt
  loc_11004AE:           Call 0.Method_Txt_KeyDown0 (CInt(5), var_A4)
  loc_11004B6:           var_A4.Tag = var_C8
  loc_11004CC:         End If
  loc_11004CC:       End If
  loc_11004D2:       Call Proc_195_37_ECF56C(KeyCode)
  loc_11004D7:     End If
  loc_11004DA:   Else
  loc_11004EF:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11004F8:       Proc_183_29_E52C04(Shift)
  loc_11004FD:     End If
  loc_11004FD:   End If
  loc_11004FD: End If
  loc_1100502: Set var_88 = Nothing
  loc_1100505: Exit Sub
  loc_1100506: ' Referenced from: 1100204
  loc_110050C: Call 0.Method_arg_50 (var_C8)
  loc_1100521: Proc_183_57_104AA84(var_C8, "Txt_KeyDown")
  loc_110052D: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EDFC64
  'Data Table: 482B4C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EDFBB0: On Error Goto loc_EDFC3A
  loc_EDFBB9: Proc_183_52_E7F478(var_94)
  loc_EDFBC2: arg_10 = CInt(var_94)
  loc_EDFBCB: Proc_183_46_E070C0(arg_10, arg_10)
  loc_EDFBDE: If (KeyAscii = CInt(4)) Then
  loc_EDFBFD:   If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_EDFC0F:     var_A0 = "Name"
  loc_EDFC2A:     Proc_183_41_1459C78(Me.Txt, KeyAscii, global_60, arg_10)
  loc_EDFC39:   End If
  loc_EDFC39: End If
  loc_EDFC39: Exit Sub
  loc_EDFC3A: ' Referenced from: EDFBB0
  loc_EDFC40: Call 0.Method_arg_50 (var_A0, var_A0, 0)
  loc_EDFC55: Proc_183_57_104AA84(var_A0, "TXT_KeyPress")
  loc_EDFC61: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F4301C
  'Data Table: 482B4C
  Dim var_86 As Integer
  loc_F42F0C: On Error Goto loc_F42FF1
  loc_F42F12: var_86 = KeyCode
  loc_F42F1D: If (var_86 = CInt(0)) Then
  loc_F42F3C:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F42F49:     var_A4 = "CityName"
  loc_F42F68:     Proc_183_32_FE7F70(Me.Txt, CInt(0), global_56)
  loc_F42F77:   End If
  loc_F42F7A: Else
  loc_F42F82:   If (var_86 = CInt(4)) Then
  loc_F42FA1:     If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_F42FB5:       var_A4 = "Name"
  loc_F42FDD:       Proc_183_33_12A1B28(Me.DGSName, Me.Txt, CInt(4), global_60, Shift)
  loc_F42FF0:     End If
  loc_F42FF0:   End If
  loc_F42FF0: End If
  loc_F42FF0: Exit Sub
  loc_F42FF1: ' Referenced from: F42F0C
  loc_F42FF7: Call 0.Method_arg_50 (var_A4, var_A4, Shift)
  loc_F4300C: Proc_183_57_104AA84(var_A4, "Txt_KeyUp")
  loc_F43018: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4C11C
  'Data Table: 482B4C
  loc_E4C0FA: Set var_88 = Me.Txt
  loc_E4C100: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4C10E: Proc_183_27_E22608(var_8C)
  loc_E4C11A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '100A5CC
  'Data Table: 482B4C
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_9C As String
  Dim var_B4 As TextBox
  loc_100A3C4: On Error Goto loc_100A5A3
  loc_100A3CA: var_86 = Cancel
  loc_100A3D5: If (var_86 = CInt(0)) Then
  loc_100A3DB:   Call Proc_195_32_108F4B8(var_88)
  loc_100A3E6:   If (var_88 = &HFF) Then
  loc_100A3EB:     arg_10 = &HFF
  loc_100A3EE:     Exit Sub
  loc_100A3EF:   End If
  loc_100A3F2: Else
  loc_100A3FA:   If (var_86 = CInt(1)) Then
  loc_100A400:     Call Proc_195_33_106EAC4(var_88, arg_10)
  loc_100A40B:     If (var_88 = &HFF) Then
  loc_100A410:       arg_10 = &HFF
  loc_100A413:       Exit Sub
  loc_100A414:     End If
  loc_100A417:   Else
  loc_100A41F:     If (var_86 = CInt(2)) Then
  loc_100A425:       Call Proc_195_34_10BDE24(var_88, arg_10)
  loc_100A430:       If (var_88 = &HFF) Then
  loc_100A435:         arg_10 = &HFF
  loc_100A438:         Exit Sub
  loc_100A439:       End If
  loc_100A43C:     Else
  loc_100A444:       If (var_86 = CInt(3)) Then
  loc_100A44A:         Call Proc_195_35_10BDAF8(var_88, arg_10)
  loc_100A455:         If (var_88 = &HFF) Then
  loc_100A45A:           arg_10 = &HFF
  loc_100A45D:           Exit Sub
  loc_100A45E:         End If
  loc_100A461:       Else
  loc_100A469:         If (var_86 = CInt(4)) Then
  loc_100A4BA:           Set var_94 = Me.Txt
  loc_100A4C0:           Call 0.Method_Txt_Validate0 (Cancel, var_98, var_9C)
  loc_100A4C8:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_98.Text
  loc_100A4E0:           If (arg_10 Or (var_9C = vbNullString)) Then
  loc_100A4E3:             Exit Sub
  loc_100A4E4:           End If
  loc_100A51F:           Set var_B0 = Me.Txt
  loc_100A525:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_100A52D:           var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_100A571:           var_9C = CStr(Me.Fields.Item("Code").Value)
  loc_100A57E:           Set var_B0 = Me.Txt
  loc_100A584:           Call 0.Method_Txt_Validate0 (Cancel, var_B4)
  loc_100A58C:           var_B4.Tag = var_9C
  loc_100A5A2:         End If
  loc_100A5A2:       End If
  loc_100A5A2:     End If
  loc_100A5A2:   End If
  loc_100A5A2: End If
  loc_100A5A2: Exit Sub
  loc_100A5A3: ' Referenced from: 100A3C4
  loc_100A5A9: Call 0.Method_arg_50 (var_9C)
  loc_100A5BE: Proc_183_57_104AA84(var_9C, "Txt_Validate")
  loc_100A5CA: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EEB94C
  'Data Table: 482B4C
  Dim var_88 As Label
  Dim var_98 As TextBox
  loc_EEB888: On Error Goto loc_EEB922
  loc_EEB898: Me.LblUser.Caption = vbNullString
  loc_EEB8AD: Me.LblLDt.Caption = vbNullString
  loc_EEB8CA: var_8C = "ADD"
  loc_EEB8D8: Call Proc_195_29_EE9464(Proc_5_1_100CB50(var_8C, Me))
  loc_EEB8E3: Call Proc_195_30_F0B1B4(global_52)
  loc_EEB8F9: If (OpenMode = 2) Then
  loc_EEB907:   Set var_88 = Me.Txt
  loc_EEB90D:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EEB915:   var_98.SetFocus
  loc_EEB921: End If
  loc_EEB921: Exit Sub
  loc_EEB922: ' Referenced from: EEB888
  loc_EEB928: Call 0.Method_arg_50 (var_8C)
  loc_EEB93D: Proc_183_57_104AA84(var_8C, "TopCtrl1_eAdd")
  loc_EEB949: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EEBC58
  'Data Table: 482B4C
  loc_EEBBA0: On Error Goto loc_EEBC30
  loc_EEBBDA: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EEBBE9:   Set var_110 = Me
  loc_EEBBF2:   var_10C = "INI"
  loc_EEBC00:   Call Proc_195_29_EE9464(Proc_5_1_100CB50(var_10C, var_110))
  loc_EEBC0B:   Call Proc_195_36_E84C58(global_52)
  loc_EEBC10:   Call Proc_195_31_12EB430()
  loc_EEBC18: Else
  loc_EEBC1E:   Call 0.Method_arg_1E8 (var_110)
  loc_EEBC26:   Call var_110.SetFocus
  loc_EEBC2F: End If
  loc_EEBC2F: Exit Sub
  loc_EEBC30: ' Referenced from: EEBBA0
  loc_EEBC36: Call 0.Method_arg_50 (var_10C)
  loc_EEBC3E: var_11C = "TopCtrl1_eCancel"
  loc_EEBC4B: Proc_183_57_104AA84(var_10C)
  loc_EEBC57: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '111549C
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_482B5F As Connection15
  Dim var_114 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  loc_111515C: On Error Goto loc_1115460
  loc_111516D: If (Proc_183_56_FE8818(global_52) = &HFF) Then
  loc_1115170:   Exit Sub
  loc_1115171: End If
  loc_1115196: var_C8 = Me.Fields.Item("cCode").Value
  loc_111519E: var_D4 = "Ledger A/C"
  loc_11151E6: If (Proc_183_53_FE2130(MemVar_1F921DC, "SubGROUP", "CityCode") = 0) Then
  loc_11151E9:   Exit Sub
  loc_11151EA: End If
  loc_1115217: var_D4 = "Ledger A/C"
  loc_111525F: If (Proc_183_53_FE2130(MemVar_1F921DC, "SubGROUP", "CityCode", CStr(Me.Fields.Item("cCode").Value), 0) = 0) Then
  loc_1115262:   Exit Sub
  loc_1115263: End If
  loc_1115290: var_D4 = "Area Master"
  loc_11152D8: If (Proc_183_53_FE2130(MemVar_1F921DC, "AREAMAST", "CityCode", CStr(Me.Fields.Item("cCode").Value), 0) = 0) Then
  loc_11152DB:   Exit Sub
  loc_11152DC: End If
  loc_1115313: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_114, var_134) = 6) Then
  loc_1115318:   var_96 = 0
  loc_1115324:   unk_482B5F.BeginTrans var_D0
  loc_111532B:   var_96 = &HFF
  loc_1115393:   var_B4 = CStr("Delete From City Where CityCode='" & Me.Fields.Item("cCode").Value & "'")
  loc_111539D:   unk_482B5F.Execute var_B4, var_134, -1
  loc_11153BF:   unk_482B5F.CommitTrans
  loc_11153C6:   var_96 = 0
  loc_11153D4:   Me.Requery -1
  loc_11153E4:   Me.Requery -1
  loc_1115400:   If (Me.RecordCount > 0) Then
  loc_111541A:     If (Me.AbsolutePosition > 1) Then
  loc_1115425:       var_C8 = (CVar(Me.AbsolutePosition) - 1)
  loc_1115431:       Me.AbsolutePosition = CLng(Me.Fields.Item("cCode").Value)
  loc_1115436:     End If
  loc_1115436:   End If
  loc_1115436:   Call Proc_195_31_12EB430(var_96, var_138, var_96, var_96, var_D4)
  loc_1115457:   Proc_5_0_110649C(&HFF, Me, global_52, 0)
  loc_111545F: End If
  loc_111545F: Exit Sub
  loc_1115460: ' Referenced from: 111515C
  loc_1115466: If (var_96 = &HFF) Then
  loc_111546F:   unk_482B5F.RollbackTrans
  loc_1115474: End If
  loc_111547A: Call 0.Method_arg_50 (var_B4, var_D4, CStr(Me.Fields.Item("cCode").Value))
  loc_111548F: Proc_183_57_104AA84(var_B4, "TopCtrl1_eDel")
  loc_111549B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FCEA2C
  'Data Table: 482B4C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FCE868: On Error Goto loc_FCEA04
  loc_FCE878: Me.LblUser.Caption = vbNullString
  loc_FCE88D: Me.LblLDt.Caption = vbNullString
  loc_FCE8A3: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_FCE8A6:   Exit Sub
  loc_FCE8A7: End If
  loc_FCE8CA: Call Proc_195_29_EE9464(Proc_5_1_100CB50("EDIT", Me))
  loc_FCE8E3: Set var_88 = Me.Txt
  loc_FCE8E9: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FCE8FC: global_68 = var_94.Text
  loc_FCE918: Set var_88 = Me.Txt
  loc_FCE91E: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_FCE931: global_72 = var_94.Text
  loc_FCE94D: Set var_88 = Me.Txt
  loc_FCE953: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_FCE966: global_76 = var_94.Text
  loc_FCE982: Set var_88 = Me.Txt
  loc_FCE988: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_94)
  loc_FCE99B: global_80 = var_94.Text
  loc_FCE9B7: Set var_88 = Me.Txt
  loc_FCE9BD: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_FCE9C5: var_8C = var_94.Text
  loc_FCE9D0: global_84 = var_8C
  loc_FCE9E9: Set var_88 = Me.Txt
  loc_FCE9EF: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_FCE9F7: var_94.SetFocus
  loc_FCEA03: Exit Sub
  loc_FCEA04: ' Referenced from: FCE868
  loc_FCEA0A: Call 0.Method_arg_50 (var_8C)
  loc_FCEA1F: Proc_183_57_104AA84(var_8C, "TopCtrl1_eEdit")
  loc_FCEA2B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19BAC
  'Data Table: 482B4C
  loc_E19BA1: Me.Global.Unload Me
  loc_E19BA9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEEB10
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EEEA50: On Error Goto loc_EEEAE8
  loc_EEEA6A: If (Me.RecordCount <= 0) Then
  loc_EEEA73:   var_B8 = "Information"
  loc_EEEA8E:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_EEEA9E:   Exit Sub
  loc_EEEA9F: End If
  loc_EEEAA6: var_10C = "Select City.CityCode As SearchCode,City.CityName as CityName, City.ShortName as ShortName, City.STDCode as STDCode, City.ZipCode as ZipCode,State.Name as StateName, Country.Name as CountryName FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code WHERE (CITY.LOGSITE_CODE='" & MemVar_1F92078
  loc_EEEAAD: MemVar_1F920E4 = var_10C & "' OR CITY.LOGSITE_CODE='HO') ORDER BY City.CityName"
  loc_EEEABA: MemVar_1F92120 = Me
  loc_EEEAC1: var_10C = "2000,1000,1500,900,2000,2000"
  loc_EEEAC7: Proc_183_54_F1DE80(var_10C)
  loc_EEEAE2: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEEAE7: Exit Sub
  loc_EEEAE8: ' Referenced from: EEEA50
  loc_EEEAEE: Call 0.Method_arg_50 (var_10C)
  loc_EEEB03: Proc_183_57_104AA84(var_10C, "TopCtrl1_eFind")
  loc_EEEB0F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E77ADC
  'Data Table: 482B4C
  loc_E77A84: On Error Goto loc_E77AB1
  loc_E77AA3: Proc_5_0_110649C(&HFF, Me)
  loc_E77AAB: Call Proc_195_31_12EB430(global_52)
  loc_E77AB0: Exit Sub
  loc_E77AB1: ' Referenced from: E77A84
  loc_E77AB7: Call 0.Method_arg_50 (var_94)
  loc_E77ACC: Proc_183_57_104AA84(var_94, "TopCtrl1_eFirst")
  loc_E77AD8: Exit Sub
  loc_E77ADA: ( = 1) = 
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E79334
  'Data Table: 482B4C
  loc_E792DC: On Error Goto loc_E79309
  loc_E792FB: Proc_5_0_110649C(&HFF, Me)
  loc_E79303: Call Proc_195_31_12EB430(global_52)
  loc_E79308: Exit Sub
  loc_E79309: ' Referenced from: E792DC
  loc_E7930F: Call 0.Method_arg_50 (var_94)
  loc_E79324: Proc_183_57_104AA84(var_94, "TopCtrl1_eLast")
  loc_E79330: Exit Sub
  loc_E79332: ( = 4) = 
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E77914
  'Data Table: 482B4C
  loc_E778BC: On Error Goto loc_E778E9
  loc_E778DB: Proc_5_0_110649C(&HFF, Me)
  loc_E778E3: Call Proc_195_31_12EB430(global_52)
  loc_E778E8: Exit Sub
  loc_E778E9: ' Referenced from: E778BC
  loc_E778EF: Call 0.Method_arg_50 (var_94)
  loc_E77904: Proc_183_57_104AA84(var_94, "TopCtrl1_eNext")
  loc_E77910: Exit Sub
  loc_E77912: ( = 3) = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E7C774
  'Data Table: 482B4C
  loc_E7C71C: On Error Goto loc_E7C749
  loc_E7C73B: Proc_5_0_110649C(&HFF, Me)
  loc_E7C743: Call Proc_195_31_12EB430(global_52)
  loc_E7C748: Exit Sub
  loc_E7C749: ' Referenced from: E7C71C
  loc_E7C74F: Call 0.Method_arg_50 (var_94)
  loc_E7C764: Proc_183_57_104AA84(var_94, "TopCtrl1_ePrev")
  loc_E7C770: Exit Sub
  loc_E7C772: ( = 2) = 
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10393C8
  'Data Table: 482B4C
  Dim unk_482B5F As Connection15
  Dim var_88 As Recordset15
  Dim var_AC As Variant
  Dim var_128 As String
  Dim var_12E As Integer
  Dim var_BC As Variant
  loc_1039190: On Error Goto loc_103939F
  loc_10391A9: unk_482B5F.Execute "SELECT City.CityCode AS CCode, City.CityName AS CName, City.ShortName AS CShortName, City.STDCode AS CSTDCode, City.ZipCode AS CZipCode, City.Site_Code AS CSite_Code, City.U_Name AS CU_Name, City.U_EntDt AS CU_EntDt, City.U_AE AS CU_AE, State.Name AS CState, Country.Name AS CCountry FROM (City LEFT JOIN State ON City.State=State.Code) LEFT JOIN Country ON City.Country=Country.Code ORDER BY City.CityName", var_BC, -1
  loc_10391B4: Set var_88 = var_C0
  loc_10391C3: var_C4 = var_88.RecordCount
  loc_10391D1: If (var_C4 = 0) Then
  loc_10391ED:   MsgBox("No Record Present For Printing", 0, var_E4, var_104, var_124)
  loc_10391FD:   Exit Sub
  loc_10391FE: End If
  loc_1039214: Set var_C0 = var_88 
  loc_1039220: var_12E = CreateFieldDefFile(var_C0, MemVar_1F920B4 & "\City.ttx")
  loc_103922A: Set var_88 = var_C0
  loc_1039230: var_AC = CVar(var_12E) 'Integer
  loc_1039233: var_98 = var_AC 'Variant
  loc_103924F: var_128 = MemVar_1F920B4 & "\City.RPT"
  loc_1039258: Call 0.Method_arg_1C (var_128, var_AC, var_C0)
  loc_1039263: MemVar_1F921E4 = var_C0
  loc_103927E: Call 0.Method_arg_90 (var_C0, var_C4, var_9A, 1)
  loc_1039286: Call 0.Method_arg_24 (var_12E, &HFF)
  loc_1039292: For var_132 =  To CInt(var_C4): var_C0 = var_132 'Integer
  loc_10392AB:   Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_10392B3:   Call 0.Method_arg_20 (var_138)
  loc_10392BB:   Call 0.Method_arg_30 (var_128)
  loc_1039301:   If (Ucase(CVar(var_128)) = Ucase("Title")) Then
  loc_1039317:     Call 0.Method_arg_90 (var_C0, CLng(var_9A))
  loc_103931F:     Call 0.Method_arg_20 (var_138)
  loc_1039327:     Call 0.Method_arg_38 ("'City Master'")
  loc_1039333:   End If
  loc_1039336: Next var_132 'Integer
  loc_1039354: Call 0.Method_arg_64 (var_C0, CVar(var_88))
  loc_103935C: Call 0.Method_arg_2C (var_D4)
  loc_103936A: Call 0.Method_arg_150 (var_F4)
  loc_1039375: Call 0.Method_arg_50 (var_128)
  loc_103938E: Proc_183_10_14991A4(MemVar_1F921E4, 0)
  loc_103939B: Set var_88 = Nothing
  loc_103939E: Exit Sub
  loc_103939F: ' Referenced from: 1039190
  loc_10393A5: Call 0.Method_arg_50 (var_128, var_128)
  loc_10393BA: Proc_183_57_104AA84(var_128, "TopCtrl1_ePrn")
  loc_10393C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E675E4
  'Data Table: 482B4C
  Dim Me As Recordset15
  loc_E67598: On Error Goto loc_E675BC
  loc_E675A6: Me.Requery -1
  loc_E675B6: Me.Requery -1
  loc_E675BB: Exit Sub
  loc_E675BC: ' Referenced from: E67598
  loc_E675C2: Call 0.Method_arg_50 (var_88)
  loc_E675CA: var_90 = "TopCtrl1_eRef"
  loc_E675D7: Proc_183_57_104AA84(var_88)
  loc_E675E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '13A6E7C
  'Data Table: 482B4C
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_D0 As String
  Dim var_CC As TextBox
  Dim var_A4 As String
  Dim var_F0 As Variant
  Dim unk_482B5F As Connection15
  Dim var_94 As Variant
  Dim var_C8 As Field20
  Dim var_F4 As String
  Dim var_104 As Variant
  Dim var_E0 As Variant
  Dim var_114 As Variant
  Dim Me As Recordset15
  Dim var_11C As String
  Dim var_124 As String
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_158 As TextBox
  Dim var_16C As TextBox
  Dim var_180 As String
  Dim var_1B0 As Variant
  Dim var_1D4 As String
  Dim var_120 As String
  Dim var_170 As String
  Dim var_1F4 As Variant
  loc_13A6604: On Error Goto loc_13A6E3C
  loc_13A660B: var_86 = CByte(0) 'Byte
  loc_13A661D: Set var_94 = Me.Txt
  loc_13A6623: Call 0.Method_TopCtrl1_UnknownEvent_16C (var_96, var_88)
  loc_13A6633: For var_9A =  To CByte((var_96 - 1)): CByte(0) = var_9A 'Byte
  loc_13A6649:   Set var_94 = Me.Txt
  loc_13A664F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_A0)
  loc_13A665F:   var_B4 = CVar(var_A0.Text) 'String
  loc_13A6665:   var_C4 = Trim(var_B4)
  loc_13A667E:   Set var_C8 = Me.Txt
  loc_13A6684:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(var_88), var_CC)
  loc_13A668C:   var_CC.Text = CStr(var_C4)
  loc_13A66A9: Next var_9A 'Byte
  loc_13A66BA: Set var_94 = Me.Txt
  loc_13A66C0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_13A66E9: If (Proc_183_19_E8DAFC(var_A0, "Name") = 0) Then
  loc_13A66F3:   Call Txt_GotFocus(CInt(0))
  loc_13A66F8:   Exit Sub
  loc_13A66F9: End If
  loc_13A6704: Set var_94 = Me.Txt
  loc_13A670A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A0)
  loc_13A6733: If (Proc_183_19_E8DAFC(var_A0, "Short Name") = 0) Then
  loc_13A673D:   Call Txt_GotFocus(CInt(1))
  loc_13A6742:   Exit Sub
  loc_13A6743: End If
  loc_13A674E: Set var_94 = Me.Txt
  loc_13A6754: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_A0)
  loc_13A677D: If (Proc_183_19_E8DAFC(var_A0, "State") = 0) Then
  loc_13A6787:   Call Txt_GotFocus(CInt(4))
  loc_13A678C:   Exit Sub
  loc_13A678D: End If
  loc_13A6790: Call Proc_195_32_108F4B8(var_96)
  loc_13A679B: If (var_96 = &HFF) Then
  loc_13A679E:   Exit Sub
  loc_13A679F: End If
  loc_13A67A3: Set var_94 = Me.TopCtrl1
  loc_13A67A9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_A0)
  loc_13A67C2: If (CStr() = "Add") Then
  loc_13A67CB:   var_F0 = 0
  loc_13A67E8:   var_A4 = "Select IsNull(Max(CAST(SUBSTRING(CityCode,3,4) AS INT)),1)+1 AS MyCode From City WHERE SITE_CODE='" & MemVar_1F92070
  loc_13A67F8:   unk_482B5F.Execute CStr() & "'", var_B4, -1
  loc_13A6800:   var_94 = var_94.Fields
  loc_13A6808:   var_F0 = var_A0.Item(var_A0)
  loc_13A6810:   var_C8 = var_C8.Value
  loc_13A6849:   var_104 = CVar(Proc_183_15_EAC900(MemVar_1F92070, 2)) 'String
  loc_13A686F:   var_C4 = Format(CStr(var_C4), "0000")
  loc_13A6877:   var_114 = (1 + var_C4)
  loc_13A6882:   global_64 = CStr(var_114)
  loc_13A6897: Else
  loc_13A68B4:   var_A0 = Me.Fields.Item("cCode")
  loc_13A68C5:   var_A4 = CStr(var_A0.Value)
  loc_13A68CB:   global_64 = var_A4
  loc_13A68DC: End If
  loc_13A68EA: Set var_94 = Me.Txt
  loc_13A68F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4)
  loc_13A68F8: 1 = var_A0.Text
  loc_13A6900: var_D0 = var_A4
  loc_13A6925: unk_482B5F.BeginTrans var_118
  loc_13A692E: var_86 = CByte(1) 'Byte
  loc_13A6936: Set var_94 = Me.TopCtrl1
  loc_13A693C: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_C4)
  loc_13A6955: If (CStr() = "Add") Then
  loc_13A696F:   var_A4 = "Insert Into City(CityCode,CityName,ShortName,STDCode,ZipCode,State,Country,CityHelp,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values('" & global_64
  loc_13A6976:   var_F4 = var_A4 & "','"
  loc_13A6987:   Set var_94 = Me.Txt
  loc_13A698D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_D0, var_F4)
  loc_13A6995:   var_1F4 = var_A0.Text
  loc_13A699E:   var_11C = -1 & var_D0
  loc_13A69A5:   var_124 = var_11C & "','"
  loc_13A69B6:   Set var_C8 = Me.Txt
  loc_13A69BC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_120)
  loc_13A69C4:   var_124 = var_CC.Text
  loc_13A69E5:   Set var_12C = Me.Txt
  loc_13A69EB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_130)
  loc_13A6A14:   Set var_140 = Me.Txt
  loc_13A6A1A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_144)
  loc_13A6A43:   Set var_154 = Me.Txt
  loc_13A6A49:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_13A6A72:   Set var_168 = Me.Txt
  loc_13A6A78:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C)
  loc_13A6A97:   var_180 = var_1F8 & var_120 & "','" & var_130.Text & "','" & var_144.Text & "','" & var_158.Tag & "','" & var_16C.Tag & "','" & Proc_183_20_FB3974(var_D0, var_104)
  loc_13A6ACB:   Proc_183_7_EB0C44(var_C4, Date)
  loc_13A6AF3:   var_1D4 = CStr(CVar(var_180 & "','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_C4 & ",'A','" & CVar(MemVar_1F92078) & "')")
  loc_13A6AFD:   unk_482B5F.Execute var_1D4, , 
  loc_13A6B6C: Else
  loc_13A6B8A:   Set var_94 = Me.Txt
  loc_13A6B90:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A0, var_A4, "UPDATE City SET CityName='")
  loc_13A6B98:   var_238 = var_A0.Text
  loc_13A6BA1:   var_D0 = -1 & var_A4
  loc_13A6BA8:   var_11C = var_D0 & "',ShortName = '"
  loc_13A6BB9:   Set var_C8 = Me.Txt
  loc_13A6BBF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_CC, var_F4)
  loc_13A6BC7:   var_11C = var_CC.Text
  loc_13A6BE8:   Set var_12C = Me.Txt
  loc_13A6BEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_130)
  loc_13A6C17:   Set var_140 = Me.Txt
  loc_13A6C1D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_144)
  loc_13A6C46:   Set var_154 = Me.Txt
  loc_13A6C4C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_158)
  loc_13A6C75:   Set var_168 = Me.Txt
  loc_13A6C7B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_16C)
  loc_13A6C8C:   var_170 = var_1F8 & var_F4 & "',STDCode='" & var_130.Text & "',ZipCode='" & var_144.Text & "',State='" & var_158.Tag & "',Country='" & var_16C.Tag
  loc_13A6CC0:   Proc_183_7_EB0C44(var_C4, Date)
  loc_13A6CCC:   var_E0 = " ,U_AE='E',LOGSITE_CODE='"
  loc_13A6CDB:   var_1B0 = CVar(var_170 & "',SITE_CODE='" & MemVar_1F92070 & "',U_name='" & MemVar_1F920C8 & "',U_EntDt=") & var_C4 & var_E0 & CVar(MemVar_1F92078) 
  loc_13A6D08:   unk_482B5F.Execute CStr(var_1B0 & "' WHERE CityCode='" & CVar(global_64) & "'"), , 
  loc_13A6D70: End If
  loc_13A6D76: unk_482B5F.CommitTrans
  loc_13A6D7F: var_86 = CByte(0) 'Byte
  loc_13A6D8E: Me.Requery -1
  loc_13A6D9E: Me.Requery -1
  loc_13A6DCB: Me.Find "CCode='" & global_64 & "'", 0, 1
  loc_13A6DDB: Set var_94 = Me.TopCtrl1
  loc_13A6DE1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_E0)
  loc_13A6DFA: If (CStr() = "Add") Then
  loc_13A6DFD:   Call TopCtrl1_UnknownEvent_A()
  loc_13A6E02:   Exit Sub
  loc_13A6E03: End If
  loc_13A6E18: var_A4 = "INI"
  loc_13A6E26: Call Proc_195_29_EE9464(Proc_5_1_100CB50(var_A4, Me))
  loc_13A6E31: Call Proc_195_36_E84C58(global_52)
  loc_13A6E36: Call Proc_195_31_12EB430()
  loc_13A6E3B: Exit Sub
  loc_13A6E3C: ' Referenced from: 13A6604
  loc_13A6E45: If (CInt(var_86) = 1) Then
  loc_13A6E4E:   unk_482B5F.RollbackTrans
  loc_13A6E53: End If
  loc_13A6E59: Call 0.Method_arg_50 (var_A4)
  loc_13A6E61: var_F4 = "TopCtrl1_eSave"
  loc_13A6E6E: Proc_183_57_104AA84(var_A4)
  loc_13A6E7A: Exit Sub
End Sub

Private Sub CmdRef_Click() 'F9CAEC
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_C8 As TextBox
  loc_F9C974: Set var_88 = Me.TopCtrl1
  loc_F9C97A: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_F9C993: If (CStr() = "Browse") Then
  loc_F9C996:   Exit Sub
  loc_F9C997: End If
  loc_F9C9A1: Set var_A0 = New FaStateMast
  loc_F9C9B3: var_A0.OpenMode = 1
  loc_F9C9BD: var_A0.Caption = "State Master"
  loc_F9C9C8: Call 0.Method_arg_70 (var_C4)
  loc_F9C9D3: Form.Left = var_C4
  loc_F9C9DE: Call 0.Method_arg_78 (var_C4)
  loc_F9C9EF: Form.Top = (var_C4 + CDbl(1500))
  loc_F9C9FC: Form.Height = CDbl(7500)
  loc_F9CA11: Form.Show 1, var_C0
  loc_F9CA21: Me.Requery -1
  loc_F9CA34: Set var_88 = Me.Txt
  loc_F9CA3A: Call 0.Method_CmdRef_Click0 (CInt(5), var_C8)
  loc_F9CA42: var_C8.Text = vbNullString
  loc_F9CA5C: Set var_88 = Me.Txt
  loc_F9CA62: Call 0.Method_CmdRef_Click0 (CInt(5), var_C8)
  loc_F9CA6A: var_C8.Tag = vbNullString
  loc_F9CA84: Set var_88 = Me.Txt
  loc_F9CA8A: Call 0.Method_CmdRef_Click0 (CInt(4), var_C8)
  loc_F9CA92: var_C8.Text = vbNullString
  loc_F9CAAC: Set var_88 = Me.Txt
  loc_F9CAB2: Call 0.Method_CmdRef_Click0 (CInt(4), var_C8)
  loc_F9CABA: var_C8.Tag = vbNullString
  loc_F9CAD1: Set var_88 = Me.Txt
  loc_F9CAD7: Call 0.Method_CmdRef_Click0 (CInt(4))
  loc_F9CADF: var_C8.SetFocus
  loc_F9CAEB: Exit Sub
End Sub

Public Property Get OpenMode() 'E059C0
  'Data Table: 482B4C
  loc_E059B9: OpenMode = global_88
End Sub

Public Property Let OpenMode(vNewValue) 'E023F0
  'Data Table: 482B4C
  loc_E023EA: global_88 = vNewValue
  loc_E023ED: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E90B38
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_E90ACA: On Error Goto loc_E90B0F
  loc_E90AD3: Me.MoveFirst
  loc_E90AED: var_8C = "CCode='" & MyValue
  loc_E90AFD: Me.Find var_8C & "'", 0, 1
  loc_E90B09: Call Proc_195_31_12EB430(var_A0)
  loc_E90B0E: Exit Sub
  loc_E90B0F: ' Referenced from: E90ACA
  loc_E90B15: Call 0.Method_arg_50 (var_8C)
  loc_E90B1D: var_A4 = "SEARCHBACK"
  loc_E90B2A: Proc_183_57_104AA84(var_8C)
  loc_E90B36: Exit Sub
End Sub

Public Sub Proc_195_29_EE9464(arg_C) 'EE9464
  'Data Table: 482B4C
  Dim var_98 As TextBox
  loc_EE93A4: On Error Goto loc_EE943B
  loc_EE93B5: Set var_8C = Me.Txt
  loc_EE93BB: Call 0.Method_Proc_195_29_EE9464C (var_8E, var_86)
  loc_EE93CB: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EE93D8:   If (var_86 = 5) Then
  loc_EE93EA:     Set var_8C = Me.Txt
  loc_EE93F0:     Call 0.Method_Proc_195_29_EE94640 (CInt(var_86), var_98)
  loc_EE93F8:     var_98.Enabled = False
  loc_EE9407:   Else
  loc_EE9417:     Set var_8C = Me.Txt
  loc_EE941D:     Call 0.Method_Proc_195_29_EE94640 (CInt(var_86), var_98)
  loc_EE9425:     var_98.Enabled = arg_C
  loc_EE9431:   End If
  loc_EE9434: Next var_92 'Byte
  loc_EE943A: Exit Sub
  loc_EE943B: ' Referenced from: EE93A4
  loc_EE9441: Call 0.Method_arg_50 (var_9C)
  loc_EE9449: var_A4 = "Disp_Text"
  loc_EE9456: Proc_183_57_104AA84(var_9C)
  loc_EE9462: Exit Sub
End Sub

Public Sub Proc_195_30_F0B1B4
  'Data Table: 482B4C
  Dim var_98 As TextBox
  loc_F0B0CC: On Error Goto loc_F0B189
  loc_F0B0D5: global_68 = vbNullString
  loc_F0B0DF: global_72 = vbNullString
  loc_F0B0E9: global_76 = vbNullString
  loc_F0B0F3: global_80 = vbNullString
  loc_F0B0FD: global_84 = vbNullString
  loc_F0B10F: Set var_8C = Me.Txt
  loc_F0B115: Call 0.Method_Proc_195_30_F0B1B4C (var_8E, var_86)
  loc_F0B125: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F0B13B:   Set var_8C = Me.Txt
  loc_F0B141:   Call 0.Method_Proc_195_30_F0B1B40 (CInt(var_86), var_98)
  loc_F0B149:   var_98.Text = vbNullString
  loc_F0B165:   Set var_8C = Me.Txt
  loc_F0B16B:   Call 0.Method_Proc_195_30_F0B1B40 (CInt(var_86), var_98)
  loc_F0B173:   var_98.Tag = vbNullString
  loc_F0B182: Next var_92 'Byte
  loc_F0B188: Exit Sub
  loc_F0B189: ' Referenced from: F0B0CC
  loc_F0B18F: Call 0.Method_arg_50 (var_9C)
  loc_F0B197: var_A4 = "BlankText"
  loc_F0B1A4: Proc_183_57_104AA84(var_9C)
  loc_F0B1B0: Exit Sub
End Sub

Public Sub Proc_195_31_12EB430
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_F4 As String
  Dim unk_482B79 As Connection15
  Dim var_88 As Recordset15
  Dim var_118 As Fields15
  Dim var_1CC As String
  Dim var_11C As TextBox
  loc_12EAD94: On Error Goto loc_12EB407
  loc_12EAD9D: Proc_183_45_E5C118(global_52)
  loc_12EADF8: unk_482B79.Execute CStr("Select U_Name,U_AE,U_EntDt From city where cityCode='" & Me.Fields.Item("cCode").Value & "'  "), var_114, -1
  loc_12EAE03: Set var_88 = var_118
  loc_12EAE57: var_118 = var_88.Fields
  loc_12EAEC0: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_12EAF05: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_12EAF7F: var_11C = var_88.Fields.Item("U_AE")
  loc_12EAFE0: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_12EB025: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_12EB074: If (Me.RecordCount <= 0) Then
  loc_12EB077:   Call Proc_195_30_F0B1B4()
  loc_12EB07F: Else
  loc_12EB0B3:   global_64 = CStr(Me.Fields.Item("CName").Value)
  loc_12EB100:   Set var_118 = Me.Txt
  loc_12EB106:   Call 0.Method_Proc_195_31_12EB4300 (CInt(0), var_11C)
  loc_12EB10E:   var_11C.Tag = CStr(Me.Fields.Item("cCode").Value)
  loc_12EB160:   Set var_118 = Me.Txt
  loc_12EB166:   Call 0.Method_Proc_195_31_12EB4300 (CInt(0), var_11C)
  loc_12EB16E:   var_11C.Text = CStr(Me.Fields.Item("CName").Value)
  loc_12EB1C0:   Set var_118 = Me.Txt
  loc_12EB1C6:   Call 0.Method_Proc_195_31_12EB4300 (CInt(1), var_11C)
  loc_12EB1CE:   var_11C.Text = CStr(Me.Fields.Item("CShortName").Value)
  loc_12EB21D:   Set var_118 = Me.Txt
  loc_12EB223:   Call 0.Method_Proc_195_31_12EB4300 (CInt(2), var_11C)
  loc_12EB22B:   var_11C.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("CSTDCode")))
  loc_12EB278:   Set var_118 = Me.Txt
  loc_12EB27E:   Call 0.Method_Proc_195_31_12EB4300 (CInt(3), var_11C)
  loc_12EB286:   var_11C.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("CZipCode")))
  loc_12EB2D3:   Set var_118 = Me.Txt
  loc_12EB2D9:   Call 0.Method_Proc_195_31_12EB4300 (CInt(4), var_11C)
  loc_12EB2E1:   var_11C.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("CState")))
  loc_12EB32E:   Set var_118 = Me.Txt
  loc_12EB334:   Call 0.Method_Proc_195_31_12EB4300 (CInt(4), var_11C)
  loc_12EB33C:   var_11C.Tag = Proc_183_2_E5A304(CVar(Me.Fields.Item("CityState")))
  loc_12EB389:   Set var_118 = Me.Txt
  loc_12EB38F:   Call 0.Method_Proc_195_31_12EB4300 (CInt(5), var_11C)
  loc_12EB397:   var_11C.Text = Proc_183_2_E5A304(CVar(Me.Fields.Item("CCountry")))
  loc_12EB3D6:   var_F4 = Proc_183_2_E5A304(CVar(Me.Fields.Item("CityCntry")))
  loc_12EB3E4:   Set var_118 = Me.Txt
  loc_12EB3EA:   Call 0.Method_Proc_195_31_12EB4300 (CInt(5), var_11C)
  loc_12EB3F2:   var_11C.Tag = var_F4
  loc_12EB406: End If
  loc_12EB406: Exit Sub
  loc_12EB407: ' Referenced from: 12EAD94
  loc_12EB40D: Call 0.Method_arg_50 (var_F4)
  loc_12EB415: var_1CC = "MoveRec"
  loc_12EB422: Proc_183_57_104AA84(var_F4)
  loc_12EB42E: Exit Sub
End Sub

Public Sub Proc_195_32_108F4B8
  'Data Table: 482B4C
  Dim Me As Recordset15
  Dim var_A4 As String
  Dim var_A8 As TextBox
  Dim unk_482B5F As Connection15
  Dim var_C8 As Fields15
  Dim var_DC As Field20
  loc_108F228: On Error Goto loc_108F489
  loc_108F242: If (Me.RecordCount = 0) Then
  loc_108F245:   Proc_195_32_108F4B8 = 
  loc_108F24B: End If
  loc_108F24F: Set var_90 = Me.TopCtrl1
  loc_108F255: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_108F25D: var_A4 = CStr()
  loc_108F26E: If (var_A4 = "Add") Then
  loc_108F29E:   Set var_90 = Me.Txt
  loc_108F2A4:   Call 0.Method_Proc_195_32_108F4B80 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1)
  loc_108F2C5:   unk_482B5F.Execute var_C8 & var_A4 & "'", 0, var_DC
  loc_108F2D5:    = var_C8.Item()
  loc_108F2DD:    = var_DC.Value
  loc_108F30A:   If (var_A8.Text.Fields > 0) Then
  loc_108F328:     var_A0 = "Duplicate Name"
  loc_108F32E:     MsgBox(var_A0, &H40, "Information", var_10C, var_12C)
  loc_108F349:     Set var_90 = Me.Txt
  loc_108F34F:     Call 0.Method_Proc_195_32_108F4B80 (CInt(0))
  loc_108F357:     var_A8.SetFocus
  loc_108F368:     Proc_195_32_108F4B8 = &HFF
  loc_108F36E:   End If
  loc_108F371: Else
  loc_108F39E:   Set var_90 = Me.Txt
  loc_108F3A4:   Call 0.Method_Proc_195_32_108F4B80 (CInt(0), var_A8, var_A4, "Select Count(*) From City Where CityName='", var_A0, -1)
  loc_108F3D6:   unk_482B5F.Execute var_C8 & var_A4 & "' And CityName<>'" & global_68 & "'", 0, var_DC
  loc_108F3E6:    = var_C8.Item(var_A8)
  loc_108F3EE:    = var_DC.Value
  loc_108F41F:   If (var_A8.Text.Fields > 0) Then
  loc_108F443:     MsgBox("Duplicate Name", &H40, "Information", var_10C, var_12C)
  loc_108F45E:     Set var_90 = Me.Txt
  loc_108F464:     Call 0.Method_Proc_195_32_108F4B80 (CInt(0))
  loc_108F46C:     var_A8.SetFocus
  loc_108F47D:     Proc_195_32_108F4B8 = &HFF
  loc_108F483:   End If
  loc_108F483: End If
  loc_108F483: Proc_195_32_108F4B8 = var_A8
  loc_108F489: ' Referenced from: 108F228
  loc_108F48F: Call 0.Method_arg_50 (var_A4)
  loc_108F4A4: Proc_183_57_104AA84(var_A4)
  loc_108F4B0: Proc_195_32_108F4B8 = "ValidateName"
  loc_108F4B6:  = 
End Sub

Public Sub Proc_195_33_106EAC4
  'Data Table: 482B4C
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_482B5F As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  loc_106E854: On Error Goto loc_106EA95
  loc_106E85B: Set var_8C = Me.TopCtrl1
  loc_106E861: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_106E869: var_A0 = CStr()
  loc_106E87A: If (var_A0 = "Add") Then
  loc_106E8AA:   Set var_8C = Me.Txt
  loc_106E8B0:   Call 0.Method_Proc_195_33_106EAC40 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1)
  loc_106E8D1:   unk_482B5F.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_106E8E1:    = var_C4.Item()
  loc_106E8E9:    = var_D8.Value
  loc_106E916:   If (var_A4.Text.Fields > 0) Then
  loc_106E934:     var_9C = "Duplicate Short Name"
  loc_106E93A:     MsgBox(var_9C, &H40, "Information", var_108, var_128)
  loc_106E955:     Set var_8C = Me.Txt
  loc_106E95B:     Call 0.Method_Proc_195_33_106EAC40 (CInt(1))
  loc_106E963:     var_A4.SetFocus
  loc_106E974:     Proc_195_33_106EAC4 = &HFF
  loc_106E97A:   End If
  loc_106E97D: Else
  loc_106E9AA:   Set var_8C = Me.Txt
  loc_106E9B0:   Call 0.Method_Proc_195_33_106EAC40 (CInt(1), var_A4, var_A0, "Select Count(*) From City Where ShortName='", var_9C, -1)
  loc_106E9E2:   unk_482B5F.Execute var_C4 & var_A0 & "' And ShortName<>'" & global_72 & "'", 0, var_D8
  loc_106E9F2:    = var_C4.Item(var_A4)
  loc_106E9FA:    = var_D8.Value
  loc_106EA2B:   If (var_A4.Text.Fields > 0) Then
  loc_106EA4F:     MsgBox("Duplicate Short Name", &H40, "Information", var_108, var_128)
  loc_106EA6A:     Set var_8C = Me.Txt
  loc_106EA70:     Call 0.Method_Proc_195_33_106EAC40 (CInt(1))
  loc_106EA78:     var_A4.SetFocus
  loc_106EA89:     Proc_195_33_106EAC4 = &HFF
  loc_106EA8F:   End If
  loc_106EA8F: End If
  loc_106EA8F: Proc_195_33_106EAC4 = var_A4
  loc_106EA95: ' Referenced from: 106E854
  loc_106EA9B: Call 0.Method_arg_50 (var_A0)
  loc_106EAB0: Proc_183_57_104AA84(var_A0)
  loc_106EABC: Proc_195_33_106EAC4 = "ValidateSName"
End Sub

Public Sub Proc_195_34_10BDE24
  'Data Table: 482B4C
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_94 As String
  Dim unk_482B5F As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10BDB60: On Error Goto loc_10BDDF7
  loc_10BDB71: Set var_8C = Me.Txt
  loc_10BDB77: Call 0.Method_Proc_195_34_10BDE240 (CInt(2), var_90)
  loc_10BDB87: var_A4 = CVar(var_90.Text) 'String
  loc_10BDBAB: If (Trim(var_A4) = vbNullString) Then
  loc_10BDBB3:   Proc_195_34_10BDE24 = 0
  loc_10BDBB9: End If
  loc_10BDBBD: Set var_8C = Me.TopCtrl1
  loc_10BDBC3: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10BDBCB: var_94 = CStr()
  loc_10BDBDC: If (var_94 = "Add") Then
  loc_10BDC0C:   Set var_8C = Me.Txt
  loc_10BDC12:   Call 0.Method_Proc_195_34_10BDE240 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1)
  loc_10BDC33:   unk_482B5F.Execute var_E4 & var_94 & "'", 0, var_F8
  loc_10BDC43:    = var_E4.Item()
  loc_10BDC4B:    = var_F8.Value
  loc_10BDC78:   If (var_90.Text.Fields > 0) Then
  loc_10BDC96:     var_A4 = "Duplicate STD Code"
  loc_10BDC9C:     MsgBox(var_A4, &H40, "Information", var_D4, var_128)
  loc_10BDCB7:     Set var_8C = Me.Txt
  loc_10BDCBD:     Call 0.Method_Proc_195_34_10BDE240 (CInt(2))
  loc_10BDCC5:     var_90.SetFocus
  loc_10BDCD6:     Proc_195_34_10BDE24 = &HFF
  loc_10BDCDC:   End If
  loc_10BDCDF: Else
  loc_10BDD0C:   Set var_8C = Me.Txt
  loc_10BDD12:   Call 0.Method_Proc_195_34_10BDE240 (CInt(2), var_90, var_94, "Select Count(*) From City Where STDCode='", var_A4, -1)
  loc_10BDD44:   unk_482B5F.Execute var_E4 & var_94 & "' And STDCode<>'" & global_76 & "'", 0, var_F8
  loc_10BDD54:    = var_E4.Item(var_90)
  loc_10BDD5C:    = var_F8.Value
  loc_10BDD8D:   If (var_90.Text.Fields > 0) Then
  loc_10BDDB1:     MsgBox("Duplicate STD Code", &H40, "Information", var_D4, var_128)
  loc_10BDDCC:     Set var_8C = Me.Txt
  loc_10BDDD2:     Call 0.Method_Proc_195_34_10BDE240 (CInt(2))
  loc_10BDDDA:     var_90.SetFocus
  loc_10BDDEB:     Proc_195_34_10BDE24 = &HFF
  loc_10BDDF1:   End If
  loc_10BDDF1: End If
  loc_10BDDF1: Proc_195_34_10BDE24 = var_90
  loc_10BDDF7: ' Referenced from: 10BDB60
  loc_10BDDFD: Call 0.Method_arg_50 (var_94)
  loc_10BDE12: Proc_183_57_104AA84(var_94)
  loc_10BDE1E: Proc_195_34_10BDE24 = "ValidateSTD"
End Sub

Public Sub Proc_195_35_10BDAF8
  'Data Table: 482B4C
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_94 As String
  Dim unk_482B5F As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10BD834: On Error Goto loc_10BDACB
  loc_10BD845: Set var_8C = Me.Txt
  loc_10BD84B: Call 0.Method_Proc_195_35_10BDAF80 (CInt(3), var_90)
  loc_10BD85B: var_A4 = CVar(var_90.Text) 'String
  loc_10BD87F: If (Trim(var_A4) = vbNullString) Then
  loc_10BD887:   Proc_195_35_10BDAF8 = 0
  loc_10BD88D: End If
  loc_10BD891: Set var_8C = Me.TopCtrl1
  loc_10BD897: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_10BD89F: var_94 = CStr()
  loc_10BD8B0: If (var_94 = "Add") Then
  loc_10BD8E0:   Set var_8C = Me.Txt
  loc_10BD8E6:   Call 0.Method_Proc_195_35_10BDAF80 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1)
  loc_10BD907:   unk_482B5F.Execute var_E4 & var_94 & "'", 0, var_F8
  loc_10BD917:    = var_E4.Item()
  loc_10BD91F:    = var_F8.Value
  loc_10BD94C:   If (var_90.Text.Fields > 0) Then
  loc_10BD96A:     var_A4 = "Duplicate Zip Code"
  loc_10BD970:     MsgBox(var_A4, &H40, "Information", var_D4, var_128)
  loc_10BD98B:     Set var_8C = Me.Txt
  loc_10BD991:     Call 0.Method_Proc_195_35_10BDAF80 (CInt(3))
  loc_10BD999:     var_90.SetFocus
  loc_10BD9AA:     Proc_195_35_10BDAF8 = &HFF
  loc_10BD9B0:   End If
  loc_10BD9B3: Else
  loc_10BD9E0:   Set var_8C = Me.Txt
  loc_10BD9E6:   Call 0.Method_Proc_195_35_10BDAF80 (CInt(3), var_90, var_94, "Select Count(*) From City Where ZipCode='", var_A4, -1)
  loc_10BDA18:   unk_482B5F.Execute var_E4 & var_94 & "' And ZipCode<>'" & global_80 & "'", 0, var_F8
  loc_10BDA28:    = var_E4.Item(var_90)
  loc_10BDA30:    = var_F8.Value
  loc_10BDA61:   If (var_90.Text.Fields > 0) Then
  loc_10BDA85:     MsgBox("Duplicate Zip Code", &H40, "Information", var_D4, var_128)
  loc_10BDAA0:     Set var_8C = Me.Txt
  loc_10BDAA6:     Call 0.Method_Proc_195_35_10BDAF80 (CInt(3))
  loc_10BDAAE:     var_90.SetFocus
  loc_10BDABF:     Proc_195_35_10BDAF8 = &HFF
  loc_10BDAC5:   End If
  loc_10BDAC5: End If
  loc_10BDAC5: Proc_195_35_10BDAF8 = var_90
  loc_10BDACB: ' Referenced from: 10BD834
  loc_10BDAD1: Call 0.Method_arg_50 (var_94)
  loc_10BDAE6: Proc_183_57_104AA84(var_94)
  loc_10BDAF2: Proc_195_35_10BDAF8 = "ValidateZip"
End Sub

Public Sub Proc_195_36_E84C58
  'Data Table: 482B4C
  loc_E84C04: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E84C16:   Me.DGHelp.Visible = False
  loc_E84C1E: End If
  loc_E84C3A: If (CBool(Me.DGSName.Visible) = &HFF) Then
  loc_E84C4C:   Me.DGSName.Visible = False
  loc_E84C54: End If
  loc_E84C54: Exit Sub
End Sub

Public Sub Proc_195_37_ECF56C(arg_C) 'ECF56C
  'Data Table: 482B4C
  Dim var_10C As TextBox
  loc_ECF4D4: On Error Goto loc_ECF543
  loc_ECF4D7: Call Proc_195_36_E84C58()
  loc_ECF513: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_ECF516:   Call TopCtrl1_UnknownEvent_16()
  loc_ECF51E: Else
  loc_ECF528:   Set var_108 = Me.Txt
  loc_ECF52E:   Call 0.Method_Proc_195_37_ECF56C0 (arg_C)
  loc_ECF536:   var_10C.SetFocus
  loc_ECF542: End If
  loc_ECF542: Exit Sub
  loc_ECF543: ' Referenced from: ECF4D4
  loc_ECF549: Call 0.Method_arg_50 (var_110)
  loc_ECF55E: Proc_183_57_104AA84(var_110, "SaveMsg")
  loc_ECF56A: Exit Sub
End Sub
