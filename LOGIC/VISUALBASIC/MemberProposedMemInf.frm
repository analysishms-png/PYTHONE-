VERSION 5.00
Begin VB.Form MemberProposedMemInf
  Caption = "Propsed Member Information"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 3 'Fixed Dialog
  'Icon = n/a
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 8490
  ClientHeight = 3165
  ShowInTaskbar = 0   'False
  StartUpPosition = 1 'CenterOwner
  Begin MSFlexGrid FGPoint
    Left = 7005
    Top = 1290
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 15
  End
  Begin DataGrid DGMember
    Left = 1710
    Top = 1770
    Width = 6720
    Height = 2265
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 14
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    Left = 975
    Top = 885
    Width = 3000
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 50
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
  Begin Frame FrmList
    Left = 210
    Top = 3255
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = 105
      Width = 1770
      Height = 1665
      TabStop = 0   'False
      TabIndex = 9
    End
  End
  Begin CommandButton Cmd
    Caption = "GoBack"
    Index = 4
    Left = 5760
    Top = 2040
    Width = 1215
    Height = 300
    TabIndex = 11
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Confirm"
    Index = 3
    Left = 5760
    Top = 1717
    Width = 1215
    Height = 300
    TabIndex = 3
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin CommandButton Cmd
    Caption = "Delete"
    Index = 2
    Left = 5760
    Top = 1395
    Width = 1215
    Height = 300
    TabIndex = 12
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    Left = 705
    Top = 135
    Width = 360
    Height = 270
    Enabled = 0   'False
    Text = "1"
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 50
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
  Begin CommandButton Cmd
    Caption = ">"
    Index = 1
    Left = 375
    Top = 90
    Width = 300
    Height = 360
    TabIndex = 4
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
  Begin CommandButton Cmd
    Caption = "<"
    Index = 0
    Left = 75
    Top = 90
    Width = 300
    Height = 360
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
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    Left = 975
    Top = 585
    Width = 690
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
    MaxLength = 6
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
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    Left = 1680
    Top = 585
    Width = 5250
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 75
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
  Begin CommonDialog CDlg
  End
  Begin Image Image2
    Left = 2220
    Top = 1845
    Width = 2130
    Height = 555
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "Card No"
    Index = 5
    ForeColor = &H0&
    Left = 180
    Top = 885
    Width = 690
    Height = 240
    TabIndex = 13
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
  Begin Label Lbl
    Caption = "General"
    Index = 4
    ForeColor = &H0&
    Left = 1485
    Top = 60
    Width = 555
    Height = 195
    Visible = 0   'False
    TabIndex = 7
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    Left = 75
    Top = 510
    Width = 6915
    Height = 735
  End
  Begin Image Image1
    Left = 75
    Top = 1275
    Width = 1440
    Height = 1815
    Visible = 0   'False
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "Member"
    Index = 1
    ForeColor = &H0&
    Left = 180
    Top = 585
    Width = 705
    Height = 240
    TabIndex = 5
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
End

Attribute VB_Name = "MemberProposedMemInf"

Private global_52 As Integer

