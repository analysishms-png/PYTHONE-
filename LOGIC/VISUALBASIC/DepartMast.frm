VERSION 5.00
Begin VB.Form DepartMast
  Caption = "Department Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1080
  ClientWidth = 11745
  ClientHeight = 10245
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11745
    Height = 450
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 3
    ForeColor = &HC00000&
    Left = 3270
    Top = 2580
    Width = 5625
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommandButton CmdDefaPString
    Caption = "Printing String"
    BackColor = &HC0FFFF&
    Left = 480
    Top = 4710
    Width = 1665
    Height = 300
    TabIndex = 20
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox TxtdefaPString
    ForeColor = &HC00000&
    Left = 2145
    Top = 4710
    Width = 7815
    Height = 285
    TabIndex = 19
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
  Begin Frame FrmList1
    BackColor = &HFFC0C0&
    ForeColor = &HFF0000&
    Left = 10965
    Top = 4635
    Width = 1905
    Height = 1155
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Begin ListView ListView1
      Left = -645
      Top = 150
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 17
    End
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HC00000&
    Left = 3270
    Top = 2895
    Width = 5625
    Height = 285
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 55
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
    Index = 4
    Left = 19830
    Top = 10755
    Width = 480
    Height = 240
    Visible = 0   'False
    Text = "No"
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 4
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
  Begin PictureBox Picture2
    Picture = "DepartMast.frx":0
    Left = 8610
    Top = 5925
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 13
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 1
    ForeColor = &HC00000&
    Left = 3270
    Top = 1950
    Width = 1935
    Height = 285
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 2
    ForeColor = &HC00000&
    Left = 3270
    Top = 2265
    Width = 825
    Height = 285
    TabIndex = 3
    BorderStyle = 0 'None
    MaxLength = 4
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
  Begin DataGrid DGHelp
    Left = 9210
    Top = 1650
    Width = 4185
    Height = 2010
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 6
  End
  Begin CommonDialog CDLG
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 11040
    Top = 3270
    Width = 1905
    Height = 1155
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 90
      Top = 30
      Width = 1800
      Height = 1080
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin TextBox Txt
    Index = 0
    ForeColor = &HC00000&
    Left = 3270
    Top = 1635
    Width = 4320
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
  Begin MSFlexGrid FGPoint
    Left = 8970
    Top = 3270
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 18
  End
  Begin Label Label1
    Caption = "Kot Printing Path"
    Index = 1
    ForeColor = &HC00000&
    Left = 1050
    Top = 2580
    Width = 1620
    Height = 240
    TabIndex = 25
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 1920
    Top = 6150
    Width = 2880
    Height = 255
    TabIndex = 23
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5295
    Top = 6150
    Width = 2790
    Height = 285
    TabIndex = 22
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
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 360
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
  Begin Label Label1
    Caption = "Printing Type"
    Index = 3
    ForeColor = &HC00000&
    Left = 1065
    Top = 2895
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 15
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
    Caption = "Store Type"
    Index = 2
    ForeColor = &H0&
    Left = 18840
    Top = 10770
    Width = 945
    Height = 240
    Visible = 0   'False
    TabIndex = 14
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Depand Nature Nature"
    Index = 12
    ForeColor = &HC00000&
    Left = 1050
    Top = 1950
    Width = 2115
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
  Begin Label Label1
    Caption = "Short Name"
    Index = 15
    ForeColor = &HC00000&
    Left = 1050
    Top = 2265
    Width = 1125
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
  Begin Shape Shape1
    Left = 17445
    Top = 10575
    Width = 1335
    Height = 360
    Visible = 0   'False
  End
  Begin Label Label1
    Index = 14
    BackColor = &H8080FF&
    ForeColor = &H0&
    Left = 17445
    Top = 10605
    Width = 1365
    Height = 330
    Visible = 0   'False
    TabIndex = 5
    AutoSize = -1  'True
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
    Caption = "Back Color"
    Index = 13
    ForeColor = &HC00000&
    Left = 16395
    Top = 10725
    Width = 1005
    Height = 240
    Visible = 0   'False
    TabIndex = 10
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label Label1
    Caption = "Department Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 1065
    Top = 1635
    Width = 1725
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

Attribute VB_Name = "DepartMast"

Private global_52 As Integer

Private Sub ListView_UnknownEvent_13 'F5A65C
  'Data Table: 4AE394
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5A57E: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5A585:   Set var_A8 = Me.ListView
  loc_F5A5CF:   Set var_C0 = Me.Txt
  loc_F5A5D5:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5A5DD:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5A5FD: End If
  loc_F5A609: Me.FrmList.Visible = False
  loc_F5A639: Set var_9C = Me.Txt
  loc_F5A63F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5A647: var_A8.SetFocus
  loc_F5A65B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E38654
  'Data Table: 4AE394
  loc_E38648: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E3864B:   Call DGHelp_UnknownEvent_9()
  loc_E38650: End If
  loc_E38650: Exit Sub
End Sub

Private Sub Form_Load() '10726CC
  'Data Table: 4AE394
  Dim var_8C As Label
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_C4 As TextBox
  Dim var_CC As DataGrid
  Dim var_D0 As TextBox
  Dim var_D8 As DataGrid
  Dim var_B0 As String
  Dim Me As Recordset15
  loc_107243C: On Error Goto loc_10726C6
  loc_107244E: Me.LblUser.Left = CDbl(13500)
  loc_1072465: Me.LblUser.Top = CDbl(7800)
  loc_107247C: Me.LblLDt.Top = CDbl(8160)
  loc_1072493: Me.LblLDt.Left = CDbl(13500)
  loc_10724A2: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_10724B1: Set var_8C = Me.TopCtrl1
  loc_10724B7: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_8001000B("AEDP")
  loc_10724C5: Call 0.Method_arg_50 (var_B0)
  loc_10724D5: Set var_8C = Me.TopCtrl1
  loc_10724DB: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030007(CVar(var_B0))
  loc_10724F4: Set var_8C = Me.Txt
  loc_10724FA: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_1072519: Me.DGHelp.Left = CVar(var_C4.Left)
  loc_1072535: Set var_CC = Me.Txt
  loc_107253B: Call 0.Method_Form_Load0 (CInt(0), var_D0)
  loc_1072556: Set var_8C = Me.Txt
  loc_107255C: Call 0.Method_Form_Load0 (CInt(0), var_C4)
  loc_1072574: var_9C = CVar(((var_C4.Top + var_D0.Height) + CDbl(&H1E))) 'Single
  loc_107257D: Set var_D8 = Me.DGHelp
  loc_1072583: var_D8.Top = CVar(var_C4.Left)
  loc_10725B1: Me.var_D8.CursorLocation = 3
  loc_10725DB: var_C0 = CVar("Select Code,Name From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' And RestType Not In ('FOM') Order by Name") 'String
  loc_10725F9: CVarUnk
  loc_10725FE: VerifyVarObj
  loc_1072604: Set var_8C = Me.DGHelp
  loc_107260A: LateIdStAd
  loc_1072634: Me.DGHelp.CursorLocation = 3
  loc_1072657: var_B0 = "SELECT R.Code AS SEARCHCODE,R.Name,R.StoreType,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name,R.RestType,R.BackColor,R.ShortName,R.Printer,R.SITE_CODE,R.LOGSITE_CODE,R.PrintType From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1072668: r_C0, CVar(MemVar_1F92044), 3 CVar(var_B0 & "' or LOGSITE_CODE='HO')  AND OutletYN='N' And RestType Not In ('FOM','PURC') Order by R.Name"), CVar(MemVar_1F92044), 3
  loc_107267F: Set var_8C = Me
  loc_1072696: Call Proc_68_38_E7C5B4(Proc_5_1_100CB50("INI", var_8C, New, 1, -1), var_8C, New)
  loc_10726AA: Call 0.Method_arg_160 (var_8C, 1)
  loc_10726B8: Call 0.Method_arg_164 (var_8C)
  loc_10726C0: Call Proc_68_37_13798B0(-1)
  loc_10726C5: Exit Sub
  loc_10726C6: ' Referenced from: 107243C
  loc_10726C6: Proc_6_60_E62BC4()
  loc_10726CB: Exit Sub
End Sub

