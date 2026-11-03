VERSION 5.00
Begin VB.Form SmartCardRegistration
  Caption = "Smart Card Registration Entry"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 11355
  ClientHeight = 7980
  LockControls = -1  'True
  Begin BtnEnh CmdCardIss
    Index = 1
    Left = 11670
    Top = 7095
    Width = 1080
    Height = 570
    Visible = 0   'False
    TabIndex = 40
  End
  Begin BtnEnh CmdCardIss
    Index = 0
    Left = 13320
    Top = 7125
    Width = 1080
    Height = 570
    Visible = 0   'False
    TabIndex = 39
  End
  Begin BtnEnh FrCardIssue
    Left = 11130
    Top = 6120
    Width = 4035
    Height = 1920
    Visible = 0   'False
    TabIndex = 38
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11355
    Height = 450
    TabIndex = 37
  End
  Begin CommandButton Command2
    Caption = "PDF Preview"
    Left = 10605
    Top = 4185
    Width = 1155
    Height = 885
    Visible = 0   'False
    TabIndex = 36
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
  Begin CommandButton CmdPrintCard
    Caption = "Crystal Preview"
    Left = 9435
    Top = 4185
    Width = 1155
    Height = 885
    Visible = 0   'False
    TabIndex = 35
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
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1770
    Width = 1380
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
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1770
    Width = 4320
    Height = 285
    TabIndex = 3
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
  Begin Frame FrCardIssueZ
    Left = 1020
    Top = 8655
    Width = 4680
    Height = 1215
    Visible = 0   'False
    TabIndex = 30
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin CommandButton CmdCardIssZ
      Caption = "Cancel"
      Index = 0
      Left = 2430
      Top = 690
      Width = 1590
      Height = 390
      TabIndex = 33
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
    Begin CommandButton CmdCardIssZ
      Caption = "OK"
      Index = 1
      Left = 645
      Top = 675
      Width = 1590
      Height = 390
      TabIndex = 32
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
    Begin Label LblCardIssue
      Caption = "PLEASE PUT A CARD TO ISSUE"
      Left = 165
      Top = 210
      Width = 4290
      Height = 345
      TabIndex = 31
      Alignment = 2 'Center
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
  End
  Begin Frame FrFamilyMember
    Caption = "Member/Family Members Info.:"
    Left = 2235
    Top = 4590
    Width = 8880
    Height = 3480
    Visible = 0   'False
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 270
      Top = 360
      Width = 915
      Height = 195
      Visible = 0   'False
      TabIndex = 29
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
    Begin MSHFlexGrid GridSel
      Left = 195
      Top = 300
      Width = 8505
      Height = 3000
      TabIndex = 28
    End
  End
  Begin DataGrid DGMember
    Left = 13485
    Top = 555
    Width = 5595
    Height = 2265
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 26
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2400
    Width = 5400
    Height = 285
    TabIndex = 5
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
  Begin PictureBox Picture1
    Left = 7515
    Top = 2400
    Width = 540
    Height = 270
    TabIndex = 21
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
  Begin PictureBox Picture3
    ForeColor = &HFF0000&
    Left = 3735
    Top = 1485
    Width = 300
    Height = 285
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame FrmList
    Left = 2235
    Top = 4965
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 0
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 18
    End
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 4215
    Width = 630
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 3
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
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1140
    Width = 1380
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3600
    Width = 5715
    Height = 285
    TabIndex = 7
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 3915
    Width = 1380
    Height = 285
    TabIndex = 8
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2715
    Width = 5715
    Height = 855
    TabIndex = 6
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 125
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
    ForeColor = &HFF0000&
    Left = 2340
    Top = 2085
    Width = 5715
    Height = 285
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 2340
    Top = 1455
    Width = 1380
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 15
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
    Left = 150
    Top = 5145
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 16
  End
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 10965
    Top = 2025
    Width = 2520
    Height = 255
    TabIndex = 42
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
    Left = 10950
    Top = 2355
    Width = 2430
    Height = 285
    TabIndex = 41
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
  Begin Image ImgTemp
    Left = 12435
    Top = 3420
    Width = 2295
    Height = 705
    Visible = 0   'False
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label LblName
    Caption = "Member"
    Index = 3
    ForeColor = &HFF0000&
    Left = 720
    Top = 1770
    Width = 780
    Height = 240
    TabIndex = 34
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
  Begin Image ImgSign
    Left = 8295
    Top = 3450
    Width = 2295
    Height = 705
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Image ImgPhoto
    Left = 8355
    Top = 1155
    Width = 2070
    Height = 2280
    Stretch = -1  'True
    Appearance = 0 'Flat
  End
  Begin Label LblPhoto
    Caption = "Member Photo"
    ForeColor = &H80&
    Left = 8835
    Top = 2130
    Width = 1275
    Height = 240
    TabIndex = 25
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblSign
    Caption = "Member Signature"
    ForeColor = &H80&
    Left = 8655
    Top = 3660
    Width = 1590
    Height = 240
    TabIndex = 24
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblLedgerAc
    Caption = "Member ID"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 2400
    Width = 1035
    Height = 240
    TabIndex = 23
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
    Caption = "Phone"
    Index = 1
    ForeColor = &HFF0000&
    Left = 720
    Top = 3600
    Width = 615
    Height = 240
    TabIndex = 22
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
    Caption = "Yes/No"
    ForeColor = &H80&
    Left = 3000
    Top = 4230
    Width = 645
    Height = 240
    TabIndex = 19
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
    Caption = "Issue Date"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 1140
    Width = 975
    Height = 240
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
  Begin Label LblName
    Caption = "Valid Upto Date"
    Index = 4
    ForeColor = &HFF0000&
    Left = 720
    Top = 3915
    Width = 1485
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
  Begin Label LblLedgerAc
    Caption = "Address"
    Index = 0
    ForeColor = &HFF0000&
    Left = 720
    Top = 2715
    Width = 750
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
  Begin Label LblName
    Caption = "Blocked"
    Index = 6
    ForeColor = &HFF0000&
    Left = 720
    Top = 4230
    Width = 765
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
  Begin Label LblName
    Caption = "Name"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 2130
    Width = 555
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
  Begin Label LblLedgerAc
    Caption = "Card Type"
    Index = 2
    ForeColor = &HFF0000&
    Left = 720
    Top = 1455
    Width = 975
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
End

Attribute VB_Name = "SmartCardRegistration"

Private global_88 As Integer
Private global_90 As Integer
Private global_68 As Variant