Private Sub Cmd_Click(Index As Integer) '13F7100
  'Data Table: 432870
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_AC As Double
  Dim var_B8 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim var_CC As String
  Dim unk_43287F As Connection15
  Dim var_BC As String
  Dim var_90 As Recordset15
  Dim var_B0 As Variant
  Dim var_EC As Variant
  Dim var_98 As String
  Dim var_104 As String
  Dim var_118 As Integer
  Dim var_11C As Field20
  Dim var_86 As Integer
  Dim var_158 As String
  Dim var_13C As Variant
  Dim var_16C As Variant
  Dim var_A0 As Variant
  loc_13F672B: var_92 = Index
  loc_13F6736: If (var_92 = CInt(1)) Then
  loc_13F674C:   If (Mode = "Add") Then
  loc_13F674F:     Call Proc_274_13_F432F0(var_92)
  loc_13F6754:   End If
  loc_13F6757:   Call Proc_274_16_F7B4F8(var_9A)
  loc_13F6762:   global_52 = var_9A
  loc_13F6773:   Set var_A0 = Me.Txt
  loc_13F6779:   Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6781:   var_98 = var_A4.Text
  loc_13F67A7:   If (CDbl(global_52) > CDbl(Val(var_98))) Then
  loc_13F67B8:     Set var_A0 = Me.Txt
  loc_13F67BE:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98)
  loc_13F67C6:     var_AC = var_A4.Text
  loc_13F67D9:     var_B8 = CStr((Val(var_98) + CDbl(1)))
  loc_13F67E7:     Set var_B0 = Me.Txt
  loc_13F67ED:     Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F67F5:     var_B4.Text = var_B8
  loc_13F681A:     Set var_A0 = Me.Txt
  loc_13F6820:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6835:     var_AC = Val(var_A4.Text)
  loc_13F684E:     If (CDbl(global_52) = CDbl(var_AC)) Then
  loc_13F685E:       Set var_A0 = Me.Cmd
  loc_13F6864:       Call 0.Method_Cmd_Click0 (CInt(1), var_A4, 0)
  loc_13F686C:       var_A4.Enabled = var_AC
  loc_13F6878:     End If
  loc_13F6885:     Set var_A0 = Me.Cmd
  loc_13F688B:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6893:     var_A4.Enabled = True
  loc_13F689F:   End If
  loc_13F68AD:   Set var_A0 = Me.Txt
  loc_13F68B3:   Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F68BB:   var_98 = var_A4.Text
  loc_13F68CC:   Call Proc_274_14_1381618(CInt(Val(var_98)))
  loc_13F68DE: Else
  loc_13F68E6:   If (var_92 = CInt(0)) Then
  loc_13F68EC:     Call Proc_274_16_F7B4F8(var_9A)
  loc_13F68F7:     global_52 = var_9A
  loc_13F6908:     Set var_A0 = Me.Txt
  loc_13F690E:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98)
  loc_13F6916:     global_52 = var_A4.Text
  loc_13F6929:     var_B8 = CStr((Val(var_98) - CDbl(1)))
  loc_13F6937:     Set var_B0 = Me.Txt
  loc_13F693D:     Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F6945:     var_B4.Text = var_B8
  loc_13F696A:     Set var_A0 = Me.Txt
  loc_13F6970:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6994:     If (CDbl(Val(var_A4.Text)) = CDbl(1)) Then
  loc_13F69A4:       Set var_A0 = Me.Cmd
  loc_13F69AA:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F69B2:       var_A4.Enabled = False
  loc_13F69BE:     End If
  loc_13F69CC:     Set var_A0 = Me.Txt
  loc_13F69D2:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F69EB:     Call Proc_274_14_1381618(CInt(Val(var_A4.Text)))
  loc_13F6A08:     Set var_A0 = Me.Txt
  loc_13F6A0E:     Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6A36:     If (CDbl(Val(var_A4.Text)) <= CDbl(global_52)) Then
  loc_13F6A46:       Set var_A0 = Me.Cmd
  loc_13F6A4C:       Call 0.Method_Cmd_Click0 (CInt(1), var_A4)
  loc_13F6A54:       var_A4.Enabled = True
  loc_13F6A60:     End If
  loc_13F6A63:   Else
  loc_13F6A6B:     If (var_92 = CInt(2)) Then
  loc_13F6A8A:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6A9F:       var_AC = Val(var_A4.Text)
  loc_13F6AD9:       unk_43287F.Execute "Delete From MemProposedMemInf Where  Subcode='" & subcode & "' And SNo=" & CStr(var_AC) & " And Mark=''", var_EC, -1
  loc_13F6B0E:       var_98 = subcode
  loc_13F6B27:       unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf Where  Subcode='" & var_98 & "'", var_EC, -1
  loc_13F6B58:       Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_98, Me.Txt)
  loc_13F6B60:       var_B0 = var_A4.Text
  loc_13F6B8C:       var_B4 = Me.Txt.Fields.Item("SNo")
  loc_13F6B94:       var_EC = CVar(var_B4) 'Address
  loc_13F6B9B:       Proc_6_39_E7C810(var_FC, var_EC, var_88)
  loc_13F6BB7:       For var_100 = var_AC To CInt(var_FC):     CInt((Val(var_98) + CDbl(1))) = var_100 'Integer
  loc_13F6BD5:         var_98 = CStr((var_88 - 1))
  loc_13F6C02:         var_104 = "Update MemProposedMemInf Set SNo=" & var_98 & " Where Subcode='" & subcode & "' And SNo=" & CStr(var_88)
  loc_13F6C12:         unk_43287F.Execute var_104 & vbNullString, var_EC, -1
  loc_13F6C35:       Next var_100 'Integer
  loc_13F6C3A:       Call Proc_274_13_F432F0()
  loc_13F6C3F:       Call Proc_274_15_F206E8()
  loc_13F6C47:     Else
  loc_13F6C4F:       If (var_92 = CInt(3)) Then
  loc_13F6C7A:         If ((Mode = "Add") Or (Mode = "Edit")) Then
  loc_13F6C93:           Set var_A0 = Me.Txt
  loc_13F6C99:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6CA1:           var_BC = var_A4.Text
  loc_13F6CB7:           var_118 = 0
  loc_13F6CEE:           var_CC = "Select Count(*) From MemProposedMemInf where Subcode='" & subcode & "' And SNo=" & CStr(Val(var_BC)) & vbNullString
  loc_13F6CF7:           unk_43287F.Execute var_CC, var_EC, -1
  loc_13F6CFF:           var_B0 = var_B0.Fields
  loc_13F6D07:           var_118 = var_B4.Item(var_B4)
  loc_13F6D0F:           var_11C = var_11C.Value
  loc_13F6D44:           If (var_FC > 0) Then
  loc_13F6D5D:             Set var_A0 = Me.Txt
  loc_13F6D63:             Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_BC)
  loc_13F6D6B:             var_FC = var_A4.Text
  loc_13F6D96:             var_C0 = "Delete From MemProposedMemInf where Subcode='" & subcode & "' And SNo="
  loc_13F6DB2:             unk_43287F.Execute var_C0 & CStr(Val(var_BC)) & vbNullString, var_EC, -1
  loc_13F6DD4:           End If
  loc_13F6DD4:         End If
  loc_13F6DDF:         Set var_A0 = Me.Txt
  loc_13F6DE5:         Call 0.Method_Cmd_Click0 (CInt(2), var_A4, var_B0)
  loc_13F6E0E:         If (Proc_183_19_E8DAFC(var_A4, "Proposed Member Name") = 0) Then
  loc_13F6E1C:           Set var_A0 = Me.Txt
  loc_13F6E22:           Call 0.Method_Cmd_Click0 (CInt(2), var_A4)
  loc_13F6E2A:           var_A4.SetFocus
  loc_13F6E36:           Exit Sub
  loc_13F6E37:         End If
  loc_13F6E40:         unk_43287F.BeginTrans var_140
  loc_13F6E47:         var_86 = 0
  loc_13F6E72:         If ((Mode = "Add") Or (Mode = "Edit")) Then
  loc_13F6E8B:           Set var_A0 = Me.Txt
  loc_13F6E91:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4, var_C0)
  loc_13F6E99:           var_86 = var_A4.Text
  loc_13F6EA6:           var_AC = Val(var_C0)
  loc_13F6EB7:           Set var_B0 = Me.Txt
  loc_13F6EBD:           Call 0.Method_Cmd_Click0 (CInt(2), var_B4, var_104)
  loc_13F6EC5:           var_AC = var_B4.Tag
  loc_13F6ED8:           Proc_183_7_EB0C44(var_FC, Now)
  loc_13F6EF1:           var_B8 = "Insert into MemProposedMemInf (Subcode,SNo,PMemCode,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_13F6F3C:           var_158 = var_B8 & subcode & "'," & CStr(var_AC) & ",'" & var_104 & "','','" & MemVar_1F92070 & "','" & MemVar_1F92078 & "','"
  loc_13F6F4A:           var_13C = CVar(var_158 & MemVar_1F920C8 & "',") 'String
  loc_13F6F50:           var_16C = var_13C & var_FC 
  loc_13F6F67:           unk_43287F.Execute CStr(var_16C & ",'A')"), var_190, -1
  loc_13F6FB3:           unk_43287F.CommitTrans
  loc_13F6FB8:           Call Proc_274_13_F432F0(var_11C, var_AC)
  loc_13F6FCB:           Set var_A0 = Me.Txt
  loc_13F6FD1:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F6FEC:           var_B8 = CStr((Val(var_A4.Text) + CDbl(1)))
  loc_13F6FFA:           Set var_B0 = Me.Txt
  loc_13F7000:           Call 0.Method_Cmd_Click0 (CInt(0), var_B4)
  loc_13F7008:           var_B4.Text = var_B8
  loc_13F702D:           Set var_A0 = Me.Txt
  loc_13F7033:           Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F703B:           var_98 = var_A4.Text
  loc_13F7057:           If (CDbl(Val(var_98)) > CDbl(1)) Then
  loc_13F7067:             Set var_A0 = Me.Cmd
  loc_13F706D:             Call 0.Method_Cmd_Click0 (CInt(0), var_A4)
  loc_13F7075:             var_A4.Enabled = True
  loc_13F7081:           End If
  loc_13F7083:           var_86 = &HFF
  loc_13F708C:           If (var_86 = 0) Then
  loc_13F7095:             unk_43287F.RollbackTrans
  loc_13F70B0:             Set var_A0 = Err()
  loc_13F70B6:             Call 0.Method_arg_2C (var_98, 0, var_FC, var_13C)
  loc_13F70C1:             MsgBox(CVar(var_98), var_16C, var_86, var_AC, )
  loc_13F70D4:           End If
  loc_13F70D4:         End If
  loc_13F70D7:       Else
  loc_13F70DF:         If (var_92 = CInt(4)) Then
  loc_13F70EF:           Me.Global.Unload Me
  loc_13F70F7:         End If
  loc_13F70F7:       End If
  loc_13F70F7:     End If
  loc_13F70F7:   End If
  loc_13F70F7: End If
  loc_13F70FC: Set var_90 = Nothing
  loc_13F70FF: Exit Sub