Private Sub Form_Resize() 'ED8DE8
  'Data Table: 4AE394
  Dim var_8C As Label
  loc_ED8D46: Call 0.Method_arg_50 (var_88)
  loc_ED8D58: Me.LblFormCaption.Caption = var_88
  loc_ED8D71: Me.LblFormCaption.Left = CDbl(0)
  loc_ED8D7D: Set var_A0 = Me.TopCtrl1
  loc_ED8D83: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010006()
  loc_ED8D90: Set var_8C = Me.TopCtrl1
  loc_ED8D96: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_80010004()
  loc_ED8DB0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED8DCB: Call 0.Method_arg_100 (var_B8)
  loc_ED8DDD: Me.LblFormCaption.Width = var_B8
  loc_ED8DE5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40F84
  'Data Table: 4AE394
  loc_E40F5F: Set global_60 = Nothing
  loc_E40F71: Set global_56 = Nothing
  loc_E40F7D: global_52 = 0
  loc_E40F80: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A82C
  'Data Table: 4AE394
  loc_E5A7F4: Set var_88 = Me.TopCtrl1
  loc_E5A7FA: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E5A81D: If ((CStr() <> "Browse") And (global_52 = 0)) Then
  loc_E5A825:   Call Form_Unload(&HFF)
  loc_E5A82A: End If
  loc_E5A82A: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25964
  'Data Table: 4AE394
  loc_E25949: If (global_52 = &HFF) Then
  loc_E25959:   Me.Global.Unload Me
  loc_E25961: End If
  loc_E25961: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2A078
  'Data Table: 4AE394
  loc_E2A050: On Error Goto loc_E2A070
  loc_E2A067: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E2A06F: Exit Sub
  loc_E2A070: ' Referenced from: E2A050
  loc_E2A070: Proc_6_60_E62BC4(Shift)
  loc_E2A075: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F37EC4
  'Data Table: 4AE394
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37DBB: Me.DGHelp.Visible = False
  loc_F37DDA: If (Me.RecordCount > 0) Then
  loc_F37E19:   Set var_B4 = Me.Txt
  loc_F37E1F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37E27:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F37E5A:   var_B0 = Me.Fields.Item("Name")
  loc_F37E79:   Set var_B4 = Me.Txt
  loc_F37E7F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37E87:   var_B8.Text = CStr(var_B0.Value)
  loc_F37E9D: End If
  loc_F37EA8: Set var_A8 = Me.Txt
  loc_F37EAE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F37EB6: var_B0.SetFocus
  loc_F37EC2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E6FBD4
  'Data Table: 4AE394
  loc_E6FB92: Proc_6_153_E91194(Me.DGHelp, arg_14)
  loc_E6FBA9: Set var_8C = Me.FGPoint
  loc_E6FBC5: Proc_6_138_106D6F8(Me.DGHelp, global_56, CInt(0))
  loc_E6FBD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EA8CDC
  'Data Table: 4AE394
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_EA8C50: On Error Goto loc_EA8CD6
  loc_EA8C76: Call Proc_68_38_E7C5B4(Proc_5_1_100CB50("ADD", Me))
  loc_EA8C81: Call Proc_68_36_EDC43C(global_60)
  loc_EA8C91: Set var_8C = Me.Txt
  loc_EA8C97: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_EA8C9F: var_94.SetFocus
  loc_EA8CB8: Me.LblUser.Caption = vbNullString
  loc_EA8CCD: Me.LblLDt.Caption = vbNullString
  loc_EA8CD5: Exit Sub
  loc_EA8CD6: ' Referenced from: EA8C50
  loc_EA8CD6: Proc_6_60_E62BC4(var_94)
  loc_EA8CDB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'E9F7C8
  'Data Table: 4AE394
  loc_E9F750: On Error Goto loc_E9F7C1
  loc_E9F78A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_E9F7B0:   Call Proc_68_38_E7C5B4(Proc_5_1_100CB50("INI", Me))
  loc_E9F7BB:   Call Proc_68_37_13798B0(global_60)
  loc_E9F7C0: End If
  loc_E9F7C0: Exit Sub
  loc_E9F7C1: ' Referenced from: E9F750
  loc_E9F7C1: Proc_6_60_E62BC4()
  loc_E9F7C6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '12864F0
  'Data Table: 4AE394
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim unk_4AE3B0 As Connection15
  Dim var_11C As Variant
  Dim var_B8 As String
  loc_1285F4C: On Error Goto loc_12864A1
  loc_1285F5D: If (Proc_183_56_FE8818(global_60) = &HFF) Then
  loc_1285F60:   Exit Sub
  loc_1285F61: End If
  loc_1285F93: var_D8 = "Item Group"
  loc_1285FDB: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemGrp", "RestCode", CStr(Me.Fields.Item("SearchCode").Value)) = 0) Then
  loc_1285FDE:   Exit Sub
  loc_1285FDF: End If
  loc_1286011: var_D8 = "Menu Item"
  loc_1286059: If (Proc_6_108_1010FEC(MemVar_1F92044, "ItemMast", "RestCode", CStr(Me.Fields.Item("SearchCode").Value), 0) = 0) Then
  loc_128605C:   Exit Sub
  loc_128605D: End If
  loc_12860D7: If (Proc_6_108_1010FEC(MemVar_1F92044, "Stock", "DepartCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Stock") = 0) Then
  loc_12860DA:   Exit Sub
  loc_12860DB: End If
  loc_1286112: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_11C, var_13C) = 6) Then
  loc_128611E:   unk_4AE3B0.BeginTrans var_D4
  loc_1286134:   var_94 = Me.Bookmark 'Variant
  loc_128618E:   unk_4AE3B0.Execute CStr("Delete From Depart Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_13C, -1
  loc_12861F2:   var_11C = "Delete From RevMast Where Code='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1286200:   unk_4AE3B0.Execute CStr(var_11C), var_13C, -1
  loc_128624B:   var_16C = 0
  loc_128625E:   var_164 = 0
  loc_1286269:   var_160 = 0
  loc_128627C:   var_158 = 0
  loc_1286287:   var_154 = 0
  loc_128629A:   var_14C = 0
  loc_12862E3:   Proc_154_5_10E33A4(MemVar_1F92044, "Depart", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_128633A:   var_16C = 0
  loc_128634D:   var_164 = 0
  loc_1286358:   var_160 = 0
  loc_128636B:   var_158 = 0
  loc_1286376:   var_154 = 0
  loc_1286389:   var_14C = 0
  loc_12863C9:   var_B8 = "RevMast"
  loc_12863D2:   Proc_154_5_10E33A4(MemVar_1F92044, var_B8, "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1286400:   unk_4AE3B0.CommitTrans
  loc_1286410:   Me.Requery -1
  loc_1286420:   Me.Requery -1
  loc_1286440:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_128644D:     Me.Bookmark = var_94
  loc_1286455:   Else
  loc_1286469:     If (Me.EOF = 0) Then
  loc_1286472:       Me.MoveLast
  loc_1286477:     End If
  loc_1286477:   End If
  loc_1286477:   Call Proc_68_37_13798B0(var_14C, 0, var_154, var_158)
  loc_1286498:   Proc_5_0_110649C(&HFF, Me, global_60, 0)
  loc_12864A0: End If
  loc_12864A0: Exit Sub
  loc_12864A1: ' Referenced from: 1285F4C
  loc_12864A7: unk_4AE3B0.RollbackTrans
  loc_12864B4: Set var_A0 = Err()
  loc_12864BA: Call 0.Method_arg_2C (var_B8, 0, var_160)
  loc_12864DB: MsgBox(CVar(var_B8), &H10, " Deletion Message", var_11C, var_13C)
  loc_12864EE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F725FC
  'Data Table: 4AE394
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F724B4: On Error Goto loc_F725F3
  loc_F724C5: If (Proc_183_55_FE7900(global_60) = &HFF) Then
  loc_F724C8:   Exit Sub
  loc_F724C9: End If
  loc_F724EC: Call Proc_68_38_E7C5B4(Proc_5_1_100CB50("EDIT", Me))
  loc_F72505: Set var_8C = Me.Txt
  loc_F7250B: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F7251E: global_64 = var_94.Tag
  loc_F72539: Set var_8C = Me.Txt
  loc_F7253F: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_94)
  loc_F72547: var_94.Enabled = False
  loc_F72560: Set var_8C = Me.Txt
  loc_F72566: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_94)
  loc_F7256E: var_94.Enabled = False
  loc_F72587: Set var_8C = Me.Txt
  loc_F7258D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_94)
  loc_F72595: var_94.Enabled = False
  loc_F725AE: Set var_8C = Me.Txt
  loc_F725B4: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_94)
  loc_F725BC: var_94.Enabled = False
  loc_F725D5: Me.LblUser.Caption = vbNullString
  loc_F725EA: Me.LblLDt.Caption = vbNullString
  loc_F725F2: Exit Sub
  loc_F725F3: ' Referenced from: F724B4
  loc_F725F3: Proc_6_60_E62BC4(global_60)
  loc_F725F8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B82C
  'Data Table: 4AE394
  loc_E1B821: Me.Global.Unload Me
  loc_E1B829: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC6AB8
  'Data Table: 4AE394
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_EC6A18: On Error Goto loc_EC6AB0
  loc_EC6A32: If (Me.RecordCount <= 0) Then
  loc_EC6A3B:   var_B8 = "Information"
  loc_EC6A56:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC6A66:   Exit Sub
  loc_EC6A67: End If
  loc_EC6A6E: var_10C = "SELECT R.Code AS SEARCHCODE,Name as Department,RestType as Nature,ShortName From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_EC6A75: MemVar_1F920E4 = var_10C & "' or LOGSITE_CODE='HO') AND OutletYN='N' And RestType Not In ('FOM','PURC') Order by R.Name"
  loc_EC6A82: MemVar_1F92120 = Me
  loc_EC6A8F: Proc_6_126_F1BCC0("3000,2000,2000,1000")
  loc_EC6AAA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC6AAF: Exit Sub
  loc_EC6AB0: ' Referenced from: EC6A18
  loc_EC6AB0: Proc_6_60_E62BC4(MemVar_1F920E4)
  loc_EC6AB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E38E38
  'Data Table: 4AE394
  loc_E38E28: Proc_5_0_110649C(&HFF, Me)
  loc_E38E30: Call Proc_68_37_13798B0(global_60)
  loc_E38E35: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E38DD8
  'Data Table: 4AE394
  loc_E38DC8: Proc_5_0_110649C(&HFF, Me)
  loc_E38DD0: Call Proc_68_37_13798B0(global_60)
  loc_E38DD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39078
  'Data Table: 4AE394
  loc_E39068: Proc_5_0_110649C(&HFF, Me)
  loc_E39070: Call Proc_68_37_13798B0(global_60)
  loc_E39075: Exit Sub
  loc_E39076: 3 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39018
  'Data Table: 4AE394
  loc_E39008: Proc_5_0_110649C(&HFF, Me)
  loc_E39010: Call Proc_68_37_13798B0(global_60)
  loc_E39015: Exit Sub
  loc_E39016: Assert
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1020D6C
  'Data Table: 4AE394
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_4AE3B0 As Connection15
  Dim var_D2 As Integer
  Dim var_B8 As Variant
  loc_1020B4C: On Error Goto loc_1020D66
  loc_1020B58: var_A4 = Me.RecordCount
  loc_1020B66: If (var_A4 <= 0) Then
  loc_1020B69:   Exit Sub
  loc_1020B6A: End If
  loc_1020B71: var_A8 = "SELECT R.Code AS SEARCHCODE,R.Name,K1=CASE R.Kotyn WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.Header1,R.Header2,R.Phone,R.Slogan1,R.Slogan2,R.LstNo,Comp1=CASE R.CompanyTitle WHEN 'Y' THEN 'Yes' ELSE 'No' END,D1=CASE R.POS WHEN 'Y' THEN 'Yes' ELSE 'No' END,R.U_Name From Depart R Where (LOGSITE_CODE='" & MemVar_1F92078
  loc_1020B78: var_88 = var_A8 & "' or LOGSITE_CODE='HO') AND OutletYN='N' Order by R.Name"
  loc_1020B86: If (var_88 = vbNullString) Then
  loc_1020B89:   Exit Sub
  loc_1020B8A: End If
  loc_1020BA0: unk_4AE3B0.Execute var_88, var_C8, -1
  loc_1020BCA: Set var_CC = var_CC 
  loc_1020BD6: var_D2 = CreateFieldDefFile(var_CC, MemVar_1F920B4 & "\Department.ttx")
  loc_1020BE0: Set var_9C = var_CC
  loc_1020BE6: var_B8 = CVar(var_D2) 'Integer
  loc_1020BE9: var_98 = var_B8 'Variant
  loc_1020C05: var_A8 = MemVar_1F920B4 & "\Department.RPT"
  loc_1020C0E: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_1020C19: MemVar_1F921E4 = var_CC
  loc_1020C34: Call 0.Method_arg_90 (var_CC, var_A4, var_9E, 1)
  loc_1020C3C: Call 0.Method_arg_24 (var_D2, &HFF)
  loc_1020C48: For var_D6 =  To CInt(var_A4): var_CC = var_D6 'Integer
  loc_1020C61:   Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1020C69:   Call 0.Method_arg_20 (var_DC)
  loc_1020C71:   Call 0.Method_arg_30 (var_A8)
  loc_1020C8B:   If (var_A8 = "Title") Then
  loc_1020C95:     var_A8 = "'" & "Department List"
  loc_1020CAF:     Call 0.Method_arg_90 (var_CC, CLng(var_9E))
  loc_1020CB7:     Call 0.Method_arg_20 (var_DC)
  loc_1020CBF:     Call 0.Method_arg_38 (var_A8 & "'")
  loc_1020CD2:   End If
  loc_1020CD5: Next var_D6 'Integer
  loc_1020CF3: Call 0.Method_arg_64 (var_CC, CVar(var_9C))
  loc_1020CFB: Call 0.Method_arg_2C (var_F0)
  loc_1020D09: Call 0.Method_arg_150 (var_100)
  loc_1020D14: Call 0.Method_arg_50 (var_A8)
  loc_1020D1E: Set var_DC = Nothing
  loc_1020D38: Set var_CC = MemVar_1F921E4 
  loc_1020D44: Proc_6_99_1483714(var_CC, 0, var_A8)
  loc_1020D4F: MemVar_1F921E4 = var_CC
  loc_1020D62: Set var_9C = Nothing
  loc_1020D65: Exit Sub
  loc_1020D66: ' Referenced from: 1020B4C
  loc_1020D66: Proc_6_60_E62BC4(&HFF)
  loc_1020D6B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E0A370
  'Data Table: 4AE394
  Dim Me As Recordset15
  loc_E0A367: Me.Requery -1
  loc_E0A36C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1680F4C
  'Data Table: 4AE394
  Dim var_C0 As Variant
  Dim var_E0 As Variant
  Dim var_8A As Integer
  Dim unk_4AE3B0 As Connection15
  Dim var_B0 As String
  Dim var_F0 As Variant
  Dim var_114 As Variant
  Dim var_88 As Recordset15
  Dim var_A4 As Fields15
  Dim var_A8 As Variant
  Dim var_D0 As Variant
  Dim var_92 As Integer
  Dim var_15C As Variant
  Dim var_F4 As TextBox
  Dim var_160 As String
  Dim var_168 As String
  Dim var_16C As String
  Dim var_17C As String
  Dim var_174 As Variant
  Dim var_180 As String
  Dim var_18C As String
  Dim var_188 As Label
  Dim var_19C As TextBox
  Dim var_1B8 As String
  Dim var_134 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_248 As Variant
  Dim var_2A0 As Variant
  Dim var_2C0 As Variant
  Dim var_164 As String
  Dim var_178 As String
  Dim var_1A0 As String
  Dim var_290 As Variant
  Dim Me As Recordset15
  loc_167F800: On Error Goto loc_1680F31
  loc_167F80E: Set var_A4 = Me.Txt
  loc_167F814: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_167F83D: If (Proc_6_27_EA565C(var_A8, "Name") = 0) Then
  loc_167F840:   Exit Sub
  loc_167F841: End If
  loc_167F84C: Set var_A4 = Me.Txt
  loc_167F852: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_167F87B: If (Proc_6_27_EA565C(var_A8, "Restaurant Type") = 0) Then
  loc_167F87E:   Exit Sub
  loc_167F87F: End If
  loc_167F88A: Set var_A4 = Me.Txt
  loc_167F890: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_167F8B9: If (Proc_6_27_EA565C(var_A8, "Short Name") = 0) Then
  loc_167F8BC:   Exit Sub
  loc_167F8BD: End If
  loc_167F8C8: Set var_A4 = Me.Txt
  loc_167F8CE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_167F8FA: Set var_AC = Me.Txt
  loc_167F900: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4)
  loc_167F939: If CBool((Trim(CVar(var_A8)) = "Kitchen") Or (Trim(CVar(var_F4)) = "Staff Kitchen")) Then
  loc_167F947:   Set var_A4 = Me.Txt
  loc_167F94D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A8)
  loc_167F95E:   Set var_AC = var_A8
  loc_167F976:   If (Proc_6_27_EA565C(var_AC, "Printer Path") = 0) Then
  loc_167F979:     Exit Sub
  loc_167F97A:   End If
  loc_167F97A: End If
  loc_167F97D: Call Proc_68_35_1088A30(var_146)
  loc_167F988: If (var_146 = &HFF) Then
  loc_167F98B:   Exit Sub
  loc_167F98C: End If
  loc_167F99A: unk_4AE3B0.BeginTrans var_14C
  loc_167F9A3: Set var_A4 = Me.TopCtrl1
  loc_167F9A9: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(&HFF)
  loc_167F9C2: If (CStr(var_A8) = "Add") Then
  loc_167F9D0:   Set var_A4 = Me.Txt
  loc_167F9D6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_167FA03:   var_F0 = CVar("Select IsNull(Max(CAST(SUBSTRING(Code,4,Len(Code)-3) AS INT)),0) AS tCode From (Select Code From GodownMast Union Select Code From Depart) as bb Where IsNumeric(substring(Code,4,Len(Code)-3))=1 AND Left(Code,3)='" & MemVar_1F92070) 'String
  loc_167FA20:   unk_4AE3B0.Execute CStr(var_F0 & Left(CVar(var_A8), 1) & "'"), var_134, -1
  loc_167FA2B:   Set var_88 = var_AC
  loc_167FA8B:   If ((var_88.RecordCount > 0) And Not(IsNull(CVar(var_88.Fields.Item("TCode"))))) Then
  loc_167FAA8:     var_A8 = var_88.Fields.Item("TCode")
  loc_167FABD:     var_D0 = (var_A8.Value + 1)
  loc_167FAC2:     var_92 = CInt(Left(CVar(var_A8), 1))
  loc_167FAD6:   Else
  loc_167FAD8:     var_92 = 1
  loc_167FADB:   End If
  loc_167FAE6:   Set var_A4 = Me.Txt
  loc_167FAEC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_92)
  loc_167FB10:   var_D0 = Left(CVar(var_A8), 1)
  loc_167FB53:   var_B0 = CStr(1 & Format(var_92, "000"))
  loc_167FB62:   Set var_AC = Me.Txt
  loc_167FB68:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_B0, 1)
  loc_167FB70:   var_F4.Tag = CVar(Proc_6_45_EAD428(MemVar_1F92070, 2, var_92)) & Ucase(var_D0)
  loc_167FBB2:   Set var_A4 = Me.Txt
  loc_167FBB8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into Depart(Code,Name,RestType,BackColor,ShortName,OutletYN,Site_Code,U_Name,U_EntDt,U_AE,Printer,StoreType,LOGSITE_cODE,PrintType) Values ('", var_2E4)
  loc_167FBC0:   -1 = var_A8.Tag
  loc_167FBD0:   var_168 = var_2E8 & var_B0 & "','"
  loc_167FBE7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_164)
  loc_167FBEF:   var_168 = var_F4.Text
  loc_167FBFF:   var_17C = Me.Txt & var_164 & "','"
  loc_167FC10:   Set var_170 = Me.Txt
  loc_167FC16:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_174, var_178)
  loc_167FC1E:   var_17C = var_174.Text
  loc_167FC3D:   Set var_184 = Me.Label1
  loc_167FC43:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_188)
  loc_167FC71:   Set var_198 = Me.Txt
  loc_167FC77:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_19C)
  loc_167FCA4:   var_1B8 = var_A8 & var_178 & "'," & CStr(var_188.BackColor) & ",'" & var_19C.Text & "','N','" & MemVar_1F92070 & "','" & MemVar_1F920C8
  loc_167FCBC:   Proc_6_7_F25D88(var_D0, Date)
  loc_167FCDC:   Set var_1BC = Me.Txt
  loc_167FCE2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1C0)
  loc_167FD11:   Set var_1D4 = Me.Txt
  loc_167FD17:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_1D8)
  loc_167FD41:   var_248 = CVar(var_1B8 & "',") & var_D0 & ",'A','" & Trim(CVar(var_1C0)) & "','" & Trim(CVar(var_1D8)) & "','" & CVar(MemVar_1F92078) 
  loc_167FD59:   Set var_26C = Me.Txt
  loc_167FD5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_270)
  loc_167FD8D:   unk_4AE3B0.Execute CStr(var_248 & "','" & Trim(CVar(var_270)) & "')"), , 
  loc_167FE23:   Set var_A4 = Me.Txt
  loc_167FE29:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Insert Into GodownMast(Code,Name,ShortName,U_Name,U_EntDt,U_AE,SYSYN,SITE_CODE,LOGSITE_CODE) Values ('")
  loc_167FE31:   var_1E8 = var_A8.Tag
  loc_167FE3A:   var_160 = -1 & var_B0
  loc_167FE41:   var_168 = var_2E8 & var_B0 & "','"
  loc_167FE52:   Set var_AC = Me.Txt
  loc_167FE58:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_164)
  loc_167FE60:   var_168 = var_F4.Text
  loc_167FE69:   var_16C = var_184 & var_164
  loc_167FE81:   Set var_170 = Me.Txt
  loc_167FE87:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174)
  loc_167FE98:   var_180 = var_16C & "','" & var_174.Text
  loc_167FEBE:   Proc_6_7_F25D88(var_D0, Date)
  loc_167FEEC:   var_15C = CVar(var_180 & "','" & MemVar_1F920C8 & "',") & var_D0 & ",'A','Y','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F92078) 
  loc_167FF03:   unk_4AE3B0.Execute CStr(var_15C & "')"), , 
  loc_167FF5A:   Set var_A4 = Me.Txt
  loc_167FF60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_167FF74:   Call Proc_68_41_F59844(var_A8.Text)
  loc_167FF9D:   var_B0 = "Insert Into RevMast(Code,DeskCode,Name,ShortName,SysYN,Type,AppMode,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE) Values ('" & var_164
  loc_167FFA4:   var_164 = var_B0 & "','"
  loc_167FFB5:   Set var_A4 = Me.Txt
  loc_167FFBB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_2E8 & var_B0, var_164)
  loc_167FFC3:   var_15C = var_A8.Tag
  loc_167FFCC:   var_168 = -1 & var_2E8 & var_B0
  loc_167FFD3:   var_178 = var_168 & "','"
  loc_167FFE4:   Set var_AC = Me.Txt
  loc_167FFEA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_F4, var_16C)
  loc_167FFF2:   var_178 = var_F4.Text
  loc_1680002:   var_18C = var_184 & var_16C & "','"
  loc_1680013:   Set var_170 = Me.Txt
  loc_1680019:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_180)
  loc_1680021:   var_18C = var_174.Text
  loc_168005E:   Proc_6_7_F25D88(var_D0, Date)
  loc_1680079:   var_134 = CVar(var_164 & var_180 & "','Y','Dr','Amount','" & MemVar_1F92070 & "','" & MemVar_1F920C8 & "',") & var_D0 & ",'A','" & CVar(MemVar_1F92078) 
  loc_1680090:   unk_4AE3B0.Execute CStr(var_134 & "')"), , 
  loc_16800DD: Else
  loc_16800FB:   Set var_A4 = Me.Txt
  loc_1680101:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update Depart Set Name='")
  loc_1680109:   var_2E4 = var_A8.Text
  loc_1680112:   var_160 = -1 & var_B0
  loc_1680119:   var_168 = var_2E8 & var_B0 & "',RestType='"
  loc_168012A:   Set var_AC = Me.Txt
  loc_1680130:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_F4, var_164)
  loc_1680138:   var_168 = var_F4.Text
  loc_168015D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_174)
  loc_168018F:   var_1A0 = var_1D4 & var_164 & "',BackColor=" & CStr(var_174.BackColor) & ",OutletYN='N',Site_Code='" & MemVar_1F92070 & "',U_Name='" & MemVar_1F920C8
  loc_16801A7:   Proc_6_7_F25D88(var_D0, Date)
  loc_16801C7:   Set var_184 = Me.Txt
  loc_16801CD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_188)
  loc_16801FC:   Set var_198 = Me.Txt
  loc_1680202:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_19C)
  loc_1680219:   var_208 = CVar(var_1A0 & "',U_EntDt=") & var_D0 & ",U_AE='E',Printer='" & Trim(CVar(var_188)) & "',StoreType='" & Trim(CVar(var_19C)) 
  loc_1680231:   Set var_1BC = Me.Txt
  loc_1680237:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1C0)
  loc_1680264:   var_2A0 = var_208 & "',PrintType='" & Trim(CVar(var_1C0)) & "' Where Code='" & CVar(global_64) 
  loc_168026D:   var_2C0 = var_2A0 & "'" 
  loc_168027B:   unk_4AE3B0.Execute CStr(var_2C0), , 
  loc_16802FD:   Set var_A4 = Me.Txt
  loc_1680303:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_B0, "Update GodownMast Set Name='")
  loc_168030B:   var_1E8 = var_A8.Text
  loc_1680314:   var_160 = -1 & var_B0
  loc_168031B:   var_168 = var_2E8 & var_B0 & "',shortname='"
  loc_168032C:   Set var_AC = Me.Txt
  loc_1680332:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_F4, var_164)
  loc_168033A:   var_168 = var_F4.Text
  loc_168034A:   var_178 = Me.Label1 & var_164 & "',"
  loc_1680370:   Proc_6_7_F25D88(var_D0, Date)
  loc_168038B:   var_134 = CVar(var_178 & "U_Name='" & MemVar_1F920C8 & "',U_EntDt=") & var_D0 & ",U_AE='E',SysYN='Y',SITE_CODE='" & CVar(MemVar_1F92070) 
  loc_16803A1:   var_15C = var_134 & "' Where Code='" & CVar(global_64) 
  loc_16803B8:   unk_4AE3B0.Execute CStr(var_15C & "'"), , 
  loc_16803F6: End If
  loc_16803FA: Set var_A4 = Me.TopCtrl1
  loc_1680400: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_1680419: If (CStr() = "Add") Then
  loc_168042A:   Set var_A4 = Me.Txt
  loc_1680430:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A8)
  loc_168044F:   If (var_A8.Text = "House Keeping") Then
  loc_1680462:     Set var_A4 = Me.Txt
  loc_1680468:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1680470:     var_C0 = CVar(var_A8) 'Address
  loc_168047F:     var_F0 = ("I" + Trim(var_C0))
  loc_1680484:     var_98 = CStr(CVar(var_178 & "U_Name='" & MemVar_1F920C8 & "',U_EntDt="))
  loc_16804A7:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKISS','HKIR','" & var_98
  loc_16804CA:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Issue','House Keeping Issue','" & var_98 & "','',0,'Automatic',") 'String
  loc_16804D0:     Proc_6_104_ED5D18(var_C0, var_D0, var_2A0)
  loc_16804D8:     var_F0 = -1 & var_C0 
  loc_16804EB:     var_114 = CVar(var_178 & "U_Name='" & MemVar_1F920C8 & "',U_EntDt=") & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) 
  loc_1680506:     Proc_6_7_F25D88(var_15C, Date)
  loc_1680517:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_168052F:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_1680537:     var_1E8 = var_A8.Tag
  loc_1680555:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F92070) 
  loc_168057F:     unk_4AE3B0.Execute CStr(var_248 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_16805D7:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_16805EC:     Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "',"))
  loc_168060C:     Proc_6_7_F25D88(var_114, MemVar_1F920FC, var_2C0 & var_C0 & ",")
  loc_1680614:     var_134 = -1 & var_114 
  loc_168062C:     var_15C = Year(MemVar_1F920F4)
  loc_1680662:     Proc_6_7_F25D88(var_248, Date)
  loc_1680686:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F92070) & "'," & var_248 & ",'" & CVar(MemVar_1F92078) & "')" 
  loc_1680694:     unk_4AE3B0.Execute CStr(var_2A0), Me.Txt, 
  loc_16806DC:     Set var_A4 = Me.Txt
  loc_16806E2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_16806EA:     var_C0 = CVar(var_A8) 'Address
  loc_16806F9:     var_F0 = ("R" + Trim(var_C0))
  loc_16806FE:     var_98 = CStr(var_2C0 & var_C0)
  loc_1680721:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKIR','HKIR','" & var_98
  loc_1680744:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Received','House Keeping Received','" & var_98 & "','',0,'Automatic',") 'String
  loc_168074A:     Proc_6_104_ED5D18(var_C0, var_D0, var_2A0)
  loc_1680752:     var_F0 = -1 & var_C0 
  loc_1680765:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) 
  loc_1680780:     Proc_6_7_F25D88(var_15C, Date)
  loc_1680791:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_16807A9:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_16807B1:     var_1E8 = var_A8.Tag
  loc_16807CF:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F92070) 
  loc_16807F9:     unk_4AE3B0.Execute CStr(var_248 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1680851:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1680866:     Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "',"))
  loc_1680886:     Proc_6_7_F25D88(var_114, MemVar_1F920FC, var_2C0 & var_C0 & ",")
  loc_168088E:     var_134 = -1 & var_114 
  loc_16808A6:     var_15C = Year(MemVar_1F920F4)
  loc_16808DC:     Proc_6_7_F25D88(var_248, Date)
  loc_1680900:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F92070) & "'," & var_248 & ",'" & CVar(MemVar_1F92078) & "')" 
  loc_168090E:     unk_4AE3B0.Execute CStr(var_2A0), Me.Txt, 
  loc_1680956:     Set var_A4 = Me.Txt
  loc_168095C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1680964:     var_C0 = CVar(var_A8) 'Address
  loc_1680973:     var_F0 = ("M" + Trim(var_C0))
  loc_1680978:     var_98 = CStr(var_2C0 & var_C0)
  loc_168099B:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKROP','HKROP','" & var_98
  loc_16809BE:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Room Opening','House Keeping Room Opening','" & var_98 & "','',0,'Automatic',") 'String
  loc_16809C4:     Proc_6_104_ED5D18(var_C0, var_D0, var_2A0)
  loc_16809CC:     var_F0 = -1 & var_C0 
  loc_16809DF:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) 
  loc_16809FA:     Proc_6_7_F25D88(var_15C, Date)
  loc_1680A0B:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_1680A23:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_1680A2B:     var_1E8 = var_A8.Tag
  loc_1680A49:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F92070) 
  loc_1680A73:     unk_4AE3B0.Execute CStr(var_248 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1680ACB:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1680AE0:     Proc_6_7_F25D88(var_C0, MemVar_1F920F4, CVar(var_B0 & "',"))
  loc_1680B00:     Proc_6_7_F25D88(var_114, MemVar_1F920FC, var_2C0 & var_C0 & ",")
  loc_1680B08:     var_134 = -1 & var_114 
  loc_1680B20:     var_15C = Year(MemVar_1F920F4)
  loc_1680B56:     Proc_6_7_F25D88(var_248, Date)
  loc_1680B7A:     var_2A0 = var_114 & "'," & ",'" & var_15C & "',0,'" & CVar(MemVar_1F92070) & "'," & var_248 & ",'" & CVar(MemVar_1F92078) & "')" 
  loc_1680B88:     unk_4AE3B0.Execute CStr(var_2A0), Me.Txt, 
  loc_1680BD0:     Set var_A4 = Me.Txt
  loc_1680BD6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A8)
  loc_1680BDE:     var_C0 = CVar(var_A8) 'Address
  loc_1680BED:     var_F0 = ("O" + Trim(var_C0))
  loc_1680BF2:     var_98 = CStr(var_2C0 & var_C0)
  loc_1680C15:     var_B0 = "Insert Into Voucher_type (NCat,Category,V_Type,Contratype,Description,Description_Help,Short_Name,Short_Name_BiLang,Report_Index,Number_Method,Last_Ent_Date,Form_Name,Separate_Narr,Common_Narr,Narration,Print_VNo,Header_Desc,Terms_Desc,Footer_Desc,Exclude_Ac_Grp,SerialNo_From_Table,U_NAME,U_EntDt,U_AE,ChqNo,ChqDt,ClgDt,SortNo,RestCode,Site_Code,LogSite_Code) Values ('HKOP','HKOP','" & var_98
  loc_1680C38:     var_D0 = CVar(var_B0 & "','" & var_9C & "','House Keeping Opening','House Keeping Opening','" & var_98 & "','',0,'Automatic',") 'String
  loc_1680C3E:     Proc_6_104_ED5D18(var_C0, var_D0, var_2A0)
  loc_1680C46:     var_F0 = -1 & var_C0 
  loc_1680C59:     var_114 = var_2C0 & var_C0 & ",'','N','Y','','Y','','','','','','" & CVar(MemVar_1F920C8) 
  loc_1680C74:     Proc_6_7_F25D88(var_15C, Date)
  loc_1680C85:     var_1E8 = var_114 & "'," & var_15C & ",'A','N','N','N',0,'" 
  loc_1680C9D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8, var_178)
  loc_1680CA5:     var_1E8 = var_A8.Tag
  loc_1680CC3:     var_248 = var_AC & CVar(var_178) & "','" & CVar(MemVar_1F92070) 
  loc_1680CED:     unk_4AE3B0.Execute CStr(var_248 & "','" & CVar(MemVar_1F92078) & "')"), , 
  loc_1680D45:     var_B0 = "Insert Into Voucher_Prefix (V_Type,Date_From,Date_To,Prefix,Start_Srl_No,Site_Code,U_EntDt,LogSite_Code) Values ('" & var_98
  loc_1680D52:     var_E0 = MemVar_1F920F4
  loc_1680D5A:     Proc_6_7_F25D88(var_C0, var_E0, CVar(var_B0 & "',"))
  loc_1680D7A:     Proc_6_7_F25D88(var_114, MemVar_1F920FC, var_2C0 & var_C0 & ",")
  loc_1680D82:     var_134 = -1 & var_114 
  loc_1680DD0:     Proc_6_7_F25D88(var_248, Date)
  loc_1680DEB:     var_290 = var_114 & "'," & ",'" & Year(MemVar_1F920F4) & "',0,'" & CVar(MemVar_1F92070) & "'," & var_248 & ",'" & CVar(MemVar_1F92078) 
  loc_1680E02:     unk_4AE3B0.Execute CStr(var_290 & "')"), Me.Txt, 
  loc_1680E3A:   End If
  loc_1680E3A: End If
  loc_1680E40: unk_4AE3B0.CommitTrans
  loc_1680E53: Set var_A4 = Me.Txt
  loc_1680E59: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A8)
  loc_1680E75: var_8A = 0
  loc_1680E83: Me.Requery -1
  loc_1680E93: Me.Requery -1
  loc_1680EBD: Me.Find "SearchCode ='" & var_A8.Tag & "'", 0, 1
  loc_1680ECD: Set var_A4 = Me.TopCtrl1
  loc_1680ED3: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_E0)
  loc_1680EEC: If (CStr(var_8A) = "Add") Then
  loc_1680EEF:   Call TopCtrl1_UnknownEvent_A()
  loc_1680EF4:   Exit Sub
  loc_1680EF5: End If
  loc_1680F18: Call Proc_68_38_E7C5B4(Proc_5_1_100CB50("INI", Me))
  loc_1680F23: Call Proc_68_37_13798B0(global_60)
  loc_1680F2D: Set var_88 = Nothing
  loc_1680F30: Exit Sub
  loc_1680F31: ' Referenced from: 167F800
  loc_1680F37: If (var_8A = &HFF) Then
  loc_1680F40:   unk_4AE3B0.RollbackTrans
  loc_1680F45: End If
  loc_1680F45: Proc_6_60_E62BC4()
  loc_1680F4A: Exit Sub
  loc_1680F4B: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C82E0
  'Data Table: 4AE394
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_11C7E9E: Set var_88 = Me.Txt
  loc_11C7EA4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C7EB2: Proc_6_74_E226B0(var_8C)
  loc_11C7EBE: Call Proc_68_39_EB6734(var_8C)
  loc_11C7EC6: var_92 = Index
  loc_11C7ED1: If (var_92 = CInt(0)) Then
  loc_11C7EEB:   If (Me.RecordCount > 0) Then
  loc_11C7EF9:     Set var_8C = Me.FGPoint
  loc_11C7F11:     Proc_6_137_1193554(Me.DGHelp, global_56, Index)
  loc_11C7F1F:   End If
  loc_11C7F6D:   Set var_88 = Me.Txt
  loc_11C7F73:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C7F7B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C7F93:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_11C7F96:     Exit Sub
  loc_11C7F97:   End If
  loc_11C7FA4:   Set var_88 = Me.Txt
  loc_11C7FAA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C7FB2:   var_A0 = var_8C.Text
  loc_11C7FC4:   var_B0 = "Name"
  loc_11C7FFF:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_11C8008:     Me.MoveFirst
  loc_11C802B:     Set var_88 = Me.Txt
  loc_11C8031:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C8039:     0 = var_8C.Text
  loc_11C8052:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_11C8067:   End If
  loc_11C806A: Else
  loc_11C8072:   If (var_92 = CInt(1)) Then
  loc_11C8082:     ReDim var_F0(0 To 6)
  loc_11C8099:     var_F0(0) = "Kitchen"
  loc_11C80A8:     var_F0(1) = "Staff Kitchen"
  loc_11C80B7:     var_F0(2) = "Production Kitchen"
  loc_11C80C6:     var_F0(3) = "House Keeping"
  loc_11C80D5:     var_F0(4) = "Laundry"
  loc_11C80E4:     var_F0(5) = "Store"
  loc_11C80F3:     var_F0(6) = "Consumable Store"
  loc_11C810A:     global_68 = Array(var_F0)
  loc_11C8115:     Set var_B4 = Me.ListView
  loc_11C8130:     Set var_8C = Me.Txt
  loc_11C814A:     Set global_84 = Proc_6_66_EFF8FC(var_B4, var_8C, Index)
  loc_11C8168:     Set var_88 = Me.Txt
  loc_11C816E:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C8176:     global_68 = var_8C.Text
  loc_11C8188:     Set var_90 = Me.Txt
  loc_11C818E:     Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_11C8196:     var_B4.Tag = 7
  loc_11C81AC:   Else
  loc_11C81B4:     If (var_92 = CInt(5)) Then
  loc_11C81C4:       ReDim var_F0(0 To 5)
  loc_11C81DB:       var_F0(0) = "3 INCH RUNNING PAPER (NORMAL PRINTER)"
  loc_11C81EA:       var_F0(1) = "3 INCH RUNNING PAPER (THERMAL PRINTER)"
  loc_11C81F9:       var_F0(2) = "3 INCH RUNNING PAPER NEW (THERMAL PRINTER)"
  loc_11C8208:       var_F0(3) = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)"
  loc_11C8217:       var_F0(4) = "3 INCH RUNNING PAPER WINPRINT"
  loc_11C8226:       var_F0(5) = "ADJUSTABLE WINDOWS KOT PRINT"
  loc_11C823D:       global_68 = Array(var_F0)
  loc_11C8248:       Set var_B4 = Me.ListView1
  loc_11C8263:       Set var_8C = Me.Txt
  loc_11C827D:       Set global_84 = Proc_6_66_EFF8FC(var_B4, var_8C, Index, global_68)
  loc_11C829B:       Set var_88 = Me.Txt
  loc_11C82A1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C82A9:       6 = var_8C.Text
  loc_11C82BB:       Set var_90 = Me.Txt
  loc_11C82C1:       Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_11C82C9:       var_B4.Tag = global_68
  loc_11C82DC:     End If
  loc_11C82DC:   End If
  loc_11C82DC: End If
  loc_11C82DC: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '12A61A8
  'Data Table: 4AE394
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A4 As TextBox
  Dim var_B4 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As ListView
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  Dim var_160 As String
  loc_12A5BC2: If (CLng(Shift) = &H1B) Then
  loc_12A5BC5:   Call Proc_68_39_EB6734()
  loc_12A5BCA:   Exit Sub
  loc_12A5BCB: End If
  loc_12A5BCE: var_88 = KeyCode
  loc_12A5BD9: If (var_88 = CInt(0)) Then
  loc_12A5BE0:   Set var_A4 = Me.DGHelp
  loc_12A5BF4:   Set var_9C = Nothing
  loc_12A5C26:   Proc_6_79_11ACE04(var_A4, Me.Txt, CInt(0), global_56, Shift)
  loc_12A5C41:   var_AC = Me.RecordCount
  loc_12A5C91:   If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_12A5C9F:     Set var_90 = Me.FGPoint
  loc_12A5CB7:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, var_90, 0)
  loc_12A5CC5:   End If
  loc_12A5CC8: Else
  loc_12A5CD0:   If (var_88 = CInt(1)) Then
  loc_12A5CF5:     Set var_8C = Me.Txt
  loc_12A5CFB:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1)
  loc_12A5D03:     var_9C = var_90.Left
  loc_12A5D15:     Set var_9C = Me.Txt
  loc_12A5D1B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12A5D23:     0 = var_A4.Top
  loc_12A5D35:     Set var_A8 = Me.Txt
  loc_12A5D3B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_12A5D43:     var_B8 = var_B4.Height
  loc_12A5D55:     Set var_BC = Me.Txt
  loc_12A5D5B:     Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12A5D63:     var_C4 = var_C0.Width
  loc_12A5DAB:     Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_12A5DD2:   Else
  loc_12A5DDA:     If (var_88 = CInt(5)) Then
  loc_12A5DFF:       Set var_8C = Me.Txt
  loc_12A5E05:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_12A5E0D:       CInt((var_B0 + var_B8)) = var_90.Left
  loc_12A5E1F:       Set var_9C = Me.Txt
  loc_12A5E25:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A4, var_B0)
  loc_12A5E2D:       CInt(var_C4) = var_A4.Top
  loc_12A5E3F:       Set var_A8 = Me.Txt
  loc_12A5E45:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4, var_B8)
  loc_12A5E4D:       1820 = var_B4.Height
  loc_12A5E5F:       Set var_BC = Me.Txt
  loc_12A5E65:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_12A5E6D:       var_C4 = var_C0.Width
  loc_12A5EB5:       Proc_6_65_119423C(Me.FrmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_12A5ED9:     End If
  loc_12A5ED9:   End If
  loc_12A5ED9: End If
  loc_12A5EF3: Set var_90 = Me.ListView1
  loc_12A5F10: var_10C = Me.DGHelp.Visible
  loc_12A5F2F: If (((CBool(Me.ListView.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_10C) = 0)) Then
  loc_12A5F50:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(3))) Then
  loc_12A5F5B:     Call Txt_Validate(KeyCode)
  loc_12A5F66:     If (var_86 = &HFF) Then
  loc_12A5F69:       Exit Sub
  loc_12A5F6A:     End If
  loc_12A5FA1:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_12A5FA4:       Call TopCtrl1_UnknownEvent_16()
  loc_12A5FA9:     End If
  loc_12A5FA9:     Exit Sub
  loc_12A5FAA:   End If
  loc_12A5FBF:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_12A5FC8:     Proc_6_75_E527CC(Shift, arg_14, &HFF, CInt(var_AC))
  loc_12A5FDB:     Set var_8C = Me.Txt
  loc_12A5FE1:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_160, CInt((var_B0 + var_B8)))
  loc_12A5FE9:     CInt(var_C4) = var_90.Text
  loc_12A6000:     If (var_160 = "Kitchen") Then
  loc_12A6010:       Set var_8C = Me.Txt
  loc_12A6016:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_90, &HFF)
  loc_12A601E:       var_90.Visible = True
  loc_12A6035:       Set var_8C = Me.Label1
  loc_12A603B:       Call 0.Method_Txt_KeyDown0 (2, var_90)
  loc_12A6043:       var_90.Visible = True
  loc_12A605C:       Set var_8C = Me.Txt
  loc_12A6062:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A606A:       var_90.Visible = True
  loc_12A6081:       Set var_8C = Me.Label1
  loc_12A6087:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_12A608F:       var_90.Visible = True
  loc_12A609E:     Else
  loc_12A60AB:       Set var_8C = Me.Txt
  loc_12A60B1:       Call 0.Method_Txt_KeyDown0 (CInt(4), var_90)
  loc_12A60B9:       var_90.Visible = False
  loc_12A60D0:       Set var_8C = Me.Label1
  loc_12A60D6:       Call 0.Method_Txt_KeyDown0 (2, var_90)
  loc_12A60DE:       var_90.Visible = False
  loc_12A60F7:       Set var_8C = Me.Txt
  loc_12A60FD:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A6105:       var_90.Visible = False
  loc_12A611C:       Set var_8C = Me.Label1
  loc_12A6122:       Call 0.Method_Txt_KeyDown0 (3, var_90)
  loc_12A612A:       var_90.Visible = False
  loc_12A6144:       Set var_8C = Me.Txt
  loc_12A614A:       Call 0.Method_Txt_KeyDown0 (CInt(5), var_90)
  loc_12A6152:       var_90.Text = vbNullString
  loc_12A615E:     End If
  loc_12A615E:   End If
  loc_12A6168:   If (CLng(Shift) = &H26) Then
  loc_12A616F:     Set var_8C = Me.TopCtrl1
  loc_12A6175:     Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_88)
  loc_12A618E:     If (CStr() = "Add") Then
  loc_12A6199:       If (KeyCode <> CInt(0)) Then
  loc_12A61A2:         Proc_6_76_E52838(Shift)
  loc_12A61A7:       End If
  loc_12A61A7:     End If
  loc_12A61A7:   End If
  loc_12A61A7: End If
  loc_12A61A7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'E204E0
  'Data Table: 4AE394
  Dim arg_10 As Integer
  loc_E204C3: Proc_6_58_E054C0(arg_10)
  loc_E204CE: Proc_6_133_E7EF78(var_94)
  loc_E204D7: arg_10 = CInt(var_94)
  loc_E204DD: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F97670
  'Data Table: 4AE394
  Dim var_86 As Integer
  loc_F97507: var_86 = KeyCode
  loc_F97512: If (var_86 = CInt(0)) Then
  loc_F97531:   If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_F9753E:     var_A4 = "Name"
  loc_F9755D:     Proc_6_80_FF0AC0(Me.Txt, CInt(0), global_56)
  loc_F9758F:     Proc_6_138_106D6F8(Me.DGHelp, global_56, KeyCode, Me.FGPoint)
  loc_F9759D:   End If
  loc_F975A0: Else
  loc_F975A8:   If (var_86 = CInt(1)) Then
  loc_F975C6:     If (Me.FrmList.Visible = &HFF) Then
  loc_F975F5:       Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F97605:     End If
  loc_F97608:   Else
  loc_F97610:     If (var_86 = CInt(5)) Then
  loc_F9762E:       If (Me.FrmList1.Visible = &HFF) Then
  loc_F9765D:         Proc_6_64_F28E58(Me.ListView1, Me.Txt, KeyCode, Shift, global_84)
  loc_F9766D:       End If
  loc_F9766D:     End If
  loc_F9766D:   End If
  loc_F9766D: End If
  loc_F9766D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E462DC
  'Data Table: 4AE394
  loc_E462BA: Set var_88 = Me.Txt
  loc_E462C0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E462CE: Proc_6_73_E22704(var_8C)
  loc_E462DA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '118C68C
  'Data Table: 4AE394
  Dim var_86 As Integer
  Dim var_A0 As Variant
  Dim var_BC As String
  Dim var_B8 As Variant
  Dim arg_10 As Integer
  Dim var_90 As Variant
  Dim var_8C As ListView
  Dim var_B0 As Integer
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim unk_4AE3B0 As Connection15
  loc_118C2B3: var_86 = Cancel
  loc_118C2BE: If (var_86 = CInt(0)) Then
  loc_118C2CC:   Set var_8C = Me.Txt
  loc_118C2D2:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_118C2F8:   Set var_B4 = Me.Txt
  loc_118C2FE:   Call 0.Method_Txt_Validate0 (CInt(0), var_B8)
  loc_118C306:   var_B8.Text = CStr(Trim(CVar(var_90)))
  loc_118C321:   Call Proc_68_35_1088A30(var_BE)
  loc_118C32C:   If (var_BE = &HFF) Then
  loc_118C331:     arg_10 = &HFF
  loc_118C334:     Exit Sub
  loc_118C335:   End If
  loc_118C340:   Set var_8C = Me.Txt
  loc_118C346:   Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_118C34E:   var_BC = "Name"
  loc_118C36F:   If (Proc_6_27_EA565C(var_90, var_BC) = 0) Then
  loc_118C374:     arg_10 = &HFF
  loc_118C377:     Exit Sub
  loc_118C378:   End If
  loc_118C37B: Else
  loc_118C383:   If (var_86 = CInt(1)) Then
  loc_118C393:     Set var_8C = Me.Txt
  loc_118C399:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC)
  loc_118C3B8:     If (var_BC <> vbNullString) Then
  loc_118C3D9:       var_BC = Me.ListView.SelectedItem.Text
  loc_118C3EB:       Set var_B4 = Me.Txt
  loc_118C3F1:       Call 0.Method_Txt_Validate0 (Cancel, var_B8, var_BC)
  loc_118C3F9:       var_B8.Text = Me.ListView.SelectedItem.Text
  loc_118C412:     Else
  loc_118C418:       var_B0 = 1
  loc_118C432:       Set var_90 = Me.ListView.ListItems
  loc_118C438:       var_B0 = var_90.ControlDefault
  loc_118C440:       var_B4 = var_B4.Default
  loc_118C452:       Set var_B8 = Me.Txt
  loc_118C458:       Call 0.Method_Txt_Validate0 (Cancel, var_D4, var_BC)
  loc_118C460:       var_D4.Text = var_BC
  loc_118C47C:     End If
  loc_118C47F:   Else
  loc_118C487:     If (var_86 = CInt(2)) Then
  loc_118C494:       Set var_8C = Me.Txt
  loc_118C49A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118C4A2:       var_A0 = CVar(var_90) 'Address
  loc_118C4BF:       Set var_B4 = Me.Txt
  loc_118C4C5:       Call 0.Method_Txt_Validate0 (Cancel, var_B8)
  loc_118C4CD:       var_B8.Text = CStr(Trim(var_A0))
  loc_118C4E9:       Set var_8C = Me.TopCtrl1
  loc_118C4EF:       Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005(var_86)
  loc_118C4F7:       var_BC = CStr()
  loc_118C508:       If (var_BC = "Add") Then
  loc_118C537:         Set var_8C = Me.Txt
  loc_118C53D:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_BC, "Select Count(*) From Depart Where OutletYN='N' AND ShortName='", var_A0, -1)
  loc_118C55E:         unk_4AE3B0.Execute var_B8 & var_BC & "'", 0, var_D4
  loc_118C56E:          = var_B8.Item()
  loc_118C576:          = var_D4.Value
  loc_118C5A3:         If (var_90.Text.Fields > 0) Then
  loc_118C5C7:           MsgBox("Duplicate ShortName", &H40, "Information", var_10C, var_12C)
  loc_118C5D9:           arg_10 = &HFF
  loc_118C5DC:           Exit Sub
  loc_118C5DD:         End If
  loc_118C5DD:       End If
  loc_118C5E0:     Else
  loc_118C5E8:       If (var_86 = CInt(4)) Then
  loc_118C5F5:         Set var_8C = Me.Txt
  loc_118C5FB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118C636:         If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_118C646:           Set var_8C = Me.Txt
  loc_118C64C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118C654:           var_90.Text = "Yes"
  loc_118C663:         Else
  loc_118C670:           Set var_8C = Me.Txt
  loc_118C676:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_118C67E:           var_90.Text = "No"
  loc_118C68A:         End If
  loc_118C68A:       End If
  loc_118C68A:     End If
  loc_118C68A:   End If
  loc_118C68A: End If
  loc_118C68A: Exit Sub