Private Sub Form_Load() '117DFA0
  'Data Table: 4FC7FC
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  Dim unk_4FC807 As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Variant
  Dim var_FC As TextBox
  Dim var_100 As DataGrid
  Dim var_104 As TextBox
  loc_117DBE0: On Error Goto loc_117DF5A
  loc_117DBEA: Call 0.Method_arg_64 (CLng(MemVar_1F921B0))
  loc_117DC02: Me.GridSel.BackColor = CVar(CLng(MemVar_1F921B0))
  loc_117DC18: Me.FrFamilyMember.BackColor = CLng(MemVar_1F921B0)
  loc_117DC2B: Set var_B0 = Me.FrCardIssue
  loc_117DC31: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_2D(CVar(MemVar_1F921B0))
  loc_117DC47: Me.FrFamilyMember.BackColor = CLng(MemVar_1F921B0)
  loc_117DC5C: Set var_B0 = Me.GridSel
  loc_117DC62: var_B0.BackColor = CVar(CLng(MemVar_1F921B0))
  loc_117DC87: Proc_6_17_EAA2B0(var_C0, MemVar_1F92078, "SELECT CashCardApplYN FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_117DC9D: unk_4FC807.Execute CStr(var_F4 & var_C0), -1, var_B0
  loc_117DCA8: Set var_8C = var_B0
  loc_117DCCE: If (var_8C.RecordCount > 0) Then
  loc_117DCE8:   var_FC = var_8C.Fields.Item("CashCardApplYN")
  loc_117DCF0:   var_C0 = CVar(var_FC) 'Address
  loc_117DCFF:   global_96 = Proc_6_38_E68A98(var_C0)
  loc_117DD0C: End If
  loc_117DD1A: Set var_B0 = Me.Txt
  loc_117DD20: Call 0.Method_Form_Load0 (CInt(2), var_FC)
  loc_117DD3F: Me.DGMember.Left = CVar(var_FC.Left)
  loc_117DD5B: Set var_100 = Me.Txt
  loc_117DD61: Call 0.Method_Form_Load0 (CInt(2), var_104)
  loc_117DD7C: Set var_B0 = Me.Txt
  loc_117DD82: Call 0.Method_Form_Load0 (CInt(2), var_FC)
  loc_117DD9A: var_9C = CVar(((var_FC.Top + var_104.Height) + CDbl(&H1E))) 'Single
  loc_117DDA9: Me.DGMember.Top = CVar(var_FC.Left)
  loc_117DDCE: If (SmartCardApplicable = "No") Then
  loc_117DDE5:   var_D4 = "SELECT R.Code As SearchCode,R.*,S.PicPath,S.IdPicPath SigPath,S.Name MemberName From SmartCardRegistration R Left Join GuestProf S On R.MemberCode=S.Code where R.CardType='Cash Card' And R.Site_Code='" & MemVar_1F92070
  loc_117DE03:   unk_4FC807.Execute var_D4 & "' And (R.LOGSITE_CODE='" & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_C0, -1
  loc_117DE14:   Set global_52 = var_B0
  loc_117DE30: Else
  loc_117DE44:   var_D4 = "SELECT R.Code As SearchCode,R.*,MF.PicPath,MF.SigPath,S.Name MemberName From SmartCardRegistration R Left Join MemberFamily MF On R.Code=MF.CardRegId Left Join Subgroup S On R.MemberCode=S.SubCode where R.Site_Code='" & MemVar_1F92070
  loc_117DE62:   unk_4FC807.Execute var_D4 & "' And (R.LOGSITE_CODE='" & MemVar_1F92078 & "' or R.LOGSITE_CODE='HO') Order By R.IssDate,R.Code", var_C0, -1
  loc_117DE73:   Set global_52 = var_B0
  loc_117DE8C: End If
  loc_117DEA1: var_D4 = "INI"
  loc_117DEAF: Call Proc_286_29_EB2DEC(Proc_5_1_100CB50(var_D4, Me, global_52), Me)
  loc_117DEC3: Set var_B0 = Me.TopCtrl1
  loc_117DEC9: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_117DEDA: Call 0.Method_arg_160 (var_B0)
  loc_117DEE8: Call 0.Method_arg_164 (var_B0)
  loc_117DEF9: Set var_B0 = Me.SMSJobTimer
  loc_117DEFF: MDIForm1.SMSJobTimer.Left = CDbl(13500)
  loc_117DF16: Me.LblUser.Top = CDbl(7800)
  loc_117DF2D: Me.LblLDt.Top = CDbl(8160)
  loc_117DF3E: Set var_B0 = Me.LblLDt
  loc_117DF44: var_B0.Left = CDbl(13500)
  loc_117DF4C: Call Proc_286_32_139CEEC(var_B0)
  loc_117DF56: Set var_8C = Nothing
  loc_117DF59: Exit Sub
  loc_117DF5A: ' Referenced from: 117DBE0
  loc_117DF62: Set var_B0 = Err()
  loc_117DF68: Call 0.Method_arg_2C (var_D4)
  loc_117DF89: MsgBox(CVar(var_D4), &H40, "Information", var_F4, var_12C)
  loc_117DF9C: Exit Sub
  loc_117DF9D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E12B5C
  'Data Table: 4FC7FC
  loc_E12B53: Set global_52 = Nothing
  loc_E12B5A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E273E8
  'Data Table: 4FC7FC
  loc_E273C0: On Error Goto loc_E273DF
  loc_E273D7: Proc_6_88_FE81B4(Me, KeyCode)
  loc_E273DF: ' Referenced from: E273C0
  loc_E273DF: Proc_6_60_E62BC4(Shift)
  loc_E273E4: Exit Sub
End Sub

Private Sub CmdPrintCard_Click() '175F154
  'Data Table: 4FC7FC
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim var_CC As Variant
  Dim var_EC As String
  Dim var_130 As String
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_AC As Variant
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_8C As Field20
  Dim var_DC As Variant
  Dim unk_4FC807 As Connection15
  Dim var_110 As Recordset15
  Dim var_148 As Recordset15
  Dim var_14C As Fields15
  Dim var_FC As String
  Dim var_114 As Recordset15
  loc_175D3CF: Set var_88 = Me.Txt
  loc_175D3D5: Call 0.Method_CmdPrintCard_Click0 (CInt(3))
  loc_175D3EC: var_BC = Len(Trim(CVar(var_8C)))
  loc_175D402: If (var_BC = 0) Then
  loc_175D426:   MsgBox("No Record Found to Print.", &H10, "Validation Error", var_BC, var_DC)
  loc_175D436:   Exit Sub
  loc_175D437: End If
  loc_175D43E: var_130 = "Select MF.Subcode,MF.SNo,MF.RelationShip,MF.ConPrefix,MF.Name As Name,MF.Gender,MF.MaritalStatus,MF.DOB As Birthday,MF.POB,MF.WedDate As Anniversary," & "MF.Phone,MF.Mobile,MF.Fax,MF.EMail,MF.Nationality,MF.Religion,MF.BloodGroup,MF.ProOcc,MF.EdQuali,MF.TBusiness,MF.TurnOver,MF.Desig,MF.Passport,MF.PAN,"
  loc_175D44C: var_138 = var_130 & "MF.SpInterest,MF.SigPath,MF.PicPath,MF.CardNo,MF.CardIssDate,MF.CardRegId,MF.CardValidUpto," & "MCat.Name as CompanyType,S.Name As AcName,S.AllowCredit,S.CreditLimit,S.Discount,S.ActiveYN,S.BlackListed,S.ReasonBlackList,S.BlackListedBy,"
  loc_175D453: var_13C = var_138 & "IsNull(S.AddName,'')AddType,IsNull(S.Add1,'')Add1,IsNull(S.Add2,'')Add2,IsNull(S.Add3,'')Add3,IsNull(C.CityName,'')City,IsNull(S.Name,'')State,IsNull(S.Name,'')Country,IsNull(S.Pin,'')PinCode "
  loc_175D45A: var_140 = var_13C & ",SP.* From ((((((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode) Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) "
  loc_175D461: var_AC = CVar(var_140 & "Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Inner Join SmartCardRegistration SCR On SCR.Code=MF.CardRegId) Left Join SmartCardPrintParameter SP On S.CompanyType=SP.MemCatcode And MF.RelationShip=SP.CardType where SCR.Code='") 'String
  loc_175D479: var_88 = Me.Fields
  loc_175D489: var_9C = var_88.Item("SearchCode").Value
  loc_175D491: var_BC = var_AC & var_9C 
  loc_175D495: var_EC = "'"
  loc_175D49A: var_DC = var_BC & var_EC 
  loc_175D4D7: unk_4FC807.Execute CStr(var_DC), var_9C, -1
  loc_175D4E2: Set var_110 = var_88
  loc_175D4FF: If (var_110.RecordCount = 0) Then
  loc_175D510:   var_CC = "No Record Found to Print."
  loc_175D51B:   MsgBox(var_CC, &H30, var_AC, var_BC, var_DC)
  loc_175D52B:   Exit Sub
  loc_175D52C: End If
  loc_175D539: Call Proc_286_28_13B4C54(New, var_88)
  loc_175D541: Set var_12C = var_88
  loc_175D547: Set var_148 = var_12C 
  loc_175D556: var_148.AddNew var_CC, var_EC
  loc_175D580: var_148.Fields.Item("mLine").Value = vbNullString
  loc_175D59B: var_88 = var_110.Fields
  loc_175D5D7: var_148.Fields.Item("Relation").Value = CVar(Proc_6_38_E68A98(CVar(var_88.Item("RelationShip")), var_88))
  loc_175D637: var_148.Fields.Item("ConPrefix").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("ConPrefix"))))
  loc_175D697: var_148.Fields.Item("Name").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Name"))))
  loc_175D6F7: var_148.Fields.Item("Sex").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Gender"))))
  loc_175D757: var_148.Fields.Item("MaritalStatus").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("MaritalStatus"))))
  loc_175D7AF: var_148.Fields.Item("Birthday").Value = CVar(var_110.Fields.Item("Birthday"))
  loc_175D80B: var_148.Fields.Item("PlaceOfBirth").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("POB"))))
  loc_175D863: var_148.Fields.Item("Anniversary").Value = CVar(var_110.Fields.Item("Anniversary"))
  loc_175D8BF: var_148.Fields.Item("Phone").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Phone"))))
  loc_175D91F: var_148.Fields.Item("Mobile").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Mobile"))))
  loc_175D97F: var_148.Fields.Item("Religion").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Religion"))))
  loc_175D9DF: var_148.Fields.Item("BloodGroup").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("bloodGroup"))))
  loc_175DA3F: var_148.Fields.Item("Desig").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Desig"))))
  loc_175DA9F: var_148.Fields.Item("Passport").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Passport"))))
  loc_175DAFF: var_148.Fields.Item("PAN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("PAN"))))
  loc_175DB5F: var_148.Fields.Item("MemberId").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CardNo"))))
  loc_175DBBF: var_148.Fields.Item("CardRegId").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CardRegId"))))
  loc_175DC17: var_148.Fields.Item("CardIssDate").Value = CVar(var_110.Fields.Item("CardIssDate"))
  loc_175DC6B: var_148.Fields.Item("CardValidUpto").Value = CVar(var_110.Fields.Item("CardValidUpto"))
  loc_175DCC7: var_148.Fields.Item("MemberType").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CompanyType"))))
  loc_175DD27: var_148.Fields.Item("AcName").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("AcName"))))
  loc_175DD87: var_148.Fields.Item("AddRType").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("AddType"))))
  loc_175DDE7: var_148.Fields.Item("AddR1").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Add1"))))
  loc_175DE47: var_148.Fields.Item("AddR2").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Add2"))))
  loc_175DEA7: var_148.Fields.Item("AddR3").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Add3"))))
  loc_175DF07: var_148.Fields.Item("CityR").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("City"))))
  loc_175DF67: var_148.Fields.Item("StateR").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("State"))))
  loc_175DFC7: var_148.Fields.Item("CountryR").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Country"))))
  loc_175E027: var_148.Fields.Item("PinCodeR").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("PinCode"))))
  loc_175E087: var_148.Fields.Item("CardAbbr").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CardAbbr"))))
  loc_175E0E7: var_148.Fields.Item("Guardian").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("Guardian"))))
  loc_175E147: var_148.Fields.Item("ConPrefixYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("ConPrefixYN"))))
  loc_175E1A7: var_148.Fields.Item("CardNoYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CardNoYN"))))
  loc_175E207: var_148.Fields.Item("CardValidYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("CardValidYN"))))
  loc_175E267: var_148.Fields.Item("GenderYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("GenderYN"))))
  loc_175E2C7: var_148.Fields.Item("BloodGroupYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("BloodGroupYN"))))
  loc_175E327: var_148.Fields.Item("DobYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DobYN"))))
  loc_175E387: var_148.Fields.Item("MobileYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("MobileYN"))))
  loc_175E3E7: var_148.Fields.Item("AddrYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("AddrYN"))))
  loc_175E447: var_148.Fields.Item("EmailYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("EmailYN"))))
  loc_175E4A7: var_148.Fields.Item("DesigYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("DesigYN"))))
  loc_175E507: var_148.Fields.Item("PictureYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("PictureYN"))))
  loc_175E567: var_148.Fields.Item("SignatureYN").Value = CVar(Proc_6_38_E68A98(CVar(var_110.Fields.Item("SignatureYN"))))
  loc_175E59D: If Not((Me.ImgPhoto.Picture Is Nothing)) Then
  loc_175E5AA:   var_130 = "Picture"
  loc_175E5B3:   Set var_8C = var_12C 
  loc_175E5C3:   Proc_142_0_F96C2C(Me.ImgPhoto, var_8C)
  loc_175E5CE:   Set var_12C = var_8C
  loc_175E5DD: End If
  loc_175E5FE: If Not((Me.ImgSign.Picture Is Nothing)) Then
  loc_175E605:   Set var_14C = Me.ImgSign
  loc_175E614:   Set var_8C = var_12C 
  loc_175E624:   Proc_142_0_F96C2C(var_14C, var_8C, "Signature")
  loc_175E62F:   Set var_12C = var_8C
  loc_175E63E: End If
  loc_175E64B: var_EC = "Select (S.ConPrefix+S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Member,S.FatherName,SP.CardFrontImage,SP.CardBackImage,SP.FrontFontColor,SP.BackFontColor From Subgroup S Left Join SmartCardPrintParameter SP On S.CompanyType=SP.MemCatcode And SP.CardType='Member' Where S.Subcode='"
  loc_175E67E: var_FC = "'"
  loc_175E687: var_130 = CStr("SignatureYN" & var_110.Fields.Item("subcode").Value & var_FC)
  loc_175E691: unk_4FC807.Execute var_130, var_DC, -1
  loc_175E69C: Set var_114 = var_14C
  loc_175E6BC: var_144 = var_114.RecordCount
  loc_175E6CA: If (var_144 > 0) Then
  loc_175E718:   var_148.Fields.Item("MemberName").Value = CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("Member")), var_148.Fields))
  loc_175E778:   var_148.Fields.Item("FatherName").Value = CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("FatherName")), var_130))
  loc_175E7D8:   var_148.Fields.Item("FrontFontColor").Value = CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("FrontFontColor"))))
  loc_175E838:   var_148.Fields.Item("BackFontColor").Value = CVar(Proc_6_38_E68A98(CVar(var_114.Fields.Item("BackFontColor"))))
  loc_175E87E:   If (IsNull(CVar(var_110.Fields.Item("CardFrontImage"))) = 0) Then
  loc_175E88B:     var_130 = "CardFrontImage"
  loc_175E894:     Set var_8C = var_114 
  loc_175E8A4:     Proc_142_1_F33768(Me.ImgTemp, var_8C)
  loc_175E8AF:     Set var_114 = var_8C
  loc_175E8D1:     Set var_8C = var_12C 
  loc_175E8E1:     Proc_142_0_F96C2C(Me.ImgTemp, var_8C, "CardFrontImage")
  loc_175E8EC:     Set var_12C = var_8C
  loc_175E8FB:   End If
  loc_175E92C:   If (IsNull(CVar(var_110.Fields.Item("CardBackImage"))) = 0) Then
  loc_175E942:     Set var_8C = var_114 
  loc_175E952:     Proc_142_1_F33768(Me.ImgTemp, var_8C, "CardBackImage")
  loc_175E95D:     Set var_114 = var_8C
  loc_175E97F:     Set var_8C = var_12C 
  loc_175E98F:     Proc_142_0_F96C2C(Me.ImgTemp, var_8C, "CardBackImage")
  loc_175E99A:     Set var_12C = var_8C
  loc_175E9A9:   End If
  loc_175E9A9: End If
  loc_175E9A9: var_EC = "*"
  loc_175E9B2: var_CC = "Mark"
  loc_175E9C6: var_8C = var_148.Fields.Item(var_CC)
  loc_175E9CE: var_8C.Value = var_EC
  loc_175E9E5: var_148.Update var_CC, var_EC
  loc_175E9EC: Set var_148 = Nothing 
  loc_175E9F9: var_120 = "Smart Card Front Print"
  loc_175EA20: Set var_88 = var_12C 
  loc_175EA27: CreateFieldDefFile(var_88, MemVar_1F920B4 & "\" & "SmartCardPrint" & ".ttx", &HFF)
  loc_175EA33: Set var_12C = var_88
  loc_175EA55: var_130 = "\" & "SmartCardFrontPrint"
  loc_175EA69: Call 0.Method_arg_1C (MemVar_1F920B4 & var_130 & ".RPT", var_CC, var_88)
  loc_175EA74: MemVar_1F921E4 = var_88
  loc_175EA9D: Call 0.Method_arg_64 (var_88, CVar(var_12C), var_EC)
  loc_175EAA5: Call 0.Method_arg_2C (var_FC, var_130)
  loc_175EAB3: Call 0.Method_arg_150 (var_8C)
  loc_175EAC9: Call 0.Method_arg_90 (var_88, var_144)
  loc_175EAD1: Call 0.Method_arg_24 (var_126)
  loc_175EADD: For var_154 =  To CInt(var_144): 1 = var_154 'Integer
  loc_175EAF6:   Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EAFE:   Call 0.Method_arg_20 (var_8C)
  loc_175EB06:   Call 0.Method_arg_30 (var_130)
  loc_175EB1C:   var_164 = Ucase(CVar(var_130)) 'Variant
  loc_175EB4C:   If (var_164 = Ucase("comp_name")) Then
  loc_175EB70:     Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EB78:     Call 0.Method_arg_20 (var_8C)
  loc_175EB80:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_175EB96:   Else
  loc_175EBB8:     If (var_164 = Ucase("comp_add1")) Then
  loc_175EBDC:       Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EBE4:       Call 0.Method_arg_20 (var_8C)
  loc_175EBEC:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_175EC02:     Else
  loc_175EC24:       If (var_164 = Ucase("comp_pin")) Then
  loc_175EC48:         Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EC50:         Call 0.Method_arg_20 (var_8C)
  loc_175EC58:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_175EC6E:       Else
  loc_175EC90:         If (var_164 = Ucase("comp_GSTIN")) Then
  loc_175EC9A:           var_130 = "'" & MemVar_1F92154
  loc_175ECB4:           Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175ECBC:           Call 0.Method_arg_20 (var_8C)
  loc_175ECC4:           Call 0.Method_arg_38 (var_130 & "'")
  loc_175ECDA:         Else
  loc_175ECFC:           If (var_164 = Ucase("Title")) Then
  loc_175ED08:             Call 0.Method_arg_50 (var_130)
  loc_175ED2B:             Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175ED33:             Call 0.Method_arg_20 (var_8C)
  loc_175ED3B:             Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_175ED50:           End If
  loc_175ED50:         End If
  loc_175ED50:       End If
  loc_175ED50:     End If
  loc_175ED50:   End If
  loc_175ED53: Next var_154 'Integer
  loc_175ED5D: Set var_8C = Nothing
  loc_175ED73: Set var_88 = MemVar_1F921E4 
  loc_175ED7A: var_CC = var_88
  loc_175ED7F: Proc_6_99_1483714(var_CC, 3, var_120)
  loc_175ED8A: MemVar_1F921E4 = var_88
  loc_175ED9E: var_120 = "Smart Card Back Print"
  loc_175EDC5: Set var_88 = var_12C 
  loc_175EDCC: CreateFieldDefFile(var_88, MemVar_1F920B4 & "\" & "SmartCardPrint" & ".ttx", &HFF)
  loc_175EDFA: var_130 = "\" & "SmartCardBackPrint"
  loc_175EE0E: Call 0.Method_arg_1C (MemVar_1F920B4 & var_130 & ".RPT", var_CC, var_88)
  loc_175EE19: MemVar_1F921E4 = var_88
  loc_175EE42: Call 0.Method_arg_64 (var_88, CVar(var_88), var_EC)
  loc_175EE4A: Call 0.Method_arg_2C (var_FC, &HFF)
  loc_175EE58: Call 0.Method_arg_150 (var_8C)
  loc_175EE6E: Call 0.Method_arg_90 (var_88, var_144)
  loc_175EE76: Call 0.Method_arg_24 (var_126)
  loc_175EE82: For var_16C =  To CInt(var_144): 1 = var_16C 'Integer
  loc_175EE9B:   Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EEA3:   Call 0.Method_arg_20 (var_8C)
  loc_175EEAB:   Call 0.Method_arg_30 (var_130)
  loc_175EEC1:   var_17C = Ucase(CVar(var_130)) 'Variant
  loc_175EEF1:   If (var_17C = Ucase("comp_name")) Then
  loc_175EF15:     Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EF1D:     Call 0.Method_arg_20 (var_8C)
  loc_175EF25:     Call 0.Method_arg_38 ("'" & MemVar_1F92130 & "'")
  loc_175EF3B:   Else
  loc_175EF5D:     If (var_17C = Ucase("comp_add1")) Then
  loc_175EF81:       Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EF89:       Call 0.Method_arg_20 (var_8C)
  loc_175EF91:       Call 0.Method_arg_38 ("'" & MemVar_1F92134 & "'")
  loc_175EFA7:     Else
  loc_175EFC9:       If (var_17C = Ucase("comp_pin")) Then
  loc_175EFED:         Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175EFF5:         Call 0.Method_arg_20 (var_8C)
  loc_175EFFD:         Call 0.Method_arg_38 ("'" & MemVar_1F9213C & "'")
  loc_175F013:       Else
  loc_175F035:         If (var_17C = Ucase("comp_GSTIN")) Then
  loc_175F03F:           var_130 = "'" & MemVar_1F92154
  loc_175F059:           Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175F061:           Call 0.Method_arg_20 (var_8C)
  loc_175F069:           Call 0.Method_arg_38 (var_130 & "'")
  loc_175F07F:         Else
  loc_175F0A1:           If (var_17C = Ucase("Title")) Then
  loc_175F0AD:             Call 0.Method_arg_50 (var_130)
  loc_175F0D0:             Call 0.Method_arg_90 (var_88, CLng(var_126))
  loc_175F0D8:             Call 0.Method_arg_20 (var_8C)
  loc_175F0E0:             Call 0.Method_arg_38 ("'" & var_130 & "'")
  loc_175F0F5:           End If
  loc_175F0F5:         End If
  loc_175F0F5:       End If
  loc_175F0F5:     End If
  loc_175F0F5:   End If
  loc_175F0F8: Next var_16C 'Integer
  loc_175F102: Set var_8C = Nothing
  loc_175F118: Set var_88 = MemVar_1F921E4 
  loc_175F124: Proc_6_99_1483714(var_88, 3, var_120)
  loc_175F12F: MemVar_1F921E4 = var_88
  loc_175F13F: Set var_110 = Nothing
  loc_175F147: Set var_114 = Nothing
  loc_175F14A: Exit Sub
  loc_175F14B: Proc_6_60_E62BC4(&HFF)
  loc_175F150: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'EF3D28
  'Data Table: 4FC7FC
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_AC As TextBox
  loc_EF3C96: If (Me.ListView.ListItems.Count > 0) Then
  loc_EF3CB1:   Set var_9C = Me.ListView.SelectedItem
  loc_EF3CCA:   Set var_A8 = Me.Txt
  loc_EF3CD0:   Call 0.Method_ListView_UnknownEvent_130 (CInt(1), var_AC)
  loc_EF3CD8:   var_AC.Text = var_9C.Text
  loc_EF3CEE: End If
  loc_EF3CFA: Me.FrmList.Visible = False
  loc_EF3D0D: Set var_88 = Me.Txt
  loc_EF3D13: Call 0.Method_ListView_UnknownEvent_130 (CInt(1))
  loc_EF3D1B: var_9C.SetFocus
  loc_EF3D27: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10B0AD0
  'Data Table: 4FC7FC
  Dim var_88 As Label
  Dim var_8C As String
  Dim var_A4 As Variant
  Dim Me As Recordset15
  Dim var_BC As TextBox
  loc_10B0800: On Error Goto loc_10B0A8B
  loc_10B0810: Me.LblUser.Caption = vbNullString
  loc_10B0825: Me.LblLDt.Caption = vbNullString
  loc_10B0840: If (SmartCardApplicable = "No") Then
  loc_10B085F:   Me.Recordset15.CursorLocation = 3
  loc_10B0882:   var_8C = "Select S.Code as Code,S.Name,S.MobileNo As SearchKey From GuestProf S Where S.POS=1 And S.Code Not In (Select Distinct MemberCode from SmartCardRegistration Where CardType='Cash Card' And LogSite_Code='" & MemVar_1F92078
  loc_10B0897:   var_A4 = CVar(var_8C & "' or LogSite_Code='HO') And (S.LOGSITE_CODE='" & MemVar_1F92078 & "' or S.LOGSITE_CODE='HO') Order By S.Name") 'String
  loc_10B08A1:   Me.Open var_A4, CVar(MemVar_1F92044), 3
  loc_10B08BB:   CVarUnk
  loc_10B08C0:   VerifyVarObj
  loc_10B08CC:   LateIdStAd
  loc_10B08DA:   Call Proc_286_30_F08C58(Me.DGMember, New)
  loc_10B0902:   Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("ADD", Me, global_52), 1)
  loc_10B0920:   Set var_88 = Me.Txt
  loc_10B0926:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_BC)
  loc_10B092E:   var_BC.Text = CStr(MemVar_1F920EC)
  loc_10B094B:   Set var_88 = Me.Txt
  loc_10B0951:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_10B0959:   var_BC.Text = "Cash Card"
  loc_10B0973:   Set var_88 = Me.Txt
  loc_10B0979:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_BC)
  loc_10B0981:   var_BC.Text = "No"
  loc_10B099A:   Set var_88 = Me.Txt
  loc_10B09A0:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_BC)
  loc_10B09A8:   var_BC.Enabled = False
  loc_10B09BF:   Set var_88 = Me.Txt
  loc_10B09C5:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(9), var_BC)
  loc_10B09CD:   var_BC.SetFocus
  loc_10B09DC: Else
  loc_10B09E0:   Set var_88 = Me.FrCardIssue
  loc_10B09E6:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(-1)
  loc_10B09F8:   If (CBool() = 0) Then
  loc_10B09FB:     Call Proc_286_30_F08C58()
  loc_10B0A15:     var_8C = "ADD"
  loc_10B0A1B:     Proc_5_1_100CB50(var_8C, Me)
  loc_10B0A2E:     Set var_88 = Me.FrCardIssue
  loc_10B0A34:     Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(True)
  loc_10B0A49:     Set var_88 = Me.CmdCardIss
  loc_10B0A4F:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (0, var_BC)
  loc_10B0A57:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10B0A70:     Set var_88 = Me.CmdCardIss
  loc_10B0A76:     Call 0.Method_TopCtrl1_UnknownEvent_A0 (1, var_BC)
  loc_10B0A7E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_10B0A8A:   End If
  loc_10B0A8A: End If
  loc_10B0A8A: Exit Sub
  loc_10B0A8B: ' Referenced from: 10B0800
  loc_10B0A93: Set var_88 = Err()
  loc_10B0A99: Call 0.Method_arg_2C (var_8C)
  loc_10B0ABA: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_10B0ACD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'FAE8E4
  'Data Table: 4FC7FC
  Dim var_7B01 As Integer
  loc_FAE754: On Error Goto loc_FAE8DC
  loc_FAE78E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_FAE7B4:   Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("INI", Me))
  loc_FAE7C8:   Set var_110 = Me.TopCtrl1
  loc_FAE7CE:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_FAE7D6:   Call Proc_286_32_139CEEC(global_52)
  loc_FAE7DE: Else
  loc_FAE7E4:   Call 0.Method_arg_1E8 (var_110)
  loc_FAE7EC:   Call var_110.SetFocus
  loc_FAE7F5: End If
  loc_FAE7F9: Set var_110 = ()
  loc_FAE7FF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FAE811: If (CBool() = &HFF) Then
  loc_FAE81D:   Set var_110 = (False)
  loc_FAE823:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010007()
  loc_FAE82B: End If
  loc_FAE834: Set var_110 = Me.CmdCardIss
  loc_FAE83A: Call 0.Method_TopCtrl1_UnknownEvent_B0 (0)
  loc_FAE842: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_118)
  loc_FAE858: If (CBool() = &HFF) Then
  loc_FAE869:   Set var_110 = Me.CmdCardIss
  loc_FAE86F:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (0, var_118)
  loc_FAE877:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_FAE883: End If
  loc_FAE88C: Set var_110 = Me.CmdCardIss
  loc_FAE892: Call 0.Method_TopCtrl1_UnknownEvent_B0 (1)
  loc_FAE89A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(var_118)
  loc_FAE8B0: If (CBool() = &HFF) Then
  loc_FAE8C1:   Set var_110 = Me.CmdCardIss
  loc_FAE8C7:   Call 0.Method_TopCtrl1_UnknownEvent_B0 (1, var_118)
  loc_FAE8CF:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_FAE8DB: End If
  loc_FAE8DB: Exit Sub
  loc_FAE8DC: ' Referenced from: FAE754
  loc_FAE8DC: Proc_6_60_E62BC4()
  loc_FAE8E1: Exit Sub
  loc_FAE8E2: var_7B01 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_D '10C74F0
  'Data Table: 4FC7FC
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_10C7200: On Error Goto loc_10C74AD
  loc_10C7211: If (Proc_183_55_FE7900(global_52) = &HFF) Then
  loc_10C7214:   Exit Sub
  loc_10C7215: End If
  loc_10C722C: If (Me.RecordCount > 0) Then
  loc_10C7252:   Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("EDIT", Me))
  loc_10C726A:   Set var_90 = Me.Txt
  loc_10C7270:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C7278:   var_98.Enabled = False
  loc_10C7291:   Set var_90 = Me.Txt
  loc_10C7297:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_98)
  loc_10C729F:   var_98.Enabled = False
  loc_10C72B8:   Set var_90 = Me.Txt
  loc_10C72BE:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_10C72C6:   var_98.Enabled = False
  loc_10C72E0:   Set var_90 = Me.Txt
  loc_10C72E6:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C7305:   If (var_98.Text = "Member") Then
  loc_10C7315:     Set var_90 = Me.Txt
  loc_10C731B:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_10C7323:     var_98.Enabled = False
  loc_10C733C:     Set var_90 = Me.Txt
  loc_10C7342:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_10C734A:     var_98.Enabled = False
  loc_10C7363:     Set var_90 = Me.Txt
  loc_10C7369:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(5), var_98)
  loc_10C7371:     var_98.Enabled = False
  loc_10C738A:     Set var_90 = Me.Txt
  loc_10C7390:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_98)
  loc_10C7398:     var_98.Enabled = False
  loc_10C73AF:     Set var_90 = Me.Txt
  loc_10C73B5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(7), var_98)
  loc_10C73BD:     var_98.SetFocus
  loc_10C73CC:   Else
  loc_10C73DA:     Set var_90 = Me.Txt
  loc_10C73E0:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_10C73E8:     var_8C = var_98.Text
  loc_10C73FF:     If (var_8C = "Cash Card") Then
  loc_10C740F:       Set var_90 = Me.Txt
  loc_10C7415:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_10C741D:       var_98.Enabled = False
  loc_10C7434:       Set var_90 = Me.Txt
  loc_10C743A:       Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98)
  loc_10C7442:       var_98.SetFocus
  loc_10C744E:     End If
  loc_10C744E:   End If
  loc_10C7451: Else
  loc_10C7472:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_10C7482: End If
  loc_10C748F: Me.LblUser.Caption = vbNullString
  loc_10C74A4: Me.LblLDt.Caption = vbNullString
  loc_10C74AC: Exit Sub
  loc_10C74AD: ' Referenced from: 10C7200
  loc_10C74B5: Set var_90 = Err()
  loc_10C74BB: Call 0.Method_arg_2C (var_8C)
  loc_10C74DC: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_10C74EF: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E18E9C
  'Data Table: 4FC7FC
  loc_E18E91: Me.Global.Unload Me
  loc_E18E99: Exit Sub
  loc_E18E9A: var_7BF8 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F26918
  'Data Table: 4FC7FC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F920E4 As String
  loc_F26818: On Error Goto loc_F268B0
  loc_F26824: var_88 = Me.RecordCount
  loc_F26832: If (var_88 <= 0) Then
  loc_F2683B:   var_B8 = "Information"
  loc_F26856:   MsgBox("Records Not Present For Searching.", &H40, var_B8, var_E8, var_108)
  loc_F26866:   Exit Sub
  loc_F26867: End If
  loc_F2686E: var_10C = "Select SCR.Code As SearchCode,SCR.Code,Convert(Varchar(11),SCR.IssDate,103) IssueDate,SCR.CardType,S.Name As MemberName,SCR.Name As Name,SCR.CardNo As MemberID,SCR.Addr As Address,SCR.Phone,Convert(Varchar(11),SCR.ValidUpTo,103) As ValidUpTo,SCR.BlockedYN FROM SmartCardRegistration SCR Left Join Subgroup S On SCR.Membercode=S.SubCode WHERE (SCR.LOGSITE_CODE='" & MemVar_1F92078
  loc_F26875: MemVar_1F920E4 = var_10C & "' or SCR.LOGSITE_CODE='HO') Order by SCR.IssDate,SCR.Code"
  loc_F2687F: var_10C = "1200,900,900,3500,3500,1500,3500,2000,900,500"
  loc_F26885: Proc_6_126_F1BCC0(var_10C)
  loc_F26893: MemVar_1F92120 = Me
  loc_F268AA: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F268AF: Exit Sub
  loc_F268B0: ' Referenced from: F26818
  loc_F268B8: Set var_110 = Err()
  loc_F268BE: Call 0.Method_arg_1C (var_88)
  loc_F268CF: If (var_88 <> 0) Then
  loc_F268DA:   Set var_110 = Err()
  loc_F268E0:   Call 0.Method_arg_2C (var_10C)
  loc_F26901:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F26914: End If
  loc_F26914: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32CB8
  'Data Table: 4FC7FC
  loc_E32CA8: Proc_5_0_110649C(&HFF, Me)
  loc_E32CB0: Call Proc_286_32_139CEEC(global_52)
  loc_E32CB5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32E98
  'Data Table: 4FC7FC
  loc_E32E88: Proc_5_0_110649C(&HFF, Me)
  loc_E32E90: Call Proc_286_32_139CEEC(global_52)
  loc_E32E95: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32DD8
  'Data Table: 4FC7FC
  loc_E32DC8: Proc_5_0_110649C(&HFF, Me)
  loc_E32DD0: Call Proc_286_32_139CEEC(global_52)
  loc_E32DD5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32D78
  'Data Table: 4FC7FC
  loc_E32D68: Proc_5_0_110649C(&HFF, Me)
  loc_E32D70: Call Proc_286_32_139CEEC(global_52)
  loc_E32D75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E09C00
  'Data Table: 4FC7FC
  Dim Me As Recordset15
  loc_E09BF7: Me.Requery -1
  loc_E09BFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1673530
  'Data Table: 4FC7FC
  Dim var_AC As Variant
  Dim var_BC As TextBox
  Dim var_F4 As Variant
  Dim var_D4 As Variant
  Dim var_B4 As String
  Dim var_C0 As String
  Dim unk_4FC807 As Connection15
  Dim var_A8 As Variant
  Dim var_B0 As Field20
  Dim Me As Recordset15
  Dim var_124 As Variant
  Dim var_E4 As Variant
  Dim var_144 As Variant
  Dim var_4DC As Variant
  Dim var_524 As TextBox
  Dim var_15C As Variant
  Dim var_16C As Variant
  Dim var_1B4 As Variant
  Dim var_1FC As Variant
  Dim var_29C As Variant
  Dim var_2D4 As Variant
  Dim var_3AC As Variant
  Dim var_3EC As Variant
  Dim var_42C As Variant
  Dim var_4CC As Variant
  Dim var_558 As Variant
  Dim var_578 As Variant
  Dim var_A2 As Integer
  Dim var_174 As TextBox
  Dim var_1B8 As MSHFlexGrid
  Dim var_5AC As Double
  Dim var_104 As Variant
  Dim var_26C As Variant
  Dim var_194 As Variant
  Dim var_1DC As Variant
  Dim var_224 As Variant
  Dim var_2C4 As Variant
  Dim var_39C As Variant
  loc_1671EB8: On Error Goto loc_1673480
  loc_1671EBF: var_86 = CByte(0) 'Byte
  loc_1671ECE: Set var_A8 = Me.Txt
  loc_1671ED4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1671EDC: var_B4 = "Card Type"
  loc_1671EFD: If (Proc_183_19_E8DAFC(var_AC, var_B4) = 0) Then
  loc_1671F07:   Call Txt_GotFocus()
  loc_1671F0C:   Exit Sub
  loc_1671F0D: End If
  loc_1671F1B: Set var_A8 = Me.Txt
  loc_1671F21: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_B4)
  loc_1671F29: CInt(1) = var_AC.Text
  loc_1671F44: Set var_B0 = Me.Txt
  loc_1671F4A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_BC, var_C0)
  loc_1671F52: (var_B4 = "Member") = var_BC.Text
  loc_1671F85: If (var_AC Or ((var_C0 = "Cash Card") And (SmartCardApplicable = "No"))) Then
  loc_1671F96:   Set var_A8 = Me.Txt
  loc_1671F9C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1671FBB:   If (var_AC.Tag = vbNullString) Then
  loc_1671FDF:     MsgBox("Member Name is a required field.", &H10, "Validation Error", var_124, var_144)
  loc_1671FFA:     Set var_A8 = Me.Txt
  loc_1672000:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2))
  loc_1672008:     var_AC.SetFocus
  loc_1672014:     Exit Sub
  loc_1672015:   End If
  loc_1672015: End If
  loc_1672020: Set var_A8 = Me.Txt
  loc_1672026: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_167204F: If (Proc_183_19_E8DAFC(var_AC, "Name") = 0) Then
  loc_1672059:   Call Txt_GotFocus()
  loc_167205E:   Exit Sub
  loc_167205F: End If
  loc_167206A: Set var_A8 = Me.Txt
  loc_1672070: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1672099: If (Proc_183_19_E8DAFC(var_AC, "Card Id") = 0) Then
  loc_16720A3:   Call Txt_GotFocus()
  loc_16720A8:   Exit Sub
  loc_16720A9: End If
  loc_16720B4: Set var_A8 = Me.Txt
  loc_16720BA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, CInt(4))
  loc_16720C2: var_B4 = "Valid Upto Date"
  loc_16720E3: If (Proc_183_19_E8DAFC(var_AC, var_B4) = 0) Then
  loc_16720ED:   Call Txt_GotFocus()
  loc_16720F2:   Exit Sub
  loc_16720F3: End If
  loc_1672101: Set var_B0 = Me.Txt
  loc_1672107: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_C0)
  loc_167210F: CInt(7) = var_BC.Text
  loc_1672122: Set var_A8 = Me.Txt
  loc_1672128: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_AC, var_B4)
  loc_1672130: CInt(3) = var_AC.Text
  loc_1672152: If (CDate(var_B4) < CDate(var_C0)) Then
  loc_1672160:   var_104 = "Validation Error"
  loc_1672170:   var_E4 = "Valid Upto Date should be greater than Issue Date."
  loc_1672176:   MsgBox(var_E4, &H10, var_104, var_124, var_144)
  loc_167218D:   Call Txt_GotFocus()
  loc_1672192:   Exit Sub
  loc_1672193: End If
  loc_1672197: Set var_A8 = Me.TopCtrl1
  loc_167219D: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000C(CInt(7))
  loc_16721B6: If (CStr(var_AC) = "Add") Then
  loc_16721BF:   var_F4 = 0
  loc_16721DC:   var_B4 = "Select IsNull(Max(CAST(Code AS INT)),0)+1 AS MyCode From SmartCardRegistration Where LOGSITE_CODE='" & MemVar_1F92078
  loc_16721EC:   unk_4FC807.Execute CStr(var_AC) & "' AND  IsNumeric(Code)=1", var_E4, -1
  loc_16721F4:   var_A8 = var_A8.Fields
  loc_16721FC:   var_F4 = var_AC.Item(var_AC)
  loc_1672204:   var_B0 = var_B0.Value
  loc_1672262:   global_60 = CStr(Format(CStr(Format(CStr(var_104), "00000000")), "00000000"))
  loc_1672273: Else
  loc_1672290:   var_AC = Me.Fields.Item("Code")
  loc_16722A7:   global_60 = CStr(var_AC.Value)
  loc_16722B8: End If
  loc_16722C1: unk_4FC807.BeginTrans var_148
  loc_16722CA: var_86 = CByte(1) 'Byte
  loc_16722D2: Set var_A8 = Me.TopCtrl1
  loc_16722D8: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000C(1)
  loc_16722F1: If (CStr(1) = "Add") Then
  loc_1672305:   var_124 = CVar("Agnst.New Reg." & global_60 & "/") 'String
  loc_1672313:   Set var_A8 = Me.Txt
  loc_1672319:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1672335:   var_90 = CStr(var_124 & Trim(CVar(var_AC)))
  loc_167235C:   If (SmartCardApplicable = "No") Then
  loc_167236D:     Set var_A8 = Me.Txt
  loc_1672373:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_167237B:     var_C0 = var_AC.Text
  loc_167238B:     Set var_B0 = Me.Txt
  loc_1672391:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_16723A0:     var_104 = Trim(CVar(var_BC))
  loc_16723AB:     Proc_6_17_EAA2B0(var_124, var_104)
  loc_16723BB:     Set var_170 = Me.Txt
  loc_16723C1:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_16723D0:     Proc_6_17_EAA2B0(var_194, CVar(var_174))
  loc_16723E0:     Set var_1B8 = Me.Txt
  loc_16723E6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_16723F5:     Proc_6_17_EAA2B0(var_1DC, CVar(var_1BC))
  loc_1672405:     Set var_200 = Me.Txt
  loc_167240B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_167241A:     Proc_6_17_EAA2B0(var_224, CVar(var_204))
  loc_167242A:     Set var_248 = Me.Txt
  loc_1672430:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_167243F:     Proc_6_7_F25D88(var_26C, CVar(var_24C))
  loc_167244F:     Set var_2A0 = Me.Txt
  loc_1672455:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_1672464:     Proc_6_7_F25D88(var_2C4, CVar(var_2A4))
  loc_1672474:     Set var_2F8 = Me.Txt
  loc_167247A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_16724CB:     var_4DC = MemVar_1F92078
  loc_16724D3:     Proc_6_17_EAA2B0(var_4EC)
  loc_16724E6:     Set var_520 = Me.Txt
  loc_16724EC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_1672502:     Proc_6_17_EAA2B0(var_548, CVar(var_524.Tag))
  loc_167251E:     var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_1672589:     var_2D4 = CVar(var_B4 & "','" & var_C0 & "',") & var_124 & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," & var_2C4 
  loc_16725C2:     var_42C = var_2D4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), "Y", "N") & "','" & CVar(global_64) & "','" & CVar(MemVar_1F92070) 
  loc_1672611:     var_578 = var_42C & "','" & CVar(MemVar_1F920C8) & "','" & CVar(Proc_6_14_EF349C(var_104)) & "','A'," & var_4EC & "," & var_548 & ")" 
  loc_167261F:     unk_4FC807.Execute CStr(var_578), var_59C, -1
  loc_16726B9:     var_A2 = &HFF
  loc_16726BF:   Else
  loc_16726D0:     If (Proc_275_11_10CD018(var_9C, var_94, var_A0) = &HFF) Then
  loc_16726DE:       If (global_64 = var_A0) Then
  loc_16726EC:         If (global_96 = "Yes") Then
  loc_16726FD:           Set var_A8 = Me.Txt
  loc_1672703:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_C0)
  loc_167270B:           var_A2 = var_AC.Text
  loc_167271B:           Set var_B0 = Me.Txt
  loc_1672721:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_167273B:           Proc_6_17_EAA2B0(var_124, Trim(CVar(var_BC)))
  loc_167274B:           Set var_170 = Me.Txt
  loc_1672751:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_1672760:           Proc_6_17_EAA2B0(var_194, CVar(var_174))
  loc_1672770:           Set var_1B8 = Me.Txt
  loc_1672776:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_1672785:           Proc_6_17_EAA2B0(var_1DC, CVar(var_1BC))
  loc_1672795:           Set var_200 = Me.Txt
  loc_167279B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_16727AA:           Proc_6_17_EAA2B0(var_224, CVar(var_204))
  loc_16727BA:           Set var_248 = Me.Txt
  loc_16727C0:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_16727CF:           Proc_6_7_F25D88(var_26C, CVar(var_24C))
  loc_16727DF:           Set var_2A0 = Me.Txt
  loc_16727E5:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_16727F4:           Proc_6_7_F25D88(var_2C4, CVar(var_2A4))
  loc_1672804:           Set var_2F8 = Me.Txt
  loc_167280A:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_167285B:           var_4DC = MemVar_1F92078
  loc_1672863:           Proc_6_17_EAA2B0(var_4EC, var_4DC)
  loc_1672876:           Set var_520 = Me.Txt
  loc_167287C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_1672892:           Proc_6_17_EAA2B0(var_548, CVar(var_524.Tag))
  loc_16728AE:           var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_1672912:           var_29C = CVar(var_B4 & "','" & var_C0 & "',") & var_124 & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," 
  loc_1672952:           var_42C = var_29C & var_2C4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), "Y", "N") & "','" & CVar(global_64) & "','" & CVar(MemVar_1F92070) 
  loc_1672998:           var_558 = var_42C & "','" & CVar(MemVar_1F920C8) & "','" & CVar(Proc_6_14_EF349C(var_5A0)) & "','A'," & var_4EC & "," & var_548 
  loc_16729AF:           unk_4FC807.Execute CStr(var_558 & ")"), var_59C, -1
  loc_1672A4A:         Else
  loc_1672A58:           Set var_A8 = Me.Txt
  loc_1672A5E:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_C0)
  loc_1672A66:           var_5A0 = var_AC.Text
  loc_1672A76:           Set var_B0 = Me.Txt
  loc_1672A7C:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_BC)
  loc_1672A84:           var_E4 = CVar(var_BC) 'Address
  loc_1672A96:           Proc_6_17_EAA2B0(var_124, Trim(var_E4))
  loc_1672AA6:           Set var_170 = Me.Txt
  loc_1672AAC:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_174)
  loc_1672ABB:           Proc_6_17_EAA2B0(var_194, CVar(var_174))
  loc_1672ACB:           Set var_1B8 = Me.Txt
  loc_1672AD1:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_1BC)
  loc_1672AE0:           Proc_6_17_EAA2B0(var_1DC, CVar(var_1BC))
  loc_1672AF0:           Set var_200 = Me.Txt
  loc_1672AF6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_204)
  loc_1672B05:           Proc_6_17_EAA2B0(var_224, CVar(var_204))
  loc_1672B15:           Set var_248 = Me.Txt
  loc_1672B1B:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_24C)
  loc_1672B2A:           Proc_6_7_F25D88(var_26C, CVar(var_24C))
  loc_1672B3A:           Set var_2A0 = Me.Txt
  loc_1672B40:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_2A4)
  loc_1672B4F:           Proc_6_7_F25D88(var_2C4, CVar(var_2A4))
  loc_1672B5F:           Set var_2F8 = Me.Txt
  loc_1672B65:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_2FC)
  loc_1672B89:           var_36C = "Y"
  loc_1672BB6:           var_4DC = MemVar_1F92078
  loc_1672BBE:           Proc_6_17_EAA2B0(var_4EC)
  loc_1672BD1:           Set var_520 = Me.Txt
  loc_1672BD7:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_524)
  loc_1672BED:           Proc_6_17_EAA2B0(var_548, CVar(var_524.Tag))
  loc_1672C09:           var_B4 = "Insert Into SmartCardRegistration(Code,CardType,CardNo,Name,Addr,Phone,IssDate,ValidUpto,BlockedYN,SerialNo,Site_Code,U_Name,U_EntDt,U_AE,logSite_Code,MemberCode) Values('" & global_60
  loc_1672C24:           var_15C = CVar(var_B4 & "','" & var_C0 & "',") & var_124 
  loc_1672C84:           var_3AC = var_15C & "," & var_194 & "," & var_1DC & "," & var_224 & "," & var_26C & "," & var_2C4 & ",'" & IIf((Trim(CVar(var_2FC)) = "Yes"), var_36C, "N") 
  loc_1672C9A:           var_3EC = var_3AC & "','" & CVar(global_64) 
  loc_1672CDC:           var_4CC = var_3EC & "','" & CVar(MemVar_1F92070) & "','" & CVar(MemVar_1F920C8) & "','" & CVar(Proc_6_14_EF349C(var_4DC)) & "','A'," 
  loc_1672D0A:           unk_4FC807.Execute CStr(var_4CC & var_4EC & "," & var_548 & ")"), var_59C, -1
  loc_1672DB0:           Proc_6_17_EAA2B0(var_E4, global_64)
  loc_1672DC0:           Set var_A8 = Me.Txt
  loc_1672DC6:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1672DD5:           Proc_6_7_F25D88(var_15C, CVar(var_AC))
  loc_1672DE8:           Proc_6_17_EAA2B0(var_194, global_60)
  loc_1672DF8:           Set var_B0 = Me.Txt
  loc_1672DFE:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_BC)
  loc_1672E0D:           Proc_6_7_F25D88(var_1DC, CVar(var_BC))
  loc_1672E20:           Set var_170 = Me.Txt
  loc_1672E26:           Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_174, var_B4)
  loc_1672E2E:           var_5A0 = var_174.Tag
  loc_1672E3C:           Proc_6_17_EAA2B0(var_224, CVar(var_B4))
  loc_1672E5B:           var_5AC = Val(CStr(Me.GridSel.Tag))
  loc_1672E73:           var_104 = "Update MemberFamily Set HW_Id=" & var_E4 
  loc_1672E9C:           var_1B4 = var_104 & ",CardIssDate=" & var_15C & ",CardRegId=" & var_194 & ",CardValidUpto=" 
  loc_1672EAC:           var_1FC = var_1B4 & var_1DC & " Where SubCode=" 
  loc_1672EF1:           unk_4FC807.Execute CStr(var_1FC & var_224 & " And SNo=" & CVar(var_5AC) & " And LogSite_Code='" & CVar(MemVar_1F92078) & "'"), var_2C4, -1
  loc_1672F3F:         End If
  loc_1672F5F:         Set var_A8 = Me.Txt
  loc_1672F65:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC, var_B4, "Update SmartCardMaster Set MemberCode=", var_1B4)
  loc_1672F6D:         -1 = var_AC.Tag
  loc_1672F7B:         Proc_6_17_EAA2B0(var_104, CVar(var_B4), var_B0)
  loc_1672F9E:         Proc_6_17_EAA2B0(var_15C, global_60, var_1BC & var_104 & ",CardRegId=")
  loc_1672FA6:         var_16C = var_5AC & var_15C 
  loc_1672FC1:         Proc_6_17_EAA2B0(var_194, global_64)
  loc_1672FD7:         unk_4FC807.Execute CStr(var_16C & " Where HW_Id=" & var_194), var_4DC, 
  loc_167301D:         Set var_A8 = Me.Txt
  loc_1673023:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1673042:         var_124 = Left(Trim(CVar(var_AC)), &H14)
  loc_1673055:         var_144 = CVar(Proc_6_45_EAD428(global_60)) 'String
  loc_167305B:         var_15C = (var_144 + var_124)
  loc_1673082:         If (Proc_275_3_1210F84(CStr(var_15C), CDbl(0), CDbl(0)) = &HFF) Then
  loc_1673087:           var_A2 = &HFF
  loc_167308D:         Else
  loc_1673090:         Else
  loc_1673093:         Else
  loc_167309E:           var_104 = "Smart Card Verification"
  loc_16730B4:           MsgBox("Smart Card is Changed", &H10, var_104, var_124, var_144)
  loc_16730C7:         Else
  loc_16730CA:         Else
  loc_16730CD:         Else
  loc_16730CD:         End If
  loc_16730D0:       Else
  loc_16730DB:         Set var_A8 = Me.Txt
  loc_16730E1:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_A2)
  loc_16730F0:         Proc_6_17_EAA2B0(var_104, CVar(var_AC))
  loc_1673100:         Set var_B0 = Me.Txt
  loc_1673106:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_BC)
  loc_1673115:         Proc_6_17_EAA2B0(var_16C, CVar(var_BC))
  loc_1673125:         Set var_170 = Me.Txt
  loc_167312B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_174)
  loc_167313A:         Proc_6_17_EAA2B0(var_1B4, CVar(var_174))
  loc_167314A:         Set var_1B8 = Me.Txt
  loc_1673150:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1BC)
  loc_167315F:         Proc_6_7_F25D88(var_1FC, CVar(var_1BC))
  loc_167316F:         Set var_200 = Me.Txt
  loc_1673175:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_204)
  loc_16731C6:         Proc_183_7_EB0C44(var_36C, CVar(Proc_6_15_EF2C1C(var_A0)))
  loc_16731E0:         var_124 = "UPDATE SmartCardRegistration SET Name=" & var_104 
  loc_16731E9:         var_144 = var_124 & ",Addr=" 
  loc_1673220:         var_2C4 = var_144 & var_16C & ",Phone=" & var_1B4 & ",ValidUpto=" & var_1FC & ",BlockedYN='" & IIf((Trim(CVar(var_204)) = "Yes"), "Y", "N") 
  loc_167325F:         var_39C = var_2C4 & "',SITE_CODE='" & CVar(MemVar_1F92070) & "',U_name='" & CVar(MemVar_1F920C8) & "',U_EntDt=" & var_36C & ",U_AE='E' WHERE Code='" 
  loc_1673283:         unk_4FC807.Execute CStr(var_39C & CVar(global_60) & "'"), var_3EC, -1
  loc_16732E3:       End If
  loc_16732E9:       unk_4FC807.CommitTrans
  loc_16732F2:       var_86 = CByte(0) 'Byte
  loc_16732F6:       Call Proc_286_33_EB830C(var_248)
  loc_16732FF:       Set var_A8 = Me.TopCtrl1
  loc_1673305:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000C(&HC)
  loc_1673333:       If ((CStr() = "Add") And (SmartCardApplicable = "No")) Then
  loc_167333B:         var_B4 = 0
  loc_1673347:         Proc_233_15_15FAD24(global_60)
  loc_167334F:       End If
  loc_167335A:       Me.Requery -1
  loc_1673377:       var_B4 = "Code='" & global_60
  loc_1673387:       Me.Find var_B4 & "'", 0, 1
  loc_1673399:       If (var_A2 = &HFF) Then
  loc_16733B2:         var_D4 = "Registration Completed Successfully."
  loc_16733BD:         MsgBox(var_D4, &H40, "Cash Card Detail", var_124, var_144)
  loc_16733CD:       End If
  loc_16733D1:       Set var_A8 = Me.FrCardIssue
  loc_16733D7:       Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(var_D4)
  loc_16733E9:       If (CBool(var_B4) = &HFF) Then
  loc_16733F5:         Set var_A8 = Me.FrCardIssue
  loc_16733FB:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_1673403:       End If
  loc_167341E:       If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_167342D:         Me.FrFamilyMember.Visible = False
  loc_1673435:       End If
  loc_167344A:       var_B4 = "INI"
  loc_1673458:       Call Proc_286_29_EB2DEC(Proc_5_1_100CB50(var_B4, Me))
  loc_167346C:       Set var_A8 = Me.TopCtrl1
  loc_1673472:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030017(False)
  loc_167347A:       Call Proc_286_32_139CEEC(global_52)
  loc_167347F:       Exit Sub
  loc_1673480:     End If
  loc_1673480:   End If
  loc_1673480: End If
  loc_1673480: ' Referenced from: 1671EB8
  loc_1673489: If (CInt(var_86) = 1) Then
  loc_1673492:   unk_4FC807.RollbackTrans
  loc_1673497: End If
  loc_167349D: If (var_A2 = 0) Then
  loc_16734AB:   var_104 = "Cash Card Detail"
  loc_16734C1:   MsgBox("Registration Failed.", &H10, var_104, var_124, var_144)
  loc_16734D1: End If
  loc_16734D9: Set var_A8 = Err()
  loc_16734DF: Call 0.Method_arg_1C (var_148)
  loc_16734F0: If (var_148 <> 0) Then
  loc_16734FB:   Set var_A8 = Err()
  loc_1673501:   Call 0.Method_arg_2C (var_B4)
  loc_167351A:   MsgBox(CVar(var_B4), &H10, var_104, var_124, var_144)
  loc_167352D: End If
  loc_167352D: Exit Sub