End Sub

Private Sub Form_Load() '1027A38
  'Data Table: 432870
  Dim var_B4 As Variant
  Dim var_90 As String
  Dim Me As Recordset15
  Dim var_B8 As Variant
  Dim var_D0 As DataGrid
  Dim var_D4 As TextBox
  loc_102781E: Set global_56 = New 
  loc_1027830: Me.Recordset15.CursorLocation = 3
  loc_102785A: var_90 = "Select SubCode as Code,Name,ConPrefix,CardNo From SubGroup where ActiveYN=1 and (LOGSITE_CODE='" & MemVar_1F92078 & "' or LOGSITE_CODE='HO') AND CompanyType in (Select Code from MemCatMast where LogSite_Code='"
  loc_1027872: Me.Open CVar(var_90 & MemVar_1F92078 & "') Order By Name"), CVar(MemVar_1F92044), 3
  loc_102788C: CVarUnk
  loc_1027891: VerifyVarObj
  loc_1027897: Set var_88 = Me.DGMember
  loc_102789D: LateIdStAd
  loc_10278BF: Call 0.Method_Form_Load0 (CInt(2), var_B8, var_BC, Me.Txt)
  loc_10278C7: global_56 = var_B8.Left
  loc_10278DE: Me.DGMember.Left = CVar(var_BC)
  loc_10278FA: Set var_D0 = Me.Txt
  loc_1027900: Call 0.Method_Form_Load0 (CInt(2), var_D4, var_D8)
  loc_1027908: 1 = var_D4.Height
  loc_102791B: Set var_88 = Me.Txt
  loc_1027921: Call 0.Method_Form_Load0 (CInt(2), var_B8)
  loc_1027939: var_B4 = CVar(((var_B8.Top + var_D8) + CDbl(&H1E))) 'Single
  loc_1027948: Me.DGMember.Top = CVar(var_B8.Top)
  loc_1027968: Set var_88 = Me.Txt
  loc_102796E: Call 0.Method_Form_Load0 (CInt(0), var_B8)
  loc_1027976: var_B8.Text = "1"
  loc_102798D: var_E0 = Mode
  loc_1027998: If (var_E0 = "Browse") Then
  loc_10279A0:   Call Proc_274_12_F2FC60(0)
  loc_10279AB: Else
  loc_10279B3:   If (var_E0 = "Add") Then
  loc_10279C3:     Set var_88 = Me.Cmd
  loc_10279C9:     Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_10279D1:     var_B8.Enabled = False
  loc_10279DD:     Call Proc_274_13_F432F0(-1)
  loc_10279E7:     Call Proc_274_12_F2FC60(1)
  loc_10279F2:   Else
  loc_10279FA:     If (var_E0 = "Edit") Then
  loc_1027A0A:       Set var_88 = Me.Cmd
  loc_1027A10:       Call 0.Method_Form_Load0 (CInt(1), var_B8)
  loc_1027A18:       var_B8.Enabled = False
  loc_1027A29:       Call Proc_274_12_F2FC60(1)
  loc_1027A31:     End If
  loc_1027A31:   End If
  loc_1027A31: End If
  loc_1027A31: Call Proc_274_15_F206E8()
  loc_1027A36: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) 'FF3058
  'Data Table: 432870
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_D4 As Variant
  loc_FF2E7E: Set var_88 = Me.Txt
  loc_FF2E84: Call 0.Method_Txt_GotFocus0 (Index)
  loc_FF2E92: Proc_183_28_E20B20(var_8C)
  loc_FF2E9E: Call Proc_274_17_E83608(var_8C)
  loc_FF2EA6: var_92 = Index
  loc_FF2EB1: If (var_92 = CInt(2)) Then
  loc_FF2ECB:   If (Me.RecordCount > 0) Then
  loc_FF2ED9:     Set var_8C = Me.FGPoint
  loc_FF2EF1:     Proc_6_137_1193554(Me.DGMember, global_56, Index)
  loc_FF2EFF:   End If
  loc_FF2F4D:   Set var_88 = Me.Txt
  loc_FF2F53:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_FF2F5B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_FF2F73:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_FF2F76:     Exit Sub
  loc_FF2F77:   End If
  loc_FF2F84:   Set var_88 = Me.Txt
  loc_FF2F8A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_FF2F92:   var_A0 = var_8C.Text
  loc_FF2F9A:   var_D4 = CVar(var_A0) 'String
  loc_FF2FDF:   If CBool(var_D4 <> Me.Fields.Item("Name").Value) Then
  loc_FF2FE8:     Me.MoveFirst
  loc_FF300D:     Set var_88 = Me.Txt
  loc_FF3013:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name =")
  loc_FF301B:     0 = var_8C.Text
  loc_FF3029:     Proc_6_17_EAA2B0(var_D4, CVar(var_A0), 1)
  loc_FF303F:     Me.Find CStr(var_F8 & var_D4), var_92, 
  loc_FF3057:   End If
  loc_FF3057: End If
  loc_FF3057: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '1002AF8
  'Data Table: 432870
  Dim var_86 As Integer
  Dim Me As Recordset15
  loc_1002903: var_86 = Shift
  loc_1002910: If (CLng(Shift) = &H1B) Then
  loc_1002913:   Call Proc_274_17_E83608(var_86)
  loc_1002918:   Exit Sub
  loc_1002919: End If
  loc_1002927: If (KeyCode = CInt(2)) Then
  loc_1002947:   Set var_9C = Me.FGPoint
  loc_1002952:   Set var_98 = Nothing
  loc_1002980:   Proc_6_69_134A198(Me.DGMember, Me.Txt, KeyCode, global_56, Shift, 0)
  loc_10029EF:   If ((Me.RecordCount > 0) And ((((((CLng(var_86) = &H28) Or (CLng(var_86) = &H26)) Or (CLng(var_86) = &H25)) Or (CLng(var_86) = &H27)) Or (CLng(var_86) = &H21)) Or (CLng(var_86) = &H22))) Then
  loc_10029F6:     Set var_98 = Me.DGMember
  loc_1002A15:     Proc_6_138_106D6F8(var_98, global_56, KeyCode, Me.FGPoint, 1)
  loc_1002A23:   End If
  loc_1002A23: End If
  loc_1002A5C: If ((Me.FrmList.Visible = 0) And (CBool(Me.DGMember.Visible) = 0)) Then
  loc_1002A74:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1002A7D:     Proc_6_75_E527CC(Shift, arg_14, var_98)
  loc_1002A82:   End If
  loc_1002A95:   If (Mode = "Add") Then
  loc_1002AAD:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1002AB6:       Proc_6_76_E52838(Shift, arg_14, var_9C)
  loc_1002ABB:     End If
  loc_1002ABE:   Else
  loc_1002AD1:     If (Mode = "Edit") Then
  loc_1002AE9:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1002AF2:         Proc_6_76_E52838(Shift, arg_14)
  loc_1002AF7:       End If
  loc_1002AF7:     End If
  loc_1002AF7:   End If
  loc_1002AF7: End If
  loc_1002AF7: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'ED4D3C
  'Data Table: 432870
  loc_ED4C90: On Error Goto loc_ED4D36
  loc_ED4C96: Proc_6_58_E054C0(arg_10)
  loc_ED4CA9: If (KeyAscii = CInt(2)) Then
  loc_ED4CC8:   If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_ED4CDA:     var_A0 = "Name"
  loc_ED4CF5:     Proc_6_89_146F1AC(Me.Txt, KeyAscii, global_56, arg_10)
  loc_ED4D27:     Proc_6_138_106D6F8(Me.DGMember, global_56, KeyAscii, Me.FGPoint)
  loc_ED4D35:   End If
  loc_ED4D35: End If
  loc_ED4D35: Exit Sub
  loc_ED4D36: ' Referenced from: ED4C90
  loc_ED4D36: Proc_6_60_E62BC4(var_A0, 0)
  loc_ED4D3B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E002BC
  'Data Table: 432870
  Dim var_86 As Integer
  loc_E002B7: var_86 = KeyCode
  loc_E002BA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4890C
  'Data Table: 432870
  loc_E488EA: Set var_88 = Me.Txt
  loc_E488F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E488FE: Proc_183_27_E22608(var_8C)
  loc_E4890A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1419DD0
  'Data Table: 432870
  Dim var_8E As Integer
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_BC As Variant
  Dim var_D0 As String
  Dim unk_43287F As Connection15
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_134 As Variant
  Dim var_E4 As String
  Dim var_B8 As Variant
  Dim var_F4 As Variant
  Dim var_114 As String
  Dim var_1B4 As Variant
  loc_1419364: On Error Goto loc_1419D71
  loc_141936A: var_8E = Cancel
  loc_1419375: If (var_8E = CInt(2)) Then
  loc_1419398:   var_96 = Me.EOF
  loc_14193B9:   If ((Me.RecordCount = 0) Or ((var_96 = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14193C9:     Set var_9C = Me.Txt
  loc_14193CF:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14193EE:     If (var_A0.Text = vbNullString) Then
  loc_14193FE:       Set var_9C = Me.Txt
  loc_1419404:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141940C:       var_A0.Text = vbNullString
  loc_1419425:       Set var_9C = Me.Txt
  loc_141942B:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1419433:       var_A0.Tag = vbNullString
  loc_141944D:       Set var_9C = Me.Txt
  loc_1419453:       Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_141945B:       var_A0.Text = vbNullString
  loc_1419475:       Set var_9C = Me.Txt
  loc_141947B:       Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_1419483:       var_A0.Text = vbNullString
  loc_141948F:     End If
  loc_1419492:   Else
  loc_141949F:     Set var_9C = Me.Txt
  loc_14194A5:     Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14194C4:     If (var_A0.Text = vbNullString) Then
  loc_14194D4:       Set var_9C = Me.Txt
  loc_14194DA:       Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_14194F9:       If (var_A0.Text = vbNullString) Then
  loc_1419509:         Set var_9C = Me.Txt
  loc_141950F:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_1419517:         var_A0.Text = vbNullString
  loc_1419530:         Set var_9C = Me.Txt
  loc_1419536:         Call 0.Method_Txt_Validate0 (Cancel, var_A0)
  loc_141953E:         var_A0.Tag = vbNullString
  loc_1419558:         Set var_9C = Me.Txt
  loc_141955E:         Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_1419566:         var_A0.Text = vbNullString
  loc_1419580:         Set var_9C = Me.Txt
  loc_1419586:         Call 0.Method_Txt_Validate0 (CInt(3), var_A0)
  loc_141958E:         var_A0.Text = vbNullString
  loc_141959A:       End If
  loc_141959D:     Else
  loc_14195D8:       Set var_B8 = Me.Txt
  loc_14195DE:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_14195E6:       var_BC.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1419637:       Set var_B8 = Me.Txt
  loc_141963D:       Call 0.Method_Txt_Validate0 (Cancel, var_BC)
  loc_1419645:       var_BC.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1419697:       Set var_B8 = Me.Txt
  loc_141969D:       Call 0.Method_Txt_Validate0 (CInt(1), var_BC)
  loc_14196A5:       var_BC.Text = CStr(Me.Fields.Item("ConPrefix").Value)
  loc_14196D8:       var_A0 = Me.Fields.Item("CardNo")
  loc_14196E9:       var_A4 = CStr(var_A0.Value)
  loc_14196F7:       Set var_B8 = Me.Txt
  loc_14196FD:       Call 0.Method_Txt_Validate0 (CInt(3), var_BC)
  loc_1419705:       var_BC.Text = var_A4
  loc_141971B:     End If
  loc_141971B:   End If
  loc_1419738:   Set var_9C = Me.Txt
  loc_141973E:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, "Select P.PicPath,P.SigPath From MemberFamily P Where P.SubCode='")
  loc_1419746:   var_CC = var_A0.Tag
  loc_141974F:   var_D0 = -1 & var_A4
  loc_141975F:   unk_43287F.Execute var_D0 & "' And P.SNo=1 And IsNull(P.SubCode,'')<>''", var_B8, var_8E
  loc_141976A:   Set var_88 = var_B8
  loc_1419788:   var_94 = var_88.RecordCount
  loc_1419796:   If (var_94 > 0) Then
  loc_14197A8:     var_9C = var_88.Fields
  loc_14197C1:     var_134 = IsNull(CVar(var_9C.Item("PicPath")))
  loc_14197C8:     var_E4 = "PicPath"
  loc_14197F3:     var_114 = vbNullString
  loc_1419815:     If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_114)) Then
  loc_1419836:       Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_141984B:       Me.Image1.Picture = var_9C
  loc_141985A:     Else
  loc_1419888:       var_114 = "PicPath"
  loc_14198CE:       var_E4 = "DAT"
  loc_14198F6:       var_134 = "AVI"
  loc_1419900:       var_1B4 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)
  loc_1419920:       If CBool(var_1B4) Then
  loc_141992F:         Me.Image1.Visible = False
  loc_141993A:       Else
  loc_1419972:         Me.Image1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_141998F:         var_B4 = "PicPath"
  loc_14199A3:         var_A0 = var_88.Fields.Item(var_B4)
  loc_14199BD:         Call 0.Method_Txt_Validate4 (CStr(var_A0.Value), var_96)
  loc_14199D2:         If var_96 Then
  loc_14199EF:           Set var_9C = Me.Image1
  loc_1419A07:           Me.Global.LoadPicture CVar(Me.Image1.Tag), var_B4, var_E4, var_114, var_134
  loc_1419A1C:           Me.Image1.Picture = var_A0
  loc_1419A31:           Set var_9C = Me.Image1
  loc_1419A37:           var_9C.Refresh
  loc_1419A42:         Else
  loc_1419A60:           Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_1419A75:           Me.Image1.Picture = var_9C
  loc_1419A81:         End If
  loc_1419A81:       End If
  loc_1419A81:     End If
  loc_1419A90:     var_9C = var_88.Fields
  loc_1419AA9:     var_134 = IsNull(CVar(var_9C.Item("SigPath")))
  loc_1419AB0:     var_E4 = "SigPath"
  loc_1419ADB:     var_114 = vbNullString
  loc_1419AFD:     If CBool(var_134 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_114)) Then
  loc_1419B1E:       Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_1419B33:       Me.Image2.Picture = var_9C
  loc_1419B42:     Else
  loc_1419B68:       var_F4 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_1419B70:       var_114 = "SigPath"
  loc_1419BA3:       var_104 = Right(var_F4, 3)
  loc_1419BAE:       var_124 = Ucase(var_104)
  loc_1419BB6:       var_E4 = "DAT"
  loc_1419BDE:       var_134 = "AVI"
  loc_1419C08:       If CBool((var_124 = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_114))), 3)) = var_134)) Then
  loc_1419C17:         Me.Image2.Visible = False
  loc_1419C22:       Else
  loc_1419C5A:         Me.Image2.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_1419C77:         var_B4 = "SigPath"
  loc_1419C83:         var_9C = var_88.Fields
  loc_1419C8B:         var_A0 = var_9C.Item(var_B4)
  loc_1419CA5:         Call 0.Method_Txt_Validate4 (CStr(var_A0.Value), var_96, var_9C)
  loc_1419CBA:         If var_96 Then
  loc_1419CD7:           Set var_9C = Me.Image2
  loc_1419CDD:           var_A4 = Me.Image2.Tag
  loc_1419CEF:           Me.Global.LoadPicture CVar(var_A4), var_B4, var_E4, var_114, var_134
  loc_1419D04:           Me.Image2.Picture = var_A0
  loc_1419D19:           Set var_9C = Me.Image2
  loc_1419D1F:           var_9C.Refresh
  loc_1419D2A:         Else
  loc_1419D48:           Me.Global.LoadPicture var_B4, var_E4, var_114, var_134, var_154
  loc_1419D5D:           Me.Image2.Picture = var_9C
  loc_1419D69:         End If
  loc_1419D69:       End If
  loc_1419D69:     End If
  loc_1419D69:   End If
  loc_1419D69: End If
  loc_1419D6E: Set var_88 = Nothing
  loc_1419D71: ' Referenced from: 1419364
  loc_1419D7F: Call 0.Method_arg_1C (var_94, Err(), var_A0)
  loc_1419D90: If (var_94 <> 0) Then
  loc_1419DAF:   Call 0.Method_arg_2C (var_A4, 0, var_F4, var_104)
  loc_1419DBA:   MsgBox(CVar(var_A4), var_124, Err(), var_A0, Err())
  loc_1419DCD: End If
  loc_1419DCD: Exit Sub