End Sub

Private Sub CmdDefaPString_Click() 'EEA488
  'Data Table: 4AE394
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_EEA3F9: var_98 = Me.Global.Printer.DragMode
  loc_EEA41C: var_B0 = Me.var_98.Printer.Parent
  loc_EEA45C: Me.TxtdefaPString.Text = CStr(var_98) & "," & CStr(var_B0) & "," & CStr(Me.var_B0.Printer.DragIcon)
  loc_EEA486: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F59F54
  'Data Table: 4AE394
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F59E76: If (Me.ListView1.ListItems.Count > 0) Then
  loc_F59E7D:   Set var_A8 = Me.ListView1
  loc_F59EC7:   Set var_C0 = Me.Txt
  loc_F59ECD:   Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F59ED5:   var_C4.Text = Me.ListView1.SelectedItem.Text
  loc_F59EF5: End If
  loc_F59F01: Me.FrmList1.Visible = False
  loc_F59F31: Set var_9C = Me.Txt
  loc_F59F37: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(Me.ListView1.Tag))), var_A8)
  loc_F59F3F: var_A8.SetFocus
  loc_F59F53: Exit Sub
End Sub

Private Sub Label1_Click(Index As Integer) 'E99ACC
  'Data Table: 4AE394
  Dim var_88 As CommonDialog
  Dim arg_20 As Variant
  Dim var_A4 As Label
  loc_E99A58: Set var_88 = Me.TopCtrl1
  loc_E99A5E: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_E99A77: If (CStr() <> "Browse") Then
  loc_E99A84:   arg_20 = Me.CDLG._Action
  loc_E99AAC:   Set var_A0 = Me.Label1
  loc_E99AB2:   Call 0.Method_Label1_Click0 (Index, var_A4)
  loc_E99ABA:   var_A4.BackColor = CLng(Me.CDLG.Color)
  loc_E99ACB: End If
  loc_E99ACB: Exit Sub