End Sub

Public Sub GridSel_UnknownEvent_A(Index As Integer) 'FDA884
  'Data Table: 4FC7FC
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDA6D2: If (Index = &HD) Then
  loc_FDA6E3:   Proc_303_0_FB9B68("	")
  loc_FDA6EB: End If
  loc_FDA70A: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDA70D:   Exit Sub
  loc_FDA70E: End If
  loc_FDA738: If ((CLng(Index) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDA74B:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDA765:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDA780:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA785:   var_D4 = 0
  loc_FDA7B7:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDA7BC:   var_19C = 0
  loc_FDA7F7:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDA7FF:   Set var_1D0 = Me.GridSel
  loc_FDA805:   LateIdCallSt
  loc_FDA83F:   var_86 = CInt((UBound(global_100, 1) + 1))
  loc_FDA851:   ReDim Preserve global_100(0 To CLng(var_86))
  loc_FDA879:   global_100(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDA880: End If
  loc_FDA880: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5C474
  'Data Table: 4FC7FC
  loc_E5C44F: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5C452:   Exit Sub
  loc_E5C453: End If
  loc_E5C46A: global_88 = CInt(CLng(Me.GridSel.Row))
  loc_E5C473: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '12138B0
  'Data Table: 4FC7FC
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_10C As Variant
  Dim var_124 As String
  Dim var_164 As Variant
  Dim var_184 As Long
  Dim var_1A4 As Variant
  Dim var_144 As Variant
  Dim var_86 As Integer
  loc_121340D: If ((CLng(Me.GridSel.Col) <> 0) Or (global_88 = 0)) Then
  loc_1213410:   Exit Sub
  loc_1213411: End If
  loc_121346D: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1213470:   Exit Sub
  loc_1213471: End If
  loc_1213488: global_90 = CInt(CLng(Me.GridSel.RowSel))
  loc_12134B6: For var_BA = 1 To CInt((CLng(Me.GridSel.Rows) - 1)): var_88 = var_BA 'Integer
  loc_12134CF:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_12134EA:   Me.GridSel.Col = 0
  loc_1213502:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_121351C:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1213528:   var_CC = CVar(CLng(var_88)) 'Long
  loc_121352D:   var_EC = 0
  loc_1213536:   var_10C = " "
  loc_1213540:   Set var_8C = Me.GridSel
  loc_1213546:   LateIdCallSt
  loc_1213554: Next var_BA 'Integer
  loc_1213568: For var_120 = global_88 To global_90: var_88 = var_120 'Integer
  loc_1213581:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_121359C:   Me.GridSel.Col = 0
  loc_12135B4:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_12135CE:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_12135E9:   var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12135EE:   var_EC = 7
  loc_1213625:   If (CStr(Me.GridSel.TextMatrix)) = vbNullString) Then
  loc_121362C:     var_CC = CVar(CLng(var_88)) 'Long
  loc_1213631:     var_EC = 0
  loc_1213654:     var_164 = CVar(CLng(var_88)) 'Long
  loc_1213659:     var_184 = 0
  loc_121368B:     var_154 = IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü")
  loc_1213694:     var_1A4 = CVar(CStr(var_154)) 'String
  loc_121369C:     Set var_A0 = Me.GridSel
  loc_12136A2:     LateIdCallSt
  loc_12136D6:     var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_12136DB:     var_EC = 0
  loc_1213712:     If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_1213728:       var_CC = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_121372D:       var_EC = 4
  loc_1213763:       Me.GridSel.Tag = CVar(CStr(Val(CStr(Me.GridSel.TextMatrix)))))
  loc_1213787:       var_9C = Me.GridSel.Row
  loc_1213790:       var_CC = CVar(CLng(var_9C)) 'Long
  loc_12137A2:       Set var_A0 = Me.GridSel
  loc_12137A8:       var_B0 = var_A0.TextMatrix)
  loc_12137BE:       var_144 = Me.GridSel.Tag
  loc_12137C6:       var_124 = CStr(var_144)
  loc_12137D6:       Call Proc_286_34_124E660(CStr(var_B0), CInt(Val(var_124)), var_B0, 3, var_CC, 3, var_CC, 3)
  loc_12137F4:     End If
  loc_12137F7:   Else
  loc_12137F7:     Call Proc_286_31_F2D0BC(var_CC, var_A0, var_1A4, var_184)
  loc_121380C:     Me.GridSel.Tag = vbNullString
  loc_121381A:     Call 0.Method_arg_50 (var_124, var_164, var_9C)
  loc_121383B:     MsgBox("Smart Card Already Issued.", &H40, CVar(var_124), var_144, var_154)
  loc_121384B:   End If
  loc_121385C:   var_86 = CInt((UBound(global_100, 1) + 1))
  loc_121386E:   ReDim Preserve global_100(0 To CLng(var_86))
  loc_1213896:   global_100(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_12138A0: Next var_120 'Integer
  loc_12138AA: global_88 = 0
  loc_12138AD: Exit Sub
End Sub

Public Sub CmdCardIss_UnknownEvent_9(Index As Integer) '1214D54
  'Data Table: 4FC7FC
  Dim var_8E As Integer
  Dim var_98 As Frame
  Dim var_94 As String
  Dim var_D8 As Variant
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  loc_121487F: var_8E = Index
  loc_121488A: If (var_8E = CInt(0)) Then
  loc_121488D:   Call TopCtrl1_UnknownEvent_11()
  loc_1214892:   Call Proc_286_32_139CEEC(var_8E)
  loc_12148BA:   Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("INI", Me))
  loc_12148CE:   Set var_98 = Me.FrCardIssue
  loc_12148D4:   Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_12148EA:   Set var_98 = Me.CmdCardIss
  loc_12148F0:   Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_12148F8:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214912:   Set var_98 = Me.CmdCardIss
  loc_1214918:   Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_1214920:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214938:   Me.FrFamilyMember.Visible = False
  loc_1214943: Else
  loc_121494B:   If (var_8E = CInt(1)) Then
  loc_1214962:     If (Proc_275_11_10CD018(var_88, var_8C) = &HFF) Then
  loc_1214970:       If (global_96 = "Yes") Then
  loc_121498F:         Me.Recordset15.CursorLocation = 3
  loc_12149B2:         var_94 = "Select S.Code as Code,S.Name,S.MobileNo As SearchKey From GuestProf S Where S.POS=1 And S.Code Not In (Select Distinct MemberCode from SmartCardRegistration Where CardType='Cash Card' And LogSite_Code='" & MemVar_1F92078
  loc_12149C7:         var_D8 = CVar(var_94 & "' or LogSite_Code='HO') And (S.LOGSITE_CODE='" & MemVar_1F92078 & "' or S.LOGSITE_CODE='HO') Order By S.Name") 'String
  loc_12149D1:         Me.Open var_D8, CVar(MemVar_1F92044), 3
  loc_12149EB:         CVarUnk
  loc_12149F0:         VerifyVarObj
  loc_12149F6:         Set var_98 = Me.DGMember
  loc_12149FC:         LateIdStAd
  loc_1214A2D:         Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("ADD", Me, global_52, Me, New), 1, -1)
  loc_1214A4B:         Set var_98 = Me.Txt
  loc_1214A51:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(0), var_C0, CStr(MemVar_1F920EC))
  loc_1214A59:         var_C0.Text = global_64
  loc_1214A76:         Set var_98 = Me.Txt
  loc_1214A7C:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1214A84:         var_C0.Text = "Cash Card"
  loc_1214A9E:         Set var_98 = Me.Txt
  loc_1214AA4:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(8), var_C0)
  loc_1214AAC:         var_C0.Text = "No"
  loc_1214AC1:         Set var_98 = Me.FrCardIssue
  loc_1214AC7:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_1214ADD:         Set var_98 = Me.CmdCardIss
  loc_1214AE3:         Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_1214AEB:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214B05:         Set var_98 = Me.CmdCardIss
  loc_1214B0B:         Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_1214B13:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214B2C:         Set var_98 = Me.Txt
  loc_1214B32:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1214B3A:         var_C0.Enabled = False
  loc_1214B51:         Set var_98 = Me.Txt
  loc_1214B57:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(9), var_C0)
  loc_1214B5F:         var_C0.SetFocus
  loc_1214B6E:       Else
  loc_1214B8A:         Me.CursorLocation = 3
  loc_1214BAD:         var_94 = "Select S.SubCode as Code,S.Name,S.CardNo As SearchKey From SubGroup S where S.ActiveYN=1 And S.BlackListed<>'Y' And S.CompanyType In (Select Code From MemCatMast Where (S.LOGSITE_CODE='" & MemVar_1F92078
  loc_1214BBE:         Me.Open CVar(var_94 & "' or S.LOGSITE_CODE='HO')) Order By S.Name"), CVar(MemVar_1F92044), 3
  loc_1214BD2:         CVarUnk
  loc_1214BD7:         VerifyVarObj
  loc_1214BDD:         Set var_98 = Me.DGMember
  loc_1214BE3:         LateIdStAd
  loc_1214C14:         Call Proc_286_29_EB2DEC(Proc_5_1_100CB50("ADD", Me, global_52, Me), New, 1)
  loc_1214C32:         Set var_98 = Me.Txt
  loc_1214C38:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(0), var_C0, CStr(MemVar_1F920EC))
  loc_1214C40:         var_C0.Text = -1
  loc_1214C5D:         Set var_98 = Me.Txt
  loc_1214C63:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1214C6B:         var_C0.Text = "Member"
  loc_1214C85:         Set var_98 = Me.Txt
  loc_1214C8B:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(8), var_C0)
  loc_1214C93:         var_C0.Text = "No"
  loc_1214CA8:         Set var_98 = Me.FrCardIssue
  loc_1214CAE:         Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_80010007(False)
  loc_1214CC4:         Set var_98 = Me.CmdCardIss
  loc_1214CCA:         Call 0.Method_CmdCardIss_UnknownEvent_90 (0, var_C0)
  loc_1214CD2:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214CEC:         Set var_98 = Me.CmdCardIss
  loc_1214CF2:         Call 0.Method_CmdCardIss_UnknownEvent_90 (1, var_C0)
  loc_1214CFA:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1214D13:         Set var_98 = Me.Txt
  loc_1214D19:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(1), var_C0)
  loc_1214D21:         var_C0.Enabled = False
  loc_1214D38:         Set var_98 = Me.Txt
  loc_1214D3E:         Call 0.Method_CmdCardIss_UnknownEvent_90 (CInt(9), var_C0)
  loc_1214D46:         var_C0.SetFocus
  loc_1214D52:       End If
  loc_1214D52:     End If
  loc_1214D52:   End If
  loc_1214D52: End If
  loc_1214D52: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1232548
  'Data Table: 4FC7FC
  Dim var_86 As Integer
  Dim var_AC As String
  Dim var_C4 As TextBox
  Dim var_D0 As Variant
  Dim Me As Recordset15
  Dim var_F0 As Variant
  Dim var_CC As Fields15
  Dim var_100 As Variant
  loc_123203C: Call Proc_286_33_EB830C()
  loc_1232041: On Error Goto loc_1232502
  loc_1232047: var_86 = Index
  loc_1232052: If (var_86 = CInt(1)) Then
  loc_1232062:   ReDim var_8C(0 To 1)
  loc_1232079:   var_8C(0) = "Member"
  loc_123207B:   var_AC = "Cash Card"
  loc_1232088:   var_8C(1) = var_AC
  loc_123209F:   global_68 = Array(var_8C)
  loc_12320AA:   Set var_D0 = Me.ListView
  loc_12320C5:   Set var_C4 = Me.Txt
  loc_12320DF:   Set global_84 = Proc_6_66_EFF8FC(var_D0, var_C4, Index, global_68)
  loc_12320FD:   Set var_C0 = Me.Txt
  loc_1232103:   Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_123210B:   2 = var_C4.Text
  loc_123211D:   Set var_CC = Me.Txt
  loc_1232123:   Call 0.Method_Txt_GotFocus0 (Index, var_D0, var_D8)
  loc_123212B:   var_D0.Tag = global_68
  loc_1232141: Else
  loc_1232149:   If (var_86 = CInt(2)) Then
  loc_123215A:     Set var_C0 = Me.Txt
  loc_1232160:     Call 0.Method_Txt_GotFocus0 (CInt(1), var_C4)
  loc_1232168:     var_D8 = var_C4.Text
  loc_123217F:     If (var_D8 = "Member") Then
  loc_1232199:       If (Me.RecordCount > 0) Then
  loc_12321A7:         Set var_C4 = Me.FGPoint
  loc_12321BF:         Proc_6_137_1193554(Me.DGMember, global_56, Index)
  loc_12321CD:       End If
  loc_123221B:       Set var_C0 = Me.Txt
  loc_1232221:       Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_1232229:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_1232241:       If (var_C4 Or (var_D8 = vbNullString)) Then
  loc_1232244:         Exit Sub
  loc_1232245:       End If
  loc_1232252:       Set var_C0 = Me.Txt
  loc_1232258:       Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_1232260:       var_D8 = var_C4.Text
  loc_1232268:       var_F0 = CVar(var_D8) 'String
  loc_12322AD:       If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_12322B6:         Me.MoveFirst
  loc_12322DB:         Set var_C0 = Me.Txt
  loc_12322E1:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8, "Name =")
  loc_12322E9:         0 = var_C4.Text
  loc_12322F7:         Proc_6_17_EAA2B0(var_F0, CVar(var_D8), 1)
  loc_123230D:         Me.Find CStr(var_AC & var_F0), var_86, 
  loc_1232325:       End If
  loc_1232328:     Else
  loc_1232336:       Set var_C0 = Me.Txt
  loc_123233C:       Call 0.Method_Txt_GotFocus0 (CInt(1), var_C4)
  loc_1232344:       var_D8 = var_C4.Text
  loc_123235B:       If (var_D8 = "Cash Card") Then
  loc_1232375:         If (Me.RecordCount > 0) Then
  loc_1232383:           Set var_C4 = Me.FGPoint
  loc_123239B:           Proc_6_137_1193554(Me.DGMember, global_56)
  loc_12323A9:         End If
  loc_12323F7:         Set var_C0 = Me.Txt
  loc_12323FD:         Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8)
  loc_1232405:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_C4.Text
  loc_123241D:         If (Index Or (var_D8 = vbNullString)) Then
  loc_1232420:           Exit Sub
  loc_1232421:         End If
  loc_123242E:         Set var_C0 = Me.Txt
  loc_1232434:         Call 0.Method_Txt_GotFocus0 (Index, var_C4)
  loc_123243C:         var_D8 = var_C4.Text
  loc_1232444:         var_F0 = CVar(var_D8) 'String
  loc_1232489:         If CBool(var_F0 <> Me.Fields.Item("Name").Value) Then
  loc_1232492:           Me.MoveFirst
  loc_12324B7:           Set var_C0 = Me.Txt
  loc_12324BD:           Call 0.Method_Txt_GotFocus0 (Index, var_C4, var_D8, "Name =")
  loc_12324C5:           0 = var_C4.Text
  loc_12324D3:           Proc_6_17_EAA2B0(var_F0, CVar(var_D8), 1)
  loc_12324DB:           var_100 = var_AC & var_F0 
  loc_12324E9:           Me.Find CStr(var_100), var_C4, 
  loc_1232501:         End If
  loc_1232501:       End If
  loc_1232501:     End If
  loc_1232501:   End If
  loc_1232501: End If
  loc_1232501: Exit Sub
  loc_1232502: ' Referenced from: 1232041
  loc_123250A: Set var_C0 = Err()
  loc_1232510: Call 0.Method_arg_2C (var_D8)
  loc_1232531: MsgBox(CVar(var_D8), &H40, "Information", var_100, var_124)
  loc_1232544: Exit Sub
  loc_1232545: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '110A0C4
  'Data Table: 4FC7FC
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_B4 As TextBox
  Dim Me As Recordset15
  Dim var_8C As Frame
  loc_1109DAF: var_86 = Shift
  loc_1109DBC: If (CLng(Shift) = &H1B) Then
  loc_1109DBF:   Call Proc_286_33_EB830C(var_86)
  loc_1109DC4:   Exit Sub
  loc_1109DC5: End If
  loc_1109DC8: var_88 = KeyCode
  loc_1109DD3: If (var_88 = CInt(1)) Then
  loc_1109DF8:   Set var_8C = Me.Txt
  loc_1109DFE:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90)
  loc_1109E06:   var_94 = var_90.Left
  loc_1109E18:   Set var_98 = Me.Txt
  loc_1109E1E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_1109E26:   var_A0 = var_9C.Top
  loc_1109E38:   Set var_A4 = Me.Txt
  loc_1109E3E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_1109E46:   var_AC = var_A8.Height
  loc_1109E58:   Set var_B0 = Me.Txt
  loc_1109E5E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_B4)
  loc_1109E66:   var_B8 = var_B4.Width
  loc_1109EAE:   Proc_6_65_119423C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_1109ED5: Else
  loc_1109EDD:   If (var_88 = CInt(2)) Then
  loc_1109EEE:     Set var_8C = Me.Txt
  loc_1109EF4:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_90, var_DC, CInt(var_94))
  loc_1109EFC:     CInt((var_A0 + var_AC)) = var_90.Text
  loc_1109F17:     Set var_98 = Me.Txt
  loc_1109F1D:     Call 0.Method_Txt_KeyDown0 (CInt(1), var_9C, var_E0, (var_DC = "Member"))
  loc_1109F25:     CInt(var_B8) = var_9C.Text
  loc_1109F45:     If (520 Or (var_E0 = "Cash Card")) Then
  loc_1109F65:       Set var_9C = Me.FGPoint
  loc_1109F70:       Set var_98 = Nothing
  loc_1109F9E:       Proc_6_69_134A198(Me.DGMember, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_110A00D:       If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_110A014:         Set var_98 = Me.DGMember
  loc_110A033:         Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_110A041:       End If
  loc_110A041:     End If
  loc_110A041:   End If
  loc_110A041: End If
  loc_110A07A: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_110A092:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_110A09B:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_110A0A0:   End If
  loc_110A0B3:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(9))) Then
  loc_110A0BC:     Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_110A0C1:   End If
  loc_110A0C1: End If
  loc_110A0C1: Exit Sub
  loc_110A0C2: DOC
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '100BAE0
  'Data Table: 4FC7FC
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As String
  Dim var_D4 As TextBox
  Dim var_DC As TextBox
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_100B8E2: Proc_6_133_E7EF78(var_94)
  loc_100B8EB: arg_10 = CInt(var_94)
  loc_100B8F4: Proc_6_58_E054C0(arg_10, arg_10)
  loc_100B8FC: var_96 = KeyAscii
  loc_100B907: If (var_96 = CInt(8)) Then
  loc_100B90E:   Set var_9C = Me.TopCtrl1
  loc_100B914:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_6803000C(var_96)
  loc_100B92D:   If (CStr(arg_10) = "Edit") Then
  loc_100B959:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_100B969:       Set var_9C = Me.Txt
  loc_100B96F:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D4)
  loc_100B977:       var_D4.Text = "Yes"
  loc_100B986:     Else
  loc_100B9AF:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_100B9BF:         Set var_9C = Me.Txt
  loc_100B9C5:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_D4)
  loc_100B9CD:         var_D4.Text = "No"
  loc_100B9D9:       End If
  loc_100B9D9:     End If
  loc_100B9D9:   End If
  loc_100B9DB:   arg_10 = 0
  loc_100B9E1: Else
  loc_100B9E9:   If (var_96 = CInt(2)) Then
  loc_100B9FA:     Set var_9C = Me.Txt
  loc_100BA00:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_D4)
  loc_100BA23:     Set var_D8 = Me.Txt
  loc_100BA29:     Call 0.Method_Txt_KeyPress0 (CInt(1), var_DC, var_E0)
  loc_100BA31:     (var_D4.Text = "Member") = var_DC.Text
  loc_100BA51:     If (arg_10 Or (var_E0 = "Cash Card")) Then
  loc_100BA70:       If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_100BA82:         var_A0 = "Name"
  loc_100BA9D:         Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56)
  loc_100BACF:         Proc_6_138_106D6F8(Me.DGMember, global_56, KeyAscii, Me.FGPoint)
  loc_100BADD:       End If
  loc_100BADD:     End If
  loc_100BADD:   End If
  loc_100BADD: End If
  loc_100BADD: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E88A84
  'Data Table: 4FC7FC
  loc_E88A26: If (KeyCode = CInt(1)) Then
  loc_E88A44:   If (Me.FrmList.Visible = &HFF) Then
  loc_E88A73:     Proc_6_64_F28E58(Me.ListView, Me.Txt, KeyCode)
  loc_E88A83:   End If
  loc_E88A83: End If
  loc_E88A83: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13FD018
  'Data Table: 4FC7FC
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As TextBox
  Dim var_90 As Variant
  Dim var_98 As TextBox
  Dim Me As Recordset15
  Dim var_EC As Variant
  Dim var_A4 As String
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_94 As Frame
  loc_13FC5E4: On Error Goto loc_13FCFD2
  loc_13FC5EA: var_86 = Cancel
  loc_13FC5F5: If (var_86 = CInt(7)) Then
  loc_13FC602:   Set var_8C = Me.Txt
  loc_13FC608:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC628:   Set var_98 = Me.Txt
  loc_13FC62E:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_13FC636:   var_9C.Text = Proc_6_33_1512840(var_90)
  loc_13FC64C: Else
  loc_13FC654:   If (var_86 = CInt(1)) Then
  loc_13FC657:     GoTo loc_13FCFD1
  loc_13FC65A:   End If
  loc_13FC662:   If (var_86 = CInt(9)) Then
  loc_13FC673:     Set var_8C = Me.Txt
  loc_13FC679:     Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FC69C:     Set var_94 = Me.Txt
  loc_13FC6A2:     Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A4)
  loc_13FC6AA:     (var_90.Text = "Member") = var_98.Text
  loc_13FC6CA:     If (var_86 Or (var_A4 = "Cash Card")) Then
  loc_13FC6E4:       If (Me.RecordCount > 0) Then
  loc_13FC6ED:         Me.MoveFirst
  loc_13FC6F2:       End If
  loc_13FC733:       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_13FC743:         Set var_8C = Me.Txt
  loc_13FC749:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC768:         If (var_90.Text = vbNullString) Then
  loc_13FC778:           Set var_8C = Me.Txt
  loc_13FC77E:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC786:           var_90.Text = vbNullString
  loc_13FC79F:           Set var_8C = Me.Txt
  loc_13FC7A5:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC7AD:           var_90.Tag = vbNullString
  loc_13FC7B9:         End If
  loc_13FC7BC:       Else
  loc_13FC7C9:         Set var_8C = Me.Txt
  loc_13FC7CF:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC7EE:         If (var_90.Text = vbNullString) Then
  loc_13FC7FE:           Set var_8C = Me.Txt
  loc_13FC804:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC80C:           var_A0 = var_90.Text
  loc_13FC823:           If (var_A0 = vbNullString) Then
  loc_13FC833:             Set var_8C = Me.Txt
  loc_13FC839:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC841:             var_90.Text = vbNullString
  loc_13FC85A:             Set var_8C = Me.Txt
  loc_13FC860:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FC868:             var_90.Tag = vbNullString
  loc_13FC874:           End If
  loc_13FC877:         Else
  loc_13FC897:           Set var_8C = Me.Txt
  loc_13FC89D:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "SearchKey =")
  loc_13FC8A5:           0 = var_90.Text
  loc_13FC8B3:           Proc_6_17_EAA2B0(var_CC, CVar(var_A0))
  loc_13FC8BB:           var_EC = 1 & var_CC 
  loc_13FC8BF:           var_A4 = CStr(var_EC)
  loc_13FC8C9:           Me.Find var_A4, var_FC, 
  loc_13FC90A:           If ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) Then
  loc_13FC90F:             arg_10 = &HFF
  loc_13FC912:             Exit Sub
  loc_13FC916:           Else
  loc_13FC952:             Set var_94 = Me.Txt
  loc_13FC958:             Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13FC960:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FC993:             var_90 = Me.Fields.Item("Code")
  loc_13FC9B2:             Set var_94 = Me.Txt
  loc_13FC9B8:             Call 0.Method_Txt_Validate0 (CInt(2), var_98)
  loc_13FC9C0:             var_98.Tag = CStr(var_90.Value)
  loc_13FC9E1:             Set var_8C = Me.Txt
  loc_13FC9E7:             Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13FC9EF:             var_90.SetFocus
  loc_13FC9FB:           End If
  loc_13FC9FB:         End If
  loc_13FC9FB:       End If
  loc_13FC9FB:     End If
  loc_13FC9FE:   Else
  loc_13FCA06:     If (var_86 = CInt(2)) Then
  loc_13FCA17:       Set var_8C = Me.Txt
  loc_13FCA1D:       Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FCA40:       Set var_94 = Me.Txt
  loc_13FCA46:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A4)
  loc_13FCA4E:       (var_90.Text = "Member") = var_98.Text
  loc_13FCA6E:       If (arg_10 Or (var_A4 = "Cash Card")) Then
  loc_13FCAB2:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_13FCAC2:           Set var_8C = Me.Txt
  loc_13FCAC8:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCAE7:           If (var_90.Text = vbNullString) Then
  loc_13FCAF7:             Set var_8C = Me.Txt
  loc_13FCAFD:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCB05:             var_90.Text = vbNullString
  loc_13FCB1E:             Set var_8C = Me.Txt
  loc_13FCB24:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCB2C:             var_90.Tag = vbNullString
  loc_13FCB53:             If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_13FCB62:               Me.FrFamilyMember.Visible = False
  loc_13FCB6A:             End If
  loc_13FCB6A:           End If
  loc_13FCB6D:         Else
  loc_13FCB7A:           Set var_8C = Me.Txt
  loc_13FCB80:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCB9F:           If (var_90.Text = vbNullString) Then
  loc_13FCBAF:             Set var_8C = Me.Txt
  loc_13FCBB5:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCBD4:             If (var_90.Text = vbNullString) Then
  loc_13FCBE4:               Set var_8C = Me.Txt
  loc_13FCBEA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCBF2:               var_90.Text = vbNullString
  loc_13FCC0B:               Set var_8C = Me.Txt
  loc_13FCC11:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13FCC19:               var_90.Tag = vbNullString
  loc_13FCC40:               If (Me.FrFamilyMember.Visible = &HFF) Then
  loc_13FCC4F:                 Me.FrFamilyMember.Visible = False
  loc_13FCC57:               End If
  loc_13FCC57:             End If
  loc_13FCC5A:           Else
  loc_13FCC95:             Set var_94 = Me.Txt
  loc_13FCC9B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13FCCA3:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13FCCF4:             Set var_94 = Me.Txt
  loc_13FCCFA:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13FCD02:             var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_13FCD35:             var_90 = Me.Fields.Item("SearchKey")
  loc_13FCD54:             Set var_94 = Me.Txt
  loc_13FCD5A:             Call 0.Method_Txt_Validate0 (CInt(9), var_98)
  loc_13FCD62:             var_98.Text = CStr(var_90.Value)
  loc_13FCD85:             Set var_8C = Me.Txt
  loc_13FCD8B:             Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_13FCD93:             var_90.Enabled = False
  loc_13FCDAC:             Set var_8C = Me.Txt
  loc_13FCDB2:             Call 0.Method_Txt_Validate0 (CInt(9), var_90)
  loc_13FCDBA:             var_90.Enabled = False
  loc_13FCDD3:             Set var_8C = Me.Txt
  loc_13FCDD9:             Call 0.Method_Txt_Validate0 (CInt(2), var_90)
  loc_13FCDE1:             var_90.Enabled = False
  loc_13FCDFA:             Set var_8C = Me.Txt
  loc_13FCE00:             Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_13FCE08:             var_90.Enabled = False
  loc_13FCE21:             Set var_8C = Me.Txt
  loc_13FCE27:             Call 0.Method_Txt_Validate0 (CInt(5), var_90)
  loc_13FCE2F:             var_90.Enabled = False
  loc_13FCE48:             Set var_8C = Me.Txt
  loc_13FCE4E:             Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_13FCE56:             var_90.Enabled = False
  loc_13FCE70:             Set var_8C = Me.Txt
  loc_13FCE76:             Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FCE95:             If (var_90.Text = "Member") Then
  loc_13FCE98:               Call Proc_286_37_1066390()
  loc_13FCEDC:               Me.FrFamilyMember.Caption = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name"))) & " && Family Members Info.:"
  loc_13FCF0F:               var_90 = Me.Fields.Item("Code")
  loc_13FCF2D:               Me.FrFamilyMember.Tag = CStr(var_90.Value)
  loc_13FCF4D:               Me.FrFamilyMember.Visible = True
  loc_13FCF58:             Else
  loc_13FCF66:               Set var_8C = Me.Txt
  loc_13FCF6C:               Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_13FCF8B:               If (var_90.Text = "Cash Card") Then
  loc_13FCFBC:                 var_A0 = CStr(Me.Fields.Item("Code").Value)
  loc_13FCFBF:                 Call Proc_286_35_124A2E0(var_A0)
  loc_13FCFD1:               End If
  loc_13FCFD1:             End If
  loc_13FCFD1:           End If
  loc_13FCFD1:         End If
  loc_13FCFD1:         ' Referenced from:   13FC657
  loc_13FCFD1:       End If
  loc_13FCFD1:     End If
  loc_13FCFD1:   End If
  loc_13FCFD1: End If
  loc_13FCFD1: Exit Sub
  loc_13FCFD2: ' Referenced from: 13FC5E4
  loc_13FCFDA: Set var_8C = Err()
  loc_13FCFE0: Call 0.Method_arg_2C (var_A0)
  loc_13FD001: MsgBox(CVar(var_A0), &H40, "Information", var_EC, var_11C)
  loc_13FD014: Exit Sub
  loc_13FD015: Exit Sub