End Sub

Public Property Let Mode(vNewValue) 'E0FDCC
  'Data Table: 432870
  loc_E0FDC4: global_84 = vNewValue
  loc_E0FDC8: Exit Sub
End Sub

Public Property Get Mode() 'E0FE14
  'Data Table: 432870
  loc_E0FE08: var_88 = global_84
  loc_E0FE0B: Mode = 
End Sub

Public Property Let subcode(vNewValue) 'E0FEA4
  'Data Table: 432870
  loc_E0FE9C: global_80 = vNewValue
  loc_E0FEA0: Exit Sub
End Sub

Public Property Get subcode() 'E10954
  'Data Table: 432870
  loc_E10948: var_88 = global_80
  loc_E1094B: subcode = 
End Sub

Public Sub Proc_274_12_F2FC60(arg_C) 'F2FC60
  'Data Table: 432870
  Dim var_98 As Variant
  Dim var_8C As Image
  loc_F2FB50: Set var_8C = Me.Txt
  loc_F2FB56: Call 0.Method_Proc_274_12_F2FC608 (var_8E, var_86)
  loc_F2FB61: For var_92 =  To var_8E: 1 = var_92 'Integer
  loc_F2FB79:   Set var_8C = Me.Txt
  loc_F2FB7F:   Call 0.Method_Proc_274_12_F2FC600 (var_86, var_98)
  loc_F2FB87:   var_98.Enabled = CBool(arg_C)
  loc_F2FB96: Next var_92 'Integer
  loc_F2FBA8: Set var_8C = Me.Txt
  loc_F2FBAE: Call 0.Method_Proc_274_12_F2FC600 (CInt(1), var_98)
  loc_F2FBB6: var_98.Enabled = False
  loc_F2FBCF: Set var_8C = Me.Txt
  loc_F2FBD5: Call 0.Method_Proc_274_12_F2FC600 (CInt(3), var_98)
  loc_F2FBDD: var_98.Enabled = False
  loc_F2FBFB: Me.Image1.Enabled = CBool(arg_C)
  loc_F2FC16: Set var_8C = Me.Cmd
  loc_F2FC1C: Call 0.Method_Proc_274_12_F2FC600 (CInt(2), var_98)
  loc_F2FC24: var_98.Enabled = CBool(arg_C)
  loc_F2FC43: Set var_8C = Me.Cmd
  loc_F2FC49: Call 0.Method_Proc_274_12_F2FC600 (CInt(3), var_98)
  loc_F2FC51: var_98.Enabled = CBool(arg_C)
  loc_F2FC5D: Exit Sub