End Sub

Public Function global_52Get() '4AF248
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '4AF257
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93640
  'Data Table: 4AE394
  Dim Me As Recordset15
  loc_E935CE: On Error Goto loc_E93637
  loc_E935D7: Me.MoveFirst
  loc_E93601: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93629: Proc_5_0_110649C(&HFF, Me, global_60)
  loc_E93631: Call Proc_68_37_13798B0(0)
  loc_E93636: Exit Sub
  loc_E93637: ' Referenced from: E935CE
  loc_E93637: Proc_6_60_E62BC4(var_A0)
  loc_E9363C: Exit Sub
  loc_E9363D: If  Then Exit Sub
  loc_E9363D: End If
End Sub

Public Sub Proc_68_35_1088A30
  'Data Table: 4AE394
  Dim Me As Recordset15
  Dim var_B0 As String
  Dim var_A8 As TextBox
  Dim unk_4AE3B0 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_10887C3: If (Me.RecordCount = 0) Then
  loc_10887C6:   Proc_68_35_1088A30 = 
  loc_10887CC: End If
  loc_10887D0: Set var_90 = Me.TopCtrl1
  loc_10887D6: Call {6DE3896B-6441-42FF-98CC1924A114A8E5}.DispID_68030005()
  loc_10887EF: If (CStr() = "Add") Then
  loc_108881C:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='"
  loc_108882D:   Set var_90 = Me.Txt
  loc_1088833:   Call 0.Method_Proc_68_35_1088A300 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088854:   unk_4AE3B0.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_1088864:    = var_D0.Item()
  loc_108886C:    = var_E4.Value
  loc_108889D:   If (var_A8.Text.Fields > 0) Then
  loc_10888BB:     var_A0 = "Duplicate Name"
  loc_10888C1:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_10888DC:     Set var_90 = Me.Txt
  loc_10888E2:     Call 0.Method_Proc_68_35_1088A300 (CInt(0))
  loc_10888EA:     var_A8.SetFocus
  loc_10888FB:     Proc_68_35_1088A30 = &HFF
  loc_1088901:   End If
  loc_1088904: Else
  loc_108892E:   var_B0 = "Select Count(*) From Depart Where (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND OutletYN='N' AND Name='"
  loc_108893F:   Set var_90 = Me.Txt
  loc_1088945:   Call 0.Method_Proc_68_35_1088A300 (CInt(0), var_A8, var_AC, var_B0, var_A0, -1)
  loc_1088977:   unk_4AE3B0.Execute var_D0 & var_AC & "' And Code<>'" & global_64 & "'", 0, var_E4
  loc_1088987:    = var_D0.Item(var_A8)
  loc_108898F:    = var_E4.Value
  loc_10889C4:   If (var_A8.Text.Fields > 0) Then
  loc_10889E8:     MsgBox("Duplicate Name", &H40, "Information", var_114, var_134)
  loc_1088A03:     Set var_90 = Me.Txt
  loc_1088A09:     Call 0.Method_Proc_68_35_1088A300 (CInt(0))
  loc_1088A11:     var_A8.SetFocus
  loc_1088A22:     Proc_68_35_1088A30 = &HFF
  loc_1088A28:   End If
  loc_1088A28: End If
  loc_1088A28: Proc_68_35_1088A30 = var_A8