End Sub

Public Property Let SmartCardApplicable(vNewValue) 'E1144C
  'Data Table: 4FC7FC
  loc_E11444: global_92 = vNewValue
  loc_E11448: Exit Sub
End Sub

Public Property Get SmartCardApplicable() 'E11C2C
  'Data Table: 4FC7FC
  loc_E11C20: var_88 = global_92
  loc_E11C23: SmartCardApplicable = 
  loc_E11C29: If  Then Exit Sub
  loc_E11C29: End If
End Sub

Public Sub SEARCHBACK(MyValue) 'EC2F24
  'Data Table: 4FC7FC
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EC2E9A: On Error Goto loc_EC2EDF
  loc_EC2EA3: Me.MoveFirst
  loc_EC2EBD: var_8C = "code='" & MyValue
  loc_EC2ECD: Me.Find var_8C & "'", 0, 1
  loc_EC2ED9: Call Proc_286_32_139CEEC(var_A0)
  loc_EC2EDE: Exit Sub
  loc_EC2EDF: ' Referenced from: EC2E9A
  loc_EC2EE7: Set var_A4 = Err()
  loc_EC2EED: Call 0.Method_arg_2C (var_8C)
  loc_EC2F0E: MsgBox(CVar(var_8C), &H40, "Information", var_E4, var_104)
  loc_EC2F21: Exit Sub
  loc_EC2F22: Exit Sub