End Sub

Public Sub Proc_274_13_F432F0
  'Data Table: 432870
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Image
  loc_F431D8: Set var_8C = Me.Txt
  loc_F431DE: Call 0.Method_Proc_274_13_F432F08 (var_8E, var_86)
  loc_F431E9: For var_92 =  To var_8E: 1 = var_92 'Integer
  loc_F431FC:   Set var_8C = Me.Txt
  loc_F43202:   Call 0.Method_Proc_274_13_F432F00 (var_86, var_98)
  loc_F4320A:   var_98.Text = vbNullString
  loc_F43219: Next var_92 'Integer
  loc_F4323C: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F43251: Me.Image1.Picture = var_8C
  loc_F4326A: Me.Image1.Tag = vbNullString
  loc_F43278: Set var_8C = Me.Image1
  loc_F4327E: var_8C.Visible = True
  loc_F432A4: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_F432B9: Me.Image2.Picture = var_8C
  loc_F432D2: Me.Image2.Tag = vbNullString
  loc_F432E6: Me.Image2.Visible = True
  loc_F432EE: Exit Sub
End Sub

Public Sub Proc_274_14_1381618(arg_C) '1381618
  'Data Table: 432870
  Dim var_94 As String
  Dim unk_43287F As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_C4 As Variant
  Dim var_138 As Variant
  Dim var_E4 As String
  Dim var_D4 As Variant
  Dim var_F8 As Variant
  Dim var_118 As String
  Dim var_1B8 As Variant
  Dim var_D0 As Field20
  Dim var_90 As String
  Dim var_E8 As Variant
  loc_1380D9C: On Error Goto loc_13815B8
  loc_1380D9F: Call Proc_274_13_F432F0()
  loc_1380DC0: var_94 = "Select MCG.SNo,MCG.PMemCode,S.Name,S.ConPrefix,S.CardNo,P.PicPath,P.SigPath From ((MemProposedMemInf MCG Left join SubGroup S On MCG.PMemCode=S.SubCode) Left Join MemberFamily P On MCG.PMemCode= P.Subcode And P.SNo=1) Where MCG.SubCode='" & subcode
  loc_1380DE3: unk_43287F.Execute var_94 & "' And MCG.Mark='' And  MCG.SNo=" & CStr(arg_C) & vbNullString, var_C4, -1
  loc_1380DEE: Set var_88 = var_C8
  loc_1380E0C: var_CC = var_88.RecordCount
  loc_1380E1A: If (var_CC > 0) Then
  loc_1380E2C:   var_C8 = var_88.Fields
  loc_1380E45:   var_138 = IsNull(CVar(var_C8.Item("PicPath")))
  loc_1380E4C:   var_E4 = "PicPath"
  loc_1380E77:   var_118 = vbNullString
  loc_1380E99:   If CBool(var_138 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_118)) Then
  loc_1380EBA:     Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_1380ECF:     Me.Image1.Picture = var_C8
  loc_1380EDE:   Else
  loc_1380F0C:     var_118 = "PicPath"
  loc_1380F52:     var_E4 = "DAT"
  loc_1380F7A:     var_138 = "AVI"
  loc_1380F84:     var_1B8 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_118))), 3)) = var_138)
  loc_1380FA4:     If CBool(var_1B8) Then
  loc_1380FB3:       Me.Image1.Visible = False
  loc_1380FBE:     Else
  loc_1380FF6:       Me.Image1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1381013:       var_B4 = "PicPath"
  loc_1381027:       var_D0 = var_88.Fields.Item(var_B4)
  loc_1381041:       Call 0.Method_Proc_274_14_13816184 (CStr(var_D0.Value), var_1BA)
  loc_1381056:       If var_1BA Then
  loc_1381073:         Set var_C8 = Me.Image1
  loc_138108B:         Me.Global.LoadPicture CVar(Me.Image1.Tag), var_B4, var_E4, var_118, var_138
  loc_13810A0:         Me.Image1.Picture = var_D0
  loc_13810B5:         Set var_C8 = Me.Image1
  loc_13810BB:         var_C8.Refresh
  loc_13810C6:       Else
  loc_13810E4:         Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_13810F9:         Me.Image1.Picture = var_C8
  loc_1381105:       End If
  loc_1381105:     End If
  loc_1381105:   End If
  loc_1381114:   var_C8 = var_88.Fields
  loc_138112D:   var_138 = IsNull(CVar(var_C8.Item("SigPath")))
  loc_1381134:   var_E4 = "SigPath"
  loc_138115F:   var_118 = vbNullString
  loc_1381181:   If CBool(var_138 Or (Trim(CVar(var_88.Fields.Item(var_E4))) = var_118)) Then
  loc_13811A2:     Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_13811B7:     Me.Image2.Picture = var_C8
  loc_13811C6:   Else
  loc_13811EC:     var_F8 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_13811F4:     var_118 = "SigPath"
  loc_1381227:     var_108 = Right(var_F8, 3)
  loc_1381232:     var_128 = Ucase(var_108)
  loc_138123A:     var_E4 = "DAT"
  loc_1381262:     var_138 = "AVI"
  loc_138128C:     If CBool((var_128 = var_E4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_118))), 3)) = var_138)) Then
  loc_138129B:       Me.Image2.Visible = False
  loc_13812A6:     Else
  loc_13812DE:       Me.Image2.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_13812FB:       var_B4 = "SigPath"
  loc_1381307:       var_C8 = var_88.Fields
  loc_138130F:       var_D0 = var_C8.Item(var_B4)
  loc_1381329:       Call 0.Method_Proc_274_14_13816184 (CStr(var_D0.Value), var_1BA, var_C8, var_C8)
  loc_138133E:       If var_1BA Then
  loc_138135B:         Set var_C8 = Me.Image2
  loc_1381373:         Me.Global.LoadPicture CVar(Me.Image2.Tag), var_B4, var_E4, var_118, var_138
  loc_1381382:         Set var_E8 = Me.Image2
  loc_1381388:         var_E8.Picture = var_D0
  loc_138139D:         Set var_C8 = Me.Image2
  loc_13813A3:         var_C8.Refresh
  loc_13813AE:       Else
  loc_13813CC:         Me.Global.LoadPicture var_B4, var_E4, var_118, var_138, var_158
  loc_13813E1:         Me.Image2.Picture = var_C8
  loc_13813ED:       End If
  loc_13813ED:     End If
  loc_13813ED:   End If
  loc_13813FC:   var_C8 = var_88.Fields
  loc_1381404:   var_D0 = var_C8.Item("SNo")
  loc_1381413:   Proc_6_39_E7C810(var_F8, CVar(var_D0), var_C8, var_D0)
  loc_138142A:   Set var_D4 = Me.Txt
  loc_1381430:   Call 0.Method_Proc_274_14_13816180 (CInt(0), var_E8, CStr(var_F8))
  loc_1381438:   var_E8.Text = var_D0
  loc_138145F:   var_C8 = var_88.Fields
  loc_1381486:   Set var_D4 = Me.Txt
  loc_138148C:   Call 0.Method_Proc_274_14_13816180 (CInt(1), var_E8)
  loc_1381494:   var_E8.Text = Proc_6_38_E68A98(CVar(var_C8.Item("ConPrefix")), var_C8)
  loc_13814DE:   Set var_D4 = Me.Txt
  loc_13814E4:   Call 0.Method_Proc_274_14_13816180 (CInt(2), var_E8)
  loc_13814EC:   var_E8.Text = Proc_6_38_E68A98(CVar(var_88.Fields.Item("Name")))
  loc_1381536:   Set var_D4 = Me.Txt
  loc_138153C:   Call 0.Method_Proc_274_14_13816180 (CInt(2), var_E8)
  loc_1381544:   var_E8.Tag = Proc_6_38_E68A98(CVar(var_88.Fields.Item("PMemCode")))
  loc_1381580:   var_90 = Proc_6_38_E68A98(CVar(var_88.Fields.Item("CardNo")))
  loc_138158E:   Set var_D4 = Me.Txt
  loc_1381594:   Call 0.Method_Proc_274_14_13816180 (CInt(3), var_E8)
  loc_138159C:   var_E8.Text = var_90
  loc_13815B0: End If
  loc_13815B5: Set var_88 = Nothing
  loc_13815B8: ' Referenced from: 1380D9C
  loc_13815C0: Set var_C8 = Err()
  loc_13815C6: Call 0.Method_arg_1C (var_CC)
  loc_13815D7: If (var_CC <> 0) Then
  loc_13815F6:   Call 0.Method_arg_2C (var_90, 0, var_F8)
  loc_1381601:   MsgBox(CVar(var_90), var_108, var_128, Err(), )
  loc_1381614: End If
  loc_1381614: Exit Sub