End Sub

Public Sub Proc_68_36_EDC43C
  'Data Table: 4AE394
  Dim var_98 As Variant
  loc_EDC386: global_64 = vbNullString
  loc_EDC398: Set var_8C = Me.Txt
  loc_EDC39E: Call 0.Method_Proc_68_36_EDC43CC (var_8E, var_86)
  loc_EDC3AE: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EDC3C4:   Set var_8C = Me.Txt
  loc_EDC3CA:   Call 0.Method_Proc_68_36_EDC43C0 (CInt(var_86), var_98)
  loc_EDC3D2:   var_98.Text = vbNullString
  loc_EDC3EE:   Set var_8C = Me.Txt
  loc_EDC3F4:   Call 0.Method_Proc_68_36_EDC43C0 (CInt(var_86), var_98)
  loc_EDC3FC:   var_98.Tag = vbNullString
  loc_EDC40B: Next var_92 'Byte
  loc_EDC41F: Set var_8C = Me.Label1
  loc_EDC425: Call 0.Method_Proc_68_36_EDC43C0 (&HE, var_98)
  loc_EDC42D: var_98.BackColor = &HECD9FB
  loc_EDC439: Exit Sub
  loc_EDC43A: arg_1CFF = 
End Sub

Public Sub Proc_68_37_13798B0
  'Data Table: 4AE394
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim unk_4AE3B0 As Connection15
  Dim var_88 As Recordset15
  Dim var_B0 As Variant
  Dim var_118 As Fields15
  Dim var_11C As Variant
  Dim var_114 As Variant
  loc_137905C: On Error Goto loc_13798A7
  loc_13790B5: unk_4AE3B0.Execute CStr("Select U_Name,U_AE,U_EntDt From Depart where Code='" & Me.Fields.Item("SearchCode").Value & "'  "), var_114, -1
  loc_13790C0: Set var_88 = var_118
  loc_1379114: var_118 = var_88.Fields
  loc_137917D: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_118.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_13791C2: Me.LblUser.Caption = CStr(var_118 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_Name")), var_180)))
  loc_137923C: var_11C = var_88.Fields.Item("U_AE")
  loc_137929D: var_180 = IIf((Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E68A98(CVar(var_11C)) = "E"), "Last Update : ", "entdt : "))
  loc_13792E2: Me.LblLDt.Caption = CStr(var_180 & CVar(Proc_6_38_E68A98(CVar(var_88.Fields.Item("U_EntDt")))))
  loc_1379331: If (Me.RecordCount > 0) Then
  loc_1379370:   Set var_118 = Me.Txt
  loc_1379376:   Call 0.Method_Proc_68_37_13798B00 (CInt(0), var_11C)
  loc_137937E:   var_11C.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_13793D0:   Set var_118 = Me.Txt
  loc_13793D6:   Call 0.Method_Proc_68_37_13798B00 (CInt(0), var_11C)
  loc_13793DE:   var_11C.Text = CStr(Me.Fields.Item("Name").Value)
  loc_137942D:   Set var_118 = Me.Txt
  loc_1379433:   Call 0.Method_Proc_68_37_13798B00 (CInt(2), var_11C)
  loc_137943B:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("ShortName")))
  loc_1379469:   var_A0 = Me.Fields.Item("RestType")
  loc_1379488:   Set var_118 = Me.Txt
  loc_137948E:   Call 0.Method_Proc_68_37_13798B00 (CInt(1), var_11C)
  loc_1379496:   var_11C.Text = Proc_6_38_E68A98(CVar(var_A0))
  loc_13794B8:   Set var_8C = Me.Txt
  loc_13794BE:   Call 0.Method_Proc_68_37_13798B00 (CInt(1), var_A0)
  loc_13794DD:   If (var_A0.Text = "Kitchen") Then
  loc_13794ED:     Set var_8C = Me.Txt
  loc_13794F3:     Call 0.Method_Proc_68_37_13798B00 (CInt(4), var_A0)
  loc_13794FB:     var_A0.Visible = True
  loc_1379512:     Set var_8C = Me.Label1
  loc_1379518:     Call 0.Method_Proc_68_37_13798B00 (2, var_A0)
  loc_1379520:     var_A0.Visible = True
  loc_137952F:   Else
  loc_137953C:     Set var_8C = Me.Txt
  loc_1379542:     Call 0.Method_Proc_68_37_13798B00 (CInt(4), var_A0)
  loc_137954A:     var_A0.Visible = False
  loc_1379561:     Set var_8C = Me.Label1
  loc_1379567:     Call 0.Method_Proc_68_37_13798B00 (2, var_A0)
  loc_137956F:     var_A0.Visible = False
  loc_137957B:   End If
  loc_1379595:   var_A0 = Me.Fields.Item("StoreType")
  loc_13795C7:   var_11C = Me.Fields.Item("StoreType")
  loc_13795CF:   var_D0 = var_11C.Value
  loc_13795F9:   If CBool(IsNull(CVar(var_A0)) Or (var_D0 = vbNullString)) Then
  loc_137960A:     Set var_8C = Me.Txt
  loc_1379610:     Call 0.Method_Proc_68_37_13798B00 (CInt(4), var_A0)
  loc_1379618:     var_A0.Text = "No"
  loc_1379627:   Else
  loc_1379660:     Set var_118 = Me.Txt
  loc_1379666:     Call 0.Method_Proc_68_37_13798B00 (CInt(4), var_11C)
  loc_137966E:     var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("StoreType")))
  loc_1379682:   End If
  loc_13796BB:   Set var_118 = Me.Txt
  loc_13796C1:   Call 0.Method_Proc_68_37_13798B00 (CInt(3), var_11C)
  loc_13796C9:   var_11C.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Printer")))
  loc_13796F7:   var_A0 = Me.Fields.Item("RestType")
  loc_1379719:   If (Proc_6_38_E68A98(CVar(var_A0)) = "Kitchen") Then
  loc_1379729:     Set var_8C = Me.Txt
  loc_137972F:     Call 0.Method_Proc_68_37_13798B00 (CInt(5), var_A0)
  loc_1379737:     var_A0.Visible = True
  loc_137974E:     Set var_8C = Me.Label1
  loc_1379754:     Call 0.Method_Proc_68_37_13798B00 (3, var_A0)
  loc_137975C:     var_A0.Visible = True
  loc_1379782:     var_A0 = Me.Fields.Item("PrintType")
  loc_13797A1:     Set var_118 = Me.Txt
  loc_13797A7:     Call 0.Method_Proc_68_37_13798B00 (CInt(5), var_11C)
  loc_13797AF:     var_11C.Text = Proc_6_38_E68A98(CVar(var_A0))
  loc_13797C6:   Else
  loc_13797D3:     Set var_8C = Me.Txt
  loc_13797D9:     Call 0.Method_Proc_68_37_13798B00 (CInt(5), var_A0)
  loc_13797E1:     var_A0.Visible = False
  loc_13797F8:     Set var_8C = Me.Label1
  loc_13797FE:     Call 0.Method_Proc_68_37_13798B00 (3, var_A0)
  loc_1379806:     var_A0.Visible = False
  loc_1379820:     Set var_8C = Me.Txt
  loc_1379826:     Call 0.Method_Proc_68_37_13798B00 (CInt(5), var_A0)
  loc_137982E:     var_A0.Text = vbNullString
  loc_137983A:   End If
  loc_137985C:   var_B0 = CVar(Me.Fields.Item("BackColor")) 'Address
  loc_1379863:   Proc_6_39_E7C810(var_D0)
  loc_1379876:   Set var_118 = Me.Label1
  loc_137987C:   Call 0.Method_Proc_68_37_13798B00 (&HE, var_11C)
  loc_1379884:   var_11C.BackColor = CLng(var_D0)
  loc_137989C: Else
  loc_137989C:   Call Proc_68_36_EDC43C(var_B0)
  loc_13798A1: End If
  loc_13798A1: Call Proc_68_39_EB6734()
  loc_13798A6: Exit Sub
  loc_13798A7: ' Referenced from: 137905C
  loc_13798A7: Proc_6_60_E62BC4()
  loc_13798AC: Exit Sub