End Sub

Public Sub Proc_286_28_13B4C54(arg_C) '13B4C54
  'Data Table: 4FC7FC
  Dim var_8C As Recordset15
  loc_13B42E5: Set var_8C = arg_C 
  loc_13B430D: var_8C.Fields.Append "mLine", &HC8, 2
  loc_13B4339: var_8C.Fields.Append "Relation", &HC8, &H14
  loc_13B4365: var_8C.Fields.Append "ConPrefix", &HC8, &HA
  loc_13B4391: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_13B43BD: var_8C.Fields.Append "Sex", &HC8, 6
  loc_13B43E9: var_8C.Fields.Append "MaritalStatus", &HC8, 7
  loc_13B4415: var_8C.Fields.Append "Birthday", 7, 0
  loc_13B4441: var_8C.Fields.Append "PlaceOfBirth", &HC8, &H32
  loc_13B446D: var_8C.Fields.Append "Anniversary", 7, 0
  loc_13B4499: var_8C.Fields.Append "Phone", &HC8, &H23
  loc_13B44C5: var_8C.Fields.Append "Mobile", &HC8, &H19
  loc_13B44F1: var_8C.Fields.Append "Religion", &HC8, &H1E
  loc_13B451D: var_8C.Fields.Append "BloodGroup", &HC8, 3
  loc_13B4549: var_8C.Fields.Append "Desig", &HC8, &H32
  loc_13B4575: var_8C.Fields.Append "Passport", &HC8, &H32
  loc_13B45A1: var_8C.Fields.Append "PAN", &HC8, &H14
  loc_13B45CD: var_8C.Fields.Append "MemberId", &HC8, &H19
  loc_13B45F9: var_8C.Fields.Append "CardRegId", &HC8, &HB
  loc_13B4625: var_8C.Fields.Append "CardIssDate", 7, 0
  loc_13B4651: var_8C.Fields.Append "CardValidUpto", 7, 0
  loc_13B467D: var_8C.Fields.Append "MemberType", &HC8, &H4B
  loc_13B46A9: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_13B46D5: var_8C.Fields.Append "AddRType", &HC8, &H1E
  loc_13B4701: var_8C.Fields.Append "AddR1", &HC8, &H32
  loc_13B472D: var_8C.Fields.Append "AddR2", &HC8, &H32
  loc_13B4759: var_8C.Fields.Append "AddR3", &HC8, &H32
  loc_13B4785: var_8C.Fields.Append "CityR", &HC8, &H23
  loc_13B47B1: var_8C.Fields.Append "StateR", &HC8, &H23
  loc_13B47DD: var_8C.Fields.Append "CountryR", &HC8, &H23
  loc_13B4809: var_8C.Fields.Append "PinCodeR", &HC8, &HC
  loc_13B4835: var_8C.Fields.Append "CardAbbr", &HC8, &H14
  loc_13B4861: var_8C.Fields.Append "Guardian", &HC8, &H14
  loc_13B488D: var_8C.Fields.Append "ConPrefixYN", &HC8, 1
  loc_13B48B9: var_8C.Fields.Append "CardNoYN", &HC8, 1
  loc_13B48E5: var_8C.Fields.Append "CardValidYN", &HC8, 1
  loc_13B4911: var_8C.Fields.Append "GenderYN", &HC8, 1
  loc_13B493D: var_8C.Fields.Append "BloodGroupYN", &HC8, 1
  loc_13B4969: var_8C.Fields.Append "DobYN", &HC8, 1
  loc_13B4995: var_8C.Fields.Append "MobileYN", &HC8, 1
  loc_13B49C1: var_8C.Fields.Append "AddrYN", &HC8, 1
  loc_13B49ED: var_8C.Fields.Append "EmailYN", &HC8, 1
  loc_13B4A19: var_8C.Fields.Append "DesigYN", &HC8, 1
  loc_13B4A45: var_8C.Fields.Append "PictureYN", &HC8, 1
  loc_13B4A71: var_8C.Fields.Append "SignatureYN", &HC8, 1
  loc_13B4A9D: var_8C.Fields.Append "MemberName", &HC8, &H4B
  loc_13B4AC9: var_8C.Fields.Append "FatherName", &HC8, &H4B
  loc_13B4AF5: var_8C.Fields.Append "Picture", &HCD, &H3E8
  loc_13B4B21: var_8C.Fields.Append "Signature", &HCD, &H3E8
  loc_13B4B4D: var_8C.Fields.Append "CardFrontImage", &HCD, &H3E8
  loc_13B4B79: var_8C.Fields.Append "CardBackImage", &HCD, &H3E8
  loc_13B4BA5: var_8C.Fields.Append "FrontFontColor", &HC8, &HF
  loc_13B4BD1: var_8C.Fields.Append "BackFontColor", &HC8, &HF
  loc_13B4BFD: var_8C.Fields.Append "Mark", &HC8, 1
  loc_13B4C0D: var_8C.CursorType = 3
  loc_13B4C1A: var_8C.LockType = 3
  loc_13B4C39: var_8C.Open var_A0, var_B0, -1
  loc_13B4C40: Set var_8C = Nothing 
  loc_13B4C47: Set var_88 = arg_C 
  loc_13B4C4B: Proc_286_28_13B4C54 = -1