End Sub

Public Sub Proc_274_15_F206E8
  'Data Table: 432870
  Dim var_90 As Variant
  loc_F205E3: Call Proc_274_16_F7B4F8(var_86)
  loc_F205EE: global_52 = var_86
  loc_F20607: Set var_8C = Me.Txt
  loc_F2060D: Call 0.Method_Proc_274_15_F206E80 (CInt(0), var_90)
  loc_F20615: var_90.Text = CStr(global_52)
  loc_F2062D: Call Proc_274_14_1381618(global_52)
  loc_F20645: If ((global_52 = 0) Or (global_52 = 1)) Then
  loc_F20655:   Set var_8C = Me.Cmd
  loc_F2065B:   Call 0.Method_Proc_274_15_F206E80 (CInt(0), var_90)
  loc_F20663:   var_90.Enabled = False
  loc_F2067C:   Set var_8C = Me.Cmd
  loc_F20682:   Call 0.Method_Proc_274_15_F206E80 (CInt(1), var_90)
  loc_F2068A:   var_90.Enabled = False
  loc_F20699: Else
  loc_F206A6:   Set var_8C = Me.Cmd
  loc_F206AC:   Call 0.Method_Proc_274_15_F206E80 (CInt(0), var_90)
  loc_F206B4:   var_90.Enabled = True
  loc_F206CD:   Set var_8C = Me.Cmd
  loc_F206D3:   Call 0.Method_Proc_274_15_F206E80 (CInt(1), var_90)
  loc_F206DB:   var_90.Enabled = False
  loc_F206E7: End If
  loc_F206E7: Exit Sub