End Sub

Public Sub Proc_68_38_E7C5B4(arg_C) 'E7C5B4
  'Data Table: 4AE394
  Dim var_98 As TextBox
  loc_E7C562: Set var_8C = Me.Txt
  loc_E7C568: Call 0.Method_Proc_68_38_E7C5B4C (var_8E, var_86)
  loc_E7C578: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7C58E:   Set var_8C = Me.Txt
  loc_E7C594:   Call 0.Method_Proc_68_38_E7C5B40 (CInt(var_86), var_98)
  loc_E7C59C:   var_98.Enabled = arg_C
  loc_E7C5AB: Next var_92 'Byte
  loc_E7C5B1: Exit Sub
End Sub

Public Sub Proc_68_39_EB6734
  'Data Table: 4AE394
  loc_EB66B0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EB66C2:   Me.DGHelp.Visible = False
  loc_EB66CA: End If
  loc_EB66E5: If (Me.FrmList.Visible = &HFF) Then
  loc_EB66F4:   Me.FrmList.Visible = False
  loc_EB66FC: End If
  loc_EB6718: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB672A:   Me.FGPoint.Visible = False
  loc_EB6732: End If
  loc_EB6732: Exit Sub
End Sub

Public Sub Proc_68_40_E81730
  'Data Table: 4AE394
  loc_E816D0: Call Proc_68_39_EB6734()
  loc_E8170C: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E8170F:   Call TopCtrl1_UnknownEvent_16()
  loc_E81717: Else
  loc_E8171D:   Call 0.Method_arg_1E8 (var_108)
  loc_E81725:   Call var_108.SetFocus
  loc_E8172E: End If
  loc_E8172E: Exit Sub