End Sub

Public Sub Proc_286_29_EB2DEC(arg_C) 'EB2DEC
  'Data Table: 4FC7FC
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_EB2D5E: Set var_8C = Me.Txt
  loc_EB2D64: Call 0.Method_Proc_286_29_EB2DECC (var_8E, var_86)
  loc_EB2D74: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EB2D8A:   Set var_8C = Me.Txt
  loc_EB2D90:   Call 0.Method_Proc_286_29_EB2DEC0 (CInt(var_86), var_98)
  loc_EB2D98:   var_98.Enabled = arg_C
  loc_EB2DA7: Next var_92 'Byte
  loc_EB2DBA: Set var_8C = Me.Txt
  loc_EB2DC0: Call 0.Method_Proc_286_29_EB2DEC0 (CInt(0), var_98)
  loc_EB2DC8: var_98.Enabled = False
  loc_EB2DE2: Me.CmdPrintCard.Enabled = Not(arg_C)
  loc_EB2DEA: Exit Sub
End Sub

Public Sub Proc_286_30_F08C58
  'Data Table: 4FC7FC
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_F08B82: Set var_8C = Me.Txt
  loc_F08B88: Call 0.Method_Proc_286_30_F08C58C (var_8E, var_86)
  loc_F08B98: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F08BAE:   Set var_8C = Me.Txt
  loc_F08BB4:   Call 0.Method_Proc_286_30_F08C580 (CInt(var_86), var_98)
  loc_F08BBC:   var_98.Text = vbNullString
  loc_F08BD8:   Set var_8C = Me.Txt
  loc_F08BDE:   Call 0.Method_Proc_286_30_F08C580 (CInt(var_86), var_98)
  loc_F08BE6:   var_98.Tag = vbNullString
  loc_F08BF5: Next var_92 'Byte
  loc_F08C01: global_64 = vbNullString
  loc_F08C12: Me.FrFamilyMember.Tag = vbNullString
  loc_F08C2C: Me.GridSel.Tag = CVar(CStr(0))
  loc_F08C3A: var_C0 = vbNullString
  loc_F08C49: Call Proc_286_36_11FA380(vbNullString)
  loc_F08C55: Exit Sub