End Sub

Public Sub Proc_274_16_F7B4F8
  'Data Table: 432870
  Dim unk_43287F As Connection15
  Dim var_8C As Recordset15
  Dim var_C0 As Fields15
  Dim var_BC As Variant
  Dim var_8E As Integer
  loc_F7B3CB: If (Mode = "Browse") Then
  loc_F7B3FA:   unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf MCG Where MCG.SubCode='" & subcode & "' And Mark=''", var_BC, -1
  loc_F7B426:   var_C0 = var_C0.Fields
  loc_F7B436:   var_BC = CVar(var_C0.Item("SNo")) 'Address
  loc_F7B43D:   Proc_6_39_E7C810(var_D4, var_BC)
  loc_F7B446:   var_8E = CInt(var_D4)
  loc_F7B456: Else
  loc_F7B482:   unk_43287F.Execute "Select Max(SNo) As SNo From MemProposedMemInf MCG Where MCG.SubCode='" & subcode & "' And Mark=''", var_BC, -1
  loc_F7B4AE:   var_C0 = var_C0.Fields
  loc_F7B4C5:   Proc_6_39_E7C810(var_D4, CVar(var_C0.Item("SNo")), var_C0)
  loc_F7B4CE:   var_8E = CInt(var_D4)
  loc_F7B4E1:   var_8E = (var_8E + 1)
  loc_F7B4E4: End If
  loc_F7B4EF: Set var_8C = Nothing
  loc_F7B4F2: Proc_274_16_F7B4F8 = var_8E
End Sub

Public Sub Proc_274_17_E83608
  'Data Table: 432870
  loc_E835B4: If (CBool(Me.DGMember.Visible) = &HFF) Then
  loc_E835C6:   Me.DGMember.Visible = False
  loc_E835CE: End If
  loc_E835EA: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_E835FC:   Me.FGPoint.Visible = False
  loc_E83604: End If
  loc_E83604: Exit Sub
End Sub