End Sub

Public Sub Proc_68_41_F59844(arg_C) 'F59844
  'Data Table: 4AE394
  Dim var_144 As Integer
  Dim var_D8 As String
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim unk_4AE3B0 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Fields15
  Dim var_148 As Field20
  Dim var_158 As Variant
  loc_F59755: var_144 = 0
  loc_F5976B: var_D8 = "Select IsNull(Max(CAST(SUBSTRING(Code,4,3) AS INT)),0)+1 AS MyCode From RevMast WHERE SUBSTRING(Code,1,3) ='"
  loc_F59779: var_C8 = (CVar(MemVar_1F92070) + Left(arg_C, 1))
  loc_F59794: unk_4AE3B0.Execute CStr(var_D8 & var_C8 & "' and isnumeric(SUBSTRING(Code,4,3))=1"), var_12C, -1
  loc_F5979C: var_130 = var_130.Fields
  loc_F597A4: var_144 = var_134.Item(var_134)
  loc_F597AC: var_148 = var_148.Value
  loc_F597FB: var_E8 = (CVar(Proc_6_45_EAD428(MemVar_1F92070, 2)) + Left(arg_C, 1))
  loc_F59827: var_158 = (1 + Format(CStr(var_158), "000"))
  loc_F5982C: var_88 = CStr(var_158)
  loc_F5983E: Proc_68_41_F59844 = 1
End Sub