End Sub

Public Sub Proc_286_31_F2D0BC
  'Data Table: 4FC7FC
  Dim var_8C As TextBox
  loc_F2CFBA: Set var_88 = Me.Txt
  loc_F2CFC0: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(3), var_8C)
  loc_F2CFC8: var_8C.Text = vbNullString
  loc_F2CFE2: Set var_88 = Me.Txt
  loc_F2CFE8: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(3), var_8C)
  loc_F2CFF0: var_8C.Tag = vbNullString
  loc_F2D00A: Set var_88 = Me.Txt
  loc_F2D010: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(4), var_8C)
  loc_F2D018: var_8C.Text = vbNullString
  loc_F2D032: Set var_88 = Me.Txt
  loc_F2D038: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(5), var_8C)
  loc_F2D040: var_8C.Text = vbNullString
  loc_F2D05A: Set var_88 = Me.Txt
  loc_F2D060: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(6), var_8C)
  loc_F2D068: var_8C.Text = vbNullString
  loc_F2D082: Set var_88 = Me.Txt
  loc_F2D088: Call 0.Method_Proc_286_31_F2D0BC0 (CInt(7), var_8C)
  loc_F2D090: var_8C.Text = vbNullString
  loc_F2D09F: var_94 = vbNullString
  loc_F2D0AE: Call Proc_286_36_11FA380(vbNullString)
  loc_F2D0BA: Exit Sub
End Sub

Public Sub Proc_286_32_139CEEC
  'Data Table: 4FC7FC
  Dim Me As Recordset15
  Dim var_8C As Fields15
  Dim var_B4 As String
  Dim var_EC As TextBox
  Dim var_A0 As Variant
  Dim var_F0 As String
  Dim var_E8 As Fields15
  Dim var_1CC As Variant
  loc_139C618: On Error Goto loc_139CEA7
  loc_139C621: Proc_183_45_E5C118(global_52)
  loc_139C63D: If (Me.RecordCount <= 0) Then
  loc_139C640:   Call Proc_286_30_F08C58()
  loc_139C648: Else
  loc_139C679:   global_64 = Proc_6_38_E68A98(CVar(Me.Fields.Item("SerialNo")))
  loc_139C6DB:   Set var_E8 = Me.Txt
  loc_139C6E1:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(0), var_EC, CStr(Format(CVar(Me.Fields.Item("IssDate")), "dd/MMM/yyyy")))
  loc_139C6E9:   var_EC.Text = 1
  loc_139C73F:   Set var_E8 = Me.Txt
  loc_139C745:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(1), var_EC)
  loc_139C74D:   var_EC.Text = CStr(Me.Fields.Item("CardType").Value)
  loc_139C79C:   Set var_E8 = Me.Txt
  loc_139C7A2:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(2), var_EC)
  loc_139C7AA:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberName")))
  loc_139C7F7:   Set var_E8 = Me.Txt
  loc_139C7FD:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(2), var_EC)
  loc_139C805:   var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("MemberCode")))
  loc_139C852:   Set var_E8 = Me.Txt
  loc_139C858:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(3), var_EC)
  loc_139C860:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Name")))
  loc_139C8AD:   Set var_E8 = Me.Txt
  loc_139C8B3:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(3), var_EC)
  loc_139C8BB:   var_EC.Tag = Proc_6_38_E68A98(CVar(Me.Fields.Item("Code")))
  loc_139C8EC:   var_A0 = Me.Fields.Item("CardNo")
  loc_139C90B:   Set var_E8 = Me.Txt
  loc_139C911:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(4), var_EC)
  loc_139C919:   var_EC.Text = CStr(var_A0.Value)
  loc_139C93D:   Set var_8C = Me.Txt
  loc_139C943:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(9), var_A0)
  loc_139C975:   Set var_8C = Me.Txt
  loc_139C97B:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(1), var_A0, var_F0)
  loc_139C983:   (SmartCardApplicable = "Yes") = vbNullString
  loc_139C99F:   If (1 And (var_F0 = "Member")) Then
  loc_139C9DE:     Set var_E8 = Me.Txt
  loc_139C9E4:     Call 0.Method_Proc_286_32_139CEEC0 (CInt(9), var_EC)
  loc_139C9EC:     var_EC.Text = CStr(Me.Fields.Item("CardNo").Value)
  loc_139CA02:   End If
  loc_139CA3B:   Set var_E8 = Me.Txt
  loc_139CA41:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(5), var_EC)
  loc_139CA49:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Addr")))
  loc_139CA96:   Set var_E8 = Me.Txt
  loc_139CA9C:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(6), var_EC)
  loc_139CAA4:   var_EC.Text = Proc_6_38_E68A98(CVar(Me.Fields.Item("Phone")))
  loc_139CB0D:   Set var_E8 = Me.Txt
  loc_139CB13:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(7), var_EC, CStr(Format(CVar(Me.Fields.Item("ValidUpto")), "dd/MMM/yyyy")))
  loc_139CB1B:   var_EC.Text = 1
  loc_139CBA2:   Set var_E8 = Me.Txt
  loc_139CBA8:   Call 0.Method_Proc_286_32_139CEEC0 (CInt(8), var_EC)
  loc_139CBB0:   var_EC.Text = CStr(IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("BlockedYN"))) = "Y"), "Yes", "No"))
  loc_139CC38:   Call Proc_286_36_11FA380(Proc_6_38_E68A98(CVar(Me.Fields.Item("PicPath"))), Proc_6_38_E68A98(CVar(Me.Fields.Item("SigPath"))))
  loc_139CCFD:   var_184 = IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), "Modified By :   ", "User :   "))
  loc_139CD45:   Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_Name")), var_184)))
  loc_139CDDE:   var_120 = "entdt :   "
  loc_139CDE9:   var_E4 = "Last Update :   "
  loc_139CE17:   var_B4 = Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE")))
  loc_139CE5C:   var_1CC = IIf((var_B4 = "A"), "Created By :   ", IIf((Proc_6_38_E68A98(CVar(Me.Fields.Item("U_AE"))) = "E"), var_E4, var_120)) & CVar(Proc_6_38_E68A98(CVar(Me.Fields.Item("U_EntDt")))) 
  loc_139CE6E:   Me.LblLDt.Caption = CStr(var_1CC)
  loc_139CEA6: End If
  loc_139CEA6: Exit Sub
  loc_139CEA7: ' Referenced from: 139C618
  loc_139CEAF: Set var_8C = Err()
  loc_139CEB5: Call 0.Method_arg_2C (var_B4)
  loc_139CED6: MsgBox(CVar(var_B4), &H40, "Information", var_E4, var_120)
  loc_139CEE9: Exit Sub
End Sub

Public Sub Proc_286_33_EB830C
  'Data Table: 4FC7FC
  loc_EB8287: If (Me.FrmList.Visible = &HFF) Then
  loc_EB8296:   Me.FrmList.Visible = False
  loc_EB829E: End If
  loc_EB82BA: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_EB82CC:   Me.DGMember.Visible = False
  loc_EB82D4: End If
  loc_EB82F0: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EB8302:   Me.FGPoint.Visible = False
  loc_EB830A: End If
  loc_EB830A: Exit Sub
End Sub

Public Sub Proc_286_34_124E660(arg_C, arg_10) '124E660
  'Data Table: 4FC7FC
  Dim var_9C As String
  Dim unk_4FC807 As Connection15
  Dim var_8C As Recordset15
  Dim var_144 As Fields15
  Dim var_154 As Variant
  Dim var_14C As Variant
  Dim var_150 As Fields15
  loc_124E12B: var_88 = arg_C
  loc_124E142: var_9C = "Select MF.SubCode As MemberCode,MF.ConPrefix + ' ' + MF.Name As Name,S.CardNo, S.Add1 + ' ' + S.Add2 As Address,MF.CardValidUpto, Case When IsNull(MF.Mobile,'')='' Then MF.Phone Else MF.Mobile End PhoneNo,MF.PicPath,MF.SigPath From MemberFamily MF Inner Join SubGroup S On MF.Subcode=S.Subcode Where MF.LogSite_Code='" & MemVar_1F92078
  loc_124E180: unk_4FC807.Execute CStr(CVar(var_9C & "' And MF.SubCode='") & Trim(var_88) & "' And MF.SNo=" & CVar(arg_10)), var_140, -1
  loc_124E18B: Set var_8C = var_144
  loc_124E1BB: If (var_8C.RecordCount > 0) Then
  loc_124E1D5:   var_14C = var_8C.Fields.Item("Name")
  loc_124E1F4:   Set var_150 = Me.Txt
  loc_124E1FA:   Call 0.Method_Proc_286_34_124E6600 (CInt(3), var_154)
  loc_124E202:   var_154.Text = Proc_6_38_E68A98(CVar(var_14C))
  loc_124E224:   Set var_144 = Me.Txt
  loc_124E22A:   Call 0.Method_Proc_286_34_124E6600 (CInt(3), var_14C)
  loc_124E232:   var_14C.Tag = var_88
  loc_124E274:   Set var_150 = Me.Txt
  loc_124E27A:   Call 0.Method_Proc_286_34_124E6600 (CInt(4), var_154)
  loc_124E282:   var_154.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")))
  loc_124E2CC:   Set var_150 = Me.Txt
  loc_124E2D2:   Call 0.Method_Proc_286_34_124E6600 (CInt(5), var_154)
  loc_124E2DA:   var_154.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Address")))
  loc_124E324:   Set var_150 = Me.Txt
  loc_124E32A:   Call 0.Method_Proc_286_34_124E6600 (CInt(6), var_154)
  loc_124E332:   var_154.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("PhoneNo")))
  loc_124E35D:   var_14C = var_8C.Fields.Item("CardValidUpto")
  loc_124E398:   Set var_150 = Me.Txt
  loc_124E39E:   Call 0.Method_Proc_286_34_124E6600 (CInt(7), var_154, CStr(Format(CVar(var_14C), "dd/MMM/yyyy")))
  loc_124E3A6:   var_154.Text = 1
  loc_124E3CD:   Set var_144 = Me.Txt
  loc_124E3D3:   Call 0.Method_Proc_286_34_124E6600 (CInt(1), var_14C, 0)
  loc_124E3DB:   var_14C.Enabled = True
  loc_124E3F4:   Set var_144 = Me.Txt
  loc_124E3FA:   Call 0.Method_Proc_286_34_124E6600 (CInt(4), var_14C)
  loc_124E402:   var_14C.Enabled = False
  loc_124E41B:   Set var_144 = Me.Txt
  loc_124E421:   Call 0.Method_Proc_286_34_124E6600 (CInt(3), var_14C)
  loc_124E429:   var_14C.Enabled = False
  loc_124E442:   Set var_144 = Me.Txt
  loc_124E448:   Call 0.Method_Proc_286_34_124E6600 (CInt(5), var_14C)
  loc_124E450:   var_14C.Enabled = False
  loc_124E469:   Set var_144 = Me.Txt
  loc_124E46F:   Call 0.Method_Proc_286_34_124E6600 (CInt(6), var_14C)
  loc_124E477:   var_14C.Enabled = False
  loc_124E491:   Set var_144 = Me.Txt
  loc_124E497:   Call 0.Method_Proc_286_34_124E6600 (CInt(7), var_14C)
  loc_124E4B6:   If (var_14C.Text <> vbNullString) Then
  loc_124E4C6:     Set var_144 = Me.Txt
  loc_124E4CC:     Call 0.Method_Proc_286_34_124E6600 (CInt(7), var_14C)
  loc_124E4D4:     var_14C.Enabled = False
  loc_124E4E0:   End If
  loc_124E4F2:   var_144 = var_8C.Fields
  loc_124E4FA:   var_14C = var_144.Item("PicPath")
  loc_124E53E:   Call Proc_286_36_11FA380(CStr(var_14C.Value), CStr(var_8C.Fields.Item("SigPath").Value))
  loc_124E55F: Else
  loc_124E55F:   Call Proc_286_31_F2D0BC(var_144)
  loc_124E571:   Set var_144 = Me.Txt
  loc_124E577:   Call 0.Method_Proc_286_34_124E6600 (CInt(1), var_14C)
  loc_124E57F:   var_14C.Enabled = True
  loc_124E598:   Set var_144 = Me.Txt
  loc_124E59E:   Call 0.Method_Proc_286_34_124E6600 (CInt(3), var_14C)
  loc_124E5A6:   var_14C.Enabled = True
  loc_124E5BF:   Set var_144 = Me.Txt
  loc_124E5C5:   Call 0.Method_Proc_286_34_124E6600 (CInt(4), var_14C)
  loc_124E5CD:   var_14C.Enabled = True
  loc_124E5E6:   Set var_144 = Me.Txt
  loc_124E5EC:   Call 0.Method_Proc_286_34_124E6600 (CInt(5), var_14C)
  loc_124E5F4:   var_14C.Enabled = True
  loc_124E60D:   Set var_144 = Me.Txt
  loc_124E613:   Call 0.Method_Proc_286_34_124E6600 (CInt(6), var_14C)
  loc_124E61B:   var_14C.Enabled = True
  loc_124E634:   Set var_144 = Me.Txt
  loc_124E63A:   Call 0.Method_Proc_286_34_124E6600 (CInt(7), var_14C)
  loc_124E642:   var_14C.Enabled = True
  loc_124E64E: End If
  loc_124E653: Set var_8C = Nothing
  loc_124E65B: Set var_90 = Nothing
  loc_124E65E: Exit Sub
End Sub

Public Sub Proc_286_35_124A2E0(arg_C) '124A2E0
  'Data Table: 4FC7FC
  Dim var_9C As String
  Dim unk_4FC807 As Connection15
  Dim var_8C As Recordset15
  Dim var_124 As Fields15
  Dim var_134 As Variant
  Dim var_12C As Variant
  Dim var_130 As Fields15
  loc_1249DB7: var_88 = arg_C
  loc_1249DCE: var_9C = "Select MF.Code As MemberCode,MF.ConPrefix + ' ' + MF.Name As Name,MF.Code CardNo, MF.Add1 + ' ' + MF.Add2 As Address,'' As CardValidUpto,MF.MobileNo,MF.PicPath,'' As SigPath From GuestProf MF Where MF.LogSite_Code='" & MemVar_1F92078
  loc_1249E02: unk_4FC807.Execute CStr(CVar(var_9C & "' And MF.Code='") & Trim(var_88) & "'"), var_120, -1
  loc_1249E0D: Set var_8C = var_124
  loc_1249E3B: If (var_8C.RecordCount > 0) Then
  loc_1249E55:   var_12C = var_8C.Fields.Item("Name")
  loc_1249E74:   Set var_130 = Me.Txt
  loc_1249E7A:   Call 0.Method_Proc_286_35_124A2E00 (CInt(3), var_134)
  loc_1249E82:   var_134.Text = Proc_6_38_E68A98(CVar(var_12C))
  loc_1249EA4:   Set var_124 = Me.Txt
  loc_1249EAA:   Call 0.Method_Proc_286_35_124A2E00 (CInt(3), var_12C)
  loc_1249EB2:   var_12C.Tag = var_88
  loc_1249EF4:   Set var_130 = Me.Txt
  loc_1249EFA:   Call 0.Method_Proc_286_35_124A2E00 (CInt(4), var_134)
  loc_1249F02:   var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("CardNo")))
  loc_1249F4C:   Set var_130 = Me.Txt
  loc_1249F52:   Call 0.Method_Proc_286_35_124A2E00 (CInt(5), var_134)
  loc_1249F5A:   var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("Address")))
  loc_1249FA4:   Set var_130 = Me.Txt
  loc_1249FAA:   Call 0.Method_Proc_286_35_124A2E00 (CInt(6), var_134)
  loc_1249FB2:   var_134.Text = Proc_6_38_E68A98(CVar(var_8C.Fields.Item("MobileNo")))
  loc_1249FDD:   var_12C = var_8C.Fields.Item("CardValidUpto")
  loc_124A018:   Set var_130 = Me.Txt
  loc_124A01E:   Call 0.Method_Proc_286_35_124A2E00 (CInt(7), var_134, CStr(Format(CVar(var_12C), "dd/MMM/yyyy")))
  loc_124A026:   var_134.Text = 1
  loc_124A04D:   Set var_124 = Me.Txt
  loc_124A053:   Call 0.Method_Proc_286_35_124A2E00 (CInt(1), var_12C, 0)
  loc_124A05B:   var_12C.Enabled = True
  loc_124A074:   Set var_124 = Me.Txt
  loc_124A07A:   Call 0.Method_Proc_286_35_124A2E00 (CInt(4), var_12C)
  loc_124A082:   var_12C.Enabled = False
  loc_124A09B:   Set var_124 = Me.Txt
  loc_124A0A1:   Call 0.Method_Proc_286_35_124A2E00 (CInt(3), var_12C)
  loc_124A0A9:   var_12C.Enabled = False
  loc_124A0C2:   Set var_124 = Me.Txt
  loc_124A0C8:   Call 0.Method_Proc_286_35_124A2E00 (CInt(5), var_12C)
  loc_124A0D0:   var_12C.Enabled = False
  loc_124A0E9:   Set var_124 = Me.Txt
  loc_124A0EF:   Call 0.Method_Proc_286_35_124A2E00 (CInt(6), var_12C)
  loc_124A0F7:   var_12C.Enabled = False
  loc_124A111:   Set var_124 = Me.Txt
  loc_124A117:   Call 0.Method_Proc_286_35_124A2E00 (CInt(7), var_12C)
  loc_124A136:   If (var_12C.Text <> vbNullString) Then
  loc_124A146:     Set var_124 = Me.Txt
  loc_124A14C:     Call 0.Method_Proc_286_35_124A2E00 (CInt(7), var_12C)
  loc_124A154:     var_12C.Enabled = False
  loc_124A160:   End If
  loc_124A172:   var_124 = var_8C.Fields
  loc_124A17A:   var_12C = var_124.Item("PicPath")
  loc_124A1BE:   Call Proc_286_36_11FA380(CStr(var_12C.Value), CStr(var_8C.Fields.Item("SigPath").Value))
  loc_124A1DF: Else
  loc_124A1DF:   Call Proc_286_31_F2D0BC(var_124)
  loc_124A1F1:   Set var_124 = Me.Txt
  loc_124A1F7:   Call 0.Method_Proc_286_35_124A2E00 (CInt(1), var_12C)
  loc_124A1FF:   var_12C.Enabled = True
  loc_124A218:   Set var_124 = Me.Txt
  loc_124A21E:   Call 0.Method_Proc_286_35_124A2E00 (CInt(3), var_12C)
  loc_124A226:   var_12C.Enabled = True
  loc_124A23F:   Set var_124 = Me.Txt
  loc_124A245:   Call 0.Method_Proc_286_35_124A2E00 (CInt(4), var_12C)
  loc_124A24D:   var_12C.Enabled = True
  loc_124A266:   Set var_124 = Me.Txt
  loc_124A26C:   Call 0.Method_Proc_286_35_124A2E00 (CInt(5), var_12C)
  loc_124A274:   var_12C.Enabled = True
  loc_124A28D:   Set var_124 = Me.Txt
  loc_124A293:   Call 0.Method_Proc_286_35_124A2E00 (CInt(6), var_12C)
  loc_124A29B:   var_12C.Enabled = True
  loc_124A2B4:   Set var_124 = Me.Txt
  loc_124A2BA:   Call 0.Method_Proc_286_35_124A2E00 (CInt(7), var_12C)
  loc_124A2C2:   var_12C.Enabled = True
  loc_124A2CE: End If
  loc_124A2D3: Set var_8C = Nothing
  loc_124A2DB: Set var_90 = Nothing
  loc_124A2DE: Exit Sub
End Sub

Public Sub Proc_286_36_11FA380(arg_C, arg_10) '11FA380
  'Data Table: 4FC7FC
  Dim var_8C As Image
  Dim var_A0 As Variant
  Dim var_F0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_11F9EFB: Set var_8C = Me.ImgPhoto
  loc_11F9F14: If (var_8C.Tag <> arg_C) Then
  loc_11F9F24:   var_F0 = IsNull(arg_C)
  loc_11F9F2B:   var_B0 = arg_C
  loc_11F9F3B:   var_D0 = vbNullString
  loc_11F9F52:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11F9F73:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11F9F88:     Me.ImgPhoto.Picture = var_8C
  loc_11F9FA1:     Me.ImgPhoto.Tag = vbNullString
  loc_11F9FAC:   Else
  loc_11F9FAF:     var_A0 = arg_C
  loc_11F9FBF:     var_D0 = arg_C
  loc_11F9FEA:     var_B0 = "DAT"
  loc_11FA012:     var_F0 = "AVI"
  loc_11FA031:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11FA040:       Me.ImgPhoto.Visible = False
  loc_11FA04B:     Else
  loc_11FA058:       Me.ImgPhoto.Tag = arg_C
  loc_11FA06C:       Call 0.Method_Proc_286_36_11FA3804 (arg_C, var_17A)
  loc_11FA074:       If var_17A Then
  loc_11FA091:         Set var_8C = Me.ImgPhoto
  loc_11FA0A9:         Me.Global.LoadPicture CVar(Me.ImgPhoto.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11FA0BE:         Me.ImgPhoto.Picture = var_114
  loc_11FA0D3:         Set var_8C = Me.ImgPhoto
  loc_11FA0D9:         var_8C.Refresh
  loc_11FA0E4:       Else
  loc_11FA102:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11FA117:         Me.ImgPhoto.Picture = var_8C
  loc_11FA130:         Me.ImgPhoto.Tag = vbNullString
  loc_11FA138:       End If
  loc_11FA138:     End If
  loc_11FA138:   End If
  loc_11FA138: End If
  loc_11FA13F: Set var_8C = Me.ImgSign
  loc_11FA158: If (var_8C.Tag <> arg_10) Then
  loc_11FA168:   var_F0 = IsNull(arg_10)
  loc_11FA16F:   var_B0 = arg_10
  loc_11FA17F:   var_D0 = vbNullString
  loc_11FA196:   If CBool(var_F0 Or (Trim(var_B0) = var_D0)) Then
  loc_11FA1B7:     Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11FA1CC:     Me.ImgSign.Picture = var_8C
  loc_11FA1E5:     Me.ImgSign.Tag = vbNullString
  loc_11FA1F0:   Else
  loc_11FA1F3:     var_A0 = arg_10
  loc_11FA203:     var_D0 = arg_10
  loc_11FA22E:     var_B0 = "DAT"
  loc_11FA256:     var_F0 = "AVI"
  loc_11FA275:     If CBool((Ucase(Right(Trim(var_A0), 3)) = var_B0) Or (Ucase(Right(Trim(var_D0), 3)) = var_F0)) Then
  loc_11FA284:       Me.ImgSign.Visible = False
  loc_11FA28F:     Else
  loc_11FA296:       Set var_8C = Me.ImgSign
  loc_11FA29C:       var_8C.Tag = arg_10
  loc_11FA2B0:       Call 0.Method_Proc_286_36_11FA3804 (arg_10, var_17A, var_8C)
  loc_11FA2B8:       If var_17A Then
  loc_11FA2D5:         Set var_8C = Me.ImgSign
  loc_11FA2ED:         Me.Global.LoadPicture CVar(Me.ImgSign.Tag), var_A0, var_B0, var_D0, var_F0
  loc_11FA302:         Me.ImgSign.Picture = var_114
  loc_11FA317:         Set var_8C = Me.ImgSign
  loc_11FA31D:         var_8C.Refresh
  loc_11FA328:       Else
  loc_11FA346:         Me.Global.LoadPicture var_A0, var_B0, var_D0, var_F0, var_110
  loc_11FA35B:         Me.ImgSign.Picture = var_8C
  loc_11FA374:         Me.ImgSign.Tag = vbNullString
  loc_11FA37C:       End If
  loc_11FA37C:     End If
  loc_11FA37C:   End If
  loc_11FA37C: End If
  loc_11FA37C: Exit Sub
  loc_11FA37D: DOC
End Sub

Public Sub Proc_286_37_1066390
  'Data Table: 4FC7FC
  Dim var_90 As String
  Dim var_98 As TextBox
  Dim var_B4 As Variant
  Dim var_D8 As MSHFlexGrid
  Dim var_E8 As Long
  Dim var_94 As CheckBox
  loc_1066123: var_90 = "Select '' as [_],MF.RelationShip Relation,MF.ConPrefix + ' ' + MF.Name As Name,MF.SubCode,MF.SNo,S.CardNo [Card No.],Convert(Varchar(11),MF.CardIssDate,103) [Card Iss. Date],MF.CardRegId [Card Reg.ID],MF.CardValidUpto,MF.PicPath,MF.SigPath From MemberFamily MF Inner Join SubGroup S On MF.Subcode=S.Subcode Where MF.LogSite_Code='" & MemVar_1F92078
  loc_106613B: Set var_94 = Me.Txt
  loc_1066141: Call 0.Method_Proc_286_37_10663900 (CInt(2), var_98)
  loc_106617D: Me.Recordset15.CursorLocation = 3
  loc_10661A3: New.Open CVar(var_90 & "' And S.SubCode='" & var_98.Tag & "'"), CVar(MemVar_1F92044), 3
  loc_10661AE: CVarUnk
  loc_10661B3: VerifyVarObj
  loc_10661B9: Set var_94 = Me.GridSel
  loc_10661BF: LateIdStAd
  loc_10661DD: ReDim Preserve global_100(0 To 0)
  loc_10661F4: global_100(0) = 0
  loc_10661F9: Set var_D8 = Me.GridSel
  loc_1066208: var_D8.Height = CVar(CDbl(3000))
  loc_1066219: var_D8.Width = CVar(CDbl(8500))
  loc_106621E: var_B4 = 0
  loc_1066227: var_E8 = &H258
  loc_1066233: LateIdCallSt
  loc_106623B: var_B4 = 1
  loc_1066244: var_E8 = &H4B0
  loc_1066250: LateIdCallSt
  loc_1066258: var_B4 = 2
  loc_1066261: var_E8 = &HDAC
  loc_106626D: LateIdCallSt
  loc_1066275: var_B4 = 3
  loc_106627E: var_E8 = 0
  loc_106628A: LateIdCallSt
  loc_1066292: var_B4 = 4
  loc_106629B: var_E8 = 0
  loc_10662A7: LateIdCallSt
  loc_10662AF: var_B4 = 5
  loc_10662B8: var_E8 = 0
  loc_10662C4: LateIdCallSt
  loc_10662CC: var_B4 = 6
  loc_10662D5: var_E8 = &H5DC
  loc_10662E1: LateIdCallSt
  loc_10662E9: var_B4 = 7
  loc_10662F2: var_E8 = &H514
  loc_10662FE: LateIdCallSt
  loc_1066306: var_B4 = 8
  loc_106630F: var_E8 = 0
  loc_106631B: LateIdCallSt
  loc_1066323: var_B4 = 9
  loc_106632C: var_E8 = 0
  loc_1066338: LateIdCallSt
  loc_1066340: var_B4 = &HA
  loc_1066349: var_E8 = 0
  loc_1066355: LateIdCallSt
  loc_106635F: Set var_D8 = Nothing 
  loc_106636F: Me.Check1.Visible = False
  loc_1066387: Me.Check1.Value = CInt(0)
  loc_106638F: Exit Sub
End Sub
